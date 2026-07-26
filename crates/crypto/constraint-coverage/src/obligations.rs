//! Per-instance obligation table for deploy-granularity soundness.
//!
//! The soundness chain discharges each *deployed segment instance* (a gnark
//! constant-folded row-slice) against its gadget spec, then composes. Proving a
//! representative of a structural class does NOT cover another instance: gnark
//! folds different baked constants/wire maps per instance. This module turns the
//! deployed-slice IR into one obligation per non-marker instance and checks every
//! one against a hand-maintained coverage manifest that records, per instance,
//! the discharging Lean theorem plus the exact shape + folded-constant hashes
//! the proof was reviewed against.
//!
//! A `pending` class is a known gap (no proof yet). A `proven` class whose
//! recorded shape/constant hash no longer matches the IR is a hard error: the
//! deployed rows drifted out from under the proof and it must be re-validated.
//! `functional-assumption` is deliberately distinct: it binds an extracted
//! semantic theorem to the exact deployed rows, but does not claim a row-level
//! proof. The compose step is gated on [`CoverageReport::fully_discharged`]; a
//! tiered transfer result uses [`CoverageReport::tiered_discharged`] instead.

use crate::contracts;
use crate::CoverageError;
use serde::{Deserialize, Serialize};
use std::collections::{BTreeMap, BTreeSet};

/// The exact IR used by generation and obligation checking. Reusing the
/// in-memory type avoids a JSON serialize/parse round trip when `main` checks a
/// large circuit, while [`load_ir`] still validates committed IR artifacts.
pub type DeployedSliceIr = crate::ir::CircuitIr;

/// Coverage manifest: one entry per structural class, recording the proof state
/// and the hashes the proof was reviewed against. Hand-maintained; the test
/// fails if it drifts from the IR (forgotten class, or `proven` hash mismatch).
#[derive(Debug, Deserialize, Serialize)]
pub struct CoverageManifest {
    pub schema: String,
    pub circuit: String,
    /// Exact set of class keys allowed to remain on an extracted functional
    /// bridge. Keeping this separate from the class status prevents a pending
    /// structural class from being relabelled into the residual tier silently.
    #[serde(default)]
    pub functional_assumption_allowlist: Vec<String>,
    pub classes: Vec<ClassCoverage>,
}

#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct ClassCoverage {
    pub class_key: String,
    pub op: String,
    /// `"proven"`, `"pending"`, or `"functional-assumption"`.
    pub status: String,
    /// Named entry in the assumption ledger. Required only for a
    /// `functional-assumption` class.
    #[serde(default)]
    pub assumption_id: String,
    /// Coeff-agnostic wire shape this proof targets (must equal the IR class).
    pub shape_sha256_hex: String,
    /// Exact per-instance fingerprints the theorem was instantiated and
    /// typechecked against — one entry per deployed instance of this class.
    /// Required when `proven`: the set must equal the IR's instance set for this
    /// class, and each entry's relation + wire-role hash must match that
    /// instance's. This is what makes "prove once, instantiate N times" a
    /// checked fact rather than a claim: a sibling instance's proof, a shifted
    /// wire, or a new uncovered instance all fail to match.
    #[serde(default)]
    pub instances: Vec<InstanceCoverage>,
    #[serde(default)]
    pub note: String,
}

/// One discharged deployed instance, pinned to the exact relation + wire-role
/// map the theorem was typechecked at.
#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct InstanceCoverage {
    pub segment_index: usize,
    /// Fully-qualified Lean theorem discharging this exact deployed instance.
    /// Required when the parent class is `proven` or `functional-assumption`.
    #[serde(default)]
    pub lean_theorem: String,
    /// Fully-qualified generated Lean contract module for this exact deployed
    /// instance. Required when the parent class is `proven` or
    /// `functional-assumption`.
    #[serde(default)]
    pub lean_contract: String,
    /// Exact folded constants for this instance. Constants are per-instance:
    /// transfer has structurally identical classes whose compile-time labels or
    /// domains differ, so a class-level constant pin cannot soundly represent
    /// them.
    #[serde(default)]
    pub constant_vector_sha256_hex: String,
    pub relation_sha256_hex: String,
    pub wire_role_sha256_hex: String,
}

