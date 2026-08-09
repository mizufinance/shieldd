import ShielddGnarkFormal.DtkBridge.Circuit

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

namespace Shieldd.GnarkFormal.DtkBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

@[simp] theorem dtkStep_uncps
    (bit ax ay cx cy : F) (k : List.Vector F 4 → Prop) :
    Extracted.DecafDtk.scalarMulStep bit ax ay cx cy k ↔
      ∃ acc' cur',
        StepRel bit ⟨ax, ay⟩ ⟨cx, cy⟩ acc' cur' ∧
        k vec![acc'.x, acc'.y, cur'.x, cur'.y] := by
  simp only [Extracted.DecafDtk.scalarMulStep, StepRel, EdwardsBridge.addSpec, EdwardsBridge.doubleSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    exists_eq_left]
  constructor
  · rintro ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩
    exact ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
  · rintro ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
    exact ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩

def dtkLadderK {n : ℕ} (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
  | 0, _, acc, cur => k vec![acc.x, acc.y, cur.x, cur.y]
  | fuel + 1, bitIndex, acc, cur =>
      Extracted.DecafDtk.scalarMulStep bits[bitIndex]! acc.x acc.y cur.x cur.y
        (fun state =>
          dtkLadderK bits k fuel (bitIndex + 1)
            ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)

/-- Continuation-carrying IVK guard used by deployed constant-ladder traces. -/
def ivkGuardK (IvkQuotient : F) (k : Prop) (il : F) : Prop :=
    ∃gate_570, gate_570 = Extracted.IvkModR.Gates.sub IvkQuotient (4:F) ∧
    ∃gate_571, Extracted.IvkModR.Gates.is_zero gate_570 gate_571 ∧
    ∃gate_572, gate_572 = Extracted.IvkModR.Gates.sub (1:F) il ∧
    ∃gate_573, gate_573 = Extracted.IvkModR.Gates.mul gate_571 gate_572 ∧
    Extracted.IvkModR.Gates.eq gate_573 (0:F) ∧
    k

/-- Continuation joining the deployed `< r` and `< q4` ladders. -/
def rContK (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop) (il1 : F) : Prop :=
    Extracted.IvkModR.Gates.eq il1 (1:F) ∧
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuardK IvkQuotient k)
      253 (1:F) (0:F)

theorem dtk_circuit_eq
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F) :
    Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
        IvkReduced IvkQuotient OutX OutY ↔
      dtkCircuitK Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
        (∃ bits, GatesDef.to_binary IvkReduced 251 bits ∧
          dtkLadderK bits (finalKWithOutputCurve OutX OutY) 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩) := by
  unfold Extracted.DecafDtk.circuit dtkCircuitK dtkLadderK finalKWithOutputCurve outputCurveGates
  simp (config := { maxSteps := 1000000 }) only [Extracted.DecafDtk.Gates,
    GatesGnark9, GatesGnark8, GatesDef.eq]
  rfl


/-! ### Pass-through lemmas: every prefix gadget reaches its continuation
(reusing sibling-namespace bridges via defeq casts) -/

theorem canonical_pass {In : F} {k : List.Vector F 253 → Prop}
    (h : Extracted.DecafDtk.canonicalFqBitsGadget In k) : ∃ v, k v := by
  have h' : Extracted.CanonicalFqBits.canonicalFqBitsGadget In k := h
  obtain ⟨x, -, -, hk⟩ :=
    Extracted.CanonicalFqBits.canonicalFqBitsGadget_canonical In k h'
  exact ⟨_, hk⟩

theorem canonical_value {In : F} {k : List.Vector F 253 → Prop}
    (h : Extracted.DecafDtk.canonicalFqBitsGadget In k) :
    ∃ (x : List.Vector Bool 253),
      GatesDef.to_binary In 253 (x.map toZMod) ∧
      (Fin.ofBitsLE x).val < Order ∧
      k (x.map toZMod) := by
  have h' : Extracted.CanonicalFqBits.canonicalFqBitsGadget In k := h
  exact Extracted.CanonicalFqBits.canonicalFqBitsGadget_canonical In k h'

theorem perm2_pass {d i0 i1 : F} {k : F → Prop}
    (h : Extracted.DecafDtk.poseidonPerm2 d i0 i1 k) : ∃ x, k x := by
  have h' : Extracted.Poseidon2.poseidonPerm2 d i0 i1 k := h
  exact ⟨_, (Poseidon2Bridge.perm2_uncps d i0 i1 k).mp h'⟩

theorem perm2_value {d i0 i1 : F} {k : F → Prop}
    (h : Extracted.DecafDtk.poseidonPerm2 d i0 i1 k) :
    k (Poseidon2Bridge.permSpec2 d i0 i1) := by
  have h' : Extracted.Poseidon2.poseidonPerm2 d i0 i1 k := h
  exact (Poseidon2Bridge.perm2_uncps d i0 i1 k).mp h'

theorem perm2_intro {d i0 i1 : F} {k : F → Prop}
    (h : k (Poseidon2Bridge.permSpec2 d i0 i1)) :
    Extracted.DecafDtk.poseidonPerm2 d i0 i1 k := by
  have h' : Extracted.Poseidon2.poseidonPerm2 d i0 i1 k :=
    (Poseidon2Bridge.perm2_uncps d i0 i1 k).mpr h
  exact h'

theorem dtk_is_zero_cases (a out : F) (h : Extracted.DecafDtk.Gates.is_zero a out) :
    (a ≠ 0 ∧ out = 0) ∨ (a = 0 ∧ out = 1) := h

theorem dtk_is_bool_cases (x : F) (h : Extracted.DecafDtk.Gates.is_bool x) :
    x = 0 ∨ x = 1 := by
  rw [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8] at h
  dsimp [GatesDef.is_bool] at h
  rcases mul_eq_zero.mp h with h1 | h0
  · right; linear_combination -h1
  · left; exact h0

theorem sqrt_zeta_case_mul (s inv den zeta : F)
    (hs : s * s = zeta * inv) (hinv : inv * den = 1) :
    s * s * den = zeta := by
  rw [hs]
  calc
    (zeta * inv) * den = zeta * (inv * den) := by ring
    _ = zeta := by rw [hinv, mul_one]

@[simp] theorem dtk_ltConstStepZero_uncps (pe bit : F) (k : F → Prop) :
    Extracted.DecafDtk.ltConstStepZero pe bit k ↔ k (pe * (1 - bit)) :=
  Extracted.IvkModR.ltConstStepZero_uncps pe bit k

@[simp] theorem dtk_ltConstStepOne_uncps (pe il bit : F) (k : List.Vector F 2 → Prop) :
    Extracted.DecafDtk.ltConstStepOne pe il bit k ↔
      k vec![pe * bit, il + pe * (1 - bit) - il * (pe * (1 - bit))] :=
  Extracted.IvkModR.ltConstStepOne_uncps pe il bit k

/-! ### Segment decomposition of `dtkCircuitK` (≤60 gates per lemma).
Each segment ends in an opaque continuation over the live cross-boundary
variables, so pass lemmas elaborate over small terms. -/


end Shieldd.GnarkFormal.DtkBridge
