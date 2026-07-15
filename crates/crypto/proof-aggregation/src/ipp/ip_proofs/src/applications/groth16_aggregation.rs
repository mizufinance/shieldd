use ark_ec::{
    pairing::{Pairing, PairingOutput},
    CurveGroup,
};
use ark_ff::{Field, One, Zero};
use ark_groth16::{PreparedVerifyingKey, Proof, VerifyingKey};
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};

use ark_std::rand::Rng;
use digest::Digest;
use std::{
    marker::PhantomData,
    ops::{Add, Mul, MulAssign, Neg, Sub},
    time::Instant,
};

#[cfg(feature = "parallel")]
use rayon::prelude::*;

use crate::{
    challenge::{challenge_digest, ChallengeContext, ChallengeTraceSink, NoopChallengeTraceSink},
    gipa::{
        fold_output, verify_base_commitment_core, BaseCommitmentCoreInput, BaseCommitmentEffect,
        BaseCommitmentResult,
    },
    tipa::{
        prove_commitment_key_kzg_opening_with_affine_profiled,
        structured_scalar_message::structured_scalar_power,
        verify_commitment_key_g1_kzg_opening_core, verify_commitment_key_g2_kzg_opening_core,
        ArkworksPairingEffect, PairingEffect, PreparedProvingSrs, VerifierSRS, SRS, TIPA,
    },
    Error,
};
use ark_dh_commitments::{
    afgho16::{AFGHOCommitmentG1, AFGHOCommitmentG2},
    identity::{IdentityCommitment, IdentityOutput},
};
#[cfg(any(feature = "bench-baseline", test))]
use ark_inner_products::cfg_multi_pairing;
#[cfg(not(feature = "bench-baseline"))]
use ark_inner_products::cfg_multi_pairing_g1_affine_g2_prepared;
use ark_inner_products::{
    pairing_profile_snapshot, reset_pairing_profile_accumulator, InnerProduct,
    MultiexponentiationInnerProduct, PairingComputationProfile, PairingInnerProduct,
};

type PairingInnerProductAB<P, D> = TIPA<
    PairingInnerProduct<P>,
    AFGHOCommitmentG1<P>,
    AFGHOCommitmentG2<P>,
    IdentityCommitment<PairingOutput<P>, <P as Pairing>::ScalarField>,
    P,
    D,
>;

#[derive(Default)]
struct BufferedChallengeTraceSink {
    records: Vec<ChallengeTraceRecord>,
}

struct ChallengeTraceRecord {
    stage_label: &'static [u8],
    nonce: u64,
    preimage: Vec<u8>,
    digest: Vec<u8>,
}

impl BufferedChallengeTraceSink {
    fn replay_into<S: ChallengeTraceSink>(self, trace: &mut S) {
        for record in self.records {
            trace.record(
                record.stage_label,
                record.nonce,
                &record.preimage,
                &record.digest,
            );
        }
    }
}

impl ChallengeTraceSink for BufferedChallengeTraceSink {
    fn record(&mut self, stage_label: &'static [u8], nonce: u64, preimage: &[u8], digest: &[u8]) {
        self.records.push(ChallengeTraceRecord {
            stage_label,
            nonce,
            preimage: preimage.to_vec(),
            digest: digest.to_vec(),
        });
    }
}

fn timed_pairing_inner_product<P: Pairing>(
    left: &[P::G1],
    right: &[P::G2],
) -> Result<(PairingOutput<P>, f64), String> {
    let started = Instant::now();
    let output =
        PairingInnerProduct::<P>::inner_product(left, right).map_err(|err| err.to_string())?;
    Ok((output, started.elapsed().as_secs_f64() * 1000.0))
}

fn initial_commitments_profiled<P: Pairing>(
    a: &[P::G1],
    b: &[P::G2],
    c: &[P::G1],
    ck_1: &[P::G2],
    ck_2: &[P::G1],
) -> Result<
    (
        (PairingOutput<P>, PairingOutput<P>, PairingOutput<P>),
        (f64, f64, f64),
    ),
    Error,
> {
    #[cfg(all(feature = "parallel", not(feature = "bench-baseline")))]
    let ((com_a_result, com_b_result), com_c_result) = rayon::join(
        || {
            rayon::join(
                || timed_pairing_inner_product::<P>(a, ck_1),
                || timed_pairing_inner_product::<P>(ck_2, b),
            )
        },
        || timed_pairing_inner_product::<P>(c, ck_1),
    );

    #[cfg(any(not(feature = "parallel"), feature = "bench-baseline"))]
    let (com_a_result, com_b_result, com_c_result) = (
        timed_pairing_inner_product::<P>(a, ck_1),
        timed_pairing_inner_product::<P>(ck_2, b),
        timed_pairing_inner_product::<P>(c, ck_1),
    );

    let (com_a, com_a_ms) = com_a_result.map_err(|err: String| std::io::Error::other(err))?;
    let (com_b, com_b_ms) = com_b_result.map_err(|err: String| std::io::Error::other(err))?;
    let (com_c, com_c_ms) = com_c_result.map_err(|err: String| std::io::Error::other(err))?;

    Ok(((com_a, com_b, com_c), (com_a_ms, com_b_ms, com_c_ms)))
}

type AbCommitmentTriple<P> = (
    PairingOutput<P>,
    PairingOutput<P>,
    IdentityOutput<PairingOutput<P>>,
);

type CCommitmentPair<P> = (PairingOutput<P>, IdentityOutput<<P as Pairing>::G1>);

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub struct TippMippCommitment<P: Pairing> {
    ab: AbCommitmentTriple<P>,
    c: CCommitmentPair<P>,
}

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub struct TippMippGipaProof<P: Pairing, D: Digest> {
    r_commitment_steps: Vec<(TippMippCommitment<P>, TippMippCommitment<P>)>,
    _digest: PhantomData<fn() -> D>,
}

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub struct TippMippProof<P: Pairing, D: Digest> {
    gipa_proof: TippMippGipaProof<P, D>,
    final_ck: (P::G2, P::G1),
    final_ck_proofs: (P::G2, P::G1),
    final_messages: (P::G1, P::G2, P::G1),
    _digest: PhantomData<fn() -> D>,
}

#[derive(Clone)]
struct TippMippCoreCommitment<GT, ABT, CT> {
    ab: (GT, GT, ABT),
    c: (GT, CT),
}

#[derive(Clone)]
struct TippMippCoreProof<G1, G2, GT, ABT, CT> {
    gipa_proof: Vec<(
        TippMippCoreCommitment<GT, ABT, CT>,
        TippMippCoreCommitment<GT, ABT, CT>,
    )>,
    final_ck: (G2, G1),
    final_ck_proofs: (G2, G1),
    final_messages: (G1, G2, G1),
}

struct TippMippCoreInput<F, G1, G2, GT, ABT, CT> {
    com_a: GT,
    com_b: GT,
    com_t: ABT,
    com_c: GT,
    com_z: CT,
    ip_ab: GT,
    agg_c: G1,
    proof: TippMippCoreProof<G1, G2, GT, ABT, CT>,
    verifier_g: G1,
    verifier_g_beta: G1,
    verifier_h: G2,
    verifier_h_alpha: G2,
    r: F,
    kzg_g2_r_shift: F,
}

trait TippMippEffect<F, G1, G2, GT, ABT, CT, E>:
    BaseCommitmentEffect<G2, G1, (), G1, G2, GT, GT, GT, ABT, E>
{
    fn derive_x0(
        &mut self,
        r: &F,
        com_a: &GT,
        com_b: &GT,
        com_c: &GT,
        ip_ab: &GT,
        agg_c: &G1,
    ) -> Result<F, E>;
    fn derive_round(
        &mut self,
        prior_raw_challenge: &F,
        left: &TippMippCoreCommitment<GT, ABT, CT>,
        right: &TippMippCoreCommitment<GT, ABT, CT>,
    ) -> Result<F, E>;
    fn invert_round(&self, challenge: &F) -> Result<F, E>;
    fn derive_final_bridge(
        &mut self,
        last_raw_challenge: &F,
        final_ck: &(G2, G1),
        final_messages: &(G1, G2, G1),
    ) -> Result<F, E>;
    fn derive_kzg(&mut self, final_bridge: &F, final_ck: &(G2, G1)) -> Result<F, E>;
    fn invert_randomizer(&self, randomizer: &F) -> Result<F, E>;
    fn verify_c(&self, messages: &[G1], keys: &[G2], commitment: &GT) -> Result<bool, E>;
    fn verify_z(&self, messages: &[G1], scalars: &[F], commitment: &CT) -> Result<bool, E>;
}

#[cfg(not(feature = "bench-baseline"))]
trait AggregateVerifierEffect<F, E> {
    fn derive_randomizer(&mut self, nonce: u64) -> Result<Option<F>, E>;
    fn verify_combined(&mut self, randomizer: &F) -> Result<(bool, bool), E>;
}

#[cfg(not(feature = "bench-baseline"))]
#[derive(Debug)]
struct AggregateVerifierCoreOutput<F, FX> {
    randomizer: F,
    checks: (bool, bool),
    accepted: bool,
    effect: FX,
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_aggregate_proof_core<F, E, FX>(
    mut effect: FX,
) -> Result<AggregateVerifierCoreOutput<F, FX>, E>
where
    F: PartialEq + Zero + One,
    FX: AggregateVerifierEffect<F, E>,
{
    let mut nonce = 0u64;
    loop {
        let candidate = effect.derive_randomizer(nonce)?;
        if let Some(randomizer) = candidate {
            if randomizer != F::zero() && randomizer != F::one() {
                let checks = effect.verify_combined(&randomizer)?;
                return Ok(AggregateVerifierCoreOutput {
                    randomizer,
                    checks,
                    accepted: checks.0 && checks.1,
                    effect,
                });
            }
        }
        nonce += 1;
    }
}

#[cfg(not(feature = "bench-baseline"))]
struct CombinedChecksPpeInput<G1, G2Prepared, GT> {
    alpha_beta: GT,
    agg_c: G1,
    gamma_g2_neg_pc: G2Prepared,
    delta_g2_neg_pc: G2Prepared,
    ip_ab: GT,
}

#[cfg(not(feature = "bench-baseline"))]
struct CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT> {
    tipp_mipp: TippMippCoreInput<F, G1, G2, GT, ABT, CT>,
    gamma_abc_g1: Vec<G1>,
    public_inputs: Vec<Vec<F>>,
    r: F,
    ppe: CombinedChecksPpeInput<G1, G2Prepared, GT>,
}

#[cfg(not(feature = "bench-baseline"))]
struct CombinedChecksError<E> {
    kind: usize,
    actual_rounds: usize,
    expected_rounds: usize,
    tipp_mipp_error: Option<E>,
}

#[cfg(not(feature = "bench-baseline"))]
struct CombinedChecksCoreOutput<FX> {
    checks: (bool, bool),
    tipp_mipp_effect: FX,
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_combined_ppe_core<F, G1, G2Prepared, GT, E>(
    ppe: CombinedChecksPpeInput<G1, G2Prepared, GT>,
    gamma_abc_g1: &[G1],
    public_inputs: &[Vec<F>],
    r: &F,
    pairing: &E,
) -> bool
where
    F: Clone
        + PartialEq
        + From<u64>
        + One
        + Zero
        + Add<Output = F>
        + std::ops::Div<Output = F>
        + Mul<Output = F>
        + Sub<Output = F>,
    G1: Clone + Add<Output = G1> + Mul<F, Output = G1> + Neg<Output = G1>,
    G2Prepared: Clone + Send,
    GT: Clone + Mul<F, Output = GT> + Add<Output = GT> + PartialEq,
    E: PreparedPairingEffect<G1, G2Prepared, GT>,
{
    let (r_sum, g_ic) = fold_public_inputs_core(gamma_abc_g1, public_inputs, r);
    verify_ppe_core(
        PreparedPpeVerifierCoreInput {
            alpha_beta: ppe.alpha_beta,
            r_sum,
            g_ic,
            agg_c: ppe.agg_c,
            gamma_g2_neg_pc: ppe.gamma_g2_neg_pc,
            delta_g2_neg_pc: ppe.delta_g2_neg_pc,
            ip_ab: ppe.ip_ab,
        },
        pairing,
    )
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_combined_checks_core<F, G1, G2, G2Prepared, GT, ABT, CT, E, FX, PE, PPE>(
    input: CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    effect: FX,
    tipp_pairing: PE,
    ppe_pairing: PPE,
) -> Result<CombinedChecksCoreOutput<FX>, CombinedChecksError<E>>
where
    F: Clone
        + PartialEq
        + From<u64>
        + One
        + Zero
        + Add<Output = F>
        + std::ops::Div<Output = F>
        + Mul<Output = F>
        + Sub<Output = F>
        + Sync
        + Send,
    G1: Clone
        + Add<Output = G1>
        + Mul<F, Output = G1>
        + Sub<Output = G1>
        + Neg<Output = G1>
        + Sync
        + Send,
    G2: Clone + Mul<F, Output = G2> + Sub<Output = G2> + Sync + Send,
    G2Prepared: Clone + Send,
    GT: Clone
        + Default
        + Add<Output = GT>
        + Mul<F, Output = GT>
        + MulAssign<F>
        + Zero
        + PartialEq
        + Sync
        + Send,
    ABT: Clone + Default + Add<Output = ABT> + MulAssign<F> + Sync + Send,
    CT: Clone + Default + Add<Output = CT> + MulAssign<F> + Sync + Send,
    E: Send,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E> + Send,
    PE: PairingEffect<G1, G2, GT> + Sync + Send,
    PPE: PreparedPairingEffect<G1, G2Prepared, GT> + Send,
{
    let num_proofs = input.public_inputs.len();
    if num_proofs == 0 || !num_proofs.is_power_of_two() {
        return Err(CombinedChecksError {
            kind: 0,
            actual_rounds: 0,
            expected_rounds: 0,
            tipp_mipp_error: None,
        });
    }

    let expected_rounds = num_proofs.ilog2() as usize;
    let actual_rounds = input.tipp_mipp.proof.gipa_proof.len();
    if actual_rounds != expected_rounds {
        return Err(CombinedChecksError {
            kind: 1,
            actual_rounds,
            expected_rounds,
            tipp_mipp_error: None,
        });
    }

    let CombinedChecksCoreInput {
        tipp_mipp,
        gamma_abc_g1,
        public_inputs,
        r,
        ppe,
    } = input;

    #[cfg(all(
        feature = "parallel",
        not(feature = "bench-baseline"),
        not(hax_compilation)
    ))]
    let (tipp_result, ppe_valid) = rayon::join(
        move || {
            let mut effect = effect;
            let result =
                verify_tipp_mipp_core(tipp_mipp, &mut effect, &tipp_pairing).map_err(|error| {
                    CombinedChecksError {
                        kind: 2,
                        actual_rounds: 0,
                        expected_rounds: 0,
                        tipp_mipp_error: Some(error),
                    }
                });
            (result, effect)
        },
        move || {
            let ppe_valid =
                verify_combined_ppe_core(ppe, &gamma_abc_g1, &public_inputs, &r, &ppe_pairing);
            ppe_valid
        },
    );

