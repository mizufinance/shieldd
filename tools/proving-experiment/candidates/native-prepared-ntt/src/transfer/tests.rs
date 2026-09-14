use super::*;
use crate::{
    fixtures,
    tree::{self, Tree},
};
use commonware_cryptography::zk::{
    circuit::{build, build_with_values},
    pari,
};

fn refresh(p: &Parameters, g: &Generators, w: &mut Witness) {
    w.claimed_statement = p.native(STATEMENT_DOMAIN, &statement(p, g, w).unwrap().fields());
}
fn satisfied(p: &Parameters, g: &Generators, w: &Witness) -> bool {
    let (c, _) = build_with_values(|ctx| constrain(ctx, p, g, w));
    c.is_satisfied()
}

#[test]
fn all_six_native_transfers_satisfy_one_complete_relation() {
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    let facts = fixtures::load().unwrap();
    let first = fixtures::build(&p, &g, &facts[0]).unwrap();
    let (c, selected) = build(|ctx| constrain(ctx, &p, &g, &first));
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
    let relation = pari::Relation::compile(&c, &layout).unwrap();
    assert_eq!(relation.public_inputs(), 1);
    assert_eq!(relation.committed_inputs(), 1);
    eprintln!("complete native Transfer domain {}", relation.domain_size());
    for f in facts {
        let w = fixtures::build(&p, &g, &f).unwrap();
        let statement = statement(&p, &g, &w).unwrap();
        assert_eq!(statement.fields().len(), 60);
        let (valued, selected) = build_with_values(|ctx| constrain(ctx, &p, &g, &w));
        assert!(valued.is_satisfied(), "{} unsatisfied", f.scenario);
        assert_eq!(valued[selected[0]], w.claimed_statement);
        assert_eq!(valued[selected[1]], w.balance_blinding);
        // This recompiles and compares every row, layout and digest with the first scenario.
        let converted = relation
            .witness(
                &valued,
                &layout,
                vec![pari::Opening::random(&mut rand::rng())],
            )
            .unwrap();
        assert!(
            relation.check_witness(&converted),
            "converted native relation"
        );
        eprintln!(
            "{}: complete native constraints and identical relation passed",
            f.scenario
        );
    }
    let mut invalid = first;
    invalid.nonce_root += &Scalar::one();
    let (valued, _) = build_with_values(|ctx| constrain(ctx, &p, &g, &invalid));
    let converted = relation
        .witness(
            &valued,
            &layout,
            vec![pari::Opening::random(&mut rand::rng())],
        )
        .unwrap();
    assert!(!relation.check_witness(&converted));
}

#[test]
fn cross_component_mutations_fail_even_with_a_recomputed_statement() {
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    let facts = fixtures::load().unwrap();
    let original = fixtures::build(&p, &g, &facts[0]).unwrap();
    let mut bad = original.clone();
    bad.claimed_statement += &Scalar::one();
    assert!(!satisfied(&p, &g, &bad), "altered statement");
    for mutation in 0..7 {
        let mut bad = original.clone();
        match mutation {
            0 => bad.nonce_root += &Scalar::one(),
            1 => bad.auth.nk += &Scalar::one(),
            2 => bad.optional.is_dummy = true,
            3 => bad.encryption.published.metadata.policy.ring_id += &Scalar::one(),
            4 => bad.spends[0].history_required = true,
            5 => {
                bad.outputs[0].note.amount += &Scalar::one();
                bad.outputs[0].commitment =
                    bad.outputs[0]
                        .note
                        .commitment(&p, &bad.asset, &bad.receiver.leaf.address);
            }
            _ => {
                bad.sender.leaf.lifecycle = Scalar::from(2);
                bad.receiver.leaf.lifecycle = Scalar::from(2);
                bad.compliance_anchor = tree::native_root(
                    &p,
                    Tree::Compliance,
                    bad.sender.leaf.commitment(&p, &bad.asset),
                    0,
                    &bad.sender.path.siblings,
                );
            }
        }
        refresh(&p, &g, &mut bad);
        assert!(
            !satisfied(&p, &g, &bad),
            "cross-component mutation {mutation}"
        );
    }
    for index in [3, 5] {
        let mut bad = fixtures::build(&p, &g, &facts[index]).unwrap();
        bad.registry.leaf.daily_limit -= &Scalar::one();
        bad.asset_anchor = tree::native_root(
            &p,
            Tree::Asset,
            bad.registry.leaf.commitment(&p),
            facts[index].registry.position,
            &bad.registry.path.siblings,
        );
        refresh(&p, &g, &mut bad);
        assert!(!satisfied(&p, &g, &bad), "authenticated reduced limit");
    }
    let mut bad = fixtures::build(&p, &g, &facts[1]).unwrap();
    bad.encryption = encryption::encrypt(
        &p,
        &encryption::Shared {
            flagged: false,
            nonce_root: bad.nonce_root.clone(),
            asset: bad.asset.clone(),
            amount: bad.outputs[0].note.amount.clone(),
            issuer: bad.registry.leaf.dk.clone(),
            sender_ack: bad.sender.leaf.capk.clone(),
            receiver_ack: bad.receiver.leaf.capk.clone(),
            sender: bad.sender.leaf.address.clone(),
            receiver: bad.receiver.leaf.address.clone(),
            policy: bad.encryption.published.metadata.policy.clone(),
        },
        bad.encryption.ephemeral.clone(),
        std::array::from_fn(|i| Scalar::from(i as u64 + 1)),
    )
    .unwrap();
    refresh(&p, &g, &mut bad);
    assert!(
        !satisfied(&p, &g, &bad),
        "unregulated issuer must be the fixed sink, not the authenticated predecessor key"
    );
}
