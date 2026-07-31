use ark_ec::pairing::{Pairing, PairingOutput};
#[cfg(not(feature = "bench-baseline"))]
use ark_ec::CurveGroup;
use ark_ff::{Field, One, Zero};
#[cfg(any(test, feature = "bench-baseline"))]
use ark_groth16::VerifyingKey;
use ark_groth16::{PreparedVerifyingKey, Proof};
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};

use ark_std::rand::Rng;
use digest::Digest;
use std::{
    fmt,
    marker::PhantomData,
    ops::{Add, Mul, MulAssign, Neg, Sub},
    sync::Arc,
    time::Instant,
};

#[cfg(feature = "parallel")]
use rayon::prelude::*;

#[cfg(not(feature = "bench-baseline"))]
use crate::challenge::checked_next_challenge_nonce;
use crate::{
    app_verifier::{
        app_verify_shipping_backend_call_result, app_verify_shipping_backend_result_from_parts,
        app_verify_shipping_backend_result_into_parts,
        app_verify_shipping_executed_result_into_parts, AppVerifyCallId, AppVerifyCallResult,
        AppVerifyShippingBackendResult, AppVerifyShippingExecutedResult, AppVerifyShippingResult,
    },
    challenge::{
        challenge_digest, sample_bounded_challenge, sample_bounded_challenge_from_nonce,
        ChallengeContext, ChallengeNonceExhausted, ChallengeTraceEntry, ChallengeTraceSink,
        NoopChallengeTraceSink,
    },
    gipa::{
        fold_output, verify_base_commitment_core, BaseCommitmentCoreInput, BaseCommitmentEffect,
        BaseCommitmentResult,
    },
    tipa::{
        prove_commitment_key_kzg_opening_with_affine_profiled,
        structured_scalar_message::structured_scalar_power,
        verify_commitment_key_g1_kzg_opening_core, verify_commitment_key_g2_kzg_opening_core,
        ArkworksPairingEffect, PairingEffect, PreparedProvingSrs, VerifierSRS, VerifierSRSData,
        SRS, TIPA,
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

#[derive(Clone, Debug, Default, Eq, PartialEq)]
struct BufferedChallengeTraceSink {
    records: Vec<ChallengeTraceEntry>,
}

impl BufferedChallengeTraceSink {
    fn replay_into<S: ChallengeTraceSink>(&self, trace: &mut S) {
        for record in &self.records {
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
        self.records.push(ChallengeTraceEntry {
            stage_label,
            nonce,
            preimage: preimage.to_vec(),
            digest: digest.to_vec(),
        });
    }
}

#[cfg(not(feature = "bench-baseline"))]
struct RetainedChallengeTraceSink<'a, S> {
    downstream: &'a mut S,
    retained: &'a mut BufferedChallengeTraceSink,
}

#[cfg(not(feature = "bench-baseline"))]
impl<S: ChallengeTraceSink> ChallengeTraceSink for RetainedChallengeTraceSink<'_, S> {
    fn record(&mut self, stage_label: &'static [u8], nonce: u64, preimage: &[u8], digest: &[u8]) {
        self.downstream.record(stage_label, nonce, preimage, digest);
        self.retained.record(stage_label, nonce, preimage, digest);
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

struct InitialCommitmentOperands<'a, G1, G2> {
    com_a_left: &'a [G1],
    com_a_right: &'a [G2],
    com_b_left: &'a [G1],
    com_b_right: &'a [G2],
    com_c_left: &'a [G1],
    com_c_right: &'a [G2],
}

/// Exact operand projection for the three initial aggregate commitments.
fn initial_commitment_operands_core<'a, G1, G2>(
    a: &'a [G1],
    b: &'a [G2],
    c: &'a [G1],
    ck_1: &'a [G2],
    ck_2: &'a [G1],
) -> InitialCommitmentOperands<'a, G1, G2> {
    InitialCommitmentOperands {
        com_a_left: a,
        com_a_right: ck_1,
        com_b_left: ck_2,
        com_b_right: b,
        com_c_left: c,
        com_c_right: ck_1,
    }
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
    let operands = initial_commitment_operands_core(a, b, c, ck_1, ck_2);

    #[cfg(all(feature = "parallel", not(feature = "bench-baseline")))]
    let ((com_a_result, com_b_result), com_c_result) = rayon::join(
        || {
            rayon::join(
                || timed_pairing_inner_product::<P>(operands.com_a_left, operands.com_a_right),
                || timed_pairing_inner_product::<P>(operands.com_b_left, operands.com_b_right),
            )
        },
        || timed_pairing_inner_product::<P>(operands.com_c_left, operands.com_c_right),
    );

    #[cfg(any(not(feature = "parallel"), feature = "bench-baseline"))]
    let (com_a_result, com_b_result, com_c_result) = (
        timed_pairing_inner_product::<P>(operands.com_a_left, operands.com_a_right),
        timed_pairing_inner_product::<P>(operands.com_b_left, operands.com_b_right),
        timed_pairing_inner_product::<P>(operands.com_c_left, operands.com_c_right),
    );

    initial_commitments_from_results_core(com_a_result, com_b_result, com_c_result)
        .map_err(|error: String| Box::new(std::io::Error::other(error)) as Error)
}

/// Resolves the three initial commitment effects in wire order.
///
/// Parallel execution may finish in any order, but production has always
/// reported the first error in `com_a`, `com_b`, `com_c` order. Keeping that
/// projection in a pure core makes both the successful tuple and failure
/// ordering explicit without changing the parallel pairing schedule.
fn initial_commitments_from_results_core<GT, E>(
    com_a_result: Result<(GT, f64), E>,
    com_b_result: Result<(GT, f64), E>,
    com_c_result: Result<(GT, f64), E>,
) -> Result<((GT, GT, GT), (f64, f64, f64)), E> {
    let (com_a, com_a_ms) = com_a_result?;
    let (com_b, com_b_ms) = com_b_result?;
    let (com_c, com_c_ms) = com_c_result?;
    Ok((
        initial_commitment_values_core(com_a, com_b, com_c),
        (com_a_ms, com_b_ms, com_c_ms),
    ))
}

fn initial_commitment_values_core<GT>(com_a: GT, com_b: GT, com_c: GT) -> (GT, GT, GT) {
    (com_a, com_b, com_c)
}

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub struct TippMippCommitmentData<
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
> {
    ab: (GT, GT, ABT),
    c: (GT, CT),
}

type TippMippCommitment<P> = TippMippCommitmentData<
    PairingOutput<P>,
    IdentityOutput<PairingOutput<P>>,
    IdentityOutput<<P as Pairing>::G1>,
>;

fn tipp_mipp_commitment_from_parts<GT, ABT, CT>(
    com_a: GT,
    com_b: GT,
    ip_ab: ABT,
    com_c: GT,
    ip_c: CT,
) -> TippMippCommitmentData<GT, ABT, CT>
where
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
{
    TippMippCommitmentData {
        ab: (com_a, com_b, ip_ab),
        c: (com_c, ip_c),
    }
}

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub struct TippMippGipaProofData<
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
> {
    r_commitment_steps: Vec<(
        TippMippCommitmentData<GT, ABT, CT>,
        TippMippCommitmentData<GT, ABT, CT>,
    )>,
    _digest: PhantomData<D>,
}

#[cfg(test)]
type TippMippGipaProof<P, D> = TippMippGipaProofData<
    PairingOutput<P>,
    IdentityOutput<PairingOutput<P>>,
    IdentityOutput<<P as Pairing>::G1>,
    D,
>;

fn tipp_mipp_gipa_proof_from_wire_rounds<GT, ABT, CT, D>(
    wire_rounds: Vec<(
        TippMippCommitmentData<GT, ABT, CT>,
        TippMippCommitmentData<GT, ABT, CT>,
    )>,
) -> TippMippGipaProofData<GT, ABT, CT, D>
where
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    TippMippGipaProofData {
        r_commitment_steps: wire_rounds,
        _digest: PhantomData,
    }
}

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub struct TippMippProofData<
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
> {
    gipa_proof: TippMippGipaProofData<GT, ABT, CT, D>,
    final_ck: (G2, G1),
    final_ck_proofs: (G2, G1),
    final_messages: (G1, G2, G1),
    _digest: PhantomData<D>,
}

#[cfg(test)]
type TippMippProof<P, D> = TippMippProofData<
    <P as Pairing>::G1,
    <P as Pairing>::G2,
    PairingOutput<P>,
    IdentityOutput<PairingOutput<P>>,
    IdentityOutput<<P as Pairing>::G1>,
    D,
>;

fn tipp_mipp_proof_from_parts<G1, G2, GT, ABT, CT, D>(
    gipa_proof: TippMippGipaProofData<GT, ABT, CT, D>,
    final_ck: (G2, G1),
    final_ck_proofs: (G2, G1),
    final_messages: (G1, G2, G1),
) -> TippMippProofData<G1, G2, GT, ABT, CT, D>
where
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    TippMippProofData {
        gipa_proof,
        final_ck,
        final_ck_proofs,
        final_messages,
        _digest: PhantomData,
    }
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

struct TippMippCoreInputParts<F, G1, G2, GT, ABT, CT> {
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

fn tipp_mipp_core_input_from_parts<F, G1, G2, GT, ABT, CT>(
    parts: TippMippCoreInputParts<F, G1, G2, GT, ABT, CT>,
) -> TippMippCoreInput<F, G1, G2, GT, ABT, CT> {
    let TippMippCoreInputParts {
        com_a,
        com_b,
        com_t,
        com_c,
        com_z,
        ip_ab,
        agg_c,
        proof,
        verifier_g,
        verifier_g_beta,
        verifier_h,
        verifier_h_alpha,
        r,
        kzg_g2_r_shift,
    } = parts;
    TippMippCoreInput {
        com_a,
        com_b,
        com_t,
        com_c,
        com_z,
        ip_ab,
        agg_c,
        proof,
        verifier_g,
        verifier_g_beta,
        verifier_h,
        verifier_h_alpha,
        r,
        kzg_g2_r_shift,
    }
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

/// Consume the exact accepted challenge trace accumulated by a shipping
/// TIPP/MIPP effect.  Only the concrete production effect implements this
/// boundary.
#[cfg(not(feature = "bench-baseline"))]
trait ShippingAcceptedTraceEffect<F> {
    fn into_accepted_trace(self) -> ShippingAcceptedTippMippChallengeTrace<F>;
}

#[cfg(not(feature = "bench-baseline"))]
trait AggregateRandomizerEffect<F, E> {
    fn derive_randomizer(&mut self, nonce: u64, randomizer_message: &[u8]) -> Result<Option<F>, E>;
}

/// Runtime-only observation of randomizer sampling duration.
///
/// The semantic adapter is generic over this effect, keeping `Instant`, `f64`,
/// and profile accumulation outside the extracted execution record.
#[cfg(not(feature = "bench-baseline"))]
trait AggregateRandomizerTiming {
    fn begin(&mut self);
    fn end(&mut self);
}

#[cfg(not(feature = "bench-baseline"))]
struct AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT> {
    randomizer_message: Vec<u8>,
    combined: CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
}

#[cfg(not(feature = "bench-baseline"))]
fn aggregate_adapter_core_input_from_parts<F, G1, G2, G2Prepared, GT, ABT, CT>(
    randomizer_message: Vec<u8>,
    combined: CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
) -> AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT> {
    AggregateAdapterCoreInput {
        randomizer_message,
        combined,
    }
}

#[cfg(not(feature = "bench-baseline"))]
#[derive(Debug)]
enum AggregateAdapterCoreError<E> {
    RandomizerFailure(E),
    CombinedFailure(CombinedChecksError<E>),
    NonceExhausted,
}

#[cfg(not(feature = "bench-baseline"))]
impl<E> From<ChallengeNonceExhausted> for AggregateAdapterCoreError<E> {
    fn from(_: ChallengeNonceExhausted) -> Self {
        Self::NonceExhausted
    }
}

#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)]
struct AggregateAdapterCoreOutput<F, RFX, FX> {
    randomizer: F,
    checks: (bool, bool),
    accepted: bool,
    randomizer_effect: RFX,
    tipp_mipp_effect: FX,
}

#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)]
struct AggregateAdapterExecutionOutput<I, F, RFX, FX, TX> {
    input: I,
    initial_nonce: u64,
    accepted_nonce: u64,
    core: AggregateAdapterCoreOutput<F, RFX, FX>,
    tipp_mipp: TX,
}

/// Exact successful randomizer query retained by the shipping adapter.
#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)]
struct ShippingAcceptedRandomizerCall<F> {
    initial_nonce: u64,
    accepted_nonce: u64,
    message: Vec<u8>,
    value: F,
}

/// One successful deployed TIPP/MIPP challenge query.
#[allow(dead_code)]
struct ShippingAcceptedChallengeCall<F> {
    accepted_nonce: u64,
    message: Vec<u8>,
    value: F,
}

/// Successful verifier challenge calls in deployed query order.
#[allow(dead_code)]
struct ShippingAcceptedTippMippChallengeTrace<F> {
    x0: Option<ShippingAcceptedChallengeCall<F>>,
    rounds_chrono: Vec<ShippingAcceptedChallengeCall<F>>,
    final_bridge: Option<ShippingAcceptedChallengeCall<F>>,
    kzg: Option<ShippingAcceptedChallengeCall<F>>,
}

fn empty_accepted_tipp_mipp_trace<F>() -> ShippingAcceptedTippMippChallengeTrace<F> {
    ShippingAcceptedTippMippChallengeTrace {
        x0: None,
        rounds_chrono: Vec::new(),
        final_bridge: None,
        kzg: None,
    }
}

/// Owned, acceptance-relevant result of the concrete shipping adapter.
///
/// The call records retain accepted values, nonces, messages, and chronology;
/// buffered digest traces remain in the caller envelope.
#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)]
struct ShippingAdapterSemanticExecution<I, F, TX> {
    adapter_input: I,
    initial_nonce: u64,
    accepted_nonce: u64,
    randomizer: F,
    accepted_randomizer_call: ShippingAcceptedRandomizerCall<F>,
    accepted_tipp_mipp_challenge_trace: ShippingAcceptedTippMippChallengeTrace<F>,
    checks: (bool, bool),
    tipp_mipp: TX,
    accepted: bool,
}

#[cfg(not(feature = "bench-baseline"))]
fn shipping_adapter_semantic_execution_from_parts<I, F, TX>(
    adapter_input: I,
    initial_nonce: u64,
    accepted_nonce: u64,
    randomizer: F,
    accepted_randomizer_call: ShippingAcceptedRandomizerCall<F>,
    accepted_tipp_mipp_challenge_trace: ShippingAcceptedTippMippChallengeTrace<F>,
    checks: (bool, bool),
    tipp_mipp: TX,
    accepted: bool,
) -> ShippingAdapterSemanticExecution<I, F, TX> {
    ShippingAdapterSemanticExecution {
        adapter_input,
        initial_nonce,
        accepted_nonce,
        randomizer,
        accepted_randomizer_call,
        accepted_tipp_mipp_challenge_trace,
        checks,
        tipp_mipp,
        accepted,
    }
}

/// Generic effect bundle consumed by the adapter core.
///
/// `run_arkworks_adapter_semantic` installs the four concrete Arkworks effects;
/// the shipping verifier semantic core retains its surrounding caller state.
#[cfg(not(feature = "bench-baseline"))]
struct AggregateAdapterEffects<RFX, FX, PE, PPE> {
    randomizer: RFX,
    tipp_mipp: FX,
    tipp_pairing: PE,
    prepared_ppe_pairing: PPE,
}

#[cfg(not(feature = "bench-baseline"))]
fn aggregate_adapter_effects_from_parts<RFX, FX, PE, PPE>(
    randomizer: RFX,
    tipp_mipp: FX,
    tipp_pairing: PE,
    prepared_ppe_pairing: PPE,
) -> AggregateAdapterEffects<RFX, FX, PE, PPE> {
    AggregateAdapterEffects {
        randomizer,
        tipp_mipp,
        tipp_pairing,
        prepared_ppe_pairing,
    }
}

#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)] // Formal extraction root; production uses the retained execution form.
fn verify_aggregate_adapter_core<F, G1, G2, G2Prepared, GT, ABT, CT, E, RFX, FX, PE, PPE>(
    input: AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    randomizer_effect: RFX,
    tipp_mipp_effect: FX,
    tipp_pairing: PE,
    ppe_pairing: PPE,
) -> Result<AggregateAdapterCoreOutput<F, RFX, FX>, AggregateAdapterCoreError<E>>
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
    RFX: AggregateRandomizerEffect<F, E>,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E> + Send,
    PE: PairingEffect<G1, G2, GT> + Sync + Send,
    PPE: PreparedPairingEffect<G1, G2Prepared, GT> + Send,
{
    verify_aggregate_adapter_execution_core(
        input,
        randomizer_effect,
        tipp_mipp_effect,
        tipp_pairing,
        ppe_pairing,
    )
    .map(|output| output.core)
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_aggregate_adapter_execution_core<
    F,
    G1,
    G2,
    G2Prepared,
    GT,
    ABT,
    CT,
    E,
    RFX,
    FX,
    PE,
    PPE,
>(
    input: AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    randomizer_effect: RFX,
    tipp_mipp_effect: FX,
    tipp_pairing: PE,
    ppe_pairing: PPE,
) -> Result<
    AggregateAdapterExecutionOutput<
        AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
        F,
        RFX,
        FX,
        TippMippCoreOutput<F, GT, ABT, CT>,
    >,
    AggregateAdapterCoreError<E>,
>
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
    RFX: AggregateRandomizerEffect<F, E>,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E> + Send,
    PE: PairingEffect<G1, G2, GT> + Sync + Send,
    PPE: PreparedPairingEffect<G1, G2Prepared, GT> + Send,
{
    verify_aggregate_adapter_execution_core_from_nonce(
        input,
        randomizer_effect,
        tipp_mipp_effect,
        tipp_pairing,
        ppe_pairing,
        0,
    )
}

/// Delegate through the exact effect bundle installed by the production
/// verifier. The output still retains the consumed input and all accepted-path
/// state required by the Lean adapter contract.
#[cfg(not(feature = "bench-baseline"))]
fn verify_installed_aggregate_adapter_core<
    F,
    G1,
    G2,
    G2Prepared,
    GT,
    ABT,
    CT,
    E,
    RFX,
    FX,
    PE,
    PPE,
>(
    input: AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    effects: AggregateAdapterEffects<RFX, FX, PE, PPE>,
) -> Result<
    AggregateAdapterExecutionOutput<
        AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
        F,
        RFX,
        FX,
        TippMippCoreOutput<F, GT, ABT, CT>,
    >,
    AggregateAdapterCoreError<E>,
>
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
    RFX: AggregateRandomizerEffect<F, E>,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E> + Send,
    PE: PairingEffect<G1, G2, GT> + Sync + Send,
    PPE: PreparedPairingEffect<G1, G2Prepared, GT> + Send,
{
    let AggregateAdapterEffects {
        randomizer,
        tipp_mipp,
        tipp_pairing,
        prepared_ppe_pairing,
    } = effects;
    verify_aggregate_adapter_execution_core(
        input,
        randomizer,
        tipp_mipp,
        tipp_pairing,
        prepared_ppe_pairing,
    )
}

/// Execute the installed adapter once and construct the shipping semantic
/// record only from that exact retained output.
#[cfg(not(feature = "bench-baseline"))]
fn verify_shipping_adapter_semantic_execution_core<
    F,
    G1,
    G2,
    G2Prepared,
    GT,
    ABT,
    CT,
    E,
    RFX,
    FX,
    PE,
    PPE,
>(
    input: AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    effects: AggregateAdapterEffects<RFX, FX, PE, PPE>,
) -> Result<
    ShippingAdapterSemanticExecution<
        AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
        F,
        TippMippCoreOutput<F, GT, ABT, CT>,
    >,
    AggregateAdapterCoreError<E>,
>
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
    RFX: AggregateRandomizerEffect<F, E>,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E> + ShippingAcceptedTraceEffect<F> + Send,
    PE: PairingEffect<G1, G2, GT> + Sync + Send,
    PPE: PreparedPairingEffect<G1, G2Prepared, GT> + Send,
{
    let output = verify_installed_aggregate_adapter_core(input, effects)?;
    let AggregateAdapterExecutionOutput {
        input,
        initial_nonce,
        accepted_nonce,
        core:
            AggregateAdapterCoreOutput {
                randomizer,
                checks,
                accepted,
                randomizer_effect: _,
                tipp_mipp_effect,
            },
        tipp_mipp,
    } = output;
    let accepted_randomizer_call = ShippingAcceptedRandomizerCall {
        initial_nonce,
        accepted_nonce,
        message: input.randomizer_message.clone(),
        value: randomizer.clone(),
    };
    Ok(shipping_adapter_semantic_execution_from_parts(
        input,
        initial_nonce,
        accepted_nonce,
        randomizer,
        accepted_randomizer_call,
        tipp_mipp_effect.into_accepted_trace(),
        checks,
        tipp_mipp,
        accepted,
    ))
}

#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)] // Formal accepted-path theorem projects this bounded retry core.
fn verify_aggregate_adapter_core_from_nonce<
    F,
    G1,
    G2,
    G2Prepared,
    GT,
    ABT,
    CT,
    E,
    RFX,
    FX,
    PE,
    PPE,
>(
    input: AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    randomizer_effect: RFX,
    tipp_mipp_effect: FX,
    tipp_pairing: PE,
    ppe_pairing: PPE,
    nonce: u64,
) -> Result<AggregateAdapterCoreOutput<F, RFX, FX>, AggregateAdapterCoreError<E>>
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
    RFX: AggregateRandomizerEffect<F, E>,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E> + Send,
    PE: PairingEffect<G1, G2, GT> + Sync + Send,
    PPE: PreparedPairingEffect<G1, G2Prepared, GT> + Send,
{
    verify_aggregate_adapter_execution_core_from_nonce(
        input,
        randomizer_effect,
        tipp_mipp_effect,
        tipp_pairing,
        ppe_pairing,
        nonce,
    )
    .map(|output| output.core)
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_aggregate_adapter_execution_core_from_nonce<
    F,
    G1,
    G2,
    G2Prepared,
    GT,
    ABT,
    CT,
    E,
    RFX,
    FX,
    PE,
    PPE,
>(
    input: AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    mut randomizer_effect: RFX,
    tipp_mipp_effect: FX,
    tipp_pairing: PE,
    ppe_pairing: PPE,
    nonce: u64,
) -> Result<
    AggregateAdapterExecutionOutput<
        AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
        F,
        RFX,
        FX,
        TippMippCoreOutput<F, GT, ABT, CT>,
    >,
    AggregateAdapterCoreError<E>,
>
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
    RFX: AggregateRandomizerEffect<F, E>,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E> + Send,
    PE: PairingEffect<G1, G2, GT> + Sync + Send,
    PPE: PreparedPairingEffect<G1, G2Prepared, GT> + Send,
{
    let initial_nonce = nonce;
    let AggregateAdapterCoreInput {
        randomizer_message,
        combined,
    } = input;
    let mut combined = combined;
    let mut nonce = nonce;
    loop {
        let candidate = match randomizer_effect.derive_randomizer(nonce, &randomizer_message) {
            Ok(candidate) => candidate,
            Err(error) => return Err(AggregateAdapterCoreError::RandomizerFailure(error)),
        };
        if let Some(randomizer) = candidate {
            if randomizer_is_admissible(&randomizer) {
                combined = install_aggregate_randomizer_core(combined, randomizer.clone());
                let output = match verify_combined_checks_execution_core(
                    combined,
                    tipp_mipp_effect,
                    tipp_pairing,
                    ppe_pairing,
                ) {
                    Ok(output) => output,
                    Err(error) => {
                        return Err(AggregateAdapterCoreError::CombinedFailure(error));
                    }
                };
                let CombinedChecksExecutionOutput {
                    input: combined,
                    core:
                        CombinedChecksCoreOutput {
                            checks,
                            tipp_mipp_effect,
                        },
                    tipp_mipp,
                } = output;
                let input = aggregate_adapter_core_input_from_parts(randomizer_message, combined);
                return Ok(AggregateAdapterExecutionOutput {
                    input,
                    initial_nonce,
                    accepted_nonce: nonce,
                    core: AggregateAdapterCoreOutput {
                        randomizer,
                        checks,
                        accepted: checks.0 && checks.1,
                        randomizer_effect,
                        tipp_mipp_effect,
                    },
                    tipp_mipp,
                });
            }
        }
        nonce = match checked_next_challenge_nonce(nonce) {
            Some(next) => next,
            None => return Err(AggregateAdapterCoreError::NonceExhausted),
        };
    }
}

/// Install one accepted randomizer into both concrete verifier projections.
///
/// Keeping this mutation in a pure constructor makes it impossible for the
/// combined PPE and TIPP/MIPP checks to observe different randomizers.
#[cfg(not(feature = "bench-baseline"))]
fn install_aggregate_randomizer_core<F, G1, G2, G2Prepared, GT, ABT, CT>(
    mut combined: CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    randomizer: F,
) -> CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>
where
    F: Clone,
{
    combined.r = randomizer.clone();
    combined.tipp_mipp.r = randomizer;
    combined
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
struct CombinedChecksCoreInputParts<F, G1, G2, G2Prepared, GT, ABT, CT> {
    tipp_mipp: TippMippCoreInput<F, G1, G2, GT, ABT, CT>,
    gamma_abc_g1: Vec<G1>,
    public_inputs: Vec<Vec<F>>,
    r: F,
    alpha_beta: GT,
    agg_c: G1,
    gamma_g2_neg_pc: G2Prepared,
    delta_g2_neg_pc: G2Prepared,
    ip_ab: GT,
}

#[cfg(not(feature = "bench-baseline"))]
fn combined_checks_core_input_from_parts<F, G1, G2, G2Prepared, GT, ABT, CT>(
    parts: CombinedChecksCoreInputParts<F, G1, G2, G2Prepared, GT, ABT, CT>,
) -> CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT> {
    let CombinedChecksCoreInputParts {
        tipp_mipp,
        gamma_abc_g1,
        public_inputs,
        r,
        alpha_beta,
        agg_c,
        gamma_g2_neg_pc,
        delta_g2_neg_pc,
        ip_ab,
    } = parts;
    CombinedChecksCoreInput {
        tipp_mipp,
        gamma_abc_g1,
        public_inputs,
        r,
        ppe: CombinedChecksPpeInput {
            alpha_beta,
            agg_c,
            gamma_g2_neg_pc,
            delta_g2_neg_pc,
            ip_ab,
        },
    }
}

#[cfg(not(feature = "bench-baseline"))]
#[derive(Debug)]
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
struct CombinedChecksExecutionOutput<I, FX, TX> {
    input: I,
    core: CombinedChecksCoreOutput<FX>,
    tipp_mipp: TX,
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_combined_ppe_core<F, G1, G2Prepared, GT, E>(
    ppe: &CombinedChecksPpeInput<G1, G2Prepared, GT>,
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
            alpha_beta: ppe.alpha_beta.clone(),
            r_sum,
            g_ic,
            agg_c: ppe.agg_c.clone(),
            gamma_g2_neg_pc: ppe.gamma_g2_neg_pc.clone(),
            delta_g2_neg_pc: ppe.delta_g2_neg_pc.clone(),
            ip_ab: ppe.ip_ab.clone(),
        },
        pairing,
    )
}

#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)] // Formal extraction root; production uses the retained execution form.
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
    verify_combined_checks_execution_core(input, effect, tipp_pairing, ppe_pairing)
        .map(|output| output.core)
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_combined_checks_execution_core<F, G1, G2, G2Prepared, GT, ABT, CT, E, FX, PE, PPE>(
    input: CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
    effect: FX,
    tipp_pairing: PE,
    ppe_pairing: PPE,
) -> Result<
    CombinedChecksExecutionOutput<
        CombinedChecksCoreInput<F, G1, G2, G2Prepared, GT, ABT, CT>,
        FX,
        TippMippCoreOutput<F, GT, ABT, CT>,
    >,
    CombinedChecksError<E>,
>
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
            let result = verify_tipp_mipp_execution_core(&tipp_mipp, &mut effect, &tipp_pairing)
                .map_err(|error| CombinedChecksError {
                    kind: 2,
                    actual_rounds: 0,
                    expected_rounds: 0,
                    tipp_mipp_error: Some(error),
                });
            (result, effect, tipp_mipp)
        },
        move || {
            let ppe_valid =
                verify_combined_ppe_core(&ppe, &gamma_abc_g1, &public_inputs, &r, &ppe_pairing);
            (ppe_valid, ppe, gamma_abc_g1, public_inputs, r)
        },
    );

    #[cfg(any(not(feature = "parallel"), feature = "bench-baseline", hax_compilation))]
    let (tipp_result, ppe_valid) = {
        let mut effect = effect;
        let tipp_result = verify_tipp_mipp_execution_core(&tipp_mipp, &mut effect, &tipp_pairing)
            .map_err(|error| CombinedChecksError {
                kind: 2,
                actual_rounds: 0,
                expected_rounds: 0,
                tipp_mipp_error: Some(error),
            });
        let ppe_valid =
            verify_combined_ppe_core(&ppe, &gamma_abc_g1, &public_inputs, &r, &ppe_pairing);
        (
            (tipp_result, effect, tipp_mipp),
            (ppe_valid, ppe, gamma_abc_g1, public_inputs, r),
        )
    };

    let (tipp_result, effect, tipp_mipp_input) = tipp_result;
    let (ppe_valid, ppe, gamma_abc_g1, public_inputs, r) = ppe_valid;
    let tipp_mipp = tipp_result?;
    let tipp_valid = tipp_mipp.accepted;
    Ok(CombinedChecksExecutionOutput {
        input: CombinedChecksCoreInput {
            tipp_mipp: tipp_mipp_input,
            gamma_abc_g1,
            public_inputs,
            r,
            ppe,
        },
        core: CombinedChecksCoreOutput {
            checks: (tipp_valid, ppe_valid),
            tipp_mipp_effect: effect,
        },
        tipp_mipp,
    })
}

/// Challenge values produced by the verifier before the leaf checks.
///
/// Both challenge orders are retained explicitly: chronology is the deployed
/// oracle-query order, while wire order is consumed by the two KZG checks.
struct TippMippChallengeTrace<F> {
    x0: F,
    round_challenges_chrono: Vec<F>,
    round_challenges_wire: Vec<F>,
    final_bridge: F,
    kzg: F,
}

/// Production state after every challenge has been derived successfully.
///
/// Keeping this boundary inside the shipping verifier makes the extracted
/// challenge execution observable without exposing a new public API.
struct TippMippChallengePrefix<F, GT, ABT, CT> {
    challenges: TippMippChallengeTrace<F>,
    inverse_challenges_reversed: Vec<F>,
    randomizer_inverse: F,
    com_a: GT,
    com_b: GT,
    com_t: ABT,
    com_c: GT,
    com_z: CT,
}

/// Leaf checks reached after a successful verifier challenge prefix.
///
/// `None` means the check was not reached because an earlier check returned
/// false. This preserves the shipping failure order in the retained record.
#[allow(dead_code)] // Fields are consumed by the generated formal projection.
struct TippMippLeafChecks {
    ck_v: bool,
    ck_w: bool,
    base: bool,
    c: Option<bool>,
    z: Option<bool>,
}

/// Retained result of the production TIPP/MIPP verifier core.
#[allow(dead_code)] // Retained trace fields are consumed by formal extraction.
struct TippMippCoreOutput<F, GT, ABT, CT> {
    challenge_prefix: TippMippChallengePrefix<F, GT, ABT, CT>,
    leaf_checks: TippMippLeafChecks,
    accepted: bool,
}

/// Execute the production challenge/fold prefix in its exact failure order.
fn verify_tipp_mipp_challenge_prefix_core<F, G1, G2, GT, ABT, CT, E, FX>(
    input: &TippMippCoreInput<F, G1, G2, GT, ABT, CT>,
    effect: &mut FX,
) -> Result<TippMippChallengePrefix<F, GT, ABT, CT>, E>
where
    F: Clone + One + Add<Output = F> + Mul<Output = F> + Sync,
    G1: Clone + Mul<F, Output = G1> + Sub<Output = G1> + Neg<Output = G1> + Sync,
    G2: Clone + Mul<F, Output = G2> + Sub<Output = G2> + Sync,
    GT: Clone + Default + Add<Output = GT> + MulAssign<F> + Zero + Sync,
    ABT: Clone + Default + Add<Output = ABT> + MulAssign<F> + Sync,
    CT: Clone + Default + Add<Output = CT> + MulAssign<F> + Sync,
    FX: TippMippEffect<F, G1, G2, GT, ABT, CT, E>,
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
    let trace_x0 = x0.clone();
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

