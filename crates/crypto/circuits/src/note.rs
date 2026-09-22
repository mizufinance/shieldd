use crate::{
    encryption::Address,
    group::{self, Point},
    hash::Parameters,
    range::{decompose, less_or_equal_bounded},
    recovery, scalar,
    tree::{self, Path, STATE_DEPTH, Tree},
    volume::NOTE_NULLIFIER,
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Field};

use shieldd_sdk_crypto::domains::DUMMY_NULLIFIER;
use shieldd_sdk_crypto::domains::NOTE;

#[derive(Clone)]
pub struct Note<F> {
    pub blinding: F,
    pub amount: F,
    pub recovery: F,
}
impl<F: Clone> Note<F> {
    pub fn fields(&self, asset: &F, address: &Address<F>) -> [F; 8] {
        [
            self.blinding.clone(),
            self.amount.clone(),
            asset.clone(),
            address.diversified.x.clone(),
            address.diversified.y.clone(),
            address.transmission.x.clone(),
            address.transmission.y.clone(),
            self.recovery.clone(),
        ]
    }
}
impl Note<Scalar> {
    pub fn witness<'ctx>(&self, ctx: Context<'ctx, Scalar>) -> Note<Var<'ctx, Scalar>> {
        Note {
            blinding: Var::witness(ctx, |_| self.blinding.clone()),
            amount: Var::witness(ctx, |_| self.amount.clone()),
            recovery: Var::witness(ctx, |_| self.recovery.clone()),
        }
    }
    pub fn commitment(
        &self,
        params: &Parameters,
        asset: &Scalar,
        address: &Address<Scalar>,
    ) -> Scalar {
        params.native(NOTE, &self.fields(asset, address))
    }
}

#[derive(Clone)]
pub struct SpendWitness {
    pub note: Note<Scalar>,
    pub path: Path<Scalar, STATE_DEPTH>,
    pub randomizer: Scalar,
    pub nullifier: Scalar,
    pub rk: Point<Scalar>,
    pub history_required: bool,
}

#[derive(Clone)]
pub struct OptionalWitness {
    pub is_dummy: bool,
    pub seed: Scalar,
}

pub struct SpendContext<'ctx> {
    pub address: Address<Var<'ctx, Scalar>>,
    pub asset: Var<'ctx, Scalar>,
    pub nk: Var<'ctx, Scalar>,
    pub ak: Point<Var<'ctx, Scalar>>,
    pub anchor: Var<'ctx, Scalar>,
    pub recent_floor: Var<'ctx, Scalar>,
}

pub struct Spend<'ctx> {
    pub is_dummy: BoolVar<'ctx, Scalar>,
    pub amount: Var<'ctx, Scalar>,
    pub nullifier: Var<'ctx, Scalar>,
    pub rk: Point<Var<'ctx, Scalar>>,
    pub history_required: BoolVar<'ctx, Scalar>,
}

#[derive(Clone, Copy)]
pub enum Padding {
    Transfer,
    Reshape(usize),
    Withdrawal,
}
impl Padding {
    fn domain_slot(self) -> (u8, usize) {
        use shieldd_sdk_crypto::domains;
        match self {
            Self::Transfer => (DUMMY_NULLIFIER, 1),
            Self::Reshape(slot) => {
                assert!(slot < 8);
                (domains::RESHAPE_DUMMY_NULLIFIER, slot)
            }
            Self::Withdrawal => (domains::WITHDRAWAL_DUMMY_NULLIFIER, 1),
        }
    }
}

pub fn dummy_nullifier(
    params: &Parameters,
    seed: &Scalar,
    randomizer: &Scalar,
    padding: Padding,
) -> Scalar {
    let (domain, slot) = padding.domain_slot();
    params.native(
        domain,
        &[seed.clone(), randomizer.clone(), Scalar::from(slot as u64)],
    )
}