    #[cfg(any(not(feature = "parallel"), feature = "bench-baseline", hax_compilation))]
    let (tipp_result, ppe_valid) = {
        let mut effect = effect;
        let tipp_result =
            verify_tipp_mipp_core(tipp_mipp, &mut effect, &tipp_pairing).map_err(|error| {
                CombinedChecksError {
                    kind: 2,
                    actual_rounds: 0,
                    expected_rounds: 0,
                    tipp_mipp_error: Some(error),
                }
            });
        let ppe_valid =
            verify_combined_ppe_core(ppe, &gamma_abc_g1, &public_inputs, &r, &ppe_pairing);
        ((tipp_result, effect), ppe_valid)
    };

    let (tipp_result, effect) = tipp_result;
    let tipp_valid = tipp_result?;
    Ok(CombinedChecksCoreOutput {
        checks: (tipp_valid, ppe_valid),
        tipp_mipp_effect: effect,
    })
}

fn verify_tipp_mipp_core<F, G1, G2, GT, ABT, CT, E, FX, PE>(
    input: TippMippCoreInput<F, G1, G2, GT, ABT, CT>,
    effect: &mut FX,
    pairing: &PE,
) -> Result<bool, E>
where
    F: Clone + One + Add<Output = F> + Mul<Output = F> + Sync,
    G1: Clone + Mul<F, Output = G1> + Sub<Output = G1> + Neg<Output = G1> + Sync,
    G2: Clone + Mul<F, Output = G2> + Sub<Output = G2> + Sync,
    GT: Clone + Default + Add<Output = GT> + MulAssign<F> + Zero + Sync,
    ABT: Clone + Default + Add<Output = ABT> + MulAssign<F> + Sync,
    CT: Clone + Default + Add<Output = CT> + MulAssign<F> + Sync,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E>,
    PE: PairingEffect<G1, G2, GT> + Sync,
{
    let mut com_a = input.com_a.clone();
    let mut com_b = input.com_b.clone();
    let mut com_t = input.com_t.clone();
    let mut com_c = input.com_c.clone();
    let mut com_z = input.com_z.clone();

    let x0 = effect.derive_x0(
        &input.r,
        &input.com_a,
        &input.com_b,
        &input.com_c,
        &input.ip_ab,
        &input.agg_c,
    )?;
    let mut prior_raw_challenge = x0.clone();
    let mut last_raw_challenge = x0;
    let mut raw_transcript_chrono = Vec::new();
    let mut inv_transcript_chrono = Vec::new();
    let mut round_error = None;

    let round_count = input.proof.gipa_proof.len();
    for round_offset in 0..round_count {
        let round_index = round_count - round_offset - 1;
        let (left, right) = &input.proof.gipa_proof[round_index];
        if round_error.is_none() {
            match effect.derive_round(&prior_raw_challenge, left, right) {
                Err(error) => round_error = Some(error),
                Ok(raw_challenge) => match effect.invert_round(&raw_challenge) {
                    Err(error) => round_error = Some(error),
                    Ok(inv_challenge) => {
                        fold_output(
                            &left.ab.0,
                            &mut com_a,
                            &right.ab.0,
                            &inv_challenge,
                            &raw_challenge,
                        );
                        fold_output(
                            &left.ab.1,
                            &mut com_b,
                            &right.ab.1,
                            &inv_challenge,
                            &raw_challenge,
                        );
                        fold_output(
                            &left.ab.2,
                            &mut com_t,
                            &right.ab.2,
                            &inv_challenge,
                            &raw_challenge,
                        );
                        fold_output(
                            &left.c.0,
                            &mut com_c,
                            &right.c.0,
                            &inv_challenge,
                            &raw_challenge,
                        );
                        fold_output(
                            &left.c.1,
                            &mut com_z,
                            &right.c.1,
                            &inv_challenge,
                            &raw_challenge,
                        );

                        raw_transcript_chrono.push(raw_challenge.clone());
                        inv_transcript_chrono.push(inv_challenge);
                        prior_raw_challenge = raw_challenge.clone();
                        last_raw_challenge = raw_challenge;
                    }
                },
            }
        }
    }

    if let Some(error) = round_error {
        return Err(error);
    }

    raw_transcript_chrono.reverse();
    inv_transcript_chrono.reverse();

    let final_bridge = effect.derive_final_bridge(
        &last_raw_challenge,
        &input.proof.final_ck,
        &input.proof.final_messages,
    )?;
    let kzg_challenge = effect.derive_kzg(&final_bridge, &input.proof.final_ck)?;
    let r_inverse = effect.invert_randomizer(&input.r)?;

    let ck_v_final = input.proof.final_ck.0.clone();
    let ck_w_final = input.proof.final_ck.1.clone();
    let ck_v_proof = input.proof.final_ck_proofs.0.clone();
    let ck_w_proof = input.proof.final_ck_proofs.1.clone();

    #[cfg(all(feature = "parallel", not(feature = "bench-baseline")))]
    let (ck_v_valid, ck_w_valid) = rayon::join(
        || {
            verify_commitment_key_g2_kzg_opening_core(
                input.verifier_g.clone(),
                input.verifier_g_beta.clone(),
                input.verifier_h.clone(),
                ck_v_final.clone(),
                ck_v_proof.clone(),
                &raw_transcript_chrono,
                &input.kzg_g2_r_shift,
                &kzg_challenge,
                pairing,
            )
        },
        || {
            verify_commitment_key_g1_kzg_opening_core(
                input.verifier_g.clone(),
                input.verifier_h_alpha.clone(),
                input.verifier_h.clone(),
                ck_w_final.clone(),
                ck_w_proof.clone(),
                &inv_transcript_chrono,
                &r_inverse,
                &kzg_challenge,
                pairing,
            )
        },
    );

    #[cfg(any(not(feature = "parallel"), feature = "bench-baseline"))]
    let (ck_v_valid, ck_w_valid) = (
        verify_commitment_key_g2_kzg_opening_core(
            input.verifier_g.clone(),
            input.verifier_g_beta.clone(),
            input.verifier_h.clone(),
            ck_v_final.clone(),
            ck_v_proof.clone(),
            &raw_transcript_chrono,
            &input.kzg_g2_r_shift,
            &kzg_challenge,
            pairing,
        ),
        verify_commitment_key_g1_kzg_opening_core(
            input.verifier_g.clone(),
            input.verifier_h_alpha.clone(),
            input.verifier_h.clone(),
            ck_w_final.clone(),
            ck_w_proof.clone(),
            &inv_transcript_chrono,
            &r_inverse,
            &kzg_challenge,
            pairing,
        ),
    );

    let (a_final, b_final, c_final) = &input.proof.final_messages;
    let a_base = vec![a_final.clone()];
    let b_base = vec![b_final.clone()];
    let c_base = vec![c_final.clone()];
    let ck_v_base = vec![ck_v_final.clone()];
    let ck_w_base = vec![ck_w_final.clone()];

    let base_result = verify_base_commitment_core(
        BaseCommitmentCoreInput {
            ck_a: ck_v_base[0].clone(),
            ck_b: ck_w_base[0].clone(),
            ck_t: vec![()],
            a: a_base[0].clone(),
            b: b_base[0].clone(),
            com_a,
            com_b,
            com_t,
        },
        effect,
    );
    let base_valid = match base_result {
        BaseCommitmentResult::Ok(value) => value,
        BaseCommitmentResult::Err(error) => return Err(error),
    };
    if !base_valid {
        return Ok(false);
    }

    let c_valid = effect.verify_c(&c_base, &ck_v_base, &com_c)?;
    if !c_valid {
        return Ok(false);
    }

    let final_r =
        structured_scalar_final_from_raw_transcript_inner(&raw_transcript_chrono, &input.r);
    let z_valid = effect.verify_z(&c_base, &[final_r], &com_z)?;

    Ok(ck_v_valid && ck_w_valid && base_valid && c_valid && z_valid)
}

#[derive(Clone, Debug, Default)]
pub struct TippMippBuildProfile {
    pub total_ms: f64,
    pub gipa_ms: f64,
    pub commit_l_ms: f64,
    pub commit_r_ms: f64,
    pub challenge_ms: f64,
    pub rescale_m1_ms: f64,
    pub rescale_m2_ms: f64,
    pub rescale_m3_ms: f64,
    pub rescale_r_ms: f64,
    pub rescale_ck1_ms: f64,
    pub rescale_ck2_ms: f64,
    pub transcript_inverse_ms: f64,
    pub final_bridge_ms: f64,
    pub kzg_challenge_ms: f64,
    pub kzg_coefficient_build_ms: f64,
    pub kzg_eval_quotient_ms: f64,
    pub kzg_opening_msm_ms: f64,
    pub kzg_opening_ck_v_ms: f64,
    pub kzg_opening_ck_w_ms: f64,
}

#[derive(Clone)]
struct TippMippAux<P: Pairing> {
    raw_transcript: Vec<P::ScalarField>,
    inv_transcript: Vec<P::ScalarField>,
    last_raw_challenge: P::ScalarField,
    final_ck: (P::G2, P::G1),
    final_messages: (P::G1, P::G2, P::G1),
}

fn prove_tipp_mipp_buffered_profiled<P, D>(
    context: &ChallengeContext,
    prepared_srs: &PreparedProvingSrs<P>,
    a: &[P::G1],
    b_r: &[P::G2],
    c: &[P::G1],
    r_vec: &[P::ScalarField],
    ck_1: &[P::G2],
    ck_2_r_inv: &[P::G1],
    r: &P::ScalarField,
    com: (&PairingOutput<P>, &PairingOutput<P>, &PairingOutput<P>),
    ip_ab: &PairingOutput<P>,
    agg_c: &P::G1,
) -> Result<
    (
        TippMippProof<P, D>,
        TippMippBuildProfile,
        BufferedChallengeTraceSink,
        f64,
    ),
    String,
>
where
    P: Pairing,
    D: Digest,
{
    let mut trace = BufferedChallengeTraceSink::default();
    let started = Instant::now();
    let (proof, profile) = prove_tipp_mipp_profiled::<P, D, BufferedChallengeTraceSink>(
        context,
        &mut trace,
        prepared_srs,
        a,
        b_r,
        c,
        r_vec,
        ck_1,
        ck_2_r_inv,
        r,
        com,
        ip_ab,
        agg_c,
    )
    .map_err(|err| err.to_string())?;
    Ok((
        proof,
        profile,
        trace,
        started.elapsed().as_secs_f64() * 1000.0,
    ))
}

