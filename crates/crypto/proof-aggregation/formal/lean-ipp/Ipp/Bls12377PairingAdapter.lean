import Ipp.Bls12377Pairing
import Ipp.Extracted.Groth16Verifier
import Ipp.Extracted.KzgVerifiers
import Mathlib.Algebra.Module.ZMod

/-!
The concrete BLS12-377 pairing adapter consumed by S2.
Only the repaired subgroup bilinearity boundary is a premise.
-/

namespace Ipp.Bls12377

open Aeneas Aeneas.Std Result

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact scalarModulus.Prime := ⟨arithmeticFacts.scalarPrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

/-- The G1 `r`-torsion subgroup has its canonical `ZMod r` module structure. -/
noncomputable instance g1PrimeSubgroupModule : Module Fr g1PrimeSubgroup :=
  AddCommGroup.zmodModule fun p => by
    apply Subtype.ext
    exact p.2

/-- The G2 `r`-torsion subgroup has its canonical `ZMod r` module structure. -/
noncomputable instance g2PrimeSubgroupModule : Module Fr g2PrimeSubgroup :=
  AddCommGroup.zmodModule fun q => by
    apply Subtype.ext
    exact q.2

/-- Arkworks' additive view of the order-`r` GT group is a `ZMod r` module. -/
noncomputable instance arkPairingOutputModule : Module Fr ArkPairingOutput :=
  AddCommGroup.zmodModule fun x => by
    change Additive.ofMul (Additive.toMul x ^ scalarModulus) =
      Additive.ofMul (1 : GtGroup)
    have hpow : Additive.toMul x ^ scalarModulus = (1 : GtGroup) := by
      apply Subtype.ext
      exact (mem_gtGroup (Additive.toMul x).1).mp (Additive.toMul x).2
    exact congrArg Additive.ofMul hpow

/-- The GT identity forced by additivity in the right pairing argument. -/
private theorem executablePairing_zero_right
    (hbilinear : PublishedPairingBilinear) (p : g1PrimeSubgroup) :
    executablePairing p 0 = 1 := by
  have h := hbilinear.2 p 0 0
  simp only [zero_add] at h
  apply mul_right_cancel (b := executablePairing p 0)
  simpa using h.symm

/-- The GT identity forced by additivity in the left pairing argument. -/
private theorem executablePairing_zero_left
    (hbilinear : PublishedPairingBilinear) (q : g2PrimeSubgroup) :
    executablePairing 0 q = 1 := by
  have h := hbilinear.1 0 0 q
  simp only [zero_add] at h
  apply mul_right_cancel (b := executablePairing 0 q)
  simpa using h.symm

/-- The right argument as an additive homomorphism into arkworks additive GT. -/
noncomputable def executablePairingRightHom
    (hbilinear : PublishedPairingBilinear) (p : g1PrimeSubgroup) :
    g2PrimeSubgroup →+ ArkPairingOutput where
  toFun q := Additive.ofMul (executablePairing p q)
  map_zero' := by
    change executablePairing p 0 = 1
    exact executablePairing_zero_right hbilinear p
  map_add' q₁ q₂ := by
    change executablePairing p (q₁ + q₂) =
      executablePairing p q₁ * executablePairing p q₂
    exact hbilinear.2 p q₁ q₂

/-- Both pairing arguments as a curried additive homomorphism. -/
noncomputable def executablePairingAddHom
    (hbilinear : PublishedPairingBilinear) :
    g1PrimeSubgroup →+ (g2PrimeSubgroup →+ ArkPairingOutput) where
  toFun := executablePairingRightHom hbilinear
  map_zero' := by
    apply AddMonoidHom.ext
    intro q
    change executablePairing 0 q = 1
    exact executablePairing_zero_left hbilinear q
  map_add' p₁ p₂ := by
    apply AddMonoidHom.ext
    intro q
    change executablePairing (p₁ + p₂) q =
      executablePairing p₁ q * executablePairing p₂ q
    exact hbilinear.1 p₁ p₂ q

