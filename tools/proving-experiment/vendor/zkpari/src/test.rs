use crate::data_structures::{Proof, ProvingKey, VerifyingKey};
use crate::ZkPari;
use ark_bls12_381::Bls12_381;
use ark_ec::pairing::Pairing;
use ark_ff::{Field, UniformRand};
use ark_relations::gr1cs::{
    predicate::{polynomial_constraint::SR1CS_PREDICATE_LABEL, PredicateConstraintSystem},
    ConstraintSynthesizer, ConstraintSystemRef, SynthesisError, Variable, R1CS_PREDICATE_LABEL,
};
use ark_relations::lc;
use ark_std::rand::{RngCore, SeedableRng};
use ark_std::test_rng;

type E = Bls12_381;
type Fr = <Bls12_381 as Pairing>::ScalarField;

// ---------------------------------------------------------------------------
// Test circuits
// ---------------------------------------------------------------------------

/// a * b = c with c public (R1CS, converted to SR1CS by the adapter).
#[derive(Clone)]
struct MulCircuit<F: Field> {
    a: Option<F>,
    b: Option<F>,
}

impl<F: Field> ConstraintSynthesizer<F> for MulCircuit<F> {
    fn generate_constraints(self, cs: ConstraintSystemRef<F>) -> Result<(), SynthesisError> {
        let a = cs.new_witness_variable(|| self.a.ok_or(SynthesisError::AssignmentMissing))?;
        let b = cs.new_witness_variable(|| self.b.ok_or(SynthesisError::AssignmentMissing))?;
        let c = cs.new_input_variable(|| {
            let mut a = self.a.ok_or(SynthesisError::AssignmentMissing)?;
            let b = self.b.ok_or(SynthesisError::AssignmentMissing)?;
            a *= &b;
            Ok(a)
        })?;

        for _ in 0..6 {
            cs.enforce_r1cs_constraint(|| lc!() + a, || lc!() + b, || lc!() + c)?;
        }
        Ok(())
    }
}

/// Range proof circuit in native SR1CS: proves `value` is in [0, 2^64).
#[derive(Clone)]
struct RangeProofCircuit {
    value: Option<u64>,
}

impl<F: Field> ConstraintSynthesizer<F> for RangeProofCircuit {
    fn generate_constraints(self, cs: ConstraintSystemRef<F>) -> Result<(), SynthesisError> {
        cs.remove_predicate(R1CS_PREDICATE_LABEL);
        let _ = cs.register_predicate(
            SR1CS_PREDICATE_LABEL,
            PredicateConstraintSystem::new_sr1cs_predicate()
                .map_err(|_| SynthesisError::Unsatisfiable)?,
        );

        let value = self.value;
        let v = cs.new_witness_variable(|| {
            let val = value.ok_or(SynthesisError::AssignmentMissing)?;
            Ok(F::from(val))
        })?;
        let bit_vars: Vec<Variable> = (0..64u32)
            .map(|i| {
                cs.new_witness_variable(|| {
                    let val = value.ok_or(SynthesisError::AssignmentMissing)?;
                    Ok(if (val >> i) & 1 == 1 { F::ONE } else { F::ZERO })
                })
            })
            .collect::<Result<_, _>>()?;

        // (sum(b_i * 2^i) - v)^2 = 0, using `v - v` for the zero RHS
        // to avoid the empty-LC -> symbolic_lc(0) aliasing bug.
        let mut recon_minus_v = lc!() - v;
        let mut coeff = F::ONE;
        for &b in &bit_vars {
            recon_minus_v += (coeff, b);
            coeff.double_in_place();
        }
        let zero_lc = lc!() + v - v;
        cs.enforce_sr1cs_constraint(|| recon_minus_v, || zero_lc)?;

        // b_i^2 = b_i (native SR1CS boolean check)
        for &b in &bit_vars {
            cs.enforce_sr1cs_constraint(|| lc!() + b, || lc!() + b)?;
        }

        Ok(())
    }
}

/// Native-SR1CS chain `(c * w_i)^2 = w_{i+1}` with the final value public:
/// its constraint *shape* is independent of `c`, but the matrices differ —
/// the HashIdx regression pair.
#[derive(Clone, Copy)]
struct CoeffChain<F: Field> {
    coeff: F,
    len: usize,
    seed: u64,
}

