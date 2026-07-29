import Ipp.S1Computational
import Ipp.Bls12377PairingAdapter

/-!
BLS12-377 specialization of the four S1 computational-security games.
The only external premises bound the four concrete game wins.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.S1

noncomputable section

open Ipp.Bls12377

local instance : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

local abbrev BlsStatement (μ : Nat) :=
  FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput

local abbrev BlsProof (μ : Nat) :=
  Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput

local abbrev BlsAdversary (μ : Nat) :=
  OracleComp
    (FsSourceSpec Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (BlsProof μ)

local abbrev BlsWitness (μ : Nat) :=
  PreRandomizerWitness
    (G1 := g1PrimeSubgroup)
    (G2 := g2PrimeSubgroup)
    (GT := ArkPairingOutput) μ

variable
  [IsUniformSpec (FsWrappedSpec Fr)]
  [∀ j, SampleableType ((FsWrappedSpec Fr).Range j)]
  [unifSpec ⊂ₒ FsWrappedSpec Fr]
  [unifSpec ˡ⊂ₒ FsWrappedSpec Fr]

/-- Concrete BLS12-377 G2/V false-opening assumption. -/
structure Bls12377KzgVFalseOpeningGameSecurity {μ : Nat}
    (stmt : BlsStatement μ)
    (adv : BlsAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : BlsWitness μ) where
  epsilon : ℝ≥0∞
  gameWin_le :
    Pr[KzgVFalseOpeningGameWin stmt |
      kzgVFalseOpeningGame stmt adv qb badZ witnessOf] ≤ epsilon

/-- Concrete BLS12-377 G1/W false-opening assumption. -/
structure Bls12377KzgWFalseOpeningGameSecurity {μ : Nat}
    (stmt : BlsStatement μ)
    (adv : BlsAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : BlsWitness μ) where
  epsilon : ℝ≥0∞
  gameWin_le :
    Pr[KzgWFalseOpeningGameWin stmt |
      kzgWFalseOpeningGame stmt adv qb badZ witnessOf] ≤ epsilon

/-- Concrete BLS12-377 GIPA root-opening extraction assumption. -/
structure Bls12377GipaRootOpeningGameSecurity {μ : Nat}
    (stmt : BlsStatement μ)
    (adv : BlsAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : BlsWitness μ) where
  epsilon : ℝ≥0∞
  gameWin_le :
    Pr[GipaRootOpeningGameWin stmt witnessOf |
      gipaRootOpeningGame stmt adv qb badZ witnessOf] ≤ epsilon

/-- Concrete BLS12-377 GIPA product-lane consistency assumption. -/
structure Bls12377GipaProductLaneGameSecurity {μ : Nat}
    (stmt : BlsStatement μ)
    (adv : BlsAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : BlsWitness μ) where
  epsilon : ℝ≥0∞
  gameWin_le :
    Pr[GipaProductLaneGameWin stmt witnessOf |
      gipaProductLaneGame stmt adv qb badZ witnessOf] ≤ epsilon

def Bls12377KzgVFalseOpeningGameSecurity.toGeneric
    {μ : Nat}
    {stmt : BlsStatement μ}
    {adv : BlsAdversary μ}
    {qb : (FsWrappedSpec Fr).Domain → Nat}
    {badZ : Finset Fr}
    {witnessOf : BlsWitness μ}
    (security :
      Bls12377KzgVFalseOpeningGameSecurity
        stmt adv qb badZ witnessOf) :
    KzgVFalseOpeningGameSecurity
      stmt adv qb badZ witnessOf where
  epsilon := security.epsilon
  gameWin_le := security.gameWin_le

def Bls12377KzgWFalseOpeningGameSecurity.toGeneric
    {μ : Nat}
    {stmt : BlsStatement μ}
    {adv : BlsAdversary μ}
    {qb : (FsWrappedSpec Fr).Domain → Nat}
    {badZ : Finset Fr}
    {witnessOf : BlsWitness μ}
    (security :
      Bls12377KzgWFalseOpeningGameSecurity
        stmt adv qb badZ witnessOf) :
    KzgWFalseOpeningGameSecurity
      stmt adv qb badZ witnessOf where
  epsilon := security.epsilon
  gameWin_le := security.gameWin_le

def Bls12377GipaRootOpeningGameSecurity.toGeneric
    {μ : Nat}
    {stmt : BlsStatement μ}
    {adv : BlsAdversary μ}
    {qb : (FsWrappedSpec Fr).Domain → Nat}
    {badZ : Finset Fr}
    {witnessOf : BlsWitness μ}
    (security :
      Bls12377GipaRootOpeningGameSecurity
        stmt adv qb badZ witnessOf) :
    GipaRootOpeningGameSecurity
      stmt adv qb badZ witnessOf where
  epsilon := security.epsilon
  gameWin_le := security.gameWin_le

def Bls12377GipaProductLaneGameSecurity.toGeneric
    {μ : Nat}
    {stmt : BlsStatement μ}
    {adv : BlsAdversary μ}
    {qb : (FsWrappedSpec Fr).Domain → Nat}
    {badZ : Finset Fr}
    {witnessOf : BlsWitness μ}
    (security :
      Bls12377GipaProductLaneGameSecurity
        stmt adv qb badZ witnessOf) :
    GipaProductLaneGameSecurity
      stmt adv qb badZ witnessOf where
  epsilon := security.epsilon
  gameWin_le := security.gameWin_le

/-- The concrete BLS12-377 S1 KZG bad event is bounded by its two game
advantages. -/
theorem kzg_false_opening_to_bls12377_security
    {μ : Nat}
    (stmt : BlsStatement μ)
    (adv : BlsAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : BlsWitness μ)
    (securityV :
      Bls12377KzgVFalseOpeningGameSecurity
        stmt adv qb badZ witnessOf)
    (securityW :
      Bls12377KzgWFalseOpeningGameSecurity
        stmt adv qb badZ witnessOf) :
    Pr[S1KzgBad stmt |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      securityV.epsilon + securityW.epsilon :=
  kzg_false_opening_to_game_security
    stmt adv qb badZ witnessOf
      securityV.toGeneric securityW.toGeneric

/-- The concrete BLS12-377 S1 GIPA bad event is bounded by its root-opening
and product-lane game advantages. -/
theorem gipa_fork_knowledge_to_bls12377_security
    {μ : Nat}
    (stmt : BlsStatement μ)
    (adv : BlsAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : BlsWitness μ)
    (rootSecurity :
      Bls12377GipaRootOpeningGameSecurity
        stmt adv qb badZ witnessOf)
    (productSecurity :
      Bls12377GipaProductLaneGameSecurity
        stmt adv qb badZ witnessOf) :
    Pr[S1PairingBad stmt witnessOf |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      rootSecurity.epsilon + productSecurity.epsilon :=
  gipa_fork_knowledge_reduction
    stmt adv qb badZ witnessOf
      rootSecurity.toGeneric productSecurity.toGeneric

/-- Concrete assembly of all four game bounds into the S1 extraction
interface used by shipping soundness. -/
def S1ExtractionSecurity.ofBls12377GameAssumptions
    {μ : Nat}
    (stmt : BlsStatement μ)
    (adv : BlsAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : BlsWitness μ)
    (kzgV :
      Bls12377KzgVFalseOpeningGameSecurity
        stmt adv qb badZ witnessOf)
    (kzgW :
      Bls12377KzgWFalseOpeningGameSecurity
        stmt adv qb badZ witnessOf)
    (gipaRoot :
      Bls12377GipaRootOpeningGameSecurity
        stmt adv qb badZ witnessOf)
    (gipaProduct :
      Bls12377GipaProductLaneGameSecurity
        stmt adv qb badZ witnessOf) :
    S1ExtractionSecurity stmt adv qb badZ :=
  S1ExtractionSecurity.ofDeployedAssumptions
    stmt adv qb badZ witnessOf
      kzgV.toGeneric kzgW.toGeneric
      gipaRoot.toGeneric gipaProduct.toGeneric

@[simp] theorem S1ExtractionSecurity.ofBls12377GameAssumptions_total
    {μ : Nat}
    (stmt : BlsStatement μ)
    (adv : BlsAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : BlsWitness μ)
    (kzgV :
      Bls12377KzgVFalseOpeningGameSecurity
        stmt adv qb badZ witnessOf)
    (kzgW :
      Bls12377KzgWFalseOpeningGameSecurity
        stmt adv qb badZ witnessOf)
    (gipaRoot :
      Bls12377GipaRootOpeningGameSecurity
        stmt adv qb badZ witnessOf)
    (gipaProduct :
      Bls12377GipaProductLaneGameSecurity
        stmt adv qb badZ witnessOf) :
    (S1ExtractionSecurity.ofBls12377GameAssumptions
      stmt adv qb badZ witnessOf
        kzgV kzgW gipaRoot gipaProduct).total =
      (kzgV.epsilon + kzgW.epsilon) +
        (gipaRoot.epsilon + gipaProduct.epsilon) := rfl

end

end Ipp.S1
