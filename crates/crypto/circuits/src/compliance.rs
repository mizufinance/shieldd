use crate::{
    encryption::Address,
    group::{self, Point},
    hash::Parameters,
    range::decompose,
    tree::{self, COMPLIANCE_DEPTH, Path, Tree},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Ring};

use shieldd_sdk_crypto::domains::COMPLIANCE_LEAF as LEAF;

#[derive(Clone)]
pub struct Leaf<F> {
    pub address: Address<F>,
    pub rnk_dh: Point<F>,
    pub rnk_commitment: F,
    pub lifecycle: F,
}

impl<F: Clone> Leaf<F> {
    fn fields(&self, asset: &F) -> [F; 9] {
        [
            self.address.diversified.x.clone(),
            self.address.diversified.y.clone(),
            self.address.transmission.x.clone(),
            self.address.transmission.y.clone(),
            asset.clone(),
            self.rnk_dh.x.clone(),
            self.rnk_dh.y.clone(),
            self.rnk_commitment.clone(),
            self.lifecycle.clone(),
        ]
    }
}
impl Leaf<Scalar> {
    pub fn commitment(&self, params: &Parameters, asset: &Scalar) -> Scalar {
        params.native(LEAF, &self.fields(asset))
    }
}

#[derive(Clone)]
pub struct Witness {
    pub leaf: Leaf<Scalar>,
    pub path: Path<Scalar, COMPLIANCE_DEPTH>,
}

/// Binds every leaf fact, subgroup point, path and enabled active lifecycle.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    w: &Witness,
    asset: &Var<'ctx, Scalar>,
    anchor: &Var<'ctx, Scalar>,
    regulated: &BoolVar<'ctx, Scalar>,
) -> Leaf<Var<'ctx, Scalar>> {
    let point = |p: &Point<Scalar>| {
        let result = group::witness_subgroup(ctx, p, &p.cofactor_preimage());
        result.assert_non_identity();
        result
    };
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    let leaf = Leaf {
        address: Address {
            diversified: point(&w.leaf.address.diversified),
            transmission: point(&w.leaf.address.transmission),
        },
        rnk_dh: point(&w.leaf.rnk_dh),
        rnk_commitment: var(&w.leaf.rnk_commitment),
        lifecycle: var(&w.leaf.lifecycle),
    };
    let hash = params.circuit(LEAF, &leaf.fields(asset));
    let root = tree::root(ctx, params, Tree::Compliance, hash, &w.path.witness(ctx));
    (regulated.var().clone() * &(root - anchor)).assert_eq(&Var::zero());
    let bits = decompose(ctx, &leaf.lifecycle, 131);
    // Low three bits are status; the middle 64 are authenticated freeze generation.
    for i in 0..3 {
        let expected = if i == 0 { Var::one() } else { Var::zero() };
        (regulated.var().clone() * &(bits[i].var().clone() - &expected)).assert_eq(&Var::zero());
    }
    for bit in &bits[67..131] {
        (regulated.var().clone() * bit.var()).assert_eq(&Var::zero());
    }
    leaf
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;

    fn fixture(params: &Parameters) -> (Witness, Scalar, Scalar) {
        let g = group::generator();
        let leaf = Leaf {
            address: Address {
                diversified: g.multiply(&Scalar::from(3)),
                transmission: g.multiply(&Scalar::from(5)),
            },
            rnk_dh: g.multiply(&Scalar::from(11)),
            rnk_commitment: Scalar::from(13),
            lifecycle: Scalar::from_limbs([u64::MAX - 6, 7, 0, 0]),
        };
        let asset = Scalar::from(17);
        let siblings =
            std::array::from_fn(|i| std::array::from_fn(|j| Scalar::from((i * 3 + j + 19) as u64)));
        let anchor = tree::native_root(
            params,
            Tree::Compliance,
            leaf.commitment(params, &asset),
            23,
            &siblings,
        );
        (
            Witness {
                leaf,
                path: Path {
                    position: Scalar::from(23),
                    siblings,
                },
            },
            asset,
            anchor,
        )
    }
    fn satisfied(
        params: &Parameters,
        w: &Witness,
        asset: &Scalar,
        anchor: &Scalar,
        regulated: bool,
    ) -> bool {
        let (c, _) = build_with_values(|ctx| {
            let asset = Var::witness(ctx, |_| asset.clone());
            let anchor = Var::witness(ctx, |_| anchor.clone());
            let regulated = BoolVar::witness(ctx, |_| regulated);
            constrain(ctx, params, w, &asset, &anchor, &regulated);
            Vec::new()
        });
        c.is_satisfied()
    }
    #[test]
    fn authenticated_leaf_and_active_lifecycle_reject_mutations_without_erasing_generation() {
        let p = Parameters::load().unwrap();
        let (w, asset, anchor) = fixture(&p);
        assert!(satisfied(&p, &w, &asset, &anchor, true));
        assert!(satisfied(&p, &w, &asset, &anchor, false));
        for i in 0..8 {
            let mut bad = w.clone();
            match i {
                0 => bad.leaf.address.diversified = group::generator(),
                1 => bad.leaf.address.transmission = group::generator(),
                2 => bad.leaf.rnk_dh = group::generator(),
                3 => bad.leaf.rnk_commitment += &Scalar::one(),
                4 => bad.leaf.lifecycle += &Scalar::from(8),
                5 => bad.path.position += &Scalar::one(),
                6 => bad.path.siblings[COMPLIANCE_DEPTH - 1][2] += &Scalar::one(),
                _ => bad.path.position = Scalar::from(1u64 << 32),
            }
            assert!(!satisfied(&p, &bad, &asset, &anchor, true), "mutation {i}");
        }
        for lifecycle in [
            Scalar::zero(),
            Scalar::from(2),
            Scalar::from(7),
            Scalar::one() + &Scalar::from_limbs([0, 8, 0, 0]),
            Scalar::from_limbs([0, 0, 8, 0]),
        ] {
            let mut bad = w.clone();
            bad.leaf.lifecycle = lifecycle.clone();
            let root = tree::native_root(
                &p,
                Tree::Compliance,
                bad.leaf.commitment(&p, &asset),
                23,
                &bad.path.siblings,
            );
            assert!(!satisfied(&p, &bad, &asset, &root, true));
            assert_eq!(
                satisfied(&p, &bad, &asset, &root, false),
                lifecycle < Scalar::from_limbs([0, 0, 8, 0])
            );
        }
        for i in 0..3 {
            let mut bad = w.clone();
            match i {
                0 => bad.leaf.address.diversified = Point::identity(),
                1 => bad.leaf.address.transmission = Point::identity(),
                _ => bad.leaf.rnk_dh = Point::identity(),
            }
            assert!(!satisfied(&p, &bad, &asset, &anchor, false));
        }
        assert!(!satisfied(&p, &w, &(asset + &Scalar::one()), &anchor, true));
        assert!(!satisfied(
            &p,
            &w,
            &Scalar::from(17),
            &(anchor + &Scalar::one()),
            true
        ));
    }
}