/// Padding family and slot are fixed by the compiled relation, never supplied as witness values.
pub fn constrain_spend<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    shared: &SpendContext<'ctx>,
    w: &SpendWitness,
    optional: Option<(&OptionalWitness, Padding)>,
) -> Spend<'ctx> {
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    let note = w.note.witness(ctx);
    decompose(ctx, &note.amount, 128);
    let commitment = params.circuit(NOTE, &note.fields(&shared.asset, &shared.address));
    let path = w.path.witness(ctx);
    let real_nullifier = params.circuit(
        NOTE_NULLIFIER,
        &[shared.nk.clone(), commitment.clone(), path.position.clone()],
    );
    let positions = decompose(ctx, &path.position, 48);
    let anchor =
        tree::root_with_position_bits(ctx, params, Tree::State, commitment, &path, &positions);
    let randomizer = var(&w.randomizer);
    let bits = scalar::canonical_bits(ctx, &randomizer);
    let random_point = group::generator().multiply_fixed(&bits);
    let computed_rk = shared
        .ak
        .add(&random_point, &Var::native(group::coefficient_d()));
    let rk = group::witness_subgroup(ctx, &w.rk, &w.rk.cofactor_preimage());
    rk.assert_non_identity();
    let nullifier = var(&w.nullifier);
    let dummy = match optional {
        None => {
            real_nullifier.assert_eq(&nullifier);
            anchor.assert_eq(&shared.anchor);
            computed_rk.assert_equal(&rk);
            BoolVar::constant(false)
        }
        Some((optional, padding)) => {
            let (domain, slot) = padding.domain_slot();
            let dummy = BoolVar::witness(ctx, |_| optional.is_dummy);
            let synthetic = params.circuit(
                domain,
                &[
                    var(&optional.seed),
                    randomizer,
                    Var::native(Scalar::from(slot as u64)),
                ],
            );
            dummy
                .select(&synthetic, &real_nullifier)
                .assert_eq(&nullifier);
            let real = !dummy.clone();
            (real.var().clone() * &(anchor - &shared.anchor)).assert_eq(&Var::zero());
            (real.var().clone() * &(computed_rk.x - &rk.x)).assert_eq(&Var::zero());
            (real.var().clone() * &(computed_rk.y - &rk.y)).assert_eq(&Var::zero());
            (dummy.var().clone() * &note.amount).assert_eq(&Var::zero());
            dummy
        }
    };
    let floor = decompose(ctx, &shared.recent_floor, 48);
    let old = !less_or_equal_bounded(ctx, &floor, &positions);
    let history_required = BoolVar::witness(ctx, |_| w.history_required);
    ((!dummy.clone()) & old).assert_eq(&history_required);
    Spend {
        is_dummy: dummy,
        amount: note.amount,
        nullifier,
        rk,
        history_required,
    }
}

#[derive(Clone)]
pub struct OutputWitness {
    pub note: Note<Scalar>,
    pub commitment: Scalar,
    pub capsule: recovery::Witness,
}

pub struct Output<'ctx> {
    pub note: Note<Var<'ctx, Scalar>>,
    pub commitment: Var<'ctx, Scalar>,
    pub capsule: recovery::Capsule<Var<'ctx, Scalar>>,
}

/// Both outputs bind recovery capsules; only sender-owned change may have zero amount.
pub fn constrain_output<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    asset: &Var<'ctx, Scalar>,
    address: &Address<Var<'ctx, Scalar>>,
    payload_key: &Point<Var<'ctx, Scalar>>,
    receiver: bool,
    w: &OutputWitness,
) -> Output<'ctx> {
    let note = w.note.witness(ctx);
    decompose(ctx, &note.amount, 128);
    if receiver {
        let _ = note.amount.inv();
    }
    let commitment = Var::witness(ctx, |_| w.commitment.clone());
    params
        .circuit(NOTE, &note.fields(asset, address))
        .assert_eq(&commitment);
    let capsule = recovery::constrain(
        ctx,
        params,
        payload_key,
        &note.amount,
        &note.blinding,
        &w.capsule,
    );
    capsule.commitment.assert_eq(&note.recovery);
    Output {
        note,
        commitment,
        capsule,
    }
}

#[cfg(test)]
mod tests;
