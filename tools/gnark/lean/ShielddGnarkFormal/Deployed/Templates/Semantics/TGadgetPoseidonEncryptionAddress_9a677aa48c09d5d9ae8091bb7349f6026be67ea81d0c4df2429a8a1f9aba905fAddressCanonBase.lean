import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

abbrev F := Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F

instance addressPackingFactPrime :
    Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.CanonicalFqBits.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def canon1Bits (rho : Nat → F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (710 + i.val))
theorem canon1Bits_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (canon1Bits rho)[i]! = rho (710 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [canon1Bits, List.Vector.toList_ofFn, List.getElem_ofFn]
def canon2Bits (rho : Nat → F) : List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (1051 + i.val))
theorem canon2Bits_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (canon2Bits rho)[i]! = rho (1051 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [canon2Bits, List.Vector.toList_ofFn, List.getElem_ofFn]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
