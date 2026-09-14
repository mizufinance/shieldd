use crate::data_structures::{Proof, VerifyingKey};
use crate::utils::compute_chall;
use crate::utils::msm_bigint_wnaf;
use crate::ZkPari;
use ark_ec::pairing::Pairing;
use ark_ff::{batch_inversion_and_mul, FftField, Field, Zero};
use ark_poly::{EvaluationDomain, Radix2EvaluationDomain};
use ark_std::{end_timer, ops::Neg, start_timer};

impl<E: Pairing> ZkPari<E> {
    /// Verify a proof against the public input.
    ///
    /// Checks the 3-pairing equation
    ///
    /// ```text
    /// e(T, delta H) = e(U, tau H - zeta H) e(v_a alpha G + v_R beta G, H)
    /// ```
    ///
    /// where `v_R = (v_a + x_A(zeta))^2` (`x_B = 0` after instance
    /// outlining).
    ///
    /// Returns `false` (never panics) on any invalid input: a wrong-length
    /// public input, a proof that fails the pairing check, and — with
    /// probability ~2^-172 per verification — a Fiat-Shamir challenge that
    /// lands inside the evaluation domain `H`, where the Lagrange
    /// reconstruction of `x_A` is undefined. An honest proof re-proved with
    /// fresh randomness will pass, so rejecting that astronomically unlikely
    /// case is sound and costs honest parties nothing.
    pub fn verify(proof: &Proof<E>, vk: &VerifyingKey<E>, public_input: &[E::ScalarField]) -> bool
    where
        E::G1Affine: Neg<Output = E::G1Affine>,
    {
        let timer_verify =
            start_timer!(|| format!("Verification (|x|= {})", vk.succinct_index.instance_len));
        let Proof { t_g, u_g, v_a } = proof;
        // Malformed statements are rejected, not panicked on
        if public_input.len() != vk.succinct_index.instance_len - 1 {
            return false;
        }

        /////////////////////// Challenge Computation ///////////////////////
        let timer_transcript_init = start_timer!(|| "Computing Challenge");
        let challenge = compute_chall::<E>(vk, public_input, t_g);
        end_timer!(timer_transcript_init);

        /////////////////////// Computing x_A(zeta) ///////////////////////
        let timer_x_poly = start_timer!(|| "Compute x_a polynomial");
        let instance_size = vk.succinct_index.instance_len;
        let mut px_evaluations = Vec::with_capacity(instance_size);
        let r1cs_orig_num_cnstrs = vk.succinct_index.num_constraints - instance_size;

        px_evaluations.push(E::ScalarField::ONE);
        px_evaluations.extend_from_slice(public_input);
        let lag_coeffs_time = start_timer!(|| "Computing last lagrange coefficients");
        // `None` means the challenge landed inside the evaluation domain:
        // reject rather than panic (see the method docs).
        let Some(lagrange_coeffs) = Self::eval_last_lagrange_coeffs::<E::ScalarField>(
            &vk.domain,
            challenge,
            r1cs_orig_num_cnstrs,
            vk.succinct_index.instance_len,
        ) else {
            return false;
        };
        end_timer!(lag_coeffs_time);
        let x_a = lagrange_coeffs
            .into_iter()
            .zip(px_evaluations)
            .fold(E::ScalarField::zero(), |acc, (x, d)| acc + x * d);
        end_timer!(timer_x_poly);

        /////////////////////// Computing v_R ///////////////////////
        // v_R = (v_a + x_A(zeta))^2 - x_B(zeta), and x_B = 0 after instance
        // outlining
        let v_r = (x_a + v_a).square();

        /////////////////////// Final Pairing ///////////////////////
        // e(T, d H) * e(-U, tau H) * e(zeta U - v_a alpha G - v_R beta G, H) == 1
        let timer_scalar_mul = start_timer!(|| "Scalar mul");
        let last_left: E::G1Affine = msm_bigint_wnaf::<E::G1>(
            &[*u_g, -vk.alpha_g, -vk.beta_g],
            &[challenge.into(), (*v_a).into(), v_r.into()],
        )
        .into();
        end_timer!(timer_scalar_mul);

        let timer_pairing = start_timer!(|| "Final Pairing");
        let g1_terms = [*t_g, -*u_g, last_left];
        let g2_terms = [
            vk.delta_h_prep.clone(),
            vk.tau_h_prep.clone(),
            vk.h_prep.clone(),
        ];
        let result = E::multi_pairing(g1_terms, g2_terms);
        let accepted = result.is_zero();
        end_timer!(timer_pairing);
        end_timer!(timer_verify);
        accepted
    }

    /// Lagrange coefficients `L_j(zeta)` for the trailing (outlining) rows
    /// `j = start_ind .. start_ind + count`.
    ///
    /// Returns `None` when `zeta` lies inside the evaluation domain (the
    /// vanishing polynomial is zero there, so the coefficients are
    /// undefined); callers reject the proof in that ~2^-172 case.
    pub(crate) fn eval_last_lagrange_coeffs<F: FftField>(
        domain: &Radix2EvaluationDomain<F>,
        zeta: F,
        start_ind: usize,
        count: usize,
    ) -> Option<Vec<F>> {
        let z_h_at_zeta: F = domain.evaluate_vanishing_polynomial(zeta);
        if z_h_at_zeta.is_zero() {
            return None;
        }
        let group_gen: F = domain.group_gen();

        let group_gen_inv = domain.group_gen_inv();
        let v_0_inv = domain.size_as_field_element();

        let start_gen = group_gen.pow([start_ind as u64]);
        let z_h_at_zeta_inv = z_h_at_zeta.inverse().expect("checked nonzero above");
        let mut l_i = z_h_at_zeta_inv * v_0_inv;
        let mut negative_cur_elem = -start_gen;
        let mut lagrange_coefficients_inverse = vec![F::zero(); count];
        for coeff in &mut lagrange_coefficients_inverse.iter_mut() {
            *coeff = l_i * (zeta + negative_cur_elem);
            l_i *= &group_gen_inv;
            negative_cur_elem *= &group_gen;
        }
        batch_inversion_and_mul(lagrange_coefficients_inverse.as_mut_slice(), &start_gen);
        Some(lagrange_coefficients_inverse)
    }
}
