//! Generate exact deployed-slice Lean contracts from the checked IR.
//!
//! Contract files are not semantic proofs. They are deterministic Lean modules
//! containing the exact row relation and fingerprints for one deployed segment.
//! The gate exact-compares regenerated files and typechecks discharging theorems
//! against these contract constants.

use crate::ir::{parse_rows, CircuitIr, Constraint, SegmentIr, Term};
use crate::{CoverageError, Sr1cs};
use std::collections::BTreeMap;

pub struct ContractFile {
    pub segment_index: usize,
    pub module: String,
    pub file_name: String,
    pub contents: String,
}

fn circuit_module(circuit: &str) -> String {
    let mut out = String::new();
    let mut upper = true;
    for ch in circuit.chars() {
        if ch == '_' || ch == '-' {
            upper = true;
            continue;
        }
        if upper {
            out.extend(ch.to_uppercase());
            upper = false;
        } else {
            out.push(ch);
        }
    }
    out
}

/// The `Specs` submodule holding a segment's hand-authored endpoint.
///
/// consolidate2x1's specs are split per crypto family (`Specs/Core.lean`,
/// `Specs/Compress.lean`, …) so that touching one family's endpoints does not
/// re-elaborate contracts/adapters seated on another. Each contract imports the
/// narrowest family submodule; the `Specs.deployedSpecN` reference still
/// resolves because every submodule opens the shared `…Specs` namespace.
/// Non-consolidate circuits keep the monolithic `Specs`.
fn spec_submodule(circuit: &str, segment_index: usize) -> &'static str {
    if circuit_module(circuit) != "Consolidate2x1" {
        return "Specs";
    }
    match segment_index {
        6 | 15 | 24 | 33 | 42 | 54 => "Specs.Compress",
        7 | 25 | 43 => "Specs.NoteCommitment",
        9 | 27 => "Specs.Nullifier",
        13 | 31 => "Specs.Rvk",
        16 | 34 | 45 => "Specs.Dtk",
        52 => "Specs.Nb",
        11 | 29 => "Specs.Scp",
        // on-curve, assert-eq, assert-equivalent glue rows, and the
        // statement-hash endpoint (seg 59).
        _ => "Specs.Glue",
    }
}

pub fn contract_module(circuit: &str, segment_index: usize) -> String {
    format!(
        "Shieldd.GnarkFormal.Deployed.Contracts.{}.Seg{}",
        circuit_module(circuit),
        segment_index
    )
}

pub fn contract_file_name(circuit: &str, segment_index: usize) -> String {
    format!("{}/Seg{}.lean", circuit_module(circuit), segment_index)
}

fn render_lc(terms: &[Term]) -> String {
    if terms.is_empty() {
        return "(0 : F)".to_owned();
    }
    terms
        .iter()
        .map(|term| {
            let coeff = format!("({} : F)", term.coeff);
            if term.wire == 0 {
                coeff
            } else {
                format!("{coeff} * rho {}", term.wire)
            }
        })
        .collect::<Vec<_>>()
        .join(" + ")
}

fn render_row(row: &Constraint) -> String {
    format!(
        "({}) * ({}) = ({})",
        render_lc(&row.l),
        render_lc(&row.r),
        render_lc(&row.o)
    )
}

fn render_rows(rows: &[Constraint]) -> String {
    if rows.is_empty() {
        return "True".to_owned();
    }
    let mut out = String::new();
    for (idx, row) in rows.iter().enumerate() {
        if idx > 0 {
            out.push_str(" ∧\n    ");
        }
        out.push_str(&render_row(row));
    }
    out
}

/// The minimum length of an equal-coefficient arithmetic-progression run of
/// wires that is worth compressing into a `StrideRun`.  Below this the flat
/// rendering is smaller and clearer; at/above it the run replaces `count` flat
/// summands with four numbers.  The fixed-base scalar-ladder accumulators (the
/// O(k²) offenders) are long stride-`s` runs and compress here; short gadget
/// rows fall through to the flat renderer unchanged.
const MIN_RUN: usize = 16;

