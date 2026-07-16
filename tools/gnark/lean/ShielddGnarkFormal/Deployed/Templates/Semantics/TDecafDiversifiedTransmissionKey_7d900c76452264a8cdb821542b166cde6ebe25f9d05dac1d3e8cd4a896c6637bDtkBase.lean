import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.EdwardsBridge
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkOutputs
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

instance dtkDtkFactPrime : Fact (Nat.Prime Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.F

def onCurveAt (x y : F) : Prop :=
  y * y - x * x = 1 + EdwardsBridge.d * x * x * y * y

def spec (rho : Nat → F) : Prop :=
  onCurveAt (rho 2211) (rho 2213) →
    Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeySpec
      (rho 706)
      ⟨rho 1, rho 3⟩
      ⟨rho 2211, rho 2213⟩
      (rho 977) (rho 978)
      ⟨Outputs.dtkOutX rho, Outputs.dtkOutY rho⟩ ∧
    onCurveAt (Outputs.dtkOutX rho) (Outputs.dtkOutY rho)

def dtkCanon1Bits (rho : Nat -> F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (24 + i.val))

theorem dtkCanon1Bits_get (rho : Nat -> F) (i : Nat) (hi : i < 253) :
    (dtkCanon1Bits rho)[i]! = rho (24 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [dtkCanon1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def dtkCanon2Bits (rho : Nat -> F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (366 + i.val))

theorem dtkCanon2Bits_get (rho : Nat -> F) (i : Nat) (hi : i < 253) :
    (dtkCanon2Bits rho)[i]! = rho (366 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [dtkCanon2Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

def dtkIvkBits (rho : Nat -> F) : List.Vector F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (983 + i.val))

theorem dtkIvkBits_get (rho : Nat -> F) (i : Nat) (hi : i < 253) :
    (dtkIvkBits rho)[i]! = rho (983 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [dtkIvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def dtkScalarBits (rho : Nat -> F) : List.Vector F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho (983 + i.val))

theorem dtkScalarBits_get (rho : Nat -> F) (i : Nat) (hi : i < 251) :
    (dtkScalarBits rho)[i]! = rho (983 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [dtkScalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
