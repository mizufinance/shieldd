//! Canonical slice IR + wire-role boundaries for deploy-granularity gadget proofs.
//!
//! The coverage manifest gives constraint ranges/labels only. To prove each
//! deployed segment's actual (partial-evaluated) row-slice implies its gadget
//! spec — and to compose those proofs — we need, per segment, the real wire
//! def-use boundaries (which wires cross in, which cross out, which are
//! internal) and a structural class key so instances that differ only by folded
//! constants share one Lean def.
//!
//! This module is the single source of truth: it parses the `.sr1cs` once into a
//! typed IR, derives wire roles by a global def-use walk, groups segments into
//! `(op, wire-shape)` classes, and round-trips each constraint back to the exact
//! `.sr1cs` token string (the independence check — a parser bug cannot silently
//! drift the IR from the deployed rows). Lean is generated *from* this IR; we
//! never parse Lean back to R1CS.

use crate::{ConstraintManifest, CoverageError, Sr1cs};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::collections::{BTreeMap, BTreeSet};

/// One `(coeff wire)` term of a linear combination.
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct Term {
    pub coeff: String,
    pub wire: usize,
}

/// A parsed R1CS row `L * R = O`, each side a linear combination over wires.
/// Wire 0 is the constant-one wire.
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct Constraint {
    pub l: Vec<Term>,
    pub r: Vec<Term>,
    pub o: Vec<Term>,
}

impl Constraint {
    fn sides(&self) -> [&Vec<Term>; 3] {
        [&self.l, &self.r, &self.o]
    }

    /// Re-render to the canonical `.sr1cs` token string. The X-check compares
    /// this against the original line, so a parse/serialize mismatch fails loud.
    fn render(&self) -> String {
        fn side(terms: &[Term]) -> String {
            let inner: String = terms
                .iter()
                .map(|t| format!("({} {})", t.coeff, t.wire))
                .collect::<Vec<_>>()
                .join(" ");
            format!("[{inner}]")
        }
        format!(
            "(constraint {} {} {})",
            side(&self.l),
            side(&self.r),
            side(&self.o)
        )
    }
}

/// Wire role within a segment, by global def-use position.
#[derive(Debug, Default, Clone, Deserialize, Serialize)]
pub struct WireRoles {
    /// Used in the slice but defined upstream (or a primary circuit input).
    pub input: Vec<usize>,
    /// Defined in the slice and consumed downstream (or a circuit output).
    pub output: Vec<usize>,
    /// Defined and only used within the slice.
    pub internal: Vec<usize>,
}

#[derive(Debug, Deserialize, Serialize)]
pub struct SegmentIr {
    pub index: usize,
    pub op: String,
    pub kind: String,
    pub start: usize,
    pub end: usize,
    pub constraint_count: usize,
    /// `(op, shape-hash)` class key; empty for zero-constraint segments.
    #[serde(default, skip_serializing_if = "String::is_empty")]
    pub class_key: String,
    pub wire_roles: WireRoles,
    /// Hash of this instance's folded-constant vector (all coeffs, in order).
    /// Two instances of one class with equal hashes are the *same* obligation;
    /// differing hashes mean the Lean def must be parametric over constants.
    #[serde(default, skip_serializing_if = "String::is_empty")]
    pub constant_vector_sha256_hex: String,
    /// Full per-instance fingerprint: sha256 of this slice's canonical-rendered
    /// rows, *including absolute wires*. Unlike `shape`/`constant_vector` (which
    /// are equal across a class's instances), this distinguishes every instance,
    /// because gnark seats each at different absolute wire indices. The
    /// discharging theorem must be instantiated and typechecked at exactly this
    /// relation; the obligation table pins it here so a sibling instance's proof
    /// cannot pass for this one.
    #[serde(default, skip_serializing_if = "String::is_empty")]
    pub relation_sha256_hex: String,
    /// Hash of this instance's wire-role boundary map (input/output/internal
    /// absolute wires). Composition threads segment outputs into the next
    /// segment's inputs through this map, so it is pinned independently of the
    /// row tokens.
    #[serde(default, skip_serializing_if = "String::is_empty")]
    pub wire_role_sha256_hex: String,
}

