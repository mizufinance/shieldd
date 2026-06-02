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
    ops::{Add, MulAssign},
    time::Instant,
};

#[cfg(feature = "parallel")]
use rayon::prelude::*;

use crate::{
    challenge::{challenge_digest, ChallengeContext, ChallengeTraceSink, NoopChallengeTraceSink},
    tipa::{
        prove_commitment_key_kzg_opening_with_affine_profiled,
        structured_scalar_message::structured_scalar_power, verify_commitment_key_g1_kzg_opening,
        verify_commitment_key_g2_kzg_opening, PreparedProvingSrs, VerifierSRS, SRS, TIPA,
    },
    Error,
};
use ark_dh_commitments::{
    afgho16::{AFGHOCommitmentG1, AFGHOCommitmentG2},
    identity::{IdentityCommitment, IdentityOutput},
};
#[cfg(feature = "bench-baseline")]
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

fn fold_output<T, S>(left: &T, current: &mut T, right: &T, left_scalar: &S, right_scalar: &S)
where
    T: Clone + Default + Add<Output = T> + MulAssign<S>,
    S: Clone,
{
    let mut folded_left = left.clone();
    folded_left.mul_assign(left_scalar.clone());
    let mut folded_right = right.clone();
    folded_right.mul_assign(right_scalar.clone());
    let current_value = std::mem::take(current);
    *current = folded_left + current_value + folded_right;
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
        let ppe_result = verify_public_inputs_ppe_profiled::<P, D>(pvk, public_inputs, proof, r);
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

    #[cfg(feature = "parallel")]
    {
        ck_2.par_iter()
            .zip(inverse_powers.par_iter())
            .map(|(ck, power)| *ck * power)
            .collect()
    }

    #[cfg(not(feature = "parallel"))]
    {
        ck_2.iter()
            .zip(inverse_powers.iter())
            .map(|(ck, power)| *ck * power)
            .collect()
    }
}

fn inverse_powers<P: Pairing>(len: usize, r: &P::ScalarField) -> Vec<P::ScalarField> {
    let mut powers = Vec::with_capacity(len);
    assert!(!r.is_zero(), "inverse_powers requires nonzero r");
    let r_inv = r.inverse().expect("inverse_powers requires nonzero r");
    let mut current = P::ScalarField::one();
    for _ in 0..len {
        powers.push(current);
        current *= r_inv;
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
            break Ok(r);
        };
        counter_nonce += 1;
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
    let tipp_mipp = &proof.tipp_mipp_proof;
    let mut com_a = proof.com_a.clone();
    let mut com_b = proof.com_b.clone();
    let mut com_t = IdentityOutput(vec![proof.ip_ab.clone()]);
    let mut com_c = proof.com_c.clone();
    let mut com_z = IdentityOutput(vec![proof.agg_c.clone()]);

    let mut prior_raw_challenge = derive_x0::<P, D, S>(
        context,
        trace,
        r,
        (&proof.com_a, &proof.com_b, &proof.com_c),
        &proof.ip_ab,
        &proof.agg_c,
    )?;
    let mut last_raw_challenge = prior_raw_challenge;
    let mut raw_transcript_chrono = Vec::new();
    let mut inv_transcript_chrono = Vec::new();

    for (left, right) in tipp_mipp.gipa_proof.r_commitment_steps.iter().rev() {
        let raw_challenge =
            derive_round_challenge::<P, D, S>(context, trace, &prior_raw_challenge, left, right)?;
        let inv_challenge = raw_challenge.inverse().ok_or_else(|| {
            Box::new(std::io::Error::new(
                std::io::ErrorKind::InvalidData,
                "round challenge must be non-zero",
            )) as Error
        })?;

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

        raw_transcript_chrono.push(raw_challenge);
        inv_transcript_chrono.push(inv_challenge);
        prior_raw_challenge = raw_challenge;
        last_raw_challenge = raw_challenge;
    }

    raw_transcript_chrono.reverse();
    inv_transcript_chrono.reverse();

    let final_bridge = derive_final_bridge::<P, D, S>(
        context,
        trace,
        &last_raw_challenge,
        &tipp_mipp.final_ck,
        &tipp_mipp.final_messages,
    )?;
    let kzg_challenge =
        derive_kzg_challenge::<P, D, S>(context, trace, &final_bridge, &tipp_mipp.final_ck)?;

    let r_inverse = r.inverse().ok_or_else(|| {
        Box::new(std::io::Error::new(
            std::io::ErrorKind::InvalidInput,
            "randomizer must be non-zero before inversion",
        )) as Error
    })?;
    let (ck_v_final, ck_w_final) = &tipp_mipp.final_ck;
    let (ck_v_proof, ck_w_proof) = &tipp_mipp.final_ck_proofs;

    #[cfg(all(feature = "parallel", not(feature = "bench-baseline")))]
    let (ck_v_result, ck_w_result) = rayon::join(
        || {
            verify_commitment_key_g2_kzg_opening(
                ip_verifier_srs,
                ck_v_final,
                ck_v_proof,
                &raw_transcript_chrono,
                &P::ScalarField::one(),
                &kzg_challenge,
            )
            .map_err(|err| err.to_string())
        },
        || {
            verify_commitment_key_g1_kzg_opening(
                ip_verifier_srs,
                ck_w_final,
                ck_w_proof,
                &inv_transcript_chrono,
                &r_inverse,
                &kzg_challenge,
            )
            .map_err(|err| err.to_string())
        },
    );

    #[cfg(any(not(feature = "parallel"), feature = "bench-baseline"))]
    let (ck_v_result, ck_w_result) = (
        verify_commitment_key_g2_kzg_opening(
            ip_verifier_srs,
            ck_v_final,
            ck_v_proof,
            &raw_transcript_chrono,
            &P::ScalarField::one(),
            &kzg_challenge,
        )
        .map_err(|err| err.to_string()),
        verify_commitment_key_g1_kzg_opening(
            ip_verifier_srs,
            ck_w_final,
            ck_w_proof,
            &inv_transcript_chrono,
            &r_inverse,
            &kzg_challenge,
        )
        .map_err(|err| err.to_string()),
    );

    let ck_v_valid = ck_v_result.map_err(|err: String| std::io::Error::other(err))?;
    let ck_w_valid = ck_w_result.map_err(|err: String| std::io::Error::other(err))?;

    let (a_final, b_final, c_final) = &tipp_mipp.final_messages;
    let a_base = vec![*a_final];
    let b_base = vec![*b_final];
    let c_base = vec![*c_final];
    let ck_v_base = vec![*ck_v_final];
    let ck_w_base = vec![*ck_w_final];
    let ab_base = PairingInnerProduct::<P>::inner_product(&a_base, &b_base)?;
    let final_r = structured_scalar_final_from_raw_transcript::<P>(&raw_transcript_chrono, r);
    let z_base = MultiexponentiationInnerProduct::<P::G1>::inner_product(&c_base, &vec![final_r])?;

    let base_valid = PairingInnerProduct::<P>::inner_product(&a_base, &ck_v_base)? == com_a
        && PairingInnerProduct::<P>::inner_product(&ck_w_base, &b_base)? == com_b
        && IdentityOutput(vec![ab_base]) == com_t
        && PairingInnerProduct::<P>::inner_product(&c_base, &ck_v_base)? == com_c
        && IdentityOutput(vec![z_base]) == com_z;

    Ok(ck_v_valid && ck_w_valid && base_valid)
}

