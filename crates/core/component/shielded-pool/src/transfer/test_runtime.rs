#[cfg(any(unix, windows))]
use anyhow::Result;

#[cfg(any(unix, windows))]
pub(super) fn should_skip_transfer_proof_roundtrip_tests() -> bool {
    let evidence_required = std::env::var_os("SHIELDD_FV_EVIDENCE_REQUIRED").is_some();
    if cfg!(debug_assertions) {
        assert!(
            !evidence_required,
            "FV proof evidence requires a release build"
        );
        eprintln!(
            "skipping transfer gnark roundtrip tests in debug builds: use `cargo test --release -p shieldd-sdk-shielded-pool --features bundled-proving-keys transfer_proof_roundtrip --lib` for real bundled transfer proving"
        );
        return true;
    }

    match transfer_prover_available_for_tests() {
        Ok(false) => {
            assert!(
                !evidence_required,
                "FV proof evidence requires the bundled transfer prover transport"
            );
            eprintln!(
                "skipping transfer gnark roundtrip tests: no bundled or external gnark transfer prover transport is available"
            );
            true
        }
        Ok(true) => false,
        Err(error) => panic!("transfer gnark prover transport configuration is invalid: {error}"),
    }
}

#[cfg(any(unix, windows))]
fn transfer_prover_available_for_tests() -> Result<bool, crate::ProofError> {
    if crate::gnark::GnarkTransferClient::env_override_configured() {
        return crate::gnark::GnarkTransferClient::from_env()
            .map(|_| true)
            .map_err(|error| crate::ProofError::ProofGenerationFailed(error.to_string()));
    }

    Ok(crate::gnark::GnarkTransferClient::bundled_transport_available())
}