#[allow(clippy::too_many_arguments)]
fn prove_tipp_mipp_profiled<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    prepared_srs: &PreparedProvingSrs<P>,
    a: &[P::G1],
    b_r: &[P::G2],
    c: &[P::G1],
    r_vec: &[P::ScalarField],
    ck_1: &[P::G2],
    ck_2_r_inv: &[P::G1],
    r: &P::ScalarField,
    com: (&PairingOutput<P>, &PairingOutput<P>, &PairingOutput<P>),
    ip_ab: &PairingOutput<P>,
    agg_c: &P::G1,
) -> Result<(TippMippProof<P, D>, TippMippBuildProfile), Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let total_started = Instant::now();
    let mut profile = TippMippBuildProfile::default();

    let gipa_started = Instant::now();
    let (gipa_proof, aux, mut gipa_profile) = prove_tipp_mipp_gipa_profiled::<P, D, S>(
        context, trace, a, b_r, c, r_vec, ck_1, ck_2_r_inv, r, com, ip_ab, agg_c,
    )?;
    profile.gipa_ms = gipa_started.elapsed().as_secs_f64() * 1000.0;
    profile.commit_l_ms = gipa_profile.commit_l_ms;
    profile.commit_r_ms = gipa_profile.commit_r_ms;
    profile.challenge_ms = gipa_profile.challenge_ms;
    profile.rescale_m1_ms = gipa_profile.rescale_m1_ms;
    profile.rescale_m2_ms = gipa_profile.rescale_m2_ms;
    profile.rescale_m3_ms = std::mem::take(&mut gipa_profile.rescale_m3_ms);
    profile.rescale_r_ms = std::mem::take(&mut gipa_profile.rescale_r_ms);
    profile.rescale_ck1_ms = gipa_profile.rescale_ck1_ms;
    profile.rescale_ck2_ms = gipa_profile.rescale_ck2_ms;

    let transcript_inverse_started = Instant::now();
    let raw_transcript = aux.raw_transcript;
    let inv_transcript = aux.inv_transcript;
    profile.transcript_inverse_ms = transcript_inverse_started.elapsed().as_secs_f64() * 1000.0;

    let final_bridge_started = Instant::now();
    let final_bridge = derive_final_bridge::<P, D, S>(
        context,
        trace,
        &aux.last_raw_challenge,
        &aux.final_ck,
        &aux.final_messages,
    )?;
    profile.final_bridge_ms = final_bridge_started.elapsed().as_secs_f64() * 1000.0;

    let kzg_challenge_started = Instant::now();
    let kzg_challenge =
        derive_kzg_challenge::<P, D, S>(context, trace, &final_bridge, &aux.final_ck)?;
    profile.kzg_challenge_ms = kzg_challenge_started.elapsed().as_secs_f64() * 1000.0;

    let r_inverse = r.inverse().ok_or_else(|| {
        Box::new(std::io::Error::new(
            std::io::ErrorKind::InvalidInput,
            "randomizer must be non-zero before inversion",
        )) as Error
    })?;

    let kzg_opening_ck_v_started = Instant::now();
    let (ck_v_kzg_opening, ck_v_kzg_profile) =
        prove_commitment_key_kzg_opening_with_affine_profiled(
            prepared_srs.h_beta_powers_affine(),
            &raw_transcript,
            &P::ScalarField::one(),
            &kzg_challenge,
        )?;
    profile.kzg_opening_ck_v_ms = kzg_opening_ck_v_started.elapsed().as_secs_f64() * 1000.0;
    profile.kzg_coefficient_build_ms += ck_v_kzg_profile.coefficient_build_ms;
    profile.kzg_eval_quotient_ms += ck_v_kzg_profile.eval_quotient_ms;
    profile.kzg_opening_msm_ms += ck_v_kzg_profile.opening_msm_ms;

    let kzg_opening_ck_w_started = Instant::now();
    let (ck_w_kzg_opening, ck_w_kzg_profile) =
        prove_commitment_key_kzg_opening_with_affine_profiled(
            prepared_srs.g_alpha_powers_affine(),
            &inv_transcript,
            &r_inverse,
            &kzg_challenge,
        )?;
    profile.kzg_opening_ck_w_ms = kzg_opening_ck_w_started.elapsed().as_secs_f64() * 1000.0;
    profile.kzg_coefficient_build_ms += ck_w_kzg_profile.coefficient_build_ms;
    profile.kzg_eval_quotient_ms += ck_w_kzg_profile.eval_quotient_ms;
    profile.kzg_opening_msm_ms += ck_w_kzg_profile.opening_msm_ms;

    profile.total_ms = total_started.elapsed().as_secs_f64() * 1000.0;

    Ok((
        TippMippProof {
            gipa_proof,
            final_ck: aux.final_ck,
            final_ck_proofs: (ck_v_kzg_opening, ck_w_kzg_opening),
            final_messages: aux.final_messages,
            _digest: PhantomData,
        },
        profile,
    ))
}

#[allow(clippy::too_many_arguments)]
fn prove_tipp_mipp_gipa_profiled<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    a: &[P::G1],
    b_r: &[P::G2],
    c: &[P::G1],
    r_vec: &[P::ScalarField],
    ck_1: &[P::G2],
    ck_2_r_inv: &[P::G1],
    r: &P::ScalarField,
    com: (&PairingOutput<P>, &PairingOutput<P>, &PairingOutput<P>),
    ip_ab: &PairingOutput<P>,
    agg_c: &P::G1,
) -> Result<
    (
        TippMippGipaProof<P, D>,
        TippMippAux<P>,
        TippMippBuildProfile,
    ),
    Error,
>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let total_started = Instant::now();
    if a.len() != b_r.len()
        || a.len() != c.len()
        || a.len() != r_vec.len()
        || a.len() != ck_1.len()
        || a.len() != ck_2_r_inv.len()
        || !a.len().is_power_of_two()
    {
        return Err(Box::new(std::io::Error::new(
            std::io::ErrorKind::InvalidInput,
            "combined TIPP/MIPP inputs must have equal power-of-two length",
        )));
    }

    let mut m_a = a.to_vec();
    let mut m_b = b_r.to_vec();
    let mut m_c = c.to_vec();
    let mut m_r = r_vec.to_vec();
    let mut ck_v = ck_1.to_vec();
    let mut ck_w = ck_2_r_inv.to_vec();
    let mut r_commitment_steps = Vec::new();
    let mut raw_transcript_chrono = Vec::new();
    let mut inv_transcript_chrono = Vec::new();
    let mut profile = TippMippBuildProfile::default();

    let x0 = derive_x0::<P, D, S>(context, trace, r, com, ip_ab, agg_c)?;
    let mut prior_raw_challenge = x0;
    let mut last_raw_challenge = x0;

    while m_a.len() > 1 {
        let split = m_a.len() / 2;

        let a_left = &m_a[..split];
        let a_right = &m_a[split..];
        let b_left = &m_b[..split];
        let b_right = &m_b[split..];
        let c_left = &m_c[..split];
        let c_right = &m_c[split..];
        let r_left = &m_r[..split];
        let r_right = &m_r[split..];
        let v_left = &ck_v[..split];
        let v_right = &ck_v[split..];
        let w_left = &ck_w[..split];
        let w_right = &ck_w[split..];

        #[cfg(all(feature = "parallel", not(feature = "bench-baseline")))]
        let (left_result, right_result) = rayon::join(
            || commit_tipp_mipp_round::<P>(a_right, b_left, c_right, r_left, v_left, w_right),
            || commit_tipp_mipp_round::<P>(a_left, b_right, c_left, r_right, v_right, w_left),
        );

        #[cfg(any(not(feature = "parallel"), feature = "bench-baseline"))]
        let (left_result, right_result) = (
            commit_tipp_mipp_round::<P>(a_right, b_left, c_right, r_left, v_left, w_right),
            commit_tipp_mipp_round::<P>(a_left, b_right, c_left, r_right, v_right, w_left),
        );

        let (left_commitment, left_ms) =
            left_result.map_err(|err: String| std::io::Error::other(err))?;
        let (right_commitment, right_ms) =
            right_result.map_err(|err: String| std::io::Error::other(err))?;
        profile.commit_l_ms += left_ms;
        profile.commit_r_ms += right_ms;

        let challenge_started = Instant::now();
        let raw_challenge = derive_round_challenge::<P, D, S>(
            context,
            trace,
            &prior_raw_challenge,
            &left_commitment,
            &right_commitment,
        )?;
        let inv_challenge = raw_challenge.inverse().ok_or_else(|| {
            Box::new(std::io::Error::new(
                std::io::ErrorKind::InvalidData,
                "round challenge must be non-zero",
            )) as Error
        })?;
        profile.challenge_ms += challenge_started.elapsed().as_secs_f64() * 1000.0;

        let (next_m_a, rescale_m1_ms) =
            fold_points_profiled::<P::G1>(a_right, a_left, &inv_challenge);
        let (next_m_b, rescale_m2_ms) =
            fold_points_profiled::<P::G2>(b_right, b_left, &raw_challenge);
        let (next_m_c, rescale_m3_ms) =
            fold_points_profiled::<P::G1>(c_right, c_left, &inv_challenge);
        let (next_m_r, rescale_r_ms) =
            fold_scalars_profiled::<P::ScalarField>(r_right, r_left, &raw_challenge);
        let (next_ck_v, rescale_ck1_ms) =
            fold_points_profiled::<P::G2>(v_right, v_left, &raw_challenge);
        let (next_ck_w, rescale_ck2_ms) =
            fold_points_profiled::<P::G1>(w_right, w_left, &inv_challenge);

        m_a = next_m_a;
        m_b = next_m_b;
        m_c = next_m_c;
        m_r = next_m_r;
        ck_v = next_ck_v;
        ck_w = next_ck_w;
        profile.rescale_m1_ms += rescale_m1_ms;
        profile.rescale_m2_ms += rescale_m2_ms;
        profile.rescale_m3_ms += rescale_m3_ms;
        profile.rescale_r_ms += rescale_r_ms;
        profile.rescale_ck1_ms += rescale_ck1_ms;
        profile.rescale_ck2_ms += rescale_ck2_ms;

        r_commitment_steps.push((left_commitment, right_commitment));
        raw_transcript_chrono.push(raw_challenge);
        inv_transcript_chrono.push(inv_challenge);
        prior_raw_challenge = raw_challenge;
        last_raw_challenge = raw_challenge;
    }

    r_commitment_steps.reverse();
    raw_transcript_chrono.reverse();
    inv_transcript_chrono.reverse();
    profile.total_ms = total_started.elapsed().as_secs_f64() * 1000.0;

    Ok((
        TippMippGipaProof {
            r_commitment_steps,
            _digest: PhantomData,
        },
        TippMippAux {
            raw_transcript: raw_transcript_chrono,
            inv_transcript: inv_transcript_chrono,
            last_raw_challenge,
            final_ck: (ck_v[0], ck_w[0]),
            final_messages: (m_a[0], m_b[0], m_c[0]),
        },
        profile,
    ))
}

fn commit_tipp_mipp_round<P: Pairing>(
    a: &[P::G1],
    b: &[P::G2],
    c: &[P::G1],
    r: &[P::ScalarField],
    ck_v: &[P::G2],
    ck_w: &[P::G1],
) -> Result<(TippMippCommitment<P>, f64), String> {
    let started = Instant::now();
    let com_a = PairingInnerProduct::<P>::inner_product(a, ck_v).map_err(|err| err.to_string())?;
    let com_b = PairingInnerProduct::<P>::inner_product(ck_w, b).map_err(|err| err.to_string())?;
    let ip_ab = PairingInnerProduct::<P>::inner_product(a, b).map_err(|err| err.to_string())?;
    let com_c = PairingInnerProduct::<P>::inner_product(c, ck_v).map_err(|err| err.to_string())?;
    let ip_c = MultiexponentiationInnerProduct::<P::G1>::inner_product(c, r)
        .map_err(|err| err.to_string())?;
    Ok((
        TippMippCommitment {
            ab: (com_a, com_b, IdentityOutput(vec![ip_ab])),
            c: (com_c, IdentityOutput(vec![ip_c])),
        },
        started.elapsed().as_secs_f64() * 1000.0,
    ))
}

fn fold_points_profiled<G>(
    scaled_half: &[G],
    unscaled_half: &[G],
    scalar: &G::ScalarField,
) -> (Vec<G>, f64)
where
    G: CurveGroup,
{
    let started = Instant::now();
    let folded = scaled_half
        .iter()
        .zip(unscaled_half)
        .map(|(point, base)| point.clone() * scalar + base.clone())
        .collect();
    (folded, started.elapsed().as_secs_f64() * 1000.0)
}

fn fold_scalars_profiled<F: Field>(
    scaled_half: &[F],
    unscaled_half: &[F],
    scalar: &F,
) -> (Vec<F>, f64) {
    let started = Instant::now();
    let folded = scaled_half
        .iter()
        .zip(unscaled_half)
        .map(|(point, base)| (*point * scalar) + base)
        .collect();
    (folded, started.elapsed().as_secs_f64() * 1000.0)
}

fn derive_scalar_challenge<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    stage_label: &'static [u8],
    messages: &[u8],
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let mut counter_nonce: u64 = 0;
    loop {
        if let Some(challenge) = P::ScalarField::from_random_bytes(&challenge_digest::<D, _>(
            context,
            trace,
            stage_label,
            counter_nonce,
            messages,
        )) {
            if !challenge.is_zero() {
                return Ok(challenge);
            }
        }
        counter_nonce += 1;
    }
}

fn derive_x0<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    r: &P::ScalarField,
    com: (&PairingOutput<P>, &PairingOutput<P>, &PairingOutput<P>),
    ip_ab: &PairingOutput<P>,
    agg_c: &P::G1,
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let mut hash_input = Vec::new();
    r.serialize_uncompressed(&mut hash_input)?;
    com.0.serialize_uncompressed(&mut hash_input)?;
    com.1.serialize_uncompressed(&mut hash_input)?;
    com.2.serialize_uncompressed(&mut hash_input)?;
    ip_ab.serialize_uncompressed(&mut hash_input)?;
    agg_c.serialize_uncompressed(&mut hash_input)?;
    derive_scalar_challenge::<P, D, S>(context, trace, b"tipp-mipp.x0", &hash_input)
}

fn derive_round_challenge<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    prior_raw_challenge: &P::ScalarField,
    left: &TippMippCommitment<P>,
    right: &TippMippCommitment<P>,
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let mut hash_input = Vec::new();
    prior_raw_challenge.serialize_uncompressed(&mut hash_input)?;
    serialize_tipp_mipp_commitment(left, &mut hash_input)?;
    serialize_tipp_mipp_commitment(right, &mut hash_input)?;
    derive_scalar_challenge::<P, D, S>(context, trace, b"tipp-mipp.gipa.round", &hash_input)
}

fn derive_final_bridge<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    last_raw_challenge: &P::ScalarField,
    final_ck: &(P::G2, P::G1),
    final_messages: &(P::G1, P::G2, P::G1),
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let mut hash_input = Vec::new();
    last_raw_challenge.serialize_uncompressed(&mut hash_input)?;
    final_ck.0.serialize_uncompressed(&mut hash_input)?;
    final_ck.1.serialize_uncompressed(&mut hash_input)?;
    final_messages.0.serialize_uncompressed(&mut hash_input)?;
    final_messages.1.serialize_uncompressed(&mut hash_input)?;
    final_messages.2.serialize_uncompressed(&mut hash_input)?;
    derive_scalar_challenge::<P, D, S>(context, trace, b"tipp-mipp.final-bridge", &hash_input)
}