/// Generated contract modules are large, but must still fail deterministically
/// instead of elaborating without a bound.
const MAX_CONTRACT_HEARTBEATS: u64 = 50_000_000;

/// One compressed arithmetic-progression run: `coeff · Σ_{i<count} rho(start + i·stride)`.
struct StrideRun {
    coeff: String,
    start: usize,
    stride: usize,
    count: usize,
}

/// A linear combination decomposed into `StructuredLC` form: the constant
/// (wire-0) terms, the compressed AP runs, and the leftover residual terms.
struct StructuredLcRepr {
    constant: Vec<Term>,
    runs: Vec<StrideRun>,
    residual: Vec<Term>,
}

/// Extract deterministic arithmetic-progression runs from one coefficient group.
///
/// Runs may be interleaved in sorted wire order. For example, fixed-base ladder
/// rows contain `x₀,y₀,x₁,y₁,...`, where both the x and y subsequences have stride
/// 13. Starting from the smallest remaining wire and choosing its longest run
/// recovers both subsequences without assuming that run members are adjacent.
fn extract_stride_runs(coeff: &str, wires: &[usize]) -> (Vec<StrideRun>, Vec<Term>) {
    let mut remaining = wires.to_vec();
    remaining.sort_unstable();
    let mut runs = Vec::new();
    let mut residual = Vec::new();
    let mut preferred_count_by_stride = BTreeMap::<usize, usize>::new();

    while let Some(&start) = remaining.first() {
        let available = remaining
            .iter()
            .copied()
            .collect::<std::collections::BTreeSet<_>>();
        let mut best: Option<(usize, usize)> = None;
        for &second in remaining.iter().skip(1) {
            let stride = second.saturating_sub(start);
            if stride == 0 {
                continue;
            }
            let mut count = 1;
            let mut wire = start;
            while let Some(next) = wire.checked_add(stride) {
                if !available.contains(&next) {
                    break;
                }
                count += 1;
                wire = next;
            }
            let selected_count = preferred_count_by_stride
                .get(&stride)
                .copied()
                .filter(|preferred| *preferred <= count)
                .unwrap_or(count);
            if selected_count >= MIN_RUN
                && best.map_or(true, |(_, best_count)| selected_count > best_count)
            {
                best = Some((stride, selected_count));
            }
        }

        if let Some((stride, count)) = best {
            preferred_count_by_stride.entry(stride).or_insert(count);
            runs.push(StrideRun {
                coeff: coeff.to_owned(),
                start,
                stride,
                count,
            });
            for index in 0..count {
                let wire = start + index * stride;
                let position = remaining
                    .binary_search(&wire)
                    .expect("selected AP wire must remain available");
                remaining.remove(position);
            }
        } else {
            residual.push(Term {
                coeff: coeff.to_owned(),
                wire: start,
            });
            remaining.remove(0);
        }
    }

    (runs, residual)
}

/// Decompose an LC into `StructuredLC` form, extracting equal-coefficient
/// arithmetic-progression runs of length `≥ MIN_RUN`. Returns `None` when no run
/// qualifies (the LC is then rendered flat, unchanged). Deterministic: coefficient
/// groups are ordered by `BTreeMap`; runs and residuals are ordered by wire.
fn structure_lc(terms: &[Term]) -> Option<StructuredLcRepr> {
    let constant: Vec<Term> = terms.iter().filter(|t| t.wire == 0).cloned().collect();
    let mut by_coeff: BTreeMap<String, Vec<usize>> = BTreeMap::new();
    for t in terms.iter().filter(|t| t.wire != 0) {
        by_coeff.entry(t.coeff.clone()).or_default().push(t.wire);
    }

    let mut runs: Vec<StrideRun> = Vec::new();
    let mut residual: Vec<Term> = Vec::new();
    for (coeff, wires) in &by_coeff {
        let (mut coeff_runs, mut coeff_residual) = extract_stride_runs(coeff, wires);
        runs.append(&mut coeff_runs);
        residual.append(&mut coeff_residual);
    }

    if runs.is_empty() {
        return None;
    }
    let repr = StructuredLcRepr {
        constant,
        runs,
        residual,
    };
    // A run literal carries four scalar parameters. Keep the factored fallback
    // unless the structured form cuts this simple source-cost estimate in half.
    // This rejects accidental APs in irregular LT/canonical rows while retaining
    // the long scalar-ladder accumulators that motivated the representation.
    let compact_cost = repr.constant.len() + 4 * repr.runs.len() + repr.residual.len();
    if compact_cost * 2 >= terms.len() {
        return None;
    }
    // Soundness gate: the compact form must expand back to exactly the original
    // (coeff, wire) multiset.  Fail closed at generation time if it ever doesn't.
    assert!(
        terms_multiset_eq(&expand_repr(&repr), terms),
        "StructuredLC expansion parity failed — compact form does not match raw LC"
    );
    Some(repr)
}

