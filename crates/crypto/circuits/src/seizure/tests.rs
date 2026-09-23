use super::*;
use crate::group::Point;
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
    Witness {
        statement: Statement {
            anchor: tree::native_root(p, Tree::State, commitment.clone(), 42, &path.siblings),
            nullifier: p.native(
                domains::NOTE_NULLIFIER,
                &[rnk.clone(), commitment.clone(), path.position.clone()],
            ),
            commitment,
            history_required: Scalar::one(),
            recent_floor: Scalar::from(43),
            address,
            asset,
            amount,
            recovery: capsule.capsule,
            seed: capsule.seed,
            rnk_commitment: p.native(domains::REGULATED_NULLIFIER_COMMITMENT, &[rnk.clone()]),
            authorization: Scalar::from(37),
        },
        blinding,
        rnk,
        path,
    }
}
fn satisfied(p: &Parameters, w: &Witness, digest: &Scalar) -> bool {
    build_with_values(|ctx| constrain(ctx, p, w, digest))
        .0
        .is_satisfied()
}
#[test]
fn released_seed_note_membership_and_every_public_fact_are_bound() {
    let p = Parameters::load().unwrap();
    let w = fixture(&p);
    let digest = w.statement.digest(&p);
    assert!(satisfied(&p, &w, &digest));
    for mutation in 0..21 {
        let mut bad = w.clone();
        match mutation {
            0 => bad.blinding += &Scalar::one(),
            1 => bad.rnk += &Scalar::one(),
            2 => bad.path.position += &Scalar::one(),
            3 => bad.path.siblings[23][2] += &Scalar::one(),
            4 => bad.statement.seed += &Scalar::one(),
            5 => bad.statement.recovery.c2 += &Scalar::one(),
            6 => bad.statement.recovery.epk = Point::identity(),
            7 => bad.statement.recovery.salt += &Scalar::one(),
            8 => bad.statement.recovery.confirmation += &Scalar::one(),
            9 => bad.statement.recovery.encrypted_amount += &Scalar::one(),
            10 => bad.statement.recovery.encrypted_blinding += &Scalar::one(),
            11 => bad.statement.recovery.commitment += &Scalar::one(),
            12 => bad.statement.amount += &Scalar::one(),
            13 => bad.statement.nullifier += &Scalar::one(),
            14 => bad.statement.rnk_commitment += &Scalar::one(),
            15 => bad.statement.history_required = Scalar::zero(),
            16 => bad.statement.recent_floor = Scalar::from(1u64 << 48),
            17 => bad.statement.address.transmission = Point::identity(),
            18 => bad.statement.asset += &Scalar::one(),
            19 => {
                bad.statement.address.transmission = group::generator().multiply(&Scalar::from(41))
            }
            _ => bad.statement.commitment += &Scalar::one(),
        }
        assert!(
            !satisfied(&p, &bad, &bad.statement.digest(&p)),
            "mutation {mutation}"
        );
    }
    let mut changed = w.clone();
    changed.statement.authorization += &Scalar::one();
    assert!(!satisfied(&p, &changed, &digest));
    assert!(satisfied(&p, &changed, &changed.statement.digest(&p)));
    for (floor, old) in [(41, false), (42, false), (43, true)] {
        let mut boundary = w.clone();
        boundary.statement.recent_floor = Scalar::from(floor);
        boundary.statement.history_required = Scalar::from(u64::from(old));
        assert!(satisfied(&p, &boundary, &boundary.statement.digest(&p)));
    }
}
