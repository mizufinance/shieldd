import ShielddGnarkFormal.Poseidon377

namespace Shieldd
namespace GnarkFormal

open Poseidon377 (F hash3 nullifierDomain)

def bls12377ScalarFieldPrime : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

def fieldElement (x : Nat) : Prop :=
  x < bls12377ScalarFieldPrime

def boolAsField (b : Bool) : Nat :=
  if b then 1 else 0

def fieldLessThanSpec (a b : Nat) : Nat :=
  if a < b then 1 else 0

theorem fieldLessThanSpec_true {a b : Nat} (h : a < b) :
    fieldLessThanSpec a b = 1 := by
  simp [fieldLessThanSpec, h]

theorem fieldLessThanSpec_false {a b : Nat} (h : ¬ a < b) :
    fieldLessThanSpec a b = 0 := by
  simp [fieldLessThanSpec, h]

def selectSpec (cond ifTrue ifFalse : Bool) : Bool :=
  if cond then ifTrue else ifFalse

def imtGapSpec (leafValue assetId nextValue : Nat) : Bool :=
  leafValue < assetId && assetId < nextValue

def assetMembershipValidSpec
    (isRegulated exactMatch : Bool)
    (leafValue assetId nextValue : Nat) : Bool :=
  selectSpec isRegulated exactMatch (imtGapSpec leafValue assetId nextValue)

theorem assetMembershipValid_unregulated_gap
    {leafValue assetId nextValue : Nat}
    (hLower : leafValue < assetId)
    (hUpper : assetId < nextValue) :
    assetMembershipValidSpec false false leafValue assetId nextValue = true := by
  simp [assetMembershipValidSpec, selectSpec, imtGapSpec, hLower, hUpper]

theorem assetMembershipValid_regulated_exact
    {leafValue assetId nextValue : Nat} :
    assetMembershipValidSpec true true leafValue assetId nextValue = true := by
  simp [assetMembershipValidSpec, selectSpec]

/-- Nullifier = Poseidon377 rate-3 hash of (nk, stateCommitment, position) under
the nullifier domain separator. Concrete `ZMod P` definition (see
`Poseidon377`); no longer opaque. -/
def nullifierSpec (nk stateCommitment position : F) : F :=
  hash3 nullifierDomain nk stateCommitment position

theorem nullifierSpec_unfold (nk stateCommitment position : F) :
    nullifierSpec nk stateCommitment position =
      hash3 nullifierDomain nk stateCommitment position := by
  rfl

structure RegulatedStatusInputs where
  isRegulated : Bool
  exactMatch : Bool
  leafValue : Nat
  assetId : Nat
  nextValue : Nat

def regulatedStatusSoundnessSpec (i : RegulatedStatusInputs) : Prop :=
  assetMembershipValidSpec
    i.isRegulated
    i.exactMatch
    i.leafValue
    i.assetId
    i.nextValue = true

structure NoDoubleSpendInputs where
  nk : F
  stateCommitment : F
  position : F
  claimedNullifier : F

def noDoubleSpendNullifierSpec (i : NoDoubleSpendInputs) : Prop :=
  i.claimedNullifier = nullifierSpec i.nk i.stateCommitment i.position

theorem noDoubleSpendNullifierSpec_intro
    {i : NoDoubleSpendInputs}
    (h : i.claimedNullifier = nullifierSpec i.nk i.stateCommitment i.position) :
    noDoubleSpendNullifierSpec i := by
  exact h

end GnarkFormal
end Shieldd