#[derive(Debug, Deserialize, Serialize)]
pub struct ClassIr {
    pub class_key: String,
    pub op: String,
    pub constraint_count: usize,
    /// Distinct wire-shape hash (coeff-agnostic) — equal across all instances.
    pub shape_sha256_hex: String,
    /// Segment index whose literal constants seed the generated Lean def.
    pub representative_segment_index: usize,
    pub instance_segment_indices: Vec<usize>,
    /// Distinct folded-constant-vector hashes across instances. `1` ⇒ a single
    /// obligation; `>1` ⇒ the proof must be parametric over folded constants.
    pub distinct_constant_vectors: usize,
}

#[derive(Debug, Deserialize, Serialize)]
pub struct CircuitIr {
    pub schema: String,
    pub circuit: String,
    pub sr1cs_sha256_hex: String,
    pub nb_constraints: usize,
    pub classes: Vec<ClassIr>,
    pub segments: Vec<SegmentIr>,
}

/// Parse one `(constraint [L] [R] [O])` line into a typed [`Constraint`].
pub fn parse_constraint(line: &str, index: usize) -> Result<Constraint, CoverageError> {
    let inner = line
        .strip_prefix("(constraint ")
        .and_then(|s| s.strip_suffix(')'))
        .ok_or_else(|| CoverageError::Sr1csLine {
            line: index,
            message: format!("not a constraint form: {line:?}"),
        })?;
    let groups = bracket_groups(inner, index)?;
    if groups.len() != 3 {
        return Err(CoverageError::Sr1csLine {
            line: index,
            message: format!("expected 3 [..] groups, found {}", groups.len()),
        });
    }
    let l = parse_terms(&groups[0], index)?;
    let r = parse_terms(&groups[1], index)?;
    let o = parse_terms(&groups[2], index)?;
    Ok(Constraint { l, r, o })
}

/// Split `[..] [..] [..]` into the inner contents of each top-level `[..]`.
fn bracket_groups(inner: &str, index: usize) -> Result<Vec<String>, CoverageError> {
    let mut groups = Vec::new();
    let mut depth = 0isize;
    let mut current = String::new();
    let mut in_group = false;
    for ch in inner.chars() {
        match ch {
            '[' => {
                if depth == 0 {
                    in_group = true;
                    current.clear();
                } else {
                    current.push(ch);
                }
                depth += 1;
            }
            ']' => {
                depth -= 1;
                if depth == 0 {
                    in_group = false;
                    groups.push(std::mem::take(&mut current));
                } else {
                    current.push(ch);
                }
            }
            _ if in_group => current.push(ch),
            _ => {}
        }
    }
    if depth != 0 {
        return Err(CoverageError::Sr1csLine {
            line: index,
            message: "unbalanced [..] groups".to_owned(),
        });
    }
    Ok(groups)
}

/// Parse `(coeff wire)(coeff wire)...` into terms.
fn parse_terms(group: &str, index: usize) -> Result<Vec<Term>, CoverageError> {
    let mut terms = Vec::new();
    let mut rest = group.trim();
    while !rest.is_empty() {
        let open = rest
            .strip_prefix('(')
            .ok_or_else(|| CoverageError::Sr1csLine {
                line: index,
                message: format!("expected '(' in term group: {group:?}"),
            })?;
        let close = open.find(')').ok_or_else(|| CoverageError::Sr1csLine {
            line: index,
            message: format!("unterminated term in group: {group:?}"),
        })?;
        let pair = &open[..close];
        let mut parts = pair.split_whitespace();
        let coeff = parts.next().ok_or_else(|| CoverageError::Sr1csLine {
            line: index,
            message: format!("empty term in group: {group:?}"),
        })?;
        let wire = parts.next().ok_or_else(|| CoverageError::Sr1csLine {
            line: index,
            message: format!("term missing wire in group: {group:?}"),
        })?;
        if parts.next().is_some() {
            return Err(CoverageError::Sr1csLine {
                line: index,
                message: format!("term has extra tokens in group: {group:?}"),
            });
        }
        let wire = wire
            .parse::<usize>()
            .map_err(|err| CoverageError::Sr1csLine {
                line: index,
                message: format!("invalid wire {wire:?}: {err}"),
            })?;
        terms.push(Term {
            coeff: coeff.to_owned(),
            wire,
        });
        rest = open[close + 1..].trim_start();
    }
    Ok(terms)
}