pub const MANIFEST_SCHEMA: &str = "shieldd.gnark.deployed_coverage_manifest.v5";

/// One discharging obligation = one deployed segment instance that carries
/// constraints (markers/adapters with zero rows are excluded).
#[derive(Debug, Serialize)]
pub struct Obligation {
    pub segment_index: usize,
    pub op: String,
    pub start: usize,
    pub end: usize,
    pub class_key: String,
    pub constant_vector_sha256_hex: String,
    pub relation_sha256_hex: String,
    pub wire_role_sha256_hex: String,
    pub verdict: Verdict,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize)]
#[serde(tag = "kind", rename_all = "snake_case")]
pub enum Verdict {
    /// Class is `proven` and this instance's constants, relation, and wire-role
    /// map all match the fingerprint the theorem was instantiated at.
    Discharged {
        lean_theorem: String,
        lean_contract: String,
    },
    /// The instance is bound to a named extracted functional theorem. This is
    /// intentionally not a row-level discharge and therefore never makes a
    /// report fully discharged.
    FunctionalAssumption {
        lean_theorem: String,
        lean_contract: String,
        assumption_id: String,
    },
    /// Class exists in the manifest but is not yet proven.
    Pending,
    /// No manifest entry for this instance's class (a silent gap).
    Unmapped,
    /// The instance's folded-constant hash differs from the exact proof pin.
    ConstantMismatch { manifest: String, instance: String },
    /// Proven class, but this instance has no pinned per-instance fingerprint:
    /// the theorem was never instantiated at this instance (a silent gap inside
    /// a class that otherwise reads proven).
    InstanceUnpinned,
    /// Bound class and pinned instance, but no Lean theorem is recorded for this
    /// exact instance.
    TheoremMissing,
    /// Bound class and pinned instance, but no generated Lean contract module
    /// is recorded for this exact instance.
    ContractMissing,
    /// The instance's full relation hash differs from the pinned fingerprint:
    /// the deployed rows drifted out from under the instantiated theorem.
    RelationMismatch { manifest: String, instance: String },
    /// The instance's wire-role boundary map differs from the pinned
    /// fingerprint: composition would thread the wrong wires.
    WireRoleMismatch { manifest: String, instance: String },
}

#[derive(Debug, Serialize)]
pub struct CoverageReport {
    pub circuit: String,
    pub sr1cs_sha256_hex: String,
    pub total_obligations: usize,
    pub discharged: usize,
    pub functional_assumptions: usize,
    pub pending: usize,
    pub unmapped: usize,
    pub constant_mismatch: usize,
    pub instance_unpinned: usize,
    pub theorem_missing: usize,
    pub contract_missing: usize,
    pub relation_mismatch: usize,
    pub wire_role_mismatch: usize,
    /// Class-level errors that make the manifest inconsistent with the IR
    /// regardless of proof state (forgotten class, shape drift, proven entry
    /// missing its theorem). Any non-empty value fails the test.
    pub class_errors: Vec<String>,
    pub obligations: Vec<Obligation>,
}

impl CoverageReport {
    /// True when every obligation is discharged and the manifest is consistent.
    /// The §3 compose gate.
    pub fn fully_discharged(&self) -> bool {
        self.class_errors.is_empty()
            && self.pending == 0
            && self.functional_assumptions == 0
            && self.unmapped == 0
            && self.constant_mismatch == 0
            && self.instance_unpinned == 0
            && self.theorem_missing == 0
            && self.contract_missing == 0
            && self.relation_mismatch == 0
            && self.wire_role_mismatch == 0
    }

    /// True when the manifest is structurally consistent with the IR (no
    /// forgotten class, no shape drift, no proven-without-theorem, no proven
    /// constant mismatch). Pending classes are allowed. Green throughout §2.
    pub fn manifest_consistent(&self) -> bool {
        self.class_errors.is_empty()
            && self.unmapped == 0
            && self.constant_mismatch == 0
            && self.instance_unpinned == 0
            && self.theorem_missing == 0
            && self.contract_missing == 0
            && self.relation_mismatch == 0
            && self.wire_role_mismatch == 0
    }

