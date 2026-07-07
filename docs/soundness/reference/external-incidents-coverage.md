# External ZK incidents — coverage map and Zcash FV comparison

Point-in-time review (2026-07-07) answering two questions: how does our FV
effort compare to Zcash's post-Orchard program (Project Tachyon /
[Detecting Counterfeiting after Ironwood](https://tachyon.z.cash/blog/detecting-counterfeiting-in-zcash/)),
and does our stack cover the ZK bugs that actually happened in the wild.
Update when a new public incident lands or a Gap row below closes.

## 1. Zcash's program vs ours

Zcash's pillars after the 2026 Orchard soundness bug:

1. **Algebraic verification of the verifier** — verify the SNARK *verifier
   equation* end-to-end, catching both circuit bugs and SNARK-spec flaws
   (their BCTV14 lesson: the scheme itself can be the bug).
2. **Detectability engineering** — turnstile + supply upper bound on the old
   pool, so even an *unknown* counterfeiting bug becomes detectable.
3. **Incident classification** — spec bugs can be undetectable; pure
   implementation bugs are detectable given supply accounting.

Ours (full-verification-plan layer stack):

| Zcash pillar | Our analog | Delta |
| --- | --- | --- |
| Verifier-equation FV | L3/L4 Lean: deployed R1CS proven sound against hand-audited specs, per-segment bridges + whole-circuit capstone + Statement binding; fail-closed coverage gates pin the exact `.sr1cs` | We are *stronger* at the circuit layer (their 2026 halo2_gadgets bug class is exactly what our 49/49 obligations + capstone rule out mechanically) but *weaker* at the scheme layer: Groth16/SnarkPack verifier algebra is L5 assumption rows + pinned versions + F*/conformance seams, not a mechanized proof. RIPP mechanization is the open piece (SL rows, S1). |
| Turnstile / supply audit | `ZK-ASSUME-ICS20-SUPPLY-CONSERVATION` + indexed supply invariants; runtime turnstile is an open plan §8 backlog row ("Turnstile feasibility", motivated by the same Orchard incident) | Gap G2 below. Zcash's core lesson is that detectability is the backstop for whatever the proofs miss; we have the in-circuit conservation side but no runtime supply accounting. |
| Incident classification | Assumption ledger + assurance-case claim tree route every unproved obligation to a named row | Comparable; ours is finer-grained (per-gadget rows). |

Net: our circuit-layer mechanization exceeds what Zcash describes; their
program exceeds ours on scheme-level verification and runtime detectability.
Both deltas already exist as named open items (SL/RIPP, plan §8 turnstile).

## 2. Real-world incident catalog → coverage

| # | Incident (year, class) | What went wrong | Our coverage | Status |
| --- | --- | --- | --- | --- |
| 1 | Zcash Sprout InternalH (2016, spec/collision) | Truncated hash let commitments collide → double spend | Full-width Poseidon everywhere; `ZK-ASSUME-STATEMENT-DERIVATION-INJECTIVE`; the one deliberate truncation (Orbis FS 250-bit) has a recorded soundness analysis | covered |
| 2 | Zcash Sprout BCTV14 (2018, SNARK scheme) | Paper's setup emitted extra elements → counterfeit proofs from ceremony transcript | We run Groth16 (not BCTV14) via gnark/arkworks: L5 rows, pinned versions, advisory monitoring; scheme algebra not independently mechanized | Gap G1 |
| 3 | Zcash Orchard halo2_gadgets (2026, missing circuit constraint) | Soundness bug in deployed circuit impl, emergency fork | Exactly L3/L4: 49/49 deployed obligations + capstone on the shipping `.sr1cs`; Picus determinism per leaf; this incident is the recorded motivation for the P0 ranking (history.md) | covered (consolidate2x1; transfer/ics20 per plan) |
| 4 | zkSync Era memory circuit (2023, unconstrained witness bits, ~$1.9B exposure) | Upper 128 bits of a write query unconstrained; verifier accepted forged blocks | Unconstrained-witness class: Picus determinism battery, Lean soundness direction, coverage extractor `unclassified=0`, now also `fv-census.py` write-only-wire report | covered |
| 5 | gnark GHSA-q3hw-3gm4-w5cr + GHSA-9xcg-3q8v-7fq6 (2024, backend) | Multi-commitment Groth16 unsound; commitment ZK break | Pinned gnark v0.14.0 (fixed ≥0.11.0); circuits use no Groth16 commitment API (verified 2026-07-07); cited as the L5 reference failure in the plan | covered |
| 6 | "Frozen Heart" Fiat-Shamir (2022, weak transcripts across many libs) | Challenges omitted statement parts → proof forgery | DLEQ FS knowledge soundness proved (Lean/VCVio, axiom `q_prime`); SnarkPack transcript is a frozen category-3 surface with S5 statement-parity + VK-arity conformance tests; 128-bit rescaled challenges documented | covered (SL1 residual tracked) |
| 7 | Monero CryptoNote key-image (2017, small-subgroup inflation) | Torsion component in key images → infinite mint | Cofactor class: decaf377 quotient encoding, `ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE`, T1-d coset analysis (playbook), SnarkPack `deserialize_compressed` full subgroup validation (any batching keeps validation strength per §8 checklist) | covered |
| 8 | Non-canonical field aliasing (Semaphore/circom class) | Inputs ≥ p alias mod p → nullifier/root forgery | `CanonicalFqBits253` canon blocks with proved LT chains; residual: decaf `Abs` uses plain `ToBinary(253)` — routed to the census as a mechanical check (playbook CF-1 note) | covered / one check queued (G4) |
| 9 | Assigned-not-constrained (circom `<--`, DarkForest class) | Witness assigned but never constrained | gnark's API lacks the footgun; extractor parity gate + Picus + census recompute/dead-cone reports | covered |
| 10 | Proof-verification forgery outside SNARKs (BNB/IAVL 2022 $570M, Polygon Plasma 2021) | Verifier accepted malformed Merkle/exit proofs | Merkle membership is in-circuit and proven (quad-path bridges); bridge/exit surface is ics20: supply-conservation invariants landed, whole-circuit proof in plan §8 backlog | covered / ics20 proof pending |
| 11 | halo2 query collision (2025, proving-system impl) | Redundant polynomial evaluation unchecked | Not our proving stack; class lands on L5 rows + advisory monitoring for arkworks/gnark | Gap G1 (same row) |

## 3. Gaps and plan

- **G1 — scheme-level verification.** BCTV14/halo2-class flaws live below
  our Lean layer. Current mitigation: L5 assumption rows, pinned versions,
  advisory monitoring, SnarkPack F* seams + conformance tests. Plan: the
  staged verifier FV program in full-verification-plan §8a (L5a Groth16 AGM
  soundness, L5b RIPP behind S1, L5c FS transcript reduction, L5d
  implementation conformance; pairing primitive stays the explicit floor).
  Owner: frontier + Antoine.
- **G2 — runtime supply accounting (turnstile).** Zcash's backstop for
  unknown bugs. Already a plan §8 backlog row; this review recommends
  treating it as the highest-value non-Lean item, since it converts every
  residual assumption row into a *detectable* failure. Owner: Antoine
  (protocol decision).
- **G3 — SRS/setup provenance.** BCTV14's root cause was ceremony output.
  Production SRS provenance (ceremony, transcript custody, verifier-side
  pinning) is not yet a ledger row; dev SRS is explicitly non-production.
  Plan: add an L5 row when the production ceremony is scheduled.
- **G4 — canonicity census check.** Mechanically assert the decaf `Abs`
  decomposition cannot alias (Picus marks the leaf safe; make the check
  standing via `fv-census.py`). Queued with F-1 in the executor handoff.
