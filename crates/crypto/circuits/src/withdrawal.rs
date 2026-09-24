//! Conserving withdrawal with private sender encryption and daily volume enforcement.
use crate::{
    balance, encoding,
    encryption::{self, Address},
    group::{self, Point},
    hash::Parameters,
    map::Generators,
    note,
    range::decompose,
    scalar, self_action,
    transfer::{OutputStatement, SpendStatement, VolumeStatement},
    volume,
};
use anyhow::{Result, ensure};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{Context, Var},
};
use commonware_math::algebra::{Additive, Ring};
use shieldd_sdk_crypto::domains;

#[derive(Clone)]
pub struct Ciphertext<F> {
    pub epk: Point<F>,
    pub c2: F,
    pub confirmation: F,
    pub address: [F; 3],
}
impl<F: Clone> Ciphertext<F> {
    pub fn fields(&self) -> Vec<F> {
        let mut f = vec![
            self.epk.x.clone(),
            self.epk.y.clone(),
            self.c2.clone(),
            self.confirmation.clone(),
        ];
        f.extend(self.address.clone());
        f
    }
}
#[derive(Clone)]
pub struct EncryptionWitness {
    pub ciphertext: Ciphertext<Scalar>,
    pub randomizer: Scalar,
    pub seed: Scalar,
}