impl<F: Field> CoeffChain<F> {
    fn public_input(&self) -> Vec<F> {
        let mut v = F::from(self.seed);
        for _ in 0..self.len {
            v = (self.coeff * v).square();
        }
        vec![v]
    }
}

impl<F: Field> ConstraintSynthesizer<F> for CoeffChain<F> {
    fn generate_constraints(self, cs: ConstraintSystemRef<F>) -> Result<(), SynthesisError> {
        cs.remove_predicate(R1CS_PREDICATE_LABEL);
        let _ = cs.register_predicate(
            SR1CS_PREDICATE_LABEL,
            PredicateConstraintSystem::new_sr1cs_predicate()
                .map_err(|_| SynthesisError::Unsatisfiable)?,
        );
        let mut val = F::from(self.seed);
        let mut prev = cs.new_witness_variable(|| Ok(val))?;
        for _ in 0..self.len {
            val = (self.coeff * val).square();
            let next = cs.new_witness_variable(|| Ok(val))?;
            // (c * w_i)^2 = w_{i+1}
            cs.enforce_sr1cs_constraint(|| lc!() + (self.coeff, prev), || lc!() + next)?;
            prev = next;
        }
        let out = cs.new_input_variable(|| Ok(val))?;
        // Multi-term on both sides so outlining interns the LCs.
        cs.enforce_sr1cs_constraint(|| lc!() + out - prev, || lc!() + prev - prev)?;
        Ok(())
    }
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

fn rng() -> ark_std::rand::rngs::StdRng {
    ark_std::rand::rngs::StdRng::seed_from_u64(test_rng().next_u64())
}

/// R1CS circuit through the adapter: prove, verify, reject a wrong statement.
#[test]
fn roundtrip_r1cs_adapter() {
    let mut rng = rng();
    let a_val = Fr::rand(&mut rng);
    let b_val = Fr::rand(&mut rng);
    let circuit = MulCircuit {
        a: Some(a_val),
        b: Some(b_val),
    };
    let (pk, vk): (ProvingKey<E>, VerifyingKey<E>) = ZkPari::<E>::keygen(circuit.clone(), &mut rng);
    let proof: Proof<E> = ZkPari::prove(circuit, &pk, &mut rng).unwrap();
    assert!(ZkPari::<E>::verify(&proof, &vk, &[a_val * b_val]));
    // Wrong public input must be rejected
    assert!(!ZkPari::<E>::verify(
        &proof,
        &vk,
        &[a_val * b_val + Fr::ONE]
    ));
}

/// Native-SR1CS circuit with no public input.
#[test]
fn roundtrip_native_sr1cs() {
    let mut rng = rng();
    let circuit = RangeProofCircuit { value: Some(300) };
    let (pk, vk) = ZkPari::<E>::keygen(circuit.clone(), &mut rng);
    let proof = ZkPari::<E>::prove(circuit, &pk, &mut rng).unwrap();
    assert!(ZkPari::<E>::verify(&proof, &vk, &[]));
}

/// A serialized proof must be exactly 2 G1 + 1 F = 128 bytes on BLS12-381,
/// must deserialize and verify, and verification must reject (not panic on)
/// malformed statements.
#[test]
fn proof_serialization_roundtrip_and_malformed_inputs() {
    use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};

    let mut rng = rng();
    let a_val = Fr::rand(&mut rng);
    let b_val = Fr::rand(&mut rng);
    let circuit = MulCircuit {
        a: Some(a_val),
        b: Some(b_val),
    };
    let (pk, vk) = ZkPari::<E>::keygen(circuit.clone(), &mut rng);
    let proof = ZkPari::<E>::prove(circuit, &pk, &mut rng).unwrap();

    // Round-trip through the wire format (with validation)
    let mut bytes = Vec::new();
    proof.serialize_compressed(&mut bytes).unwrap();
    assert_eq!(bytes.len(), 128, "a proof is exactly 128 bytes compressed");
    let parsed = Proof::<E>::deserialize_compressed(&bytes[..]).unwrap();
    assert_eq!(parsed, proof);
    assert!(ZkPari::<E>::verify(&parsed, &vk, &[a_val * b_val]));

