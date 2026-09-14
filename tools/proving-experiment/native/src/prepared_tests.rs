use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{
        circuit::{Context, Var, build, build_with_values},
        pari,
    },
};

fn relation<'a>(
    ctx: Context<'a, Scalar>,
    constant: u64,
    reverse: bool,
    multiply: bool,
) -> Vec<Var<'a, Scalar>> {
    let x = Var::witness(ctx, |_| Scalar::from(3));
    let y = Var::witness(ctx, |_| Scalar::from(4));
    let (a, b) = if reverse { (&y, &x) } else { (&x, &y) };
    let result = if multiply {
        a.clone() * b
    } else {
        a.clone() + b
    };
    let public = result + &Var::native(Scalar::from(constant));
    vec![public, x]
}

#[test]
fn prepared_mapping_binds_constants_operations_indices_and_layout() {
    let (c, selected) = build(|ctx| relation(ctx, 1, false, true));
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
    let compiled = pari::Relation::compile(&c, &layout).unwrap();
    let mut rng = rand::rng();
    for (constant, reverse, multiply) in [
        (1, false, true),
        (2, false, true),
        (1, true, true),
        (1, false, false),
    ] {
        let (v, _) = build_with_values(|ctx| relation(ctx, constant, reverse, multiply));
        let actual = compiled.witness_prepared(&v, &layout, vec![pari::Opening::random(&mut rng)]);
        assert_eq!(actual.is_ok(), constant == 1 && !reverse && multiply);
    }
    let (v, _) = build_with_values(|ctx| relation(ctx, 1, false, true));
    let wrong = pari::InputLayout::new(vec![selected[1]], vec![vec![selected[0]]]).unwrap();
    assert!(
        compiled
            .witness_prepared(&v, &wrong, vec![pari::Opening::random(&mut rng)])
            .is_err()
    );
    assert!(compiled.witness_prepared(&v, &layout, vec![]).is_err());
    let (pk, vk) = pari::setup(&compiled, &mut rng, &commonware_parallel::Sequential).unwrap();
    let reference = compiled
        .witness(&v, &layout, vec![pari::Opening::random(&mut rng)])
        .unwrap();
    assert!(compiled.check_witness(&reference));
    // The full-Transfer diagnostic checks exact proof-byte parity with the reference mapper.
    let prepared = compiled
        .witness_prepared(&v, &layout, vec![pari::Opening::random(&mut rng)])
        .unwrap();
    let claim = prepared
        .claim(pk.commitment_keys(), &commonware_parallel::Sequential)
        .unwrap();
    let transcript = || {
        commonware_cryptography::transcript::Transcript::new(
            b"native-prepared-test",
            commonware_cryptography::transcript::Version::V1,
        )
    };
    let proof = pari::prove(
        &mut rng,
        &mut transcript(),
        &pk,
        &compiled,
        &claim,
        &prepared,
        &commonware_parallel::Sequential,
    )
    .unwrap();
    assert!(pari::verify(&mut transcript(), &vk, &claim, &proof));
}
