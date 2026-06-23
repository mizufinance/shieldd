//! Per-instance obligation table for deploy-granularity soundness.
//!
//! The soundness chain discharges each *deployed segment instance* (a gnark
//! constant-folded row-slice) against its gadget spec, then composes. Proving a
//! representative of a structural class does NOT cover another instance: gnark
//! folds different baked constants/wire maps per instance. This module turns the
//! deployed-slice IR into one obligation per non-marker instance and checks every
//! one against a hand-maintained coverage manifest that records, per class, the
//! discharging Lean theorem plus the exact shape + folded-constant hashes the
//! proof was reviewed against.
//!
//! A `pending` class is a known gap (no proof yet). A `proven` class whose
//! recorded shape/constant hash no longer matches the IR is a hard error: the
//! deployed rows drifted out from under the proof and it must be re-validated.
//! The compose step (§3) is gated on [`CoverageReport::fully_discharged`].

use crate::CoverageError;
use serde::{Deserialize, Serialize};
use std::collections::{BTreeMap, BTreeSet};

/// Deployed-slice IR, re-parsed from the committed JSON. Only the fields the
/// obligation table consumes are modelled; unknown fields are ignored.
#[derive(Debug, Deserialize)]
pub struct DeployedSliceIr {
    pub schema: String,
    pub circuit: String,
    pub sr1cs_sha256_hex: String,
    pub classes: Vec<IrClass>,
    pub segments: Vec<IrSegment>,
}

#[derive(Debug, Deserialize)]
pub struct IrClass {
    pub class_key: String,
    pub op: String,
    pub constraint_count: usize,
    pub shape_sha256_hex: String,
    pub instance_segment_indices: Vec<usize>,
    pub distinct_constant_vectors: usize,
}

#[derive(Debug, Deserialize)]
pub struct IrSegment {
    pub index: usize,
    pub op: String,
    pub kind: String,
    pub start: usize,
    pub end: usize,
    pub constraint_count: usize,
    #[serde(default)]
    pub class_key: String,
    #[serde(default)]
    pub constant_vector_sha256_hex: String,
    /// Full per-instance relation fingerprint (canonical rows incl. absolute
    /// wires). Distinct for every instance even within one class.
    #[serde(default)]
    pub relation_sha256_hex: String,
    /// Per-instance wire-role boundary-map fingerprint.
    #[serde(default)]
    pub wire_role_sha256_hex: String,
}

/// Coverage manifest: one entry per structural class, recording the proof state
/// and the hashes the proof was reviewed against. Hand-maintained; the test
/// fails if it drifts from the IR (forgotten class, or `proven` hash mismatch).
#[derive(Debug, Deserialize, Serialize)]
pub struct CoverageManifest {
    pub schema: String,
    pub circuit: String,
    pub classes: Vec<ClassCoverage>,
}

#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct ClassCoverage {
    pub class_key: String,
    pub op: String,
    /// `"proven"` or `"pending"`.
    pub status: String,
    /// Lean theorem discharging every instance of this class. Required when
    /// `proven`; the theorem is stated over the class `relation` def whose baked
    /// constants are pinned by `constant_vector_sha256_hex`.
    #[serde(default)]
    pub lean_theorem: String,
    /// Coeff-agnostic wire shape this proof targets (must equal the IR class).
    pub shape_sha256_hex: String,
    /// Folded-constant vector every instance must carry (must equal each
    /// instance's hash). The bite: if a deployed constant changes, this differs.
    pub constant_vector_sha256_hex: String,
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
    pub relation_sha256_hex: String,
    pub wire_role_sha256_hex: String,
}

