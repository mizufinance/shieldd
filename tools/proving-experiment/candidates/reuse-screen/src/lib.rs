//! Scoped exact-identity diagnostics, with no value-dependent circuit changes.
pub mod inventory;

#[cfg(test)]
mod tests {
    use super::inventory;
    use commonware_cryptography::{
        bls12381::primitives::group::Scalar,
        zk::circuit::{Var, build},
    };
    use commonware_math::algebra::Additive;

    #[test]
    fn native_zero_and_one_are_distinct_despite_redacted_debug() {
        use commonware_math::algebra::Ring;
        inventory::begin([5; 32]);
        build(|ctx| {
            let a = Var::witness(ctx, |_| Scalar::zero());
            let at = ctx.diagnostic_position();
            inventory::hash(10, &[a.clone(), Var::native(Scalar::zero())], at, at);
            inventory::hash(10, &[a.clone(), Var::native(Scalar::one())], at, at);
            inventory::hash(10, &[a, Var::native(Scalar::zero())], at, at);
            Vec::new()
        });
        let events = inventory::finish();
        assert_eq!(events[1].duplicate_of, None);
        assert_eq!(events[2].duplicate_of, Some(0));
    }

    #[test]
    fn unresolved_native_constants_are_ineligible() {
        inventory::begin([6; 32]);
        build(|ctx| {
            let a = Var::witness(ctx, |_| Scalar::zero());
            let large = Var::native(Scalar::from(1000));
            let at = ctx.diagnostic_position();
            for _ in 0..2 {
                inventory::hash(10, &[a.clone(), large.clone()], at, at);
            }
            Vec::new()
        });
        assert!(
            inventory::finish()
                .iter()
                .all(|e| !e.identity_complete && e.duplicate_of.is_none())
        );
    }

    #[test]
    fn exact_identity_keeps_domains_order_width_and_expression_identity() {
        inventory::begin([7; 32]);
        build(|ctx| {
            let a = Var::witness(ctx, |_| Scalar::zero());
            let b = Var::witness(ctx, |_| Scalar::zero());
            let at = ctx.diagnostic_position();
            inventory::hash(1, &[a.clone(), b.clone()], at, at);
            inventory::hash(1, &[a.clone(), b.clone()], at, at);
            inventory::hash(2, &[a.clone(), b.clone()], at, at);
            inventory::hash(1, &[b.clone(), a.clone()], at, at);
            inventory::hash(1, &[a.clone()], at, at);
            inventory::hash(1, &[a.clone() + &Var::zero(), b], at, at);
            inventory::bits(128, &a, at, at);
            inventory::bits(128, &a, at, at);
            inventory::bits(129, &a, at, at);
            Vec::new()
        });
        let events = inventory::finish();
        assert_eq!(
            events
                .iter()
                .enumerate()
                .filter(|(_, e)| e.duplicate_of.is_some())
                .map(|(i, e)| (i, e.duplicate_of.unwrap()))
                .collect::<Vec<_>>(),
            vec![(1, 0), (7, 6)]
        );
    }

    #[test]
    fn separate_contexts_and_inventory_sessions_do_not_alias() {
        inventory::begin([8; 32]);
        build(|first| {
            let a = Var::witness(first, |_| Scalar::zero());
            let at = first.diagnostic_position();
            inventory::bits(128, &a, at, at);
            build(|second| {
                let b = Var::witness(second, |_| Scalar::zero());
                let at = second.diagnostic_position();
                inventory::bits(128, &b, at, at);
                Vec::new()
            });
            Vec::new()
        });
        assert!(inventory::finish().iter().all(|e| e.duplicate_of.is_none()));
        inventory::begin([9; 32]);
        build(|ctx| {
            let a = Var::witness(ctx, |_| Scalar::zero());
            let at = ctx.diagnostic_position();
            inventory::bits(128, &a, at, at);
            Vec::new()
        });
        assert!(inventory::finish()[0].duplicate_of.is_none());
    }
}
