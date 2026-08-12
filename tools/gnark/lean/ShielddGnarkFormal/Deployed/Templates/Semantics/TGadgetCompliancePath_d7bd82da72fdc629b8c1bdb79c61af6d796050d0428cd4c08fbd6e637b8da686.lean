import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathBlocks
import ShielddGnarkFormal.ChoiceFreeBinary
import ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def output (rho : Nat → F) : F := nodeOut15 rho

def spec (rho : Nat → F) : Prop :=
  (∀ i : Nat, i < 32 →
      rho (1 + i) = 0 ∨ rho (1 + i) = 1) ∧
  rho 33 =
    (1 : F) * rho 1
    + (2 : F) * rho 2
    + (4 : F) * rho 3
    + (8 : F) * rho 4
    + (16 : F) * rho 5
    + (32 : F) * rho 6
    + (64 : F) * rho 7
    + (128 : F) * rho 8
    + (256 : F) * rho 9
    + (512 : F) * rho 10
    + (1024 : F) * rho 11
    + (2048 : F) * rho 12
    + (4096 : F) * rho 13
    + (8192 : F) * rho 14
    + (16384 : F) * rho 15
    + (32768 : F) * rho 16
    + (65536 : F) * rho 17
    + (131072 : F) * rho 18
    + (262144 : F) * rho 19
    + (524288 : F) * rho 20
    + (1048576 : F) * rho 21
    + (2097152 : F) * rho 22
    + (4194304 : F) * rho 23
    + (8388608 : F) * rho 24
    + (16777216 : F) * rho 25
    + (33554432 : F) * rho 26
    + (67108864 : F) * rho 27
    + (134217728 : F) * rho 28
    + (268435456 : F) * rho 29
    + (536870912 : F) * rho 30
    + (1073741824 : F) * rho 31
    + (2147483648 : F) * rho 32 ∧
  output rho =
    Shieldd.GnarkFormal.QuadPath.recover16
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F) (leaf rho) (path rho) (bits rho)

/-- The explicit Boolean rows and recomposition row form `to_binary`. -/
theorem toBinary_of_spec (rho : Nat → F) (h : spec rho) :
    GatesDef.to_binary (rho 33) 32 (bits rho) := by
  apply Shieldd.GnarkFormal.ChoiceFreeBinary.to_binary_of_get
  · rw [bits, recover_ofFn_eq_recBits, h.2.1]
    simp [BinaryRecomposition.recBits]
    ring
  · intro i hi
    simpa only [bits, List.Vector.getElem_def,
      List.Vector.toList_ofFn, List.getElem_ofFn] using h.1 i hi

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation rho) : spec rho := by
  have a3 := block0 rho h
  have a7 := block1 rho h a3
  have a11 := block2 rho h a7
  have a15 := block3 rho h a11
  refine ⟨bits_bool rho h, position_recompose rho h, ?_⟩
  change nodeOut15 rho =
    Shieldd.GnarkFormal.QuadPath.recover16
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F) (leaf rho) (path rho) (bits rho)
  exact a15.trans (recovered15_eq_recover16 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
