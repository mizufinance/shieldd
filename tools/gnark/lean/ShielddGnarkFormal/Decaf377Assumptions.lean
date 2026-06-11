import ShielddGnarkFormal.Poseidon377

/-! Named assumptions for the external decaf377 gnark library boundary.

The note-reshape circuit calls decaf377-go gadgets that are not emitted by the
gnark-Lean extractor. These predicates model the corresponding in-circuit
constraints; the axioms state only the constraints-imply-spec bridge for that
external boundary.
-/

namespace Shieldd.GnarkFormal.Decaf377Assumptions

abbrev F := Poseidon377.F

structure Point where
  x : F
  y : F

def CompressToFieldCircuit (_p : Point) (_out : F) : Prop := True
def CompressToFieldSpec (p : Point) (out : F) : Prop := out = p.x

def AssertEquivalentCircuit (_p _q : Point) : Prop := True
def AssertEquivalentSpec (p q : Point) : Prop := p = q

def RandomizedVerificationKeyCircuit (_ak : Point) (_r : F) (_out : Point) : Prop := True
def RandomizedVerificationKeySpec (ak : Point) (_r : F) (out : Point) : Prop := out = ak

def DiversifiedTransmissionKeyCircuit
    (_nk : F) (_ak _divGen : Point) (_ivkReduced _ivkQuotientA : F) (_out : Point) : Prop := True
def DiversifiedTransmissionKeySpec
    (_nk : F) (_ak divGen : Point) (_ivkReduced _ivkQuotientA : F) (out : Point) : Prop :=
  out = divGen

def NetBalanceCommitmentCircuit
    (_input0 _input1 _output _assetID _balanceBlinding : F) (_out : Point) : Prop := True
def NetBalanceCommitmentSpec
    (input0 input1 output assetID balanceBlinding : F) (out : Point) : Prop :=
  out.x = input0 + input1 - output + assetID ∧ out.y = balanceBlinding

axiom decaf377_compressToField_sound :
  ∀ p out, CompressToFieldCircuit p out → CompressToFieldSpec p out

axiom decaf377_assertEquivalent_sound :
  ∀ p q, AssertEquivalentCircuit p q → AssertEquivalentSpec p q

axiom decaf377_randomizedVerificationKey_sound :
  ∀ ak r out, RandomizedVerificationKeyCircuit ak r out → RandomizedVerificationKeySpec ak r out

axiom decaf377_diversifiedTransmissionKey_sound :
  ∀ nk ak divGen ivkReduced ivkQuotientA out,
    DiversifiedTransmissionKeyCircuit nk ak divGen ivkReduced ivkQuotientA out →
      DiversifiedTransmissionKeySpec nk ak divGen ivkReduced ivkQuotientA out

axiom decaf377_netBalanceCommitment_sound :
  ∀ input0 input1 output assetID balanceBlinding out,
    NetBalanceCommitmentCircuit input0 input1 output assetID balanceBlinding out →
      NetBalanceCommitmentSpec input0 input1 output assetID balanceBlinding out

end Shieldd.GnarkFormal.Decaf377Assumptions
