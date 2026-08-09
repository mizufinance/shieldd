use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{
    collections::BTreeMap,
    fs,
    io::{BufRead, BufReader, Read},
    path::Path,
};
use thiserror::Error;

pub mod contracts;
pub mod field;
pub mod ir;
pub mod leangen;
pub mod ltchain;
pub mod obligations;
pub mod rowmap;
pub mod template_registry;
pub mod wiring;

#[derive(Debug, Error)]
pub enum CoverageError {
    #[error("read {path}: {source}")]
    Read {
        path: String,
        #[source]
        source: std::io::Error,
    },
    #[error("parse manifest: {0}")]
    Manifest(#[from] serde_json::Error),
    #[error("invalid .sr1cs line {line}: {message}")]
    Sr1csLine { line: usize, message: String },
    #[error("manifest schema {0:?} is not supported")]
    UnsupportedSchema(String),
    #[error("manifest sr1cs hash {manifest} != actual {actual}")]
    Sr1csHashMismatch { manifest: String, actual: String },
    #[error("manifest constraint count {manifest} != .sr1cs constraint count {actual}")]
    ConstraintCountMismatch { manifest: usize, actual: usize },
    #[error("segment {index} ({op}) starts at {start}, expected {expected}")]
    SegmentGap {
        index: usize,
        op: String,
        start: usize,
        expected: usize,
    },
    #[error("segment {index} ({op}) end {end} is before start {start}")]
    SegmentBackwards {
        index: usize,
        op: String,
        start: usize,
        end: usize,
    },
    #[error("segment {index} ({op}) end {end} exceeds .sr1cs constraint count {total}")]
    SegmentOutOfBounds {
        index: usize,
        op: String,
        end: usize,
        total: usize,
    },
    #[error("slice {start}..{end} is outside .sr1cs constraint count {nb_constraints}")]
    SegmentBounds {
        start: usize,
        end: usize,
        nb_constraints: usize,
    },
    #[error("manifest covers {covered} constraints, expected {total}")]
    CoverageTail { covered: usize, total: usize },
    #[error("segment {index} ({op}) is unclassified but covers {count} constraints")]
    UnclassifiedSegment {
        index: usize,
        op: String,
        count: usize,
    },
    #[error("adapter segment {index} ({op}) covers {count} constraints")]
    NonZeroAdapter {
        index: usize,
        op: String,
        count: usize,
    },
    #[error("marker segment {index} ({op}) covers {count} constraints")]
    NonZeroMarker {
        index: usize,
        op: String,
        count: usize,
    },
    #[error("gadget segment {index} ({op}) is missing gadget_label")]
    MissingGadgetLabel { index: usize, op: String },
    #[error("gadget segment {index} ({op}) is missing bridge_theorem")]
    MissingBridgeTheorem { index: usize, op: String },
    #[error("manifest breakdown for kind {kind:?} says {manifest}, recomputed {actual}")]
    BreakdownMismatch {
        kind: String,
        manifest: usize,
        actual: usize,
    },
    #[error("manifest unclassified constraint count {manifest} != recomputed {actual}")]
    UnclassifiedBreakdownMismatch { manifest: usize, actual: usize },
    #[error(
        "boundary state at cut {cut} carries {found} crossing synthetics {wires:?} \
         (bound {bound}); an unexpected synthetic escapes its segment — refusing to \
         regenerate the wide CPS continuation"
    )]
    BoundaryStateTooWide {
        cut: usize,
        found: usize,
        bound: usize,
        wires: Vec<usize>,
    },
    #[error("normalized DTK lt-ladder recovery/parity gate failed: {0}")]
    LtLadderParity(String),
    #[error("normalized seating is invalid: {message}")]
    NormalizedSeating { message: String },
    #[error(
        "normalized relation reconstruction mismatch for segment {segment_index} ({op}), row {row}: expected {expected}, reconstructed {reconstructed}"
    )]
    NormalizedReconstructionMismatch {
        segment_index: usize,
        op: String,
        row: usize,
        expected: String,
        reconstructed: String,
    },
    #[error(
        "normalized metadata mismatch for segment {segment_index} ({op}), {field}: expected {expected}, actual {actual}"
    )]
    NormalizedMetadataMismatch {
        segment_index: usize,
        op: String,
        field: &'static str,
        expected: String,
        actual: String,
    },
    #[error("proof-template registry error: {0}")]
    TemplateRegistry(String),
    #[error("unreviewed proof template for operation {op:?}")]
    UnreviewedTemplate { op: String },
    #[error("ambiguous proof template for operation {op:?}: {count} registry matches")]
    AmbiguousTemplate { op: String, count: usize },
    #[error(
        "proof-template search budget {budget} exhausted for operation {op:?} while checking {proof_template_id:?}"
    )]
    TemplateSearchBudgetExceeded {
        op: String,
        proof_template_id: String,
        budget: usize,
    },
}

