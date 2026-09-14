use std::rc::Rc;

use crate::data_structures::{Proof, ProvingKey};
use crate::utils::compute_chall;
use crate::ZkPari;
use ark_ec::{pairing::Pairing, VariableBaseMSM};
use ark_ff::{AdditiveGroup, Field, Zero};
use ark_poly::{
    univariate::DensePolynomial, DenseUVPolynomial, EvaluationDomain, Evaluations, Polynomial,
    Radix2EvaluationDomain,
};
use ark_relations::{
    gr1cs::{
        self,
        instance_outliner::{outline_sr1cs, InstanceOutliner},
        predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL,
        ConstraintSynthesizer, ConstraintSystem, Matrix, OptimizationGoal, SynthesisError,
    },
    sr1cs::Sr1csAdapter,
};
use ark_std::{cfg_iter_mut, end_timer, rand::RngCore, start_timer, UniformRand};

#[cfg(feature = "parallel")]
use rayon::prelude::*;

impl<E: Pairing> ZkPari<E> {
    /// Produce a proof for `circuit` under `pk`.
    ///
    /// Returns [`SynthesisError::Unsatisfiable`] if the witnessed assignment
    /// does not satisfy the constraints (detected via a nonzero remainder in
    /// the vanishing-polynomial division, so unsatisfiable inputs cannot
    /// silently yield garbage proofs in release builds).
    pub fn prove<C: ConstraintSynthesizer<E::ScalarField>, R: RngCore>(
        circuit: C,
        pk: &ProvingKey<E>,
        rng: &mut R,
    ) -> Result<Proof<E>, SynthesisError>
    where
        E::ScalarField: Field,
    {
        let timer_p = start_timer!(|| "Total Proving time");
        let cs = Self::circuit_to_prover_cs(circuit)?;
        // The constraint system must consist of exactly one predicate, the
        // Square R1CS one; anything else would be silently dropped by the
        // `to_matrices()[SR1CS_PREDICATE_LABEL]` lookup below. O(1) checks,
        // enforced in all builds (see keygen for the same guard).
        assert_eq!(
            cs.num_predicates(),
            1,
            "ZK-Pari supports exactly one predicate (SR1CS); this circuit registered more"
        );
        assert_eq!(
            cs.num_constraints(),
            cs.get_predicate_num_constraints(SR1CS_PREDICATE_LABEL)
                .expect("the single predicate must be SR1CS"),
            "every constraint must be SR1CS"
        );
        #[cfg(debug_assertions)]
        assert!(cs.is_satisfied().unwrap());

        /////////////////////// Extract the constraint system information ///////////////////////
        let timer_extract_info = start_timer!(|| "Extract constraint system information");
        let num_constraints = cs.num_constraints();
        let instance_assignment = &cs.assignments.instance_assignment;
        let witness_assignment = &cs.assignments.witness_assignment;
        let matrices = &cs.to_matrices().unwrap()[SR1CS_PREDICATE_LABEL];
        end_timer!(timer_extract_info);

        let result = Self::prove_matrices(
            pk,
            matrices,
            instance_assignment,
            witness_assignment,
            num_constraints,
            rng,
            None,
            &mut E::G1::msm_unchecked,
        );
        end_timer!(timer_p);
        result
    }

