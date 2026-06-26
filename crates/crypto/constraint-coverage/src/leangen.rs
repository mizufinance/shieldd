//! Generate one Lean `def` per deployed-slice structural class, *from* the IR.
//!
//! Each class becomes a flat-R1CS relation over local wire variables (inputs
//! `i*`, outputs `o*`, internal `v*` existentially bound), with the folded
//! constants as field literals taken verbatim from the representative instance.
//! Because every instance of a class shares identical constants and differs only
//! by wire IDs (verified in `ir`), one def covers all instances; composition
//! threads each instance's global wires via the IR wire-role map.
//!
//! This is a deterministic pretty-printer of the already-checked IR — it never
//! parses Lean back to R1CS.

use crate::ir::{def_sites, last_uses, parse_rows, wire_roles_for, CircuitIr, Constraint, Term};
use crate::{CoverageError, Sr1cs};
use sha2::{Digest, Sha256};
use std::collections::{BTreeMap, BTreeSet};

pub struct GeneratedFile {
    pub class_key: String,
    pub module: String,
    pub file_name: String,
    pub contents: String,
    pub sha256_hex: String,
}

/// CamelCase a `.`/`_`-separated op into a Lean-safe identifier stem.
fn camel(op: &str) -> String {
    let mut out = String::new();
    let mut upper = true;
    for ch in op.chars() {
        if ch == '.' || ch == '_' {
            upper = true;
        } else if upper {
            out.extend(ch.to_uppercase());
            upper = false;
        } else {
            out.push(ch);
        }
    }
    out
}

fn class_module(op: &str, size: usize, shape_hash: &str) -> String {
    format!("{}{}_{}", camel(op), size, &shape_hash[..6])
}

fn field_imports(op: &str) -> &'static str {
    match op {
        "gadget.note_commitment" | "gadget.note_commitment_with_output" => {
            "import ShielddGnarkFormal.Extracted.PoseidonHash6\n"
        }
        _ => "",
    }
}

fn field_defs(op: &str, prime: &str) -> String {
    match op {
        "gadget.note_commitment" | "gadget.note_commitment_with_output" => {
            "abbrev Order : ℕ := Shieldd.GnarkFormal.Extracted.PoseidonHash6.Order\n\
             variable [Fact (Nat.Prime Order)]\n\
             abbrev F := Shieldd.GnarkFormal.Extracted.PoseidonHash6.F"
                .to_owned()
        }
        _ => {
            format!(
                "def Order : ℕ := {prime}\n\
                 variable [Fact (Nat.Prime Order)]\n\
                 abbrev F := ZMod Order"
            )
        }
    }
}

/// Render a linear combination over local variable names.
fn render_lc(terms: &[Term], name: &BTreeMap<usize, String>) -> String {
    if terms.is_empty() {
        return "(0 : F)".to_owned();
    }
    terms
        .iter()
        .map(|t| {
            let coeff = format!("({} : F)", t.coeff);
            if t.wire == 0 {
                coeff
            } else {
                format!("{coeff} * {}", name[&t.wire])
            }
        })
        .collect::<Vec<_>>()
        .join(" + ")
}

struct ClassCtx<'a> {
    op: &'a str,
    size: usize,
    shape_hash: &'a str,
    prime: &'a str,
    /// Global rows of the representative segment range.
    rows: &'a [Constraint],
    /// Global wire roles (computed over the whole circuit, not the slice).
    roles: &'a crate::ir::WireRoles,
    /// Global def site of each wire, for stable internal ordering.
    def_site: &'a BTreeMap<usize, usize>,
}

fn render_class(ctx: &ClassCtx) -> (String, String) {
    let ClassCtx {
        op,
        size,
        shape_hash,
        prime,
        rows,
        roles,
        def_site,
    } = *ctx;

    // Local names. Internal wires ordered by definition row for readability.
    let mut name: BTreeMap<usize, String> = BTreeMap::new();
    for (k, &w) in roles.input.iter().enumerate() {
        name.insert(w, format!("i{k}"));
    }
    for (k, &w) in roles.output.iter().enumerate() {
        name.insert(w, format!("o{k}"));
    }
    let mut internal = roles.internal.clone();
    internal.sort_by_key(|w| def_site.get(w).copied().unwrap_or(usize::MAX));
    for (k, &w) in internal.iter().enumerate() {
        name.insert(w, format!("v{k}"));
    }

    let module = class_module(op, size, shape_hash);
    let inputs: String = roles
        .input
        .iter()
        .map(|w| name[w].clone())
        .collect::<Vec<_>>()
        .join(" ");
    let outputs: String = roles
        .output
        .iter()
        .map(|w| name[w].clone())
        .collect::<Vec<_>>()
        .join(" ");

    let mut binders = String::new();
    if !inputs.is_empty() {
        binders.push_str(&format!("({inputs} : F) "));
    }
    if !outputs.is_empty() {
        binders.push_str(&format!("({outputs} : F) "));
    }

    let mut body = String::new();
    if !internal.is_empty() {
        let vs: String = internal
            .iter()
            .map(|w| name[w].clone())
            .collect::<Vec<_>>()
            .join(" ");
        body.push_str(&format!("∃ {vs} : F,\n"));
    }
    let conj: Vec<String> = rows
        .iter()
        .map(|c| {
            format!(
                "  ({}) * ({}) = ({})",
                render_lc(&c.l, &name),
                render_lc(&c.r, &name),
                render_lc(&c.o, &name)
            )
        })
        .collect();
    body.push_str(&conj.join(" ∧\n"));

    let contents = format!(
        "import ProvenZk.Gates\n\
         {}\n\
\n\
         set_option linter.unusedVariables false\n\
         set_option maxRecDepth 100000\n\
         set_option maxHeartbeats 0\n\n\
         /-! Auto-generated deployed-slice relation for `{op}` (size {size}).\n\
         Flat R1CS rows of the gnark partial-evaluated gadget, constants verbatim.\n\
         Generated from the checked deployed-slice IR; do not edit by hand. -/\n\n\
         namespace Shieldd.GnarkFormal.Extracted.Deployed.{module}\n\n\
         {}\n\n\
         def relation {binders}: Prop :=\n{body}\n\n\
         end Shieldd.GnarkFormal.Extracted.Deployed.{module}\n",
        field_imports(op),
        field_defs(op, prime)
    );
    (module, contents)
}

fn sha256_hex(data: &[u8]) -> String {
    let mut h = Sha256::new();
    h.update(data);
    hex::encode(h.finalize())
}

