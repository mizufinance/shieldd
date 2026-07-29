import ShielddGnarkFormal.Extracted.PoseidonHash6
import ShielddGnarkFormal.Poseidon6Spec
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Structural bridge for the extracted rate-6 Poseidon gadget.

The round gadgets are side-condition-free gate chains, so each round collapses
to a closed vector spec by an `_uncps` iff. Chaining those iffs gives a
closed `permSpec6` target for deployed-slice proofs while retaining the older
`poseidonPerm6` theorem shape used by the top-level models.
-/

namespace Shieldd.GnarkFormal.Poseidon6Bridge

def p17 (a : Poseidon6Spec.F) : Poseidon6Spec.F :=
  let a2 := a * a
  let a4 := a2 * a2
  let a8 := a4 * a4
  let a16 := a8 * a8
  a16 * a
def row7
    (c0 c1 c2 c3 c4 c5 c6 x0 x1 x2 x3 x4 x5 x6 : Poseidon6Spec.F) :
    Poseidon6Spec.F :=
  c0 * x0 + c1 * x1 + c2 * x2 + c3 * x3 + c4 * x4 + c5 * x5 + c6 * x6
def fr7 := Poseidon377.Fixed6.fr7
def pr7 := Poseidon377.Fixed6.pr7
def permSpec6 := Poseidon377.hash6

open Shieldd.GnarkFormal.Extracted.PoseidonHash6

theorem fullRound_7_7_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 7) (k : List.Vector F 7 → Prop) :
    poseidonFullRound_7_7 st cs k ↔ k (fr7 st cs) := by
  unfold poseidonFullRound_7_7 fr7 Poseidon377.Fixed6.fr7
    Poseidon377.Fixed6.row7 Poseidon377.Fixed6.p17
  simp only [Extracted.PoseidonHash6.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem partialRound_7_7_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 7) (k : List.Vector F 7 → Prop) :
    poseidonPartialRound_7_7 st cs k ↔ k (pr7 st cs) := by
  unfold poseidonPartialRound_7_7 pr7 Poseidon377.Fixed6.pr7
    Poseidon377.Fixed6.row7 Poseidon377.Fixed6.p17
  simp only [Extracted.PoseidonHash6.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem perm6_uncps [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 In5 : F) (k : F → Prop) :
    poseidonPerm6 Domain In0 In1 In2 In3 In4 In5 k
      ↔ k (permSpec6 Domain In0 In1 In2 In3 In4 In5) := by
  unfold poseidonPerm6 permSpec6 Poseidon377.hash6 Poseidon377.Fixed6.hash
  simp only [fullRound_7_7_uncps, partialRound_7_7_uncps]
  rfl

theorem circuit_sound [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 In5 Out : F) :
    circuit Domain In0 In1 In2 In3 In4 In5 Out →
      poseidonPerm6 Domain In0 In1 In2 In3 In4 In5 (fun out => Gates.eq out Out ∧ True) := by
  unfold circuit
  intro h
  exact h

theorem circuit_sound_eq [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 In5 Out : F) :
    circuit Domain In0 In1 In2 In3 In4 In5 Out →
      Out = permSpec6 Domain In0 In1 In2 In3 In4 In5 := by
  unfold circuit
  rw [perm6_uncps]
  rintro ⟨heq, _⟩
  simpa [Extracted.PoseidonHash6.Gates, GatesGnark9, GatesGnark8, GatesDef.eq, eq_comm] using heq

end Shieldd.GnarkFormal.Poseidon6Bridge
