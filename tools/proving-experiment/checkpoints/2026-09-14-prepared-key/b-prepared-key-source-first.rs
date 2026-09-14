//! Checked import of the frozen compressed development key, used only by prepare-key.
use crate::{encode, protocol::{ProvingKey,RawVk,VerifyingKey}};
use anyhow::{ensure,Result};
use ark_bls12_377::G1Affine;
use ark_serialize::CanonicalDeserialize;
use rayon::prelude::*;
fn encode_key(key: &ProvingKey) -> Result<Vec<u8>> {
    let mut out = b"SHBSDK01".to_vec();
    out.extend(encode(&key.verifying_key.raw)?);
    out.extend(encode(&key.sigma_w)?);
    out.extend(encode(&key.sigma_mask_const)?);
    out.extend(encode(&key.sigma_mask_linear)?);
    for points in [&key.sigma_q, &key.sigma_a, &key.sigma_r] {
        out.extend(encode(points)?);
    }
    Ok(out)
}
pub(crate) fn decode_key(bytes: &[u8]) -> Result<ProvingKey> {
    ensure!(
        bytes.starts_with(b"SHBSDK01"),
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
            n.checked_mul(48)
                .ok_or_else(|| anyhow::anyhow!("point size overflow"))?,
        )?
        .par_chunks_exact(48)
        .map(crate::subgroup::decode)
        .collect()
    }
    let sigma_w = points(&mut input, 1 << 20)?;
    let sigma_mask_const = crate::subgroup::decode(take(&mut input, 48)?)?;
    let sigma_mask_linear = crate::subgroup::decode(take(&mut input, 48)?)?;
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
