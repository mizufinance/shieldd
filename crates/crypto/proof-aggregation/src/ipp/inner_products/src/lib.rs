use ark_ec::{
    pairing::{MillerLoopOutput, Pairing, PairingOutput},
    CurveGroup,
};
use ark_ff::Field;
use ark_std::cfg_iter;
use std::{
    error::Error as ErrorTrait,
    fmt::{Display, Formatter, Result as FmtResult},
    marker::PhantomData,
    ops::Add,
    sync::{Mutex, OnceLock},
    time::Instant,
};

#[cfg(feature = "parallel")]
use rayon::prelude::*;

pub type Error = Box<dyn ErrorTrait>;

/// Exact normalization and preparation work submitted to pairing kernels.
#[derive(Clone, Copy, Debug, Default, Eq, PartialEq)]
pub struct PairingPreparationCount {
    pub g1_normalization_batches: usize,
    pub g2_normalization_batches: usize,
    pub g1_normalized_elements: usize,
    pub g2_normalized_elements: usize,
    pub g1_prepared_elements: usize,
    pub g2_prepared_elements: usize,
}

impl Add for PairingPreparationCount {
    type Output = Self;

    fn add(self, other: Self) -> Self {
        Self {
            g1_normalization_batches: self.g1_normalization_batches
                + other.g1_normalization_batches,
            g2_normalization_batches: self.g2_normalization_batches
                + other.g2_normalization_batches,
            g1_normalized_elements: self.g1_normalized_elements + other.g1_normalized_elements,
            g2_normalized_elements: self.g2_normalized_elements + other.g2_normalized_elements,
            g1_prepared_elements: self.g1_prepared_elements + other.g1_prepared_elements,
            g2_prepared_elements: self.g2_prepared_elements + other.g2_prepared_elements,
        }
    }
}

#[derive(Clone, Copy, Debug, Default, PartialEq)]
pub struct PairingComputationProfile {
    pub normalize_batch_ms: f64,
    pub prepare_ms: f64,
    pub miller_loop_ms: f64,
    pub final_exponentiation_ms: f64,
    pub preparation: PairingPreparationCount,
}

impl PairingComputationProfile {
    fn merge(&mut self, other: &Self) {
        self.normalize_batch_ms += other.normalize_batch_ms;
        self.prepare_ms += other.prepare_ms;
        self.miller_loop_ms += other.miller_loop_ms;
        self.final_exponentiation_ms += other.final_exponentiation_ms;
        self.preparation = self.preparation + other.preparation;
    }
}

fn pairing_profile_accumulator() -> &'static Mutex<PairingComputationProfile> {
    static ACCUMULATOR: OnceLock<Mutex<PairingComputationProfile>> = OnceLock::new();
    ACCUMULATOR.get_or_init(|| Mutex::new(PairingComputationProfile::default()))
}

pub fn reset_pairing_profile_accumulator() {
    *pairing_profile_accumulator()
        .lock()
        .expect("pairing profile accumulator mutex poisoned") =
        PairingComputationProfile::default();
}

pub fn pairing_profile_snapshot() -> PairingComputationProfile {
    *pairing_profile_accumulator()
        .lock()
        .expect("pairing profile accumulator mutex poisoned")
}

fn record_pairing_profile_delta(delta: &PairingComputationProfile) {
    pairing_profile_accumulator()
        .lock()
        .expect("pairing profile accumulator mutex poisoned")
        .merge(delta);
}

#[derive(Debug)]
pub enum InnerProductError {
    EmptyInput,
    MessageLengthInvalid(usize, usize),
    PairingUnavailable,
}

/// Validate the shape required by one non-empty pairing product.
pub fn validate_pairing_shape(left_len: usize, right_len: usize) -> Result<(), InnerProductError> {
    if left_len != right_len {
        return Err(InnerProductError::MessageLengthInvalid(left_len, right_len));
    }
    if left_len == 0 {
        return Err(InnerProductError::EmptyInput);
    }
    Ok(())
}

impl ErrorTrait for InnerProductError {
    fn source(self: &Self) -> Option<&(dyn ErrorTrait + 'static)> {
        None
    }
}