    let round_challenges_chrono = raw_transcript_chrono.clone();
    raw_transcript_chrono.reverse();
    inv_transcript_chrono.reverse();

    let final_bridge = effect.derive_final_bridge(
        &last_raw_challenge,
        &input.proof.final_ck,
        &input.proof.final_messages,
    )?;
    let kzg_challenge = effect.derive_kzg(&final_bridge, &input.proof.final_ck)?;
    let r_inverse = effect.invert_randomizer(&input.r)?;

    Ok(TippMippChallengePrefix {
        challenges: TippMippChallengeTrace {
            x0: trace_x0,
            round_challenges_chrono,
            round_challenges_wire: raw_transcript_chrono,
            final_bridge,
            kzg: kzg_challenge,
        },
        inverse_challenges_reversed: inv_transcript_chrono,
        randomizer_inverse: r_inverse,
        com_a,
        com_b,
        com_t,
        com_c,
        com_z,
    })
}

fn verify_tipp_mipp_execution_core<F, G1, G2, GT, ABT, CT, E, FX, PE>(
    input: &TippMippCoreInput<F, G1, G2, GT, ABT, CT>,
    effect: &mut FX,
    pairing: &PE,
) -> Result<TippMippCoreOutput<F, GT, ABT, CT>, E>
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
    let TippMippChallengePrefix {
        challenges,
        inverse_challenges_reversed,
        randomizer_inverse,
        com_a,
        com_b,
        com_t,
        com_c,
        com_z,
    } = verify_tipp_mipp_challenge_prefix_core(input, effect)?;
    let TippMippChallengeTrace {
        x0: _x0_challenge,
        round_challenges_chrono: _round_challenges_chrono,
        round_challenges_wire,
        final_bridge: _final_bridge_challenge,
        kzg: kzg_challenge,
    } = &challenges;

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
                round_challenges_wire,
                &input.kzg_g2_r_shift,
                kzg_challenge,
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
                &inverse_challenges_reversed,
                &randomizer_inverse,
                kzg_challenge,
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
            round_challenges_wire,
            &input.kzg_g2_r_shift,
            kzg_challenge,
            pairing,
        ),
        verify_commitment_key_g1_kzg_opening_core(
            input.verifier_g.clone(),
            input.verifier_h_alpha.clone(),
            input.verifier_h.clone(),
            ck_w_final.clone(),
            ck_w_proof.clone(),
            &inverse_challenges_reversed,
            &randomizer_inverse,
            kzg_challenge,
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
            com_a: com_a.clone(),
            com_b: com_b.clone(),
            com_t: com_t.clone(),
        },
        effect,
    );
    let base_valid = match base_result {
        BaseCommitmentResult::Ok(value) => value,
        BaseCommitmentResult::Err(error) => return Err(error),
    };
    if !base_valid {
        return Ok(TippMippCoreOutput {
            challenge_prefix: TippMippChallengePrefix {
                challenges,
                inverse_challenges_reversed,
                randomizer_inverse,
                com_a,
                com_b,
                com_t,
                com_c,
                com_z,
            },
            leaf_checks: TippMippLeafChecks {
                ck_v: ck_v_valid,
                ck_w: ck_w_valid,
                base: false,
                c: None,
                z: None,
            },
            accepted: false,
        });
    }

    let c_valid = effect.verify_c(&c_base, &ck_v_base, &com_c)?;
    if !c_valid {
        return Ok(TippMippCoreOutput {
            challenge_prefix: TippMippChallengePrefix {
                challenges,
                inverse_challenges_reversed,
                randomizer_inverse,
                com_a,
                com_b,
                com_t,
                com_c,
                com_z,
            },
            leaf_checks: TippMippLeafChecks {
                ck_v: ck_v_valid,
                ck_w: ck_w_valid,
                base: true,
                c: Some(false),
                z: None,
            },
            accepted: false,
        });
    }

    let final_r =
        structured_scalar_final_from_raw_transcript_inner(round_challenges_wire, &input.r);
    let z_valid = effect.verify_z(&c_base, &[final_r], &com_z)?;

    let accepted = ck_v_valid && ck_w_valid && base_valid && c_valid && z_valid;
    Ok(TippMippCoreOutput {
        challenge_prefix: TippMippChallengePrefix {
            challenges,
            inverse_challenges_reversed,
            randomizer_inverse,
            com_a,
            com_b,
            com_t,
            com_c,
            com_z,
        },
        leaf_checks: TippMippLeafChecks {
            ck_v: ck_v_valid,
            ck_w: ck_w_valid,
            base: true,
            c: Some(true),
            z: Some(z_valid),
        },
        accepted,
    })
}

#[allow(dead_code)] // Formal extraction root; production uses the retained execution form.
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
    verify_tipp_mipp_execution_core(&input, effect, pairing).map(|output| output.accepted)
}

/// Inputs whose transition schedule is owned by the aggregate prover rather
/// than by Arkworks pairing, MSM, serialization, or challenge primitives.
#[derive(Clone)]
struct ProverGipaCoreInput<F, G1, G2, GT> {
    a: Vec<G1>,
    b: Vec<G2>,
    c: Vec<G1>,
    public_values: Vec<F>,
    ck_v: Vec<G2>,
    ck_w: Vec<G1>,
    randomizer: F,
    com_a: GT,
    com_b: GT,
    com_c: GT,
    ip_ab: GT,
    agg_c: G1,
}

/// Exact external operations used by the prover GIPA schedule. The core owns
/// split direction, commitment placement, challenge order, every fold, and
/// chronological-to-wire reversal.
trait ProverGipaEffect<F, G1, G2, GT, ABT, CT, E> {
    fn derive_x0(
        &mut self,
        randomizer: &F,
        com_a: &GT,
        com_b: &GT,
        com_c: &GT,
        ip_ab: &GT,
        agg_c: &G1,
    ) -> Result<F, E>;

    fn commit_round(
        a: &[G1],
        b: &[G2],
        c: &[G1],
        public_values: &[F],
        ck_v: &[G2],
        ck_w: &[G1],
    ) -> Result<TippMippCoreCommitment<GT, ABT, CT>, E>;

    fn derive_round(
        &mut self,
        prior_raw_challenge: &F,
        left: &TippMippCoreCommitment<GT, ABT, CT>,
        right: &TippMippCoreCommitment<GT, ABT, CT>,
    ) -> Result<F, E>;

    fn invert_round(&self, challenge: &F) -> Result<F, E>;

    #[cfg(not(hax_compilation))]
    fn record_commit_profile(&mut self, left_ms: f64, right_ms: f64);

    #[cfg(not(hax_compilation))]
    fn record_fold_profile(
        &mut self,
        a_ms: f64,
        b_ms: f64,
        c_ms: f64,
        public_values_ms: f64,
        ck_v_ms: f64,
        ck_w_ms: f64,
    );
}

/// Effect adapter that retains the root challenge while delegating every
/// external operation to the production effect.
///
/// The adapter is internal to the semantic execution root. It changes neither
/// the operation order nor the effect's transcript writes.
struct RetainedProverGipaEffect<FX, F> {
    inner: FX,
    x0: Option<F>,
}

impl<F, G1, G2, GT, ABT, CT, E, FX> ProverGipaEffect<F, G1, G2, GT, ABT, CT, E>
    for RetainedProverGipaEffect<FX, F>
where
    F: Clone,
    FX: ProverGipaEffect<F, G1, G2, GT, ABT, CT, E>,
{
    fn derive_x0(
        &mut self,
        randomizer: &F,
        com_a: &GT,
        com_b: &GT,
        com_c: &GT,
        ip_ab: &GT,
        agg_c: &G1,
    ) -> Result<F, E> {
        let x0 = self
            .inner
            .derive_x0(randomizer, com_a, com_b, com_c, ip_ab, agg_c)?;
        self.x0 = Some(x0.clone());
        Ok(x0)
    }

    fn commit_round(
        a: &[G1],
        b: &[G2],
        c: &[G1],
        public_values: &[F],
        ck_v: &[G2],
        ck_w: &[G1],
    ) -> Result<TippMippCoreCommitment<GT, ABT, CT>, E> {
        FX::commit_round(a, b, c, public_values, ck_v, ck_w)
    }

    fn derive_round(
        &mut self,
        prior_raw_challenge: &F,
        left: &TippMippCoreCommitment<GT, ABT, CT>,
        right: &TippMippCoreCommitment<GT, ABT, CT>,
    ) -> Result<F, E> {
        self.inner.derive_round(prior_raw_challenge, left, right)
    }

    fn invert_round(&self, challenge: &F) -> Result<F, E> {
        self.inner.invert_round(challenge)
    }

    #[cfg(not(hax_compilation))]
    fn record_commit_profile(&mut self, left_ms: f64, right_ms: f64) {
        self.inner.record_commit_profile(left_ms, right_ms);
    }

    #[cfg(not(hax_compilation))]
    fn record_fold_profile(
        &mut self,
        a_ms: f64,
        b_ms: f64,
        c_ms: f64,
        public_values_ms: f64,
        ck_v_ms: f64,
        ck_w_ms: f64,
    ) {
        self.inner
            .record_fold_profile(a_ms, b_ms, c_ms, public_values_ms, ck_v_ms, ck_w_ms);
    }
}

// Chronological fields are consumed by the extraction refinement; shipping
// serialization consumes the corresponding reversed wire fields.
#[allow(dead_code)]
#[derive(Clone)]
struct ProverGipaCoreOutput<F, G1, G2, GT, ABT, CT> {
    rounds_chrono: Vec<(
        TippMippCoreCommitment<GT, ABT, CT>,
        TippMippCoreCommitment<GT, ABT, CT>,
    )>,
    rounds_wire: Vec<(
        TippMippCoreCommitment<GT, ABT, CT>,
        TippMippCoreCommitment<GT, ABT, CT>,
    )>,
    raw_transcript_chrono: Vec<F>,
    raw_transcript_wire: Vec<F>,
    inv_transcript_chrono: Vec<F>,
    inv_transcript_wire: Vec<F>,
    last_raw_challenge: F,
    final_ck: (G2, G1),
    final_messages: (G1, G2, G1),
    final_public_value: F,
}

/// Compact evidence for the external operations executed by one GIPA round.
///
/// The six input vectors are reconstructed deterministically from the initial
/// GIPA input and the preceding folds. Retaining only the prior challenge,
/// commitment outputs, raw challenge, and inverse keeps this boundary
/// logarithmic in the aggregate size.
#[allow(dead_code)]
#[derive(Clone)]
struct ProverGipaRoundEffectEvidence<F, GT, ABT, CT> {
    prior_raw_challenge: F,
    left: TippMippCoreCommitment<GT, ABT, CT>,
    right: TippMippCoreCommitment<GT, ABT, CT>,
    raw_challenge: F,
    inverse: F,
}

/// One successful production-used call of the GIPA core.
///
/// Unlike a from-parts projection, this record can only be returned after the
/// same effect instance has executed `derive_x0`, every continuing round, and
/// all inversions. It contains no timers or profiling data.
#[allow(dead_code)]
struct ProverGipaSemanticExecution<F, G1, G2, GT, ABT, CT> {
    input: ProverGipaCoreInput<F, G1, G2, GT>,
    output: ProverGipaCoreOutput<F, G1, G2, GT, ABT, CT>,
    x0: F,
    rounds_chrono: Vec<ProverGipaRoundEffectEvidence<F, GT, ABT, CT>>,
}

/// Complete data boundary from one successful shipping aggregate-prover run.
///
/// The production proof is assembled only from this record. The record keeps
/// the exact GIPA input/output and post-GIPA challenges beside the KZG
/// openings, so extraction can relate one successful execution to one wire
/// proof without reconstructing discarded intermediate values.
#[allow(dead_code)]
struct ShippingProverExecution<F, G1, G2, GT, ABT, CT, D>
where
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    gipa_input: ProverGipaCoreInput<F, G1, G2, GT>,
    gipa_output: ProverGipaCoreOutput<F, G1, G2, GT, ABT, CT>,
    gipa_round_effects_chrono: Vec<ProverGipaRoundEffectEvidence<F, GT, ABT, CT>>,
    x0: F,
    randomizer_inverse: F,
    final_bridge: F,
    kzg_challenge: F,
    ck_v_kzg_opening: G2,
    ck_w_kzg_opening: G1,
    proof: AggregateProofData<G1, G2, GT, ABT, CT, D>,
}

type ArkworksShippingProverExecution<P, D> = ShippingProverExecution<
    <P as Pairing>::ScalarField,
    <P as Pairing>::G1,
    <P as Pairing>::G2,
    PairingOutput<P>,
    IdentityOutput<PairingOutput<P>>,
    IdentityOutput<<P as Pairing>::G1>,
    D,
>;

/// Ordered source points consumed by the shipping aggregate prover.
struct OrderedSourceProofs<G1, G2> {
    a: Vec<G1>,
    b: Vec<G2>,
    c: Vec<G1>,
}

fn ordered_source_proofs_core<P: Pairing>(
    proofs: &[Proof<P>],
) -> OrderedSourceProofs<P::G1, P::G2> {
    let mut a = Vec::with_capacity(proofs.len());
    let mut b = Vec::with_capacity(proofs.len());
    let mut c = Vec::with_capacity(proofs.len());
    let mut index = 0usize;
    while index < proofs.len() {
        a.push(proofs[index].a.into());
        b.push(proofs[index].b.into());
        c.push(proofs[index].c.into());
        index += 1;
    }
    OrderedSourceProofs { a, b, c }
}

/// Exact proving-SRS views consumed by GIPA and both KZG opening lanes.
///
/// These are semantic protocol inputs, not retained runtime diagnostics. The
/// slices remain borrowed so the boundary does not clone the proving SRS.
#[allow(dead_code)] // Fields are consumed by the generated formal projection.
struct ShippingProvingSrsProjection<'a, G1, G2, G1Affine, G2Affine> {
    full_g_alpha_powers: &'a [G1],
    full_h_beta_powers: &'a [G2],
    g_alpha_powers_affine: &'a [G1Affine],
    h_beta_powers_affine: &'a [G2Affine],
    ck_1: &'a [G2],
    ck_2: &'a [G1],
}

fn shipping_proving_srs_projection_from_parts<'a, G1, G2, G1Affine, G2Affine>(
    full_g_alpha_powers: &'a [G1],
    full_h_beta_powers: &'a [G2],
    g_alpha_powers_affine: &'a [G1Affine],
    h_beta_powers_affine: &'a [G2Affine],
    ck_1: &'a [G2],
    ck_2: &'a [G1],
) -> ShippingProvingSrsProjection<'a, G1, G2, G1Affine, G2Affine> {
    ShippingProvingSrsProjection {
        full_g_alpha_powers,
        full_h_beta_powers,
        g_alpha_powers_affine,
        h_beta_powers_affine,
        ck_1,
        ck_2,
    }
}

/// Typed challenge values in deployed prover chronology.
#[allow(dead_code)] // Fields are consumed by the generated formal projection.
struct ShippingProverChallengeTrace<F> {
    randomizer: F,
    randomizer_nonce: u64,
    x0: F,
    rounds_chrono: Vec<F>,
    final_bridge: F,
    kzg: F,
}

fn shipping_prover_challenge_trace_from_parts<F: Clone, G1, G2, GT, ABT, CT, D>(
    randomizer: &ProverRandomizerCoreOutput<F>,
    tipp_mipp: &ShippingProverExecution<F, G1, G2, GT, ABT, CT, D>,
) -> ShippingProverChallengeTrace<F>
where
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    ShippingProverChallengeTrace {
        randomizer: randomizer.randomizer.clone(),
        randomizer_nonce: randomizer.nonce,
        x0: tipp_mipp.x0.clone(),
        rounds_chrono: tipp_mipp.gipa_output.raw_transcript_chrono.clone(),
        final_bridge: tipp_mipp.final_bridge.clone(),
        kzg: tipp_mipp.kzg_challenge.clone(),
    }
}

/// Extraction boundary for one successful shipping aggregate-prover run.
///
/// Every field affects the protocol result. Timers, profiles, and buffered
/// byte-trace records remain in the runtime caller and cannot escape through
/// this record.
#[allow(dead_code)]
struct ShippingAggregateProverSemanticExecution<'a, F, G1, G2, G1Affine, G2Affine, GT, ABT, CT, D>
where
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    source_proofs: OrderedSourceProofs<G1, G2>,
    proving_srs: ShippingProvingSrsProjection<'a, G1, G2, G1Affine, G2Affine>,
    initial_commitments: (GT, GT, GT),
    randomizer: ProverRandomizerCoreOutput<F>,
    challenges: ShippingProverChallengeTrace<F>,
    tipp_mipp: ShippingProverExecution<F, G1, G2, GT, ABT, CT, D>,
}

/// Production-used semantic composition point for the shipping prover.
///
/// Challenge chronology is projected from the same successful GIPA/KZG
/// execution that owns the returned wire proof. Callers cannot pair an
/// unrelated typed trace with that proof.
#[allow(clippy::too_many_arguments)]
fn shipping_aggregate_prover_semantic_execution_from_parts<
    'a,
    F,
    G1,
    G2,
    G1Affine,
    G2Affine,
    GT,
    ABT,
    CT,
    D,
>(
    source_proofs: OrderedSourceProofs<G1, G2>,
    full_g_alpha_powers: &'a [G1],
    full_h_beta_powers: &'a [G2],
    g_alpha_powers_affine: &'a [G1Affine],
    h_beta_powers_affine: &'a [G2Affine],
    ck_1: &'a [G2],
    ck_2: &'a [G1],
    initial_commitments: (GT, GT, GT),
    randomizer: ProverRandomizerCoreOutput<F>,
    tipp_mipp: ShippingProverExecution<F, G1, G2, GT, ABT, CT, D>,
) -> ShippingAggregateProverSemanticExecution<'a, F, G1, G2, G1Affine, G2Affine, GT, ABT, CT, D>
where
    F: Clone,
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    let proving_srs = shipping_proving_srs_projection_from_parts(
        full_g_alpha_powers,
        full_h_beta_powers,
        g_alpha_powers_affine,
        h_beta_powers_affine,
        ck_1,
        ck_2,
    );
    let challenges = shipping_prover_challenge_trace_from_parts(&randomizer, &tipp_mipp);
    ShippingAggregateProverSemanticExecution {
        source_proofs,
        proving_srs,
        initial_commitments,
        randomizer,
        challenges,
        tipp_mipp,
    }
}

/// Exact public-proof projection from the retained semantic execution.
fn shipping_aggregate_prover_semantic_returned_proof<
    F,
    G1,
    G2,
    G1Affine,
    G2Affine,
    GT,
    ABT,
    CT,
    D,
>(
    execution: ShippingAggregateProverSemanticExecution<
        '_,
        F,
        G1,
        G2,
        G1Affine,
        G2Affine,
        GT,
        ABT,
        CT,
        D,
    >,
) -> AggregateProofData<G1, G2, GT, ABT, CT, D>
where
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    execution.tipp_mipp.proof
}

#[derive(Debug)]
struct ProverGipaCoreError<E> {
    kind: usize,
    effect_error: Option<E>,
}

struct ProverGipaRoundOutput<F, G1, G2, GT, ABT, CT> {
    left: TippMippCoreCommitment<GT, ABT, CT>,
    right: TippMippCoreCommitment<GT, ABT, CT>,
    raw_challenge: F,
    inv_challenge: F,
    a: Vec<G1>,
    b: Vec<G2>,
    c: Vec<G1>,
    public_values: Vec<F>,
    ck_v: Vec<G2>,
    ck_w: Vec<G1>,
}

/// Pairing and MSM operations needed for one prover cross-commitment.
///
/// The adapter core owns all five operand pairs and their error order. The
/// concrete implementation below delegates only those algebraic operations
/// to Arkworks.
trait ProverRoundCommitmentPrimitive<F, G1, G2, GT, E> {
    fn pairing_inner_product(&mut self, left: &[G1], right: &[G2]) -> Result<GT, E>;
    fn msm_inner_product(&mut self, messages: &[G1], scalars: &[F]) -> Result<G1, E>;
}

struct ProverRoundCommitmentOutput<G1, GT> {
    com_a: GT,
    com_b: GT,
    ip_ab: GT,
    com_c: GT,
    ip_c: G1,
}

#[allow(clippy::too_many_arguments)]
fn prover_round_commitment_adapter_core<F, G1, G2, GT, E, FX>(
    a: &[G1],
    b: &[G2],
    c: &[G1],
    public_values: &[F],
    ck_v: &[G2],
    ck_w: &[G1],
    effect: &mut FX,
) -> Result<ProverRoundCommitmentOutput<G1, GT>, E>
where
    FX: ProverRoundCommitmentPrimitive<F, G1, G2, GT, E>,
{
    let com_a = effect.pairing_inner_product(a, ck_v)?;
    let com_b = effect.pairing_inner_product(ck_w, b)?;
    let ip_ab = effect.pairing_inner_product(a, b)?;
    let com_c = effect.pairing_inner_product(c, ck_v)?;
    let ip_c = effect.msm_inner_product(c, public_values)?;
    Ok(ProverRoundCommitmentOutput {
        com_a,
        com_b,
        ip_ab,
        com_c,
        ip_c,
    })
}

fn prover_round_commitment_identity_projection<G1, GT>(
    output: ProverRoundCommitmentOutput<G1, GT>,
) -> TippMippCoreCommitment<GT, IdentityOutput<GT>, IdentityOutput<G1>>
where
    G1: CanonicalSerialize + CanonicalDeserialize + Clone + Default + Eq,
    GT: CanonicalSerialize + CanonicalDeserialize + Clone + Default + Eq,
{
    TippMippCoreCommitment {
        ab: (
            output.com_a,
            output.com_b,
            IdentityOutput(vec![output.ip_ab]),
        ),
        c: (output.com_c, IdentityOutput(vec![output.ip_c])),
    }
}

struct ArkworksProverRoundCommitment<P: Pairing>(PhantomData<fn() -> P>);

impl<P: Pairing> Default for ArkworksProverRoundCommitment<P> {
    fn default() -> Self {
        Self(PhantomData)
    }
}

impl<P: Pairing>
    ProverRoundCommitmentPrimitive<P::ScalarField, P::G1, P::G2, PairingOutput<P>, String>
    for ArkworksProverRoundCommitment<P>
{
    fn pairing_inner_product(
        &mut self,
        left: &[P::G1],
        right: &[P::G2],
    ) -> Result<PairingOutput<P>, String> {
        PairingInnerProduct::<P>::inner_product(left, right).map_err(|error| error.to_string())
    }

    fn msm_inner_product(
        &mut self,
        messages: &[P::G1],
        scalars: &[P::ScalarField],
    ) -> Result<P::G1, String> {
        MultiexponentiationInnerProduct::<P::G1>::inner_product(messages, scalars)
            .map_err(|error| error.to_string())
    }
}

/// Copies a vector into ordered halves without relying on Rust range indexing.
///
/// Aeneas models ordinary element indexing directly, whereas range-indexed
/// slices introduce unsupported `SliceIndex<Range*>` obligations in generated
/// Lean. Keeping this production-used helper explicit makes the split
/// orientation part of the extracted execution.
fn split_vector_at_core<T: Clone>(values: &[T], split: usize) -> (Vec<T>, Vec<T>) {
    let mut left = Vec::with_capacity(values.len());
    let mut right = Vec::with_capacity(values.len());
    let mut index = 0usize;
    while index < values.len() {
        if index < split {
            left.push(values[index].clone());
        } else {
            right.push(values[index].clone());
        }
        index += 1;
    }
    (left, right)
}