// ---------------------------------------------------------------------------
// Segmented (continuation-passing) generation.
//
// Dense classes (Poseidon hashes, scalar-mul ladders) cannot be proved as one
// monolithic `def relation` — elaboration is quadratic in chain length (the
// CLAUDE.md ≤60-gate rule). We instead emit one `seg{k}` predicate per ≤`seg_size`
// rows in continuation-passing form — exactly the idiom the structured extracted
// gadgets already use (`poseidonPerm6 Domain In… (k : F → Prop)`):
//
//   def seg0 (entry… : F) (k : F → … → Prop) : Prop :=
//     ∃ local…, <rows 0..b> ∧ k exit…
//
// and a top-level `relation (inputs… : F) (k : F → … → Prop)` that threads each
// segment's exit wires (its live-out set) into the next segment via the binder,
// terminating in `k output…`. A wire is *live* across a cut if it is defined
// before the cut and still read after it (class outputs are read by the terminal
// continuation, so they live to the end). Naming is global (`w{id}`) so a binder
// introduced by one segment's continuation is exactly the next segment's
// parameter — no renaming bookkeeping.
// ---------------------------------------------------------------------------

/// Re-materialize every wide linear combination into a chain of 2-term partial
/// sums before segmentation.
///
/// Deployed ladder/recomposition rows carry running accumulators folded inline as
/// one wide factor: a coeff-`α` growing window `Σ wᵢ` (scalar-mul rungs), a
/// `Σ 2ⁱ·bitᵢ` geometric recomposition, etc. Rendered verbatim these are nested
/// HAdd terms of up to ~500 summands that Lean elaborates super-linearly, so the
/// slice cannot elaborate even as standalone segment defs.
///
/// For a wide factor we re-materialize its dominant equal-coefficient group — the
/// folded running sum `α·Σ wᵢ` — by factoring `α` out and building the coeff-1
/// wire sum `s` with fresh synthetic wires (`s = w₀`, then `sₖ = sₖ₋₁ + wₖ`, one
/// ≤2-term row each), then rewriting the factor to `(other terms) ++ [α·s]`.
/// Sound: each `sₖ` is a fresh wire defined by its own appended row, and `α·s`
/// reproduces `α·Σwᵢ` exactly because every folded wire shared coefficient `α`.
///
/// Coefficient-independent prefix sharing is the crux: the deployed rungs reuse
/// the SAME growing wire window but with a DIFFERENT per-rung coefficient `α_k`,
/// so a `(coeff,wire)`-keyed share never hits. Keying the prefix map by the WIRE
/// sequence alone lets consecutive windows share their common leading run and add
/// only their few new wires, keeping the synthetic-row count O(n) instead of
/// O(n²). Factors with no large equal-coeff group (e.g. the `Σ 2ⁱ·bitᵢ`
/// geometric recompositions) are then linearized generically into running
/// `(coeff,wire)` partial sums so every rendered factor stays narrow.
/// Provenance of a re-materialized row, for emitting the exact per-row
/// `linear_combination` certificate (`deployed ⇒ rematerialized`).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Prov {
    /// Synthetic defining row `sₚ = <2-term LC>`; holds by `ring` under `rhoExt`.
    Defining(usize),
    /// A deployed row with its wide factors rewritten onto synthetic wires;
    /// recovered from deployed row `idx` by substituting the synthetic defs.
    Rewritten(usize),
}

/// Thin wrapper dropping provenance, for tests and width assertions.
#[cfg(test)]
fn rematerialize_accumulators(rows: &[Constraint]) -> Vec<Constraint> {
    rematerialize_tagged(rows)
        .into_iter()
        .map(|(c, _)| c)
        .collect()
}

/// Re-materialize, tagging each emitted row with its [`Prov`] so the certificate
/// generator can emit the exact `linear_combination` per row.
fn rematerialize_tagged(rows: &[Constraint]) -> Vec<(Constraint, Prov)> {
    const MAX_TERMS: usize = 6;
    let mut next = rows
        .iter()
        .flat_map(|c| c.l.iter().chain(&c.r).chain(&c.o))
        .map(|t| t.wire)
        .max()
        .unwrap_or(0)
        + 1;
    let mut out: Vec<(Constraint, Prov)> = Vec::with_capacity(rows.len());
    // wire-prefix -> synthetic wire holding that prefix's coeff-1 sum (shared
    // across rungs, coefficient-independent) and (coeff,wire)-prefix -> synthetic
    // wire for the generic residual linearization.
    let mut wire_prefix: BTreeMap<Vec<usize>, usize> = BTreeMap::new();
    let mut term_prefix: BTreeMap<Vec<(String, usize)>, usize> = BTreeMap::new();

    let get_l = (|r: &mut Constraint| &mut r.l) as fn(&mut Constraint) -> &mut Vec<Term>;
    let get_r = (|r: &mut Constraint| &mut r.r) as fn(&mut Constraint) -> &mut Vec<Term>;
    let get_o = (|r: &mut Constraint| &mut r.o) as fn(&mut Constraint) -> &mut Vec<Term>;
    for (idx, c) in rows.iter().enumerate() {
        let mut row = c.clone();
        for get in [get_l, get_r, get_o] {
            linearize_factor(
                get(&mut row),
                MAX_TERMS,
                &mut wire_prefix,
                &mut term_prefix,
                &mut next,
                &mut out,
            );
        }
        out.push((row, Prov::Rewritten(idx)));
    }
    out
}

