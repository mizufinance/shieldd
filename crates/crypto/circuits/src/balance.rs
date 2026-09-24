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
    zk::circuit::{BoolVar, Context, Var},
};

fn amount(n: u128) -> Scalar {
    Scalar::from_limbs([n as u64, (n >> 64) as u64, 0, 0])
}

fn signed_bits<'a>(
    ctx: Context<'a, Scalar>,
    difference: &Var<'a, Scalar>,
    negative: &BoolVar<'a, Scalar>,
    magnitude: &Var<'a, Scalar>,
) -> Vec<BoolVar<'a, Scalar>> {
    let bits = decompose(ctx, magnitude, 129);
    // Both sums are below 2^129; this bound excludes a field-wrapped magnitude.
    difference.assert_eq(&negative.select(&(-magnitude.clone()), magnitude));
    bits
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
    for value in inputs.iter().chain(outputs.iter()) {
        decompose(ctx, value, 128);
    }
    let input = inputs[0].clone() + &inputs[1];
    let output = outputs[0].clone() + &outputs[1];
    let negative = BoolVar::witness(ctx, |values| input.value(values) < output.value(values));
    let magnitude = Var::witness(ctx, |values| {
        if input.value(values) < output.value(values) {
            output.value(values) - &input.value(values)
        } else {
            input.value(values) - &output.value(values)
        }
    });
    let magnitude_bits = signed_bits(ctx, &(input - &output), &negative, &magnitude);
    let mut value = generator.multiply_bits(&magnitude_bits);
    value.x = negative.select(&(-value.x.clone()), &value.x);
    let d = Var::native(coefficient_d());
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

    #[test]
    fn signed_magnitude_rejects_wrong_sign_magnitude_and_field_wrap() {
        let check = |difference: Scalar, negative: bool, magnitude: Scalar| {
            build_with_values(|ctx| {
                signed_bits(
                    ctx,
                    &Var::witness(ctx, |_| difference.clone()),
                    &BoolVar::witness(ctx, |_| negative),
                    &Var::witness(ctx, |_| magnitude.clone()),
                );
                Vec::new()
            })
            .0
            .is_satisfied()
        };
        let max = amount(u128::MAX) + &amount(u128::MAX);
        for magnitude in [Scalar::one(), Scalar::from(29), max] {
            for negative in [false, true] {
                let difference = if negative {
                    -magnitude.clone()
                } else {
                    magnitude.clone()
                };
                assert!(check(difference.clone(), negative, magnitude.clone()));
                assert!(!check(difference.clone(), !negative, magnitude.clone()));
                assert!(!check(
                    difference.clone(),
                    negative,
                    magnitude.clone() + &Scalar::one()
                ));
                assert!(!check(difference, !negative, -magnitude.clone()));
            }
        }
        assert!(check(Scalar::zero(), false, Scalar::zero()));
        assert!(check(Scalar::zero(), true, Scalar::zero()));
        let outside = Scalar::from_limbs([0, 0, 2, 0]);
        assert!(!check(outside.clone(), false, outside));
        assert!(!check(Scalar::zero(), false, Scalar::one()));
    }

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
            ([u128::MAX, u128::MAX], [0, 1]),
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