    // Wrong public-input length: rejected, not panicked on
    assert!(!ZkPari::<E>::verify(&proof, &vk, &[]));
    assert!(!ZkPari::<E>::verify(&proof, &vk, &[a_val * b_val, a_val]));
    let batch = vec![(proof.clone(), vec![])];
    assert!(!ZkPari::<E>::batch_verify(&batch, &vk, &mut rng));
}

/// The keys round-trip through `CanonicalSerialize`: the deserialized
/// verifying key re-derives its prepared points and seeded transcript, so a
/// proof verifies under it and challenges agree; the deserialized proving
/// key produces valid proofs.
#[test]
fn key_serialization_roundtrip() {
    use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};

    let mut rng = rng();
    let a_val = Fr::rand(&mut rng);
    let b_val = Fr::rand(&mut rng);
    let circuit = MulCircuit {
        a: Some(a_val),
        b: Some(b_val),
    };
    let (pk, vk) = ZkPari::<E>::keygen(circuit.clone(), &mut rng);
    let proof = ZkPari::<E>::prove(circuit.clone(), &pk, &mut rng).unwrap();
    let public_input = [a_val * b_val];

    let mut vk_bytes = Vec::new();
    vk.serialize_compressed(&mut vk_bytes).unwrap();
    let vk2 = VerifyingKey::<E>::deserialize_compressed(&vk_bytes[..]).unwrap();
    assert!(ZkPari::<E>::verify(&proof, &vk2, &public_input));
    assert_eq!(
        crate::utils::compute_chall::<E>(&vk, &public_input, &proof.t_g),
        crate::utils::compute_chall::<E>(&vk2, &public_input, &proof.t_g),
        "the round-tripped key must derive identical challenges"
    );

    let mut pk_bytes = Vec::new();
    pk.serialize_compressed(&mut pk_bytes).unwrap();
    let pk2 = ProvingKey::<E>::deserialize_compressed(&pk_bytes[..]).unwrap();
    let proof2 = ZkPari::<E>::prove(circuit, &pk2, &mut rng).unwrap();
    assert!(ZkPari::<E>::verify(&proof2, &vk, &public_input));
}

/// Proofs must be randomized: two proofs of the same statement with the same
/// key must differ in every randomized component.
#[test]
fn proofs_are_randomized() {
    let mut rng = rng();
    let a_val = Fr::rand(&mut rng);
    let b_val = Fr::rand(&mut rng);
    let circuit = MulCircuit {
        a: Some(a_val),
        b: Some(b_val),
    };
    let (pk, vk) = ZkPari::<E>::keygen(circuit.clone(), &mut rng);
    let proof_1 = ZkPari::<E>::prove(circuit.clone(), &pk, &mut rng).unwrap();
    let proof_2 = ZkPari::<E>::prove(circuit, &pk, &mut rng).unwrap();
    assert_ne!(proof_1.t_g, proof_2.t_g);
    assert_ne!(proof_1.u_g, proof_2.u_g);
    assert_ne!(proof_1.v_a, proof_2.v_a);
    assert!(ZkPari::<E>::verify(&proof_1, &vk, &[a_val * b_val]));
    assert!(ZkPari::<E>::verify(&proof_2, &vk, &[a_val * b_val]));
}

#[test]
fn batch_verify() {
    let mut rng = rng();
    let circuit = MulCircuit {
        a: Some(Fr::rand(&mut rng)),
        b: Some(Fr::rand(&mut rng)),
    };
    let (pk, vk) = ZkPari::<E>::keygen(circuit, &mut rng);

    let n = 4;
    let mut proofs_and_inputs = Vec::with_capacity(n);
    for _ in 0..n {
        let a = Fr::rand(&mut rng);
        let b = Fr::rand(&mut rng);
        let circuit = MulCircuit {
            a: Some(a),
            b: Some(b),
        };
        let proof = ZkPari::<E>::prove(circuit, &pk, &mut rng).unwrap();
        proofs_and_inputs.push((proof, vec![a * b]));
    }
    assert!(ZkPari::<E>::batch_verify(&proofs_and_inputs, &vk, &mut rng));

    // A corrupted statement in the batch must be rejected
    proofs_and_inputs[2].1[0] += Fr::ONE;
    assert!(!ZkPari::<E>::batch_verify(
        &proofs_and_inputs,
        &vk,
        &mut rng
    ));
}

