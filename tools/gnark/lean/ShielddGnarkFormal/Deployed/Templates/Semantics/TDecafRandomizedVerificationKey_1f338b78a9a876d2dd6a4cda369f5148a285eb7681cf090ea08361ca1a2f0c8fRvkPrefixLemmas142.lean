import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem rvk_prefix_143_v2 (rho : Nat -> F)
    (r962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow962 rho) :
    (4938053888672654270810678854782661645153770246529503148947669032667265402660*rho 1 + 3778682624279442475367220590942522733490752825963756877840445187645517884389*rvkAccX142 rho)*(7520195057955867023804691213643624442585340867346760214678489227972682710614 + 2117248663306599533961325002399283838091445272984068801478855011548758629520*rho 1 + 7520195057955867023804691213643624442585340867346760214678489227972682710614*rvkAccY142 rho) = rho 963 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow962 at r962
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc805, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX142, rvkAccY142, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc806] at r962 ⊢
  ring_nf at r962 ⊢
  exact r962

theorem rvk_prefix_143_addX (rho : Nat -> F)
    (r963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow963 rho) :
    rho 964*(1 + rho 963) = 7520195057955867023804691213643624442585340867346760214678489227972682710614 + 7390731918291895553294027588760349518270227105604755290268923851963489212186*rho 1 + 7735718087816147105717267734591023427689706790201012369670516854588254512516*rvkAccX142 rho + 7520195057955867023804691213643624442585340867346760214678489227972682710614*rvkAccY142 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow963 at r963
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc807, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX142, rvkAccY142] at r963 ⊢
  ring_nf at r963 ⊢
  exact r963

theorem rvk_prefix_143_addY (rho : Nat -> F)
    (r964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow964 rho) :
    rho 965*(1 + (-1)*rho 963) = 7735718087816147105717267734591023427689706790201012369670516854588254512516 + 8191911795387420165726505078694277743693126356244378056681858280789421851413*rho 1 + 7520195057955867023804691213643624442585340867346760214678489227972682710614*rvkAccX142 rho + 7735718087816147105717267734591023427689706790201012369670516854588254512516*rvkAccY142 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow964 at r964
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc808, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX142, rvkAccY142] at r964 ⊢
  ring_nf at r964 ⊢
  exact r964

theorem rvk_prefix_143_selX (rho : Nat -> F)
    (r965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow965 rho) :
    (1*rho 144)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX142 rho + rho 964) = rho 966 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow965 at r965
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc809, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX142, rvkAccY142] at r965 ⊢
  ring_nf at r965 ⊢
  exact r965

theorem rvk_prefix_143_selY (rho : Nat -> F)
    (r966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow966 rho) :
    (1*rho 144)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY142 rho + rho 965) = rho 967 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow966 at r966
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc810, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX142, rvkAccY142] at r966 ⊢
  ring_nf at r966 ⊢
  exact r966


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

