use anyhow::{Context, Result};

fn main() -> Result<()> {
    let mut args = std::env::args_os().skip(1);
    let first = args
        .next()
        .context("usage: pari_setup [--validate] <directory>")?;
    let validate = first == "--validate";
    let directory = if validate {
        args.next().context("missing key directory")?
    } else {
        first
    };
    anyhow::ensure!(args.next().is_none(), "unexpected argument");
    if validate {
        shieldd_sdk_proof_params::pari::Registry::load(directory)?.validate_proving_keys()
    } else {
        shieldd_sdk_proof_params::pari::generate_development(directory)
    }
}