    /// True when all structural instances are row-discharged and every
    /// remaining instance is a declared, pinned functional assumption. The
    /// allowlist, theorem, assumption ID, and exact instance pins are checked
    /// while constructing the report; any violation is a class error here.
    pub fn tiered_discharged(&self) -> bool {
        self.class_errors.is_empty()
            && self.pending == 0
            && self.unmapped == 0
            && self.constant_mismatch == 0
            && self.instance_unpinned == 0
            && self.theorem_missing == 0
            && self.contract_missing == 0
            && self.relation_mismatch == 0
            && self.wire_role_mismatch == 0
    }
}

/// Parse the committed deployed-slice IR JSON.
pub fn load_ir(bytes: &[u8]) -> Result<DeployedSliceIr, CoverageError> {
    Ok(serde_json::from_slice(bytes)?)
}

/// Parse a coverage manifest JSON.
pub fn load_coverage_manifest(bytes: &[u8]) -> Result<CoverageManifest, CoverageError> {
    Ok(serde_json::from_slice(bytes)?)
}

/// Build the obligation table and check it against the coverage manifest.
pub fn check_obligations(ir: &DeployedSliceIr, manifest: &CoverageManifest) -> CoverageReport {
    let mut class_errors = Vec::new();

    if manifest.schema != MANIFEST_SCHEMA {
        class_errors.push(format!(
            "manifest schema {:?} != {MANIFEST_SCHEMA:?}",
            manifest.schema
        ));
    }
    if manifest.circuit != ir.circuit {
        class_errors.push(format!(
            "manifest circuit {:?} != IR circuit {:?}",
            manifest.circuit, ir.circuit
        ));
    }

    let by_key: BTreeMap<&str, &ClassCoverage> = manifest
        .classes
        .iter()
        .map(|c| (c.class_key.as_str(), c))
        .collect();
    if by_key.len() != manifest.classes.len() {
        class_errors.push("manifest has duplicate class_key entries".to_owned());
    }
    let functional_allowlist: BTreeSet<&str> = manifest
        .functional_assumption_allowlist
        .iter()
        .map(String::as_str)
        .collect();
    if functional_allowlist.len() != manifest.functional_assumption_allowlist.len() {
        class_errors.push("functional-assumption allowlist has duplicate class keys".to_owned());
    }

    // Every IR class must be enumerated, with matching op + shape; proven
    // classes must carry a theorem. Constant vectors are pinned per instance:
    // a structurally identical class can have different compile-time labels or
    // domains at different call sites.
    let ir_keys: BTreeSet<&str> = ir.classes.iter().map(|c| c.class_key.as_str()).collect();
    for c in &ir.classes {
        match by_key.get(c.class_key.as_str()) {
            None => class_errors.push(format!("IR class {} has no manifest entry", c.class_key)),
            Some(m) => {
                if m.op != c.op {
                    class_errors.push(format!(
                        "class {}: manifest op {:?} != IR op {:?}",
                        c.class_key, m.op, c.op
                    ));
                }
                if m.shape_sha256_hex != c.shape_sha256_hex {
                    class_errors.push(format!(
                        "class {}: manifest shape {} != IR shape {}",
                        c.class_key, m.shape_sha256_hex, c.shape_sha256_hex
                    ));
                }
                let is_bound = matches!(m.status.as_str(), "proven" | "functional-assumption");
                if m.status == "functional-assumption" {
                    if !functional_allowlist.contains(m.class_key.as_str()) {
                        class_errors.push(format!(
                            "class {} is functional-assumption but is not in the closed allowlist",
                            c.class_key
                        ));
                    }
                    if m.assumption_id.is_empty() {
                        class_errors.push(format!(
                            "class {} is functional-assumption but has no assumption_id",
                            c.class_key
                        ));
                    }
                } else if functional_allowlist.contains(m.class_key.as_str()) {
                    class_errors.push(format!(
                        "class {} is in the functional-assumption allowlist but has status {:?}",
                        c.class_key, m.status
                    ));
                }
                if m.status == "proven" && !m.assumption_id.is_empty() {
                    class_errors.push(format!(
                        "class {} is proven but declares functional assumption {:?}",
                        c.class_key, m.assumption_id
                    ));
                }
                if is_bound {
                    // The pinned per-instance fingerprint set must equal the IR's
                    // instance set for this class exactly: no uncovered instance,
                    // no stale fingerprint for a segment that no longer exists.
                    let ir_set: BTreeSet<usize> =
                        c.instance_segment_indices.iter().copied().collect();
                    let man_set: BTreeSet<usize> =
                        m.instances.iter().map(|i| i.segment_index).collect();
                    if man_set.len() != m.instances.len() {
                        class_errors.push(format!(
                            "class {} has duplicate instance segment indices",
                            c.class_key
                        ));
                    }
                    for stale in man_set.difference(&ir_set) {
                        class_errors.push(format!(
                            "class {}: pinned instance segment {stale} is not in the IR",
                            c.class_key
                        ));
                    }
                    // Missing instances surface per-instance as `InstanceUnpinned`
                    // in the obligation loop below; the class-error here only
                    // catches stale/duplicate pins.
                }
                if !matches!(
                    m.status.as_str(),
                    "proven" | "pending" | "functional-assumption"
                ) {
                    class_errors.push(format!(
                        "class {} has unknown status {:?}",
                        c.class_key, m.status
                    ));
                }
            }
        }
    }
    for m in &manifest.classes {
        if !ir_keys.contains(m.class_key.as_str()) {
            class_errors.push(format!(
                "manifest class {} is not present in the IR",
                m.class_key
            ));
        }
    }
    for key in &functional_allowlist {
        match by_key.get(key) {
            None => class_errors.push(format!(
                "functional-assumption allowlist class {key} is not present in the manifest"
            )),
            Some(class) if class.status != "functional-assumption" => class_errors.push(format!(
                "functional-assumption allowlist class {key} has status {:?}",
                class.status
            )),
            Some(_) => {}
        }
    }

    // One obligation per non-marker instance (constraint-bearing segment).
    let mut obligations = Vec::new();
    let (
        mut discharged,
        mut functional_assumptions,
        mut pending,
        mut unmapped,
        mut constant_mismatch,
    ) = (0, 0, 0, 0, 0);
    let (
        mut instance_unpinned,
        mut theorem_missing,
        mut contract_missing,
        mut relation_mismatch,
        mut wire_role_mismatch,
    ) = (0, 0, 0, 0, 0);
    for seg in &ir.segments {
        if seg.constraint_count == 0 || seg.class_key.is_empty() {
            continue;
        }
        let verdict = match by_key.get(seg.class_key.as_str()) {
            None => {
                unmapped += 1;
                Verdict::Unmapped
            }
            Some(m) if matches!(m.status.as_str(), "proven" | "functional-assumption") => {
                match m.instances.iter().find(|i| i.segment_index == seg.index) {
                    None => {
                        instance_unpinned += 1;
                        Verdict::InstanceUnpinned
                    }
                    Some(inst)
                        if inst.constant_vector_sha256_hex != seg.constant_vector_sha256_hex =>
                    {
                        constant_mismatch += 1;
                        Verdict::ConstantMismatch {
                            manifest: inst.constant_vector_sha256_hex.clone(),
                            instance: seg.constant_vector_sha256_hex.clone(),
                        }
                    }
                    Some(inst) if inst.relation_sha256_hex != seg.relation_sha256_hex => {
                        relation_mismatch += 1;
                        Verdict::RelationMismatch {
                            manifest: inst.relation_sha256_hex.clone(),
                            instance: seg.relation_sha256_hex.clone(),
                        }
                    }
                    Some(inst) if inst.wire_role_sha256_hex != seg.wire_role_sha256_hex => {
                        wire_role_mismatch += 1;
                        Verdict::WireRoleMismatch {
                            manifest: inst.wire_role_sha256_hex.clone(),
                            instance: seg.wire_role_sha256_hex.clone(),
                        }
                    }
                    Some(inst) if inst.lean_theorem.is_empty() => {
                        theorem_missing += 1;
                        Verdict::TheoremMissing
                    }
                    Some(inst) if inst.lean_contract.is_empty() => {
                        contract_missing += 1;
                        Verdict::ContractMissing
                    }
                    Some(inst) if m.status == "proven" => {
                        discharged += 1;
                        Verdict::Discharged {
                            lean_theorem: inst.lean_theorem.clone(),
                            lean_contract: inst.lean_contract.clone(),
                        }
                    }
                    Some(inst) => {
                        functional_assumptions += 1;
                        Verdict::FunctionalAssumption {
                            lean_theorem: inst.lean_theorem.clone(),
                            lean_contract: inst.lean_contract.clone(),
                            assumption_id: m.assumption_id.clone(),
                        }
                    }
                }
            }
            Some(_) => {
                pending += 1;
                Verdict::Pending
            }
        };
        obligations.push(Obligation {
            segment_index: seg.index,
            op: seg.op.clone(),
            start: seg.start,
            end: seg.end,
            class_key: seg.class_key.clone(),
            constant_vector_sha256_hex: seg.constant_vector_sha256_hex.clone(),
            relation_sha256_hex: seg.relation_sha256_hex.clone(),
            wire_role_sha256_hex: seg.wire_role_sha256_hex.clone(),
            verdict,
        });
    }

    CoverageReport {
        circuit: ir.circuit.clone(),
        sr1cs_sha256_hex: ir.sr1cs_sha256_hex.clone(),
        total_obligations: obligations.len(),
        discharged,
        functional_assumptions,
        pending,
        unmapped,
        constant_mismatch,
        instance_unpinned,
        theorem_missing,
        contract_missing,
        relation_mismatch,
        wire_role_mismatch,
        class_errors,
        obligations,
    }
}

