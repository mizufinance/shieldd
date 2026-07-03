import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg52
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

instance seg52NbFactPrime : Fact (Nat.Prime Seg52.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg52CanonBits (rho : Nat -> Seg52.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (44818 + i.val))

theorem seg52CanonBits_get (rho : Nat -> Seg52.F) (i : Nat) (hi : i < 253) :
    (seg52CanonBits rho)[i]! = rho (44818 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg52CanonBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg52In0Bits (rho : Nat -> Seg52.F) : List.Vector Seg52.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (45808 + i.val))

theorem seg52In0Bits_get (rho : Nat -> Seg52.F) (i : Nat) (hi : i < 128) :
    (seg52In0Bits rho)[i]! = rho (45808 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg52In0Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg52In1Bits (rho : Nat -> Seg52.F) : List.Vector Seg52.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (47594 + i.val))

theorem seg52In1Bits_get (rho : Nat -> Seg52.F) (i : Nat) (hi : i < 128) :
    (seg52In1Bits rho)[i]! = rho (47594 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg52In1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg52Out0Bits (rho : Nat -> Seg52.F) : List.Vector Seg52.F 128 :=
  List.Vector.ofFn (fun i : Fin 128 => rho (49386 + i.val))

theorem seg52Out0Bits_get (rho : Nat -> Seg52.F) (i : Nat) (hi : i < 128) :
    (seg52Out0Bits rho)[i]! = rho (49386 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg52Out0Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg52BlindBits (rho : Nat -> Seg52.F) : List.Vector Seg52.F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (51178 + i.val))

theorem seg52BlindBits_get (rho : Nat -> Seg52.F) (i : Nat) (hi : i < 251) :
    (seg52BlindBits rho)[i]! = rho (51178 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg52BlindBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
