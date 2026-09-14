use crate::{
    encoding,
    group::{self, Point},
    hash::Parameters,
    scalar,
};
use anyhow::{Result, ensure};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Ring};

// Domains 1–9 belong to trees and volume accumulators. Point hashes bind both coordinates.
const STREAM: u8 = 10;
const SHARED_SECRET: u8 = 11;
const DETECTION: u8 = 12;
const CONFIRMATION: u8 = 13;
const SALT: u8 = 14;

#[derive(Clone)]
pub struct Address<F> {
    pub diversified: Point<F>,
    pub transmission: Point<F>,
}

#[derive(Clone)]
pub struct Policy<F> {
    pub ring_id: F,
    pub policy_id: F,
    pub resource: F,
    pub permission: F,
    pub timestamp: F,
}

/// Points must have passed the caller's subgroup and ownership/registry checks.
#[derive(Clone)]
pub struct Shared<F, B> {
    pub flagged: B,
    pub nonce_root: F,
    pub asset: F,
    pub amount: F,
    pub issuer: Point<F>,
    pub sender_ack: Point<F>,
    pub receiver_ack: Point<F>,
    pub sender: Address<F>,
    pub receiver: Address<F>,
    pub policy: Policy<F>,
}

#[derive(Clone)]
pub struct Core<F> {
    pub epk: Point<F>,
    pub c2: F,
    pub confirmation: F,
    pub ciphertext: F,
}

#[derive(Clone)]
pub struct Extended<F> {
    pub epk: Point<F>,
    pub c2: F,
    pub ciphertext: [F; 3],
}

#[derive(Clone)]
pub struct Metadata<F> {
    pub policy: Policy<F>,
    /// Sender core/ext, then output core/ext; detection salt is encrypted separately.
    pub salts: [F; 4],
}

#[derive(Clone)]
pub struct Published<F> {
    pub detection: [F; 4],
    pub sender_core: Core<F>,
    pub sender_ext: Extended<F>,
    pub output_core: Core<F>,
    pub output_ext: Extended<F>,
    pub metadata: Metadata<F>,
}

impl<F: Clone> Published<F> {
    /// Complete ordered public payload for the enclosing statement hash.
    pub fn fields(&self) -> Vec<F> {
        let mut fields = self.detection.to_vec();
        let mut core = |tier: &Core<F>| {
            fields.extend([
                tier.epk.x.clone(),
                tier.epk.y.clone(),
                tier.c2.clone(),
                tier.confirmation.clone(),
                tier.ciphertext.clone(),
            ])
        };
        core(&self.sender_core);
        core(&self.output_core);
        for tier in [&self.sender_ext, &self.output_ext] {
            fields.extend([tier.epk.x.clone(), tier.epk.y.clone(), tier.c2.clone()]);
            fields.extend(tier.ciphertext.clone());
        }
        let p = &self.metadata.policy;
        fields.extend([
            p.ring_id.clone(),
            p.policy_id.clone(),
            p.resource.clone(),
            p.permission.clone(),
            p.timestamp.clone(),
        ]);
        fields.extend(self.metadata.salts.clone());
        fields
    }
}

#[derive(Clone)]
pub struct Witness {
    /// Independent nonzero canonical scalars in sender core/ext, output core/ext order.
    pub ephemeral: [Scalar; 4],
    pub published: Published<Scalar>,
}

pub(crate) fn native_secret(params: &Parameters, point: &Point<Scalar>) -> Scalar {
    params.native(SHARED_SECRET, &[point.x.clone(), point.y.clone()])
}
pub(crate) fn native_stream(params: &Parameters, seed: &Scalar, counter: usize) -> Scalar {
    params.native(STREAM, &[seed.clone(), Scalar::from(counter as u64)])
}
fn native_address(address: &Address<Scalar>) -> [Scalar; 3] {
    encoding::pack_bytes(
        &[
            encoding::point_bytes(&address.diversified),
            encoding::point_bytes(&address.transmission),
        ]
        .concat(),
    )
    .try_into()
    .expect("64-byte address packs into three words")
}

