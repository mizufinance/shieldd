import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.Extracted.CanonicalFqBits
import ShielddGnarkFormal.ImtGapBridge
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F

instance gapFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

instance gapCanonicalFactPrime : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.CanonicalFqBits.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

instance gapImtFactPrime : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.ImtGap.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

local instance (priority := 2000) gapProviderCommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) gapProviderAdd : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) gapProviderAddSemigroup : AddSemigroup F := (ZMod.commRing _).toAddSemigroup
local instance (priority := 3000) gapProviderMul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) gapProviderNatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) gapProviderZero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) gapProviderOne : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) gapProviderNeg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) gapProviderSub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) gapProviderMulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) gapProviderCommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) gapProviderRing : Ring F := (ZMod.commRing _).toRing

def toImtF (x : F) :
    Shieldd.GnarkFormal.Extracted.ImtGap.F :=
  cast (by rfl) x

theorem toImtF_zero : toImtF (0 : F) = 0 := by rfl
theorem toImtF_one : toImtF (1 : F) = 1 := by rfl
theorem toImtF_add (a b : F) :
    toImtF (a + b) = toImtF a + toImtF b := by rfl
theorem toImtF_sub (a b : F) :
    toImtF (a - b) = toImtF a - toImtF b := by rfl
theorem toImtF_mul (a b : F) :
    toImtF (a * b) = toImtF a * toImtF b := by rfl
theorem toImtF_natCast (n : Nat) :
    toImtF (n : F) =
      (n : Shieldd.GnarkFormal.Extracted.ImtGap.F) := by rfl
theorem toImtF_injective : Function.Injective toImtF := by
  intro a b h
  simpa only [toImtF] using h
theorem toImtF_boolToZMod (b : Bool) :
    toImtF (Bool.toZMod b : F) =
      (Bool.toZMod b :
        Shieldd.GnarkFormal.Extracted.ImtGap.F) := by
  cases b <;> rfl

def toImtBits (bits : List.Vector F 253) :
    List.Vector Shieldd.GnarkFormal.Extracted.ImtGap.F 253 :=
  cast (by rfl) bits

def leafBits (rho : Nat → F) :
    List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (1 + i.val))

theorem leafBits_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (leafBits rho)[i]! = rho (1 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [leafBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def leafBitsImt (rho : Nat → F) :
    List.Vector Shieldd.GnarkFormal.Extracted.ImtGap.F 253 :=
  toImtBits (leafBits rho)

theorem leafBitsImt_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (leafBitsImt rho)[i]! =
      toImtF (rho (1 + i)) := by
  change toImtF ((leafBits rho)[i]!) =
    toImtF (rho (1 + i))
  rw [leafBits_get rho i hi]

def idBits (rho : Nat → F) :
    List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (341 + i.val))

theorem idBits_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (idBits rho)[i]! = rho (341 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [idBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def idBitsImt (rho : Nat → F) :
    List.Vector Shieldd.GnarkFormal.Extracted.ImtGap.F 253 :=
  toImtBits (idBits rho)

theorem idBitsImt_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (idBitsImt rho)[i]! =
      toImtF (rho (341 + i)) := by
  change toImtF ((idBits rho)[i]!) =
    toImtF (rho (341 + i))
  rw [idBits_get rho i hi]

def nextBits (rho : Nat → F) :
    List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (681 + i.val))

theorem nextBits_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (nextBits rho)[i]! = rho (681 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [nextBits, List.Vector.toList_ofFn, List.getElem_ofFn]

def nextBitsImt (rho : Nat → F) :
    List.Vector Shieldd.GnarkFormal.Extracted.ImtGap.F 253 :=
  toImtBits (nextBits rho)

theorem nextBitsImt_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (nextBitsImt rho)[i]! =
      toImtF (rho (681 + i)) := by
  change toImtF ((nextBits rho)[i]!) =
    toImtF (rho (681 + i))
  rw [nextBits_get rho i hi]

def lowerPe (rho : Nat → F) : Nat → F
  | 0 => 1
  | 1 => 1 + 2 * rho 1024 - rho 253 - rho 593
  | n + 2 => rho (1028 + n * 4)

def lowerIl (rho : Nat → F) : Nat → F
  | 0 => 0
  | n + 1 => rho 1023 +
      Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 n

def upperPe (rho : Nat → F) : Nat → F
  | 0 => 1
  | 1 => 1 + 2 * rho 2034 - rho 593 - rho 933
  | n + 2 => rho (2038 + n * 4)

def upperIl (rho : Nat → F) : Nat → F
  | 0 => 0
  | n + 1 => rho 2033 +
      Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 n

def lowerPeImt (rho : Nat → F) (n : Nat) :
    Shieldd.GnarkFormal.Extracted.ImtGap.F :=
  toImtF (lowerPe rho n)

def lowerIlImt (rho : Nat → F) (n : Nat) :
    Shieldd.GnarkFormal.Extracted.ImtGap.F :=
  toImtF (lowerIl rho n)

def upperPeImt (rho : Nat → F) (n : Nat) :
    Shieldd.GnarkFormal.Extracted.ImtGap.F :=
  toImtF (upperPe rho n)

def upperIlImt (rho : Nat → F) (n : Nat) :
    Shieldd.GnarkFormal.Extracted.ImtGap.F :=
  toImtF (upperIl rho n)

def selected (rho : Nat → F) : F := rho 3043 + rho 3045

def spec (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Extracted.ImtGap.BodyRelationSpec
    (rho 594) (rho 3044) (rho 254) (rho 934)
    (selected rho)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
