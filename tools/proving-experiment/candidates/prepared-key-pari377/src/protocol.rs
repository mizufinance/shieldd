//! Experimental Pari377 over an explicit subset domain, with fresh setup and keys.
use crate::{
    domain::{opening, Descriptor, Domain},
    encode,
};
use anyhow::{ensure, Result};
use ark_bls12_377::{Bls12_377, Fr, G1Affine, G1Projective, G2Affine, G2Projective};
use ark_ec::{
    pairing::Pairing, scalar_mul::BatchMulPreprocessing, AffineRepr, CurveGroup, VariableBaseMSM,
};
use ark_ff::{AdditiveGroup, Field, PrimeField, Zero};
use ark_poly::{univariate::DensePolynomial, DenseUVPolynomial, Polynomial};
use ark_relations::gr1cs::Matrix;
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};
use ark_std::{rand::RngCore, UniformRand};
use rayon::prelude::*;
use zkpari::{
    utils::{msm_bigint_wnaf, transcript::IOPTranscript},
    Proof, SuccinctIndex,
};

#[derive(Clone, CanonicalSerialize, CanonicalDeserialize)]
pub(crate) struct RawVk {
    pub(crate) descriptor: Descriptor,
    pub(crate) index: SuccinctIndex,
    g: G1Affine,
    alpha_g: G1Affine,
    beta_g: G1Affine,
    delta_h: G2Affine,
    tau_h: G2Affine,
    h: G2Affine,
}
pub struct VerifyingKey {
    pub(crate) raw: RawVk,
    domain: Domain,
    transcript: IOPTranscript<Fr>,
    delta_h: <Bls12_377 as Pairing>::G2Prepared,
    tau_h: <Bls12_377 as Pairing>::G2Prepared,
    h: <Bls12_377 as Pairing>::G2Prepared,
}
impl VerifyingKey {
    pub(crate) fn new(raw: RawVk) -> Result<Self> {
        let domain = Domain::from_descriptor(raw.descriptor)?;
        ensure!(
            raw.index.instance_len == 2
                && raw.index.num_constraints >= raw.index.instance_len
                && raw.index.num_constraints <= domain.size(),
            "key relation/domain shape"
        );
        ensure!(
            !raw.g.is_zero()
                && !raw.alpha_g.is_zero()
                && !raw.beta_g.is_zero()
                && !raw.delta_h.is_zero()
                && !raw.tau_h.is_zero()
                && !raw.h.is_zero(),
            "identity setup point"
        );
        let mut transcript = IOPTranscript::new(b"Shieldd subset ZK-Pari development v1");
        transcript.append_serializable_element(b"verifying-key", &raw);
        Ok(Self {
            domain,
            transcript,
            delta_h: raw.delta_h.into(),
            tau_h: raw.tau_h.into(),
            h: raw.h.into(),
            raw,
        })
    }
    fn challenge(&self, public: &[Fr], t: &G1Affine) -> Fr {
        let mut transcript = self.transcript.clone();
        transcript.append_serializable_element(b"input", &public.to_vec());
        transcript.append_serializable_element(b"comm", t);
        transcript.get_and_append_challenge(b"zeta")
    }
}
pub struct ProvingKey {
    pub sigma_w: Vec<G1Affine>,
    pub sigma_mask_const: G1Affine,
    pub sigma_mask_linear: G1Affine,
    pub sigma_q: Vec<G1Affine>,
    pub sigma_a: Vec<G1Affine>,
    pub sigma_r: Vec<G1Affine>,
    pub verifying_key: VerifyingKey,
}

