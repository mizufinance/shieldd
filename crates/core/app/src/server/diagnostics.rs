pub(super) fn force_process_proposal_profile() -> bool {
    std::env::var("SHIELDD_FORCE_PROCESS_PROPOSAL_PROFILE")
        .ok()
        .map(|value| matches!(value.as_str(), "1" | "true" | "TRUE" | "True"))
        .unwrap_or(false)
}