fn derive_kzg_challenge<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    final_bridge: &P::ScalarField,
    final_ck: &(P::G2, P::G1),
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let mut hash_input = Vec::new();
    final_bridge.serialize_uncompressed(&mut hash_input)?;
    final_ck.0.serialize_uncompressed(&mut hash_input)?;
    final_ck.1.serialize_uncompressed(&mut hash_input)?;
    derive_scalar_challenge::<P, D, S>(context, trace, b"tipp-mipp.kzg", &hash_input)
}

fn serialize_tipp_mipp_core_commitment<GT, ABT, CT>(
    commitment: &TippMippCoreCommitment<GT, ABT, CT>,
    output: &mut Vec<u8>,
) -> Result<(), Error>
where
    GT: CanonicalSerialize,
    ABT: CanonicalSerialize,
    CT: CanonicalSerialize,
{
    commitment.ab.0.serialize_uncompressed(&mut *output)?;
    commitment.ab.1.serialize_uncompressed(&mut *output)?;
    commitment.ab.2.serialize_uncompressed(&mut *output)?;
    commitment.c.0.serialize_uncompressed(&mut *output)?;
    commitment.c.1.serialize_uncompressed(&mut *output)?;
    Ok(())
}

fn serialize_tipp_mipp_commitment<P: Pairing>(
    commitment: &TippMippCommitment<P>,
    output: &mut Vec<u8>,
) -> Result<(), Error> {
    commitment.ab.0.serialize_uncompressed(&mut *output)?;
    commitment.ab.1.serialize_uncompressed(&mut *output)?;
    commitment.ab.2.serialize_uncompressed(&mut *output)?;
    commitment.c.0.serialize_uncompressed(&mut *output)?;
    commitment.c.1.serialize_uncompressed(&mut *output)?;
    Ok(())
}

struct ArkworksTippMippEffect<'a, P: Pairing, D: Digest, S: ChallengeTraceSink> {
    context: &'a ChallengeContext,
    trace: &'a mut S,
    _pairing: PhantomData<fn() -> P>,
    _digest: PhantomData<fn() -> D>,
}

impl<'a, P: Pairing, D: Digest, S: ChallengeTraceSink>
    BaseCommitmentEffect<
        P::G2,
        P::G1,
        (),
        P::G1,
        P::G2,
        PairingOutput<P>,
        PairingOutput<P>,
        PairingOutput<P>,
        IdentityOutput<PairingOutput<P>>,
        String,
    > for ArkworksTippMippEffect<'a, P, D, S>
{
    fn inner_product(
        &self,
        left: &[P::G1],
        right: &[P::G2],
    ) -> BaseCommitmentResult<PairingOutput<P>, String> {
        match PairingInnerProduct::<P>::inner_product(left, right) {
            Ok(value) => BaseCommitmentResult::Ok(value),
            Err(error) => BaseCommitmentResult::Err(error.to_string()),
        }
    }

    fn verify_left(
        &self,
        keys: &[P::G2],
        messages: &[P::G1],
        commitment: &PairingOutput<P>,
    ) -> BaseCommitmentResult<bool, String> {
        match PairingInnerProduct::<P>::inner_product(messages, keys) {
            Ok(value) => BaseCommitmentResult::Ok(value == *commitment),
            Err(error) => BaseCommitmentResult::Err(error.to_string()),
        }
    }

    fn verify_right(
        &self,
        keys: &[P::G1],
        messages: &[P::G2],
        commitment: &PairingOutput<P>,
    ) -> BaseCommitmentResult<bool, String> {
        match PairingInnerProduct::<P>::inner_product(keys, messages) {
            Ok(value) => BaseCommitmentResult::Ok(value == *commitment),
            Err(error) => BaseCommitmentResult::Err(error.to_string()),
        }
    }

    fn verify_target(
        &self,
        _keys: &[()],
        messages: &[PairingOutput<P>],
        commitment: &IdentityOutput<PairingOutput<P>>,
    ) -> BaseCommitmentResult<bool, String> {
        BaseCommitmentResult::Ok(IdentityOutput(messages.to_vec()) == *commitment)
    }
}

impl<'a, P: Pairing, D: Digest, S: ChallengeTraceSink>
    TippMippEffect<
        P::ScalarField,
        P::G1,
        P::G2,
        PairingOutput<P>,
        IdentityOutput<PairingOutput<P>>,
        IdentityOutput<P::G1>,
        String,
    > for ArkworksTippMippEffect<'a, P, D, S>
{
    fn derive_x0(
        &mut self,
        r: &P::ScalarField,
        com_a: &PairingOutput<P>,
        com_b: &PairingOutput<P>,
        com_c: &PairingOutput<P>,
        ip_ab: &PairingOutput<P>,
        agg_c: &P::G1,
    ) -> Result<P::ScalarField, String> {
        derive_x0::<P, D, S>(
            self.context,
            self.trace,
            r,
            (com_a, com_b, com_c),
            ip_ab,
            agg_c,
        )
        .map_err(|error| error.to_string())
    }

    fn derive_round(
        &mut self,
        prior_raw_challenge: &P::ScalarField,
        left: &TippMippCoreCommitment<
            PairingOutput<P>,
            IdentityOutput<PairingOutput<P>>,
            IdentityOutput<P::G1>,
        >,
        right: &TippMippCoreCommitment<
            PairingOutput<P>,
            IdentityOutput<PairingOutput<P>>,
            IdentityOutput<P::G1>,
        >,
    ) -> Result<P::ScalarField, String> {
        let mut hash_input = Vec::new();
        prior_raw_challenge
            .serialize_uncompressed(&mut hash_input)
            .map_err(|error| error.to_string())?;
        serialize_tipp_mipp_core_commitment(left, &mut hash_input)
            .map_err(|error| error.to_string())?;
        serialize_tipp_mipp_core_commitment(right, &mut hash_input)
            .map_err(|error| error.to_string())?;
        derive_scalar_challenge::<P, D, S>(
            self.context,
            self.trace,
            b"tipp-mipp.gipa.round",
            &hash_input,
        )
        .map_err(|error| error.to_string())
    }

    fn invert_round(&self, challenge: &P::ScalarField) -> Result<P::ScalarField, String> {
        challenge
            .inverse()
            .ok_or_else(|| "round challenge must be non-zero".to_owned())
    }

    fn derive_final_bridge(
        &mut self,
        last_raw_challenge: &P::ScalarField,
        final_ck: &(P::G2, P::G1),
        final_messages: &(P::G1, P::G2, P::G1),
    ) -> Result<P::ScalarField, String> {
        derive_final_bridge::<P, D, S>(
            self.context,
            self.trace,
            last_raw_challenge,
            final_ck,
            final_messages,
        )
        .map_err(|error| error.to_string())
    }

    fn derive_kzg(
        &mut self,
        final_bridge: &P::ScalarField,
        final_ck: &(P::G2, P::G1),
    ) -> Result<P::ScalarField, String> {
        derive_kzg_challenge::<P, D, S>(self.context, self.trace, final_bridge, final_ck)
            .map_err(|error| error.to_string())
    }

    fn invert_randomizer(&self, randomizer: &P::ScalarField) -> Result<P::ScalarField, String> {
        randomizer
            .inverse()
            .ok_or_else(|| "randomizer must be non-zero before inversion".to_owned())
    }

    fn verify_c(
        &self,
        messages: &[P::G1],
        keys: &[P::G2],
        commitment: &PairingOutput<P>,
    ) -> Result<bool, String> {
        Ok(PairingInnerProduct::<P>::inner_product(messages, keys)
            .map_err(|error| error.to_string())?
            == *commitment)
    }

    fn verify_z(
        &self,
        messages: &[P::G1],
        scalars: &[P::ScalarField],
        commitment: &IdentityOutput<P::G1>,
    ) -> Result<bool, String> {
        let value = MultiexponentiationInnerProduct::<P::G1>::inner_product(messages, scalars)
            .map_err(|error| error.to_string())?;
        Ok(IdentityOutput(vec![value]) == *commitment)
    }
}

#[cfg(feature = "bench-baseline")]
fn verify_tipp_mipp_buffered_profiled<P, D>(
    context: &ChallengeContext,
    ip_verifier_srs: &VerifierSRS<P>,
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
) -> Result<(bool, BufferedChallengeTraceSink, f64), String>
where
    P: Pairing,
    D: Digest,
{
    let mut trace = BufferedChallengeTraceSink::default();
    let started = Instant::now();
    let valid = verify_tipp_mipp::<P, D, BufferedChallengeTraceSink>(
        context,
        &mut trace,
        ip_verifier_srs,
        proof,
        r,
    )
    .map_err(|err| err.to_string())?;
    Ok((valid, trace, started.elapsed().as_secs_f64() * 1000.0))
}

#[cfg(feature = "bench-baseline")]
fn verify_public_inputs_ppe_profiled<P, D>(
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
) -> (bool, f64, f64)
where
    P: Pairing,
    D: Digest,
{
    let public_input_fold_started = Instant::now();
    let (r_sum, g_ic) = fold_public_inputs::<P>(&pvk.vk, public_inputs, r);
    let public_input_fold_ms = public_input_fold_started.elapsed().as_secs_f64() * 1000.0;

    let ppe_started = Instant::now();
    #[cfg(not(feature = "bench-baseline"))]
    let ppe_valid = verify_ppe::<P>(pvk, proof, &r_sum, g_ic);
    #[cfg(feature = "bench-baseline")]
    let ppe_valid = verify_ppe_baseline::<P>(&pvk.vk, proof, &r_sum, g_ic);
    let ppe_ms = ppe_started.elapsed().as_secs_f64() * 1000.0;

    (ppe_valid, public_input_fold_ms, ppe_ms)
}

fn verify_combined_checks_profiled<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
) -> Result<((bool, bool), (f64, f64, f64)), Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    #[cfg(not(feature = "bench-baseline"))]
    {
        // Timings are observational; the extracted core below returns only the
        // two verifier results and the buffered TIPP/MIPP effect state.
        let started = Instant::now();
        let input =
            combined_checks_core_input::<P, D>(pvk, public_inputs, proof, r, ip_verifier_srs);
        let mut tipp_trace = BufferedChallengeTraceSink::default();
        let effect = ArkworksTippMippEffect::<P, D, _> {
            context,
            trace: &mut tipp_trace,
            _pairing: PhantomData,
            _digest: PhantomData,
        };
        let output = verify_combined_checks_core(
            input,
            effect,
            ArkworksPairingEffect::<P>::default(),
            ArkworksPreparedPairingEffect::<P>::default(),
        )
        .map_err(combined_checks_core_error)?;
        let CombinedChecksCoreOutput {
            checks,
            tipp_mipp_effect,
        } = output;
        drop(tipp_mipp_effect);
        tipp_trace.replay_into(trace);
        let core_ms = started.elapsed().as_secs_f64() * 1000.0;
        return Ok((checks, (core_ms, 0.0, 0.0)));
    }

    #[cfg(feature = "bench-baseline")]
    {
        // Defense-in-depth: the combined GIPA must carry exactly log2(n) folding
        // rounds for the padded proof count n. A wrong count already fails the base
        // equation in verify_tipp_mipp, but reject it explicitly here for a clear
        // failure mode and to bound attacker-controlled work before folding.
        let num_proofs = public_inputs.len();
        if num_proofs == 0 || !num_proofs.is_power_of_two() {
            return Err(Box::new(std::io::Error::new(
                std::io::ErrorKind::InvalidInput,
                "padded proof count must be a nonzero power of two",
            )));
        }
        let expected_rounds = num_proofs.trailing_zeros() as usize;
        let actual_rounds = proof.tipp_mipp_proof.gipa_proof.r_commitment_steps.len();
        if actual_rounds != expected_rounds {
            return Err(Box::new(std::io::Error::new(
            std::io::ErrorKind::InvalidInput,
            format!(
                "combined GIPA round count {actual_rounds} does not match log2(proof count) {expected_rounds}"
            ),
        )));
        }

        #[cfg(all(feature = "parallel", not(feature = "bench-baseline")))]
        let (tipp_mipp_result, ppe_result) = rayon::join(
            || verify_tipp_mipp_buffered_profiled::<P, D>(context, ip_verifier_srs, proof, r),
            || verify_public_inputs_ppe_profiled::<P, D>(pvk, public_inputs, proof, r),
        );

        #[cfg(any(not(feature = "parallel"), feature = "bench-baseline"))]
        let (tipp_mipp_result, ppe_result) = {
            let tipp_mipp_result =
                verify_tipp_mipp_buffered_profiled::<P, D>(context, ip_verifier_srs, proof, r);
            let ppe_result =
                verify_public_inputs_ppe_profiled::<P, D>(pvk, public_inputs, proof, r);
            (tipp_mipp_result, ppe_result)
        };

        let (tipp_mipp_valid, tipp_mipp_trace, tipp_mipp_ms) =
            tipp_mipp_result.map_err(|err: String| std::io::Error::other(err))?;
        let (ppe_valid, public_input_fold_ms, ppe_ms) = ppe_result;

        tipp_mipp_trace.replay_into(trace);

        Ok((
            (tipp_mipp_valid, ppe_valid),
            (tipp_mipp_ms, public_input_fold_ms, ppe_ms),
        ))
    }
}

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub struct AggregateProof<P: Pairing, D: Digest> {
    com_a: PairingOutput<P>,
    com_b: PairingOutput<P>,
    com_c: PairingOutput<P>,
    ip_ab: PairingOutput<P>,
    agg_c: P::G1,
    tipp_mipp_proof: TippMippProof<P, D>,
}

