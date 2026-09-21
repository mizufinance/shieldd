use super::*;
use crate::proof::{Envelope, Family};
use commonware_cryptography::zk::{
    circuit::{build, build_with_values},
    pari::{self, InputLayout, Relation},
};
use commonware_math::algebra::Ring;
use commonware_parallel::Sequential;

fn fixture(p: &Parameters, index: u64, head: Scalar) -> GenerationWitness {
    let leaf = Leaf {
        value: Scalar::zero(),
        next_index: 0,
        next_value: Scalar::zero(),
        lower_sentinel: true,
        terminal: true,
    };
    let path = Path {
        position: Scalar::zero(),
        siblings: std::array::from_fn(|_| std::array::from_fn(|_| Scalar::zero())),
    };
    let root = tree::native_root(p, Tree::History, leaf.commitment(p), 0, &path.siblings);
    let mut statement = GenerationStatement {
        version: VERSION,
        nullifier: Scalar::one(),
        index,
        root,
        start_position: 0,
        end_position: 1024,
        start_head: head,
        end_head: Scalar::zero(),
    };
    statement.end_head = statement.history_head(p);
    GenerationWitness {
        statement,
        leaf,
        path,
    }
}

pub(crate) fn chunk(p: &Parameters, index: u64) -> ChunkWitness {
    let start_head = p.native(domains::HISTORY_EMPTY, &[]);
    let mut head = start_head.clone();
    let generations = std::array::from_fn(|i| {
        let w = fixture(
            p,
            index.wrapping_mul(10).wrapping_add(i as u64),
            head.clone(),
        );
        head = w.statement.end_head.clone();
        w
    });
    ChunkWitness {
        statement: ChunkStatement {
            version: VERSION,
            index,
            nullifier: Scalar::one(),
            start_head,
            end_head: head,
        },
        generations,
    }
}

fn generation_satisfied(p: &Parameters, w: &GenerationWitness) -> bool {
    build_with_values(|ctx| constrain_generation(ctx, p, w, &w.statement.digest(p)))
        .0
        .is_satisfied()
}

fn chunk_satisfied(p: &Parameters, w: &ChunkWitness) -> bool {
    build_with_values(|ctx| constrain_chunk(ctx, p, w, &w.statement.digest(p)))
        .0
        .is_satisfied()
}

#[test]
fn canonical_gap_sentinels_paths_and_position_ranges_are_bound() {
    let p = Parameters::load().unwrap();
    let w = fixture(&p, 0, Scalar::zero());
    assert!(generation_satisfied(&p, &w));
    for query in [Scalar::zero(), Scalar::one(), -Scalar::one()] {
        let mut w = w.clone();
        w.statement.nullifier = query;
        assert!(generation_satisfied(&p, &w));
    }
    let mut normal = w.clone();
    normal.leaf = Leaf {
        value: Scalar::from(9),
        next_value: Scalar::from(23),
        next_index: 2,
        lower_sentinel: false,
        terminal: false,
    };
    normal.path.position = Scalar::from(1);
    normal.statement.root = tree::native_root(
        &p,
        Tree::History,
        normal.leaf.commitment(&p),
        1,
        &normal.path.siblings,
    );
    normal.statement.end_head = normal.statement.history_head(&p);
    for query in [0, 8, 9, 10, 22, 23, 24] {
        normal.statement.nullifier = Scalar::from(query);
        assert_eq!(generation_satisfied(&p, &normal), (10..23).contains(&query));
    }
    for mutation in 0..8 {
        let mut w = w.clone();
        match mutation {
            0 => w.statement.version = 2,
            1 => w.statement.start_position = 1025,
            2 => w.statement.end_position = 1 << 48,
            3 => w.path.position = Scalar::from(1u64 << 40),
            4 => w.path.siblings[19][2] += &Scalar::one(),
            5 => w.leaf.value = Scalar::one(),
            6 => w.leaf.next_index = 1,
            _ => w.leaf.next_value = Scalar::one(),
        }
        assert!(!generation_satisfied(&p, &w), "history mutation {mutation}");
    }
}

#[test]
fn chunk_requires_ten_ordered_complete_witnesses_with_checked_u64_indices() {
    let p = Parameters::load().unwrap();
    for index in [0, 1, (u64::MAX - 9) / 10] {
        let w = chunk(&p, index);
        assert!(w.statement.generation_indices().is_some());
        assert!(chunk_satisfied(&p, &w));
    }
    for index in [(u64::MAX - 9) / 10 + 1, u64::MAX] {
        let w = chunk(&p, index);
        assert!(w.statement.generation_indices().is_none());
        assert!(!chunk_satisfied(&p, &w));
    }
    for mutation in 0..5 {
        let mut w = chunk(&p, 0);
        match mutation {
            0 => w.generations.swap(8, 9),
            1 => w.generations[9].statement.nullifier += &Scalar::one(),
            2 => w.generations[9].path.siblings[0][0] += &Scalar::one(),
            3 => w.generations[9].statement.start_head = w.statement.start_head.clone(),
            _ => w.statement.index += 1,
        }
        assert!(!chunk_satisfied(&p, &w), "chunk mutation {mutation}");
    }
}

#[test]
fn generation_and_direct_chunk_proofs_verify_with_zero_committed_predecessors() {
    let p = Parameters::load().unwrap();
    let w = chunk(&p, 0);
    let prove = |family, is_chunk| {
        let digest = if is_chunk {
            w.statement.digest(&p)
        } else {
            w.generations[0].statement.digest(&p)
        };
        let (circuit, selected) = build(|ctx| {
            if is_chunk {
                constrain_chunk(ctx, &p, &w, &digest)
            } else {
                constrain_generation(ctx, &p, &w.generations[0], &digest)
            }
        });
        let layout = InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
        let relation = Relation::compile(&circuit, &layout).unwrap();
        let (pk, vk) = pari::setup(&relation, &mut rand10::rng(), &Sequential).unwrap();
        let prepared = pari::PreparedProver::new(pk, &relation).unwrap();
        let (valued, _) = build_with_values(|ctx| {
            if is_chunk {
                constrain_chunk(ctx, &p, &w, &digest)
            } else {
                constrain_generation(ctx, &p, &w.generations[0], &digest)
            }
        });
        let proof =
            Envelope::prove(family, &prepared, &relation, &layout, valued, &Sequential).unwrap();
        proof.verify(family, &vk, &digest).unwrap();
        assert!(
            proof
                .verify(family, &vk, &(digest + &Scalar::one()))
                .is_err()
        );
    };
    prove(Family::HistoryGeneration, false);
    prove(Family::HistoryChunk, true);
}