#[derive(Debug, Deserialize)]
pub struct ConstraintManifest {
    pub schema: String,
    pub circuit: String,
    pub nb_constraints: usize,
    #[serde(default)]
    pub sr1cs_sha256_hex: String,
    pub segments: Vec<ManifestSegment>,
    pub breakdown: ManifestBreakdown,
}

#[derive(Debug, Deserialize)]
pub struct ManifestSegment {
    pub index: usize,
    pub op: String,
    #[serde(default)]
    pub kind: String,
    #[serde(default)]
    pub gadget_label: String,
    #[serde(default)]
    pub bridge_theorem: String,
    pub start: usize,
    pub end: usize,
    pub constraint_count: usize,
}

#[derive(Debug, Deserialize)]
pub struct ManifestBreakdown {
    #[serde(default)]
    pub constraints_by_kind: BTreeMap<String, usize>,
    #[serde(default)]
    pub unclassified_constraints: usize,
}

#[derive(Debug)]
pub struct Sr1cs {
    pub prime: String,
    pub inputs: Vec<usize>,
    pub outputs: Vec<usize>,
    pub constraints: Vec<String>,
    pub sha256_hex: String,
}

#[derive(Debug, Serialize)]
pub struct CoverageReport {
    pub schema: &'static str,
    pub circuit: String,
    pub sr1cs_sha256_hex: String,
    pub manifest_sha256_hex: String,
    pub nb_constraints: usize,
    pub prime: String,
    pub inputs: Vec<usize>,
    pub outputs: Vec<usize>,
    pub constraints_by_kind: BTreeMap<String, usize>,
    pub segments: Vec<SegmentReport>,
}

#[derive(Debug, Serialize)]
pub struct SegmentReport {
    pub index: usize,
    pub op: String,
    pub kind: String,
    #[serde(skip_serializing_if = "String::is_empty")]
    pub gadget_label: String,
    #[serde(skip_serializing_if = "String::is_empty")]
    pub bridge_theorem: String,
    pub start: usize,
    pub end: usize,
    pub constraint_count: usize,
    pub constraint_sha256_hex: String,
    pub verdict: &'static str,
}

pub fn load_manifest(
    path: impl AsRef<Path>,
) -> Result<(ConstraintManifest, String), CoverageError> {
    let path = path.as_ref();
    let data = fs::read(path).map_err(|source| CoverageError::Read {
        path: path.display().to_string(),
        source,
    })?;
    let hash = sha256_hex(&data);
    let manifest = serde_json::from_slice(&data)?;
    Ok((manifest, hash))
}