    pub(crate) fn prove_matrices<R: RngCore>(
        pk: &ProvingKey<E>,
        matrices: &[Matrix<E::ScalarField>],
        instance_assignment: &[E::ScalarField],
        witness_assignment: &[E::ScalarField],
        num_constraints: usize,
        rng: &mut R,
        mut profile: Option<&mut crate::ProvingProfile>,
        msm: &mut impl FnMut(&[E::G1Affine], &[E::ScalarField]) -> E::G1,
    ) -> Result<Proof<E>, SynthesisError> {
        let mut phase_start = profile.as_ref().map(|_| std::time::Instant::now());
        macro_rules! phase {
            ($name:ident) => {
                if let (Some(profile), Some(start)) = (profile.as_deref_mut(), phase_start.as_mut())
                {
                    let now = std::time::Instant::now();
                    profile.$name = now.duration_since(*start).as_nanos() as u64;
                    *start = now;
                }
            };
        }
        let timer_p = start_timer!(|| "Prepared proving time");
        let domain = pk.verifying_key.domain;
        let domain_size = domain.size();
        if num_constraints.checked_next_power_of_two() != Some(domain_size) {
            return Err(SynthesisError::Unsatisfiable);
        }
        /////////////////////// Sampling the masks ///////////////////////
        // h(X) = eta_1 + eta_2 X masks the A-side.
        let timer_masks = start_timer!(|| "Sampling vanishing-polynomial masks");
        let eta_1 = E::ScalarField::rand(rng);
        let eta_2 = E::ScalarField::rand(rng);
        end_timer!(timer_masks);

        /////////////////////// Computing polynomials z_A, z_B, w_A ///////////////////////
        // After instance outlining, w_B == z_B (the B matrix has no instance
        // columns), so only three vectors are needed.
        let timer_compute_za_zb_wa = start_timer!(|| "Computing vectors z_A, z_B, w_A");
        let (z_a, z_b, w_a) = Self::compute_za_zb_wa(
            domain,
            &matrices[0],
            &matrices[1],
            instance_assignment,
            witness_assignment,
            num_constraints,
        )
        .unwrap();
        end_timer!(timer_compute_za_zb_wa);
        phase!(vectors_ns);

        //////////////////////// Interpolating polynomials ///////////////////////
        let timer_interp = start_timer!(|| "Interpolating z_a, z_b, w_a polynomials");
        let z_a_hat = Evaluations::from_vec_and_domain(z_a, domain).interpolate();
        let z_b_hat = Evaluations::from_vec_and_domain(z_b, domain).interpolate();
        let w_a_hat = Evaluations::from_vec_and_domain(w_a, domain).interpolate();
        end_timer!(timer_interp);
        phase!(interpolation_ns);

        // x_A(zeta) is needed for the debug consistency check below; the
        // masks on z_A and w_A are identical, so the unmasked difference
        // already equals x_A.
        #[cfg(debug_assertions)]
        let (z_a_hat_check, z_b_hat_check) = (z_a_hat.clone(), z_b_hat.clone());

        /////////////////////// Computing the quotient polynomial ///////////////////////
        // The masked quotient is computed by expansion, never squaring the
        // masked (degree m+1) polynomial. With z := z_A^orig, b := z_B^orig,
        // h := eta_1 + eta_2 X and v := v_H = X^m - 1:
        //
        //   (z + h v)^2 - b = (z^2 - b) + v (2 h z + h^2 v)
        //
        // so q~ = q_orig + 2 h z + h^2 v with q_orig = (z^2 - b)/v_H.
        // This keeps every FFT at size <= 2m (squaring degree m+1 would round
        // the multiplication domain up to 4m).
        let timer_quotient = start_timer!(|| "Computing the quotient polynomial");
        let (q_orig, remainder) = (&z_a_hat * &z_a_hat - &z_b_hat).divide_by_vanishing_poly(domain);
        // A nonzero remainder means the assignment does not satisfy the
        // constraints. Rejecting here (in every build) is what keeps release
        // builds from emitting proofs that can never verify.
        if !remainder.is_zero() {
            end_timer!(timer_quotient);
            end_timer!(timer_p);
            return Err(SynthesisError::Unsatisfiable);
        }

        let mut q_coeffs = q_orig.coeffs;
        q_coeffs.resize(domain_size + 3, E::ScalarField::zero());
        // + 2 h z
        let two_eta_1 = eta_1.double();
        let two_eta_2 = eta_2.double();
        for (i, z_i) in z_a_hat.coeffs.iter().enumerate() {
            q_coeffs[i] += two_eta_1 * z_i;
            q_coeffs[i + 1] += two_eta_2 * z_i;
        }
        // + h^2 v_H = (eta_1^2 + 2 eta_1 eta_2 X + eta_2^2 X^2)(X^m - 1)
        let eta_1_sq = eta_1.square();
        let eta_cross = (eta_1 * eta_2).double();
        let eta_2_sq = eta_2.square();
        q_coeffs[0] -= eta_1_sq;
        q_coeffs[1] -= eta_cross;
        q_coeffs[2] -= eta_2_sq;
        q_coeffs[domain_size] += eta_1_sq;
        q_coeffs[domain_size + 1] += eta_cross;
        q_coeffs[domain_size + 2] += eta_2_sq;
        let q_tilde = DensePolynomial::from_coefficients_vec(q_coeffs);

        // Cross-check the expansion against the definitional computation
        #[cfg(debug_assertions)]
        {
            let mask_poly =
                |poly: &DensePolynomial<E::ScalarField>, c0: E::ScalarField, c1: E::ScalarField| {
                    let mut coeffs = poly.coeffs.clone();
                    coeffs.resize(coeffs.len().max(domain_size + 2), E::ScalarField::zero());
                    coeffs[0] -= c0;
                    coeffs[1] -= c1;
                    coeffs[domain_size] += c0;
                    coeffs[domain_size + 1] += c1;
                    DensePolynomial::from_coefficients_vec(coeffs)
                };
            let z_a_masked = mask_poly(&z_a_hat_check, eta_1, eta_2);
            let (q_check, rem) =
                (&z_a_masked * &z_a_masked - &z_b_hat_check).divide_by_vanishing_poly(domain);
            assert!(rem.is_zero());
            assert_eq!(q_tilde, q_check, "expanded quotient mismatch");
        }
        end_timer!(timer_quotient);
        phase!(quotient_ns);

        /////////////////////// Applying the vanishing-polynomial masks ///////////////////////
        // w_A(X) += (eta_1 + eta_2 X) v_H(X).
        let timer_masking = start_timer!(|| "Masking the polynomials");
        #[cfg(debug_assertions)]
        let x_a_poly_check = &z_a_hat - &w_a_hat;
        let w_a_masked = {
            let mut coeffs = w_a_hat.coeffs;
            coeffs.resize(coeffs.len().max(domain_size + 2), E::ScalarField::zero());
            coeffs[0] -= eta_1;
            coeffs[1] -= eta_2;
            coeffs[domain_size] += eta_1;
            coeffs[domain_size + 1] += eta_2;
            DensePolynomial::from_coefficients_vec(coeffs)
        };
        end_timer!(timer_masking);
        phase!(masking_ns);

        /////////////////////// Computing the commitment T ///////////////////////
        let timer_batch_commit = start_timer!(|| "Batch commitment");

        // T = sum_j w_j Sigma_W[j] + eta_1 Sigma_W[k+1] + eta_2 Sigma_W[k+2]
        //     + sum_i q~[i] Sigma_Q[i]
        // Separate MSMs over the SRS slices (avoids copying the bases).
        debug_assert_eq!(witness_assignment.len(), pk.sigma_w.len());
        let t_w = msm(&pk.sigma_w, witness_assignment);
        let t_mask = msm(
            &[pk.sigma_mask_const, pk.sigma_mask_linear],
            &[eta_1, eta_2],
        );
        let t_q = msm(&pk.sigma_q[..q_tilde.coeffs.len()], &q_tilde.coeffs);
        let t: E::G1Affine = (t_w + t_mask + t_q).into();
        end_timer!(timer_batch_commit);
        phase!(commitment_msm_ns);

        /////////////////////// Computing the challenge ///////////////////////
        let timer_init_transcript = start_timer!(|| "Computing Challenge");
        let challenge = compute_chall::<E>(&pk.verifying_key, &instance_assignment[1..], &t);
        end_timer!(timer_init_transcript);

        /////////////////////// Masked evaluation at the challenge ///////////////////////
        // v_a = z_A(zeta) - x_A(zeta) = w_A^masked(zeta)
        let timer_eval = start_timer!(|| "Evaluating v_a");
        let v_a = w_a_masked.evaluate(&challenge);
        end_timer!(timer_eval);

        /////////////////////// Proof of correct opening ///////////////////////
        let timer_opening = start_timer!(|| "Batch Opening");
        let timer_open_poly = start_timer!(|| "Computing the opening polynomials");

        // R(X) = z_B(X) - x_B(X) + v_H(X) q~(X) = z_B(X) + v_H(X) q~(X)
        // (x_B = 0 after instance outlining, and w_B == z_B)
        let mut r_coeffs = z_b_hat.coeffs;
        r_coeffs.resize(
            (domain_size + 1).max(q_tilde.coeffs.len() + domain_size),
            E::ScalarField::zero(),
        );
        for (i, q_i) in q_tilde.coeffs.iter().enumerate() {
            r_coeffs[i] -= q_i;
            r_coeffs[i + domain_size] += q_i;
        }
        let r_poly = DensePolynomial::from_coefficients_vec(r_coeffs);

        // v_R = R(zeta) = (v_a + x_A(zeta))^2 - x_B(zeta); recomputed by the
        // verifier from v_a
        let v_r = r_poly.evaluate(&challenge);
        #[cfg(debug_assertions)]
        {
            let x_a_at_zeta = x_a_poly_check.evaluate(&challenge);
            assert_eq!(
                v_r,
                (v_a + x_a_at_zeta).square(),
                "v_R must equal (v_a + x_A(zeta))^2"
            );
        }

        // W_A(X) = (z_A(X) - x_A(X) - v_a)/(X - zeta), of degree <= m
        // W_R(X) = (R(X) - v_R)/(X - zeta), of degree <= 2m+1
        let one = E::ScalarField::ONE;
        let chall_vanishing_poly = DensePolynomial::from_coefficients_vec(vec![-challenge, one]);
        let v_a_poly = DensePolynomial::from_coefficients_vec(vec![v_a]);
        let v_r_poly = DensePolynomial::from_coefficients_vec(vec![v_r]);
        let witness_a = (&w_a_masked - &v_a_poly) / &chall_vanishing_poly;
        let witness_r = (&r_poly - &v_r_poly) / &chall_vanishing_poly;
        end_timer!(timer_open_poly);
        phase!(transcript_opening_polynomials_ns);

        // U = sum_i W_A[i] Sigma_A[i] + sum_i W_R[i] Sigma_R[i]
        // Two MSMs directly over the SRS slices: merging them into one call
        // costs a ~150MB base-vector copy at large sizes, which outweighs the
        // bucket amortization.
        let timer_msms = start_timer!(|| "Computing the opening MSMs");
        debug_assert!(witness_a.coeffs.len() <= pk.sigma_a.len());
        debug_assert!(witness_r.coeffs.len() <= pk.sigma_r.len());
        let w_a_proof =
            msm(&pk.sigma_a[..witness_a.coeffs.len()], &witness_a.coeffs);
        let w_r_proof =
            msm(&pk.sigma_r[..witness_r.coeffs.len()], &witness_r.coeffs);
        let u: E::G1Affine = (w_a_proof + w_r_proof).into();
        end_timer!(timer_msms);
        phase!(opening_msm_ns);
        end_timer!(timer_opening);

        let output = Ok(Proof {
            t_g: t,
            u_g: u,
            v_a,
        });

        end_timer!(timer_p);
        output
    }

