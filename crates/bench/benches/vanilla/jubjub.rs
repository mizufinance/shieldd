use criterion::{black_box, criterion_group, criterion_main, Criterion};
use ff::Field;
use group::GroupEncoding;
use shieldd_sdk_crypto::{generators::SPEND_AUTH, poseidon, Fq, Fr};

fn primitives(c: &mut Criterion) {
    let x = Fq::from(17);
    let y = Fq::from(29);
    c.bench_function("jubjub/base-field multiplication", |b| {
        b.iter(|| black_box(x) * black_box(y))
    });
    c.bench_function("jubjub/base-field inversion", |b| {
        b.iter(|| black_box(x).invert())
    });
    let scalar = Fr::random(rand_core::OsRng);
    let point = *SPEND_AUTH * scalar;
    c.bench_function("jubjub/spend-generator multiplication", |b| {
        b.iter(|| *SPEND_AUTH * black_box(scalar))
    });
    c.bench_function("jubjub/variable-base multiplication", |b| {
        b.iter(|| black_box(point) * black_box(scalar))
    });
    let encoded = point.to_bytes();
    c.bench_function("jubjub/subgroup decode", |b| {
        b.iter(|| shieldd_sdk_crypto::SubgroupPoint::from_bytes(black_box(&encoded)))
    });
    c.bench_function("poseidon381/note commitment hash", |b| {
        b.iter(|| {
            poseidon::hash(
                shieldd_sdk_crypto::domains::NOTE,
                black_box(&[x, y, x, y, x, y]),
            )
        })
    });
}
criterion_group!(benches, primitives);
criterion_main!(benches);