pub fn load_sr1cs(path: impl AsRef<Path>) -> Result<Sr1cs, CoverageError> {
    let path = path.as_ref();
    let mut file = fs::File::open(path).map_err(|source| CoverageError::Read {
        path: path.display().to_string(),
        source,
    })?;
    let mut hasher = Sha256::new();
    let mut buf = [0u8; 64 * 1024];
    loop {
        let n = file.read(&mut buf).map_err(|source| CoverageError::Read {
            path: path.display().to_string(),
            source,
        })?;
        if n == 0 {
            break;
        }
        hasher.update(&buf[..n]);
    }
    let sha256_hex = hex::encode(hasher.finalize());

    // Parse from the file a second time. Retaining a 267 MiB transfer source
    // buffer while also retaining its per-row strings doubled peak memory and
    // made deploy-IR generation unreliable; the streaming reader retains only
    // the canonical constraint lines that downstream checks need.
    let file = fs::File::open(path).map_err(|source| CoverageError::Read {
        path: path.display().to_string(),
        source,
    })?;
    parse_sr1cs_reader(BufReader::new(file), sha256_hex, path.display().to_string())
}

pub fn parse_sr1cs(data: &[u8]) -> Result<Sr1cs, CoverageError> {
    let sha256_hex = sha256_hex(data);
    let text = std::str::from_utf8(data).map_err(|err| CoverageError::Sr1csLine {
        line: 0,
        message: format!("not utf-8: {err}"),
    })?;
    parse_sr1cs_lines(text.lines(), sha256_hex)
}

fn parse_sr1cs_reader<R: BufRead>(
    reader: R,
    sha256_hex: String,
    path: String,
) -> Result<Sr1cs, CoverageError> {
    let mut prime = String::new();
    let mut inputs = Vec::new();
    let mut outputs = Vec::new();
    let mut constraints = Vec::new();
    for (idx, raw) in reader.lines().enumerate() {
        let line_no = idx + 1;
        let mut raw = raw.map_err(|source| CoverageError::Read {
            path: path.clone(),
            source,
        })?;
        let line = raw.trim();
        if line.is_empty() {
            continue;
        }
        ensure_balanced(line, line_no)?;
        if let Some(inner) = line
            .strip_prefix("(prime-number ")
            .and_then(|s| s.strip_suffix(')'))
        {
            prime = inner.to_owned();
        } else if let Some(inner) = line.strip_prefix("(in ").and_then(|s| s.strip_suffix(')')) {
            inputs.push(parse_wire(inner, line_no)?);
        } else if let Some(inner) = line.strip_prefix("(out ").and_then(|s| s.strip_suffix(')')) {
            outputs.push(parse_wire(inner, line_no)?);
        } else if line.starts_with("(constraint ") {
            // Gnark's artifact lines are already trimmed. Avoid cloning the
            // hundreds of megabytes of constraint text in that common case.
            if raw.len() != line.len() {
                raw = line.to_owned();
            }
            constraints.push(raw);
        } else {
            return Err(CoverageError::Sr1csLine {
                line: line_no,
                message: format!("unknown form {line:?}"),
            });
        }
    }
    if prime.is_empty() {
        return Err(CoverageError::Sr1csLine {
            line: 0,
            message: "missing prime-number form".to_owned(),
        });
    }
    Ok(Sr1cs {
        prime,
        inputs,
        outputs,
        constraints,
        sha256_hex,
    })
}

fn parse_sr1cs_lines<'a>(
    lines: impl IntoIterator<Item = &'a str>,
    sha256_hex: String,
) -> Result<Sr1cs, CoverageError> {
    let mut prime = String::new();
    let mut inputs = Vec::new();
    let mut outputs = Vec::new();
    let mut constraints = Vec::new();
    for (idx, raw) in lines.into_iter().enumerate() {
        let line_no = idx + 1;
        let line = raw.trim();
        if line.is_empty() {
            continue;
        }
        ensure_balanced(line, line_no)?;
        if let Some(inner) = line
            .strip_prefix("(prime-number ")
            .and_then(|s| s.strip_suffix(')'))
        {
            prime = inner.to_owned();
        } else if let Some(inner) = line.strip_prefix("(in ").and_then(|s| s.strip_suffix(')')) {
            inputs.push(parse_wire(inner, line_no)?);
        } else if let Some(inner) = line.strip_prefix("(out ").and_then(|s| s.strip_suffix(')')) {
            outputs.push(parse_wire(inner, line_no)?);
        } else if line.starts_with("(constraint ") {
            constraints.push(line.to_owned());
        } else {
            return Err(CoverageError::Sr1csLine {
                line: line_no,
                message: format!("unknown form {line:?}"),
            });
        }
    }
    if prime.is_empty() {
        return Err(CoverageError::Sr1csLine {
            line: 0,
            message: "missing prime-number form".to_owned(),
        });
    }
    Ok(Sr1cs {
        prime,
        inputs,
        outputs,
        constraints,
        sha256_hex,
    })
}

