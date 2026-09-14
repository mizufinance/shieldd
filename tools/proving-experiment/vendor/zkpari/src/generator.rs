use std::rc::Rc;

use ark_ec::{pairing::Pairing, scalar_mul::BatchMulPreprocessing};
use ark_ff::{Field, Zero};
use ark_poly::{EvaluationDomain, Radix2EvaluationDomain};
use rayon::iter::{IntoParallelRefIterator, ParallelIterator};

use crate::circuit::assert_instance_outlining_complete;
use crate::data_structures::{ProvingKey, SuccinctIndex, Trapdoor, VerifyingKey};
use crate::utils::transcript::IOPTranscript;
use crate::ZkPari;
use ark_relations::{
    gr1cs::{
        self,
        instance_outliner::{outline_sr1cs, InstanceOutliner},
        predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL,
        ConstraintSynthesizer, ConstraintSystem, Matrix, OptimizationGoal, SynthesisError,
        SynthesisMode,
    },
    sr1cs::Sr1csAdapter,
};
use ark_std::{end_timer, rand::RngCore, start_timer, vec::Vec, UniformRand};

impl<E: Pairing> ZkPari<E> {
    /// Generate proving and verifying keys for any arkworks circuit.
    ///
    /// Circuits that natively register the SR1CS predicate are used as-is;
    /// plain R1CS circuits are converted by the SR1CS adapter.
    pub fn keygen<C: ConstraintSynthesizer<E::ScalarField>, R: RngCore>(
        circuit: C,
        rng: &mut R,
    ) -> (ProvingKey<E>, VerifyingKey<E>)
    where
        E: Pairing,
        E::ScalarField: Field,
    {
        let (pk, vk, _trapdoor) = Self::keygen_with_trapdoor(circuit, rng);
        (pk, vk)
    }

