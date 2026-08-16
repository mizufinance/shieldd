import Mathlib.Data.ZMod.Basic

/-!
# StructuredLC — a compact, reusable representation of extracted linear combinations

A ZK constraint row is a linear combination over witness wires:
`Σ_i coeff_i · rho(wire_i)`.  When the wires of a sub-sum form an arithmetic
progression (as they do for every accumulator rung in a fixed-base scalar
ladder), that sub-sum is fully described by four numbers — a coefficient, a
start index, a stride, and a count — instead of `count` separate terms.

`StructuredLC` captures a whole row in that compact form:

    constant  +  Σ (stride runs)  +  Σ (small residual terms)

The key property is that **evaluation is fuel-recursive**: peeling one term off a
run, or one entry off the residual/run lists, is a single definitional step
(`rfl`).  A per-rung soundness proof therefore relates rung `k` to rung `k+1`
with *one* reused step lemma (`StrideRun.sumAux_succ`, `eval_run_cons`,
`eval_residual_cons`) — never by unfolding a `k`-term flat sum.  That is what
turns the accumulator bridge from `O(k²)` (a length-`k` re-expansion per rung)
into `O(k)` (one constant-size peel per rung).

This module is intentionally field-generic and circuit-agnostic: the DTK
fixed-base ladder (stride 13) is one instantiation.  Any future extracted row
whose wires form arithmetic progressions reuses the same evaluator and lemmas.

Extraction is responsible for emitting a `StructuredLC` whose coefficient/wire
multiset is exact against the raw linear combination. That parity is checked in
the Rust extractor's unit tests, so Lean never re-expands the flat sum.
-/

namespace Shieldd.GnarkFormal

variable {F : Type*} [CommRing F]

/-- One arithmetic-progression run of wires:
`Σ_{i < count} coeff · rho(start + i · stride)`. -/
structure StrideRun (F : Type*) where
  coeff  : F
  start  : Nat
  stride : Nat
  count  : Nat

namespace StrideRun

/-- Fuel-recursive evaluation of the first `n` terms of a run over `rho`.
The recursion is on `n` (the fuel), so extending by one term is `rfl`. -/
def sumAux (rho : Nat → F) (start stride : Nat) : Nat → F
  | 0     => 0
  | n + 1 => sumAux rho start stride n + rho (start + n * stride)

/-- Evaluate a whole run: all `count` terms. -/
def eval (rho : Nat → F) (r : StrideRun F) : F :=
  r.coeff * sumAux rho r.start r.stride r.count

@[simp] theorem sumAux_zero (rho : Nat → F) (start stride : Nat) :
    sumAux rho start stride 0 = 0 := rfl

/-- The single reused step lemma: extending a run by one term appends exactly one
`rho(start + n·stride)` summand. This coefficientless sum is the shared opaque
atom used by rows with positive and negative coefficients. -/
@[simp] theorem sumAux_succ (rho : Nat → F) (start stride n : Nat) :
    sumAux rho start stride (n + 1)
      = sumAux rho start stride n + rho (start + n * stride) := rfl

/-- Split a run after `m` entries. Both sides stay symbolic in their counts, so
repartitioning extracted AP runs never expands the underlying wire sum. -/
theorem sumAux_add (rho : Nat → F) (start stride m n : Nat) :
    sumAux rho start stride (m + n) =
      sumAux rho start stride m +
        sumAux rho (start + m * stride) stride n := by
  induction n with
  | zero => simp only [Nat.add_zero, sumAux_zero, add_zero]
  | succ n ih =>
      rw [← Nat.add_assoc, sumAux_succ, sumAux_succ, ih]
      simp only [Nat.add_mul, Nat.add_assoc]
      ring

/--
Evaluate a run after a local-to-global wire seating as a sum over the exact
global wire list. This is the bridge used to prove circuit-segment seams even
when two independently extracted structured LCs group the same wires
differently.
-/
theorem sumAux_seated
    (rho : Nat → F) (seating : Nat → Nat) (start stride count : Nat) :
    sumAux (fun localWire => rho (seating localWire)) start stride count =
      (((List.range count).map
        (fun offset => rho (seating (start + offset * stride)))).sum) := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [sumAux_succ, List.range_succ, List.map_append, List.sum_append, ih]
      simp only [List.map_singleton, List.sum_singleton]

