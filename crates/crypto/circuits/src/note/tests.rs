use super::*;
use commonware_cryptography::zk::circuit::build_with_values;
use commonware_math::algebra::Ring;

#[derive(Clone)]
struct Values {
    address: Address<Scalar>,
    asset: Scalar,
    nk: Scalar,
    ak: Point<Scalar>,
    spend_auth: SpendAuthorization,
    anchor: Scalar,
    floor: Scalar,
}
fn fixture(params: &Parameters, dummy: bool) -> (Values, SpendWitness, OptionalWitness) {
    let g = group::generator();
    let address = Address {
        diversified: g.multiply(&Scalar::from(3)),
        transmission: g.multiply(&Scalar::from(5)),
    };
    let asset = Scalar::from(7);
    let nk = Scalar::from(11);
    let ak = g.multiply(&Scalar::from(13));
    let randomizer = Scalar::from(17);
    let rk = ak.add(&g.multiply(&randomizer), &group::coefficient_d());
    let note = Note {
        blinding: Scalar::from(19),
        amount: Scalar::from(if dummy { 0 } else { 23 }),
        recovery: Scalar::from(29),
    };
    let commitment = note.commitment(params, &asset, &address);
    let siblings =
        std::array::from_fn(|i| std::array::from_fn(|j| Scalar::from((i * 3 + j + 31) as u64)));
    let anchor = tree::native_root(params, Tree::State, commitment.clone(), 37, &siblings);
    let optional = OptionalWitness {
        is_dummy: dummy,
        seed: Scalar::from(41),
    };
    let nullifier = if dummy {
        dummy_nullifier(params, &optional.seed, &randomizer, Padding::Transfer)
    } else {
        params.native(NOTE_NULLIFIER, &[nk.clone(), commitment, Scalar::from(37)])
    };
    let spend = SpendWitness {
        note,
        path: Path {
            position: Scalar::from(37),
            siblings,
        },
        nullifier,
        history_required: false,
    };
    (
        Values {
            address,
            asset,
            nk,
            ak,
            spend_auth: SpendAuthorization { randomizer, rk },
            anchor,
            floor: Scalar::from(37),
        },
        spend,
        optional,
    )
}
fn shared<'a>(ctx: Context<'a, Scalar>, values: &Values) -> SpendContext<'a> {
    let point = |p: &Point<Scalar>| group::witness_subgroup(ctx, p, &p.cofactor_preimage());
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    SpendContext {
        address: Address {
            diversified: point(&values.address.diversified),
            transmission: point(&values.address.transmission),
        },
        asset: var(&values.asset),
        nk: var(&values.nk),
        randomizer: constrain_authorization(ctx, &point(&values.ak), &values.spend_auth).1,
        anchor: var(&values.anchor),
        recent_floor: var(&values.floor),
    }
}
fn satisfied(
    params: &Parameters,
    values: &Values,
    spend: &SpendWitness,
    optional: Option<&OptionalWitness>,
) -> bool {
    let (c, _) = build_with_values(|ctx| {
        constrain_spend(
            ctx,
            params,
            &shared(ctx, values),
            spend,
            optional.map(|w| (w, Padding::Transfer)),
        );
        Vec::new()
    });
    c.is_satisfied()
}

#[test]
fn real_spends_bind_note_path_nullifier_authorization_and_history_boundary() {
    let p = Parameters::load().unwrap();
    let (values, spend, optional) = fixture(&p, false);
    for option in [None, Some(&optional)] {
        assert!(satisfied(&p, &values, &spend, option));
        for i in 0..9 {
            let mut bad = spend.clone();
            let mut bad_values = values.clone();
            match i {
                0 => bad.note.amount += &Scalar::one(),
                1 => bad.note.blinding += &Scalar::one(),
                2 => bad.note.recovery += &Scalar::one(),
                3 => bad.path.position += &Scalar::one(),
                4 => bad.path.siblings[STATE_DEPTH - 1][2] += &Scalar::one(),
                5 => bad.nullifier += &Scalar::one(),
                6 => bad_values.spend_auth.randomizer += &Scalar::one(),
                7 => bad_values.spend_auth.rk = group::generator(),
                _ => bad.history_required = true,
            }
            assert!(!satisfied(&p, &bad_values, &bad, option), "spend field {i}");
        }
        let mut old = values.clone();
        old.floor += &Scalar::one();
        assert!(!satisfied(&p, &old, &spend, option));
        let mut historical = spend.clone();
        historical.history_required = true;
        assert!(satisfied(&p, &old, &historical, option));
        let mut invalid = values.clone();
        invalid.floor = Scalar::from(1u64 << 48);
        assert!(!satisfied(&p, &invalid, &spend, option));
        for i in 0..5 {
            let mut bad = values.clone();
            match i {
                0 => bad.asset += &Scalar::one(),
                1 => bad.nk += &Scalar::one(),
                2 => bad.ak = group::generator(),
                3 => bad.address.transmission = group::generator(),
                _ => bad.anchor += &Scalar::one(),
            }
            assert!(!satisfied(&p, &bad, &spend, option), "shared field {i}");
        }
    }
}

