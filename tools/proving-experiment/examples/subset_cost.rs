//! Complete polynomial-work screen using six solved Transfer assignments; no proofs or keys.
#[path = "../src/bridge.rs"]
mod bridge;
#[path = "../src/lowering.rs"]
mod lowering;
#[path = "../src/subset.rs"]
mod subset;
use anyhow::{ensure, Result};
use ark_bls12_377::{Bls12_377, Fr};
use ark_ff::{AdditiveGroup, Field};
use ark_poly::{univariate::DensePolynomial, DenseUVPolynomial, EvaluationDomain, Polynomial};
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use serde::{Deserialize, Serialize};
use std::{fs, hint::black_box, path::PathBuf, sync::Arc, time::Instant};
use subset::Domain;
use zkpari::ZkPari;

#[derive(Deserialize)]
struct Solved {
    assignment: String,
    statement: String,
}
#[derive(Serialize)]
struct Preparation {
    retained: usize,
    domain_ns: u128,
    public_ns: u128,
    public_bytes: usize,
}
#[derive(Serialize)]
struct Sample {
    scenario: String,
    retained: usize,
    block: usize,
    warmup: bool,
    check_interpolation_ns: u128,
    quotient_mask_ns: u128,
    opening_ns: u128,
    total_ns: u128,
}
#[derive(Serialize)]
struct Report {
    schema: &'static str,
    rows: usize,
    witness_wires: usize,
    fft_size: usize,
    preparation: Vec<Preparation>,
    samples: Vec<Sample>,
    all_coefficient_gates_passed: bool,
    limits: &'static str,
}
struct Prepared {
    domain: Domain,
    public: [Vec<Fr>; 2],
}
struct Output {
    a: Vec<Fr>,
    b: Vec<Fr>,
    masked_w: Vec<Fr>,
    q: Vec<Fr>,
    r: Vec<Fr>,
    opening_a: Vec<Fr>,
    opening_r: Vec<Fr>,
}

fn polynomial(coefficients: &[Fr]) -> DensePolynomial<Fr> {
    DensePolynomial::from_coefficients_vec(coefficients.to_vec())
}
fn kernel(
    p: &Prepared,
    eval: &[Vec<Fr>; 2],
    public: &[Fr],
    scenario: &str,
    block: usize,
) -> Result<(Output, Sample)> {
    let start = Instant::now();
    let d = &p.domain;
    let m = d.retained;
    d.check_rows(&eval[0], &eval[1])?;
    let a = d.interpolate(&eval[0])?;
    let b = d.interpolate(&eval[1])?;
    let mut w = a.clone();
    for (column, value) in p.public.iter().zip(public) {
        for (coefficient, c) in w.iter_mut().zip(column) {
            *coefficient -= *c * value;
        }
    }
    let check_interpolation_ns = start.elapsed().as_nanos();
    let quotient_start = Instant::now();
    let mut q = d.quotient(&a, &b)?;
    q.resize(m + 3, Fr::ZERO);
    let h0 = Fr::from(17);
    let h1 = Fr::from(23);
    for (i, v) in a.iter().enumerate() {
        q[i] += h0.double() * v;
        q[i + 1] += h1.double() * v;
    }
    for (i, v) in &d.vanishing {
        q[*i] += h0.square() * v;
        q[*i + 1] += (h0 * h1).double() * v;
        q[*i + 2] += h1.square() * v;
    }
    w.resize(m + 2, Fr::ZERO);
    for (i, v) in &d.vanishing {
        w[*i] += h0 * v;
        w[*i + 1] += h1 * v;
    }
    let quotient_mask_ns = quotient_start.elapsed().as_nanos();
    let opening_start = Instant::now();
    let mut r = d.multiply_vanishing(&q);
    for (v, b) in r.iter_mut().zip(&b) {
        *v += b;
    }
    let challenge = Fr::from(41);
    let opening_a = subset::opening(&w, challenge);
    let opening_r = subset::opening(&r, challenge);
    let opening_ns = opening_start.elapsed().as_nanos();
    let total_ns = start.elapsed().as_nanos();
    Ok((
        Output {
            a,
            b,
            masked_w: w,
            q,
            r,
            opening_a,
            opening_r,
        },
        Sample {
            scenario: scenario.into(),
            retained: m,
            block,
            warmup: block < 3,
            check_interpolation_ns,
            quotient_mask_ns,
            opening_ns,
            total_ns,
        },
    ))
}