/// Emit a manifest skeleton from the IR with every class marked `pending`. The
/// hashes are seeded from the IR so a later `proven` flip pins exactly what the
/// proof targeted. Used once to bootstrap; thereafter the manifest is edited by
/// hand as classes are discharged.
pub fn skeleton_from_ir(ir: &DeployedSliceIr) -> CoverageManifest {
    let mut classes: Vec<ClassCoverage> = ir
        .classes
        .iter()
        .map(|c| {
            let instances: Vec<InstanceCoverage> = ir
                .segments
                .iter()
                .filter(|s| s.class_key == c.class_key)
                .map(|s| InstanceCoverage {
                    segment_index: s.index,
                    lean_theorem: String::new(),
                    lean_contract: contracts::contract_module(&ir.circuit, s.index),
                    constant_vector_sha256_hex: s.constant_vector_sha256_hex.clone(),
                    relation_sha256_hex: s.relation_sha256_hex.clone(),
                    wire_role_sha256_hex: s.wire_role_sha256_hex.clone(),
                })
                .collect();
            ClassCoverage {
                class_key: c.class_key.clone(),
                op: c.op.clone(),
                status: "pending".to_owned(),
                assumption_id: String::new(),
                shape_sha256_hex: c.shape_sha256_hex.clone(),
                instances,
                note: String::new(),
            }
        })
        .collect();
    classes.sort_by(|a, b| a.class_key.cmp(&b.class_key));
    CoverageManifest {
        schema: MANIFEST_SCHEMA.to_owned(),
        circuit: ir.circuit.clone(),
        functional_assumption_allowlist: Vec::new(),
        classes,
    }
}