fn structured_scalar_final_from_raw_transcript<P: Pairing>(
    raw_transcript_reversed: &[P::ScalarField],
    r: &P::ScalarField,
) -> P::ScalarField {
    let mut power = *r;
    let mut product = P::ScalarField::one();
    for challenge in raw_transcript_reversed {
        product *= P::ScalarField::one() + (*challenge * power);
        power *= power;
    }
    product
}

fn fold_public_inputs<P: Pairing>(
    vk: &VerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    r: &P::ScalarField,
) -> (P::ScalarField, P::G1) {
    let r_sum = if *r == <P::ScalarField>::one() {
        P::ScalarField::from(public_inputs.len() as u64)
    } else {
        (r.pow(&[public_inputs.len() as u64]) - &<P::ScalarField>::one())
            / &(r.clone() - &<P::ScalarField>::one())
    };
    assert_eq!(vk.gamma_abc_g1.len(), public_inputs[0].len() + 1);
    let r_vec = structured_scalar_power(public_inputs.len(), r);
    let mut folded_public_inputs = vec![P::ScalarField::zero(); public_inputs[0].len()];
    for (inputs, challenge_power) in public_inputs.iter().zip(&r_vec) {
        for (acc, input) in folded_public_inputs.iter_mut().zip(inputs) {
            *acc += *input * challenge_power;
        }
    }

    let mut g_ic = P::G1::from(vk.gamma_abc_g1[0]) * r_sum;
    for (base, folded_input) in vk
        .gamma_abc_g1
        .iter()
        .skip(1)
        .zip(folded_public_inputs.iter())
    {
        g_ic += P::G1::from(*base) * folded_input;
    }

    (r_sum, g_ic)
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
    let alpha_beta_rsum = PairingOutput::<P>(pvk.alpha_g1_beta_g2) * *r_sum;
    let g1_affine = P::G1::normalize_batch(&[-g_ic, -proof.agg_c]);
    cfg_multi_pairing_g1_affine_g2_prepared::<P>(
        &g1_affine,
        &[pvk.gamma_g2_neg_pc.clone(), pvk.delta_g2_neg_pc.clone()],
    )
    .map(|folded| alpha_beta_rsum + folded == proof.ip_ab)
    .unwrap_or(false)
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
    use super::{build_shifted_ck_2, inverse_powers};
    use ark_bls12_381::Bls12_381;
    use ark_ec::pairing::Pairing;
    use ark_ff::{Field, UniformRand};
    use ark_std::rand::{rngs::StdRng, SeedableRng};
    use ark_std::One;

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
