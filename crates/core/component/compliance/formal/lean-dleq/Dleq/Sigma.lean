/-
Chaum-Pedersen DLEQ as a VCVio `SigmaProtocol`.

Two-base generalization of VCVio's Schnorr Σ-protocol
(`Examples/Schnorr/SigmaProtocol.lean`): the statement carries both generators
`(g, ack)` and both images `(epk, spt)`, and the relation/verifier each assert
two group equations sharing one witness `r`, one challenge `c`, one response `z`.
The special-soundness extractor `(z₁ - z₂)·(e c₁ - e c₂)⁻¹` is identical to
Schnorr's apart from the challenge embedding `e`.

Models `compute_dleq_native` / `verify_dleq_native` in
`crates/core/component/compliance/src/crypto.rs`:
  `epk = r • g  ∧  spt = r • ack`,  challenge `c`, response `z = k + (e c)·r`.

The protocol is parameterized by an arbitrary challenge type `C` and an
embedding `e : C → F` into the scalar field. This lets the Fiat-Shamir layer
instantiate `C := Fin (2 ^ keepBits)` (the 250-bit truncated challenge space),
so the forking bound's `1 / |Ω|` is `1 / 2^250` exactly as in `crypto.rs`,
while the algebra stays field-generic. Special soundness needs only that `e` is
injective (true for the val-cast when `2^250 < q`; see `Dleq/Challenge.lean`).
-/
import VCVio.CryptoFoundations.SigmaProtocol
import VCVio.ProgramLogic.Tactics.Unary
import VCVio.ProgramLogic.Tactics.Relational

open OracleSpec OracleComp SigmaProtocol
open scoped ENNReal

namespace Dleq

variable {F : Type} [Field F] [SampleableType F]
variable {G : Type} [AddCommGroup G] [Module F G] [SampleableType G] [DecidableEq G]
variable {C : Type} [SampleableType C]

/-- The DLEQ relation: `r` is a common discrete log of `epk` (base `g`) and
`spt` (base `ack`). -/
def rel : (G × G × G × G) → F → Bool :=
  fun st r => let (g, ack, epk, spt) := st; decide (r • g = epk ∧ r • ack = spt)

/-- Chaum-Pedersen DLEQ Σ-protocol with challenges in `C` embedded by `e`.
Statement `(g, ack, epk, spt)`, commitment `(R, R') = (k•g, k•ack)`,
response `z = k + (e c)·r`. -/
def sigma (e : C → F) : SigmaProtocol (G × G × G × G) F (G × G) F C F (rel (F := F) (G := G)) where
  commit st _r := do
    let (g, ack, _epk, _spt) := st
    let k ← $ᵗ F
    return ((k • g, k • ack), k)
  respond _st r sc c := pure (sc + e c * r)
  verify st R c z :=
    let (g, ack, epk, spt) := st
    let (R₁, R₂) := R
    decide (z • g = R₁ + e c • epk ∧ z • ack = R₂ + e c • spt)
  sim _st := do
    let a ← $ᵗ G
    let b ← $ᵗ G
    return (a, b)
  extract c₁ z₁ c₂ z₂ := pure ((z₁ - z₂) * (e c₁ - e c₂)⁻¹)

/-- Perfect completeness: doubling the Schnorr argument across both bases. -/
theorem sigma_complete (e : C → F) : PerfectlyComplete (sigma (G := G) e) := by
  intro st r h
  obtain ⟨g, ack, epk, spt⟩ := st
  simp only [rel, decide_eq_true_eq] at h
  obtain ⟨hg, hack⟩ := h
  simp only [sigma, monad_norm]
  have hg' : ∀ (k : F) (c : C), (k + e c * r) • g = k • g + e c • epk := by
    intro k c; rw [add_smul, mul_smul, hg]
  have ha' : ∀ (k : F) (c : C), (k + e c * r) • ack = k • ack + e c • spt := by
    intro k c; rw [add_smul, mul_smul, hack]
  simp [hg', ha']

