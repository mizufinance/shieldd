import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg16
import ShielddGnarkFormal.Deployed.Dtk.Outputs
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

instance seg16DtkFactPrime : Fact (Nat.Prime Seg16.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg16Canon1Bits (rho : Nat -> Seg16.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (13108 + i.val))

theorem seg16Canon1Bits_get (rho : Nat -> Seg16.F) (i : Nat) (hi : i < 253) :
    (seg16Canon1Bits rho)[i]! = rho (13108 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg16Canon1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg16Canon2Bits (rho : Nat -> Seg16.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (13450 + i.val))

theorem seg16Canon2Bits_get (rho : Nat -> Seg16.F) (i : Nat) (hi : i < 253) :
    (seg16Canon2Bits rho)[i]! = rho (13450 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg16Canon2Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg16IvkBits (rho : Nat -> Seg16.F) : List.Vector Seg16.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (14064 + i.val))

theorem seg16IvkBits_get (rho : Nat -> Seg16.F) (i : Nat) (hi : i < 253) :
    (seg16IvkBits rho)[i]! = rho (14064 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg16IvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg16ScalarBits (rho : Nat -> Seg16.F) : List.Vector Seg16.F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (15292 + i.val))

theorem seg16ScalarBits_get (rho : Nat -> Seg16.F) (i : Nat) (hi : i < 251) :
    (seg16ScalarBits rho)[i]! = rho (15292 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg16ScalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