/// Re-materialize one wide factor in place (see `rematerialize_accumulators`).
/// First folds every equal-coefficient group larger than `max_terms` via
/// coefficient-independent wire-prefix sharing (`α·Σwᵢ → α·s`); then, if the
/// residual is still wide (e.g. a distinct-coefficient `Σ 2ⁱ·bitᵢ` geometric
/// recomposition), linearizes it generically into running `(coeff,wire)` partial
/// sums. Every emitted synthetic row has a ≤2-term left factor.
fn linearize_factor(
    side: &mut Vec<Term>,
    max_terms: usize,
    wire_prefix: &mut BTreeMap<Vec<usize>, usize>,
    term_prefix: &mut BTreeMap<Vec<(String, usize)>, usize>,
    next: &mut usize,
    out: &mut Vec<(Constraint, Prov)>,
) {
    let one = |w: usize| Term {
        coeff: "1".to_owned(),
        wire: w,
    };
    let var: Vec<Term> = side.iter().filter(|t| t.wire != 0).cloned().collect();
    if var.len() <= max_terms {
        return;
    }
    let mut newside: Vec<Term> = side.iter().filter(|t| t.wire == 0).cloned().collect();

    // Step 1: fold each large equal-coefficient group by its wire sequence.
    let mut by_coeff: BTreeMap<String, Vec<usize>> = BTreeMap::new();
    for t in &var {
        by_coeff.entry(t.coeff.clone()).or_default().push(t.wire);
    }
    let large: BTreeSet<String> = by_coeff
        .iter()
        .filter(|(_, v)| v.len() > max_terms)
        .map(|(c, _)| c.clone())
        .collect();
    let mut folded: Vec<Term> = Vec::new();
    for coeff in &large {
        let wires = &by_coeff[coeff];
        let mut key: Vec<usize> = vec![wires[0]];
        let mut s = wires[0];
        for &w in &wires[1..] {
            key.push(w);
            if let Some(&p) = wire_prefix.get(&key) {
                s = p;
                continue;
            }
            let p = *next;
            *next += 1;
            out.push((
                Constraint {
                    l: vec![one(s), one(w)],
                    r: vec![one(0)],
                    o: vec![one(p)],
                },
                Prov::Defining(p),
            ));
            wire_prefix.insert(key.clone(), p);
            s = p;
        }
        folded.push(Term {
            coeff: coeff.clone(),
            wire: s,
        });
    }
    // residual = terms not in any folded group, in factor order, then the α·s.
    let mut resid: Vec<Term> = var
        .iter()
        .filter(|t| !large.contains(&t.coeff))
        .cloned()
        .collect();
    resid.extend(folded);

    // Step 2: generically linearize the residual if it is still wide (geometric
    // distinct-coefficient sums have no large equal-coeff group to fold).
    if resid.len() > max_terms {
        let mut key: Vec<(String, usize)> = Vec::with_capacity(resid.len());
        let mut s_prev: Option<usize> = None;
        for t in &resid {
            key.push((t.coeff.clone(), t.wire));
            if let Some(&p) = term_prefix.get(&key) {
                s_prev = Some(p);
                continue;
            }
            let p = *next;
            *next += 1;
            let l = match s_prev {
                None => vec![t.clone()],
                Some(prev) => vec![one(prev), t.clone()],
            };
            out.push((
                Constraint {
                    l,
                    r: vec![one(0)],
                    o: vec![one(p)],
                },
                Prov::Defining(p),
            ));
            term_prefix.insert(key.clone(), p);
            s_prev = Some(p);
        }
        resid = vec![one(s_prev.expect("residual is non-empty"))];
    }

    newside.extend(resid);
    *side = newside;
}

// ---------------------------------------------------------------------------
// Boundary-state escape analysis.
//
// Given the rematerialized row sequence and a set of segment cuts, classify every
// wire that is live across a cut:
//   * a SYNTHETIC (a wire introduced by a `Defining` row) crossing a cut is part
//     of `StepState`, threaded through the fuel recursion / CPS continuation.
//   * an ORIGINAL wire (input / bit / long-lived value) crossing a cut belongs to
//     the opaque `Ctx`, not a continuation argument.
//
// We enforce a small bound on the number of crossing synthetics per cut. The whole
// point of prefix-sharing remat is that only the running ladder accumulator(s)
// cross a cut; if an unexpected synthetic escapes its segment the generation FAILS
// rather than silently rebuilding the ~620-value continuation the pivot deleted.
// ---------------------------------------------------------------------------

/// Default maximum number of synthetic wires permitted to cross any single cut.
/// A correctly-cut ladder threads only its accumulator(s); a handful of headroom
/// covers gadgets with a couple of parallel running sums.
const MAX_STEP_STATE: usize = 8;

/// A deployed row whose widest side exceeds this many terms is a folded ladder
/// rung (e.g. a 251-bit `to_binary` recomposition). Such rows are delegated to
/// the inductive fuel lemma rather than flat-proven by `ring`, per CLAUDE's
/// never-unroll-ladder rule (a flat `linear_combination` is O(width) ring work).
/// Narrow gadget rows (boolean/select/add) sit well under this.
const LADDER_WIDTH_LIMIT: usize = 16;

/// Per-cut live classification of a rematerialized row sequence.
#[derive(Debug)]
struct BoundaryAnalysis {
    /// Crossing synthetics at each interior cut (parallel to the interior `cuts`).
    step_state: Vec<Vec<usize>>,
    /// Crossing original (non-synthetic) wires at each interior cut — the `Ctx`
    /// live set the semantic CPS layer threads opaquely. Asserted in tests;
    /// consumed by the semantic bridge, not the per-rung cert layer.
    #[allow(dead_code)]
    ctx_state: Vec<Vec<usize>>,
}

/// Wires *read* by a remat row: both factors plus the output, except a `Defining`
/// row's own synthetic (which the row WRITES in its `o`, it is not a read).
fn row_reads(c: &Constraint, prov: Prov) -> impl Iterator<Item = usize> + '_ {
    let written = match prov {
        Prov::Defining(s) => Some(s),
        Prov::Rewritten(_) => None,
    };
    [&c.l, &c.r, &c.o]
        .into_iter()
        .flatten()
        .map(|t| t.wire)
        .filter(move |&w| w != 0 && Some(w) != written)
}

/// Classify wires live across each interior cut; bound the crossing synthetics.
fn analyze_boundary(
    remat: &[(Constraint, Prov)],
    cuts: &[usize],
    max_step_state: usize,
) -> Result<BoundaryAnalysis, CoverageError> {
    // synthetic wire -> defining-row index.
    let mut born: BTreeMap<usize, usize> = BTreeMap::new();
    for (i, (_, prov)) in remat.iter().enumerate() {
        if let Prov::Defining(s) = prov {
            born.insert(*s, i);
        }
    }
    // first/last read index of every wire.
    let mut first_use: BTreeMap<usize, usize> = BTreeMap::new();
    let mut last_use: BTreeMap<usize, usize> = BTreeMap::new();
    for (i, (c, prov)) in remat.iter().enumerate() {
        for w in row_reads(c, *prov) {
            first_use.entry(w).or_insert(i);
            last_use.insert(w, i);
        }
    }

    let mut step_state = Vec::with_capacity(cuts.len());
    let mut ctx_state = Vec::with_capacity(cuts.len());
    for &cut in cuts {
        // A wire crosses `cut` when it is available before the cut and read at or
        // after it: synthetics by their defining row, originals by their first read.
        let mut syn: Vec<usize> = Vec::new();
        let mut ctx: Vec<usize> = Vec::new();
        for (&w, &lu) in &last_use {
            if lu < cut {
                continue;
            }
            match born.get(&w) {
                Some(&b) if b < cut => syn.push(w),
                Some(_) => {} // born at/after the cut: segment-local, not crossing.
                None => {
                    if first_use.get(&w).is_some_and(|&fu| fu < cut) {
                        ctx.push(w);
                    }
                }
            }
        }
        if syn.len() > max_step_state {
            return Err(CoverageError::BoundaryStateTooWide {
                cut,
                found: syn.len(),
                bound: max_step_state,
                wires: syn,
            });
        }
        step_state.push(syn);
        ctx_state.push(ctx);
    }
    Ok(BoundaryAnalysis {
        step_state,
        ctx_state,
    })
}