pub fn hash_index(matrices: &[Matrix<Fr>], rows: usize, instances: usize) -> [u8; 32] {
    let mut transcript = IOPTranscript::<Fr>::new(b"ZK-Pari HashIdx");
    transcript.append_serializable_element(b"num_constraints", &(rows as u64));
    transcript.append_serializable_element(b"instance_len", &(instances as u64));
    for (matrix, label) in matrices.iter().zip([b"A", b"B"]) {
        transcript.append_serializable_element(label, matrix);
    }
    transcript.challenge_bytes32(b"digest")
}
fn validate_matrices(
    matrices: &[Matrix<Fr>],
    rows: usize,
    instances: usize,
    witnesses: usize,
) -> Result<()> {
    let wires = instances
        .checked_add(witnesses)
        .ok_or_else(|| anyhow::anyhow!("wire overflow"))?;
    ensure!(
        instances > 0
            && rows >= instances
            && matrices.len() == 2
            && matrices.iter().all(|m| m.len() == rows),
        "matrix shape"
    );
    ensure!(
        matrices
            .iter()
            .flatten()
            .flatten()
            .all(|(_, wire)| *wire < wires),
        "wire mapping"
    );
    let first_outline = rows - instances;
    for (row, entries) in matrices[0].iter().enumerate() {
        let public: Vec<_> = entries
            .iter()
            .filter(|(_, wire)| *wire < instances)
            .copied()
            .collect();
        if row < first_outline {
            ensure!(public.is_empty(), "public column outside outlining rows");
        } else {
            ensure!(
                public == vec![(Fr::ONE, row - first_outline)]
                    && entries.len() == 2
                    && entries
                        .iter()
                        .any(|(c, j)| *j >= instances && *c == -Fr::ONE)
                    && matrices[1][row].is_empty(),
                "noncanonical outlining row"
            );
        }
    }
    ensure!(
        matrices[1]
            .iter()
            .flatten()
            .all(|(_, wire)| *wire >= instances),
        "B has public column"
    );
    Ok(())
}
fn nonzero(rng: &mut impl RngCore) -> Fr {
    loop {
        let x = Fr::rand(rng);
        if x != Fr::ZERO {
            return x;
        }
    }
}

pub fn setup(
    matrices: &[Matrix<Fr>],
    instances: usize,
    witnesses: usize,
    descriptor: Descriptor,
    rng: &mut impl RngCore,
) -> Result<ProvingKey> {
    let rows = matrices.first().map_or(0, Vec::len);
    validate_matrices(matrices, rows, instances, witnesses)?;
    let domain = Domain::from_descriptor(descriptor)?;
    let m = domain.size();
    ensure!(rows <= m, "complete relation exceeds domain");
    let g = G1Affine::generator() * nonzero(rng);
    let h = G2Affine::generator() * nonzero(rng);
    let alpha = nonzero(rng);
    let beta = nonzero(rng);
    let delta = nonzero(rng);
    let tau = loop {
        let x = nonzero(rng);
        if domain.evaluate_vanishing(x) != Fr::ZERO {
            break x;
        }
    };
    let inverse_delta = delta.inverse().unwrap();
    let z = domain.evaluate_vanishing(tau);
    let lagrange = domain.lagranges(tau)?;
    let mut a = vec![Fr::ZERO; instances + witnesses];
    let mut b = a.clone();
    for (matrix, columns) in matrices.iter().zip([&mut a, &mut b]) {
        for (row, entries) in matrix.iter().enumerate() {
            for (coefficient, wire) in entries {
                columns[*wire] += *coefficient * lagrange[row];
            }
        }
    }
    let mut powers = Vec::with_capacity(2 * m + 2);
    let mut current = Fr::ONE;
    for _ in 0..2 * m + 2 {
        powers.push(current);
        current *= tau;
    }
    let table = BatchMulPreprocessing::new(g, 2 * m + 2);
    let query = |values: Vec<Fr>| table.batch_mul(&values);
    let sigma_a = query(powers[..m + 1].par_iter().map(|x| *x * alpha).collect());
    let sigma_r = query(powers[..2 * m + 2].par_iter().map(|x| *x * beta).collect());
    let sigma_w = query(
        (instances..instances + witnesses)
            .into_par_iter()
            .map(|i| (alpha * a[i] + beta * b[i]) * inverse_delta)
            .collect(),
    );
    let sigma_q = query(
        powers[..m + 3]
            .par_iter()
            .map(|x| *x * beta * z * inverse_delta)
            .collect(),
    );
    let raw = RawVk {
        descriptor,
        index: SuccinctIndex {
            num_constraints: rows,
            instance_len: instances,
            matrix_digest: hash_index(matrices, rows, instances),
        },
        g: g.into_affine(),
        alpha_g: (g * alpha).into_affine(),
        beta_g: (g * beta).into_affine(),
        delta_h: (h * delta).into_affine(),
        tau_h: (h * tau).into_affine(),
        h: h.into_affine(),
    };
    Ok(ProvingKey {
        sigma_w,
        sigma_mask_const: (g * (alpha * z * inverse_delta)).into_affine(),
        sigma_mask_linear: (g * (alpha * tau * z * inverse_delta)).into_affine(),
        sigma_q,
        sigma_a,
        sigma_r,
        verifying_key: VerifyingKey::new(raw)?,
    })
}