#[derive(Clone, Debug, Default)]
pub struct AggregateProofVerificationProfile {
    pub challenge_ms: f64,
    pub tipp_mipp_ms: f64,
    pub public_input_fold_ms: f64,
    pub ppe_ms: f64,
    pub core_total_ms: f64,
    pub accepted: bool,
}

#[derive(Clone, Debug, Default)]
pub struct AggregateProofBuildProfile {
    pub point_extract_ms: f64,
    pub prepared_srs_ms: f64,
    pub commitment_key_extract_ms: f64,
    pub commitment_ms: f64,
    pub com_a_ms: f64,
    pub com_b_ms: f64,
    pub com_c_ms: f64,
    pub pairing_normalize_batch_ms: f64,
    pub pairing_prepare_ms: f64,
    pub pairing_miller_loop_ms: f64,
    pub pairing_final_exponentiation_ms: f64,
    pub randomizer_ms: f64,
    pub structured_scalar_ms: f64,
    pub weighted_b_ms: f64,
    pub ip_ab_ms: f64,
    pub agg_c_ms: f64,
    pub ck_2_r_inv_ms: f64,
    pub consistency_check_ms: f64,
    pub tipp_mipp_ms: f64,
    pub tipp_mipp_gipa_ms: f64,
    pub tipp_mipp_gipa_commit_l_ms: f64,
    pub tipp_mipp_gipa_commit_r_ms: f64,
    pub tipp_mipp_gipa_challenge_ms: f64,
    pub tipp_mipp_gipa_rescale_m1_ms: f64,
    pub tipp_mipp_gipa_rescale_m2_ms: f64,
    pub tipp_mipp_gipa_rescale_m3_ms: f64,
    pub tipp_mipp_gipa_rescale_r_ms: f64,
    pub tipp_mipp_gipa_rescale_ck1_ms: f64,
    pub tipp_mipp_gipa_rescale_ck2_ms: f64,
    pub tipp_mipp_transcript_inverse_ms: f64,
    pub tipp_mipp_final_bridge_ms: f64,
    pub tipp_mipp_kzg_challenge_ms: f64,
    pub tipp_mipp_kzg_coefficient_build_ms: f64,
    pub tipp_mipp_kzg_eval_quotient_ms: f64,
    pub tipp_mipp_kzg_opening_msm_ms: f64,
    pub tipp_mipp_kzg_opening_ck_v_ms: f64,
    pub tipp_mipp_kzg_opening_ck_w_ms: f64,
    pub total_ms: f64,
}

pub fn setup_inner_product<P, D, R: Rng>(rng: &mut R, size: usize) -> Result<SRS<P>, Error>
where
    P: Pairing,
    D: Digest,
{
    let (srs, _) = PairingInnerProductAB::<P, D>::setup(rng, size)?;
    Ok(srs)
}

pub fn aggregate_proofs<P, D>(
    context: &ChallengeContext,
    ip_srs: &SRS<P>,
    proofs: &[Proof<P>],
) -> Result<AggregateProof<P, D>, Error>
where
    P: Pairing,
    D: Digest,
{
    let mut trace = NoopChallengeTraceSink;
    aggregate_proofs_with_trace(context, &mut trace, ip_srs, proofs)
}

pub fn aggregate_proofs_with_trace<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_srs: &SRS<P>,
    proofs: &[Proof<P>],
) -> Result<AggregateProof<P, D>, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let a = proofs
        .iter()
        .map(|proof| proof.a.into())
        .collect::<Vec<P::G1>>();
    let b = proofs
        .iter()
        .map(|proof| proof.b.into())
        .collect::<Vec<P::G2>>();
    let c = proofs
        .iter()
        .map(|proof| proof.c.into())
        .collect::<Vec<P::G1>>();

    let prepared_srs = ip_srs.prepare_for_proving();
    let (ck_1, ck_2) = prepared_srs.commitment_keys();

    let ((com_a, com_b, com_c), _) = initial_commitments_profiled::<P>(&a, &b, &c, ck_1, ck_2)?;

    // Random linear combination of proofs
    let mut counter_nonce: u64 = 0;
    let r = loop {
        let mut hash_input = Vec::new();
        com_a.serialize_uncompressed(&mut hash_input)?;
        com_b.serialize_uncompressed(&mut hash_input)?;
        com_c.serialize_uncompressed(&mut hash_input)?;
        if let Some(r) = <P::ScalarField>::from_random_bytes(&challenge_digest::<D, _>(
            context,
            trace,
            b"aggregate.randomizer",
            counter_nonce,
            &hash_input,
        )) {
            break r;
        };
        counter_nonce += 1;
    };

    let r_vec = structured_scalar_power(proofs.len(), &r);
    let b_r = b
        .iter()
        .zip(&r_vec)
        .map(|(&b, r)| b * r)
        .collect::<Vec<P::G2>>();
    let ip_ab = PairingInnerProduct::<P>::inner_product(&a, &b_r)?;
    let agg_c = MultiexponentiationInnerProduct::<P::G1>::inner_product(&c, &r_vec)?;

    let ck_2_r_inv = build_shifted_ck_2::<P>(ck_2, &r);

    #[cfg(debug_assertions)]
    assert_eq!(
        com_b,
        PairingInnerProduct::<P>::inner_product(&ck_2_r_inv, &b_r)?
    );

    let (tipp_mipp_proof, _, tipp_mipp_trace, _) = prove_tipp_mipp_buffered_profiled::<P, D>(
        context,
        &prepared_srs,
        &a,
        &b_r,
        &c,
        &r_vec,
        ck_1,
        &ck_2_r_inv,
        &r,
        (&com_a, &com_b, &com_c),
        &ip_ab,
        &agg_c,
    )?;
    tipp_mipp_trace.replay_into(trace);

    Ok(AggregateProof {
        com_a,
        com_b,
        com_c,
        ip_ab,
        agg_c,
        tipp_mipp_proof,
    })
}

pub fn aggregate_proofs_profiled<P, D>(
    context: &ChallengeContext,
    ip_srs: &SRS<P>,
    proofs: &[Proof<P>],
) -> Result<(AggregateProof<P, D>, AggregateProofBuildProfile), Error>
where
    P: Pairing,
    D: Digest,
{
    let mut trace = NoopChallengeTraceSink;
    aggregate_proofs_profiled_with_trace(context, &mut trace, ip_srs, proofs)
}

pub fn aggregate_proofs_profiled_with_trace<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_srs: &SRS<P>,
    proofs: &[Proof<P>],
) -> Result<(AggregateProof<P, D>, AggregateProofBuildProfile), Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let started = Instant::now();
    let mut profile = AggregateProofBuildProfile::default();

    let point_extract_started = Instant::now();
    let a = proofs
        .iter()
        .map(|proof| proof.a.into())
        .collect::<Vec<P::G1>>();
    let b = proofs
        .iter()
        .map(|proof| proof.b.into())
        .collect::<Vec<P::G2>>();
    let c = proofs
        .iter()
        .map(|proof| proof.c.into())
        .collect::<Vec<P::G1>>();
    profile.point_extract_ms = point_extract_started.elapsed().as_secs_f64() * 1000.0;

    let prepared_srs_started = Instant::now();
    let prepared_srs = ip_srs.prepare_for_proving();
    profile.prepared_srs_ms = prepared_srs_started.elapsed().as_secs_f64() * 1000.0;

    let commitment_key_extract_started = Instant::now();
    let (ck_1, ck_2) = prepared_srs.commitment_keys();
    profile.commitment_key_extract_ms =
        commitment_key_extract_started.elapsed().as_secs_f64() * 1000.0;

    reset_pairing_profile_accumulator();
    let commitment_started = Instant::now();
    let ((com_a, com_b, com_c), (com_a_ms, com_b_ms, com_c_ms)) =
        initial_commitments_profiled::<P>(&a, &b, &c, ck_1, ck_2)?;
    profile.com_a_ms = com_a_ms;
    profile.com_b_ms = com_b_ms;
    profile.com_c_ms = com_c_ms;
    profile.commitment_ms = commitment_started.elapsed().as_secs_f64() * 1000.0;

    let randomizer_started = Instant::now();
    let mut counter_nonce: u64 = 0;
    let r = loop {
        let mut hash_input = Vec::new();
        com_a.serialize_uncompressed(&mut hash_input)?;
        com_b.serialize_uncompressed(&mut hash_input)?;
        com_c.serialize_uncompressed(&mut hash_input)?;
        if let Some(r) = <P::ScalarField>::from_random_bytes(&challenge_digest::<D, _>(
            context,
            trace,
            b"aggregate.randomizer",
            counter_nonce,
            &hash_input,
        )) {
            break r;
        };
        counter_nonce += 1;
    };
    profile.randomizer_ms = randomizer_started.elapsed().as_secs_f64() * 1000.0;

    let structured_scalar_started = Instant::now();
    let r_vec = structured_scalar_power(proofs.len(), &r);
    profile.structured_scalar_ms = structured_scalar_started.elapsed().as_secs_f64() * 1000.0;

    let weighted_b_started = Instant::now();
    let b_r = b
        .iter()
        .zip(&r_vec)
        .map(|(&b, r)| b * r)
        .collect::<Vec<P::G2>>();
    profile.weighted_b_ms = weighted_b_started.elapsed().as_secs_f64() * 1000.0;

    let ip_ab_started = Instant::now();
    let ip_ab = PairingInnerProduct::<P>::inner_product(&a, &b_r)?;
    profile.ip_ab_ms = ip_ab_started.elapsed().as_secs_f64() * 1000.0;

    let agg_c_started = Instant::now();
    let agg_c = MultiexponentiationInnerProduct::<P::G1>::inner_product(&c, &r_vec)?;
    profile.agg_c_ms = agg_c_started.elapsed().as_secs_f64() * 1000.0;

    let ck_2_r_inv_started = Instant::now();
    let ck_2_r_inv = build_shifted_ck_2::<P>(ck_2, &r);
    profile.ck_2_r_inv_ms = ck_2_r_inv_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(debug_assertions)]
    {
        let consistency_started = Instant::now();
        assert_eq!(
            com_b,
            PairingInnerProduct::<P>::inner_product(&ck_2_r_inv, &b_r)?
        );
        profile.consistency_check_ms = consistency_started.elapsed().as_secs_f64() * 1000.0;
    }

    let (tipp_mipp_proof, tipp_mipp_profile, tipp_mipp_trace, tipp_mipp_ms) =
        prove_tipp_mipp_buffered_profiled::<P, D>(
            context,
            &prepared_srs,
            &a,
            &b_r,
            &c,
            &r_vec,
            ck_1,
            &ck_2_r_inv,
            &r,
            (&com_a, &com_b, &com_c),
            &ip_ab,
            &agg_c,
        )?;
    tipp_mipp_trace.replay_into(trace);
    profile.tipp_mipp_ms = tipp_mipp_ms;
    apply_tipp_mipp_profile(&mut profile, &tipp_mipp_profile);
    apply_pairing_profile(&mut profile, &pairing_profile_snapshot());
    profile.total_ms = started.elapsed().as_secs_f64() * 1000.0;

    Ok((
        AggregateProof {
            com_a,
            com_b,
            com_c,
            ip_ab,
            agg_c,
            tipp_mipp_proof,
        },
        profile,
    ))
}

pub fn verify_aggregate_proof<P, D>(
    context: &ChallengeContext,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>], //TODO: Should use ToConstraintField instead
    proof: &AggregateProof<P, D>,
) -> Result<bool, Error>
where
    P: Pairing,
    D: Digest,
{
    let mut trace = NoopChallengeTraceSink;
    verify_aggregate_proof_with_trace(
        context,
        &mut trace,
        ip_verifier_srs,
        pvk,
        public_inputs,
        proof,
    )
}

pub fn verify_aggregate_proof_with_trace<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &AggregateProof<P, D>,
) -> Result<bool, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    #[cfg(not(feature = "bench-baseline"))]
    {
        let effect = ArkworksAggregateVerifierEffect {
            context,
            trace,
            ip_verifier_srs,
            pvk,
            public_inputs,
            proof,
        };
        let output = verify_aggregate_proof_core(effect)?;
        let AggregateVerifierCoreOutput {
            accepted, effect, ..
        } = output;
        drop(effect);
        return Ok(accepted);
    }

    #[cfg(feature = "bench-baseline")]
    {
        let r = derive_randomizer::<P, D, S>(context, trace, proof)?;
        let ((tipp_mipp_valid, ppe_valid), _) = verify_combined_checks_profiled::<P, D, S>(
            context,
            trace,
            ip_verifier_srs,
            pvk,
            public_inputs,
            proof,
            &r,
        )?;

        Ok(tipp_mipp_valid && ppe_valid)
    }
}

pub fn verify_aggregate_proof_profiled<P, D>(
    context: &ChallengeContext,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &AggregateProof<P, D>,
) -> Result<AggregateProofVerificationProfile, Error>
where
    P: Pairing,
    D: Digest,
{
    let mut trace = NoopChallengeTraceSink;
    verify_aggregate_proof_profiled_with_trace(
        context,
        &mut trace,
        ip_verifier_srs,
        pvk,
        public_inputs,
        proof,
    )
}

pub fn verify_aggregate_proof_profiled_with_trace<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &AggregateProof<P, D>,
) -> Result<AggregateProofVerificationProfile, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let started = Instant::now();

    let challenge_started = Instant::now();
    let r = derive_randomizer::<P, D, S>(context, trace, proof)?;
    let challenge_ms = challenge_started.elapsed().as_secs_f64() * 1000.0;

    let ((tipp_mipp_valid, ppe_valid), (tipp_mipp_ms, public_input_fold_ms, ppe_ms)) =
        verify_combined_checks_profiled::<P, D, S>(
            context,
            trace,
            ip_verifier_srs,
            pvk,
            public_inputs,
            proof,
            &r,
        )?;

    Ok(AggregateProofVerificationProfile {
        challenge_ms,
        tipp_mipp_ms,
        public_input_fold_ms,
        ppe_ms,
        core_total_ms: started.elapsed().as_secs_f64() * 1000.0,
        accepted: tipp_mipp_valid && ppe_valid,
    })
}