impl Display for InnerProductError {
    fn fmt(self: &Self, f: &mut Formatter<'_>) -> FmtResult {
        let msg = match self {
            InnerProductError::EmptyInput => "inner product requires non-empty inputs".to_string(),
            InnerProductError::MessageLengthInvalid(left, right) => {
                format!("left length, right length: {}, {}", left, right)
            }
            InnerProductError::PairingUnavailable => {
                "cfg_multi_pairing returned no pairing result".to_string()
            }
        };
        write!(f, "{}", msg)
    }
}

pub trait InnerProduct: Copy {
    type LeftMessage;
    type RightMessage;
    type Output;

    fn inner_product(
        left: &[Self::LeftMessage],
        right: &[Self::RightMessage],
    ) -> Result<Self::Output, Error>;
}

#[derive(Copy, Clone)]
pub struct PairingInnerProduct<P: Pairing> {
    _pair: PhantomData<P>,
}

// No serial cutoff in `{64, 128, 256, 512}` beat the fully parallel control on
// the warmed strict `1k` builder sweep, so keep the historical behavior.
const PAIRING_PARALLEL_THRESHOLD: usize = 1;

impl<P: Pairing> InnerProduct for PairingInnerProduct<P> {
    type LeftMessage = P::G1;
    type RightMessage = P::G2;
    type Output = PairingOutput<P>;

    fn inner_product(
        left: &[Self::LeftMessage],
        right: &[Self::RightMessage],
    ) -> Result<Self::Output, Error> {
        validate_pairing_shape(left.len(), right.len())
            .map_err(|error| Box::new(error) as Error)?;

        cfg_multi_pairing(left, right)
            .ok_or_else(|| Box::new(InnerProductError::PairingUnavailable) as Error)
    }
}

/// Equivalent to `P::multi_pairing`, but with more parallelism (if enabled)
pub fn cfg_multi_pairing<P: Pairing>(left: &[P::G1], right: &[P::G2]) -> Option<PairingOutput<P>> {
    cpu_multi_pairing_projective::<P>(left, right)
}

fn cpu_multi_pairing_projective<P: Pairing>(
    left: &[P::G1],
    right: &[P::G2],
) -> Option<PairingOutput<P>> {
    let mut profile = PairingComputationProfile::default();

    // We make the input affine, then convert to prepared. We do this for speed, since the
    // conversion from projective to prepared always goes through affine.
    let normalize_started = Instant::now();
    let aff_left = P::G1::normalize_batch(left);
    let aff_right = P::G2::normalize_batch(right);
    profile.normalize_batch_ms = normalize_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(feature = "parallel")]
    let use_parallel = left.len() >= PAIRING_PARALLEL_THRESHOLD;
    #[cfg(not(feature = "parallel"))]
    let use_parallel = false;

    let prepare_started = Instant::now();
    let left = if use_parallel {
        cfg_iter!(aff_left)
            .map(P::G1Prepared::from)
            .collect::<Vec<_>>()
    } else {
        aff_left
            .iter()
            .cloned()
            .map(P::G1Prepared::from)
            .collect::<Vec<_>>()
    };
    let right = if use_parallel {
        cfg_iter!(aff_right)
            .map(P::G2Prepared::from)
            .collect::<Vec<_>>()
    } else {
        aff_right
            .iter()
            .cloned()
            .map(P::G2Prepared::from)
            .collect::<Vec<_>>()
    };
    profile.prepare_ms = prepare_started.elapsed().as_secs_f64() * 1000.0;
    profile.preparation = PairingPreparationCount {
        g1_normalization_batches: 1,
        g2_normalization_batches: 1,
        g1_normalized_elements: left.len(),
        g2_normalized_elements: right.len(),
        g1_prepared_elements: left.len(),
        g2_prepared_elements: right.len(),
    };

    cfg_multi_pairing_prepared_with_profile::<P>(&left, &right, use_parallel, profile)
}

/// Prepared G1 operands that can be reused across independent pairing products.
pub struct PreparedG1<P: Pairing> {
    values: Vec<P::G1Prepared>,
    preparation: PairingPreparationCount,
}

impl<P: Pairing> PreparedG1<P> {
    pub fn preparation(&self) -> PairingPreparationCount {
        self.preparation
    }
}

/// Prepared G2 operands that can be reused across independent pairing products.
pub struct PreparedG2<P: Pairing> {
    values: Vec<P::G2Prepared>,
    preparation: PairingPreparationCount,
}

