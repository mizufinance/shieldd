use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{
        circuit::{Context, Var, build, build_with_values},
        pari::{self, InputLayout, Relation},
    },
};
use commonware_math::algebra::{Additive, Ring};
use commonware_parallel::Sequential;
use shieldd_sdk_circuits::proof::{BatchItem, ENCODED_LEN, Envelope, Family, verify_batch};

fn product<'a>(ctx: Context<'a, Scalar>, x: u64, y: u64, public: u64) -> Vec<Var<'a, Scalar>> {
    let x = Var::witness(ctx, |_| Scalar::from(x));
    let y = Var::witness(ctx, |_| Scalar::from(y));
    let public = Var::witness(ctx, |_| Scalar::from(public));
    (x.clone() * &y + &Var::one()).assert_eq(&public);
    vec![public, x]
}

#[test]
fn real_proofs_bind_statement_family_key_and_complete_envelope() {
    let (circuit, indices) = build(|ctx| product(ctx, 0, 0, 0));
    let layout = InputLayout::new(vec![indices[0]], vec![vec![indices[1]]]).unwrap();
    let relation = Relation::compile(&circuit, &layout).unwrap();
    let (key, verifier) = pari::setup(&relation, &mut rand10::rng(), &Sequential).unwrap();
    let prepared = pari::PreparedProver::new(key, &relation).unwrap();
    let family = Family::Transfer;
    let make = |x, y, public| {
        let (values, _) = build_with_values(|ctx| product(ctx, x, y, public));
        Envelope::prove(family, &prepared, &relation, &layout, values, &Sequential)
    };
    let first = make(3, 4, 13).unwrap();
    let second = make(4, 5, 21).unwrap();
    let first_statement = Scalar::from(13);
    let second_statement = Scalar::from(21);
    first.verify(family, &verifier, &first_statement).unwrap();
    second.verify(family, &verifier, &second_statement).unwrap();
    assert_ne!(first.to_bytes(), make(3, 4, 13).unwrap().to_bytes());
    assert!(make(3, 4, 14).is_err());
    assert!(first.verify(family, &verifier, &Scalar::zero()).is_err());
    assert!(
        first
            .verify(Family::Disclosure, &verifier, &first_statement)
            .is_err()
    );
    let (_, other_key) = pari::setup(&relation, &mut rand10::rng(), &Sequential).unwrap();
    assert!(first.verify(family, &other_key, &first_statement).is_err());
    let bytes = first.to_bytes();
    assert_eq!(bytes.len(), ENCODED_LEN);
    Envelope::from_bytes(&bytes)
        .unwrap()
        .verify(family, &verifier, &first_statement)
        .unwrap();
    // Every byte is bound either by the strict codec or by verification.
    for index in 0..bytes.len() {
        let mut bad = bytes.clone();
        bad[index] ^= 1;
        assert!(
            Envelope::from_bytes(&bad)
                .and_then(|proof| proof.verify(family, &verifier, &first_statement))
                .is_err(),
            "byte {index}"
        );
    }
    assert!(Envelope::from_bytes(&bytes[..bytes.len() - 1]).is_err());
    let mut long = bytes.clone();
    long.push(0);
    assert!(Envelope::from_bytes(&long).is_err());
    verify_batch(
        family,
        &verifier,
        &[
            BatchItem {
                envelope: &first,
                statement: &first_statement,
            },
            BatchItem {
                envelope: &second,
                statement: &second_statement,
            },
        ],
        &Sequential,
    )
    .unwrap();
    assert!(
        verify_batch(
            family,
            &verifier,
            &[
                BatchItem {
                    envelope: &first,
                    statement: &first_statement
                },
                BatchItem {
                    envelope: &second,
                    statement: &first_statement
                },
            ],
            &Sequential
        )
        .is_err()
    );
    assert!(verify_batch(family, &verifier, &[], &Sequential).is_err());
    let mut wrong_key_proof = second.to_bytes();
    let other_claim = make(7, 3, 22).unwrap().to_bytes();
    wrong_key_proof[34..116].copy_from_slice(&other_claim[34..116]);
    if let Ok(bad) = Envelope::from_bytes(&wrong_key_proof) {
        assert!(
            verify_batch(
                family,
                &verifier,
                &[
                    BatchItem {
                        envelope: &first,
                        statement: &first_statement
                    },
                    BatchItem {
                        envelope: &bad,
                        statement: &Scalar::from(22)
                    },
                ],
                &Sequential
            )
            .is_err()
        );
    } else {
        panic!("valid replacement claim must decode");
    }
}