/// Place segment cuts on semantic-rung boundaries, never mid-rung.
///
/// A rung is a `Rewritten` deployed row together with the `Defining` synthetic
/// rows that precede and feed it. Cutting only immediately after a `Rewritten`
/// row keeps every intra-rung synthetic segment-local (so it lands in `rematSeg`'s
/// local `∃`, not `StepState`); only the running accumulator threaded between
/// rungs crosses a cut. We coalesce consecutive rungs until a segment reaches
/// `target_rows` so each segment's bridge stays well under the ≤60-gate budget.
fn rung_cuts(remat: &[(Constraint, Prov)], target_rows: usize) -> Vec<usize> {
    let target = target_rows.max(1);
    let mut cuts = Vec::new();
    let mut seg_start = 0usize;
    for (i, (_, prov)) in remat.iter().enumerate() {
        let rung_end = matches!(prov, Prov::Rewritten(_));
        if rung_end && (i + 1 - seg_start) >= target && i + 1 < remat.len() {
            cuts.push(i + 1);
            seg_start = i + 1;
        }
    }
    cuts
}

/// Render an LC as a `dotLC rho [..]` list literal (the raw-layer encoding).
fn render_dotlc(terms: &[Term]) -> String {
    if terms.is_empty() {
        return "dotLC rho ([] : List (F × Nat))".to_owned();
    }
    let inner = terms
        .iter()
        .map(|t| format!("(({} : F),{})", t.coeff, t.wire))
        .collect::<Vec<_>>()
        .join(", ");
    format!("dotLC rho [{inner}]")
}

/// A deployed (raw) row as a `dotLC` field equation: the Lean premise the per-row
/// certificate discharges against.
fn render_raw_row(c: &Constraint) -> String {
    format!(
        "{} * {} = {}",
        render_dotlc(&c.l),
        render_dotlc(&c.r),
        render_dotlc(&c.o)
    )
}

/// Transitive expansion of a synthetic into its original-wire LC. Every defining
/// row is `s = (1·prev) + leaf` with `prev` synthetic (coeff 1) and `leaf` an
/// original term, so expansion never multiplies coefficients — it concatenates
/// the leaf terms, recursing through synthetic prev-links.
fn full_expansion(s: usize, def_lc: &BTreeMap<usize, Vec<Term>>, out: &mut Vec<Term>) {
    for t in &def_lc[&s] {
        if def_lc.contains_key(&t.wire) {
            full_expansion(t.wire, def_lc, out);
        } else {
            out.push(t.clone());
        }
    }
}

/// Render one side of a rewritten (narrow) row as a field expression: originals
/// and the constant via `rho`, shared accumulators as their threaded `s{w}`
/// variable, and segment-local synthetics inlined as `dotLC rho <full expansion>`.
fn render_rewritten_side(
    terms: &[Term],
    step_syn: &BTreeSet<usize>,
    def_lc: &BTreeMap<usize, Vec<Term>>,
) -> String {
    if terms.is_empty() {
        return "(0 : F)".to_owned();
    }
    terms
        .iter()
        .map(|t| {
            if t.wire == 0 {
                format!("({} : F) * rho 0", t.coeff)
            } else if step_syn.contains(&t.wire) {
                format!("({} : F) * s{}", t.coeff, t.wire)
            } else if def_lc.contains_key(&t.wire) {
                let mut exp = Vec::new();
                full_expansion(t.wire, def_lc, &mut exp);
                format!("({} : F) * ({})", t.coeff, render_dotlc(&exp))
            } else {
                format!("({} : F) * rho {}", t.coeff, t.wire)
            }
        })
        .collect::<Vec<_>>()
        .join(" + ")
}

/// Shared (cross-cut) synthetics referenced by a rewritten row, sorted — the
/// abstract `StepState` arguments of that row's certificate.
fn step_refs(c: &Constraint, step_syn: &BTreeSet<usize>) -> Vec<usize> {
    let mut s: BTreeSet<usize> = BTreeSet::new();
    for side in [&c.l, &c.r, &c.o] {
        for t in side {
            if step_syn.contains(&t.wire) {
                s.insert(t.wire);
            }
        }
    }
    s.into_iter().collect()
}

pub struct SegmentedFile {
    pub class_key: String,
    pub module: String,
    pub file_name: String,
    pub contents: String,
    pub sha256_hex: String,
    pub segment_count: usize,
}

/// Render a class as per-rung deployed-slice certificates (the threaded design).
///
/// Each deployed row becomes one `step{k}` lemma: its rematerialized (narrow)
/// rewritten row follows from the exact wide deployed row (`hraw`) by one
/// `linear_combination`, instantiating every shared accumulator `s{w}` with its
/// full original expansion (a single wide `dotLC` list — bounded *argument count*,
/// wide *data*). Cross-cut synthetics are validated against a small bound first;
/// segment-local synthetics are inlined. No global `rhoExt`, no `fin_cases`, no
/// flat existential — the per-rung certs are independent and the ladder recurrence
/// that threads `s{w}` between rungs is discharged by the semantic-layer bridge.
fn render_threaded(
    op: &str,
    size: usize,
    shape_hash: &str,
    prime: &str,
    rows: &[Constraint],
    _roles: &crate::ir::WireRoles,
    target_rows: usize,
    ladder_width_limit: usize,
) -> Result<(String, usize), CoverageError> {
    let remat = rematerialize_tagged(rows);

    // Defining LC of each synthetic, for full expansion / inlining.
    let mut def_lc: BTreeMap<usize, Vec<Term>> = BTreeMap::new();
    for (c, prov) in &remat {
        if let Prov::Defining(s) = prov {
            def_lc.insert(*s, c.l.clone());
        }
    }

    // Cut on rung boundaries, classify crossings, enforce the StepState bound.
    let cuts = rung_cuts(&remat, target_rows.max(1));
    let boundary = analyze_boundary(&remat, &cuts, MAX_STEP_STATE)?;
    let step_syn: BTreeSet<usize> = boundary.step_state.iter().flatten().copied().collect();

    let module = format!("{}{}_{}", camel(op), size, &shape_hash[..6]);
    let mut body = String::new();
    // Rows whose deployed form is a folded ladder rung (any side wider than a few
    // terms — e.g. a 251-bit `to_binary` recomposition) are NOT flat-proven: a
    // flat `linear_combination` runs `ring` over hundreds of terms (CLAUDE
    // never-unroll-ladder; the existing fuel lemma `rvkLadderK_final_semantic`
    // discharges them by induction). We emit certs ONLY for the narrow gadget
    // rows and record the wide rungs as delegated.
    let mut delegated: Vec<usize> = Vec::new();
    let mut emitted = 0usize;

    // One certificate per deployed row, in deployed order.
    for (k, (rewritten, prov)) in remat.iter().enumerate() {
        let raw_idx = match prov {
            Prov::Rewritten(idx) => *idx,
            Prov::Defining(_) => continue, // synthetic defining rows are not certs
        };

        let raw_row = &rows[raw_idx];
        let widest = raw_row.l.len().max(raw_row.r.len()).max(raw_row.o.len());
        if widest > ladder_width_limit {
            delegated.push(raw_idx);
            continue;
        }

        let refs = step_refs(rewritten, &step_syn);
        let mut params = String::new();
        let mut hyps = String::new();
        for &w in &refs {
            let mut exp = Vec::new();
            full_expansion(w, &def_lc, &mut exp);
            params.push_str(&format!(" (s{w} : F)"));
            hyps.push_str(&format!(" (hs{w} : s{w} = {})", render_dotlc(&exp)));
        }
        let subst = if refs.is_empty() {
            String::new()
        } else {
            let names = refs
                .iter()
                .map(|w| format!("hs{w}"))
                .collect::<Vec<_>>()
                .join(" ");
            format!("  subst {names}\n")
        };

        let raw = render_raw_row(&rows[raw_idx]);
        let concl = format!(
            "({}) * ({}) = ({})",
            render_rewritten_side(&rewritten.l, &step_syn, &def_lc),
            render_rewritten_side(&rewritten.r, &step_syn, &def_lc),
            render_rewritten_side(&rewritten.o, &step_syn, &def_lc),
        );
        body.push_str(&format!(
            "theorem step{k} (rho : Nat → F){params}{hyps}\n    \
             (hraw : {raw}) :\n    {concl} := by\n{subst}  \
             simp only [dotLC] at hraw ⊢\n  linear_combination hraw\n\n"
        ));
        emitted += 1;
    }
    let nseg = emitted;
    let delegated_note = if delegated.is_empty() {
        String::new()
    } else {
        format!(
            "-- {} folded ladder rung(s) delegated to the fuel lemma (deployed row \
             indices, NOT flat-proven here): {:?}\n",
            delegated.len(),
            delegated
        )
    };

    let contents = format!(
        "import Mathlib.Data.ZMod.Basic\n\
         import Mathlib.Tactic.LinearCombination\n\
         {}\n\
\n\
         set_option linter.unusedVariables false\n\
         set_option maxRecDepth 100000\n\
         set_option maxHeartbeats 0\n\n\
         /-! Auto-generated per-rung deployed-slice certificates for `{op}` \
         (size {size}, {nseg} rows).\n\
         Each `step{{k}}` proves the rematerialized rung follows from the exact \
         deployed row by instantiating every shared accumulator `s{{w}}` with its \
         full original expansion. Generated from the checked deployed-slice IR. -/\n\n\
         namespace Shieldd.GnarkFormal.Extracted.Deployed.{module}\n\n\
         {delegated_note}\
         {}\n\n\
         def dotLC (rho : Nat → F) : List (F × Nat) → F\n  \
         | [] => 0\n  | (a,w) :: t => a * rho w + dotLC rho t\n\n\
         {body}\
         end Shieldd.GnarkFormal.Extracted.Deployed.{module}\n",
        field_imports(op),
        field_defs(op, prime)
    );
    Ok((contents, nseg))
}

