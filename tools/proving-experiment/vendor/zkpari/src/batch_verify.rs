use crate::data_structures::{Proof, VerifyingKey};
use crate::utils::msm_bigint_wnaf;
use crate::ZkPari;
use ark_ec::pairing::Pairing;
use ark_ec::VariableBaseMSM;
use ark_ff::{batch_inversion_and_mul, FftField, Field, PrimeField, Zero};
use ark_poly::{EvaluationDomain, Radix2EvaluationDomain};
use ark_std::{ops::Neg, rand::RngCore};
use rayon::prelude::*;

impl<E: Pairing> ZkPari<E> {
    /// Batch verification of N proofs using a random linear combination.
    ///
    /// Reduces N independent 3-pairing checks to a single 3-pairing check by
    /// sampling random 128-bit challenges `rho_k` and accumulating:
    ///
    /// ```text
    /// T~ = sum rho_k T^(k),  U~ = sum rho_k U^(k),
    /// V~ = sum (rho_k zeta^(k)) U^(k),
    /// va~ = sum rho_k v_a^(k),  vR~ = sum rho_k v_R^(k)
    /// ```
    ///
    /// then checking
    ///
    /// ```text
    /// e(T~, delta H) * e(-U~, tau H) * e(V~ - va~ alpha G - vR~ beta G, H) == 1
    /// ```
    ///
    /// Returns `false` (never panics) on any invalid input: a wrong-length
    /// public input anywhere in the batch, a batch that fails the combined
    /// pairing check, and — with probability ~N * 2^-172 — a Fiat-Shamir
    /// challenge landing inside the evaluation domain `H` for some proof in
    /// the batch, where the Lagrange reconstruction of that proof's `x_A` is
    /// undefined. Honest proofs re-proved with fresh randomness will pass,
    /// so rejecting that astronomically unlikely case is sound.
    pub fn batch_verify(
        proofs_and_inputs: &[(Proof<E>, Vec<E::ScalarField>)],
        vk: &VerifyingKey<E>,
        rng: &mut impl RngCore,
    ) -> bool
    where
        E::G1Affine: Neg<Output = E::G1Affine>,
    {
        let n = proofs_and_inputs.len();
        if n == 0 {
            return true;
        }
        // Malformed statements are rejected, not panicked on
        let instance_len = vk.succinct_index.instance_len;
        if proofs_and_inputs
            .iter()
            .any(|(_, x)| x.len() != instance_len - 1)
        {
            return false;
        }
        if n == 1 {
            return Self::verify(&proofs_and_inputs[0].0, vk, &proofs_and_inputs[0].1);
        }

        /////////////////////// Challenge computation ///////////////////////
        // The verifying key is already absorbed into `vk`'s transcript, so
        // each challenge only absorbs its own proof's material. Challenges
        // are independent across proofs, so they parallelize over the
        // ambient rayon pool (as do the Lagrange and instance phases below;
        // only rho sampling and the final scalar folds stay sequential).
        let challenges: Vec<E::ScalarField> = proofs_and_inputs
            .par_iter()
            .map(|(proof, public_input)| {
                crate::utils::compute_chall::<E>(vk, public_input, &proof.t_g)
            })
            .collect();

        /////////////////////// Per-proof computations ///////////////////////
        let instance_size = vk.succinct_index.instance_len;
        let r1cs_orig_num_cnstrs = vk.succinct_index.num_constraints - instance_size;
        // `None` means some proof's challenge landed inside the evaluation
        // domain: reject rather than panic (see the method docs).
        let Some(all_lagrange_coeffs) = Self::batch_eval_last_lagrange_coeffs::<E::ScalarField>(
            &vk.domain,
            &challenges,
            r1cs_orig_num_cnstrs,
            instance_size,
        ) else {
            return false;
        };

        // For each proof k: compute x_A^(k)(zeta) and v_R^(k) = (x_A + v_a)^2
        let v_rs: Vec<E::ScalarField> = proofs_and_inputs
            .par_iter()
            .zip(all_lagrange_coeffs)
            .map(|((proof, public_input), lagrange_coeffs)| {
                let x_a = lagrange_coeffs
                    .into_iter()
                    .zip(core::iter::once(E::ScalarField::ONE).chain(public_input.iter().copied()))
                    .fold(E::ScalarField::zero(), |acc, (l, x)| acc + l * x);
                (x_a + proof.v_a).square()
            })
            .collect();

        /////////////////////// Random linear combination ///////////////////////
        // Sample 128-bit rho <-$ [0, 2^128)^N (sufficient for 2^-128 soundness).
        // The MSMs below use ark-ec's implementation, which is parallel and
        // already skips the all-zero high windows these scalars leave empty.
        let rhos: Vec<E::ScalarField> = (0..n)
            .map(|_| {
                let mut bytes = [0u8; 16];
                rng.fill_bytes(&mut bytes);
                E::ScalarField::from_le_bytes_mod_order(&bytes)
            })
            .collect();

        let t_bases: Vec<E::G1Affine> = proofs_and_inputs.iter().map(|(p, _)| p.t_g).collect();
        let u_bases: Vec<E::G1Affine> = proofs_and_inputs.iter().map(|(p, _)| p.u_g).collect();

        // T~, U~ = Sum rho_k * {T, U}^(k)
        let t_tilde: E::G1Affine =
            <E::G1 as VariableBaseMSM>::msm_unchecked(&t_bases, &rhos).into();
        let u_tilde: E::G1Affine =
            <E::G1 as VariableBaseMSM>::msm_unchecked(&u_bases, &rhos).into();

        // V~ = Sum (rho_k * zeta^(k)) * U^(k)  [full-width scalars]
        let rho_zeta: Vec<E::ScalarField> = rhos
            .iter()
            .zip(&challenges)
            .map(|(rho, zeta)| *rho * *zeta)
            .collect();
        let v_tilde: E::G1Affine =
            <E::G1 as VariableBaseMSM>::msm_unchecked(&u_bases, &rho_zeta).into();

        // va~ = Sum rho_k * v_a^(k),  vR~ = Sum rho_k * v_R^(k)
        let v_a_tilde = rhos
            .iter()
            .zip(proofs_and_inputs.iter())
            .fold(E::ScalarField::zero(), |acc, (rho, (p, _))| {
                acc + *rho * p.v_a
            });
        let v_r_tilde = rhos
            .iter()
            .zip(&v_rs)
            .fold(E::ScalarField::zero(), |acc, (rho, vr)| acc + *rho * *vr);

        /////////////////////// Final multi-pairing check ///////////////////////
        let last_left: E::G1Affine = msm_bigint_wnaf::<E::G1>(
            &[v_tilde, -vk.alpha_g, -vk.beta_g],
            &[
                E::ScalarField::ONE.into(),
                v_a_tilde.into(),
                v_r_tilde.into(),
            ],
        )
        .into();

        let g1_terms = [t_tilde, -u_tilde, last_left];
        let g2_terms = [
            vk.delta_h_prep.clone(),
            vk.tau_h_prep.clone(),
            vk.h_prep.clone(),
        ];

        E::multi_pairing(g1_terms, g2_terms).is_zero()
    }