/// Expand a [`StructuredLcRepr`] back to the flat `(coeff, wire)` term list it
/// represents (constant terms, then each run's terms, then residual).
fn expand_repr(repr: &StructuredLcRepr) -> Vec<Term> {
    let mut out = repr.constant.clone();
    for run in &repr.runs {
        for i in 0..run.count {
            out.push(Term {
                coeff: run.coeff.clone(),
                wire: run.start + i * run.stride,
            });
        }
    }
    out.extend(repr.residual.iter().cloned());
    out
}

/// Multiset equality of two term lists (LC value is order-independent).
fn terms_multiset_eq(a: &[Term], b: &[Term]) -> bool {
    if a.len() != b.len() {
        return false;
    }
    let mut a: Vec<(String, usize)> = a.iter().map(|t| (t.coeff.clone(), t.wire)).collect();
    let mut b: Vec<(String, usize)> = b.iter().map(|t| (t.coeff.clone(), t.wire)).collect();
    a.sort();
    b.sort();
    a == b
}

/// Render a decomposed LC as a `StructuredLC.eval rho { .. }` Lean term.
fn render_structured_lc(repr: &StructuredLcRepr) -> String {
    let constant = if repr.constant.is_empty() {
        "(0 : F)".to_owned()
    } else {
        repr.constant
            .iter()
            .map(|t| format!("({} : F)", t.coeff))
            .collect::<Vec<_>>()
            .join(" + ")
    };
    let runs = repr
        .runs
        .iter()
        .map(|r| {
            format!(
                "⟨({} : F), {}, {}, {}⟩",
                r.coeff, r.start, r.stride, r.count
            )
        })
        .collect::<Vec<_>>()
        .join(", ");
    let residual = repr
        .residual
        .iter()
        .map(|t| format!("(({} : F), {})", t.coeff, t.wire))
        .collect::<Vec<_>>()
        .join(", ");
    format!(
        "Shieldd.GnarkFormal.StructuredLC.eval rho \
         (({{ const := {constant}, runs := [{runs}], residual := [{residual}] }} : \
         Shieldd.GnarkFormal.StructuredLC F))"
    )
}

fn render_lc_factored_with_inline_limit(
    terms: &[Term],
    defs: &mut String,
    next_lc: &mut usize,
    inline_limit: usize,
    structured: bool,
) -> String {
    const LC_CHUNK_SIZE: usize = 32;

    if structured {
        if let Some(repr) = structure_lc(terms) {
            return render_structured_lc(&repr);
        }
    }

    if terms.len() <= inline_limit {
        return render_lc(terms);
    }

    let lc_idx = *next_lc;
    *next_lc += 1;
    let mut parts = Vec::new();
    for (part_idx, chunk) in terms.chunks(LC_CHUNK_SIZE).enumerate() {
        let name = format!("relationLc{lc_idx}Part{part_idx}");
        defs.push_str(&format!(
            "def {name} (rho : Nat -> F) : F :=\n    {}\n\n",
            render_lc(chunk)
        ));
        parts.push(format!("{name} rho"));
    }

    let name = format!("relationLc{lc_idx}");
    defs.push_str(&format!(
        "def {name} (rho : Nat -> F) : F :=\n    {}\n\n",
        parts.join(" +\n    ")
    ));
    format!("{name} rho")
}

