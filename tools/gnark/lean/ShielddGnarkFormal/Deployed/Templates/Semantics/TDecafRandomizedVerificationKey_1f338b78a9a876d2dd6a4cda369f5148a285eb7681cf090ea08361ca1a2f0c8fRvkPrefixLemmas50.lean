import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem rvk_prefix_51_v2 (rho : Nat -> F)
    (r502 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow502 rho) :
    (7951490232008115975286127579907409914560856182774254771782297894440063486475*rho 1 + 5107748505877890801883930202609992877975194663178272094077896319286077365369*rvkAccX50 rho)*(823083494539051004312126362108186731208135674306211154180233814990883104587 + 269469382135806435828200452609097401317921355988942707487639244015825367612*rho 1 + 823083494539051004312126362108186731208135674306211154180233814990883104587*rvkAccY50 rho) = rho 503 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow502 at r502
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc253, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX50, rvkAccY50, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc254] at r502 ⊢
  ring_nf at r502 ⊢
  exact r502

theorem rvk_prefix_51_addX (rho : Nat -> F)
    (r503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow503 rho) :
    rho 504*(1 + rho 503) = 823083494539051004312126362108186731208135674306211154180233814990883104587 + 3483848078039548816972585087577619206834461969121942903803218700733317350116*rho 1 + 10076509021570010617222907983765187842470338519907468910256073050989177452*rvkAccX50 rho + 823083494539051004312126362108186731208135674306211154180233814990883104587*rvkAccY50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow503 at r503
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc255, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX50, rvkAccY50] at r503 ⊢
  ring_nf at r503 ⊢
  exact r503

theorem rvk_prefix_51_addY (rho : Nat -> F)
    (r504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow504 rho) :
    rho 505*(1 + (-1)*rho 503) = 10076509021570010617222907983765187842470338519907468910256073050989177452 + 784226967580008301639074108881556619633174470864297411870558003367441031934*rho 1 + 823083494539051004312126362108186731208135674306211154180233814990883104587*rvkAccX50 rho + 10076509021570010617222907983765187842470338519907468910256073050989177452*rvkAccY50 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow504 at r504
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc256, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX50, rvkAccY50] at r504 ⊢
  ring_nf at r504 ⊢
  exact r504

theorem rvk_prefix_51_selX (rho : Nat -> F)
    (r505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow505 rho) :
    (1*rho 52)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX50 rho + rho 504) = rho 506 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow505 at r505
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc257, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX50, rvkAccY50] at r505 ⊢
  ring_nf at r505 ⊢
  exact r505

theorem rvk_prefix_51_selY (rho : Nat -> F)
    (r506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow506 rho) :
    (1*rho 52)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY50 rho + rho 505) = rho 507 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow506 at r506
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc258, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX50, rvkAccY50] at r506 ⊢
  ring_nf at r506 ⊢
  exact r506


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

