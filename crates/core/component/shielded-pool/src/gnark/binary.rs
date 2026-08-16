use std::io::{Cursor, Read};

use anyhow::{anyhow, Context, Result};
use decaf377::{Fq, Fr};

use crate::gnark::typed::{MerklePathBinary, PointAffineBytes};

pub(crate) const MAX_VEC32_LENGTH: usize = crate::transfer::TRANSFER_STATEMENT_FIELD_COUNT;
pub(crate) const MAX_TRIPLE_PATH_LENGTH: usize = 24;
pub(crate) const MAX_MERKLE_PATH_LAYERS: usize = shieldd_sdk_compliance::DEFAULT_DEPTH as usize;
pub(crate) const MAX_MERKLE_PATH_SIBLINGS: usize = 3;

pub(crate) struct BinaryCursor<'a> {
    inner: Cursor<&'a [u8]>,
}

impl<'a> BinaryCursor<'a> {
    pub(crate) fn new(bytes: &'a [u8]) -> Self {
        Self {
            inner: Cursor::new(bytes),
        }
    }

    pub(crate) fn finish(self, label: &str) -> Result<()> {
        let remaining = self.inner.get_ref().len() - (self.inner.position() as usize);
        anyhow::ensure!(remaining == 0, "{label} has {remaining} trailing bytes");
        Ok(())
    }

    pub(crate) fn read_u8(&mut self) -> Result<u8> {
        let mut out = [0u8; 1];
        self.inner.read_exact(&mut out)?;
        Ok(out[0])
    }

    pub(crate) fn read_bool(&mut self) -> Result<bool> {
        match self.read_u8()? {
            0 => Ok(false),
            1 => Ok(true),
            value => Err(anyhow!("non-canonical boolean byte {value}")),
        }
    }

    pub(crate) fn read_u32(&mut self) -> Result<u32> {
        let mut out = [0u8; 4];
        self.inner.read_exact(&mut out)?;
        Ok(u32::from_le_bytes(out))
    }

    pub(crate) fn read_u64(&mut self) -> Result<u64> {
        let mut out = [0u8; 8];
        self.inner.read_exact(&mut out)?;
        Ok(u64::from_le_bytes(out))
    }

    fn read_raw_fixed<const N: usize>(&mut self) -> Result<[u8; N]> {
        let mut out = [0u8; N];
        self.inner.read_exact(&mut out)?;
        Ok(out)
    }

    /// Reads fixed-width bytes, rejecting non-canonical circuit-field encodings.
    ///
    /// All 32-byte values in the witness ABI are field values. Call
    /// [`Self::read_fr`] for the narrower Decaf377 scalar field.
    pub(crate) fn read_fixed<const N: usize>(&mut self) -> Result<[u8; N]> {
        let out = self.read_raw_fixed::<N>()?;
        if N == 32 {
            let field_bytes: &[u8; 32] = out.as_slice().try_into().expect("N is known to equal 32");
            anyhow::ensure!(
                Fq::from_bytes_checked(field_bytes).is_ok(),
                "non-canonical Fq encoding"
            );
        }
        Ok(out)
    }

    pub(crate) fn read_fr(&mut self) -> Result<[u8; 32]> {
        let out = self.read_raw_fixed::<32>()?;
        anyhow::ensure!(
            Fr::from_bytes_checked(&out).is_ok(),
            "non-canonical Fr encoding"
        );
        Ok(out)
    }

    pub(crate) fn read_u128_field(&mut self) -> Result<[u8; 32]> {
        let out = self.read_fixed::<32>()?;
        anyhow::ensure!(
            out[16..].iter().all(|byte| *byte == 0),
            "field encoding exceeds 128 bits"
        );
        Ok(out)
    }

    pub(crate) fn read_vec_32(&mut self) -> Result<Vec<[u8; 32]>> {
        let len = self.read_u32()? as usize;
        anyhow::ensure!(
            len <= MAX_VEC32_LENGTH,
            "vec32 length {len} exceeds max {MAX_VEC32_LENGTH}"
        );
        (0..len).map(|_| self.read_fixed::<32>()).collect()
    }

    pub(crate) fn read_triple_path_32(&mut self) -> Result<Vec<[[u8; 32]; 3]>> {
        let len = self.read_u32()? as usize;
        anyhow::ensure!(
            len == MAX_TRIPLE_PATH_LENGTH,
            "triple path length {len} must equal {MAX_TRIPLE_PATH_LENGTH}"
        );
        let mut out = Vec::with_capacity(len);
        for _ in 0..len {
            out.push([
                self.read_fixed::<32>()?,
                self.read_fixed::<32>()?,
                self.read_fixed::<32>()?,
            ]);
        }
        Ok(out)
    }