omit [SampleableType C] in
/-- Special soundness: from two accepting transcripts with `c₁ ≠ c₂` and an
injective challenge embedding `e`, the extracted `(z₁ - z₂)·(e c₁ - e c₂)⁻¹`
satisfies both relation equations. -/
theorem sigma_speciallySound (e : C → F) (he : Function.Injective e) :
    SpeciallySound (sigma (G := G) e) := by
  intro st R c₁ c₂ z₁ z₂ h_ne h_v1 h_v2 w h_w
  obtain ⟨g, ack, epk, spt⟩ := st
  obtain ⟨R₁, R₂⟩ := R
  dsimp [sigma] at *
  simp only [support_pure, Set.mem_singleton_iff] at h_w
  subst h_w
  simp only [decide_eq_true_eq, rel] at h_v1 h_v2 ⊢
  obtain ⟨hv1g, hv1a⟩ := h_v1
  obtain ⟨hv2g, hv2a⟩ := h_v2
  have h_ne' : e c₁ - e c₂ ≠ 0 := sub_ne_zero.mpr (fun hc => h_ne (he hc))
  -- common factoring lemma applied to each base
  have factor : ∀ (base img R₀ : G),
      z₁ • base = R₀ + e c₁ • img → z₂ • base = R₀ + e c₂ • img →
      ((z₁ - z₂) * (e c₁ - e c₂)⁻¹) • base = img := by
    intro base img R₀ f1 f2
    have h_sub : (z₁ - z₂) • base = (e c₁ - e c₂) • img := by
      rw [sub_smul, sub_smul, f1, f2, add_sub_add_left_eq_sub]
    calc ((z₁ - z₂) * (e c₁ - e c₂)⁻¹) • base
        = (e c₁ - e c₂)⁻¹ • ((z₁ - z₂) • base) := by rw [mul_comm, mul_smul]
      _ = (e c₁ - e c₂)⁻¹ • ((e c₁ - e c₂) • img) := by rw [h_sub]
      _ = ((e c₁ - e c₂)⁻¹ * (e c₁ - e c₂)) • img := by rw [← mul_smul]
      _ = (1 : F) • img := by rw [inv_mul_cancel₀ h_ne']
      _ = img := one_smul F img
  refine ⟨?_, ?_⟩
  · exact factor g epk R₁ hv1g hv2g
  · exact factor ack spt R₂ hv1a hv2a

/-- Full-transcript simulator: pick `c ← C`, `z ← F`, and back out both
commitment points from the two verification equations. -/
def simTranscript (e : C → F) (st : G × G × G × G) : ProbComp ((G × G) × C × F) := do
  let (g, ack, epk, spt) := st
  let c ← $ᵗ C
  let z ← $ᵗ F
  return ((z • g - e c • epk, z • ack - e c • spt), c, z)

open OracleComp.ProgramLogic OracleComp.ProgramLogic.Relational in
/-- Perfect honest-verifier zero-knowledge: the real transcript distribution
equals the simulated one. Swaps the sampling order and reindexes the response
randomness via the bijection `k ↦ k + (e c)·r` (uniform on `F`), exactly as in
Schnorr but with both commitment bases reconstructed simultaneously. -/
theorem sigma_hvzk (e : C → F) [Finite F] :
    PerfectHVZK (sigma (G := G) e) (simTranscript (G := G) e) := by
  let _ : Fintype F := Fintype.ofFinite F
  intro st r h_r
  obtain ⟨g, ack, epk, spt⟩ := st
  simp only [rel, decide_eq_true_eq] at h_r
  obtain ⟨hg, hack⟩ := h_r
  apply evalDist_ext
  intro t
  trans Pr[= t | do
    let c ← ($ᵗ C)
    let k ← ($ᵗ F)
    pure ((((k + e c * r) • g - e c • epk, (k + e c * r) • ack - e c • spt),
      c, k + e c * r) : (G × G) × C × F)]
  · simp only [SigmaProtocol.realTranscript, sigma]
    vcstep rw
    simp [hg, hack, add_smul, mul_smul, add_sub_cancel_right]
  · show _ = Pr[= t | simTranscript (G := G) e (g, ack, epk, spt)]
    unfold simTranscript
    apply probOutput_eq_of_relTriple_eqRel (x := t)
    rvcstep
    intro c _ hc; subst hc
    rvcstep using (· + e c * r)
    exact ⟨fun _ _ h => add_right_cancel h, fun z => ⟨z - e c * r, sub_add_cancel z _⟩⟩

end Dleq
