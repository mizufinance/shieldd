import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg6
import ShielddGnarkFormal.Deployed.Dtk.Outputs
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

instance seg6DtkFactPrime : Fact (Nat.Prime Seg6.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg6Canon1Bits (rho : Nat -> Seg6.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (934 + i.val))

theorem seg6Canon1Bits_get (rho : Nat -> Seg6.F) (i : Nat) (hi : i < 253) :
    (seg6Canon1Bits rho)[i]! = rho (934 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg6Canon1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg6Canon2Bits (rho : Nat -> Seg6.F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (1276 + i.val))

theorem seg6Canon2Bits_get (rho : Nat -> Seg6.F) (i : Nat) (hi : i < 253) :
    (seg6Canon2Bits rho)[i]! = rho (1276 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg6Canon2Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg6IvkBits (rho : Nat -> Seg6.F) : List.Vector Seg6.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (1890 + i.val))

theorem seg6IvkBits_get (rho : Nat -> Seg6.F) (i : Nat) (hi : i < 253) :
    (seg6IvkBits rho)[i]! = rho (1890 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg6IvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def seg6ScalarBits (rho : Nat -> Seg6.F) : List.Vector Seg6.F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (1890 + i.val))

theorem seg6ScalarBits_get (rho : Nat -> Seg6.F) (i : Nat) (hi : i < 251) :
    (seg6ScalarBits rho)[i]! = rho (1890 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [seg6ScalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
