use anyhow::{Context, Result};
fn main() -> Result<()> {
    let directory = std::env::args_os()
        .nth(1)
        .context("usage: pari_setup <new-directory>")?;
    shieldd_sdk_proof_params::pari::generate_development(directory)
}