/// Fixture-side encryption; the caller supplies independently sampled ephemeral scalars and seeds.
pub fn encrypt(
    params: &Parameters,
    shared: &Shared<Scalar, bool>,
    ephemeral: [Scalar; 4],
    seeds: [Scalar; 4],
) -> Result<Witness> {
    for r in &ephemeral {
        ensure!(
            *r != Scalar::zero() && *r < Scalar::from_limbs(scalar::ORDER),
            "ephemeral scalar must be canonical and nonzero"
        );
    }
    let salts: [Scalar; 5] = std::array::from_fn(|i| {
        params.native(SALT, &[shared.nonce_root.clone(), Scalar::from(i as u64)])
    });
    let epks = ephemeral.each_ref().map(|r| group::generator().multiply(r));
    let issuer = ephemeral.each_ref().map(|r| shared.issuer.multiply(r));
    let users: [Point<Scalar>; 4] = std::array::from_fn(|i| {
        if i < 2 {
            &shared.sender_ack
        } else {
            &shared.receiver_ack
        }
        .multiply(&ephemeral[i])
    });
    let selected = if shared.flagged { &issuer } else { &users };
    let core = |i: usize| Core {
        epk: epks[i].clone(),
        c2: seeds[i].clone() + &native_secret(params, &selected[i]),
        confirmation: params.native(
            CONFIRMATION,
            &[
                seeds[i].clone(),
                epks[i].x.clone(),
                epks[i].y.clone(),
                salts[i + 1].clone(),
            ],
        ),
        ciphertext: shared.amount.clone() + &native_stream(params, &seeds[i], 0),
    };
    let ext = |i: usize, address: &Address<Scalar>| {
        let words = native_address(address);
        Extended {
            epk: epks[i].clone(),
            c2: seeds[i].clone() + &native_secret(params, &selected[i]),
            ciphertext: std::array::from_fn(|j| {
                words[j].clone() + &native_stream(params, &seeds[i], j)
            }),
        }
    };
    let detection_seed = params.native(
        DETECTION,
        &[
            issuer[0].x.clone(),
            issuer[0].y.clone(),
            epks[0].x.clone(),
            epks[0].y.clone(),
        ],
    );
    let plaintext = [
        shared.asset.clone(),
        salts[0].clone(),
        Scalar::from(u64::from(shared.flagged)),
        Scalar::zero(),
    ];
    let published = Published {
        detection: std::array::from_fn(|i| {
            plaintext[i].clone() + &native_stream(params, &detection_seed, i)
        }),
        sender_core: core(0),
        sender_ext: ext(1, &shared.receiver),
        output_core: core(2),
        output_ext: ext(3, &shared.sender),
        metadata: Metadata {
            policy: shared.policy.clone(),
            salts: std::array::from_fn(|i| salts[i + 1].clone()),
        },
    };
    Ok(Witness {
        ephemeral,
        published,
    })
}

pub(crate) fn secret<'ctx>(
    params: &Parameters,
    point: &Point<Var<'ctx, Scalar>>,
) -> Var<'ctx, Scalar> {
    params.circuit(SHARED_SECRET, &[point.x.clone(), point.y.clone()])
}
pub(crate) fn stream<'ctx>(
    params: &Parameters,
    seed: &Var<'ctx, Scalar>,
    counter: usize,
) -> Var<'ctx, Scalar> {
    params.circuit(
        STREAM,
        &[seed.clone(), Var::native(Scalar::from(counter as u64))],
    )
}

