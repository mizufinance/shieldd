# Lean/VCVio mechanization of the compliance DLEQ proof

Game-based, ROM knowledge soundness for the Chaum-Pedersen DLEQ used by the
compliance transfer encryption (`"elgamal-encrypt-proof-v1"`). This directory is
the computational-soundness track for `DLEQ-BINDING`; it does **not** model the
R1CS gadget (that is the Lean/ACL2 circuit track). All five DLEQ obligations are
discharged here, replacing the retired EasyCrypt track.

## Toolchain

Isolated Lake project pinned to `leanprover/lean4:v4.30.0`, with
`require VCVio from git "https://github.com/Verified-zkEVM/VCV-io" @
"bc5c6b34fae2acf4094b805e3b886a1381f942e2"` (Apache-2.0). VCVio supplies the
generic `SigmaProtocol → Fiat-Shamir → Fork` pipeline; its Schnorr extractor
`(z₁−z₂)·(c₁−c₂)⁻¹` is the exact shape of the DLEQ extractor. The build pulls
Loom + PolyFun + Mathlib, so the heavy `full` tier is nightly-only.

## Status

| File | Obligation theorem | State |
|---|---|---|
| `Dleq/Group.lean` | `pow_keepBits_lt_q : 2^250 < q` | **proved** — residual axiom `Dleq.q_prime`. |
| `Dleq/Challenge.lean` | `emb_injective` (`DLEQ-CHALLENGE-TRUNCATION`) | **proved** — `Fin (2^250) ↪ ZMod q`, valid because `2^250 < q`. |
| `Dleq/Sigma.lean` | `sigma_complete`, `sigma_speciallySound`, `sigma_hvzk` | **proved** — completeness, extractor `(s−s')·(c−c')⁻¹`, perfect HVZK. |
| `Dleq/FiatShamir.lean` | `dleq_fs_knowledge_soundness` | **proved** — VCVio `euf_nma_bound` (forking + special soundness), bound `1/|Ω| = 1/2^250` under the uniform-`Fin(2^250)` challenge model; true error ≤ `1.07/2^250` (`CC-ASSUME-CHALLENGE-TRUNCATION-NEGL`). |

`#print axioms` for every obligation is clean modulo `propext`,
`Classical.choice`, `Quot.sound`, plus the single residual `Dleq.q_prime`.

`scripts/compliance-lean-dleq.sh` has two tiers (mirroring
`scripts/check-lean-circuit-fv.sh`):

- `stamps` (PR / local, no toolchain) — hygiene + stamp integrity. The only
  permitted `axiom` is `q_prime`; no `sorry`/`admit`.
- `full` (nightly) — `lake exe cache get && lake build`, then a `#print axioms`
  baseline for every obligation, and (re)writes the stamped artifact
  `../lean-dleq-artifact.txt` + `.sha256`.

## Construction (source of truth: `crates/core/component/compliance/src/crypto.rs`)

Chaum-Pedersen equality-of-discrete-logs over decaf377 (prime-order group `G`,
order `q = Fr` modulus, 251-bit, `q ≈ 2^250.9`):

- Statement `(g, ack, epk, sp)`, witness `r`:  `epk = r·g  ∧  sp = r·ack`.
- Prover (`compute_dleq_native`): nonce `k`, `R = k·g`, `Rp = k·ack`,
  `c = trunc250(H(m, g, ack, epk, sp, R, Rp))`, `s = k + c·r`.
- Verifier (`verify_dleq_native`): `R = s·g − c·epk`, `Rp = s·ack − c·sp`,
  recompute `c` and compare.
- `H` = `poseidon377::hash_7` with domain `"elgamal-encrypt-proof-v1"`, modeled as
  VCVio's random oracle `M × Commit →ₒ Chal`.
- `trunc250` = keep the low `Fr::MODULUS_BIT_SIZE − 1 = 250` bits
  (`fq_to_challenge_scalar`). **`2^250 < q`** — the crux of truncation soundness.

## Modeling boundary (residual assumptions)

- `CC-ASSUME-POSEIDON-RO` — `H` is a programmable random oracle (structural; no
  Lean `axiom`, it is VCVio's `M × Commit →ₒ Chal`).
- `CC-ASSUME-DECAF377-PRIME-ORDER-GROUP` — decaf377 is a prime-order group of
  order `q` (axiom `Dleq.q_prime`); the curve equation is irrelevant to DLEQ
  soundness.

These are the standard minimal residual; the previously-assumed
`CC-ASSUME-DLEQ-FS` and `CC-ASSUME-CHALLENGE-TRUNCATION` are now discharged.

## Faithfulness cross-checks (must match `crypto.rs` and `phase05_vectors.json`)

- Transcript order `(m, g, ack, epk, sp, R, Rp)` — `test_hash7_domain_and_ordering`.
- `keep_bits = 250`, `keep_bytes = 32`, `spare_bits = 6` — `test_dleq_c_truncated`.
- `q` decimal = `2111115437357092606062206234695386632838870926408408195193685246394721360383`.
