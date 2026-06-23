use anyhow::Context;
use clap::Parser;
use shieldd_constraint_coverage::{
    check_coverage,
    ir::{build_ir, ir_json},
    leangen, load_manifest, load_sr1cs, report_json,
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
    /// Generate one Lean `def` per structural class into this directory.
    #[clap(long)]
    lean_out: Option<PathBuf>,
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
        || args.lean_out.is_some()
        || args.lean_seg_out.is_some()
        || args.lean_slice_seg_out.is_some()
    {
        let ir = build_ir(&manifest, &sr1cs).context("build deployed-slice IR")?;
        if let Some(path) = &args.ir_out {
            write_out(path, ir_json(&ir)?)?;
        }
        if let Some(dir) = &args.lean_out {
            let files = leangen::generate(&ir, &sr1cs, args.lean_only.as_deref())
                .context("generate deployed Lean defs")?;
            for f in &files {
                write_out(&dir.join(&f.file_name), f.contents.clone().into_bytes())?;
                eprintln!("generated {} ({})", f.file_name, &f.sha256_hex[..12]);
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
            let f = leangen::generate_segmented_slice(&sr1cs, op, start, end, args.seg_size)
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

    let report = check_coverage(&manifest, manifest_hash, &sr1cs)?;
    let report = report_json(&report)?;
    if let Some(path) = &args.report_out {
        write_out(path, report)?;
    } else if args.ir_out.is_none() && args.lean_slice_seg_out.is_none() {
        print!("{}", String::from_utf8(report)?);
    }
    Ok(())
}
