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

#[test]
fn prepared_polynomials_bind_relation_and_preserve_masked_proof_bytes() {
    use commonware_cryptography::{bls12381::primitives::group::G1, transcript::{Transcript,Version}};
    use commonware_math::algebra::Space;
    use commonware_parallel::Sequential;
    use rand::{SeedableRng,rngs::StdRng};
    use commonware_codec::Encode;
    let(c,selected)=build(|ctx|relation(ctx,1,false,true));
    let layout=pari::InputLayout::new(vec![selected[0]],vec![vec![selected[1]]]).unwrap();
    let compiled=pari::Relation::compile(&c,&layout).unwrap();
    let(c2,selected2)=build(|ctx|relation(ctx,2,false,true));
    let layout2=pari::InputLayout::new(vec![selected2[0]],vec![vec![selected2[1]]]).unwrap();
    let other=pari::Relation::compile(&c2,&layout2).unwrap();
    let correct=pari::PreparedPolynomials::new(&compiled).unwrap();
    let wrong=pari::PreparedPolynomials::new(&other).unwrap();
    let mut rng=rand::rng();let(pk,vk)=pari::setup(&compiled,&mut rng,&Sequential).unwrap();
    let(v,_)=build_with_values(|ctx|relation(ctx,1,false,true));
    let witness=compiled.witness_prepared(&v,&layout,vec![pari::Opening::random(&mut rng)]).unwrap();
    let claim=witness.claim(pk.commitment_keys(),&Sequential).unwrap();
    let transcript=||Transcript::new(b"prepared-polynomial-test",Version::V1);
    assert!(matches!(pari::prove_with_prepared_msm(&mut rng,&mut transcript(),&pk,&compiled,&claim,&witness,&Sequential,&wrong,&mut|b,s|Ok(G1::msm(b,s,&Sequential))),Err(pari::Error::RelationMismatch)));
    let mut left=StdRng::from_seed([17;32]);let mut right=StdRng::from_seed([17;32]);
    let old=pari::prove(&mut left,&mut transcript(),&pk,&compiled,&claim,&witness,&Sequential).unwrap();
    let new=pari::prove_with_prepared_msm(&mut right,&mut transcript(),&pk,&compiled,&claim,&witness,&Sequential,&correct,&mut|b,s|Ok(G1::msm(b,s,&Sequential))).unwrap();
    assert_eq!(old.encode(),new.encode());assert!(pari::verify(&mut transcript(),&vk,&claim,&new));
}
