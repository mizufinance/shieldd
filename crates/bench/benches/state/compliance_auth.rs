use cnidarium::StateDelta;
use criterion::{black_box, criterion_group, criterion_main, BenchmarkId, Criterion};
use reddsa::{sapling::SpendAuth, SigningKey, VerificationKey};
use shieldd_sdk_compliance::{
    admission::state as admission,
    params::{ComplianceParameters, StateWriteExt},
    registry::ComplianceRegistryRead,
    state_key,
};
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_proto::StateWriteProto;
use shieldd_sdk_sct::component::clock::EpochManager;
use shieldd_sdk_tct::StateCommitment;

fn compliance_auth(c: &mut Criterion) {
    let runtime = tokio::runtime::Builder::new_current_thread()
        .enable_all()
        .build()
        .unwrap();
    let mut group = c.benchmark_group("compliance_admission");
    group
        .sample_size(30)
        .measurement_time(std::time::Duration::from_secs(2));
    for size in [1u64, 64, 4096] {
        let storage = runtime.block_on(cnidarium::TempStorage::new()).unwrap();
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.put_compliance_params(ComplianceParameters::default());
        state.put_proto(state_key::admission::freeze_epoch().to_owned(), 0u64);
        state.put_block_height(size + 1);
        state.put_block_timestamp(
            size + 1,
            tendermint::Time::from_unix_timestamp(1000, 0).unwrap(),
        );
        let asset = StateCommitment(Fq::from(99));
        state.put(state_key::asset_imt_root().to_owned(), asset);
        // Synthetic root pairs isolate metadata lookup from tree updates/proving.
        for height in 1..=size {
            state.put(
                state_key::user_tree_root().to_owned(),
                StateCommitment(Fq::from(height)),
            );
            runtime
                .block_on(admission::record(&mut state, height, 1000))
                .unwrap();
        }
        let current = StateCommitment(Fq::from(size + 1));
        state.put(state_key::user_tree_root().to_owned(), current);
        runtime.block_on(storage.commit(state)).unwrap();
        let state = storage.latest_snapshot();
        let old = StateCommitment(Fq::from(1));
        group.bench_with_input(
            BenchmarkId::new("former_exact_pair", size),
            &size,
            |b, _| {
                b.iter(|| {
                    runtime.block_on(async {
                        assert_eq!(
                            state.get_user_tree_root().await.unwrap(),
                            black_box(current)
                        );
                        assert_eq!(state.get_asset_imt_root().await.unwrap(), black_box(asset));
                    })
                })
            },
        );
        group.bench_with_input(BenchmarkId::new("current_pair", size), &size, |b, _| {
            b.iter(|| {
                runtime
                    .block_on(admission::validate(&state, &current, &asset))
                    .unwrap()
            })
        });
        group.bench_with_input(BenchmarkId::new("historical_pair", size), &size, |b, _| {
            b.iter(|| {
                runtime
                    .block_on(admission::validate(&state, &old, &asset))
                    .unwrap()
            })
        });
        // Isolate the global barrier's read/write cost; excludes the unchanged leaf update.
        group.bench_with_input(
            BenchmarkId::new("freeze_epoch_delta", size),
            &size,
            |b, _| {
                b.iter(|| {
                    let mut candidate = StateDelta::new(state.clone());
                    let next = runtime
                        .block_on(admission::epoch(&candidate))
                        .unwrap()
                        .checked_add(1)
                        .unwrap();
                    candidate.put_proto(state_key::admission::freeze_epoch().to_owned(), next);
                    black_box(candidate);
                })
            },
        );
    }
    group.finish();
    let key = SigningKey::<SpendAuth>::try_from(Fr::from(17).to_bytes()).unwrap();
    let vk = VerificationKey::from(&key);
    let message = [23u8; 64];
    let sig = key.sign(rand_core::OsRng, &message);
    let mut group = c.benchmark_group("spend_authorization");
    group
        .sample_size(30)
        .measurement_time(std::time::Duration::from_secs(2));
    for count in [1, 2, 8] {
        group.bench_with_input(
            BenchmarkId::new("verify_signatures", count),
            &count,
            |b, count| {
                b.iter(|| {
                    for _ in 0..*count {
                        vk.verify(black_box(&message), black_box(&sig)).unwrap();
                    }
                })
            },
        );
        group.bench_with_input(BenchmarkId::new("sign", count), &count, |b, count| {
            b.iter(|| {
                for _ in 0..*count {
                    black_box(key.sign(rand_core::OsRng, black_box(&message)));
                }
            })
        });
    }
    group.finish();
}
criterion_group!(benches, compliance_auth);
criterion_main!(benches);