pub fn check_coverage(
    manifest: &ConstraintManifest,
    manifest_sha256_hex: String,
    sr1cs: &Sr1cs,
) -> Result<CoverageReport, CoverageError> {
    if manifest.schema != "shieldd.gnark.constraint_manifest.v1" {
        return Err(CoverageError::UnsupportedSchema(manifest.schema.clone()));
    }
    if !manifest.sr1cs_sha256_hex.is_empty() && manifest.sr1cs_sha256_hex != sr1cs.sha256_hex {
        return Err(CoverageError::Sr1csHashMismatch {
            manifest: manifest.sr1cs_sha256_hex.clone(),
            actual: sr1cs.sha256_hex.clone(),
        });
    }
    if manifest.nb_constraints != sr1cs.constraints.len() {
        return Err(CoverageError::ConstraintCountMismatch {
            manifest: manifest.nb_constraints,
            actual: sr1cs.constraints.len(),
        });
    }

    let mut expected_start = 0usize;
    let mut constraints_by_kind = BTreeMap::<String, usize>::new();
    let mut unclassified = 0usize;
    let mut segment_reports = Vec::with_capacity(manifest.segments.len());
    for segment in &manifest.segments {
        if segment.start != expected_start {
            return Err(CoverageError::SegmentGap {
                index: segment.index,
                op: segment.op.clone(),
                start: segment.start,
                expected: expected_start,
            });
        }
        if segment.end < segment.start {
            return Err(CoverageError::SegmentBackwards {
                index: segment.index,
                op: segment.op.clone(),
                start: segment.start,
                end: segment.end,
            });
        }
        if segment.end > sr1cs.constraints.len() {
            return Err(CoverageError::SegmentOutOfBounds {
                index: segment.index,
                op: segment.op.clone(),
                end: segment.end,
                total: sr1cs.constraints.len(),
            });
        }
        let count = segment.end - segment.start;
        if count != segment.constraint_count {
            return Err(CoverageError::BreakdownMismatch {
                kind: format!("segment {} count", segment.index),
                manifest: segment.constraint_count,
                actual: count,
            });
        }
        match segment.kind.as_str() {
            "unclassified" if count > 0 => {
                return Err(CoverageError::UnclassifiedSegment {
                    index: segment.index,
                    op: segment.op.clone(),
                    count,
                });
            }
            "adapter" if count > 0 => {
                return Err(CoverageError::NonZeroAdapter {
                    index: segment.index,
                    op: segment.op.clone(),
                    count,
                });
            }
            "marker" if count > 0 => {
                return Err(CoverageError::NonZeroMarker {
                    index: segment.index,
                    op: segment.op.clone(),
                    count,
                });
            }
            "gadget" => {
                if segment.gadget_label.is_empty() {
                    return Err(CoverageError::MissingGadgetLabel {
                        index: segment.index,
                        op: segment.op.clone(),
                    });
                }
                if segment.bridge_theorem.is_empty() {
                    return Err(CoverageError::MissingBridgeTheorem {
                        index: segment.index,
                        op: segment.op.clone(),
                    });
                }
            }
            _ => {}
        }
        if segment.kind == "unclassified" {
            unclassified += count;
        }
        *constraints_by_kind.entry(segment.kind.clone()).or_default() += count;
        let segment_hash = segment_constraints_hash(&sr1cs.constraints[segment.start..segment.end]);
        segment_reports.push(SegmentReport {
            index: segment.index,
            op: segment.op.clone(),
            kind: segment.kind.clone(),
            gadget_label: segment.gadget_label.clone(),
            bridge_theorem: segment.bridge_theorem.clone(),
            start: segment.start,
            end: segment.end,
            constraint_count: count,
            constraint_sha256_hex: segment_hash,
            verdict: "covered",
        });
        expected_start = segment.end;
    }
    if expected_start != sr1cs.constraints.len() {
        return Err(CoverageError::CoverageTail {
            covered: expected_start,
            total: sr1cs.constraints.len(),
        });
    }

    for (kind, manifest_count) in &manifest.breakdown.constraints_by_kind {
        let actual = constraints_by_kind.get(kind).copied().unwrap_or_default();
        if *manifest_count != actual {
            return Err(CoverageError::BreakdownMismatch {
                kind: kind.clone(),
                manifest: *manifest_count,
                actual,
            });
        }
    }
    if manifest.breakdown.unclassified_constraints != unclassified {
        return Err(CoverageError::UnclassifiedBreakdownMismatch {
            manifest: manifest.breakdown.unclassified_constraints,
            actual: unclassified,
        });
    }

    Ok(CoverageReport {
        schema: "shieldd.gnark.constraint_coverage_report.v1",
        circuit: manifest.circuit.clone(),
        sr1cs_sha256_hex: sr1cs.sha256_hex.clone(),
        manifest_sha256_hex,
        nb_constraints: sr1cs.constraints.len(),
        prime: sr1cs.prime.clone(),
        inputs: sr1cs.inputs.clone(),
        outputs: sr1cs.outputs.clone(),
        constraints_by_kind,
        segments: segment_reports,
    })
}