/-- S2's concrete `Fr`-bilinear map, derived from the cited additive laws. -/
noncomputable def executablePairingLinear
    (hbilinear : PublishedPairingBilinear) :
    g1PrimeSubgroup →ₗ[Fr] g2PrimeSubgroup →ₗ[Fr] ArkPairingOutput where
  toFun p := (executablePairingRightHom hbilinear p).toZModLinearMap scalarModulus
  map_add' p₁ p₂ := by
    apply LinearMap.ext
    intro q
    change (executablePairingAddHom hbilinear) (p₁ + p₂) q =
      ((executablePairingAddHom hbilinear) p₁ +
        (executablePairingAddHom hbilinear) p₂) q
    exact congrArg (fun f : g2PrimeSubgroup →+ ArkPairingOutput => f q)
      ((executablePairingAddHom hbilinear).map_add p₁ p₂)
  map_smul' c p := by
    apply LinearMap.ext
    intro q
    change (executablePairingAddHom hbilinear) (c • p) q =
      (c • (executablePairingAddHom hbilinear) p) q
    exact congrArg (fun f : g2PrimeSubgroup →+ ArkPairingOutput => f q)
      (ZMod.map_smul (executablePairingAddHom hbilinear) c p)

@[simp] theorem executablePairingLinear_apply
    (hbilinear : PublishedPairingBilinear)
    (p : g1PrimeSubgroup) (q : g2PrimeSubgroup) :
    executablePairingLinear hbilinear p q =
      Additive.ofMul (executablePairing p q) := rfl

/-- Replace an abstract S2 statement's pairing field by the concrete adapter. -/
noncomputable def statementWithExecutablePairing {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput) :
    Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput :=
  { stmt with e := executablePairingLinear hbilinear }

@[simp] theorem statementWithExecutablePairing_e {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput) :
    (statementWithExecutablePairing hbilinear stmt).e =
      executablePairingLinear hbilinear := rfl

/--
The ordinary S2 effect instantiated by the executable subgroup pairing.
Failure is the existing `outcome = none` branch of the extracted model.
-/
noncomputable def tippPairingEffect {E : Type} (hbilinear : PublishedPairingBilinear)
    (outcome : E → Option Unit) :
    ark_ip_proofs.tipa.PairingEffect E g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput :=
  Ipp.Extracted.pairingModel (executablePairingLinear hbilinear) outcome

/-- The ordinary effect preserves failure as `none`. -/
theorem tippPairingEffect_failure {E : Type}
    (hbilinear : PublishedPairingBilinear) (outcome : E → Option Unit)
    (state : E) (left : Slice g1PrimeSubgroup) (right : Slice g2PrimeSubgroup)
    (hfailure : outcome state = none) :
    (tippPairingEffect hbilinear outcome).multi_pairing state left right =
      .ok none := by
  simp [tippPairingEffect, Ipp.Extracted.pairingModel, hfailure]

/-- The ordinary effect's exact ordered two-pair law used by both KZG kernels. -/
theorem tippPairingEffect_two_pair_law {E : Type}
    (hbilinear : PublishedPairingBilinear) (outcome : E → Option Unit)
    (state : E) (left₀ left₁ : g1PrimeSubgroup)
    (right₀ right₁ : g2PrimeSubgroup) :
    (tippPairingEffect hbilinear outcome).multi_pairing state
        ⟨[left₀, left₁]⟩ ⟨[right₀, right₁]⟩ =
      .ok (match outcome state with
        | none => none
        | some () => some
            (executablePairingLinear hbilinear left₀ right₀ +
              executablePairingLinear hbilinear left₁ right₁)) := by
  cases h : outcome state with
  | none => simp [tippPairingEffect, Ipp.Extracted.pairingModel, h]
  | some value =>
      cases value
      simp [tippPairingEffect, Ipp.Extracted.pairingModel, h]

/-- Prepared-G2 semantics used by the PPE adapter. -/
structure PreparedG2 where
  value : g2PrimeSubgroup

/-- The canonical prepared representative of a negated G2 subgroup point. -/
noncomputable def prepareNegative (q : g2PrimeSubgroup) : PreparedG2 := ⟨-q⟩

@[simp] theorem prepareNegative_value (q : g2PrimeSubgroup) :
    (prepareNegative q).value = -q := rfl