    /// Like [`Self::keygen`], but also returns the setup [`Trapdoor`].
    ///
    /// The trapdoor is the toxic waste of the trusted setup: keeping it breaks
    /// soundness. It is returned only so the honest-verifier zero-knowledge
    /// [`Self::simulate`] can forge accepting transcripts for tests,
    /// benchmarks, and load generation. A real deployment must use
    /// [`Self::keygen`] and discard the trapdoor.
    pub fn keygen_with_trapdoor<C: ConstraintSynthesizer<E::ScalarField>, R: RngCore>(
        circuit: C,
        rng: &mut R,
    ) -> (ProvingKey<E>, VerifyingKey<E>, Trapdoor<E>)
    where
        E: Pairing,
        E::ScalarField: Field,
    {
        let cs = Self::circuit_to_keygen_cs(circuit).unwrap();
        // The constraint system must consist of exactly one predicate, the
        // Square R1CS one. A circuit that also emitted plain R1CS rows (e.g.
        // an ark-r1cs-std gadget mixed into a native-SR1CS circuit) would
        // otherwise have those rows silently dropped by the
        // `to_matrices()[SR1CS_PREDICATE_LABEL]` lookups below, producing
        // keys for a weaker relation. Both checks are O(1).
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

        /////////////////////// Extract the constraint system information ///////////////////////
        let instance_len = cs.num_instance_variables();
        let num_constraints = cs.num_constraints();
        let num_witness = cs.num_witness_variables();

        /////////////////////// Generators ///////////////////////
        let timer_sample_generators = start_timer!(|| "Sample generators");
        let g = E::G1::rand(rng);
        let h = E::G2::rand(rng);
        end_timer!(timer_sample_generators);

        /////////////////////// Trapdoor generation ///////////////////////
        let timer_trapdoor_gen = start_timer!(|| "Trapdoor generation and exponentiations");
        let alpha = E::ScalarField::rand(rng);
        let beta = E::ScalarField::rand(rng);
        let delta = E::ScalarField::rand(rng);
        let tau = E::ScalarField::rand(rng);

        let alpha_g: <E as Pairing>::G1 = g * alpha;
        let beta_g = g * beta;
        let delta_h = h * delta;
        let tau_h = h * tau;

        let delta_inverse = delta.inverse().unwrap();
        end_timer!(timer_trapdoor_gen);

        /////////////////////// Computing the FFT domain ///////////////////////
        let timer_fft_domain = start_timer!(|| "Computing the FFT domain");
        let domain = Radix2EvaluationDomain::new(num_constraints).unwrap();
        // tau must lie outside the interpolation domain H
        let v_h_at_tau = domain.evaluate_vanishing_polynomial(tau);
        assert_ne!(v_h_at_tau, E::ScalarField::zero());
        end_timer!(timer_fft_domain);
        let domain_size = domain.size();

        /////////////////////// Computing {a_i(tau)}, {b_i(tau)} ///////////////////////
        let timer_compute_a_b = start_timer!(|| "Computing a_i(tau)'s and b_i(tau)'s");
        let (a, b) = Self::compute_ai_bi_at_tau(tau, &cs, domain).unwrap();
        end_timer!(timer_compute_a_b);

        /////////////////////// Succinct Index ///////////////////////
        let matrices = &cs.to_matrices().unwrap()[SR1CS_PREDICATE_LABEL];
        let succinct_index = SuccinctIndex {
            num_constraints,
            instance_len,
            matrix_digest: Self::hash_index(matrices, num_constraints, instance_len),
        };

        /////////////////////// Powers of tau ///////////////////////
        // Sigma_R needs the largest range: beta * tau^i for i = 0..=2m+1,
        // where m is the (padded) domain size.
        let timer_powers_of_tau = start_timer!(|| "Computing powers of tau");
        let max_power = 2 * domain_size + 1;
        let mut powers_of_tau = Vec::with_capacity(max_power + 1);
        let mut cur = E::ScalarField::ONE;
        for _ in 0..=max_power {
            powers_of_tau.push(cur);
            cur *= &tau;
        }
        end_timer!(timer_powers_of_tau);

        /////////////////////// Proving key generation ///////////////////////
        let timer_pk_gen = start_timer!(|| "Generating Proving Key");

        let timer_batch_mul_prep = start_timer!(|| "Batch Mul Preprocessing startup");
        let table = BatchMulPreprocessing::new(g, max_power + 1);
        end_timer!(timer_batch_mul_prep);

        /////////////////////// Opening Keys ///////////////////////
        let timer_opening_keys = start_timer!(|| "Computing Opening Keys");

        // Sigma_A = [alpha tau^i G]_{i=0}^{m}: opens W_A of degree <= m
        let timer_sigma_a = start_timer!(|| "Computing sigma_a");
        let sigma_a_powers = powers_of_tau[0..domain_size + 1]
            .par_iter()
            .map(|tau_to_i| *tau_to_i * alpha)
            .collect::<Vec<_>>();
        let sigma_a = table.batch_mul(&sigma_a_powers);
        end_timer!(timer_sigma_a);

        // Sigma_R = [beta tau^i G]_{i=0}^{2m+1}: opens W_R of degree <= 2m+1
        let timer_sigma_r = start_timer!(|| "Computing sigma_r");
        let sigma_r_powers = powers_of_tau[0..2 * domain_size + 2]
            .par_iter()
            .map(|tau_to_i| *tau_to_i * beta)
            .collect::<Vec<_>>();
        let sigma_r = table.batch_mul(&sigma_r_powers);
        end_timer!(timer_sigma_r);
        end_timer!(timer_opening_keys);

        /////////////////////// Commitment Keys ///////////////////////
        let timer_commit_keys = start_timer!(|| "Computing Committing Keys");

        // Sigma_W = [(alpha a_i(tau) + beta b_i(tau))/delta G] for the
        // witnesses, in ascending witness-index order
        let timer_sigma_w = start_timer!(|| "Computing sigma_w");
        let alpha_over_delta = alpha * delta_inverse;
        let beta_over_delta = beta * delta_inverse;
        let sigma_w_powers = (0..num_witness)
            .collect::<Vec<_>>()
            .par_iter()
            .map(|&w| {
                a[instance_len + w] * alpha_over_delta + b[instance_len + w] * beta_over_delta
            })
            .collect::<Vec<_>>();
        let sigma_w = table.batch_mul(&sigma_w_powers);
        end_timer!(timer_sigma_w);

        // A-side mask keys: (alpha v_H(tau)/delta) G and (alpha tau v_H(tau)/delta) G
        let sigma_mask_const: E::G1Affine = (g * (alpha * v_h_at_tau * delta_inverse)).into();
        let sigma_mask_linear: E::G1Affine =
            (g * (alpha * tau * v_h_at_tau * delta_inverse)).into();

        // Sigma_Q = [(beta v_H(tau) tau^i / delta) G]_{i=0}^{m+2}
        let timer_q_comm = start_timer!(|| "Computing sigma_q");
        let beta_v_h_over_delta = beta * v_h_at_tau * delta_inverse;
        let sigma_q_powers = powers_of_tau[0..domain_size + 3]
            .par_iter()
            .map(|tau_to_i| *tau_to_i * beta_v_h_over_delta)
            .collect::<Vec<_>>();
        let sigma_q = table.batch_mul(&sigma_q_powers);
        end_timer!(timer_q_comm);
        end_timer!(timer_commit_keys);
        end_timer!(timer_pk_gen);

        /////////////////////// Output keys ///////////////////////
        // `new` derives the prepared G2 points and seeds the key's
        // Fiat-Shamir transcript.
        let vk = VerifyingKey::new(
            succinct_index,
            g.into(),
            alpha_g.into(),
            beta_g.into(),
            delta_h.into(),
            tau_h.into(),
            h.into(),
            domain,
        );

        let pk = ProvingKey {
            sigma_w,
            sigma_mask_const,
            sigma_mask_linear,
            sigma_q,
            sigma_a,
            sigma_r,
            verifying_key: vk.clone(),
        };

        // Capture the trapdoor for the HVZK simulator. `a`/`b` hold a_i(tau),
        // b_i(tau) for every variable; the instance variables are the leading
        // `instance_len` entries.
        let trapdoor = Trapdoor {
            alpha,
            beta,
            delta,
            tau,
            g: g.into(),
            instance_a_at_tau: a[..instance_len].to_vec(),
            instance_b_at_tau: b[..instance_len].to_vec(),
        };

        (pk, vk, trapdoor)
    }

