//! Authority-approved consumption of a note with a verified recovery seed.
use crate::{
    encryption::Address,
    group,
    hash::Parameters,
    note::Note,
    range::{decompose, less_or_equal_bounded},
    recovery::{self, Capsule},
    tree::{self, Path, STATE_DEPTH, Tree},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use shieldd_sdk_crypto::domains;

#[derive(Clone)]
pub struct Statement<F> {
    pub anchor: F,
    pub commitment: F,
    pub nullifier: F,
    pub history_required: F,
    pub recent_floor: F,
    pub address: Address<F>,
    pub asset: F,
    pub amount: F,
    pub recovery: Capsule<F>,
    pub seed: F,
    pub rnk_commitment: F,
    pub authorization: F,
}
impl<F: Clone> Statement<F> {
    pub fn fields(&self) -> Vec<F> {
        let mut fields = vec![
            self.anchor.clone(),
            self.commitment.clone(),
            self.nullifier.clone(),
            self.history_required.clone(),
            self.recent_floor.clone(),
        ];
        fields.extend(crate::transfer::address_fields(&self.address));
        fields.extend([
            self.asset.clone(),
            self.amount.clone(),
            self.recovery.commitment.clone(),
        ]);
        fields.extend(self.recovery.commitment_inputs());
        fields.extend([
            self.seed.clone(),
            self.rnk_commitment.clone(),
            self.authorization.clone(),
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
    pub blinding: Scalar,
    pub rnk: Scalar,
    pub path: Path<Scalar, STATE_DEPTH>,
}

pub fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    p: &Parameters,
    w: &Witness,
    claimed: &Scalar,
) -> Vec<Var<'a, Scalar>> {
    let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
    let point = |v: &group::Point<Scalar>| {
        let point = group::witness_subgroup(ctx, v, &v.cofactor_preimage());
        point.assert_non_identity();
        point
    };
    let s = &w.statement;
    let s = Statement {
        anchor: var(&s.anchor),
        commitment: var(&s.commitment),
        nullifier: var(&s.nullifier),
        history_required: var(&s.history_required),
        recent_floor: var(&s.recent_floor),
        address: Address {
            diversified: point(&s.address.diversified),
            transmission: point(&s.address.transmission),
        },
        asset: var(&s.asset),
        amount: var(&s.amount),
        recovery: s.recovery.witness(ctx),
        seed: var(&s.seed),
        rnk_commitment: var(&s.rnk_commitment),
        authorization: var(&s.authorization),
    };
    let blinding = var(&w.blinding);
    decompose(ctx, &s.amount, 128);
    recovery::constrain_plaintext(p, &s.amount, &blinding, &s.recovery, &s.seed);
    let note = Note {
        blinding: blinding.clone(),
        amount: s.amount.clone(),
        recovery: s.recovery.commitment.clone(),
    };
    p.circuit(domains::NOTE, &note.fields(&s.asset, &s.address))
        .assert_eq(&s.commitment);
    let rnk = var(&w.rnk);
    p.circuit(domains::REGULATED_NULLIFIER_COMMITMENT, &[rnk.clone()])
        .assert_eq(&s.rnk_commitment);
    let path = w.path.witness(ctx);
    p.circuit(
        domains::NOTE_NULLIFIER,
        &[rnk, s.commitment.clone(), path.position.clone()],
    )
    .assert_eq(&s.nullifier);
    let position = decompose(ctx, &path.position, 48);
    tree::root_with_position_bits(ctx, p, Tree::State, s.commitment.clone(), &path, &position)
        .assert_eq(&s.anchor);
    let floor = decompose(ctx, &s.recent_floor, 48);
    (!less_or_equal_bounded(ctx, &floor, &position))
        .assert_eq(&BoolVar::assert(s.history_required.clone()));
    let digest = var(claimed);
    p.circuit(domains::SEIZURE_STATEMENT, &s.fields())
        .assert_eq(&digest);
    vec![digest, blinding]
}

#[cfg(test)]
pub(crate) mod tests;