/--
The prepared S2 effect. It accepts exactly two ordered pairs, matching the
extracted PPE call; other lengths and the external failure state return `none`.
-/
noncomputable def preparedPairingEffect {E : Type}
    (hbilinear : PublishedPairingBilinear) (outcome : E → Option Unit) :
    ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      E g1PrimeSubgroup PreparedG2 ArkPairingOutput where
  multi_pairing_prepared state left right :=
    match outcome state with
    | none => .ok none
    | some () =>
        match left.val, right.val with
        | [left₀, left₁], [right₀, right₁] =>
            .ok (some
              (executablePairingLinear hbilinear left₀ right₀.value +
                executablePairingLinear hbilinear left₁ right₁.value))
        | _, _ => .ok none

/-- The exact two-pair prepared-effect law required by S2's PPE theorem. -/
theorem preparedPairingEffect_two_pair_law {E : Type}
    (hbilinear : PublishedPairingBilinear) (outcome : E → Option Unit)
    (state : E) (left₀ left₁ : g1PrimeSubgroup)
    (right₀ right₁ : PreparedG2) :
    (preparedPairingEffect hbilinear outcome).multi_pairing_prepared state
        ⟨[left₀, left₁]⟩ ⟨[right₀, right₁]⟩ =
      .ok (match outcome state with
        | none => none
        | some () => some
            (executablePairingLinear hbilinear left₀ right₀.value +
              executablePairingLinear hbilinear left₁ right₁.value)) := by
  cases h : outcome state with
  | none => simp [preparedPairingEffect, h]
  | some value =>
      cases value
      simp [preparedPairingEffect, h]

/-- The prepared effect preserves failure as `none` for every operand shape. -/
theorem preparedPairingEffect_failure {E : Type}
    (hbilinear : PublishedPairingBilinear) (outcome : E → Option Unit)
    (state : E) (left : Slice g1PrimeSubgroup) (right : Slice PreparedG2)
    (hfailure : outcome state = none) :
    (preparedPairingEffect hbilinear outcome).multi_pairing_prepared
        state left right = .ok none := by
  simp [preparedPairingEffect, hfailure]

/--
All three adapter laws passed separately to S2's PPE theorem are discharged by
identity normalization, canonical prepared negatives, and the concrete effect.
-/
theorem ppePairingAdapterLaws {E : Type}
    (hbilinear : PublishedPairingBilinear) (outcome : E → Option Unit)
    (state : E) (gIC aggC : g1PrimeSubgroup)
    (gamma delta : g2PrimeSubgroup) :
    ((id (-gIC) = -gIC) ∧ (id (-aggC) = -aggC)) ∧
    (((prepareNegative gamma).value = -gamma) ∧
      ((prepareNegative delta).value = -delta)) ∧
    (preparedPairingEffect hbilinear outcome).multi_pairing_prepared state
        ⟨[-gIC, -aggC]⟩
        ⟨[prepareNegative gamma, prepareNegative delta]⟩ =
      .ok (match outcome state with
        | none => none
        | some () => some
            (executablePairingLinear hbilinear (id (-gIC))
                (prepareNegative gamma).value +
              executablePairingLinear hbilinear (id (-aggC))
                (prepareNegative delta).value)) := by
  refine ⟨⟨rfl, rfl⟩, ⟨⟨rfl, rfl⟩, ?_⟩⟩
  exact preparedPairingEffect_two_pair_law hbilinear outcome state
    (-gIC) (-aggC) (prepareNegative gamma) (prepareNegative delta)

#print axioms g1PrimeSubgroupModule
#print axioms g2PrimeSubgroupModule
#print axioms arkPairingOutputModule
#print axioms executablePairingLinear
#print axioms executablePairingLinear_apply
#print axioms statementWithExecutablePairing_e
#print axioms tippPairingEffect_failure
#print axioms tippPairingEffect_two_pair_law
#print axioms prepareNegative_value
#print axioms preparedPairingEffect_two_pair_law
#print axioms preparedPairingEffect_failure
#print axioms ppePairingAdapterLaws

end Ipp.Bls12377