/// Generate CPS-segmented files for classes whose row count exceeds `seg_size`
/// (or all classes matching `only`). `seg_size` rows per segment.
pub fn generate_segmented(
    ir: &CircuitIr,
    sr1cs: &Sr1cs,
    only: Option<&str>,
    seg_size: usize,
) -> Result<Vec<SegmentedFile>, CoverageError> {
    let rows = parse_rows(sr1cs)?;
    let def_site = def_sites(&rows);
    let last_use = last_uses(&rows);
    let circuit_outputs: BTreeSet<usize> = sr1cs.outputs.iter().copied().collect();
    let seg_range: BTreeMap<usize, (usize, usize)> = ir
        .segments
        .iter()
        .map(|s| (s.index, (s.start, s.end)))
        .collect();

    let mut out = Vec::new();
    for class in &ir.classes {
        if let Some(filter) = only {
            if !class.op.contains(filter) {
                continue;
            }
        }
        let (start, end) = seg_range[&class.representative_segment_index];
        let roles = wire_roles_for(&rows, &def_site, &last_use, &circuit_outputs, start, end);
        let (contents, segment_count) = render_threaded(
            &class.op,
            class.constraint_count,
            &class.shape_sha256_hex,
            &sr1cs.prime,
            &rows[start..end],
            &roles,
            seg_size,
            LADDER_WIDTH_LIMIT,
        )?;
        let module = format!(
            "{}{}_{}",
            camel(&class.op),
            class.constraint_count,
            &class.shape_sha256_hex[..6]
        );
        out.push(SegmentedFile {
            class_key: class.class_key.clone(),
            file_name: format!("{module}.lean"),
            sha256_hex: sha256_hex(contents.as_bytes()),
            module,
            contents,
            segment_count,
        });
    }
    Ok(out)
}

/// Generate one CPS-segmented file for an explicit deployed row range. This is
/// used for compound obligations where gnark emits a gadget's final adapter row
/// immediately after the traced gadget segment.
pub fn generate_segmented_slice(
    sr1cs: &Sr1cs,
    op: &str,
    start: usize,
    end: usize,
    seg_size: usize,
    ladder_width_limit: usize,
) -> Result<SegmentedFile, CoverageError> {
    let rows = parse_rows(sr1cs)?;
    if start >= end || end > rows.len() {
        return Err(CoverageError::SegmentBounds {
            start,
            end,
            nb_constraints: rows.len(),
        });
    }
    let def_site = def_sites(&rows);
    let last_use = last_uses(&rows);
    let circuit_outputs: BTreeSet<usize> = sr1cs.outputs.iter().copied().collect();
    let roles = wire_roles_for(&rows, &def_site, &last_use, &circuit_outputs, start, end);
    let mut shape = String::new();
    for c in &rows[start..end] {
        shape.push_str(&c.l.len().to_string());
        shape.push(':');
        shape.push_str(&c.r.len().to_string());
        shape.push(':');
        shape.push_str(&c.o.len().to_string());
        shape.push('|');
        for side in [&c.l, &c.r, &c.o] {
            for t in side {
                shape.push_str(&t.coeff);
                shape.push('@');
                shape.push_str(&t.wire.to_string());
                shape.push(',');
            }
            shape.push(';');
        }
    }
    let shape_hash = sha256_hex(shape.as_bytes());
    let size = end - start;
    let (contents, segment_count) = render_threaded(
        op,
        size,
        &shape_hash,
        &sr1cs.prime,
        &rows[start..end],
        &roles,
        seg_size,
        ladder_width_limit,
    )?;
    let module = format!("{}{}_{}", camel(op), size, &shape_hash[..6]);
    Ok(SegmentedFile {
        class_key: format!("{op}@{}", &shape_hash[..16]),
        file_name: format!("{module}.lean"),
        sha256_hex: sha256_hex(contents.as_bytes()),
        module,
        contents,
        segment_count,
    })
}

