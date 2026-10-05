use super::*;
use crate::{group::Point, recovery};
use commonware_cryptography::zk::circuit::build_with_values;
use commonware_math::algebra::{Additive, Ring};

pub(crate) fn fixture(p: &Parameters) -> Witness {
    let address = Address {
        diversified: group::generator().multiply(&Scalar::from(7)),
        transmission: group::generator().multiply(&Scalar::from(11)),
    };
    let amount = Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]);
    let blinding = Scalar::from(13);
    let asset = Scalar::from(17);
    let rnk = Scalar::from(19);
    let capsule = recovery::encrypt(
        p,
        &group::generator(),
        &amount,
        &blinding,
        Scalar::from(23),
        Scalar::from(29),
        Scalar::from(31),
    )
    .unwrap();
    let note = Note {
        amount: amount.clone(),
        blinding: blinding.clone(),
        recovery: capsule.capsule.commitment.clone(),
    };
    let commitment = note.commitment(p, &asset, &address);
    let path = Path {
        position: Scalar::from(42),
        siblings: std::array::from_fn(|_| std::array::from_fn(|_| Scalar::zero())),
    };
    let g = Generators::derive(p);
    let value_blinding = Scalar::from(37);
    let value_commitment =
        balance::native(p, &g, &asset, [u128::MAX, 0], [0, 0], &value_blinding).unwrap();
    Witness {
        amount,
        recovery_commitment: capsule.capsule.commitment,
        value_blinding,
        statement: Statement {
            anchor: tree::native_root(p, Tree::State, commitment.clone(), 42, &path.siblings),
            nullifier: p.native(
                domains::NOTE_NULLIFIER,
                &[rnk.clone(), commitment.clone(), path.position.clone()],
            ),
            address,
            asset,
            rnk_commitment: p.native(domains::REGULATED_NULLIFIER_COMMITMENT, &[rnk.clone()]),
            value_commitment,
        },
        blinding,
        rnk,
        path,
    }
}
fn satisfied(p: &Parameters, w: &Witness, digest: &Scalar) -> bool {
    build_with_values(|ctx| constrain(ctx, p, &Generators::derive(p), w, digest))
        .0
        .is_satisfied()
}
#[test]
fn whole_private_opening_and_every_public_fact_are_bound() {
    let p = Parameters::load().unwrap();
    let w = fixture(&p);
    let digest = w.statement.digest(&p);
    assert!(satisfied(&p, &w, &digest));
    for mutation in 0..14 {
        let mut bad = w.clone();
        match mutation {
            0 => bad.blinding += &Scalar::one(),
            1 => bad.rnk += &Scalar::one(),
            2 => bad.path.position += &Scalar::one(),
            3 => bad.path.siblings[23][2] += &Scalar::one(),
            4 => bad.recovery_commitment += &Scalar::one(),
            5 => bad.value_blinding += &Scalar::one(),
            6 => bad.amount = Scalar::zero(),
            7 => bad.amount -= &Scalar::one(),
            8 => bad.statement.nullifier += &Scalar::one(),
            9 => bad.statement.rnk_commitment += &Scalar::one(),
            10 => bad.statement.address.transmission = Point::identity(),
            11 => bad.statement.asset += &Scalar::one(),
            12 => bad.statement.value_commitment = group::generator(),
            _ => {
                bad.statement.address.transmission = group::generator().multiply(&Scalar::from(41))
            }
        }
        assert!(
            !satisfied(&p, &bad, &bad.statement.digest(&p)),
            "mutation {mutation}"
        );
    }
    let mut changed = w.clone();
    changed.statement.value_commitment = group::generator();
    assert!(!satisfied(&p, &changed, &digest));
    assert_eq!(w.statement.fields().len(), STATEMENT_FIELDS);

    let mut zero = w.clone();
    zero.amount = Scalar::zero();
    let commitment = Note {
        amount: zero.amount.clone(),
        blinding: zero.blinding.clone(),
        recovery: zero.recovery_commitment.clone(),
    }
    .commitment(&p, &zero.statement.asset, &zero.statement.address);
    zero.statement.anchor =
        tree::native_root(&p, Tree::State, commitment.clone(), 42, &zero.path.siblings);
    zero.statement.nullifier = p.native(
        domains::NOTE_NULLIFIER,
        &[zero.rnk.clone(), commitment, zero.path.position.clone()],
    );
    zero.statement.value_commitment = balance::native(
        &p,
        &Generators::derive(&p),
        &zero.statement.asset,
        [0, 0],
        [0, 0],
        &zero.value_blinding,
    )
    .unwrap();
    assert!(
        !satisfied(&p, &zero, &zero.statement.digest(&p)),
        "an otherwise consistent zero-valued note must fail the nonzero constraint"
    );
}
