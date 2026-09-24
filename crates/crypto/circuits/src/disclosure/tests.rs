use super::*;
use crate::group;
use crate::proof::Family;
use commonware_cryptography::zk::circuit::build_with_values;
fn zero_predicate() -> Predicate<Scalar> {
    Predicate {
        op: Scalar::zero(),
        lower: Scalar::zero(),
        upper: Scalar::zero(),
        result: Scalar::zero(),
    }
}
fn empty_address() -> Address<Scalar> {
    Address {
        diversified: Point {
            x: Scalar::zero(),
            y: Scalar::zero(),
        },
        transmission: Point {
            x: Scalar::zero(),
            y: Scalar::zero(),
        },
    }
}
pub(crate) fn fixture_for_capacity<const N: usize>(
    p: &Parameters,
    count: usize,
    amount: Scalar,
) -> Witness<N> {
    let notes = std::array::from_fn(|i| {
        if i < count {
            Opening {
                note: Note {
                    amount: amount.clone(),
                    blinding: Scalar::from(i as u64 + 1),
                    recovery: Scalar::from(3),
                },
                asset: Scalar::from(7),
                address: Address {
                    diversified: group::generator(),
                    transmission: group::generator().multiply(&Scalar::from(9)),
                },
            }
        } else {
            Opening {
                note: Note {
                    amount: Scalar::zero(),
                    blinding: Scalar::zero(),
                    recovery: Scalar::zero(),
                },
                asset: Scalar::zero(),
                address: empty_address(),
            }
        }
    });
    let context = [Scalar::from(17), Scalar::from(19)];
    Witness {
        statement: Statement {
            context_hash: p.native(domains::DISCLOSURE_CONTEXT, &context),
            context,
            slots: std::array::from_fn(|i| Slot {
                active: Scalar::from(u64::from(i < count)),
                commitment: if i < count {
                    notes[i]
                        .note
                        .commitment(p, &notes[i].asset, &notes[i].address)
                } else {
                    Scalar::zero()
                },
                reveal_amount: Scalar::zero(),
                reveal_asset: Scalar::zero(),
                reveal_recipient: Scalar::zero(),
                amount: Scalar::zero(),
                asset: Scalar::zero(),
                address: empty_address(),
                predicate: zero_predicate(),
            }),
            total_enabled: Scalar::zero(),
            total_reveal: Scalar::zero(),
            total_amount: Scalar::zero(),
            total_asset: Scalar::zero(),
            total_predicate: zero_predicate(),
        },
        notes,
    }
}
pub(crate) fn fixture(p: &Parameters, count: usize, amount: Scalar) -> Witness {
    fixture_for_capacity::<CAPACITY>(p, count, amount)
}
fn satisfied(p: &Parameters, w: &Witness) -> bool {
    build_with_values(|ctx| constrain(ctx, p, w, &w.statement.digest(p)))
        .0
        .is_satisfied()
}
#[test]
fn one_note_family_has_distinct_relation_and_rejects_mutated_claims() {
    let p = Parameters::load().unwrap();
    let one = fixture_for_capacity::<1>(&p, 1, Scalar::from(5));
    assert!(
        build_with_values(|ctx| constrain(ctx, &p, &one, &one.statement.digest(&p)))
            .0
            .is_satisfied()
    );
    let mut bad = one.clone();
    bad.statement.slots[0].commitment += &Scalar::one();
    assert!(
        !build_with_values(|ctx| constrain(ctx, &p, &bad, &bad.statement.digest(&p)))
            .0
            .is_satisfied()
    );
    assert_ne!(
        crate::catalogue::compile(Family::DisclosureOne)
            .unwrap()
            .relation
            .digest(),
        crate::catalogue::compile(Family::Disclosure)
            .unwrap()
            .relation
            .digest(),
    );
}
#[test]
fn predicates_constrain_both_true_and_false_results_and_canonical_bounds() {
    for op in 0..6 {
        for value in [4, 5, 6, 7, 8] {
            let lower = if op == 0 { 0 } else { 5 };
            let upper = if op == 5 { 7 } else { 0 };
            let result = match op {
                0 => false,
                1 => value > lower,
                2 => value < lower,
                3 => value >= lower,
                4 => value <= lower,
                _ => value >= lower && value <= upper,
            };
            for valid in [true, false] {
                let (c, _) = build_with_values(|ctx| {
                    let v = |x| Var::witness(ctx, |_| Scalar::from(x));
                    predicate(
                        ctx,
                        &v(value),
                        &Predicate {
                            op: v(op),
                            lower: v(lower),
                            upper: v(upper),
                            result: v(u64::from(if valid { result } else { !result })),
                        },
                    );
                    Vec::new()
                });
                assert_eq!(c.is_satisfied(), valid, "op {op}, value {value}");
            }
        }
    }
    for (op, lower, upper) in [(6, 0, 0), (0, 1, 0), (1, 5, 1), (5, 7, 5)] {
        let (c, _) = build_with_values(|ctx| {
            let v = |x| Var::witness(ctx, |_| Scalar::from(x));
            predicate(
                ctx,
                &v(5),
                &Predicate {
                    op: v(op),
                    lower: v(lower),
                    upper: v(upper),
                    result: v(0),
                },
            );
            Vec::new()
        });
        assert!(!c.is_satisfied());
    }
}
#[test]
fn prefix_padding_reveals_and_optional_total_preserve_full_u128_amounts() {
    let p = Parameters::load().unwrap();
    let mut w = fixture(&p, 2, Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]));
    assert!(satisfied(&p, &w));
    w.statement.total_enabled = Scalar::one();
    w.statement.total_asset = Scalar::from(7);
    assert!(!satisfied(&p, &w));
    let w = fixture(&p, 2, Scalar::from(5));
    for mutation in 0..9 {
        let mut bad = w.clone();
        match mutation {
            0 => {
                bad.statement.slots.swap(1, 2);
                bad.notes.swap(1, 2);
            }
            1 => bad.statement.slots[1].active = Scalar::zero(),
            2 => bad.notes[2].note.blinding = Scalar::one(),
            3 => bad.statement.slots[2].predicate.lower = Scalar::one(),
            4 => bad.statement.slots[0].amount = Scalar::from(5),
            5 => bad.statement.slots[0].address.transmission.x = Scalar::one(),
            6 => {
                bad.statement.context[0] = Scalar::from_limbs([0, 0, 1, 0]);
                bad.statement.context_hash =
                    p.native(domains::DISCLOSURE_CONTEXT, &bad.statement.context);
            }
            7 => bad.statement.total_reveal = Scalar::one(),
            _ => bad.statement.slots[0].commitment += &Scalar::one(),
        }
        assert!(!satisfied(&p, &bad), "mutation {mutation}");
    }
    let mut revealed = w;
    revealed.statement.total_enabled = Scalar::one();
    revealed.statement.total_reveal = Scalar::one();
    revealed.statement.total_amount = Scalar::from(10);
    revealed.statement.total_asset = Scalar::from(7);
    let slot = &mut revealed.statement.slots[0];
    slot.reveal_amount = Scalar::one();
    slot.amount = Scalar::from(5);
    slot.reveal_asset = Scalar::one();
    slot.asset = Scalar::from(7);
    slot.reveal_recipient = Scalar::one();
    slot.address = revealed.notes[0].address.clone();
    assert!(satisfied(&p, &revealed));
    revealed.notes[1].asset += &Scalar::one();
    revealed.statement.slots[1].commitment =
        revealed.notes[1]
            .note
            .commitment(&p, &revealed.notes[1].asset, &revealed.notes[1].address);
    assert!(!satisfied(&p, &revealed));
}
