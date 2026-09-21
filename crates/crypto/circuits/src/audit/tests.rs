use super::*;
use commonware_codec::Read;
use commonware_cryptography::{
    bls12381::primitives::group::ScalarReadCfg, zk::circuit::build_with_values,
};
use commonware_math::algebra::Ring;
use shieldd_sdk_crypto::{Fr, audit as native, generators::SPEND_AUTH};

fn field(value: shieldd_sdk_crypto::Fq) -> Scalar {
    let mut bytes = value.to_bytes();
    bytes.reverse();
    Scalar::read_cfg(&mut bytes.as_slice(), &ScalarReadCfg::AllowZero).unwrap()
}

fn keys() -> native::AuditKeys {
    let point = |n| *SPEND_AUTH * Fr::from(n);
    native::AuditKeys {
        epoch: 17,
        amount: point(19),
        sender: point(23),
        receiver: point(29),
        checking: point(31),
    }
}

#[test]
fn commitments_and_registration_rules_match_runtime() {
    let p = Parameters::load().unwrap();
    let original = keys();
    for mutation in 0..7 {
        let mut native = original.clone();
        match mutation {
            1 => native.epoch = 0,
            2 => native.sender = native.amount,
            3 => native.receiver = native.sender,
            4 => native.checking = native.receiver,
            5 => native.amount = *native::UNREGULATED_RING,
            6 => native = native::AuditKeys::unregulated(),
            _ => (),
        }
        let keys = Keys::from_native(&native);
        assert_eq!(
            p.native(domains::AUDIT_KEYS, &keys.fields()),
            field(native.commitment())
        );
        for regulated in [false, true] {
            let (c, _) = build_with_values(|ctx| {
                let keys = keys.witness(ctx);
                keys.constrain_registered(ctx, &BoolVar::witness(ctx, |_| regulated));
                Vec::new()
            });
            assert_eq!(
                c.is_satisfied(),
                !regulated || native.validate_registered().is_ok(),
                "mutation {mutation}, regulated {regulated}"
            );
        }
    }
}

#[test]
fn ownership_runtime_circuit_and_encodings_agree() {
    let p = Parameters::load().unwrap();
    let point = |n| *SPEND_AUTH * Fr::from(n);
    let address = Address {
        diversified: group::native_point(&point(3)),
        transmission: group::native_point(&point(5)),
    };
    let native_address = native::AddressPoints::new(point(3), point(5)).unwrap();
    let fingerprint = native_address.fingerprint();
    assert_eq!(
        group::native_point(&fingerprint),
        super::fingerprint(&p, &address)
    );
    for checking in [keys().checking, -fingerprint] {
        let native =
            native::OwnershipCiphertext::encrypt(&native_address, checking, Fr::from(1)).unwrap();
        let key = group::native_point(&checking);
        let witness = encrypt(&p, &address, &key, Scalar::one()).unwrap();
        assert_eq!(witness.published.r, group::native_point(&native.r));
        assert_eq!(witness.published.c, group::native_point(&native.c));
        let mut encoded = vec![shieldd_sdk_crypto::SUITE];
        encoded.extend(crate::encoding::point_bytes(&witness.published.r));
        encoded.extend(crate::encoding::point_bytes(&witness.published.c));
        assert_eq!(encoded, native.to_bytes());
        for mutation in 0..6 {
            let mut witness = witness.clone();
            match mutation {
                1 => witness.randomness = Scalar::zero(),
                2 => witness.randomness += &Scalar::from_limbs(scalar::ORDER),
                3 => witness.published.r = Point::identity(),
                4 => witness.published.c.x += &Scalar::one(),
                5 => witness.published.c.y += &Scalar::one(),
                _ => (),
            }
            let (c, _) = build_with_values(|ctx| {
                let point =
                    |p: &Point<Scalar>| group::witness_subgroup(ctx, p, &p.cofactor_preimage());
                let a = Address {
                    diversified: point(&address.diversified),
                    transmission: point(&address.transmission),
                };
                constrain(ctx, &p, &a, &point(&key), &witness);
                Vec::new()
            });
            assert_eq!(
                c.is_satisfied(),
                mutation == 0,
                "ownership mutation {mutation}"
            );
        }
    }
}