#[allow(clippy::too_many_arguments)]
fn prove_tipp_mipp_gipa_round_core<F, G1, G2, GT, ABT, CT, E, FX>(
    a_left: &[G1],
    a_right: &[G1],
    b_left: &[G2],
    b_right: &[G2],
    c_left: &[G1],
    c_right: &[G1],
    public_left: &[F],
    public_right: &[F],
    v_left: &[G2],
    v_right: &[G2],
    w_left: &[G1],
    w_right: &[G1],
    prior_raw_challenge: &F,
    effect: &mut FX,
) -> Result<ProverGipaRoundOutput<F, G1, G2, GT, ABT, CT>, ProverGipaCoreError<E>>
where
    F: Clone + Mul<F, Output = F> + Add<Output = F> + Sync,
    G1: Clone + Mul<F, Output = G1> + Add<Output = G1> + Sync,
    G2: Clone + Mul<F, Output = G2> + Add<Output = G2> + Sync,
    GT: Clone + Send + Sync,
    ABT: Clone + Send + Sync,
    CT: Clone + Send + Sync,
    E: Send,
    FX: ProverGipaEffect<F, G1, G2, GT, ABT, CT, E>,
{
    #[cfg(all(
        feature = "parallel",
        not(feature = "bench-baseline"),
        not(hax_compilation)
    ))]
    let ((left_result, left_ms), (right_result, right_ms)) = rayon::join(
        || {
            let started = Instant::now();
            let result = FX::commit_round(a_right, b_left, c_right, public_left, v_left, w_right);
            (result, started.elapsed().as_secs_f64() * 1000.0)
        },
        || {
            let started = Instant::now();
            let result = FX::commit_round(a_left, b_right, c_left, public_right, v_right, w_left);
            (result, started.elapsed().as_secs_f64() * 1000.0)
        },
    );

    #[cfg(all(
        any(not(feature = "parallel"), feature = "bench-baseline"),
        not(hax_compilation)
    ))]
    let ((left_result, left_ms), (right_result, right_ms)) = {
        let left_started = Instant::now();
        let left = FX::commit_round(a_right, b_left, c_right, public_left, v_left, w_right);
        let left_ms = left_started.elapsed().as_secs_f64() * 1000.0;
        let right_started = Instant::now();
        let right = FX::commit_round(a_left, b_right, c_left, public_right, v_right, w_left);
        let right_ms = right_started.elapsed().as_secs_f64() * 1000.0;
        ((left, left_ms), (right, right_ms))
    };

    #[cfg(hax_compilation)]
    let (left_result, right_result) = (
        FX::commit_round(a_right, b_left, c_right, public_left, v_left, w_right),
        FX::commit_round(a_left, b_right, c_left, public_right, v_right, w_left),
    );

    #[cfg(not(hax_compilation))]
    effect.record_commit_profile(left_ms, right_ms);

    let left = left_result.map_err(|effect_error| ProverGipaCoreError {
        kind: 2,
        effect_error: Some(effect_error),
    })?;
    let right = right_result.map_err(|effect_error| ProverGipaCoreError {
        kind: 3,
        effect_error: Some(effect_error),
    })?;
    let raw_challenge = effect
        .derive_round(prior_raw_challenge, &left, &right)
        .map_err(|effect_error| ProverGipaCoreError {
            kind: 4,
            effect_error: Some(effect_error),
        })?;
    let inv_challenge = effect
        .invert_round(&raw_challenge)
        .map_err(|effect_error| ProverGipaCoreError {
            kind: 5,
            effect_error: Some(effect_error),
        })?;

    #[cfg(not(hax_compilation))]
    let a_started = Instant::now();
    let a = fold_vector_core(a_right, a_left, &inv_challenge);
    #[cfg(not(hax_compilation))]
    let a_ms = a_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(not(hax_compilation))]
    let b_started = Instant::now();
    let b = fold_vector_core(b_right, b_left, &raw_challenge);
    #[cfg(not(hax_compilation))]
    let b_ms = b_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(not(hax_compilation))]
    let c_started = Instant::now();
    let c = fold_vector_core(c_right, c_left, &inv_challenge);
    #[cfg(not(hax_compilation))]
    let c_ms = c_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(not(hax_compilation))]
    let public_values_started = Instant::now();
    let public_values = fold_vector_core(public_right, public_left, &raw_challenge);
    #[cfg(not(hax_compilation))]
    let public_values_ms = public_values_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(not(hax_compilation))]
    let ck_v_started = Instant::now();
    let ck_v = fold_vector_core(v_right, v_left, &raw_challenge);
    #[cfg(not(hax_compilation))]
    let ck_v_ms = ck_v_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(not(hax_compilation))]
    let ck_w_started = Instant::now();
    let ck_w = fold_vector_core(w_right, w_left, &inv_challenge);
    #[cfg(not(hax_compilation))]
    let ck_w_ms = ck_w_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(not(hax_compilation))]
    effect.record_fold_profile(a_ms, b_ms, c_ms, public_values_ms, ck_v_ms, ck_w_ms);

    Ok(ProverGipaRoundOutput {
        left,
        right,
        raw_challenge,
        inv_challenge,
        a,
        b,
        c,
        public_values,
        ck_v,
        ck_w,
    })
}

/// Production-used, extraction-friendly GIPA prover schedule.
///
/// All algebraic state transitions are executed here. The effect boundary is
/// restricted to the five cross commitments, challenge derivation, and exact
/// field inversion.
fn prove_tipp_mipp_gipa_core<F, G1, G2, GT, ABT, CT, E, FX>(
    input: ProverGipaCoreInput<F, G1, G2, GT>,
    effect: &mut FX,
) -> Result<ProverGipaCoreOutput<F, G1, G2, GT, ABT, CT>, ProverGipaCoreError<E>>
where
    F: Clone + Mul<F, Output = F> + Add<Output = F> + Sync,
    G1: Clone + Mul<F, Output = G1> + Add<Output = G1> + Sync,
    G2: Clone + Mul<F, Output = G2> + Add<Output = G2> + Sync,
    GT: Clone + Send + Sync,
    ABT: Clone + Send + Sync,
    CT: Clone + Send + Sync,
    E: Send,
    FX: ProverGipaEffect<F, G1, G2, GT, ABT, CT, E>,
{
    let input_len = input.a.len();
    if input_len == 0
        || !input_len.is_power_of_two()
        || input.b.len() != input_len
        || input.c.len() != input_len
        || input.public_values.len() != input_len
        || input.ck_v.len() != input_len
        || input.ck_w.len() != input_len
    {
        return Err(ProverGipaCoreError {
            kind: 0,
            effect_error: None,
        });
    }

    let ProverGipaCoreInput {
        mut a,
        mut b,
        mut c,
        mut public_values,
        mut ck_v,
        mut ck_w,
        randomizer,
        com_a,
        com_b,
        com_c,
        ip_ab,
        agg_c,
    } = input;

    let x0 = effect
        .derive_x0(&randomizer, &com_a, &com_b, &com_c, &ip_ab, &agg_c)
        .map_err(|effect_error| ProverGipaCoreError {
            kind: 1,
            effect_error: Some(effect_error),
        })?;
    let mut prior_raw_challenge = x0.clone();
    let mut last_raw_challenge = x0.clone();
    let mut rounds_chrono = Vec::new();
    let mut raw_transcript_chrono = Vec::new();
    let mut inv_transcript_chrono = Vec::new();
    let mut round_error = None;

    while a.len() > 1 && round_error.is_none() {
        let split = a.len() / 2;
        let (a_left, a_right) = split_vector_at_core(&a, split);
        let (b_left, b_right) = split_vector_at_core(&b, split);
        let (c_left, c_right) = split_vector_at_core(&c, split);
        let (public_left, public_right) = split_vector_at_core(&public_values, split);
        let (v_left, v_right) = split_vector_at_core(&ck_v, split);
        let (w_left, w_right) = split_vector_at_core(&ck_w, split);
        match prove_tipp_mipp_gipa_round_core(
            &a_left,
            &a_right,
            &b_left,
            &b_right,
            &c_left,
            &c_right,
            &public_left,
            &public_right,
            &v_left,
            &v_right,
            &w_left,
            &w_right,
            &prior_raw_challenge,
            effect,
        ) {
            Err(error) => round_error = Some(error),
            Ok(output) => {
                a = output.a;
                b = output.b;
                c = output.c;
                public_values = output.public_values;
                ck_v = output.ck_v;
                ck_w = output.ck_w;
                rounds_chrono.push((output.left, output.right));
                raw_transcript_chrono.push(output.raw_challenge.clone());
                inv_transcript_chrono.push(output.inv_challenge);
                prior_raw_challenge = output.raw_challenge.clone();
                last_raw_challenge = output.raw_challenge;
            }
        }
    }

    if let Some(error) = round_error {
        return Err(error);
    }

    let rounds_wire = reverse_chronological_core(rounds_chrono.clone());
    let raw_transcript_wire = reverse_chronological_core(raw_transcript_chrono.clone());
    let inv_transcript_wire = reverse_chronological_core(inv_transcript_chrono.clone());

    Ok(ProverGipaCoreOutput {
        rounds_chrono,
        rounds_wire,
        raw_transcript_chrono,
        raw_transcript_wire,
        inv_transcript_chrono,
        inv_transcript_wire,
        last_raw_challenge,
        final_ck: (ck_v[0].clone(), ck_w[0].clone()),
        final_messages: (a[0].clone(), b[0].clone(), c[0].clone()),
        final_public_value: public_values[0].clone(),
    })
}

/// Project the exact chronological external results retained by a successful
/// GIPA call.
///
/// The core constructs all three input slices in lockstep. This helper checks
/// that invariant again before indexing so a stale or independently assembled
/// result cannot be promoted to semantic execution evidence.
fn prover_gipa_round_effect_evidence_core<F, GT, ABT, CT>(
    x0: &F,
    rounds_chrono: &[(
        TippMippCoreCommitment<GT, ABT, CT>,
        TippMippCoreCommitment<GT, ABT, CT>,
    )],
    raw_transcript_chrono: &[F],
    inv_transcript_chrono: &[F],
) -> Option<Vec<ProverGipaRoundEffectEvidence<F, GT, ABT, CT>>>
where
    F: Clone,
    GT: Clone,
    ABT: Clone,
    CT: Clone,
{
    if rounds_chrono.len() != raw_transcript_chrono.len()
        || rounds_chrono.len() != inv_transcript_chrono.len()
    {
        return None;
    }

    let mut prior = x0.clone();
    let mut evidence = Vec::with_capacity(rounds_chrono.len());
    let mut index = 0usize;
    while index < rounds_chrono.len() {
        let raw_challenge = raw_transcript_chrono[index].clone();
        evidence.push(ProverGipaRoundEffectEvidence {
            prior_raw_challenge: prior,
            left: rounds_chrono[index].0.clone(),
            right: rounds_chrono[index].1.clone(),
            raw_challenge: raw_challenge.clone(),
            inverse: inv_transcript_chrono[index].clone(),
        });
        prior = raw_challenge;
        index += 1;
    }
    Some(evidence)
}

/// Production-used, timing-free semantic root for one successful GIPA call.
///
/// This function, rather than a later from-parts constructor, owns the call to
/// `prove_tipp_mipp_gipa_core`. The returned `x0` and round evidence therefore
/// come from the same mutable effect instance and the same successful call.
fn prover_gipa_semantic_execution_core<F, G1, G2, GT, ABT, CT, E, FX>(
    input: ProverGipaCoreInput<F, G1, G2, GT>,
    effect: FX,
) -> Result<(ProverGipaSemanticExecution<F, G1, G2, GT, ABT, CT>, FX), ProverGipaCoreError<E>>
where
    F: Clone + Mul<F, Output = F> + Add<Output = F> + Sync,
    G1: Clone + Mul<F, Output = G1> + Add<Output = G1> + Sync,
    G2: Clone + Mul<F, Output = G2> + Add<Output = G2> + Sync,
    GT: Clone + Send + Sync,
    ABT: Clone + Send + Sync,
    CT: Clone + Send + Sync,
    E: Send,
    FX: ProverGipaEffect<F, G1, G2, GT, ABT, CT, E>,
{
    let mut retained_effect = RetainedProverGipaEffect {
        inner: effect,
        x0: None,
    };
    let output = prove_tipp_mipp_gipa_core(input.clone(), &mut retained_effect)?;
    let x0 = match retained_effect.x0.take() {
        Some(x0) => x0,
        None => {
            return Err(ProverGipaCoreError {
                kind: 6,
                effect_error: None,
            })
        }
    };
    let rounds_chrono = match prover_gipa_round_effect_evidence_core(
        &x0,
        &output.rounds_chrono,
        &output.raw_transcript_chrono,
        &output.inv_transcript_chrono,
    ) {
        Some(rounds) => rounds,
        None => {
            return Err(ProverGipaCoreError {
                kind: 7,
                effect_error: None,
            })
        }
    };
    Ok((
        ProverGipaSemanticExecution {
            input,
            output,
            x0,
            rounds_chrono,
        },
        retained_effect.inner,
    ))
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

struct ArkworksProverGipaEffect<'a, P: Pairing, D: Digest + Send + Sync, S: ChallengeTraceSink> {
    context: &'a ChallengeContext,
    trace: &'a mut S,
    profile: TippMippBuildProfile,
    _pairing: PhantomData<fn() -> P>,
    _digest: PhantomData<fn() -> D>,
}

impl<'a, P, D, S>
    ProverGipaEffect<
        P::ScalarField,
        P::G1,
        P::G2,
        PairingOutput<P>,
        IdentityOutput<PairingOutput<P>>,
        IdentityOutput<P::G1>,
        String,
    > for ArkworksProverGipaEffect<'a, P, D, S>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    fn derive_x0(
        &mut self,
        randomizer: &P::ScalarField,
        com_a: &PairingOutput<P>,
        com_b: &PairingOutput<P>,
        com_c: &PairingOutput<P>,
        ip_ab: &PairingOutput<P>,
        agg_c: &P::G1,
    ) -> Result<P::ScalarField, String> {
        arkworks_tipp_x0_adapter_core(self, randomizer, com_a, com_b, com_c, ip_ab, agg_c)
    }

    fn commit_round(
        a: &[P::G1],
        b: &[P::G2],
        c: &[P::G1],
        public_values: &[P::ScalarField],
        ck_v: &[P::G2],
        ck_w: &[P::G1],
    ) -> Result<
        TippMippCoreCommitment<
            PairingOutput<P>,
            IdentityOutput<PairingOutput<P>>,
            IdentityOutput<P::G1>,
        >,
        String,
    > {
        let (commitment, _) = commit_tipp_mipp_round::<P>(a, b, c, public_values, ck_v, ck_w)?;
        Ok(TippMippCoreCommitment {
            ab: commitment.ab,
            c: commitment.c,
        })
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
        let started = Instant::now();
        let challenge = arkworks_tipp_round_adapter_core(self, prior_raw_challenge, left, right)?;
        self.profile.challenge_ms += started.elapsed().as_secs_f64() * 1000.0;
        Ok(challenge)
    }

    fn invert_round(&self, challenge: &P::ScalarField) -> Result<P::ScalarField, String> {
        arkworks_tipp_inverse_adapter_core(self, challenge)
            .ok_or_else(|| "round challenge must be non-zero".to_owned())
    }

    #[cfg(not(hax_compilation))]
    fn record_commit_profile(&mut self, left_ms: f64, right_ms: f64) {
        self.profile.commit_l_ms += left_ms;
        self.profile.commit_r_ms += right_ms;
    }

    #[cfg(not(hax_compilation))]
    fn record_fold_profile(
        &mut self,
        a_ms: f64,
        b_ms: f64,
        c_ms: f64,
        public_values_ms: f64,
        ck_v_ms: f64,
        ck_w_ms: f64,
    ) {
        self.profile.rescale_m1_ms += a_ms;
        self.profile.rescale_m2_ms += b_ms;
        self.profile.rescale_m3_ms += c_ms;
        self.profile.rescale_r_ms += public_values_ms;
        self.profile.rescale_ck1_ms += ck_v_ms;
        self.profile.rescale_ck2_ms += ck_w_ms;
    }
}

fn prover_gipa_rounds_to_wire<GT, ABT, CT>(
    rounds: Vec<(
        TippMippCoreCommitment<GT, ABT, CT>,
        TippMippCoreCommitment<GT, ABT, CT>,
    )>,
) -> Vec<(
    TippMippCommitmentData<GT, ABT, CT>,
    TippMippCommitmentData<GT, ABT, CT>,
)>
where
    GT: Clone + CanonicalSerialize + CanonicalDeserialize,
    ABT: Clone + CanonicalSerialize + CanonicalDeserialize,
    CT: Clone + CanonicalSerialize + CanonicalDeserialize,
{
    let mut wire_rounds = Vec::with_capacity(rounds.len());
    let mut index = 0usize;
    while index < rounds.len() {
        let left = rounds[index].0.clone();
        let right = rounds[index].1.clone();
        wire_rounds.push((
            TippMippCommitmentData {
                ab: left.ab,
                c: left.c,
            },
            TippMippCommitmentData {
                ab: right.ab,
                c: right.c,
            },
        ));
        index += 1;
    }
    wire_rounds
}

/// Production-used extraction root for the complete successful prover
/// boundary. All wire fields are assembled from the retained GIPA execution;
/// callers cannot supply an unrelated proof beside that execution.
fn shipping_prover_execution_from_parts<F, G1, G2, GT, ABT, CT, D>(
    gipa_execution: ProverGipaSemanticExecution<F, G1, G2, GT, ABT, CT>,
    randomizer_inverse: F,
    final_bridge: F,
    kzg_challenge: F,
    ck_v_kzg_opening: G2,
    ck_w_kzg_opening: G1,
) -> ShippingProverExecution<F, G1, G2, GT, ABT, CT, D>
where
    G1: Clone + CanonicalSerialize + CanonicalDeserialize,
    G2: Clone + CanonicalSerialize + CanonicalDeserialize,
    GT: Clone + CanonicalSerialize + CanonicalDeserialize,
    ABT: Clone + CanonicalSerialize + CanonicalDeserialize,
    CT: Clone + CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    let ProverGipaSemanticExecution {
        input: gipa_input,
        output: gipa_output,
        x0,
        rounds_chrono: gipa_round_effects_chrono,
    } = gipa_execution;
    let wire_rounds = prover_gipa_rounds_to_wire(gipa_output.rounds_wire.clone());
    let gipa_proof = tipp_mipp_gipa_proof_from_wire_rounds(wire_rounds);
    let tipp_mipp_proof = tipp_mipp_proof_from_parts(
        gipa_proof,
        gipa_output.final_ck.clone(),
        (ck_v_kzg_opening.clone(), ck_w_kzg_opening.clone()),
        gipa_output.final_messages.clone(),
    );
    let proof = aggregate_proof_from_parts(
        gipa_input.com_a.clone(),
        gipa_input.com_b.clone(),
        gipa_input.com_c.clone(),
        gipa_input.ip_ab.clone(),
        gipa_input.agg_c.clone(),
        tipp_mipp_proof,
    );
    ShippingProverExecution {
        gipa_input,
        gipa_output,
        gipa_round_effects_chrono,
        x0,
        randomizer_inverse,
        final_bridge,
        kzg_challenge,
        ck_v_kzg_opening,
        ck_w_kzg_opening,
        proof,
    }
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
        ArkworksShippingProverExecution<P, D>,
        TippMippBuildProfile,
        BufferedChallengeTraceSink,
        f64,
    ),
    String,
>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let mut trace = BufferedChallengeTraceSink::default();
    let started = Instant::now();
    let (execution, profile) = prove_tipp_mipp_profiled::<P, D, BufferedChallengeTraceSink>(
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
        execution,
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
) -> Result<(ArkworksShippingProverExecution<P, D>, TippMippBuildProfile), Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let total_started = Instant::now();
    let mut profile = TippMippBuildProfile::default();

    let gipa_started = Instant::now();
    let (gipa_execution, mut gipa_profile) = prove_tipp_mipp_gipa_profiled::<P, D, S>(
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
    let raw_transcript = &gipa_execution.output.raw_transcript_wire;
    let inv_transcript = &gipa_execution.output.inv_transcript_wire;
    profile.transcript_inverse_ms = transcript_inverse_started.elapsed().as_secs_f64() * 1000.0;

    let final_bridge_started = Instant::now();
    let final_bridge = derive_final_bridge::<P, D, S>(
        context,
        trace,
        &gipa_execution.output.last_raw_challenge,
        &gipa_execution.output.final_ck,
        &gipa_execution.output.final_messages,
    )?;
    profile.final_bridge_ms = final_bridge_started.elapsed().as_secs_f64() * 1000.0;

    let kzg_challenge_started = Instant::now();
    let kzg_challenge = derive_kzg_challenge::<P, D, S>(
        context,
        trace,
        &final_bridge,
        &gipa_execution.output.final_ck,
    )?;
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
            raw_transcript,
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
            inv_transcript,
            &r_inverse,
            &kzg_challenge,
        )?;
    profile.kzg_opening_ck_w_ms = kzg_opening_ck_w_started.elapsed().as_secs_f64() * 1000.0;
    profile.kzg_coefficient_build_ms += ck_w_kzg_profile.coefficient_build_ms;
    profile.kzg_eval_quotient_ms += ck_w_kzg_profile.eval_quotient_ms;
    profile.kzg_opening_msm_ms += ck_w_kzg_profile.opening_msm_ms;

    profile.total_ms = total_started.elapsed().as_secs_f64() * 1000.0;

    let execution = shipping_prover_execution_from_parts::<_, _, _, _, _, _, D>(
        gipa_execution,
        r_inverse,
        final_bridge,
        kzg_challenge,
        ck_v_kzg_opening,
        ck_w_kzg_opening,
    );
    Ok((execution, profile))
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
        ProverGipaSemanticExecution<
            P::ScalarField,
            P::G1,
            P::G2,
            PairingOutput<P>,
            IdentityOutput<PairingOutput<P>>,
            IdentityOutput<P::G1>,
        >,
        TippMippBuildProfile,
    ),
    Error,
>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let total_started = Instant::now();
    {
        let effect = ArkworksProverGipaEffect::<P, D, S> {
            context,
            trace,
            profile: TippMippBuildProfile::default(),
            _pairing: PhantomData,
            _digest: PhantomData,
        };
        let input = ProverGipaCoreInput {
            a: a.to_vec(),
            b: b_r.to_vec(),
            c: c.to_vec(),
            public_values: r_vec.to_vec(),
            ck_v: ck_1.to_vec(),
            ck_w: ck_2_r_inv.to_vec(),
            randomizer: r.clone(),
            com_a: com.0.clone(),
            com_b: com.1.clone(),
            com_c: com.2.clone(),
            ip_ab: ip_ab.clone(),
            agg_c: agg_c.clone(),
        };
        let (execution, mut effect) =
            prover_gipa_semantic_execution_core(input, effect).map_err(|error| {
                let ProverGipaCoreError { kind, effect_error } = error;
                let message = match (kind, effect_error) {
                    (0, _) => {
                        "combined TIPP/MIPP inputs must have equal power-of-two length".to_owned()
                    }
                    (6, _) => "successful prover GIPA execution did not retain x0".to_owned(),
                    (7, _) => "successful prover GIPA execution had inconsistent round evidence"
                        .to_owned(),
                    (_, Some(error)) => error,
                    (kind, None) => format!("prover GIPA schedule error {kind}"),
                };
                if kind == 6 || kind == 7 {
                    Box::new(std::io::Error::other(message)) as Error
                } else {
                    Box::new(std::io::Error::new(
                        std::io::ErrorKind::InvalidInput,
                        message,
                    )) as Error
                }
            })?;
        effect.profile.total_ms = total_started.elapsed().as_secs_f64() * 1000.0;
        return Ok((execution, effect.profile));
    }
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
    let mut effect = ArkworksProverRoundCommitment::<P>::default();
    let output = prover_round_commitment_adapter_core(a, b, c, r, ck_v, ck_w, &mut effect)?;
    let commitment = prover_round_commitment_identity_projection(output);
    Ok((
        tipp_mipp_commitment_from_parts(
            commitment.ab.0,
            commitment.ab.1,
            commitment.ab.2,
            commitment.c.0,
            commitment.c.1,
        ),
        started.elapsed().as_secs_f64() * 1000.0,
    ))
}

fn fold_vector_core<T, F>(scaled_half: &[T], unscaled_half: &[T], scalar: &F) -> Vec<T>
where
    T: Clone + std::ops::Mul<F, Output = T> + Add<Output = T>,
    F: Clone,
{
    let mut folded = Vec::with_capacity(scaled_half.len().min(unscaled_half.len()));
    let mut index = 0usize;
    while index < scaled_half.len() && index < unscaled_half.len() {
        folded.push(scaled_half[index].clone() * scalar.clone() + unscaled_half[index].clone());
        index += 1;
    }
    folded
}

fn reverse_chronological_core<T>(mut values: Vec<T>) -> Vec<T> {
    values.reverse();
    values
}

/// External serialization and hash-to-field operations used by the shipping
/// prover randomizer sampler.
trait ProverRandomizerPrimitive<F, GT, E> {
    fn serialize_gt(&mut self, value: &GT, output: &mut Vec<u8>) -> Result<(), E>;
    fn candidate(&mut self, nonce: u64, message: &[u8]) -> Result<Option<F>, E>;
}

#[derive(Debug)]
enum ProverRandomizerCoreError<E> {
    Serialization(E),
    Challenge(E),
    NonceExhausted,
}

impl<E> From<ChallengeNonceExhausted> for ProverRandomizerCoreError<E> {
    fn from(_: ChallengeNonceExhausted) -> Self {
        Self::NonceExhausted
    }
}

#[allow(dead_code)]
struct ProverRandomizerCoreOutput<F> {
    randomizer: F,
    nonce: u64,
    message: Vec<u8>,
}

fn derive_prover_randomizer_core<F, GT, E, FX>(
    com_a: &GT,
    com_b: &GT,
    com_c: &GT,
    effect: &mut FX,
) -> Result<ProverRandomizerCoreOutput<F>, ProverRandomizerCoreError<E>>
where
    F: PartialEq + Zero + One,
    FX: ProverRandomizerPrimitive<F, GT, E>,
{
    derive_prover_randomizer_core_from_nonce(com_a, com_b, com_c, effect, 0)
}

fn derive_prover_randomizer_core_from_nonce<F, GT, E, FX>(
    com_a: &GT,
    com_b: &GT,
    com_c: &GT,
    effect: &mut FX,
    nonce: u64,
) -> Result<ProverRandomizerCoreOutput<F>, ProverRandomizerCoreError<E>>
where
    F: PartialEq + Zero + One,
    FX: ProverRandomizerPrimitive<F, GT, E>,
{
    sample_bounded_challenge_from_nonce(nonce, |nonce| {
        // Rebuild on each rejection exactly as the deployed loop did before
        // this control flow was isolated.
        let mut message = Vec::new();
        effect
            .serialize_gt(com_a, &mut message)
            .map_err(ProverRandomizerCoreError::Serialization)?;
        effect
            .serialize_gt(com_b, &mut message)
            .map_err(ProverRandomizerCoreError::Serialization)?;
        effect
            .serialize_gt(com_c, &mut message)
            .map_err(ProverRandomizerCoreError::Serialization)?;

        let candidate = effect
            .candidate(nonce, &message)
            .map_err(ProverRandomizerCoreError::Challenge)?;
        Ok(candidate.and_then(|randomizer| {
            randomizer_is_admissible(&randomizer).then_some(ProverRandomizerCoreOutput {
                randomizer,
                nonce,
                message,
            })
        }))
    })
}

struct ArkworksProverRandomizerEffect<
    'a,
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
> {
    context: &'a ChallengeContext,
    trace: &'a mut S,
    _pairing: PhantomData<fn() -> P>,
    _digest: PhantomData<fn() -> D>,
}

impl<'a, P, D, S> ProverRandomizerPrimitive<P::ScalarField, PairingOutput<P>, Error>
    for ArkworksProverRandomizerEffect<'a, P, D, S>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    fn serialize_gt(
        &mut self,
        value: &PairingOutput<P>,
        output: &mut Vec<u8>,
    ) -> Result<(), Error> {
        value.serialize_uncompressed(output)?;
        Ok(())
    }

    fn candidate(&mut self, nonce: u64, message: &[u8]) -> Result<Option<P::ScalarField>, Error> {
        Ok(P::ScalarField::from_random_bytes(
            &challenge_digest::<D, _>(
                self.context,
                self.trace,
                b"aggregate.randomizer",
                nonce,
                message,
            ),
        ))
    }
}

fn prover_randomizer_core_error(error: ProverRandomizerCoreError<Error>) -> Error {
    match error {
        ProverRandomizerCoreError::Serialization(error)
        | ProverRandomizerCoreError::Challenge(error) => error,
        ProverRandomizerCoreError::NonceExhausted => {
            Box::new(crate::challenge::ChallengeNonceExhausted)
        }
    }
}

/// Serialization and deployed challenge derivation used after the GIPA loop.
trait ProverPostGipaChallengePrimitive<F, G1, G2, E> {
    fn serialize_f(&mut self, value: &F, output: &mut Vec<u8>) -> Result<(), E>;
    fn serialize_g1(&mut self, value: &G1, output: &mut Vec<u8>) -> Result<(), E>;
    fn serialize_g2(&mut self, value: &G2, output: &mut Vec<u8>) -> Result<(), E>;
    fn derive(&mut self, stage: TippMippChallengeStage, message: &[u8]) -> Result<F, E>;
}

fn prover_final_bridge_adapter_core<F, G1, G2, E, FX>(
    last_raw_challenge: &F,
    final_ck: &(G2, G1),
    final_messages: &(G1, G2, G1),
    effect: &mut FX,
) -> Result<F, E>
where
    FX: ProverPostGipaChallengePrimitive<F, G1, G2, E>,
{
    let mut message = Vec::new();
    effect.serialize_f(last_raw_challenge, &mut message)?;
    effect.serialize_g2(&final_ck.0, &mut message)?;
    effect.serialize_g1(&final_ck.1, &mut message)?;
    effect.serialize_g1(&final_messages.0, &mut message)?;
    effect.serialize_g2(&final_messages.1, &mut message)?;
    effect.serialize_g1(&final_messages.2, &mut message)?;
    effect.derive(TippMippChallengeStage::FinalBridge, &message)
}

fn prover_kzg_challenge_adapter_core<F, G1, G2, E, FX>(
    final_bridge: &F,
    final_ck: &(G2, G1),
    effect: &mut FX,
) -> Result<F, E>
where
    FX: ProverPostGipaChallengePrimitive<F, G1, G2, E>,
{
    let mut message = Vec::new();
    effect.serialize_f(final_bridge, &mut message)?;
    effect.serialize_g2(&final_ck.0, &mut message)?;
    effect.serialize_g1(&final_ck.1, &mut message)?;
    effect.derive(TippMippChallengeStage::Kzg, &message)
}

