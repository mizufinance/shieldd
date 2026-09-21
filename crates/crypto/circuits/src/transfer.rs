use crate::{
    audit, authorization, balance, compliance,
    encryption::{self, Address, Policy, Published},
    group::Point,
    hash::Parameters,
    map::Generators,
    note,
    range::is_zero,
    registry, routing, volume,
};
use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Ring};

pub use shieldd_sdk_crypto::domains::TRANSFER_STATEMENT as STATEMENT_DOMAIN;
pub const STATEMENT_FIELDS: usize = 69;

#[derive(Clone)]
pub struct Witness {
    pub anchor: Scalar,
    pub asset_anchor: Scalar,
    pub compliance_anchor: Scalar,
    pub asset: Scalar,
    pub regulated: bool,
    pub timestamp: Scalar,
    pub recent_floor: Scalar,
    pub nonce_root: Scalar,
    pub balance_blinding: Scalar,
    pub auth: authorization::Witness,
    pub registry: registry::Witness,
    pub sender: compliance::Witness,
    pub receiver: compliance::Witness,
    pub spends: [note::SpendWitness; 2],
    pub optional: note::OptionalWitness,
    pub outputs: [note::OutputWitness; 2],
    pub volume: volume::Witness,
    pub encryption: encryption::Witness,
    pub routing: routing::Witness,
}

#[derive(Clone)]
pub struct SpendStatement<F> {
    pub nullifier: F,
    pub rk: Point<F>,
    pub history_required: F,
}
#[derive(Clone)]
pub struct OutputStatement<F> {
    pub note: F,
    pub recovery: F,
}
#[derive(Clone)]
pub struct VolumeStatement<F> {
    pub nullifier: F,
    pub commitment: F,
    pub day_start: F,
    pub context: F,
}
#[derive(Clone)]
pub struct Statement<F> {
    pub anchor: F,
    pub outputs: [OutputStatement<F>; 2],
    pub balance: Point<F>,
    pub routing_tags: [F; 2],
    pub routing_parameter: F,
    pub recent_floor: F,
    pub volume: VolumeStatement<F>,
    pub spends: [SpendStatement<F>; 2],
    pub asset_anchor: F,
    pub compliance_anchor: F,
    pub audit: Published<F>,
    pub timestamp: F,
}
impl<F: Clone> Statement<F> {
    /// Canonical Transfer statement order; points bind both affine coordinates.
    pub fn fields(&self) -> [F; STATEMENT_FIELDS] {
        let mut f = vec![self.anchor.clone()];
        for o in &self.outputs {
            f.extend([o.note.clone(), o.recovery.clone()]);
        }
        f.extend([self.balance.x.clone(), self.balance.y.clone()]);
        f.extend(self.routing_tags.clone());
        f.extend([
            self.routing_parameter.clone(),
            self.recent_floor.clone(),
            self.volume.nullifier.clone(),
            self.volume.commitment.clone(),
            self.volume.day_start.clone(),
            self.volume.context.clone(),
        ]);
        for s in &self.spends {
            f.extend([
                s.nullifier.clone(),
                s.rk.x.clone(),
                s.rk.y.clone(),
                s.history_required.clone(),
            ]);
        }
        f.extend([self.asset_anchor.clone(), self.compliance_anchor.clone()]);
        f.extend(self.audit.detection.clone());
        for (core, extended) in [
            (&self.audit.sender_core, &self.audit.sender_ext),
            (&self.audit.output_core, &self.audit.output_ext),
        ] {
            f.extend([
                core.epk.x.clone(),
                core.epk.y.clone(),
                core.c2.clone(),
                core.ciphertext.clone(),
            ]);
            f.extend([
                extended.epk.x.clone(),
                extended.epk.y.clone(),
                extended.c2.clone(),
            ]);
            f.extend(extended.ciphertext.clone());
        }
        let p = &self.audit.metadata.policy;
        f.extend([
            self.timestamp.clone(),
            self.audit.sender_core.confirmation.clone(),
            self.audit.output_core.confirmation.clone(),
            p.ring_id.clone(),
            p.policy_id.clone(),
            p.resource.clone(),
            p.permission.clone(),
        ]);
        f.extend(self.audit.metadata.salts.clone());
        f.push(self.audit.metadata.audit_epoch.clone());
        for ciphertext in &self.audit.ownership {
            f.extend(ciphertext.fields());
        }
        f.try_into().unwrap_or_else(|v: Vec<F>| {
            panic!("native Transfer expected 69 fields, got {}", v.len())
        })
    }
}