fn build_shifted_ck_2<P: Pairing>(ck_2: &[P::G1], r: &P::ScalarField) -> Vec<P::G1> {
    let inverse_powers = inverse_powers::<P>(ck_2.len(), r);

    #[cfg(hax_compilation)]
    {
        return build_shifted_ck_2_inner(ck_2, &inverse_powers);
    }

    #[cfg(all(not(hax_compilation), feature = "parallel"))]
    {
        ck_2.par_iter()
            .zip(inverse_powers.par_iter())
            .map(|(ck, power)| *ck * power)
            .collect()
    }

    #[cfg(all(not(hax_compilation), not(feature = "parallel")))]
    {
        ck_2.iter()
            .zip(inverse_powers.iter())
            .map(|(ck, power)| *ck * power)
            .collect()
    }
}

#[cfg(hax_compilation)]
fn build_shifted_ck_2_inner<G, F>(ck_2: &[G], inverse_powers: &[F]) -> Vec<G>
where
    G: Copy + std::ops::Mul<F, Output = G>,
    F: Copy,
{
    let mut shifted = Vec::with_capacity(ck_2.len());
    for index in 0..ck_2.len() {
        shifted.push(ck_2[index] * inverse_powers[index]);
    }
    shifted
}

fn inverse_powers<P: Pairing>(len: usize, r: &P::ScalarField) -> Vec<P::ScalarField> {
    assert!(!r.is_zero(), "inverse_powers requires nonzero r");
    let r_inv = r.inverse().expect("inverse_powers requires nonzero r");
    inverse_powers_with_inverse(len, &r_inv)
}

fn inverse_powers_with_inverse<F>(len: usize, r_inv: &F) -> Vec<F>
where
    F: Clone + One + std::ops::Mul<Output = F>,
{
    let mut powers = Vec::with_capacity(len);
    let mut current = F::one();
    for _ in 0..len {
        powers.push(current.clone());
        current = current * r_inv.clone();
    }
    powers
}

fn apply_tipp_mipp_profile(
    profile: &mut AggregateProofBuildProfile,
    tipp_mipp_profile: &TippMippBuildProfile,
) {
    profile.tipp_mipp_gipa_ms = tipp_mipp_profile.gipa_ms;
    profile.tipp_mipp_gipa_commit_l_ms = tipp_mipp_profile.commit_l_ms;
    profile.tipp_mipp_gipa_commit_r_ms = tipp_mipp_profile.commit_r_ms;
    profile.tipp_mipp_gipa_challenge_ms = tipp_mipp_profile.challenge_ms;
    profile.tipp_mipp_gipa_rescale_m1_ms = tipp_mipp_profile.rescale_m1_ms;
    profile.tipp_mipp_gipa_rescale_m2_ms = tipp_mipp_profile.rescale_m2_ms;
    profile.tipp_mipp_gipa_rescale_m3_ms = tipp_mipp_profile.rescale_m3_ms;
    profile.tipp_mipp_gipa_rescale_r_ms = tipp_mipp_profile.rescale_r_ms;
    profile.tipp_mipp_gipa_rescale_ck1_ms = tipp_mipp_profile.rescale_ck1_ms;
    profile.tipp_mipp_gipa_rescale_ck2_ms = tipp_mipp_profile.rescale_ck2_ms;
    profile.tipp_mipp_transcript_inverse_ms = tipp_mipp_profile.transcript_inverse_ms;
    profile.tipp_mipp_final_bridge_ms = tipp_mipp_profile.final_bridge_ms;
    profile.tipp_mipp_kzg_challenge_ms = tipp_mipp_profile.kzg_challenge_ms;
    profile.tipp_mipp_kzg_coefficient_build_ms = tipp_mipp_profile.kzg_coefficient_build_ms;
    profile.tipp_mipp_kzg_eval_quotient_ms = tipp_mipp_profile.kzg_eval_quotient_ms;
    profile.tipp_mipp_kzg_opening_msm_ms = tipp_mipp_profile.kzg_opening_msm_ms;
    profile.tipp_mipp_kzg_opening_ck_v_ms = tipp_mipp_profile.kzg_opening_ck_v_ms;
    profile.tipp_mipp_kzg_opening_ck_w_ms = tipp_mipp_profile.kzg_opening_ck_w_ms;
}

fn apply_pairing_profile(
    profile: &mut AggregateProofBuildProfile,
    pairing_profile: &PairingComputationProfile,
) {
    profile.pairing_normalize_batch_ms = pairing_profile.normalize_batch_ms;
    profile.pairing_prepare_ms = pairing_profile.prepare_ms;
    profile.pairing_miller_loop_ms = pairing_profile.miller_loop_ms;
    profile.pairing_final_exponentiation_ms = pairing_profile.final_exponentiation_ms;
}

fn derive_randomizer<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    proof: &AggregateProof<P, D>,
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let mut counter_nonce: u64 = 0;
    loop {
        let mut hash_input = Vec::new();
        proof.com_a.serialize_uncompressed(&mut hash_input)?;
        proof.com_b.serialize_uncompressed(&mut hash_input)?;
        proof.com_c.serialize_uncompressed(&mut hash_input)?;
        if let Some(r) = <P::ScalarField>::from_random_bytes(&challenge_digest::<D, _>(
            context,
            trace,
            b"aggregate.randomizer",
            counter_nonce,
            &hash_input,
        )) {
            // Reject the degenerate randomizers. r == 0 breaks inverse-power
            // rescaling; r == 1 collapses every position weight to 1, defeating
            // the inter-proof anti-mixing the randomizer exists to provide. Both
            // are ~2^-256 events, so the re-derivation loop never fires in
            // practice; the guard removes the cases from the soundness argument
            // and matches the nonzero discipline of the GIPA round challenges.
            if !r.is_zero() && !r.is_one() {
                break Ok(r);
            }
        };
        counter_nonce += 1;
    }
}

fn tipp_mipp_core_input<P, D>(
    ip_verifier_srs: &VerifierSRS<P>,
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
) -> TippMippCoreInput<
    P::ScalarField,
    P::G1,
    P::G2,
    PairingOutput<P>,
    IdentityOutput<PairingOutput<P>>,
    IdentityOutput<P::G1>,
>
where
    P: Pairing,
    D: Digest,
{
    let core_commitment = |commitment: &TippMippCommitment<P>| TippMippCoreCommitment {
        ab: commitment.ab.clone(),
        c: commitment.c.clone(),
    };
    let gipa_proof = proof
        .tipp_mipp_proof
        .gipa_proof
        .r_commitment_steps
        .iter()
        .map(|(left, right)| (core_commitment(left), core_commitment(right)))
        .collect();
    let tipp_mipp = &proof.tipp_mipp_proof;
    TippMippCoreInput {
        com_a: proof.com_a.clone(),
        com_b: proof.com_b.clone(),
        com_t: IdentityOutput(vec![proof.ip_ab.clone()]),
        com_c: proof.com_c.clone(),
        com_z: IdentityOutput(vec![proof.agg_c.clone()]),
        ip_ab: proof.ip_ab.clone(),
        agg_c: proof.agg_c.clone(),
        proof: TippMippCoreProof {
            gipa_proof,
            final_ck: tipp_mipp.final_ck.clone(),
            final_ck_proofs: tipp_mipp.final_ck_proofs.clone(),
            final_messages: tipp_mipp.final_messages.clone(),
        },
        verifier_g: ip_verifier_srs.g.clone(),
        verifier_g_beta: ip_verifier_srs.g_beta.clone(),
        verifier_h: ip_verifier_srs.h.clone(),
        verifier_h_alpha: ip_verifier_srs.h_alpha.clone(),
        r: r.clone(),
        kzg_g2_r_shift: P::ScalarField::one(),
    }
}

#[cfg(not(feature = "bench-baseline"))]
fn combined_checks_core_input<P, D>(
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
    ip_verifier_srs: &VerifierSRS<P>,
) -> CombinedChecksCoreInput<
    P::ScalarField,
    P::G1,
    P::G2,
    P::G2Prepared,
    PairingOutput<P>,
    IdentityOutput<PairingOutput<P>>,
    IdentityOutput<P::G1>,
>
where
    P: Pairing,
    D: Digest,
{
    let gamma_abc_g1 = pvk
        .vk
        .gamma_abc_g1
        .iter()
        .map(|base| P::G1::from(*base))
        .collect();
    CombinedChecksCoreInput {
        tipp_mipp: tipp_mipp_core_input(ip_verifier_srs, proof, r),
        gamma_abc_g1,
        public_inputs: public_inputs.to_vec(),
        r: r.clone(),
        ppe: CombinedChecksPpeInput {
            alpha_beta: PairingOutput::<P>(pvk.alpha_g1_beta_g2),
            agg_c: proof.agg_c.clone(),
            gamma_g2_neg_pc: pvk.gamma_g2_neg_pc.clone(),
            delta_g2_neg_pc: pvk.delta_g2_neg_pc.clone(),
            ip_ab: proof.ip_ab.clone(),
        },
    }
}

#[cfg(not(feature = "bench-baseline"))]
struct ArkworksAggregateVerifierEffect<'a, P, D, S>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    context: &'a ChallengeContext,
    trace: &'a mut S,
    ip_verifier_srs: &'a VerifierSRS<P>,
    pvk: &'a PreparedVerifyingKey<P>,
    public_inputs: &'a [Vec<P::ScalarField>],
    proof: &'a AggregateProof<P, D>,
}

#[cfg(not(feature = "bench-baseline"))]
impl<P, D, S> AggregateVerifierEffect<P::ScalarField, Error>
    for ArkworksAggregateVerifierEffect<'_, P, D, S>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    fn derive_randomizer(&mut self, nonce: u64) -> Result<Option<P::ScalarField>, Error> {
        let mut hash_input = Vec::new();
        self.proof.com_a.serialize_uncompressed(&mut hash_input)?;
        self.proof.com_b.serialize_uncompressed(&mut hash_input)?;
        self.proof.com_c.serialize_uncompressed(&mut hash_input)?;
        Ok(P::ScalarField::from_random_bytes(
            &challenge_digest::<D, _>(
                self.context,
                self.trace,
                b"aggregate.randomizer",
                nonce,
                &hash_input,
            ),
        ))
    }

    fn verify_combined(&mut self, randomizer: &P::ScalarField) -> Result<(bool, bool), Error> {
        let (checks, _) = verify_combined_checks_profiled::<P, D, S>(
            self.context,
            self.trace,
            self.ip_verifier_srs,
            self.pvk,
            self.public_inputs,
            self.proof,
            randomizer,
        )?;
        Ok(checks)
    }
}

#[cfg(not(feature = "bench-baseline"))]
fn combined_checks_core_error(error: CombinedChecksError<String>) -> Error {
    match error.kind {
        0 => Box::new(std::io::Error::new(
            std::io::ErrorKind::InvalidInput,
            "padded proof count must be a nonzero power of two",
        )),
        1 => Box::new(std::io::Error::new(
            std::io::ErrorKind::InvalidInput,
            format!(
                "combined GIPA round count {} does not match log2(proof count) {}",
                error.actual_rounds, error.expected_rounds
            ),
        )),
        _ => Box::new(std::io::Error::other(
            error
                .tipp_mipp_error
                .expect("TIPP/MIPP error kind must carry an error"),
        )),
    }
}

fn verify_tipp_mipp<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
) -> Result<bool, Error>
where
    P: Pairing,
    D: Digest,
    S: ChallengeTraceSink,
{
    let input = tipp_mipp_core_input(ip_verifier_srs, proof, r);
    let mut effect = ArkworksTippMippEffect::<P, D, S> {
        context,
        trace,
        _pairing: PhantomData,
        _digest: PhantomData,
    };
    verify_tipp_mipp_core(input, &mut effect, &ArkworksPairingEffect::<P>::default())
        .map_err(|error: String| Box::new(std::io::Error::other(error)) as Error)
}

fn structured_scalar_final_from_raw_transcript<P: Pairing>(
    raw_transcript_reversed: &[P::ScalarField],
    r: &P::ScalarField,
) -> P::ScalarField {
    structured_scalar_final_from_raw_transcript_inner(raw_transcript_reversed, r)
}

fn structured_scalar_final_from_raw_transcript_inner<F>(raw_transcript_reversed: &[F], r: &F) -> F
where
    F: Clone + One + std::ops::Add<Output = F> + std::ops::Mul<Output = F>,
{
    let mut power = r.clone();
    let mut product = F::one();
    for i in 0..raw_transcript_reversed.len() {
        let challenge = raw_transcript_reversed[i].clone();
        product = product * (F::one() + (challenge * power.clone()));
        power = power.clone() * power;
    }
    product
}

fn fold_public_inputs<P: Pairing>(
    vk: &VerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    r: &P::ScalarField,
) -> (P::ScalarField, P::G1) {
    let gamma_abc_g1 = vk
        .gamma_abc_g1
        .iter()
        .map(|base| P::G1::from(*base))
        .collect::<Vec<_>>();
    fold_public_inputs_core(&gamma_abc_g1, public_inputs, r)
}