// ---------------------------------------------------------------------------
// HashIdx (the matrix digest)
// ---------------------------------------------------------------------------

/// Two circuits with byte-identical *shape* (constraint count, instance
/// length, witness count) but different matrices must get different matrix
/// digests, and a proof for one must not verify under the other's key. This
/// is the paper's `HashIdx(i)` binding.
#[test]
fn hashidx_separates_same_shape_circuits() {
    let mut rng = rng();
    let c1 = CoeffChain::<Fr> {
        coeff: Fr::from(2u64),
        len: 8,
        seed: 3,
    };
    let c2 = CoeffChain::<Fr> {
        coeff: Fr::from(3u64),
        len: 8,
        seed: 3,
    };
    let (pk1, vk1) = ZkPari::<E>::keygen(c1, &mut rng);
    let (_pk2, vk2) = ZkPari::<E>::keygen(c2, &mut rng);

    // Same shape...
    assert_eq!(
        vk1.succinct_index.num_constraints,
        vk2.succinct_index.num_constraints
    );
    assert_eq!(
        vk1.succinct_index.instance_len,
        vk2.succinct_index.instance_len
    );
    // ...different digest.
    assert_ne!(
        vk1.succinct_index.matrix_digest, vk2.succinct_index.matrix_digest,
        "HashIdx must distinguish same-shape circuits"
    );

    let proof = ZkPari::<E>::prove(c1, &pk1, &mut rng).unwrap();
    assert!(ZkPari::<E>::verify(&proof, &vk1, &c1.public_input()));
    assert!(
        !ZkPari::<E>::verify(&proof, &vk2, &c1.public_input()),
        "a proof must not verify under a different circuit's key"
    );

    // Determinism: keygen for the same circuit reproduces the digest.
    let (_pk3, vk3) = ZkPari::<E>::keygen(c1, &mut rng);
    assert_eq!(
        vk1.succinct_index.matrix_digest,
        vk3.succinct_index.matrix_digest
    );
}

// ---------------------------------------------------------------------------
// HVZK simulator (Theorem 1)
// ---------------------------------------------------------------------------

/// The trapdoor simulator forges an accepting transcript with no witness —
/// for a circuit with no public input.
#[test]
fn simulate_accepts_for_range_circuit() {
    let mut rng = rng();
    let (_pk, vk, trapdoor) =
        ZkPari::<E>::keygen_with_trapdoor(RangeProofCircuit { value: Some(0) }, &mut rng);

    let proof = ZkPari::<E>::simulate(&trapdoor, &vk, &[], &mut rng);
    assert!(
        ZkPari::<E>::verify(&proof, &vk, &[]),
        "simulated transcript must verify"
    );
}

/// The simulator also handles nonempty public input (exercising the instance
/// polynomial evaluations at tau and at the challenge), and the challenge
/// binds the public input.
#[test]
fn simulate_accepts_with_public_input() {
    let mut rng = rng();
    let circuit = MulCircuit {
        a: Some(Fr::from(3u64)),
        b: Some(Fr::from(5u64)),
    };
    let (_pk, vk, trapdoor) = ZkPari::<E>::keygen_with_trapdoor(circuit, &mut rng);

    let public_input = [Fr::from(15u64)];
    let proof = ZkPari::<E>::simulate(&trapdoor, &vk, &public_input, &mut rng);
    assert!(ZkPari::<E>::verify(&proof, &vk, &public_input));
    // The challenge binds the public input: verifying under a different
    // instance must fail.
    assert!(!ZkPari::<E>::verify(&proof, &vk, &[Fr::from(16u64)]));
}

// ---------------------------------------------------------------------------
// Instance-outlining guard
// ---------------------------------------------------------------------------

