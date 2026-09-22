use crate::{
    encoding::canonical_bits,
    hash::Parameters,
    range::{decompose, is_zero, less_or_equal_bounded, less_or_equal_limbs},
    tree::{self, Path, Tree},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::Additive;
use shieldd_sdk_crypto::domains;

pub const VERSION: u32 = 3;
pub const DEPTH: usize = 20;
pub const CHUNK_SIZE: usize = 10;

#[derive(Clone)]
pub struct Leaf {
    pub value: Scalar,
    pub next_index: u64,
    pub next_value: Scalar,
    pub lower_sentinel: bool,
    pub terminal: bool,
}

impl Leaf {
    pub fn commitment(&self, p: &Parameters) -> Scalar {
        p.native(
            domains::HISTORY_LEAF,
            &[
                self.value.clone(),
                Scalar::from(self.next_index),
                self.next_value.clone(),
                Scalar::from(u64::from(self.lower_sentinel)),
                Scalar::from(u64::from(self.terminal)),
            ],
        )
    }
}

#[derive(Clone)]
pub struct GenerationStatement {
    pub version: u32,
    pub nullifier: Scalar,
    pub index: u64,
    pub root: Scalar,
    pub start_position: u64,
    pub end_position: u64,
    pub start_head: Scalar,
    pub end_head: Scalar,
}

impl GenerationStatement {
    pub fn digest(&self, p: &Parameters) -> Scalar {
        p.native(
            domains::HISTORY_GENERATION_STATEMENT,
            &[
                Scalar::from(u64::from(self.version)),
                self.nullifier.clone(),
                Scalar::from(self.index),
                self.root.clone(),
                Scalar::from(self.start_position),
                Scalar::from(self.end_position),
                self.start_head.clone(),
                self.end_head.clone(),
            ],
        )
    }

    pub fn history_head(&self, p: &Parameters) -> Scalar {
        p.native(
            domains::HISTORY_NODE,
            &[
                self.start_head.clone(),
                Scalar::from(self.index),
                self.root.clone(),
                Scalar::from(self.start_position),
                Scalar::from(self.end_position),
            ],
        )
    }
}

#[derive(Clone)]
pub struct GenerationWitness {
    pub statement: GenerationStatement,
    pub leaf: Leaf,
    pub path: Path<Scalar, DEPTH>,
}

#[derive(Clone)]
pub struct ChunkStatement {
    pub version: u32,
    pub nullifier: Scalar,
    pub index: u64,
    pub start_head: Scalar,
    pub end_head: Scalar,
}

impl ChunkStatement {
    pub fn digest(&self, p: &Parameters) -> Scalar {
        p.native(
            domains::HISTORY_CHUNK_STATEMENT,
            &[
                Scalar::from(u64::from(self.version)),
                self.nullifier.clone(),
                Scalar::from(self.index),
                self.start_head.clone(),
                self.end_head.clone(),
            ],
        )
    }

    pub fn generation_indices(&self) -> Option<[u64; CHUNK_SIZE]> {
        let start = self.index.checked_mul(CHUNK_SIZE as u64)?;
        start.checked_add(CHUNK_SIZE as u64 - 1)?;
        Some(std::array::from_fn(|i| start + i as u64))
    }
}

pub struct ChunkWitness {
    pub statement: ChunkStatement,
    pub generations: [GenerationWitness; CHUNK_SIZE],
}

struct Generation<'a> {
    fields: [Var<'a, Scalar>; 8],
    predecessor: Var<'a, Scalar>,
}

fn generation<'a>(
    ctx: Context<'a, Scalar>,
    p: &Parameters,
    w: &GenerationWitness,
    shared_target_bits: Option<&[BoolVar<'a, Scalar>]>,
) -> Generation<'a> {
    let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
    let integer = |v| var(&Scalar::from(v));
    let s = &w.statement;
    let version = integer(u64::from(s.version));
    version.assert_eq(&Var::native(Scalar::from(u64::from(VERSION))));
    let nullifier = var(&s.nullifier);
    let index = integer(s.index);
    decompose(ctx, &index, 64);
    let root = var(&s.root);
    let start_position = integer(s.start_position);
    let end_position = integer(s.end_position);
    let start_bits = decompose(ctx, &start_position, 48);
    let end_bits = decompose(ctx, &end_position, 48);
    less_or_equal_bounded(ctx, &start_bits, &end_bits).assert_eq(&BoolVar::constant(true));
    let start_head = var(&s.start_head);
    let end_head = var(&s.end_head);
    let leaf = &w.leaf;
    let value = var(&leaf.value);
    let next_index = integer(leaf.next_index);
    let next_value = var(&leaf.next_value);
    let lower = BoolVar::witness(ctx, |_| leaf.lower_sentinel);
    let terminal = BoolVar::witness(ctx, |_| leaf.terminal);
    let path = w.path.witness(ctx);
    decompose(ctx, &next_index, DEPTH * 2);
    lower.assert_eq(&is_zero(ctx, &path.position));
    (lower.var().clone() * &value).assert_eq(&Var::zero());
    (terminal.var().clone() * &next_index).assert_eq(&Var::zero());
    (terminal.var().clone() * &next_value).assert_eq(&Var::zero());
    ((!terminal.clone()) & is_zero(ctx, &next_index)).assert_eq(&BoolVar::constant(false));
    let target_bits = shared_target_bits
        .map(|bits| bits.to_vec())
        .unwrap_or_else(|| canonical_bits(ctx, &nullifier));
    let predecessor_bits = canonical_bits(ctx, &value);
    let successor_bits = canonical_bits(ctx, &next_value);
    ((!lower.clone()) & less_or_equal_limbs(ctx, &target_bits, &predecessor_bits))
        .assert_eq(&BoolVar::constant(false));
    ((!terminal.clone()) & less_or_equal_limbs(ctx, &successor_bits, &target_bits))
        .assert_eq(&BoolVar::constant(false));
    let leaf = p.circuit(
        domains::HISTORY_LEAF,
        &[
            value.clone(),
            next_index,
            next_value,
            lower.into_var(),
            terminal.into_var(),
        ],
    );
    tree::root(ctx, p, Tree::History, leaf, &path).assert_eq(&root);
    p.circuit(
        domains::HISTORY_NODE,
        &[
            start_head.clone(),
            index.clone(),
            root.clone(),
            start_position.clone(),
            end_position.clone(),
        ],
    )
    .assert_eq(&end_head);
    Generation {
        fields: [
            version,
            nullifier,
            index,
            root,
            start_position,
            end_position,
            start_head,
            end_head,
        ],
        predecessor: value,
    }
}

