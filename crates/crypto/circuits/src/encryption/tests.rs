use super::*;
use commonware_cryptography::{
    transcript::{Transcript, Version},
    zk::{
        circuit::{build, build_with_values},
        pari,
    },
};
use commonware_math::algebra::Ring;
use commonware_parallel::Sequential;

fn fixture(params: &Parameters, flagged: bool) -> (Shared<Scalar, bool>, Witness) {
    let point = |n| group::generator().multiply(&Scalar::from(n));
    let shared = Shared {
        flagged,
        nonce_root: Scalar::from(59),
        asset: Scalar::from(19),
        amount: Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]),
        detection_key: point(7),
        audit: audit::Keys {
            epoch: Scalar::from(1),
            payload: point(101),
            checking: point(109),
        },
        sender: Address {
            diversified: point(17),
            transmission: point(23),
        },
        receiver: Address {
            diversified: point(29),
            transmission: point(31),
        },
        policy: Policy {
            ring_id: Scalar::from(37),
            policy_id: Scalar::from(41),
            resource: Scalar::from(43),
            permission: Scalar::from(47),
            timestamp: Scalar::from(53),
        },
    };
    let witness = encrypt(
        params,
        &shared,
        [61, 67, 71, 73].map(Scalar::from),
        [79, 83, 89, 97].map(Scalar::from),
        [113, 127].map(Scalar::from),
    )
    .unwrap();
    (shared, witness)
}

fn build_case<'a>(
    ctx: Context<'a, Scalar>,
    params: &Parameters,
    shared: &Shared<Scalar, bool>,
    witness: &Witness,
) -> Vec<Var<'a, Scalar>> {
    let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
    let point = |p: &Point<Scalar>| {
        let result = group::witness_subgroup(ctx, p, &p.cofactor_preimage());
        result.assert_non_identity();
        result
    };
    let address = |a: &Address<Scalar>| Address {
        diversified: point(&a.diversified),
        transmission: point(&a.transmission),
    };
    let s = Shared {
        flagged: BoolVar::witness(ctx, |_| shared.flagged),
        nonce_root: var(&shared.nonce_root),
        asset: var(&shared.asset),
        amount: var(&shared.amount),
        detection_key: point(&shared.detection_key),
        audit: shared.audit.witness(ctx),
        sender: address(&shared.sender),
        receiver: address(&shared.receiver),
        policy: Policy {
            ring_id: var(&shared.policy.ring_id),
            policy_id: var(&shared.policy.policy_id),
            resource: var(&shared.policy.resource),
            permission: var(&shared.policy.permission),
            timestamp: var(&shared.policy.timestamp),
        },
    };
    let output = constrain(ctx, params, &s, witness);
    let statement = params.circuit(255, &output.fields());
    // This component commits a ciphertext C2 that is bound by the encryption relation.
    vec![statement, output.sender_core.c2]
}

fn satisfied(params: &Parameters, shared: &Shared<Scalar, bool>, w: &Witness) -> bool {
    let (c, _) = build_with_values(|ctx| build_case(ctx, params, shared, w));
    c.is_satisfied()
}

fn fields_mut(p: &mut Published<Scalar>) -> Vec<&mut Scalar> {
    let mut fields: Vec<_> = p.detection.iter_mut().collect();
    for tier in [&mut p.sender_core, &mut p.output_core] {
        fields.extend([
            &mut tier.epk.x,
            &mut tier.epk.y,
            &mut tier.c2,
            &mut tier.confirmation,
            &mut tier.ciphertext,
        ]);
    }
    for tier in [&mut p.sender_ext, &mut p.output_ext] {
        fields.extend([&mut tier.epk.x, &mut tier.epk.y, &mut tier.c2]);
        fields.extend(tier.ciphertext.iter_mut());
    }
    let policy = &mut p.metadata.policy;
    fields.extend([
        &mut policy.ring_id,
        &mut policy.policy_id,
        &mut policy.resource,
        &mut policy.permission,
        &mut policy.timestamp,
    ]);
    fields.extend(p.metadata.salts.iter_mut());
    fields.push(&mut p.metadata.audit_epoch);
    for ct in &mut p.ownership {
        fields.extend([&mut ct.r.x, &mut ct.r.y, &mut ct.c.x, &mut ct.c.y]);
    }
    fields
}