#[cfg(test)]
fn render_lc_factored(terms: &[Term], defs: &mut String, next_lc: &mut usize) -> String {
    render_lc_factored_with_inline_limit(terms, defs, next_lc, 32, true)
}

fn render_row_factored(
    row: &Constraint,
    defs: &mut String,
    next_lc: &mut usize,
    inline_limit: usize,
    structured: bool,
) -> String {
    let l = render_lc_factored_with_inline_limit(&row.l, defs, next_lc, inline_limit, structured);
    let r = render_lc_factored_with_inline_limit(&row.r, defs, next_lc, inline_limit, structured);
    let o = render_lc_factored_with_inline_limit(&row.o, defs, next_lc, inline_limit, structured);
    format!("({l}) * ({r}) = ({o})")
}

fn render_relation_defs_with_inline_limit(
    rows: &[Constraint],
    inline_limit: usize,
    structured: bool,
) -> (String, String) {
    const CHUNK_THRESHOLD: usize = 100;
    const SMALL_CHUNK_SIZE: usize = 5;
    const LARGE_CHUNK_SIZE: usize = 80;

    if rows.len() <= CHUNK_THRESHOLD {
        return (String::new(), render_rows(rows));
    }

    let factor_lc = rows.len() > 1_200;
    let mut defs = String::new();
    let mut next_lc = 0usize;
    for (idx, row) in rows.iter().enumerate() {
        let row_body = if factor_lc {
            render_row_factored(row, &mut defs, &mut next_lc, inline_limit, structured)
        } else {
            render_row(row)
        };
        defs.push_str(&format!(
            "def relationRow{idx} (rho : Nat -> F) : Prop :=\n    {}\n\n",
            row_body
        ));
    }

    let mut parts = Vec::new();
    let chunk_size = if rows.len() <= 1_200 {
        SMALL_CHUNK_SIZE
    } else {
        LARGE_CHUNK_SIZE
    };
    for (idx, chunk) in (0..rows.len())
        .collect::<Vec<_>>()
        .chunks(chunk_size)
        .enumerate()
    {
        let name = format!("relationPart{idx}");
        let body = chunk
            .iter()
            .map(|row_idx| format!("relationRow{row_idx} rho"))
            .collect::<Vec<_>>()
            .join(" ∧\n    ");
        defs.push_str(&format!(
            "def {name} (rho : Nat -> F) : Prop :=\n    {body}\n\n"
        ));
        parts.push(format!("{name} rho"));
    }

    (defs, parts.join(" ∧\n    "))
}

#[cfg(test)]
fn render_relation_defs(rows: &[Constraint]) -> (String, String) {
    render_relation_defs_with_inline_limit(rows, 32, true)
}

