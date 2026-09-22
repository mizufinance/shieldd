use super::*;
use crate::{
    fixtures,
    proof::{Envelope, Family},
    tree::{self, Tree},
};
use commonware_cryptography::zk::{
    circuit::{build, build_with_values},
    pari,
};
use commonware_parallel::Sequential;

fn digest(p: &Parameters, g: &Generators, w: &Witness) -> Scalar {
    p.native(STATEMENT_DOMAIN, &statement(p, g, w).unwrap().fields())
}
fn satisfied(p: &Parameters, g: &Generators, w: &Witness) -> bool {
    build_with_values(|ctx| constrain(ctx, p, g, w, &digest(p, g, w)))
        .0
        .is_satisfied()
}

#[test]
fn all_branches_compile_to_one_relation_and_bind_current_audit_keys() {
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    let facts = fixtures::load().unwrap();
    let first = fixtures::build(&p, &g, &facts[0]).unwrap();
    let (circuit, indices) = build(|ctx| constrain(ctx, &p, &g, &first, &digest(&p, &g, &first)));
    let layout = pari::InputLayout::new(vec![indices[0]], vec![vec![indices[1]]]).unwrap();
    let relation = pari::Relation::compile(&circuit, &layout).unwrap();
    for fact in &facts {
        let w = fixtures::build(&p, &g, fact).unwrap();
        let (valued, _) = build_with_values(|ctx| constrain(ctx, &p, &g, &w, &digest(&p, &g, &w)));
        assert!(valued.is_satisfied(), "{}", fact.scenario);
        // The source fingerprint binds every constraint and selected input to this relation.
        relation
            .witness(
                &valued,
                &layout,
                vec![pari::Opening::random(&mut rand10::rng())],
            )
            .unwrap();
        assert_eq!(
            statement(&p, &g, &w).unwrap().fields().len(),
            STATEMENT_FIELDS
        );
    }
    for field in 0..3 {
        let mut bad = first.clone();
        let keys = &mut bad.registry.leaf.audit;
        match field {
            0 => keys.epoch += &Scalar::one(),
            1 => keys.payload = crate::group::generator(),
            _ => keys.checking = crate::group::generator(),
        }
        bad.asset_anchor = tree::native_root(
            &p,
            Tree::Asset,
            bad.registry.leaf.commitment(&p),
            facts[0].registry.position,
            &bad.registry.path.siblings,
        );
        assert!(!satisfied(&p, &g, &bad), "audit field {field}");
    }
    let flagged = fixtures::build(&p, &g, &facts[2]).unwrap();
    for field in 0..2 {
        let mut bad = flagged.clone();
        let keys = &mut bad.registry.leaf.audit;
        match field {
            0 => keys.payload = crate::group::generator(),
            _ => keys.checking = crate::group::generator(),
        }
        bad.asset_anchor = tree::native_root(
            &p,
            Tree::Asset,
            bad.registry.leaf.commitment(&p),
            facts[2].registry.position,
            &bad.registry.path.siblings,
        );
        assert_eq!(
            satisfied(&p, &g, &bad),
            false,
            "flagged audit field {field}"
        );
    }
    for mutation in 0..5 {
        let mut bad = first.clone();
        match mutation {
            0 => bad.nonce_root += &Scalar::one(),
            1 => bad.auth.nk += &Scalar::one(),
            2 => bad.spends[0].history_required = true,
            3 => bad.encryption.ownership_randomness[0] += &Scalar::one(),
            _ => bad.encryption.ownership_randomness[1] += &Scalar::one(),
        }
        assert!(
            !satisfied(&p, &g, &bad),
            "cross-component mutation {mutation}"
        );
    }
}

#[test]
fn complete_transfer_proves_and_verifies_with_current_compliance() {
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    let fact = fixtures::load().unwrap().remove(2);
    let w = fixtures::build(&p, &g, &fact).unwrap();
    let (circuit, indices) = build(|ctx| constrain(ctx, &p, &g, &w, &digest(&p, &g, &w)));
    let layout = pari::InputLayout::new(vec![indices[0]], vec![vec![indices[1]]]).unwrap();
    let relation = pari::Relation::compile(&circuit, &layout).unwrap();
    let (pk, vk) = pari::setup(&relation, &mut rand10::rng(), &Sequential).unwrap();
    let proving_key_bytes = pk.encode().len();
    let prover = pk;
    let (valued, _) = build_with_values(|ctx| constrain(ctx, &p, &g, &w, &digest(&p, &g, &w)));
    let proof = Envelope::prove(
        Family::Transfer,
        &prover,
        &relation,
        &layout,
        valued,
        &Sequential,
    )
    .unwrap();
    Envelope::from_bytes(&proof.to_bytes())
        .unwrap()
        .verify(Family::Transfer, &vk, &digest(&p, &g, &w))
        .unwrap();
    assert!(
        proof
            .verify(
                Family::Transfer,
                &vk,
                &(digest(&p, &g, &w) + &Scalar::one())
            )
            .is_err()
    );
    eprintln!(
        "Transfer: domain={}, proving_key_bytes={}, proof_bytes={}",
        relation.domain_size(),
        proving_key_bytes,
        proof.to_bytes().len()
    );
}