impl<P: Pairing> PreparedG2<P> {
    pub fn preparation(&self) -> PairingPreparationCount {
        self.preparation
    }
}

/// Normalize and prepare one reusable G1 operand vector.
pub fn prepare_g1<P: Pairing>(values: &[P::G1]) -> PreparedG1<P> {
    let mut profile = PairingComputationProfile::default();
    let normalize_started = Instant::now();
    let affine = P::G1::normalize_batch(values);
    profile.normalize_batch_ms = normalize_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(feature = "parallel")]
    let use_parallel = values.len() >= PAIRING_PARALLEL_THRESHOLD;
    #[cfg(not(feature = "parallel"))]
    let use_parallel = false;

    let prepare_started = Instant::now();
    let prepared = if use_parallel {
        cfg_iter!(affine)
            .map(P::G1Prepared::from)
            .collect::<Vec<_>>()
    } else {
        affine
            .iter()
            .cloned()
            .map(P::G1Prepared::from)
            .collect::<Vec<_>>()
    };
    profile.prepare_ms = prepare_started.elapsed().as_secs_f64() * 1000.0;
    profile.preparation = PairingPreparationCount {
        g1_normalization_batches: 1,
        g1_normalized_elements: values.len(),
        g1_prepared_elements: values.len(),
        ..PairingPreparationCount::default()
    };
    record_pairing_profile_delta(&profile);
    PreparedG1 {
        values: prepared,
        preparation: profile.preparation,
    }
}

/// Normalize and prepare one reusable G2 operand vector.
pub fn prepare_g2<P: Pairing>(values: &[P::G2]) -> PreparedG2<P> {
    let mut profile = PairingComputationProfile::default();
    let normalize_started = Instant::now();
    let affine = P::G2::normalize_batch(values);
    profile.normalize_batch_ms = normalize_started.elapsed().as_secs_f64() * 1000.0;

    #[cfg(feature = "parallel")]
    let use_parallel = values.len() >= PAIRING_PARALLEL_THRESHOLD;
    #[cfg(not(feature = "parallel"))]
    let use_parallel = false;

    let prepare_started = Instant::now();
    let prepared = if use_parallel {
        cfg_iter!(affine)
            .map(P::G2Prepared::from)
            .collect::<Vec<_>>()
    } else {
        affine
            .iter()
            .cloned()
            .map(P::G2Prepared::from)
            .collect::<Vec<_>>()
    };
    profile.prepare_ms = prepare_started.elapsed().as_secs_f64() * 1000.0;
    profile.preparation = PairingPreparationCount {
        g2_normalization_batches: 1,
        g2_normalized_elements: values.len(),
        g2_prepared_elements: values.len(),
        ..PairingPreparationCount::default()
    };
    record_pairing_profile_delta(&profile);
    PreparedG2 {
        values: prepared,
        preparation: profile.preparation,
    }
}

/// Evaluate one pairing product from reusable prepared operands.
pub fn pair_prepared<P: Pairing>(
    left: &PreparedG1<P>,
    right: &PreparedG2<P>,
) -> Result<PairingOutput<P>, Error> {
    validate_pairing_shape(left.values.len(), right.values.len())
        .map_err(|error| Box::new(error) as Error)?;

    #[cfg(feature = "parallel")]
    let use_parallel = left.values.len() >= PAIRING_PARALLEL_THRESHOLD;
    #[cfg(not(feature = "parallel"))]
    let use_parallel = false;

    cfg_multi_pairing_prepared_with_profile::<P>(
        &left.values,
        &right.values,
        use_parallel,
        PairingComputationProfile::default(),
    )
    .ok_or_else(|| Box::new(InnerProductError::PairingUnavailable) as Error)
}

pub fn cfg_multi_pairing_g1_affine_g2_prepared<P: Pairing>(
    left: &[P::G1Affine],
    right: &[P::G2Prepared],
) -> Option<PairingOutput<P>> {
    let mut profile = PairingComputationProfile::default();

    #[cfg(feature = "parallel")]
    let use_parallel = left.len() >= PAIRING_PARALLEL_THRESHOLD;
    #[cfg(not(feature = "parallel"))]
    let use_parallel = false;

    let prepare_started = Instant::now();
    let left = if use_parallel {
        cfg_iter!(left).map(P::G1Prepared::from).collect::<Vec<_>>()
    } else {
        left.iter()
            .cloned()
            .map(P::G1Prepared::from)
            .collect::<Vec<_>>()
    };
    profile.prepare_ms = prepare_started.elapsed().as_secs_f64() * 1000.0;
    profile.preparation = PairingPreparationCount {
        g1_prepared_elements: left.len(),
        ..PairingPreparationCount::default()
    };

    cfg_multi_pairing_prepared_with_profile::<P>(&left, right, use_parallel, profile)
}