end StrideRun

/--
Permutation-invariance of an exact wire sum. Concrete seam certificates reduce
to a decidable permutation of wire IDs rather than a large symbolic ring
normalization.
-/
theorem wireSum_eq_of_perm
    (rho : Nat → F) {left right : List Nat} (h : left.Perm right) :
    (left.map rho).sum = (right.map rho).sum :=
  (h.map rho).sum_eq

theorem sumAux_pair_eq_of_perm
    (rho : Nat → F)
    (leftSeating rightSeating : Nat → Nat)
    (leftStart₁ leftStride₁ leftCount₁ : Nat)
    (leftStart₂ leftStride₂ leftCount₂ : Nat)
    (rightStart rightStride rightCount : Nat)
    (h :
      ((List.range leftCount₁).map
          (fun offset => leftSeating (leftStart₁ + offset * leftStride₁)) ++
        (List.range leftCount₂).map
          (fun offset => leftSeating (leftStart₂ + offset * leftStride₂))).Perm
        ((List.range rightCount).map
          (fun offset => rightSeating (rightStart + offset * rightStride)))) :
    StrideRun.sumAux (fun wire => rho (leftSeating wire))
          leftStart₁ leftStride₁ leftCount₁ +
        StrideRun.sumAux (fun wire => rho (leftSeating wire))
          leftStart₂ leftStride₂ leftCount₂ =
      StrideRun.sumAux (fun wire => rho (rightSeating wire))
        rightStart rightStride rightCount := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated,
    StrideRun.sumAux_seated]
  simpa only [List.map_append, List.sum_append, List.map_map,
    Function.comp_apply] using wireSum_eq_of_perm rho h

theorem sumAux_pair_residual_eq_of_perm
    (rho : Nat → F)
    (leftSeating rightSeating : Nat → Nat)
    (leftStart₁ leftStride₁ leftCount₁ : Nat)
    (leftStart₂ leftStride₂ leftCount₂ residual : Nat)
    (rightStart rightStride rightCount : Nat)
    (h :
      ((List.range leftCount₁).map
          (fun offset => leftSeating (leftStart₁ + offset * leftStride₁)) ++
        (List.range leftCount₂).map
          (fun offset => leftSeating (leftStart₂ + offset * leftStride₂)) ++
        [leftSeating residual]).Perm
        ((List.range rightCount).map
          (fun offset => rightSeating (rightStart + offset * rightStride)))) :
    StrideRun.sumAux (fun wire => rho (leftSeating wire))
          leftStart₁ leftStride₁ leftCount₁ +
        StrideRun.sumAux (fun wire => rho (leftSeating wire))
          leftStart₂ leftStride₂ leftCount₂ +
        rho (leftSeating residual) =
      StrideRun.sumAux (fun wire => rho (rightSeating wire))
        rightStart rightStride rightCount := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated,
    StrideRun.sumAux_seated]
  simpa only [List.map_append, List.sum_append, List.map_map,
    Function.comp_apply, List.map_singleton, List.sum_singleton] using
      wireSum_eq_of_perm rho h

theorem sumAux_pair_eq_pair_of_perm
    (rho : Nat → F)
    (leftSeating rightSeating : Nat → Nat)
    (leftStart₁ leftStride₁ leftCount₁ : Nat)
    (leftStart₂ leftStride₂ leftCount₂ : Nat)
    (rightStart₁ rightStride₁ rightCount₁ : Nat)
    (rightStart₂ rightStride₂ rightCount₂ : Nat)
    (h :
      ((List.range leftCount₁).map
          (fun offset => leftSeating (leftStart₁ + offset * leftStride₁)) ++
        (List.range leftCount₂).map
          (fun offset => leftSeating (leftStart₂ + offset * leftStride₂))).Perm
        ((List.range rightCount₁).map
            (fun offset => rightSeating (rightStart₁ + offset * rightStride₁)) ++
          (List.range rightCount₂).map
            (fun offset => rightSeating (rightStart₂ + offset * rightStride₂)))) :
    StrideRun.sumAux (fun wire => rho (leftSeating wire))
          leftStart₁ leftStride₁ leftCount₁ +
        StrideRun.sumAux (fun wire => rho (leftSeating wire))
          leftStart₂ leftStride₂ leftCount₂ =
      StrideRun.sumAux (fun wire => rho (rightSeating wire))
          rightStart₁ rightStride₁ rightCount₁ +
        StrideRun.sumAux (fun wire => rho (rightSeating wire))
          rightStart₂ rightStride₂ rightCount₂ := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated,
    StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  simpa only [List.map_append, List.sum_append, List.map_map,
    Function.comp_apply] using wireSum_eq_of_perm rho h