#[test]
fn all_tiers_decrypt_for_the_selected_party_and_detection_always_for_issuer() {
    let params = Parameters::load().unwrap();
    for flagged in [false, true] {
        let (shared, w) = fixture(&params, flagged);
        assert!(satisfied(&params, &shared, &w));
        let issuer_secret = w.published.sender_core.epk.multiply(&Scalar::from(7));
        let seed = params.native(
            DETECTION,
            &[
                issuer_secret.x,
                issuer_secret.y,
                w.published.sender_core.epk.x.clone(),
                w.published.sender_core.epk.y.clone(),
            ],
        );
        let plaintext: [Scalar; 4] = std::array::from_fn(|i| {
            w.published.detection[i].clone() - &native_stream(&params, &seed, i)
        });
        assert_eq!(
            plaintext,
            [
                shared.asset.clone(),
                params.native(SALT, &[shared.nonce_root.clone(), Scalar::zero()]),
                Scalar::from(u64::from(flagged)),
                Scalar::zero()
            ]
        );
        for tier in [&w.published.sender_core, &w.published.output_core] {
            let key = if flagged { 7 } else { 101 };
            let shared_secret = tier.epk.multiply(&Scalar::from(key));
            let seed = tier.c2.clone() - &native_secret(&params, &shared_secret);
            assert_eq!(
                tier.ciphertext.clone() - &native_stream(&params, &seed, 0),
                shared.amount
            );
            let wrong_key = if flagged { 101 } else { 7 };
            let wrong_seed = tier.c2.clone()
                - &native_secret(&params, &tier.epk.multiply(&Scalar::from(wrong_key)));
            assert_ne!(
                tier.ciphertext.clone() - &native_stream(&params, &wrong_seed, 0),
                shared.amount
            );
        }
        for (tier, audit_key, address) in [
            (&w.published.sender_ext, 101, &shared.receiver),
            (&w.published.output_ext, 101, &shared.sender),
        ] {
            let key = if flagged { 7 } else { audit_key };
            let seed =
                tier.c2.clone() - &native_secret(&params, &tier.epk.multiply(&Scalar::from(key)));
            let words: [Scalar; 3] = std::array::from_fn(|i| {
                tier.ciphertext[i].clone() - &native_stream(&params, &seed, i)
            });
            assert_eq!(words, native_address(address));
        }
    }
}

#[test]
fn every_published_field_nonce_and_ephemeral_is_constrained_in_both_branches() {
    let params = Parameters::load().unwrap();
    for flagged in [false, true] {
        let (shared, w) = fixture(&params, flagged);
        assert_eq!(w.published.fields().len(), 44);
        for i in 0..44 {
            let mut bad = w.clone();
            *fields_mut(&mut bad.published)[i] += &Scalar::one();
            assert!(
                !satisfied(&params, &shared, &bad),
                "field {i}, flagged={flagged}"
            );
        }
        let mut bad = shared.clone();
        bad.nonce_root += &Scalar::one();
        assert!(!satisfied(&params, &bad, &w));
        for i in 0..4 {
            for scalar in [
                Scalar::zero(),
                Scalar::from_limbs(scalar::ORDER),
                w.ephemeral[i].clone() + &Scalar::from_limbs(scalar::ORDER),
                w.ephemeral[i].clone() + &Scalar::one(),
            ] {
                let mut bad = w.clone();
                bad.ephemeral[i] = scalar;
                assert!(
                    !satisfied(&params, &shared, &bad),
                    "ephemeral {i}, flagged={flagged}"
                );
            }
        }
    }
}

#[test]
fn ciphertexts_bind_amount_asset_flag_and_ordered_addresses() {
    let params = Parameters::load().unwrap();
    for flagged in [false, true] {
        let (shared, w) = fixture(&params, flagged);
        let mut bad = shared.clone();
        bad.flagged = !flagged;
        assert!(!satisfied(&params, &bad, &w));
        let mut bad = shared.clone();
        bad.amount += &Scalar::one();
        assert!(!satisfied(&params, &bad, &w));
        let mut bad = shared.clone();
        bad.asset += &Scalar::one();
        assert!(!satisfied(&params, &bad, &w));
        let mut bad = shared.clone();
        std::mem::swap(&mut bad.sender, &mut bad.receiver);
        assert!(!satisfied(&params, &bad, &w));
        let mut bad = shared.clone();
        bad.receiver.transmission.x = -bad.receiver.transmission.x;
        assert!(!satisfied(&params, &bad, &w));
        let mut bad = shared.clone();
        bad.detection_key = group::generator().multiply(&Scalar::from(101));
        assert!(!satisfied(&params, &bad, &w));
        if !flagged {
            let mut bad = shared.clone();
            std::mem::swap(&mut bad.audit.payload, &mut bad.audit.checking);
            assert!(!satisfied(&params, &bad, &w));
        }
    }
}