fn cfg_multi_pairing_prepared_with_profile<P: Pairing>(
    left: &[P::G1Prepared],
    right: &[P::G2Prepared],
    use_parallel: bool,
    mut profile: PairingComputationProfile,
) -> Option<PairingOutput<P>> {
    debug_assert_eq!(left.len(), right.len());

    let chunk_size = if use_parallel {
        let num_chunks = rayon::current_num_threads();
        if num_chunks <= left.len() {
            left.len() / num_chunks
        } else {
            1
        }
    } else {
        left.len().max(1)
    };

    // Compute all the (partial) pairings and take the product. We have to take the product over
    // P::TargetField because MillerLoopOutput doesn't impl Product
    let miller_loop_started = Instant::now();
    let ml_result = if use_parallel {
        left.par_chunks(chunk_size)
            .zip(right.par_chunks(chunk_size))
            .map(|(aa, bb)| P::multi_miller_loop(aa.iter().cloned(), bb.iter().cloned()).0)
            .product()
    } else {
        left.chunks(chunk_size)
            .zip(right.chunks(chunk_size))
            .map(|(aa, bb)| P::multi_miller_loop(aa.iter().cloned(), bb.iter().cloned()).0)
            .product()
    };
    profile.miller_loop_ms = miller_loop_started.elapsed().as_secs_f64() * 1000.0;

    let final_exponentiation_started = Instant::now();
    let result = P::final_exponentiation(MillerLoopOutput(ml_result));
    profile.final_exponentiation_ms = final_exponentiation_started.elapsed().as_secs_f64() * 1000.0;
    record_pairing_profile_delta(&profile);
    result
}

#[derive(Copy, Clone)]
pub struct MultiexponentiationInnerProduct<G: CurveGroup> {
    _projective: PhantomData<G>,
}

impl<G: CurveGroup> InnerProduct for MultiexponentiationInnerProduct<G> {
    type LeftMessage = G;
    type RightMessage = G::ScalarField;
    type Output = G;

    fn inner_product(
        left: &[Self::LeftMessage],
        right: &[Self::RightMessage],
    ) -> Result<Self::Output, Error> {
        if left.len() != right.len() {
            return Err(Box::new(InnerProductError::MessageLengthInvalid(
                left.len(),
                right.len(),
            )));
        };

        // Can unwrap because we did the length check above
        Ok(G::msm(&G::normalize_batch(left), &right).unwrap())
    }
}

#[derive(Copy, Clone)]
pub struct ScalarInnerProduct<F: Field> {
    _field: PhantomData<F>,
}

impl<F: Field> InnerProduct for ScalarInnerProduct<F> {
    type LeftMessage = F;
    type RightMessage = F;
    type Output = F;

    fn inner_product(
        left: &[Self::LeftMessage],
        right: &[Self::RightMessage],
    ) -> Result<Self::Output, Error> {
        if left.len() != right.len() {
            return Err(Box::new(InnerProductError::MessageLengthInvalid(
                left.len(),
                right.len(),
            )));
        };
        Ok(cfg_iter!(left).zip(right).map(|(x, y)| *x * y).sum())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use ark_bls12_381::Bls12_381;
    use ark_ec::CurveGroup;
    use ark_ff::UniformRand;
    use ark_std::rand::{rngs::StdRng, SeedableRng};
    use std::sync::{Mutex, OnceLock};

    fn test_lock() -> &'static Mutex<()> {
        static LOCK: OnceLock<Mutex<()>> = OnceLock::new();
        LOCK.get_or_init(|| Mutex::new(()))
    }

