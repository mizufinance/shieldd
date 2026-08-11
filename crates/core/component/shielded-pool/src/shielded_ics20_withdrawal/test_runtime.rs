#[cfg(any(unix, windows))]
use anyhow::Result;

#[cfg(any(unix, windows))]
use crate::ShieldedIcs20WithdrawalFamilyId;

#[cfg(any(unix, windows))]
pub(super) fn should_skip_shielded_ics20_withdrawal_proof_roundtrip_tests() -> bool {
    let evidence_required = std::env::var_os("SHIELDD_FV_EVIDENCE_REQUIRED").is_some();
    if cfg!(debug_assertions) {
        assert!(
            !evidence_required,
            "FV proof evidence requires a release build"
        );
        eprintln!(
            "skipping shielded ICS-20 withdrawal gnark roundtrip tests in debug builds: use `cargo test --release -p shieldd-sdk-shielded-pool --features bundled-proving-keys shielded_ics20_withdrawal_proof_roundtrip --lib` for real bundled proving"
        );
        return true;
    }

    match shielded_ics20_withdrawal_prover_available_for_tests(
        ShieldedIcs20WithdrawalFamilyId::Canonical,
    ) {
        Ok(false) => {
            assert!(
                !evidence_required,
                "FV proof evidence requires the bundled withdrawal prover transport"
            );
            eprintln!(
                "skipping shielded ICS-20 withdrawal gnark roundtrip tests: no bundled or external prover transport is available"
            );
            true
        }
        Ok(true) => false,
        Err(error) => panic!(
            "shielded ICS-20 withdrawal gnark prover transport configuration is invalid: {error}"
        ),
    }
}

#[cfg(any(unix, windows))]
fn shielded_ics20_withdrawal_prover_available_for_tests(
    family_id: ShieldedIcs20WithdrawalFamilyId,
) -> Result<bool, crate::ProofError> {
    if crate::gnark::GnarkShieldedIcs20WithdrawalClient::env_override_configured() {
        return crate::gnark::GnarkShieldedIcs20WithdrawalClient::from_env(family_id)
            .map(|_| true)
            .map_err(|error| crate::ProofError::ProofGenerationFailed(error.to_string()));
    }

    Ok(crate::gnark::GnarkShieldedIcs20WithdrawalClient::bundled_transport_available(family_id))
}
