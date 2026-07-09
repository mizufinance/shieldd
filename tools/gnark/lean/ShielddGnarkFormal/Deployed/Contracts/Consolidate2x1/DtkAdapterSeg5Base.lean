import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg5
import ShielddGnarkFormal.Deployed.Dtk.Outputs
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

instance seg5DtkFactPrime : Fact (Nat.Prime Seg5.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg5Canon1Bits (rho : Nat -> Seg5.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (231 + i.val))

theorem seg5Canon1Bits_get (rho : Nat -> Seg5.F) (i : Nat) (hi : i < 253) :
    (seg5Canon1Bits rho)[i]! = rho (231 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg5Canon1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg5Canon2Bits (rho : Nat -> Seg5.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (573 + i.val))

theorem seg5Canon2Bits_get (rho : Nat -> Seg5.F) (i : Nat) (hi : i < 253) :
    (seg5Canon2Bits rho)[i]! = rho (573 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg5Canon2Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg5IvkBits (rho : Nat -> Seg5.F) : List.Vector Seg5.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (1187 + i.val))

theorem seg5IvkBits_get (rho : Nat -> Seg5.F) (i : Nat) (hi : i < 253) :
    (seg5IvkBits rho)[i]! = rho (1187 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg5IvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg5ScalarBits (rho : Nat -> Seg5.F) : List.Vector Seg5.F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (2415 + i.val))

theorem seg5ScalarBits_get (rho : Nat -> Seg5.F) (i : Nat) (hi : i < 251) :
    (seg5ScalarBits rho)[i]! = rho (2415 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg5ScalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