    #[test]
    fn cfg_multi_pairing_matches_reference_across_threshold_boundary() {
        let _guard = test_lock().lock().expect("test lock mutex poisoned");
        let mut rng = StdRng::seed_from_u64(7);
        let below_threshold = PAIRING_PARALLEL_THRESHOLD.saturating_sub(1).max(1);
        let sizes = [1usize, below_threshold, PAIRING_PARALLEL_THRESHOLD];

        for size in sizes {
            let left = (0..size)
                .map(|_| <Bls12_381 as Pairing>::G1::rand(&mut rng))
                .collect::<Vec<_>>();
            let right = (0..size)
                .map(|_| <Bls12_381 as Pairing>::G2::rand(&mut rng))
                .collect::<Vec<_>>();

            let expected = Bls12_381::multi_pairing(
                <Bls12_381 as Pairing>::G1::normalize_batch(&left),
                <Bls12_381 as Pairing>::G2::normalize_batch(&right),
            );
            let actual = cfg_multi_pairing::<Bls12_381>(&left, &right).expect("pairing result");

            assert_eq!(actual, expected, "mismatch at size {size}");
        }
    }

    #[test]
    fn cfg_multi_pairing_records_stage_profile() {
        let _guard = test_lock().lock().expect("test lock mutex poisoned");
        let mut rng = StdRng::seed_from_u64(9);
        let size = 4usize;
        let left = (0..size)
            .map(|_| <Bls12_381 as Pairing>::G1::rand(&mut rng))
            .collect::<Vec<_>>();
        let right = (0..size)
            .map(|_| <Bls12_381 as Pairing>::G2::rand(&mut rng))
            .collect::<Vec<_>>();

        reset_pairing_profile_accumulator();
        let _ = cfg_multi_pairing::<Bls12_381>(&left, &right).expect("pairing result");
        let profile = pairing_profile_snapshot();

        assert!(profile.normalize_batch_ms >= 0.0);
        assert!(profile.prepare_ms >= 0.0);
        assert!(profile.miller_loop_ms >= 0.0);
        assert!(profile.final_exponentiation_ms >= 0.0);
    }

    #[test]
    fn cfg_multi_pairing_g1_affine_g2_prepared_matches_projective_path() {
        let _guard = test_lock().lock().expect("test lock mutex poisoned");
        let mut rng = StdRng::seed_from_u64(29);
        let size = 4usize;
        let left = (0..size)
            .map(|_| <Bls12_381 as Pairing>::G1::rand(&mut rng))
            .collect::<Vec<_>>();
        let right = (0..size)
            .map(|_| <Bls12_381 as Pairing>::G2::rand(&mut rng))
            .collect::<Vec<_>>();
        let left_affine = <Bls12_381 as Pairing>::G1::normalize_batch(&left);
        let right_prepared = <Bls12_381 as Pairing>::G2::normalize_batch(&right)
            .into_iter()
            .map(<Bls12_381 as Pairing>::G2Prepared::from)
            .collect::<Vec<_>>();

        reset_pairing_profile_accumulator();
        let projective = cfg_multi_pairing::<Bls12_381>(&left, &right).expect("projective result");

        reset_pairing_profile_accumulator();
        let prepared =
            cfg_multi_pairing_g1_affine_g2_prepared::<Bls12_381>(&left_affine, &right_prepared)
                .expect("prepared result");
        let profile = pairing_profile_snapshot();

        assert_eq!(projective, prepared);
        assert_eq!(profile.normalize_batch_ms, 0.0);
        assert!(profile.prepare_ms >= 0.0);
    }

    #[test]
    fn pairing_profile_survives_cross_thread_collection() {
        let _guard = test_lock().lock().expect("test lock mutex poisoned");
        reset_pairing_profile_accumulator();
        std::thread::spawn(|| {
            record_pairing_profile_delta(&PairingComputationProfile {
                normalize_batch_ms: 1.0,
                prepare_ms: 2.0,
                miller_loop_ms: 3.0,
                final_exponentiation_ms: 4.0,
                preparation: PairingPreparationCount::default(),
            });
        })
        .join()
        .expect("pairing writer thread should join");

        let snapshot = std::thread::spawn(pairing_profile_snapshot)
            .join()
            .expect("pairing reader thread should join");

        assert_eq!(snapshot.normalize_batch_ms, 1.0);
        assert_eq!(snapshot.prepare_ms, 2.0);
        assert_eq!(snapshot.miller_loop_ms, 3.0);
        assert_eq!(snapshot.final_exponentiation_ms, 4.0);
    }
}