pub struct PreparedProver {
    key: ProvingKey,
    matrices: Vec<Matrix<Fr>>,
    public: Vec<Vec<Fr>>,
}
impl PreparedProver {
    pub fn new(key: ProvingKey, matrices: Vec<Matrix<Fr>>) -> Result<Self> {
        let index = &key.verifying_key.raw.index;
        let m = key.verifying_key.domain.size();
        validate_matrices(
            &matrices,
            index.num_constraints,
            index.instance_len,
            key.sigma_w.len(),
        )?;
        ensure!(
            hash_index(&matrices, index.num_constraints, index.instance_len) == index.matrix_digest,
            "wrong relation key"
        );
        ensure!(
            key.sigma_q.len() == m + 3
                && key.sigma_a.len() == m + 1
                && key.sigma_r.len() == 2 * m + 2,
            "domain/key degree mismatch"
        );
        let mut columns = vec![vec![Fr::ZERO; m]; index.instance_len];
        for (row, entries) in matrices[0].iter().enumerate() {
            for (coefficient, column) in entries {
                if *column < index.instance_len {
                    columns[*column][row] += coefficient;
                }
            }
        }
        let public = columns
            .iter()
            .map(|c| key.verifying_key.domain.interpolate(c))
            .collect::<Result<_>>()?;
        Ok(Self {
            key,
            matrices,
            public,
        })
    }
    pub fn verifying_key(&self) -> &VerifyingKey {
        &self.key.verifying_key
    }
    pub fn proving_key(&self) -> &ProvingKey {
        &self.key
    }
    pub fn prove(
        &self,
        instances: &[Fr],
        witnesses: &[Fr],
        rng: &mut impl RngCore,
    ) -> Result<Proof<Bls12_377>> {
        self.prove_with_msm(instances, witnesses, rng, &mut G1Projective::msm_unchecked)
    }
    pub fn prove_with_msm(
        &self,
        instances: &[Fr],
        witnesses: &[Fr],
        rng: &mut impl RngCore,
        msm: &mut impl FnMut(&[G1Affine], &[Fr]) -> G1Projective,
    ) -> Result<Proof<Bls12_377>> {
        let key = &self.key;
        let vk = &key.verifying_key;
        let d = &vk.domain;
        let m = d.size();
        ensure!(
            instances.len() == vk.raw.index.instance_len
                && instances.first() == Some(&Fr::ONE)
                && witnesses.len() == key.sigma_w.len(),
            "assignment shape or constant"
        );
        let mut eval = [vec![Fr::ZERO; m], vec![Fr::ZERO; m]];
        for (matrix, out) in self.matrices.iter().zip(&mut eval) {
            for (row, entries) in matrix.iter().enumerate() {
                out[row] = entries
                    .iter()
                    .map(|(c, j)| {
                        *c * if *j < instances.len() {
                            instances[*j]
                        } else {
                            witnesses[*j - instances.len()]
                        }
                    })
                    .sum();
            }
        }
        // Domain checks every exact real/padding row before allowing any coset quotient.
        let (a, b, mut q) = d.checked_polynomials(&eval[0], &eval[1])?;
        let eta0 = Fr::rand(rng);
        let eta1 = Fr::rand(rng);
        let mut w = a.clone();
        for (column, value) in self.public.iter().zip(instances) {
            for (c, x) in w.iter_mut().zip(column) {
                *c -= *x * value;
            }
        }
        q.resize(m + 3, Fr::ZERO);
        for (i, v) in a.iter().enumerate() {
            q[i] += eta0.double() * v;
            q[i + 1] += eta1.double() * v;
        }
        for (i, z) in d.vanishing_terms() {
            q[i] += eta0.square() * z;
            q[i + 1] += (eta0 * eta1).double() * z;
            q[i + 2] += eta1.square() * z;
        }
        w.resize(m + 2, Fr::ZERO);
        for (i, z) in d.vanishing_terms() {
            w[i] += eta0 * z;
            w[i + 1] += eta1 * z;
        }
        let t = (msm(&key.sigma_w, witnesses)
            + msm(
                &[key.sigma_mask_const, key.sigma_mask_linear],
                &[eta0, eta1],
            )
            + msm(&key.sigma_q, &q))
        .into_affine();
        let challenge = vk.challenge(&instances[1..], &t);
        ensure!(
            d.evaluate_vanishing(challenge) != Fr::ZERO,
            "challenge in retained domain; reprove with fresh randomness"
        );
        let w_poly = DensePolynomial::from_coefficients_vec(w.clone());
        let v_a = w_poly.evaluate(&challenge);
        let mut r = d.multiply_vanishing(&q);
        for (v, b) in r.iter_mut().zip(b) {
            *v += b;
        }
        let opening_a = opening(&w, challenge);
        let opening_r = opening(&r, challenge);
        ensure!(
            opening_a.len() <= m + 1 && opening_r.len() <= 2 * m + 2,
            "opening degree"
        );
        let u = (msm(&key.sigma_a[..opening_a.len()], &opening_a)
            + msm(&key.sigma_r[..opening_r.len()], &opening_r))
        .into_affine();
        Ok(Proof {
            t_g: t,
            u_g: u,
            v_a,
        })
    }
}

