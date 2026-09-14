use super::*;
use commonware_cryptography::zk::{
    circuit::{CircuitPosition, build, build_with_values},
    pari,
};
use serde::Serialize;
use std::time::Instant;

#[derive(Debug, Serialize)]
pub struct Cost {
    pub hinted: bool,
    pub original_valid: bool,
    pub converted_valid: bool,
    pub gadget_rows: usize,
    pub total_rows: usize,
    pub columns: usize,
    pub domain: usize,
    pub construction_ns: u128,
    pub compile_ns: u128,
    pub assignment_ns: u128,
}

fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    base: &Point<Scalar>,
    value: &Scalar,
    hint: &Hint,
    hinted: bool,
) -> (V<'a>, CircuitPosition, CircuitPosition) {
    let v = V::witness(ctx, |_| value.clone());
    let bits = scalar::canonical_bits(ctx, &v);
    let p = witness_subgroup(ctx, base, &base.cofactor_preimage());
    let start = ctx.diagnostic_position();
    let output = if hinted {
        multiply(ctx, &p, &bits, hint)
    } else {
        p.multiply_bits(&bits)
    };
    let end = ctx.diagnostic_position();
    // Same output boundary for both: variable points, without specializing the relation to output constants.
    let expected = &hint.output;
    output.assert_equal(&Point {
        x: V::witness(ctx, |_| expected.x.clone()),
        y: V::witness(ctx, |_| expected.y.clone()),
    });
    (v, start, end)
}

pub fn check(base: &Point<Scalar>, value: &Scalar, hint: &Hint, hinted: bool) -> Result<Cost> {
    let now = Instant::now();
    let (valued, _) = build_with_values(|ctx| vec![constrain(ctx, base, value, hint, hinted).0]);
    let construction_ns = now.elapsed().as_nanos();
    let original_valid = valued.is_satisfied();
    let now = Instant::now();
    let mut positions = None;
    let (circuit, selected) = build(|ctx| {
        let (v, a, b) = constrain(ctx, base, value, hint, hinted);
        positions = Some((a, b));
        vec![v]
    });
    let layout = pari::InputLayout::new(vec![], vec![vec![selected[0]]])?;
    let (relation, counts) = pari::Relation::compile_diagnostic(&circuit, &layout)?;
    let compile_ns = now.elapsed().as_nanos();
    let now = Instant::now();
    let witness = relation.witness(&valued, &layout, vec![pari::Opening::new(Scalar::one())]);
    let converted_valid = witness
        .as_ref()
        .map(|w| relation.check_witness(w))
        .unwrap_or(false);
    let assignment_ns = now.elapsed().as_nanos();
    ensure!(
        original_valid == converted_valid,
        "original/converted mismatch"
    );
    let (a, b) = positions.unwrap();
    Ok(Cost {
        hinted,
        original_valid,
        converted_valid,
        gadget_rows: counts.node_rows[a.nodes..b.nodes].iter().sum::<usize>() + b.assertions
            - a.assertions,
        total_rows: relation.constraint_count(),
        columns: relation.variable_count(),
        domain: relation.domain_size(),
        construction_ns,
        compile_ns,
        assignment_ns,
    })
}
