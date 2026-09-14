//! Checked nonidentity G1 query-point codecs; no full proving-key format change.
#![forbid(unsafe_code)]
use anyhow::{Result, ensure};
use blst::min_pk::{AggregatePublicKey, PublicKey};
use commonware_codec::{Encode, ReadExt};
use commonware_cryptography::bls12381::primitives::group::G1;

pub fn compressed(bytes: &[u8]) -> Result<G1> {
    ensure!(bytes.len() == 48, "wrong compressed length");
    let mut input = bytes;
    let point = G1::read(&mut input)?;
    ensure!(input.is_empty() && point.encode().as_ref() == bytes, "noncanonical compressed point");
    Ok(point)
}

pub fn prepare(bytes: &[u8]) -> Result<[u8; 96]> {
    let _ = compressed(bytes)?;
    let point = PublicKey::deserialize(bytes).map_err(|e| anyhow::anyhow!("decode: {e:?}"))?;
    point.validate().map_err(|e| anyhow::anyhow!("validate: {e:?}"))?;
    Ok(point.serialize())
}

pub fn prepared(bytes: &[u8]) -> Result<AggregatePublicKey> {
    ensure!(bytes.len() == 96, "wrong prepared length");
    let point = PublicKey::deserialize(bytes).map_err(|e| anyhow::anyhow!("decode: {e:?}"))?;
    ensure!(point.serialize().as_slice() == bytes, "noncanonical prepared point");
    point.validate().map_err(|e| anyhow::anyhow!("validate: {e:?}"))?;
    Ok(AggregatePublicKey::from_public_key(&point))
}

#[cfg(test)]
mod tests {
    use super::*;
    use blst::min_pk::SecretKey;
    #[test]
    fn same_checked_points_and_projective_output_size() {
        assert_eq!(std::mem::size_of::<G1>(), std::mem::size_of::<AggregatePublicKey>());
        for seed in 1..=8 {
            let pk = SecretKey::key_gen(&[seed; 32], &[]).unwrap().sk_to_pk();
            let compact = pk.compress();
            let expanded = prepare(&compact).unwrap();
            assert_eq!(compressed(&compact).unwrap().encode().as_ref(), compact);
            assert_eq!(prepared(&expanded).unwrap().to_public_key().compress(), compact);
            for n in [0, 1, 47] { assert!(compressed(&compact[..n]).is_err()); }
            for n in [0, 1, 48, 95] { assert!(prepared(&expanded[..n]).is_err()); }
            assert!(compressed(&[compact.as_slice(), &[0]].concat()).is_err());
            assert!(prepared(&[expanded.as_slice(), &[0]].concat()).is_err());
            assert!(compressed(&expanded).is_err());
            assert!(prepared(&compact).is_err());
            for flag in [0x20, 0x40, 0x80] {
                let mut bad = expanded; bad[0] |= flag;
                assert!(prepared(&bad).is_err());
            }
            let mut outside_field = expanded;
            outside_field[..48].fill(0xff); outside_field[0] = 0x1f;
            assert!(prepared(&outside_field).is_err());
        }
    }
    #[test]
    fn identity_off_curve_and_on_curve_torsion_reject() {
        let mut infinity48 = [0; 48]; infinity48[0] = 0xc0;
        let mut infinity96 = [0; 96]; infinity96[0] = 0x40;
        assert!(compressed(&infinity48).is_err());
        assert!(prepared(&infinity96).is_err());
        let mut off_curve = [0; 96]; off_curve[95] = 3;
        assert!(PublicKey::deserialize(&off_curve).is_err());
        assert!(prepared(&off_curve).is_err());
        let mut torsion = [0; 96]; torsion[95] = 2;
        assert!(matches!(PublicKey::deserialize(&torsion), Err(blst::BLST_ERROR::BLST_POINT_NOT_IN_GROUP)));
        assert!(prepared(&torsion).is_err());
        let mut torsion48 = [0; 48]; torsion48[0] = 0x80;
        assert!(compressed(&torsion48).is_err());
        let on_curve = (1u8..=64).find_map(|x| {
            let mut bytes = [0; 48]; bytes[0] = 0x80; bytes[47] = x;
            PublicKey::deserialize(&bytes).ok().filter(|p| p.validate().is_err())
        }).expect("on-curve non-subgroup point with nonzero x");
        let expanded = on_curve.serialize();
        assert!(PublicKey::deserialize(&expanded).unwrap().validate().is_err());
        assert!(prepared(&expanded).is_err());
        assert!(compressed(&on_curve.compress()).is_err());
    }
}
