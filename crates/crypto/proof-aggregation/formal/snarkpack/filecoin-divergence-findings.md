# Filecoin Divergence Findings

Reviewer: Codex
Date: 2026-06-02
Status: complete review artifact; no protocol or code change.

This document records the Filecoin SnarkPack divergence review requested by
`filecoin-divergence-review-plan.md`. The comparison is behavioral and
structural. No cross-curve byte-level equivalence to Filecoin is claimed.

## Source Pins

All source references below use immutable commits.

| source | pin | role |
| --- | --- | --- |
| Bellperson v2 | tag `v0.21.0`, commit `62c362fd46ca2139747b8770bae53ce6f1e42bb1`, 2022-06-08 | normative Filecoin v2 source |
| Bellperson v1 boundary | tag `v0.18.2`, commit `c5fa04be1824ceb19a96a36ee1689f9d15b2e864`, 2022-01-11 | last pre-v2 transcript-fix release pin |
| Bellperson v2 fix PR | PR 273, merge commit `ff5f39e43cc62481cc575adae628cb7d1124bce8`, 2022-06-08 | Frozen-Heart-class transcript hardening |
| rust-fil-proofs consumer | tag `filecoin-proofs-v11.1.0`, commit `004d7b4244c469e0d9aeebf15f9a81ef60308ba3` | Filecoin Network v16 Skyr consumer evidence |
| arkworks/ripp | commit `c2c9e80b2ecd6d796bd443adf15bc17a1ee17090`, 2023-11-22 | closest clean upstream source for the Penumbra fork |

Reproduction commands:

```bash
git clone https://github.com/filecoin-project/bellperson.git /tmp/bellperson
git -C /tmp/bellperson diff \
  c5fa04be1824ceb19a96a36ee1689f9d15b2e864 \
  62c362fd46ca2139747b8770bae53ce6f1e42bb1 \
  -- src/groth16/aggregate/mod.rs \
     src/groth16/aggregate/prove.rs \
     src/groth16/aggregate/verify.rs \
     src/groth16/aggregate/transcript.rs

git clone https://github.com/arkworks-rs/ripp.git /tmp/ripp
git -C /tmp/ripp checkout --detach c2c9e80b2ecd6d796bd443adf15bc17a1ee17090
```

## Diff B: Bellperson v1 to v2

The public Filecoin writeup for SnarkPack v2 identifies two CryptoNet audit
findings in SnarkPack v1: the first GIPA-loop Fiat-Shamir hash was skipped, and
the final randomness linking the GIPA transcript to the KZG proof was skipped.
It also records that SnarkPack v2 added an aggregate-version path to deploy the
fix through Filecoin Network v16 Skyr:
`https://www.filecoin.io/blog/snarkpack-v2-a-new-version-of-filecoin-s-proof-aggregator`.

The Bellperson fix PR is
`https://github.com/filecoin-project/bellperson/pull/273`. Its body lists:
fixing `random-z` with different versions, supporting v1 and v2 aggregate
prove/verify, adding aggregate-version logging, transcript refactoring, and
removing an unused logging dependency.

Mechanical diff:

```text
src/groth16/aggregate/mod.rs    |  16 ++++++
src/groth16/aggregate/prove.rs  |  97 ++++++++++++++++++++++++++++++-----
src/groth16/aggregate/verify.rs | 110 +++++++++++++++++++++++++++++++++-------
3 files changed, 194 insertions(+), 29 deletions(-)
```

`transcript.rs` has no Diff B change. The only aggregate-source commit between
the v1 and v2 pins is `ff5f39e43cc62481cc575adae628cb7d1124bce8`.

