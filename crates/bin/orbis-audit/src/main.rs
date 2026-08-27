use anyhow::{bail, Result};

fn main() -> Result<()> {
    run()
}

fn run() -> Result<()> {
    bail!(
        "Orbis v0 transfer auditing is unavailable: its public store-secret payload \
         exposes the DH point used to open every transfer tier seed"
    )
}

#[cfg(test)]
mod tests {
    #[test]
    fn transfer_audit_fails_closed_before_processing_input() {
        let error = super::run().expect_err("Orbis v0 transfer audit must stay disabled");
        assert!(error.to_string().contains("public store-secret payload"));
        assert!(error.to_string().contains("exposes the DH point"));
    }
}