pub fn report_json(report: &CoverageReport) -> Result<Vec<u8>, serde_json::Error> {
    let mut data = serde_json::to_vec_pretty(report)?;
    data.push(b'\n');
    Ok(data)
}

fn ensure_balanced(line: &str, line_no: usize) -> Result<(), CoverageError> {
    let mut depth = 0isize;
    for byte in line.bytes() {
        match byte {
            b'(' => depth += 1,
            b')' => depth -= 1,
            _ => {}
        }
        if depth < 0 {
            return Err(CoverageError::Sr1csLine {
                line: line_no,
                message: "closing parenthesis before opening parenthesis".to_owned(),
            });
        }
    }
    if depth != 0 {
        return Err(CoverageError::Sr1csLine {
            line: line_no,
            message: "unbalanced parentheses".to_owned(),
        });
    }
    Ok(())
}

fn parse_wire(inner: &str, line_no: usize) -> Result<usize, CoverageError> {
    inner
        .parse::<usize>()
        .map_err(|err| CoverageError::Sr1csLine {
            line: line_no,
            message: format!("invalid wire id {inner:?}: {err}"),
        })
}

fn segment_constraints_hash(constraints: &[String]) -> String {
    let mut hasher = Sha256::new();
    for constraint in constraints {
        hasher.update(constraint.as_bytes());
        hasher.update(b"\n");
    }
    hex::encode(hasher.finalize())
}

fn sha256_hex(data: &[u8]) -> String {
    let mut hasher = Sha256::new();
    hasher.update(data);
    hex::encode(hasher.finalize())
}

#[cfg(test)]
mod tests {
    use super::*;