struct ArkworksProverPostGipaChallengeEffect<
    'a,
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
> {
    context: &'a ChallengeContext,
    trace: &'a mut S,
    _pairing: PhantomData<fn() -> P>,
    _digest: PhantomData<fn() -> D>,
}

impl<'a, P, D, S> ProverPostGipaChallengePrimitive<P::ScalarField, P::G1, P::G2, Error>
    for ArkworksProverPostGipaChallengeEffect<'a, P, D, S>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    fn serialize_f(&mut self, value: &P::ScalarField, output: &mut Vec<u8>) -> Result<(), Error> {
        value.serialize_uncompressed(output)?;
        Ok(())
    }

    fn serialize_g1(&mut self, value: &P::G1, output: &mut Vec<u8>) -> Result<(), Error> {
        value.serialize_uncompressed(output)?;
        Ok(())
    }

    fn serialize_g2(&mut self, value: &P::G2, output: &mut Vec<u8>) -> Result<(), Error> {
        value.serialize_uncompressed(output)?;
        Ok(())
    }

    fn derive(
        &mut self,
        stage: TippMippChallengeStage,
        message: &[u8],
    ) -> Result<P::ScalarField, Error> {
        derive_scalar_challenge::<P, D, S>(
            self.context,
            self.trace,
            tipp_mipp_challenge_stage_label(stage),
            message,
        )
    }
}

fn derive_scalar_challenge<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    stage_label: &'static [u8],
    messages: &[u8],
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    Ok(derive_scalar_challenge_sample::<P, D, S>(context, trace, stage_label, messages)?.value)
}

struct ScalarChallengeSample<F> {
    accepted_nonce: u64,
    value: F,
}

fn derive_scalar_challenge_sample<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    stage_label: &'static [u8],
    messages: &[u8],
) -> Result<ScalarChallengeSample<P::ScalarField>, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    sample_bounded_challenge::<_, Error, _>(|nonce| {
        Ok(P::ScalarField::from_random_bytes(&challenge_digest::<D, _>(
            context,
            trace,
            stage_label,
            nonce,
            messages,
        ))
        .filter(|challenge| !challenge.is_zero())
        .map(|value| ScalarChallengeSample {
            accepted_nonce: nonce,
            value,
        }))
    })
}

fn randomizer_is_admissible<F>(randomizer: &F) -> bool
where
    F: PartialEq + Zero + One,
{
    randomizer != &F::zero() && randomizer != &F::one()
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
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let mut effect = ArkworksProverPostGipaChallengeEffect::<P, D, S> {
        context,
        trace,
        _pairing: PhantomData,
        _digest: PhantomData,
    };
    prover_final_bridge_adapter_core(last_raw_challenge, final_ck, final_messages, &mut effect)
}

fn derive_kzg_challenge<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    final_bridge: &P::ScalarField,
    final_ck: &(P::G2, P::G1),
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let mut effect = ArkworksProverPostGipaChallengeEffect::<P, D, S> {
        context,
        trace,
        _pairing: PhantomData,
        _digest: PhantomData,
    };
    prover_kzg_challenge_adapter_core(final_bridge, final_ck, &mut effect)
}

/// External primitives used by the production TIPP/MIPP adapter.
///
/// The adapter cores below own byte ordering, stage routing, comparisons, and
/// error ordering. Implementations of this trait are restricted to the
/// Arkworks serialization, field, pairing, MSM, and deployed-hash boundaries.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum TippMippChallengeStage {
    X0,
    Round,
    FinalBridge,
    Kzg,
}

fn tipp_mipp_challenge_stage_label(stage: TippMippChallengeStage) -> &'static [u8] {
    match stage {
        TippMippChallengeStage::X0 => b"tipp-mipp.x0",
        TippMippChallengeStage::Round => b"tipp-mipp.gipa.round",
        TippMippChallengeStage::FinalBridge => b"tipp-mipp.final-bridge",
        TippMippChallengeStage::Kzg => b"tipp-mipp.kzg",
    }
}

trait TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT> {
    fn serialize_f(&mut self, value: &F, output: &mut Vec<u8>) -> Result<(), String>;
    fn serialize_g1(&mut self, value: &G1, output: &mut Vec<u8>) -> Result<(), String>;
    fn serialize_g2(&mut self, value: &G2, output: &mut Vec<u8>) -> Result<(), String>;
    fn serialize_gt(&mut self, value: &GT, output: &mut Vec<u8>) -> Result<(), String>;
    fn serialize_abt(&mut self, value: &ABT, output: &mut Vec<u8>) -> Result<(), String>;
    fn serialize_ct(&mut self, value: &CT, output: &mut Vec<u8>) -> Result<(), String>;
    fn derive_challenge(
        &mut self,
        stage: TippMippChallengeStage,
        messages: &[u8],
    ) -> Result<F, String>;
    fn inverse(&self, value: &F) -> Option<F>;
    fn pairing_inner_product(&self, left: &[G1], right: &[G2]) -> Result<GT, String>;
    fn msm_inner_product(&self, messages: &[G1], scalars: &[F]) -> Result<G1, String>;
}

impl<'a, P: Pairing, D: Digest + Send + Sync, S: ChallengeTraceSink>
    TippMippAdapterPrimitive<
        P::ScalarField,
        P::G1,
        P::G2,
        PairingOutput<P>,
        IdentityOutput<PairingOutput<P>>,
        IdentityOutput<P::G1>,
    > for ArkworksProverGipaEffect<'a, P, D, S>
{
    fn serialize_f(&mut self, value: &P::ScalarField, output: &mut Vec<u8>) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_g1(&mut self, value: &P::G1, output: &mut Vec<u8>) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_g2(&mut self, value: &P::G2, output: &mut Vec<u8>) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_gt(
        &mut self,
        value: &PairingOutput<P>,
        output: &mut Vec<u8>,
    ) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_abt(
        &mut self,
        value: &IdentityOutput<PairingOutput<P>>,
        output: &mut Vec<u8>,
    ) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_ct(
        &mut self,
        value: &IdentityOutput<P::G1>,
        output: &mut Vec<u8>,
    ) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn derive_challenge(
        &mut self,
        stage: TippMippChallengeStage,
        messages: &[u8],
    ) -> Result<P::ScalarField, String> {
        derive_scalar_challenge::<P, D, S>(
            self.context,
            self.trace,
            tipp_mipp_challenge_stage_label(stage),
            messages,
        )
        .map_err(|error| error.to_string())
    }

    fn inverse(&self, value: &P::ScalarField) -> Option<P::ScalarField> {
        value.inverse()
    }

    fn pairing_inner_product(
        &self,
        left: &[P::G1],
        right: &[P::G2],
    ) -> Result<PairingOutput<P>, String> {
        PairingInnerProduct::<P>::inner_product(left, right).map_err(|error| error.to_string())
    }

    fn msm_inner_product(
        &self,
        messages: &[P::G1],
        scalars: &[P::ScalarField],
    ) -> Result<P::G1, String> {
        MultiexponentiationInnerProduct::<P::G1>::inner_product(messages, scalars)
            .map_err(|error| error.to_string())
    }
}

fn arkworks_tipp_x0_adapter_core<F, G1, G2, GT, ABT, CT, FX>(
    effect: &mut FX,
    r: &F,
    com_a: &GT,
    com_b: &GT,
    com_c: &GT,
    ip_ab: &GT,
    agg_c: &G1,
) -> Result<F, String>
where
    FX: TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT>,
{
    let mut hash_input = Vec::new();
    effect.serialize_f(r, &mut hash_input)?;
    effect.serialize_gt(com_a, &mut hash_input)?;
    effect.serialize_gt(com_b, &mut hash_input)?;
    effect.serialize_gt(com_c, &mut hash_input)?;
    effect.serialize_gt(ip_ab, &mut hash_input)?;
    effect.serialize_g1(agg_c, &mut hash_input)?;
    effect.derive_challenge(TippMippChallengeStage::X0, &hash_input)
}

fn arkworks_tipp_round_adapter_core<F, G1, G2, GT, ABT, CT, FX>(
    effect: &mut FX,
    prior_raw_challenge: &F,
    left: &TippMippCoreCommitment<GT, ABT, CT>,
    right: &TippMippCoreCommitment<GT, ABT, CT>,
) -> Result<F, String>
where
    FX: TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT>,
{
    let mut hash_input = Vec::new();
    effect.serialize_f(prior_raw_challenge, &mut hash_input)?;
    effect.serialize_gt(&left.ab.0, &mut hash_input)?;
    effect.serialize_gt(&left.ab.1, &mut hash_input)?;
    effect.serialize_abt(&left.ab.2, &mut hash_input)?;
    effect.serialize_gt(&left.c.0, &mut hash_input)?;
    effect.serialize_ct(&left.c.1, &mut hash_input)?;
    effect.serialize_gt(&right.ab.0, &mut hash_input)?;
    effect.serialize_gt(&right.ab.1, &mut hash_input)?;
    effect.serialize_abt(&right.ab.2, &mut hash_input)?;
    effect.serialize_gt(&right.c.0, &mut hash_input)?;
    effect.serialize_ct(&right.c.1, &mut hash_input)?;
    effect.derive_challenge(TippMippChallengeStage::Round, &hash_input)
}

fn arkworks_tipp_final_bridge_adapter_core<F, G1, G2, GT, ABT, CT, FX>(
    effect: &mut FX,
    last_raw_challenge: &F,
    final_ck: &(G2, G1),
    final_messages: &(G1, G2, G1),
) -> Result<F, String>
where
    FX: TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT>,
{
    let mut hash_input = Vec::new();
    effect.serialize_f(last_raw_challenge, &mut hash_input)?;
    effect.serialize_g2(&final_ck.0, &mut hash_input)?;
    effect.serialize_g1(&final_ck.1, &mut hash_input)?;
    effect.serialize_g1(&final_messages.0, &mut hash_input)?;
    effect.serialize_g2(&final_messages.1, &mut hash_input)?;
    effect.serialize_g1(&final_messages.2, &mut hash_input)?;
    effect.derive_challenge(TippMippChallengeStage::FinalBridge, &hash_input)
}

fn arkworks_tipp_kzg_adapter_core<F, G1, G2, GT, ABT, CT, FX>(
    effect: &mut FX,
    final_bridge: &F,
    final_ck: &(G2, G1),
) -> Result<F, String>
where
    FX: TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT>,
{
    let mut hash_input = Vec::new();
    effect.serialize_f(final_bridge, &mut hash_input)?;
    effect.serialize_g2(&final_ck.0, &mut hash_input)?;
    effect.serialize_g1(&final_ck.1, &mut hash_input)?;
    effect.derive_challenge(TippMippChallengeStage::Kzg, &hash_input)
}

fn arkworks_tipp_inverse_adapter_core<F, G1, G2, GT, ABT, CT, FX>(
    effect: &FX,
    value: &F,
) -> Option<F>
where
    FX: TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT>,
{
    effect.inverse(value)
}

fn arkworks_tipp_inner_product_adapter_core<F, G1, G2, GT, ABT, CT, FX>(
    effect: &FX,
    left: &[G1],
    right: &[G2],
) -> BaseCommitmentResult<GT, String>
where
    FX: TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT>,
{
    match effect.pairing_inner_product(left, right) {
        Ok(value) => BaseCommitmentResult::Ok(value),
        Err(error) => BaseCommitmentResult::Err(error),
    }
}

fn arkworks_tipp_pairing_check_adapter_core<F, G1, G2, GT, ABT, CT, FX>(
    effect: &FX,
    left: &[G1],
    right: &[G2],
    commitment: &GT,
) -> Result<bool, String>
where
    GT: PartialEq,
    FX: TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT>,
{
    Ok(effect.pairing_inner_product(left, right)? == *commitment)
}

fn arkworks_tipp_target_check_adapter_core<GT: PartialEq>(
    messages: &[GT],
    commitment: &GT,
) -> bool {
    messages.len() == 1 && messages[0] == *commitment
}

fn arkworks_tipp_msm_check_adapter_core<F, G1, G2, GT, ABT, CT, FX>(
    effect: &FX,
    messages: &[G1],
    scalars: &[F],
    commitment: &G1,
) -> Result<bool, String>
where
    G1: PartialEq,
    FX: TippMippAdapterPrimitive<F, G1, G2, GT, ABT, CT>,
{
    let value = effect.msm_inner_product(messages, scalars)?;
    Ok(value == *commitment)
}

struct ArkworksTippMippEffect<'a, P: Pairing, D: Digest + Send + Sync, S: ChallengeTraceSink> {
    context: &'a ChallengeContext,
    trace: &'a mut S,
    accepted_trace: ShippingAcceptedTippMippChallengeTrace<P::ScalarField>,
    _pairing: PhantomData<fn() -> P>,
    _digest: PhantomData<fn() -> D>,
}

impl<'a, P: Pairing, D: Digest + Send + Sync, S: ChallengeTraceSink>
    TippMippAdapterPrimitive<
        P::ScalarField,
        P::G1,
        P::G2,
        PairingOutput<P>,
        PairingOutput<P>,
        P::G1,
    > for ArkworksTippMippEffect<'a, P, D, S>
{
    fn serialize_f(&mut self, value: &P::ScalarField, output: &mut Vec<u8>) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_g1(&mut self, value: &P::G1, output: &mut Vec<u8>) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_g2(&mut self, value: &P::G2, output: &mut Vec<u8>) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_gt(
        &mut self,
        value: &PairingOutput<P>,
        output: &mut Vec<u8>,
    ) -> Result<(), String> {
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_abt(
        &mut self,
        value: &PairingOutput<P>,
        output: &mut Vec<u8>,
    ) -> Result<(), String> {
        1u64.serialize_uncompressed(&mut *output)
            .map_err(|error| error.to_string())?;
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn serialize_ct(&mut self, value: &P::G1, output: &mut Vec<u8>) -> Result<(), String> {
        1u64.serialize_uncompressed(&mut *output)
            .map_err(|error| error.to_string())?;
        value
            .serialize_uncompressed(output)
            .map_err(|error| error.to_string())
    }

    fn derive_challenge(
        &mut self,
        stage: TippMippChallengeStage,
        messages: &[u8],
    ) -> Result<P::ScalarField, String> {
        let stage_label = tipp_mipp_challenge_stage_label(stage);
        let sample = derive_scalar_challenge_sample::<P, D, S>(
            self.context,
            self.trace,
            stage_label,
            messages,
        )
        .map_err(|error| error.to_string())?;
        let value = sample.value.clone();
        let call = ShippingAcceptedChallengeCall {
            accepted_nonce: sample.accepted_nonce,
            message: messages.to_vec(),
            value: sample.value,
        };
        match stage {
            TippMippChallengeStage::X0 => self.accepted_trace.x0 = Some(call),
            TippMippChallengeStage::Round => self.accepted_trace.rounds_chrono.push(call),
            TippMippChallengeStage::FinalBridge => {
                self.accepted_trace.final_bridge = Some(call);
            }
            TippMippChallengeStage::Kzg => self.accepted_trace.kzg = Some(call),
        }
        Ok(value)
    }

    fn inverse(&self, value: &P::ScalarField) -> Option<P::ScalarField> {
        value.inverse()
    }

    fn pairing_inner_product(
        &self,
        left: &[P::G1],
        right: &[P::G2],
    ) -> Result<PairingOutput<P>, String> {
        PairingInnerProduct::<P>::inner_product(left, right).map_err(|error| error.to_string())
    }

    fn msm_inner_product(
        &self,
        messages: &[P::G1],
        scalars: &[P::ScalarField],
    ) -> Result<P::G1, String> {
        MultiexponentiationInnerProduct::<P::G1>::inner_product(messages, scalars)
            .map_err(|error| error.to_string())
    }
}

impl<'a, P: Pairing, D: Digest + Send + Sync, S: ChallengeTraceSink>
    BaseCommitmentEffect<
        P::G2,
        P::G1,
        (),
        P::G1,
        P::G2,
        PairingOutput<P>,
        PairingOutput<P>,
        PairingOutput<P>,
        PairingOutput<P>,
        String,
    > for ArkworksTippMippEffect<'a, P, D, S>
{
    fn inner_product(
        &self,
        left: &[P::G1],
        right: &[P::G2],
    ) -> BaseCommitmentResult<PairingOutput<P>, String> {
        arkworks_tipp_inner_product_adapter_core(self, left, right)
    }

    fn verify_left(
        &self,
        keys: &[P::G2],
        messages: &[P::G1],
        commitment: &PairingOutput<P>,
    ) -> BaseCommitmentResult<bool, String> {
        match arkworks_tipp_pairing_check_adapter_core(self, messages, keys, commitment) {
            Ok(value) => BaseCommitmentResult::Ok(value),
            Err(error) => BaseCommitmentResult::Err(error),
        }
    }

    fn verify_right(
        &self,
        keys: &[P::G1],
        messages: &[P::G2],
        commitment: &PairingOutput<P>,
    ) -> BaseCommitmentResult<bool, String> {
        match arkworks_tipp_pairing_check_adapter_core(self, keys, messages, commitment) {
            Ok(value) => BaseCommitmentResult::Ok(value),
            Err(error) => BaseCommitmentResult::Err(error),
        }
    }

    fn verify_target(
        &self,
        _keys: &[()],
        messages: &[PairingOutput<P>],
        commitment: &PairingOutput<P>,
    ) -> BaseCommitmentResult<bool, String> {
        BaseCommitmentResult::Ok(arkworks_tipp_target_check_adapter_core(
            messages, commitment,
        ))
    }
}

impl<'a, P: Pairing, D: Digest + Send + Sync, S: ChallengeTraceSink>
    TippMippEffect<P::ScalarField, P::G1, P::G2, PairingOutput<P>, PairingOutput<P>, P::G1, String>
    for ArkworksTippMippEffect<'a, P, D, S>
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
        arkworks_tipp_x0_adapter_core(self, r, com_a, com_b, com_c, ip_ab, agg_c)
    }

    fn derive_round(
        &mut self,
        prior_raw_challenge: &P::ScalarField,
        left: &TippMippCoreCommitment<PairingOutput<P>, PairingOutput<P>, P::G1>,
        right: &TippMippCoreCommitment<PairingOutput<P>, PairingOutput<P>, P::G1>,
    ) -> Result<P::ScalarField, String> {
        arkworks_tipp_round_adapter_core(self, prior_raw_challenge, left, right)
    }

    fn invert_round(&self, challenge: &P::ScalarField) -> Result<P::ScalarField, String> {
        match arkworks_tipp_inverse_adapter_core(self, challenge) {
            Some(inverse) => Ok(inverse),
            None => Err("round challenge must be non-zero".to_owned()),
        }
    }

    fn derive_final_bridge(
        &mut self,
        last_raw_challenge: &P::ScalarField,
        final_ck: &(P::G2, P::G1),
        final_messages: &(P::G1, P::G2, P::G1),
    ) -> Result<P::ScalarField, String> {
        arkworks_tipp_final_bridge_adapter_core(self, last_raw_challenge, final_ck, final_messages)
    }

    fn derive_kzg(
        &mut self,
        final_bridge: &P::ScalarField,
        final_ck: &(P::G2, P::G1),
    ) -> Result<P::ScalarField, String> {
        arkworks_tipp_kzg_adapter_core(self, final_bridge, final_ck)
    }

    fn invert_randomizer(&self, randomizer: &P::ScalarField) -> Result<P::ScalarField, String> {
        match arkworks_tipp_inverse_adapter_core(self, randomizer) {
            Some(inverse) => Ok(inverse),
            None => Err("randomizer must be non-zero before inversion".to_owned()),
        }
    }

    fn verify_c(
        &self,
        messages: &[P::G1],
        keys: &[P::G2],
        commitment: &PairingOutput<P>,
    ) -> Result<bool, String> {
        arkworks_tipp_pairing_check_adapter_core(self, messages, keys, commitment)
    }

    fn verify_z(
        &self,
        messages: &[P::G1],
        scalars: &[P::ScalarField],
        commitment: &P::G1,
    ) -> Result<bool, String> {
        arkworks_tipp_msm_check_adapter_core(self, messages, scalars, commitment)
    }
}

#[cfg(not(feature = "bench-baseline"))]
impl<'a, P: Pairing, D: Digest + Send + Sync, S: ChallengeTraceSink>
    ShippingAcceptedTraceEffect<P::ScalarField> for ArkworksTippMippEffect<'a, P, D, S>
{
    fn into_accepted_trace(self) -> ShippingAcceptedTippMippChallengeTrace<P::ScalarField> {
        self.accepted_trace
    }
}

#[cfg(feature = "bench-baseline")]
fn verify_validated_tipp_mipp_buffered_profiled<P, D>(
    context: &ChallengeContext,
    ip_verifier_srs: &VerifierSRS<P>,
    proof: &ValidatedAggregateProof<P, D>,
    r: &P::ScalarField,
) -> Result<(bool, BufferedChallengeTraceSink, f64), String>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let mut trace = BufferedChallengeTraceSink::default();
    let started = Instant::now();
    let input = shipping_tipp_mipp_core_input(ip_verifier_srs, proof, r, P::ScalarField::one());
    let mut effect = ArkworksTippMippEffect::<P, D, _> {
        context,
        trace: &mut trace,
        accepted_trace: empty_accepted_tipp_mipp_trace(),
        _pairing: PhantomData,
        _digest: PhantomData,
    };
    let valid = verify_tipp_mipp_core(input, &mut effect, &ArkworksPairingEffect::<P>::default())?;
    Ok((valid, trace, started.elapsed().as_secs_f64() * 1000.0))
}

#[cfg(feature = "bench-baseline")]
fn verify_validated_public_inputs_ppe_profiled<P, D>(
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
    r: &P::ScalarField,
) -> (bool, f64, f64)
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let public_input_fold_started = Instant::now();
    let (r_sum, g_ic) = fold_public_inputs::<P>(&pvk.vk, public_inputs, r);
    let public_input_fold_ms = public_input_fold_started.elapsed().as_secs_f64() * 1000.0;

    let ppe_started = Instant::now();
    let ppe_valid =
        verify_ppe_baseline_values::<P>(&pvk.vk, &proof.agg_c, &proof.ip_ab, &r_sum, g_ic);
    let ppe_ms = ppe_started.elapsed().as_secs_f64() * 1000.0;

    (ppe_valid, public_input_fold_ms, ppe_ms)
}

#[cfg(feature = "bench-baseline")]
fn verify_validated_combined_checks_profiled<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
    r: &P::ScalarField,
) -> Result<((bool, bool), (f64, f64, f64)), Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let num_proofs = public_inputs.len();
    if num_proofs == 0 || !num_proofs.is_power_of_two() {
        return Err(Box::new(std::io::Error::new(
            std::io::ErrorKind::InvalidInput,
            "padded proof count must be a nonzero power of two",
        )));
    }
    let expected_rounds = num_proofs.trailing_zeros() as usize;
    let actual_rounds = proof.tipp_mipp_proof.gipa_proof.len();
    if actual_rounds != expected_rounds {
        return Err(Box::new(std::io::Error::new(
            std::io::ErrorKind::InvalidInput,
            format!(
                "combined GIPA round count {actual_rounds} does not match log2(proof count) {expected_rounds}"
            ),
        )));
    }

    let tipp_mipp_result =
        verify_validated_tipp_mipp_buffered_profiled::<P, D>(context, ip_verifier_srs, proof, r);
    let ppe_result =
        verify_validated_public_inputs_ppe_profiled::<P, D>(pvk, public_inputs, proof, r);
    let (tipp_mipp_valid, tipp_mipp_trace, tipp_mipp_ms) =
        tipp_mipp_result.map_err(|err: String| std::io::Error::other(err))?;
    let (ppe_valid, public_input_fold_ms, ppe_ms) = ppe_result;

    tipp_mipp_trace.replay_into(trace);
    Ok((
        (tipp_mipp_valid, ppe_valid),
        (tipp_mipp_ms, public_input_fold_ms, ppe_ms),
    ))
}

#[cfg(all(test, not(feature = "bench-baseline")))]
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
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    // Timings are observational; the extracted core below returns only the
    // two verifier results and the buffered TIPP/MIPP effect state.
    let started = Instant::now();
    let input = combined_checks_core_input::<P, D>(pvk, public_inputs, proof, r, ip_verifier_srs)?;
    let mut tipp_trace = BufferedChallengeTraceSink::default();
    let effect = ArkworksTippMippEffect::<P, D, _> {
        context,
        trace: &mut tipp_trace,
        accepted_trace: empty_accepted_tipp_mipp_trace(),
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
        ..
    } = output;
    drop(tipp_mipp_effect);
    tipp_trace.replay_into(trace);
    let core_ms = started.elapsed().as_secs_f64() * 1000.0;
    Ok((checks, (core_ms, 0.0, 0.0)))
}

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub struct AggregateProofData<
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
> {
    com_a: GT,
    com_b: GT,
    com_c: GT,
    ip_ab: GT,
    agg_c: G1,
    tipp_mipp_proof: TippMippProofData<G1, G2, GT, ABT, CT, D>,
}

pub type AggregateProof<P, D> = AggregateProofData<
    <P as Pairing>::G1,
    <P as Pairing>::G2,
    PairingOutput<P>,
    IdentityOutput<PairingOutput<P>>,
    IdentityOutput<<P as Pairing>::G1>,
    D,
>;

fn aggregate_proof_from_parts<G1, G2, GT, ABT, CT, D>(
    com_a: GT,
    com_b: GT,
    com_c: GT,
    ip_ab: GT,
    agg_c: G1,
    tipp_mipp_proof: TippMippProofData<G1, G2, GT, ABT, CT, D>,
) -> AggregateProofData<G1, G2, GT, ABT, CT, D>
where
    G1: CanonicalSerialize + CanonicalDeserialize,
    G2: CanonicalSerialize + CanonicalDeserialize,
    GT: CanonicalSerialize + CanonicalDeserialize,
    ABT: CanonicalSerialize + CanonicalDeserialize,
    CT: CanonicalSerialize + CanonicalDeserialize,
    D: Send + Sync,
{
    AggregateProofData {
        com_a,
        com_b,
        com_c,
        ip_ab,
        agg_c,
        tipp_mipp_proof,
    }
}

/// Internal post-decode representation of a v1 aggregate proof.
///
/// Construction is restricted to `validate_aggregate_proof`, which projects
/// every wire-level identity commitment to its required singleton scalar.
#[doc(hidden)]
pub struct ValidatedAggregateProofData<G1, G2, GT, D> {
    com_a: GT,
    com_b: GT,
    com_c: GT,
    ip_ab: GT,
    agg_c: G1,
    tipp_mipp_proof: TippMippCoreProof<G1, G2, GT, GT, G1>,
    _digest: PhantomData<D>,
}

#[doc(hidden)]
pub type ValidatedAggregateProof<P, D> =
    ValidatedAggregateProofData<<P as Pairing>::G1, <P as Pairing>::G2, PairingOutput<P>, D>;

#[derive(Clone, Debug, Default)]
pub struct AggregateProofVerificationProfile {
    pub challenge_ms: f64,
    pub tipp_mipp_ms: f64,
    pub public_input_fold_ms: f64,
    pub ppe_ms: f64,
    pub core_total_ms: f64,
    pub accepted: bool,
}

/// Runtime profile paired with the semantic execution from which it was built.
#[cfg(not(feature = "bench-baseline"))]
struct ShippingVerifierProfiledSemanticExecution<I, F, TX> {
    profile: AggregateProofVerificationProfile,
    execution: ShippingVerifierSemanticExecution<I, F, TX>,
}

/// Exact semantic execution tagged with the full production call identity.
///
/// This value crosses the opaque shipping ownership boundary without erasing
/// the adapter input, accepted typed challenge calls, checks, TIPP output, or
/// initial and final effect states. The public byte observation is derived
/// from this retained execution.
#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)] // Retained fields are consumed by the generated formal projection.
struct ShippingVerifierObservedExecution<I, F, TX> {
    call_id: AppVerifyCallId,
    execution: ShippingVerifierSemanticExecution<I, F, TX>,
}

/// First-order observation derived from the retained shipping execution.
///
/// The challenge trace is in deployed call order: every randomizer attempt,
/// followed by the chronological TIPP/MIPP queries.
#[doc(hidden)]
#[derive(Clone, Debug, Eq, PartialEq)]
pub struct ShippingVerifierObservation {
    call_id: AppVerifyCallId,
    accepted: bool,
    challenge_context: ChallengeContext,
    challenge_trace_chronological: BufferedChallengeTraceSink,
}

impl ShippingVerifierObservation {
    #[doc(hidden)]
    pub fn call_id(&self) -> AppVerifyCallId {
        self.call_id
    }

    #[doc(hidden)]
    pub fn accepted(&self) -> bool {
        self.accepted
    }

    #[doc(hidden)]
    pub fn challenge_context(&self) -> &ChallengeContext {
        &self.challenge_context
    }

    #[doc(hidden)]
    pub fn challenge_trace_chronological(&self) -> &[ChallengeTraceEntry] {
        &self.challenge_trace_chronological.records
    }
}