fn validate(
    p: &Prepared,
    eval: &[Vec<Fr>; 2],
    private: &[Fr],
    public: &[Fr],
    result: &Output,
) -> Result<()> {
    let d = &p.domain;
    let m = d.retained;
    let aa = d.fft.fft(&result.a);
    let bb = d.fft.fft(&result.b);
    for i in 0..m {
        let root = d.root_index(i)?;
        ensure!(
            aa[root] == eval[0][i] && bb[root] == eval[1][i],
            "row ordinal or interpolant mismatch"
        );
    }
    let wa = d.interpolate(private)?;
    let mut derived = result.a.clone();
    for (column, value) in p.public.iter().zip(public) {
        for (v, c) in derived.iter_mut().zip(column) {
            *v -= *c * value;
        }
    }
    ensure!(wa == derived, "outlined public column mismatch");
    ensure!(
        d.quotient(&result.a, &result.b)? == d.quotient_oracle(&result.a, &result.b)?,
        "exact quotient mismatch"
    );
    let mut masked_a = result.masked_w.clone();
    for (column, value) in p.public.iter().zip(public) {
        for (v, c) in masked_a.iter_mut().zip(column) {
            *v += *c * value;
        }
    }
    let a = polynomial(&masked_a);
    let b = polynomial(&result.b);
    ensure!(
        &a * &a - &b == polynomial(&d.multiply_vanishing(&result.q)),
        "masked coefficient identity"
    );
    ensure!(
        result.q.len() <= m + 3
            && result.opening_a.len() <= m + 1
            && result.opening_r.len() <= 2 * m + 2,
        "opening degree bound"
    );
    let point = Fr::from(41);
    ensure!(
        d.evaluate_vanishing(point) != Fr::ZERO,
        "diagnostic challenge in domain"
    );
    ensure!(
        polynomial(&result.r).evaluate(&point) == a.evaluate(&point).square(),
        "opening evaluation identity"
    );
    for (original, opened) in [
        (&result.masked_w, &result.opening_a),
        (&result.r, &result.opening_r),
    ] {
        let linear = polynomial(&[-point, Fr::ONE]);
        let constant = polynomial(&[polynomial(original).evaluate(&point)]);
        ensure!(
            &polynomial(opened) * &linear + constant == polynomial(original),
            "opening coefficient identity"
        );
    }
    Ok(())
}

