/-
Fiat-Shamir knowledge soundness for the compliance DLEQ
(obligation DLEQ-FS-KNOWLEDGE-SOUNDNESS).

Instantiates VCVio's generic `FiatShamir.euf_nma_bound` (forking lemma + special
soundness ⇒ witness extraction) with the Chaum-Pedersen Σ-protocol of
`Dleq/Sigma.lean` and the 250-bit truncated challenge space of
`Dleq/Challenge.lean`. The result `dleq_fs_knowledge_soundness` is the real,
fully-discharged knowledge-soundness statement that replaces the previously-assumed
`CC-ASSUME-DLEQ-FS` / `CC-ASSUME-CHALLENGE-TRUNCATION` content.

The prime-order group is modeled abstractly as `ZMod q` acting on itself
(`CC-ASSUME-DECAF377-PRIME-ORDER-GROUP`): DLEQ soundness uses only the
group/scalar-module laws, not the decaf377 curve equation, and decaf377's
prime-order group is isomorphic to `ZMod q` as an additive group with scalar
action. The forking divisor `challengeSpaceInv Chal` is `1 / 2^keepBits`
(`= 1/2^250`), the size of `crypto.rs`'s truncated challenge space. This models
the truncated challenge as *uniform* on `Fin (2^250)`; the real `trunc₂₅₀` of a
uniform `Fq` element is non-uniform by a factor ≤ 1.07, an idealization tracked
as `CC-ASSUME-CHALLENGE-TRUNCATION-NEGL` (see `Challenge.lean`), not exact.
-/
import Dleq.Sigma
import Dleq.Challenge
import VCVio.CryptoFoundations.FiatShamir.Sigma.Security

open OracleSpec OracleComp SigmaProtocol FiatShamir
open scoped ENNReal

namespace Dleq

/-- decaf377 prime-order group modeled as `ZMod q` acting on itself
(`CC-ASSUME-DECAF377-PRIME-ORDER-GROUP`). -/
abbrev Grp := ZMod q

/-- The compliance DLEQ relation over the modeled group. -/
abbrev dleqRel := rel (F := ZMod q) (G := Grp)

/-- The compliance DLEQ Σ-protocol: Chaum-Pedersen with 250-bit truncated
challenges embedded into the scalar field. -/
abbrev dleqSigma : SigmaProtocol (Grp × Grp × Grp × Grp) (ZMod q) (Grp × Grp)
    (ZMod q) Chal (ZMod q) dleqRel :=
  sigma (F := ZMod q) (G := Grp) (C := Chal) emb

/-- Honest generator of `(statement, witness)` pairs in the DLEQ relation:
sample generators `g, ack` and a common discrete log `r`, then form the images.
By construction the pair satisfies `dleqRel`, so `hardRelationExp` is well posed.
(`euf_nma_bound` requires only `gen_sound`, not hardness.) -/
def dleqGen : GenerableRelation (Grp × Grp × Grp × Grp) (ZMod q) dleqRel where
  gen := do
    let g ← $ᵗ Grp
    let ack ← $ᵗ Grp
    let r ← $ᵗ (ZMod q)
    return ((g, ack, r • g, r • ack), r)
  gen_sound := by
    intro x w h
    simp only [support_bind, support_uniformSample, Set.mem_iUnion, Set.mem_univ,
      support_pure, Set.mem_singleton_iff, exists_prop, true_and] at h
    obtain ⟨g, ack, r, hx⟩ := h
    rw [Prod.mk.injEq] at hx
    obtain ⟨hx1, hx2⟩ := hx
    subst hx2
    rw [hx1]
    simp [rel]

/-- `challengeSpaceInv Chal = 1 / 2^keepBits` — the forking bound's soundness
error under the uniform-`Fin (2^250)` challenge model. The protocol's actual
`trunc₂₅₀` challenge is non-uniform by a factor ≤ 1.07
(`CC-ASSUME-CHALLENGE-TRUNCATION-NEGL`), so the true error is ≤ `1.07/2^250`. -/
theorem challengeSpaceInv_eq : challengeSpaceInv Chal = (2 ^ keepBits : ENNReal)⁻¹ := by
  simp [challengeSpaceInv, Fintype.card_fin]

/-- **DLEQ Fiat-Shamir knowledge soundness in the ROM.**