#[cfg(not(feature = "bench-baseline"))]
fn shipping_challenge_trace_concat_copy(
    first: &[ChallengeTraceEntry],
    second: &[ChallengeTraceEntry],
) -> Vec<ChallengeTraceEntry> {
    let mut records = Vec::new();
    for entry in first {
        records.push(entry.clone());
    }
    for entry in second {
        records.push(entry.clone());
    }
    records
}

/// Derive the public first-order observation by borrowing the retained exact
/// semantic execution.
///
/// The output has no Arkworks type parameter, trait object, timing value, or
/// shared-ownership primitive. Acceptance comes only from the retained
/// semantic execution.
#[cfg(not(feature = "bench-baseline"))]
fn shipping_verifier_observation_core<I, F, TX>(
    observed: &ShippingVerifierObservedExecution<I, F, TX>,
) -> ShippingVerifierObservation {
    let challenge_trace_chronological = BufferedChallengeTraceSink {
        records: shipping_challenge_trace_concat_copy(
            &observed
                .execution
                .final_effect_state
                .randomizer_trace
                .records,
            &observed
                .execution
                .final_effect_state
                .tipp_mipp_trace
                .records,
        ),
    };
    ShippingVerifierObservation {
        call_id: observed.call_id,
        accepted: observed.execution.semantic.accepted,
        challenge_context: observed.execution.final_effect_state.context.clone(),
        challenge_trace_chronological,
    }
}

/// Shared production payload containing both the exact semantic execution and
/// its deterministically derived public observation.
#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)] // Exact execution is consumed by the formal transport boundary.
struct SharedShippingVerifierObservedExecution<I, F, TX> {
    observed_execution: ShippingVerifierObservedExecution<I, F, TX>,
    observation: ShippingVerifierObservation,
}

/// Pair an exact observed execution with its derived first-order observation
/// before any shared-ownership transport.
#[cfg(not(feature = "bench-baseline"))]
fn shipping_verifier_shared_observed_execution_core<I, F, TX>(
    observed_execution: ShippingVerifierObservedExecution<I, F, TX>,
) -> SharedShippingVerifierObservedExecution<I, F, TX> {
    let observation = shipping_verifier_observation_core(&observed_execution);
    SharedShippingVerifierObservedExecution {
        observed_execution,
        observation,
    }
}

/// Opaque production ownership of the exact semantic execution/result pair.
///
/// Application and backend code can transport this value but cannot forge a
/// replacement acceptance bit or inspect retained execution state.
/// `bench-baseline` retains only its diagnostic observation and is outside the
/// shipping formal-verification claim.
#[doc(hidden)]
pub struct ShippingVerifierExecutionCarrier<P: Pairing> {
    #[cfg(not(feature = "bench-baseline"))]
    retained: Arc<ArkworksSharedShippingVerifierObservedExecution<P>>,
    #[cfg(feature = "bench-baseline")]
    retained: Arc<ShippingVerifierObservation>,
    _pairing: PhantomData<fn() -> P>,
}

impl<P: Pairing> Clone for ShippingVerifierExecutionCarrier<P> {
    fn clone(&self) -> Self {
        Self {
            retained: Arc::clone(&self.retained),
            _pairing: PhantomData,
        }
    }
}

impl<P: Pairing> fmt::Debug for ShippingVerifierExecutionCarrier<P> {
    fn fmt(&self, formatter: &mut fmt::Formatter<'_>) -> fmt::Result {
        formatter
            .debug_struct("ShippingVerifierExecutionCarrier")
            .finish_non_exhaustive()
    }
}

impl<P: Pairing> ShippingVerifierExecutionCarrier<P> {
    #[doc(hidden)]
    pub fn shipping_observation(&self) -> &ShippingVerifierObservation {
        #[cfg(not(feature = "bench-baseline"))]
        {
            &self.retained.observation
        }

        #[cfg(feature = "bench-baseline")]
        {
            self.retained.as_ref()
        }
    }
}

/// Shipping-only profiled result retaining the exact verifier execution.
#[doc(hidden)]
pub struct ShippingAggregateProofVerification<P: Pairing> {
    profile: AggregateProofVerificationProfile,
    backend_result: AppVerifyShippingBackendResult<ShippingVerifierExecutionCarrier<P>>,
}

impl<P: Pairing> ShippingAggregateProofVerification<P> {
    #[doc(hidden)]
    pub fn into_parts(
        self,
    ) -> (
        AggregateProofVerificationProfile,
        AppVerifyShippingBackendResult<ShippingVerifierExecutionCarrier<P>>,
    ) {
        (self.profile, self.backend_result)
    }
}

/// Remove the application result wrapper while retaining the exact verifier
/// carrier authenticated by it.
#[doc(hidden)]
pub fn shipping_verifier_executed_result_into_parts<P: Pairing>(
    executed: AppVerifyShippingExecutedResult<ShippingVerifierExecutionCarrier<P>>,
) -> (AppVerifyShippingResult, ShippingVerifierExecutionCarrier<P>) {
    let (shipping_result, backend_result) =
        app_verify_shipping_executed_result_into_parts(executed);
    let (carrier, _) = app_verify_shipping_backend_result_into_parts(backend_result);
    (shipping_result, carrier)
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
    D: Digest + Send + Sync,
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
    D: Digest + Send + Sync,
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
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let (proof, _) =
        aggregate_proofs_profiled_with_trace::<P, D, S>(context, trace, ip_srs, proofs)?;
    Ok(proof)
}

pub fn aggregate_proofs_profiled<P, D>(
    context: &ChallengeContext,
    ip_srs: &SRS<P>,
    proofs: &[Proof<P>],
) -> Result<(AggregateProof<P, D>, AggregateProofBuildProfile), Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
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
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let started = Instant::now();
    let mut profile = AggregateProofBuildProfile::default();

    let point_extract_started = Instant::now();
    let source_proofs = ordered_source_proofs_core(proofs);
    profile.point_extract_ms = point_extract_started.elapsed().as_secs_f64() * 1000.0;
    let a = &source_proofs.a;
    let b = &source_proofs.b;
    let c = &source_proofs.c;

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
        initial_commitments_profiled::<P>(a, b, c, ck_1, ck_2)?;
    profile.com_a_ms = com_a_ms;
    profile.com_b_ms = com_b_ms;
    profile.com_c_ms = com_c_ms;
    profile.commitment_ms = commitment_started.elapsed().as_secs_f64() * 1000.0;

    let randomizer_started = Instant::now();
    let randomizer_execution = {
        let mut effect = ArkworksProverRandomizerEffect::<P, D, S> {
            context,
            trace: &mut *trace,
            _pairing: PhantomData,
            _digest: PhantomData,
        };
        derive_prover_randomizer_core(&com_a, &com_b, &com_c, &mut effect)
            .map_err(prover_randomizer_core_error)?
    };
    let r = randomizer_execution.randomizer.clone();
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
    let ip_ab = PairingInnerProduct::<P>::inner_product(a, &b_r)?;
    profile.ip_ab_ms = ip_ab_started.elapsed().as_secs_f64() * 1000.0;

    let agg_c_started = Instant::now();
    let agg_c = MultiexponentiationInnerProduct::<P::G1>::inner_product(c, &r_vec)?;
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

    let (prover_execution, tipp_mipp_profile, tipp_mipp_trace, tipp_mipp_ms) =
        prove_tipp_mipp_buffered_profiled::<P, D>(
            context,
            &prepared_srs,
            a,
            &b_r,
            c,
            &r_vec,
            ck_1,
            &ck_2_r_inv,
            &r,
            (&com_a, &com_b, &com_c),
            &ip_ab,
            &agg_c,
        )?;
    profile.tipp_mipp_ms = tipp_mipp_ms;
    apply_tipp_mipp_profile(&mut profile, &tipp_mipp_profile);
    apply_pairing_profile(&mut profile, &pairing_profile_snapshot());
    let execution = shipping_aggregate_prover_semantic_execution_from_parts(
        source_proofs,
        &ip_srs.g_alpha_powers,
        &ip_srs.h_beta_powers,
        prepared_srs.g_alpha_powers_affine(),
        prepared_srs.h_beta_powers_affine(),
        ck_1,
        ck_2,
        (com_a, com_b, com_c),
        randomizer_execution,
        prover_execution,
    );
    tipp_mipp_trace.replay_into(trace);
    let proof = shipping_aggregate_prover_semantic_returned_proof(execution);
    profile.total_ms = started.elapsed().as_secs_f64() * 1000.0;
    Ok((proof, profile))
}

#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)] // Retained state is consumed by the generated formal projection.
struct ShippingVerifierEffectState {
    context: ChallengeContext,
    randomizer_trace: BufferedChallengeTraceSink,
    tipp_mipp_trace: BufferedChallengeTraceSink,
}

#[cfg(not(feature = "bench-baseline"))]
fn shipping_verifier_effect_state_from_parts(
    context: ChallengeContext,
    randomizer_trace: BufferedChallengeTraceSink,
    tipp_mipp_trace: BufferedChallengeTraceSink,
) -> ShippingVerifierEffectState {
    ShippingVerifierEffectState {
        context,
        randomizer_trace,
        tipp_mipp_trace,
    }
}

#[cfg(not(feature = "bench-baseline"))]
type ArkworksShippingAdapterSemanticExecution<P> = ShippingAdapterSemanticExecution<
    AggregateAdapterCoreInput<
        <P as Pairing>::ScalarField,
        <P as Pairing>::G1,
        <P as Pairing>::G2,
        <P as Pairing>::G2Prepared,
        PairingOutput<P>,
        PairingOutput<P>,
        <P as Pairing>::G1,
    >,
    <P as Pairing>::ScalarField,
    TippMippCoreOutput<
        <P as Pairing>::ScalarField,
        PairingOutput<P>,
        PairingOutput<P>,
        <P as Pairing>::G1,
    >,
>;

/// Run the exact four Arkworks effects installed by the shipping verifier.
///
/// The returned value owns only acceptance-relevant state. Trace storage and
/// timing stay behind caller-owned effects and cannot escape into this record.
#[cfg(not(feature = "bench-baseline"))]
fn run_arkworks_adapter_semantic<P, D, RS, TS, TM>(
    input: AggregateAdapterCoreInput<
        P::ScalarField,
        P::G1,
        P::G2,
        P::G2Prepared,
        PairingOutput<P>,
        PairingOutput<P>,
        P::G1,
    >,
    context: &ChallengeContext,
    randomizer_trace: &mut RS,
    tipp_mipp_trace: &mut TS,
    timing: &mut TM,
) -> Result<ArkworksShippingAdapterSemanticExecution<P>, AggregateAdapterCoreError<String>>
where
    P: Pairing,
    D: Digest + Send + Sync,
    RS: ChallengeTraceSink,
    TS: ChallengeTraceSink + Send,
    TM: AggregateRandomizerTiming,
{
    let effects = aggregate_adapter_effects_from_parts(
        ArkworksAggregateRandomizerEffect::<P, D, _, _> {
            context,
            trace: randomizer_trace,
            timing,
            _pairing: PhantomData,
            _digest: PhantomData,
        },
        ArkworksTippMippEffect::<P, D, _> {
            context,
            trace: tipp_mipp_trace,
            accepted_trace: empty_accepted_tipp_mipp_trace(),
            _pairing: PhantomData,
            _digest: PhantomData,
        },
        ArkworksPairingEffect::<P>::default(),
        ArkworksPreparedPairingEffect::<P>::default(),
    );
    verify_shipping_adapter_semantic_execution_core(input, effects)
}

/// Acceptance-relevant verifier state retained around the semantic adapter.
///
/// Profile timing remains in the runtime caller. The two effect states retain
/// the exact context and trace chronology needed to connect that call to the
/// deployed challenge game.
#[cfg(not(feature = "bench-baseline"))]
#[allow(dead_code)] // Effect states are consumed by the generated formal projection.
struct ShippingVerifierSemanticExecution<I, F, TX> {
    semantic: ShippingAdapterSemanticExecution<I, F, TX>,
    initial_effect_state: ShippingVerifierEffectState,
    final_effect_state: ShippingVerifierEffectState,
}

#[cfg(not(feature = "bench-baseline"))]
fn shipping_verifier_semantic_execution_from_parts<I, F, TX>(
    semantic: ShippingAdapterSemanticExecution<I, F, TX>,
    initial_effect_state: ShippingVerifierEffectState,
    final_effect_state: ShippingVerifierEffectState,
) -> ShippingVerifierSemanticExecution<I, F, TX> {
    ShippingVerifierSemanticExecution {
        semantic,
        initial_effect_state,
        final_effect_state,
    }
}

/// Construct the verifier semantic envelope from the exact adapter result and
/// the two retained shipping traces surrounding that execution.
#[cfg(not(feature = "bench-baseline"))]
fn shipping_verifier_semantic_execution_with_traces_core<I, F, TX>(
    semantic: ShippingAdapterSemanticExecution<I, F, TX>,
    context: ChallengeContext,
    randomizer_trace: BufferedChallengeTraceSink,
    tipp_mipp_trace: BufferedChallengeTraceSink,
) -> ShippingVerifierSemanticExecution<I, F, TX> {
    let initial_effect_state = shipping_verifier_effect_state_from_parts(
        context.clone(),
        BufferedChallengeTraceSink::default(),
        BufferedChallengeTraceSink::default(),
    );
    let final_effect_state =
        shipping_verifier_effect_state_from_parts(context, randomizer_trace, tipp_mipp_trace);
    shipping_verifier_semantic_execution_from_parts(
        semantic,
        initial_effect_state,
        final_effect_state,
    )
}

/// First-order shipping result projection used by production before profiling
/// or opaque ownership transport.
///
/// This is the extraction root for the missing result inversion. It has no
/// Arkworks trait bound or runtime-only value, and the accepted bit is read
/// only from the exact semantic execution consumed into the result carrier.
#[cfg(not(feature = "bench-baseline"))]
fn shipping_verifier_semantic_backend_result_core<I, F, TX>(
    call_id: AppVerifyCallId,
    execution: ShippingVerifierSemanticExecution<I, F, TX>,
) -> AppVerifyShippingBackendResult<ShippingVerifierSemanticExecution<I, F, TX>> {
    let result = AppVerifyCallResult {
        id: call_id,
        accepted: execution.semantic.accepted,
    };
    app_verify_shipping_backend_result_from_parts(execution, result)
}

/// Tag one consumed semantic execution with the exact result before shared
/// ownership.
///
/// The retained execution receives the exact result identifier produced from
/// `call_id`, and the result bit comes from that same semantic execution.
#[cfg(not(feature = "bench-baseline"))]
fn shipping_verifier_observed_backend_result_core<I, F, TX>(
    call_id: AppVerifyCallId,
    execution: ShippingVerifierSemanticExecution<I, F, TX>,
) -> AppVerifyShippingBackendResult<ShippingVerifierObservedExecution<I, F, TX>> {
    let semantic_result = shipping_verifier_semantic_backend_result_core(call_id, execution);
    let (execution, result) = app_verify_shipping_backend_result_into_parts(semantic_result);
    let observed_execution = ShippingVerifierObservedExecution {
        call_id: result.id,
        execution,
    };
    app_verify_shipping_backend_result_from_parts(observed_execution, result)
}

#[cfg(feature = "bench-baseline")]
fn benchmark_shipping_verifier_backend_result_core(
    observation: ShippingVerifierObservation,
) -> AppVerifyShippingBackendResult<ShippingVerifierObservation> {
    let result = AppVerifyCallResult {
        id: observation.call_id,
        accepted: observation.accepted,
    };
    app_verify_shipping_backend_result_from_parts(observation, result)
}

#[cfg(not(feature = "bench-baseline"))]
type ArkworksShippingVerifierSemanticExecution<P> = ShippingVerifierSemanticExecution<
    AggregateAdapterCoreInput<
        <P as Pairing>::ScalarField,
        <P as Pairing>::G1,
        <P as Pairing>::G2,
        <P as Pairing>::G2Prepared,
        PairingOutput<P>,
        PairingOutput<P>,
        <P as Pairing>::G1,
    >,
    <P as Pairing>::ScalarField,
    TippMippCoreOutput<
        <P as Pairing>::ScalarField,
        PairingOutput<P>,
        PairingOutput<P>,
        <P as Pairing>::G1,
    >,
>;

#[cfg(not(feature = "bench-baseline"))]
type ArkworksShippingVerifierObservedExecution<P> = ShippingVerifierObservedExecution<
    AggregateAdapterCoreInput<
        <P as Pairing>::ScalarField,
        <P as Pairing>::G1,
        <P as Pairing>::G2,
        <P as Pairing>::G2Prepared,
        PairingOutput<P>,
        PairingOutput<P>,
        <P as Pairing>::G1,
    >,
    <P as Pairing>::ScalarField,
    TippMippCoreOutput<
        <P as Pairing>::ScalarField,
        PairingOutput<P>,
        PairingOutput<P>,
        <P as Pairing>::G1,
    >,
>;

#[cfg(not(feature = "bench-baseline"))]
type ArkworksSharedShippingVerifierObservedExecution<P> = SharedShippingVerifierObservedExecution<
    AggregateAdapterCoreInput<
        <P as Pairing>::ScalarField,
        <P as Pairing>::G1,
        <P as Pairing>::G2,
        <P as Pairing>::G2Prepared,
        PairingOutput<P>,
        PairingOutput<P>,
        <P as Pairing>::G1,
    >,
    <P as Pairing>::ScalarField,
    TippMippCoreOutput<
        <P as Pairing>::ScalarField,
        PairingOutput<P>,
        PairingOutput<P>,
        <P as Pairing>::G1,
    >,
>;

#[cfg(not(feature = "bench-baseline"))]
fn share_shipping_verifier_observed_execution<I, F, TX>(
    observed_execution: ShippingVerifierObservedExecution<I, F, TX>,
) -> Arc<SharedShippingVerifierObservedExecution<I, F, TX>> {
    Arc::new(shipping_verifier_shared_observed_execution_core(
        observed_execution,
    ))
}

#[cfg(not(feature = "bench-baseline"))]
fn shipping_verifier_execution_carrier_from_observed_execution<P: Pairing>(
    observed_execution: ArkworksShippingVerifierObservedExecution<P>,
) -> ShippingVerifierExecutionCarrier<P> {
    ShippingVerifierExecutionCarrier {
        retained: share_shipping_verifier_observed_execution(observed_execution),
        _pairing: PhantomData,
    }
}

#[cfg(feature = "bench-baseline")]
fn shipping_verifier_execution_carrier_from_observation<P: Pairing>(
    observation: ShippingVerifierObservation,
) -> ShippingVerifierExecutionCarrier<P> {
    ShippingVerifierExecutionCarrier {
        retained: Arc::new(observation),
        _pairing: PhantomData,
    }
}

#[cfg(not(feature = "bench-baseline"))]
fn retain_shipping_verifier_backend_result<P: Pairing>(
    observed: AppVerifyShippingBackendResult<ArkworksShippingVerifierObservedExecution<P>>,
) -> AppVerifyShippingBackendResult<ShippingVerifierExecutionCarrier<P>> {
    let (observed_execution, result) = app_verify_shipping_backend_result_into_parts(observed);
    let carrier = shipping_verifier_execution_carrier_from_observed_execution(observed_execution);
    app_verify_shipping_backend_result_from_parts(carrier, result)
}

#[cfg(feature = "bench-baseline")]
fn retain_shipping_verifier_backend_result<P: Pairing>(
    observed: AppVerifyShippingBackendResult<ShippingVerifierObservation>,
) -> AppVerifyShippingBackendResult<ShippingVerifierExecutionCarrier<P>> {
    let (observation, result) = app_verify_shipping_backend_result_into_parts(observed);
    let carrier = shipping_verifier_execution_carrier_from_observation(observation);
    app_verify_shipping_backend_result_from_parts(carrier, result)
}

/// Run one shipping verifier call and retain its exact semantic effect states.
///
/// The timing effect remains caller-owned, so the extracted result contains no
/// `Instant`, floating-point duration, or profile-only field.
#[cfg(not(feature = "bench-baseline"))]
fn run_shipping_verifier_semantic_core<P, D, S, TM>(
    input: AggregateAdapterCoreInput<
        P::ScalarField,
        P::G1,
        P::G2,
        P::G2Prepared,
        PairingOutput<P>,
        PairingOutput<P>,
        P::G1,
    >,
    context: &ChallengeContext,
    trace: &mut S,
    timing: &mut TM,
) -> Result<ArkworksShippingVerifierSemanticExecution<P>, AggregateAdapterCoreError<String>>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
    TM: AggregateRandomizerTiming,
{
    let mut randomizer_trace = BufferedChallengeTraceSink::default();
    let mut tipp_mipp_trace = BufferedChallengeTraceSink::default();
    let semantic = {
        let mut retained_randomizer_trace = RetainedChallengeTraceSink {
            downstream: trace,
            retained: &mut randomizer_trace,
        };
        run_arkworks_adapter_semantic::<P, D, _, _, _>(
            input,
            context,
            &mut retained_randomizer_trace,
            &mut tipp_mipp_trace,
            timing,
        )?
    };
    Ok(shipping_verifier_semantic_execution_with_traces_core(
        semantic,
        context.clone(),
        randomizer_trace,
        tipp_mipp_trace,
    ))
}

#[cfg(not(feature = "bench-baseline"))]
fn shipping_aggregate_verifier_profile_from_execution<I, F, TX, S>(
    execution: ShippingVerifierSemanticExecution<I, F, TX>,
    randomizer_ms: f64,
    trace: &mut S,
    started: Instant,
) -> ShippingVerifierProfiledSemanticExecution<I, F, TX>
where
    S: ChallengeTraceSink,
{
    execution
        .final_effect_state
        .tipp_mipp_trace
        .replay_into(trace);
    let core_total_ms = started.elapsed().as_secs_f64() * 1000.0;
    let profile = AggregateProofVerificationProfile {
        challenge_ms: randomizer_ms,
        tipp_mipp_ms: (core_total_ms - randomizer_ms).max(0.0),
        public_input_fold_ms: 0.0,
        ppe_ms: 0.0,
        core_total_ms,
        accepted: execution.semantic.accepted,
    };
    ShippingVerifierProfiledSemanticExecution { profile, execution }
}

#[cfg(not(feature = "bench-baseline"))]
fn verify_aggregate_proof_adapter_with_trace<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
) -> Result<
    ShippingVerifierProfiledSemanticExecution<
        AggregateAdapterCoreInput<
            P::ScalarField,
            P::G1,
            P::G2,
            P::G2Prepared,
            PairingOutput<P>,
            PairingOutput<P>,
            P::G1,
        >,
        P::ScalarField,
        TippMippCoreOutput<P::ScalarField, PairingOutput<P>, PairingOutput<P>, P::G1>,
    >,
    Error,
>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let started = Instant::now();

    let randomizer_message = validated_aggregate_randomizer_message(proof)?;
    // Construct the complete adapter input through the extraction root used
    // by the shipping-to-v1 refinement.
    let input = shipping_aggregate_adapter_core_input_validated::<P, D>(
        pvk,
        public_inputs,
        proof,
        &P::ScalarField::zero(),
        ip_verifier_srs,
        randomizer_message,
    );
    let mut timing = AggregateRandomizerProfileTiming::default();
    let execution =
        run_shipping_verifier_semantic_core::<P, D, _, _>(input, context, trace, &mut timing)
            .map_err(aggregate_adapter_core_error)?;
    Ok(shipping_aggregate_verifier_profile_from_execution(
        execution,
        timing.elapsed_ms,
        trace,
        started,
    ))
}

#[doc(hidden)]
pub fn verify_validated_aggregate_proof<P, D>(
    context: &ChallengeContext,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
) -> Result<bool, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let mut trace = NoopChallengeTraceSink;
    verify_validated_aggregate_proof_with_trace(
        context,
        &mut trace,
        ip_verifier_srs,
        pvk,
        public_inputs,
        proof,
    )
}

#[doc(hidden)]
pub fn verify_validated_aggregate_proof_with_trace<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
) -> Result<bool, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    #[cfg(not(feature = "bench-baseline"))]
    {
        return verify_aggregate_proof_adapter_with_trace(
            context,
            trace,
            ip_verifier_srs,
            pvk,
            public_inputs,
            proof,
        )
        .map(|execution| execution.profile.accepted);
    }

    #[cfg(feature = "bench-baseline")]
    {
        let r = derive_validated_randomizer::<P, D, S>(context, trace, proof)?;
        let ((tipp_mipp_valid, ppe_valid), _) = verify_validated_combined_checks_profiled::<P, D, S>(
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

pub fn verify_aggregate_proof<P, D>(
    context: &ChallengeContext,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>], //TODO: Should use ToConstraintField instead
    proof: &AggregateProof<P, D>,
) -> Result<bool, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
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
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let proof = validate_aggregate_proof(proof)?;
    verify_validated_aggregate_proof_with_trace(
        context,
        trace,
        ip_verifier_srs,
        pvk,
        public_inputs,
        &proof,
    )
}

#[doc(hidden)]
pub fn verify_validated_aggregate_proof_profiled<P, D>(
    context: &ChallengeContext,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
) -> Result<AggregateProofVerificationProfile, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let mut trace = NoopChallengeTraceSink;
    verify_validated_aggregate_proof_profiled_with_trace(
        context,
        &mut trace,
        ip_verifier_srs,
        pvk,
        public_inputs,
        proof,
    )
}

#[doc(hidden)]
pub fn verify_validated_aggregate_proof_profiled_with_trace<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
) -> Result<AggregateProofVerificationProfile, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    #[cfg(not(feature = "bench-baseline"))]
    {
        return verify_aggregate_proof_adapter_with_trace(
            context,
            trace,
            ip_verifier_srs,
            pvk,
            public_inputs,
            proof,
        )
        .map(|execution| execution.profile);
    }

    #[cfg(feature = "bench-baseline")]
    {
        let started = Instant::now();
        let challenge_started = Instant::now();
        let r = derive_validated_randomizer::<P, D, S>(context, trace, proof)?;
        let challenge_ms = challenge_started.elapsed().as_secs_f64() * 1000.0;

        let ((tipp_mipp_valid, ppe_valid), (tipp_mipp_ms, public_input_fold_ms, ppe_ms)) =
            verify_validated_combined_checks_profiled::<P, D, S>(
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
}

/// Shipping-only verifier entry retaining the exact semantic execution
/// consumed by the application. Its first-order observation is derived from
/// that retained value.
#[doc(hidden)]
pub fn verify_validated_aggregate_proof_shipping_profiled<P, D>(
    call_id: AppVerifyCallId,
    context: &ChallengeContext,
    ip_verifier_srs: &VerifierSRS<P>,
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
) -> Result<ShippingAggregateProofVerification<P>, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    #[cfg(not(feature = "bench-baseline"))]
    {
        let mut trace = NoopChallengeTraceSink;
        let execution = verify_aggregate_proof_adapter_with_trace(
            context,
            &mut trace,
            ip_verifier_srs,
            pvk,
            public_inputs,
            proof,
        )?;
        let observed = shipping_verifier_observed_backend_result_core(call_id, execution.execution);
        let backend_result = retain_shipping_verifier_backend_result::<P>(observed);
        let mut profile = execution.profile;
        profile.accepted = app_verify_shipping_backend_call_result(&backend_result).accepted;
        return Ok(ShippingAggregateProofVerification {
            profile,
            backend_result,
        });
    }

    #[cfg(feature = "bench-baseline")]
    {
        let mut challenge_trace = BufferedChallengeTraceSink::default();
        let mut profile = verify_validated_aggregate_proof_profiled_with_trace(
            context,
            &mut challenge_trace,
            ip_verifier_srs,
            pvk,
            public_inputs,
            proof,
        )?;
        let exact = benchmark_shipping_verifier_backend_result_core(ShippingVerifierObservation {
            call_id,
            accepted: profile.accepted,
            challenge_context: context.clone(),
            challenge_trace_chronological: challenge_trace,
        });
        let backend_result = retain_shipping_verifier_backend_result::<P>(exact);
        profile.accepted = app_verify_shipping_backend_call_result(&backend_result).accepted;
        Ok(ShippingAggregateProofVerification {
            profile,
            backend_result,
        })
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
    D: Digest + Send + Sync,
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
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let proof = validate_aggregate_proof(proof)?;
    verify_validated_aggregate_proof_profiled_with_trace(
        context,
        trace,
        ip_verifier_srs,
        pvk,
        public_inputs,
        &proof,
    )
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

#[cfg(feature = "bench-baseline")]
fn derive_validated_randomizer<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    proof: &ValidatedAggregateProof<P, D>,
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    derive_randomizer_with_message::<P, D, S, _>(context, trace, || {
        validated_aggregate_randomizer_message(proof)
    })
}

#[cfg(feature = "bench-baseline")]
fn derive_randomizer_with_message<P, D, S, M>(
    context: &ChallengeContext,
    trace: &mut S,
    mut message: M,
) -> Result<P::ScalarField, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
    M: FnMut() -> Result<Vec<u8>, Error>,
{
    sample_bounded_challenge::<_, Error, _>(|nonce| {
        let hash_input = message()?;
        // Reject the degenerate randomizers. r == 0 breaks inverse-power
        // rescaling; r == 1 collapses every position weight to 1, defeating
        // the inter-proof anti-mixing the randomizer exists to provide. Both
        // are negligible events under the deployed digest-to-field map; the
        // guard removes the cases from the soundness argument and matches
        // the verifier adapter.
        Ok(
            <P::ScalarField>::from_random_bytes(&challenge_digest::<D, _>(
                context,
                trace,
                b"aggregate.randomizer",
                nonce,
                &hash_input,
            ))
            .filter(randomizer_is_admissible),
        )
    })
}

/// Exact message bound by the aggregate randomizer challenge.
///
/// This is a production-used boundary: the three commitments are serialized
/// uncompressed in `com_a || com_b || com_c` order before stage/context/nonce
/// framing is applied by `challenge_digest`.
#[cfg(all(test, not(feature = "bench-baseline")))]
fn aggregate_randomizer_message<P, D>(proof: &AggregateProof<P, D>) -> Result<Vec<u8>, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    aggregate_randomizer_message_from_commitments(&proof.com_a, &proof.com_b, &proof.com_c)
}

