//! Fixed-capacity selective note disclosure with exact, possibly false predicates.
use crate::{
    encryption::Address,
    group::Point,
    hash::Parameters,
    note::Note,
    range::{decompose, is_zero, less_or_equal},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Ring};
use shieldd_sdk_crypto::domains;

pub const CAPACITY: usize = 32;

#[derive(Clone)]
pub struct Predicate<F> {
    pub op: F,
    pub lower: F,
    pub upper: F,
    pub result: F,
}
impl<F: Clone> Predicate<F> {
    fn fields(&self) -> [F; 4] {
        [
            self.op.clone(),
            self.lower.clone(),
            self.upper.clone(),
            self.result.clone(),
        ]
    }
}
#[derive(Clone)]
pub struct Slot<F> {
    pub active: F,
    pub commitment: F,
    pub reveal_amount: F,
    pub reveal_asset: F,
    pub reveal_recipient: F,
    pub amount: F,
    pub asset: F,
    pub address: Address<F>,
    pub predicate: Predicate<F>,
}
impl<F: Clone> Slot<F> {
    fn fields(&self) -> Vec<F> {
        let mut fields = vec![
            self.active.clone(),
            self.commitment.clone(),
            self.reveal_amount.clone(),
            self.reveal_asset.clone(),
            self.reveal_recipient.clone(),
            self.amount.clone(),
            self.asset.clone(),
        ];
        fields.extend(crate::transfer::address_fields(&self.address));
        fields.extend(self.predicate.fields());
        fields
    }
}
#[derive(Clone)]
pub struct Statement<F> {
    pub context: [F; 2],
    pub context_hash: F,
    pub slots: [Slot<F>; CAPACITY],
    pub total_enabled: F,
    pub total_reveal: F,
    pub total_amount: F,
    pub total_asset: F,
    pub total_predicate: Predicate<F>,
}
impl<F: Clone> Statement<F> {
    pub fn fields(&self) -> Vec<F> {
        let mut fields = self.context.to_vec();
        fields.push(self.context_hash.clone());
        for slot in &self.slots {
            fields.extend(slot.fields());
        }
        fields.extend([
            self.total_enabled.clone(),
            self.total_reveal.clone(),
            self.total_amount.clone(),
            self.total_asset.clone(),
        ]);
        fields.extend(self.total_predicate.fields());
        fields
    }
}
impl Statement<Scalar> {
    pub fn digest(&self, p: &Parameters) -> Scalar {
        p.native(domains::DISCLOSURE_STATEMENT, &self.fields())
    }
}
#[derive(Clone)]
pub struct Opening<F> {
    pub note: Note<F>,
    pub asset: F,
    pub address: Address<F>,
}
#[derive(Clone)]
pub struct Witness {
    pub statement: Statement<Scalar>,
    pub notes: [Opening<Scalar>; CAPACITY],
}

fn predicate<'a>(
    ctx: Context<'a, Scalar>,
    value: &Var<'a, Scalar>,
    p: &Predicate<Var<'a, Scalar>>,
) {
    let value = decompose(ctx, value, 128);
    let lower = decompose(ctx, &p.lower, 128);
    let upper = decompose(ctx, &p.upper, 128);
    let selectors: [_; 6] = std::array::from_fn(|i| {
        is_zero(ctx, &(p.op.clone() - &Var::native(Scalar::from(i as u64))))
    });
    selectors
        .iter()
        .fold(Var::zero(), |sum, bit| sum + bit.var())
        .assert_eq(&Var::one());
    let le = less_or_equal(&value, &lower);
    let ge = less_or_equal(&lower, &value);
    let conditions = [
        !le.clone(),
        !ge.clone(),
        ge.clone(),
        le,
        ge & less_or_equal(&value, &upper),
    ];
    let expected = selectors[1..]
        .iter()
        .zip(conditions)
        .fold(Var::zero(), |sum, (s, c)| {
            sum + &(s.var().clone() * c.var())
        });
    BoolVar::assert(p.result.clone()).var().assert_eq(&expected);
    (selectors[0].var().clone() * &p.lower).assert_eq(&Var::zero());
    ((!selectors[5].clone()).var().clone() * &p.upper).assert_eq(&Var::zero());
    (selectors[5].clone() & !less_or_equal(&lower, &upper)).assert_eq(&BoolVar::constant(false));
}