    /// The paper's `HashIdx`: digest the canonical SR1CS matrices (plus the
    /// counts that fix their interpretation) into 32 bytes.
    ///
    /// Stored in the [`SuccinctIndex`] and absorbed into the key's
    /// Fiat-Shamir transcript, this binds every challenge to the exact
    /// circuit: two different circuits of identical shape set up under the
    /// same trapdoor get different challenges, so a proof for one cannot
    /// verify under the other's key.
    pub(crate) fn hash_index(
        matrices: &[Matrix<E::ScalarField>],
        num_constraints: usize,
        instance_len: usize,
    ) -> [u8; 32] {
        let mut t = IOPTranscript::<E::ScalarField>::new(b"ZK-Pari HashIdx");
        t.append_serializable_element(b"num_constraints", &(num_constraints as u64));
        t.append_serializable_element(b"instance_len", &(instance_len as u64));
        for (matrix, label) in matrices.iter().zip([b"A", b"B"]) {
            t.append_serializable_element(label, matrix);
        }
        t.challenge_bytes32(b"digest")
    }

    /// Synthesize the circuit in setup mode and return the finalized SR1CS
    /// constraint system.
    pub fn circuit_to_keygen_cs<C: ConstraintSynthesizer<E::ScalarField>>(
        circuit: C,
    ) -> Result<ConstraintSystem<E::ScalarField>, SynthesisError>
    where
        E: Pairing,
        E::ScalarField: Field,
    {
        // Start up the constraint System and synthesize the circuit
        let timer_cs_startup = start_timer!(|| "Constraint System Startup");
        let cs: gr1cs::ConstraintSystemRef<E::ScalarField> = ConstraintSystem::new_ref();
        cs.set_mode(SynthesisMode::Setup);
        cs.set_optimization_goal(OptimizationGoal::Constraints);
        circuit.generate_constraints(cs.clone())?;
        cs.finalize();
        // Circuits that natively register the SR1CS predicate skip the
        // R1CS-to-SR1CS conversion.
        let native_sr1cs = cs.has_predicate(SR1CS_PREDICATE_LABEL);

        let timer_inlining = start_timer!(|| "Inlining constraints");
        let mut sr1cs_inner = if native_sr1cs {
            cs.into_inner().unwrap()
        } else {
            let sr1cs_cs = Sr1csAdapter::r1cs_to_sr1cs(&cs).unwrap();
            sr1cs_cs.set_instance_outliner(InstanceOutliner {
                pred_label: SR1CS_PREDICATE_LABEL.to_string(),
                func: Rc::new(outline_sr1cs),
            });
            sr1cs_cs.into_inner().unwrap()
        };
        sr1cs_inner
            .perform_instance_outlining(InstanceOutliner {
                pred_label: SR1CS_PREDICATE_LABEL.to_string(),
                func: Rc::new(outline_sr1cs),
            })
            .expect("instance outlining failed");
        end_timer!(timer_inlining);
        end_timer!(timer_cs_startup);
        Ok(sr1cs_inner)
    }

    #[allow(clippy::type_complexity)]
    pub(crate) fn compute_ai_bi_at_tau(
        tau: E::ScalarField,
        new_cs: &ConstraintSystem<E::ScalarField>,
        domain: Radix2EvaluationDomain<E::ScalarField>,
    ) -> Result<(Vec<E::ScalarField>, Vec<E::ScalarField>), SynthesisError> {
        // Compute all the lagrange polynomials
        let timer_eval_all_lagrange_polys = start_timer!(|| "Evaluating all Lagrange polys");
        let lagrange_polys_at_tau = domain.evaluate_all_lagrange_coefficients(tau);
        end_timer!(timer_eval_all_lagrange_polys);

        let num_variables = new_cs.num_instance_variables() + new_cs.num_witness_variables();
        let num_constraints = new_cs.num_constraints();
        let matrices = &new_cs.to_matrices().unwrap()[SR1CS_PREDICATE_LABEL];

        // The verifier's public-input reconstruction depends on outlining
        // having confined every instance column to the trailing rows, which
        // must be exactly the outlining equalities.
        assert_instance_outlining_complete(
            matrices,
            new_cs.num_instance_variables(),
            num_constraints,
        );

        let mut a = vec![E::ScalarField::zero(); num_variables];
        let mut b = vec![E::ScalarField::zero(); num_variables];

        let timer_compute_a_b = start_timer!(|| "Compute a_i(tau)'s and z_i(tau)'s");
        for (i, u_i) in lagrange_polys_at_tau
            .iter()
            .enumerate()
            .take(num_constraints)
        {
            for &(ref coeff, index) in &matrices[0][i] {
                a[index] += &(*u_i * coeff);
            }
            for &(ref coeff, index) in &matrices[1][i] {
                b[index] += &(*u_i * coeff);
            }
        }
        end_timer!(timer_compute_a_b);
        Ok((a, b))
    }
}
