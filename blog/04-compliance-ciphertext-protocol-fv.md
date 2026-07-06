# DRAFT/SPIKE — Verifying the compliance/viewing-key protocol, not just its circuit

*Status: draft outline, not published. ~6 min read target.*

## The pitch

Shielded pools with a compliance surface make a hard promise: transactions
are private, yet a designated viewing key can decrypt exactly what the
protocol says it can — no more, no less. That promise spans a circuit, an
encryption scheme, and a multi-party protocol; no single tool covers it, so
we route each sub-problem to the tool that discharges it:

- **In-circuit well-formedness (Lean):** the ciphertexts inside the transfer
  proof are constrained to be correct encryptions of the note data — the same
  deployed-bridge machinery as the value circuit, applied to the 8
  encryption/DLEQ gadget classes.
- **Key-linkage soundness (Lean/VCVio, game-based):** the DLEQ proof that the
  detection key matches the viewing key is proved knowledge-sound in the
  random-oracle model — a mechanized Fiat–Shamir argument with exactly one
  declared axiom (group order primality), soundness ≈ 2⁻²⁵⁰.
- **Encryption security (game-based or explicit row):** what the ciphertexts
  must hide and bind, stated precisely. The danger is the *unstated*
  property, not the assumption.
- **Multi-party detection flow (Tamarin, symbolic):** who can detect/decrypt
  what under key compromise — committee flows verified against an active
  attacker. This is Tamarin's only remaining seat in our stack; a tool that
  doesn't earn its layer gets dropped.
- **The composition** lives in one claim tree (assurance-case.md), including
  the deliberately-flagged edges — e.g. the consolidate circuit has *no*
  compliance surface, and that exemption is a named row awaiting explicit
  human sign-off that it's intended design.

## Comparison to state of the art

- **Zcash viewing keys:** carefully specified (ZIPs), protocol-level security
  argued on paper; no mechanized end-to-end argument connecting circuit,
  encryption, and key hierarchy.
- **Penumbra/Aztec-style pools:** similar posture — strong specs and audits,
  compliance/disclosure surfaces mostly informal.
- **Academic protocol verification (Tamarin/ProVerif on TLS, Signal):**
  gold-standard symbolic proofs, but of standalone protocols; combining
  symbolic protocol proofs with circuit-level Lean proofs and game-based
  crypto proofs under one claim tree is the novel part here.

## The AI angle

Three different formalisms (Lean, VCVio games, Tamarin) is normally three
specialist teams. Here the frontier model picks the tool per sub-problem and
writes the first proof in each formalism; executor models replicate across
the remaining gadget classes and keep artifacts stamped. The assumption-first
method is the AI-era discipline that matters: models are good at enumerating
the seams where an unstated assumption could hide, and every seam becomes
either a mechanized pin or a named ledger row.

## Skeleton

1. The promise: private to everyone except exactly the viewing key.
2. Why it's four problems (circuit, key linkage, encryption, protocol).
3. Tool-per-problem table with current status (proved / rowed / open).
4. The exemption row story — verification surfacing a *design* question.
5. SOA comparison.
6. AI workflow: one generalist stack instead of three specialist teams.