/// Constrains unconditional detection, all four audit tiers and their metadata.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    shared: &Shared<Var<'ctx, Scalar>, BoolVar<'ctx, Scalar>>,
    w: &Witness,
) -> Published<Var<'ctx, Scalar>> {
    let var = |value: &Scalar| Var::witness(ctx, |_| value.clone());
    let point = |p: &Point<Scalar>| Point {
        x: var(&p.x),
        y: var(&p.y),
    };
    let core = |tier: &Core<Scalar>| Core {
        epk: point(&tier.epk),
        c2: var(&tier.c2),
        confirmation: var(&tier.confirmation),
        ciphertext: var(&tier.ciphertext),
    };
    let ext = |tier: &Extended<Scalar>| Extended {
        epk: point(&tier.epk),
        c2: var(&tier.c2),
        ciphertext: tier.ciphertext.each_ref().map(var),
    };
    let policy = &w.published.metadata.policy;
    let out = Published {
        detection: w.published.detection.each_ref().map(var),
        sender_core: core(&w.published.sender_core),
        sender_ext: ext(&w.published.sender_ext),
        output_core: core(&w.published.output_core),
        output_ext: ext(&w.published.output_ext),
        metadata: Metadata {
            policy: Policy {
                ring_id: var(&policy.ring_id),
                policy_id: var(&policy.policy_id),
                resource: var(&policy.resource),
                permission: var(&policy.permission),
                timestamp: var(&policy.timestamp),
            },
            salts: w.published.metadata.salts.each_ref().map(var),
        },
    };
    let nonce = &shared.nonce_root;
    let salts: [Var<'ctx, Scalar>; 5] = std::array::from_fn(|i| {
        params.circuit(SALT, &[nonce.clone(), Var::native(Scalar::from(i as u64))])
    });
    let generator = group::generator();
    let epks = [
        &out.sender_core.epk,
        &out.sender_ext.epk,
        &out.output_core.epk,
        &out.output_ext.epk,
    ];
    let mut detection_secret = None;
    let mut selected_secrets = Vec::with_capacity(4);
    for i in 0..4 {
        let bits = scalar::canonical_bits(ctx, &var(&w.ephemeral[i]));
        generator.multiply_fixed(&bits).assert_equal(epks[i]);
        epks[i].assert_non_identity();
        let user = if i < 2 {
            &shared.sender_ack
        } else {
            &shared.receiver_ack
        };
        // Tier zero also needs the issuer DH for unconditional detection.
        if i == 0 {
            let issuer = shieldd_hinted_jubjub_screen::multiply_dynamic(ctx, &shared.issuer, &bits);
            let user = shieldd_hinted_jubjub_screen::multiply_dynamic(ctx, user, &bits);
            selected_secrets.push(Point {
                x: shared.flagged.select(&issuer.x, &user.x),
                y: shared.flagged.select(&issuer.y, &user.y),
            });
            detection_secret = Some(issuer);
        } else {
            let selected = Point {
                x: shared.flagged.select(&shared.issuer.x, &user.x),
                y: shared.flagged.select(&shared.issuer.y, &user.y),
            };
            selected_secrets.push(shieldd_hinted_jubjub_screen::multiply_dynamic(ctx, &selected, &bits));
        }
    }
    let detection_secret = detection_secret.expect("tier zero");
    let detection_seed = params.circuit(
        DETECTION,
        &[
            detection_secret.x.clone(),
            detection_secret.y.clone(),
            epks[0].x.clone(),
            epks[0].y.clone(),
        ],
    );
    let plaintext = [
        shared.asset.clone(),
        salts[0].clone(),
        shared.flagged.var().clone(),
        Var::zero(),
    ];
    for i in 0..4 {
        (plaintext[i].clone() + &stream(params, &detection_seed, i)).assert_eq(&out.detection[i]);
    }
    for (i, tier) in [(0, &out.sender_core), (2, &out.output_core)] {
        let seed = tier.c2.clone() - &secret(params, &selected_secrets[i]);
        params
            .circuit(
                CONFIRMATION,
                &[
                    seed.clone(),
                    tier.epk.x.clone(),
                    tier.epk.y.clone(),
                    salts[i + 1].clone(),
                ],
            )
            .assert_eq(&tier.confirmation);
        (shared.amount.clone() + &stream(params, &seed, 0)).assert_eq(&tier.ciphertext);
    }
    for (i, tier, address) in [
        (1, &out.sender_ext, &shared.receiver),
        (3, &out.output_ext, &shared.sender),
    ] {
        let seed = tier.c2.clone() - &secret(params, &selected_secrets[i]);
        let words = encoding::address_words(ctx, &address.diversified, &address.transmission);
        for (j, word) in words.into_iter().enumerate() {
            (word + &stream(params, &seed, j)).assert_eq(&tier.ciphertext[j]);
        }
    }
    let a = &out.metadata.policy;
    let b = &shared.policy;
    for (a, b) in [
        (&a.ring_id, &b.ring_id),
        (&a.policy_id, &b.policy_id),
        (&a.resource, &b.resource),
        (&a.permission, &b.permission),
        (&a.timestamp, &b.timestamp),
    ] {
        a.assert_eq(b);
    }
    for i in 0..4 {
        out.metadata.salts[i].assert_eq(&salts[i + 1]);
    }
    out
}

#[cfg(test)]
mod tests;