pub fn constrain_generation<'a>(
    ctx: Context<'a, Scalar>,
    p: &Parameters,
    w: &GenerationWitness,
    claimed_digest: &Scalar,
) -> Vec<Var<'a, Scalar>> {
    let g = generation(ctx, p, w, None);
    let digest = Var::witness(ctx, |_| claimed_digest.clone());
    p.circuit(domains::HISTORY_GENERATION_STATEMENT, &g.fields)
        .assert_eq(&digest);
    vec![digest, g.predecessor]
}

/// Ten complete nonmembership witnesses are checked directly, without recursive proofs.
pub fn constrain_chunk<'a>(
    ctx: Context<'a, Scalar>,
    p: &Parameters,
    w: &ChunkWitness,
    claimed_digest: &Scalar,
) -> Vec<Var<'a, Scalar>> {
    let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
    let s = &w.statement;
    let version = var(&Scalar::from(u64::from(s.version)));
    version.assert_eq(&Var::native(Scalar::from(u64::from(VERSION))));
    let nullifier = var(&s.nullifier);
    let index = var(&Scalar::from(s.index));
    decompose(ctx, &index, 64);
    let start_head = var(&s.start_head);
    let end_head = var(&s.end_head);
    let target_bits = canonical_bits(ctx, &nullifier);
    let mut head = start_head.clone();
    let mut predecessor = None;
    for (i, witness) in w.generations.iter().enumerate() {
        let g = generation(ctx, p, witness, Some(&target_bits));
        g.fields[0].assert_eq(&version);
        g.fields[1].assert_eq(&nullifier);
        g.fields[2].assert_eq(
            &(index.clone() * &Var::native(Scalar::from(CHUNK_SIZE as u64))
                + &Var::native(Scalar::from(i as u64))),
        );
        g.fields[6].assert_eq(&head);
        head = g.fields[7].clone();
        if i == 0 {
            predecessor = Some(g.predecessor);
        }
    }
    head.assert_eq(&end_head);
    let digest = var(claimed_digest);
    p.circuit(
        domains::HISTORY_CHUNK_STATEMENT,
        &[version, nullifier, index, start_head, end_head],
    )
    .assert_eq(&digest);
    vec![digest, predecessor.expect("nonempty fixed history chunk")]
}

#[cfg(test)]
pub(crate) mod tests;
