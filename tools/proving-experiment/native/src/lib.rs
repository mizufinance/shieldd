//! Development-only native Transfer relation and primitive correctness checks.
pub mod api;
pub mod authorization;
pub mod balance;
pub mod compliance;
pub mod encoding;
pub mod encryption;
pub mod fixtures;
pub mod group;
pub mod hash;
pub mod map;
pub mod note;
pub mod range;
pub mod recovery;
pub mod registry;
pub mod routing;
pub mod scalar;
pub mod transfer;
pub mod tree;
pub mod volume;
pub mod witness_codec;

#[cfg(test)]
mod proof_tests {
    use commonware_cryptography::{
        bls12381::primitives::group::Scalar,
        transcript::{Transcript, Version},
        zk::{
            circuit::{Context, Var, build, build_with_values},
            pari,
        },
    };
    use commonware_math::algebra::{Additive, Ring};
    use commonware_parallel::Sequential;

    fn circuit<'a>(
        ctx: Context<'a, Scalar>,
        amount: Scalar,
        total: Scalar,
    ) -> Vec<Var<'a, Scalar>> {
        let amount = Var::witness(ctx, |_| amount);
        let total = Var::witness(ctx, |_| total);
        crate::range::decompose(ctx, &amount, 128);
        crate::range::decompose(ctx, &total, 129);
        (amount.clone() + &amount).assert_eq(&total);
        vec![total, amount]
    }

    #[test]
    fn native_pari_proves_ranges_and_rejects_invalid_relation() {
        let (c, selected) = build(|ctx| circuit(ctx, Scalar::zero(), Scalar::zero()));
        let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
        let relation = pari::Relation::compile(&c, &layout).unwrap();
        let mut rng = rand::rng();
        let (pk, vk) = pari::setup(&relation, &mut rng, &Sequential).unwrap();
        let max = Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]);
        let total = max.clone() + &max;
        let transcript =
            || Transcript::new(b"shieldd-proving-experiment/primitive-gate", Version::V1);
        let (valued, _) = build_with_values(|ctx| circuit(ctx, max.clone(), total.clone()));
        let w = relation
            .witness(&valued, &layout, vec![pari::Opening::random(&mut rng)])
            .unwrap();
        let claim = w.claim(pk.commitment_keys(), &Sequential).unwrap();
        let proof = pari::prove(
            &mut rng,
            &mut transcript(),
            &pk,
            &relation,
            &claim,
            &w,
            &Sequential,
        )
        .unwrap();
        assert!(pari::verify(&mut transcript(), &vk, &claim, &proof));
        let mut bad_claim = claim.clone();
        bad_claim.public_inputs[0] += &Scalar::one();
        assert!(!pari::verify(&mut transcript(), &vk, &bad_claim, &proof));
        let (invalid, _) =
            build_with_values(|ctx| circuit(ctx, max.clone(), total.clone() + &Scalar::one()));
        let w = relation
            .witness(&invalid, &layout, vec![pari::Opening::random(&mut rng)])
            .unwrap();
        let claim = w.claim(pk.commitment_keys(), &Sequential).unwrap();
        assert!(matches!(
            pari::prove(
                &mut rng,
                &mut transcript(),
                &pk,
                &relation,
                &claim,
                &w,
                &Sequential
            ),
            Err(pari::Error::Unsatisfied)
        ));
    }
}

#[cfg(test)]
mod interop_tests;

#[cfg(test)]
mod prepared_tests;

#[cfg(test)]
mod quotient_tests;

#[cfg(test)]
mod key_tests;

#[cfg(feature = "cost_trace")]
pub mod diagnostics;
