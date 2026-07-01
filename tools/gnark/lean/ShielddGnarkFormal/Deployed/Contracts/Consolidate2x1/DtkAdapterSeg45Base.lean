import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg45
import ShielddGnarkFormal.Deployed.Dtk.Outputs
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

instance seg45DtkFactPrime : Fact (Nat.Prime Seg45.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg45Canon1Bits (rho : Nat -> Seg45.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (38764 + i.val))

theorem seg45Canon1Bits_get (rho : Nat -> Seg45.F) (i : Nat) (hi : i < 253) :
    (seg45Canon1Bits rho)[i]! = rho (38764 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg45Canon1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg45Canon2Bits (rho : Nat -> Seg45.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (39106 + i.val))

theorem seg45Canon2Bits_get (rho : Nat -> Seg45.F) (i : Nat) (hi : i < 253) :
    (seg45Canon2Bits rho)[i]! = rho (39106 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg45Canon2Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg45IvkBits (rho : Nat -> Seg45.F) : List.Vector Seg45.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (39720 + i.val))

theorem seg45IvkBits_get (rho : Nat -> Seg45.F) (i : Nat) (hi : i < 253) :
    (seg45IvkBits rho)[i]! = rho (39720 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg45IvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg45ScalarBits (rho : Nat -> Seg45.F) : List.Vector Seg45.F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (40948 + i.val))

theorem seg45ScalarBits_get (rho : Nat -> Seg45.F) (i : Nat) (hi : i < 251) :
    (seg45ScalarBits rho)[i]! = rho (40948 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg45ScalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
