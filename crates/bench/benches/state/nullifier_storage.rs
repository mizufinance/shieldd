use criterion::{criterion_group, criterion_main, BenchmarkId, Criterion};
use shieldd_sdk_sct::{permanent_nullifiers::Reader, Nullifier};
use shieldd_sdk_storage::{
    nullifier_key, nullifier_shard, BlockBoundary, ForestConfig, ParticipantChange, ParticipantId,
    StateDelta, Storage, SPENT,
};
use std::collections::BTreeMap;

fn configured_sizes() -> Vec<usize> {
    std::env::var("SHIELDD_NULLIFIER_BENCH_SIZES")
        .ok()
        .map(|value| {
            value
                .split(',')
                .map(str::trim)
                .filter(|value| !value.is_empty())
                .map(|value| value.parse().expect("invalid nullifier bench size"))
                .collect()
        })
        .unwrap_or_else(|| vec![10_000])
}

fn nullifier(index: usize) -> Nullifier {
    Nullifier(shieldd_sdk_crypto::Fq::from(index as u64 + 1))
}

fn bench_nullifier_storage(c: &mut Criterion) {
    let mut group = c.benchmark_group("permanent_nullifier_status");
    for size in configured_sizes() {
        assert!(size > 0);
        let directory = tempfile::tempdir().unwrap();
        let store = Storage::open(
            &directory.path().join("state"),
            ForestConfig {
                buckets: (size as u32).max(1024),
                cache_mib: 8,
                preallocate: false,
                materialization_workers: 2,
            },
        )
        .unwrap();
        let genesis = store
            .prepare(
                StateDelta::new(store.latest_snapshot()),
                BlockBoundary {
                    chain_id: "nullifier-benchmark".into(),
                    protocol: [1; 32],
                    height: 0,
                    block_id: [0; 32],
                    time: 0,
                },
                BTreeMap::new(),
            )
            .unwrap();
        let mut boundary = store.materialize(genesis).unwrap();
        for (index, chunk) in (0..size).collect::<Vec<_>>().chunks(131_072).enumerate() {
            let height = index as u64 + 1;
            let mut changes: BTreeMap<ParticipantId, Vec<ParticipantChange>> = BTreeMap::new();
            for index in chunk {
                let key = nullifier_key(&nullifier(*index).to_bytes());
                changes
                    .entry(ParticipantId::permanent(nullifier_shard(&key)).unwrap())
                    .or_default()
                    .push(ParticipantChange {
                        key,
                        value: Some(SPENT.to_vec()),
                    });
            }
            let prepared = store
                .prepare(
                    StateDelta::new(store.latest_snapshot()),
                    BlockBoundary {
                        chain_id: "nullifier-benchmark".into(),
                        protocol: [1; 32],
                        height,
                        block_id: [height as u8; 32],
                        time: height as i64,
                    },
                    changes,
                )
                .unwrap();
            boundary = store.materialize(prepared).unwrap();
        }
        let reader = Reader(store);
        for (label, nf) in [
            ("authenticated_hit", nullifier(size / 2)),
            ("authenticated_miss", nullifier(size + 1)),
        ] {
            group.bench_with_input(BenchmarkId::new(label, size), &nf, |b, nf| {
                b.iter(|| reader.status(*nf, &boundary).unwrap())
            });
        }
    }
    group.finish();
}

criterion_group!(benches, bench_nullifier_storage);
criterion_main!(benches);
