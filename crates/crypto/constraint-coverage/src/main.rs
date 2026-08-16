use anyhow::Context;
use clap::Parser;
use serde::Serialize;
use shieldd_constraint_coverage::{
    check_coverage, contracts,
    ir::{build_ir, build_ir_with_witness_hints, ir_json, parse_rows, CircuitIr},
    leangen, load_manifest, load_sr1cs, obligations, report_json,
    rowmap::{build_row_map, row_map_json},
    template_registry::{registry_json, seed_reviewed_templates, TemplateRegistry},
    ConstraintManifest, CoverageReport, Sr1cs,
};
use std::{fs, path::PathBuf};

#[derive(Debug, Parser)]
struct Args {
    #[clap(long)]
    manifest: PathBuf,
    #[clap(long)]
    sr1cs: PathBuf,
    #[clap(long)]
    report_out: Option<PathBuf>,
    /// Emit the canonical deployed-slice IR (wire roles + class dedup) here.
    /// Building the IR runs the round-trip independence check over every row.
    #[clap(long)]
    ir_out: Option<PathBuf>,
    /// Reviewed canonical proof-template registry used for fail-closed matching.
    #[clap(long)]
    template_registry: Option<PathBuf>,
    /// Explicit review/bootstrap operation: add this circuit's exact local
    /// presentations to the registry and write the result here.
    #[clap(long)]
    seed_template_registry_out: Option<PathBuf>,
    /// Restrict an explicit registry review/seed operation to one exact op.
    #[clap(long, requires = "seed-template-registry-out")]
    seed_template_op: Option<String>,
    /// Write a pending deployed-coverage manifest skeleton derived from the IR.
    #[clap(long)]
    coverage_manifest_out: Option<PathBuf>,
    /// Read this deployed-coverage manifest, refresh all machine-derived
    /// per-instance pins from the IR, and write the normalized result to
    /// `--coverage-manifest-out`.
    #[clap(long)]
    coverage_manifest_normalize: Option<PathBuf>,
    /// Check this deployed-coverage manifest and embed its obligation verdicts
    /// in the emitted coverage report.
    #[clap(long)]
    coverage_manifest: Option<PathBuf>,
    /// Reuse the committed deployed-slice IR for generation and checks. The
    /// complete canonical IR is reconstructed from the SR1CS, manifest, and
    /// reviewed registry and must byte-match before use.
    #[clap(long)]
    coverage_ir: Option<PathBuf>,
    /// Generate one Lean `def` per structural class into this directory.
    #[clap(long)]
    lean_out: Option<PathBuf>,
    /// Generate exact per-instance deployed-slice Lean contracts into this
    /// directory. The output path mirrors the Lean module hierarchy under
    /// `ShielddGnarkFormal/Deployed/Contracts`.
    #[clap(long)]
    lean_contract_out: Option<PathBuf>,
    /// Generate one reusable normalized-relation Lean template per template
    /// key. Instance contracts import these modules and carry only seating.
    #[clap(long)]
    lean_template_out: Option<PathBuf>,
    /// Restrict Lean generation to ops whose name contains this substring.
    #[clap(long)]
    lean_only: Option<String>,
    /// Generate CPS-segmented Lean defs (for dense classes) into this directory.
    #[clap(long)]
    lean_seg_out: Option<PathBuf>,
    /// Generate one CPS-segmented Lean def for an explicit `[start,end)` row range.
    #[clap(long)]
    lean_slice_seg_out: Option<PathBuf>,
    /// Operation label for `--lean-slice-seg-out`.
    #[clap(long)]
    slice_op: Option<String>,
    /// Inclusive start row (0-based) for `--lean-slice-seg-out`.
    #[clap(long)]
    slice_start: Option<usize>,
    /// Exclusive end row (0-based) for `--lean-slice-seg-out`.
    #[clap(long)]
    slice_end: Option<usize>,
    /// Rows per segment for `--lean-seg-out`.
    #[clap(long, default_value_t = 50)]
    seg_size: usize,
    /// Deployed rows whose widest side exceeds this term count are delegated to a
    /// fuel lemma rather than flat-proven (default 16). Raise for slices whose
    /// folded accumulators rematerialize narrow (e.g. Poseidon MDS folds).
    #[clap(long, default_value_t = 16)]
    ladder_width_limit: usize,
    /// Emit the recovered, parity-gated R/Q4 seating for the active normalized
    /// DTK template. The selected circuit must contain exactly one instance.
    #[clap(long)]
    dtk_lt_seating_out: Option<PathBuf>,
    /// Emit the exhaustive wire-graph row map for `[slice-start,slice-end)` here
    /// (per-row {to_binary|step|redundant} classification + justification).
    #[clap(long)]
    row_map_out: Option<PathBuf>,
    /// Build and CHECK the gadget-wiring certificate (instance graph +
    /// topological order) and write it here. Fails closed on a shared wire
    /// producer, a used-but-never-defined input wire, or a cycle. Closes
    /// picus-composition-note gap 2.
    #[clap(long)]
    wiring_cert_out: Option<PathBuf>,
}

