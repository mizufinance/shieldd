/-
U2: GIPA folding soundness — extraction across the recursive halving rounds of
the generalized inner-product argument (extraction-shaped, DESIGN §U2).

Four-transcript special soundness per GIPA round, assembled over an
accepting-transcript tree (`AcceptTree`) into the input relation extraction that
U5's forking lemma consumes. The single named assumption is commitment binding
(`Ipp.PairingCommitmentBinding`, Ipp/Algebra.lean); the Laurent solve itself is
assumption-free.

Deviations from DESIGN §U2 (noted at the point of use):
* Halves are indexed as `Fin (m + m)` (via `Fin.castAdd`/`Fin.natAdd`), not
  `Fin (2*m)`, so `Fin.sum_univ_add` / `Fin.addCases` apply without arithmetic
  casts. The tree instantiates `m := 2 ^ μ` and bridges `2 ^ (μ+1) = 2 ^ μ + 2 ^ μ`
  through `Fin.cast (hpow μ)`.
* The T-lane commitment is a single linear map `cmT : IPv →ₗ[F] M` with its fixed
  key `ck_t` absorbed (DESIGN writes `cmT ck_t ·`). Three-point Laurent uniqueness
  pins its middle coefficient, so no separate T-lane injectivity hypothesis is used.

Spec rows: `gipa.round-folding`, `gipa.verifier-folding`, `gipa.input-relation`,
`tipp-mipp.gipa`. Model: ripp-spec §GIPA; Rust `gipa.rs` (splits 469-479, prover
folds 549-574, verifier `fold_output` 700-708, `_compute_final_commitment_keys`
711-746).
-/
import Ipp.Algebra
import Ipp.Kzg
import Ipp.RandomizerLift
import Mathlib.LinearAlgebra.BilinearMap
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.Fin.VecNotation
import Mathlib.Tactic.Module
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Abel

namespace Ipp

open scoped BigOperators

set_option maxHeartbeats 1000000

/-! ### Laurent solve (DESIGN §U2.1)

Three distinct nonzero challenges `c k` with `c k • L + Com + (c k)⁻¹ • R = Z k`
pin the middle coefficient `Com` to an explicit F-linear combination of the `Z k`.
The weights are the Lagrange "linear coefficient" weights of the quadratic
`t ↦ t²•L + t•Com + R` (whose values at the `c k` are `c k • Z k`); they satisfy
`∑ w = 1`, `∑ w·c = 0`, `∑ w·c⁻¹ = 0`, which is all the module identity needs. -/

section Laurent

variable {F : Type*} [Field F]
variable {M : Type*} [AddCommGroup M] [Module F M]

/-- Lagrange middle-coefficient weights for three nodes `c 0, c 1, c 2`. -/
noncomputable def laurentW (c : Fin 3 → F) : Fin 3 → F :=
  ![ -(c 1 + c 2) * c 0 / ((c 0 - c 1) * (c 0 - c 2)),
     -(c 0 + c 2) * c 1 / ((c 1 - c 0) * (c 1 - c 2)),
     -(c 0 + c 1) * c 2 / ((c 2 - c 0) * (c 2 - c 1)) ]

variable {c : Fin 3 → F} (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)

omit [Field F] in
@[simp] private lemma fin3_zero (h : 0 < 3) : c ⟨0, h⟩ = c 0 := by congr
omit [Field F] in
@[simp] private lemma fin3_one (h : 1 < 3) : c ⟨1, h⟩ = c 1 := by congr
omit [Field F] in
@[simp] private lemma fin3_two (h : 2 < 3) : c ⟨2, h⟩ = c 2 := by congr

include hinj in
private lemma sub_ne (i j : Fin 3) (h : i ≠ j) : c i - c j ≠ 0 :=
  sub_ne_zero.mpr fun he => h (hinj he)

include hinj in
private lemma laurentW_sum_one : laurentW c 0 + laurentW c 1 + laurentW c 2 = 1 := by
  have h01 := sub_ne hinj 0 1 (by decide)
  have h02 := sub_ne hinj 0 2 (by decide)
  have h10 := sub_ne hinj 1 0 (by decide)
  have h12 := sub_ne hinj 1 2 (by decide)
  have h20 := sub_ne hinj 2 0 (by decide)
  have h21 := sub_ne hinj 2 1 (by decide)
  simp only [laurentW, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
    Matrix.cons_val_two, Matrix.tail_cons]
  field_simp
  ring

include hinj in
private lemma laurentW_sum_c :
    laurentW c 0 * c 0 + laurentW c 1 * c 1 + laurentW c 2 * c 2 = 0 := by
  have h01 := sub_ne hinj 0 1 (by decide)
  have h02 := sub_ne hinj 0 2 (by decide)
  have h10 := sub_ne hinj 1 0 (by decide)
  have h12 := sub_ne hinj 1 2 (by decide)
  have h20 := sub_ne hinj 2 0 (by decide)
  have h21 := sub_ne hinj 2 1 (by decide)
  simp only [laurentW, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
    Matrix.cons_val_two, Matrix.tail_cons]
  field_simp
  ring

include hinj hnz in
private lemma laurentW_sum_cinv :
    laurentW c 0 * (c 0)⁻¹ + laurentW c 1 * (c 1)⁻¹ + laurentW c 2 * (c 2)⁻¹ = 0 := by
  have h01 := sub_ne hinj 0 1 (by decide)
  have h02 := sub_ne hinj 0 2 (by decide)
  have h10 := sub_ne hinj 1 0 (by decide)
  have h12 := sub_ne hinj 1 2 (by decide)
  have h20 := sub_ne hinj 2 0 (by decide)
  have h21 := sub_ne hinj 2 1 (by decide)
  have n0 := hnz 0; have n1 := hnz 1; have n2 := hnz 2
  simp only [laurentW, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
    Matrix.cons_val_two, Matrix.tail_cons]
  field_simp
  ring

include hinj hnz in
/-- Laurent solve (DESIGN §U2.1): the middle coefficient is a fixed F-linear
    combination of the three evaluations. Assumption-free. -/
theorem laurent_solve (L Com R : M) (Z : Fin 3 → M)
    (h : ∀ k, c k • L + Com + (c k)⁻¹ • R = Z k) :
    Com = ∑ k, laurentW c k • Z k := by
  rw [Fin.sum_univ_three]
  have key : laurentW c 0 • Z 0 + laurentW c 1 • Z 1 + laurentW c 2 • Z 2
      = (laurentW c 0 * c 0 + laurentW c 1 * c 1 + laurentW c 2 * c 2) • L
      + (laurentW c 0 + laurentW c 1 + laurentW c 2) • Com
      + (laurentW c 0 * (c 0)⁻¹ + laurentW c 1 * (c 1)⁻¹ + laurentW c 2 * (c 2)⁻¹) • R := by
    rw [← h 0, ← h 1, ← h 2]; module
  rw [key, laurentW_sum_c hinj, laurentW_sum_one hinj, laurentW_sum_cinv hinj hnz]
  simp

/-- Coefficients of the leading term in the quadratic interpolating
    `c i • z i` at the three points `c i`. -/
noncomputable def laurentLW (c : Fin 3 → F) : Fin 3 → F :=
  ![ c 0 / ((c 0 - c 1) * (c 0 - c 2)),
     c 1 / ((c 1 - c 0) * (c 1 - c 2)),
     c 2 / ((c 2 - c 0) * (c 2 - c 1)) ]

