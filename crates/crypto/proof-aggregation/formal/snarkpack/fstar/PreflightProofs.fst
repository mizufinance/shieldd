module PreflightProofs

module P = Penumbra_sdk_proof_aggregation.Preflight

(*
  Proof target, extracted from Rust with hax:

  preflight_work_gate returns BackendWorkAllowed iff every cheap preflight flag
  holds (its truth table). This lemma covers the gate function only; the runtime
  ordering guarantee — that backend deserialization/pairing is unreachable until
  the cheap checks pass — is enforced separately by the private
  VerifiedPreflightChecks token gating VerifiedAggregateBackendCall::new, and is
  recorded as the composed "aggregate backend receives only preflighted bytes"
  ledger row.
*)

let all_checks_ok (checks:P.t_PreflightCheapChecks) : Tot prop =
  checks.P.f_supported_count == true /\
  checks.P.f_non_empty == true /\
  checks.P.f_srs_matches == true /\
  checks.P.f_wrapper_matches_statement == true /\
  checks.P.f_vk_matches_statement == true

let smoke_preflight_work_gate_is_extracted
      (checks:P.t_PreflightCheapChecks)
    : P.t_PreflightWorkGate =
  P.preflight_work_gate checks

let lemma_preflight_gate_allows_backend_work_iff (checks:P.t_PreflightCheapChecks)
    : Lemma (
        P.preflight_work_gate checks == P.PreflightWorkGate_BackendWorkAllowed
        <==> all_checks_ok checks
      )
= ()

let lemma_preflight_gate_rejects_if_size_or_digest_missing
      (checks:P.t_PreflightCheapChecks)
    : Lemma
      (requires
        checks.P.f_wrapper_matches_statement == false \/
        checks.P.f_srs_matches == false \/
        checks.P.f_vk_matches_statement == false)
      (ensures P.preflight_work_gate checks == P.PreflightWorkGate_Reject)
= ()