pub fn verify(proof: &Proof<Bls12_377>, vk: &VerifyingKey, public: &[Fr]) -> bool {
    let instances = vk.raw.index.instance_len;
    if public.len() != instances - 1 {
        return false;
    }
    let challenge = vk.challenge(public, &proof.t_g);
    if vk.domain.evaluate_vanishing(challenge) == Fr::ZERO {
        return false;
    }
    let start = vk.raw.index.num_constraints - instances;
    let mut x = Fr::ZERO;
    for (i, value) in std::iter::once(Fr::ONE)
        .chain(public.iter().copied())
        .enumerate()
    {
        let Ok(l) = vk.domain.lagrange(start + i, challenge) else {
            return false;
        };
        x += value * l;
    }
    let v_r = (x + proof.v_a).square();
    let last = msm_bigint_wnaf::<G1Projective>(
        &[proof.u_g, -vk.raw.alpha_g, -vk.raw.beta_g],
        &[
            challenge.into_bigint(),
            proof.v_a.into_bigint(),
            v_r.into_bigint(),
        ],
    )
    .into_affine();
    Bls12_377::multi_pairing(
        [proof.t_g, -proof.u_g, last],
        [vk.delta_h.clone(), vk.tau_h.clone(), vk.h.clone()],
    )
    .is_zero()
}

pub fn verify_other_domain(
    proof: &Proof<Bls12_377>,
    vk: &VerifyingKey,
    public: &[Fr],
) -> Result<bool> {
    let mut raw = vk.raw.clone();
    raw.descriptor = vk.domain.full_descriptor();
    Ok(verify(proof, &VerifyingKey::new(raw)?, public))
}

