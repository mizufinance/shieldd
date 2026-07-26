import ShielddGnarkFormal.CanonicalFqBitsChainBuild
import ShielddGnarkFormal.ChoiceFreeZMod

/-!
Keystone for the deployed canonical-bits compose: `chainK bits k 253 1` from the
per-rung slice obligations, via ONE downward induction (no 253-unrolled walk).
The accumulator entering rung `m` is the product of the rung factors above it
(`bits[j]!` at `pmBit j = true` positions, `1 - bits[j]!` at the `false`
positions). At each `pmBit = false` rung the slice supplies `acc(m+1)·bits[m]! = 0`.
-/

namespace Shieldd.GnarkFormal.Extracted.CanonicalFqBits

open scoped BigOperators
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

variable [Fact (Nat.Prime Order)]

/-- Booleanity rows → `is_vector_binary`, over the canonical-bits field (so the
deployed block discharge does not depend on another module's `F`/`Order`). -/
theorem isVectorBinary_of_booleanity (bits : List.Vector F 253)
    (hbit : ∀ (i : ℕ) (h : i < 253), bits[i]! * (1 - bits[i]!) = 0) :
    is_vector_binary bits := by
  intro a ha
  rcases List.mem_iff_getElem.mp (by simpa using ha) with ⟨i, hi, rfl⟩
  have hlt : i < 253 := by simpa using hi
  have hb := hbit i hlt
  rw [getElem!_pos _ i (by simpa using hlt), List.Vector.getElem_def] at hb
  rcases mul_eq_zero.mp hb with h | h
  · exact Or.inl h
  · exact Or.inr (by linear_combination -h)

section ChoiceFreeChain

attribute [-instance] ZMod.instField
local instance : CommRing F := ZMod.commRing _

/-- Rung factor: the multiplier applied to the accumulator at index `j`. -/
def chainFactor (bits : List.Vector F 253) (j : ℕ) : F :=
  if pmBit j then bits[j]! else 1 - bits[j]!

/-- Product of `count` consecutive factors beginning at `start`. -/
def productFrom (factor : ℕ → F) (start : ℕ) : ℕ → F
  | 0 => 1
  | count + 1 => factor start * productFrom factor (start + 1) count

/-- Accumulator entering rung `m` (product of factors at indices `m..252`). -/
def chainAcc (bits : List.Vector F 253) (m : ℕ) : F :=
  productFrom (chainFactor bits) m (253 - m)

theorem chainAcc_top (bits : List.Vector F 253) : chainAcc bits 253 = 1 := by
  simp [chainAcc, productFrom]

theorem chainAcc_succ (bits : List.Vector F 253) {m : ℕ} (h : m < 253) :
    chainAcc bits m = chainFactor bits m * chainAcc bits (m + 1) := by
  unfold chainAcc
  rw [show 253 - m = (253 - (m + 1)) + 1 by omega]
  rfl

/-- Downward induction: the counter chain holds at fuel `m` with accumulator
`chainAcc bits m`, given the continuation and every `pmBit = false` obligation
below `m`. -/
theorem chainK_acc (bits : List.Vector F 253) (k : List.Vector F 253 → Prop)
    (hk : k bits) :
    ∀ m, m ≤ 253 →
      (∀ j, j < m → pmBit j = false → chainAcc bits (j + 1) * bits[j]! = 0) →
        chainK bits k m (chainAcc bits m) := by
  intro m
  induction m with
  | zero => intro _ _; exact chainK_intro_zero bits k _ hk
  | succ m ih =>
    intro hm hobl
    have hmlt : m < 253 := Nat.lt_of_succ_le hm
    have ihm := ih (Nat.le_of_succ_le hm)
      (fun j hj => hobl j (Nat.lt_succ_of_lt hj))
    have hsplit : chainAcc bits m = chainFactor bits m * chainAcc bits (m + 1) :=
      chainAcc_succ bits hmlt
    cases hb : pmBit m with
    | true =>
      apply chainK_intro_true bits k m (chainAcc bits (m + 1)) hb
      rw [chainFactor, hb, if_pos rfl] at hsplit
      rw [hsplit, mul_comm] at ihm
      exact ihm
    | false =>
      apply chainK_intro_false bits k m (chainAcc bits (m + 1)) hb
      · exact hobl m (Nat.lt_succ_self m) hb
      · rw [chainFactor, hb, if_neg (by simp)] at hsplit
        rw [hsplit, mul_comm] at ihm
        exact ihm

/-- Deployed comparison row → chainK obligation. The slice emits, at each
`pmBit = false` rung, `bit * (1 - bit - flag) = 0` where `flag` is the deployed
prefix-equal accumulator wire. With booleanity (`bit² = bit`) this collapses to
`flag * bit = 0`; callers supply `flag = chainAcc bits (j+1)` to land the
`chainK_of_obligations` premise. -/
theorem comparison_row_obligation (bit flag : F)
    (hbool : bit * bit = bit) (hrow : bit * (1 - bit - flag) = 0) :
    flag * bit = 0 := by
  linear_combination -hrow - hbool

/-- Flag-threading: a deployed accumulator wire family `flag` that starts at `1`
and follows the rung-factor recurrence equals `chainAcc` everywhere. The generator
supplies `flag m` = the deployed prefix-equal wire and discharges `hstep` from the
flag-update rows (at `pmBit = false` rungs `hstep` is `accum_fixed_of_annihilates`
applied to the in-run obligation; at `pmBit = true` rungs it is the deployed
multiply row). Lets callers rewrite `flag_wire` to `chainAcc bits (j+1)`. -/
theorem flag_eq_chainAcc (bits : List.Vector F 253) (flag : ℕ → F)
    (htop : flag 253 = 1)
    (hstep : ∀ m, m < 253 → flag m = chainFactor bits m * flag (m + 1)) :
    ∀ d, d ≤ 253 → flag (253 - d) = chainAcc bits (253 - d) := by
  intro d
  induction d with
  | zero => intro _; simpa using (htop.trans (chainAcc_top bits).symm)
  | succ d ih =>
    intro hd
    have hdle : d ≤ 253 := Nat.le_of_succ_le hd
    have hm : 253 - (d + 1) < 253 := by omega
    have hsucc : 253 - (d + 1) + 1 = 253 - d := by omega
    rw [hstep _ hm, hsucc, ih hdle, chainAcc_succ bits hm, hsucc]

/-- Per-block obligation assembly: from the deployed flag-thread (`htop`/`hstep`),
the per-rung comparison rows (`hcmp`) and booleanity (`hbool`), produce exactly the
`hobl` premise `canonicalFqBitsGadget_block` wants. Collapses the generator's per-block
work to supplying the deployed row functions. -/
theorem block_hobl_of_rows (bits : List.Vector F 253) (flag : ℕ → F)
    (htop : flag 253 = 1)
    (hstep : ∀ m, m < 253 → flag m = chainFactor bits m * flag (m + 1))
    (hcmp : ∀ j, j < 253 → pmBit j = false → bits[j]! * (1 - bits[j]! - flag (j + 1)) = 0)
    (hbool : ∀ j, j < 253 → bits[j]! * bits[j]! = bits[j]!) :
    ∀ j, j < 253 → pmBit j = false → chainAcc bits (j + 1) * bits[j]! = 0 := by
  intro j hj hpm
  have hflag : flag (j + 1) = chainAcc bits (j + 1) := by
    have h := flag_eq_chainAcc bits flag htop hstep (253 - (j + 1)) (by omega)
    rwa [Nat.sub_sub_self (by omega)] at h
  rw [← hflag]
  exact comparison_row_obligation _ _ (hbool j hj) (hcmp j hj hpm)

/-! ### True-part thread (the actual deployed flag)

The deployed comparison accumulator is NOT `chainAcc`: the circuit threads a
left-fold over the `pmBit = true` positions only (`acc' = acc · bit`), staying
constant across `pmBit = false` runs. So the deployed flag wire equals the partial
product over true positions above `j`, `truePartAcc bits (j+1)`, never the full
`chainAcc` (which also carries `1 - bit` factors at false positions). The cmp+bool
rows still collapse to `flag · bit = 0`; we bridge `truePartAcc · bit = 0` to the
`chainAcc · bit = 0` obligation via the product split below. -/

/-- Rung factor of the deployed thread: `bits[j]!` at `pmBit`-true, else `1`. -/
def trueFactor (bits : List.Vector F 253) (j : ℕ) : F :=
  if pmBit j then bits[j]! else 1

/-- The complementary false-position factor: `1` at true, `1 - bits[j]!` at false. -/
def falseFactor (bits : List.Vector F 253) (j : ℕ) : F :=
  if pmBit j then 1 else 1 - bits[j]!

/-- Deployed accumulator entering rung `m` (true-position partial product). -/
def truePartAcc (bits : List.Vector F 253) (m : ℕ) : F :=
  productFrom (trueFactor bits) m (253 - m)

/-- Complementary accumulator over the false-position factors. -/
def falsePartAcc (bits : List.Vector F 253) (m : ℕ) : F :=
  productFrom (falseFactor bits) m (253 - m)

theorem truePartAcc_top (bits : List.Vector F 253) : truePartAcc bits 253 = 1 := by
  simp [truePartAcc, productFrom]

theorem truePartAcc_succ (bits : List.Vector F 253) {m : ℕ} (h : m < 253) :
    truePartAcc bits m = trueFactor bits m * truePartAcc bits (m + 1) := by
  unfold truePartAcc
  rw [show 253 - m = (253 - (m + 1)) + 1 by omega]
  rfl

theorem chainFactor_eq (bits : List.Vector F 253) (j : ℕ) :
    chainFactor bits j = trueFactor bits j * falseFactor bits j := by
  rw [chainFactor, trueFactor, falseFactor]
  cases pmBit j <;> simp

/-- A pointwise product factors into the product of each component. -/
theorem productFrom_mul (left right : ℕ → F) (start count : ℕ) :
    productFrom (fun j => left j * right j) start count =
      productFrom left start count * productFrom right start count := by
  induction count generalizing start with
  | zero => simp [productFrom]
  | succ count ih =>
      simp only [productFrom]
      rw [ih]
      ring

/-- The full `chainAcc` factors through the deployed `truePartAcc`. -/
theorem chainAcc_eq_truePart (bits : List.Vector F 253) (m : ℕ) :
    chainAcc bits m = truePartAcc bits m * falsePartAcc bits m := by
  unfold chainAcc truePartAcc falsePartAcc
  rw [show chainFactor bits = fun j => trueFactor bits j * falseFactor bits j by
    funext j
    exact chainFactor_eq bits j]
  exact productFrom_mul (trueFactor bits) (falseFactor bits) m (253 - m)

/-- The deployed obligation `truePartAcc (j+1) · bit = 0` implies the `chainAcc`
obligation that `chainK_of_obligations` wants, because `chainAcc` carries
`truePartAcc` as a factor. -/
theorem chainAcc_obl_of_truePart (bits : List.Vector F 253) (j : ℕ)
    (h : truePartAcc bits (j + 1) * bits[j]! = 0) :
    chainAcc bits (j + 1) * bits[j]! = 0 := by
  rw [chainAcc_eq_truePart]
  calc
    (truePartAcc bits (j + 1) * falsePartAcc bits (j + 1)) * bits[j]! =
        falsePartAcc bits (j + 1) * (truePartAcc bits (j + 1) * bits[j]!) := by
          ring
    _ = 0 := by rw [h, mul_zero]

/-- Deployed flag-thread equals `truePartAcc` (copy of `flag_eq_chainAcc` over the
true-position factor). -/
theorem flag_eq_truePart (bits : List.Vector F 253) (flag : ℕ → F)
    (htop : flag 253 = 1)
    (hstep : ∀ m, m < 253 → flag m = trueFactor bits m * flag (m + 1)) :
    ∀ d, d ≤ 253 → flag (253 - d) = truePartAcc bits (253 - d) := by
  intro d
  induction d with
  | zero => intro _; simpa using (htop.trans (truePartAcc_top bits).symm)
  | succ d ih =>
    intro hd
    have hdle : d ≤ 253 := Nat.le_of_succ_le hd
    have hm : 253 - (d + 1) < 253 := by omega
    have hsucc : 253 - (d + 1) + 1 = 253 - d := by omega
    rw [hstep _ hm, hsucc, ih hdle, truePartAcc_succ bits hm, hsucc]

/-- Per-block obligation assembly from the deployed TRUE-position flag-thread.
`hstep` is the deployed multiply row at `pmBit`-true rungs and `rfl` (constant
wire) at `pmBit`-false rungs. -/
theorem block_hobl_of_truethread (bits : List.Vector F 253) (flag : ℕ → F)
    (htop : flag 253 = 1)
    (hstep : ∀ m, m < 253 → flag m = trueFactor bits m * flag (m + 1))
    (hcmp : ∀ j, j < 253 → pmBit j = false → bits[j]! * (1 - bits[j]! - flag (j + 1)) = 0)
    (hbool : ∀ j, j < 253 → bits[j]! * bits[j]! = bits[j]!) :
    ∀ j, j < 253 → pmBit j = false → chainAcc bits (j + 1) * bits[j]! = 0 := by
  intro j hj hpm
  have hflag : flag (j + 1) = truePartAcc bits (j + 1) := by
    have h := flag_eq_truePart bits flag htop hstep (253 - (j + 1)) (by omega)
    rwa [Nat.sub_sub_self (by omega)] at h
  apply chainAcc_obl_of_truePart
  rw [← hflag]
  exact comparison_row_obligation _ _ (hbool j hj) (hcmp j hj hpm)

/-- Corollary: the full counter chain from all 166 `pmBit = false` obligations. -/
theorem chainK_of_obligations (bits : List.Vector F 253) (k : List.Vector F 253 → Prop)
    (hk : k bits)
    (hobl : ∀ j, j < 253 → pmBit j = false → chainAcc bits (j + 1) * bits[j]! = 0) :
    chainK bits k 253 (1 : F) := by
  have := chainK_acc bits k hk 253 (le_refl _) (fun j hj => hobl j hj)
  rwa [chainAcc_top] at this

end ChoiceFreeChain

end Shieldd.GnarkFormal.Extracted.CanonicalFqBits