    /// Batch variant of `eval_last_lagrange_coeffs`. Precomputes domain
    /// constants and the geometric sequence once, then batch-inverts the
    /// denominators across all challenges.
    ///
    /// Returns the Lagrange coefficients per proof, or `None` if any
    /// challenge lies inside the evaluation domain (the coefficients are
    /// undefined there; callers reject in that ~2^-172-per-proof case).
    pub fn batch_eval_last_lagrange_coeffs<F: FftField>(
        domain: &Radix2EvaluationDomain<F>,
        challenges: &[F],
        start_ind: usize,
        count: usize,
    ) -> Option<Vec<Vec<F>>> {
        let group_gen = domain.group_gen();
        let group_gen_inv = domain.group_gen_inv();
        let domain_size = domain.size_as_field_element();
        let start_gen = group_gen.pow([start_ind as u64]);

        // neg_elems[i] = -omega^(start_ind + i), shared across all proofs
        let mut neg_elems = Vec::with_capacity(count);
        let mut neg_cur = -start_gen;
        for _ in 0..count {
            neg_elems.push(neg_cur);
            neg_cur *= &group_gen;
        }

        // Lagrange coefficients: L_j(zeta) = omega^j * z_H(zeta) / (N * (zeta - omega^j)).
        // z_H is in the numerator, so we build the denominators
        // N * omega^(-j) * (zeta - omega^j) and batch-invert them.
        //
        // Proofs are processed in chunks: within a chunk the flattened
        // denominators share one Montgomery batch inversion (a field
        // inversion costs ~100x a multiplication, so per-proof inversions
        // would dominate this whole function), and the chunks parallelize
        // over the ambient rayon pool. The shared numerator factor
        // start_gen rides along with the inversion; the per-proof
        // z_H(zeta_k) is applied afterwards.
        const CHUNK: usize = 1024;
        let per_chunk: Option<Vec<Vec<Vec<F>>>> = challenges
            .par_chunks(CHUNK)
            .map(|zetas| {
                let mut flat = Vec::with_capacity(zetas.len() * count);
                for zeta in zetas {
                    let mut l_i = domain_size;
                    for neg_elem in &neg_elems {
                        flat.push(l_i * (*zeta + *neg_elem));
                        l_i *= &group_gen_inv;
                    }
                }
                batch_inversion_and_mul(&mut flat, &start_gen);

                flat.chunks_exact(count)
                    .zip(zetas)
                    .map(|(coeffs, zeta)| {
                        let z_h = domain.evaluate_vanishing_polynomial(*zeta);
                        if z_h.is_zero() {
                            return None;
                        }
                        Some(coeffs.iter().map(|c| *c * z_h).collect())
                    })
                    .collect()
            })
            .collect();

        per_chunk.map(|chunks| chunks.into_iter().flatten().collect())
    }
}
