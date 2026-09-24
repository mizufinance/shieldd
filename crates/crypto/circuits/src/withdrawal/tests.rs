use super::*;
use crate::fixtures;
use commonware_cryptography::zk::circuit::build_with_values;
fn satisfied(p: &Parameters, g: &Generators, w: &Witness) -> bool {
    build_with_values(|ctx| constrain(ctx, p, g, w, &w.statement(g).digest(p)))
        .0
        .is_satisfied()
}
#[test]
fn withdrawal_preserves_volume_encryption_and_exact_conservation() {
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    for scenario in [0, 1, 2, 4, 5] {
        let w = fixtures::withdrawal(&p, &g, scenario).unwrap();
        assert!(satisfied(&p, &g, &w), "scenario {scenario}");
        for mutation in 0..8 {
            let mut bad = w.clone();
            match mutation {
                0 => bad.amount += &Scalar::one(),
                1 => bad.encryption.ciphertext.address[2] += &Scalar::one(),
                2 => bad.encryption.ciphertext.confirmation += &Scalar::one(),
                3 => bad.encryption.randomizer += &Scalar::from_limbs(scalar::ORDER),
                4 => bad.volume.proof_context = 2,
                5 => bad.owner.sender.leaf.rnk_commitment += &Scalar::one(),
                6 => {
                    bad.spends[1].nullifier = note::dummy_nullifier(
                        &p,
                        &bad.optional.seed,
                        &bad.owner.spend_auth.randomizer,
                        note::Padding::Transfer,
                    )
                }
                _ => bad.owner.routing.parameter_set += &Scalar::one(),
            }
            // Unregulated membership does not authenticate an unused RNK commitment.
            if mutation == 5 && !bad.owner.regulated {
                continue;
            }
            assert!(
                !satisfied(&p, &g, &bad),
                "scenario {scenario} mutation {mutation}"
            );
        }
        let digest = w.statement(&g).digest(&p);
        let mut changed = w.clone();
        changed.effect_hash[3] += &Scalar::one();
        assert!(
            !build_with_values(|ctx| constrain(ctx, &p, &g, &changed, &digest))
                .0
                .is_satisfied()
        );
        let issuer = &w.owner.registry.leaf.dk;
        let user = &w.owner.registry.leaf.audit.payload;
        let wrong = if w.owner.regulated && !w.volume.use_real {
            user
        } else {
            issuer
        };
        let mut bad = w.clone();
        bad.encryption = encrypt(
            &p,
            wrong,
            &bad.owner.sender.leaf.address,
            Scalar::from(61),
            Scalar::from(67),
        )
        .unwrap();
        assert!(!satisfied(&p, &g, &bad));
    }
}

#[test]
fn withdrawal_binds_each_effect_hash_limb_and_rejects_overflow() {
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    let mut w = fixtures::withdrawal(&p, &g, 0).unwrap();
    let bytes = [0xff; 64];
    w.effect_hash = std::array::from_fn(|i| {
        let mut encoded = [0; 32];
        encoded[..16].copy_from_slice(&bytes[i * 16..(i + 1) * 16]);
        crate::encoding::field(&shieldd_sdk_crypto::encoding::field(&encoded).unwrap())
    });
    assert!(satisfied(&p, &g, &w));
    let digest = w.statement(&g).digest(&p);
    for i in 0..4 {
        let mut changed = w.clone();
        changed.effect_hash[i] = Scalar::from_limbs([u64::MAX, u64::MAX - 1, 0, 0]);
        assert!(
            !build_with_values(|ctx| constrain(ctx, &p, &g, &changed, &digest))
                .0
                .is_satisfied()
        );
    }
    w.effect_hash[0] = Scalar::from_limbs([0, 0, 1, 0]);
    assert!(!satisfied(&p, &g, &w));
}
