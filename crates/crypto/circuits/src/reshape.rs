//! Self-owned note reshaping with exact conservation and private input padding.
use crate::{
    balance,
    group::Point,
    hash::Parameters,
    map::Generators,
    note, self_action,
    transfer::{OutputStatement, SpendStatement},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use shieldd_sdk_crypto::domains;

#[derive(Clone)]
pub struct MergeInput {
    pub spend: note::SpendWitness,
    pub padding: note::OptionalWitness,
}
#[derive(Clone)]
pub enum Notes {
    Split {
        input: note::SpendWitness,
        outputs: [note::OutputWitness; 8],
    },
    Merge {
        inputs: [MergeInput; 8],
        output: note::OutputWitness,
    },
}
#[derive(Clone)]
pub struct Witness {
    pub owner: self_action::Witness,
    pub notes: Notes,
}
#[derive(Clone)]
pub struct Statement<F> {
    pub anchor: F,
    pub outputs: Vec<OutputStatement<F>>,
    pub balance: Point<F>,
    pub asset_anchor: F,
    pub compliance_anchor: F,
    pub routing_tag: F,
    pub routing_parameter: F,
    pub recent_floor: F,
    pub spends: Vec<SpendStatement<F>>,
}
impl<F: Clone> Statement<F> {
    pub fn domain(&self) -> u8 {
        match (self.spends.len(), self.outputs.len()) {
            (1, 8) => domains::RESHAPE_ONE_TO_EIGHT_STATEMENT,
            (8, 1) => domains::RESHAPE_EIGHT_TO_ONE_STATEMENT,
            _ => panic!("unsupported reshape relation shape"),
        }
    }
    pub fn fields(&self) -> Vec<F> {
        let mut f = vec![self.anchor.clone()];
        for o in &self.outputs {
            f.extend([o.note.clone(), o.recovery.clone()]);
        }
        f.extend([
            self.balance.x.clone(),
            self.balance.y.clone(),
            self.asset_anchor.clone(),
            self.compliance_anchor.clone(),
            self.routing_tag.clone(),
            self.routing_parameter.clone(),
            self.recent_floor.clone(),
        ]);
        for s in &self.spends {
            f.extend([
                s.nullifier.clone(),
                s.rk.x.clone(),
                s.rk.y.clone(),
                s.history_required.clone(),
            ]);
        }
        f
    }
}
impl Statement<Scalar> {
    pub fn digest(&self, p: &Parameters) -> Scalar {
        p.native(self.domain(), &self.fields())
    }
}
impl Witness {
    pub fn statement(&self, g: &Generators) -> Statement<Scalar> {
        let (inputs, outputs): (Vec<_>, Vec<_>) = match &self.notes {
            Notes::Split { input, outputs } => (vec![input], outputs.iter().collect()),
            Notes::Merge { inputs, output } => {
                (inputs.iter().map(|i| &i.spend).collect(), vec![output])
            }
        };
        let w = &self.owner;
        Statement {
            anchor: w.anchor.clone(),
            outputs: outputs
                .iter()
                .map(|o| OutputStatement {
                    note: o.commitment.clone(),
                    recovery: o.capsule.capsule.commitment.clone(),
                })
                .collect(),
            balance: g.blinding.multiply(&w.balance_blinding),
            asset_anchor: w.asset_anchor.clone(),
            compliance_anchor: w.compliance_anchor.clone(),
            routing_tag: w.routing.tag.clone(),
            routing_parameter: w.routing.parameter_set.clone(),
            recent_floor: w.recent_floor.clone(),
            spends: inputs
                .iter()
                .map(|s| SpendStatement {
                    nullifier: s.nullifier.clone(),
                    rk: s.rk.clone(),
                    history_required: Scalar::from(u64::from(s.history_required)),
                })
                .collect(),
        }
    }
}

pub fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    p: &Parameters,
    g: &Generators,
    w: &Witness,
    claimed: &Scalar,
) -> Vec<Var<'a, Scalar>> {
    let f = self_action::constrain(ctx, p, g, &w.owner);
    let payload_key = crate::group::Point {
        x: f.regulated.select(
            &f.registry.audit.payload.x,
            &Var::native(g.unregulated_ring.x.clone()),
        ),
        y: f.regulated.select(
            &f.registry.audit.payload.y,
            &Var::native(g.unregulated_ring.y.clone()),
        ),
    };
    let output = |w| {
        note::constrain_output(
            ctx,
            p,
            &f.spend.asset,
            &f.sender.address,
            &payload_key,
            false,
            w,
        )
    };
    let (spends, outputs): (Vec<_>, Vec<_>) = match &w.notes {
        Notes::Split { input, outputs } => (
            vec![note::constrain_spend(ctx, p, &f.spend, input, None)],
            outputs.iter().map(output).collect(),
        ),
        Notes::Merge {
            inputs,
            output: out,
        } => {
            let mut previous_dummy = BoolVar::constant(false);

            let spends = inputs
                .iter()
                .enumerate()
                .map(|(i, input)| {
                    let spend = note::constrain_spend(
                        ctx,
                        p,
                        &f.spend,
                        &input.spend,
                        Some((&input.padding, note::Padding::Reshape(i))),
                    );
                    let dummy = spend.is_dummy.clone();
                    if i < 2 {
                        dummy.assert_eq(&BoolVar::constant(false));
                    }
                    (previous_dummy.clone() & !dummy.clone()).assert_eq(&BoolVar::constant(false));
                    previous_dummy = dummy;
                    spend
                })
                .collect();
            (spends, vec![output(out)])
        }
    };
    let balance = balance::conserve(
        ctx,
        g,
        &spends.iter().map(|s| s.amount.clone()).collect::<Vec<_>>(),
        &outputs
            .iter()
            .map(|o| o.note.amount.clone())
            .collect::<Vec<_>>(),
        &f.blinding,
    );
    let s = Statement {
        anchor: f.spend.anchor,
        outputs: outputs
            .iter()
            .map(|o| OutputStatement {
                note: o.commitment.clone(),
                recovery: o.capsule.commitment.clone(),
            })
            .collect(),
        balance,
        asset_anchor: f.asset_anchor,
        compliance_anchor: f.compliance_anchor,
        routing_tag: f.routing.tag,
        routing_parameter: f.routing.parameter_set,
        recent_floor: f.spend.recent_floor,
        spends: spends
            .iter()
            .map(|s| SpendStatement {
                nullifier: s.nullifier.clone(),
                rk: s.rk.clone(),
                history_required: s.history_required.var().clone(),
            })
            .collect(),
    };
    let digest = Var::witness(ctx, |_| claimed.clone());
    p.circuit(s.domain(), &s.fields()).assert_eq(&digest);
    vec![digest, f.blinding]
}
#[cfg(test)]
mod tests;