/// Generate all class defs from the IR, returning their contents (caller writes
/// files + stamps). `only` optionally restricts to ops whose name contains it.
pub fn generate(
    ir: &CircuitIr,
    sr1cs: &Sr1cs,
    only: Option<&str>,
) -> Result<Vec<GeneratedFile>, CoverageError> {
    let rows = parse_rows(sr1cs)?;
    let def_site = def_sites(&rows);
    let last_use = last_uses(&rows);
    let circuit_outputs: BTreeSet<usize> = sr1cs.outputs.iter().copied().collect();
    let seg_range: BTreeMap<usize, (usize, usize)> = ir
        .segments
        .iter()
        .map(|s| (s.index, (s.start, s.end)))
        .collect();

    let mut out = Vec::new();
    for class in &ir.classes {
        if let Some(filter) = only {
            if !class.op.contains(filter) {
                continue;
            }
        }
        let (start, end) = seg_range[&class.representative_segment_index];
        let roles = wire_roles_for(&rows, &def_site, &last_use, &circuit_outputs, start, end);
        let (module, contents) = render_class(&ClassCtx {
            op: &class.op,
            size: class.constraint_count,
            shape_hash: &class.shape_sha256_hex,
            prime: &sr1cs.prime,
            rows: &rows[start..end],
            roles: &roles,
            def_site: &def_site,
        });
        out.push(GeneratedFile {
            class_key: class.class_key.clone(),
            file_name: format!("{module}.lean"),
            sha256_hex: sha256_hex(contents.as_bytes()),
            module,
            contents,
        });
    }
    Ok(out)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{ir::build_ir, parse_sr1cs, ConstraintManifest};

    #[test]
    fn generates_relation_with_binders() {
        let manifest: ConstraintManifest = serde_json::from_str(
            r#"{"schema":"shieldd.gnark.constraint_manifest.v1","circuit":"t","nb_constraints":2,
              "sr1cs_sha256_hex":"","segments":[
              {"index":1,"op":"gadget.h","kind":"gadget","gadget_label":"h","bridge_theorem":"X","start":0,"end":2,"constraint_count":2}],
              "breakdown":{"constraints_by_kind":{"gadget":2},"unclassified_constraints":0}}"#,
        )
        .unwrap();
        let sr1cs = parse_sr1cs(
            b"(prime-number 17)\n(in 2)\n(out 4)\n\
              (constraint [(1 2)] [(1 2)] [(1 3)])\n\
              (constraint [(1 3)] [(1 0)] [(1 4)])\n",
        )
        .unwrap();
        let ir = build_ir(&manifest, &sr1cs).unwrap();
        let files = generate(&ir, &sr1cs, None).unwrap();
        assert_eq!(files.len(), 1);
        let c = &files[0].contents;
        assert!(c.contains("def relation"), "{c}");
        assert!(c.contains("(i0 : F)")); // wire 2 is a primary input
        assert!(c.contains("(o0 : F)")); // wire 4 is consumed as circuit output
        assert!(c.contains("∃ v0 : F")); // wire 3 internal
        assert!(c.contains("(1 : F) * i0) * ((1 : F) * i0) = ((1 : F) * v0"));
    }

    #[test]
    fn threaded_emits_per_row_certs_no_global_state() {
        let manifest: ConstraintManifest = serde_json::from_str(
            r#"{"schema":"shieldd.gnark.constraint_manifest.v1","circuit":"t","nb_constraints":4,
              "sr1cs_sha256_hex":"","segments":[
              {"index":1,"op":"gadget.h","kind":"gadget","gadget_label":"h","bridge_theorem":"X","start":0,"end":4,"constraint_count":4}],
              "breakdown":{"constraints_by_kind":{"gadget":4},"unclassified_constraints":0}}"#,
        )
        .unwrap();
        let sr1cs = parse_sr1cs(
            b"(prime-number 17)\n(in 2)\n(out 6)\n\
              (constraint [(1 2)] [(1 2)] [(1 3)])\n\
              (constraint [(1 3)] [(1 0)] [(1 4)])\n\
              (constraint [(1 4)] [(1 3)] [(1 5)])\n\
              (constraint [(1 5)] [(1 0)] [(1 6)])\n",
        )
        .unwrap();
        let ir = build_ir(&manifest, &sr1cs).unwrap();
        let files = generate_segmented(&ir, &sr1cs, None, 1).unwrap();
        assert_eq!(files.len(), 1);
        // These rows are narrow (no wide accumulator) -> one cert per deployed row,
        // no synthetics, no threaded state.
        assert_eq!(files[0].segment_count, 4);
        let c = &files[0].contents;
        for k in 0..4 {
            assert!(c.contains(&format!("theorem step{k} ")), "missing step{k}");
        }
        assert!(c.contains("linear_combination hraw"));
        assert!(c.contains("def dotLC"));
        // The pivot deleted these globals; they must never reappear.
        assert!(!c.contains("fin_cases"), "fin_cases leaked back in");
        assert!(!c.contains("rhoExt"), "global rhoExt leaked back in");
        assert!(
            !c.contains("def relation"),
            "flat-∃ relation leaked back in"
        );
    }

    /// A growing accumulator threads a bounded set of shared synthetics: the
    /// generated certs carry `s{w}` arguments with `= dotLC rho [..]` hypotheses,
    /// and the wide deployed factor never appears in the rewritten conclusion.
    #[test]
    fn threaded_accumulator_emits_stepstate_args() {
        let mut l = vec![term("3", 90)];
        l.extend((10..20).map(|w| term("7", w)));
        let rung0 = Constraint {
            l,
            r: vec![term("1", 0)],
            o: vec![term("1", 200)],
        };
        let mut l2 = vec![term("3", 91)];
        l2.extend((10..21).map(|w| term("9", w)));
        let rung1 = Constraint {
            l: l2,
            r: vec![term("1", 0)],
            o: vec![term("1", 201)],
        };
        let roles = crate::ir::WireRoles {
            input: (10..21).chain([90, 91]).collect(),
            output: vec![200, 201],
            internal: vec![],
        };
        let (contents, _n) = render_threaded(
            "gadget.ladder",
            2,
            &"0".repeat(64),
            "17",
            &[rung0, rung1],
            &roles,
            1,
            LADDER_WIDTH_LIMIT,
        )
        .expect("within StepState bound");
        // Shared accumulator threaded as `s{w}` with a full-expansion hypothesis.
        assert!(contents.contains("(s"), "no StepState argument emitted");
        assert!(
            contents.contains("= dotLC rho ["),
            "no full-expansion hypothesis"
        );
        assert!(contents.contains("linear_combination hraw"));
        assert!(!contents.contains("fin_cases"));
    }

    fn term(coeff: &str, wire: usize) -> Term {
        Term {
            coeff: coeff.to_owned(),
            wire,
        }
    }

    // --- finite-field residual check over a 61-bit prime ----------------------
    // The remat rewrite (`α·Σwᵢ → α·s`, `s` defined by appended 2-term rows) is a
    // ring identity, so it is validated over GF(p) for any small prime `p`: the
    // sum of squared row residuals `Σ (L·R − O)²` is invariant under remat for
    // EVERY assignment (definition rows are satisfied by construction, and each
    // rewritten row's residual equals its original). A coefficient mutation on
    // either the raw rows or the synthetic deltas breaks the invariant.
    const P: u128 = 2_305_843_009_213_693_951; // 2^61 - 1

    fn mulmod(a: u128, b: u128) -> u128 {
        a * b % P
    }

    fn coeff_mod(c: &str) -> u128 {
        let (neg, digits) = c.strip_prefix('-').map_or((false, c), |d| (true, d));
        let mut acc: u128 = 0;
        for ch in digits.bytes() {
            acc = (acc * 10 + u128::from(ch - b'0')) % P;
        }
        if neg && acc != 0 {
            P - acc
        } else {
            acc
        }
    }

    fn eval_side(terms: &[Term], assign: &BTreeMap<usize, u128>) -> u128 {
        terms.iter().fold(0u128, |acc, t| {
            let w = if t.wire == 0 { 1 } else { assign[&t.wire] };
            (acc + mulmod(coeff_mod(&t.coeff), w)) % P
        })
    }

    fn residual(c: &Constraint, assign: &BTreeMap<usize, u128>) -> u128 {
        let lr = mulmod(eval_side(&c.l, assign), eval_side(&c.r, assign));
        let o = eval_side(&c.o, assign);
        let d = (lr + P - o) % P;
        mulmod(d, d)
    }

    fn sum_residuals(rows: &[Constraint], assign: &BTreeMap<usize, u128>) -> u128 {
        rows.iter()
            .fold(0u128, |acc, c| (acc + residual(c, assign)) % P)
    }

    fn max_wire(rows: &[Constraint]) -> usize {
        rows.iter()
            .flat_map(|c| c.l.iter().chain(&c.r).chain(&c.o))
            .map(|t| t.wire)
            .max()
            .unwrap_or(0)
    }

    /// Random assignment over original wires `1..=orig_max`, extended to the
    /// synthetic wires (`> orig_max`) by evaluating each appended definition row
    /// `s = Σ` in emission order.
    fn extended_assignment(
        original: &[Constraint],
        remat: &[Constraint],
        seed: u128,
    ) -> BTreeMap<usize, u128> {
        let orig_max = max_wire(original);
        let mut assign = BTreeMap::new();
        let mut state = seed | 1;
        for w in 1..=orig_max {
            state = state
                .wrapping_mul(6364136223846793005)
                .wrapping_add(1442695040888963407);
            assign.insert(w, (state >> 3) % P);
        }
        for c in remat {
            if c.o.len() == 1 && c.o[0].wire > orig_max {
                assign.insert(c.o[0].wire, eval_side(&c.l, &assign));
            }
        }
        assign
    }

    #[test]
    fn remat_preserves_residuals_over_gf_p() {
        // Exercises all three fold paths: o-side multi-group, l-side growing
        // window, and a distinct-coeff geometric sum.
        let mut o = vec![term("1", 0)];
        for w in 0..9 {
            o.push(term("5", 20 + w));
            o.push(term("6", 40 + w));
        }
        let multi = Constraint {
            l: vec![term("1", 99)],
            r: vec![term("1", 0)],
            o,
        };
        let mut window = vec![term("3", 99)];
        window.extend((10..19).map(|w| term("7", w)));
        let ladder = Constraint {
            l: window,
            r: vec![term("1", 0)],
            o: vec![term("1", 200)],
        };
        let mut geo = vec![];
        let mut c = 1u64;
        for w in 50..71 {
            geo.push(term(&c.to_string(), w));
            c = c.wrapping_mul(2);
        }
        let geo_row = Constraint {
            l: geo,
            r: vec![term("1", 0)],
            o: vec![term("1", 201)],
        };
        let original = vec![multi, ladder, geo_row];
        let remat = rematerialize_accumulators(&original);

        // Invariant holds for every random assignment.
        for seed in [1u128, 7, 42, 1234567, 9_999_999_937] {
            let assign = extended_assignment(&original, &remat, seed);
            assert_eq!(
                sum_residuals(&original, &assign),
                sum_residuals(&remat, &assign),
                "residual sum diverged at seed {seed}"
            );
        }

        // Mutation 1: perturb a RAW coefficient in an original row -> the remat of
        // the mutated system no longer matches the unmutated original residual.
        let mut mutated = original.clone();
        mutated[0].o[1].coeff = "999".to_owned();
        let remat_mut = rematerialize_accumulators(&mutated);
        let assign = extended_assignment(&mutated, &remat_mut, 42);
        assert_ne!(
            sum_residuals(&original, &assign),
            sum_residuals(&remat_mut, &assign),
            "raw-coeff mutation was absorbed"
        );

        // Mutation 2: perturb a SYNTHETIC delta coefficient in the remat output ->
        // breaks the invariant against the original.
        let mut remat_delta = remat.clone();
        let target = remat_delta
            .iter_mut()
            .find(|c| c.l.len() == 2 && c.l.iter().all(|t| t.coeff == "1"))
            .expect("a 2-term definition row exists");
        target.l[1].coeff = "2".to_owned();
        let assign = extended_assignment(&original, &remat_delta, 42);
        assert_ne!(
            sum_residuals(&original, &assign),
            sum_residuals(&remat_delta, &assign),
            "synthetic-delta mutation was absorbed"
        );
    }

    /// The dominant equal-coeff group (a growing wire window with per-rung
    /// coefficient `α`) is re-materialized into a coeff-1 wire sum `s`, shared by
    /// wire prefix across consecutive rungs, so each rung collapses to `bit + α·s`
    /// and a one-wire-longer window adds only ONE fold row.
    #[test]
    fn rematerializes_growing_accumulator() {
        // base rung: bit (coeff "3") + an 8-wire window all coeff "7".
        let mut base_l = vec![term("3", 99)];
        base_l.extend((10..18).map(|w| term("7", w)));
        let base = Constraint {
            l: base_l,
            r: vec![term("1", 0)],
            o: vec![term("1", 200)],
        };
        // ext rung: SAME window + one new wire (w18), with a DIFFERENT coeff "9"
        // — wire-keyed prefix sharing must still reuse base's partial sums.
        let mut ext_l = vec![term("3", 99)];
        ext_l.extend((10..19).map(|w| term("9", w)));
        let ext = Constraint {
            l: ext_l,
            r: vec![term("1", 0)],
            o: vec![term("1", 201)],
        };
        let out = rematerialize_accumulators(&[base, ext]);
        // base: 7 fold rows (wires 11..17) + rewritten rung; ext: 1 new fold row
        // (only w18; 11..17 reused despite the coeff change) + rewritten rung.
        assert_eq!(out.len(), 10);
        // INVARIANT: every emitted row has a ≤2-term left factor.
        assert!(out.iter().all(|c| c.l.len() <= 2), "a wide L survived");
        // Rewritten rungs keep their O wire and carry the bit inline plus a
        // single `α·s` accumulator term.
        for (o_wire, alpha, c) in [(200, "7", &out[7]), (201, "9", &out[9])] {
            assert_eq!(c.o[0].wire, o_wire);
            assert_eq!(c.l.len(), 2);
            assert!(c.l.iter().any(|t| t.wire == 99 && t.coeff == "3"));
            assert!(c.l.iter().any(|t| t.coeff == alpha));
        }
        // ext's single new fold row reads w18 and reuses base's partial sum.
        assert!(out[8].l.iter().any(|t| t.wire == 18));
    }

    /// A factor with TWO large equal-coeff groups must fold BOTH (not just the
    /// dominant one), and the accumulator may live on the OUTPUT side `L*R = O`.
    #[test]
    fn folds_multiple_groups_on_output_side() {
        // O = const + group α (8 wires) interleaved with group β (8 wires).
        let mut o = vec![term("1", 0)];
        for w in 0..8 {
            o.push(term("5", 20 + w)); // group α
            o.push(term("6", 40 + w)); // group β
        }
        let row = Constraint {
            l: vec![term("1", 99)],
            r: vec![term("1", 0)],
            o,
        };
        let out = rematerialize_accumulators(&[row]);
        assert!(out.iter().all(|c| c.o.len() <= 3 && c.l.len() <= 2));
        let rung = out.last().unwrap();
        // Both groups collapsed to one `α·s`/`β·s` term each, const kept.
        assert!(rung.o.iter().any(|t| t.coeff == "5"));
        assert!(rung.o.iter().any(|t| t.coeff == "6"));
        assert!(rung.o.iter().any(|t| t.wire == 0));
        assert_eq!(rung.o.len(), 3);
    }

    /// A distinct-coefficient sum (geometric `Σ 2ⁱ·wᵢ`) has no equal-coeff group
    /// to fold; it must still be linearized generically to a narrow factor.
    #[test]
    fn linearizes_distinct_coeff_geometric() {
        let mut l = vec![];
        let mut c = 1u64;
        for w in 10..30 {
            l.push(term(&c.to_string(), w));
            c *= 2;
        }
        let row = Constraint {
            l,
            r: vec![term("1", 0)],
            o: vec![term("1", 200)],
        };
        let out = rematerialize_accumulators(&[row]);
        assert!(
            out.iter().all(|c| c.l.len() <= 2),
            "wide geometric L survived"
        );
        // The rewritten rung is a single accumulator wire.
        assert_eq!(out.last().unwrap().l.len(), 1);
    }

    /// A linear running accumulator threads exactly ONE synthetic across a cut
    /// placed in the middle of its prefix chain: that is the `StepState`, and the
    /// only original wire it carries forward is its base input (`Ctx`).
    #[test]
    fn boundary_threads_single_accumulator() {
        // s11..s17 are the running prefix sums of a coeff-1 window 10..18; later
        // rows keep extending the same accumulator.
        let mut l = vec![term("3", 99)];
        l.extend((10..18).map(|w| term("7", w)));
        let row = Constraint {
            l,
            r: vec![term("1", 0)],
            o: vec![term("1", 200)],
        };
        let remat = rematerialize_tagged(&[row]);
        // remat = [def s_a, def s_b, …, rewritten rung]. Cut just before the last
        // fold row: the partial sum carried in is the lone crossing synthetic.
        let cut = remat.len() - 2;
        let b = analyze_boundary(&remat, &[cut], MAX_STEP_STATE).expect("within bound");
        assert_eq!(b.step_state.len(), 1);
        assert_eq!(b.step_state[0].len(), 1, "only the accumulator crosses");
        let s = b.step_state[0][0];
        assert!(
            s >= 200,
            "crossing wire is a synthetic, not an original input"
        );
        // The window wires read after the cut are originals -> Ctx, never StepState.
        assert!(b.ctx_state[0].iter().all(|&w| w < 200));
    }

    /// Cuts land only on rung (`Rewritten`) boundaries, and a growing-accumulator
    /// ladder threads a bounded `StepState` across each of them.
    #[test]
    fn rung_cuts_keep_step_state_bounded() {
        // Seven rungs over one growing coeff-`7` window; each rung extends the
        // window by one wire and shares the prior partial sums.
        let rungs: Vec<Constraint> = (0..7)
            .map(|k| {
                let mut l = vec![term("3", 90 + k)];
                l.extend((10..=(17 + k)).map(|w| term("7", w)));
                Constraint {
                    l,
                    r: vec![term("1", 0)],
                    o: vec![term("1", 200 + k)],
                }
            })
            .collect();
        let remat = rematerialize_tagged(&rungs);
        let cuts = rung_cuts(&remat, 4);
        assert!(!cuts.is_empty(), "expected interior cuts");
        // Every cut sits immediately after a Rewritten rung row.
        for &c in &cuts {
            assert!(
                matches!(remat[c - 1].1, Prov::Rewritten(_)),
                "cut {c} is mid-rung"
            );
        }
        let b = analyze_boundary(&remat, &cuts, MAX_STEP_STATE).expect("bounded");
        // The shared running window threads only a handful of synthetics per cut.
        assert!(b.step_state.iter().all(|s| s.len() <= MAX_STEP_STATE));
        assert!(
            b.step_state.iter().any(|s| !s.is_empty()),
            "accumulator threads"
        );
    }

    /// If more synthetics cross a cut than the bound allows, generation FAILS
    /// rather than silently rebuilding a wide continuation.
    #[test]
    fn boundary_rejects_wide_step_state() {
        // Three independent accumulators all defined before the cut and all read
        // after it -> three crossing synthetics; a bound of 2 must reject.
        let mut remat: Vec<(Constraint, Prov)> = Vec::new();
        for s in 300..303 {
            remat.push((
                Constraint {
                    l: vec![term("1", 1), term("1", 2)],
                    r: vec![term("1", 0)],
                    o: vec![term("1", s)],
                },
                Prov::Defining(s),
            ));
        }
        // a consumer row (after the cut) reading all three accumulators.
        remat.push((
            Constraint {
                l: vec![term("1", 300), term("1", 301), term("1", 302)],
                r: vec![term("1", 0)],
                o: vec![term("1", 400)],
            },
            Prov::Rewritten(0),
        ));
        let cut = 3; // after the three defs, before the consumer.
        let err = analyze_boundary(&remat, &[cut], 2).expect_err("must reject");
        match err {
            CoverageError::BoundaryStateTooWide { found, bound, .. } => {
                assert_eq!((found, bound), (3, 2));
            }
            other => panic!("wrong error: {other:?}"),
        }
        // With headroom the same cut is accepted.
        assert!(analyze_boundary(&remat, &[cut], 8).is_ok());
    }
}