#[derive(Serialize)]
struct ReportOutput<'a> {
    #[serde(flatten)]
    coverage: &'a CoverageReport,
    #[serde(skip_serializing_if = "Option::is_none")]
    deployed_obligations: Option<&'a obligations::CoverageReport>,
}

fn report_output_json(
    coverage: &CoverageReport,
    deployed_obligations: Option<&obligations::CoverageReport>,
) -> anyhow::Result<Vec<u8>> {
    if deployed_obligations.is_none() {
        return Ok(report_json(coverage)?);
    }
    let mut data = serde_json::to_vec_pretty(&ReportOutput {
        coverage,
        deployed_obligations,
    })?;
    data.push(b'\n');
    Ok(data)
}

fn write_out(path: &std::path::Path, data: Vec<u8>) -> anyhow::Result<()> {
    if let Some(parent) = path.parent() {
        fs::create_dir_all(parent).with_context(|| format!("create dir {}", parent.display()))?;
    }
    fs::write(path, data).with_context(|| format!("write {}", path.display()))
}

fn load_bound_ir(
    path: &std::path::Path,
    manifest: &ConstraintManifest,
    sr1cs: &Sr1cs,
    registry: &TemplateRegistry,
    registry_root: &std::path::Path,
) -> anyhow::Result<CircuitIr> {
    let bytes =
        fs::read(path).with_context(|| format!("read deployed slice IR {}", path.display()))?;
    let ir = obligations::load_ir(&bytes).context("parse deployed slice IR")?;
    anyhow::ensure!(
        ir.schema == shieldd_constraint_coverage::ir::DEPLOYED_SLICE_IR_SCHEMA,
        "deployed slice IR schema {:?} is unsupported",
        ir.schema
    );
    anyhow::ensure!(
        ir.circuit == manifest.circuit,
        "deployed slice IR circuit {:?} != manifest circuit {:?}",
        ir.circuit,
        manifest.circuit
    );
    anyhow::ensure!(
        ir.sr1cs_sha256_hex == sr1cs.sha256_hex,
        "deployed slice IR .sr1cs hash {} != actual {}",
        ir.sr1cs_sha256_hex,
        sr1cs.sha256_hex
    );
    anyhow::ensure!(
        ir.nb_constraints == manifest.nb_constraints
            && ir.nb_constraints == sr1cs.constraints.len(),
        "deployed slice IR constraint count {} != manifest/SR1CS counts {}/{}",
        ir.nb_constraints,
        manifest.nb_constraints,
        sr1cs.constraints.len()
    );
    anyhow::ensure!(
        ir.segments.len() == manifest.segments.len(),
        "deployed slice IR segment projection length {} != manifest length {}",
        ir.segments.len(),
        manifest.segments.len()
    );
    for (ir_segment, manifest_segment) in ir.segments.iter().zip(&manifest.segments) {
        anyhow::ensure!(
            ir_segment.index == manifest_segment.index
                && ir_segment.op == manifest_segment.op
                && ir_segment.kind == manifest_segment.kind
                && ir_segment.start == manifest_segment.start
                && ir_segment.end == manifest_segment.end
                && ir_segment.constraint_count == manifest_segment.constraint_count,
            "deployed slice IR segment projection differs at manifest segment {}",
            manifest_segment.index
        );
    }
    let canonical =
        build_ir_with_witness_hints(manifest, sr1cs, registry, registry_root, Some(&ir))
            .context("reconstruct canonical deployed-slice IR")?;
    let canonical_bytes = ir_json(&canonical)?;
    anyhow::ensure!(
        bytes == canonical_bytes,
        "deployed slice IR bytes differ from the canonical reconstruction from the \
         supplied SR1CS, manifest, and reviewed proof-template registry; unknown fields \
         and noncanonical JSON encodings are rejected"
    );
    Ok(ir)
}