| id | Filecoin v2 change | Filecoin evidence | Penumbra disposition | Penumbra evidence |
| --- | --- | --- | --- | --- |
| `B.versioning` | Added `AggregateVersion::{V1,V2}` and threaded it through aggregate proving and verification to prevent v1/v2 downgrade confusion. | Bellperson `mod.rs:28-40`, `prove.rs:34-39`, `verify.rs:43-51`; rust-fil-proofs `seal.rs:722-789`, `seal.rs:808-815`, `tests/api.rs:470-525` | `mirrored` | Penumbra has one local aggregate protocol version and binds it into the statement/wrapper rather than offering a dual-path verifier: `statement.rs:12`, `statement.rs:190-247`, `aggregate_proof_wrapper.rs:33-49`, `aggregate_proof_wrapper.rs:68-117`. |
| `B.first-gipa-round` | V2 rehashes the first GIPA round commitments instead of reusing the initial challenge. | Bellperson `prove.rs:280-285`, `prove.rs:337-361`; verifier mirror `verify.rs:370-417` | `exempt-fs-replaced` | Penumbra replaced the Bellperson transcript with statement-bound challenge bytes. Every GIPA round, including the first, hashes prior transcript state plus both round commitments through `ChallengeContext`: `challenge.rs:114-148`, `challenge.rs:150-174`, `gipa.rs:502-535`, `gipa.rs:657-708`; spec rows `fs.challenge-preimage`, `gipa.challenge-dependency`. |
| `B.final-randomness-link` | V2 adds `gipa-extra-link` and feeds that extra challenge plus final keys and final base messages into `random-z`. | Bellperson `prove.rs:173-205`, `prove.rs:426-469`; verifier mirror `verify.rs:226-265`, `verify.rs:468-487` | `adopted` | Penumbra derives `tipp-mipp.final-bridge` from the last GIPA challenge, final keys, and final base messages before deriving the single `tipp-mipp.kzg` challenge: `groth16_aggregation.rs:631-668`, verifier mirror `groth16_aggregation.rs:1419-1443`; spec rows `tipp-mipp.final-bridge`, `tipp-mipp.kzg-challenge`. |

Diff B reconciliation: the audit prose accounts for `B.first-gipa-round` and
`B.final-randomness-link`; the PR body and rust-fil-proofs consumer account for
`B.versioning`. The mechanical diff has no remaining aggregate-source delta
outside these buckets.

## Fork Point Resolution

`crates/crypto/proof-aggregation/src/ipp/PROVENANCE.md` now records
`arkworks-rs/ripp` commit `c2c9e80b2ecd6d796bd443adf15bc17a1ee17090` as the
closest clean upstream source commit. The import was not an exact upstream tree:
Penumbra baseline `52383754737b6672b8dc09d4d521e221e886a3c0` already moved the
manifests to Arkworks `0.5`, added `serde`, and carried local source edits. A
full upstream history grep found no `ip_proofs/Cargo.toml` with
`ark-ec = "0.5"`, so naming a more exact single upstream commit would be false.

## Diff A: arkworks/ripp to Bellperson

Diff A was reviewed functionally across `arkworks-rs/ripp` at
`c2c9e80b2ecd6d796bd443adf15bc17a1ee17090` and Bellperson v2 at
`62c362fd46ca2139747b8770bae53ce6f1e42bb1`. Pure BLS12-381/blstrs/serialization
mechanics are classified as curve or stack exemptions.

