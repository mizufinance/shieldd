use crate::{hash::Parameters, range::decompose};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{Context, Var},
};

pub const STATE_DEPTH: usize = 24;
pub const COMPLIANCE_DEPTH: usize = 16;

#[derive(Clone)]
pub struct Path<F, const DEPTH: usize> {
    pub position: F,
    pub siblings: [[F; 3]; DEPTH],
}

#[derive(Clone, Copy)]
#[repr(u8)]
pub enum Tree {
    State = shieldd_sdk_crypto::domains::STATE_TREE,
    Asset = shieldd_sdk_crypto::domains::ASSET_TREE,
    Compliance = shieldd_sdk_crypto::domains::COMPLIANCE_TREE,
    History = shieldd_sdk_crypto::domains::HISTORY_TREE,
}

impl<const D: usize> Path<Scalar, D> {
    pub fn witness<'ctx>(&self, ctx: Context<'ctx, Scalar>) -> Path<Var<'ctx, Scalar>, D> {
        Path {
            position: Var::witness(ctx, |_| self.position.clone()),
            siblings: std::array::from_fn(|i| {
                std::array::from_fn(|j| Var::witness(ctx, |_| self.siblings[i][j].clone()))
            }),
        }
    }
}

pub fn native_root<const D: usize>(
    params: &Parameters,
    kind: Tree,
    mut node: Scalar,
    position: u64,
    siblings: &[[Scalar; 3]; D],
) -> Scalar {
    assert!((1..=32).contains(&D));
    assert!(D == 32 || position >> (2 * D) == 0, "position outside tree");
    for (level, path) in siblings.iter().enumerate() {
        let index = ((position >> (2 * level)) & 3) as usize;
        let mut inputs = vec![Scalar::from(level as u64 + 1)];
        let mut next = 0;
        for slot in 0..4 {
            inputs.push(if slot == index {
                node.clone()
            } else {
                let sibling = path[next].clone();
                next += 1;
                sibling
            });
        }
        node = params.native(kind as u8, &inputs);
    }
    node
}

pub fn root<'ctx, const D: usize>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    kind: Tree,
    mut node: Var<'ctx, Scalar>,
    path: &Path<Var<'ctx, Scalar>, D>,
) -> Var<'ctx, Scalar> {
    assert!((1..=32).contains(&D));
    let bits = decompose(ctx, &path.position, 2 * D);
    for (level, siblings) in path.siblings.iter().enumerate() {
        let low = bits[2 * level].clone();
        let high = bits[2 * level + 1].clone();
        let first = !low.clone() & !high.clone();
        let second = low.clone() & !high.clone();
        let third = !low.clone() & high.clone();
        let fourth = low & high;
        let inputs = [
            Var::native(Scalar::from(level as u64 + 1)),
            first.select(&node, &siblings[0]),
            first.select(&siblings[0], &second.select(&node, &siblings[1])),
            fourth.select(&siblings[2], &third.select(&node, &siblings[1])),
            fourth.select(&node, &siblings[2]),
        ];
        node = params.circuit(kind as u8, &inputs);
    }
    node
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    #[test]
    fn all_quaternary_slots_and_high_position_bits_are_bound() {
        let params = Parameters::load().unwrap();
        let siblings = std::array::from_fn::<_, STATE_DEPTH, _>(|i| {
            std::array::from_fn(|j| Scalar::from((i * 3 + j + 1) as u64))
        });
        for position in [0u64, 1, 2, 3, (1u64 << 48) - 1] {
            let leaf = Scalar::from(7);
            let expected = native_root(&params, Tree::State, leaf.clone(), position, &siblings);
            let path = Path {
                position: Scalar::from(position),
                siblings: siblings.clone(),
            };
            let (valid, _) = build_with_values(|ctx| {
                let input = Var::witness(ctx, |_| leaf.clone());
                root(ctx, &params, Tree::State, input, &path.witness(ctx))
                    .assert_eq(&Var::native(expected.clone()));
                Vec::new()
            });
            assert!(valid.is_satisfied());
            let mut wrong = path.clone();
            wrong.position = Scalar::from(position + (1u64 << 48));
            let (invalid, _) = build_with_values(|ctx| {
                let input = Var::witness(ctx, |_| leaf.clone());
                root(ctx, &params, Tree::State, input, &wrong.witness(ctx))
                    .assert_eq(&Var::native(expected.clone()));
                Vec::new()
            });
            assert!(!invalid.is_satisfied());
            assert_ne!(
                native_root(&params, Tree::Compliance, leaf.clone(), position, &siblings),
                expected
            );
        }
    }
}