pub const MANIFEST_SCHEMA: &str = "shieldd.gnark.deployed_coverage_manifest.v1";

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
    Discharged { lean_theorem: String },
    /// Class exists in the manifest but is not yet proven.
    Pending,
    /// No manifest entry for this instance's class (a silent gap).
    Unmapped,
    /// The instance's folded-constant hash differs from the proof's.
    ConstantMismatch { manifest: String, instance: String },
    /// Proven class, but this instance has no pinned per-instance fingerprint:
    /// the theorem was never instantiated at this instance (a silent gap inside
    /// a class that otherwise reads proven).
    InstanceUnpinned,
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
    pub pending: usize,
    pub unmapped: usize,
    pub constant_mismatch: usize,
    pub instance_unpinned: usize,
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
            && self.unmapped == 0
            && self.constant_mismatch == 0
            && self.instance_unpinned == 0
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

    // Every IR class must be enumerated, with matching op + shape; proven
    // classes must carry a theorem. distinct_constant_vectors must be 1 (a
    // single obligation per class — else the proof must be parametric and this
    // table model does not yet support it).
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
                if c.distinct_constant_vectors != 1 {
                    class_errors.push(format!(
                        "class {} has {} distinct constant vectors; parametric coverage unsupported",
                        c.class_key, c.distinct_constant_vectors
                    ));
                }
                if m.status == "proven" && m.lean_theorem.is_empty() {
                    class_errors.push(format!(
                        "class {} is proven but has no lean_theorem",
                        c.class_key
                    ));
                } else if m.status == "proven" {
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
                if m.status != "proven" && m.status != "pending" {
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

    // One obligation per non-marker instance (constraint-bearing segment).
    let mut obligations = Vec::new();
    let (mut discharged, mut pending, mut unmapped, mut constant_mismatch) = (0, 0, 0, 0);
    let (mut instance_unpinned, mut relation_mismatch, mut wire_role_mismatch) = (0, 0, 0);
    for seg in &ir.segments {
        if seg.constraint_count == 0 || seg.class_key.is_empty() {
            continue;
        }
        let verdict = match by_key.get(seg.class_key.as_str()) {
            None => {
                unmapped += 1;
                Verdict::Unmapped
            }
            Some(m) if m.status == "proven" => {
                if m.constant_vector_sha256_hex != seg.constant_vector_sha256_hex {
                    constant_mismatch += 1;
                    Verdict::ConstantMismatch {
                        manifest: m.constant_vector_sha256_hex.clone(),
                        instance: seg.constant_vector_sha256_hex.clone(),
                    }
                } else {
                    match m.instances.iter().find(|i| i.segment_index == seg.index) {
                        None => {
                            instance_unpinned += 1;
                            Verdict::InstanceUnpinned
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
                        Some(_) => {
                            discharged += 1;
                            Verdict::Discharged {
                                lean_theorem: m.lean_theorem.clone(),
                            }
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
        pending,
        unmapped,
        constant_mismatch,
        instance_unpinned,
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
            // Representative instance's folded-constant hash (all equal when
            // distinct_constant_vectors == 1).
            let const_hash = ir
                .segments
                .iter()
                .find(|s| s.class_key == c.class_key)
                .map(|s| s.constant_vector_sha256_hex.clone())
                .unwrap_or_default();
            let instances: Vec<InstanceCoverage> = ir
                .segments
                .iter()
                .filter(|s| s.class_key == c.class_key)
                .map(|s| InstanceCoverage {
                    segment_index: s.index,
                    relation_sha256_hex: s.relation_sha256_hex.clone(),
                    wire_role_sha256_hex: s.wire_role_sha256_hex.clone(),
                })
                .collect();
            ClassCoverage {
                class_key: c.class_key.clone(),
                op: c.op.clone(),
                status: "pending".to_owned(),
                lean_theorem: String::new(),
                shape_sha256_hex: c.shape_sha256_hex.clone(),
                constant_vector_sha256_hex: const_hash,
                instances,
                note: String::new(),
            }
        })
        .collect();
    classes.sort_by(|a, b| a.class_key.cmp(&b.class_key));
    CoverageManifest {
        schema: MANIFEST_SCHEMA.to_owned(),
        circuit: ir.circuit.clone(),
        classes,
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    const FORMAL_DIR: &str = concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/../../core/component/shielded-pool/formal"
    );

    fn load() -> (DeployedSliceIr, CoverageManifest) {
        let ir_bytes = std::fs::read(format!("{FORMAL_DIR}/consolidate2x1-deployed-slice-ir.json"))
            .expect("read committed deployed-slice IR");
        let man_bytes =
            std::fs::read(format!("{FORMAL_DIR}/consolidate2x1-coverage-manifest.json"))
                .expect("read committed coverage manifest");
        (
            load_ir(&ir_bytes).expect("parse IR"),
            load_coverage_manifest(&man_bytes).expect("parse manifest"),
        )
    }

    /// The manifest must stay structurally consistent with the IR: every class
    /// enumerated, op + shape hashes matching, single constant vector per class,
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
        // from the IR agrees on class set + hashes.
        let skel = skeleton_from_ir(&ir);
        let man_keys: BTreeSet<&str> =
            manifest.classes.iter().map(|c| c.class_key.as_str()).collect();
        let skel_keys: BTreeSet<&str> =
            skel.classes.iter().map(|c| c.class_key.as_str()).collect();
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
            assert_eq!(
                m.constant_vector_sha256_hex, s.constant_vector_sha256_hex,
                "class {}: constant hash drifted from IR",
                s.class_key
            );
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
            report.discharged + report.pending + report.unmapped + report.constant_mismatch,
            report.total_obligations,
            "verdict counts must partition all obligations"
        );
        // At least the two landed classes are discharged (assert_on_curve,
        // note_commitment), covering all their instances.
        assert!(report.discharged >= 9, "expected >=9 discharged instances, got {}", report.discharged);
    }

    /// The constant-mismatch bite: corrupting one folded constant a `proven`
    /// class was pinned against must surface as a `ConstantMismatch`, not a
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
        let mut h: Vec<char> = target.constant_vector_sha256_hex.chars().collect();
        let last = h.len() - 1;
        h[last] = if h[last] == 'a' { 'b' } else { 'a' };
        target.constant_vector_sha256_hex = h.into_iter().collect();
        let report = check_obligations(&ir, &manifest);
        assert!(
            report.constant_mismatch > 0,
            "corrupted proven-class constant hash was not caught"
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
}