fn cached_bound_ir<'a>(
    cache: &'a mut Option<CircuitIr>,
    coverage_ir: Option<&std::path::Path>,
    manifest: &ConstraintManifest,
    sr1cs: &Sr1cs,
    registry: &TemplateRegistry,
    registry_root: &std::path::Path,
) -> anyhow::Result<&'a CircuitIr> {
    if cache.is_none() {
        let ir = if let Some(path) = coverage_ir {
            load_bound_ir(path, manifest, sr1cs, registry, registry_root)?
        } else {
            build_ir(manifest, sr1cs, registry, registry_root).context("build deployed-slice IR")?
        };
        *cache = Some(ir);
    }
    Ok(cache
        .as_ref()
        .expect("deployed-slice IR cache is populated above"))
}

fn main() -> anyhow::Result<()> {
    let args = Args::parse();
    let (manifest, manifest_hash) = load_manifest(&args.manifest)
        .with_context(|| format!("load manifest {}", args.manifest.display()))?;
    let sr1cs =
        load_sr1cs(&args.sr1cs).with_context(|| format!("load sr1cs {}", args.sr1cs.display()))?;

    let mut registry = if let Some(path) = &args.template_registry {
        let bytes = fs::read(path)
            .with_context(|| format!("read proof-template registry {}", path.display()))?;
        serde_json::from_slice::<TemplateRegistry>(&bytes)
            .with_context(|| format!("parse proof-template registry {}", path.display()))?
    } else {
        TemplateRegistry::empty()
    };
    let registry_root = args
        .template_registry
        .as_deref()
        .and_then(std::path::Path::parent)
        .unwrap_or_else(|| std::path::Path::new("."));
    if args.coverage_ir.is_some() {
        anyhow::ensure!(
            args.template_registry.is_some(),
            "--template-registry is required to authenticate reused deployed IR content"
        );
    }
    let mut bound_ir = None;
    if let Some(path) = &args.seed_template_registry_out {
        let seed_root = path.parent().unwrap_or_else(|| std::path::Path::new("."));
        seed_reviewed_templates(
            &mut registry,
            &manifest,
            &sr1cs,
            seed_root,
            args.seed_template_op.as_deref(),
        )
        .context("seed reviewed proof templates")?;
        write_out(path, registry_json(&registry)?)?;
        eprintln!(
            "seeded reviewed proof-template registry {} ({} templates)",
            path.display(),
            registry.templates.len()
        );
        if args.ir_out.is_none()
            && args.coverage_manifest_out.is_none()
            && args.lean_out.is_none()
            && args.lean_contract_out.is_none()
            && args.lean_template_out.is_none()
            && args.lean_seg_out.is_none()
            && args.lean_slice_seg_out.is_none()
            && args.dtk_lt_seating_out.is_none()
            && args.wiring_cert_out.is_none()
            && args.row_map_out.is_none()
            && args.coverage_manifest.is_none()
            && args.report_out.is_none()
        {
            return Ok(());
        }
    }

    if args.ir_out.is_some()
        || args.coverage_manifest_out.is_some()
        || args.lean_out.is_some()
        || args.lean_contract_out.is_some()
        || args.lean_template_out.is_some()
        || args.lean_seg_out.is_some()
        || args.lean_slice_seg_out.is_some()
        || args.dtk_lt_seating_out.is_some()
    {
        anyhow::ensure!(
            args.template_registry.is_some(),
            "--template-registry is required for deployed IR and Lean generation"
        );
        let ir = cached_bound_ir(
            &mut bound_ir,
            args.coverage_ir.as_deref(),
            &manifest,
            &sr1cs,
            &registry,
            registry_root,
        )?;
        if let Some(path) = &args.ir_out {
            write_out(path, ir_json(ir)?)?;
        }
        if let Some(path) = &args.coverage_manifest_out {
            let manifest = if let Some(previous_path) = &args.coverage_manifest_normalize {
                let previous_bytes = fs::read(previous_path).with_context(|| {
                    format!(
                        "read deployed coverage manifest {}",
                        previous_path.display()
                    )
                })?;
                let previous = obligations::load_coverage_manifest(&previous_bytes)
                    .context("parse deployed coverage manifest to normalize")?;
                obligations::normalize_manifest(&ir, &previous)
            } else {
                obligations::skeleton_from_ir(&ir)
            };
            let mut data = serde_json::to_vec_pretty(&manifest)?;
            data.push(b'\n');
            write_out(path, data)?;
        } else if args.coverage_manifest_normalize.is_some() {
            anyhow::bail!("--coverage-manifest-normalize requires --coverage-manifest-out");
        }
        if let Some(dir) = &args.lean_out {
            let files = leangen::generate(&ir, &sr1cs, args.lean_only.as_deref())
                .context("generate deployed Lean defs")?;
            for f in &files {
                write_out(&dir.join(&f.file_name), f.contents.clone().into_bytes())?;
                eprintln!("generated {} ({})", f.file_name, &f.sha256_hex[..12]);
            }
        }
        if let Some(dir) = &args.lean_contract_out {
            let files = contracts::generate(&ir, &sr1cs)
                .context("generate deployed Lean contract files")?;
            for f in &files {
                write_out(&dir.join(&f.file_name), f.contents.clone().into_bytes())?;
                eprintln!("generated contract {} ({})", f.file_name, f.module);
            }
        }
        if let Some(dir) = &args.lean_template_out {
            let mut write_error = None;
            contracts::visit_templates_filtered(
                &ir,
                &sr1cs,
                &registry,
                registry_root,
                args.lean_only.as_deref(),
                |f| {
                    if write_error.is_some() {
                        return;
                    }
                    if let Err(error) = write_out(&dir.join(&f.file_name), f.contents.into_bytes())
                    {
                        write_error = Some(error);
                    } else {
                        eprintln!("generated template {} ({})", f.file_name, f.module);
                    }
                },
            )
            .context("generate normalized deployed Lean templates")?;
            if let Some(error) = write_error {
                return Err(error);
            }
        }
        if let Some(path) = &args.dtk_lt_seating_out {
            let matches: Vec<_> = ir
                .segments
                .iter()
                .filter(|segment| {
                    segment.proof_template_id
                        == shieldd_constraint_coverage::ltchain::ACTIVE_DTK_TEMPLATE_ID
                })
                .collect();
            anyhow::ensure!(
                matches.len() == 1,
                "--dtk-lt-seating-out requires exactly one active DTK template instance, got {}",
                matches.len(),
            );
            let segment = matches[0];
            anyhow::ensure!(
                segment.constraint_count == shieldd_constraint_coverage::ltchain::ACTIVE_DTK_ROWS,
                "active DTK segment has {} rows, expected {}",
                segment.constraint_count,
                shieldd_constraint_coverage::ltchain::ACTIVE_DTK_ROWS,
            );
            let rows = parse_rows(&sr1cs).context("parse rows for DTK LT seating")?;
            let dtk = rows
                .get(segment.start..segment.end)
                .context("active DTK segment slice is out of range")?;
            let seating =
                shieldd_constraint_coverage::ltchain::dtk_lt_seating_json(dtk, segment.start)
                    .map_err(anyhow::Error::msg)
                    .context("recover and parity-gate active DTK LT ladders")?;
            let mut data = serde_json::to_vec_pretty(&seating)?;
            data.push(b'\n');
            write_out(path, data)?;
            eprintln!("emitted active DTK LT seating to {}", path.display());
        }
        if let Some(dir) = &args.lean_seg_out {
            let files =
                leangen::generate_segmented(&ir, &sr1cs, args.lean_only.as_deref(), args.seg_size)
                    .context("generate segmented deployed Lean defs")?;
            for f in &files {
                write_out(&dir.join(&f.file_name), f.contents.clone().into_bytes())?;
                eprintln!(
                    "generated segmented {} ({} segments, {})",
                    f.file_name,
                    f.segment_count,
                    &f.sha256_hex[..12]
                );
            }
        }
        if let Some(dir) = &args.lean_slice_seg_out {
            let op = args
                .slice_op
                .as_deref()
                .context("--slice-op is required with --lean-slice-seg-out")?;
            let start = args
                .slice_start
                .context("--slice-start is required with --lean-slice-seg-out")?;
            let end = args
                .slice_end
                .context("--slice-end is required with --lean-slice-seg-out")?;
            let f = leangen::generate_segmented_slice(
                &sr1cs,
                op,
                start,
                end,
                args.seg_size,
                args.ladder_width_limit,
            )
            .context("generate segmented deployed Lean slice def")?;
            write_out(&dir.join(&f.file_name), f.contents.clone().into_bytes())?;
            eprintln!(
                "generated segmented slice {} ({} segments, {})",
                f.file_name,
                f.segment_count,
                &f.sha256_hex[..12]
            );
        }
    }

    if let Some(path) = &args.wiring_cert_out {
        let ir = cached_bound_ir(
            &mut bound_ir,
            args.coverage_ir.as_deref(),
            &manifest,
            &sr1cs,
            &registry,
            registry_root,
        )?;
        let cert = shieldd_constraint_coverage::wiring::build_certificate(&ir, &sr1cs)
            .map_err(anyhow::Error::msg)
            .context("build + check gadget-wiring certificate")?;
        let (data, sha) = shieldd_constraint_coverage::wiring::certificate_json(&cert)
            .map_err(anyhow::Error::msg)
            .context("serialize gadget-wiring certificate")?;
        write_out(path, data)?;
        eprintln!(
            "wiring cert ok: {} nodes, {} edges, acyclic; roots: {} primary-input, {} internal-witness, \
             {} shared-witness; sha256:{}",
            cert.n_nodes,
            cert.n_edges,
            cert.n_primary_input_roots,
            cert.n_internal_witness,
            cert.n_shared_witness,
            sha
        );
        return Ok(());
    }

    if let Some(path) = &args.row_map_out {
        let op = args
            .slice_op
            .as_deref()
            .context("--slice-op is required with --row-map-out")?;
        let start = args
            .slice_start
            .context("--slice-start is required with --row-map-out")?;
        let end = args
            .slice_end
            .context("--slice-end is required with --row-map-out")?;
        let rows = parse_rows(&sr1cs).context("parse rows for row map")?;
        let map = build_row_map(&sr1cs, &rows, op, start, end);
        for (k, v) in &map.counts {
            eprintln!("row-map {k}: {v}");
        }
        write_out(path, row_map_json(&map)?)?;
        return Ok(());
    }

    let report = check_coverage(&manifest, manifest_hash, &sr1cs)?;
    let deployed_obligations = if let Some(path) = &args.coverage_manifest {
        let ir = cached_bound_ir(
            &mut bound_ir,
            args.coverage_ir.as_deref(),
            &manifest,
            &sr1cs,
            &registry,
            registry_root,
        )?;
        let bytes = fs::read(path)
            .with_context(|| format!("read deployed coverage manifest {}", path.display()))?;
        let deployed_manifest = obligations::load_coverage_manifest(&bytes)
            .context("parse deployed coverage manifest")?;
        Some(obligations::check_obligations(&ir, &deployed_manifest))
    } else {
        None
    };
    let report = report_output_json(&report, deployed_obligations.as_ref())?;
    if let Some(path) = &args.report_out {
        write_out(path, report)?;
    } else if args.ir_out.is_none()
        && args.coverage_manifest_out.is_none()
        && args.lean_contract_out.is_none()
        && args.lean_slice_seg_out.is_none()
    {
        print!("{}", String::from_utf8(report)?);
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use shieldd_constraint_coverage::{
        template_registry::seed_reviewed_templates, ManifestBreakdown, ManifestSegment,
    };
    use std::collections::BTreeMap;
    use std::time::{SystemTime, UNIX_EPOCH};

    #[test]
    fn reused_ir_rejects_stale_manifest_segment_projection() {
        let path = std::env::temp_dir().join(format!(
            "shieldd-stale-ir-projection-{}.json",
            std::process::id()
        ));
        let ir = serde_json::json!({
            "schema": "shieldd.gnark.deployed_slice_ir.v3",
            "circuit": "example",
            "sr1cs_sha256_hex": "abcd",
            "nb_constraints": 1,
            "classes": [],
            "segments": [{
                "index": 1,
                "op": "stale.op",
                "kind": "gadget",
                "start": 0,
                "end": 1,
                "constraint_count": 1,
                "wire_roles": {
                    "input": [],
                    "output": [],
                    "internal": []
                }
            }]
        });
        fs::write(&path, serde_json::to_vec(&ir).expect("serialize test IR"))
            .expect("write test IR");

        let manifest = ConstraintManifest {
            schema: "shieldd.gnark.constraint_manifest.v1".to_owned(),
            circuit: "example".to_owned(),
            nb_constraints: 1,
            sr1cs_sha256_hex: "abcd".to_owned(),
            segments: vec![ManifestSegment {
                index: 1,
                op: "current.op".to_owned(),
                kind: "gadget".to_owned(),
                gadget_label: String::new(),
                bridge_theorem: String::new(),
                start: 0,
                end: 1,
                constraint_count: 1,
            }],
            breakdown: ManifestBreakdown {
                constraints_by_kind: BTreeMap::new(),
                unclassified_constraints: 0,
            },
        };
        let sr1cs = Sr1cs {
            prime: "17".to_owned(),
            inputs: vec![],
            outputs: vec![],
            constraints: vec!["(constraint [] [] [])".to_owned()],
            sha256_hex: "abcd".to_owned(),
        };

        let result = load_bound_ir(
            &path,
            &manifest,
            &sr1cs,
            &TemplateRegistry::empty(),
            std::path::Path::new("."),
        );
        let _ = fs::remove_file(&path);
        let error = result.expect_err("stale manifest projection must be rejected");
        assert!(
            error.to_string().contains("segment projection"),
            "unexpected error: {error:#}"
        );
    }

    #[test]
    fn reused_ir_rejects_mutated_derived_content() {
        let unique = SystemTime::now()
            .duration_since(UNIX_EPOCH)
            .expect("clock after epoch")
            .as_nanos();
        let root = std::env::temp_dir().join(format!(
            "shieldd-bound-ir-auth-{}-{unique}",
            std::process::id()
        ));
        fs::create_dir_all(&root).expect("create test registry root");
        let path = root.join("coverage-ir.json");

        let manifest = ConstraintManifest {
            schema: "shieldd.gnark.constraint_manifest.v1".to_owned(),
            circuit: "example".to_owned(),
            nb_constraints: 1,
            sr1cs_sha256_hex: "abcd".to_owned(),
            segments: vec![ManifestSegment {
                index: 1,
                op: "test.mul".to_owned(),
                kind: "gadget".to_owned(),
                gadget_label: "test_mul".to_owned(),
                bridge_theorem: "TestMulBridge.circuit_sound".to_owned(),
                start: 0,
                end: 1,
                constraint_count: 1,
            }],
            breakdown: ManifestBreakdown {
                constraints_by_kind: BTreeMap::from([("gadget".to_owned(), 1)]),
                unclassified_constraints: 0,
            },
        };
        let sr1cs = Sr1cs {
            prime: "17".to_owned(),
            inputs: vec![2],
            outputs: vec![3],
            constraints: vec!["(constraint [(1 2)] [(1 0)] [(1 3)])".to_owned()],
            sha256_hex: "abcd".to_owned(),
        };
        let mut registry = TemplateRegistry::empty();
        seed_reviewed_templates(&mut registry, &manifest, &sr1cs, &root, None)
            .expect("seed test-only reviewed relation");
        let canonical =
            build_ir(&manifest, &sr1cs, &registry, &root).expect("build canonical test IR");
        write_out(&path, ir_json(&canonical).expect("serialize canonical IR"))
            .expect("write canonical IR");
        load_bound_ir(&path, &manifest, &sr1cs, &registry, &root)
            .expect("unaltered canonical IR must authenticate");

        let reject = |mutated: serde_json::Value, label: &str, expected: &str| {
            fs::write(
                &path,
                serde_json::to_vec_pretty(&mutated).expect("serialize mutated IR"),
            )
            .expect("write mutated IR");
            let error = load_bound_ir(&path, &manifest, &sr1cs, &registry, &root).expect_err(label);
            let chain = format!("{error:#}");
            assert!(
                chain.contains(expected),
                "unexpected {label} error: {error:#}"
            );
        };

        let mut mutated_class =
            serde_json::to_value(&canonical).expect("serialize canonical IR as value");
        mutated_class["classes"][0]["shape_sha256_hex"] =
            serde_json::Value::String("tampered-class".to_owned());
        reject(
            mutated_class,
            "mutated class metadata must fail",
            "canonical reconstruction",
        );

        let mut mutated_roles =
            serde_json::to_value(&canonical).expect("serialize canonical IR as value");
        mutated_roles["segments"][0]["wire_roles"]["input"][0] = serde_json::Value::from(999u64);
        reject(
            mutated_roles,
            "mutated wire roles must fail",
            "canonical reconstruction",
        );

        let mut mutated_template =
            serde_json::to_value(&canonical).expect("serialize canonical IR as value");
        mutated_template["segments"][0]["proof_template_id"] =
            serde_json::Value::String("tampered-template".to_owned());
        reject(
            mutated_template,
            "mutated proof-template identity must fail",
            "inconsistent cached proof-template identities",
        );

        let mut mutated_row_mapping =
            serde_json::to_value(&canonical).expect("serialize canonical IR as value");
        mutated_row_mapping["segments"][0]["template_equivalence_witness"]
            ["canonical_row_to_deployed_row"]["row_count"] = serde_json::Value::from(2u64);
        reject(
            mutated_row_mapping,
            "mutated template row mapping must fail",
            "invalid cached proof-template witness",
        );

        let mut mutated_seating =
            serde_json::to_value(&canonical).expect("serialize canonical IR as value");
        mutated_seating["segments"][0]["template_equivalence_witness"]
            ["canonical_local_to_deployed_wire_seating"][0] = serde_json::Value::from(999u64);
        reject(
            mutated_seating,
            "mutated template wire seating must fail",
            "invalid cached proof-template witness",
        );

        let mut unknown_field =
            serde_json::to_value(&canonical).expect("serialize canonical IR as value");
        unknown_field["unreviewed_extension"] = serde_json::Value::Bool(true);
        reject(
            unknown_field,
            "unknown IR fields must fail",
            "canonical reconstruction",
        );

        fs::remove_dir_all(&root).expect("remove test registry root");
    }
}