fn render_contract(circuit: &str, segment: &SegmentIr, rows: &[Constraint]) -> ContractFile {
    let module_tail = format!("{}.Seg{}", circuit_module(circuit), segment.index);
    let module = contract_module(circuit, segment.index);
    let file_name = contract_file_name(circuit, segment.index);
    let circuit_mod = circuit_module(circuit);
    // Semantic adapters project recomposition rows directly. Keep their bounded
    // irregular LCs in the row equation so proofs never open a relationLc*Part*
    // implementation detail. Equal-coefficient ladder sums are still compacted
    // first by StructuredLC.
    let inline_limit = match segment.op.as_str() {
        "decaf.net_balance_commitment" => 256,
        "gadget.state_commitment_path" => 64,
        _ => 32,
    };
    // The rvk fixed-base bridges (segs 13/31) consume the flat relationLc*
    // defs directly; compacting their ladder accumulators into StructuredLC
    // would delete the defs those proven adapters are seated on.
    let structured = segment.op != "decaf.randomized_verification_key";
    let (relation_defs, relation_body) =
        render_relation_defs_with_inline_limit(rows, inline_limit, structured);
    let contents = format!(
         "import ShielddGnarkFormal.Deployed.Contract\n\
         import ShielddGnarkFormal.Deployed.Contracts.{circuit_mod}.{spec_sub}\n\
         import ShielddGnarkFormal.StructuredLC\n\
         import Mathlib.Data.ZMod.Basic\n\n\
         set_option maxRecDepth 1000000\n\
         set_option maxHeartbeats {max_heartbeats}\n\n\
         namespace Shieldd.GnarkFormal.Deployed.Contracts.{module_tail}\n\n\
         def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041\n\
         abbrev F := ZMod Order\n\n\
         {relation_defs}\
         def relation (rho : Nat -> F) : Prop :=\n    {relation}\n\n\
         /-- Semantic projection: the hand-authored Layer-2 endpoint for this\n\
         deployed segment, seated on this slice's wire roles. -/\n\
         def spec (rho : Nat -> F) : Prop := Specs.deployedSpec{segment_index} rho\n\n\
         def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {{\n\
           segmentIndex := {segment_index},\n\
           relationSha256Hex := \"{relation_hash}\",\n\
           wireRoleSha256Hex := \"{wire_role_hash}\",\n\
           relation := relation,\n\
           spec := spec\n\
         }}\n\n\
         end Shieldd.GnarkFormal.Deployed.Contracts.{module_tail}\n",
        relation_defs = relation_defs,
        relation = relation_body,
        max_heartbeats = MAX_CONTRACT_HEARTBEATS,
        segment_index = segment.index,
        spec_sub = spec_submodule(circuit, segment.index),
        relation_hash = segment.relation_sha256_hex,
        wire_role_hash = segment.wire_role_sha256_hex,
    );
    ContractFile {
        segment_index: segment.index,
        module,
        file_name,
        contents,
    }
}