    pub(crate) fn read_merkle_path(&mut self) -> Result<MerklePathBinary> {
        let layers = self.read_u32()? as usize;
        anyhow::ensure!(
            layers == MAX_MERKLE_PATH_LAYERS,
            "merkle path layer count {layers} must equal {MAX_MERKLE_PATH_LAYERS}"
        );
        let mut out = Vec::with_capacity(layers);
        for _ in 0..layers {
            let siblings = self.read_u32()? as usize;
            anyhow::ensure!(
                siblings == MAX_MERKLE_PATH_SIBLINGS,
                "merkle path sibling count {siblings} must equal {MAX_MERKLE_PATH_SIBLINGS}"
            );
            out.push([
                self.read_fixed::<32>()?,
                self.read_fixed::<32>()?,
                self.read_fixed::<32>()?,
            ]);
        }
        Ok(MerklePathBinary { layers: out })
    }

    pub(crate) fn read_point_affine(&mut self) -> Result<PointAffineBytes> {
        Ok(PointAffineBytes {
            x: self.read_fixed::<32>()?,
            y: self.read_fixed::<32>()?,
        })
    }
}

pub(crate) fn put_u8(buf: &mut Vec<u8>, value: u8) {
    buf.push(value);
}

pub(crate) fn put_u32(buf: &mut Vec<u8>, value: u32) {
    buf.extend_from_slice(&value.to_le_bytes());
}

pub(crate) fn put_u64(buf: &mut Vec<u8>, value: u64) {
    buf.extend_from_slice(&value.to_le_bytes());
}

pub(crate) fn put_bytes(buf: &mut Vec<u8>, bytes: &[u8]) {
    buf.extend_from_slice(bytes);
}

pub(crate) fn encode_vec_32(buf: &mut Vec<u8>, values: &[[u8; 32]]) -> Result<()> {
    if values.len() > MAX_VEC32_LENGTH {
        return Err(anyhow!(
            "vec32 length {} exceeds max {MAX_VEC32_LENGTH}",
            values.len()
        ));
    }
    put_u32(
        buf,
        u32::try_from(values.len()).context("vector length exceeds u32")?,
    );
    for value in values {
        put_bytes(buf, value);
    }
    Ok(())
}