fn validated_aggregate_randomizer_message<P, D>(
    proof: &ValidatedAggregateProof<P, D>,
) -> Result<Vec<u8>, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    aggregate_randomizer_message_from_commitments(&proof.com_a, &proof.com_b, &proof.com_c)
}

fn aggregate_randomizer_message_from_commitments<GT>(
    com_a: &GT,
    com_b: &GT,
    com_c: &GT,
) -> Result<Vec<u8>, Error>
where
    GT: CanonicalSerialize,
{
    let mut message = Vec::new();
    com_a.serialize_uncompressed(&mut message)?;
    com_b.serialize_uncompressed(&mut message)?;
    com_c.serialize_uncompressed(&mut message)?;
    Ok(message)
}

#[cfg(not(feature = "bench-baseline"))]
#[derive(Default)]
struct AggregateRandomizerProfileTiming {
    started: Option<Instant>,
    elapsed_ms: f64,
}

#[cfg(not(feature = "bench-baseline"))]
impl AggregateRandomizerTiming for AggregateRandomizerProfileTiming {
    fn begin(&mut self) {
        self.started = Some(Instant::now());
    }

    fn end(&mut self) {
        if let Some(started) = self.started.take() {
            self.elapsed_ms += started.elapsed().as_secs_f64() * 1000.0;
        }
    }
}

#[cfg(not(feature = "bench-baseline"))]
struct ArkworksAggregateRandomizerEffect<'a, P, D, S, T>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
    T: AggregateRandomizerTiming,
{
    context: &'a ChallengeContext,
    trace: &'a mut S,
    timing: &'a mut T,
    _pairing: PhantomData<P>,
    _digest: PhantomData<D>,
}

#[cfg(not(feature = "bench-baseline"))]
impl<P, D, S, T> AggregateRandomizerEffect<P::ScalarField, String>
    for ArkworksAggregateRandomizerEffect<'_, P, D, S, T>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
    T: AggregateRandomizerTiming,
{
    fn derive_randomizer(
        &mut self,
        nonce: u64,
        randomizer_message: &[u8],
    ) -> Result<Option<P::ScalarField>, String> {
        self.timing.begin();
        let candidate = P::ScalarField::from_random_bytes(&challenge_digest::<D, _>(
            self.context,
            self.trace,
            b"aggregate.randomizer",
            nonce,
            randomizer_message,
        ));
        self.timing.end();
        Ok(candidate)
    }
}

#[doc(hidden)]
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct AggregateProofShapeError {
    round_index: usize,
    side: usize,
    component: usize,
    actual_len: usize,
}

impl std::fmt::Display for AggregateProofShapeError {
    fn fmt(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let side = if self.side == 0 { "left" } else { "right" };
        let component = if self.component == 0 {
            "AB target"
        } else {
            "C target"
        };
        write!(
            formatter,
            "GIPA round {} {side} {component} identity output must contain exactly one element; got {}",
            self.round_index, self.actual_len
        )
    }
}

impl std::error::Error for AggregateProofShapeError {}

fn project_identity_output<T>(
    output: &IdentityOutput<T>,
    round_index: usize,
    side: usize,
    component: usize,
) -> Result<T, AggregateProofShapeError>
where
    T: CanonicalSerialize + CanonicalDeserialize + Clone + Default + Eq,
{
    if output.0.len() != 1 {
        return Err(AggregateProofShapeError {
            round_index,
            side,
            component,
            actual_len: output.0.len(),
        });
    }
    Ok(output.0[0].clone())
}

fn shipping_tipp_mipp_core_proof<G1, G2, GT, D>(
    proof: &AggregateProofData<G1, G2, GT, IdentityOutput<GT>, IdentityOutput<G1>, D>,
) -> Result<TippMippCoreProof<G1, G2, GT, GT, G1>, AggregateProofShapeError>
where
    G1: CanonicalSerialize + CanonicalDeserialize + Clone + Default + Eq,
    G2: CanonicalSerialize + CanonicalDeserialize + Clone,
    GT: CanonicalSerialize + CanonicalDeserialize + Clone + Default + Eq,
    D: Send + Sync,
{
    let steps = &proof.tipp_mipp_proof.gipa_proof.r_commitment_steps;
    let mut gipa_proof = Vec::with_capacity(steps.len());
    let mut index = 0usize;
    while index < steps.len() {
        let (left, right) = &steps[index];
        gipa_proof.push((
            TippMippCoreCommitment {
                ab: (
                    left.ab.0.clone(),
                    left.ab.1.clone(),
                    project_identity_output(&left.ab.2, index, 0, 0)?,
                ),
                c: (
                    left.c.0.clone(),
                    project_identity_output(&left.c.1, index, 0, 1)?,
                ),
            },
            TippMippCoreCommitment {
                ab: (
                    right.ab.0.clone(),
                    right.ab.1.clone(),
                    project_identity_output(&right.ab.2, index, 1, 0)?,
                ),
                c: (
                    right.c.0.clone(),
                    project_identity_output(&right.c.1, index, 1, 1)?,
                ),
            },
        ));
        index += 1;
    }
    let tipp_mipp = &proof.tipp_mipp_proof;
    Ok(TippMippCoreProof {
        gipa_proof,
        final_ck: tipp_mipp.final_ck.clone(),
        final_ck_proofs: tipp_mipp.final_ck_proofs.clone(),
        final_messages: tipp_mipp.final_messages.clone(),
    })
}

pub(crate) fn validate_aggregate_proof_data<G1, G2, GT, D>(
    proof: &AggregateProofData<G1, G2, GT, IdentityOutput<GT>, IdentityOutput<G1>, D>,
) -> Result<ValidatedAggregateProofData<G1, G2, GT, D>, AggregateProofShapeError>
where
    G1: CanonicalSerialize + CanonicalDeserialize + Clone + Default + Eq,
    G2: CanonicalSerialize + CanonicalDeserialize + Clone,
    GT: CanonicalSerialize + CanonicalDeserialize + Clone + Default + Eq,
    D: Send + Sync,
{
    Ok(ValidatedAggregateProofData {
        com_a: proof.com_a.clone(),
        com_b: proof.com_b.clone(),
        com_c: proof.com_c.clone(),
        ip_ab: proof.ip_ab.clone(),
        agg_c: proof.agg_c.clone(),
        tipp_mipp_proof: shipping_tipp_mipp_core_proof(proof)?,
        _digest: PhantomData,
    })
}

#[doc(hidden)]
pub fn validate_aggregate_proof<P, D>(
    proof: &AggregateProof<P, D>,
) -> Result<ValidatedAggregateProof<P, D>, AggregateProofShapeError>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    validate_aggregate_proof_data(proof)
}

fn shipping_tipp_mipp_core_input<F, G1, G2, GT, D>(
    ip_verifier_srs: &VerifierSRSData<G1, G2>,
    proof: &ValidatedAggregateProofData<G1, G2, GT, D>,
    r: &F,
    one: F,
) -> TippMippCoreInput<F, G1, G2, GT, GT, G1>
where
    F: Clone,
    G1: CanonicalSerialize + CanonicalDeserialize + Clone,
    G2: CanonicalSerialize + CanonicalDeserialize + Clone,
    GT: Clone,
    D: Send + Sync,
{
    tipp_mipp_core_input_from_parts(TippMippCoreInputParts {
        com_a: proof.com_a.clone(),
        com_b: proof.com_b.clone(),
        com_t: proof.ip_ab.clone(),
        com_c: proof.com_c.clone(),
        com_z: proof.agg_c.clone(),
        ip_ab: proof.ip_ab.clone(),
        agg_c: proof.agg_c.clone(),
        proof: proof.tipp_mipp_proof.clone(),
        verifier_g: ip_verifier_srs.g.clone(),
        verifier_g_beta: ip_verifier_srs.g_beta.clone(),
        verifier_h: ip_verifier_srs.h.clone(),
        verifier_h_alpha: ip_verifier_srs.h_alpha.clone(),
        r: r.clone(),
        kzg_g2_r_shift: one,
    })
}

/// Pure, extraction-friendly construction of the complete shipping verifier
/// input after strict aggregate-proof validation.
#[cfg(not(feature = "bench-baseline"))]
fn shipping_aggregate_adapter_core_input<F, G1, G2, G2Prepared, GT, D>(
    randomizer_message: Vec<u8>,
    ip_verifier_srs: &VerifierSRSData<G1, G2>,
    proof: &ValidatedAggregateProofData<G1, G2, GT, D>,
    gamma_abc_g1: Vec<G1>,
    public_inputs: Vec<Vec<F>>,
    r: &F,
    one: F,
    alpha_beta: GT,
    gamma_g2_neg_pc: G2Prepared,
    delta_g2_neg_pc: G2Prepared,
) -> AggregateAdapterCoreInput<F, G1, G2, G2Prepared, GT, GT, G1>
where
    F: Clone,
    G1: CanonicalSerialize + CanonicalDeserialize + Clone,
    G2: CanonicalSerialize + CanonicalDeserialize + Clone,
    GT: Clone,
    D: Send + Sync,
{
    let combined = combined_checks_core_input_from_parts(CombinedChecksCoreInputParts {
        tipp_mipp: shipping_tipp_mipp_core_input(ip_verifier_srs, proof, r, one),
        gamma_abc_g1,
        public_inputs,
        r: r.clone(),
        alpha_beta,
        agg_c: proof.agg_c.clone(),
        gamma_g2_neg_pc,
        delta_g2_neg_pc,
        ip_ab: proof.ip_ab.clone(),
    });
    aggregate_adapter_core_input_from_parts(randomizer_message, combined)
}

#[cfg(not(feature = "bench-baseline"))]
fn shipping_aggregate_adapter_core_input_validated<P, D>(
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
    r: &P::ScalarField,
    ip_verifier_srs: &VerifierSRS<P>,
    randomizer_message: Vec<u8>,
) -> AggregateAdapterCoreInput<
    P::ScalarField,
    P::G1,
    P::G2,
    P::G2Prepared,
    PairingOutput<P>,
    PairingOutput<P>,
    P::G1,
>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let gamma_abc_g1 = pvk
        .vk
        .gamma_abc_g1
        .iter()
        .map(|base| P::G1::from(*base))
        .collect();
    shipping_aggregate_adapter_core_input(
        randomizer_message,
        ip_verifier_srs,
        proof,
        gamma_abc_g1,
        public_inputs.to_vec(),
        r,
        P::ScalarField::one(),
        PairingOutput::<P>(pvk.alpha_g1_beta_g2),
        pvk.gamma_g2_neg_pc.clone(),
        pvk.delta_g2_neg_pc.clone(),
    )
}

#[cfg(test)]
fn tipp_mipp_core_input<P, D>(
    ip_verifier_srs: &VerifierSRS<P>,
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
) -> Result<
    TippMippCoreInput<P::ScalarField, P::G1, P::G2, PairingOutput<P>, PairingOutput<P>, P::G1>,
    AggregateProofShapeError,
>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let proof = validate_aggregate_proof(proof)?;
    Ok(shipping_tipp_mipp_core_input(
        ip_verifier_srs,
        &proof,
        r,
        P::ScalarField::one(),
    ))
}

#[cfg(all(test, not(feature = "bench-baseline")))]
fn combined_checks_core_input_validated<P, D>(
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &ValidatedAggregateProof<P, D>,
    r: &P::ScalarField,
    ip_verifier_srs: &VerifierSRS<P>,
) -> CombinedChecksCoreInput<
    P::ScalarField,
    P::G1,
    P::G2,
    P::G2Prepared,
    PairingOutput<P>,
    PairingOutput<P>,
    P::G1,
>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let gamma_abc_g1 = pvk
        .vk
        .gamma_abc_g1
        .iter()
        .map(|base| P::G1::from(*base))
        .collect();
    combined_checks_core_input_from_parts(CombinedChecksCoreInputParts {
        tipp_mipp: shipping_tipp_mipp_core_input(ip_verifier_srs, proof, r, P::ScalarField::one()),
        gamma_abc_g1,
        public_inputs: public_inputs.to_vec(),
        r: r.clone(),
        alpha_beta: PairingOutput::<P>(pvk.alpha_g1_beta_g2),
        agg_c: proof.agg_c.clone(),
        gamma_g2_neg_pc: pvk.gamma_g2_neg_pc.clone(),
        delta_g2_neg_pc: pvk.delta_g2_neg_pc.clone(),
        ip_ab: proof.ip_ab.clone(),
    })
}

#[cfg(all(test, not(feature = "bench-baseline")))]
fn combined_checks_core_input<P, D>(
    pvk: &PreparedVerifyingKey<P>,
    public_inputs: &[Vec<P::ScalarField>],
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
    ip_verifier_srs: &VerifierSRS<P>,
) -> Result<
    CombinedChecksCoreInput<
        P::ScalarField,
        P::G1,
        P::G2,
        P::G2Prepared,
        PairingOutput<P>,
        PairingOutput<P>,
        P::G1,
    >,
    AggregateProofShapeError,