| id | Filecoin change from arkworks lineage | Source evidence | Penumbra disposition | Penumbra evidence |
| --- | --- | --- | --- | --- |
| `A.public-transcript-include` | Bellperson added an external `transcript_include` input and warns that public inputs or their non-fixed derivation material must be included in the transcript. | Bellperson PR 184 `https://github.com/filecoin-project/bellperson/pull/184`, PR 190 `https://github.com/filecoin-project/bellperson/pull/190`; v2 `prove.rs:23-39`, `prove.rs:81-90`, `verify.rs:33-51`, `verify.rs:75-84`. Arkworks randomizer only hashes `com_a`, `com_b`, and `com_c`: arkworks `groth16_aggregation.rs:104-116`, `groth16_aggregation.rs:172-184`. | `exempt-fs-replaced` | Penumbra binds version, curve, backend, family ids, SRS id, VK digest, real/padded counts, padding, and every padded public-input row into the statement digest, then derives all challenges from that digest: `statement.rs:190-247`, `challenge.rs:17-37`, `challenge.rs:131-148`; spec rows `fs.context-constructor`, `fs.challenge-preimage`, `statement.canonical-binding`. |
| `A.transcript-framing` | Bellperson introduced a transcript helper with a domain prefix, application tag, serialized writes, and challenge nonce. | Bellperson v2 `transcript.rs:9`, `transcript.rs:52-69`, `transcript.rs:72-105`. Arkworks uses ad hoc digest inputs in GIPA/TIPA/Groth16. | `exempt-fs-replaced` | Penumbra's helper frames domain, stage-label length, stage label, statement-bound context, nonce, and messages; labels map to spec rows: `challenge.rs:9-10`, `challenge.rs:114-148`, `challenge.rs:150-174`. |
| `A.aggregate-shape-guards` | Bellperson productionized verifier/prover shape checks: at least two proofs, power-of-two counts, SRS length, proof-vector consistency, and public-input arity/count checks. | Bellperson v2 `prove.rs:50-61`, `verify.rs:62-73`, `proof.rs:67-90`, `srs.rs:108-115`. Arkworks accepts the generic proof object with fewer product-level guards: arkworks `groth16_aggregation.rs:77-167`, `gipa.rs:108-160`. | `mirrored` | Penumbra validates non-empty/power-of-two padded counts, repeat-final padding, public-input arity, SRS capacity, SRS/VK identity, wrapper digest, and byte caps before backend verification: `statement.rs:407-427`, `statement.rs:459-506`, `preflight.rs:78-122`, `srs.rs:47-88`, `aggregate_proof_wrapper.rs:52-117`. Penumbra intentionally permits a one-real-proof aggregate if its local statement/padding rules produce one padded proof; Filecoin's `<2` rejection is a Filecoin production policy, not a missing Bellperson security fix for Penumbra's current statement language. |
| `A.combined-tipp-mipp` | Bellperson replaced the arkworks two-proof AB/C TIPA structure with one combined TIPP/MIPP proof object and a shared transcript seed (`hcom`, `ip_ab`, `agg_c`, `r_shift`). | Bellperson v2 `prove.rs:173-205`, `prove.rs:280-378`, `verify.rs:220-265`, `verify.rs:370-433`. Arkworks keeps separate AB and C proofs: arkworks `groth16_aggregation.rs:138-149`, `groth16_aggregation.rs:186-204`. | `adopted` | Penumbra now has one `tipp_mipp_proof` carrying combined AB/C round commitments, the paper-style `x0` seed over `r`, the three AFGHO commitments, `ip_ab`, and `agg_c`, and one shared final-bridge/KZG path: `groth16_aggregation.rs:144-163`, `groth16_aggregation.rs:342-559`, verifier mirror `groth16_aggregation.rs:1302-1459`; spec rows `tipp-mipp.x0-seed`, `tipp-mipp.gipa`, `tipp-mipp.final-bridge`, `tipp-mipp.kzg-equations`. |
| `A.curve-serialization-stack` | Bellperson ports the implementation to the Filecoin BLS12-381/blstrs stack, Filecoin SRS material, and Bellperson serialization. | Bellperson aggregate source and SRS/proof readers; Filecoin consumer at rust-fil-proofs `compound_proof.rs:279-315`. | `exempt-curve` | Penumbra uses BLS12-377/arkworks, local SRS identity, and local wrapper/serialization assumptions. These remain tracked separately in `adaptation-register.md` rows `curve.*`, `serialization.*`, `srs.*`, and `arkworks.*`; representative code: `statement.rs:223-247`, `srs.rs:131-155`, `aggregate_proof_wrapper.rs:4-117`. |

Diff A reconciliation: every security-relevant non-curve Filecoin change is in
one of the rows above. No `missing-fix` finding was identified.

## Governance Result

- `fs.filecoin-bug-class` is reconciled against both public audit prose and the
  mechanical Bellperson v1 to v2 diff.
- The non-FS Filecoin public-input/transcript-include change is recorded as
  subsumed by Penumbra's statement-bound challenge context, not silently ignored.
- Filecoin shape assertions now also check that rust-fil-proofs v11.1.0 carries
  aggregate versioning through proving, verification, and a conflicting-version
  rejection test.
- No `missing-fix` item was raised, and no code/protocol fix was applied inside
  this review.
