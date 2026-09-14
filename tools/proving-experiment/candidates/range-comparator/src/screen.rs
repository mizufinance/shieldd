use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{
        circuit::{BoolVar, CircuitPosition, Context, Var, build, build_with_values},
        pari,
    },
};
use commonware_math::algebra::Ring;
use serde::Serialize;

#[derive(Serialize)]
pub struct Cost {
    pub candidate: bool,
    pub width: usize,
    pub constant_bound: bool,
    pub gadget_rows: usize,
    pub total_rows: usize,
    pub columns: usize,
    pub original_valid: bool,
    pub converted_valid: bool,
}

fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    a: &Scalar,
    b: &Scalar,
    width: usize,
    constant: bool,
    candidate: bool,
    wrong: bool,
) -> (Var<'a, Scalar>, CircuitPosition, CircuitPosition) {
    let av = Var::witness(ctx, |_| a.clone());
    let abits = crate::decompose(ctx, &av, width);
    let bbits = if constant {
        let encoded = b.encode();
        (0..width)
            .map(|i| BoolVar::constant(encoded[31 - i / 8] >> (i % 8) & 1 == 1))
            .collect()
    } else {
        crate::decompose(ctx, &Var::witness(ctx, |_| b.clone()), width)
    };
    let start = ctx.diagnostic_position();
    let le = if candidate {
        crate::less_or_equal(&abits, &bbits)
    } else {
        native::range::less_or_equal(&abits, &bbits)
    };
    let end = ctx.diagnostic_position();
    le.assert_eq(&BoolVar::constant((a <= b) ^ wrong));
    (av, start, end)
}

pub fn check(
    a: &Scalar,
    b: &Scalar,
    width: usize,
    constant: bool,
    candidate: bool,
    wrong: bool,
) -> Result<Cost> {
    let (valued, _) =
        build_with_values(|ctx| vec![constrain(ctx, a, b, width, constant, candidate, wrong).0]);
    let mut positions = None;
    let (circuit, selected) = build(|ctx| {
        let (v, start, end) = constrain(ctx, a, b, width, constant, candidate, wrong);
        positions = Some((start, end));
        vec![v]
    });
    let layout = pari::InputLayout::new(vec![], vec![vec![selected[0]]])?;
    let (relation, counts) = pari::Relation::compile_diagnostic(&circuit, &layout)?;
    let witness =
        relation.witness_prepared(&valued, &layout, vec![pari::Opening::new(Scalar::one())])?;
    let original_valid = valued.is_satisfied();
    let converted_valid = relation.check_witness(&witness);
    ensure!(original_valid == converted_valid, "satisfaction mismatch");
    let (start, end) = positions.unwrap();
    Ok(Cost {
        candidate,
        width,
        constant_bound: constant,
        gadget_rows: counts.node_rows[start.nodes..end.nodes]
            .iter()
            .sum::<usize>()
            + end.assertions
            - start.assertions,
        total_rows: relation.constraint_count(),
        columns: relation.variable_count(),
        original_valid,
        converted_valid,
    })
}
