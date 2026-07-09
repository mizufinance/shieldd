import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg48
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

instance seg48NbFactPrime : Fact (Nat.Prime Seg48.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg48CanonBits (rho : Nat -> Seg48.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (33186 + i.val))

theorem seg48CanonBits_get (rho : Nat -> Seg48.F) (i : Nat) (hi : i < 253) :
    (seg48CanonBits rho)[i]! = rho (33186 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg48CanonBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg48In0Bits (rho : Nat -> Seg48.F) : List.Vector Seg48.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (33536 + i.val))

theorem seg48In0Bits_get (rho : Nat -> Seg48.F) (i : Nat) (hi : i < 128) :
    (seg48In0Bits rho)[i]! = rho (33536 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg48In0Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg48In1Bits (rho : Nat -> Seg48.F) : List.Vector Seg48.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (35322 + i.val))

theorem seg48In1Bits_get (rho : Nat -> Seg48.F) (i : Nat) (hi : i < 128) :
    (seg48In1Bits rho)[i]! = rho (35322 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg48In1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg48Out0Bits (rho : Nat -> Seg48.F) : List.Vector Seg48.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (37114 + i.val))

theorem seg48Out0Bits_get (rho : Nat -> Seg48.F) (i : Nat) (hi : i < 128) :
    (seg48Out0Bits rho)[i]! = rho (37114 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg48Out0Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg48BlindBits (rho : Nat -> Seg48.F) : List.Vector Seg48.F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (38906 + i.val))

theorem seg48BlindBits_get (rho : Nat -> Seg48.F) (i : Nat) (hi : i < 251) :
    (seg48BlindBits rho)[i]! = rho (38906 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg48BlindBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
