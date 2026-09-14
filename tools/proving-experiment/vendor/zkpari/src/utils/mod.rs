//! Shared utilities: MSM helpers, the Fiat-Shamir transcript, and the
//! protocol's challenge derivation.

pub mod transcript;

use crate::data_structures::VerifyingKey;
use ark_ec::pairing::Pairing;
use ark_ec::VariableBaseMSM;
use ark_ff::{BigInteger, PrimeField};
use transcript::IOPTranscript;

/////////////////////////// Fiat-Shamir challenge ///////////////////////////

/// Compute the Fiat-Shamir challenge `zeta`. Binds the verifying key, the
/// public input, and the first-message commitment `T`.
///
/// The verifying key is absorbed once, when the key is built
/// ([`VerifyingKey::new`]); this clones that seeded state rather than
/// re-serializing the key on every call. The absorbed bytes are identical
/// either way, so challenges are unchanged.
pub(crate) fn compute_chall<E: Pairing>(
    vk: &VerifyingKey<E>,
    public_input: &[E::ScalarField],
    t_g: &E::G1Affine,
) -> E::ScalarField {
    let mut transcript = vk.transcript().clone();
    append_input_and_comm::<E>(&mut transcript, public_input, t_g);
    transcript.get_and_append_challenge(b"zeta")
}

fn append_input_and_comm<E: Pairing>(
    transcript: &mut IOPTranscript<E::ScalarField>,
    public_input: &[E::ScalarField],
    t_g: &E::G1Affine,
) {
    transcript.append_serializable_element(b"input", &public_input.to_vec());
    transcript.append_serializable_element(b"comm", t_g);
}

/////////////////////////// MSM helpers ///////////////////////////

/// Compute an MSM using a 2-bit windowed non-adjacent form.
///
/// Used for the verifier's single 3-term MSM
/// `zeta U - v_a (alpha G) - v_R (beta G)`: sharing one doubling chain across
/// the three points beats three independent scalar multiplications by ~30%
/// and the library MSM by ~15% on BLS12-381 G1 (see the ignored
/// `verifier_msm` test for the measurement).
pub fn msm_bigint_wnaf<V: VariableBaseMSM>(
    bases: &[V::MulBase],
    scalars: &[<V::ScalarField as PrimeField>::BigInt],
) -> V {
    const C: usize = 2;
    let digits_count = const { (V::ScalarField::MODULUS_BIT_SIZE as usize).div_ceil(C) };
    let radix: u64 = 1 << C;
    let scalar_digits = scalars
        .iter()
        .flat_map(|s| make_digits::<C>(s, digits_count, radix))
        .collect::<Vec<_>>();
    let zero = V::zero();
    let mut window_sums = (0..digits_count).map(|i| {
        let mut buckets = [zero; 1 << C];
        for (digits, base) in scalar_digits.chunks(digits_count).zip(bases) {
            use ark_std::cmp::Ordering;
            let scalar = digits[i];
            match 0.cmp(&scalar) {
                Ordering::Less => buckets[(scalar - 1) as usize] += base,
                Ordering::Greater => buckets[(-scalar - 1) as usize] -= base,
                Ordering::Equal => (),
            }
        }

        let mut running_sum = V::zero();
        let mut res = V::zero();
        buckets.into_iter().rev().for_each(|b| {
            running_sum += &b;
            res += &running_sum;
        });
        res
    });

    // We store the sum for the lowest window.
    let lowest = window_sums.next().unwrap();

    // We're traversing windows from high to low.
    lowest
        + window_sums.rev().fold(zero, |mut total, sum_i| {
            total += sum_i;
            for _ in 0..C {
                total.double_in_place();
            }
            total
        })
}

// From: https://github.com/arkworks-rs/gemini/blob/main/src/kzg/msm/variable_base.rs#L20
#[inline]
fn make_digits<const W: usize>(
    a: &impl BigInteger,
    digits_count: usize,
    radix: u64,
) -> impl Iterator<Item = i64> + '_ {
    let scalar = a.as_ref();
    let window_mask: u64 = radix - 1;

    let mut carry = 0u64;
    (0..digits_count).map(move |i| {
        // Construct a buffer of bits of the scalar, starting at `bit_offset`.
        let bit_offset = i * W;
        let u64_idx = bit_offset / 64;
        let bit_idx = bit_offset % 64;
        // Read the bits from the scalar
        let scalar_at_idx = scalar[u64_idx];
        let bit_buf = if bit_idx < 64 - W || u64_idx == scalar.len() - 1 {
            // This window's bits are contained in a single u64,
            // or it's the last u64 anyway.
            scalar_at_idx >> bit_idx
        } else {
            let scalar_at_idx_next = scalar[1 + u64_idx];
            // Combine the current u64's bits with the bits from the next u64
            (scalar_at_idx >> bit_idx) | (scalar_at_idx_next << (64 - bit_idx))
        };

        // Read the actual coefficient value from the window
        let coef = carry + (bit_buf & window_mask); // coef = [0, 2^r)

        // Recenter coefficients from [0,2^w) to [-2^w/2, 2^w/2)
        carry = (coef + radix / 2) >> W;
        let mut digit = (coef as i64) - (carry << W) as i64;

        if i == digits_count - 1 {
            digit += (carry << W) as i64;
        }
        digit
    })
}