/// A native-SR1CS circuit that references its public input through a bare
/// coefficient-1 single-variable linear combination.
///
/// `ark-relations` 0.6.0 returns such an LC as the bare `Variable` instead of
/// interning it in the constraint system's LC map, and
/// `perform_instance_outlining` rewrites instance variables only by walking
/// that map — so the instance column survives outlining. The verifier reads
/// the public contribution only from the trailing outlining rows (and takes
/// `x_B = 0`), so the resulting keys would produce proofs that silently fail
/// to verify. Key generation must reject the circuit instead.
///
/// The trigger is the single-term LC, not which side it sits on, so both
/// placements are exercised.
#[derive(Clone, Copy)]
struct UnoutlinedInstanceCircuit {
    b_side: bool,
}

impl<F: Field> ConstraintSynthesizer<F> for UnoutlinedInstanceCircuit {
    fn generate_constraints(self, cs: ConstraintSystemRef<F>) -> Result<(), SynthesisError> {
        cs.remove_predicate(R1CS_PREDICATE_LABEL);
        let _ = cs.register_predicate(
            SR1CS_PREDICATE_LABEL,
            PredicateConstraintSystem::new_sr1cs_predicate()
                .map_err(|_| SynthesisError::Unsatisfiable)?,
        );
        let w = cs.new_witness_variable(|| Ok(F::from(3u64)))?;
        let sq = cs.new_witness_variable(|| Ok(F::from(9u64)))?;
        let out = cs.new_input_variable(|| Ok(F::from(9u64)))?;
        if self.b_side {
            // (w)^2 = out
            cs.enforce_sr1cs_constraint(|| lc!() + w, || lc!() + out)?;
        } else {
            // (out)^2 = sq
            cs.enforce_sr1cs_constraint(|| lc!() + out, || lc!() + sq)?;
        }
        Ok(())
    }
}

#[test]
#[should_panic(expected = "instance outlining did not remove instance variable")]
fn unoutlined_instance_column_in_b_rejected_at_keygen() {
    let _ = ZkPari::<E>::keygen(UnoutlinedInstanceCircuit { b_side: true }, &mut rng());
}

#[test]
#[should_panic(expected = "instance outlining did not remove instance variable")]
fn unoutlined_instance_column_in_a_rejected_at_keygen() {
    let _ = ZkPari::<E>::keygen(UnoutlinedInstanceCircuit { b_side: false }, &mut rng());
}

/// The same binding written as a multi-term linear combination is interned,
/// outlined correctly, and must key-generate and verify end to end.
#[test]
fn multi_term_instance_binding_is_outlined() {
    #[derive(Clone, Copy)]
    struct Ok2;
    impl<F: Field> ConstraintSynthesizer<F> for Ok2 {
        fn generate_constraints(self, cs: ConstraintSystemRef<F>) -> Result<(), SynthesisError> {
            cs.remove_predicate(R1CS_PREDICATE_LABEL);
            let _ = cs.register_predicate(
                SR1CS_PREDICATE_LABEL,
                PredicateConstraintSystem::new_sr1cs_predicate()
                    .map_err(|_| SynthesisError::Unsatisfiable)?,
            );
            let w = cs.new_witness_variable(|| Ok(F::from(3u64)))?;
            let out = cs.new_input_variable(|| Ok(F::from(3u64)))?;
            // (out - w)^2 = 0, both sides multi-term.
            cs.enforce_sr1cs_constraint(|| lc!() + out - w, || lc!() + w - w)?;
            Ok(())
        }
    }

    let mut rng = rng();
    let (pk, vk) = ZkPari::<E>::keygen(Ok2, &mut rng);
    let proof = ZkPari::<E>::prove(Ok2, &pk, &mut rng).unwrap();
    assert!(ZkPari::<E>::verify(&proof, &vk, &[Fr::from(3u64)]));
}

// ---------------------------------------------------------------------------
// Verifying-key transcript
// ---------------------------------------------------------------------------