pub fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    p: &Parameters,
    w: &Witness,
    claimed: &Scalar,
) -> Vec<Var<'a, Scalar>> {
    let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
    let address = |a: &Address<Scalar>| Address {
        diversified: Point {
            x: var(&a.diversified.x),
            y: var(&a.diversified.y),
        },
        transmission: Point {
            x: var(&a.transmission.x),
            y: var(&a.transmission.y),
        },
    };
    let lift_predicate = |p: &Predicate<Scalar>| Predicate {
        op: var(&p.op),
        lower: var(&p.lower),
        upper: var(&p.upper),
        result: var(&p.result),
    };
    let s = &w.statement;
    let s = Statement {
        context: s.context.each_ref().map(var),
        context_hash: var(&s.context_hash),
        slots: s.slots.each_ref().map(|s| Slot {
            active: var(&s.active),
            commitment: var(&s.commitment),
            reveal_amount: var(&s.reveal_amount),
            reveal_asset: var(&s.reveal_asset),
            reveal_recipient: var(&s.reveal_recipient),
            amount: var(&s.amount),
            asset: var(&s.asset),
            address: address(&s.address),
            predicate: lift_predicate(&s.predicate),
        }),
        total_enabled: var(&s.total_enabled),
        total_reveal: var(&s.total_reveal),
        total_amount: var(&s.total_amount),
        total_asset: var(&s.total_asset),
        total_predicate: lift_predicate(&s.total_predicate),
    };
    for limb in &s.context {
        decompose(ctx, limb, 128);
    }
    p.circuit(domains::DISCLOSURE_CONTEXT, &s.context)
        .assert_eq(&s.context_hash);
    let enabled = BoolVar::assert(s.total_enabled.clone());
    let reveal = BoolVar::assert(s.total_reveal.clone());
    (reveal.clone() & !enabled.clone()).assert_eq(&BoolVar::constant(false));
    let mut sum = Var::zero();
    let mut previous_active = BoolVar::constant(true);
    let mut committed = None;
    for (i, (slot, opening)) in s.slots.iter().zip(&w.notes).enumerate() {
        let active = BoolVar::assert(slot.active.clone());
        if i == 0 {
            active.assert_eq(&BoolVar::constant(true));
        }
        (active.clone() & !previous_active).assert_eq(&BoolVar::constant(false));
        previous_active = active.clone();
        for flag in [
            &slot.reveal_amount,
            &slot.reveal_asset,
            &slot.reveal_recipient,
        ] {
            BoolVar::assert(flag.clone());
        }
        let note = opening.note.witness(ctx);
        let asset = var(&opening.asset);
        let address = address(&opening.address);
        let note_fields = note.fields(&asset, &address);
        let inactive = !active.clone();
        for field in slot.fields().iter().chain(&note_fields) {
            (inactive.var().clone() * field).assert_eq(&Var::zero());
        }
        decompose(ctx, &note.amount, 128);
        (active.clone() & is_zero(ctx, &note.amount)).assert_eq(&BoolVar::constant(false));
        // Membership of the disclosed commitment is checked by the consuming application.
        // Its preimage uses the same coordinate encoding as the note commitment relation.
        (active.var().clone() * &(p.circuit(domains::NOTE, &note_fields) - &slot.commitment))
            .assert_eq(&Var::zero());
        (slot.reveal_amount.clone() * &note.amount).assert_eq(&slot.amount);
        (slot.reveal_asset.clone() * &asset).assert_eq(&slot.asset);
        for (hidden, public) in crate::transfer::address_fields(&address)
            .iter()
            .zip(crate::transfer::address_fields(&slot.address))
        {
            (slot.reveal_recipient.clone() * hidden).assert_eq(&public);
        }
        predicate(ctx, &note.amount, &slot.predicate);
        (enabled.var().clone() * active.var() * &(asset - &s.total_asset)).assert_eq(&Var::zero());
        sum += &(active.var().clone() * &note.amount);
        if i == 0 {
            committed = Some(note.blinding);
        }
    }
    let sum = sum * enabled.var();
    decompose(ctx, &sum, 128);
    (sum.clone() * reveal.var()).assert_eq(&s.total_amount);
    predicate(ctx, &sum, &s.total_predicate);
    let digest = var(claimed);
    p.circuit(domains::DISCLOSURE_STATEMENT, &s.fields())
        .assert_eq(&digest);
    vec![digest, committed.expect("nonempty disclosure")]
}

#[cfg(test)]
pub(crate) mod tests;