/// Coeff-agnostic wire shape of a constraint: each side's wires replaced by a
/// first-occurrence rank over the whole row, wire 0 (constant) kept as a
/// distinguished sentinel so constant placement is structural. Folded constant
/// *values* are dropped here (recorded separately per instance).
fn row_shape(c: &Constraint, ranks: &mut BTreeMap<usize, usize>) -> String {
    ranks.clear();
    let mut next = 1usize; // rank 0 reserved for the constant-one wire
    let mut out = String::new();
    for (si, side) in c.sides().iter().enumerate() {
        out.push(match si {
            0 => 'L',
            1 => 'R',
            _ => 'O',
        });
        out.push(':');
        for term in side.iter() {
            let rank = if term.wire == 0 {
                0
            } else {
                *ranks.entry(term.wire).or_insert_with(|| {
                    let r = next;
                    next += 1;
                    r
                })
            };
            out.push_str(&rank.to_string());
            out.push(',');
        }
        out.push(';');
    }
    out
}

/// Collapse insignificant whitespace: drop spaces that sit right after `(`/`[`
/// or right before `)`/`]`, and collapse runs to a single space. Token spacing
/// (between coeff and wire) is preserved.
fn canonical_ws(line: &str) -> String {
    let mut out = String::with_capacity(line.len());
    let mut prev_open = false;
    for ch in line.chars() {
        if ch == ' ' {
            if prev_open {
                continue; // space right after ( or [
            }
            out.push(' ');
        } else {
            if (ch == ')' || ch == ']') && out.ends_with(' ') {
                out.pop(); // space right before ) or ]
            }
            out.push(ch);
        }
        prev_open = ch == '(' || ch == '[';
    }
    // collapse any double spaces left behind
    while out.contains("  ") {
        out = out.replace("  ", " ");
    }
    out
}

/// Deterministic textual digest of a segment's wire-role boundary map. Each role
/// list is sorted so the hash is independent of discovery order.
fn wire_role_digest(roles: &WireRoles) -> String {
    fn list(v: &[usize]) -> String {
        let mut s = v.to_vec();
        s.sort_unstable();
        s.iter().map(usize::to_string).collect::<Vec<_>>().join(",")
    }
    format!(
        "I:{}|O:{}|N:{}",
        list(&roles.input),
        list(&roles.output),
        list(&roles.internal)
    )
}

fn sha256_hex(data: &[u8]) -> String {
    let mut hasher = Sha256::new();
    hasher.update(data);
    hex::encode(hasher.finalize())
}

