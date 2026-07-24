//! Generate exact deployed-slice Lean contracts from the checked IR.
//!
//! Contract files are not semantic proofs. They are deterministic Lean modules
//! containing the exact row relation and fingerprints for one deployed segment.
//! The gate exact-compares regenerated files and typechecks discharging theorems
//! against these contract constants.

use crate::ir::{
    check_reconstruction, normalize_relation, parse_constraint, CircuitIr, Constraint, SegmentIr,
    Term,
};
use crate::template_registry::{
    load_template_rows, verify_witness, TemplateRegistry, TEMPLATE_REGISTRY_SCHEMA,
};
use crate::{CoverageError, Sr1cs};
use std::collections::BTreeMap;
use std::path::Path;

pub struct ContractFile {
    pub segment_index: usize,
    pub module: String,
    pub file_name: String,
    pub contents: String,
}

/// One reusable normalized-relation module.  Instance contracts contain only
/// seating and exact per-instance pins; the row relation lives here once per
/// normalized template key.
pub struct TemplateFile {
    pub template_key: String,
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

fn is_note_reshape_family(circuit: &str) -> bool {
    matches!(
        circuit,
        "note_reshape2x1" | "note_reshape4x1" | "note_reshape8x1" | "note_reshape1x8"
    )
}

fn uses_normalized_template_contract(circuit: &str, _segment: &SegmentIr) -> bool {
    is_note_reshape_family(circuit)
}

/// The `Specs` submodule holding a segment's hand-authored endpoint.
///
/// note_reshape2x1's specs are split per crypto family (`Specs/Core.lean`,
/// `Specs/Compress.lean`, …) so that touching one family's endpoints does not
/// re-elaborate contracts/adapters seated on another. Each contract imports the
/// narrowest family submodule; the `Specs.deployedSpecN` reference still
/// resolves because every submodule opens the shared `…Specs` namespace.
/// Other circuits keep the monolithic `Specs`.
fn spec_submodule(circuit: &str, segment_index: usize) -> &'static str {
    if circuit_module(circuit) != "NoteReshape2x1" {
        return "Specs";
    }
    match segment_index {
        5 | 17 | 32 | 48 => "Specs.Compress",
        9 | 24 | 39 => "Specs.NoteCommitment",
        11 | 26 => "Specs.Nullifier",
        15 | 30 => "Specs.Rvk",
        6 => "Specs.Dtk",
        46 => "Specs.Nb",
        13 | 28 => "Specs.Scp",
        // on-curve, assert-eq, assert-equivalent glue rows, seg7 (DTK
        // consumer, post-hoist single instance), and the statement-hash
        // endpoint (seg 53).
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

/// Split definition payloads before a monolithic contract approaches the
/// bounded contract tier. NoteReshape2x1 Seg6 demonstrated that a 1.9 MiB payload
/// can exceed the 180-second limit even though byte size alone looks modest.
const CONTRACT_SHARD_THRESHOLD_BYTES: usize = 1024 * 1024;

/// Each shard is small enough to elaborate independently under the leaf tier.
/// Seg6 demonstrated that even a 256 KiB shard can reach 61 seconds when its
/// definitions are algebraically dense, so retain margin below the strict
/// 60-second limit instead of tuning to the boundary.
const CONTRACT_SHARD_BYTES: usize = 128 * 1024;

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
fn extract_stride_runs(
    coeff: &str,
    wires: &[usize],
    min_run: usize,
) -> (Vec<StrideRun>, Vec<Term>) {
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
            if selected_count >= min_run
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
fn structure_lc(terms: &[Term], force: bool) -> Option<StructuredLcRepr> {
    let constant: Vec<Term> = terms.iter().filter(|t| t.wire == 0).cloned().collect();
    let mut by_coeff: BTreeMap<String, Vec<usize>> = BTreeMap::new();
    for t in terms.iter().filter(|t| t.wire != 0) {
        by_coeff.entry(t.coeff.clone()).or_default().push(t.wire);
    }

    let mut runs: Vec<StrideRun> = Vec::new();
    let mut residual: Vec<Term> = Vec::new();
    for (coeff, wires) in &by_coeff {
        // Normalized RVK rows become expensive before the generic 16-term
        // source-size threshold. Their semantic provider consumes the same
        // exact AP as an opaque `sumAux`, so expose runs from eight terms on
        // that explicitly forced path while leaving every other relation's
        // extraction policy unchanged.
        let min_run = if force { 8 } else { MIN_RUN };
        let (mut coeff_runs, mut coeff_residual) = extract_stride_runs(coeff, wires, min_run);
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
    if !force && compact_cost * 2 >= terms.len() {
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

fn render_lc_factored_cached(
    terms: &[Term],
    defs: &mut String,
    next_lc: &mut usize,
    inline_limit: usize,
    structured: bool,
    force_structured: bool,
    named_lcs: &mut BTreeMap<Vec<(String, usize)>, String>,
) -> String {
    const LC_CHUNK_SIZE: usize = 32;

    let mut cache_key = terms
        .iter()
        .map(|term| (term.coeff.clone(), term.wire))
        .collect::<Vec<_>>();
    cache_key.sort();
    if let Some(name) = named_lcs.get(&cache_key) {
        return format!("{name} rho");
    }

    if structured {
        if let Some(repr) = structure_lc(terms, force_structured) {
            // Keep wide structured LCs behind a named opaque definition. The
            // row equation still contains the exact compact representation,
            // parity-checked by `structure_lc`, while reusable ladder proofs
            // can treat the accumulator expression as one atom. Inlining the
            // literal here forces every consumer to restate the StructuredLC
            // value and makes normalized-template proofs depend on seating.
            let lc_idx = *next_lc;
            *next_lc += 1;
            let name = format!("relationLc{lc_idx}");
            defs.push_str(&format!(
                "def {name} (rho : Nat -> F) : F :=\n    {}\n\n",
                render_structured_lc(&repr)
            ));
            named_lcs.insert(cache_key, name.clone());
            return format!("{name} rho");
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
    named_lcs.insert(cache_key, name.clone());
    format!("{name} rho")
}

#[cfg(test)]
fn render_lc_factored_with_inline_limit(
    terms: &[Term],
    defs: &mut String,
    next_lc: &mut usize,
    inline_limit: usize,
    structured: bool,
) -> String {
    render_lc_factored_cached(
        terms,
        defs,
        next_lc,
        inline_limit,
        structured,
        false,
        &mut BTreeMap::new(),
    )
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
    force_structured: bool,
    named_lcs: &mut BTreeMap<Vec<(String, usize)>, String>,
) -> String {
    let l = render_lc_factored_cached(
        &row.l,
        defs,
        next_lc,
        inline_limit,
        structured,
        force_structured,
        named_lcs,
    );
    let r = render_lc_factored_cached(
        &row.r,
        defs,
        next_lc,
        inline_limit,
        structured,
        force_structured,
        named_lcs,
    );
    let o = render_lc_factored_cached(
        &row.o,
        defs,
        next_lc,
        inline_limit,
        structured,
        force_structured,
        named_lcs,
    );
    format!("({l}) * ({r}) = ({o})")
}

fn render_relation_defs_with_inline_limit(
    rows: &[Constraint],
    inline_limit: usize,
    structured: bool,
    factor_all_lcs: bool,
    force_structured: bool,
    chunk_size: usize,
) -> (String, String) {
    const CHUNK_THRESHOLD: usize = 100;
    assert!(
        chunk_size > 0,
        "normalized relation chunk size must be positive"
    );

    if rows.len() <= CHUNK_THRESHOLD {
        return (String::new(), render_rows(rows));
    }

    let factor_lc = factor_all_lcs || rows.len() > 1_200;
    let mut defs = String::new();
    let mut next_lc = 0usize;
    let mut named_lcs = BTreeMap::new();
    for (idx, row) in rows.iter().enumerate() {
        let row_body = if factor_lc {
            render_row_factored(
                row,
                &mut defs,
                &mut next_lc,
                inline_limit,
                structured,
                force_structured,
                &mut named_lcs,
            )
        } else {
            render_row(row)
        };
        defs.push_str(&format!(
            "def relationRow{idx} (rho : Nat -> F) : Prop :=\n    {}\n\n",
            row_body
        ));
    }

    let mut parts = Vec::new();
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

fn definition_shards(defs: &str, max_bytes: usize) -> Vec<String> {
    assert!(
        max_bytes > 0,
        "contract definition shard size must be positive"
    );
    let mut blocks = Vec::new();
    let mut block = String::new();
    for line in defs.split_inclusive('\n') {
        if line.starts_with("def ") && !block.is_empty() {
            blocks.push(std::mem::take(&mut block));
        }
        block.push_str(line);
    }
    if !block.is_empty() {
        blocks.push(block);
    }

    let mut shards = Vec::new();
    let mut shard = String::new();
    for block in blocks {
        if !shard.is_empty() && shard.len() + block.len() > max_bytes {
            shards.push(std::mem::take(&mut shard));
        }
        shard.push_str(&block);
    }
    if !shard.is_empty() {
        shards.push(shard);
    }
    shards
}

#[cfg(test)]
fn render_relation_defs(rows: &[Constraint]) -> (String, String) {
    let chunk_size = if rows.len() <= 1_200 { 5 } else { 80 };
    render_relation_defs_with_inline_limit(rows, 32, true, false, false, chunk_size)
}

fn render_wire_seating(seating: &[usize]) -> String {
    let values = seating
        .iter()
        .map(|global| global.to_string())
        .collect::<Vec<_>>()
        .join(", ");
    format!(
        "def wireSeatingTable : List Nat := [{values}]\n\n\
         def wireSeating : Nat -> Nat :=\n\
             fun localWire => wireSeatingTable.getD localWire 0"
    )
}

fn template_module_name(template_key: &str) -> String {
    let (op, hash) = template_key
        .split_once('@')
        .expect("template keys are operation@sha256");
    let mut name = String::from("T");
    let mut upper = true;
    for ch in op.chars() {
        if ch == '.' || ch == '_' || ch == '-' {
            upper = true;
        } else if upper {
            name.extend(ch.to_uppercase());
            upper = false;
        } else {
            name.push(ch);
        }
    }
    name.push('_');
    name.push_str(hash);
    name
}

/// Render the extractor-owned normalized relation separately from its semantic
/// provider. Semantic modules may import this relation, but the public template
/// facade below can only be built through a reviewed `Semantics.*` provider.
fn render_generated_relation(template_key: &str, rows: &[Constraint]) -> Vec<TemplateFile> {
    let module_name = template_module_name(template_key);
    // Crypto templates retain the same five-row proof surface used by the
    // deployed 2x1 adapters, so Poseidon/fixed-base generators can be reused
    // without restating their mathematics. Small control templates stay in
    // compact 16-row CPS blocks for inexpensive direct semantic proofs.
    let (relation_defs, relation_body) = if rows.len() > 100 {
        // Normalized relations are semantic proof inputs, not deployed
        // instance contracts. Always factor their LCs so medium-sized crypto
        // templates expose the same exact named atoms as larger templates.
        let chunk_size = if template_key.starts_with("statement.hash@") {
            // Statement-hash proof blocks consume one relation part per p17
            // block, including for the 1x8 and 8x1 relations.
            5
        } else if rows.len() <= 1_200 {
            5
        } else {
            80
        };
        render_relation_defs_with_inline_limit(
            rows,
            32,
            true,
            true,
            template_key.starts_with("decaf.randomized_verification_key@"),
            chunk_size,
        )
    } else {
        render_template_relation(rows)
    };
    let namespace = format!("Shieldd.GnarkFormal.Deployed.Templates.Relations.{module_name}");
    let module_path = format!("ShielddGnarkFormal.Deployed.Templates.Relations.{module_name}");
    let header = format!(
        "import Mathlib.Algebra.Ring.Defs\n\
         import ShielddGnarkFormal.StructuredLC\n\n\
         set_option maxRecDepth 1000000\n\
         set_option maxHeartbeats {max_heartbeats}\n\n\
         namespace {namespace}\n\n\
         variable {{F : Type}} [CommRing F]\n\n",
        max_heartbeats = MAX_CONTRACT_HEARTBEATS,
    );
    const SHARD_THRESHOLD_BYTES: usize = 32 * 1024;
    const SHARD_BYTES: usize = 16 * 1024;
    if relation_defs.len() <= SHARD_THRESHOLD_BYTES {
        return vec![TemplateFile {
            template_key: template_key.to_owned(),
            module: module_path,
            file_name: format!("Relations/{module_name}.lean"),
            contents: format!(
                "{header}{relation_defs}\
                 def relation (rho : Nat -> F) : Prop :=\n    {relation_body}\n\n\
                 end {namespace}\n"
            ),
        }];
    }

    let mut files = vec![TemplateFile {
        template_key: template_key.to_owned(),
        module: format!("{module_path}Base"),
        file_name: format!("Relations/{module_name}Base.lean"),
        contents: format!("{header}end {namespace}\n"),
    }];
    let mut previous = format!("{module_path}Base");
    for (index, shard) in definition_shards(&relation_defs, SHARD_BYTES)
        .into_iter()
        .enumerate()
    {
        let module = format!("{module_path}Defs{index}");
        files.push(TemplateFile {
            template_key: template_key.to_owned(),
            module: module.clone(),
            file_name: format!("Relations/{module_name}Defs{index}.lean"),
            contents: format!(
                "import {previous}\n\n\
                 set_option maxRecDepth 1000000\n\
                 set_option maxHeartbeats {max_heartbeats}\n\n\
                 namespace {namespace}\n\n\
                 variable {{F : Type}} [CommRing F]\n\n\
                 {shard}\
                 end {namespace}\n",
                max_heartbeats = MAX_CONTRACT_HEARTBEATS,
            ),
        });
        previous = module;
    }
    files.push(TemplateFile {
        template_key: template_key.to_owned(),
        module: module_path,
        file_name: format!("Relations/{module_name}.lean"),
        contents: format!(
            "import {previous}\n\n\
             set_option maxRecDepth 1000000\n\
             set_option maxHeartbeats {max_heartbeats}\n\n\
             namespace {namespace}\n\n\
             variable {{F : Type}} [CommRing F]\n\n\
             def relation (rho : Nat -> F) : Prop :=\n    {relation_body}\n\n\
             end {namespace}\n",
            max_heartbeats = MAX_CONTRACT_HEARTBEATS,
        ),
    });
    files
}

/// Render a normalized template as small continuation-passing row blocks.
fn render_template_relation(rows: &[Constraint]) -> (String, String) {
    const ROWS_PER_BLOCK: usize = 16;
    let mut defs = String::new();
    let mut next_lc = 0usize;
    let mut named_lcs = BTreeMap::new();
    let mut blocks = Vec::new();
    for (block_index, chunk) in rows.chunks(ROWS_PER_BLOCK).enumerate() {
        let body = chunk
            .iter()
            .map(|row| {
                render_row_factored(
                    row,
                    &mut defs,
                    &mut next_lc,
                    32,
                    true,
                    false,
                    &mut named_lcs,
                )
            })
            .collect::<Vec<_>>();
        let block = format!("relationSegment{block_index}");
        defs.push_str(&format!(
            "def {block} (rho : Nat -> F) (k : Prop) : Prop :=\n    {} ∧ k\n\n",
            body.join(" ∧\n    ")
        ));
        blocks.push(block);
    }
    let relation = blocks.iter().rev().fold("True".to_owned(), |tail, block| {
        format!("{block} rho ({tail})")
    });
    (defs, relation)
}

fn render_generated_template(template_key: &str, rows: &[Constraint]) -> Vec<TemplateFile> {
    let module_name = template_module_name(template_key);
    let namespace = format!("Shieldd.GnarkFormal.Deployed.Templates.Generated.{module_name}");
    let module_path = format!("ShielddGnarkFormal.Deployed.Templates.Generated.{module_name}");
    let semantics = format!("Shieldd.GnarkFormal.Deployed.Templates.Semantics.{module_name}");
    let relations = format!("Shieldd.GnarkFormal.Deployed.Templates.Relations.{module_name}");
    let sound_proof = if template_key.starts_with("statement.hash@") {
        let block_count = (rows.len() + 469) / 470;
        let blocks = (0..block_count)
            .map(|index| format!("{semantics}.RelationBlocks.block{index}"))
            .collect::<Vec<_>>()
            .join(", ");
        format!(
            "             apply {semantics}.sound rho\n             simpa only [relation, {semantics}.relation, {relations}.relation, {blocks}, and_assoc] using h\n"
        )
    } else {
        let plain_blank_facade = [
            "TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549",
            "TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b",
            "TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861",
            "TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553",
            "TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc",
            "TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc",
            "TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9",
            "TAssertDummySuffix_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd",
            "TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03",
            "TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f",
            "TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d",
            "TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3",
            "TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350",
            "TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f",
            "TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e",
            "TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3",
            "TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a",
            "TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79",
            "TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5",
            "TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce",
            "TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8",
            "TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6",
            "TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0",
            "TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32",
            "TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b",
            "TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa",
            "TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907",
            "TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144",
        ]
        .contains(&module_name.as_str())
            && module_name != "TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e8305b26ea814c660eb";
        let exact_indent = if plain_blank_facade {
            ""
        } else {
            "             "
        };
        let after_proof = if plain_blank_facade { "\n\n" } else { "\n" };
        format!("{exact_indent}exact {semantics}.sound rho h{after_proof}")
    };
    let mut files = render_generated_relation(template_key, rows);
    files.push(TemplateFile {
        template_key: template_key.to_owned(),
        module: module_path,
        file_name: format!("Generated/{module_name}.lean"),
        contents: format!(
            "import ShielddGnarkFormal.Deployed.Templates.Relations.{module_name}\n\
             import ShielddGnarkFormal.Deployed.Templates.Semantics.{module_name}\n\n\
             set_option maxRecDepth 1000000\n\
             set_option maxHeartbeats {max_heartbeats}\n\n\
             namespace {namespace}\n\n\
             abbrev F := {semantics}.F\n\n\
             def relation (rho : Nat -> F) : Prop := {relations}.relation rho\n\n\
             def spec (rho : Nat -> F) : Prop := {semantics}.spec rho\n\n\
             theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by\n\
{sound_proof}\
             end {namespace}\n",
            max_heartbeats = MAX_CONTRACT_HEARTBEATS,
            namespace = namespace,
            relations = relations,
            semantics = semantics,
            sound_proof = sound_proof,
        ),
    });
    files
}

fn canonical_seating(segment: &SegmentIr) -> &[usize] {
    &segment
        .template_equivalence_witness
        .as_ref()
        .expect("constraint-bearing segment has a template witness")
        .canonical_local_to_deployed_wire_seating
}

fn render_generated_template_contract(circuit: &str, segment: &SegmentIr) -> ContractFile {
    let template = template_module_name(&segment.proof_template_id);
    let module_tail = format!("{}.Seg{}", circuit_module(circuit), segment.index);
    let module = contract_module(circuit, segment.index);
    let file_name = contract_file_name(circuit, segment.index);
    let contents = format!(
        "import ShielddGnarkFormal.Deployed.Contract\n\
         import ShielddGnarkFormal.Deployed.Templates.Core\n\
         import ShielddGnarkFormal.Deployed.Templates.Generated.{template}\n\
         import Mathlib.Data.ZMod.Basic\n\n\
         set_option maxRecDepth 1000000\n\
         set_option maxHeartbeats {max_heartbeats}\n\n\
         namespace Shieldd.GnarkFormal.Deployed.Contracts.{module_tail}\n\n\
         def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041\n\
         abbrev F := ZMod Order\n\n\
         {wire_seating}\n\n\
         def localRho (rho : Nat -> F) : Nat -> F :=\n    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating\n\n\
         def relation (rho : Nat -> F) : Prop :=\n    Shieldd.GnarkFormal.Deployed.Templates.Generated.{template}.relation (localRho rho)\n\n\
         def spec (rho : Nat -> F) : Prop :=\n    Shieldd.GnarkFormal.Deployed.Templates.Generated.{template}.spec (localRho rho)\n\n\
         def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {{\n\
           segmentIndex := {segment_index},\n\
           relationSha256Hex := \"{relation_hash}\",\n\
           wireRoleSha256Hex := \"{wire_role_hash}\",\n\
           relation := relation,\n\
           spec := spec\n\
         }}\n\n\
         end Shieldd.GnarkFormal.Deployed.Contracts.{module_tail}\n",
        max_heartbeats = MAX_CONTRACT_HEARTBEATS,
        template = template,
        wire_seating = render_wire_seating(canonical_seating(segment)),
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

fn parse_segment_rows(
    sr1cs: &Sr1cs,
    segment: &SegmentIr,
) -> Result<Vec<Constraint>, CoverageError> {
    let raw_rows =
        sr1cs
            .constraints
            .get(segment.start..segment.end)
            .ok_or(CoverageError::SegmentBounds {
                start: segment.start,
                end: segment.end,
                nb_constraints: sr1cs.constraints.len(),
            })?;
    raw_rows
        .iter()
        .enumerate()
        .map(|(offset, raw)| parse_constraint(raw, segment.start + offset + 1))
        .collect()
}

fn render_contract(circuit: &str, segment: &SegmentIr, rows: &[Constraint]) -> Vec<ContractFile> {
    // The new NoteReshape families share the normalized-template substrate.
    // Their instance contracts must stay small even for dense Poseidon and
    // scalar-multiplication slices; the normalized relation is emitted once by
    // `generate_templates` and each instance only seats it.
    if uses_normalized_template_contract(circuit, segment) {
        return vec![render_generated_template_contract(circuit, segment)];
    }
    let module_tail = format!("{}.Seg{}", circuit_module(circuit), segment.index);
    let module = contract_module(circuit, segment.index);
    let file_name = contract_file_name(circuit, segment.index);
    let circuit_mod = circuit_module(circuit);
    // Semantic adapters project recomposition rows directly. Keep bounded
    // irregular LCs in the row equation so proofs never open a relationLc*Part*
    // implementation detail. Equal-coefficient ladder sums are compacted first
    // by StructuredLC and exposed through one opaque relationLc* definition.
    let inline_limit = match segment.op.as_str() {
        "decaf.net_balance_commitment" => 256,
        "gadget.state_commitment_path" => 64,
        _ => 32,
    };
    // The rvk fixed-base bridges (segs 13/31) consume the flat relationLc*
    // defs directly; compacting their ladder accumulators into StructuredLC
    // would delete the defs those proven adapters are seated on.
    let structured = segment.op != "decaf.randomized_verification_key";
    let chunk_size = if rows.len() <= 1_200 { 5 } else { 80 };
    let (relation_defs, relation_body) = render_relation_defs_with_inline_limit(
        rows,
        inline_limit,
        structured,
        false,
        false,
        chunk_size,
    );
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
    if relation_defs.len() <= CONTRACT_SHARD_THRESHOLD_BYTES {
        return vec![ContractFile {
            segment_index: segment.index,
            module,
            file_name,
            contents,
        }];
    }

    let module_root = format!(
        "ShielddGnarkFormal.Deployed.Contracts.{circuit_mod}.Seg{}",
        segment.index
    );
    let namespace = format!("Shieldd.GnarkFormal.Deployed.Contracts.{module_tail}");
    let mut files = Vec::new();
    let base_module = format!("{module_root}Base");
    files.push(ContractFile {
        segment_index: segment.index,
        module: base_module.clone(),
        file_name: format!("{circuit_mod}/Seg{}Base.lean", segment.index),
        contents: format!(
            "import ShielddGnarkFormal.Deployed.Contract\n\
             import ShielddGnarkFormal.Deployed.Contracts.{circuit_mod}.{spec_sub}\n\
             import ShielddGnarkFormal.StructuredLC\n\
             import Mathlib.Data.ZMod.Basic\n\n\
             set_option maxRecDepth 1000000\n\
             set_option maxHeartbeats {max_heartbeats}\n\n\
             namespace {namespace}\n\n\
             def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041\n\
             abbrev F := ZMod Order\n\n\
             end {namespace}\n",
            spec_sub = spec_submodule(circuit, segment.index),
            max_heartbeats = MAX_CONTRACT_HEARTBEATS,
        ),
    });

    let mut previous_module = base_module;
    for (index, shard) in definition_shards(&relation_defs, CONTRACT_SHARD_BYTES)
        .into_iter()
        .enumerate()
    {
        let shard_module = format!("{module_root}Defs{index}");
        files.push(ContractFile {
            segment_index: segment.index,
            module: shard_module.clone(),
            file_name: format!("{circuit_mod}/Seg{}Defs{index}.lean", segment.index),
            contents: format!(
                "import {previous_module}\n\n\
                 set_option maxRecDepth 1000000\n\
                 set_option maxHeartbeats {max_heartbeats}\n\n\
                 namespace {namespace}\n\n\
                 {shard}\
                 end {namespace}\n",
                max_heartbeats = MAX_CONTRACT_HEARTBEATS,
            ),
        });
        previous_module = shard_module;
    }

    let facade = format!(
        "import {previous_module}\n\n\
         set_option maxRecDepth 1000000\n\
         set_option maxHeartbeats {max_heartbeats}\n\n\
         namespace {namespace}\n\n\
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
         end {namespace}\n",
        max_heartbeats = MAX_CONTRACT_HEARTBEATS,
        relation = relation_body,
        segment_index = segment.index,
        relation_hash = segment.relation_sha256_hex,
        wire_role_hash = segment.wire_role_sha256_hex,
    );
    files.push(ContractFile {
        segment_index: segment.index,
        module,
        file_name,
        contents: facade,
    });
    files
}

/// Generate the reusable normalized relation modules required by a family.
/// The result is intentionally independent of instance wire ids: one module
/// is keyed by the operation plus normalized-relation hash and all family
/// instances point at that module through their seating.
pub fn generate_templates(
    ir: &CircuitIr,
    sr1cs: &Sr1cs,
    registry: &TemplateRegistry,
    registry_root: &Path,
) -> Result<Vec<TemplateFile>, CoverageError> {
    let mut files = Vec::new();
    visit_templates(ir, sr1cs, registry, registry_root, |file| files.push(file))?;
    Ok(files)
}

/// Visit normalized templates one at a time. This keeps full-circuit
/// generation bounded by the largest template instead of retaining every
/// normalized row and rendered Lean module simultaneously.
pub fn visit_templates(
    ir: &CircuitIr,
    sr1cs: &Sr1cs,
    registry: &TemplateRegistry,
    registry_root: &Path,
    visit: impl FnMut(TemplateFile),
) -> Result<(), CoverageError> {
    visit_templates_filtered(ir, sr1cs, registry, registry_root, None, visit)
}

/// Visit only normalized templates whose operation/hash key contains
/// `filter`, when supplied. Filtering happens before relation reconstruction
/// and rendering so focused regeneration does not retain unrelated circuits.
pub fn visit_templates_filtered(
    ir: &CircuitIr,
    sr1cs: &Sr1cs,
    registry: &TemplateRegistry,
    registry_root: &Path,
    filter: Option<&str>,
    mut visit: impl FnMut(TemplateFile),
) -> Result<(), CoverageError> {
    if registry.schema != TEMPLATE_REGISTRY_SCHEMA {
        return Err(CoverageError::TemplateRegistry(format!(
            "unsupported schema {:?}",
            registry.schema
        )));
    }
    let mut instances = BTreeMap::<String, Vec<&SegmentIr>>::new();
    for segment in &ir.segments {
        if segment.constraint_count == 0 || segment.proof_template_id.is_empty() {
            continue;
        }
        instances
            .entry(segment.proof_template_id.clone())
            .or_default()
            .push(segment);
    }
    for (proof_template_id, segments) in instances {
        if filter.is_some_and(|needle| !proof_template_id.contains(needle)) {
            continue;
        }
        let template = registry
            .templates
            .iter()
            .find(|template| template.proof_template_id == proof_template_id)
            .ok_or_else(|| CoverageError::UnreviewedTemplate {
                op: segments[0].op.clone(),
            })?;
        let canonical_rows = load_template_rows(template, registry_root)?;
        for segment in segments {
            let rows = parse_segment_rows(sr1cs, segment)?;
            let normalized = normalize_relation(&rows);
            check_reconstruction(segment.index, &segment.op, &rows, &normalized)?;
            if normalized.sha256_hex != segment.deployed_normalized_relation_sha256_hex {
                return Err(CoverageError::NormalizedMetadataMismatch {
                    segment_index: segment.index,
                    op: segment.op.clone(),
                    field: "deployed_normalized_relation_sha256_hex",
                    expected: segment.deployed_normalized_relation_sha256_hex.clone(),
                    actual: normalized.sha256_hex,
                });
            }
            let witness = segment
                .template_equivalence_witness
                .as_ref()
                .ok_or_else(|| CoverageError::NormalizedMetadataMismatch {
                    segment_index: segment.index,
                    op: segment.op.clone(),
                    field: "template_equivalence_witness",
                    expected: "verified witness".to_owned(),
                    actual: "missing".to_owned(),
                })?;
            if !verify_witness(
                template,
                registry_root,
                &normalized.rows,
                &normalized.wire_seating,
                witness,
            ) {
                return Err(CoverageError::TemplateRegistry(format!(
                    "invalid equivalence witness for segment {} ({})",
                    segment.index, segment.op
                )));
            }
        }
        for file in render_generated_template(&proof_template_id, &canonical_rows) {
            visit(file);
        }
    }
    Ok(())
}

pub fn generate(ir: &CircuitIr, sr1cs: &Sr1cs) -> Result<Vec<ContractFile>, CoverageError> {
    let mut files = Vec::new();
    for segment in &ir.segments {
        if segment.constraint_count == 0 || segment.class_key.is_empty() {
            continue;
        }
        let segment_rows = parse_segment_rows(sr1cs, segment)?;
        let normalized = normalize_relation(&segment_rows);
        check_reconstruction(segment.index, &segment.op, &segment_rows, &normalized)?;
        if normalized.sha256_hex != segment.deployed_normalized_relation_sha256_hex {
            return Err(CoverageError::NormalizedMetadataMismatch {
                segment_index: segment.index,
                op: segment.op.clone(),
                field: "deployed_normalized_relation_sha256_hex",
                expected: segment.deployed_normalized_relation_sha256_hex.clone(),
                actual: normalized.sha256_hex,
            });
        }
        let witness = segment
            .template_equivalence_witness
            .as_ref()
            .ok_or_else(|| CoverageError::NormalizedMetadataMismatch {
                segment_index: segment.index,
                op: segment.op.clone(),
                field: "template_equivalence_witness",
                expected: "verified witness".to_owned(),
                actual: "missing".to_owned(),
            })?;
        if witness.proof_template_id != segment.proof_template_id {
            return Err(CoverageError::NormalizedMetadataMismatch {
                segment_index: segment.index,
                op: segment.op.clone(),
                field: "proof_template_id",
                expected: segment.proof_template_id.clone(),
                actual: witness.proof_template_id.clone(),
            });
        }
        files.extend(render_contract(&ir.circuit, segment, &segment_rows));
    }
    // Tier-3 inherent-topology gate: recover and parity-check the note_reshape2x1
    // DTK canonicity ladders at extraction time (fail-closed), the analogue of
    // `structure_lc`'s in-line parity assert.
    // The DTK segment's row range moves whenever gnark's constraint-emission
    // order changes (e.g. hoisting DTK computation earlier), so its offset is
    // located from the IR by op rather than pinned to a constant — the slice
    // bound still doubles as the guard that this is the real circuit, not a
    // synthetic fixture (a missing/short DTK segment falls through to `None`).
    const DTK_ROWS: usize = 6077;
    if ir.circuit == "note_reshape2x1" {
        if let Some(dtk_segment) = ir
            .segments
            .iter()
            .find(|s| s.op == "decaf.diversified_transmission_key")
        {
            let dtk_rows = parse_segment_rows(sr1cs, dtk_segment)?;
            if let Some(dtk) = dtk_rows.get(..DTK_ROWS) {
                crate::ltchain::verify_note_reshape2x1_lt_ladders(dtk)
                    .map_err(CoverageError::LtLadderParity)?;
            }
        }
    }
    Ok(files)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::ir::{parse_rows, CircuitIr, SegmentIr, WireRoles};
    use crate::template_registry::{RowPermutationWitness, TemplateEquivalenceWitness};

    fn identity_witness(
        proof_template_id: &str,
        seating: Vec<usize>,
        row_count: usize,
    ) -> TemplateEquivalenceWitness {
        TemplateEquivalenceWitness {
            proof_template_id: proof_template_id.to_owned(),
            canonical_local_to_deployed_wire_seating: seating,
            canonical_row_to_deployed_row: RowPermutationWitness::Identity { row_count },
            row_transforms: Vec::new(),
            witness_sha256_hex: "test-witness".to_owned(),
        }
    }

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
        let repr = structure_lc(&terms, false).expect("stride run should be detected");
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
    fn forced_structure_exposes_short_rvk_accumulator_run() {
        let terms = (0..8)
            .map(|index| t("1", 256 + index * 5))
            .collect::<Vec<_>>();

        assert!(structure_lc(&terms, false).is_none());
        let repr = structure_lc(&terms, true).expect("forced RVK run");
        assert_eq!(repr.runs.len(), 1);
        assert_eq!(
            (repr.runs[0].start, repr.runs[0].stride, repr.runs[0].count),
            (256, 5, 8)
        );
        assert!(terms_multiset_eq(&expand_repr(&repr), &terms));
    }

    #[test]
    fn structures_interleaved_stride_runs() {
        let mut terms = vec![t("1", 0)];
        for index in 0..20 {
            terms.push(t("1", 100 + index * 13));
            terms.push(t("1", 101 + index * 13));
        }
        let repr = structure_lc(&terms, false).expect("interleaved runs should be detected");
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
        let repr = structure_lc(&terms, false).expect("transition runs should be detected");
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
        assert!(structure_lc(&terms, false).is_none());
    }

    #[test]
    fn unprofitable_runs_are_not_compressed() {
        let mut terms = (0..MIN_RUN)
            .map(|index| t("1", 100 + index * 13))
            .collect::<Vec<_>>();
        terms.extend((0..100).map(|index| t("7", 10_000 + index * index + index)));
        assert!(structure_lc(&terms, false).is_none());
    }

    #[test]
    fn distinct_coeff_geometric_sum_is_not_compressed() {
        // Σ 2^i · bit_i has a distinct coeff per wire — no equal-coeff run.
        let terms: Vec<Term> = (0..8)
            .map(|i| t(&format!("{}", 1u64 << i), 200 + i))
            .collect();
        assert!(structure_lc(&terms, false).is_none());
    }

    #[test]
    fn rendered_structured_lc_is_compact() {
        let mut terms = vec![t("1", 0)];
        for i in 0..128 {
            terms.push(t("1", 15543 + i * 13));
        }
        let repr = structure_lc(&terms, false).expect("run");
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
        let repr = structure_lc(&terms, false).expect("stride run should be detected");
        assert_eq!(
            render_structured_lc(&repr),
            "Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3 : F), \
             runs := [⟨(-2 : F), 10, 5, 16⟩], residual := [((7 : F), 4), \
             ((7 : F), 9)] } : Shieldd.GnarkFormal.StructuredLC F))"
        );
    }

    #[test]
    fn factors_structured_lc_behind_named_opaque_definition() {
        let terms = (0..MIN_RUN)
            .map(|index| t("7", 100 + index * 13))
            .collect::<Vec<_>>();
        let mut defs = String::new();
        let mut next_lc = 0;

        let rendered = render_lc_factored(&terms, &mut defs, &mut next_lc);

        assert_eq!(rendered, "relationLc0 rho");
        assert_eq!(next_lc, 1);
        assert!(defs.contains("def relationLc0 (rho : Nat -> F) : F :="));
        assert!(defs.contains("StructuredLC.eval rho"));
        assert!(defs.contains("⟨(7 : F), 100, 13, 16⟩"));
        assert!(!defs.contains("relationLc0Part"));
    }

    #[test]
    fn normalized_medium_relation_factors_structured_lcs() {
        let wide = (0..251).map(|index| t("1", index + 1)).collect::<Vec<_>>();
        let mut rows = vec![Constraint {
            l: wide.clone(),
            r: wide,
            o: vec![t("1", 253)],
        }];
        rows.extend((0..100).map(|index| Constraint {
            l: vec![t("1", index + 1)],
            r: vec![t("1", index + 2)],
            o: vec![t("1", index + 3)],
        }));

        let emitted = render_generated_relation("decaf.compress_to_field@deadbeef", &rows)
            .into_iter()
            .map(|file| file.contents)
            .collect::<String>();

        assert!(emitted.contains("def relationLc0 (rho : Nat -> F) : F :="));
        assert!(emitted.contains("StructuredLC.eval rho"));
        assert!(emitted.contains("⟨(1 : F), 1, 1, 251⟩"));
        assert!(emitted.contains(
            "def relationRow0 (rho : Nat -> F) : Prop :=\n    (relationLc0 rho) * (relationLc0 rho)"
        ));
        assert_eq!(
            emitted.matches("def relationLc0 (rho : Nat -> F)").count(),
            1
        );
        assert!(!emitted.contains("def relationLc1 (rho : Nat -> F)"));
    }
    use crate::Sr1cs;

    #[test]
    fn renders_exact_contract_for_constraint_segment() {
        let mut ir = CircuitIr {
            schema: "test".to_owned(),
            circuit: "synthetic".to_owned(),
            sr1cs_sha256_hex: "sr1cs".to_owned(),
            nb_constraints: 1,
            classes: Vec::new(),
            segments: vec![SegmentIr {
                index: 100,
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
                deployed_normalized_relation_sha256_hex: "normalized".to_owned(),
                proof_template_id: "assert.eq@normalized".to_owned(),
                template_equivalence_witness: Some(identity_witness(
                    "assert.eq@normalized",
                    vec![0, 1, 2, 3],
                    1,
                )),
            }],
        };
        let sr1cs = Sr1cs {
            prime: "17".to_owned(),
            inputs: Vec::new(),
            outputs: Vec::new(),
            constraints: vec!["(constraint [(2 1)] [(3 2)] [(6 3)])".to_owned()],
            sha256_hex: "sr1cs".to_owned(),
        };
        let normalized = normalize_relation(&parse_rows(&sr1cs).expect("parse test rows"));
        ir.segments[0].deployed_normalized_relation_sha256_hex = normalized.sha256_hex.clone();
        ir.segments[0].proof_template_id = format!("assert.eq@{}", normalized.sha256_hex);
        ir.segments[0].template_equivalence_witness = Some(identity_witness(
            &ir.segments[0].proof_template_id,
            normalized.wire_seating.clone(),
            1,
        ));

        let files = generate(&ir, &sr1cs).expect("generate contract");
        assert_eq!(files.len(), 1);
        let file = &files[0];
        assert_eq!(file.segment_index, 100);
        assert_eq!(file.file_name, "Synthetic/Seg100.lean");
        assert_eq!(
            file.module,
            "Shieldd.GnarkFormal.Deployed.Contracts.Synthetic.Seg100"
        );
        assert!(file.contents.contains("segmentIndex := 100"));
        assert!(file.contents.contains("relationSha256Hex := \"relation\""));
        assert!(file.contents.contains("wireRoleSha256Hex := \"roles\""));
        assert!(file
            .contents
            .contains("((2 : F) * rho 1) * ((3 : F) * rho 2) = ((6 : F) * rho 3)"));
        // Non-NoteReshape consumers keep their direct exact-row contract and
        // monolithic Specs endpoint.
        assert!(file
            .contents
            .contains("import ShielddGnarkFormal.Deployed.Contracts.Synthetic.Specs\n"));
        assert!(file
            .contents
            .contains("def spec (rho : Nat -> F) : Prop := Specs.deployedSpec100 rho"));
        assert!(file.contents.contains("set_option maxRecDepth 1000000"));
        assert!(file.contents.contains("set_option maxHeartbeats 50000000"));
        assert!(!file.contents.contains("set_option maxHeartbeats 0"));
        assert!(!file.contents.contains(":= False"));
    }

    #[test]
    fn renders_repeated_assert_eq_through_the_registry_facade() {
        let mut ir = CircuitIr {
            schema: "test".to_owned(),
            circuit: "note_reshape2x1".to_owned(),
            sr1cs_sha256_hex: "sr1cs".to_owned(),
            nb_constraints: 1,
            classes: Vec::new(),
            segments: vec![SegmentIr {
                index: 36,
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
                deployed_normalized_relation_sha256_hex: String::new(),
                proof_template_id: String::new(),
                template_equivalence_witness: Some(identity_witness("", vec![0, 106, 16], 1)),
            }],
        };
        let sr1cs = Sr1cs {
            prime: "17".to_owned(),
            inputs: Vec::new(),
            outputs: Vec::new(),
            constraints: vec!["(constraint [(1 0)] [(1 106)] [(1 16)])".to_owned()],
            sha256_hex: "sr1cs".to_owned(),
        };
        let normalized = normalize_relation(&parse_rows(&sr1cs).expect("parse test rows"));
        ir.segments[0].deployed_normalized_relation_sha256_hex = normalized.sha256_hex.clone();
        ir.segments[0].proof_template_id = format!("assert.eq@{}", normalized.sha256_hex);
        ir.segments[0].template_equivalence_witness = Some(identity_witness(
            &ir.segments[0].proof_template_id,
            normalized.wire_seating.clone(),
            1,
        ));

        let files = generate(&ir, &sr1cs).expect("generate template contract");
        let file = &files[0];
        assert!(file
            .contents
            .contains("import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_"));
        assert!(file.contents.contains(".relation (localRho rho)"));
        assert!(file.contents.contains(".spec (localRho rho)"));
        assert!(!file.contents.contains("Templates.Simple"));
        assert!(file
            .contents
            .contains("wireSeatingTable : List Nat := [0, 106, 16]"));
        assert!(!file.contents.contains("Specs.deployedSpec36"));

        ir.segments[0].template_equivalence_witness = None;
        assert!(matches!(
            generate(&ir, &sr1cs),
            Err(CoverageError::NormalizedMetadataMismatch {
                field: "template_equivalence_witness",
                ..
            })
        ));
    }

    #[test]
    fn generated_template_facade_requires_a_separate_semantic_provider() {
        let rows = vec![Constraint {
            l: vec![Term {
                coeff: "1".to_owned(),
                wire: 1,
            }],
            r: vec![Term {
                coeff: "1".to_owned(),
                wire: 2,
            }],
            o: vec![Term {
                coeff: "1".to_owned(),
                wire: 3,
            }],
        }];
        let files = render_generated_template("assert.boolean@deadbeef", &rows);
        let facade = files
            .iter()
            .find(|file| file.file_name.starts_with("Generated/"))
            .expect("semantic facade");
        assert!(facade.contents.contains(
            "import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertBoolean_deadbeef"
        ));
        assert!(facade.contents.contains(
            "def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertBoolean_deadbeef.relation rho"
        ));
        assert!(!facade.contents.contains(
            "def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics"
        ));
        assert!(!facade.contents.contains("spec := relation"));
        assert!(!facade.contents.contains("fun _ h => h"));
        assert!(files
            .iter()
            .filter(|file| file.file_name.starts_with("Relations/"))
            .all(|file| !file.contents.contains("def spec")));
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
    fn statement_hash_large_relations_keep_five_row_parts() {
        let rows = (0..1385)
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
        let files = render_generated_relation("statement.hash@deadbeef", &rows);
        let relation = files
            .iter()
            .find(|file| file.file_name == "Relations/TStatementHash_deadbeef.lean")
            .expect("statement-hash relation facade");
        let defs = files
            .iter()
            .filter(|file| {
                file.file_name
                    .starts_with("Relations/TStatementHash_deadbeefDefs")
            })
            .map(|file| file.contents.as_str())
            .collect::<String>();
        assert!(defs.contains("def relationPart0"));
        assert!(defs.contains("relationRow0 rho ∧\n    relationRow1 rho ∧\n    relationRow2 rho ∧\n    relationRow3 rho ∧\n    relationRow4 rho"));
        assert!(defs.contains("def relationPart276"));
        assert!(relation.contents.contains("relationPart276 rho"));
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
    fn shards_contract_definitions_only_at_top_level_boundaries() {
        let defs =
            "def a : Nat :=\n    1\n\ndef b : Nat :=\n    a + 1\n\ndef c : Nat :=\n    b + 1\n\n";
        let shards = definition_shards(defs, 35);

        assert_eq!(shards.concat(), defs);
        assert_eq!(shards.len(), 3);
        assert!(shards.iter().all(|shard| shard.starts_with("def ")));
        assert!(shards.iter().all(|shard| !shard.contains("\n\ndef ")));
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
        let repr =
            structure_lc(&terms, false).expect("ack parallel stride-13 runs should be detected");
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
        let repr = structure_lc(&terms, false).expect("mixed-stride runs should be detected");
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
