use super::{
    Claim, CommitmentKey, Error, PreparedProver, Proof, ProvingKey, Relation, VerifyingKey,
    Witness, circuit::dot, sample_scalar, transcript_challenge, transcript_challenge_prebound,
};
use crate::{
    bls12381::primitives::group::{G1, Scalar},
    transcript::Transcript,
};
use commonware_math::{
    algebra::{Additive, Field, FieldNTT, Multiplicative, Ring, Space},
    ntt::{Domain, PreparedTransform},
    poly::Poly,
};
use commonware_parallel::{Sequential, Strategy};
use rand_core::CryptoRng;

#[derive(Clone, Copy)]
enum ProverKey<'a> {
    Ordinary(&'a ProvingKey),
    Prepared(&'a PreparedProver),
}

/// Create a zero-knowledge proof for a claim and compiled witness.
pub fn prove(
    rng: &mut impl CryptoRng,
    transcript: &mut Transcript,
    proving_key: &ProvingKey,
    relation: &Relation,
    claim: &Claim,
    witness: &Witness,
    strategy: &impl Strategy,
) -> Result<Proof, Error> {
    prove_inner(
        rng,
        transcript,
        ProverKey::Ordinary(proving_key),
        relation,
        claim,
        witness,
        strategy,
        true,
    )
}

/// Create a proof whose statement the caller has already bound to the
/// transcript.
///
/// # Security
///
/// The Fiat-Shamir challenge only covers what the transcript contains. Before
/// calling, the caller MUST have committed the claim's public inputs and every
/// block commitment (or data that uniquely determines them) to `transcript`,
/// and the verifier must replay exactly the same binding. Use [`prove`] unless
/// the statement needs a custom transcript encoding (e.g. binding commitment
/// preimages so batch verification can fold derived commitments).
#[allow(clippy::too_many_arguments)]
pub fn prove_prebound(
    rng: &mut impl CryptoRng,
    transcript: &mut Transcript,
    proving_key: &ProvingKey,
    relation: &Relation,
    claim: &Claim,
    witness: &Witness,
    strategy: &impl Strategy,
) -> Result<Proof, Error> {
    prove_inner(
        rng,
        transcript,
        ProverKey::Ordinary(proving_key),
        relation,
        claim,
        witness,
        strategy,
        false,
    )
}

/// Prove using relation-bound polynomial and key-bound curve preparations.
pub fn prove_prepared(
    rng: &mut impl CryptoRng,
    transcript: &mut Transcript,
    prepared: &PreparedProver,
    relation: &Relation,
    claim: &Claim,
    witness: &Witness,
    strategy: &impl Strategy,
) -> Result<Proof, Error> {
    prove_inner(
        rng,
        transcript,
        ProverKey::Prepared(prepared),
        relation,
        claim,
        witness,
        strategy,
        true,
    )
}

#[allow(clippy::too_many_arguments)]
fn prove_inner(
    rng: &mut impl CryptoRng,
    transcript: &mut Transcript,
    key: ProverKey<'_>,
    relation: &Relation,
    claim: &Claim,
    witness: &Witness,
    strategy: &impl Strategy,
    bind_claim: bool,
) -> Result<Proof, Error> {
    let (verifying_key, commitment_keys, masks, prepared) = match key {
        ProverKey::Ordinary(key) => (
            &key.verifying_key,
            key.commitment_keys.as_slice(),
            [key.sigma_mask_constant, key.sigma_mask_linear],
            None,
        ),
        ProverKey::Prepared(key) => (
            &key.verifying_key,
            key.commitment_keys.as_slice(),
            key.masks,
            Some(key),
        ),
    };
    validate_inputs(
        verifying_key,
        commitment_keys,
        relation,
        claim,
        witness,
        strategy,
    )?;

    let assignment = witness.assignment();
    let values = assignment.values();
    let domain = Domain::new(relation.size())?;
    // Coset recovery needs divisibility, checked on every real row during evaluation.
    let (z_a_evaluations, z_b_evaluations) =
        evaluate_relation(relation, values, prepared.is_some())?;
    let public = assignment.public_assignment();
    let interpolate = |evaluations: Vec<Scalar>| -> Result<Poly<Scalar>, Error> {
        if let Some(prepared) = prepared {
            Poly::from_coefficients(
                prepared
                    .polynomials
                    .transform
                    .interpolate(evaluations, strategy)?,
            )
            .ok_or(Error::TooLarge)
        } else {
            Ok(Poly::interpolate(&domain, &evaluations)?)
        }
    };
    let z_a = interpolate(z_a_evaluations)?;
    let z_b = interpolate(z_b_evaluations)?;
    let (x_a, x_b) = if let Some(prepared) = prepared {
        prepared.polynomials.public(relation, public)?
    } else {
        let (a, b) = evaluate_public(relation, public);
        (
            Poly::interpolate(&domain, &a)?,
            Poly::interpolate(&domain, &b)?,
        )
    };

    let eta_1 = sample_scalar(rng);
    let eta_2 = sample_scalar(rng);
    let a_mask =
        Poly::from_coefficients(vec![eta_1.clone(), eta_2.clone()]).expect("nonempty coefficients");
    // Every block's opening randomness contributes to the B-side mask, since
    // each block commitment carries its own rho * Z_H(tau) term.
    let openings_sum = witness
        .openings()
        .iter()
        .fold(Scalar::zero(), |sum, opening| sum + opening.scalar());
    let b_mask = Poly::from_coefficients(vec![openings_sum]).expect("nonempty coefficients");
    let (quotient, z_a_masked, z_b_masked) = if let Some(prepared) = prepared {
        let base = prepared.polynomials.quotient(&z_a, &z_b, strategy)?;
        let quotient = expand_masks(base, &z_a, &a_mask, &b_mask, relation.size())?;
        (
            quotient,
            z_a.into_mask_vanishing(&a_mask, relation.size())?,
            z_b.into_mask_vanishing(&b_mask, relation.size())?,
        )
    } else {
        let z_a_masked = z_a.mask_vanishing(&a_mask, relation.size())?;
        let z_b_masked = z_b.mask_vanishing(&b_mask, relation.size())?;
        let numerator = z_a_masked.multiply(&z_a_masked)? - &z_b_masked;
        let (mut quotient, remainder) = numerator.divide_by_vanishing(relation.size())?;
        quotient.trim();
        if remainder != Poly::zero() {
            return Err(Error::Unsatisfied);
        }
        (quotient, z_a_masked, z_b_masked)
    };

    let committed_end = relation
        .committed_start()
        .checked_add(relation.committed_inputs())
        .ok_or(Error::TooLarge)?;
    let ordinary_values = &values[committed_end..];
    let commitment = match key {
        ProverKey::Prepared(prepared) => {
            if ordinary_values.len() != prepared.witness_len {
                return Err(Error::RelationMismatch);
            }
            prepared
                .commitment_msm
                .msm(&[ordinary_values, quotient.coefficients()], strategy)
                .map_err(|_| Error::RelationMismatch)?
        }
        ProverKey::Ordinary(proving_key) => {
            if ordinary_values.len() != proving_key.sigma_witness.len()
                || quotient.coefficients().len() > proving_key.sigma_quotient.len()
            {
                return Err(Error::RelationMismatch);
            }
            G1::msm(&proving_key.sigma_witness, ordinary_values, strategy)
                + &G1::msm(
                    &proving_key.sigma_quotient[..quotient.coefficients().len()],
                    quotient.coefficients(),
                    strategy,
                )
        }
    };
    let t = commitment + &G1::msm(&masks, &[eta_1, eta_2], strategy);
    if t == G1::zero() {
        return Err(Error::IdentityPoint { kind: "proof T" });
    }

    let challenge = if bind_claim {
        transcript_challenge(transcript, &domain, verifying_key, claim, &t)
    } else {
        transcript_challenge_prebound(transcript, &domain, verifying_key, &t)
    };
    let mut z_a_at_challenge = z_a_masked.eval(&challenge);
    let v_a = z_a_at_challenge.clone() - &x_a.eval(&challenge);
    z_a_at_challenge.square();
    let v_r = z_a_at_challenge - &x_b.eval(&challenge);

    let a_opening_numerator = z_a_masked
        - &x_a
        - &Poly::from_coefficients(vec![v_a.clone()]).expect("nonempty coefficients");
    let divide_opening = |numerator: Poly<Scalar>| {
        if prepared.is_some() {
            numerator.into_divide_by_linear(&challenge)
        } else {
            numerator.divide_by_linear(&challenge)
        }
    };
    let (mut a_opening, a_remainder) = divide_opening(a_opening_numerator);
    a_opening.trim();
    if a_remainder != Scalar::zero() {
        return Err(Error::InconsistentOpening);
    }

    let vanishing_quotient = quotient.mul_vanishing(relation.size())?;
    let r_polynomial = z_b_masked - &x_b + &vanishing_quotient;
    let r_opening_numerator =
        r_polynomial - &Poly::from_coefficients(vec![v_r]).expect("nonempty coefficients");
    let (mut r_opening, r_remainder) = divide_opening(r_opening_numerator);
    r_opening.trim();
    if r_remainder != Scalar::zero() {
        return Err(Error::InconsistentOpening);
    }

    let u = match key {
        ProverKey::Prepared(prepared) => prepared
            .opening_msm
            .msm(
                &[a_opening.coefficients(), r_opening.coefficients()],
                strategy,
            )
            .map_err(|_| Error::RelationMismatch)?,
        ProverKey::Ordinary(proving_key) => {
            if a_opening.coefficients().len() > proving_key.sigma_a.len()
                || r_opening.coefficients().len() > proving_key.sigma_r.len()
            {
                return Err(Error::RelationMismatch);
            }
            G1::msm(
                &proving_key.sigma_a[..a_opening.coefficients().len()],
                a_opening.coefficients(),
                strategy,
            ) + &G1::msm(
                &proving_key.sigma_r[..r_opening.coefficients().len()],
                r_opening.coefficients(),
                strategy,
            )
        }
    };
    if u == G1::zero() {
        return Err(Error::IdentityPoint { kind: "proof U" });
    }

    Ok(Proof { t, u, v_a })
}

fn validate_inputs(
    verifying_key: &VerifyingKey,
    commitment_keys: &[CommitmentKey],
    relation: &Relation,
    claim: &Claim,
    witness: &Witness,
    strategy: &impl Strategy,
) -> Result<(), Error> {
    if verifying_key.relation_digest != *relation.digest()
        || commitment_keys
            .iter()
            .any(|key| key.relation_digest != *relation.digest())
        || verifying_key.commitment_key_digest
            != super::types::commitment_keys_digest(commitment_keys)
        || verifying_key.domain_size as usize != relation.size()
        || verifying_key.public_inputs as usize != relation.public_inputs()
        || verifying_key.blocks.len() != relation.blocks().len()
        || verifying_key
            .blocks
            .iter()
            .zip(relation.blocks())
            .any(|(&size, &expected)| size as usize != expected)
        || witness.assignment().relation_digest() != relation.digest()
    {
        return Err(Error::RelationMismatch);
    }
    if claim.public_inputs.len() != relation.public_inputs() {
        return Err(Error::PublicInputCount {
            expected: relation.public_inputs(),
            actual: claim.public_inputs.len(),
        });
    }
    // Whether the assignment satisfies the relation is checked by the
    // divisibility of the masked constraint polynomial, or explicitly on every row.
    if witness.assignment().values().len() != relation.size() {
        return Err(Error::RelationMismatch);
    }
    if witness.claim(commitment_keys, strategy)? != *claim {
        return Err(Error::ClaimMismatch);
    }
    Ok(())
}

fn evaluate_relation(
    relation: &Relation,
    values: &[Scalar],
    check: bool,
) -> Result<(Vec<Scalar>, Vec<Scalar>), Error> {
    let mut a = vec![Scalar::zero(); relation.size()];
    let mut b = vec![Scalar::zero(); relation.size()];
    for (row, entries) in relation.rows().iter().enumerate() {
        a[row] = dot(&entries.squared, values);
        b[row] = dot(&entries.linear, values);
        if check && a[row].clone() * &a[row] != b[row] {
            return Err(Error::Unsatisfied);
        }
    }
    Ok((a, b))
}

fn evaluate_public(relation: &Relation, public: &[Scalar]) -> (Vec<Scalar>, Vec<Scalar>) {
    let mut a = vec![Scalar::zero(); relation.size()];
    let mut b = vec![Scalar::zero(); relation.size()];
    for (row, entries) in relation.rows().iter().enumerate() {
        a[row] = dot_public(&entries.squared, public);
        b[row] = dot_public(&entries.linear, public);
    }
    (a, b)
}

/// Dot the public prefix of a sparse row with the public assignment. Row
/// entries are sorted by column, so the public columns form a prefix.
fn dot_public(entries: &[(u32, Scalar)], public: &[Scalar]) -> Scalar {
    entries
        .iter()
        .take_while(|(column, _)| (*column as usize) < public.len())
        .fold(Scalar::zero(), |sum, (column, coefficient)| {
            sum + &(coefficient.clone() * &public[*column as usize])
        })
}

/// Public-column and coset preparation bound to one checked relation.
pub struct PreparedPolynomials {
    digest: [u8; 32],
    domain: Domain<Scalar>,
    transform: PreparedTransform<Scalar>,
    a: Vec<Poly<Scalar>>,
    b: Vec<Poly<Scalar>>,
    powers: Vec<Scalar>,
    inverse_powers: Vec<Scalar>,
    vanishing_inverse: Scalar,
}
impl PreparedPolynomials {
    pub fn new(relation: &Relation) -> Result<Self, Error> {
        let domain = Domain::new(relation.size())?;
        let transform = PreparedTransform::new(&domain)?;
        let width = relation.public_inputs() + 1;
        let mut a = vec![vec![Scalar::zero(); domain.size()]; width];
        let mut b = a.clone();
        for (i, row) in relation.rows().iter().enumerate() {
            for (column, c) in row
                .squared
                .iter()
                .take_while(|(column, _)| (*column as usize) < width)
            {
                a[*column as usize][i] += c;
            }
            for (column, c) in row
                .linear
                .iter()
                .take_while(|(column, _)| (*column as usize) < width)
            {
                b[*column as usize][i] += c;
            }
        }
        let interpolate = |values: Vec<Vec<Scalar>>| -> Result<Vec<Poly<Scalar>>, Error> {
            values
                .into_iter()
                .map(|column| {
                    if column.iter().all(|v| *v == Scalar::zero()) {
                        return Ok(Poly::zero());
                    }
                    Poly::from_coefficients(transform.interpolate(column, &Sequential)?)
                        .ok_or(Error::TooLarge)
                })
                .collect()
        };
        let a = interpolate(a)?;
        let b = interpolate(b)?;
        let shift = Scalar::coset_shift();
        let inverse = shift.inv();
        let vanishing = domain.evaluate_vanishing(&shift);
        if vanishing == Scalar::zero() {
            return Err(Error::RelationMismatch);
        }
        let mut powers = Vec::with_capacity(domain.size());
        let mut inverse_powers = Vec::with_capacity(domain.size());
        // Fuse inverse-transform normalization with coset unshifting.
        let (mut p, mut q) = (Scalar::one(), transform.inverse_size().clone());
        for _ in 0..domain.size() {
            powers.push(p.clone());
            inverse_powers.push(q.clone());
            p *= &shift;
            q *= &inverse;
        }
        Ok(Self {
            digest: *relation.digest(),
            domain,
            transform,
            a,
            b,
            powers,
            inverse_powers,
            vanishing_inverse: vanishing.inv(),
        })
    }
    fn public(
        &self,
        relation: &Relation,
        values: &[Scalar],
    ) -> Result<(Poly<Scalar>, Poly<Scalar>), Error> {
        if self.digest != *relation.digest()
            || self.domain.size() != relation.size()
            || values.len() != self.a.len()
        {
            return Err(Error::RelationMismatch);
        }
        let combine = |columns: &[Poly<Scalar>]| -> Result<Poly<Scalar>, Error> {
            let mut coefficients = vec![Scalar::zero(); self.domain.size()];
            for (column, value) in columns.iter().zip(values) {
                if *value == Scalar::zero() {
                    continue;
                }
                for (out, c) in coefficients.iter_mut().zip(column.coefficients()) {
                    if *value == Scalar::one() {
                        *out += c;
                    } else {
                        *out += &(c.clone() * value);
                    }
                }
            }
            let mut polynomial = Poly::from_coefficients(coefficients).ok_or(Error::TooLarge)?;
            polynomial.trim();
            Ok(polynomial)
        };
        Ok((combine(&self.a)?, combine(&self.b)?))
    }
    fn quotient(
        &self,
        a: &Poly<Scalar>,
        b: &Poly<Scalar>,
        strategy: &impl Strategy,
    ) -> Result<Poly<Scalar>, Error> {
        if a.coefficients().len() > self.domain.size()
            || b.coefficients().len() > self.domain.size()
        {
            return Err(Error::RelationMismatch);
        }
        let shifted = |polynomial: &Poly<Scalar>| {
            polynomial
                .coefficients()
                .iter()
                .zip(&self.powers)
                .map(|(c, p)| c.clone() * p)
                .collect::<Vec<_>>()
        };
        let mut evaluated = self.transform.evaluate(shifted(a), strategy)?;
        let other = self.transform.evaluate(shifted(b), strategy)?;
        for (x, y) in evaluated.iter_mut().zip(other) {
            x.square();
            *x -= &y;
            *x *= &self.vanishing_inverse;
        }
        let mut coefficients = self.transform.interpolate_unscaled(evaluated, strategy)?;
        for (c, p) in coefficients.iter_mut().zip(&self.inverse_powers) {
            *c *= p;
        }
        Poly::from_coefficients(coefficients).ok_or(Error::TooLarge)
    }
}

fn expand_masks(
    base: Poly<Scalar>,
    a: &Poly<Scalar>,
    mask_a: &Poly<Scalar>,
    mask_b: &Poly<Scalar>,
    size: usize,
) -> Result<Poly<Scalar>, Error> {
    let [constant, linear] = mask_a.coefficients() else {
        return Err(Error::RelationMismatch);
    };
    let mut cross = vec![Scalar::zero(); a.coefficients().len() + 1];
    let twice_constant = constant.clone() + constant;
    let twice_linear = linear.clone() + linear;
    for (i, value) in a.coefficients().iter().enumerate() {
        cross[i] += &(value.clone() * &twice_constant);
        cross[i + 1] += &(value.clone() * &twice_linear);
    }
    let cross = Poly::from_coefficients(cross).ok_or(Error::TooLarge)?;
    let mask_square = mask_a.multiply(mask_a)?.mul_vanishing(size)?;
    let mut quotient = base + &cross + &mask_square - mask_b;
    quotient.trim();
    Ok(quotient)
}

#[cfg(test)]
mod prepared_tests {
    use super::*;
    use crate::{
        transcript::Version,
        zk::{
            circuit::{Context, Var, build, build_with_values},
            pari::{InputLayout, Opening, setup, verify},
        },
    };
    use commonware_codec::Encode;
    use commonware_parallel::{Rayon, Sequential};
    use commonware_utils::TestRng;
    use std::num::NonZeroUsize;

    fn circuit<'a>(
        ctx: Context<'a, Scalar>,
        x: u64,
        y: u64,
        public: u64,
        offset: u64,
    ) -> Vec<Var<'a, Scalar>> {
        let x = Var::witness(ctx, move |_| Scalar::from(x));
        let y = Var::witness(ctx, move |_| Scalar::from(y));
        let public = Var::witness(ctx, move |_| Scalar::from(public));
        (x.clone() * &y).assert_eq(&(public.clone() + &Var::constant(ctx, Scalar::from(offset))));
        vec![public, x, y]
    }

    fn relation(offset: u64) -> (Relation, InputLayout) {
        let (circuit, indices) = build(|ctx| circuit(ctx, 0, 0, 0, offset));
        let layout =
            InputLayout::new(vec![indices[0]], vec![vec![indices[1]], vec![indices[2]]]).unwrap();
        (Relation::compile(&circuit, &layout).unwrap(), layout)
    }

    fn witness(
        relation: &Relation,
        layout: &InputLayout,
        x: u64,
        y: u64,
        public: u64,
        openings: [u64; 2],
    ) -> Witness {
        let (valued, _) = build_with_values(|ctx| circuit(ctx, x, y, public, 0));
        relation
            .witness(
                &valued,
                layout,
                openings
                    .into_iter()
                    .map(|value| Opening::new(Scalar::from(value)))
                    .collect(),
            )
            .unwrap()
    }

    fn transcript() -> Transcript {
        Transcript::new(b"pari-prepared-parity", Version::V1)
    }

    #[test]
    fn prepared_proofs_match_reference_bytes() {
        let parallel = Rayon::new(NonZeroUsize::new(2).unwrap()).unwrap();
        let (relation, layout) = relation(0);
        let (key, vk) = setup(&relation, &mut TestRng::new(10), &Sequential).unwrap();
        let prepared = PreparedProver::new(key.clone(), &relation).unwrap();
        for seed in 0..6 {
            // Multiple blocks exercise the sum of all B-side opening masks.
            let witness = witness(
                &relation,
                &layout,
                seed + 2,
                seed + 3,
                (seed + 2) * (seed + 3),
                [seed + 5, seed + 11],
            );
            let claim = witness
                .claim(prepared.commitment_keys(), &Sequential)
                .unwrap();
            let generic = prove(
                &mut TestRng::new(seed),
                &mut transcript(),
                &key,
                &relation,
                &claim,
                &witness,
                &Sequential,
            )
            .unwrap();
            let optimized = prove_prepared(
                &mut TestRng::new(seed),
                &mut transcript(),
                &prepared,
                &relation,
                &claim,
                &witness,
                &Sequential,
            )
            .unwrap();
            let parallel_proof = prove_prepared(
                &mut TestRng::new(seed),
                &mut transcript(),
                &prepared,
                &relation,
                &claim,
                &witness,
                &parallel,
            )
            .unwrap();
            assert_eq!(generic.encode(), parallel_proof.encode());
            assert!(verify(&mut transcript(), &vk, &claim, &parallel_proof));
            assert_eq!(generic.encode(), optimized.encode());
            assert!(verify(&mut transcript(), &vk, &claim, &optimized));
        }
    }

    #[test]
    fn prepared_rejects_unsatisfied_witness() {
        let (relation, layout) = relation(0);
        let (key, _) = setup(&relation, &mut TestRng::new(10), &Sequential).unwrap();
        let prepared = PreparedProver::new(key.clone(), &relation).unwrap();
        let witness = witness(&relation, &layout, 2, 3, 7, [5, 11]);
        let claim = witness
            .claim(prepared.commitment_keys(), &Sequential)
            .unwrap();
        assert!(matches!(
            prove_prepared(
                &mut TestRng::new(0),
                &mut transcript(),
                &prepared,
                &relation,
                &claim,
                &witness,
                &Sequential
            ),
            Err(Error::Unsatisfied)
        ));
        assert!(matches!(
            prove(
                &mut TestRng::new(0),
                &mut transcript(),
                &key,
                &relation,
                &claim,
                &witness,
                &Sequential
            ),
            Err(Error::Unsatisfied)
        ));
    }

    #[test]
    fn coset_quotient_matches_generic_for_zero_and_nonzero_masks() {
        let (relation, _) = relation(0);
        let prepared = PreparedPolynomials::new(&relation).unwrap();
        let n = relation.size();
        let a = Poly::from_coefficients((0..n).map(|i| Scalar::from((i + 1) as u64))).unwrap();
        let evaluations = prepared.domain.evaluate(a.coefficients()).unwrap();
        let squared: Vec<_> = evaluations.iter().map(|a| a.clone() * a).collect();
        let b = Poly::interpolate(&prepared.domain, &squared).unwrap();
        for (constant, linear, opening) in [(0u64, 0u64, 0u64), (7, 0, 11), (0, 5, 13), (7, 5, 17)]
        {
            let mask = Poly::from_coefficients(vec![Scalar::from(constant), Scalar::from(linear)])
                .unwrap();
            let b_mask = Poly::from_coefficients(vec![Scalar::from(opening)]).unwrap();
            let masked_a = a.mask_vanishing(&mask, n).unwrap();
            let masked_b = b.mask_vanishing(&b_mask, n).unwrap();
            let numerator = masked_a.multiply(&masked_a).unwrap() - &masked_b;
            let (mut expected, remainder) = numerator.divide_by_vanishing(n).unwrap();
            assert_eq!(remainder, Poly::zero());
            expected.trim();
            let base = prepared.quotient(&a, &b, &Sequential).unwrap();
            let actual = expand_masks(base, &a, &mask, &b_mask, n).unwrap();
            assert_eq!(actual, expected);
        }
    }

    #[test]
    fn prepared_prover_constructor_rejects_different_relation() {
        let (first, _) = relation(0);
        let (other, _) = relation(1);
        let (key, _) = setup(&first, &mut TestRng::new(10), &Sequential).unwrap();
        assert!(matches!(
            PreparedProver::new(key, &other),
            Err(Error::RelationMismatch)
        ));
    }

    #[test]
    fn preparation_rejects_different_relation() {
        let (first, layout) = relation(0);
        let (other, _) = relation(1);
        let polynomials = PreparedPolynomials::new(&first).unwrap();
        assert!(matches!(
            polynomials.public(&other, &[Scalar::one(), Scalar::from(6)]),
            Err(Error::RelationMismatch)
        ));
        let (key, _) = setup(&first, &mut TestRng::new(10), &Sequential).unwrap();
        let prepared = PreparedProver::new(key, &first).unwrap();
        let witness = witness(&first, &layout, 2, 3, 6, [5, 11]);
        let claim = witness
            .claim(prepared.commitment_keys(), &Sequential)
            .unwrap();
        assert!(matches!(
            prove_prepared(
                &mut TestRng::new(0),
                &mut transcript(),
                &prepared,
                &other,
                &claim,
                &witness,
                &Sequential
            ),
            Err(Error::RelationMismatch)
        ));
    }
}
