use super::*;
use crate::{
    fixtures,
    proof::{Envelope, Family},
    scalar,
};
use commonware_cryptography::zk::{
    circuit::{build, build_with_values},
    pari::{self, InputLayout, Relation},
};
use commonware_math::algebra::Ring;
use commonware_parallel::Sequential;
fn satisfied(p: &Parameters, g: &Generators, w: &Witness) -> bool {
    build_with_values(|ctx| constrain(ctx, p, g, w, &w.statement(g).digest(p)))
        .0
        .is_satisfied()
}
#[test]
fn both_shapes_conserve_and_authenticate_with_canonical_padding() {
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    for regulated in [false, true] {
        for count in [None, Some(2), Some(8)] {
            let w = fixtures::reshape(&p, &g, regulated, count).unwrap();
            assert!(satisfied(&p, &g, &w));
            for mutation in 0..6 {
                let mut bad = w.clone();
                match mutation {
                    0 => bad.owner.anchor += &Scalar::one(),
                    1 => bad.owner.auth.nk += &Scalar::one(),
                    2 => bad.owner.asset_anchor += &Scalar::one(),
                    3 => bad.owner.routing.tag += &Scalar::one(),
                    4 => bad.owner.balance_blinding += &Scalar::from_limbs(scalar::ORDER),
                    _ => match &mut bad.notes {
                        Notes::Split { outputs, .. } => outputs[0].note.amount += &Scalar::one(),
                        Notes::Merge { output, .. } => output.note.amount += &Scalar::one(),
                    },
                }
                assert!(
                    !satisfied(&p, &g, &bad),
                    "regulated={regulated} count={count:?} mutation={mutation}"
                );
            }
        }
    }
    let w = fixtures::reshape(&p, &g, true, Some(2)).unwrap();
    for mutation in 0..4 {
        let mut bad = w.clone();
        if let Notes::Merge { inputs, .. } = &mut bad.notes {
            match mutation {
                0 => inputs.swap(1, 2),
                1 => inputs[1].padding.is_dummy = true,
                2 => inputs[2].spend.note.amount = Scalar::one(),
                _ => {
                    inputs[2].spend.nullifier = note::dummy_nullifier(
                        &p,
                        &inputs[2].padding.seed,
                        &inputs[2].spend.randomizer,
                        note::Padding::Reshape(3),
                    )
                }
            }
        }
        assert!(!satisfied(&p, &g, &bad));
    }
    // A freshly committed recovery capsule cannot hide a conservation mismatch.
    let mut bad = w;
    if let Notes::Merge { output, .. } = &mut bad.notes {
        *output = fixtures::self_output(&p, &bad.owner, 21, 101);
    }
    assert!(!satisfied(&p, &g, &bad));
}
#[test]
fn split_and_merge_prove_with_distinct_fixed_relations() {
    let p = Parameters::load().unwrap();
    let g = Generators::derive(&p);
    for (count, family) in [
        (None, Family::ReshapeOneToEight),
        (Some(2), Family::ReshapeEightToOne),
    ] {
        let w = fixtures::reshape(&p, &g, true, count).unwrap();
        let digest = w.statement(&g).digest(&p);
        let (c, selected) = build(|ctx| constrain(ctx, &p, &g, &w, &digest));
        let layout = InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
        let relation = Relation::compile(&c, &layout).unwrap();
        let (pk, vk) = pari::setup(&relation, &mut rand10::rng(), &Sequential).unwrap();
        let prepared = pari::PreparedProver::new(pk, &relation).unwrap();
        let (values, _) = build_with_values(|ctx| constrain(ctx, &p, &g, &w, &digest));
        let proof =
            Envelope::prove(family, &prepared, &relation, &layout, values, &Sequential).unwrap();
        proof.verify(family, &vk, &digest).unwrap();
        assert!(
            proof
                .verify(family, &vk, &(digest + &Scalar::one()))
                .is_err()
        );
    }
}