pub fn encode_key(key: &ProvingKey) -> Result<Vec<u8>> {
    let mut out = b"SHBUPK01".to_vec();
    out.extend(encode(&key.verifying_key.raw)?);
    key.sigma_w.serialize_uncompressed(&mut out)?;
    key.sigma_mask_const.serialize_uncompressed(&mut out)?;
    key.sigma_mask_linear.serialize_uncompressed(&mut out)?;
    for points in [&key.sigma_q, &key.sigma_a, &key.sigma_r] {
        points.serialize_uncompressed(&mut out)?;
    }
    Ok(out)
}
pub fn decode_key(bytes: &[u8]) -> Result<ProvingKey> {
    ensure!(
        bytes.starts_with(b"SHBUPK01"),
        "wrong experimental key format"
    );
    let mut input = &bytes[8..];
    let raw = RawVk::deserialize_compressed(&mut input)?;
    let verifying_key = VerifyingKey::new(raw)?;
    let m = verifying_key.domain.size();
    fn take<'a>(input: &mut &'a [u8], n: usize) -> Result<&'a [u8]> {
        ensure!(n <= input.len(), "truncated key");
        let (a, b) = input.split_at(n);
        *input = b;
        Ok(a)
    }
    fn points(input: &mut &[u8], limit: usize) -> Result<Vec<G1Affine>> {
        let n = usize::try_from(u64::from_le_bytes(take(input, 8)?.try_into()?))?;
        ensure!(n <= limit, "point bound");
        take(
            input,
            n.checked_mul(96)
                .ok_or_else(|| anyhow::anyhow!("point size overflow"))?,
        )?
        .par_chunks_exact(96)
        .map(crate::subgroup::decode_uncompressed)
        .collect()
    }
    let sigma_w = points(&mut input, 1 << 20)?;
    let sigma_mask_const = crate::subgroup::decode_uncompressed(take(&mut input, 96)?)?;
    let sigma_mask_linear = crate::subgroup::decode_uncompressed(take(&mut input, 96)?)?;
    let sigma_q = points(&mut input, m + 3)?;
    let sigma_a = points(&mut input, m + 1)?;
    let sigma_r = points(&mut input, 2 * m + 2)?;
    ensure!(
        input.is_empty()
            && sigma_q.len() == m + 3
            && sigma_a.len() == m + 1
            && sigma_r.len() == 2 * m + 2,
        "key degree/length"
    );
    let key = ProvingKey {
        sigma_w,
        sigma_mask_const,
        sigma_mask_linear,
        sigma_q,
        sigma_a,
        sigma_r,
        verifying_key,
    };
    ensure!(encode_key(&key)? == bytes, "noncanonical key");
    Ok(key)
}

