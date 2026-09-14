use crate::{
    encryption::Address,
    group::{self, Point},
    hash::Parameters,
    range::{decompose, less_or_equal},
    recovery, scalar,
    tree::{self, Path, STATE_DEPTH, Tree},
    volume::NOTE_NULLIFIER,
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Field, Ring};

const NOTE: u8 = 15;
const DUMMY_NULLIFIER: u8 = 22;

#[derive(Clone)]
pub struct Note<F> {
    pub blinding: F,
    pub amount: F,
    pub recovery: F,
}
impl<F: Clone> Note<F> {
    fn fields(&self, asset: &F, address: &Address<F>) -> [F; 8] {
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
    fn witness<'ctx>(&self, ctx: Context<'ctx, Scalar>) -> Note<Var<'ctx, Scalar>> {
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
    pub amount: Var<'ctx, Scalar>,
    pub nullifier: Var<'ctx, Scalar>,
    pub rk: Point<Var<'ctx, Scalar>>,
    pub history_required: BoolVar<'ctx, Scalar>,
}

pub fn dummy_nullifier(params: &Parameters, seed: &Scalar, randomizer: &Scalar) -> Scalar {
    params.native(
        DUMMY_NULLIFIER,
        &[seed.clone(), randomizer.clone(), Scalar::one()],
    )
}

/// `None` is the required first input; `Some` is the fixed optional second input.
pub fn constrain_spend<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    shared: &SpendContext<'ctx>,
    w: &SpendWitness,
    optional: Option<&OptionalWitness>,
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
    let anchor = tree::root(ctx, params, Tree::State, commitment, &path);
    let randomizer = var(&w.randomizer);
    let bits = scalar::canonical_bits(ctx, &randomizer);
    let random_point = group::generator().multiply_fixed(&bits);
    let computed_rk = shared
        .ak
        .add(&random_point, &Var::native(group::coefficient_d()));
    let rk = group::witness_subgroup(ctx, &w.rk, &w.rk.cofactor_preimage());
    let nullifier = var(&w.nullifier);
    let dummy = match optional {
        None => {
            real_nullifier.assert_eq(&nullifier);
            anchor.assert_eq(&shared.anchor);
            computed_rk.assert_equal(&rk);
            BoolVar::constant(false)
        }
        Some(optional) => {
            let dummy = BoolVar::witness(ctx, |_| optional.is_dummy);
            let synthetic = params.circuit(
                DUMMY_NULLIFIER,
                &[var(&optional.seed), randomizer, Var::one()],
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
    let positions = decompose(ctx, &path.position, 48);
    let floor = decompose(ctx, &shared.recent_floor, 48);
    let old = !less_or_equal(&floor, &positions);
    let history_required = BoolVar::witness(ctx, |_| w.history_required);
    ((!dummy) & old).assert_eq(&history_required);
    Spend {
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
    capk: &Point<Var<'ctx, Scalar>>,
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
    let capsule = recovery::constrain(ctx, params, capk, &note.amount, &note.blinding, &w.capsule);
    capsule.commitment.assert_eq(&note.recovery);
    Output {
        note,
        commitment,
        capsule,
    }
}

#[cfg(test)]
mod tests;