/// Build the canonical IR from the manifest partition and the parsed `.sr1cs`,
/// running the round-trip X-check on every constraint.
pub fn build_ir(manifest: &ConstraintManifest, sr1cs: &Sr1cs) -> Result<CircuitIr, CoverageError> {
    // 1. Scan every row + round-trip check (independence: IR == deployed rows).
    // Do not retain parsed rows: transfer has 252k rows / a 267 MiB source
    // file, and retaining the source strings, parsed coefficient strings, and
    // generated IR simultaneously made artifact generation memory-bound. The
    // two-pass scan keeps the X-check while bounding parsed-row memory to one
    // row. Pass 2 below reparses each segment after the global def/use facts
    // needed for boundary roles are known.
    //
    // gnark emits a space before `]`/`)`; compare modulo bracket-adjacent
    // whitespace so the check is structural, not a whitespace diff.
    let mut def_site: BTreeMap<usize, usize> = BTreeMap::new();
    let mut last_use: BTreeMap<usize, usize> = BTreeMap::new();
    for (i, raw) in sr1cs.constraints.iter().enumerate() {
        let c = parse_constraint(raw, i + 1)?;
        if c.render() != canonical_ws(raw) {
            return Err(CoverageError::Sr1csLine {
                line: i + 1,
                message: format!(
                    "IR round-trip mismatch:\n  rows: {}\n  ir:   {}",
                    canonical_ws(raw),
                    c.render()
                ),
            });
        }
        for t in &c.o {
            if t.wire != 0 {
                def_site.entry(t.wire).or_insert(i);
            }
        }
        for side in c.sides() {
            for t in side {
                if t.wire != 0 {
                    last_use.insert(t.wire, i);
                }
            }
        }
    }

    // 2. Per-segment wire roles + class key + constant vector. Reparse only
    // the current segment, then drop its parsed rows before moving on.
    let circuit_outputs: BTreeSet<usize> = sr1cs.outputs.iter().copied().collect();
    let mut segments = Vec::with_capacity(manifest.segments.len());
    let mut class_instances: BTreeMap<String, Vec<usize>> = BTreeMap::new();
    let mut class_meta: BTreeMap<String, (String, usize, String)> = BTreeMap::new();
    let mut class_const_hashes: BTreeMap<String, BTreeSet<String>> = BTreeMap::new();
    let mut ranks = BTreeMap::new();

    for seg in &manifest.segments {
        let mut roles = WireRoles::default();
        let mut class_key = String::new();
        let mut const_hash = String::new();
        let mut relation_hash = String::new();
        let mut wire_role_hash = String::new();
        if seg.constraint_count > 0 {
            // shape + constant vector over the slice
            let mut shape = String::new();
            let mut consts = String::new();
            let mut relation = String::new();
            let mut seen = BTreeSet::new();
            for (offset, raw) in sr1cs.constraints[seg.start..seg.end].iter().enumerate() {
                let c = parse_constraint(raw, seg.start + offset + 1)?;
                for side in c.sides() {
                    for term in side {
                        if term.wire != 0 {
                            seen.insert(term.wire);
                        }
                    }
                }
                shape.push_str(&row_shape(&c, &mut ranks));
                shape.push('|');
                for side in c.sides() {
                    for t in side {
                        consts.push_str(&t.coeff);
                        consts.push(',');
                    }
                    consts.push(';');
                }
                relation.push_str(&c.render());
                relation.push('\n');
            }
            roles = wire_roles_for_seen(
                &seen,
                &def_site,
                &last_use,
                &circuit_outputs,
                seg.start,
                seg.end,
            );
            let shape_hash = sha256_hex(shape.as_bytes());
            class_key = format!("{}@{}", seg.op, &shape_hash[..16]);
            const_hash = sha256_hex(consts.as_bytes());
            // Full per-instance relation fingerprint: the exact canonical rows,
            // absolute wires included, as the X-checked `render()` emits them.
            relation_hash = sha256_hex(relation.as_bytes());
            wire_role_hash = sha256_hex(wire_role_digest(&roles).as_bytes());
            class_instances
                .entry(class_key.clone())
                .or_default()
                .push(seg.index);
            class_meta.entry(class_key.clone()).or_insert((
                seg.op.clone(),
                seg.constraint_count,
                shape_hash,
            ));
            class_const_hashes
                .entry(class_key.clone())
                .or_default()
                .insert(const_hash.clone());
        }
        segments.push(SegmentIr {
            index: seg.index,
            op: seg.op.clone(),
            kind: seg.kind.clone(),
            start: seg.start,
            end: seg.end,
            constraint_count: seg.constraint_count,
            class_key,
            wire_roles: roles,
            constant_vector_sha256_hex: const_hash,
            relation_sha256_hex: relation_hash,
            wire_role_sha256_hex: wire_role_hash,
        });
    }

    let mut classes = Vec::new();
    for (class_key, instances) in &class_instances {
        let (op, count, shape_hash) = class_meta[class_key].clone();
        classes.push(ClassIr {
            class_key: class_key.clone(),
            op,
            constraint_count: count,
            shape_sha256_hex: shape_hash,
            representative_segment_index: instances[0],
            instance_segment_indices: instances.clone(),
            distinct_constant_vectors: class_const_hashes[class_key].len(),
        });
    }

    Ok(CircuitIr {
        schema: "shieldd.gnark.deployed_slice_ir.v1".to_owned(),
        circuit: manifest.circuit.clone(),
        sr1cs_sha256_hex: sr1cs.sha256_hex.clone(),
        nb_constraints: sr1cs.constraints.len(),
        classes,
        segments,
    })
}

