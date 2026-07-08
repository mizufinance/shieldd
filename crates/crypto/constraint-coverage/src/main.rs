use anyhow::Context;
use clap::Parser;
use serde::Serialize;
use shieldd_constraint_coverage::{
    check_coverage, contracts,
    ir::{build_ir, ir_json, parse_rows},
    leangen, load_manifest, load_sr1cs, obligations, report_json,
    rowmap::{build_row_map, row_map_json},
    CoverageReport,
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
    /// Read the committed deployed-slice IR from here when checking a coverage
    /// manifest. Its circuit and `.sr1cs` hash are verified before use.
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
    /// Emit the recovered, parity-gated lt-compare ladder seating (R + Q4
    /// canonicity chains) for consolidate2x1 as JSON here — the Pass-3 handoff
    /// the Lean generator consumes instead of re-deriving the recovery.
    #[clap(long)]
    lt_seating_out: Option<PathBuf>,
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

fn main() -> anyhow::Result<()> {
    let args = Args::parse();
    let (manifest, manifest_hash) = load_manifest(&args.manifest)
        .with_context(|| format!("load manifest {}", args.manifest.display()))?;
    let sr1cs =
        load_sr1cs(&args.sr1cs).with_context(|| format!("load sr1cs {}", args.sr1cs.display()))?;

    if args.ir_out.is_some()
        || args.coverage_manifest_out.is_some()
        || args.lean_out.is_some()
        || args.lean_contract_out.is_some()
        || args.lean_seg_out.is_some()
        || args.lean_slice_seg_out.is_some()
    {
        let ir = build_ir(&manifest, &sr1cs).context("build deployed-slice IR")?;
        if let Some(path) = &args.ir_out {
            write_out(path, ir_json(&ir)?)?;
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

    if let Some(path) = &args.lt_seating_out {
        anyhow::ensure!(
            manifest.circuit == "consolidate2x1",
            "--lt-seating-out only applies to consolidate2x1 (got {:?})",
            manifest.circuit
        );
        let rows = parse_rows(&sr1cs).context("parse rows for lt seating")?;
        const DTK_ROWS: usize = 6329;
        let ir = build_ir(&manifest, &sr1cs).context("build deployed-slice IR for lt seating")?;
        let dtk_offset = ir
            .segments
            .iter()
            .find(|s| s.op == "decaf.diversified_transmission_key")
            .context("no decaf.diversified_transmission_key segment in IR")?
            .start;
        let dtk = rows
            .get(dtk_offset..dtk_offset + DTK_ROWS)
            .context("DTK segment slice out of range for lt seating")?;
        let seating =
            shieldd_constraint_coverage::ltchain::consolidate2x1_lt_seating_json(dtk, dtk_offset)
            .map_err(anyhow::Error::msg)
            .context("recover + gate lt-compare ladders")?;
        let mut data = serde_json::to_vec_pretty(&seating)?;
        data.push(b'\n');
        write_out(path, data)?;
        eprintln!("emitted lt-compare ladder seating to {}", path.display());
        return Ok(());
    }

    if let Some(path) = &args.wiring_cert_out {
        let ir = build_ir(&manifest, &sr1cs).context("build deployed-slice IR for wiring cert")?;
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
        let ir = if let Some(ir_path) = &args.coverage_ir {
            let bytes = fs::read(ir_path)
                .with_context(|| format!("read deployed slice IR {}", ir_path.display()))?;
            let ir = obligations::load_ir(&bytes).context("parse deployed slice IR")?;
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
            ir
        } else {
            build_ir(&manifest, &sr1cs).context("build deployed-slice IR")?
        };
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
