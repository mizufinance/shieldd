use crate::{
    group::{Point, coefficient_d},
    hash::Parameters,
    map::{self, Generators},
    range::decompose,
    scalar,
};
use anyhow::{Result, ensure};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{Context, Var},
};

fn amount(n: u128) -> Scalar {
    Scalar::from_limbs([n as u64, (n >> 64) as u64, 0, 0])
}

pub fn native(
    params: &Parameters,
    generators: &Generators,
    asset: &Scalar,
    inputs: [u128; 2],
    outputs: [u128; 2],
    blinding: &Scalar,
) -> Result<Point<Scalar>> {
    ensure!(
        *blinding < Scalar::from_limbs(scalar::ORDER),
        "noncanonical balance blinding"
    );
    let generator = map::asset(params, asset);
    ensure!(
        generator != Point::identity(),
        "asset generator is identity"
    );
    let sum = |values: [u128; 2]| amount(values[0]) + &amount(values[1]);
    let input = generator.multiply(&sum(inputs));
    let mut output = generator.multiply(&sum(outputs));
    output.x = -output.x;
    Ok(input
        .add(&output, &coefficient_d())
        .add(&generators.blinding.multiply(blinding), &coefficient_d()))
}

/// Action net value is not required to be zero; its exact commitment enters the statement.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    generators: &Generators,
    asset: &Var<'ctx, Scalar>,
    inputs: &[Var<'ctx, Scalar>; 2],
    outputs: &[Var<'ctx, Scalar>; 2],
    blinding: &Var<'ctx, Scalar>,
) -> Point<Var<'ctx, Scalar>> {
    let hash = params.circuit(map::ASSET_GENERATOR, &[asset.clone()]);
    let generator = map::circuit(ctx, &hash);
    generator.assert_non_identity();
    let sum = |values: &[Var<'ctx, Scalar>; 2]| {
        for v in values {
            decompose(ctx, v, 128);
        }
        decompose(ctx, &(values[0].clone() + &values[1]), 129)
    };
    let input = generator.multiply_bits(&sum(inputs));
    let output = generator.multiply_bits(&sum(outputs));
    let negated = Point {
        x: -output.x,
        y: output.y,
    };
    let d = Var::native(coefficient_d());
    let value = input.add(&negated, &d);
    let blinded = generators
        .blinding
        .multiply_fixed(&scalar::canonical_bits(ctx, blinding));
    value.add(&blinded, &d)
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    use commonware_math::algebra::Additive;
    use commonware_math::algebra::Ring;

    fn satisfied(
        p: &Parameters,
        g: &Generators,
        asset: &Scalar,
        inputs: &[Scalar; 2],
        outputs: &[Scalar; 2],
        blinding: &Scalar,
        expected: &Point<Scalar>,
    ) -> bool {
        let (c, _) = build_with_values(|ctx| {
            let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
            let actual = constrain(
                ctx,
                p,
                g,
                &var(asset),
                &inputs.each_ref().map(var),
                &outputs.each_ref().map(var),
                &var(blinding),
            );
            actual.assert_equal(&Point {
                x: var(&expected.x),
                y: var(&expected.y),
            });
            Vec::new()
        });
        c.is_satisfied()
    }
    #[test]
    fn full_integer_net_balance_and_blinding_match_native_without_field_wrap() {
        let p = Parameters::load().unwrap();
        let g = Generators::derive(&p);
        let asset = Scalar::from(7);
        let blinding = Scalar::from(11);
        for (input, output) in [
            ([0, 0], [0, 0]),
            ([10, 20], [12, 18]),
            ([10, 20], [0, 1]),
            ([0, 1], [10, 20]),
            ([u128::MAX, u128::MAX], [0, 0]),
            ([0, 0], [u128::MAX, u128::MAX]),
        ] {
            let expected = native(&p, &g, &asset, input, output, &blinding).unwrap();
            let inputs = input.map(amount);
            let outputs = output.map(amount);
            assert!(satisfied(
                &p, &g, &asset, &inputs, &outputs, &blinding, &expected
            ));
            let mut wrong = expected.clone();
            wrong.x += &Scalar::one();
            assert!(!satisfied(
                &p, &g, &asset, &inputs, &outputs, &blinding, &wrong
            ));
            assert!(!satisfied(
                &p,
                &g,
                &asset,
                &inputs,
                &outputs,
                &(blinding.clone() + &Scalar::one()),
                &expected
            ));
            assert!(!satisfied(
                &p,
                &g,
                &asset,
                &inputs,
                &outputs,
                &(blinding.clone() + &Scalar::from_limbs(scalar::ORDER)),
                &expected
            ));
            if amount(input[0]) + &amount(input[1]) != amount(output[0]) + &amount(output[1]) {
                assert!(!satisfied(
                    &p,
                    &g,
                    &Scalar::from(13),
                    &inputs,
                    &outputs,
                    &blinding,
                    &expected
                ));
            }
        }
        let expected = native(&p, &g, &asset, [0, 0], [0, 0], &blinding).unwrap();
        // A field-wrapped cancellation must not conceal an out-of-range constituent.
        let outside = Scalar::from_limbs([0, 0, 1, 0]);
        assert!(!satisfied(
            &p,
            &g,
            &asset,
            &[outside.clone(), -outside],
            &[Scalar::zero(), Scalar::zero()],
            &blinding,
            &expected
        ));
    }

    #[test]
    fn real_pari_proof_binds_native_generator_map_and_committed_balance_blinding() {
        use commonware_cryptography::{
            transcript::{Transcript, Version},
            zk::{circuit::build, pari},
        };
        use commonware_parallel::Sequential;
        let p = Parameters::load().unwrap();
        let g = Generators::derive(&p);
        let asset = Scalar::from(7);
        let blinding = Scalar::from(11);
        let expected = native(&p, &g, &asset, [u128::MAX, u128::MAX], [0, 1], &blinding).unwrap();
        let statement = p.native(255, &[expected.x, expected.y]);
        fn build_body<'a>(
            ctx: Context<'a, Scalar>,
            p: &Parameters,
            g: &Generators,
            asset: &Scalar,
            blinding: &Scalar,
        ) -> Vec<Var<'a, Scalar>> {
            let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
            let blinding = var(&blinding);
            let point = constrain(
                ctx,
                p,
                g,
                &var(asset),
                &[var(&amount(u128::MAX)), var(&amount(u128::MAX))],
                &[var(&Scalar::zero()), var(&Scalar::one())],
                &blinding,
            );
            vec![p.circuit(255, &[point.x, point.y]), blinding]
        }
        let (c, selected) = build(|ctx| build_body(ctx, &p, &g, &asset, &blinding));
        let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
        let relation = pari::Relation::compile(&c, &layout).unwrap();
        let mut rng = rand10::rng();
        let (pk, vk) = pari::setup(&relation, &mut rng, &Sequential).unwrap();
        let (valued, _) = build_with_values(|ctx| build_body(ctx, &p, &g, &asset, &blinding));
        let witness = relation
            .witness(&valued, &layout, vec![pari::Opening::random(&mut rng)])
            .unwrap();
        let claim = witness.claim(pk.commitment_keys(), &Sequential).unwrap();
        assert_eq!(claim.public_inputs, vec![statement]);
        let transcript =
            || Transcript::new(b"shieldd-jubjub-pari-v1/balance-component", Version::V1);
        let proof = pari::prove(
            &mut rng,
            &mut transcript(),
            &pk,
            &relation,
            &claim,
            &witness,
            &Sequential,
        )
        .unwrap();
        assert!(pari::verify(&mut transcript(), &vk, &claim, &proof));
        let mut bad = claim.clone();
        bad.public_inputs[0] += &Scalar::one();
        assert!(!pari::verify(&mut transcript(), &vk, &bad, &proof));
        let other = relation
            .witness(&valued, &layout, vec![pari::Opening::random(&mut rng)])
            .unwrap();
        let other_claim = other.claim(pk.commitment_keys(), &Sequential).unwrap();
        assert!(!pari::verify(&mut transcript(), &vk, &other_claim, &proof));
    }
}

