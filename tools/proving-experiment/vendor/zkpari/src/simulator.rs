//! Honest-verifier zero-knowledge simulator (Theorem 1).
//!
//! Given the setup [`Trapdoor`], the simulator produces an accepting
//! transcript `(T, U, v_a)` for any public input *without a witness*. The
//! output is statistically indistinguishable from an honest proof (distance
//! at most `1/(|F| - |H|)`), yet costs only a handful of group operations
//! instead of full circuit synthesis and the prover MSMs.
//!
//! In the non-interactive (Fiat-Shamir) setting the simulator works because the
//! first message `T` is independent of the challenge: the simulator forms `T`
//! from a uniform `y`, derives `zeta = FS(vk, x, T)` exactly as the verifier
//! does, and then solves the single pairing equation for the unique opening
//! `U`. The result passes [`ZkPari::verify`] unchanged.
//!
//! This is **not** a prover: a simulated transcript attests nothing (it has
//! no witness). Its uses are zero-knowledge testing, verifier benchmarking,
//! and load generation — and it requires the trapdoor, which an honest
//! deployment destroys.

use crate::data_structures::{Proof, Trapdoor, VerifyingKey};
use crate::utils::compute_chall;
use crate::ZkPari;
use ark_ec::pairing::Pairing;
use ark_ec::{AffineRepr, CurveGroup};
use ark_ff::{Field, Zero};
use ark_std::rand::RngCore;
use ark_std::UniformRand;

impl<E: Pairing> ZkPari<E> {
    /// Simulates an accepting proof for `public_input` using the setup
    /// `trapdoor`.
    ///
    /// The returned [`Proof`] verifies against `vk`. It carries no witness
    /// and proves no statement; see the module documentation.
    ///
    /// # Panics
    ///
    /// Panics if the public input length does not match the instance, or in
    /// the astronomically unlikely events that the Fiat-Shamir challenge
    /// equals the trapdoor `tau` or lands inside the evaluation domain.
    pub fn simulate(
        trapdoor: &Trapdoor<E>,
        vk: &VerifyingKey<E>,
        public_input: &[E::ScalarField],
        rng: &mut impl RngCore,
    ) -> Proof<E> {
        assert_eq!(
            public_input.len(),
            vk.succinct_index.instance_len - 1,
            "public input length must match the instance"
        );

        let delta_inv = trapdoor
            .delta
            .inverse()
            .expect("delta is a nonzero trapdoor scalar");

        // Instance contributions at tau: x_hat_A(tau), x_hat_B(tau), over the
        // public assignment x = (1, public_input...).
        let px = core::iter::once(E::ScalarField::ONE).chain(public_input.iter().copied());
        let (x_hat_a_tau, x_hat_b_tau) = px.enumerate().fold(
            (E::ScalarField::zero(), E::ScalarField::zero()),
            |(acc_a, acc_b), (i, x)| {
                (
                    acc_a + x * trapdoor.instance_a_at_tau[i],
                    acc_b + x * trapdoor.instance_b_at_tau[i],
                )
            },
        );

        // First message:
        // T = [(alpha (y - x_hat_A(tau)) + beta (y^2 - x_hat_B(tau))) / delta] G.
        // `y` stands in for the honest z_A(tau); `v_a` stands in for
        // z_A(zeta) - x_A(zeta).
        let y = E::ScalarField::rand(rng);
        let v_a = E::ScalarField::rand(rng);

        let t_coeff = (trapdoor.alpha * (y - x_hat_a_tau)
            + trapdoor.beta * (y.square() - x_hat_b_tau))
            * delta_inv;
        let t_g = (vk.g.into_group() * t_coeff).into_affine();

        // Challenge: identical Fiat-Shamir derivation to the verifier. T does
        // not depend on zeta, so deriving zeta here is consistent.
        let zeta = compute_chall::<E>(vk, public_input, &t_g);
        assert_ne!(
            zeta, trapdoor.tau,
            "Fiat-Shamir challenge collided with the trapdoor tau"
        );

        // v_R = (v_a + x_A(zeta))^2 - x_B(zeta), with x_B(zeta) = 0 after
        // outlining.
        let x_a_zeta = Self::instance_eval_a_at(vk, public_input, zeta);
        let v_r = (v_a + x_a_zeta).square();

        // Solve the verification equation for the unique accepting U:
        //   U = [ delta T - (alpha v_a + beta v_R) G ] / (tau - zeta).
        let inv = (trapdoor.tau - zeta)
            .inverse()
            .expect("tau - zeta is nonzero (checked above)");
        let u_proj = t_g.into_group() * (trapdoor.delta * inv)
            - vk.g.into_group() * ((trapdoor.alpha * v_a + trapdoor.beta * v_r) * inv);
        let u_g = u_proj.into_affine();

        Proof { t_g, u_g, v_a }
    }

    /// Computes the instance contribution `x_A(zeta) = sum_i x_i a_i(zeta)`
    /// to the A-side polynomial at `zeta`, using the same last-Lagrange
    /// evaluation the verifier uses.
    fn instance_eval_a_at(
        vk: &VerifyingKey<E>,
        public_input: &[E::ScalarField],
        zeta: E::ScalarField,
    ) -> E::ScalarField {
        let instance_size = vk.succinct_index.instance_len;
        let r1cs_orig_num_cnstrs = vk.succinct_index.num_constraints - instance_size;
        let lagrange_coeffs = Self::eval_last_lagrange_coeffs::<E::ScalarField>(
            &vk.domain,
            zeta,
            r1cs_orig_num_cnstrs,
            instance_size,
        )
        .expect("challenge landed inside the evaluation domain (~2^-172)");
        let px = core::iter::once(E::ScalarField::ONE).chain(public_input.iter().copied());
        lagrange_coeffs
            .into_iter()
            .zip(px)
            .fold(E::ScalarField::zero(), |acc, (coeff, x)| acc + coeff * x)
    }
}