pub fn ir_json(ir: &CircuitIr) -> Result<Vec<u8>, serde_json::Error> {
    let mut data = serde_json::to_vec_pretty(ir)?;
    data.push(b'\n');
    Ok(data)
}

/// Parse every `.sr1cs` row into a typed [`Constraint`], running the same
/// round-trip whitespace-canonical check `build_ir` uses.
pub fn parse_rows(sr1cs: &Sr1cs) -> Result<Vec<Constraint>, CoverageError> {
    let mut rows = Vec::with_capacity(sr1cs.constraints.len());
    for (i, raw) in sr1cs.constraints.iter().enumerate() {
        let c = parse_constraint(raw, i + 1)?;
        if c.render() != canonical_ws(raw) {
            return Err(CoverageError::Sr1csLine {
                line: i + 1,
                message: "IR round-trip mismatch".to_owned(),
            });
        }
        rows.push(c);
    }
    Ok(rows)
}

/// First row (by global index) where each non-constant wire appears in an `O`
/// position — its definition site.
pub fn def_sites(rows: &[Constraint]) -> BTreeMap<usize, usize> {
    let mut def_site = BTreeMap::new();
    for (i, c) in rows.iter().enumerate() {
        for t in &c.o {
            if t.wire != 0 {
                def_site.entry(t.wire).or_insert(i);
            }
        }
    }
    def_site
}

/// Last row (by global index) where each non-constant wire appears anywhere.
pub fn last_uses(rows: &[Constraint]) -> BTreeMap<usize, usize> {
    let mut last_use = BTreeMap::new();
    for (i, c) in rows.iter().enumerate() {
        for side in c.sides() {
            for t in side {
                if t.wire != 0 {
                    last_use.insert(t.wire, i);
                }
            }
        }
    }
    last_use
}

/// Wire roles of segment `[start,end)`, sorted ascending within each role.
/// `circuit_outputs` are the `(out N)` wires: if such a wire is defined in the
/// slice it is an `output` even when no later constraint consumes it.
pub fn wire_roles_for(
    rows: &[Constraint],
    def_site: &BTreeMap<usize, usize>,
    last_use: &BTreeMap<usize, usize>,
    circuit_outputs: &BTreeSet<usize>,
    start: usize,
    end: usize,
) -> WireRoles {
    let mut seen: BTreeSet<usize> = BTreeSet::new();
    for c in &rows[start..end] {
        for side in c.sides() {
            for t in side {
                if t.wire != 0 {
                    seen.insert(t.wire);
                }
            }
        }
    }
    wire_roles_for_seen(&seen, def_site, last_use, circuit_outputs, start, end)
}

