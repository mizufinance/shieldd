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

fn render_lc_factored(terms: &[Term], defs: &mut String, next_lc: &mut usize) -> String {
    const LC_CHUNK_SIZE: usize = 32;

    if let Some(repr) = structure_lc(terms) {
        return render_structured_lc(&repr);
    }

    if terms.len() <= LC_CHUNK_SIZE {
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

fn render_row_factored(row: &Constraint, defs: &mut String, next_lc: &mut usize) -> String {
    let l = render_lc_factored(&row.l, defs, next_lc);
    let r = render_lc_factored(&row.r, defs, next_lc);
    let o = render_lc_factored(&row.o, defs, next_lc);
    format!("({l}) * ({r}) = ({o})")
}

fn render_relation_defs(rows: &[Constraint]) -> (String, String) {
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
            render_row_factored(row, &mut defs, &mut next_lc)
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

fn render_contract(circuit: &str, segment: &SegmentIr, rows: &[Constraint]) -> ContractFile {
    let module_tail = format!("{}.Seg{}", circuit_module(circuit), segment.index);
    let module = contract_module(circuit, segment.index);
    let file_name = contract_file_name(circuit, segment.index);
    let circuit_mod = circuit_module(circuit);
    let (relation_defs, relation_body) = render_relation_defs(rows);
    let contents = format!(
         "import ShielddGnarkFormal.Deployed.Contract\n\
         import ShielddGnarkFormal.Deployed.Contracts.{circuit_mod}.Specs\n\
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
        assert!(file
            .contents
            .contains("import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs"));
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
}

// ===========================================================================
// Tier-3 SPIKE (throwaway): recurrence-recovery normalizer feasibility probe.
//
// Question the spike exists to answer: can `stateTrace_to_ltcRec` — recovery of
// the `x < p` lt-compare carry chain, currently done inside Lean — be lifted to
// Rust and *parity-gated statically*, exactly like `structure_lc`? i.e. is the
// gate a decidable, fail-closed structural check, or does it need semantic
// (ideal-membership / all-inputs) reasoning?
//
// This module is test-only: no production path, no emission change, manifest
// untouched. The durable output is the written finding at the bottom.
// ===========================================================================
#[cfg(test)]
mod tier3_spike {
    use crate::ir::{Constraint, Term};
    use std::collections::BTreeMap;

    // --- Pass 1/2 topology classification sketch ---------------------------
    #[allow(dead_code)]
    enum ConstraintTopology {
        /// Pass 1: equal-coeff AP run (the existing `structure_lc` case).
        ArtifactPackedSum,
        /// Pass 2: an lt-compare / canonicity carry chain (the Tier-3 target).
        InherentLtChain(LtChain),
        /// Neither — stays flat.
        Flat,
    }

    fn t(coeff: &str, wire: usize) -> Term {
        Term { coeff: coeff.into(), wire }
    }

    /// A recovered lt-compare chain: seed wires + MSB-first rungs. Each rung
    /// carries the bound bit `cb` (a compile-time constant of the modulus) and
    /// the witness bit wire, plus the fresh wires the rung defines.
    struct LtChain {
        pe0: usize,
        il0: usize,
        fresh_base: usize,
        rungs: Vec<Rung>,
    }

    struct Rung {
        cb: bool,      // bound bit (StepOne when true, StepZero when false)
        bit: usize,    // witness bit wire for this rung
    }

    /// Unroll a chain to the exact raw R1CS triples it stands for — the compact
    /// → raw direction of the parity gate (analogue of `expand_repr`). The gate
    /// forms are pinned by `IvkModRBridge.ltConstStep{One,Zero}_uncps`:
    ///   StepOne : pe' = pe·bit ; il' = il + pe(1-bit) - il·(pe(1-bit))
    ///   StepZero: pe' = pe(1-bit)                       (il unchanged)
    fn expand(chain: &LtChain) -> Vec<Constraint> {
        let mut out = Vec::new();
        let mut pe = chain.pe0;
        let mut il = chain.il0;
        let mut fresh = chain.fresh_base;
        let mut alloc = || {
            let w = fresh;
            fresh += 1;
            w
        };
        for r in &chain.rungs {
            if r.cb {
                let pe_out = alloc();
                let s = alloc(); // s = pe·(1-bit)
                let m = alloc(); // m = il·s
                let il_out = alloc();
                // pe' = pe · bit
                out.push(Constraint { l: vec![t("1", pe)], r: vec![t("1", r.bit)], o: vec![t("1", pe_out)] });
                // s = pe · (1 - bit)
                out.push(Constraint { l: vec![t("1", pe)], r: vec![t("1", 0), t("-1", r.bit)], o: vec![t("1", s)] });
                // m = il · s
                out.push(Constraint { l: vec![t("1", il)], r: vec![t("1", s)], o: vec![t("1", m)] });
                // il' = il + s - m   (pure linear: 1·(il + s - m) = il')
                out.push(Constraint { l: vec![t("1", 0)], r: vec![t("1", il), t("1", s), t("-1", m)], o: vec![t("1", il_out)] });
                pe = pe_out;
                il = il_out;
            } else {
                let pe_out = alloc();
                // pe' = pe · (1 - bit)
                out.push(Constraint { l: vec![t("1", pe)], r: vec![t("1", 0), t("-1", r.bit)], o: vec![t("1", pe_out)] });
                pe = pe_out;
            }
        }
        out
    }

    // --- The static parity gate (analogue of terms_multiset_eq) -------------
    // Canonicalize each side by combining like terms (wire -> Σ coeff), treat
    // L·R commutatively, then compare the *multiset* of canonical triples. This
    // is fully decidable structural equality — no field-assignment reasoning.
    type CanonSide = BTreeMap<usize, i128>;

    fn canon_side(terms: &[Term]) -> CanonSide {
        let mut m = CanonSide::new();
        for term in terms {
            let c: i128 = term.coeff.parse().expect("spike uses integer coeffs");
            *m.entry(term.wire).or_insert(0) += c;
        }
        m.retain(|_, v| *v != 0);
        m
    }

    fn canon_constraint(c: &Constraint) -> (CanonSide, CanonSide, CanonSide) {
        let (l, r, o) = (canon_side(&c.l), canon_side(&c.r), canon_side(&c.o));
        let (lo, hi) = if l <= r { (l, r) } else { (r, l) }; // L·R commutes
        (lo, hi, o)
    }

    fn constraints_multiset_eq(a: &[Constraint], b: &[Constraint]) -> bool {
        if a.len() != b.len() {
            return false;
        }
        let mut a: Vec<_> = a.iter().map(canon_constraint).collect();
        let mut b: Vec<_> = b.iter().map(canon_constraint).collect();
        a.sort();
        b.sort();
        a == b
    }

    /// The parity-gated normalizer output: recovery is trusted only if its
    /// unrolling reproduces the raw block exactly (fail-closed). A mis-seated or
    /// wrong-branch recovery cannot pass — soundness rests on this gate, so the
    /// Pass-2 traversal may be an arbitrarily heuristic best-effort.
    fn parity_gated(recovered: &LtChain, raw: &[Constraint], cb_expected: &[bool]) -> bool {
        let cb_recovered: Vec<bool> = recovered.rungs.iter().map(|r| r.cb).collect();
        cb_recovered == cb_expected && constraints_multiset_eq(&expand(recovered), raw)
    }

    fn sample_chain() -> LtChain {
        // 3 MSB-first rungs with bound-bit pattern 1,0,1 over witness bits 40,41,42.
        LtChain {
            pe0: 10,
            il0: 11,
            fresh_base: 100,
            rungs: vec![
                Rung { cb: true, bit: 40 },
                Rung { cb: false, bit: 41 },
                Rung { cb: true, bit: 42 },
            ],
        }
    }

    #[test]
    fn static_parity_gate_holds_on_correct_recovery() {
        let raw = expand(&sample_chain()); // stands in for the gnark-emitted block
        // Pass 2 recovers the same seating (real milestone: from a graph walk).
        let recovered = sample_chain();
        let cb = [true, false, true];
        assert!(
            parity_gated(&recovered, &raw, &cb),
            "correct recovery must pass the static multiset-parity gate"
        );
        // Classification wrapper compiles/holds the recovered chain.
        matches!(ConstraintTopology::InherentLtChain(recovered), ConstraintTopology::InherentLtChain(_));
    }

    #[test]
    fn gate_fails_closed_on_wrong_branch() {
        let raw = expand(&sample_chain());
        // Recovery flips rung-1 branch (StepZero -> StepOne): different triples.
        let mut bad = sample_chain();
        bad.rungs[1].cb = true;
        assert!(
            !parity_gated(&bad, &raw, &[true, false, true]),
            "a wrong-branch recovery must be rejected by the gate"
        );
    }

    #[test]
    fn gate_fails_closed_on_misseated_wire() {
        let raw = expand(&sample_chain());
        // Recovery mis-seats a witness bit wire (40 -> 39): unroll diverges.
        let mut bad = sample_chain();
        bad.rungs[0].bit = 39;
        assert!(
            !constraints_multiset_eq(&expand(&bad), &raw),
            "a mis-seated wire must break multiset parity"
        );
    }

    // ---------------------------------------------------------------------
    // FINDING (go / no-go).
    //
    // (b) DOES THE STATIC-PARITY GATE HOLD?  YES. The lt-rung raw forms are
    //     exact R1CS triples (pinned by ltConstStep{One,Zero}_uncps). Unrolling
    //     a recovered chain reproduces those triples verbatim; the gate is
    //     decidable multiset-equality over canonicalized (like-terms-combined,
    //     L·R-commutative) triples — one rung richer than structure_lc's term
    //     multiset, same complexity class. The tests show it accepts correct
    //     recovery and fails closed on a wrong branch or a mis-seated wire.
    //     Crucially the gate needs NO field-assignment / ideal reasoning: the
    //     recovery never USES booleanity (b·(1-b)=0) to simplify a rung, so
    //     unrolled ≡ raw syntactically, not just semantically. (If a future
    //     recovery did fold booleanity into a rung, parity would degrade to
    //     ideal-membership — keep recovery a pure re-description to stay in the
    //     decidable regime.)  Semantics stay in Lean: ltcRec_sound already
    //     proves the recurrence's meaning; the gate only pins re-description.
    //
    // (a) TRAVERSAL DIFFICULTY.  This is the real cost, NOT the gate. The spike
    //     models a pre-segmented, correctly-seated block; production Pass 2 must
    //     recover seating from gnark's locality-destroyed graph (CSE, const-
    //     folding, widening OR-accumulators, non-local b·(1-b) seating). The
    //     fail-closed gate de-risks this completely: a heuristic traversal is
    //     SOUND regardless of how it seats, because a mis-seat cannot pass. So
    //     the milestone's risk is *completeness* (recovering enough blocks to be
    //     worth it), never soundness.
    //
    // (c) GO / NO-GO: GO, as a follow-on milestone (not this plan). Est. size:
    //     ~1 wk — (1) block segmentation from the def-use graph [hardest],
    //     (2) per-rung shape matcher + cb/bit recovery, (3) this gate promoted
    //     to field-coeff canonicalization + wired into contracts::tests as a
    //     fail-closed assert, (4) emission handing the generator recovered
    //     (pe,il) pairs so Opus sees clean ltcRec, never the folded accumulator.
    //     Pin recovered cb against the independently-known modulus bits so the
    //     gate proves "the ladder against r", not "some ladder".
    // ---------------------------------------------------------------------
}
