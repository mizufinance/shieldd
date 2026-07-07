import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg34
import ShielddGnarkFormal.Deployed.Dtk.Outputs
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

instance seg34DtkFactPrime : Fact (Nat.Prime Seg34.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg34Canon1Bits (rho : Nat -> Seg34.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (31808 + i.val))

theorem seg34Canon1Bits_get (rho : Nat -> Seg34.F) (i : Nat) (hi : i < 253) :
    (seg34Canon1Bits rho)[i]! = rho (31808 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg34Canon1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg34Canon2Bits (rho : Nat -> Seg34.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (32150 + i.val))

theorem seg34Canon2Bits_get (rho : Nat -> Seg34.F) (i : Nat) (hi : i < 253) :
    (seg34Canon2Bits rho)[i]! = rho (32150 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg34Canon2Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg34IvkBits (rho : Nat -> Seg34.F) : List.Vector Seg34.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (32764 + i.val))

theorem seg34IvkBits_get (rho : Nat -> Seg34.F) (i : Nat) (hi : i < 253) :
    (seg34IvkBits rho)[i]! = rho (32764 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg34IvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg34ScalarBits (rho : Nat -> Seg34.F) : List.Vector Seg34.F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (33992 + i.val))

theorem seg34ScalarBits_get (rho : Nat -> Seg34.F) (i : Nat) (hi : i < 251) :
    (seg34ScalarBits rho)[i]! = rho (33992 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg34ScalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