/-- Coefficients of the constant term in the quadratic interpolating
    `c i • z i` at the three points `c i`. -/
noncomputable def laurentRW (c : Fin 3 → F) : Fin 3 → F :=
  ![ c 0 * c 1 * c 2 / ((c 0 - c 1) * (c 0 - c 2)),
     c 1 * c 0 * c 2 / ((c 1 - c 0) * (c 1 - c 2)),
     c 2 * c 0 * c 1 / ((c 2 - c 0) * (c 2 - c 1)) ]

private lemma laurent_weight_eval (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (i j : Fin 3) :
    c j * laurentLW c i + laurentW c i + (c j)⁻¹ * laurentRW c i =
      if i = j then 1 else 0 := by
  have h01 := sub_ne hinj 0 1 (by decide)
  have h02 := sub_ne hinj 0 2 (by decide)
  have h10 := sub_ne hinj 1 0 (by decide)
  have h12 := sub_ne hinj 1 2 (by decide)
  have h20 := sub_ne hinj 2 0 (by decide)
  have h21 := sub_ne hinj 2 1 (by decide)
  have n0 := hnz 0; have n1 := hnz 1; have n2 := hnz 2
  fin_cases i <;> fin_cases j <;>
    simp [laurentLW, laurentW, laurentRW] <;> field_simp <;> ring

/-- Explicit three-point Laurent interpolation. All three coefficients are
    linear combinations of the evaluations. -/
theorem laurent_interpolate (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (z : Fin 3 → M) :
    ∃ l m r, ∀ j, c j • l + m + (c j)⁻¹ • r = z j := by
  let l := ∑ i, laurentLW c i • z i
  let m := ∑ i, laurentW c i • z i
  let r := ∑ i, laurentRW c i • z i
  refine ⟨l, m, r, ?_⟩
  intro j
  simp only [l, m, r, Fin.sum_univ_three, smul_add, smul_smul]
  have w0 := laurent_weight_eval hinj hnz 0 j
  have w1 := laurent_weight_eval hinj hnz 1 j
  have w2 := laurent_weight_eval hinj hnz 2 j
  calc
    _ = (c j * laurentLW c 0 + laurentW c 0 + (c j)⁻¹ * laurentRW c 0) • z 0
        + (c j * laurentLW c 1 + laurentW c 1 + (c j)⁻¹ * laurentRW c 1) • z 1
        + (c j * laurentLW c 2 + laurentW c 2 + (c j)⁻¹ * laurentRW c 2) • z 2 := by
          module
    _ = (if (0 : Fin 3) = j then (1 : F) else 0) • z 0
        + (if (1 : Fin 3) = j then (1 : F) else 0) • z 1
        + (if (2 : Fin 3) = j then (1 : F) else 0) • z 2 := by rw [w0, w1, w2]
    _ = z j := by fin_cases j <;> simp

/-- Three Laurent evaluations at distinct nonzero points determine all three
    coefficients. -/
theorem laurent_unique (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (l m r l' m' r' : M)
    (h : ∀ j, c j • l + m + (c j)⁻¹ • r =
      c j • l' + m' + (c j)⁻¹ • r') : l = l' ∧ m = m' ∧ r = r' := by
  let g : Fin 3 → M := ![r - r', m - m', l - l']
  have hz : ∀ j, ∑ i : Fin 3, (c j) ^ (i : ℕ) • g i = 0 := by
    intro j
    have hj := congrArg (fun x => c j • x) (h j)
    have nc := hnz j
    change c j • (c j • l + m + (c j)⁻¹ • r) =
      c j • (c j • l' + m' + (c j)⁻¹ • r') at hj
    simp only [smul_add, smul_smul] at hj
    rw [mul_inv_cancel₀ nc] at hj
    simp only [one_smul] at hj
    rw [Fin.sum_univ_three]
    simp only [g, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
      Matrix.cons_val_two, Matrix.tail_cons]
    have hp0 : c j ^ ((0 : Fin 3) : ℕ) = 1 := by norm_num
    have hp1 : c j ^ ((1 : Fin 3) : ℕ) = c j := by norm_num
    have hp2 : c j ^ ((2 : Fin 3) : ℕ) = c j * c j := by norm_num [pow_two]
    rw [hp0, hp1, hp2, one_smul]
    calc
      (r - r') + c j • (m - m') + (c j * c j) • (l - l') =
          ((c j * c j) • l + c j • m + r) -
            ((c j * c j) • l' + c j • m' + r') := by module
      _ = 0 := sub_eq_zero.mpr hj
  have hg := vandermonde_module_zero g ⟨c, hinj, hz⟩
  have h0 := hg 0; have h1 := hg 1; have h2 := hg 2
  simp only [g, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
    Matrix.cons_val_two, Matrix.tail_cons, sub_eq_zero] at h0 h1 h2
  exact ⟨h2, h1, h0⟩

/-- Two Laurent interpolants through the same three distinct nonzero points
    have identical coefficients. This is the public-lane pinning step: unlike
    committed lanes, it uses only Vandermonde uniqueness. -/
theorem laurent_interpolate_unique (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (z : Fin 3 → M) (l m r l' m' r' : M)
    (h : ∀ j, c j • l + m + (c j)⁻¹ • r = z j)
    (h' : ∀ j, c j • l' + m' + (c j)⁻¹ • r' = z j) :
    l = l' ∧ m = m' ∧ r = r' :=
  laurent_unique hinj hnz l m r l' m' r' fun j => (h j).trans (h' j).symm

/-- A module-valued cubic vanishing at four distinct points has all
    coefficients zero. -/
theorem cubic_vanishing {c4 : Fin 4 → F} (hinj4 : Function.Injective c4)
    (g0 g1 g2 g3 : M)
    (h : ∀ j, g0 + c4 j • g1 + (c4 j) ^ 2 • g2 + (c4 j) ^ 3 • g3 = 0) :
    g0 = 0 ∧ g1 = 0 ∧ g2 = 0 ∧ g3 = 0 := by
  let g : Fin 4 → M := ![g0, g1, g2, g3]
  have hz : ∀ j, ∑ i : Fin 4, (c4 j) ^ (i : ℕ) • g i = 0 := by
    intro j
    simpa [g, Fin.sum_univ_four] using h j
  have hg := vandermonde_module_zero g ⟨c4, hinj4, hz⟩
  simpa only [g, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
    Matrix.cons_val_two, Matrix.cons_val_three, Matrix.tail_cons] using
    And.intro (hg 0) (And.intro (hg 1) (And.intro (hg 2) (hg 3)))

end Laurent

/-! ### Fold / embed / vector commitment (DESIGN §U2.2, §U2.3)

Split convention (spec §GIPA, `gipa.rs:469-479`): index `i : Fin (m + m)` splits
as lower `castAdd` `[0, m)` and upper `natAdd` `[m, 2m)`. `foldMsg s v` folds a
size-`2m` vector to size `m` by `i ↦ s • v(upper i) + v(lower i)` — one definition
covers all four fold equations (`s = c` for `a`, `ck_b`; `s = c⁻¹` for `b`, `ck_a`).
`embed s w` is its message-side adjoint: `w` on the lower half, `s • w` on the
upper half. -/

section Fold

variable {F : Type*} [Field F]
variable {V : Type*} [AddCommGroup V] [Module F V]
variable {m : ℕ}

/-- Message/key fold `i ↦ s • v(upper i) + v(lower i)` (`gipa.rs` `rescale_fold`). -/
def foldMsg (s : F) (v : Fin (m + m) → V) : Fin m → V :=
  fun i => s • v (Fin.natAdd m i) + v (Fin.castAdd m i)

/-- Message embed: `w` on the lower half, `s • w` on the upper half. Adjoint of
    `foldMsg` under the commitment pairing. -/
def embed (s : F) (w : Fin m → V) : Fin (m + m) → V :=
  Fin.addCases w (fun i => s • w i)

/-- Leading Laurent coefficient of `embed c (foldMsg c⁻¹ v)`. -/
def foldLaurentL (v : Fin (m + m) → V) : Fin (m + m) → V :=
  Fin.addCases (fun _ => 0) (fun i => v (Fin.castAdd m i))

/-- Trailing Laurent coefficient of `embed c (foldMsg c⁻¹ v)`. -/
def foldLaurentR (v : Fin (m + m) → V) : Fin (m + m) → V :=
  Fin.addCases (fun i => v (Fin.natAdd m i)) (fun _ => 0)

@[simp] lemma embed_lower (s : F) (w : Fin m → V) (i : Fin m) :
    embed s w (Fin.castAdd m i) = w i := by
  simp only [embed, Fin.addCases_left]

@[simp] lemma embed_upper (s : F) (w : Fin m → V) (i : Fin m) :
    embed s w (Fin.natAdd m i) = s • w i := by
  simp only [embed, Fin.addCases_right]

/-- `embed s` is injective — its lower half is the identity. Hence folded-key
    binding reduces to original-key binding (DESIGN §U2.3). -/
theorem embed_injective (s : F) : Function.Injective (embed (V := V) (m := m) s) := by
  intro w1 w2 h
  funext i
  have := congrFun h (Fin.castAdd m i)
  simpa using this

/-- The public B-side fold is itself a Laurent interpolant whose middle
    coefficient is the unfurled public family. -/
theorem embed_foldMsg_laurent (c : F) (hc : c ≠ 0) (v : Fin (m + m) → V) :
    embed c (foldMsg c⁻¹ v) = c • foldLaurentL v + v + c⁻¹ • foldLaurentR v := by
  funext i
  refine Fin.addCases ?_ ?_ i
  · intro j
    simp [embed, foldMsg, foldLaurentL, foldLaurentR]
    abel
  · intro j
    simp only [embed_upper, foldMsg, Pi.add_apply, Pi.smul_apply,
      foldLaurentL, foldLaurentR, Fin.addCases_right, smul_add, smul_smul]
    rw [mul_inv_cancel₀ hc, one_smul]
    module

end Fold

section Commit

variable {F : Type*} [Field F]
variable {K Msg M : Type*}
variable [AddCommGroup K] [Module F K] [AddCommGroup Msg] [Module F Msg]
variable [AddCommGroup M] [Module F M]

/-- Vector commitment `∑ᵢ cm(ckᵢ, mᵢ)` (generic lane atom, DESIGN §U2). -/
def commitV {n : ℕ} (cm : K →ₗ[F] Msg →ₗ[F] M) (ck : Fin n → K) (m : Fin n → Msg) : M :=
  ∑ i, cm (ck i) (m i)

/-- Additivity of `commitV` in the message vector. Spec row
    `gipa.round-folding`. -/
lemma commitV_add {n : ℕ} (cm : K →ₗ[F] Msg →ₗ[F] M) (ck : Fin n → K) (m m' : Fin n → Msg) :
    commitV cm ck (m + m') = commitV cm ck m + commitV cm ck m' := by
  simp only [commitV, Pi.add_apply, map_add, Finset.sum_add_distrib]

/-- Homogeneity of `commitV` in the message vector. Spec row
    `gipa.round-folding`. -/
lemma commitV_smul {n : ℕ} (cm : K →ₗ[F] Msg →ₗ[F] M) (ck : Fin n → K) (s : F) (m : Fin n → Msg) :
    commitV cm ck (s • m) = s • commitV cm ck m := by
  simp only [commitV, Pi.smul_apply, map_smul, Finset.smul_sum]

/-- Embed lemma (DESIGN §U2.2): folding the key is adjoint to embedding the
    message. Bilinearity only. Spec `gipa.round-folding`. -/
theorem commitV_foldMsg {m : ℕ} (cm : K →ₗ[F] Msg →ₗ[F] M) (s : F)
    (ck : Fin (m + m) → K) (msg : Fin m → Msg) :
    commitV cm (foldMsg s ck) msg = commitV cm ck (embed s msg) := by
  simp only [commitV, foldMsg]
  rw [Fin.sum_univ_add]
  simp only [embed_lower, embed_upper, map_add, LinearMap.add_apply, map_smul,
    LinearMap.smul_apply]
  rw [Finset.sum_add_distrib]
  exact add_comm _ _

/-- Reindexing `commitV` along a size equality. Spec row
    `gipa.round-folding`; used to bridge `2 ^ (μ+1) = 2 ^ μ + 2 ^ μ`. -/
lemma commitV_reindex {n n' : ℕ} (hnn : n = n') (cm : K →ₗ[F] Msg →ₗ[F] M)
    (ck : Fin n' → K) (m : Fin n' → Msg) :
    commitV cm (fun i : Fin n => ck (Fin.cast hnn i)) (fun i : Fin n => m (Fin.cast hnn i))
      = commitV cm ck m := by
  subst hnn
  simp only [commitV, Fin.cast_eq_self]

/-- Folded-key binding reduces to original-key binding (DESIGN §U2.3,
    `Ipp.binding_foldMsg` from Algebra.lean's docstring). Spec `gipa.round-folding`. -/
theorem binding_foldMsg {m : ℕ} (cm : K →ₗ[F] Msg →ₗ[F] M) (s : F) (ck : Fin (m + m) → K)
    (hbind : PairingCommitmentBinding cm ck) :
    PairingCommitmentBinding cm (foldMsg s ck) := by
  intro w1 w2 h
  apply embed_injective s
  have h1 : commitV cm (foldMsg s ck) w1 = commitV cm (foldMsg s ck) w2 := h
  rw [commitV_foldMsg, commitV_foldMsg] at h1
  exact hbind h1

end Commit

/-! ### Cross-term identity (DESIGN §U2.4)

`ip (foldMsg c a) (foldMsg c⁻¹ b) = c • ip a1 b1 + ip a b + c⁻¹ • ip a2 b2`, with
`a1 = a∘natAdd`, `b1 = b∘castAdd` (upper·lower), `a2 = a∘castAdd`, `b2 = b∘natAdd`
(lower·upper), and `ip a b` the full size-`2m` inner product. Bilinearity + the
split; the middle constant terms recombine into `ip a b`. -/

section CrossTerm

variable {F : Type*} [Field F]
variable {Msg1 Msg2 IPv : Type*}
variable [AddCommGroup Msg1] [Module F Msg1] [AddCommGroup Msg2] [Module F Msg2]
variable [AddCommGroup IPv] [Module F IPv]

/-- Inner product `∑ᵢ ip(aᵢ, bᵢ)` (same shape as `commitV`; the T-lane atom). -/
def ipm {n : ℕ} (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv) (a : Fin n → Msg1) (b : Fin n → Msg2) : IPv :=
  ∑ i, ip (a i) (b i)

/-- Cross-term identity (DESIGN §U2.4). Spec `gipa.round-folding`. -/
theorem ipm_foldMsg {m : ℕ} (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv) (c : F) (hc : c ≠ 0)
    (a : Fin (m + m) → Msg1) (b : Fin (m + m) → Msg2) :
    ipm ip (foldMsg c a) (foldMsg c⁻¹ b)
      = c • ipm ip (fun i => a (Fin.natAdd m i)) (fun i => b (Fin.castAdd m i))
        + ipm ip a b
        + c⁻¹ • ipm ip (fun i => a (Fin.castAdd m i)) (fun i => b (Fin.natAdd m i)) := by
  have expand : ∀ i : Fin m,
      ip (foldMsg c a i) (foldMsg c⁻¹ b i)
      = ip (a (Fin.natAdd m i)) (b (Fin.natAdd m i))
        + c • ip (a (Fin.natAdd m i)) (b (Fin.castAdd m i))
        + c⁻¹ • ip (a (Fin.castAdd m i)) (b (Fin.natAdd m i))
        + ip (a (Fin.castAdd m i)) (b (Fin.castAdd m i)) := by
    intro i
    simp only [foldMsg, map_add, LinearMap.add_apply, map_smul, LinearMap.smul_apply,
      smul_add, smul_smul, inv_mul_cancel₀ hc, one_smul]
    abel
  simp only [ipm]
  rw [Fin.sum_univ_add (f := fun j => ip (a j) (b j))]
  simp only [expand, Finset.sum_add_distrib, Finset.smul_sum]
  abel

end CrossTerm

/-! ### Accepting transcript trees and extraction surface (DESIGN §U2.4, §U2.5)

The public tree follows only the verifier folding shape. The inductive `node`
carries the round messages, four challenges with distinctness/nonzeroness facts,
and child accepting trees. It carries no parent opening or relation evidence. -/

section Extract

variable {F : Type*} [Field F]
variable {K1 K2 Msg1 Msg2 P M IPv : Type*}
variable [AddCommGroup K1] [Module F K1] [AddCommGroup K2] [Module F K2]
variable [AddCommGroup Msg1] [Module F Msg1] [AddCommGroup Msg2] [Module F Msg2]
variable [AddCommGroup P] [Module F P]
variable [AddCommGroup M] [Module F M] [AddCommGroup IPv] [Module F IPv]

/-- Power-of-two split used to view a size `2^(μ+1)` vector as two halves of
    size `2^μ`. -/
private theorem pow_succ_two (μ : ℕ) : 2 ^ (μ + 1) = 2 ^ μ + 2 ^ μ := by
  rw [pow_succ, Nat.mul_two]

/-- Fold a power-of-two vector by peeling the highest remaining bit first. -/
def foldPow (μ : ℕ) (s : F) (v : Fin (2 ^ (μ + 1)) → K1) : Fin (2 ^ μ) → K1 :=
  foldMsg (m := 2 ^ μ) s (fun i : Fin (2 ^ μ + 2 ^ μ) => v (Fin.cast (pow_succ_two μ).symm i))

private theorem commitV_foldPow (cm : K1 →ₗ[F] Msg1 →ₗ[F] M) {μ : ℕ} (s : F)
    (ck : Fin (2 ^ (μ + 1)) → K1) (msg : Fin (2 ^ μ) → Msg1) :
    commitV cm (foldPow (K1 := K1) μ s ck) msg =
      commitV cm ck (fun i => embed s msg (Fin.cast (pow_succ_two μ) i)) := by
  unfold foldPow
  rw [commitV_foldMsg]
  simpa using commitV_reindex (pow_succ_two μ).symm cm ck
    (fun i => embed s msg (Fin.cast (pow_succ_two μ) i))

private theorem ipm_reindex {n n' : ℕ} (hnn : n = n')
    (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv) (a : Fin n' → Msg1) (b : Fin n' → Msg2) :
    ipm ip (fun i : Fin n => a (Fin.cast hnn i)) (fun i : Fin n => b (Fin.cast hnn i)) =
      ipm ip a b := by
  subst hnn
  rfl

private theorem binding_reindex {n n' : ℕ} (hnn : n = n') (cm : K1 →ₗ[F] Msg1 →ₗ[F] M)
    (ck : Fin n' → K1) (hbind : PairingCommitmentBinding cm ck) :
    PairingCommitmentBinding cm (fun i : Fin n => ck (Fin.cast hnn i)) := by
  intro w1 w2 h
  subst hnn
  exact hbind h

private theorem binding_foldPow (cm : K1 →ₗ[F] Msg1 →ₗ[F] M) {μ : ℕ} (s : F)
    (ck : Fin (2 ^ (μ + 1)) → K1) (hbind : PairingCommitmentBinding cm ck) :
    PairingCommitmentBinding cm (foldPow (K1 := K1) μ s ck) := by
  unfold foldPow
  exact binding_foldMsg cm s
    (fun i : Fin (2 ^ μ + 2 ^ μ) => ck (Fin.cast (pow_succ_two μ).symm i))
    (binding_reindex (K1 := K1) (Msg1 := Msg1) (M := M) (pow_succ_two μ).symm cm ck hbind)

/-- Verifier commitment fold `c•L + Com + c⁻¹•R`.
    Spec `gipa.verifier-folding`. -/
def foldCom (c : F) (L Com R : M) : M :=
  c • L + Com + c⁻¹ • R

/-- Extracted GIPA input relation at one recursive size.
    Spec `gipa.input-relation`, `tipp-mipp.gipa`. -/
def InputRelation (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ μ) → K1) (ck_b : Fin (2 ^ μ) → K2)
    (pub : Fin (2 ^ μ) → P) (ComA ComB ComT : M) : Prop :=
  ∃ a b,
    ComA = commitV cmA ck_a a ∧
    ComB = commitV cmB ck_b b ∧
    ComT = cmT (ipm ip a (fun i => (b i, pub i)))

/-- Accepting transcript tree for GIPA, with four-way rewinding at each round.
    The top challenge peels the highest remaining bit, matching the transcript
    order consumed by U3. Spec `gipa.verifier-folding`, `tipp-mipp.gipa`. -/
inductive AcceptTree (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv) :
    (μ : ℕ) → (ck_a : Fin (2 ^ μ) → K1) → (ck_b : Fin (2 ^ μ) → K2) →
      (pub : Fin (2 ^ μ) → P) → (ComA ComB ComT : M) → Prop
  | base {ck_a : Fin (2 ^ 0) → K1} {ck_b : Fin (2 ^ 0) → K2} {ComA ComB ComT : M}
      {pub : Fin (2 ^ 0) → P}
      (a0 : Msg1) (b0 : Msg2)
      (hA : ComA = cmA (ck_a 0) a0)
      (hB : ComB = cmB (ck_b 0) b0)
      (hT : ComT = cmT (ip a0 (b0, pub 0))) :
      AcceptTree cmA cmB cmT ip 0 ck_a ck_b pub ComA ComB ComT
  | node {μ : ℕ} {ck_a : Fin (2 ^ (μ + 1)) → K1} {ck_b : Fin (2 ^ (μ + 1)) → K2}
      {pub : Fin (2 ^ (μ + 1)) → P} {ComA ComB ComT : M}
      (LA RA LB RB LT RT : M) (c : Fin 4 → F)
      (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
      (child : ∀ k, AcceptTree cmA cmB cmT ip μ
        (foldPow (K1 := K1) μ (c k) ck_a)
        (foldPow (K1 := K2) μ (c k)⁻¹ ck_b)
        (foldPow (K1 := P) μ (c k) pub)
        (foldCom (c k)⁻¹ LA ComA RA)
        (foldCom (c k)⁻¹ LB ComB RB)
        (foldCom (c k)⁻¹ LT ComT RT)) :
      AcceptTree cmA cmB cmT ip (μ + 1) ck_a ck_b pub ComA ComB ComT

/-- One-round extraction surface. Spec `gipa.round-folding`,
    `gipa.verifier-folding`, `gipa.input-relation`.

    Given four accepting folded children at distinct nonzero challenges, this is
    the extraction step: the child openings are consumed to recover parent
    openings. The proof follows DESIGN §U2.4(a-f): rewrite folded commitments
    with `commitV_foldMsg`, solve the Laurent message-space systems, use
    binding to pin each child vector equation, collapse the half-projections by
    Laurent vanishing, pin the T lane, and assemble the parent openings. -/
theorem round_extract (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ (μ + 1)) → K1) (ck_b : Fin (2 ^ (μ + 1)) → K2)
    (pub : Fin (2 ^ (μ + 1)) → P)
    (ComA ComB ComT LA RA LB RB LT RT : M)
    (c : Fin 4 → F) (hinj : Function.Injective c) (hnz : ∀ k, c k ≠ 0)
    (hbindA : PairingCommitmentBinding cmA ck_a)
    (hbindB : PairingCommitmentBinding cmB ck_b)
    (hchild : ∀ k, InputRelation cmA cmB cmT ip
      (foldPow (K1 := K1) μ (c k)⁻¹ ck_a)
      (foldPow (K1 := K2) μ (c k) ck_b)
      (foldPow (K1 := P) μ (c k)⁻¹ pub)
      (foldCom (c k) LA ComA RA)
      (foldCom (c k) LB ComB RB)
      (foldCom (c k) LT ComT RT)) :
    InputRelation cmA cmB cmT ip ck_a ck_b pub ComA ComB ComT := by
  classical
  -- The child openings are intentionally destructed here; the parent relation is
  -- not a tree field. The remaining proof obligation is the DESIGN §U2.4
  -- Laurent/binding extraction chain over these four openings.
  choose aChild bChild hAChild hBChild hTChild using hchild
  let c3 : Fin 3 → F := fun i => c i.castSucc
  have hinj3 : Function.Injective c3 := by
    intro i j hij
    apply Fin.castSucc_injective
    exact hinj hij
  have hnz3 : ∀ i, c3 i ≠ 0 := fun i => hnz i.castSucc
  let zA : Fin 4 → Fin (2 ^ (μ + 1)) → Msg1 := fun k i =>
    embed (c k)⁻¹ (aChild k) (Fin.cast (pow_succ_two μ) i)
  let zB : Fin 4 → Fin (2 ^ (μ + 1)) → Msg2 := fun k i =>
    embed (c k) (bChild k) (Fin.cast (pow_succ_two μ) i)
  have hAroot : ∀ k, foldCom (c k) LA ComA RA = commitV cmA ck_a (zA k) := by
    intro k
    rw [hAChild k]
    exact commitV_foldPow cmA (c k)⁻¹ ck_a (aChild k)
  have hBroot : ∀ k, foldCom (c k) LB ComB RB = commitV cmB ck_b (zB k) := by
    intro k
    rw [hBChild k]
    exact commitV_foldPow cmB (c k) ck_b (bChild k)

  obtain ⟨lA, a, rA, hAinterp⟩ :=
    laurent_interpolate hinj3 hnz3 (fun j => zA j.castSucc)
  obtain ⟨lB, b, rB, hBinterp⟩ :=
    laurent_interpolate hinj3 hnz3 (fun j => zB j.castSucc)
  let pubSplit : Fin (2 ^ μ + 2 ^ μ) → P :=
    fun i => pub (Fin.cast (pow_succ_two μ).symm i)
  let zPub : Fin 4 → Fin (2 ^ (μ + 1)) → P := fun k i =>
    embed (c k) (foldMsg (c k)⁻¹ pubSplit) (Fin.cast (pow_succ_two μ) i)
  let lPub : Fin (2 ^ (μ + 1)) → P := fun i =>
    foldLaurentL pubSplit (Fin.cast (pow_succ_two μ) i)
  let rPub : Fin (2 ^ (μ + 1)) → P := fun i =>
    foldLaurentR pubSplit (Fin.cast (pow_succ_two μ) i)
  obtain ⟨lPub', pub', rPub', hPubInterp⟩ :=
    laurent_interpolate hinj3 hnz3 (fun j => zPub j.castSucc)
  have hPubKnown : ∀ j, c3 j • lPub + pub + (c3 j)⁻¹ • rPub = zPub j.castSucc := by
    intro j
    funext i
    have h := congrFun (embed_foldMsg_laurent (c3 j) (hnz3 j) pubSplit)
      (Fin.cast (pow_succ_two μ) i)
    simpa [c3, zPub, lPub, rPub, pubSplit] using h.symm
  have hPubMiddle : pub' = pub :=
    (laurent_interpolate_unique hinj3 hnz3 (fun j => zPub j.castSucc)
      lPub' pub' rPub' lPub pub rPub hPubInterp hPubKnown).2.1
  have hAcoeff : LA = commitV cmA ck_a lA ∧ ComA = commitV cmA ck_a a ∧
      RA = commitV cmA ck_a rA := by
    apply laurent_unique hinj3 hnz3
    intro j
    calc
      c3 j • LA + ComA + (c3 j)⁻¹ • RA = commitV cmA ck_a (zA j.castSucc) :=
        hAroot j.castSucc
      _ = commitV cmA ck_a (c3 j • lA + a + (c3 j)⁻¹ • rA) := by
        rw [hAinterp j]
      _ = c3 j • commitV cmA ck_a lA + commitV cmA ck_a a +
          (c3 j)⁻¹ • commitV cmA ck_a rA := by
        rw [commitV_add, commitV_add, commitV_smul, commitV_smul]
  have hBcoeff : LB = commitV cmB ck_b lB ∧ ComB = commitV cmB ck_b b ∧
      RB = commitV cmB ck_b rB := by
    apply laurent_unique hinj3 hnz3
    intro j
    calc
      c3 j • LB + ComB + (c3 j)⁻¹ • RB = commitV cmB ck_b (zB j.castSucc) :=
        hBroot j.castSucc
      _ = commitV cmB ck_b (c3 j • lB + b + (c3 j)⁻¹ • rB) := by
        rw [hBinterp j]
      _ = c3 j • commitV cmB ck_b lB + commitV cmB ck_b b +
          (c3 j)⁻¹ • commitV cmB ck_b rB := by
        rw [commitV_add, commitV_add, commitV_smul, commitV_smul]
  obtain ⟨hLA, hComA, hRA⟩ := hAcoeff
  obtain ⟨hLB, hComB, hRB⟩ := hBcoeff
  have hmsgA : ∀ k, zA k = c k • lA + a + (c k)⁻¹ • rA := by
    intro k
    apply hbindA
    change commitV cmA ck_a (zA k) = commitV cmA ck_a (c k • lA + a + (c k)⁻¹ • rA)
    rw [← hAroot k, foldCom, hLA, hComA, hRA]
    rw [commitV_add, commitV_add, commitV_smul, commitV_smul]
  have hmsgB : ∀ k, zB k = c k • lB + b + (c k)⁻¹ • rB := by
    intro k
    apply hbindB
    change commitV cmB ck_b (zB k) = commitV cmB ck_b (c k • lB + b + (c k)⁻¹ • rB)
    rw [← hBroot k, foldCom, hLB, hComB, hRB]
    rw [commitV_add, commitV_add, commitV_smul, commitV_smul]

  let lowerA := fun (v : Fin (2 ^ (μ + 1)) → Msg1) (i : Fin (2 ^ μ)) =>
    v (Fin.cast (pow_succ_two μ).symm (Fin.castAdd (2 ^ μ) i))
  let upperA := fun (v : Fin (2 ^ (μ + 1)) → Msg1) (i : Fin (2 ^ μ)) =>
    v (Fin.cast (pow_succ_two μ).symm (Fin.natAdd (2 ^ μ) i))
  let lowerB := fun (v : Fin (2 ^ (μ + 1)) → Msg2) (i : Fin (2 ^ μ)) =>
    v (Fin.cast (pow_succ_two μ).symm (Fin.castAdd (2 ^ μ) i))
  let upperB := fun (v : Fin (2 ^ (μ + 1)) → Msg2) (i : Fin (2 ^ μ)) =>
    v (Fin.cast (pow_succ_two μ).symm (Fin.natAdd (2 ^ μ) i))
  have hAlower : ∀ k i, aChild k i = c k • lowerA lA i + lowerA a i +
      (c k)⁻¹ • lowerA rA i := by
    intro k i
    have h := congrFun (hmsgA k)
      (Fin.cast (pow_succ_two μ).symm (Fin.castAdd (2 ^ μ) i))
    simpa [zA, lowerA] using h
  have hAupper : ∀ k i, (c k)⁻¹ • aChild k i = c k • upperA lA i + upperA a i +
      (c k)⁻¹ • upperA rA i := by
    intro k i
    have h := congrFun (hmsgA k)
      (Fin.cast (pow_succ_two μ).symm (Fin.natAdd (2 ^ μ) i))
    change embed (c k)⁻¹ (aChild k)
      (Fin.cast (pow_succ_two μ) (Fin.cast (pow_succ_two μ).symm
        (Fin.natAdd (2 ^ μ) i))) = _ at h
    rw [show Fin.cast (pow_succ_two μ) (Fin.cast (pow_succ_two μ).symm
      (Fin.natAdd (2 ^ μ) i)) = Fin.natAdd (2 ^ μ) i by apply Fin.ext; rfl,
      embed_upper] at h
    simpa [upperA] using h
  have hBlower : ∀ k i, bChild k i = c k • lowerB lB i + lowerB b i +
      (c k)⁻¹ • lowerB rB i := by
    intro k i
    have h := congrFun (hmsgB k)
      (Fin.cast (pow_succ_two μ).symm (Fin.castAdd (2 ^ μ) i))
    simpa [zB, lowerB] using h
  have hBupper : ∀ k i, c k • bChild k i = c k • upperB lB i + upperB b i +
      (c k)⁻¹ • upperB rB i := by
    intro k i
    have h := congrFun (hmsgB k)
      (Fin.cast (pow_succ_two μ).symm (Fin.natAdd (2 ^ μ) i))
    change embed (c k) (bChild k)
      (Fin.cast (pow_succ_two μ) (Fin.cast (pow_succ_two μ).symm
        (Fin.natAdd (2 ^ μ) i))) = _ at h
    rw [show Fin.cast (pow_succ_two μ) (Fin.cast (pow_succ_two μ).symm
      (Fin.natAdd (2 ^ μ) i)) = Fin.natAdd (2 ^ μ) i by apply Fin.ext; rfl,
      embed_upper] at h
    simpa [upperB] using h

  have hAcubic : ∀ i,
      lowerA rA i = 0 ∧ lowerA a i - upperA rA i = 0 ∧
      lowerA lA i - upperA a i = 0 ∧ -upperA lA i = 0 := by
    intro i
    apply cubic_vanishing hinj
    intro k
    have hu0 := congrArg (fun x => c k • x) (hAupper k i)
    simp only [smul_add, smul_smul] at hu0
    rw [mul_inv_cancel₀ (hnz k), one_smul] at hu0
    have hu := congrArg (fun x => c k • x) hu0
    simp only [smul_add, smul_smul] at hu
    have hl := congrArg (fun x => c k • x) (hAlower k i)
    simp only [smul_add, smul_smul] at hl
    rw [mul_inv_cancel₀ (hnz k), one_smul] at hl
    rw [pow_two, pow_three]
    calc
      lowerA rA i + c k • (lowerA a i - upperA rA i) +
          (c k * c k) • (lowerA lA i - upperA a i) +
          (c k * (c k * c k)) • -upperA lA i =
        ((c k * c k) • lowerA lA i + c k • lowerA a i + lowerA rA i) -
        ((c k * (c k * c k)) • upperA lA i +
          (c k * c k) • upperA a i + (c k * 1) • upperA rA i) := by module
      _ = 0 := sub_eq_zero.mpr (hl.symm.trans hu)
  have hBcubic : ∀ i,
      -upperB rB i = 0 ∧ lowerB rB i - upperB b i = 0 ∧
      lowerB b i - upperB lB i = 0 ∧ lowerB lB i = 0 := by
    intro i
    apply cubic_vanishing hinj
    intro k
    have hl0 := congrArg (fun x => c k • x) (hBlower k i)
    simp only [smul_add, smul_smul] at hl0
    rw [mul_inv_cancel₀ (hnz k), one_smul] at hl0
    have hl := congrArg (fun x => c k • x) hl0
    simp only [smul_add, smul_smul] at hl
    have hu := congrArg (fun x => c k • x) (hBupper k i)
    simp only [smul_add, smul_smul] at hu
    rw [mul_inv_cancel₀ (hnz k), one_smul] at hu
    rw [pow_two, pow_three]
    calc
      -upperB rB i + c k • (lowerB rB i - upperB b i) +
          (c k * c k) • (lowerB b i - upperB lB i) +
          (c k * (c k * c k)) • lowerB lB i =
        ((c k * (c k * c k)) • lowerB lB i +
          (c k * c k) • lowerB b i + c k • lowerB rB i) -
        ((c k * c k) • upperB lB i + c k • upperB b i + upperB rB i) := by module
      _ = 0 := sub_eq_zero.mpr (hl.symm.trans hu)
  have hfoldA : ∀ k, aChild k = foldMsg (c k)
      (fun i => a (Fin.cast (pow_succ_two μ).symm i)) := by
    intro k
    funext i
    have hl := hAlower k i
    obtain ⟨hr0, _har, hla, _hlu⟩ := hAcubic i
    simp only [sub_eq_zero] at hla
    change aChild k i = c k • upperA a i + lowerA a i
    rw [← hla, hl, hr0, smul_zero, add_zero]
  have hfoldB : ∀ k, bChild k = foldMsg (c k)⁻¹
      (fun i => b (Fin.cast (pow_succ_two μ).symm i)) := by
    intro k
    funext i
    have hl := hBlower k i
    obtain ⟨_hru, har, hbl, hll0⟩ := hBcubic i
    simp only [sub_eq_zero] at har hbl
    change bChild k i = (c k)⁻¹ • upperB b i + lowerB b i
    rw [hl, hll0, smul_zero, zero_add, har, hbl, add_comm]

  let aSplit : Fin (2 ^ μ + 2 ^ μ) → Msg1 :=
    fun i => a (Fin.cast (pow_succ_two μ).symm i)
  let bSplit : Fin (2 ^ μ + 2 ^ μ) → Msg2 :=
    fun i => b (Fin.cast (pow_succ_two μ).symm i)
  let bpSplit : Fin (2 ^ μ + 2 ^ μ) → Msg2 × P :=
    fun i => (bSplit i, pub' (Fin.cast (pow_succ_two μ).symm i))
  let tL := ipm ip (fun i => aSplit (Fin.natAdd (2 ^ μ) i))
    (fun i => bpSplit (Fin.castAdd (2 ^ μ) i))
  let tM := ipm ip aSplit bpSplit
  let tR := ipm ip (fun i => aSplit (Fin.castAdd (2 ^ μ) i))
    (fun i => bpSplit (Fin.natAdd (2 ^ μ) i))
  have hfoldBP : ∀ k,
      (fun i => (bChild k i, foldPow (K1 := P) μ (c k)⁻¹ pub i)) =
        foldMsg (c k)⁻¹ bpSplit := by
    intro k
    funext i
    have hb := congrFun (hfoldB k) i
    ext
    · exact hb
    · simp only [bpSplit]
      rw [hPubMiddle]
      simp [foldPow, foldMsg]
  have hTlaurent : ∀ k, c k • LT + ComT + (c k)⁻¹ • RT =
      c k • cmT tL + cmT tM + (c k)⁻¹ • cmT tR := by
    intro k
    calc
      _ = cmT (ipm ip (aChild k)
          (fun i => (bChild k i, foldPow (K1 := P) μ (c k)⁻¹ pub i))) := hTChild k
      _ = cmT (ipm ip (foldMsg (c k) aSplit) (foldMsg (c k)⁻¹ bpSplit)) := by
        rw [hfoldA k, hfoldBP k]
      _ = cmT (c k • tL + tM + (c k)⁻¹ • tR) := by
        rw [ipm_foldMsg ip (c k) (hnz k) aSplit bpSplit]
      _ = _ := by simp only [map_add, map_smul]
  have hTcoeff := laurent_unique hinj3 hnz3 LT ComT RT (cmT tL) (cmT tM) (cmT tR)
    (fun j => hTlaurent j.castSucc)
  refine ⟨a, b, hComA, hComB, ?_⟩
  rw [hTcoeff.2.1]
  have hmid : ipm ip a (fun i => (b i, pub' i)) = ipm ip a (fun i => (b i, pub i)) := by
    rw [hPubMiddle]
  rw [← hmid]
  exact congrArg cmT
    (ipm_reindex (pow_succ_two μ).symm ip a (fun i => (b i, pub' i)))

/-- GIPA extraction by induction over `AcceptTree`.
    Spec `gipa.input-relation`, `tipp-mipp.gipa`. -/
theorem gipa_extract (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv) {μ : ℕ}
    (ck_a : Fin (2 ^ μ) → K1) (ck_b : Fin (2 ^ μ) → K2)
    (pub : Fin (2 ^ μ) → P) (ComA ComB ComT : M)
    (hbindA : PairingCommitmentBinding cmA ck_a)
    (hbindB : PairingCommitmentBinding cmB ck_b)
    (hacc : AcceptTree cmA cmB cmT ip μ ck_a ck_b pub ComA ComB ComT) :
    ∃ a b,
      ComA = commitV cmA ck_a a ∧
      ComB = commitV cmB ck_b b ∧
      ComT = cmT (ipm ip a (fun i => (b i, pub i))) := by
  revert hbindA hbindB
  induction hacc with
  | base a0 b0 hA hB hT =>
      intro _hbindA _hbindB
      refine ⟨fun _ => a0, fun _ => b0, ?_, ?_, ?_⟩
      · simpa [commitV] using hA
      · simpa [commitV] using hB
      · simpa [ipm] using hT
  | node LA RA LB RB LT RT c hinj hnz child ih =>
      intro hbindA hbindB
      let q : Fin 4 → F := fun k => (c k)⁻¹
      have hqinj : Function.Injective q := by
        intro i j hij
        apply hinj
        have := congrArg Inv.inv hij
        simpa [q] using this
      have hqnz : ∀ k, q k ≠ 0 := fun k => inv_ne_zero (hnz k)
      exact round_extract cmA cmB cmT ip _ _ _ _ _ _ LA RA LB RB LT RT
        q hqinj hqnz hbindA hbindB
        (fun k => by
          obtain ⟨a, b, ha, hb, ht⟩ := ih k
            (binding_foldPow (K1 := K1) (Msg1 := Msg1) (M := M) cmA (c k) _ hbindA)
            (binding_foldPow (K1 := K2) (Msg1 := Msg2) (M := M) cmB (c k)⁻¹ _ hbindB)
          refine ⟨a, b, ?_, ?_, ?_⟩
          · simpa [q] using ha
          · simpa [q] using hb
          · simpa [q] using ht)

end Extract

/-! ### U2 ↔ U3 bridge (DESIGN §U2.6) -/

section TranscriptBridge

variable {F : Type*} [Field F]
variable {G : Type*} [AddCommGroup G] [Module F G]

private theorem pow_succ_two_bridge (μ : ℕ) : 2 ^ (μ + 1) = 2 ^ μ + 2 ^ μ := by
  rw [pow_succ, Nat.mul_two]

/-- One highest-bit-first fold of a power-of-two key vector. -/
def foldKeyRound {μ : ℕ} (s : F) (v : Fin (2 ^ (μ + 1)) → G) : Fin (2 ^ μ) → G :=
  foldMsg (m := 2 ^ μ) s
    (fun i : Fin (2 ^ μ + 2 ^ μ) => v (Fin.cast (pow_succ_two_bridge μ).symm i))

/-- Iterated GIPA key fold, peeling the highest remaining transcript bit first. -/
def foldKey : {μ : ℕ} → (Fin μ → F) → (Fin (2 ^ μ) → G) → Fin 1 → G
  | 0, _x, srs => srs
  | μ + 1, x, srs =>
      foldKey (μ := μ) (fun j => x (Fin.castSucc j))
        (foldKeyRound (μ := μ) (x ⟨μ, Nat.lt_succ_self μ⟩) srs)

private lemma msm_cast {n n' : ℕ} (h : n = n') (coeff : Fin n' → F) (srs : Fin n' → G) :
    msm (fun i : Fin n => coeff (Fin.cast h i)) (fun i : Fin n => srs (Fin.cast h i))
      = msm coeff srs := by
  subst h
  rfl

private lemma msm_cast_domain {n n' : ℕ} (h : n = n') (coeff : Fin n → F) (srs : Fin n' → G) :
    msm coeff (fun i : Fin n => srs (Fin.cast h i))
      = msm (fun i : Fin n' => coeff (Fin.cast h.symm i)) srs := by
  subst h
  rfl

private lemma msm_foldMsg {m : ℕ} (s : F) (coeff : Fin m → F) (v : Fin (m + m) → G) :
    msm coeff (foldMsg s v) = msm (embed s coeff) v := by
  simp only [msm, foldMsg]
  rw [Fin.sum_univ_add]
  simp only [embed_lower, embed_upper, smul_add, smul_smul, Finset.sum_add_distrib]
  simp [smul_eq_mul, mul_comm, add_comm]

private def bitProdBridge (a : ℕ → F) (μ i : ℕ) : F :=
  ∏ j ∈ Finset.range μ, if i.testBit j then a j else 1

private lemma bitProdBridge_succ_lt (a : ℕ → F) {μ i : ℕ} (hi : i < 2 ^ μ) :
    bitProdBridge a (μ + 1) i = bitProdBridge a μ i := by
  have hlast : (if i.testBit μ then a μ else 1) = 1 := by
    rw [Nat.testBit_lt_two_pow hi]; rfl
  unfold bitProdBridge
  rw [Finset.prod_range_succ, hlast, mul_one]

private lemma bitProdBridge_succ_add (a : ℕ → F) {μ i : ℕ} (hi : i < 2 ^ μ) :
    bitProdBridge a (μ + 1) (2 ^ μ + i) = bitProdBridge a μ i * a μ := by
  have hlast : (if (2 ^ μ + i).testBit μ then a μ else 1) = a μ := by
    rw [Nat.testBit_two_pow_add_eq, Nat.testBit_lt_two_pow hi]; rfl
  unfold bitProdBridge
  rw [Finset.prod_range_succ, hlast]
  congr 1
  refine Finset.prod_congr rfl (fun j hj => ?_)
  rw [Nat.testBit_two_pow_add_gt (Finset.mem_range.mp hj) i]

private def adjChallengeBridge {μ : ℕ} (x : Fin μ → F) (rShift : F) (j : ℕ) : F :=
  (if h : j < μ then x ⟨j, h⟩ else 0) * rShift ^ (2 ^ j)

private lemma adjChallengeBridge_coe {μ : ℕ} (x : Fin μ → F) (rShift : F) (j : Fin μ) :
    adjChallengeBridge x rShift (j : ℕ) = x j * rShift ^ (2 ^ (j : ℕ)) := by
  rw [adjChallengeBridge, dif_pos j.isLt]

private lemma transcriptCoeffs_eq_bridge {μ : ℕ} (x : Fin μ → F) (rShift : F)
    (i : Fin (2 ^ μ)) :
    transcriptCoeffs x rShift i = bitProdBridge (adjChallengeBridge x rShift) μ (i : ℕ) := by
  unfold transcriptCoeffs bitProdBridge
  rw [← Fin.prod_univ_eq_prod_range
    (fun j => if (i : ℕ).testBit j then adjChallengeBridge x rShift j else 1)]
  refine Finset.prod_congr rfl (fun j _ => ?_)
  rw [adjChallengeBridge_coe]

private lemma bitProdBridge_castSucc_one {μ : ℕ} (x : Fin (μ + 1) → F) (i : ℕ) :
    bitProdBridge (adjChallengeBridge x 1) μ i
      = bitProdBridge (adjChallengeBridge (fun j : Fin μ => x (Fin.castSucc j)) 1) μ i := by
  unfold bitProdBridge
  refine Finset.prod_congr rfl (fun j hj => ?_)
  have hjlt : j < μ := Finset.mem_range.mp hj
  have hjlt' : j < μ + 1 := Nat.lt_trans hjlt (Nat.lt_succ_self μ)
  have hfin : (⟨j, hjlt'⟩ : Fin (μ + 1)) = Fin.castSucc (⟨j, hjlt⟩ : Fin μ) := by
    ext
    rfl
  cases hb : i.testBit j
  · simp
  · simp only [↓reduceIte]
    unfold adjChallengeBridge
    rw [dif_pos hjlt', dif_pos hjlt, hfin]

private lemma transcriptCoeffs_castSucc_one {μ : ℕ} (x : Fin (μ + 1) → F)
    (i : Fin (2 ^ μ)) :
    transcriptCoeffs x 1 (Fin.cast (pow_succ_two_bridge μ).symm (Fin.castAdd (2 ^ μ) i))
      = transcriptCoeffs (fun j : Fin μ => x (Fin.castSucc j)) 1 i := by
  rw [transcriptCoeffs_eq_bridge, transcriptCoeffs_eq_bridge]
  change bitProdBridge (adjChallengeBridge x 1) (μ + 1) (i : ℕ)
    = bitProdBridge (adjChallengeBridge (fun j : Fin μ => x (Fin.castSucc j)) 1) μ (i : ℕ)
  rw [bitProdBridge_succ_lt _ i.isLt]
  exact bitProdBridge_castSucc_one x (i : ℕ)

private lemma transcriptCoeffs_natAdd_one {μ : ℕ} (x : Fin (μ + 1) → F)
    (i : Fin (2 ^ μ)) :
    transcriptCoeffs x 1 (Fin.cast (pow_succ_two_bridge μ).symm (Fin.natAdd (2 ^ μ) i))
      = x ⟨μ, Nat.lt_succ_self μ⟩ * transcriptCoeffs (fun j : Fin μ => x (Fin.castSucc j)) 1 i := by
  rw [transcriptCoeffs_eq_bridge, transcriptCoeffs_eq_bridge]
  change bitProdBridge (adjChallengeBridge x 1) (μ + 1) (2 ^ μ + (i : ℕ))
    = x ⟨μ, Nat.lt_succ_self μ⟩
      * bitProdBridge (adjChallengeBridge (fun j : Fin μ => x (Fin.castSucc j)) 1) μ (i : ℕ)
  rw [bitProdBridge_succ_add _ i.isLt]
  rw [bitProdBridge_castSucc_one x (i : ℕ)]
  unfold adjChallengeBridge
  rw [dif_pos (Nat.lt_succ_self μ)]
  simp [mul_comm]

private lemma msm_foldKeyRound {μ : ℕ} (s : F) (coeff : Fin (2 ^ μ) → F)
    (v : Fin (2 ^ (μ + 1)) → G) :
    msm coeff (foldKeyRound s v)
      = msm (fun i : Fin (2 ^ (μ + 1)) =>
          embed s coeff (Fin.cast (pow_succ_two_bridge μ) i)) v := by
  unfold foldKeyRound
  rw [msm_foldMsg]
  exact msm_cast_domain (pow_succ_two_bridge μ).symm
    (embed s coeff)
    v

/-- Highest-bit-first GIPA final key bridge to U3 transcript coefficients.
    Spec `gipa.round-folding`, `tipp-mipp.gipa`. -/
theorem foldKey_transcriptCoeffs {μ : ℕ} (x : Fin μ → F) (srs : Fin (2 ^ μ) → G) :
    foldKey x srs = fun _ : Fin 1 => msm (transcriptCoeffs x 1) srs := by
  induction μ with
  | zero =>
      funext i
      fin_cases i
      simp [foldKey, msm, transcriptCoeffs]
  | succ μ ih =>
      funext i
      fin_cases i
      simp only [foldKey]
      rw [ih]
      rw [msm_foldKeyRound]
      apply congrArg₂ msm
      · funext j
        have hj : j = Fin.cast (pow_succ_two_bridge μ).symm
            (Fin.cast (pow_succ_two_bridge μ) j) := by
          simp
        rw [hj]
        refine Fin.addCases ?_ ?_ (Fin.cast (pow_succ_two_bridge μ) j)
        · intro k
          rw [embed_lower]
          exact (transcriptCoeffs_castSucc_one x k).symm
        · intro k
          rw [embed_upper]
          rw [smul_eq_mul]
          exact (transcriptCoeffs_natAdd_one x k).symm
      · rfl

end TranscriptBridge

end Ipp