pub(crate) fn encode_triple_path_32(buf: &mut Vec<u8>, path: &[[[u8; 32]; 3]]) -> Result<()> {
    if path.len() != MAX_TRIPLE_PATH_LENGTH {
        return Err(anyhow!(
            "triple path length {} must equal {MAX_TRIPLE_PATH_LENGTH}",
            path.len()
        ));
    }
    put_u32(
        buf,
        u32::try_from(path.len()).context("triple path length exceeds u32")?,
    );
    for siblings in path {
        for sibling in siblings {
            put_bytes(buf, sibling);
        }
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn read_bool_accepts_only_canonical_bytes() {
        assert!(!BinaryCursor::new(&[0]).read_bool().expect("decode false"));
        assert!(BinaryCursor::new(&[1]).read_bool().expect("decode true"));

        for value in [2u8, u8::MAX] {
            let err = BinaryCursor::new(&[value])
                .read_bool()
                .expect_err("non-canonical boolean should fail");
            assert!(
                err.to_string().contains("non-canonical boolean"),
                "unexpected error: {err:#}"
            );
        }
    }

    fn modulus_bytes_minus_one<F>(minus_one: F) -> [u8; 32]
    where
        F: FnOnce() -> [u8; 32],
    {
        let mut modulus = minus_one();
        for byte in &mut modulus {
            let (next, carry) = byte.overflowing_add(1);
            *byte = next;
            if !carry {
                break;
            }
        }
        modulus
    }

    fn add_one_le(mut bytes: [u8; 32]) -> [u8; 32] {
        for byte in &mut bytes {
            let (next, carry) = byte.overflowing_add(1);
            *byte = next;
            if !carry {
                break;
            }
        }
        bytes
    }

    #[test]
    fn read_fixed_32_rejects_fq_modulus_aliases() {
        let modulus = modulus_bytes_minus_one(|| (-Fq::from(1u64)).to_bytes());
        let one_plus_modulus = add_one_le(modulus);

        assert_eq!(
            BinaryCursor::new(&Fq::from(1u64).to_bytes())
                .read_fixed::<32>()
                .expect("canonical Fq"),
            Fq::from(1u64).to_bytes()
        );
        for bytes in [modulus, one_plus_modulus] {
            let err = BinaryCursor::new(&bytes)
                .read_fixed::<32>()
                .expect_err("Fq alias should fail");
            assert!(
                err.to_string().contains("non-canonical Fq"),
                "unexpected error: {err:#}"
            );
        }
    }

    #[test]
    fn read_fr_rejects_scalar_modulus_aliases() {
        let modulus = modulus_bytes_minus_one(|| (-Fr::from(1u64)).to_bytes());
        let one_plus_modulus = add_one_le(modulus);

        assert_eq!(
            BinaryCursor::new(&Fr::from(1u64).to_bytes())
                .read_fr()
                .expect("canonical Fr"),
            Fr::from(1u64).to_bytes()
        );
        for bytes in [modulus, one_plus_modulus] {
            let err = BinaryCursor::new(&bytes)
                .read_fr()
                .expect_err("Fr alias should fail");
            assert!(
                err.to_string().contains("non-canonical Fr"),
                "unexpected error: {err:#}"
            );
        }
    }

    #[test]
    fn read_u128_field_rejects_high_bits() {
        let mut max = [0u8; 32];
        max[..16].fill(u8::MAX);
        assert_eq!(
            BinaryCursor::new(&max)
                .read_u128_field()
                .expect("canonical u128 field"),
            max
        );

        let mut oversized = max;
        oversized[16] = 1;
        let err = BinaryCursor::new(&oversized)
            .read_u128_field()
            .expect_err("oversized u128 field should fail");
        assert!(
            err.to_string().contains("exceeds 128 bits"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn read_vec_32_rejects_oversized_length_before_allocation() {
        let bytes = ((MAX_VEC32_LENGTH + 1) as u32).to_le_bytes();
        let err = BinaryCursor::new(&bytes)
            .read_vec_32()
            .expect_err("oversized vec32 should fail");

        assert!(
            err.to_string().contains("vec32 length"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn encode_vec_32_rejects_oversized_length() {
        let values = vec![[0u8; 32]; MAX_VEC32_LENGTH + 1];
        let err = encode_vec_32(&mut Vec::new(), &values).expect_err("oversized vec32 should fail");

        assert!(
            err.to_string().contains("vec32 length"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn read_triple_path_32_rejects_non_exact_length_before_allocation() {
        let bytes = ((MAX_TRIPLE_PATH_LENGTH - 1) as u32).to_le_bytes();
        let err = BinaryCursor::new(&bytes)
            .read_triple_path_32()
            .expect_err("short triple path should fail");

        assert!(
            err.to_string().contains("triple path length"),
            "unexpected error: {err:#}"
        );

        let bytes = ((MAX_TRIPLE_PATH_LENGTH + 1) as u32).to_le_bytes();
        let err = BinaryCursor::new(&bytes)
            .read_triple_path_32()
            .expect_err("oversized triple path should fail");

        assert!(
            err.to_string().contains("triple path length"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn encode_triple_path_32_rejects_non_exact_length() {
        let path = vec![[[0u8; 32]; 3]; MAX_TRIPLE_PATH_LENGTH - 1];
        let err = encode_triple_path_32(&mut Vec::new(), &path)
            .expect_err("short triple path should fail");

        assert!(
            err.to_string().contains("triple path length"),
            "unexpected error: {err:#}"
        );

        let path = vec![[[0u8; 32]; 3]; MAX_TRIPLE_PATH_LENGTH + 1];
        let err = encode_triple_path_32(&mut Vec::new(), &path)
            .expect_err("oversized triple path should fail");

        assert!(
            err.to_string().contains("triple path length"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn read_merkle_path_rejects_non_exact_layer_count_before_allocation() {
        let bytes = ((MAX_MERKLE_PATH_LAYERS - 1) as u32).to_le_bytes();
        let err = BinaryCursor::new(&bytes)
            .read_merkle_path()
            .expect_err("short merkle path should fail");

        assert!(
            err.to_string().contains("merkle path layer count"),
            "unexpected error: {err:#}"
        );

        let bytes = ((MAX_MERKLE_PATH_LAYERS + 1) as u32).to_le_bytes();
        let err = BinaryCursor::new(&bytes)
            .read_merkle_path()
            .expect_err("oversized merkle path should fail");

        assert!(
            err.to_string().contains("merkle path layer count"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn read_merkle_path_rejects_oversized_sibling_count_before_allocation() {
        let mut bytes = Vec::new();
        put_u32(&mut bytes, MAX_MERKLE_PATH_LAYERS as u32);
        put_u32(&mut bytes, (MAX_MERKLE_PATH_SIBLINGS + 1) as u32);
        let err = BinaryCursor::new(&bytes)
            .read_merkle_path()
            .expect_err("oversized merkle sibling count should fail");

        assert!(
            err.to_string().contains("merkle path sibling count"),
            "unexpected error: {err:#}"
        );
    }
}