pub(crate) fn fold_public_inputs_core<F, G1>(
    gamma_abc_g1: &[G1],
    public_inputs: &[Vec<F>],
    r: &F,
) -> (F, G1)
where
    F: Clone
        + PartialEq
        + From<u64>
        + One
        + Zero
        + std::ops::Add<Output = F>
        + std::ops::Div<Output = F>
        + std::ops::Mul<Output = F>
        + std::ops::Sub<Output = F>,
    G1: Clone + std::ops::Add<Output = G1> + std::ops::Mul<F, Output = G1>,
{
    assert!(!public_inputs.is_empty(), "public inputs must be non-empty");
    let input_arity = public_inputs[0].len();
    assert_eq!(gamma_abc_g1.len(), input_arity + 1);
    for row_index in 0..public_inputs.len() {
        assert_eq!(public_inputs[row_index].len(), input_arity);
    }

    let r_sum = if r.clone() == F::one() {
        F::from(public_inputs.len() as u64)
    } else {
        let mut r_power = F::one();
        for _ in 0..public_inputs.len() {
            r_power = r_power * r.clone();
        }
        (r_power - F::one()) / (r.clone() - F::one())
    };

    let mut r_vec = vec![F::one(); public_inputs.len()];
    for index in 1..public_inputs.len() {
        r_vec[index] = r_vec[index - 1].clone() * r.clone();
    }

    let mut folded_public_inputs = vec![F::zero(); input_arity];
    for row_index in 0..public_inputs.len() {
        for input_index in 0..input_arity {
            let term = public_inputs[row_index][input_index].clone() * r_vec[row_index].clone();
            folded_public_inputs[input_index] = folded_public_inputs[input_index].clone() + term;
        }
    }

    let mut g_ic = gamma_abc_g1[0].clone() * r_sum.clone();
    for input_index in 0..input_arity {
        let term =
            gamma_abc_g1[input_index + 1].clone() * folded_public_inputs[input_index].clone();
        g_ic = g_ic + term;
    }

    (r_sum, g_ic)
}

#[cfg(not(feature = "bench-baseline"))]
trait PreparedPairingEffect<G1, G2Prepared, GT> {
    fn multi_pairing_prepared(&self, left: &[G1], right: &[G2Prepared]) -> Option<GT>;
}

#[cfg(not(feature = "bench-baseline"))]
#[derive(Clone, Copy)]
struct ArkworksPreparedPairingEffect<P: Pairing>(PhantomData<P>);

#[cfg(not(feature = "bench-baseline"))]
impl<P: Pairing> Default for ArkworksPreparedPairingEffect<P> {
    fn default() -> Self {
        Self(PhantomData)
    }
}

#[cfg(not(feature = "bench-baseline"))]
impl<P: Pairing> PreparedPairingEffect<P::G1, P::G2Prepared, PairingOutput<P>>
    for ArkworksPreparedPairingEffect<P>
{
    fn multi_pairing_prepared(
        &self,
        left: &[P::G1],
        right: &[P::G2Prepared],
    ) -> Option<PairingOutput<P>> {
        let left_affine = P::G1::normalize_batch(left);
        cfg_multi_pairing_g1_affine_g2_prepared::<P>(&left_affine, right)
    }
}

#[cfg(not(feature = "bench-baseline"))]
#[derive(Clone)]
struct PreparedPpeVerifierCoreInput<F, G1, G2Prepared, GT> {
    alpha_beta: GT,
    r_sum: F,
    g_ic: G1,
    agg_c: G1,
    gamma_g2_neg_pc: G2Prepared,
    delta_g2_neg_pc: G2Prepared,
    ip_ab: GT,
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_ppe_core<F, G1, G2Prepared, GT, E>(
    input: PreparedPpeVerifierCoreInput<F, G1, G2Prepared, GT>,
    pairing: &E,
) -> bool
where
    F: Clone,
    G1: Clone + std::ops::Neg<Output = G1>,
    G2Prepared: Clone,
    GT: Clone + std::ops::Mul<F, Output = GT> + std::ops::Add<Output = GT> + PartialEq,
    E: PreparedPairingEffect<G1, G2Prepared, GT>,
{
    let alpha_beta_rsum = input.alpha_beta * input.r_sum;
    let ip_ab = input.ip_ab;
    let left = [-input.g_ic, -input.agg_c];
    let right = [input.gamma_g2_neg_pc, input.delta_g2_neg_pc];
    match pairing.multi_pairing_prepared(&left, &right) {
        Some(folded) => alpha_beta_rsum + folded == ip_ab,
        None => false,
    }
}

/// PPE check `e(α·r_sum, β)·e(g_ic, γ)·e(agg_c, δ) == ip_ab`, computed by reusing
/// the precomputes already carried in `PreparedVerifyingKey` rather than pairing
/// the raw `vk` G2 points afresh:
///   - `e(α·r_sum, β) = e(α, β)^{r_sum}` — `pvk.alpha_g1_beta_g2` raised to
///     `r_sum`, a GT exponentiation that removes a whole Miller loop.
///   - `e(g_ic, γ) = e(-g_ic, -γ)` and `e(agg_c, δ) = e(-agg_c, -δ)` — paired
///     against `pvk.{gamma,delta}_g2_neg_pc`, the already-prepared `-γ`/`-δ` line
///     tables, so neither γ nor δ is re-prepared per verify.
/// Same GT value as the 3-pairing form (verified by `ppe_optimized_matches_baseline`
/// and the Groth16 oracle agreement test); byte- and trace-stable category 1.
#[cfg(not(feature = "bench-baseline"))]
fn verify_ppe<P: Pairing>(
    pvk: &PreparedVerifyingKey<P>,
    proof: &AggregateProof<P, impl Digest>,
    r_sum: &P::ScalarField,
    g_ic: P::G1,
) -> bool {
    let input = PreparedPpeVerifierCoreInput {
        alpha_beta: PairingOutput::<P>(pvk.alpha_g1_beta_g2),
        r_sum: r_sum.clone(),
        g_ic,
        agg_c: proof.agg_c.clone(),
        gamma_g2_neg_pc: pvk.gamma_g2_neg_pc.clone(),
        delta_g2_neg_pc: pvk.delta_g2_neg_pc.clone(),
        ip_ab: proof.ip_ab.clone(),
    };
    verify_ppe_core(input, &ArkworksPreparedPairingEffect::<P>::default())
}

/// Pre-optimization PPE form: three pairings over the raw `vk` G2 points. Retained
/// only as the `bench-baseline` A/B reference. The optimized form's GT-value
/// equivalence is gated by `ppe_optimized_matches_baseline_gt_value` (wrapper
/// crate) and the Groth16 oracle agreement test.
#[cfg(feature = "bench-baseline")]
fn verify_ppe_baseline<P: Pairing>(
    vk: &VerifyingKey<P>,
    proof: &AggregateProof<P, impl Digest>,
    r_sum: &P::ScalarField,
    g_ic: P::G1,
) -> bool {
    cfg_multi_pairing::<P>(
        &[P::G1::from(vk.alpha_g1) * r_sum, g_ic, proof.agg_c.clone()],
        &[
            P::G2::from(vk.beta_g2),
            P::G2::from(vk.gamma_g2),
            P::G2::from(vk.delta_g2),
        ],
    )
    .map(|pairing_output| pairing_output == proof.ip_ab)
    .unwrap_or(false)
}

#[cfg(test)]
mod tests {
    use super::*;
    use ark_bls12_377::Bls12_377;
    use ark_bls12_381::Bls12_381;
    use ark_ec::{pairing::Pairing, PrimeGroup};
    use ark_ff::{Field, UniformRand, Zero};
    use ark_groth16::{prepare_verifying_key, VerifyingKey};
    use ark_std::rand::{rngs::StdRng, SeedableRng};
    use ark_std::One;
    use blake2::Blake2b;

    #[cfg(not(feature = "bench-baseline"))]
    #[derive(Debug)]
    struct ScriptedAggregateEffect {
        candidates: Vec<Result<Option<u64>, &'static str>>,
        next: usize,
        combined: Result<(bool, bool), &'static str>,
        events: Vec<(char, u64)>,
    }

    #[cfg(not(feature = "bench-baseline"))]
    impl AggregateVerifierEffect<u64, &'static str> for ScriptedAggregateEffect {
        fn derive_randomizer(&mut self, nonce: u64) -> Result<Option<u64>, &'static str> {
            self.events.push(('r', nonce));
            let result = self.candidates[self.next].clone();
            self.next += 1;
            result
        }

