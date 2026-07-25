import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg46
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

instance seg46NbFactPrime : Fact (Nat.Prime Seg46.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg46In0Bits (rho : Nat -> Seg46.F) : List.Vector Seg46.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (31277 + i.val))

theorem seg46In0Bits_get (rho : Nat -> Seg46.F) (i : Nat) (hi : i < 128) :
    (seg46In0Bits rho)[i]! = rho (31277 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg46In0Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg46In1Bits (rho : Nat -> Seg46.F) : List.Vector Seg46.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (31405 + i.val))

theorem seg46In1Bits_get (rho : Nat -> Seg46.F) (i : Nat) (hi : i < 128) :
    (seg46In1Bits rho)[i]! = rho (31405 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg46In1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg46Out0Bits (rho : Nat -> Seg46.F) : List.Vector Seg46.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (31533 + i.val))

theorem seg46Out0Bits_get (rho : Nat -> Seg46.F) (i : Nat) (hi : i < 128) :
    (seg46Out0Bits rho)[i]! = rho (31533 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg46Out0Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg46BlindBits (rho : Nat -> Seg46.F) : List.Vector Seg46.F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (31661 + i.val))

theorem seg46BlindBits_get (rho : Nat -> Seg46.F) (i : Nat) (hi : i < 251) :
    (seg46BlindBits rho)[i]! = rho (31661 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg46BlindBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
