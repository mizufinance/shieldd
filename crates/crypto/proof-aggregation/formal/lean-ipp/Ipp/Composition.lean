/-
U4: composition — chains U1 (randomizer lift), U2 (GIPA folding), and
U3 (KZG openings) into the end-to-end S1 statement: aggregate acceptance
implies the per-proof Groth16 equations.
-/
import Ipp.Gipa
import Ipp.RandomizerLift

namespace Ipp

open scoped BigOperators

variable {F : Type*} [Field F]
variable {G1 G2 GT : Type*}
variable [AddCommGroup G1] [Module F G1]
variable [AddCommGroup G2] [Module F G2]
variable [AddCommGroup GT] [Module F GT]

/-! ### U4 product-lane atoms (DESIGN §U4)

These are the concrete product-module bilinear atoms used to instantiate U2's
generic GIPA lanes in the combined TIPP/MIPP argument. The B-lane uses an `F`
scalar key component instead of `Unit`; the terminal verifier instantiates that
component at `1`, while preserving F-linearity of the commitment atom. -/

/-- U4 A/C lane atom: keys `(vA, vC)`, messages `(A, C)`,
    commitment `(e A vA, e C vC)`. Spec rows `tipp-mipp.base-equations`,
    `gipa.input-relation`. -/
def u4ALaneAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G2 × G2) →ₗ[F] (G1 × G1) →ₗ[F] (GT × GT) where
  toFun k :=
    { toFun := fun m => (e m.1 k.1, e m.2 k.2)
      map_add' := by
        intro x y
        ext <;> simp
      map_smul' := by
        intro s x
        ext <;> simp }
  map_add' := by
    intro x y
    ext m <;> simp
  map_smul' := by
    intro s x
    ext m <;> simp

/-- U4 B/randomizer lane atom: keys `(w, q)`, messages `(B, s)`,
    commitment `(e w B, q*s)`. The scalar key component replaces the informal
    `Unit` column in DESIGN §U4 so the atom remains F-bilinear. Spec rows
    `tipp-mipp.base-equations`, `gipa.input-relation`. -/
def u4BLaneAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G1 × F) →ₗ[F] (G2 × F) →ₗ[F] (GT × F) where
  toFun k :=
    { toFun := fun m => (e k.1 m.1, k.2 * m.2)
      map_add' := by
        intro x y
        ext <;> simp [mul_add]
      map_smul' := by
        intro s x
        ext
        · simp
        · simp
          ring }
  map_add' := by
    intro x y
    ext m <;> simp [add_mul]
  map_smul' := by
    intro s x
    ext m <;> simp [mul_assoc]

/-- U4 T lane pairing: `(A, C)` paired with `(B, s)` gives
    `(e A B, s • C)`. Spec rows `tipp-mipp.base-equations`,
    `groth16.folded-inputs`. -/
def u4TLanePairing (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G1 × G1) →ₗ[F] (G2 × F) →ₗ[F] (GT × G1) where
  toFun a :=
    { toFun := fun b => (e a.1 b.1, b.2 • a.2)
      map_add' := by
        intro x y
        ext <;> simp [add_smul]
      map_smul' := by
        intro s x
        ext <;> simp [smul_smul] }
  map_add' := by
    intro x y
    ext b <;> simp [smul_add]
  map_smul' := by
    intro s x
    ext b <;> simp [smul_smul, mul_comm]

/-- Shared tagged codomain used to place all three concrete U4 lanes in one
    `AcceptTree` without discarding any commitment component. -/
abbrev U4Commitment (F G1 GT : Type*) :=
  ((GT × GT) × (GT × F)) × (GT × G1)

/-- A-lane embedding into the tagged codomain (lane-pure: zeros off-lane).
    Public so the FS game (U5d) can construct tagged values from lane-native
    proof payloads — see DESIGN §U5d(4) lane-nativity decision. -/
def u4AEmbedding :
    (GT × GT) →ₗ[F] U4Commitment F G1 GT where
  toFun t := ((t, (0, 0)), (0, 0))
  map_add' := by
    intro x y
    ext <;> simp
  map_smul' := by
    intro s x
    ext <;> simp

