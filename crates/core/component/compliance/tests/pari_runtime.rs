use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{build_with_values, BoolVar, Var},
};
use shieldd_sdk_circuits::{
    audit, encoding::field, encryption as circuit, group::Point, hash::Parameters,
};
use shieldd_sdk_compliance::{encrypt_transfer, transfer::derive_transfer_salt, AuditKeys};
use shieldd_sdk_crypto::{
    audit::point_fields, encoding, generators::SPEND_AUTH, Fq, Fr, SubgroupPoint,
};
use shieldd_sdk_keys::Address;

fn point(value: &SubgroupPoint) -> Point<Scalar> {
    let [x, y] = point_fields(value);
    Point {
        x: field(&x),
        y: field(&y),
    }
}
fn address(value: &Address) -> circuit::Address<Scalar> {
    circuit::Address {
        diversified: point(value.diversified_generator()),
        transmission: point(value.transmission_point()),
    }
}
fn scalar(value: Fr) -> Scalar {
    field(&encoding::field(&value.to_bytes()).unwrap())
}

#[test]
fn runtime_transfer_ciphertexts_satisfy_pari_for_both_routes_and_sink_keys() {
    let params = Parameters::load().unwrap();
    let sender = &*shieldd_sdk_keys::test_keys::ADDRESS_0;
    let receiver = &*shieldd_sdk_keys::test_keys::ADDRESS_1;
    for regulated in [true, false] {
        for flagged in [false, true] {
            if !regulated && flagged {
                continue;
            }
            let audit = if regulated {
                AuditKeys {
                    epoch: 1,
                    amount: *SPEND_AUTH * Fr::from(101),
                    sender: *SPEND_AUTH * Fr::from(103),
                    receiver: *SPEND_AUTH * Fr::from(107),
                    checking: *SPEND_AUTH * Fr::from(109),
                }
            } else {
                AuditKeys::unregulated()
            };
            let dk = if regulated {
                *SPEND_AUTH * Fr::from(7)
            } else {
                *shieldd_sdk_crypto::audit::UNREGULATED_DETECTION
            };
            let root = Fr::from(59);
            let salts = std::array::from_fn::<_, 5, _>(|i| derive_transfer_salt(root, i as u8));
            let value = shieldd_sdk_asset::Value {
                amount: u128::MAX.into(),
                asset_id: shieldd_sdk_asset::asset::Id(Fq::from(19)),
            };
            let runtime = encrypt_transfer(
                rand_core::OsRng,
                &audit,
                &dk,
                receiver,
                sender,
                value,
                flagged,
                salts[0],
                salts[1],
                salts[3],
            )
            .unwrap();
            let decoded = shieldd_sdk_compliance::TransferComplianceCiphertext::from_bytes(
                &runtime.ciphertext.to_bytes(),
            )
            .unwrap();
            let native = decoded.to_transfer_circuit_public_inputs();
            let policy = circuit::Policy {
                ring_id: Scalar::from(37),
                policy_id: Scalar::from(41),
                resource: Scalar::from(43),
                permission: Scalar::from(47),
                timestamp: Scalar::from(53),
            };
            let published = circuit::Published {
                detection: native.detection_ciphertext.each_ref().map(field),
                sender_core: circuit::Core {
                    epk: point(&native.sender_core_epk),
                    c2: field(&native.sender_core_c2),
                    confirmation: field(&native.sender_core_key_confirmation),
                    ciphertext: field(&native.sender_core_ciphertext[0]),
                },
                output_core: circuit::Core {
                    epk: point(&native.output_core_epk),
                    c2: field(&native.output_core_c2),
                    confirmation: field(&native.output_core_key_confirmation),
                    ciphertext: field(&native.output_core_ciphertext[0]),
                },
                sender_ext: circuit::Extended {
                    epk: point(&native.sender_ext_epk),
                    c2: field(&native.sender_ext_c2),
                    ciphertext: native.sender_ext_ciphertext.each_ref().map(field),
                },
                output_ext: circuit::Extended {
                    epk: point(&native.output_ext_epk),
                    c2: field(&native.output_ext_c2),
                    ciphertext: native.output_ext_ciphertext.each_ref().map(field),
                },
                metadata: circuit::Metadata {
                    policy: policy.clone(),
                    audit_epoch: Scalar::from(audit.epoch),
                    salts: std::array::from_fn(|i| field(&salts[i + 1])),
                },
                ownership: native.ownership.each_ref().map(|ct| audit::Ciphertext {
                    r: point(&ct.r),
                    c: point(&ct.c),
                }),
            };
            let witness = circuit::Witness {
                ephemeral: [
                    runtime.sender.core.r,
                    runtime.sender.ext.r,
                    runtime.output.core.r,
                    runtime.output.ext.r,
                ]
                .map(scalar),
                ownership_randomness: [
                    runtime.sender.checking_randomness,
                    runtime.output.checking_randomness,
                ]
                .map(scalar),
                published,
            };
            let shared = circuit::Shared {
                flagged,
                nonce_root: scalar(root),
                asset: field(&value.asset_id.0),
                amount: field(&Fq::from_raw([u64::MAX, u64::MAX, 0, 0])),
                detection_key: point(&dk),
                audit: audit::Keys {
                    epoch: Scalar::from(audit.epoch),
                    amount: point(&audit.amount),
                    sender: point(&audit.sender),
                    receiver: point(&audit.receiver),
                    checking: point(&audit.checking),
                },
                sender: address(sender),
                receiver: address(receiver),
                policy,
            };
            let satisfied = |witness: &circuit::Witness| {
                let (relation, _) = build_with_values(|ctx| {
                    let v = |x: &Scalar| Var::native(x.clone());
                    let p = |p: &Point<Scalar>| Point {
                        x: v(&p.x),
                        y: v(&p.y),
                    };
                    let a = |a: &circuit::Address<Scalar>| circuit::Address {
                        diversified: p(&a.diversified),
                        transmission: p(&a.transmission),
                    };
                    let inputs = circuit::Shared {
                        flagged: BoolVar::constant(shared.flagged),
                        nonce_root: v(&shared.nonce_root),
                        asset: v(&shared.asset),
                        amount: v(&shared.amount),
                        detection_key: p(&shared.detection_key),
                        audit: shared.audit.witness(ctx),
                        sender: a(&shared.sender),
                        receiver: a(&shared.receiver),
                        policy: circuit::Policy {
                            ring_id: v(&shared.policy.ring_id),
                            policy_id: v(&shared.policy.policy_id),
                            resource: v(&shared.policy.resource),
                            permission: v(&shared.policy.permission),
                            timestamp: v(&shared.policy.timestamp),
                        },
                    };
                    circuit::constrain(ctx, &params, &inputs, witness).fields()
                });
                relation.is_satisfied()
            };
            assert!(
                satisfied(&witness),
                "regulated={regulated}, flagged={flagged}"
            );
            let mut changed = witness.clone();
            changed.published.sender_core.c2 = Scalar::from(0);
            assert!(!satisfied(&changed));
        }
    }
}

