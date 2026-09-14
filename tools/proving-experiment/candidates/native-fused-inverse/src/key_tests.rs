use commonware_codec::{Encode, RangeCfg, Read};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{
        circuit::{Var, build},
        pari,
    },
};
use commonware_math::algebra::Ring;
use commonware_parallel::{Rayon, Sequential};
use std::num::NonZeroUsize;

#[test]
fn parallel_key_codec_matches_checked_codec_and_rejects_invalid_points() {
    let (c, selected) = build(|ctx| {
        let x = Var::witness(ctx, |_| Scalar::one());
        let b = Var::witness(ctx, |_| Scalar::one());
        b.assert_eq(&x);
        vec![x.clone() * &x, b]
    });
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
    let relation = pari::Relation::compile(&c, &layout).unwrap();
    let (key, _) = pari::setup(&relation, &mut rand::rng(), &Sequential).unwrap();
    let bytes = key.encode();
    let cfg = (RangeCfg::exact(1), RangeCfg::exact(1));
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap()).unwrap();
    let checked = pari::ProvingKey::read_cfg(&mut bytes.as_ref(), &cfg).unwrap();
    let parallel =
        pari::ProvingKey::read_with_strategy(&mut bytes.as_ref(), &cfg, &strategy).unwrap();
    assert_eq!(checked.encode(), bytes);
    assert_eq!(parallel.encode(), bytes);
    for marker in [0xff, 0xc0, 0x80] {
        let mut bad = bytes.to_vec();
        let last = bad.len() - 48;
        bad[last..].fill(0);
        bad[last] = marker;
        // Invalid encoding, identity and the x=0 order-three point respectively.
        assert!(pari::ProvingKey::read_cfg(&mut bad.as_slice(), &cfg).is_err());
        assert!(
            pari::ProvingKey::read_with_strategy(&mut bad.as_slice(), &cfg, &strategy).is_err()
        );
    }
    assert!(
        pari::ProvingKey::read_with_strategy(&mut &bytes[..bytes.len() - 1], &cfg, &strategy)
            .is_err()
    );
}

#[test]
fn checked_key_decoders_reject_seven_eighths_and_invalid_domain_descriptors() {
    let (c, selected) = build(|ctx| {
        let x = Var::witness(ctx, |_| Scalar::one());
        vec![x.clone() * &x, x]
    });
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
    let relation = pari::Relation::compile(&c, &layout).unwrap();
    let (key, _) = pari::setup(&relation, &mut rand::rng(), &Sequential).unwrap();
    let cfg = (RangeCfg::exact(1), RangeCfg::exact(1));
    let strategy = Rayon::new(NonZeroUsize::new(2).unwrap()).unwrap();
    let original = key.encode();
    // Two fixed-size digests precede the fixed-width network-order domain descriptor.
    assert_eq!(&original[64..68], &(relation.domain_size() as u32).to_be_bytes());
    for domain in [0_u32, 1, 7, 229376, 196607, 196609, u32::MAX] {
        let mut bytes = original.to_vec();
        bytes[64..68].copy_from_slice(&domain.to_be_bytes());
        assert!(pari::VerifyingKey::read_cfg(&mut bytes.as_slice(), &cfg).is_err());
        assert!(pari::ProvingKey::read_cfg(&mut bytes.as_slice(), &cfg).is_err());
        assert!(pari::ProvingKey::read_with_strategy(&mut bytes.as_slice(), &cfg, &strategy).is_err());
    }
}