    /// Synthesize the circuit in proving mode and return the finalized SR1CS
    /// constraint system (with assignments).
    pub fn circuit_to_prover_cs<C: ConstraintSynthesizer<E::ScalarField>>(
        circuit: C,
    ) -> Result<ConstraintSystem<E::ScalarField>, SynthesisError>
    where
        E: Pairing,
        E::ScalarField: Field,
    {
        // Start up the constraint System and synthesize the circuit
        let timer_cs_startup = start_timer!(|| "Prover constraint System Startup");
        let timer_synthesize_circuit = start_timer!(|| "Synthesize Circuit");
        let cs: gr1cs::ConstraintSystemRef<E::ScalarField> = ConstraintSystem::new_ref();
        cs.set_optimization_goal(OptimizationGoal::Constraints);
        circuit.generate_constraints(cs.clone())?;
        end_timer!(timer_synthesize_circuit);
        let timer_inlining = start_timer!(|| "Inlining constraints");
        cs.finalize();
        end_timer!(timer_inlining);

        let sr1cs_timer = start_timer!(|| "Convert to SR1CS");
        // Circuits that natively register the SR1CS predicate skip the
        // R1CS-to-SR1CS conversion.
        let native_sr1cs = cs.has_predicate(SR1CS_PREDICATE_LABEL);
        let mut sr1cs_inner = if native_sr1cs {
            cs.into_inner().unwrap()
        } else {
            let mut inner = cs.into_inner().unwrap();
            let sr1cs_cs = Sr1csAdapter::r1cs_to_sr1cs_with_assignment(&mut inner).unwrap();
            sr1cs_cs.into_inner().unwrap()
        };

        sr1cs_inner
            .perform_instance_outlining(InstanceOutliner {
                pred_label: SR1CS_PREDICATE_LABEL.to_string(),
                func: Rc::new(outline_sr1cs),
            })
            .expect("instance outlining failed");
        end_timer!(sr1cs_timer);
        end_timer!(timer_cs_startup);
        Ok(sr1cs_inner)
    }