/// `VerifyingKey::transcript` is public so integrators can derive the
/// challenge themselves. That documented recipe — clone the seeded state, then
/// absorb the public input and `T` — must reproduce exactly what verification
/// computes.
#[test]
fn public_transcript_reproduces_the_challenge() {
    let mut rng = rng();
    let (a_val, b_val) = (Fr::rand(&mut rng), Fr::rand(&mut rng));
    let circuit = MulCircuit {
        a: Some(a_val),
        b: Some(b_val),
    };
    let (pk, vk) = ZkPari::<E>::keygen(circuit.clone(), &mut rng);
    let proof = ZkPari::<E>::prove(circuit, &pk, &mut rng).unwrap();
    let public_input = vec![a_val * b_val];

    let mut transcript = vk.transcript().clone();
    transcript.append_serializable_element(b"input", &public_input);
    transcript.append_serializable_element(b"comm", &proof.t_g);

    assert_eq!(
        transcript.get_and_append_challenge(b"zeta"),
        crate::utils::compute_chall::<E>(&vk, &public_input, &proof.t_g),
    );
}

/// C4 measurement: the verifier's 3-term MSM through the 2-bit wNAF helper
/// versus arkworks' default MSM versus three independent scalar
/// multiplications. Run manually with
/// `cargo test --release verifier_msm -- --ignored --nocapture`.
#[test]
#[ignore = "manual timing measurement, run with --release --nocapture"]
fn verifier_msm() {
    use ark_bls12_381::G1Projective;
    use ark_ec::{CurveGroup, PrimeGroup, VariableBaseMSM};
    use ark_ff::PrimeField;
    use std::time::Instant;

    let mut rng = rng();
    const ITERS: u32 = 2000;
    let bases: Vec<_> = (0..3)
        .map(|_| (G1Projective::generator() * Fr::rand(&mut rng)).into_affine())
        .collect();
    let scalars: Vec<Fr> = (0..3).map(|_| Fr::rand(&mut rng)).collect();
    let bigints: Vec<_> = scalars.iter().map(|s| s.into_bigint()).collect();

    let start = Instant::now();
    let mut acc = G1Projective::default();
    for _ in 0..ITERS {
        acc += crate::utils::msm_bigint_wnaf::<G1Projective>(&bases, &bigints);
    }
    let wnaf = start.elapsed() / ITERS;

    let start = Instant::now();
    for _ in 0..ITERS {
        acc += G1Projective::msm_bigint(&bases, &bigints);
    }
    let default_msm = start.elapsed() / ITERS;

    let start = Instant::now();
    for _ in 0..ITERS {
        acc += bases
            .iter()
            .zip(&scalars)
            .map(|(b, s)| *b * s)
            .sum::<G1Projective>();
    }
    let naive = start.elapsed() / ITERS;

    ark_std::println!("3-term MSM ({ITERS} iters, result accumulated into {acc}):");
    ark_std::println!("  msm_bigint_wnaf (2-bit): {wnaf:?}");
    ark_std::println!("  ark msm_bigint:          {default_msm:?}");
    ark_std::println!("  3 scalar muls:           {naive:?}");
}

/// The seeded transcript must actually bind the key: two independently
/// generated keys for the same circuit must give different challenges for
/// identical proof material.
#[test]
fn seeded_transcript_binds_the_verifying_key() {
    let mut rng = rng();
    let (a_val, b_val) = (Fr::rand(&mut rng), Fr::rand(&mut rng));
    let circuit = MulCircuit {
        a: Some(a_val),
        b: Some(b_val),
    };
    let (pk, vk) = ZkPari::<E>::keygen(circuit.clone(), &mut rng);
    let (_pk2, vk2) = ZkPari::<E>::keygen(circuit.clone(), &mut rng);
    let proof = ZkPari::<E>::prove(circuit, &pk, &mut rng).unwrap();
    let public_input = [a_val * b_val];

    let chall = |v| crate::utils::compute_chall::<E>(v, &public_input, &proof.t_g);
    assert_eq!(
        chall(&vk),
        chall(&vk),
        "challenge derivation must be deterministic"
    );
    assert_ne!(
        chall(&vk),
        chall(&vk2),
        "a different verifying key must give a different challenge"
    );
    // And the proof must not verify under the other key.
    assert!(!ZkPari::<E>::verify(&proof, &vk2, &public_input));
}