/// Rebuild the machine-derived pins of an existing manifest while retaining
/// review-owned status, theorem, assumption, and note fields. This is used when
/// the manifest schema changes or a circuit artifact is regenerated; it never
/// carries old row/constant hashes forward.
pub fn normalize_manifest(ir: &DeployedSliceIr, previous: &CoverageManifest) -> CoverageManifest {
    let previous_by_key: BTreeMap<&str, &ClassCoverage> = previous
        .classes
        .iter()
        .map(|class| (class.class_key.as_str(), class))
        .collect();
    let mut normalized = skeleton_from_ir(ir);
    normalized.functional_assumption_allowlist = previous.functional_assumption_allowlist.clone();
    for class in &mut normalized.classes {
        let Some(previous_class) = previous_by_key.get(class.class_key.as_str()) else {
            continue;
        };
        class.status = previous_class.status.clone();
        class.assumption_id = previous_class.assumption_id.clone();
        class.note = previous_class.note.clone();
        let previous_instances: BTreeMap<usize, &InstanceCoverage> = previous_class
            .instances
            .iter()
            .map(|instance| (instance.segment_index, instance))
            .collect();
        for instance in &mut class.instances {
            if let Some(previous_instance) = previous_instances.get(&instance.segment_index) {
                instance.lean_theorem = previous_instance.lean_theorem.clone();
                instance.lean_contract = if previous_instance.lean_contract.is_empty() {
                    contracts::contract_module(&ir.circuit, instance.segment_index)
                } else {
                    previous_instance.lean_contract.clone()
                };
            }
        }
    }
    normalized
}

