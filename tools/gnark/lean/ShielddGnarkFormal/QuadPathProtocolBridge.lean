import ShielddGnarkFormal.ChoiceFreeBinary
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.Poseidon4Bridge
import ShielddGnarkFormal.QuadPathSpec
import ShielddGnarkFormal.Protocol.Common

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Bridge from the exact choice-free depth-16 quad-path specification to the
protocol path, whose selectors are read from the canonical position value.
-/

namespace Shieldd.GnarkFormal.QuadPathProtocolBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev F := Protocol.Common.F
abbrev Path16 := Protocol.Common.Path16

local instance : Fact (Nat.Prime Extracted.QuadPath2.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

/-- Protocol paths represented in the vector shape used by the exact gadget. -/
def vectorPath (path : Path16) :
    List.Vector (List.Vector F 3) 16 :=
  List.Vector.ofFn fun level =>
    List.Vector.ofFn fun sibling => path level sibling

private theorem recoverStep_bool
    (current sibling0 sibling1 sibling2 : F) (b0 b1 : Bool) :
    QuadPath.recoverStep Poseidon4Bridge.permSpec4 0
        current sibling0 sibling1 sibling2
        (Bool.toZMod b0) (Bool.toZMod b1) =
      Protocol.Common.quadStep current sibling0 sibling1 sibling2
        ((if b0 then 1 else 0) + 2 * (if b1 then 1 else 0)) := by
  cases b0 <;> cases b1 <;>
    simp [
      QuadPath.recoverStep, QuadPath.children,
      Protocol.Common.quadStep, Protocol.Common.quadChildren,
      Poseidon4Bridge.permSpec4,
      Bool.toZMod_zero, Bool.toZMod_one]

/--
The exact Boolean witness selects the same children as the protocol's
canonical bits of the bounded position.
-/
theorem recover16_eq_quadRoot
    (position leaf : F) (path : Path16)
    (bits : List.Vector Bool 32)
    (hPosition : position.val = (Fin.ofBitsLE bits).val) :
    QuadPath.recover16 Poseidon4Bridge.permSpec4 0 leaf
        (vectorPath path) (bits.map Bool.toZMod) =
      Protocol.Common.quadRoot leaf path position := by
  have hBit (i : Nat) (hi : i < 32) :
      position.val.testBit i = bits[i]! := by
    rw [hPosition]
    exact ChoiceFreeBinary.ofBitsLE_testBit bits i hi
  -- Discharge concrete vector bounds without the classical ordered-cast lemmas.
  simp (disch := decide) [-Nat.ofNat_pos, -Nat.one_lt_ofNat,
    QuadPath.recover16,
    Protocol.Common.quadRoot,
    Protocol.Common.quadRecover,
    Protocol.Common.pathSibling,
    vectorPath,
    recoverStep_bool,
    hBit,
    List.Vector.getElem_def,
    List.Vector.toList_ofFn,
    List.getElem_ofFn,
    getElem!_pos
  ]
  rfl

/--
An exact path result yields both the protocol position bound and root
equation. No representative relation or selector choice is introduced.
-/
theorem pathFacts_of_toBinary
    (position leaf computed : F)
    (path : Path16)
    (pathVector : List.Vector (List.Vector F 3) 16)
    (bits : List.Vector F 32)
    (hBinary : GatesDef.to_binary position 32 bits)
    (hPath : pathVector = vectorPath path)
    (hComputed :
      computed =
        QuadPath.recover16 Poseidon4Bridge.permSpec4 0
          leaf pathVector bits) :
    position.val < 2 ^ 32 ∧
      Protocol.Common.quadRoot leaf path position = computed := by
  have hBound :
      position.val < 2 ^ 32 :=
    ChoiceFreeBinary.range_of_to_binary (by decide) hBinary
  obtain ⟨boolBits, hBits, hPosition⟩ :=
    ChoiceFreeBinary.exists_bool_vector_of_to_binary
      (by decide) hBinary
  rw [hBits, hPath] at hComputed
  have hRecover :=
    recover16_eq_quadRoot position leaf path boolBits hPosition
  exact ⟨hBound, hRecover.symm.trans hComputed.symm⟩

/-- Add an explicitly asserted root to the exact path facts. -/
theorem member_of_toBinary
    (root position leaf computed : F)
    (path : Path16)
    (pathVector : List.Vector (List.Vector F 3) 16)
    (bits : List.Vector F 32)
    (hBinary : GatesDef.to_binary position 32 bits)
    (hPath : pathVector = vectorPath path)
    (hComputed :
      computed =
        QuadPath.recover16 Poseidon4Bridge.permSpec4 0
          leaf pathVector bits)
    (hRoot : root = computed) :
    Protocol.Common.quadMember root leaf path position := by
  obtain ⟨hBound, hPathRoot⟩ :=
    pathFacts_of_toBinary
      position leaf computed path pathVector bits
      hBinary hPath hComputed
  exact ⟨hBound, hRoot.trans hPathRoot.symm⟩

end Shieldd.GnarkFormal.QuadPathProtocolBridge