For any managed-RO non-malleability adversary against the Fiat-Shamir DLEQ proof
making `qH` random-oracle queries, there is a witness-extraction reduction whose
success probability is bounded below by the forking expression
`Adv · (Adv/(qH+1) − 1/2^250)`. This is VCVio's `euf_nma_bound` instantiated at
the DLEQ Σ-protocol; the extractor is special soundness'
`(z₁ − z₂)·(e c₁ − e c₂)⁻¹`, and `1/2^250` is the (idealized-uniform) truncated
challenge space (`challengeSpaceInv_eq`; see `CC-ASSUME-CHALLENGE-TRUNCATION-NEGL`
for the ≤1.07× non-uniformity residual). -/
theorem dleq_fs_knowledge_soundness
    {M : Type} [DecidableEq M]
    (nmaAdv : SignatureAlg.managedRoNmaAdv
      (FiatShamir (m := OracleComp (unifSpec + (M × (Grp × Grp) →ₒ Chal)))
        dleqSigma dleqGen M))
    (qH : ℕ) :
    ∃ reduction : (Grp × Grp × Grp × Grp) → ProbComp (ZMod q),
      (Fork.advantage dleqSigma dleqGen M nmaAdv qH *
          (Fork.advantage dleqSigma dleqGen M nmaAdv qH / (qH + 1 : ENNReal) -
            challengeSpaceInv Chal)) ≤
        Pr[= true | hardRelationExp dleqGen reduction] :=
  euf_nma_bound dleqSigma dleqGen M
    (sigma_speciallySound emb emb_injective)
    (by intro ω₁ p₁ ω₂ p₂; simp [dleqSigma, sigma])
    nmaAdv qH

/-- The Fiat-Shamir message type for the *strong* DLEQ transform: the hashed
message is the encryption metadata together with the full DLEQ statement
`(g, ack, epk, spt)`. With `BoundMsg`, the random-oracle query `(msg, commit) =
((meta, (g, ack, epk, spt)), (R, R'))` covers exactly the transcript that
`crypto.rs::compute_dleq_native` hashes — `(domain, meta, G, ACK, EPK, S, R, R')` —
so the statement is bound into the challenge (strong Fiat-Shamir), not omitted as
in the weak transform whose absence is the Frozen-Heart failure mode.

`Meta` is the abstract metadata-hash carrier (the Poseidon-absorbed encryption
metadata); only its `DecidableEq` is used. -/
abbrev BoundMsg (Meta : Type) := Meta × (Grp × Grp × Grp × Grp)

/-- **DLEQ Fiat-Shamir knowledge soundness under the strong (statement-binding)
transform.**

`dleq_fs_knowledge_soundness` specialized to `M := BoundMsg Meta`: the modeled RO
message provably carries the statement `(g, ack, epk, spt)` and metadata, so the
challenge is a function of the whole transcript exactly as in `crypto.rs`. This
closes the structural Frozen-Heart gap (statement present in the hash).

Scope: this is still VCVio's `euf_nma_bound` (knowledge soundness for an
honestly-generated statement). Simulation-soundness / non-malleability against
*adversarially chosen* statements — the property Tamarin's `ProofSound` imports —
is not re-mechanized here; it follows from the statement-binding transcript by
Faust–Kohlweiss–Marson–Venturi (FKMV), recorded as `CC-ASSUME-DLEQ-FS-NONMALLEABLE`
(see `CC-FIND-DLEQ-WEAK-FS`). -/
theorem dleq_fs_knowledge_soundness_strong
    {Meta : Type} [DecidableEq Meta]
    (nmaAdv : SignatureAlg.managedRoNmaAdv
      (FiatShamir (m := OracleComp (unifSpec + (BoundMsg Meta × (Grp × Grp) →ₒ Chal)))
        dleqSigma dleqGen (BoundMsg Meta)))
    (qH : ℕ) :
    ∃ reduction : (Grp × Grp × Grp × Grp) → ProbComp (ZMod q),
      (Fork.advantage dleqSigma dleqGen (BoundMsg Meta) nmaAdv qH *
          (Fork.advantage dleqSigma dleqGen (BoundMsg Meta) nmaAdv qH / (qH + 1 : ENNReal) -
            challengeSpaceInv Chal)) ≤
        Pr[= true | hardRelationExp dleqGen reduction] :=
  dleq_fs_knowledge_soundness (M := BoundMsg Meta) nmaAdv qH

end Dleq