pub fn empty_policy() -> Scalar {
    crate::encoding::field(&shieldd_sdk_crypto::poseidon::policy_identifier(b""))
}
pub fn amount(value: &Scalar) -> Result<u128> {
    let bytes = value.encode();
    ensure!(bytes[..16].iter().all(|b| *b == 0), "amount exceeds u128");
    Ok(u128::from_be_bytes(bytes[16..].try_into()?))
}
pub fn address_fields<F: Clone>(a: &Address<F>) -> [F; 4] {
    [
        a.diversified.x.clone(),
        a.diversified.y.clone(),
        a.transmission.x.clone(),
        a.transmission.y.clone(),
    ]
}

pub fn statement(
    params: &Parameters,
    generators: &Generators,
    w: &Witness,
) -> Result<Statement<Scalar>> {
    Ok(Statement {
        anchor: w.anchor.clone(),
        outputs: std::array::from_fn(|i| OutputStatement {
            note: w.outputs[i].commitment.clone(),
            recovery: w.outputs[i].capsule.capsule.commitment.clone(),
        }),
        balance: balance::native(
            params,
            generators,
            &w.asset,
            [
                amount(&w.spends[0].note.amount)?,
                amount(&w.spends[1].note.amount)?,
            ],
            [
                amount(&w.outputs[0].note.amount)?,
                amount(&w.outputs[1].note.amount)?,
            ],
            &w.balance_blinding,
        )?,
        routing_tags: w.routing.tags.clone(),
        routing_parameter: w.routing.parameter_set.clone(),
        recent_floor: w.recent_floor.clone(),
        volume: VolumeStatement {
            nullifier: w.volume.nullifier.clone(),
            commitment: w.volume.commitment.clone(),
            day_start: w.volume.day_start.clone(),
            context: Scalar::from(u64::from(w.volume.proof_context)),
        },
        spends: std::array::from_fn(|i| SpendStatement {
            nullifier: w.spends[i].nullifier.clone(),
            rk: w.spends[i].rk.clone(),
            history_required: Scalar::from(u64::from(w.spends[i].history_required)),
        }),
        asset_anchor: w.asset_anchor.clone(),
        compliance_anchor: w.compliance_anchor.clone(),
        audit: w.encryption.published.clone(),
        timestamp: w.timestamp.clone(),
    })
}

