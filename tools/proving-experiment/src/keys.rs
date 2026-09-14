//! Parallel checked point decoding for the pinned B proving-key encoding.
use crate::bridge;
#[path = "subgroup.rs"]
mod subgroup;
use anyhow::{ensure, Result};
use ark_bls12_377::{Bls12_377, G1Affine};
use rayon::prelude::*;
use serde::Serialize;
use sha2::{Digest, Sha256};
use std::{fs, path::Path, time::Instant};
use zkpari::ProvingKey;

fn take<'a>(input: &mut &'a [u8], count: usize) -> Result<&'a [u8]> {
    ensure!(input.len() >= count, "truncated proving key");
    let (value, rest) = input.split_at(count);
    *input = rest;
    Ok(value)
}
fn points(input: &mut &[u8]) -> Result<Vec<G1Affine>> {
    let count = usize::try_from(u64::from_le_bytes(take(input, 8)?.try_into()?))?;
    let length = count
        .checked_mul(48)
        .ok_or_else(|| anyhow::anyhow!("point count overflow"))?;
    let bytes = take(input, length)?;
    // Canonical compressed decoding and deterministic curve/subgroup checks for every point.
    bytes.par_chunks_exact(48).map(subgroup::decode).collect()
}
pub fn decode(bytes: &[u8]) -> Result<ProvingKey<Bls12_377>> {
    let mut input = bytes;
    let key = ProvingKey {
        sigma_w: points(&mut input)?,
        sigma_mask_const: subgroup::decode(take(&mut input, 48)?)?,
        sigma_mask_linear: subgroup::decode(take(&mut input, 48)?)?,
        sigma_q: points(&mut input)?,
        sigma_a: points(&mut input)?,
        sigma_r: points(&mut input)?,
        verifying_key: bridge::decode(input)?,
    };
    ensure!(crate::encode(&key)? == bytes, "noncanonical proving key");
    Ok(key)
}

pub fn profile(path: &Path, out: &Path) -> Result<()> {
    #[derive(Serialize)]
    struct Record {
        schema: &'static str,
        key_sha256: String,
        key_bytes: usize,
        reference_ns: u128,
        parallel_ns: u128,
        canonical_parity: bool,
    }
    ensure!(!out.exists(), "preserve existing key diagnostic");
    let bytes = fs::read(path)?;
    let start = Instant::now();
    let reference: ProvingKey<Bls12_377> = bridge::decode(&bytes)?;
    let reference_ns = start.elapsed().as_nanos();
    ensure!(
        crate::encode(&reference)? == bytes,
        "reference key mismatch"
    );
    drop(reference);
    let start = Instant::now();
    let parallel = decode(&bytes)?;
    let parallel_ns = start.elapsed().as_nanos();
    ensure!(crate::encode(&parallel)? == bytes, "parallel key mismatch");
    let record = Record {
        schema: "shieldd.proving_experiment.key_profile.v1",
        key_sha256: hex::encode(Sha256::digest(&bytes)),
        key_bytes: bytes.len(),
        reference_ns,
        parallel_ns,
        canonical_parity: true,
    };
    fs::write(out, serde_json::to_vec_pretty(&record)?)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use ark_ec::AffineRepr;
    use ark_ff::{AdditiveGroup, Field};
    #[test]
    fn parallel_points_preserve_checked_decoding_and_reject_bad_encodings() {
        let expected = vec![
            G1Affine::generator(),
            G1Affine::zero(),
            -G1Affine::generator(),
        ];
        let bytes = crate::encode(&expected).unwrap();
        assert_eq!(points(&mut bytes.as_slice()).unwrap(), expected);
        assert!(points(&mut bytes[..bytes.len() - 1].as_ref()).is_err());
        assert!(points(&mut u64::MAX.to_le_bytes().as_slice()).is_err());
        let mut bad = bytes.clone();
        bad[8..56].fill(255);
        assert!(points(&mut bad.as_slice()).is_err());
        let mut x = ark_bls12_377::Fq::ZERO;
        let outside = loop {
            if let Some(point) = G1Affine::get_point_from_x_unchecked(x, false) {
                if !point.is_in_correct_subgroup_assuming_on_curve() {
                    break point;
                }
            }
            x += ark_bls12_377::Fq::ONE;
        };
        let bytes = crate::encode(&vec![outside]).unwrap();
        assert!(points(&mut bytes.as_slice()).is_err());
    }
    #[test]
    fn complete_key_codec_checks_all_slices_masks_and_framing() {
        use ark_bls12_377::{Bls12_377,G2Affine,Fr,Fq};
        use ark_poly::{EvaluationDomain,Radix2EvaluationDomain};
        use zkpari::{SuccinctIndex,VerifyingKey};
        let g=G1Affine::generator();let h=G2Affine::generator();
        let vk=VerifyingKey::<Bls12_377>::new(SuccinctIndex{num_constraints:8,instance_len:2,matrix_digest:[0;32]},g,g,g,h,h,h,Radix2EvaluationDomain::<Fr>::new(8).unwrap());
        let key=ProvingKey{sigma_w:vec![g],sigma_mask_const:g,sigma_mask_linear:g,sigma_q:vec![g],sigma_a:vec![g],sigma_r:vec![g],verifying_key:vk};
        let bytes=crate::encode(&key).unwrap();
        assert_eq!(crate::encode(&decode(&bytes).unwrap()).unwrap(),bytes);
        assert!(decode(&bytes[..bytes.len()-1]).is_err());
        let mut trailing=bytes.clone();trailing.push(0);assert!(decode(&trailing).is_err());
        let outside=G1Affine::new_unchecked(Fq::ZERO,Fq::ONE);
        for position in 0..6 {
            let mut bad=key.clone();match position{
                0=>bad.sigma_w[0]=outside,1=>bad.sigma_mask_const=outside,2=>bad.sigma_mask_linear=outside,
                3=>bad.sigma_q[0]=outside,4=>bad.sigma_a[0]=outside,_=>bad.sigma_r[0]=outside,
            }
            assert!(decode(&crate::encode(&bad).unwrap()).is_err(),"unchecked key position {position}");
        }
        let mut wrong_count=bytes;wrong_count[..8].copy_from_slice(&u64::MAX.to_le_bytes());assert!(decode(&wrong_count).is_err());
    }

}