/-- B-lane embedding into the tagged codomain (lane-pure). -/
def u4BEmbedding :
    (GT × F) →ₗ[F] U4Commitment F G1 GT where
  toFun t := (((0, 0), t), (0, 0))
  map_add' := by
    intro x y
    ext <;> simp
  map_smul' := by
    intro s x
    ext <;> simp

/-- T-lane embedding into the tagged codomain (lane-pure). -/
def u4TEmbedding :
    (GT × G1) →ₗ[F] U4Commitment F G1 GT where
  toFun t := (((0, 0), (0, 0)), t)
  map_add' := by
    intro x y
    ext <;> simp
  map_smul' := by
    intro s x
    ext <;> simp

theorem u4AEmbedding_injective :
    Function.Injective (u4AEmbedding (F := F) (G1 := G1) (GT := GT)) := by
  intro a b h
  exact congrArg (fun z : U4Commitment F G1 GT => z.1.1) h

theorem u4BEmbedding_injective :
    Function.Injective (u4BEmbedding (F := F) (G1 := G1) (GT := GT)) := by
  intro a b h
  exact congrArg (fun z : U4Commitment F G1 GT => z.1.2) h

theorem u4TEmbedding_injective :
    Function.Injective (u4TEmbedding (F := F) (G1 := G1) (GT := GT)) := by
  intro a b h
  exact congrArg (fun z : U4Commitment F G1 GT => z.2) h

/-- Any linear map commutes with the verifier fold — in particular the
    lane embeddings: folding lane-natively then embedding equals embedding
    then folding tagged (DESIGN §U5d(4) lane-nativity). -/
theorem foldCom_map {M N : Type*} [AddCommGroup M] [Module F M]
    [AddCommGroup N] [Module F N] (f : M →ₗ[F] N) (c : F) (L X R : M) :
    f (foldCom c L X R) = foldCom c (f L) (f X) (f R) := by
  simp [foldCom, map_add, map_smul]

private def u4LiftAtom
    {K Msg Out M : Type*}
    [AddCommGroup K] [Module F K] [AddCommGroup Msg] [Module F Msg]
    [AddCommGroup Out] [Module F Out] [AddCommGroup M] [Module F M]
    (embed : Out →ₗ[F] M) (atom : K →ₗ[F] Msg →ₗ[F] Out) :
    K →ₗ[F] Msg →ₗ[F] M where
  toFun k := embed.comp (atom k)
  map_add' := by
    intro x y
    ext m
    simp
  map_smul' := by
    intro s x
    ext m
    simp

/-- A/C commitment atom tagged into the common U4 tree codomain. -/
def u4ACommitAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G2 × G2) →ₗ[F] (G1 × G1) →ₗ[F] U4Commitment F G1 GT :=
  u4LiftAtom u4AEmbedding (u4ALaneAtom e)

