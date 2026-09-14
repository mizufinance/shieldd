//! Circuit costs under explicit denominator checks or validated Jubjub completeness.
use anyhow::{Result, ensure};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{
        circuit::{BoolVar, CircuitPosition, Context, Var, build, build_with_values},
        pari,
    },
};
use commonware_math::algebra::{Additive, Field, Ring};
use serde::Serialize;
use shieldd_native_proving_experiment::{
    group::{Point, coefficient_d, generator, witness_subgroup},
    range, scalar,
};

type V<'a> = Var<'a, Scalar>;
fn quotients<'a, const CHECK: bool>(nx: V<'a>, ny: V<'a>, dx: V<'a>, dy: V<'a>) -> Point<V<'a>> {
    // Var division alone permits 0/0. Constrain the denominator product invertible.
    if CHECK {
        let _ = (dx.clone() * &dy).inv();
    }
    Point {
        x: nx / &dx,
        y: ny / &dy,
    }
}
fn add<'a, const CHECK: bool>(p: &Point<V<'a>>, q: &Point<V<'a>>) -> Point<V<'a>> {
    let xx = p.x.clone() * &q.x;
    let yy = p.y.clone() * &q.y;
    let cross = (p.x.clone() + &p.y) * &(q.x.clone() + &q.y) - &xx - &yy;
    let dt = xx.clone() * &yy * &V::native(coefficient_d());
    quotients::<CHECK>(cross, yy + &xx, V::one() + &dt, V::one() - &dt)
}
fn double<'a, const CHECK: bool>(p: &Point<V<'a>>) -> Point<V<'a>> {
    let xx = p.x.clone() * &p.x;
    let yy = p.y.clone() * &p.y;
    let sum = p.x.clone() + &p.y;
    let cross = sum.clone() * &sum - &xx - &yy;
    // On-curve induction gives 1+d*x²*y²=y²-x² for a=-1.
    let dx = yy.clone() - &xx;
    let dy = V::native(Scalar::from(2)) - &dx;
    quotients::<CHECK>(cross, yy + &xx, dx, dy)
}
fn select<'a>(
    base: &Point<V<'a>>,
    twice: &Point<V<'a>>,
    triple: &Point<V<'a>>,
    pair: &[BoolVar<'a, Scalar>],
) -> Point<V<'a>> {
    let low = &pair[0];
    let high = pair
        .get(1)
        .cloned()
        .unwrap_or_else(|| BoolVar::constant(false));
    Point {
        x: high.select(
            &low.select(&triple.x, &twice.x),
            &low.select(&base.x, &V::zero()),
        ),
        y: high.select(
            &low.select(&triple.y, &twice.y),
            &low.select(&base.y, &V::one()),
        ),
    }
}
fn variable<'a, const CHECK: bool>(
    base: &Point<V<'a>>,
    bits: &[BoolVar<'a, Scalar>],
) -> Point<V<'a>> {
    let twice = double::<CHECK>(base);
    let triple = add::<CHECK>(&twice, base);
    let mut result = Point::identity();
    for pair in bits.chunks(2).rev() {
        result = double::<CHECK>(&double::<CHECK>(&result));
        result = add::<CHECK>(&result, &select(base, &twice, &triple, pair));
    }
    result
}
fn fixed<'a, const CHECK: bool>(
    base: &Point<Scalar>,
    bits: &[BoolVar<'a, Scalar>],
) -> Point<V<'a>> {
    let d = coefficient_d();
    let mut base = base.clone();
    let mut result = Point::identity();
    let lift = |p: &Point<Scalar>| Point {
        x: V::native(p.x.clone()),
        y: V::native(p.y.clone()),
    };
    for pair in bits.chunks(2) {
        let twice = base.add(&base, &d);
        let triple = twice.add(&base, &d);
        result = add::<CHECK>(
            &result,
            &select(&lift(&base), &lift(&twice), &lift(&triple), pair),
        );
        base = twice.add(&twice, &d);
    }
    result
}
#[derive(Serialize)]
struct Cost {
    implementation: &'static str,
    fixed: bool,
    bits: usize,
    gadget_rows: usize,
    gadget_columns: usize,
    total_rows: usize,
    total_columns: usize,
    domain: usize,
    relation: String,
    boundary_cases_verified: usize,
}
#[derive(Serialize)]
struct Report {
    schema: &'static str,
    costs: Vec<Cost>,
    zero_denominator_rejected: bool,
    limits: &'static str,
}
fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    width: usize,
    is_fixed: bool,
    mode: u8,
    value: &Scalar,
    base: &Point<Scalar>,
    preimage: &Point<Scalar>,
    expected: &Point<Scalar>,
    wrong: bool,
) -> (V<'a>, CircuitPosition, CircuitPosition) {
    let v = V::witness(ctx, |_| value.clone());
    let bits = if width == 252 {
        scalar::canonical_bits(ctx, &v)
    } else {
        range::decompose(ctx, &v, width)
    };
    let p = witness_subgroup(ctx, base, preimage);
    let start = ctx.diagnostic_position();
    let output = match (is_fixed, mode) {
        (true, 0) => base.multiply_fixed(&bits),
        (false, 0) => p.multiply_bits(&bits),
        (true, 1) => fixed::<true>(base, &bits),
        (false, 1) => variable::<true>(&p, &bits),
        (true, 2) => fixed::<false>(base, &bits),
        (false, 2) => variable::<false>(&p, &bits),
        _ => panic!("unknown formula"),
    };
    let end = ctx.diagnostic_position();
    output.assert_equal(&Point {
        x: V::native(expected.x.clone() + &Scalar::from(u64::from(wrong))),
        y: V::native(expected.y.clone()),
    });
    (v, start, end)
}
fn check(
    width: usize,
    is_fixed: bool,
    mode: u8,
    value: &Scalar,
    base: &Point<Scalar>,
    wrong: bool,
) -> Result<(bool, Cost)> {
    let preimage = base.cofactor_preimage();
    let expected = base.multiply(value);
    let (valued, _) = build_with_values(|ctx| {
        vec![
            constrain(
                ctx, width, is_fixed, mode, value, base, &preimage, &expected, wrong,
            )
            .0,
        ]
    });
    let valid = valued.is_satisfied();
    let mut positions = None;
    let (c, selected) = build(|ctx| {
        let (v, a, b) = constrain(
            ctx, width, is_fixed, mode, value, base, &preimage, &expected, wrong,
        );
        positions = Some((a, b));
        vec![v]
    });
    let layout = pari::InputLayout::new(vec![], vec![vec![selected[0]]])?;
    let (relation, counts) = pari::Relation::compile_diagnostic(&c, &layout)?;
    let converted = relation.witness(&valued, &layout, vec![pari::Opening::new(Scalar::one())]);
    ensure!(
        converted
            .as_ref()
            .map(|w| relation.check_witness(w))
            .unwrap_or(false)
            == valid,
        "original/converted satisfaction mismatch"
    );
    let (a, b) = positions.unwrap();
    let cost = Cost {
        implementation: match mode {
            0 => "current_extended",
            1 => "checked_affine_shared_squares",
            _ => "complete_affine_shared_squares",
        },
        fixed: is_fixed,
        bits: width,
        gadget_rows: counts.node_rows[a.nodes..b.nodes].iter().sum::<usize>() + b.assertions
            - a.assertions,
        gadget_columns: counts.node_columns[a.nodes..b.nodes].iter().sum::<usize>() + b.witnesses
            - a.witnesses,
        total_rows: relation.constraint_count(),
        total_columns: relation.variable_count(),
        domain: relation.domain_size(),
        relation: hex::encode(relation.digest()),
        boundary_cases_verified: 0,
    };
    Ok((valid, cost))
}
fn main() -> Result<()> {
    use ark_ff::{Field as ArkField, PrimeField};
    use commonware_codec::Encode;
    let a = -ark_ed_on_bls12_381::Fq::from(1u64);
    let d = ark_ed_on_bls12_381::Fq::from_be_bytes_mod_order(coefficient_d().encode().as_ref());
    ensure!(
        a.legendre().is_qr() && d.legendre().is_qnr(),
        "Jubjub completeness parameters changed"
    );
    let mut costs = Vec::new();
    for (width, is_fixed) in [(252, false), (129, false), (252, true)] {
        let max = if width == 252 {
            Scalar::from_limbs(scalar::ORDER) - &Scalar::one()
        } else {
            Scalar::from_limbs([u64::MAX, u64::MAX, 1, 0])
        };
        for mode in [0, 1, 2] {
            let values = [
                Scalar::zero(),
                Scalar::one(),
                Scalar::from(2),
                Scalar::from(3),
                Scalar::from(255),
                max.clone(),
            ];
            let g = generator();
            let bases = [g.clone(), Point { x: -g.x, y: g.y }, Point::identity()];
            let mut first = None;
            for base in &bases {
                for value in &values {
                    let (valid, cost) = check(width, is_fixed, mode, value, base, false)?;
                    ensure!(valid, "valid gadget rejected");
                    if first.is_none() {
                        first = Some(cost);
                    }
                }
            }
            ensure!(
                !check(width, is_fixed, mode, &Scalar::from(7), &generator(), true)?.0,
                "wrong output accepted"
            );
            if !is_fixed {
                ensure!(
                    !check(width, false, mode, &Scalar::one(), &Point { x: Scalar::zero(), y: Scalar::zero() }, false)?.0,
                    "off-curve input accepted"
                );
            }
            let mut cost = first.unwrap();
            cost.boundary_cases_verified = bases.len() * values.len();
            costs.push(cost);
        }
    }
    let (bad, _) = build_with_values(|ctx| {
        let zero = V::witness(ctx, |_| Scalar::zero());
        quotients::<true>(zero.clone(), zero.clone(), zero.clone(), zero);
        Vec::new()
    });
    ensure!(!bad.is_satisfied(), "zero denominator admitted");
    let g = generator();
    let opposite = Point { x: -g.x.clone(), y: g.y.clone() };
    let (inverse, _) = build_with_values(|ctx| {
        let p = witness_subgroup(ctx, &g, &g.cofactor_preimage());
        let q = witness_subgroup(ctx, &opposite, &opposite.cofactor_preimage());
        add::<false>(&p, &q).assert_equal(&Point::identity());
        Vec::new()
    });
    ensure!(inverse.is_satisfied(), "inverse-point sum rejected");
    serde_json::to_writer_pretty(
        std::io::stdout(),
        &Report {
            schema: "shieldd.native_experiment.affine_cost.v1",
            costs,
            zero_denominator_rejected: true,
            limits: "Compiled square-relation gadget cost only; same canonical scalar bits and subgroup membership boundary. Checked affine constrains denominator invertibility; complete affine relies on validated square-a/nonsquare-d Jubjub completeness and constrained on-curve induction. Original and converted satisfaction checked, including wrong outputs. No new full Transfer relation, keys, proof or speed measurement. Costs overlap hinted-scalar alternatives and must not be added independently.",
        },
    )?;
    println!();
    Ok(())
}
