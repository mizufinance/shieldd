use crate::{
    encoding::canonical_bits,
    group::{self, Point},
    hash::Parameters,
    range::less_or_equal,
    tree::{self, COMPLIANCE_DEPTH, Path, Tree},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::Additive;

const PARAMS: u8 = 23;
const RING: u8 = 24;
const LEAF: u8 = 25;

#[derive(Clone)]
pub struct Leaf<F> {
    pub value: F,
    pub next_index: F,
    pub next_value: F,
    pub dk: Point<F>,
    pub daily_limit: F,
    pub route_policy: F,
    pub ring: Point<F>,
    pub ring_id: F,
    pub policy_id: F,
    pub permission: F,
    pub resource: F,
}
impl<F: Clone> Leaf<F> {
    fn hash(&self, hash: impl Fn(u8, &[F]) -> F) -> F {
        let params = hash(
            PARAMS,
            &[
                self.dk.x.clone(),
                self.dk.y.clone(),
                self.daily_limit.clone(),
                self.route_policy.clone(),
            ],
        );
        let ring = hash(
            RING,
            &[
                self.ring.x.clone(),
                self.ring.y.clone(),
                self.ring_id.clone(),
                self.policy_id.clone(),
                self.permission.clone(),
                self.resource.clone(),
            ],
        );
        hash(
            LEAF,
            &[
                self.value.clone(),
                self.next_index.clone(),
                self.next_value.clone(),
                params,
                ring,
            ],
        )
    }
}
impl Leaf<Scalar> {
    pub fn commitment(&self, params: &Parameters) -> Scalar {
        self.hash(|d, fields| params.native(d, fields))
    }
}

#[derive(Clone)]
pub struct Witness {
    pub leaf: Leaf<Scalar>,
    pub path: Path<Scalar, COMPLIANCE_DEPTH>,
}

/// Authenticates exact regulated membership or the strict unregulated predecessor gap.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    w: &Witness,
    asset: &Var<'ctx, Scalar>,
    anchor: &Var<'ctx, Scalar>,
    regulated: &BoolVar<'ctx, Scalar>,
) -> Leaf<Var<'ctx, Scalar>> {
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    let point = |p: &Point<Scalar>| group::witness_subgroup(ctx, p, &p.cofactor_preimage());
    let l = &w.leaf;
    let leaf = Leaf {
        value: var(&l.value),
        next_index: var(&l.next_index),
        next_value: var(&l.next_value),
        dk: point(&l.dk),
        daily_limit: var(&l.daily_limit),
        route_policy: var(&l.route_policy),
        ring: point(&l.ring),
        ring_id: var(&l.ring_id),
        policy_id: var(&l.policy_id),
        permission: var(&l.permission),
        resource: var(&l.resource),
    };
    let hash = leaf.hash(|domain, inputs| params.circuit(domain, inputs));
    tree::root(ctx, params, Tree::Asset, hash, &w.path.witness(ctx)).assert_eq(anchor);
    (regulated.var().clone() * &(asset.clone() - &leaf.value)).assert_eq(&Var::zero());
    let low = canonical_bits(ctx, &leaf.value);
    let id = canonical_bits(ctx, asset);
    let high = canonical_bits(ctx, &leaf.next_value);
    let in_gap = !less_or_equal(&id, &low) & !less_or_equal(&high, &id);
    ((!regulated.clone()) & !in_gap).assert_eq(&BoolVar::constant(false));
    leaf
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    use commonware_math::algebra::Ring;

    fn fixture(p: &Parameters) -> (Witness, Scalar) {
        let g = group::generator();
        let leaf = Leaf {
            value: Scalar::from(7),
            next_index: Scalar::from(17),
            next_value: Scalar::from(23),
            dk: g.multiply(&Scalar::from(3)),
            daily_limit: Scalar::from(100),
            route_policy: Scalar::from(29),
            ring: g.multiply(&Scalar::from(5)),
            ring_id: Scalar::from(31),
            policy_id: Scalar::from(37),
            permission: Scalar::from(41),
            resource: Scalar::from(43),
        };
        let siblings =
            std::array::from_fn(|i| std::array::from_fn(|j| Scalar::from((i * 3 + j + 47) as u64)));
        let root = tree::native_root(p, Tree::Asset, leaf.commitment(p), 53, &siblings);
        (
            Witness {
                leaf,
                path: Path {
                    position: Scalar::from(53),
                    siblings,
                },
            },
            root,
        )
    }
    fn satisfied(
        p: &Parameters,
        w: &Witness,
        asset: Scalar,
        root: &Scalar,
        regulated: bool,
    ) -> bool {
        let (c, _) = build_with_values(|ctx| {
            let asset = Var::witness(ctx, |_| asset.clone());
            let root = Var::witness(ctx, |_| root.clone());
            let regulated = BoolVar::witness(ctx, |_| regulated);
            constrain(ctx, p, w, &asset, &root, &regulated);
            Vec::new()
        });
        c.is_satisfied()
    }
    #[test]
    fn membership_and_canonical_gap_bind_every_authenticated_leaf_fact() {
        let p = Parameters::load().unwrap();
        let (w, root) = fixture(&p);
        for n in [0, 6, 7, 8, 22, 23, 24] {
            assert_eq!(satisfied(&p, &w, Scalar::from(n), &root, true), n == 7);
            assert_eq!(
                satisfied(&p, &w, Scalar::from(n), &root, false),
                7 < n && n < 23
            );
        }
        for i in 0..13 {
            let mut bad = w.clone();
            match i {
                0 => bad.leaf.value += &Scalar::one(),
                1 => bad.leaf.next_index += &Scalar::one(),
                2 => bad.leaf.next_value += &Scalar::one(),
                3 => bad.leaf.dk = group::generator(),
                4 => bad.leaf.daily_limit += &Scalar::one(),
                5 => bad.leaf.route_policy += &Scalar::one(),
                6 => bad.leaf.ring = group::generator(),
                7 => bad.leaf.ring_id += &Scalar::one(),
                8 => bad.leaf.policy_id += &Scalar::one(),
                9 => bad.leaf.permission += &Scalar::one(),
                10 => bad.leaf.resource += &Scalar::one(),
                11 => bad.path.position += &Scalar::one(),
                _ => bad.path.siblings[COMPLIANCE_DEPTH - 1][2] += &Scalar::one(),
            }
            assert!(
                !satisfied(&p, &bad, Scalar::from(7), &root, true),
                "field {i}"
            );
            assert!(
                !satisfied(&p, &bad, Scalar::from(11), &root, false),
                "field {i}"
            );
        }
        let mut extreme = w.clone();
        extreme.leaf.value = Scalar::zero();
        extreme.leaf.next_value = -Scalar::one();
        // The sentinel's keys may be identity; selection of fixed unregulated sinks is a separate obligation.
        extreme.leaf.dk = Point::identity();
        extreme.leaf.ring = Point::identity();
        let root = tree::native_root(
            &p,
            Tree::Asset,
            extreme.leaf.commitment(&p),
            53,
            &extreme.path.siblings,
        );
        for asset in [
            Scalar::zero(),
            Scalar::one(),
            -Scalar::from(2),
            -Scalar::one(),
        ] {
            let expected = asset != Scalar::zero() && asset != -Scalar::one();
            assert_eq!(satisfied(&p, &extreme, asset, &root, false), expected);
        }
        extreme.path.position = Scalar::from(1u64 << 32);
        assert!(!satisfied(&p, &extreme, Scalar::one(), &root, false));
    }
}