/// Exact conservation for up to eight inputs/outputs, each bounded before summation.
pub fn conserve<'a>(
    ctx: Context<'a, Scalar>,
    generators: &Generators,
    inputs: &[Var<'a, Scalar>],
    outputs: &[Var<'a, Scalar>],
    blinding: &Var<'a, Scalar>,
) -> Point<Var<'a, Scalar>> {
    use commonware_math::algebra::Additive;
    let sum = |values: &[Var<'a, Scalar>]| {
        assert!((1..=8).contains(&values.len()));
        values.iter().fold(Var::zero(), |sum, value| {
            decompose(ctx, value, 128);
            sum + value
        })
    };
    // Each sum is at most 8*(2^128-1), so equality cannot wrap in the circuit field.
    sum(inputs).assert_eq(&sum(outputs));
    generators
        .blinding
        .multiply_fixed(&scalar::canonical_bits(ctx, blinding))
}

#[cfg(test)]
mod conservation_tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    use commonware_math::algebra::{Additive, Ring};
    #[test]
    fn conservation_supports_eight_maximum_amounts_without_field_wrap() {
        let p = Parameters::load().unwrap();
        let g = Generators::derive(&p);
        let check = |inputs: &[Scalar], outputs: &[Scalar]| {
            build_with_values(|ctx| {
                let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
                conserve(
                    ctx,
                    &g,
                    &inputs.iter().map(var).collect::<Vec<_>>(),
                    &outputs.iter().map(var).collect::<Vec<_>>(),
                    &var(&Scalar::one()),
                );
                Vec::new()
            })
            .0
            .is_satisfied()
        };
        let max = amount(u128::MAX);
        let inputs = vec![max; 8];
        assert!(check(&inputs, &inputs));
        let mut outputs = inputs.clone();
        outputs[7] += &Scalar::one();
        assert!(!check(&inputs, &outputs));
        assert!(!check(&[Scalar::one(), -Scalar::one()], &[Scalar::zero()]));
        assert!(!check(&[Scalar::from(3)], &[Scalar::from(2)]));
    }
}
