import ShielddGnarkFormal.Extracted.Poseidon2
import ShielddGnarkFormal.Poseidon2Spec
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates
import ProvenZk.Ext.Vector

/-! M4 bridge: the round-structured extracted Poseidon (rate-2) computes a
concrete vector-form spec, as continuation-passing iffs (`_uncps`).

Each extracted round is a flat chain of `∃ g, g = expr ∧ …` clauses with *no*
side-conditions (unlike `Gates.select`, which also asserts `is_bool`), so every
round is an honest `↔`, not just forward soundness: `round st cs k ↔ k (spec st cs)`.
Chaining the round iffs collapses `poseidonPerm2` to `k (permSpec2 …)`. -/

namespace Shieldd.GnarkFormal.Poseidon2Bridge

def p17 (a : Poseidon2Spec.F) : Poseidon2Spec.F :=
  let a2 := a * a
  let a4 := a2 * a2
  let a8 := a4 * a4
  let a16 := a8 * a8
  a16 * a
def fr3 := Poseidon377.Fixed2.fr3
def pr3 := Poseidon377.Fixed2.pr3
def permSpec2 := Poseidon377.hash2

open Shieldd.GnarkFormal.Extracted.Poseidon2
  (F Order poseidonFullRound_3_3 poseidonPartialRound_3_3 poseidonPerm2)

theorem fullRound_3_3_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 3) (k : List.Vector F 3 → Prop) :
    poseidonFullRound_3_3 st cs k ↔ k (fr3 st cs) := by
  unfold poseidonFullRound_3_3 fr3 Poseidon377.Fixed2.fr3 Poseidon377.Fixed2.p17
  simp only [Extracted.Poseidon2.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem partialRound_3_3_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 3) (k : List.Vector F 3 → Prop) :
    poseidonPartialRound_3_3 st cs k ↔ k (pr3 st cs) := by
  unfold poseidonPartialRound_3_3 pr3 Poseidon377.Fixed2.pr3 Poseidon377.Fixed2.p17
  simp only [Extracted.Poseidon2.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem perm2_uncps [Fact (Nat.Prime Order)] (Domain In0 In1 : F) (k : F → Prop) :
    poseidonPerm2 Domain In0 In1 k
      ↔ k (permSpec2 Domain In0 In1) := by
  unfold poseidonPerm2 permSpec2 Poseidon377.hash2 Poseidon377.Fixed2.hash
  simp only [fullRound_3_3_uncps, partialRound_3_3_uncps]
  rfl

end Shieldd.GnarkFormal.Poseidon2Bridge