    fn manifest_json() -> &'static str {
        r#"{
  "schema": "shieldd.gnark.constraint_manifest.v1",
  "circuit": "tiny",
  "nb_constraints": 2,
  "sr1cs_sha256_hex": "",
  "segments": [
    {
      "index": 1,
      "op": "gadget.poseidon",
      "kind": "gadget",
      "gadget_label": "gadget-poseidon2",
      "bridge_theorem": "Poseidon2Bridge.circuit_sound",
      "start": 0,
      "end": 1,
      "constraint_count": 1
    },
    {
      "index": 2,
      "op": "assert.eq",
      "kind": "glue",
      "start": 1,
      "end": 2,
      "constraint_count": 1
    }
  ],
  "breakdown": {
    "constraints_by_kind": {
      "gadget": 1,
      "glue": 1
    },
    "unclassified_constraints": 0
  }
}"#
    }

    // Real gnark `.sr1cs` term syntax: `(constraint [L] [R] [O])` with
    // `(coeff wire)` pairs and wire 0 = the constant-one wire. The glue row
    // (assert.eq) is linear: its R side references only wire 0.
    fn sr1cs() -> Sr1cs {
        parse_sr1cs(
            b"(prime-number 17)\n(in 2)\n(out 1)\n(constraint [(1 2)] [(1 0)] [(1 3)])\n(constraint [(1 3)] [(1 0)] [(1 1)])\n",
        )
        .unwrap()
    }

    #[test]
    fn parses_sr1cs() {
        let parsed = sr1cs();
        assert_eq!(parsed.prime, "17");
        assert_eq!(parsed.inputs, vec![2]);
        assert_eq!(parsed.outputs, vec![1]);
        assert_eq!(parsed.constraints.len(), 2);
    }

    #[test]
    fn coverage_passes_for_exact_partition() {
        let manifest: ConstraintManifest = serde_json::from_str(manifest_json()).unwrap();
        let report = check_coverage(&manifest, "manifest-hash".to_owned(), &sr1cs()).unwrap();
        assert_eq!(report.nb_constraints, 2);
        assert_eq!(report.segments.len(), 2);
    }

    #[test]
    fn coverage_rejects_gap() {
        let mut manifest: ConstraintManifest = serde_json::from_str(manifest_json()).unwrap();
        manifest.segments[1].start = 0;
        let err = check_coverage(&manifest, "manifest-hash".to_owned(), &sr1cs()).unwrap_err();
        assert!(matches!(err, CoverageError::SegmentGap { .. }));
    }

    #[test]
    fn coverage_rejects_unclassified_constraints() {
        let mut manifest: ConstraintManifest = serde_json::from_str(manifest_json()).unwrap();
        manifest.segments[1].kind = "unclassified".to_owned();
        manifest.breakdown.constraints_by_kind.remove("glue");
        manifest
            .breakdown
            .constraints_by_kind
            .insert("unclassified".to_owned(), 1);
        manifest.breakdown.unclassified_constraints = 1;
        let err = check_coverage(&manifest, "manifest-hash".to_owned(), &sr1cs()).unwrap_err();
        assert!(matches!(err, CoverageError::UnclassifiedSegment { .. }));
    }

    #[test]
    fn coverage_rejects_adapter_constraints() {
        let mut manifest: ConstraintManifest = serde_json::from_str(manifest_json()).unwrap();
        manifest.segments[1].kind = "adapter".to_owned();
        manifest.breakdown.constraints_by_kind.remove("glue");
        manifest
            .breakdown
            .constraints_by_kind
            .insert("adapter".to_owned(), 1);
        let err = check_coverage(&manifest, "manifest-hash".to_owned(), &sr1cs()).unwrap_err();
        assert!(matches!(err, CoverageError::NonZeroAdapter { .. }));
    }

    #[test]
    fn coverage_rejects_marker_constraints() {
        let mut manifest: ConstraintManifest = serde_json::from_str(manifest_json()).unwrap();
        manifest.segments[1].kind = "marker".to_owned();
        manifest.breakdown.constraints_by_kind.remove("glue");
        manifest
            .breakdown
            .constraints_by_kind
            .insert("marker".to_owned(), 1);
        let err = check_coverage(&manifest, "manifest-hash".to_owned(), &sr1cs()).unwrap_err();
        assert!(matches!(err, CoverageError::NonZeroMarker { .. }));
    }
}