#[cfg(test)]
mod tests {
    use super::*;
    use ark_std::rand::{rngs::StdRng, SeedableRng};
    fn descriptor(removed: u32) -> Descriptor {
        Descriptor::deserialize_compressed(
            [8u32.to_le_bytes(), removed.to_le_bytes()]
                .concat()
                .as_slice(),
        )
        .unwrap()
    }
    fn matrices() -> Vec<Matrix<Fr>> {
        vec![
            vec![
                vec![(Fr::ONE, 2)],
                vec![(Fr::ONE, 4)],
                vec![(Fr::ONE, 0), (-Fr::ONE, 6)],
                vec![(Fr::ONE, 1), (-Fr::ONE, 4)],
            ],
            vec![vec![(Fr::ONE, 3)], vec![(Fr::ONE, 5)], vec![], vec![]],
        ]
    }
    #[test]
    fn subset_proves_and_binds_domain_key_rows_and_encodings() {
        let mut rng = StdRng::seed_from_u64(1337);
        let matrix = matrices();
        let key = setup(&matrix, 2, 5, descriptor(1), &mut rng).unwrap();
        let encoded = encode_key(&key).unwrap();
        let mut changed = key.verifying_key.raw.clone();
        changed.descriptor = descriptor(0);
        let wrong_domain = VerifyingKey::new(changed).unwrap();
        let decoded = decode_key(&encoded).unwrap();
        assert_eq!(encode_key(&decoded).unwrap(), encoded);
        for bad in [
            encoded[..encoded.len() - 1].to_vec(),
            [encoded.as_slice(), &[0]].concat(),
            vec![255; encoded.len()],
        ] {
            assert!(decode_key(&bad).is_err());
        }
        let mut reordered = matrix.clone();
        reordered[0].swap(2, 3);
        assert!(PreparedProver::new(decode_key(&encoded).unwrap(), reordered).is_err());
        let mut bad_mapping = matrix.clone();
        bad_mapping[0][0][0].1 = 99;
        assert!(PreparedProver::new(decode_key(&encoded).unwrap(), bad_mapping).is_err());
        let wrong_key = setup(&matrix, 2, 5, descriptor(1), &mut rng).unwrap();
        let prover = PreparedProver::new(decoded, matrix).unwrap();
        let instances = [Fr::ONE, Fr::from(4)];
        let witnesses = [3, 9, 4, 16, 1].map(Fr::from);
        let proof = prover.prove(&instances, &witnesses, &mut rng).unwrap();
        assert!(verify(&proof, prover.verifying_key(), &instances[1..]));
        assert!(!verify(&proof, &wrong_domain, &instances[1..]));
        assert!(!verify(&proof, &wrong_key.verifying_key, &instances[1..]));
        assert!(!verify(&proof, prover.verifying_key(), &[Fr::from(5)]));
        assert!(!verify(&proof, prover.verifying_key(), &[]));
        assert!(prover
            .prove(&[Fr::ZERO, Fr::from(4)], &witnesses, &mut rng)
            .is_err());
        for i in 0..witnesses.len() {
            let mut invalid = witnesses;
            invalid[i] += Fr::ONE;
            assert!(prover.prove(&instances, &invalid, &mut rng).is_err());
        }
        let bytes = encode(&proof).unwrap();
        let decoded: Proof<Bls12_377> = crate::bridge::decode(&bytes).unwrap();
        assert!(verify(&decoded, prover.verifying_key(), &instances[1..]));
        assert!(
            crate::bridge::decode::<Proof<Bls12_377>>(&[bytes.as_slice(), &[0]].concat()).is_err()
        );
    }
    #[test]
    fn every_new_key_query_and_mask_slot_rejects_torsion() {
        use ark_bls12_377::Fq;
        let mut rng = StdRng::seed_from_u64(55);
        let key = setup(&matrices(), 2, 5, descriptor(1), &mut rng).unwrap();
        let encoded = encode_key(&key).unwrap();
        let torsion = G1Affine::new_unchecked(Fq::ZERO, Fq::ONE);
        for slot in 0..6 {
            let mut bad = decode_key(&encoded).unwrap();
            match slot {
                0 => bad.sigma_w[0] = torsion,
                1 => bad.sigma_mask_const = torsion,
                2 => bad.sigma_mask_linear = torsion,
                3 => bad.sigma_q[0] = torsion,
                4 => bad.sigma_a[0] = torsion,
                _ => bad.sigma_r[0] = torsion,
            }
            assert!(decode_key(&encode_key(&bad).unwrap()).is_err());
        }
        let mut identity = decode_key(&encoded).unwrap();
        identity.sigma_w[0] = G1Affine::zero();
        assert!(decode_key(&encode_key(&identity).unwrap()).is_ok());
    }

    #[test]
    fn checked_coset_boundary_rejects_low_degree_invalid_relations() {
        for removed in [0, 1] {
            let domain = Domain::from_descriptor(descriptor(removed)).unwrap();
            let n = domain.size();
            // A=0, B=1 can alias to a low-degree coset interpolant: row checks must reject first.
            assert!(domain
                .checked_polynomials(&vec![Fr::ZERO; n], &vec![Fr::ONE; n])
                .is_err());
            for row in 0..n {
                let mut b = vec![Fr::ZERO; n];
                b[row] = Fr::ONE;
                assert!(domain.checked_polynomials(&vec![Fr::ZERO; n], &b).is_err());
            }
        }
    }
}