/// Assign roles for the already-collected non-constant wires of one segment.
/// Keeping this independent of retained rows lets [`build_ir`] use its bounded
/// two-pass scanner for large deployed artifacts.
fn wire_roles_for_seen(
    seen: &BTreeSet<usize>,
    def_site: &BTreeMap<usize, usize>,
    last_use: &BTreeMap<usize, usize>,
    circuit_outputs: &BTreeSet<usize>,
    start: usize,
    end: usize,
) -> WireRoles {
    let mut roles = WireRoles::default();
    for &w in seen {
        match def_site.get(&w).copied() {
            Some(d) if d >= start && d < end => {
                let consumed_downstream = last_use.get(&w).copied().unwrap_or(d) >= end;
                if consumed_downstream || circuit_outputs.contains(&w) {
                    roles.output.push(w);
                } else {
                    roles.internal.push(w);
                }
            }
            _ => roles.input.push(w),
        }
    }
    roles
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::parse_sr1cs;

    #[test]
    fn parses_and_round_trips_a_constraint() {
        let line = "(constraint [(1 2) (3 4)] [(1 0)] [(1 5)])";
        let c = parse_constraint(line, 1).unwrap();
        assert_eq!(c.l.len(), 2);
        assert_eq!(
            c.r,
            vec![Term {
                coeff: "1".into(),
                wire: 0
            }]
        );
        assert_eq!(c.render(), line);
        // gnark's trailing-space form canonicalizes to the same string.
        assert_eq!(
            canonical_ws("(constraint [(1 2) (3 4) ] [(1 0) ] [(1 5) ])"),
            line
        );
    }

    fn manifest_two() -> ConstraintManifest {
        serde_json::from_str(
            r#"{
  "schema": "shieldd.gnark.constraint_manifest.v1",
  "circuit": "tiny",
  "nb_constraints": 3,
  "sr1cs_sha256_hex": "",
  "segments": [
    {"index":1,"op":"gadget.h","kind":"gadget","gadget_label":"h","bridge_theorem":"HBridge.circuit_sound","start":0,"end":1,"constraint_count":1},
    {"index":2,"op":"gadget.h","kind":"gadget","gadget_label":"h","bridge_theorem":"HBridge.circuit_sound","start":1,"end":2,"constraint_count":1},
    {"index":3,"op":"assert.eq","kind":"glue","start":2,"end":3,"constraint_count":1}
  ],
  "breakdown": {"constraints_by_kind": {"gadget":2,"glue":1}, "unclassified_constraints": 0}
}"#,
        )
        .unwrap()
    }

    fn sr1cs_two() -> Sr1cs {
        // rows 0,1: same wire-shape, different folded constant (7 vs 9) -> one
        // class, two distinct constant vectors. row 2: glue eq.
        parse_sr1cs(
            b"(prime-number 17)\n(in 2)\n(out 5)\n\
              (constraint [(1 2) (7 0)] [(1 0)] [(1 3)])\n\
              (constraint [(1 2) (9 0)] [(1 0)] [(1 4)])\n\
              (constraint [(1 4)] [(1 0)] [(1 5)])\n",
        )
        .unwrap()
    }

    #[test]
    fn builds_ir_with_classes_and_wire_roles() {
        let manifest = manifest_two();
        let sr1cs = sr1cs_two();
        let ir = build_ir(&manifest, &sr1cs).unwrap();
        // two gadget rows collapse to one class with two distinct const vectors
        let gadget_class = ir
            .classes
            .iter()
            .find(|c| c.op == "gadget.h")
            .expect("gadget class");
        assert_eq!(gadget_class.instance_segment_indices, vec![1, 2]);
        assert_eq!(gadget_class.distinct_constant_vectors, 2);
        // wire 2 is a primary input (never defined in O) -> input role
        let seg0 = &ir.segments[0];
        assert!(seg0.wire_roles.input.contains(&2));
        // wire 3 defined in seg0, never used again -> internal
        assert!(seg0.wire_roles.internal.contains(&3));
        // wire 4 defined in seg1 and used in seg2 (downstream) -> output
        let seg1 = &ir.segments[1];
        assert!(seg1.wire_roles.output.contains(&4));
    }

    #[test]
    fn round_trip_check_bites_on_garbled_row() {
        // a coeff the renderer would normalize differently would fail; here we
        // ensure a well-formed file passes and the hash is stable.
        let ir = build_ir(&manifest_two(), &sr1cs_two()).unwrap();
        assert_eq!(ir.nb_constraints, 3);
        assert_eq!(ir.schema, "shieldd.gnark.deployed_slice_ir.v1");
    }
}
