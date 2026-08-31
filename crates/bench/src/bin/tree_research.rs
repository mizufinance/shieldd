use std::{path::PathBuf, process::Command};

use anyhow::{Context, Result};
use clap::{Parser, ValueEnum};
use shieldd_sdk_bench::tree_research::{
    run_compliance_spikes, run_nullifier_spikes, run_poseidon_spikes, run_tct_spikes, InputPattern,
    ResearchRun, SpikeConfig,
};

#[derive(Clone, Copy, Debug, ValueEnum)]
enum Profile {
    Smoke,
    Full,
}

#[derive(Clone, Copy, Debug, ValueEnum)]
enum TreeSuite {
    All,
    Nullifier,
    Tct,
    Compliance,
    Poseidon,
}

#[derive(Debug, Parser)]
#[clap(about = "Run exact-root Shieldd tree research prototypes")]
struct Args {
    #[clap(long, arg_enum, default_value_t = Profile::Smoke)]
    profile: Profile,
    #[clap(long, arg_enum, default_value_t = TreeSuite::All)]
    tree: TreeSuite,
    #[clap(long, use_value_delimiter = true, default_value = "1,2,4,8")]
    threads: Vec<usize>,
    #[clap(long)]
    output: Option<PathBuf>,
    #[clap(long)]
    batch_size: Option<usize>,
    #[clap(long)]
    prefill_size: Option<usize>,
    #[clap(long)]
    warmups: Option<usize>,
    #[clap(long)]
    repetitions: Option<usize>,
    #[clap(long, default_value_t = 64)]
    parallel_threshold: usize,
    #[clap(long, default_value_t = 256)]
    max_concurrent_reads: usize,
}

fn output(command: &str, args: &[&str]) -> String {
    Command::new(command)
        .args(args)
        .output()
        .ok()
        .filter(|output| output.status.success())
        .map(|output| String::from_utf8_lossy(&output.stdout).trim().to_owned())
        .unwrap_or_else(|| "unknown".to_owned())
}

#[tokio::main]
async fn main() -> Result<()> {
    let args = Args::parse();
    let mut measurements = Vec::new();
    let warmups = args.warmups.unwrap_or(match args.profile {
        Profile::Smoke => 0,
        Profile::Full => 2,
    });
    let repetitions = args.repetitions.unwrap_or(match args.profile {
        Profile::Smoke => 1,
        Profile::Full => 3,
    });
    anyhow::ensure!(repetitions > 0, "repetitions must be positive");
    anyhow::ensure!(
        args.parallel_threshold > 0,
        "parallel threshold must be positive"
    );
    anyhow::ensure!(
        args.max_concurrent_reads > 0,
        "concurrent read bound must be positive"
    );
    for &threads in &args.threads {
        anyhow::ensure!(threads > 0, "thread counts must be positive");
        let prefill_size = args.prefill_size.unwrap_or(match args.profile {
            Profile::Smoke => 100,
            Profile::Full => 10_000,
        });
        let base_config = |batch_size, pattern| SpikeConfig {
            batch_size,
            prefill_size,
            threads,
            warmups,
            repetitions,
            pattern,
            parallel_threshold: args.parallel_threshold,
            max_concurrent_reads: args.max_concurrent_reads,
        };

        if matches!(args.tree, TreeSuite::All | TreeSuite::Nullifier) {
            let sizes = args.batch_size.map_or_else(
                || match args.profile {
                    Profile::Smoke => vec![100],
                    Profile::Full => vec![2, 100, 1_000, 10_000],
                },
                |size| vec![size],
            );
            let patterns: &[InputPattern] = match args.profile {
                Profile::Smoke => &[InputPattern::Spread],
                Profile::Full => &[
                    InputPattern::Sequential,
                    InputPattern::Descending,
                    InputPattern::Spread,
                ],
            };
            for &pattern in patterns {
                for &size in &sizes {
                    measurements.extend(run_nullifier_spikes(&base_config(size, pattern)).await?);
                }
            }
        }

        if matches!(args.tree, TreeSuite::All | TreeSuite::Tct) {
            let sizes = args.batch_size.map_or_else(
                || match args.profile {
                    Profile::Smoke => vec![1_000],
                    Profile::Full => vec![100, 1_000, 10_000, 50_000],
                },
                |size| vec![size],
            );
            for size in sizes {
                measurements.extend(run_tct_spikes(&base_config(size, InputPattern::Spread))?);
            }
        }

        if matches!(args.tree, TreeSuite::All | TreeSuite::Compliance) {
            let sizes = args.batch_size.map_or_else(
                || match args.profile {
                    Profile::Smoke => vec![100],
                    Profile::Full => vec![10, 100, 1_000],
                },
                |size| vec![size],
            );
            for size in sizes {
                measurements.extend(run_compliance_spikes(&base_config(
                    size,
                    InputPattern::Spread,
                ))?);
            }
        }

        if matches!(args.tree, TreeSuite::All | TreeSuite::Poseidon) {
            let sizes = args.batch_size.map_or_else(
                || match args.profile {
                    Profile::Smoke => vec![1_000],
                    Profile::Full => vec![100, 1_000, 10_000, 50_000],
                },
                |size| vec![size],
            );
            for size in sizes {
                measurements.extend(run_poseidon_spikes(&base_config(
                    size,
                    InputPattern::Spread,
                ))?);
            }
        }
    }

    let run = ResearchRun {
        revision: output("git", &["rev-parse", "HEAD"]),
        research_source: "tree-update-spikes-v1",
        rustc: output("rustc", &["--version"]),
        os: std::env::consts::OS,
        architecture: std::env::consts::ARCH,
        build_profile: if cfg!(debug_assertions) {
            "debug"
        } else {
            "release"
        },
        deterministic_seed: 0x9e37_79b9_7f4a,
        logical_cpus: std::thread::available_parallelism()
            .context("read available parallelism")?
            .get(),
        measurements,
    };
    let json = serde_json::to_string_pretty(&run)?;
    if let Some(path) = args.output {
        std::fs::write(&path, json)
            .with_context(|| format!("write benchmark output to {}", path.display()))?;
        eprintln!(
            "wrote {} measurements to {}",
            run.measurements.len(),
            path.display()
        );
    } else {
        println!("{json}");
    }
    Ok(())
}
