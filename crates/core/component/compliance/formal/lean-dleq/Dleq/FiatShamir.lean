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
(`= 1/2^250`), matching `crypto.rs`'s truncated challenge space exactly.
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
error is exactly the protocol's truncated challenge probability `1/2^250`. -/
theorem challengeSpaceInv_eq : challengeSpaceInv Chal = (2 ^ keepBits : ENNReal)⁻¹ := by
  simp [challengeSpaceInv, Fintype.card_fin]

/-- **DLEQ Fiat-Shamir knowledge soundness in the ROM.**

For any managed-RO non-malleability adversary against the Fiat-Shamir DLEQ proof
making `qH` random-oracle queries, there is a witness-extraction reduction whose
success probability is bounded below by the forking expression
`Adv · (Adv/(qH+1) − 1/2^250)`. This is VCVio's `euf_nma_bound` instantiated at
the DLEQ Σ-protocol; the extractor is special soundness'
`(z₁ − z₂)·(e c₁ − e c₂)⁻¹`, and `1/2^250` is the truncated challenge space
(`challengeSpaceInv_eq`). -/
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

end Dleq
