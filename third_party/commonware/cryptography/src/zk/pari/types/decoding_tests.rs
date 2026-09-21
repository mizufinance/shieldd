use super::*;
use crate::zk::{
    circuit::{Var, build},
    pari::{InputLayout, Relation, setup},
};
use commonware_math::algebra::CryptoGroup;
use commonware_parallel::Rayon;
use rand::{SeedableRng, rngs::StdRng};
use std::num::NonZeroUsize;

fn fixture() -> ProvingKey {
    let (circuit, selected) = build(|ctx| {
        let x = Var::witness(ctx, |_| Scalar::from(3));
        let square = x.clone() * &x;
        let fourth = square.clone() * &square;
        vec![fourth, x]
    });
    let layout = InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
    let relation = Relation::compile(&circuit, &layout).unwrap();
    setup(&relation, &mut StdRng::seed_from_u64(91), &Sequential)
        .unwrap()
        .0
}

fn decode(bytes: &[u8], strategy: &impl Strategy) -> Result<ProvingKey, commonware_codec::Error> {
    let mut input = bytes;
    let key = ProvingKey::read_cfg_with_strategy(
        &mut input,
        &(RangeCfg::exact(1), RangeCfg::exact(1)),
        strategy,
    )?;
    assert!(input.is_empty());
    Ok(key)
}

fn encode_entries(key: &ProvingKey, entries: &[(u32, G1)]) -> Vec<u8> {
    let mut bytes = Vec::new();
    key.verifying_key.write(&mut bytes);
    key.commitment_keys.write(&mut bytes);
    entries.write(&mut bytes);
    key.sigma_mask_constant.write(&mut bytes);
    key.sigma_mask_linear.write(&mut bytes);
    key.sigma_quotient.write(&mut bytes);
    key.sigma_a.write(&mut bytes);
    key.sigma_r.write(&mut bytes);
    bytes
}

#[test]
fn checked_key_decoding_matches_between_strategies() {
    let key = fixture();
    let encoded = key.encode();
    let parallel = Rayon::new(NonZeroUsize::new(2).unwrap()).unwrap();
    let ordinary = ProvingKey::read_cfg(
        &mut encoded.as_ref(),
        &(RangeCfg::exact(1), RangeCfg::exact(1)),
    )
    .unwrap();
    assert_eq!(ordinary, key);
    for strategy_key in [decode(&encoded, &Sequential), decode(&encoded, &parallel)] {
        let decoded = strategy_key.unwrap();
        assert_eq!(decoded, key);
        assert_eq!(decoded.encode(), encoded);
    }
    for length in [0, 1, encoded.len() / 2, encoded.len() - 1] {
        assert!(decode(&encoded[..length], &Sequential).is_err());
        assert!(decode(&encoded[..length], &parallel).is_err());
    }
    let mut invalid_point = encoded.to_vec();
    let start = invalid_point.len() - G1::SIZE;
    invalid_point[start..].fill(0);
    assert!(decode(&invalid_point, &Sequential).is_err());
    assert!(decode(&invalid_point, &parallel).is_err());
}

#[test]
fn checked_parallel_bases_preserve_point_and_length_validation() {
    let parallel = Rayon::new(NonZeroUsize::new(2).unwrap()).unwrap();
    let bases = vec![G1::generator(); 4096];
    let encoded = bases.encode();
    assert_eq!(
        read_g1s(&mut encoded.as_ref(), bases.len(), &Sequential).unwrap(),
        bases
    );
    assert_eq!(
        read_g1s(&mut encoded.as_ref(), bases.len(), &parallel).unwrap(),
        bases
    );
    assert!(read_g1s(&mut encoded.as_ref(), bases.len() - 1, &parallel).is_err());
    assert!(read_g1s(&mut &encoded[..encoded.len() - 1], bases.len(), &parallel).is_err());
    let mut identity = [0u8; G1::SIZE];
    identity[0] = 0xc0;
    // x=0, y=2 is on the curve but outside the prime-order subgroup.
    let mut torsion = [0u8; G1::SIZE];
    torsion[0] = 0x80;
    for invalid in [[0u8; G1::SIZE], identity, torsion] {
        assert!(G1::read(&mut invalid.as_slice()).is_err());
        let mut changed = encoded.to_vec();
        let start = changed.len() - G1::SIZE;
        changed[start..].copy_from_slice(&invalid);
        assert!(read_g1s(&mut changed.as_slice(), bases.len(), &Sequential).is_err());
        assert!(read_g1s(&mut changed.as_slice(), bases.len(), &parallel).is_err());
    }
}

#[test]
fn checked_key_decoding_rejects_noncanonical_sparse_indices() {
    let key = fixture();
    let parallel = Rayon::new(NonZeroUsize::new(2).unwrap()).unwrap();
    let point = G1::generator();
    assert!(key.sigma_witness.len() >= 2);
    for entries in [
        vec![(0, point), (0, point)],
        vec![(1, point), (0, point)],
        vec![(key.sigma_witness.len() as u32, point)],
    ] {
        let encoded = encode_entries(&key, &entries);
        assert!(decode(&encoded, &Sequential).is_err());
        assert!(decode(&encoded, &parallel).is_err());
    }
}