/-- B/randomizer commitment atom tagged into the common U4 tree codomain. -/
def u4BCommitAtom (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (G1 × F) →ₗ[F] (G2 × F) →ₗ[F] U4Commitment F G1 GT :=
  u4LiftAtom u4BEmbedding (u4BLaneAtom e)

/-- T-value injection into the common U4 tree codomain. -/
def u4TCommitMap :
    (GT × G1) →ₗ[F] U4Commitment F G1 GT :=
  u4TEmbedding

/-! ### U3 and U2 composition wrappers -/

private def bitValueSum (μ i : ℕ) : ℕ :=
  ∑ j ∈ Finset.range μ, if i.testBit j then 2 ^ j else 0

private theorem bitValueSum_eq {μ i : ℕ} (hi : i < 2 ^ μ) :
    bitValueSum μ i = i := by
  induction μ generalizing i with
  | zero =>
      have : i = 0 := by omega
      subst i
      simp [bitValueSum]
  | succ μ ih =>
      have hpow : 2 ^ (μ + 1) = 2 ^ μ + 2 ^ μ := by
        rw [pow_succ, Nat.mul_two]
      by_cases hlow : i < 2 ^ μ
      · rw [bitValueSum, Finset.sum_range_succ]
        rw [Nat.testBit_eq_false_of_lt hlow]
        simpa [bitValueSum] using ih hlow
      · let k := i - 2 ^ μ
        have hk : k < 2 ^ μ := by
          dsimp [k]
          omega
        have hieq : i = 2 ^ μ + k := by
          dsimp [k]
          omega
        rw [bitValueSum, Finset.sum_range_succ, hieq]
        have hlowbits :
            (∑ j ∈ Finset.range μ,
              if (2 ^ μ + k).testBit j then 2 ^ j else 0) = k := by
          calc
            _ = bitValueSum μ k := by
              unfold bitValueSum
              refine Finset.sum_congr rfl (fun j hj => ?_)
              rw [Nat.testBit_two_pow_add_gt (Finset.mem_range.mp hj) k]
            _ = k := ih hk
        have htop : (2 ^ μ + k).testBit μ = true := by
          rw [Nat.testBit_two_pow_add_eq, Nat.testBit_eq_false_of_lt hk]
          decide
        rw [htop]
        simp only [if_true]
        omega

private def bitValueSumFin (μ i : ℕ) : ℕ :=
  ∑ j : Fin μ, if i.testBit (j : ℕ) then 2 ^ (j : ℕ) else 0

private theorem bitValueSumFin_eq {μ i : ℕ} (hi : i < 2 ^ μ) :
    bitValueSumFin μ i = i := by
  have h := bitValueSum_eq hi
  unfold bitValueSum at h
  rw [← Fin.sum_univ_eq_sum_range
    (fun j => if i.testBit j then 2 ^ j else 0)] at h
  exact h

/-- A transcript shift can be factored into the monomial power for the
    coefficient index and the unshifted transcript coefficient. -/
theorem transcriptCoeffs_shift {μ : ℕ} (x : Fin μ → F) (rShift : F)
    (i : Fin (2 ^ μ)) :
    transcriptCoeffs x rShift i =
      rShift ^ (i : ℕ) * transcriptCoeffs x 1 i := by
  unfold transcriptCoeffs
  have hsum := bitValueSumFin_eq (i := (i : ℕ)) i.isLt
  unfold bitValueSumFin at hsum
  calc
    (∏ j : Fin μ,
        if (i : ℕ).testBit (j : ℕ) then x j * rShift ^ (2 ^ (j : ℕ)) else 1) =
        ∏ j : Fin μ,
          (rShift ^ (if (i : ℕ).testBit (j : ℕ) then 2 ^ (j : ℕ) else 0)) *
            (if (i : ℕ).testBit (j : ℕ) then x j * 1 ^ (2 ^ (j : ℕ)) else 1) := by
      refine Finset.prod_congr rfl (fun j _ => ?_)
      by_cases hbit : (i : ℕ).testBit (j : ℕ)
      · simp [hbit, mul_comm]
      · simp [hbit]
    _ =
        (∏ j : Fin μ,
          rShift ^ (if (i : ℕ).testBit (j : ℕ) then 2 ^ (j : ℕ) else 0)) *
        (∏ j : Fin μ,
          if (i : ℕ).testBit (j : ℕ) then x j * 1 ^ (2 ^ (j : ℕ)) else 1) :=
      Finset.prod_mul_distrib
    _ = rShift ^ (∑ j : Fin μ,
          if (i : ℕ).testBit (j : ℕ) then 2 ^ (j : ℕ) else 0) *
        (∏ j : Fin μ,
          if (i : ℕ).testBit (j : ℕ) then x j * 1 ^ (2 ^ (j : ℕ)) else 1) := by
      rw [Finset.prod_pow_eq_pow_sum]
    _ = rShift ^ (i : ℕ) *
        (∏ j : Fin μ,
          if (i : ℕ).testBit (j : ℕ) then x j * 1 ^ (2 ^ (j : ℕ)) else 1) := by
      rw [hsum]

/-- Move the KZG transcript shift from the coefficients into the SRS basis.
    This is the W-key bridge used at a terminal GIPA leaf. -/
theorem msm_shift {μ : ℕ} {G : Type*} [AddCommGroup G] [Module F G]
    (x : Fin μ → F) (rShift : F) (srs : Fin (2 ^ μ) → G) :
    msm (transcriptCoeffs x rShift) srs =
      msm (transcriptCoeffs x 1)
        (fun i => rShift ^ (i : ℕ) • srs i) := by
  unfold msm
  refine Finset.sum_congr rfl (fun i _ => ?_)
  rw [transcriptCoeffs_shift]
  simp only [smul_smul]
  rw [mul_comm]

private theorem foldKey_prod {μ : ℕ}
    {G G' : Type*} [AddCommGroup G] [Module F G]
    [AddCommGroup G'] [Module F G']
    (x : Fin μ → F) (srs : Fin (2 ^ μ) → G) (srs' : Fin (2 ^ μ) → G') :
    foldKey x (fun i => (srs i, srs' i)) =
      fun j => (foldKey x srs j, foldKey x srs' j) := by
  funext j
  simp only [foldKey_transcriptCoeffs]
  ext <;> simp [msm, Prod.fst_sum, Prod.snd_sum]

/-- U4 key-identification lemma: U3 pins both terminal GIPA keys to the honest
    KZG-structured MSMs. Spec rows `tipp-mipp.kzg-equations`,
    `tipp-mipp.power-sequence`, `gipa.round-folding`. -/
theorem u4_key_identification {μ : ℕ}
    (srsV : Fin (2 ^ μ) → G2) (srsW : Fin (2 ^ μ) → G1)
    (acceptV : (Fin (2 ^ μ) → F) → G2 → G2 → Prop)
    (acceptW : (Fin (2 ^ μ) → F) → G1 → G1 → Prop)
    (xV xW : Fin μ → F) (rShiftV rShiftW : F)
    (vFinal vOpening : G2) (wFinal wOpening : G1)
    (hbindV : KzgStructuredKeyBinding srsV acceptV)
    (hbindW : KzgStructuredKeyBinding srsW acceptW)
    (haccV : acceptV (transcriptCoeffs xV rShiftV) vFinal vOpening)
    (haccW : acceptW (transcriptCoeffs xW rShiftW) wFinal wOpening) :
    vFinal = msm (transcriptCoeffs xV rShiftV) srsV ∧
    wFinal = msm (transcriptCoeffs xW rShiftW) srsW :=
  kzg_final_keys_structured srsV srsW acceptV acceptW xV xW rShiftV rShiftW
    vFinal vOpening wFinal wOpening hbindV hbindW haccV haccW

/-- Convert the five real terminal verifier equations and the two KZG checks
    into the three componentwise equations carried by an `AcceptTree.base`
    leaf at the honestly folded U4 product keys. The scalar B-commitment
    component is canonical and therefore needs no sixth verifier equation. -/
theorem leaf_accept_to_base {μ : ℕ}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (srsV : Fin (2 ^ μ) → G2) (srsW : Fin (2 ^ μ) → G1)
    (acceptV : (Fin (2 ^ μ) → F) → G2 → G2 → Prop)
    (acceptW : (Fin (2 ^ μ) → F) → G1 → G1 → Prop)
    (xV xW : Fin μ → F) (rShift : F)
    (vFinal vOpening : G2) (wFinal wOpening : G1)
    (aFinal cFinal : G1) (bFinal : G2) (rFinal : F)
    (foldedComA foldedComB foldedIpAb foldedComC : GT)
    (foldedAggC : G1)
    (hterminalA : e aFinal vFinal = foldedComA)
    (hterminalB : e wFinal bFinal = foldedComB)
    (hterminalT : e aFinal bFinal = foldedIpAb)
    (hterminalC : e cFinal vFinal = foldedComC)
    (hterminalR : rFinal • cFinal = foldedAggC)
    (hbindV : KzgStructuredKeyBinding srsV acceptV)
    (hbindW : KzgStructuredKeyBinding srsW acceptW)
    (haccV : acceptV (transcriptCoeffs xV 1) vFinal vOpening)
    (haccW : acceptW (transcriptCoeffs xW rShift) wFinal wOpening) :
    (foldedComA, foldedComC) =
        u4ALaneAtom e
          ((foldKey xV (fun i => (srsV i, srsV i))) 0) (aFinal, cFinal) ∧
    (foldedComB,
        ((foldKey xW
          (fun i => (rShift ^ (i : ℕ) • srsW i, (1 : F)))) 0).2 * rFinal) =
        u4BLaneAtom e
          ((foldKey xW
            (fun i => (rShift ^ (i : ℕ) • srsW i, (1 : F)))) 0)
          (bFinal, rFinal) ∧
    (foldedIpAb, foldedAggC) =
        u4TLanePairing e (aFinal, cFinal) (bFinal, rFinal) := by
  obtain ⟨hv, hw⟩ := u4_key_identification srsV srsW acceptV acceptW
    xV xW 1 rShift vFinal vOpening wFinal wOpening hbindV hbindW haccV haccW
  have hfoldV : foldKey xV srsV 0 = vFinal := by
    rw [foldKey_transcriptCoeffs]
    exact hv.symm
  have hfoldW :
      foldKey xW (fun i => rShift ^ (i : ℕ) • srsW i) 0 = wFinal := by
    rw [foldKey_transcriptCoeffs, ← msm_shift]
    exact hw.symm
  constructor
  · rw [foldKey_prod]
    ext <;> simp [u4ALaneAtom, hfoldV, hterminalA, hterminalC]
  constructor
  · rw [foldKey_prod]
    ext <;> simp [u4BLaneAtom, hfoldW, hterminalB]
  · ext <;> simp [u4TLanePairing, hterminalT, hterminalR]

/-- U4 extraction-instantiation lemma: an accepted 4-ary GIPA tree yields
    openings for the instantiated lanes, via U2's `gipa_extract`. Spec rows
    `gipa.input-relation`, `tipp-mipp.gipa`, `tipp-mipp.base-equations`. -/
theorem u4_gipa_extraction
    {K1 K2 Msg1 Msg2 M IPv : Type*}
    [AddCommGroup K1] [Module F K1] [AddCommGroup K2] [Module F K2]
    [AddCommGroup Msg1] [Module F Msg1] [AddCommGroup Msg2] [Module F Msg2]
    [AddCommGroup M] [Module F M] [AddCommGroup IPv] [Module F IPv]
    (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ μ) → K1) (ck_b : Fin (2 ^ μ) → K2)
    (ComA ComB ComT : M)
    (hbindA : PairingCommitmentBinding cmA ck_a)
    (hbindB : PairingCommitmentBinding cmB ck_b)
    (hacc : AcceptTree cmA cmB cmT ip μ ck_a ck_b ComA ComB ComT) :
    ∃ a b,
      ComA = commitV cmA ck_a a ∧
      ComB = commitV cmB ck_b b ∧
      ComT = cmT (ipm ip a b) :=
  gipa_extract cmA cmB cmT ip ck_a ck_b ComA ComB ComT
    hbindA hbindB hacc

/-- Root binding pins U2's extracted openings to the vectors whose root
    commitments were accepted. This is the clean U2-to-U4 handoff before the
    verifier-specific terminal-equation decoder. -/
theorem u4_gipa_pins_committed_vectors
    {K1 K2 Msg1 Msg2 M IPv : Type*}
    [AddCommGroup K1] [Module F K1] [AddCommGroup K2] [Module F K2]
    [AddCommGroup Msg1] [Module F Msg1] [AddCommGroup Msg2] [Module F Msg2]
    [AddCommGroup M] [Module F M] [AddCommGroup IPv] [Module F IPv]
    (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ μ) → K1) (ck_b : Fin (2 ^ μ) → K2)
    (ComA ComB ComT : M) (aExpected : Fin (2 ^ μ) → Msg1)
    (bExpected : Fin (2 ^ μ) → Msg2)
    (hbindA : PairingCommitmentBinding cmA ck_a)
    (hbindB : PairingCommitmentBinding cmB ck_b)
    (hComA : ComA = commitV cmA ck_a aExpected)
    (hComB : ComB = commitV cmB ck_b bExpected)
    (hacc : AcceptTree cmA cmB cmT ip μ ck_a ck_b ComA ComB ComT) :
    ComT = cmT (ipm ip aExpected bExpected) := by
  obtain ⟨a, b, ha, hb, ht⟩ :=
    u4_gipa_extraction cmA cmB cmT ip ck_a ck_b ComA ComB ComT hbindA hbindB hacc
  have hea : aExpected = a := hbindA (hComA.symm.trans ha)
  have heb : bExpected = b := hbindB (hComB.symm.trans hb)
  simpa [hea, heb] using ht

/-- The instantiated U4 T-lane inner product is read componentwise as the
    randomized pairing aggregate and the randomized C aggregate. -/
theorem ipm_u4_componentwise (e : G1 →ₗ[F] G2 →ₗ[F] GT) {n : ℕ}
    (A C : Fin n → G1) (Bv : Fin n → G2) (r : F) :
    ipm (u4TLanePairing e) (fun i => (A i, C i))
        (fun i => (r ^ (i : ℕ) • Bv i, r ^ (i : ℕ))) =
      (∑ i : Fin n, e (A i) (r ^ (i : ℕ) • Bv i),
        ∑ i : Fin n, r ^ (i : ℕ) • C i) := by
  unfold ipm
  ext <;> simp [u4TLanePairing, Prod.fst_sum, Prod.snd_sum]

/-! ### U1 randomizer stripping and PPE capstone -/

/-- Additive Groth16 PPE right-hand side for one proof.
    Spec row `groth16.ppe`. -/
def groth16Rhs (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (α Aic C : G1) (β γ δ : G2) : GT :=
  e α β + e Aic γ + e C δ

/-- Per-proof PPE discrepancy. Spec rows `groth16.ppe`,
    `groth16.randomizer`. -/
def groth16Discrepancy (e : G1 →ₗ[F] G2 →ₗ[F] GT) {n : ℕ}
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin n → G1) (B : Fin n → G2) (i : Fin n) : GT :=
  e (A i) (B i) - groth16Rhs e α (Aic i) (C i) β γ δ

/-- The five aggregate verifier values decode to the randomized sum of
    per-proof Groth16 discrepancies. This is the pure bilinear-algebra boundary
    between the pinned GIPA T lane and U1. -/
theorem u4_terminal_decoder (e : G1 →ₗ[F] G2 →ₗ[F] GT) {n : ℕ}
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin n → G1) (Bv : Fin n → G2) (r : F)
    (ip_ab : GT) (agg_c : G1) (r_sum : F) (g_ic : G1)
    (hip : ip_ab = ∑ i : Fin n, e (A i) (r ^ (i : ℕ) • Bv i))
    (hagg : agg_c = ∑ i : Fin n, r ^ (i : ℕ) • C i)
    (hrsum : r_sum = ∑ i : Fin n, r ^ (i : ℕ))
    (hgic : g_ic = ∑ i : Fin n, r ^ (i : ℕ) • Aic i)
    (hppe : e (r_sum • α) β + e g_ic γ + e agg_c δ = ip_ab) :
    ∑ i : Fin n, r ^ (i : ℕ) •
      groth16Discrepancy e α β γ δ A C Aic Bv i = 0 := by
  have hppe' :
      (∑ i : Fin n, r ^ (i : ℕ) • e α β) +
          (∑ i : Fin n, r ^ (i : ℕ) • e (Aic i) γ) +
          (∑ i : Fin n, r ^ (i : ℕ) • e (C i) δ) =
        ∑ i : Fin n, r ^ (i : ℕ) • e (A i) (Bv i) := by
    change (LinearMap.flip e β) (r_sum • α) +
      (LinearMap.flip e γ) g_ic + (LinearMap.flip e δ) agg_c = ip_ab at hppe
    rw [hrsum, hgic, hagg, hip] at hppe
    simpa only [map_sum, map_smul, LinearMap.smul_apply, Finset.smul_sum,
      Finset.sum_smul] using hppe
  simp only [groth16Discrepancy, groth16Rhs, smul_sub, smul_add,
    Finset.sum_sub_distrib, Finset.sum_add_distrib]
  rw [← hppe']
  abel

/-- THE U1 bad set for a discrepancy vector: the challenges at which the
    `r`-weighted discrepancy sum vanishes despite a nonzero discrepancy.
    Determined by `d` alone (before `r` is sampled); finite of size `≤ n-1`
    by `rootSet_card_le`. Spec row `groth16.randomizer`. -/
def discrepancyRootSet {M : Type*} [AddCommGroup M] [Module F M]
    {n : ℕ} (d : Fin n → M) : Set F :=
  {x : F | (∃ i, d i ≠ 0) ∧ ∑ i : Fin n, x ^ (i : ℕ) • d i = 0}

/-- U4 randomizer-lift wrapper: if the aggregate discrepancy vanishes at a
    challenge outside THE discrepancy root set (the single pre-`r` bad set —
    NOT universal avoidance of all small sets, which is contradictory), all
    discrepancies are zero. Spec rows `groth16.randomizer`,
    `groth16.folded-inputs`. -/
theorem u4_randomizer_lift_pointwise {M : Type*} [AddCommGroup M] [Module F M]
    {n : ℕ} (d : Fin n → M) (r : F)
    (hroot : r ∉ discrepancyRootSet d)
    (hvanish : ∑ i : Fin n, r ^ (i : ℕ) • d i = 0) :
    ∀ i, d i = 0 := by
  by_contra hne
  push_neg at hne
  obtain ⟨i, hi⟩ := hne
  exact hroot ⟨⟨i, hi⟩, hvanish⟩

/-- The discrepancy root set is finite with at most `n - 1` elements —
    the quantitative carrier U5a's randomizer bound consumes.
    Spec row `groth16.randomizer`. -/
theorem discrepancyRootSet_card {M : Type*} [AddCommGroup M] [Module F M]
    {n : ℕ} (d : Fin n → M) :
    (discrepancyRootSet (F := F) d).Finite ∧
      Nat.card (discrepancyRootSet (F := F) d) ≤ n - 1 := by
  by_cases hd : ∃ i, d i ≠ 0
  · obtain ⟨hfin, hcard⟩ := rootSet_card_le (F := F) d hd
    have hset : discrepancyRootSet d
        = {x : F | ∑ i : Fin n, x ^ (i : ℕ) • d i = 0} := by
      ext x
      simp [discrepancyRootSet, hd]
    rw [hset]
    exact ⟨hfin, hcard⟩
  · have hset : discrepancyRootSet d = (∅ : Set F) := by
      ext x
      simp [discrepancyRootSet, hd]
    rw [hset]
    simp

/-- U4 capstone PPE-per-index lemma: after U2/U3 have reduced the accepted
    aggregate to the randomized PPE discrepancy equation, U1 strips the
    randomizer and yields every per-proof Groth16 PPE. Spec rows
    `tipp-mipp.base-equations`, `groth16.randomizer`, `groth16.ppe`. -/
theorem u4_ppe_per_index (e : G1 →ₗ[F] G2 →ₗ[F] GT) {n : ℕ}
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin n → G1) (Bv : Fin n → G2) (r : F)
    (hroot : r ∉ discrepancyRootSet
      (fun i => groth16Discrepancy e α β γ δ A C Aic Bv i))
    (haggregate :
      ∑ i : Fin n, r ^ (i : ℕ) • groth16Discrepancy e α β γ δ A C Aic Bv i = 0) :
    ∀ i, e (A i) (Bv i) = groth16Rhs e α (Aic i) (C i) β γ δ := by
  intro i
  have hzero := u4_randomizer_lift_pointwise
    (F := F) (d := fun i => groth16Discrepancy e α β γ δ A C Aic Bv i)
    r hroot haggregate i
  dsimp [groth16Discrepancy] at hzero
  exact sub_eq_zero.mp hzero

/-- U4 capstone: root binding and a concrete product-lane accepting tree pin
    the randomized terminal aggregates; the aggregate PPE decoder and U1 then
    recover every per-proof Groth16 equation. -/
theorem u4_capstone (e : G1 →ₗ[F] G2 →ₗ[F] GT) {μ : ℕ}
    (srsV : Fin (2 ^ μ) → G2) (srsW : Fin (2 ^ μ) → G1)
    (ComA ComB : U4Commitment F G1 GT)
    (ip_ab : GT) (agg_c : G1)
    (α : G1) (β γ δ : G2)
    (A C Aic : Fin (2 ^ μ) → G1) (Bv : Fin (2 ^ μ) → G2)
    (r : F) (r_sum : F) (g_ic : G1)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom e)
      (fun i => (srsV i, srsV i)))
    (hbindB : PairingCommitmentBinding (u4BCommitAtom e)
      (fun i => ((r ^ (i : ℕ))⁻¹ • srsW i, (1 : F))))
    (hComA : ComA = commitV (u4ACommitAtom e)
      (fun i => (srsV i, srsV i)) (fun i => (A i, C i)))
    (hComB : ComB = commitV (u4BCommitAtom e)
      (fun i => ((r ^ (i : ℕ))⁻¹ • srsW i, (1 : F)))
      (fun i => (r ^ (i : ℕ) • Bv i, r ^ (i : ℕ))))
    (hacc : AcceptTree (u4ACommitAtom e) (u4BCommitAtom e) u4TCommitMap
      (u4TLanePairing e) μ
      (fun i => (srsV i, srsV i))
      (fun i => ((r ^ (i : ℕ))⁻¹ • srsW i, (1 : F)))
      ComA ComB (u4TCommitMap (ip_ab, agg_c)))
    (hrsum : r_sum = ∑ i : Fin (2 ^ μ), r ^ (i : ℕ))
    (hgic : g_ic = ∑ i : Fin (2 ^ μ), r ^ (i : ℕ) • Aic i)
    (hppe : e (r_sum • α) β + e g_ic γ + e agg_c δ = ip_ab)
    (hroot : r ∉ discrepancyRootSet
      (fun i => groth16Discrepancy e α β γ δ A C Aic Bv i)) :
    ∀ i, e (A i) (Bv i) = groth16Rhs e α (Aic i) (C i) β γ δ := by
  have hpin := u4_gipa_pins_committed_vectors
    (u4ACommitAtom e) (u4BCommitAtom e) u4TCommitMap (u4TLanePairing e)
    (fun i => (srsV i, srsV i))
    (fun i => ((r ^ (i : ℕ))⁻¹ • srsW i, (1 : F)))
    ComA ComB (u4TCommitMap (ip_ab, agg_c))
    (fun i => (A i, C i))
    (fun i => (r ^ (i : ℕ) • Bv i, r ^ (i : ℕ)))
    hbindA hbindB hComA hComB hacc
  have ht : (ip_ab, agg_c) =
      ipm (u4TLanePairing e) (fun i => (A i, C i))
        (fun i => (r ^ (i : ℕ) • Bv i, r ^ (i : ℕ))) := by
    have h := congrArg (fun z : U4Commitment F G1 GT => z.2) hpin
    simpa [u4TCommitMap, u4TEmbedding] using h
  rw [ipm_u4_componentwise] at ht
  have hip : ip_ab =
      ∑ i : Fin (2 ^ μ), e (A i) (r ^ (i : ℕ) • Bv i) :=
    congrArg (fun z : GT × G1 => z.1) ht
  have hagg : agg_c =
      ∑ i : Fin (2 ^ μ), r ^ (i : ℕ) • C i :=
    congrArg (fun z : GT × G1 => z.2) ht
  apply u4_ppe_per_index e α β γ δ A C Aic Bv r hroot
  exact u4_terminal_decoder e α β γ δ A C Aic Bv r
    ip_ab agg_c r_sum g_ic hip hagg hrsum hgic hppe

end Ipp
