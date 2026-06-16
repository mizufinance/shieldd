/*
 * compliance-tiers.als — legality of the compliance audit/evidence state
 * machine and the canonical four-tier structure of a transfer.
 *
 * Scope: design-level. Models the explicit state machines in Rust as enums plus
 * a legal-transition relation; the cryptographic content of each tier (DLEQ,
 * ciphertext) is out of scope and covered by the Track A Tamarin properties.
 *
 * Sources of truth (Rust):
 *   crates/core/component/compliance/src/audit_status.rs   AuditStatus::try_advance
 *   crates/core/component/compliance/src/audit_validation.rs  validate_evidence_shape
 *   crates/core/component/compliance/src/decode_object.rs   TransferTierKind (x4)
 *
 * Assertions:
 *   CompleteIsTerminal     — AuditComplete is absorbing (no outgoing transitions).
 *   CompleteReachableFromAll — every status can reach AuditComplete via legal steps.
 *   NoPendingShortcut      — Pending cannot advance directly to AuditComplete.
 *   FourCanonicalTiers     — exactly four distinct transfer tier kinds exist.
 */

enum AuditStatus { Pending, EvidenceValid, EvidenceInvalid, DecryptFailed, AuditComplete }

enum TierKind { SenderCore, SenderExt, OutputCore, OutputExt }

// Legal AuditStatus transitions, mirroring audit_status.rs::try_advance.
fun legal: AuditStatus -> AuditStatus {
    Pending -> EvidenceValid
  + Pending -> EvidenceInvalid
  + EvidenceInvalid -> EvidenceValid
  + EvidenceValid -> EvidenceInvalid
  + EvidenceValid -> DecryptFailed
  + EvidenceValid -> AuditComplete
  + DecryptFailed -> AuditComplete
}

// AuditComplete is terminal.
assert CompleteIsTerminal {
  no AuditComplete.legal
}

check CompleteIsTerminal for 6

// Every non-terminal status can still reach AuditComplete (no dead ends).
assert CompleteReachableFromAll {
  all s: AuditStatus | AuditComplete in s.*legal
}

check CompleteReachableFromAll for 6

// No illegal shortcut from Pending straight to completion (evidence must be
// validated first).
assert NoPendingShortcut {
  AuditComplete not in Pending.legal
}

check NoPendingShortcut for 6

// A transfer has exactly four canonical compliance tiers.
assert FourCanonicalTiers {
  #TierKind = 4
}

check FourCanonicalTiers for 6

// Non-vacuity: a legal multi-step audit path exists.
pred show {
  some s: AuditStatus | some s.legal and s != AuditComplete
}

run show for 6