>
where
    P: Pairing,
    D: Digest + Send + Sync,
{
    let proof = validate_aggregate_proof(proof)?;
    Ok(combined_checks_core_input_validated(
        pvk,
        public_inputs,
        &proof,
        r,
        ip_verifier_srs,
    ))
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

#[cfg(not(feature = "bench-baseline"))]
fn aggregate_adapter_core_error(error: AggregateAdapterCoreError<String>) -> Error {
    match error {
        AggregateAdapterCoreError::RandomizerFailure(error) => {
            Box::new(std::io::Error::other(error))
        }
        AggregateAdapterCoreError::CombinedFailure(error) => combined_checks_core_error(error),
        AggregateAdapterCoreError::NonceExhausted => {
            Box::new(crate::challenge::ChallengeNonceExhausted)
        }
    }
}

#[cfg(test)]
fn verify_tipp_mipp<P, D, S>(
    context: &ChallengeContext,
    trace: &mut S,
    ip_verifier_srs: &VerifierSRS<P>,
    proof: &AggregateProof<P, D>,
    r: &P::ScalarField,
) -> Result<bool, Error>
where
    P: Pairing,
    D: Digest + Send + Sync,
    S: ChallengeTraceSink,
{
    let input = tipp_mipp_core_input(ip_verifier_srs, proof, r)?;
    let mut effect = ArkworksTippMippEffect::<P, D, S> {
        context,
        trace,
        accepted_trace: empty_accepted_tipp_mipp_trace(),
        _pairing: PhantomData,
        _digest: PhantomData,
    };
    verify_tipp_mipp_core(input, &mut effect, &ArkworksPairingEffect::<P>::default())
        .map_err(|error: String| Box::new(std::io::Error::other(error)) as Error)
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

#[cfg(any(test, feature = "bench-baseline"))]
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

#[cfg(all(test, not(feature = "bench-baseline")))]
fn verify_ppe<P: Pairing>(
    pvk: &PreparedVerifyingKey<P>,
    proof: &AggregateProof<P, impl Digest + Send + Sync>,
    r_sum: &P::ScalarField,
    g_ic: P::G1,
) -> bool {
    verify_ppe_core(
        PreparedPpeVerifierCoreInput {
            alpha_beta: PairingOutput::<P>(pvk.alpha_g1_beta_g2),
            r_sum: r_sum.clone(),
            g_ic,
            agg_c: proof.agg_c.clone(),
            gamma_g2_neg_pc: pvk.gamma_g2_neg_pc.clone(),
            delta_g2_neg_pc: pvk.delta_g2_neg_pc.clone(),
            ip_ab: proof.ip_ab.clone(),
        },
        &ArkworksPreparedPairingEffect::<P>::default(),
    )
}

/// Pre-optimization PPE form retained only for the `bench-baseline` A/B path.
#[cfg(feature = "bench-baseline")]
fn verify_ppe_baseline_values<P: Pairing>(
    vk: &VerifyingKey<P>,
    agg_c: &P::G1,
    ip_ab: &PairingOutput<P>,
    r_sum: &P::ScalarField,
    g_ic: P::G1,
) -> bool {
    cfg_multi_pairing::<P>(
        &[P::G1::from(vk.alpha_g1) * r_sum, g_ic, agg_c.clone()],
        &[
            P::G2::from(vk.beta_g2),
            P::G2::from(vk.gamma_g2),
            P::G2::from(vk.delta_g2),
        ],
    )
    .map(|pairing_output| pairing_output == *ip_ab)
    .unwrap_or(false)
}

#[cfg(test)]
mod tests {
    use super::*;
    #[cfg(not(feature = "bench-baseline"))]
    use ark_bls12_377::Bls12_377;
    use ark_bls12_381::Bls12_381;
    use ark_ec::{pairing::Pairing, AdditiveGroup, CurveGroup, PrimeGroup};
    use ark_ff::{Field, UniformRand, Zero};
    use ark_groth16::{prepare_verifying_key, VerifyingKey};
    use ark_std::rand::{rngs::StdRng, SeedableRng};
    use ark_std::One;
    use blake2::Blake2b;

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn shipping_verifier_semantic_execution_with_traces_core_preserves_exact_states() {
        let context = ChallengeContext::from_statement_digest([17; 32]);
        let mut randomizer_trace = BufferedChallengeTraceSink::default();
        randomizer_trace.record(b"aggregate.randomizer", 3, &[19], &[23]);
        let mut tipp_mipp_trace = BufferedChallengeTraceSink::default();
        tipp_mipp_trace.record(b"tipp_mipp.x0", 5, &[29], &[31]);
        let semantic = shipping_adapter_semantic_execution_from_parts(
            (),
            0,
            3,
            37u64,
            ShippingAcceptedRandomizerCall {
                initial_nonce: 0,
                accepted_nonce: 3,
                message: vec![41],
                value: 37,
            },
            empty_accepted_tipp_mipp_trace(),
            (true, true),
            43u64,
            true,
        );

        let execution = shipping_verifier_semantic_execution_with_traces_core(
            semantic,
            context.clone(),
            randomizer_trace.clone(),
            tipp_mipp_trace.clone(),
        );

        assert_eq!(execution.initial_effect_state.context, context);
        assert!(execution
            .initial_effect_state
            .randomizer_trace
            .records
            .is_empty());
        assert!(execution
            .initial_effect_state
            .tipp_mipp_trace
            .records
            .is_empty());
        assert_eq!(execution.final_effect_state.context, context);
        assert_eq!(
            execution.final_effect_state.randomizer_trace.records,
            randomizer_trace.records
        );
        assert_eq!(
            execution.final_effect_state.tipp_mipp_trace.records,
            tipp_mipp_trace.records
        );
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn shipping_verifier_observed_backend_result_core_correlates_before_arc() {
        let call_id = AppVerifyCallId {
            order_index: 7,
            segment_index: 11,
            family_index: 13,
            family: crate::app_verifier::AppVerifyFamilyCode {
                proof_family_id: 17,
                note_reshape_family_id: 19,
                shielded_ics20_withdrawal_family_id: 23,
            },
        };
        let context = ChallengeContext::from_statement_digest([29; 32]);

        let mut initial_randomizer_trace = BufferedChallengeTraceSink::default();
        initial_randomizer_trace.record(b"initial-only", 31, &[37], &[41]);

        let mut randomizer_trace = BufferedChallengeTraceSink::default();
        randomizer_trace.record(b"aggregate.randomizer", 0, &[43], &[47]);
        randomizer_trace.record(b"aggregate.randomizer", 1, &[53], &[59]);

        let mut tipp_mipp_trace = BufferedChallengeTraceSink::default();
        tipp_mipp_trace.record(b"tipp_mipp.x0", 0, &[61], &[67]);
        tipp_mipp_trace.record(b"tipp_mipp.round", 2, &[71], &[73]);
        tipp_mipp_trace.record(b"tipp_mipp.final_bridge", 0, &[79], &[83]);
        tipp_mipp_trace.record(b"tipp_mipp.kzg", 0, &[89], &[97]);

        let make_accepted_tipp_mipp_challenge_trace = || ShippingAcceptedTippMippChallengeTrace {
            x0: Some(ShippingAcceptedChallengeCall {
                accepted_nonce: 0,
                message: vec![107],
                value: 109u64,
            }),
            rounds_chrono: vec![ShippingAcceptedChallengeCall {
                accepted_nonce: 2,
                message: vec![113],
                value: 127u64,
            }],
            final_bridge: Some(ShippingAcceptedChallengeCall {
                accepted_nonce: 0,
                message: vec![131],
                value: 137u64,
            }),
            kzg: Some(ShippingAcceptedChallengeCall {
                accepted_nonce: 0,
                message: vec![139],
                value: 149u64,
            }),
        };
        let make_execution = || {
            shipping_verifier_semantic_execution_from_parts(
                shipping_adapter_semantic_execution_from_parts(
                    (),
                    0,
                    1,
                    101u64,
                    ShippingAcceptedRandomizerCall {
                        initial_nonce: 0,
                        accepted_nonce: 1,
                        message: vec![103],
                        value: 101,
                    },
                    make_accepted_tipp_mipp_challenge_trace(),
                    (true, true),
                    151u64,
                    true,
                ),
                shipping_verifier_effect_state_from_parts(
                    context.clone(),
                    initial_randomizer_trace.clone(),
                    BufferedChallengeTraceSink::default(),
                ),
                shipping_verifier_effect_state_from_parts(
                    context.clone(),
                    randomizer_trace.clone(),
                    tipp_mipp_trace.clone(),
                ),
            )
        };

        let execution = make_execution();
        let observed = shipping_verifier_observed_backend_result_core(call_id, execution);
        let (observed_execution, expected_result) =
            app_verify_shipping_backend_result_into_parts(observed);
        let expected_observation = shipping_verifier_observation_core(&observed_execution);
        assert_eq!(expected_result.id, expected_observation.call_id());
        assert_eq!(expected_result.accepted, expected_observation.accepted());
        assert_eq!(observed_execution.call_id, call_id);
        assert_eq!(observed_execution.execution.semantic.adapter_input, ());
        assert_eq!(observed_execution.execution.semantic.initial_nonce, 0);
        assert_eq!(observed_execution.execution.semantic.accepted_nonce, 1);
        assert_eq!(observed_execution.execution.semantic.randomizer, 101);
        assert_eq!(
            observed_execution
                .execution
                .semantic
                .accepted_randomizer_call
                .initial_nonce,
            0
        );
        assert_eq!(
            observed_execution
                .execution
                .semantic
                .accepted_randomizer_call
                .accepted_nonce,
            1
        );
        assert_eq!(
            observed_execution
                .execution
                .semantic
                .accepted_randomizer_call
                .message,
            vec![103]
        );
        assert_eq!(
            observed_execution
                .execution
                .semantic
                .accepted_randomizer_call
                .value,
            101
        );
        let accepted_tipp_mipp = &observed_execution
            .execution
            .semantic
            .accepted_tipp_mipp_challenge_trace;
        let x0 = accepted_tipp_mipp.x0.as_ref().expect("x0 call survives");
        assert_eq!(
            (x0.accepted_nonce, x0.message.as_slice(), x0.value),
            (0, [107u8].as_slice(), 109)
        );
        assert_eq!(accepted_tipp_mipp.rounds_chrono.len(), 1);
        let round = &accepted_tipp_mipp.rounds_chrono[0];
        assert_eq!(
            (round.accepted_nonce, round.message.as_slice(), round.value),
            (2, [113u8].as_slice(), 127)
        );
        let bridge = accepted_tipp_mipp
            .final_bridge
            .as_ref()
            .expect("bridge call survives");
        assert_eq!(
            (
                bridge.accepted_nonce,
                bridge.message.as_slice(),
                bridge.value
            ),
            (0, [131u8].as_slice(), 137)
        );
        let kzg = accepted_tipp_mipp.kzg.as_ref().expect("KZG call survives");
        assert_eq!(
            (kzg.accepted_nonce, kzg.message.as_slice(), kzg.value),
            (0, [139u8].as_slice(), 149)
        );
        assert_eq!(observed_execution.execution.semantic.checks, (true, true));
        assert_eq!(observed_execution.execution.semantic.tipp_mipp, 151);
        assert!(observed_execution.execution.semantic.accepted);
        assert_eq!(
            observed_execution.execution.initial_effect_state.context,
            context
        );
        assert_eq!(
            observed_execution
                .execution
                .initial_effect_state
                .randomizer_trace
                .records
                .iter()
                .map(|record| (record.stage_label, record.nonce))
                .collect::<Vec<_>>(),
            vec![(b"initial-only".as_slice(), 31)]
        );
        assert!(observed_execution
            .execution
            .initial_effect_state
            .tipp_mipp_trace
            .records
            .is_empty());
        assert_eq!(
            observed_execution.execution.final_effect_state.context,
            context
        );

        let shared = shipping_verifier_shared_observed_execution_core(observed_execution);
        assert_eq!(shared.observation, expected_observation);
        let retained = Arc::new(shared);
        let retained_clone = Arc::clone(&retained);
        assert!(Arc::ptr_eq(&retained, &retained_clone));
        let retained_execution = &retained.observed_execution;
        assert_eq!(retained_execution.call_id, call_id);
        assert_eq!(retained_execution.execution.semantic.adapter_input, ());
        assert_eq!(retained_execution.execution.semantic.randomizer, 101);
        assert_eq!(
            retained_execution
                .execution
                .semantic
                .accepted_randomizer_call
                .value,
            101
        );
        assert_eq!(
            retained_execution
                .execution
                .semantic
                .accepted_tipp_mipp_challenge_trace
                .x0
                .as_ref()
                .expect("retained x0 call")
                .value,
            109
        );
        assert_eq!(
            retained_execution
                .execution
                .semantic
                .accepted_tipp_mipp_challenge_trace
                .rounds_chrono[0]
                .value,
            127
        );
        assert_eq!(
            retained_execution
                .execution
                .semantic
                .accepted_tipp_mipp_challenge_trace
                .final_bridge
                .as_ref()
                .expect("retained bridge call")
                .value,
            137
        );
        assert_eq!(
            retained_execution
                .execution
                .semantic
                .accepted_tipp_mipp_challenge_trace
                .kzg
                .as_ref()
                .expect("retained KZG call")
                .value,
            149
        );
        assert_eq!(retained_execution.execution.semantic.checks, (true, true));
        assert_eq!(retained_execution.execution.semantic.tipp_mipp, 151);
        assert_eq!(
            retained_execution.execution.initial_effect_state.context,
            context
        );
        assert_eq!(
            retained_execution
                .execution
                .initial_effect_state
                .randomizer_trace
                .records
                .iter()
                .map(|record| (record.stage_label, record.nonce))
                .collect::<Vec<_>>(),
            vec![(b"initial-only".as_slice(), 31)]
        );
        assert_eq!(
            retained_execution.execution.final_effect_state.context,
            context
        );
        assert_eq!(
            retained_execution
                .execution
                .final_effect_state
                .randomizer_trace
                .records
                .iter()
                .map(|record| (record.stage_label, record.nonce))
                .collect::<Vec<_>>(),
            vec![
                (b"aggregate.randomizer".as_slice(), 0),
                (b"aggregate.randomizer".as_slice(), 1),
            ]
        );
        assert_eq!(
            retained_execution
                .execution
                .final_effect_state
                .tipp_mipp_trace
                .records
                .iter()
                .map(|record| (record.stage_label, record.nonce))
                .collect::<Vec<_>>(),
            vec![
                (b"tipp_mipp.x0".as_slice(), 0),
                (b"tipp_mipp.round".as_slice(), 2),
                (b"tipp_mipp.final_bridge".as_slice(), 0),
                (b"tipp_mipp.kzg".as_slice(), 0),
            ]
        );

        let retained_observation = &retained.observation;
        assert_eq!(retained_observation, &expected_observation);
        assert_eq!(expected_result.accepted, retained_observation.accepted());
        assert_eq!(retained_observation.call_id(), call_id);
        assert!(retained_observation.accepted());
        assert_eq!(retained_observation.challenge_context(), &context);
        assert_eq!(
            retained_observation
                .challenge_trace_chronological()
                .iter()
                .map(|record| (record.stage_label, record.nonce))
                .collect::<Vec<_>>(),
            vec![
                (b"aggregate.randomizer".as_slice(), 0),
                (b"aggregate.randomizer".as_slice(), 1),
                (b"tipp_mipp.x0".as_slice(), 0),
                (b"tipp_mipp.round".as_slice(), 2),
                (b"tipp_mipp.final_bridge".as_slice(), 0),
                (b"tipp_mipp.kzg".as_slice(), 0),
            ]
        );
        assert_eq!(
            retained_observation
                .challenge_trace_chronological()
                .iter()
                .map(|record| (record.preimage.clone(), record.digest.clone()))
                .collect::<Vec<_>>(),
            vec![
                (vec![43], vec![47]),
                (vec![53], vec![59]),
                (vec![61], vec![67]),
                (vec![71], vec![73]),
                (vec![79], vec![83]),
                (vec![89], vec![97]),
            ]
        );

        let observed_for_share =
            shipping_verifier_observed_backend_result_core(call_id, make_execution());
        let (observed_for_share, shared_result) =
            app_verify_shipping_backend_result_into_parts(observed_for_share);
        let shared_by_production_helper =
            share_shipping_verifier_observed_execution(observed_for_share);
        assert_eq!(shared_result, expected_result);
        assert_eq!(
            shared_by_production_helper.observation,
            expected_observation
        );
        assert_eq!(
            shared_by_production_helper
                .observed_execution
                .execution
                .semantic
                .accepted_randomizer_call
                .value,
            101
        );
    }

    #[derive(Default)]
    struct ScriptedProverGipaEffect;

    impl ProverGipaEffect<u64, u64, u64, u64, u64, u64, String> for ScriptedProverGipaEffect {
        fn derive_x0(
            &mut self,
            _randomizer: &u64,
            _com_a: &u64,
            _com_b: &u64,
            _com_c: &u64,
            _ip_ab: &u64,
            _agg_c: &u64,
        ) -> Result<u64, String> {
            Ok(13)
        }

        fn commit_round(
            a: &[u64],
            b: &[u64],
            c: &[u64],
            public_values: &[u64],
            ck_v: &[u64],
            ck_w: &[u64],
        ) -> Result<TippMippCoreCommitment<u64, u64, u64>, String> {
            Ok(TippMippCoreCommitment {
                ab: (
                    a[0] * 1000 + ck_v[0],
                    ck_w[0] * 1000 + b[0],
                    a[0] * 1000 + b[0],
                ),
                c: (c[0] * 1000 + ck_v[0], c[0] * 1000 + public_values[0]),
            })
        }

        fn derive_round(
            &mut self,
            prior_raw_challenge: &u64,
            _left: &TippMippCoreCommitment<u64, u64, u64>,
            _right: &TippMippCoreCommitment<u64, u64, u64>,
        ) -> Result<u64, String> {
            Ok(*prior_raw_challenge + 1)
        }

        fn invert_round(&self, challenge: &u64) -> Result<u64, String> {
            Ok(*challenge + 100)
        }

        #[cfg(not(hax_compilation))]
        fn record_commit_profile(&mut self, _left_ms: f64, _right_ms: f64) {}

        #[cfg(not(hax_compilation))]
        fn record_fold_profile(
            &mut self,
            _a_ms: f64,
            _b_ms: f64,
            _c_ms: f64,
            _public_values_ms: f64,
            _ck_v_ms: f64,
            _ck_w_ms: f64,
        ) {
        }
    }

    #[derive(Default)]
    struct RecordingProverCommitmentPrimitive {
        calls: Vec<(&'static str, Vec<u64>, Vec<u64>)>,
        fail_at: Option<usize>,
    }

    impl ProverRoundCommitmentPrimitive<u64, u64, u64, u64, String>
        for RecordingProverCommitmentPrimitive
    {
        fn pairing_inner_product(&mut self, left: &[u64], right: &[u64]) -> Result<u64, String> {
            self.calls.push(("pairing", left.to_vec(), right.to_vec()));
            if self.fail_at == Some(self.calls.len()) {
                return Err(format!("pairing-{}", self.calls.len()));
            }
            Ok(left.iter().chain(right).copied().fold(0, u64::wrapping_add))
        }

        fn msm_inner_product(&mut self, messages: &[u64], scalars: &[u64]) -> Result<u64, String> {
            self.calls
                .push(("msm", messages.to_vec(), scalars.to_vec()));
            if self.fail_at == Some(self.calls.len()) {
                return Err(format!("msm-{}", self.calls.len()));
            }
            Ok(messages
                .iter()
                .zip(scalars)
                .map(|(message, scalar)| message.wrapping_mul(*scalar))
                .fold(0, u64::wrapping_add))
        }
    }

    #[test]
    fn prover_round_commitment_core_exposes_exact_operands_and_error_order() {
        let mut effect = RecordingProverCommitmentPrimitive::default();
        let output = prover_round_commitment_adapter_core(
            &[1, 2],
            &[3, 4],
            &[5, 6],
            &[7, 8],
            &[9, 10],
            &[11, 12],
            &mut effect,
        )
        .expect("scripted primitive must succeed");

        assert_eq!(
            effect.calls,
            vec![
                ("pairing", vec![1, 2], vec![9, 10]),
                ("pairing", vec![11, 12], vec![3, 4]),
                ("pairing", vec![1, 2], vec![3, 4]),
                ("pairing", vec![5, 6], vec![9, 10]),
                ("msm", vec![5, 6], vec![7, 8]),
            ]
        );
        assert_eq!(output.com_a, 22);
        assert_eq!(output.com_b, 30);
        assert_eq!(output.ip_ab, 10);
        assert_eq!(output.com_c, 30);
        assert_eq!(output.ip_c, 83);
        let projected = prover_round_commitment_identity_projection(output);
        assert_eq!(projected.ab.0, 22);
        assert_eq!(projected.ab.1, 30);
        assert_eq!(projected.ab.2 .0, vec![10]);
        assert_eq!(projected.c.0, 30);
        assert_eq!(projected.c.1 .0, vec![83]);

        let mut failing = RecordingProverCommitmentPrimitive {
            fail_at: Some(3),
            ..Default::default()
        };
        assert!(matches!(
            prover_round_commitment_adapter_core(
                &[1, 2],
                &[3, 4],
                &[5, 6],
                &[7, 8],
                &[9, 10],
                &[11, 12],
                &mut failing,
            ),
            Err(ref error) if error == "pairing-3"
        ));
        assert_eq!(failing.calls.len(), 3);
    }

    #[test]
    fn aggregate_prover_initial_commitment_projection_preserves_tuple_and_error_order() {
        let a = [1u64, 2];
        let b = [3u64, 4];
        let c = [5u64, 6];
        let ck_1 = [7u64, 8];
        let ck_2 = [9u64, 10];
        let operands = initial_commitment_operands_core(&a, &b, &c, &ck_1, &ck_2);
        assert_eq!(operands.com_a_left, &[1, 2]);
        assert_eq!(operands.com_a_right, &[7, 8]);
        assert_eq!(operands.com_b_left, &[9, 10]);
        assert_eq!(operands.com_b_right, &[3, 4]);
        assert_eq!(operands.com_c_left, &[5, 6]);
        assert_eq!(operands.com_c_right, &[7, 8]);

        assert_eq!(
            initial_commitments_from_results_core::<u64, String>(
                Ok((11, 1.0)),
                Ok((12, 2.0)),
                Ok((13, 3.0)),
            ),
            Ok(((11, 12, 13), (1.0, 2.0, 3.0)))
        );
        assert_eq!(
            initial_commitments_from_results_core::<u64, String>(
                Err("com-a".to_owned()),
                Err("com-b".to_owned()),
                Err("com-c".to_owned()),
            ),
            Err("com-a".to_owned())
        );
        assert_eq!(
            initial_commitments_from_results_core::<u64, String>(
                Ok((11, 1.0)),
                Err("com-b".to_owned()),
                Err("com-c".to_owned()),
            ),
            Err("com-b".to_owned())
        );
    }

    #[derive(Default)]
    struct RecordingProverRandomizerPrimitive {
        candidates: Vec<Result<Option<u64>, String>>,
        next: usize,
        serializations: Vec<u64>,
        calls: Vec<(u64, Vec<u8>)>,
        fail_serialization_at: Option<usize>,
    }

    impl ProverRandomizerPrimitive<u64, u64, String> for RecordingProverRandomizerPrimitive {
        fn serialize_gt(&mut self, value: &u64, output: &mut Vec<u8>) -> Result<(), String> {
            self.serializations.push(*value);
            if self.fail_serialization_at == Some(self.serializations.len()) {
                return Err(format!("serialize-{}", self.serializations.len()));
            }
            output.extend_from_slice(&value.to_le_bytes());
            Ok(())
        }

        fn candidate(&mut self, nonce: u64, message: &[u8]) -> Result<Option<u64>, String> {
            self.calls.push((nonce, message.to_vec()));
            let result = self.candidates[self.next].clone();
            self.next += 1;
            result
        }
    }

    #[test]
    fn prover_randomizer_core_rebuilds_exact_message_and_fails_closed() {
        let mut effect = RecordingProverRandomizerPrimitive {
            candidates: vec![Ok(None), Ok(Some(0)), Ok(Some(1)), Ok(Some(7))],
            ..Default::default()
        };
        let output = derive_prover_randomizer_core_from_nonce(&11, &12, &13, &mut effect, 4)
            .expect("fourth candidate must be admissible");
        let expected_message = [11u64, 12, 13]
            .iter()
            .flat_map(|value| value.to_le_bytes())
            .collect::<Vec<_>>();
        assert_eq!(output.randomizer, 7);
        assert_eq!(output.nonce, 7);
        assert_eq!(output.message, expected_message);
        assert_eq!(
            effect.calls,
            vec![
                (4, expected_message.clone()),
                (5, expected_message.clone()),
                (6, expected_message.clone()),
                (7, expected_message.clone()),
            ]
        );
        assert_eq!(
            effect.serializations,
            vec![11, 12, 13, 11, 12, 13, 11, 12, 13, 11, 12, 13]
        );

        let mut last_nonce = RecordingProverRandomizerPrimitive {
            candidates: vec![Ok(None)],
            ..Default::default()
        };
        assert!(matches!(
            derive_prover_randomizer_core_from_nonce(&11, &12, &13, &mut last_nonce, u64::MAX),
            Err(ProverRandomizerCoreError::NonceExhausted)
        ));

        let mut success_at_last_nonce = RecordingProverRandomizerPrimitive {
            candidates: vec![Ok(Some(7))],
            ..Default::default()
        };
        let success = derive_prover_randomizer_core_from_nonce(
            &11,
            &12,
            &13,
            &mut success_at_last_nonce,
            u64::MAX,
        )
        .expect("an admissible final candidate must be accepted");
        assert_eq!(success.randomizer, 7);
        assert_eq!(success.nonce, u64::MAX);

        let mut serialization_failure = RecordingProverRandomizerPrimitive {
            candidates: vec![Ok(Some(7))],
            fail_serialization_at: Some(2),
            ..Default::default()
        };
        assert!(matches!(
            derive_prover_randomizer_core_from_nonce(
                &11,
                &12,
                &13,
                &mut serialization_failure,
                0
            ),
            Err(ProverRandomizerCoreError::Serialization(ref error))
                if error == "serialize-2"
        ));
        assert!(serialization_failure.calls.is_empty());

        let mut challenge_failure = RecordingProverRandomizerPrimitive {
            candidates: vec![Err("challenge".to_owned())],
            ..Default::default()
        };
        assert!(matches!(
            derive_prover_randomizer_core_from_nonce(
                &11,
                &12,
                &13,
                &mut challenge_failure,
                0
            ),
            Err(ProverRandomizerCoreError::Challenge(ref error))
                if error == "challenge"
        ));
        assert_eq!(challenge_failure.serializations, vec![11, 12, 13]);
        assert_eq!(challenge_failure.calls.len(), 1);
    }

    #[test]
    fn shipping_aggregate_prover_projection_retains_prelude_and_wire_execution() {
        let full_g = [2u64, 3];
        let full_h = [5u64, 7];
        let affine_g = [11u64, 13];
        let affine_h = [17u64, 19];
        let ck_1 = [23u64];
        let ck_2 = [29u64];
        let tipp_mipp = shipping_prover_execution_from_parts::<
            u64,
            u64,
            u64,
            u64,
            IdentityOutput<u64>,
            IdentityOutput<u64>,
            (),
        >(
            ProverGipaSemanticExecution {
                input: ProverGipaCoreInput {
                    a: vec![31],
                    b: vec![37],
                    c: vec![41],
                    public_values: vec![43],
                    ck_v: vec![23],
                    ck_w: vec![29],
                    randomizer: 17,
                    com_a: 11,
                    com_b: 12,
                    com_c: 13,
                    ip_ab: 61,
                    agg_c: 67,
                },
                output: ProverGipaCoreOutput {
                    rounds_chrono: Vec::new(),
                    rounds_wire: Vec::new(),
                    raw_transcript_chrono: Vec::new(),
                    raw_transcript_wire: Vec::new(),
                    inv_transcript_chrono: Vec::new(),
                    inv_transcript_wire: Vec::new(),
                    last_raw_challenge: 43,
                    final_ck: (71, 73),
                    final_messages: (79, 83, 89),
                    final_public_value: 97,
                },
                x0: 43,
                rounds_chrono: Vec::new(),
            },
            101,
            53,
            59,
            103,
            107,
        );
        let execution = shipping_aggregate_prover_semantic_execution_from_parts(
            OrderedSourceProofs {
                a: vec![31u64],
                b: vec![37u64],
                c: vec![41u64],
            },
            &full_g,
            &full_h,
            &affine_g,
            &affine_h,
            &ck_1,
            &ck_2,
            (11u64, 12u64, 13u64),
            ProverRandomizerCoreOutput {
                randomizer: 17u64,
                nonce: 19,
                message: vec![23, 29],
            },
            tipp_mipp,
        );
        assert_eq!(execution.source_proofs.a, vec![31]);
        assert_eq!(execution.source_proofs.b, vec![37]);
        assert_eq!(execution.source_proofs.c, vec![41]);
        assert_eq!(execution.proving_srs.full_g_alpha_powers, &full_g);
        assert_eq!(execution.proving_srs.full_h_beta_powers, &full_h);
        assert_eq!(execution.proving_srs.g_alpha_powers_affine, &affine_g);
        assert_eq!(execution.proving_srs.h_beta_powers_affine, &affine_h);
        assert_eq!(execution.proving_srs.ck_1, &ck_1);
        assert_eq!(execution.proving_srs.ck_2, &ck_2);
        assert_eq!(execution.initial_commitments, (11, 12, 13));
        assert_eq!(execution.randomizer.randomizer, 17);
        assert_eq!(execution.randomizer.nonce, 19);
        assert_eq!(execution.randomizer.message, vec![23, 29]);
        assert_eq!(execution.challenges.x0, 43);
        assert!(execution.challenges.rounds_chrono.is_empty());
        assert_eq!(execution.challenges.final_bridge, 53);
        assert_eq!(execution.challenges.kzg, 59);
        assert_eq!(execution.tipp_mipp.ck_v_kzg_opening, 103);
        assert_eq!(execution.tipp_mipp.ck_w_kzg_opening, 107);
        let proof = shipping_aggregate_prover_semantic_returned_proof(execution);
        assert_eq!(proof.com_a, 11);
        assert_eq!(proof.com_b, 12);
        assert_eq!(proof.com_c, 13);
        assert_eq!(proof.ip_ab, 61);
        assert_eq!(proof.agg_c, 67);
    }

    #[derive(Default)]
    struct RecordingPostGipaChallenge {
        serializations: Vec<(&'static str, u8)>,
        stages: Vec<TippMippChallengeStage>,
        messages: Vec<Vec<u8>>,
        fail_at: Option<usize>,
    }

    impl RecordingPostGipaChallenge {
        fn serialize(
            &mut self,
            kind: &'static str,
            tag: u8,
            value: &u8,
            output: &mut Vec<u8>,
        ) -> Result<(), String> {
            self.serializations.push((kind, *value));
            if self.fail_at == Some(self.serializations.len()) {
                return Err(format!("serialize-{}", self.serializations.len()));
            }
            output.extend_from_slice(&[tag, *value]);
            Ok(())
        }
    }

    impl ProverPostGipaChallengePrimitive<u8, u8, u8, String> for RecordingPostGipaChallenge {
        fn serialize_f(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("f", 0xf0, value, output)
        }

        fn serialize_g1(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("g1", 0xa1, value, output)
        }

        fn serialize_g2(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("g2", 0xa2, value, output)
        }

        fn derive(&mut self, stage: TippMippChallengeStage, message: &[u8]) -> Result<u8, String> {
            self.stages.push(stage);
            self.messages.push(message.to_vec());
            Ok(0xee)
        }
    }

    #[test]
    fn post_gipa_challenge_cores_preserve_stage_bytes_and_error_order() {
        let mut effect = RecordingPostGipaChallenge::default();
        assert_eq!(
            prover_final_bridge_adapter_core(&21, &(22, 23), &(24, 25, 26), &mut effect),
            Ok(0xee)
        );
        assert_eq!(effect.stages, vec![TippMippChallengeStage::FinalBridge]);
        assert_eq!(
            effect.messages,
            vec![vec![
                0xf0, 21, 0xa2, 22, 0xa1, 23, 0xa1, 24, 0xa2, 25, 0xa1, 26
            ]]
        );

        assert_eq!(
            prover_kzg_challenge_adapter_core(&27, &(28, 29), &mut effect),
            Ok(0xee)
        );
        assert_eq!(effect.stages[1], TippMippChallengeStage::Kzg);
        assert_eq!(effect.messages[1], vec![0xf0, 27, 0xa2, 28, 0xa1, 29]);

        let mut failing = RecordingPostGipaChallenge {
            fail_at: Some(4),
            ..Default::default()
        };
        assert_eq!(
            prover_final_bridge_adapter_core(&21, &(22, 23), &(24, 25, 26), &mut failing),
            Err("serialize-4".to_owned())
        );
        assert!(failing.stages.is_empty());
    }

    #[test]
    fn prover_gipa_core_owns_round_order_and_all_terminal_folds() {
        let mut effect = ScriptedProverGipaEffect;
        let output = prove_tipp_mipp_gipa_core(
            ProverGipaCoreInput {
                a: vec![1, 2, 3, 4],
                b: vec![10, 20, 30, 40],
                c: vec![5, 6, 7, 8],
                public_values: vec![2, 3, 4, 5],
                ck_v: vec![11, 12, 13, 14],
                ck_w: vec![21, 22, 23, 24],
                randomizer: 7,
                com_a: 31,
                com_b: 32,
                com_c: 33,
                ip_ab: 34,
                agg_c: 35,
            },
            &mut effect,
        )
        .expect("valid power-of-two execution");

        assert_eq!(output.raw_transcript_chrono, vec![14, 15]);
        assert_eq!(output.raw_transcript_wire, vec![15, 14]);
        assert_eq!(output.inv_transcript_chrono, vec![114, 115]);
        assert_eq!(output.inv_transcript_wire, vec![115, 114]);
        assert_eq!(output.last_raw_challenge, 15);
        assert_eq!(output.final_messages, (53_013, 9_130, 106_373));
        assert_eq!(output.final_public_value, 1_153);
        assert_eq!(output.final_ck, (3_313, 319_813));
        assert_eq!(output.rounds_chrono.len(), 2);
        assert_eq!(output.rounds_wire[0].0.ab.0, output.rounds_chrono[1].0.ab.0);
        assert_eq!(output.rounds_wire[1].0.ab.0, output.rounds_chrono[0].0.ab.0);
    }

    #[test]
    fn prover_gipa_semantic_execution_owns_call_and_round_effect_chronology() {
        let effect = ScriptedProverGipaEffect;
        let (execution, _) = prover_gipa_semantic_execution_core(
            ProverGipaCoreInput {
                a: vec![1, 2, 3, 4],
                b: vec![10, 20, 30, 40],
                c: vec![5, 6, 7, 8],
                public_values: vec![2, 3, 4, 5],
                ck_v: vec![11, 12, 13, 14],
                ck_w: vec![21, 22, 23, 24],
                randomizer: 7,
                com_a: 31,
                com_b: 32,
                com_c: 33,
                ip_ab: 34,
                agg_c: 35,
            },
            effect,
        )
        .expect("valid power-of-two execution");

        assert_eq!(execution.x0, 13);
        assert_eq!(execution.input.a, vec![1, 2, 3, 4]);
        assert_eq!(execution.rounds_chrono.len(), 2);
        assert_eq!(execution.rounds_chrono[0].prior_raw_challenge, 13);
        assert_eq!(execution.rounds_chrono[0].raw_challenge, 14);
        assert_eq!(execution.rounds_chrono[0].inverse, 114);
        assert_eq!(
            execution.rounds_chrono[0].left.ab.0,
            execution.output.rounds_chrono[0].0.ab.0
        );
        assert_eq!(
            execution.rounds_chrono[0].right.ab.0,
            execution.output.rounds_chrono[0].1.ab.0
        );
        assert_eq!(execution.rounds_chrono[1].prior_raw_challenge, 14);
        assert_eq!(execution.rounds_chrono[1].raw_challenge, 15);
        assert_eq!(execution.rounds_chrono[1].inverse, 115);
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[derive(Debug)]
    struct ScriptedAdapterRandomizer<F> {
        candidates: Vec<Result<Option<F>, String>>,
        next: usize,
        nonces: Vec<u64>,
        messages: Vec<Vec<u8>>,
    }

    #[cfg(not(feature = "bench-baseline"))]
    impl<F: Clone> ScriptedAdapterRandomizer<F> {
        fn new(candidates: Vec<Result<Option<F>, String>>) -> Self {
            Self {
                candidates,
                next: 0,
                nonces: Vec::new(),
                messages: Vec::new(),
            }
        }
    }

    #[cfg(not(feature = "bench-baseline"))]
    impl<F: Clone> AggregateRandomizerEffect<F, String> for ScriptedAdapterRandomizer<F> {
        fn derive_randomizer(
            &mut self,
            nonce: u64,
            randomizer_message: &[u8],
        ) -> Result<Option<F>, String> {
            self.nonces.push(nonce);
            self.messages.push(randomizer_message.to_vec());
            let result = self.candidates[self.next].clone();
            self.next += 1;
            result
        }
    }

    #[derive(Default)]
    struct RecordingTippPrimitive {
        calls: Vec<&'static str>,
        challenge_stages: Vec<TippMippChallengeStage>,
        challenge_messages: Vec<Vec<u8>>,
        fail_on_serialization: Option<usize>,
    }

    impl RecordingTippPrimitive {
        fn serialize(
            &mut self,
            kind: &'static str,
            tag: u8,
            value: &u8,
            output: &mut Vec<u8>,
        ) -> Result<(), String> {
            self.calls.push(kind);
            if self.fail_on_serialization == Some(self.calls.len()) {
                return Err(format!("serialize-{}", self.calls.len()));
            }
            output.extend_from_slice(&[tag, *value]);
            Ok(())
        }
    }

    impl TippMippAdapterPrimitive<u8, u8, u8, u8, u8, u8> for RecordingTippPrimitive {
        fn serialize_f(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("f", 0xf0, value, output)
        }

        fn serialize_g1(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("g1", 0xa1, value, output)
        }

        fn serialize_g2(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("g2", 0xa2, value, output)
        }

        fn serialize_gt(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("gt", 0xa3, value, output)
        }

        fn serialize_abt(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("abt", 0xa4, value, output)
        }

        fn serialize_ct(&mut self, value: &u8, output: &mut Vec<u8>) -> Result<(), String> {
            self.serialize("ct", 0xa5, value, output)
        }

        fn derive_challenge(
            &mut self,
            stage: TippMippChallengeStage,
            messages: &[u8],
        ) -> Result<u8, String> {
            self.calls.push("challenge");
            self.challenge_stages.push(stage);
            self.challenge_messages.push(messages.to_vec());
            Ok(0xee)
        }

        fn inverse(&self, value: &u8) -> Option<u8> {
            (*value != 0).then_some(*value)
        }

        fn pairing_inner_product(&self, left: &[u8], right: &[u8]) -> Result<u8, String> {
            Ok(left.iter().chain(right).copied().fold(0, u8::wrapping_add))
        }

        fn msm_inner_product(&self, messages: &[u8], scalars: &[u8]) -> Result<u8, String> {
            Ok(messages
                .iter()
                .zip(scalars)
                .map(|(message, scalar)| message.wrapping_mul(*scalar))
                .fold(0, u8::wrapping_add))
        }
    }

    #[test]
    fn arkworks_tipp_adapter_core_routes_exact_stage_messages() {
        let mut effect = RecordingTippPrimitive::default();
        assert_eq!(
            arkworks_tipp_x0_adapter_core(&mut effect, &1, &2, &3, &4, &5, &6),
            Ok(0xee)
        );
        assert_eq!(effect.challenge_stages, vec![TippMippChallengeStage::X0]);
        assert_eq!(
            effect.challenge_messages,
            vec![vec![0xf0, 1, 0xa3, 2, 0xa3, 3, 0xa3, 4, 0xa3, 5, 0xa1, 6,]]
        );

        let left = TippMippCoreCommitment {
            ab: (11, 12, 13),
            c: (14, 15),
        };
        let right = TippMippCoreCommitment {
            ab: (16, 17, 18),
            c: (19, 20),
        };
        assert_eq!(
            arkworks_tipp_round_adapter_core(&mut effect, &10, &left, &right),
            Ok(0xee)
        );
        assert_eq!(effect.challenge_stages[1], TippMippChallengeStage::Round);
        assert_eq!(
            effect.challenge_messages[1],
            vec![
                0xf0, 10, 0xa3, 11, 0xa3, 12, 0xa4, 13, 0xa3, 14, 0xa5, 15, 0xa3, 16, 0xa3, 17,
                0xa4, 18, 0xa3, 19, 0xa5, 20,
            ]
        );

        assert_eq!(
            arkworks_tipp_final_bridge_adapter_core(&mut effect, &21, &(22, 23), &(24, 25, 26),),
            Ok(0xee)
        );
        assert_eq!(
            effect.challenge_stages[2],
            TippMippChallengeStage::FinalBridge
        );
        assert_eq!(
            effect.challenge_messages[2],
            vec![0xf0, 21, 0xa2, 22, 0xa1, 23, 0xa1, 24, 0xa2, 25, 0xa1, 26,]
        );

        assert_eq!(
            arkworks_tipp_kzg_adapter_core(&mut effect, &27, &(28, 29)),
            Ok(0xee)
        );
        assert_eq!(effect.challenge_stages[3], TippMippChallengeStage::Kzg);
        assert_eq!(
            effect.challenge_messages[3],
            vec![0xf0, 27, 0xa2, 28, 0xa1, 29]
        );
    }

    #[test]
    fn arkworks_tipp_adapter_core_stops_at_first_serialization_error() {
        let mut effect = RecordingTippPrimitive {
            fail_on_serialization: Some(3),
            ..Default::default()
        };
        assert_eq!(
            arkworks_tipp_x0_adapter_core(&mut effect, &1, &2, &3, &4, &5, &6),
            Err("serialize-3".to_owned())
        );
        assert_eq!(effect.calls, vec!["f", "gt", "gt"]);
        assert!(effect.challenge_stages.is_empty());
        assert!(effect.challenge_messages.is_empty());
    }

    #[test]
    fn scalar_identity_serialization_matches_arkworks_singleton_vector() {
        type P = Bls12_381;

        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let mut trace = NoopChallengeTraceSink;
        let mut effect = ArkworksTippMippEffect::<P, Blake2b, _> {
            context: &context,
            trace: &mut trace,
            accepted_trace: empty_accepted_tipp_mipp_trace(),
            _pairing: PhantomData,
            _digest: PhantomData,
        };

        let gt = PairingOutput::<P>::generator();
        let mut scalar_abt = Vec::new();
        effect
            .serialize_abt(&gt, &mut scalar_abt)
            .expect("scalar AB target must serialize");
        let mut wrapped_abt = Vec::new();
        IdentityOutput(vec![gt])
            .serialize_uncompressed(&mut wrapped_abt)
            .expect("singleton AB target must serialize");
        assert_eq!(scalar_abt, wrapped_abt);
        assert_eq!(&scalar_abt[..8], &1u64.to_le_bytes());

        let g1 = <P as Pairing>::G1::generator();
        let mut scalar_ct = Vec::new();
        effect
            .serialize_ct(&g1, &mut scalar_ct)
            .expect("scalar C target must serialize");
        let mut wrapped_ct = Vec::new();
        IdentityOutput(vec![g1])
            .serialize_uncompressed(&mut wrapped_ct)
            .expect("singleton C target must serialize");
        assert_eq!(scalar_ct, wrapped_ct);
        assert_eq!(&scalar_ct[..8], &1u64.to_le_bytes());
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
            VerifierSRSData {
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
    fn tipp_mipp_challenge_prefix_exposes_exact_shipping_values() {
        type P = Bls12_381;

        let (srs, _, mut proof) = zero_combined_inputs::<P>();
        let gt = PairingOutput::<P>::zero();
        let g1 = <P as Pairing>::G1::zero();
        let side = TippMippCommitment {
            ab: (gt, gt, IdentityOutput(vec![gt])),
            c: (gt, IdentityOutput(vec![g1])),
        };
        proof
            .tipp_mipp_proof
            .gipa_proof
            .r_commitment_steps
            .push((side.clone(), side.clone()));
        proof
            .tipp_mipp_proof
            .gipa_proof
            .r_commitment_steps
            .push((side.clone(), side));
        let randomizer = <P as Pairing>::ScalarField::from(7u64);
        let input = tipp_mipp_core_input(&srs, &proof, &randomizer)
            .expect("zero fixture has singleton identity outputs");
        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let mut trace = crate::challenge::VecChallengeTraceSink::default();
        let (prefix, accepted_trace) = {
            let mut effect = ArkworksTippMippEffect::<P, Blake2b, _> {
                context: &context,
                trace: &mut trace,
                accepted_trace: empty_accepted_tipp_mipp_trace(),
                _pairing: PhantomData,
                _digest: PhantomData,
            };
            let prefix = verify_tipp_mipp_challenge_prefix_core(&input, &mut effect)
                .expect("zero fixture challenge prefix must construct");
            (prefix, effect.accepted_trace)
        };

        let sampled = trace
            .entries()
            .iter()
            .filter_map(|entry| {
                <P as Pairing>::ScalarField::from_random_bytes(&entry.digest)
                    .filter(|candidate| !candidate.is_zero())
            })
            .collect::<Vec<_>>();
        assert_eq!(sampled.len(), 5);
        assert_eq!(prefix.challenges.x0, sampled[0]);
        assert_eq!(
            prefix.challenges.round_challenges_chrono,
            vec![sampled[1], sampled[2]]
        );
        assert_eq!(
            prefix.challenges.round_challenges_wire,
            vec![sampled[2], sampled[1]]
        );
        assert_eq!(prefix.challenges.final_bridge, sampled[3]);
        assert_eq!(prefix.challenges.kzg, sampled[4]);

        let mut accepted_calls = vec![(
            TippMippChallengeStage::X0,
            accepted_trace.x0.as_ref().expect("x0 call is retained"),
        )];
        accepted_calls.extend(
            accepted_trace
                .rounds_chrono
                .iter()
                .map(|call| (TippMippChallengeStage::Round, call)),
        );
        accepted_calls.push((
            TippMippChallengeStage::FinalBridge,
            accepted_trace
                .final_bridge
                .as_ref()
                .expect("final bridge call is retained"),
        ));
        accepted_calls.push((
            TippMippChallengeStage::Kzg,
            accepted_trace.kzg.as_ref().expect("KZG call is retained"),
        ));
        assert_eq!(accepted_calls.len(), 5);
        assert_eq!(
            accepted_calls
                .iter()
                .map(|(_, call)| call.value.clone())
                .collect::<Vec<_>>(),
            sampled
        );
        assert_eq!(
            accepted_calls
                .iter()
                .map(|(stage, _)| *stage)
                .collect::<Vec<_>>(),
            vec![
                TippMippChallengeStage::X0,
                TippMippChallengeStage::Round,
                TippMippChallengeStage::Round,
                TippMippChallengeStage::FinalBridge,
                TippMippChallengeStage::Kzg,
            ]
        );
        for ((stage, call), record) in accepted_calls.iter().zip(trace.entries()) {
            assert_eq!(call.accepted_nonce, record.nonce);
            assert_eq!(
                crate::challenge::challenge_preimage(
                    &context,
                    tipp_mipp_challenge_stage_label(*stage),
                    call.accepted_nonce,
                    &call.message,
                ),
                record.preimage
            );
        }
        assert_eq!(
            trace
                .entries()
                .iter()
                .map(|entry| entry.stage_label)
                .collect::<Vec<_>>(),
            vec![
                b"tipp-mipp.x0".as_slice(),
                b"tipp-mipp.gipa.round".as_slice(),
                b"tipp-mipp.gipa.round".as_slice(),
                b"tipp-mipp.final-bridge".as_slice(),
                b"tipp-mipp.kzg".as_slice(),
            ]
        );
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn validated_aggregate_proof_is_scalar_and_cannot_be_bypassed() {
        type P = Bls12_381;

        let (srs, pvk, mut proof) = zero_combined_inputs::<P>();
        let gt = PairingOutput::<P>::generator();
        let g1 = <P as Pairing>::G1::generator();
        proof.tipp_mipp_proof.gipa_proof.r_commitment_steps.push((
            TippMippCommitment {
                ab: (gt, gt, IdentityOutput(vec![gt])),
                c: (gt, IdentityOutput(vec![g1])),
            },
            TippMippCommitment {
                ab: (gt, gt, IdentityOutput(vec![gt])),
                c: (gt, IdentityOutput(vec![g1])),
            },
        ));

        let validated = validate_aggregate_proof_data(&proof)
            .expect("explicit scalar projection root must accept singleton proof");
        let projected_round = &validated.tipp_mipp_proof.gipa_proof[0];
        assert_eq!(projected_round.0.ab.2, gt);
        assert_eq!(projected_round.0.c.1, g1);
        assert_eq!(projected_round.1.ab.2, gt);
        assert_eq!(projected_round.1.c.1, g1);
        assert_eq!(
            aggregate_randomizer_message(&proof).expect("wire commitments must serialize"),
            validated_aggregate_randomizer_message(&validated)
                .expect("validated commitments must serialize")
        );

        let r = <P as Pairing>::ScalarField::from(7u64);
        let projected =
            combined_checks_core_input_validated(&pvk, &[vec![], vec![]], &validated, &r, &srs);
        assert_eq!(projected.tipp_mipp.proof.gipa_proof[0].0.ab.2, gt);
        assert_eq!(projected.tipp_mipp.proof.gipa_proof[0].0.c.1, g1);

        proof.tipp_mipp_proof.gipa_proof.r_commitment_steps[0]
            .0
            .ab
            .2 = IdentityOutput(Vec::new());
        assert!(
            validate_aggregate_proof(&proof).is_err(),
            "raw vector proof must not bypass validated construction"
        );
        assert_eq!(
            projected.tipp_mipp.proof.gipa_proof[0].0.ab.2, gt,
            "the validated verifier input must retain only its scalar projection"
        );
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn malformed_identity_outputs_reject_before_transcript_or_folding() {
        type P = Bls12_381;

        let (srs, pvk, base_proof) = zero_combined_inputs::<P>();
        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let public_inputs = vec![vec![], vec![]];
        let gt = PairingOutput::<P>::zero();
        let g1 = <P as Pairing>::G1::zero();

        let malformed = [
            (
                "zero",
                IdentityOutput(Vec::new()),
                IdentityOutput(vec![g1]),
                IdentityOutput(vec![gt]),
                IdentityOutput(vec![g1]),
            ),
            (
                "multi",
                IdentityOutput(vec![gt, gt]),
                IdentityOutput(vec![g1]),
                IdentityOutput(vec![gt]),
                IdentityOutput(vec![g1]),
            ),
            (
                "mixed-left-c",
                IdentityOutput(vec![gt]),
                IdentityOutput(vec![g1, g1]),
                IdentityOutput(vec![gt]),
                IdentityOutput(vec![g1]),
            ),
            (
                "mixed-right-ab",
                IdentityOutput(vec![gt]),
                IdentityOutput(vec![g1]),
                IdentityOutput(Vec::new()),
                IdentityOutput(vec![g1]),
            ),
            (
                "mixed-right-c",
                IdentityOutput(vec![gt]),
                IdentityOutput(vec![g1]),
                IdentityOutput(vec![gt]),
                IdentityOutput(vec![g1, g1]),
            ),
        ];

        for (case, left_ab, left_c, right_ab, right_c) in malformed {
            let mut proof = base_proof.clone();
            proof.tipp_mipp_proof.gipa_proof.r_commitment_steps.push((
                TippMippCommitment {
                    ab: (gt, gt, left_ab),
                    c: (gt, left_c),
                },
                TippMippCommitment {
                    ab: (gt, gt, right_ab),
                    c: (gt, right_c),
                },
            ));

            assert!(
                validate_aggregate_proof(&proof).is_err(),
                "{} identity output bypassed validated construction",
                case
            );

            let mut trace = crate::challenge::VecChallengeTraceSink::default();
            let outcome = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
                verify_aggregate_proof_with_trace::<P, Blake2b, _>(
                    &context,
                    &mut trace,
                    &srs,
                    &pvk,
                    &public_inputs,
                    &proof,
                )
            }));

            assert!(outcome.is_ok(), "{} identity output panicked", case);
            let error = outcome
                .expect("verification must not panic")
                .expect_err("malformed identity output must reject");
            assert!(
                error.to_string().contains("identity output"),
                "unexpected {} error: {}",
                case,
                error
            );
            assert!(
                trace.entries().is_empty(),
                "{} identity output reached challenge hashing",
                case
            );

            let mut profiled_trace = crate::challenge::VecChallengeTraceSink::default();
            let profiled_outcome = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
                verify_aggregate_proof_profiled_with_trace::<P, Blake2b, _>(
                    &context,
                    &mut profiled_trace,
                    &srs,
                    &pvk,
                    &public_inputs,
                    &proof,
                )
            }));
            assert!(
                profiled_outcome.is_ok(),
                "{} profiled identity output panicked",
                case
            );
            let profiled_error = profiled_outcome
                .expect("profiled verification must not panic")
                .expect_err("profiled malformed identity output must reject");
            assert_eq!(profiled_error.to_string(), error.to_string());
            assert!(
                profiled_trace.entries().is_empty(),
                "{} profiled identity output reached challenge hashing",
                case
            );
        }
    }

    fn assert_aggregate_profiled_acceptance_parity<P: Pairing>() {
        let (srs, pvk, proof) = zero_combined_inputs::<P>();
        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let public_inputs = vec![vec![]];

        let mut normal_trace = crate::challenge::VecChallengeTraceSink::default();
        let normal = verify_aggregate_proof_with_trace::<P, Blake2b, _>(
            &context,
            &mut normal_trace,
            &srs,
            &pvk,
            &public_inputs,
            &proof,
        );

        let mut profiled_trace = crate::challenge::VecChallengeTraceSink::default();
        let profiled = verify_aggregate_proof_profiled_with_trace::<P, Blake2b, _>(
            &context,
            &mut profiled_trace,
            &srs,
            &pvk,
            &public_inputs,
            &proof,
        );

        assert_eq!(normal_trace.entries(), profiled_trace.entries());
        match (normal, profiled) {
            (Ok(normal), Ok(profile)) => {
                assert_eq!(normal, profile.accepted);
                for timing in [
                    profile.challenge_ms,
                    profile.tipp_mipp_ms,
                    profile.public_input_fold_ms,
                    profile.ppe_ms,
                    profile.core_total_ms,
                ] {
                    assert!(timing.is_finite() && timing >= 0.0);
                }
            }
            (Err(normal), Err(profiled)) => assert_eq!(normal.to_string(), profiled.to_string()),
            (normal, profiled) => {
                panic!(
                    "normal/profiled result mismatch: {:?} vs {:?}",
                    normal, profiled
                )
            }
        }
    }

    #[test]
    fn prover_structural_cores_preserve_fold_and_round_field_order() {
        assert_eq!(
            fold_vector_core(&[2u64, 3, 5], &[7u64, 11], &13u64),
            vec![33, 50]
        );
        assert_eq!(reverse_chronological_core(vec![2u64, 3, 5]), vec![5, 3, 2]);

        type P = Bls12_381;
        let gt = PairingOutput::<P>::generator();
        let g1 = <P as Pairing>::G1::generator();
        let commitment = tipp_mipp_commitment_from_parts(
            gt,
            gt.double(),
            IdentityOutput(vec![gt.double().double()]),
            gt.double().double().double(),
            IdentityOutput(vec![g1.double()]),
        );
        assert_eq!(commitment.ab.0, gt);
        assert_eq!(commitment.ab.1, gt.double());
        assert_eq!(commitment.ab.2 .0, vec![gt.double().double()]);
        assert_eq!(commitment.c.0, gt.double().double().double());
        assert_eq!(commitment.c.1 .0, vec![g1.double()]);
    }

    fn assert_aggregate_prover_profiled_parity<P: Pairing>() {
        let mut rng = StdRng::seed_from_u64(0x5eed_7072_6f76_6572);
        let srs =
            setup_inner_product::<P, Blake2b, _>(&mut rng, 2).expect("prover SRS must construct");
        let g1 = P::G1::generator().into_affine();
        let g2 = P::G2::generator().into_affine();
        let proofs = vec![
            Proof {
                a: g1,
                b: g2,
                c: g1,
            },
            Proof {
                a: g1,
                b: g2,
                c: g1,
            },
        ];
        let context = ChallengeContext::from_statement_digest([0x42u8; 32]);

        let mut normal_trace = crate::challenge::VecChallengeTraceSink::default();
        let normal = aggregate_proofs_with_trace::<P, Blake2b, _>(
            &context,
            &mut normal_trace,
            &srs,
            &proofs,
        )
        .expect("normal prover must construct");

        let mut profiled_trace = crate::challenge::VecChallengeTraceSink::default();
        let (profiled, profile) = aggregate_proofs_profiled_with_trace::<P, Blake2b, _>(
            &context,
            &mut profiled_trace,
            &srs,
            &proofs,
        )
        .expect("profiled prover must construct");

        let mut normal_bytes = Vec::new();
        normal
            .serialize_uncompressed(&mut normal_bytes)
            .expect("normal proof must serialize");
        let mut profiled_bytes = Vec::new();
        profiled
            .serialize_uncompressed(&mut profiled_bytes)
            .expect("profiled proof must serialize");

        assert_eq!(normal_bytes, profiled_bytes);
        assert_eq!(normal_trace.entries(), profiled_trace.entries());
        assert_eq!(
            normal_trace
                .entries()
                .iter()
                .map(|entry| entry.stage_label)
                .collect::<Vec<_>>(),
            vec![
                b"aggregate.randomizer".as_slice(),
                b"tipp-mipp.x0".as_slice(),
                b"tipp-mipp.gipa.round".as_slice(),
                b"tipp-mipp.final-bridge".as_slice(),
                b"tipp-mipp.kzg".as_slice(),
            ]
        );
        assert!(normal_trace.entries().iter().all(|entry| entry.nonce == 0));
        assert!(profile.total_ms.is_finite() && profile.total_ms >= 0.0);
    }

    #[test]
    fn aggregate_prover_profiled_preserves_proof_bytes_and_trace() {
        assert_aggregate_prover_profiled_parity::<Bls12_381>();
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_profiled_matches_normal_acceptance() {
        assert_aggregate_profiled_acceptance_parity::<Bls12_381>();
    }

    #[cfg(feature = "bench-baseline")]
    #[test]
    fn aggregate_profiled_baseline_matches_normal_acceptance() {
        assert_aggregate_profiled_acceptance_parity::<Bls12_381>();
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn combined_checks_schedule_branch_preserves_core_acceptance() {
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

    #[cfg(not(feature = "bench-baseline"))]
    fn run_scripted_adapter_core(
        candidates: Vec<Result<Option<<Bls12_381 as Pairing>::ScalarField>, String>>,
        nonce: u64,
        malformed_combined_input: bool,
    ) -> Result<
        (
            <Bls12_381 as Pairing>::ScalarField,
            (bool, bool),
            bool,
            Vec<u64>,
            Vec<Vec<u8>>,
        ),
        AggregateAdapterCoreError<String>,
    > {
        let (srs, pvk, proof) = zero_combined_inputs::<Bls12_381>();
        let mut combined = combined_checks_core_input(
            &pvk,
            &[vec![]],
            &proof,
            &<Bls12_381 as Pairing>::ScalarField::zero(),
            &srs,
        )
        .expect("zero fixture has singleton identity outputs");
        if malformed_combined_input {
            combined.public_inputs.clear();
        }
        let randomizer_message = vec![0x41, 0x52, 0x4b];
        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let mut tipp_trace = NoopChallengeTraceSink;
        let output = verify_aggregate_adapter_core_from_nonce(
            aggregate_adapter_core_input_from_parts(randomizer_message, combined),
            ScriptedAdapterRandomizer::new(candidates),
            ArkworksTippMippEffect::<Bls12_381, Blake2b, _> {
                context: &context,
                trace: &mut tipp_trace,
                accepted_trace: empty_accepted_tipp_mipp_trace(),
                _pairing: PhantomData,
                _digest: PhantomData,
            },
            ArkworksPairingEffect::<Bls12_381>::default(),
            ArkworksPreparedPairingEffect::<Bls12_381>::default(),
            nonce,
        )?;
        Ok((
            output.randomizer,
            output.checks,
            output.accepted,
            output.randomizer_effect.nonces,
            output.randomizer_effect.messages,
        ))
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_adapter_input_constructors_preserve_every_field() {
        let tipp = tipp_mipp_core_input_from_parts(TippMippCoreInputParts {
            com_a: 10u64,
            com_b: 11,
            com_t: 12,
            com_c: 13,
            com_z: 14,
            ip_ab: 15,
            agg_c: 16,
            proof: TippMippCoreProof {
                gipa_proof: vec![(
                    TippMippCoreCommitment {
                        ab: (17, 18, 19),
                        c: (20, 21),
                    },
                    TippMippCoreCommitment {
                        ab: (22, 23, 24),
                        c: (25, 26),
                    },
                )],
                final_ck: (27, 28),
                final_ck_proofs: (29, 30),
                final_messages: (31, 32, 33),
            },
            verifier_g: 34,
            verifier_g_beta: 35,
            verifier_h: 36,
            verifier_h_alpha: 37,
            r: 38,
            kzg_g2_r_shift: 39,
        });
        assert_eq!(tipp.com_a, 10);
        assert_eq!(tipp.com_b, 11);
        assert_eq!(tipp.com_t, 12);
        assert_eq!(tipp.com_c, 13);
        assert_eq!(tipp.com_z, 14);
        assert_eq!(tipp.ip_ab, 15);
        assert_eq!(tipp.agg_c, 16);
        assert_eq!(tipp.proof.gipa_proof[0].0.ab, (17, 18, 19));
        assert_eq!(tipp.proof.gipa_proof[0].1.c, (25, 26));
        assert_eq!(tipp.proof.final_ck, (27, 28));
        assert_eq!(tipp.proof.final_ck_proofs, (29, 30));
        assert_eq!(tipp.proof.final_messages, (31, 32, 33));
        assert_eq!(tipp.verifier_g, 34);
        assert_eq!(tipp.verifier_g_beta, 35);
        assert_eq!(tipp.verifier_h, 36);
        assert_eq!(tipp.verifier_h_alpha, 37);
        assert_eq!(tipp.r, 38);
        assert_eq!(tipp.kzg_g2_r_shift, 39);

        let combined = combined_checks_core_input_from_parts(CombinedChecksCoreInputParts {
            tipp_mipp: tipp,
            gamma_abc_g1: vec![40, 41],
            public_inputs: vec![vec![42, 43]],
            r: 44,
            alpha_beta: 45,
            agg_c: 46,
            gamma_g2_neg_pc: 47,
            delta_g2_neg_pc: 48,
            ip_ab: 49,
        });
        assert_eq!(combined.gamma_abc_g1, vec![40, 41]);
        assert_eq!(combined.public_inputs, vec![vec![42, 43]]);
        assert_eq!(combined.r, 44);
        assert_eq!(combined.ppe.alpha_beta, 45);
        assert_eq!(combined.ppe.agg_c, 46);
        assert_eq!(combined.ppe.gamma_g2_neg_pc, 47);
        assert_eq!(combined.ppe.delta_g2_neg_pc, 48);
        assert_eq!(combined.ppe.ip_ab, 49);

        let adapter = aggregate_adapter_core_input_from_parts(vec![0x41, 0x52, 0x4b], combined);
        assert_eq!(adapter.randomizer_message, vec![0x41, 0x52, 0x4b]);
        assert_eq!(adapter.combined.tipp_mipp.com_a, 10);
        assert_eq!(adapter.combined.ppe.ip_ab, 49);
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_adapter_core_shipping_semantic_execution_retains_exact_output() {
        type P = Bls12_381;
        type Scalar = <P as Pairing>::ScalarField;

        let (srs, pvk, proof) = zero_combined_inputs::<P>();
        let combined = combined_checks_core_input(&pvk, &[vec![]], &proof, &Scalar::zero(), &srs)
            .expect("zero fixture has singleton identity outputs");
        let randomizer_message = vec![0x41, 0x52, 0x4b];
        let randomizer = Scalar::from(7u64);
        let context = ChallengeContext::from_statement_digest([0u8; 32]);
        let mut tipp_trace = NoopChallengeTraceSink;
        let effects = aggregate_adapter_effects_from_parts(
            ScriptedAdapterRandomizer::new(vec![Ok(Some(randomizer.clone()))]),
            ArkworksTippMippEffect::<P, Blake2b, _> {
                context: &context,
                trace: &mut tipp_trace,
                accepted_trace: empty_accepted_tipp_mipp_trace(),
                _pairing: PhantomData,
                _digest: PhantomData,
            },
            ArkworksPairingEffect::<P>::default(),
            ArkworksPreparedPairingEffect::<P>::default(),
        );

        let execution = verify_shipping_adapter_semantic_execution_core(
            aggregate_adapter_core_input_from_parts(randomizer_message.clone(), combined),
            effects,
        )
        .expect("installed effects must return one semantic execution");

        assert_eq!(
            execution.adapter_input.randomizer_message,
            randomizer_message
        );
        assert_eq!(execution.initial_nonce, 0);
        assert_eq!(execution.accepted_nonce, 0);
        assert_eq!(execution.randomizer, randomizer);
        assert_eq!(execution.accepted_randomizer_call.initial_nonce, 0);
        assert_eq!(execution.accepted_randomizer_call.accepted_nonce, 0);
        assert_eq!(
            execution.accepted_randomizer_call.message,
            vec![0x41, 0x52, 0x4b]
        );
        assert_eq!(execution.accepted_randomizer_call.value, randomizer);
        assert!(execution.accepted_tipp_mipp_challenge_trace.x0.is_some());
        assert!(execution
            .accepted_tipp_mipp_challenge_trace
            .rounds_chrono
            .is_empty());
        assert!(execution
            .accepted_tipp_mipp_challenge_trace
            .final_bridge
            .is_some());
        assert!(execution.accepted_tipp_mipp_challenge_trace.kzg.is_some());
        assert_eq!(execution.accepted, execution.checks.0 && execution.checks.1);
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn shipping_nonce_exhaustion_maps_exact_public_error() {
        let prover_error = prover_randomizer_core_error(ProverRandomizerCoreError::NonceExhausted);
        assert!(prover_error
            .downcast_ref::<ChallengeNonceExhausted>()
            .is_some());
        assert_eq!(
            prover_error.to_string(),
            ChallengeNonceExhausted.to_string()
        );

        let verifier_error =
            aggregate_adapter_core_error(AggregateAdapterCoreError::NonceExhausted);
        assert!(verifier_error
            .downcast_ref::<ChallengeNonceExhausted>()
            .is_some());
        assert_eq!(
            verifier_error.to_string(),
            ChallengeNonceExhausted.to_string()
        );
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn prover_and_verifier_share_randomizer_admissibility() {
        type Scalar = <Bls12_381 as Pairing>::ScalarField;

        assert!(!randomizer_is_admissible(&Scalar::zero()));
        assert!(!randomizer_is_admissible(&Scalar::one()));
        assert!(randomizer_is_admissible(&Scalar::from(2u64)));
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_adapter_core_retries_and_installs_one_randomizer() {
        let scalar = |value| <Bls12_381 as Pairing>::ScalarField::from(value);
        let (randomizer, checks, accepted, nonces, messages) = run_scripted_adapter_core(
            vec![
                Ok(None),
                Ok(Some(scalar(0))),
                Ok(Some(scalar(1))),
                Ok(Some(scalar(7))),
            ],
            0,
            false,
        )
        .expect("the fourth candidate must reach the combined core");

        assert_eq!(randomizer, scalar(7));
        assert_eq!(accepted, checks.0 && checks.1);
        assert_eq!(nonces, vec![0, 1, 2, 3]);
        assert_eq!(messages, vec![vec![0x41, 0x52, 0x4b]; 4]);
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_adapter_core_queries_last_nonce_and_fails_closed() {
        let error = run_scripted_adapter_core(vec![Ok(None)], u64::MAX, false)
            .expect_err("rejection at the last nonce must exhaust");
        assert!(matches!(error, AggregateAdapterCoreError::NonceExhausted));
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_adapter_core_accepts_success_at_last_nonce() {
        let scalar = <Bls12_381 as Pairing>::ScalarField::from(7u64);
        let (randomizer, checks, accepted, nonces, _) =
            run_scripted_adapter_core(vec![Ok(Some(scalar))], u64::MAX, false)
                .expect("success at the last nonce must be accepted");
        assert_eq!(randomizer, scalar);
        assert_eq!(accepted, checks.0 && checks.1);
        assert_eq!(nonces, vec![u64::MAX]);
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_adapter_core_preserves_error_order_and_kind() {
        let randomizer_error =
            run_scripted_adapter_core(vec![Err("randomizer".to_owned())], 0, true)
                .expect_err("randomizer failure must precede malformed combined input");
        assert!(matches!(
            randomizer_error,
            AggregateAdapterCoreError::RandomizerFailure(ref error)
                if error == "randomizer"
        ));

        let combined_error = run_scripted_adapter_core(
            vec![Ok(Some(<Bls12_381 as Pairing>::ScalarField::from(7u64)))],
            0,
            true,
        )
        .expect_err("malformed combined input must retain its error kind");
        assert!(matches!(
            combined_error,
            AggregateAdapterCoreError::CombinedFailure(_)
        ));
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn aggregate_randomizer_message_is_exact_commitment_order() {
        let mut proof = zero_tipp_mipp_proof::<Bls12_381>();
        let generator = PairingOutput::<Bls12_381>::generator();
        proof.com_a = generator;
        proof.com_b = generator * <Bls12_381 as Pairing>::ScalarField::from(2u64);
        proof.com_c = generator * <Bls12_381 as Pairing>::ScalarField::from(3u64);

        let actual = aggregate_randomizer_message(&proof).expect("commitments must serialize");
        let mut expected = Vec::new();
        proof
            .com_a
            .serialize_uncompressed(&mut expected)
            .expect("com_a must serialize");
        proof
            .com_b
            .serialize_uncompressed(&mut expected)
            .expect("com_b must serialize");
        proof
            .com_c
            .serialize_uncompressed(&mut expected)
            .expect("com_c must serialize");
        assert_eq!(actual, expected);

        let component_len = expected.len() / 3;
        assert_eq!(&actual[..component_len], &expected[..component_len]);
        assert_eq!(
            &actual[component_len..2 * component_len],
            &expected[component_len..2 * component_len]
        );
        assert_eq!(&actual[2 * component_len..], &expected[2 * component_len..]);
    }

    #[cfg(not(feature = "bench-baseline"))]
    #[test]
    fn combined_input_projection_preserves_shipping_inputs() {
        let (srs, pvk, proof) = zero_combined_inputs::<Bls12_381>();
        let r = <Bls12_381 as Pairing>::ScalarField::from(7u64);
        let public_inputs = vec![vec![]];
        let input = combined_checks_core_input(&pvk, &public_inputs, &proof, &r, &srs)
            .expect("zero fixture has singleton identity outputs");

        assert_eq!(input.public_inputs, public_inputs);
        assert_eq!(input.r, r);
        assert_eq!(input.gamma_abc_g1.len(), pvk.vk.gamma_abc_g1.len());
        assert_eq!(input.ppe.alpha_beta, PairingOutput(pvk.alpha_g1_beta_g2));
        assert_eq!(input.ppe.agg_c, proof.agg_c);
        assert_eq!(input.ppe.gamma_g2_neg_pc, pvk.gamma_g2_neg_pc);
        assert_eq!(input.ppe.delta_g2_neg_pc, pvk.delta_g2_neg_pc);
        assert_eq!(input.ppe.ip_ab, proof.ip_ab);
        assert_eq!(input.tipp_mipp.r, r);
        assert_eq!(input.tipp_mipp.verifier_g, srs.g);
        assert_eq!(input.tipp_mipp.verifier_g_beta, srs.g_beta);
        assert_eq!(input.tipp_mipp.verifier_h, srs.h);
        assert_eq!(input.tipp_mipp.verifier_h_alpha, srs.h_alpha);
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

        let input = tipp_mipp_core_input(srs, proof, &r)
            .expect("test fixture has singleton identity outputs");
        let mut core_trace = NoopChallengeTraceSink;
        let mut effect = ArkworksTippMippEffect::<P, Blake2b, _> {
            context: &context,
            trace: &mut core_trace,
            accepted_trace: empty_accepted_tipp_mipp_trace(),
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