#[test]
fn runtime_registry_rnk_and_merkle_roots_match_pari() {
    use shieldd_sdk_circuits::{authorization, compliance, registry, tree};
    use shieldd_sdk_compliance::{AssetPolicy, ComplianceLeaf, IndexedMerkleTree, QuadTree};
    let params = Parameters::load().unwrap();
    let fvk = &*shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY;
    let sender = fvk.payment_address(7u32.into());
    let asset = shieldd_sdk_asset::asset::Id(Fq::from(91));
    let ring_secret = Fr::from(43);
    let ring = *SPEND_AUTH * ring_secret;
    let dh = sender.diversified_generator() * ring_secret;
    let rnk = shieldd_sdk_compliance::derive_regulated_nullifier_key(
        fvk.incoming(),
        &sender,
        asset,
        ring,
        dh,
    )
    .unwrap();
    assert_eq!(
        field(&rnk),
        authorization::regulated_key(
            &params,
            &field(&encoding::field(&fvk.incoming().to_bytes()).unwrap()),
            &address(&sender),
            &field(&asset.0),
            &point(&dh),
            &point(&ring)
        )
    );
    let mut native =
        ComplianceLeaf::registered_from_rnk(sender.clone(), asset, ring, dh, rnk).unwrap();
    native.freeze_generation = u64::MAX;
    let leaf = compliance::Leaf {
        address: address(&sender),
        capk: point(&native.capk),
        rnk_dh: point(&dh),
        rnk_commitment: field(&native.rnk_commitment),
        lifecycle: field(&native.lifecycle_field()),
    };
    assert_eq!(
        field(&native.commit().0),
        leaf.commitment(&params, &field(&asset.0))
    );
    let mut users = QuadTree::new();
    users.update(17, native.commit()).unwrap();
    let siblings: [[Scalar; 3]; 16] = users
        .auth_path(17)
        .unwrap()
        .iter()
        .map(|layer| layer.each_ref().map(|c| field(&c.0)))
        .collect::<Vec<_>>()
        .try_into()
        .unwrap();
    assert_eq!(
        field(&users.root().0),
        tree::native_root(
            &params,
            tree::Tree::Compliance,
            leaf.commitment(&params, &field(&asset.0)),
            17,
            &siblings
        )
    );
    let keys = AuditKeys {
        epoch: u64::MAX,
        amount: *SPEND_AUTH * Fr::from(101),
        sender: *SPEND_AUTH * Fr::from(103),
        receiver: *SPEND_AUTH * Fr::from(107),
        checking: *SPEND_AUTH * Fr::from(109),
    };
    let policy = AssetPolicy::new(
        *SPEND_AUTH * Fr::from(7),
        u128::MAX,
        vec![],
        None,
        "ring".into(),
        ring,
        "policy".into(),
        "read".into(),
        "document".into(),
        keys,
    );
    let mut assets = IndexedMerkleTree::new();
    let inserted = assets.insert(asset.0, &policy).unwrap();
    let n = inserted.indexed_leaf;
    let leaf = registry::Leaf {
        value: field(&n.value),
        next_index: Scalar::from(n.next_index),
        next_value: field(&n.next_value),
        dk: point(&n.params.dk_pub),
        daily_limit: field(&Fq::from_raw([u64::MAX, u64::MAX, 0, 0])),
        route_policy: field(&n.params.route_policy_hash),
        ring: point(&n.ring.ring_pk),
        ring_id: field(&n.ring.ring_id_hash),
        policy_id: field(&n.ring.policy_id_hash),
        permission: field(&n.ring.permission_hash),
        resource: field(&n.ring.resource_hash),
        audit: audit::Keys {
            epoch: Scalar::from(n.ring.audit_keys.epoch),
            amount: point(&n.ring.audit_keys.amount),
            sender: point(&n.ring.audit_keys.sender),
            receiver: point(&n.ring.audit_keys.receiver),
            checking: point(&n.ring.audit_keys.checking),
        },
    };
    assert_eq!(field(&n.commit().0), leaf.commitment(&params));
    let siblings: [[Scalar; 3]; 16] = assets
        .auth_path(inserted.position)
        .unwrap()
        .iter()
        .map(|layer| layer.each_ref().map(|c| field(&c.0)))
        .collect::<Vec<_>>()
        .try_into()
        .unwrap();
    assert_eq!(
        field(&assets.root().0),
        tree::native_root(
            &params,
            tree::Tree::Asset,
            leaf.commitment(&params),
            inserted.position,
            &siblings
        )
    );
}
