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

fn wname(w: usize) -> String {
    format!("w{w}")
}

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
fn rematerialize_accumulators(rows: &[Constraint]) -> Vec<Constraint> {
    const MAX_TERMS: usize = 6;
    let mut next = rows
        .iter()
        .flat_map(|c| c.l.iter().chain(&c.r).chain(&c.o))
        .map(|t| t.wire)
        .max()
        .unwrap_or(0)
        + 1;
    let mut out: Vec<Constraint> = Vec::with_capacity(rows.len());
    // wire-prefix -> synthetic wire holding that prefix's coeff-1 sum (shared
    // across rungs, coefficient-independent) and (coeff,wire)-prefix -> synthetic
    // wire for the generic residual linearization.
    let mut wire_prefix: BTreeMap<Vec<usize>, usize> = BTreeMap::new();
    let mut term_prefix: BTreeMap<Vec<(String, usize)>, usize> = BTreeMap::new();

    let get_l = (|r: &mut Constraint| &mut r.l) as fn(&mut Constraint) -> &mut Vec<Term>;
    let get_r = (|r: &mut Constraint| &mut r.r) as fn(&mut Constraint) -> &mut Vec<Term>;
    let get_o = (|r: &mut Constraint| &mut r.o) as fn(&mut Constraint) -> &mut Vec<Term>;
    for c in rows {
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
        out.push(row);
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
    out: &mut Vec<Constraint>,
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
            out.push(Constraint {
                l: vec![one(s), one(w)],
                r: vec![one(0)],
                o: vec![one(p)],
            });
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
            out.push(Constraint {
                l,
                r: vec![one(0)],
                o: vec![one(p)],
            });
            term_prefix.insert(key.clone(), p);
            s_prev = Some(p);
        }
        resid = vec![one(s_prev.expect("residual is non-empty"))];
    }

    newside.extend(resid);
    *side = newside;
}

fn render_seg_rows(rows: &[Constraint], name: &BTreeMap<usize, String>) -> String {
    rows.iter()
        .map(|c| {
            format!(
                "  ({}) * ({}) = ({})",
                render_lc(&c.l, name),
                render_lc(&c.r, name),
                render_lc(&c.o, name)
            )
        })
        .collect::<Vec<_>>()
        .join(" ∧\n")
}

fn cont_type(arity: usize) -> String {
    let mut s = String::new();
    for _ in 0..arity {
        s.push_str("F → ");
    }
    s.push_str("Prop");
    s
}

pub struct SegmentedFile {
    pub class_key: String,
    pub module: String,
    pub file_name: String,
    pub contents: String,
    pub sha256_hex: String,
    pub segment_count: usize,
}