        fn verify_combined(&mut self, randomizer: &u64) -> Result<(bool, bool), &'static str> {
            self.events.push(('c', *randomizer));
            self.combined
        }
    }

    #[cfg(not(feature = "bench-baseline"))]
    fn scripted_aggregate_effect(
        candidates: Vec<Result<Option<u64>, &'static str>>,
        combined: Result<(bool, bool), &'static str>,
    ) -> ScriptedAggregateEffect {
        ScriptedAggregateEffect {
            candidates,
            next: 0,
            combined,
            events: Vec::new(),
        }
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_core_retries_invalid_decodings_and_degenerate_randomizers_in_order() {
        let effect = scripted_aggregate_effect(
            vec![Ok(None), Ok(Some(0)), Ok(Some(1)), Ok(Some(7))],
            Ok((true, true)),
        );
        let output = verify_aggregate_proof_core(effect).expect("script succeeds");

        assert_eq!(output.randomizer, 7);
        assert_eq!(output.checks, (true, true));
        assert!(output.accepted);
        assert_eq!(
            output.effect.events,
            vec![('r', 0), ('r', 1), ('r', 2), ('r', 3), ('c', 7)]
        );
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_core_propagates_challenge_and_combined_errors() {
        let challenge_error = scripted_aggregate_effect(vec![Err("challenge")], Ok((true, true)));
        assert_eq!(
            verify_aggregate_proof_core(challenge_error).unwrap_err(),
            "challenge"
        );

        let combined_error = scripted_aggregate_effect(vec![Ok(Some(7))], Err("combined"));
        assert_eq!(
            verify_aggregate_proof_core(combined_error).unwrap_err(),
            "combined"
        );
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_core_acceptance_is_exact_boolean_conjunction() {
        for checks in [(false, false), (false, true), (true, false), (true, true)] {
            let effect = scripted_aggregate_effect(vec![Ok(Some(7))], Ok(checks));
            let output = verify_aggregate_proof_core(effect).expect("script succeeds");
            assert_eq!(output.accepted, checks.0 && checks.1);
        }
    }

    fn zero_combined_inputs<P: Pairing>() -> (
        VerifierSRS<P>,
        PreparedVerifyingKey<P>,
        AggregateProof<P, Blake2b>,
    ) {
        let g1 = P::G1::zero();
        let g2 = P::G2::zero();
        let vk = VerifyingKey {
            alpha_g1: g1.into(),
            beta_g2: g2.into(),
            gamma_g2: g2.into(),
            delta_g2: g2.into(),
            gamma_abc_g1: vec![g1.into()],
        };
        (
            VerifierSRS {
                g: g1,
                h: g2,
                g_beta: g1,
                h_alpha: g2,
            },
            prepare_verifying_key(&vk),
            zero_tipp_mipp_proof(),
        )
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn combined_checks_schedule_branch_preserves_core_result_and_trace() {
        let (srs, pvk, proof) = zero_combined_inputs::<Bls12_381>();
        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let r = <Bls12_381 as Pairing>::ScalarField::from(2u64);
        let public_inputs = vec![vec![]];

        let mut combined_trace = crate::challenge::VecChallengeTraceSink::default();
        let combined = verify_combined_checks_profiled::<Bls12_381, Blake2b, _>(
            &context,
            &mut combined_trace,
            &srs,
            &pvk,
            &public_inputs,
            &proof,
            &r,
        )
        .expect("zero combined fixture should reach both checks");

        let mut tipp_trace = crate::challenge::VecChallengeTraceSink::default();
        let tipp =
            verify_tipp_mipp::<Bls12_381, Blake2b, _>(&context, &mut tipp_trace, &srs, &proof, &r)
                .expect("zero TIPP/MIPP fixture should verify");

        assert_eq!(combined.0 .0, tipp);
        assert!(combined.1 .0 >= 0.0 && combined.1 .1 >= 0.0 && combined.1 .2 >= 0.0);
        assert_eq!(combined_trace.entries(), tipp_trace.entries());
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn combined_checks_rejects_malformed_counts_before_downstream_calls() {
        let (srs, pvk, proof) = zero_combined_inputs::<Bls12_381>();
        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let cases = [
            (
                Vec::new(),
                "padded proof count must be a nonzero power of two",
            ),
            (
                vec![vec![], vec![], vec![]],
                "padded proof count must be a nonzero power of two",
            ),
            (
                vec![vec![], vec![]],
                "combined GIPA round count 0 does not match log2(proof count) 1",
            ),
        ];

        for (public_inputs, expected) in cases {
            let mut trace = NoopChallengeTraceSink;
            let error = verify_combined_checks_profiled::<Bls12_381, Blake2b, _>(
                &context,
                &mut trace,
                &srs,
                &pvk,
                &public_inputs,
                &proof,
                &<Bls12_381 as Pairing>::ScalarField::from(2u64),
            )
            .expect_err("malformed count must be rejected");
            assert_eq!(error.to_string(), expected);
        }
    }

    fn zero_tipp_mipp_proof<P: Pairing>() -> AggregateProof<P, Blake2b> {
        let g1 = P::G1::zero();
        let g2 = P::G2::zero();
        AggregateProof {
            com_a: PairingOutput::<P>::zero(),
            com_b: PairingOutput::<P>::zero(),
            com_c: PairingOutput::<P>::zero(),
            ip_ab: PairingOutput::<P>::zero(),
            agg_c: g1,
            tipp_mipp_proof: TippMippProof {
                gipa_proof: TippMippGipaProof {
                    r_commitment_steps: Vec::new(),
                    _digest: PhantomData,
                },
                final_ck: (g2, g1),
                final_ck_proofs: (g2, g1),
                final_messages: (g1, g2, g1),
                _digest: PhantomData,
            },
        }
    }

    fn assert_tipp_mipp_delegator_core_parity<P: Pairing>(
        srs: &VerifierSRS<P>,
        proof: &AggregateProof<P, Blake2b>,
        r: P::ScalarField,
    ) {
        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let mut delegated_trace = NoopChallengeTraceSink;
        let delegated =
            verify_tipp_mipp::<P, Blake2b, _>(&context, &mut delegated_trace, srs, proof, &r);

        let input = tipp_mipp_core_input(srs, proof, &r);
        let mut core_trace = NoopChallengeTraceSink;
        let mut effect = ArkworksTippMippEffect::<P, Blake2b, _> {
            context: &context,
            trace: &mut core_trace,
            _pairing: PhantomData,
            _digest: PhantomData,
        };
        let core =
            verify_tipp_mipp_core(input, &mut effect, &ArkworksPairingEffect::<P>::default());

        match (delegated, core) {
            (Ok(delegated), Ok(core)) => assert_eq!(delegated, core),
            (Err(_), Err(_)) => {}
            (delegated, core) => panic!("delegator/core mismatch: {:?} vs {:?}", delegated, core),
        }
    }

    #[test]
    fn verify_tipp_mipp_delegator_core_parity_success() {
        let srs = VerifierSRS::<Bls12_381> {
            g: <Bls12_381 as Pairing>::G1::zero(),
            h: <Bls12_381 as Pairing>::G2::zero(),
            g_beta: <Bls12_381 as Pairing>::G1::zero(),
            h_alpha: <Bls12_381 as Pairing>::G2::zero(),
        };
        let proof = zero_tipp_mipp_proof::<Bls12_381>();
        assert_tipp_mipp_delegator_core_parity(
            &srs,
            &proof,
            <Bls12_381 as Pairing>::ScalarField::from(2u64),
        );
    }

    #[test]
    fn verify_tipp_mipp_delegator_core_parity_randomizer_failure() {
        let srs = VerifierSRS::<Bls12_381> {
            g: <Bls12_381 as Pairing>::G1::zero(),
            h: <Bls12_381 as Pairing>::G2::zero(),
            g_beta: <Bls12_381 as Pairing>::G1::zero(),
            h_alpha: <Bls12_381 as Pairing>::G2::zero(),
        };
        let proof = zero_tipp_mipp_proof::<Bls12_381>();
        assert_tipp_mipp_delegator_core_parity(
            &srs,
            &proof,
            <Bls12_381 as Pairing>::ScalarField::zero(),
        );
    }

    #[test]
    fn verify_tipp_mipp_delegator_core_parity_base_commitment_failure() {
        let srs = VerifierSRS::<Bls12_381> {
            g: <Bls12_381 as Pairing>::G1::zero(),
            h: <Bls12_381 as Pairing>::G2::zero(),
            g_beta: <Bls12_381 as Pairing>::G1::zero(),
            h_alpha: <Bls12_381 as Pairing>::G2::zero(),
        };
        let mut proof = zero_tipp_mipp_proof::<Bls12_381>();
        proof.com_a = PairingOutput::<Bls12_381>(<Bls12_381 as Pairing>::TargetField::one());
        assert_tipp_mipp_delegator_core_parity(
            &srs,
            &proof,
            <Bls12_381 as Pairing>::ScalarField::from(2u64),
        );
    }

    fn assert_fold_public_inputs_parity<P: Pairing>(rows: usize, r: P::ScalarField) {
        let g1 = P::G1::generator();
        let vk: VerifyingKey<P> = VerifyingKey {
            alpha_g1: g1.into(),
            beta_g2: P::G2::generator().into(),
            gamma_g2: P::G2::generator().into(),
            delta_g2: P::G2::generator().into(),
            gamma_abc_g1: vec![
                g1.into(),
                (g1 * P::ScalarField::from(2u64)).into(),
                (g1 * P::ScalarField::from(3u64)).into(),
            ],
        };
        let public_inputs = (0..rows)
            .map(|row| {
                vec![
                    P::ScalarField::from((row as u64) + 1),
                    P::ScalarField::from((row as u64) + 2),
                ]
            })
            .collect::<Vec<_>>();

        let delegated = fold_public_inputs(&vk, &public_inputs, &r);
        let gamma_abc_g1 = vk
            .gamma_abc_g1
            .iter()
            .map(|base| P::G1::from(*base))
            .collect::<Vec<_>>();
        let core = fold_public_inputs_core(&gamma_abc_g1, &public_inputs, &r);

        assert_eq!(delegated, core);
    }

    #[test]
    fn fold_public_inputs_core_parity_r_one_one_row() {
        assert_fold_public_inputs_parity::<Bls12_381>(
            1,
            <Bls12_381 as Pairing>::ScalarField::one(),
        );
    }

    #[test]
    fn fold_public_inputs_core_parity_r_one_multiple_rows() {
        assert_fold_public_inputs_parity::<Bls12_381>(
            3,
            <Bls12_381 as Pairing>::ScalarField::one(),
        );
    }

    #[test]
    fn fold_public_inputs_core_parity_r_not_one_one_row() {
        assert_fold_public_inputs_parity::<Bls12_381>(
            1,
            <Bls12_381 as Pairing>::ScalarField::from(2u64),
        );
    }

    #[test]
    fn fold_public_inputs_core_parity_r_not_one_multiple_rows() {
        assert_fold_public_inputs_parity::<Bls12_381>(
            3,
            <Bls12_381 as Pairing>::ScalarField::from(2u64),
        );
    }

    #[cfg(not(feature = "bench-baseline"))]
    struct FailingPreparedPairingEffect;

    #[cfg(not(feature = "bench-baseline"))]
    impl<G1, G2Prepared, GT> PreparedPairingEffect<G1, G2Prepared, GT>
        for FailingPreparedPairingEffect
    {
        fn multi_pairing_prepared(&self, _left: &[G1], _right: &[G2Prepared]) -> Option<GT> {
            None
        }
    }

    #[cfg(not(feature = "bench-baseline"))]
    fn assert_prepared_ppe_adapter_parity<P: Pairing>() {
        let g1 = P::G1::generator();
        let g2 = P::G2::generator();
        let vk = VerifyingKey {
            alpha_g1: g1.into(),
            beta_g2: g2.into(),
            gamma_g2: g2.into(),
            delta_g2: g2.into(),
            gamma_abc_g1: vec![g1.into()],
        };
        let pvk = prepare_verifying_key(&vk);
        let tipp_mipp_proof = TippMippProof::<P, Blake2b> {
            gipa_proof: TippMippGipaProof::<P, Blake2b> {
                r_commitment_steps: Vec::new(),
                _digest: PhantomData,
            },
            final_ck: (g2, g1),
            final_ck_proofs: (g2, g1),
            final_messages: (g1, g2, g1),
            _digest: PhantomData,
        };
        let proof = AggregateProof {
            com_a: PairingOutput::<P>::zero(),
            com_b: PairingOutput::<P>::zero(),
            com_c: PairingOutput::<P>::zero(),
            ip_ab: PairingOutput::<P>::zero(),
            agg_c: g1,
            tipp_mipp_proof,
        };
        let r_sum = P::ScalarField::from(3u64);
        let g_ic = g1;
        let delegated = verify_ppe(&pvk, &proof, &r_sum, g_ic);
        let input = PreparedPpeVerifierCoreInput {
            alpha_beta: PairingOutput::<P>(pvk.alpha_g1_beta_g2),
            r_sum: r_sum.clone(),
            g_ic,
            agg_c: proof.agg_c,
            gamma_g2_neg_pc: pvk.gamma_g2_neg_pc.clone(),
            delta_g2_neg_pc: pvk.delta_g2_neg_pc.clone(),
            ip_ab: proof.ip_ab,
        };
        let core = verify_ppe_core(
            input.clone(),
            &ArkworksPreparedPairingEffect::<P>::default(),
        );
        assert_eq!(delegated, core);
        assert!(!delegated);
        assert!(!verify_ppe_core(input, &FailingPreparedPairingEffect));
    }

    #[cfg(not(feature = "bench-baseline"))]
    struct RecordingPreparedPairingEffect<P: Pairing> {
        left: std::cell::RefCell<Option<Vec<P::G1>>>,
        right: std::cell::RefCell<Option<Vec<P::G2Prepared>>>,
        output: std::cell::RefCell<Option<PairingOutput<P>>>,
    }

    #[cfg(not(feature = "bench-baseline"))]
    impl<P: Pairing> Default for RecordingPreparedPairingEffect<P> {
        fn default() -> Self {
            Self {
                left: std::cell::RefCell::new(None),
                right: std::cell::RefCell::new(None),
                output: std::cell::RefCell::new(None),
            }
        }
    }

    #[cfg(not(feature = "bench-baseline"))]
    impl<P: Pairing> PreparedPairingEffect<P::G1, P::G2Prepared, PairingOutput<P>>
        for RecordingPreparedPairingEffect<P>
    {
        fn multi_pairing_prepared(
            &self,
            left: &[P::G1],
            right: &[P::G2Prepared],
        ) -> Option<PairingOutput<P>> {
            self.left.replace(Some(left.to_vec()));
            self.right.replace(Some(right.to_vec()));
            let output =
                cfg_multi_pairing_g1_affine_g2_prepared::<P>(&P::G1::normalize_batch(left), right)?;
            self.output.replace(Some(output.clone()));
            Some(output)
        }
    }

    #[cfg(not(feature = "bench-baseline"))]
    fn assert_prepared_ppe_matches_three_pair_baseline<P: Pairing>() {
        let g1 = <P as Pairing>::G1::generator();
        let g2 = <P as Pairing>::G2::generator();
        let vk: VerifyingKey<P> = VerifyingKey {
            alpha_g1: g1.into(),
            beta_g2: g2.into(),
            gamma_g2: g2.into(),
            delta_g2: g2.into(),
            gamma_abc_g1: vec![g1.into()],
        };
        let pvk = prepare_verifying_key(&vk);
        let r_sum = <P as Pairing>::ScalarField::from(3u64);
        let g_ic = g1;
        let agg_c = g1 * <P as Pairing>::ScalarField::from(5u64);
        let baseline_gt = cfg_multi_pairing::<P>(
            &[<P as Pairing>::G1::from(vk.alpha_g1) * r_sum, g_ic, agg_c],
            &[
                <P as Pairing>::G2::from(vk.beta_g2),
                <P as Pairing>::G2::from(vk.gamma_g2),
                <P as Pairing>::G2::from(vk.delta_g2),
            ],
        )
        .expect("test pairing should be available");
        let input = PreparedPpeVerifierCoreInput {
            alpha_beta: PairingOutput::<P>(pvk.alpha_g1_beta_g2),
            r_sum,
            g_ic,
            agg_c,
            gamma_g2_neg_pc: pvk.gamma_g2_neg_pc.clone(),
            delta_g2_neg_pc: pvk.delta_g2_neg_pc.clone(),
            ip_ab: baseline_gt.clone(),
        };
        let effect = RecordingPreparedPairingEffect::<P>::default();
        assert!(verify_ppe_core(input, &effect));

        assert_eq!(effect.left.borrow().as_ref().unwrap(), &vec![-g_ic, -agg_c]);
        assert_eq!(effect.right.borrow().as_ref().unwrap().len(), 2);
        let expected_prepared_gt = cfg_multi_pairing_g1_affine_g2_prepared::<P>(
            &P::G1::normalize_batch(&[-g_ic, -agg_c]),
            &[pvk.gamma_g2_neg_pc, pvk.delta_g2_neg_pc],
        )
        .expect("test prepared pairing should be available");
        assert_eq!(
            effect.output.borrow().as_ref().unwrap(),
            &expected_prepared_gt
        );
        let alpha_beta_rsum = PairingOutput::<P>(pvk.alpha_g1_beta_g2) * r_sum;
        let optimized_gt = alpha_beta_rsum + effect.output.borrow().as_ref().unwrap().clone();
        assert_eq!(optimized_gt, baseline_gt);
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn prepared_ppe_matches_three_pair_baseline_operands_and_gt() {
        assert_prepared_ppe_matches_three_pair_baseline::<Bls12_381>();
        assert_prepared_ppe_matches_three_pair_baseline::<Bls12_377>();
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn prepared_ppe_adapter_parity_bls12_381_including_pairing_failure() {
        assert_prepared_ppe_adapter_parity::<Bls12_381>();
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn prepared_ppe_adapter_parity_bls12_377_including_pairing_failure() {
        assert_prepared_ppe_adapter_parity::<Bls12_377>();
    }

    #[test]
    fn inverse_powers_match_structured_inverses() {
        let mut rng = StdRng::seed_from_u64(7);
        let r = <Bls12_381 as Pairing>::ScalarField::rand(&mut rng);
        let powers = inverse_powers::<Bls12_381>(8, &r);

        let mut expected = <Bls12_381 as Pairing>::ScalarField::one();
        for power in powers {
            assert_eq!(power, expected);
            expected *= r.inverse().unwrap();
        }
    }

    #[test]
    fn shifted_ck_2_matches_per_element_inversion() {
        let mut rng = StdRng::seed_from_u64(11);
        let r = <Bls12_381 as Pairing>::ScalarField::rand(&mut rng);
        let ck_2 = (0..16)
            .map(|_| <Bls12_381 as Pairing>::G1::rand(&mut rng))
            .collect::<Vec<_>>();

        let optimized = build_shifted_ck_2::<Bls12_381>(&ck_2, &r);
        let expected = ck_2
            .iter()
            .enumerate()
            .map(|(idx, ck)| *ck * r.pow([idx as u64]).inverse().unwrap())
            .collect::<Vec<_>>();

        assert_eq!(optimized, expected);
    }
}