fn main() -> Result<()> {
    let args: Vec<_> = std::env::args().collect();
    ensure!(args.len() == 3, "usage: subset_cost RELATION NEW_OUTPUT");
    let dir = PathBuf::from(&args[1]);
    let out = PathBuf::from(&args[2]);
    ensure!(!out.exists(), "preserve evidence");
    let original = bridge::Relation::read(
        &dir.join("transfer.r1cs"),
        serde_json::from_slice(&fs::read(dir.join("metadata.json"))?)?,
    )?;
    let plan = Arc::new(lowering::Lowered::compile(&original));
    let cs = ZkPari::<Bls12_377>::circuit_to_keygen_cs(lowering::Circuit {
        relation: plan.clone(),
        original: None,
    })?;
    let matrices = cs.to_matrices().unwrap()[SR1CS_PREDICATE_LABEL].clone();
    let n = cs.num_constraints().next_power_of_two();
    ensure!(
        cs.num_constraints() == 226578 && n == 262144,
        "wrong complete Transfer relation"
    );
    ensure!(
        matrices[1]
            .iter()
            .all(|row| row.iter().all(|(_, wire)| *wire >= 2)),
        "B public columns were not outlined"
    );
    let mut report=Report{schema:"shieldd.proving_experiment.subset_actual_cost.v1",rows:cs.num_constraints(),witness_wires:cs.num_witness_variables(),fft_size:n,preparation:vec![],samples:vec![],all_coefficient_gates_passed:false,limits:"All six real solved Transfer assignments and complete outlined square rows. Current coset-N/public-prepared subgroup control versus one excluded coset (indices1mod8). Includes checked interpolation, complete masks and both opening polynomials; no MSM, key, proof, verifier, bridge or full API result. Domain/public preparation separate. Three warmups and five balanced samples per scenario. Fixed nonzero diagnostic masks/challenge, not proof randomness. No synthetic2N quotient in timing; 2N oracle is correctness-only."};
    let mut variants = vec![];
    for removed in [0, 32768] {
        let start = Instant::now();
        let domain = Domain::new(n, removed)?;
        let domain_ns = start.elapsed().as_nanos();
        ensure!(report.rows <= domain.retained, "outlined rows do not fit");
        let start = Instant::now();
        let mut columns = [
            vec![Fr::ZERO; domain.retained],
            vec![Fr::ZERO; domain.retained],
        ];
        for (i, row) in matrices[0].iter().enumerate() {
            for (c, wire) in row {
                if *wire < 2 {
                    columns[*wire][i] += c;
                }
            }
        }
        let public = [
            domain.interpolate(&columns[0])?,
            domain.interpolate(&columns[1])?,
        ];
        report.preparation.push(Preparation {
            retained: domain.retained,
            domain_ns,
            public_ns: start.elapsed().as_nanos(),
            public_bytes: public.iter().map(|c| c.len() * 32).sum(),
        });
        variants.push(Prepared { domain, public });
    }
    for name in [
        "transfer",
        "transfer_unregulated",
        "transfer_flagged",
        "transfer_accumulating",
        "transfer_over_limit_disclosure",
        "transfer_accumulator_continuation",
    ] {
        let solved: Solved = serde_json::from_slice(&fs::read(dir.join(format!("{name}.json")))?)?;
        let values = bridge::assignment(&solved.assignment, &original, &solved.statement)?;
        let mut full = values[..2].to_vec();
        full.extend(plan.witness(&values)?);
        let mut vectors = vec![];
        let mut references = vec![];
        for p in &variants {
            let mut eval = [
                vec![Fr::ZERO; p.domain.retained],
                vec![Fr::ZERO; p.domain.retained],
            ];
            let mut private = vec![Fr::ZERO; p.domain.retained];
            for (i, row) in matrices[0].iter().enumerate() {
                for (c, j) in row {
                    eval[0][i] += *c * full[*j];
                    if *j >= 2 {
                        private[i] += *c * full[*j];
                    }
                }
            }
            for (i, row) in matrices[1].iter().enumerate() {
                eval[1][i] = row.iter().map(|(c, j)| *c * full[*j]).sum();
            }
            let (reference, _) = kernel(p, &eval, &full[..2], name, 0)?;
            validate(p, &eval, &private, &full[..2], &reference)?;
            for boundary in [0, report.rows - 1, report.rows, p.domain.retained - 1] {
                let mut bad = eval[1].clone();
                bad[boundary] += Fr::ONE;
                ensure!(
                    p.domain.check_rows(&eval[0], &bad).is_err(),
                    "invalid real/padding row accepted"
                );
            }
            vectors.push(eval);
            references.push(reference);
        }
        for block in 0..8 {
            for i in if block % 2 == 0 { [0, 1] } else { [1, 0] } {
                let (result, sample) = kernel(&variants[i], &vectors[i], &full[..2], name, block)?;
                let reference = &references[i];
                ensure!(
                    result.q == reference.q
                        && result.opening_a == reference.opening_a
                        && result.opening_r == reference.opening_r,
                    "sample coefficient mismatch"
                );
                black_box(result);
                report.samples.push(sample);
            }
        }
        eprintln!("{name}: full coefficient identities, row/padding negatives and samples passed");
    }
    report.all_coefficient_gates_passed = true;
    fs::write(out, serde_json::to_vec_pretty(&report)?)?;
    Ok(())
}
