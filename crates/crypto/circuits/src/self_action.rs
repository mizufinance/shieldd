//! Authenticated owner and routing context shared by reshape and withdrawal.
use crate::{
    authorization, compliance, group::Point, hash::Parameters, map::Generators, note, registry,
    routing,
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};

#[derive(Clone)]
pub struct Witness {
    pub spend_auth: note::SpendAuthorization,
    pub anchor: Scalar,
    pub asset_anchor: Scalar,
    pub compliance_anchor: Scalar,
    pub asset: Scalar,
    pub regulated: bool,
    pub recent_floor: Scalar,
    pub balance_blinding: Scalar,
    pub routing_nonce: Scalar,
    pub routing: routing::SingleWitness,
    pub auth: authorization::Witness,
    pub registry: registry::Witness,
    pub sender: compliance::Witness,
}
pub struct Facts<'a> {
    pub rk: Point<Var<'a, Scalar>>,
    pub asset_anchor: Var<'a, Scalar>,
    pub compliance_anchor: Var<'a, Scalar>,
    pub regulated: BoolVar<'a, Scalar>,
    pub sender: compliance::Leaf<Var<'a, Scalar>>,
    pub registry: registry::Leaf<Var<'a, Scalar>>,
    pub auth: authorization::Output<'a>,
    pub spend: note::SpendContext<'a>,
    pub blinding: Var<'a, Scalar>,
    pub routing: routing::Single<'a>,
}
pub fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    p: &Parameters,
    g: &Generators,
    w: &Witness,
) -> Facts<'a> {
    let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
    let asset = var(&w.asset);
    let asset_anchor = var(&w.asset_anchor);
    let compliance_anchor = var(&w.compliance_anchor);
    let regulated = BoolVar::witness(ctx, |_| w.regulated);
    let registry = registry::constrain(ctx, p, &w.registry, &asset, &asset_anchor, &regulated);
    let sender = compliance::constrain(ctx, p, &w.sender, &asset, &compliance_anchor, &regulated);
    let ring = Point {
        x: regulated.select(&registry.ring.x, &Var::native(g.unregulated_ring.x.clone())),
        y: regulated.select(&registry.ring.y, &Var::native(g.unregulated_ring.y.clone())),
    };
    let auth = authorization::constrain(
        ctx,
        p,
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
    let routing = routing::constrain_single(
        ctx,
        p,
        &w.routing,
        &regulated,
        &sender.address.transmission,
        &var(&w.routing_nonce),
    );
    let (rk, randomizer) = note::constrain_authorization(ctx, &auth.ak, &w.spend_auth);
    let spend = note::SpendContext {
        address: sender.address.clone(),
        asset,
        nk: auth.effective_nk.clone(),
        randomizer,
        anchor: var(&w.anchor),
        recent_floor: var(&w.recent_floor),
    };
    Facts {
        rk,
        asset_anchor,
        compliance_anchor,
        regulated,
        sender,
        registry,
        auth,
        spend,
        blinding: var(&w.balance_blinding),
        routing,
    }
}