/// Returns the sole public statement and the same constrained blinding used by the committed-input block.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    generators: &Generators,
    w: &Witness,
    claimed_statement: &Scalar,
) -> Vec<Var<'ctx, Scalar>> {
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    let anchor = var(&w.anchor);
    let asset_anchor = var(&w.asset_anchor);
    let compliance_anchor = var(&w.compliance_anchor);
    let asset = var(&w.asset);
    let timestamp = var(&w.timestamp);
    let recent_floor = var(&w.recent_floor);
    let nonce = var(&w.nonce_root);
    let blinding = var(&w.balance_blinding);
    let regulated = BoolVar::witness(ctx, |_| w.regulated);
    let leaf = registry::constrain(ctx, params, &w.registry, &asset, &asset_anchor, &regulated);
    let select_point = |p: &Point<Var<'ctx, Scalar>>, fixed: &Point<Scalar>| Point {
        x: regulated.select(&p.x, &Var::native(fixed.x.clone())),
        y: regulated.select(&p.y, &Var::native(fixed.y.clone())),
    };
    let issuer = select_point(&leaf.dk, &generators.unregulated_dk);
    issuer.assert_non_identity();
    let ring = select_point(&leaf.ring, &generators.unregulated_ring);
    let select_policy = |v: &Var<'ctx, Scalar>| regulated.select(v, &Var::native(empty_policy()));
    let policy = Policy {
        ring_id: select_policy(&leaf.ring_id),
        policy_id: select_policy(&leaf.policy_id),
        resource: select_policy(&leaf.resource),
        permission: select_policy(&leaf.permission),
        timestamp: timestamp.clone(),
    };
    let sender = compliance::constrain(
        ctx,
        params,
        &w.sender,
        &asset,
        &compliance_anchor,
        &regulated,
    );
    let receiver = compliance::constrain(
        ctx,
        params,
        &w.receiver,
        &asset,
        &compliance_anchor,
        &regulated,
    );
    let auth = authorization::constrain(
        ctx,
        params,
        &w.auth,
        &authorization::Shared {
            address: sender.address.clone(),
            asset: asset.clone(),
            rnk_dh: sender.rnk_dh.clone(),
            ring,
            regulated: regulated.clone(),
            registered_rnk_commitment: sender.rnk_commitment.clone(),
        },
    );
    let spend_context = note::SpendContext {
        address: sender.address.clone(),
        asset: asset.clone(),
        nk: auth.effective_nk,
        ak: auth.ak,
        anchor: anchor.clone(),
        recent_floor: recent_floor.clone(),
    };
    let spends = [
        note::constrain_spend(ctx, params, &spend_context, &w.spends[0], None),
        note::constrain_spend(
            ctx,
            params,
            &spend_context,
            &w.spends[1],
            Some((&w.optional, note::Padding::Transfer)),
        ),
    ];
    let outputs = [
        note::constrain_output(
            ctx,
            params,
            &asset,
            &receiver.address,
            &receiver.capk,
            true,
            &w.outputs[0],
        ),
        note::constrain_output(
            ctx,
            params,
            &asset,
            &sender.address,
            &sender.capk,
            false,
            &w.outputs[1],
        ),
    ];
    let sender_fields = address_fields(&sender.address);
    let receiver_fields = address_fields(&receiver.address);
    let same_address = sender_fields
        .iter()
        .zip(&receiver_fields)
        .fold(BoolVar::constant(true), |same, (a, b)| {
            same & is_zero(ctx, &(a.clone() - b))
        });
    let external = !same_address;
    let volume = volume::constrain(
        ctx,
        params,
        &w.volume,
        &volume::Shared {
            timestamp: timestamp.clone(),
            eligible_ordinary: regulated.clone() & external.clone(),
            sender_address: sender_fields,
            asset: asset.clone(),
            outbound: outputs[0].note.amount.clone(),
            daily_limit: leaf.daily_limit,
            anchor: anchor.clone(),
            nk: auth.nk,
            padding_seed: nonce.clone(),
        },
    );
    ((volume.proof_context.clone() - &Var::one()) * external.var()).assert_eq(&Var::zero());
    let audit = encryption::constrain(
        ctx,
        params,
        &encryption::Shared {
            flagged: volume.flagged,
            nonce_root: nonce.clone(),
            asset: asset.clone(),
            amount: outputs[0].note.amount.clone(),
            detection_key: issuer,
            audit: audit::Keys {
                epoch: regulated.select(&leaf.audit.epoch, &Var::zero()),
                amount: select_point(&leaf.audit.amount, &generators.unregulated_ring),
                sender: select_point(&leaf.audit.sender, &generators.unregulated_ring),
                receiver: select_point(&leaf.audit.receiver, &generators.unregulated_ring),
                checking: select_point(&leaf.audit.checking, &generators.unregulated_ring),
            },
            sender: sender.address.clone(),
            receiver: receiver.address.clone(),
            policy,
        },
        &w.encryption,
    );
    let routing = routing::constrain(
        ctx,
        params,
        &w.routing,
        &regulated,
        &outputs[1].note.amount,
        &sender.address.transmission,
        &receiver.address.transmission,
        &nonce,
    );
    let balance = balance::constrain(
        ctx,
        params,
        generators,
        &asset,
        &std::array::from_fn(|i| spends[i].amount.clone()),
        &std::array::from_fn(|i| outputs[i].note.amount.clone()),
        &blinding,
    );
    let statement = Statement {
        anchor,
        outputs: std::array::from_fn(|i| OutputStatement {
            note: outputs[i].commitment.clone(),
            recovery: outputs[i].capsule.commitment.clone(),
        }),
        balance,
        routing_tags: routing.tags,
        routing_parameter: routing.parameter_set,
        recent_floor,
        volume: VolumeStatement {
            nullifier: volume.nullifier,
            commitment: volume.commitment,
            day_start: volume.day_start,
            context: volume.proof_context,
        },
        spends: std::array::from_fn(|i| SpendStatement {
            nullifier: spends[i].nullifier.clone(),
            rk: spends[i].rk.clone(),
            history_required: spends[i].history_required.var().clone(),
        }),
        asset_anchor,
        compliance_anchor,
        audit,
        timestamp,
    };
    let claimed = var(claimed_statement);
    params
        .circuit(STATEMENT_DOMAIN, &statement.fields())
        .assert_eq(&claimed);
    vec![claimed, blinding]
}

#[cfg(test)]
mod tests;
