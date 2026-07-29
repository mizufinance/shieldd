import ShielddGnarkFormal.Extracted.PoseidonHash1
import ShielddGnarkFormal.Poseidon1Spec
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Structural bridge for the extracted rate-1 Poseidon gadget used by the TCT
leaf hash before a state-commitment quad path.
-/

namespace Shieldd.GnarkFormal.Poseidon1Bridge

def p17 (a : Poseidon1Spec.F) : Poseidon1Spec.F :=
  let a2 := a * a
  let a4 := a2 * a2
  let a8 := a4 * a4
  let a16 := a8 * a8
  a16 * a
def fr2 := Poseidon377.Fixed1.fr2
def pr2 := Poseidon377.Fixed1.pr2
def permSpec1 := Poseidon377.hash1

open Shieldd.GnarkFormal.Extracted.PoseidonHash1

theorem circuit_sound [Fact (Nat.Prime Order)]
    (Domain In0 Out : F) :
    circuit Domain In0 Out →
      poseidonPerm1 Domain In0 (fun out => Gates.eq out Out ∧ True) := by
  unfold circuit
  intro h
  exact h


/-! ### Rate-1 permutation as a closed continuation (`perm1_uncps`)

Mirrors `Poseidon2Bridge`: each width-2 round is a side-condition-free `∃ g, g = …`
chain, so it is an honest `↔`. Chaining the round iffs collapses `poseidonPerm1`
to `k` applied to the composed round spec at the sponge output coordinate. -/

theorem fullRound_2_2_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 2) (k : List.Vector F 2 → Prop) :
    poseidonFullRound_2_2 st cs k ↔ k (fr2 st cs) := by
  unfold poseidonFullRound_2_2 fr2 Poseidon377.Fixed1.fr2 Poseidon377.Fixed1.p17
  simp only [Extracted.PoseidonHash1.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem partialRound_2_2_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 2) (k : List.Vector F 2 → Prop) :
    poseidonPartialRound_2_2 st cs k ↔ k (pr2 st cs) := by
  unfold poseidonPartialRound_2_2 pr2 Poseidon377.Fixed1.pr2 Poseidon377.Fixed1.p17
  simp only [Extracted.PoseidonHash1.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem perm1_uncps [Fact (Nat.Prime Order)] (Domain In0 : F) (k : F → Prop) :
    poseidonPerm1 Domain In0 k ↔ k (permSpec1 Domain In0) := by
  unfold poseidonPerm1 permSpec1 Poseidon377.hash1 Poseidon377.Fixed1.hash
  simp only [fullRound_2_2_uncps, partialRound_2_2_uncps]
  rfl

end Shieldd.GnarkFormal.Poseidon1Bridge