#[test]
fn optional_dummy_enforces_gated_constraints_and_fixed_slot() {
    let p = Parameters::load().unwrap();
    let (mut values, mut spend, optional) = fixture(&p, true);
    assert!(satisfied(&p, &values, &spend, Some(&optional)));
    assert!(!satisfied(&p, &values, &spend, None));
    values.anchor += &Scalar::one();
    values.floor += &Scalar::one();
    spend.note.blinding += &Scalar::one();
    assert!(satisfied(&p, &values, &spend, Some(&optional)));
    for i in 0..6 {
        let mut bad = spend.clone();
        match i {
            0 => bad.note.amount = Scalar::one(),
            1 => bad.history_required = true,
            2 => bad.path.position = Scalar::from(1u64 << 48),
            3 => bad.nullifier += &Scalar::one(),
            4 => {
                bad.nullifier = p.native(
                    DUMMY_NULLIFIER,
                    &[
                        optional.seed.clone(),
                        values.spend_auth.randomizer.clone(),
                        Scalar::zero(),
                    ],
                )
            }
            _ => bad.note.amount = Scalar::from_limbs([0, 0, 1, 0]),
        }
        assert!(
            !satisfied(&p, &values, &bad, Some(&optional)),
            "dummy mutation {i}"
        );
    }
    let mut bad = optional.clone();
    bad.seed += &Scalar::one();
    assert!(!satisfied(&p, &values, &spend, Some(&bad)));
}

#[test]
fn output_notes_bind_recovery_and_only_change_can_be_zero() {
    let p = Parameters::load().unwrap();
    let (values, _, _) = fixture(&p, false);
    let payload_key = group::generator().multiply(&Scalar::from(43));
    let check = |w: &OutputWitness, receiver| {
        let (c, _) = build_with_values(|ctx| {
            let s = shared(ctx, &values);
            let payload_key =
                group::witness_subgroup(ctx, &payload_key, &payload_key.cofactor_preimage());
            constrain_output(ctx, &p, &s.asset, &s.address, &payload_key, receiver, w);
            Vec::new()
        });
        c.is_satisfied()
    };
    for amount in [
        Scalar::zero(),
        Scalar::one(),
        Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]),
        Scalar::from_limbs([0, 0, 1, 0]),
    ] {
        let capsule = recovery::encrypt(
            &p,
            &payload_key,
            &amount,
            &Scalar::from(47),
            Scalar::from(53),
            Scalar::from(59),
            Scalar::from(61),
        )
        .unwrap();
        let note = Note {
            amount: amount.clone(),
            blinding: Scalar::from(47),
            recovery: capsule.capsule.commitment.clone(),
        };
        let w = OutputWitness {
            commitment: note.commitment(&p, &values.asset, &values.address),
            note,
            capsule,
        };
        let in_range = amount < Scalar::from_limbs([0, 0, 1, 0]);
        assert_eq!(check(&w, false), in_range);
        assert_eq!(check(&w, true), in_range && amount != Scalar::zero());
        let mut bad = w.clone();
        bad.note.recovery += &Scalar::one();
        bad.commitment = bad.note.commitment(&p, &values.asset, &values.address);
        assert!(!check(&bad, false));
        let mut bad = w.clone();
        bad.commitment += &Scalar::one();
        assert!(!check(&bad, false));
    }
}

#[test]
fn identity_randomized_keys_are_rejected_for_real_and_dummy_spends() {
    let p = Parameters::load().unwrap();
    for dummy in [false, true] {
        let (mut values, mut spend, optional) = fixture(&p, dummy);
        values.spend_auth.randomizer = Scalar::from_limbs(scalar::ORDER) - &Scalar::from(13);
        values.spend_auth.rk = Point::identity();
        if dummy {
            spend.nullifier = dummy_nullifier(
                &p,
                &optional.seed,
                &values.spend_auth.randomizer,
                Padding::Transfer,
            );
        }
        assert!(
            !satisfied(
                &p,
                &values,
                &spend,
                if dummy { Some(&optional) } else { None }
            ),
            "dummy={dummy}"
        );
    }
}
