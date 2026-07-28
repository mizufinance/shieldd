import ShielddGnarkFormal.Extracted.PoseidonHash7
import ShielddGnarkFormal.Poseidon7Spec
import ShielddGnarkFormal.Poseidon377
import ShielddGnarkFormal.ChoiceFreeZModCast
import ProvenZk.Gates

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

/-! Route-B structural bridge for the extracted rate-7 (state-8) Poseidon
permutation used by the NoteReshape statement hash. Mirrors
`Poseidon6Bridge` at width 8: closed `permSpec7` with explicit full/partial
round-constant staging, proven equal to the extracted CPS `poseidonPerm7`. -/

namespace Shieldd.GnarkFormal.Poseidon7Bridge

def p17 (a : Poseidon7Spec.F) : Poseidon7Spec.F :=
  let a2 := a * a
  let a4 := a2 * a2
  let a8 := a4 * a4
  let a16 := a8 * a8
  a16 * a
def row8
    (c0 c1 c2 c3 c4 c5 c6 c7 x0 x1 x2 x3 x4 x5 x6 x7 :
      Poseidon7Spec.F) : Poseidon7Spec.F :=
  c0 * x0 + c1 * x1 + c2 * x2 + c3 * x3 + c4 * x4 + c5 * x5 +
    c6 * x6 + c7 * x7
def fr8 := Poseidon7Spec.fr8
def pr8 := Poseidon7Spec.pr8
def permSpec7 := Poseidon7Spec.permSpec7

open Shieldd.GnarkFormal.Extracted.PoseidonHash7
def hash7Spec (Domain In0 In1 In2 In3 In4 In5 In6 : F) : F :=
  Poseidon377.hash7 Domain In0 In1 In2 In3 In4 In5 In6

def row8v (coefficients inputs : List.Vector F 8) : F :=
  row8 coefficients[0] coefficients[1] coefficients[2] coefficients[3]
    coefficients[4] coefficients[5] coefficients[6] coefficients[7]
    inputs[0] inputs[1] inputs[2] inputs[3] inputs[4] inputs[5] inputs[6] inputs[7]

theorem row8v_congr (coefficients : List.Vector F 8) {inputs inputs' : List.Vector F 8}
    (h : inputs = inputs') : row8v coefficients inputs = row8v coefficients inputs' := by
  subst inputs'
  rfl

theorem row8v_congr8 (coefficients : List.Vector F 8)
    {x0 x1 x2 x3 x4 x5 x6 x7 y0 y1 y2 y3 y4 y5 y6 y7 : F}
    (h0 : x0 = y0) (h1 : x1 = y1) (h2 : x2 = y2) (h3 : x3 = y3)
    (h4 : x4 = y4) (h5 : x5 = y5) (h6 : x6 = y6) (h7 : x7 = y7) :
    row8v coefficients vec![x0, x1, x2, x3, x4, x5, x6, x7] =
      row8v coefficients vec![y0, y1, y2, y3, y4, y5, y6, y7] := by
  subst y0
  subst y1
  subst y2
  subst y3
  subst y4
  subst y5
  subst y6
  subst y7
  rfl

theorem natCastSum8MulEq
    (a0 b0 a1 b1 a2 b2 a3 b3 a4 b4 a5 b5 a6 b6 a7 b7 folded : Nat)
    (h : (a0 * b0 + a1 * b1 + a2 * b2 + a3 * b3 +
          a4 * b4 + a5 * b5 + a6 * b6 + a7 * b7) % Order = folded % Order) :
    (a0 : F) * (b0 : F) + (a1 : F) * (b1 : F) +
      (a2 : F) * (b2 : F) + (a3 : F) * (b3 : F) +
      (a4 : F) * (b4 : F) + (a5 : F) * (b5 : F) +
      (a6 : F) * (b6 : F) + (a7 : F) * (b7 : F) = (folded : F) := by
  have hCast :
      ((a0 * b0 + a1 * b1 + a2 * b2 + a3 * b3 +
        a4 * b4 + a5 * b5 + a6 * b6 + a7 * b7 : Nat) : F) = (folded : F) :=
    Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq
      Order _ _ (by decide) h
  norm_num only [Nat.cast_add, Nat.cast_mul] at hCast
  exact hCast

theorem fullRound_8_8_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 8) (k : List.Vector F 8 → Prop) :
    poseidonFullRound_8_8 st cs k ↔ k (fr8 st cs) := by
  unfold poseidonFullRound_8_8 fr8 Poseidon7Spec.fr8
    Poseidon7Spec.row8 Poseidon7Spec.p17
  simp only [Extracted.PoseidonHash7.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem partialRound_8_8_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 8) (k : List.Vector F 8 → Prop) :
    poseidonPartialRound_8_8 st cs k ↔ k (pr8 st cs) := by
  unfold poseidonPartialRound_8_8 pr8 Poseidon7Spec.pr8
    Poseidon7Spec.row8 Poseidon7Spec.p17
  simp only [Extracted.PoseidonHash7.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem perm7_uncps [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 In5 In6 : F) (k : F → Prop) :
    poseidonPerm7 Domain In0 In1 In2 In3 In4 In5 In6 k
      ↔ k (permSpec7 Domain In0 In1 In2 In3 In4 In5 In6) := by
  unfold poseidonPerm7 permSpec7
  simp only [fullRound_8_8_uncps, partialRound_8_8_uncps]
  rfl

theorem circuit_sound [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 In5 In6 Out : F) :
    circuit Domain In0 In1 In2 In3 In4 In5 In6 Out →
      poseidonPerm7 Domain In0 In1 In2 In3 In4 In5 In6 (fun out => Gates.eq out Out ∧ True) := by
  unfold circuit
  intro h
  exact h

theorem circuit_sound_eq [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 In5 In6 Out : F) :
    circuit Domain In0 In1 In2 In3 In4 In5 In6 Out →
      Out = permSpec7 Domain In0 In1 In2 In3 In4 In5 In6 := by
  unfold circuit
  rw [perm7_uncps]
  rintro ⟨heq, _⟩
  simpa [Extracted.PoseidonHash7.Gates, GatesGnark9, GatesGnark8, GatesDef.eq, eq_comm] using heq

#guard (hash7Spec Poseidon377.hash7Domain 1 2 3 4 5 6 7).val =
  4343785876047570911133173947224221823797937726350094165458715664628871658969

end Shieldd.GnarkFormal.Poseidon7Bridge