/// Render a class as a CPS-segmented Lean file (`seg_size` rows per segment).
fn render_segmented(
    op: &str,
    size: usize,
    shape_hash: &str,
    prime: &str,
    rows: &[Constraint],
    roles: &crate::ir::WireRoles,
    seg_size: usize,
) -> (String, usize) {
    // Re-materialize the wide accumulator rows so deployed rungs match the
    // fixed-size fuel lemmas in the spec bridge. (This narrows row bodies; it is
    // independent of the composition shape below.)
    let remat = rematerialize_accumulators(rows);
    let rows: &[Constraint] = &remat;
    let n = rows.len();

    // global name map for every wire appearing in the class
    let mut name: BTreeMap<usize, String> = BTreeMap::new();
    for c in rows {
        for side in [&c.l, &c.r, &c.o] {
            for t in side {
                if t.wire != 0 {
                    name.entry(t.wire).or_insert_with(|| wname(t.wire));
                }
            }
        }
    }
    let all_wires: BTreeSet<usize> = name.keys().copied().collect();
    let inputs: BTreeSet<usize> = roles.input.iter().copied().collect();

    // chunk boundaries: 0 = b0 < b1 < … < b_m = n
    let mut bounds = vec![0usize];
    let mut x = seg_size.max(1);
    while x < n {
        bounds.push(x);
        x += seg_size.max(1);
    }
    bounds.push(n);
    let nseg = bounds.len() - 1;

    let module = format!("{}{}_{}", camel(op), size, &shape_hash[..6]);
    let mut body = String::new();

    // Flat composition: each `seg{k}` is a plain predicate over exactly the
    // wires its rows reference (no continuation, no pass-through threading), and
    // `relation` binds every non-input wire in ONE outer `∃` then conjoins the
    // segments. Sound because the deployed relation is a single conjunction:
    // `∧` is order-independent and every wire shares one binding scope, so no
    // topo-sort, liveness, or cycle-hoisting is needed. This keeps each seg's
    // interface to the ~tens of wires it actually touches, eliminating the
    // ~620-wide CPS signatures (long-range pass-through wires) that made
    // elaboration quadratic.
    let seg_refs = |a: usize, b: usize| -> Vec<usize> {
        let mut s: BTreeSet<usize> = BTreeSet::new();
        for c in &rows[a..b] {
            for side in [&c.l, &c.r, &c.o] {
                for t in side {
                    if t.wire != 0 {
                        s.insert(t.wire);
                    }
                }
            }
        }
        s.into_iter().collect()
    };

    // Per-segment defs.
    for k in 0..nseg {
        let (a, b) = (bounds[k], bounds[k + 1]);
        let refs = seg_refs(a, b);
        let binder = refs
            .iter()
            .map(|w| name[w].clone())
            .collect::<Vec<_>>()
            .join(" ");
        let seg = format!(
            "def seg{k} ({binder} : F) : Prop :=\n{}\n\n",
            render_seg_rows(&rows[a..b], &name)
        );
        body.push_str(&seg);
    }

    // Top-level relation: bind all non-input wires once, conjoin the segments,
    // then hand the output wires to the continuation.
    let in_binder = if roles.input.is_empty() {
        String::new()
    } else {
        let mut v = roles.input.clone();
        v.sort_unstable();
        format!(
            "({} : F) ",
            v.iter().map(|w| wname(*w)).collect::<Vec<_>>().join(" ")
        )
    };
    let mut out_v = roles.output.clone();
    out_v.sort_unstable();
    body.push_str(&format!(
        "def relation {in_binder}(k : {}) : Prop :=\n",
        cont_type(out_v.len())
    ));
    let internal: Vec<usize> = all_wires
        .iter()
        .copied()
        .filter(|w| !inputs.contains(w))
        .collect();
    if !internal.is_empty() {
        body.push_str(&format!(
            "∃ {} : F,\n",
            internal
                .iter()
                .map(|w| name[w].clone())
                .collect::<Vec<_>>()
                .join(" ")
        ));
    }
    for k in 0..nseg {
        let (a, b) = (bounds[k], bounds[k + 1]);
        let args = seg_refs(a, b)
            .iter()
            .map(|w| name[w].clone())
            .collect::<Vec<_>>()
            .join(" ");
        body.push_str(&format!("  seg{k} {args} ∧\n"));
    }
    let oargs = out_v
        .iter()
        .map(|w| wname(*w))
        .collect::<Vec<_>>()
        .join(" ");
    body.push_str(&format!("  k {oargs}\n"));

    let contents = format!(
        "import ProvenZk.Gates\n\
         {}\n\
\n\
         set_option linter.unusedVariables false\n\
         set_option maxRecDepth 100000\n\
         set_option maxHeartbeats 0\n\n\
         /-! Auto-generated segmented deployed-slice relation for `{op}` \
         (size {size}, {nseg} segments of ≤{seg_size} rows).\n\
         Each `seg{{k}}` is the conjunction of its ≤{seg_size} deployed rows over \
         the wires they touch; `relation` opens one flat existential over all \
         non-input wires and conjoins every segment. Wide accumulator factors are \
         re-materialized into ≤2-term rows. Generated from the checked deployed-slice IR. -/\n\n\
         namespace Shieldd.GnarkFormal.Extracted.Deployed.{module}\n\n\
         {}\n\n\
         {body}\n\
         end Shieldd.GnarkFormal.Extracted.Deployed.{module}\n",
        field_imports(op),
        field_defs(op, prime)
    );
    (contents, nseg)
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
        let (contents, segment_count) = render_segmented(
            &class.op,
            class.constraint_count,
            &class.shape_sha256_hex,
            &sr1cs.prime,
            &rows[start..end],
            &roles,
            seg_size,
        );
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
    let (contents, segment_count) = render_segmented(
        op,
        size,
        &shape_hash,
        &sr1cs.prime,
        &rows[start..end],
        &roles,
        seg_size,
    );
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

    fn global_name_map(rows: &[Constraint]) -> BTreeMap<usize, String> {
        let mut name = BTreeMap::new();
        for c in rows {
            for side in [&c.l, &c.r, &c.o] {
                for t in side {
                    if t.wire != 0 {
                        name.entry(t.wire).or_insert_with(|| wname(t.wire));
                    }
                }
            }
        }
        name
    }

    fn constraint_lines(lean: &str) -> Vec<String> {
        lean.lines()
            .filter_map(|line| {
                let trimmed = line.trim_start();
                (trimmed.starts_with('(') && trimmed.contains(") * (") && trimmed.contains(" = ("))
                    .then(|| line.trim_end_matches(" ∧").to_owned())
            })
            .collect()
    }

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
    fn segmented_relation_preserves_flat_row_trace() {
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
        let files = generate_segmented(&ir, &sr1cs, None, 2).unwrap();
        assert_eq!(files.len(), 1);
        assert_eq!(files[0].segment_count, 2);

        let rows = parse_rows(&sr1cs).unwrap();
        let names = global_name_map(&rows);
        let expected = render_seg_rows(&rows, &names)
            .lines()
            .map(|line| line.trim_end_matches(" ∧"))
            .map(str::to_owned)
            .collect::<Vec<_>>();
        let actual = constraint_lines(&files[0].contents);
        assert_eq!(actual, expected);

        let dropped = actual.iter().skip(1).cloned().collect::<Vec<_>>();
        assert_ne!(dropped, expected);

        let literal_drift = files[0]
            .contents
            .replacen("(1 : F) * w2", "(2 : F) * w2", 1);
        assert_ne!(constraint_lines(&literal_drift), expected);

        let wire_drift = files[0]
            .contents
            .replacen("= ((1 : F) * w3)", "= ((1 : F) * w99)", 1);
        assert_ne!(constraint_lines(&wire_drift), expected);
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
            let w = if t.wire == 0 {
                1
            } else {
                assign[&t.wire]
            };
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
        rows.iter().fold(0u128, |acc, c| (acc + residual(c, assign)) % P)
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
            state = state.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
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
        assert!(out.iter().all(|c| c.l.len() <= 2), "wide geometric L survived");
        // The rewritten rung is a single accumulator wire.
        assert_eq!(out.last().unwrap().l.len(), 1);
    }
}

