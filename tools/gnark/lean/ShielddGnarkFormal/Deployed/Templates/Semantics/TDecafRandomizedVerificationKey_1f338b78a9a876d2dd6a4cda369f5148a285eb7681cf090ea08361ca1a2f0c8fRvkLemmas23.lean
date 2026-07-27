import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem rvk_lc1008 (rho : Nat -> F) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1008 rho = rvkAccX172 rho + rvkAccY172 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
  simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1008, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX172, rvkAccY172]
  ring

theorem rvk_lc1009 (rho : Nat -> F) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1009 rho = 1939637175554028343952877222903386474419120937240795293453235189596207815568*rvkAccX172 rho + 3260487844049681244059064487609986020441575339499381944237059900510287835620*rho 1 := by
  simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1009, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX172]
  ring

theorem rvk_lc1010 (rho : Nat -> F) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1010 rho = 3981554842788038437983906127460908899641731895452705244011833733867503855692*rvkAccY172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692 + 4774531341859335617455251261646898000864070238664000687762939088765552617430*rho 1 := by
  simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1010, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccY172]
  ring

theorem rvk_lc1011 (rho : Nat -> F) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1011 rho = 7788219156267128113307242355732635558718197507009752605071504019654253011514*rvkAccX172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692*rvkAccY172 rho + 3981554842788038437983906127460908899641731895452705244011833733867503855692 + 8426212087505645268336755543188212054487825984129312419384141324226872297676*rho 1 := by
  simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1011, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX172, rvkAccY172]
  ring

theorem rvk_lc1012 (rho : Nat -> F) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1012 rho = 656242593161242310941582583048910972657701828144311222863729436263156227527*rvkAccX172 rho + 4462906906640331986264918811320637631734167439701358583923399722049905383349*rvkAccY172 rho + 4462906906640331986264918811320637631734167439701358583923399722049905383349 + 18249661922725155912069395593334476888073351024751408551092131690536941365*rho 1 := by
  simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1012, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX172, rvkAccY172]
  ring

theorem rvk_lc1013 (rho : Nat -> F) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1013 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX172 rho + rho 1185 := by
  simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1013, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX172]
  ring

theorem rvk_lc1014 (rho : Nat -> F) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1014 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY172 rho + rho 1187 := by
  simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc1014, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccY172]
  ring


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
