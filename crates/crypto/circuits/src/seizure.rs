//! Whole-note consumption with a private opening and a blinded value commitment.
use crate::{
    balance,
    encryption::Address,
    group,
    hash::Parameters,
    map::Generators,
    note::Note,
    range::decompose,
    tree::{self, Path, STATE_DEPTH, Tree},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{Context, Var},
};
use commonware_math::algebra::{Additive, Field, Ring};
use shieldd_sdk_crypto::domains;

pub const STATEMENT_FIELDS: usize = 10;
#[derive(Clone)]
pub struct Statement<F> {
    pub anchor: F,
    pub nullifier: F,
    pub address: Address<F>,
    pub asset: F,
    pub rnk_commitment: F,
    pub value_commitment: group::Point<F>,
}
impl<F: Clone> Statement<F> {
    pub fn fields(&self) -> Vec<F> {
        let mut fields = vec![self.anchor.clone(), self.nullifier.clone()];
        fields.extend(crate::transfer::address_fields(&self.address));
        fields.extend([
            self.asset.clone(),
            self.rnk_commitment.clone(),
            self.value_commitment.x.clone(),
            self.value_commitment.y.clone(),
        ]);
        fields
    }
}
impl Statement<Scalar> {
    pub fn digest(&self, p: &Parameters) -> Scalar {
        p.native(domains::SEIZURE_STATEMENT, &self.fields())
    }
}
#[derive(Clone)]
pub struct Witness {
    pub statement: Statement<Scalar>,
    pub amount: Scalar,
    pub blinding: Scalar,
    pub recovery_commitment: Scalar,
    pub value_blinding: Scalar,
    pub rnk: Scalar,
    pub path: Path<Scalar, STATE_DEPTH>,
}
pub fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    p: &Parameters,
    g: &Generators,
    w: &Witness,
    claimed: &Scalar,
) -> Vec<Var<'a, Scalar>> {
    let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
    let point = |v: &group::Point<Scalar>| group::witness_subgroup(ctx, v, &v.cofactor_preimage());
    let s = &w.statement;
    let s = Statement {
        anchor: var(&s.anchor),
        nullifier: var(&s.nullifier),
        address: Address {
            diversified: point(&s.address.diversified),
            transmission: point(&s.address.transmission),
        },
        asset: var(&s.asset),
        rnk_commitment: var(&s.rnk_commitment),
        value_commitment: point(&s.value_commitment),
    };
    s.address.diversified.assert_non_identity();
    s.address.transmission.assert_non_identity();
    let blinding = var(&w.blinding);
    let amount = var(&w.amount);
    decompose(ctx, &amount, 128);
    // Keep the relation shape identical for zero-valued setup witnesses.
    let inverse = var(&if w.amount == Scalar::zero() {
        Scalar::zero()
    } else {
        w.amount.inv()
    });
    (amount.clone() * &inverse).assert_eq(&Var::one());
    let note = Note {
        blinding: blinding.clone(),
        amount: amount.clone(),
        recovery: var(&w.recovery_commitment),
    };
    let commitment = p.circuit(domains::NOTE, &note.fields(&s.asset, &s.address));
    let rnk = var(&w.rnk);
    p.circuit(domains::REGULATED_NULLIFIER_COMMITMENT, &[rnk.clone()])
        .assert_eq(&s.rnk_commitment);
    let path = w.path.witness(ctx);
    let position = decompose(ctx, &path.position, 48);
    p.circuit(
        domains::NOTE_NULLIFIER,
        &[rnk, commitment.clone(), path.position.clone()],
    )
    .assert_eq(&s.nullifier);
    tree::root_with_position_bits(ctx, p, Tree::State, commitment, &path, &position)
        .assert_eq(&s.anchor);
    balance::constrain(
        ctx,
        p,
        g,
        &s.asset,
        &[amount, Var::zero()],
        &[Var::zero(), Var::zero()],
        &var(&w.value_blinding),
    )
    .assert_equal(&s.value_commitment);
    let digest = var(claimed);
    p.circuit(domains::SEIZURE_STATEMENT, &s.fields())
        .assert_eq(&digest);
    vec![digest, blinding]
}
#[cfg(test)]
pub(crate) mod tests;