#[cfg(test)]
mod tests {
    use super::*;

    const FORMAL_DIR: &str = concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/../../core/component/shielded-pool/formal"
    );

    fn load() -> (DeployedSliceIr, CoverageManifest) {
        let ir_bytes = std::fs::read(format!(
            "{FORMAL_DIR}/note_reshape2x1-deployed-slice-ir.json"
        ))
        .expect("read committed deployed-slice IR");
        let man_bytes = std::fs::read(format!(
            "{FORMAL_DIR}/note_reshape2x1-coverage-manifest.json"
        ))
        .expect("read committed coverage manifest");
        (
            load_ir(&ir_bytes).expect("parse IR"),
            load_coverage_manifest(&man_bytes).expect("parse manifest"),
        )
    }

    /// The manifest must stay structurally consistent with the IR: every class
    /// enumerated, op + shape hashes matching, and all per-instance pins present.
    /// proven entries carrying a theorem. Pending classes are allowed. This is
    /// green throughout §2 and tightens to `fully_discharged` for the §3 gate.
    #[test]
    fn manifest_is_consistent_with_ir() {
        let (ir, manifest) = load();
        let report = check_obligations(&ir, &manifest);
        assert!(
            report.manifest_consistent(),
            "coverage manifest inconsistent with IR:\n  class_errors: {:#?}\n  unmapped: {}, constant_mismatch: {}",
            report.class_errors,
            report.unmapped,
            report.constant_mismatch,
        );
        // Every class is enumerated (no silent gaps) and the skeleton derived
        // from the IR agrees on class set + exact instance pins.
        let skel = skeleton_from_ir(&ir);
        let man_keys: BTreeSet<&str> = manifest
            .classes
            .iter()
            .map(|c| c.class_key.as_str())
            .collect();
        let skel_keys: BTreeSet<&str> = skel.classes.iter().map(|c| c.class_key.as_str()).collect();
        assert_eq!(man_keys, skel_keys, "manifest class set != IR class set");
        for s in &skel.classes {
            let m = manifest
                .classes
                .iter()
                .find(|c| c.class_key == s.class_key)
                .unwrap();
            assert_eq!(
                m.shape_sha256_hex, s.shape_sha256_hex,
                "class {}: shape hash drifted from IR",
                s.class_key
            );
            assert_eq!(m.instances.len(), s.instances.len());
            for (actual, expected) in m.instances.iter().zip(&s.instances) {
                assert_eq!(actual.segment_index, expected.segment_index);
                assert_eq!(
                    actual.constant_vector_sha256_hex, expected.constant_vector_sha256_hex,
                    "class {}: instance {} constant hash drifted from IR",
                    s.class_key, expected.segment_index
                );
            }
        }
    }

    /// Every constraint-bearing instance becomes exactly one obligation with a
    /// concrete verdict, and the counts partition the total.
    #[test]
    fn obligations_partition_all_instances() {
        let (ir, manifest) = load();
        let report = check_obligations(&ir, &manifest);
        let instance_count = ir
            .segments
            .iter()
            .filter(|s| s.constraint_count > 0 && !s.class_key.is_empty())
            .count();
        assert_eq!(report.total_obligations, instance_count);
        assert_eq!(
            report.discharged
                + report.functional_assumptions
                + report.pending
                + report.unmapped
                + report.constant_mismatch
                + report.instance_unpinned
                + report.theorem_missing
                + report.contract_missing
                + report.relation_mismatch
                + report.wire_role_mismatch,
            report.total_obligations,
            "verdict counts must partition all obligations"
        );
        // At least the two landed classes are discharged (assert_on_curve,
        // note_commitment), covering all their instances.
        assert!(
            report.discharged >= 9,
            "expected >=9 discharged instances, got {}",
            report.discharged
        );
    }

    /// The constant-mismatch bite: corrupting one folded constant a `proven`
    /// instance was pinned against must surface as a `ConstantMismatch`, not a
    /// silent pass. Proves the table actually checks constants per instance.
    #[test]
    fn proven_class_constant_drift_is_caught() {
        let (ir, mut manifest) = load();
        let target = manifest
            .classes
            .iter_mut()
            .find(|c| c.status == "proven")
            .expect("at least one proven class");
        // flip the last hex nibble of the pinned constant vector hash
        let h = &mut target.instances[0].constant_vector_sha256_hex;
        let mut chars: Vec<char> = h.chars().collect();
        let last = chars.len() - 1;
        chars[last] = if chars[last] == 'a' { 'b' } else { 'a' };
        *h = chars.into_iter().collect();
        let report = check_obligations(&ir, &manifest);
        assert!(
            report.constant_mismatch > 0,
            "corrupted proven-instance constant hash was not caught"
        );
        assert!(!report.fully_discharged());
    }

    /// Helper: a proven class with at least two pinned instances.
    fn proven_multi_instance(manifest: &mut CoverageManifest) -> &mut ClassCoverage {
        manifest
            .classes
            .iter_mut()
            .find(|c| c.status == "proven" && c.instances.len() >= 2)
            .expect("a proven class with multiple instances")
    }

    /// The relation bite: perturbing a pinned per-instance relation hash (as a
    /// stale or sibling-instance theorem would) must surface as a
    /// `RelationMismatch`, not a silent pass. This is what makes per-instance
    /// instantiation a checked fact rather than a class-level claim.
    #[test]
    fn proven_instance_relation_drift_is_caught() {
        let (ir, mut manifest) = load();
        let target = proven_multi_instance(&mut manifest);
        let h = &mut target.instances[0].relation_sha256_hex;
        let mut chars: Vec<char> = h.chars().collect();
        let last = chars.len() - 1;
        chars[last] = if chars[last] == 'a' { 'b' } else { 'a' };
        *h = chars.into_iter().collect();
        let report = check_obligations(&ir, &manifest);
        assert!(
            report.relation_mismatch > 0,
            "corrupted per-instance relation hash was not caught"
        );
        assert!(!report.fully_discharged());
    }

    /// The wire-role bite: composition threads boundary wires through this map,
    /// so a drifted wire-role fingerprint must fail loud.
    #[test]
    fn proven_instance_wire_role_drift_is_caught() {
        let (ir, mut manifest) = load();
        let target = proven_multi_instance(&mut manifest);
        let h = &mut target.instances[0].wire_role_sha256_hex;
        let mut chars: Vec<char> = h.chars().collect();
        let last = chars.len() - 1;
        chars[last] = if chars[last] == 'a' { 'b' } else { 'a' };
        *h = chars.into_iter().collect();
        let report = check_obligations(&ir, &manifest);
        assert!(
            report.wire_role_mismatch > 0,
            "corrupted per-instance wire-role hash was not caught"
        );
        assert!(!report.fully_discharged());
    }

    /// Dropping a pinned instance from a proven class must surface as an
    /// `InstanceUnpinned` gap: the theorem was never instantiated there.
    #[test]
    fn proven_class_missing_instance_is_unpinned() {
        let (ir, mut manifest) = load();
        let target = proven_multi_instance(&mut manifest);
        target.instances.remove(0);
        let report = check_obligations(&ir, &manifest);
        assert!(
            report.instance_unpinned > 0,
            "dropping a pinned instance must surface as InstanceUnpinned"
        );
        assert!(!report.fully_discharged());
    }

    /// A bound class is not enough: each exact instance must name the theorem
    /// that was typechecked for that slice.
    #[test]
    fn proven_instance_missing_theorem_is_caught() {
        let (ir, mut manifest) = load();
        let target = proven_multi_instance(&mut manifest);
        target.instances[0].lean_theorem.clear();
        let report = check_obligations(&ir, &manifest);
        assert!(
            report.theorem_missing > 0,
            "dropping an instance theorem must surface as TheoremMissing"
        );
        assert!(!report.fully_discharged());
    }

    /// The generated contract module is part of the theorem binding. Dropping
    /// it must fail independently of theorem-name presence.
    #[test]
    fn proven_instance_missing_contract_is_caught() {
        let (ir, mut manifest) = load();
        let target = proven_multi_instance(&mut manifest);
        target.instances[0].lean_contract.clear();
        let report = check_obligations(&ir, &manifest);
        assert!(
            report.contract_missing > 0,
            "dropping an instance contract must surface as ContractMissing"
        );
        assert!(!report.fully_discharged());
    }

    /// A class present in the IR but absent from the manifest is a hard gap.
    #[test]
    fn forgotten_class_is_unmapped() {
        let (ir, mut manifest) = load();
        manifest.classes.retain(|c| c.status != "proven");
        let report = check_obligations(&ir, &manifest);
        assert!(
            !report.class_errors.is_empty() || report.unmapped > 0,
            "dropping a class from the manifest must fail the check"
        );
    }

    /// A structural class cannot be silently moved into the residual tier: the
    /// closed allowlist must be changed explicitly as well. (Independent of the
    /// class's prior status — note_reshape2x1 has no pending classes once every
    /// segment is discharged, so promote the first class rather than a pending
    /// one.)
    #[test]
    fn functional_assumption_requires_closed_allowlist() {
        let (ir, mut manifest) = load();
        let target = manifest
            .classes
            .first_mut()
            .expect("at least one structural class");
        target.status = "functional-assumption".to_owned();
        for instance in &mut target.instances {
            instance.lean_theorem = "Shieldd.GnarkFormal.Test.functional".to_owned();
        }
        target.assumption_id = "ZK-ASSUME-TEST".to_owned();

        let report = check_obligations(&ir, &manifest);
        assert!(
            report
                .class_errors
                .iter()
                .any(|error| error.contains("not in the closed allowlist")),
            "functional class outside the allowlist was accepted: {:#?}",
            report.class_errors
        );
        assert!(!report.tiered_discharged());
    }

    /// A tiered report accepts only exact, pinned functional residuals, while
    /// `fully_discharged` remains reserved for zero residual assumptions.
    #[test]
    fn functional_assumption_is_tiered_not_fully_discharged() {
        let (ir, mut manifest) = load();
        for class in &mut manifest.classes {
            if class.status == "pending" {
                class.status = "proven".to_owned();
                for instance in &mut class.instances {
                    instance.lean_theorem = "Shieldd.GnarkFormal.Test.row_sound".to_owned();
                }
            }
        }
        let target = manifest
            .classes
            .iter_mut()
            .find(|c| c.status == "proven")
            .expect("a proven class");
        target.status = "functional-assumption".to_owned();
        for instance in &mut target.instances {
            instance.lean_theorem = "Shieldd.GnarkFormal.Test.functional".to_owned();
        }
        target.assumption_id = "ZK-ASSUME-TEST".to_owned();
        manifest
            .functional_assumption_allowlist
            .push(target.class_key.clone());

        let report = check_obligations(&ir, &manifest);
        assert!(report.class_errors.is_empty(), "{:#?}", report.class_errors);
        assert!(report.functional_assumptions > 0);
        assert!(report.tiered_discharged());
        assert!(!report.fully_discharged());
    }
}