#[test]
fn native_pari_proves_all_four_tiers_and_binds_claim_and_commitment() {
    let params = Parameters::load().unwrap();
    let (shared, witness) = fixture(&params, true);
    let (circuit, selected) = build(|ctx| build_case(ctx, &params, &shared, &witness));
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
    let relation = pari::Relation::compile(&circuit, &layout).unwrap();
    let mut rng = rand10::rng();
    let (pk, vk) = pari::setup(&relation, &mut rng, &Sequential).unwrap();
    let (valued, _) = build_with_values(|ctx| build_case(ctx, &params, &shared, &witness));
    let w = relation
        .witness(&valued, &layout, vec![pari::Opening::random(&mut rng)])
        .unwrap();
    let claim = w.claim(pk.commitment_keys(), &Sequential).unwrap();
    assert_eq!(
        claim.public_inputs,
        vec![params.native(255, &witness.published.fields())]
    );
    let transcript =
        || Transcript::new(b"shieldd-jubjub-pari-v1/encryption-component", Version::V1);
    let proof = pari::prove(
        &mut rng,
        &mut transcript(),
        &pk,
        &relation,
        &claim,
        &w,
        &Sequential,
    )
    .unwrap();
    assert!(pari::verify(&mut transcript(), &vk, &claim, &proof));
    let mut bad_claim = claim.clone();
    bad_claim.public_inputs[0] += &Scalar::one();
    assert!(!pari::verify(&mut transcript(), &vk, &bad_claim, &proof));
    let other_witness = relation
        .witness(&valued, &layout, vec![pari::Opening::random(&mut rng)])
        .unwrap();
    let other_claim = other_witness
        .claim(pk.commitment_keys(), &Sequential)
        .unwrap();
    assert!(!pari::verify(&mut transcript(), &vk, &other_claim, &proof));
    let mut invalid = witness.clone();
    invalid.published.detection[3] += &Scalar::one();
    let (invalid, _) = build_with_values(|ctx| build_case(ctx, &params, &shared, &invalid));
    let w = relation
        .witness(&invalid, &layout, vec![pari::Opening::random(&mut rng)])
        .unwrap();
    let claim = w.claim(pk.commitment_keys(), &Sequential).unwrap();
    assert!(matches!(
        pari::prove(
            &mut rng,
            &mut transcript(),
            &pk,
            &relation,
            &claim,
            &w,
            &Sequential
        ),
        Err(pari::Error::Unsatisfied)
    ));
}

#[test]
fn flagged_tiers_use_issuer_dk_and_ordinary_tiers_use_shared_payload_with_independent_openings() {
    let params = Parameters::load().unwrap();
    for flagged in [false, true] {
        let (shared, w) = fixture(&params, flagged);
        let tiers = [
            (&w.published.sender_core.epk, &w.published.sender_core.c2),
            (&w.published.sender_ext.epk, &w.published.sender_ext.c2),
            (&w.published.output_core.epk, &w.published.output_core.c2),
            (&w.published.output_ext.epk, &w.published.output_ext.c2),
        ];
        for (index, (epk, c2)) in tiers.into_iter().enumerate() {
            let secret = if flagged { 7 } else { 101 };
            let shared_point = epk.multiply(&Scalar::from(secret));
            let expected_seed = Scalar::from([79, 83, 89, 97][index]);
            for (other, (other_epk, _)) in tiers.iter().enumerate() {
                if other != index {
                    assert_ne!(epk, *other_epk);
                    assert_ne!(
                        c2.clone()
                            - &native_secret(&params, &other_epk.multiply(&Scalar::from(secret))),
                        expected_seed
                    );
                }
            }

            assert_eq!(
                c2.clone() - &native_secret(&params, &shared_point),
                expected_seed
            );
        }
        assert!(satisfied(&params, &shared, &w));
    }
}
