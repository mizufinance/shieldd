/*
 * orbis-authorization.als — designated decryptability of the Orbis
 * re-encryption (PRE) authorization, at the on-chain boundary.
 *
 * Scope: design-level. The Orbis committee / DKG / quorum state is off-chain
 * and NOT modeled here; this captures the on-chain authorization relation that
 * Shieldd verifies. Group/DLEQ algebra is abstracted to a structural binding of
 * each re-encryption commitment to exactly one issuer key. The cryptographic
 * binding behind that abstraction is tracked in the assumption ledger:
 *   - ALLOY-ASSUME-PRE-BINDING  (the DLEQ + PRE construction binds xnc_cmt to a
 *                                single issuer key; the DLEQ core is mechanized
 *                                in Lean lean-dleq as DLEQ-FS-KNOWLEDGE-SOUNDNESS)
 *
 * Sources of truth (Rust):
 *   crates/core/component/compliance/src/orbis_interop.rs
 *     compute_reencrypt_commitment / verify_reencrypt_proof / recover_seed
 *
 * Mirrors the Tamarin `DESIGNATED_DECRYPTABILITY` property at the system level.
 *
 * Assertions:
 *   CorrectIssuerRecovers   — the bound issuer recovers exactly the sealed seed.
 *   OnlyDesignatedRecovers  — no other issuer recovers anything (designated
 *                             decryptability / no cross-issuer recovery).
 *   SingleBinding           — a commitment binds exactly one issuer key.
 */

sig Seed {}

// An issuer identity; `pub` is its public key (pub = sk * G), an injective
// derivation from the issuer secret.
sig Issuer { pub: one PubKey }
sig PubKey {}

// A re-encryption commitment (xnc_cmt) seals a seed and is bound, by the DLEQ +
// PRE construction, to exactly one issuer key (ALLOY-ASSUME-PRE-BINDING).
sig Commitment {
  seed: one Seed,
  boundTo: one Issuer
}

// On-chain recovery: an issuer recovers the seed iff the commitment is bound to
// it (recover_seed succeeds only with the matching issuer secret).
fun recover[c: Commitment, i: Issuer]: lone Seed {
  (c.boundTo = i) implies c.seed else none
}

// Public keys are an injective image of issuers (no key confusion).
fact injectivePubKeys {
  all disj a, b: Issuer | a.pub != b.pub
}

assert CorrectIssuerRecovers {
  all c: Commitment | recover[c, c.boundTo] = c.seed
}

check CorrectIssuerRecovers for 6

assert OnlyDesignatedRecovers {
  all c: Commitment, i: Issuer | i != c.boundTo implies no recover[c, i]
}

check OnlyDesignatedRecovers for 6

assert SingleBinding {
  all c: Commitment | one c.boundTo
}

check SingleBinding for 6

// Non-vacuity: a sealed commitment with at least two distinct issuers exists,
// so OnlyDesignatedRecovers is checked against a real non-recipient.
pred show {
  some Commitment
  #Issuer >= 2
}

run show for 6