theorem sumAux_pair_residual_eq_pair_of_perm
    (rho : Nat → F)
    (leftSeating rightSeating : Nat → Nat)
    (leftStart₁ leftStride₁ leftCount₁ : Nat)
    (leftStart₂ leftStride₂ leftCount₂ residual : Nat)
    (rightStart₁ rightStride₁ rightCount₁ : Nat)
    (rightStart₂ rightStride₂ rightCount₂ : Nat)
    (h :
      ((List.range leftCount₁).map
          (fun offset => leftSeating (leftStart₁ + offset * leftStride₁)) ++
        (List.range leftCount₂).map
          (fun offset => leftSeating (leftStart₂ + offset * leftStride₂)) ++
        [leftSeating residual]).Perm
        ((List.range rightCount₁).map
            (fun offset => rightSeating (rightStart₁ + offset * rightStride₁)) ++
          (List.range rightCount₂).map
            (fun offset => rightSeating (rightStart₂ + offset * rightStride₂)))) :
    StrideRun.sumAux (fun wire => rho (leftSeating wire))
          leftStart₁ leftStride₁ leftCount₁ +
        StrideRun.sumAux (fun wire => rho (leftSeating wire))
          leftStart₂ leftStride₂ leftCount₂ +
        rho (leftSeating residual) =
      StrideRun.sumAux (fun wire => rho (rightSeating wire))
          rightStart₁ rightStride₁ rightCount₁ +
        StrideRun.sumAux (fun wire => rho (rightSeating wire))
          rightStart₂ rightStride₂ rightCount₂ := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated,
    StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  simpa only [List.map_append, List.sum_append, List.map_map,
    Function.comp_apply, List.map_singleton, List.sum_singleton] using
      wireSum_eq_of_perm rho h

/-- A whole extracted row in compact form:
`const + Σ (runs) + Σ (residual coeff·wire terms)`. -/
structure StructuredLC (F : Type*) where
  const    : F
  runs     : List (StrideRun F)
  residual : List (F × Nat)

namespace StructuredLC

/-- Sum of a list of runs. -/
def sumRuns (rho : Nat → F) : List (StrideRun F) → F
  | []      => 0
  | r :: rs => StrideRun.eval rho r + sumRuns rho rs

/-- Sum of the residual `coeff·wire` terms. -/
def sumResidual (rho : Nat → F) : List (F × Nat) → F
  | []           => 0
  | (c, w) :: ts => c * rho w + sumResidual rho ts

/-- Evaluate a whole row. -/
def eval (rho : Nat → F) (lc : StructuredLC F) : F :=
  lc.const + sumRuns rho lc.runs + sumResidual rho lc.residual

@[simp] theorem sumRuns_nil (rho : Nat → F) : sumRuns rho ([] : List (StrideRun F)) = 0 := rfl

@[simp] theorem sumRuns_cons (rho : Nat → F) (r : StrideRun F) (rs : List (StrideRun F)) :
    sumRuns rho (r :: rs) = StrideRun.eval rho r + sumRuns rho rs := rfl

@[simp] theorem sumResidual_nil (rho : Nat → F) : sumResidual rho ([] : List (F × Nat)) = 0 := rfl

@[simp] theorem sumResidual_cons (rho : Nat → F) (c : F) (w : Nat) (ts : List (F × Nat)) :
    sumResidual rho ((c, w) :: ts) = c * rho w + sumResidual rho ts := rfl

/-- Unfold a row to its three components — the only lemma a rung proof needs to
open a `StructuredLC` before applying the constant-size run/residual peels. -/
theorem eval_def (rho : Nat → F) (lc : StructuredLC F) :
    eval rho lc = lc.const + sumRuns rho lc.runs + sumResidual rho lc.residual := rfl

end StructuredLC
end Shieldd.GnarkFormal