pub fn generate(ir: &CircuitIr, sr1cs: &Sr1cs) -> Result<Vec<ContractFile>, CoverageError> {
    let rows = parse_rows(sr1cs)?;
    let mut files = Vec::new();
    for segment in &ir.segments {
        if segment.constraint_count == 0 || segment.class_key.is_empty() {
            continue;
        }
        let segment_rows =
            rows.get(segment.start..segment.end)
                .ok_or(CoverageError::SegmentBounds {
                    start: segment.start,
                    end: segment.end,
                    nb_constraints: rows.len(),
                })?;
        files.push(render_contract(&ir.circuit, segment, segment_rows));
    }
    // Tier-3 inherent-topology gate: recover and parity-check the consolidate2x1
    // DTK canonicity ladders at extraction time (fail-closed), the analogue of
    // `structure_lc`'s in-line parity assert.
    // DTK segment slice `[13677, 13677+6329)`; ladder rows are DTK-relative. The
    // ladders exist only in the full deployed artifact; the slice bound doubles
    // as the guard that this is the real circuit, not a synthetic fixture.
    const DTK_OFFSET: usize = 13677;
    const DTK_ROWS: usize = 6329;
    if ir.circuit == "consolidate2x1" {
        if let Some(dtk) = rows.get(DTK_OFFSET..DTK_OFFSET + DTK_ROWS) {
            crate::ltchain::verify_consolidate2x1_lt_ladders(dtk)
                .map_err(CoverageError::LtLadderParity)?;
        }
    }
    Ok(files)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::ir::{CircuitIr, SegmentIr, WireRoles};

    fn t(coeff: &str, wire: usize) -> Term {
        Term {
            coeff: coeff.to_owned(),
            wire,
        }
    }

    #[test]
    fn structures_stride_run_and_expands_to_original() {
        // const 1 + a wide stride-13 run + two residual terms.
        let mut terms = vec![t("1", 0)];
        for i in 0..20 {
            terms.push(t("1", 100 + i * 13));
        }
        terms.push(t("7", 5));
        terms.push(t("7", 9));
        let repr = structure_lc(&terms).expect("stride run should be detected");
        assert_eq!(repr.runs.len(), 1);
        let run = &repr.runs[0];
        assert_eq!((run.start, run.stride, run.count), (100, 13, 20));
        // residual keeps the two coeff-7 singletons; constant keeps the wire-0 one.
        assert_eq!(repr.residual.len(), 2);
        assert_eq!(repr.constant.len(), 1);
        // Parity: compact form expands back to the exact original multiset.
        assert!(terms_multiset_eq(&expand_repr(&repr), &terms));
    }

    #[test]
    fn structures_interleaved_stride_runs() {
        let mut terms = vec![t("1", 0)];
        for index in 0..20 {
            terms.push(t("1", 100 + index * 13));
            terms.push(t("1", 101 + index * 13));
        }
        let repr = structure_lc(&terms).expect("interleaved runs should be detected");
        assert_eq!(repr.runs.len(), 2);
        assert_eq!(
            repr.runs
                .iter()
                .map(|run| (run.start, run.stride, run.count))
                .collect::<Vec<_>>(),
            vec![(100, 13, 20), (101, 13, 20)]
        );
        assert!(repr.residual.is_empty());
        assert!(terms_multiset_eq(&expand_repr(&repr), &terms));
    }

    #[test]
    fn keeps_parallel_runs_with_allocation_transition_aligned() {
        let mut terms = Vec::new();
        for index in 0..20 {
            terms.push(t("1", 100 + index * 13));
            terms.push(t("1", 101 + index * 13));
        }
        // The next x wire is also the next stride-13 successor of the old y
        // lane. Equal-width preference must not let y consume it.
        for index in 0..18 {
            terms.push(t("1", 361 + index * 14));
            terms.push(t("1", 362 + index * 14));
        }
        let repr = structure_lc(&terms).expect("transition runs should be detected");
        assert_eq!(
            repr.runs
                .iter()
                .map(|run| (run.start, run.stride, run.count))
                .collect::<Vec<_>>(),
            vec![(100, 13, 20), (101, 13, 20), (361, 14, 18), (362, 14, 18)]
        );
        assert!(repr.residual.is_empty());
        assert!(terms_multiset_eq(&expand_repr(&repr), &terms));
    }

    #[test]
    fn short_run_is_not_compressed() {
        // A run below MIN_RUN stays flat.
        let terms = (0..MIN_RUN - 1)
            .map(|index| t("1", 10 + index * 13))
            .collect::<Vec<_>>();
        assert!(structure_lc(&terms).is_none());
    }

    #[test]
    fn unprofitable_runs_are_not_compressed() {
        let mut terms = (0..MIN_RUN)
            .map(|index| t("1", 100 + index * 13))
            .collect::<Vec<_>>();
        terms.extend((0..100).map(|index| t("7", 10_000 + index * index + index)));
        assert!(structure_lc(&terms).is_none());
    }

    #[test]
    fn distinct_coeff_geometric_sum_is_not_compressed() {
        // Σ 2^i · bit_i has a distinct coeff per wire — no equal-coeff run.
        let terms: Vec<Term> = (0..8)
            .map(|i| t(&format!("{}", 1u64 << i), 200 + i))
            .collect();
        assert!(structure_lc(&terms).is_none());
    }

    #[test]
    fn rendered_structured_lc_is_compact() {
        let mut terms = vec![t("1", 0)];
        for i in 0..128 {
            terms.push(t("1", 15543 + i * 13));
        }
        let repr = structure_lc(&terms).expect("run");
        let rendered = render_structured_lc(&repr);
        // The 128-term run renders as ONE StrideRun, not 128 summands.
        assert!(rendered.contains("⟨(1 : F), 15543, 13, 128⟩"));
        assert!(rendered.contains("StructuredLC.eval rho"));
        assert!(terms_multiset_eq(&expand_repr(&repr), &terms));
    }

    #[test]
    fn renders_structured_lc_exactly() {
        let terms = vec![t("3", 0), t("7", 4), t("7", 9)];
        let mut terms = terms;
        for index in 0..MIN_RUN {
            terms.push(t("-2", 10 + index * 5));
        }
        let repr = structure_lc(&terms).expect("stride run should be detected");
        assert_eq!(
            render_structured_lc(&repr),
            "Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3 : F), \
             runs := [⟨(-2 : F), 10, 5, 16⟩], residual := [((7 : F), 4), \
             ((7 : F), 9)] } : Shieldd.GnarkFormal.StructuredLC F))"
        );
    }
    use crate::Sr1cs;

    #[test]
    fn renders_exact_contract_for_constraint_segment() {
        let ir = CircuitIr {
            schema: "test".to_owned(),
            circuit: "consolidate2x1".to_owned(),
            sr1cs_sha256_hex: "sr1cs".to_owned(),
            nb_constraints: 1,
            classes: Vec::new(),
            segments: vec![SegmentIr {
                index: 8,
                op: "assert.eq".to_owned(),
                kind: "glue".to_owned(),
                start: 0,
                end: 1,
                constraint_count: 1,
                class_key: "assert.eq@test".to_owned(),
                wire_roles: WireRoles::default(),
                constant_vector_sha256_hex: "constants".to_owned(),
                relation_sha256_hex: "relation".to_owned(),
                wire_role_sha256_hex: "roles".to_owned(),
            }],
        };
        let sr1cs = Sr1cs {
            prime: "17".to_owned(),
            inputs: Vec::new(),
            outputs: Vec::new(),
            constraints: vec!["(constraint [(2 1)] [(3 2)] [(6 3)])".to_owned()],
            sha256_hex: "sr1cs".to_owned(),
        };

        let files = generate(&ir, &sr1cs).expect("generate contract");
        assert_eq!(files.len(), 1);
        let file = &files[0];
        assert_eq!(file.segment_index, 8);
        assert_eq!(file.file_name, "Consolidate2x1/Seg8.lean");
        assert_eq!(
            file.module,
            "Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg8"
        );
        assert!(file.contents.contains("segmentIndex := 8"));
        assert!(file.contents.contains("relationSha256Hex := \"relation\""));
        assert!(file.contents.contains("wireRoleSha256Hex := \"roles\""));
        assert!(file
            .contents
            .contains("((2 : F) * rho 1) * ((3 : F) * rho 2) = ((6 : F) * rho 3)"));
        // seg8 is a glue (assert.eq) endpoint, so it imports the narrow
        // `Specs.Glue` submodule, not the monolithic `Specs` aggregator.
        assert!(file
            .contents
            .contains("import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue\n"));
        assert!(file
            .contents
            .contains("def spec (rho : Nat -> F) : Prop := Specs.deployedSpec8 rho"));
        assert!(file.contents.contains("set_option maxRecDepth 1000000"));
        assert!(file.contents.contains("set_option maxHeartbeats 50000000"));
        assert!(!file.contents.contains("set_option maxHeartbeats 0"));
        assert!(!file.contents.contains(":= False"));
    }

    #[test]
    fn chunks_large_contract_relations() {
        let rows = (0..1501)
            .map(|idx| Constraint {
                l: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 1,
                }],
                r: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 2,
                }],
                o: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 3,
                }],
            })
            .collect::<Vec<_>>();

        let (defs, relation) = render_relation_defs(&rows);
        assert!(defs.contains("def relationRow0"));
        assert!(defs.contains("def relationRow1500"));
        assert!(defs.contains("def relationPart0"));
        assert!(defs.contains("def relationPart18"));
        assert!(defs.contains("relationRow0 rho"));
        assert!(relation.contains("relationPart0 rho"));
        assert!(relation.contains("relationPart18 rho"));
        assert!(!relation.contains("* rho 1"));
    }

    #[test]
    fn chunks_medium_contract_relations_by_poseidon_rung() {
        let rows = (0..310)
            .map(|idx| Constraint {
                l: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 1,
                }],
                r: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 2,
                }],
                o: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 3,
                }],
            })
            .collect::<Vec<_>>();

        let (defs, relation) = render_relation_defs(&rows);
        assert!(defs.contains("def relationRow0"));
        assert!(defs.contains("def relationRow309"));
        assert!(defs.contains("def relationPart0"));
        assert!(defs.contains("def relationPart61"));
        assert!(defs.contains("relationRow0 rho ∧\n    relationRow1 rho"));
        assert!(relation.contains("relationPart0 rho"));
        assert!(relation.contains("relationPart61 rho"));
        assert!(!relation.contains("relationPart62 rho"));
    }

    #[test]
    fn factors_large_linear_combinations() {
        // Distinct coefficients per wire => no equal-coeff AP run to compress, so
        // this exercises the chunked `relationLc*Part*` fallback (not StructuredLC).
        let terms = (1..=65)
            .map(|wire| Term {
                coeff: format!("{wire}"),
                wire,
            })
            .collect::<Vec<_>>();
        let mut defs = String::new();
        let mut next_lc = 0;

        let rendered = render_lc_factored(&terms, &mut defs, &mut next_lc);

        assert_eq!(rendered, "relationLc0 rho");
        assert_eq!(next_lc, 1);
        assert!(defs.contains("def relationLc0Part0"));
        assert!(defs.contains("def relationLc0Part1"));
        assert!(defs.contains("def relationLc0Part2"));
        assert!(defs.contains("def relationLc0"));
    }

    #[test]
    fn keeps_configured_irregular_linear_combinations_inline() {
        let terms = (1..=253)
            .map(|wire| Term {
                coeff: format!("{wire}"),
                wire,
            })
            .collect::<Vec<_>>();
        let mut defs = String::new();
        let mut next_lc = 0;

        let rendered =
            render_lc_factored_with_inline_limit(&terms, &mut defs, &mut next_lc, 256, true);

        assert!(rendered.contains("(253 : F) * rho 253"));
        assert!(defs.is_empty());
        assert_eq!(next_lc, 0);
    }

    #[test]
    fn structures_transfer_ack_stride13_parallel_offset_one() {
        // The transfer decaf.ack deployed rows (Seg10/72) carry the
        // fixed-base accumulator as two parallel stride-13 runs offset by one
        // wire, e.g. `{ runs: [⟨1,21115,13,16⟩, ⟨1,21116,13,16⟩] }`. Pin that
        // exact shape (count 16 = the narrowest ack rung) round-trips.
        let mut terms = vec![t("1", 0)];
        for index in 0..16 {
            terms.push(t("1", 21115 + index * 13));
            terms.push(t("1", 21116 + index * 13));
        }
        let repr = structure_lc(&terms).expect("ack parallel stride-13 runs should be detected");
        assert_eq!(
            repr.runs
                .iter()
                .map(|run| (run.start, run.stride, run.count))
                .collect::<Vec<_>>(),
            vec![(21115, 13, 16), (21116, 13, 16)]
        );
        assert_eq!(repr.constant.len(), 1);
        assert!(repr.residual.is_empty());
        assert!(terms_multiset_eq(&expand_repr(&repr), &terms));
    }

    #[test]
    fn structures_transfer_shared_secret_mixed_strides() {
        // The transfer decaf.shared_secret rows (Seg104-107) mix stride-5,
        // stride-8, stride-13 and stride-14 accumulators in the same LC (the
        // interleaved coordinate accumulators plus canonical-bit reconstruction).
        // Each equal-coeff arithmetic-progression run must be recovered
        // independently and expand back to the exact multiset.
        let mut terms = Vec::new();
        for index in 0..16 {
            terms.push(t("1", 500 + index * 5));
        }
        for index in 0..16 {
            terms.push(t("1", 900 + index * 8));
        }
        for index in 0..16 {
            terms.push(t("1", 1500 + index * 13));
        }
        for index in 0..16 {
            terms.push(t("1", 2200 + index * 14));
        }
        let repr = structure_lc(&terms).expect("mixed-stride runs should be detected");
        assert_eq!(
            repr.runs
                .iter()
                .map(|run| (run.start, run.stride, run.count))
                .collect::<Vec<_>>(),
            vec![(500, 5, 16), (900, 8, 16), (1500, 13, 16), (2200, 14, 16)]
        );
        assert!(repr.residual.is_empty());
        assert!(terms_multiset_eq(&expand_repr(&repr), &terms));
    }
}
