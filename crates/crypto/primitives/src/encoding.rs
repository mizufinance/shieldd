use anyhow::{ensure, Result};
use group::{Group, GroupEncoding};
use jubjub::{Fq, Fr, SubgroupPoint};

pub fn field(bytes: &[u8; 32]) -> Result<Fq> {
    Option::from(Fq::from_bytes(bytes)).ok_or_else(|| anyhow::anyhow!("noncanonical field element"))
}

/// Injectively embeds a Jubjub scalar into its larger base field.
pub fn embed_scalar(value: &Fr) -> Fq {
    Fq::from_bytes(&value.to_bytes()).unwrap()
}

/// Reduces a canonical base-field integer modulo the Jubjub subgroup order.
pub fn reduce_scalar(field: &Fq) -> Fr {
    let mut wide = [0; 64];
    wide[..32].copy_from_slice(&field.to_bytes());
    Fr::from_bytes_wide(&wide)
}

pub fn scalar(bytes: &[u8; 32]) -> Result<Fr> {
    Option::from(Fr::from_bytes(bytes)).ok_or_else(|| anyhow::anyhow!("noncanonical Jubjub scalar"))
}

pub fn point(bytes: &[u8; 32]) -> Result<SubgroupPoint> {
    let point: SubgroupPoint = Option::from(SubgroupPoint::from_bytes(bytes))
        .ok_or_else(|| anyhow::anyhow!("invalid Jubjub subgroup point"))?;
    ensure!(point.to_bytes() == *bytes, "noncanonical Jubjub point");
    Ok(point)
}

pub fn nonidentity(bytes: &[u8; 32]) -> Result<SubgroupPoint> {
    let point = point(bytes)?;
    ensure!(!bool::from(point.is_identity()), "identity Jubjub key");
    Ok(point)
}

/// Injectively packs bytes into little-endian field limbs; callers bind the length.
pub fn pack(bytes: &[u8]) -> Vec<Fq> {
    bytes
        .chunks(31)
        .map(|chunk| {
            let mut encoded = [0; 32];
            encoded[..chunk.len()].copy_from_slice(chunk);
            Fq::from_bytes(&encoded).unwrap()
        })
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn canonical_points_and_contextual_identity() {
        let generator = SubgroupPoint::generator();
        assert_eq!(nonidentity(&generator.to_bytes()).unwrap(), generator);
        let identity = SubgroupPoint::identity();
        assert_eq!(point(&identity.to_bytes()).unwrap(), identity);
        assert!(nonidentity(&identity.to_bytes()).is_err());
        assert!(point(&[255; 32]).is_err());
        let torsion = jubjub::AffinePoint::from_raw_unchecked(Fq::from(0), -Fq::from(1));
        assert!(point(&torsion.to_bytes()).is_err());
        assert!(field(&[255; 32]).is_err());
        assert!(scalar(&[255; 32]).is_err());
    }

    #[test]
    fn limbs_do_not_reduce_or_truncate() {
        let input = [255; 63];
        let words = pack(&input);
        assert_eq!(words.len(), 3);
        assert_eq!(&words[0].to_bytes()[..31], &input[..31]);
        assert_eq!(&words[1].to_bytes()[..31], &input[31..62]);
        assert_eq!(words[2], Fq::from(255));
    }
}