/// The caller supplies a validated selected key and fresh independent randomness.
pub fn encrypt(
    p: &Parameters,
    selected_key: &Point<Scalar>,
    address: &Address<Scalar>,
    randomizer: Scalar,
    seed: Scalar,
) -> Result<EncryptionWitness> {
    ensure!(
        randomizer != Scalar::zero() && randomizer < Scalar::from_limbs(scalar::ORDER),
        "invalid withdrawal encryption randomizer"
    );
    let epk = group::generator().multiply(&randomizer);
    let words = encoding::pack_bytes(
        &[
            encoding::point_bytes(&address.diversified),
            encoding::point_bytes(&address.transmission),
        ]
        .concat(),
    );
    let ciphertext = Ciphertext {
        c2: seed.clone() + &encryption::native_secret(p, &selected_key.multiply(&randomizer)),
        confirmation: p.native(
            domains::WITHDRAWAL_CONFIRMATION,
            &[seed.clone(), epk.x.clone(), epk.y.clone()],
        ),
        epk,
        address: std::array::from_fn(|i| {
            words[i].clone() + &encryption::native_stream(p, &seed, i)
        }),
    };
    Ok(EncryptionWitness {
        ciphertext,
        randomizer,
        seed,
    })
}
#[derive(Clone)]
pub struct Witness {
    pub owner: self_action::Witness,
    pub timestamp: Scalar,
    pub amount: Scalar,
    pub effect_hash: [Scalar; 4],
    pub spends: [note::SpendWitness; 2],
    pub optional: note::OptionalWitness,
    pub change: note::OutputWitness,
    pub volume: volume::Witness,
    pub volume_seed: Scalar,
    pub encryption: EncryptionWitness,
}
#[derive(Clone)]
pub struct Statement<F> {
    pub anchor: F,
    pub change: OutputStatement<F>,
    pub balance: Point<F>,
    pub recent_floor: F,
    pub spends: [SpendStatement<F>; 2],
    pub asset_anchor: F,
    pub compliance_anchor: F,
    pub timestamp: F,
    pub asset: F,
    pub amount: F,
    pub effect_hash: [F; 4],
    pub routing_tag: F,
    pub routing_parameter: F,
    pub volume: VolumeStatement<F>,
    pub encryption: Ciphertext<F>,
}
impl<F: Clone> Statement<F> {
    pub fn fields(&self) -> Vec<F> {
        let mut f = vec![
            self.anchor.clone(),
            self.change.note.clone(),
            self.change.recovery.clone(),
            self.balance.x.clone(),
            self.balance.y.clone(),
            self.recent_floor.clone(),
        ];
        for s in &self.spends {
            f.extend([
                s.nullifier.clone(),
                s.rk.x.clone(),
                s.rk.y.clone(),
                s.history_required.clone(),
            ]);
        }
        f.extend([
            self.asset_anchor.clone(),
            self.compliance_anchor.clone(),
            self.timestamp.clone(),
            self.asset.clone(),
            self.amount.clone(),
        ]);
        f.extend(self.effect_hash.clone());
        f.extend([
            self.routing_tag.clone(),
            self.routing_parameter.clone(),
            self.volume.nullifier.clone(),
            self.volume.commitment.clone(),
            self.volume.day_start.clone(),
            self.volume.context.clone(),
        ]);
        f.extend(self.encryption.fields());
        f
    }
}
impl Statement<Scalar> {
    pub fn digest(&self, p: &Parameters) -> Scalar {
        p.native(domains::WITHDRAWAL_STATEMENT, &self.fields())
    }
}
impl Witness {
    pub fn statement(&self, g: &Generators) -> Statement<Scalar> {
        let o = &self.owner;
        Statement {
            anchor: o.anchor.clone(),
            change: OutputStatement {
                note: self.change.commitment.clone(),
                recovery: self.change.capsule.capsule.commitment.clone(),
            },
            balance: g.blinding.multiply(&o.balance_blinding),
            recent_floor: o.recent_floor.clone(),
            spends: self.spends.each_ref().map(|s| SpendStatement {
                nullifier: s.nullifier.clone(),
                rk: s.rk.clone(),
                history_required: Scalar::from(u64::from(s.history_required)),
            }),
            asset_anchor: o.asset_anchor.clone(),
            compliance_anchor: o.compliance_anchor.clone(),
            timestamp: self.timestamp.clone(),
            asset: o.asset.clone(),
            amount: self.amount.clone(),
            effect_hash: self.effect_hash.clone(),
            routing_tag: o.routing.tag.clone(),
            routing_parameter: o.routing.parameter_set.clone(),
            volume: VolumeStatement {
                nullifier: self.volume.nullifier.clone(),
                commitment: self.volume.commitment.clone(),
                day_start: self.volume.day_start.clone(),
                context: Scalar::from(u64::from(self.volume.proof_context)),
            },
            encryption: self.encryption.ciphertext.clone(),
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
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
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
    let timestamp = var(&w.timestamp);
    let amount = var(&w.amount);
    let volume = volume::constrain(
        ctx,
        p,
        &w.volume,
        &volume::Shared {
            timestamp: timestamp.clone(),
            eligible_ordinary: f.regulated.clone(),
            sender_address: crate::transfer::address_fields(&f.sender.address),
            asset: f.spend.asset.clone(),
            outbound: amount.clone(),
            daily_limit: f.registry.daily_limit,
            anchor: f.spend.anchor.clone(),
            nk: f.auth.nk,
            padding_seed: var(&w.volume_seed),
        },
    );
    volume.proof_context.assert_eq(&Var::one());
    let issuer = Point {
        x: f.regulated
            .select(&f.registry.dk.x, &Var::native(g.unregulated_dk.x.clone())),
        y: f.regulated
            .select(&f.registry.dk.y, &Var::native(g.unregulated_dk.y.clone())),
    };
    issuer.assert_non_identity();
    let key = Point {
        x: volume.flagged.select(&issuer.x, &payload_key.x),
        y: volume.flagged.select(&issuer.y, &payload_key.y),
    };
    let e = &w.encryption;
    let ciphertext = Ciphertext {
        epk: Point {
            x: var(&e.ciphertext.epk.x),
            y: var(&e.ciphertext.epk.y),
        },
        c2: var(&e.ciphertext.c2),
        confirmation: var(&e.ciphertext.confirmation),
        address: e.ciphertext.address.each_ref().map(var),
    };
    let bits = scalar::canonical_bits(ctx, &var(&e.randomizer));
    group::generator()
        .multiply_fixed(&bits)
        .assert_equal(&ciphertext.epk);
    ciphertext.epk.assert_non_identity();
    let seed = var(&e.seed);
    (seed.clone() + &encryption::secret(p, &key.multiply_bits(&bits))).assert_eq(&ciphertext.c2);
    p.circuit(
        domains::WITHDRAWAL_CONFIRMATION,
        &[
            seed.clone(),
            ciphertext.epk.x.clone(),
            ciphertext.epk.y.clone(),
        ],
    )
    .assert_eq(&ciphertext.confirmation);
    let words = encoding::address_words(
        ctx,
        &f.sender.address.diversified,
        &f.sender.address.transmission,
    );
    for i in 0..3 {
        (words[i].clone() + &encryption::stream(p, &seed, i)).assert_eq(&ciphertext.address[i]);
    }
    let spends = [
        note::constrain_spend(ctx, p, &f.spend, &w.spends[0], None),
        note::constrain_spend(
            ctx,
            p,
            &f.spend,
            &w.spends[1],
            Some((&w.optional, note::Padding::Withdrawal)),
        ),
    ];
    let change = note::constrain_output(
        ctx,
        p,
        &f.spend.asset,
        &f.sender.address,
        &payload_key,
        false,
        &w.change,
    );
    let balance = balance::conserve(
        ctx,
        g,
        &spends.each_ref().map(|s| s.amount.clone()),
        &[change.note.amount, amount.clone()],
        &f.blinding,
    );
    let effect_hash = w.effect_hash.each_ref().map(|limb| {
        let v = var(limb);
        decompose(ctx, &v, 128);
        v
    });
    let s = Statement {
        anchor: f.spend.anchor,
        change: OutputStatement {
            note: change.commitment,
            recovery: change.capsule.commitment,
        },
        balance,
        recent_floor: f.spend.recent_floor,
        spends: spends.each_ref().map(|s| SpendStatement {
            nullifier: s.nullifier.clone(),
            rk: s.rk.clone(),
            history_required: s.history_required.var().clone(),
        }),
        asset_anchor: f.asset_anchor,
        compliance_anchor: f.compliance_anchor,
        timestamp,
        asset: f.spend.asset,
        amount,
        effect_hash,
        routing_tag: f.routing.tag,
        routing_parameter: f.routing.parameter_set,
        volume: VolumeStatement {
            nullifier: volume.nullifier,
            commitment: volume.commitment,
            day_start: volume.day_start,
            context: volume.proof_context,
        },
        encryption: ciphertext,
    };
    let digest = var(claimed);
    p.circuit(domains::WITHDRAWAL_STATEMENT, &s.fields())
        .assert_eq(&digest);
    vec![digest, f.blinding]
}
#[cfg(test)]
mod tests;
