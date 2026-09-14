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

#[derive(Clone, Copy, Debug, PartialEq, Eq, serde::Serialize)]
#[serde(rename_all="snake_case")]
pub(crate) enum Query { Witness, Masks, Quotient, OpeningA, OpeningR }
impl Query {
    pub(crate) const ALL: [Self;5]=[Self::Witness,Self::Masks,Self::Quotient,Self::OpeningA,Self::OpeningR];
    pub(crate) fn index(self)->usize {self as usize}
    pub(crate) fn name(self)->&'static str {match self {Self::Witness=>"witness",Self::Masks=>"masks",Self::Quotient=>"quotient",Self::OpeningA=>"opening_a",Self::OpeningR=>"opening_r"}}
}
#[derive(serde::Serialize)]
pub(crate) struct QueryBinding {name:Query,count:usize,sha256:String}
#[derive(serde::Serialize)]
pub(crate) struct Admission {
    schema:&'static str,curve:&'static str,protocol:&'static str,
    fft:usize,retained:usize,constraints:usize,instances:usize,witnesses:usize,
    key_sha256:String,vk_sha256:String,index_sha256:String,session_nonce:String,queries:Vec<QueryBinding>,
}
/// Only complete checked decoding can construct this immutable admission input.
pub(crate) struct CheckedKey {key:ProvingKey,source_sha256:String}
impl CheckedKey {
    pub(crate) fn decode(bytes:&[u8])->Result<Self>{Ok(Self{key:decode_key(bytes)?,source_sha256:crate::arithmetic::sha(bytes)})}
}
#[derive(Debug,PartialEq,Eq)]
enum Storage {Local,Streaming(usize),Delegated}
pub struct PreparedProver {
    source_sha256:Option<String>,
    admission_binding:Option<String>,
    storage:Storage,
    lengths:[usize;5],
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
        let lengths=[key.sigma_w.len(),2,key.sigma_q.len(),key.sigma_a.len(),key.sigma_r.len()];
        Ok(Self {key,matrices,public,lengths,source_sha256:None,admission_binding:None,storage:Storage::Local})
    }
    pub(crate) fn from_checked(key:CheckedKey,matrices:Vec<Matrix<Fr>>)->Result<Self>{
        let mut prover=Self::new(key.key,matrices)?;
        prover.source_sha256=Some(key.source_sha256);Ok(prover)
    }
    pub(crate) fn delegated_binding(&self)->Result<&str>{
        ensure!(self.storage==Storage::Delegated,"prover is not delegated");self.admission_binding.as_deref().ok_or_else(||anyhow::anyhow!("missing admission binding"))
    }
    pub(crate) fn query_count(&self,q:Query)->usize {self.lengths[q.index()]}
    pub(crate) fn mask_points(&self)->[G1Affine;2]{[self.key.sigma_mask_const,self.key.sigma_mask_linear]}
    fn local_query(&self,q:Query)->Result<&[G1Affine]>{
        ensure!(self.storage==Storage::Local,"query storage is delegated or streaming");
        match q {Query::Witness=>Ok(&self.key.sigma_w),Query::Quotient=>Ok(&self.key.sigma_q),Query::OpeningA=>Ok(&self.key.sigma_a),Query::OpeningR=>Ok(&self.key.sigma_r),Query::Masks=>anyhow::bail!("masks use their fixed local pair")}
    }
    pub(crate) fn begin_transfer(&mut self)->Result<Admission>{
        use sha2::{Digest,Sha256};
        ensure!(self.storage==Storage::Local,"admission already started");
        let source=self.source_sha256.as_ref().ok_or_else(||anyhow::anyhow!("key did not enter through checked decoder"))?.clone();
        let masks=self.mask_points();let mut queries=Vec::new();
        for q in Query::ALL {
            let bases=if q==Query::Masks {&masks[..]} else {self.local_query(q)?};
            let mut h=Sha256::new();for p in bases {h.update(crate::arithmetic::point_bytes(p));}
            queries.push(QueryBinding{name:q,count:bases.len(),sha256:hex::encode(h.finalize())});
        }
        let vk=&self.key.verifying_key;
        let mut nonce=[0u8;16];ark_std::rand::rngs::OsRng.fill_bytes(&mut nonce);
        let admission=Admission{schema:"shieldd.proving_experiment.owned_admission.v1",curve:"bls12-377-g1",protocol:"shieldd-subset-pari377-v1",fft:vk.domain.fft_size(),retained:vk.domain.size(),constraints:vk.raw.index.num_constraints,instances:vk.raw.index.instance_len,witnesses:self.lengths[0],key_sha256:source,vk_sha256:crate::arithmetic::sha(&encode(&vk.raw)?),index_sha256:hex::encode(vk.raw.index.matrix_digest),session_nonce:hex::encode(nonce),queries};
        self.admission_binding=Some(crate::arithmetic::sha(&serde_json::to_vec(&admission)?));
        self.storage=Storage::Streaming(0);Ok(admission)
    }
    pub(crate) fn write_query(&mut self,q:Query,out:&mut impl std::io::Write)->Result<()> {
        ensure!(self.storage==Storage::Streaming(q.index()),"out-of-order or repeated transfer");
        let points=match q {Query::Witness=>std::mem::take(&mut self.key.sigma_w),Query::Masks=>self.mask_points().to_vec(),Query::Quotient=>std::mem::take(&mut self.key.sigma_q),Query::OpeningA=>std::mem::take(&mut self.key.sigma_a),Query::OpeningR=>std::mem::take(&mut self.key.sigma_r)};
        ensure!(points.len()==self.lengths[q.index()],"transferred query length");
        // No mutable point storage crosses the admission interface.
        let mut bytes=Vec::with_capacity(512*97);
        for chunk in points.chunks(512) {bytes.clear();for point in chunk {bytes.extend(crate::arithmetic::point_bytes(point));}out.write_all(&bytes)?;}
        self.storage=Storage::Streaming(q.index()+1);Ok(())
    }
    pub(crate) fn finish_transfer(&mut self,receipt:&crate::arithmetic::AdmissionReceipt)->Result<()> {
        ensure!(self.admission_binding.as_deref()==Some(receipt.binding()),"child admission receipt belongs to another session/key");
        ensure!(self.storage==Storage::Streaming(5) && self.key.sigma_w.is_empty() && self.key.sigma_q.is_empty() && self.key.sigma_a.is_empty() && self.key.sigma_r.is_empty(),"incomplete transfer");
        self.storage=Storage::Delegated;Ok(())
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
        ensure!(self.storage==Storage::Local,"local proof has no resident key queries");
        self.prove_with_msm(instances,witnesses,rng,&mut |query,scalars| {
            let masks=self.mask_points();
            let points=if query==Query::Masks {&masks[..]} else {self.local_query(query)?};
            ensure!(scalars.len()<=points.len(),"local MSM query length");
            Ok(G1Projective::msm_unchecked(&points[..scalars.len()],scalars))
        })
    }
    pub fn prove_with_msm(
        &self,
        instances: &[Fr],
        witnesses: &[Fr],
        rng: &mut impl RngCore,
        msm: &mut impl FnMut(Query, &[Fr]) -> Result<G1Projective>,
    ) -> Result<Proof<Bls12_377>> {
        ensure!(!matches!(self.storage,Storage::Streaming(_)),"prover admission incomplete");
        let key = &self.key;
        let vk = &key.verifying_key;
        let d = &vk.domain;
        let m = d.size();
        ensure!(
            instances.len() == vk.raw.index.instance_len
                && instances.first() == Some(&Fr::ONE)
                && witnesses.len() == self.lengths[0],
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
        let t = (msm(Query::Witness, witnesses)?
            + msm(
                Query::Masks,
                &[eta0, eta1],
            )?
            + msm(Query::Quotient, &q)?)
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
        let u = (msm(Query::OpeningA, &opening_a)?
            + msm(Query::OpeningR, &opening_r)?)
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
    pub(super) fn fixture()->PreparedProver {
        let mut rng=StdRng::seed_from_u64(998);let matrix=matrices();
        let key=setup(&matrix,2,5,descriptor(1),&mut rng).unwrap();
        let bytes=encode_key(&key).unwrap();PreparedProver::from_checked(CheckedKey::decode(&bytes).unwrap(),matrix).unwrap()
    }
    #[test] fn admission_requires_checked_immutable_key_and_exact_matrix_association(){
        let mut rng=StdRng::seed_from_u64(999);let matrix=matrices();
        let key=setup(&matrix,2,5,descriptor(1),&mut rng).unwrap();let bytes=encode_key(&key).unwrap();
        let mut local=PreparedProver::new(key,matrix.clone()).unwrap();assert!(local.begin_transfer().is_err());
        let mut changed=matrix;changed[0].swap(0,1);assert!(PreparedProver::from_checked(CheckedKey::decode(&bytes).unwrap(),changed).is_err());
        let mut p=fixture();assert!(p.write_query(Query::Witness,&mut Vec::new()).is_err());
        p.begin_transfer().unwrap();assert!(p.begin_transfer().is_err());assert!(p.write_query(Query::Quotient,&mut Vec::new()).is_err());
        assert!(p.prove(&[Fr::ONE,Fr::from(4)],&[3,9,4,16,1].map(Fr::from),&mut rng).is_err());
        for q in Query::ALL {let mut bytes=Vec::new();p.write_query(q,&mut bytes).unwrap();assert_eq!(bytes.len(),97*p.query_count(q));}
        assert!(p.delegated_binding().is_err());assert!(p.write_query(Query::Witness,&mut Vec::new()).is_err());
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

#[cfg(test)] pub(crate) fn checked_fixture()->PreparedProver {tests::fixture()}
