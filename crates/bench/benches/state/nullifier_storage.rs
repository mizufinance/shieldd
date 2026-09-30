use criterion::{criterion_group, criterion_main, BenchmarkId, Criterion};
use shieldd_sdk_sct::{
    permanent_nullifiers::{Boundary, Config, Store},
    Nullifier,
};

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
        let config = Config {
            buckets: (size as u32).max(1024),
            cache_mib: 8,
            preallocate: false,
        };
        let mut store = Store::open(directory.path(), &config, true).unwrap();
        let mut boundary = Boundary::default();
        store.recover(&boundary).unwrap();
        for (height, chunk) in (0..size).collect::<Vec<_>>().chunks(32768).enumerate() {
            let mut block_id = [0; 32];
            block_id[..8].copy_from_slice(&(height as u64).to_be_bytes());
            let prepared = store
                .prepare(
                    height as u64,
                    block_id,
                    &boundary,
                    chunk.iter().copied().map(nullifier).collect(),
                )
                .unwrap();
            store.persist_intent(&prepared).unwrap();
            boundary = store.commit(prepared).unwrap().next;
            store.complete(&boundary).unwrap();
        }
        for (label, nf) in [
            ("authenticated_hit", nullifier(size / 2)),
            ("authenticated_miss", nullifier(size + 1)),
        ] {
            group.bench_with_input(BenchmarkId::new(label, size), &nf, |b, nf| {
                b.iter(|| store.status(*nf, &boundary).unwrap())
            });
        }
    }
    group.finish();
}

criterion_group!(benches, bench_nullifier_storage);
criterion_main!(benches);