    /// Evaluate the constraint rows once over the full assignment, returning
    /// `(z_A, z_B, w_A)`.
    ///
    /// After instance outlining the instance variables appear only in the
    /// last `instance_len` rows, each as `(x_i - w_copy_i)` on the A-side
    /// with an empty B-side. Hence the punctured ("instance zeroed")
    /// evaluations need no second pass:
    /// - `w_B == z_B` (no instance column in B),
    /// - `w_A == z_A` except on the outlining rows, where removing the
    ///   instance contribution subtracts `x_i`.
    #[allow(clippy::type_complexity)]
    pub(crate) fn compute_za_zb_wa(
        domain: Radix2EvaluationDomain<E::ScalarField>,
        a_mat: &Matrix<E::ScalarField>,
        b_mat: &Matrix<E::ScalarField>,
        instance_assignment: &[E::ScalarField],
        witness_assignment: &[E::ScalarField],
        num_constraints: usize,
    ) -> Result<
        (
            Vec<E::ScalarField>,
            Vec<E::ScalarField>,
            Vec<E::ScalarField>,
        ),
        SynthesisError,
    > {
        let mut assignment: Vec<E::ScalarField> = instance_assignment.to_vec();
        assignment.extend_from_slice(witness_assignment);

        let domain_size = domain.size();
        let mut z_a = vec![E::ScalarField::zero(); domain_size];
        let mut z_b = vec![E::ScalarField::zero(); domain_size];

        cfg_iter_mut!(z_a[..num_constraints])
            .zip(&mut z_b[..num_constraints])
            .zip(a_mat)
            .zip(b_mat)
            .for_each(|(((a, b), at_i), bt_i)| {
                *a = Sr1csAdapter::<E::ScalarField>::evaluate_constraint(at_i, &assignment);
                *b = Sr1csAdapter::<E::ScalarField>::evaluate_constraint(bt_i, &assignment);
            });

        let instance_len = instance_assignment.len();
        let outline_start = num_constraints - instance_len;
        let mut w_a = z_a.clone();
        for (i, x_i) in instance_assignment.iter().enumerate() {
            w_a[outline_start + i] -= x_i;
        }

        // Validate the outlining structure against the definitional
        // (punctured-assignment) evaluation
        #[cfg(debug_assertions)]
        {
            let mut punctured_assignment: Vec<E::ScalarField> =
                vec![E::ScalarField::zero(); instance_len];
            punctured_assignment.extend_from_slice(witness_assignment);
            for (row, (at_i, bt_i)) in a_mat.iter().zip(b_mat).enumerate() {
                let w_a_row: E::ScalarField = Sr1csAdapter::<E::ScalarField>::evaluate_constraint(
                    at_i,
                    &punctured_assignment,
                );
                let w_b_row: E::ScalarField = Sr1csAdapter::<E::ScalarField>::evaluate_constraint(
                    bt_i,
                    &punctured_assignment,
                );
                assert_eq!(w_a_row, w_a[row], "instance column outside outlining rows");
                assert_eq!(w_b_row, z_b[row], "instance column in the B matrix");
            }
        }

        Ok((z_a, z_b, w_a))
    }
}
