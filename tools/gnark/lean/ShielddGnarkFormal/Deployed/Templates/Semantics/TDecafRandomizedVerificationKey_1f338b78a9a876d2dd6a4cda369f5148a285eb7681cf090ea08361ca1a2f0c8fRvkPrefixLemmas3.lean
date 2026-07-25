import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem rvk_prefix_4_v2 (rho : Nat -> F)
    (r267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow267 rho) :
    (1261785949431481827498481460183358115685594855606775744571946470136263733465*rho 1 + 7170631588916822789082415100026500558340825550332287258404858866719737330603*rvkAccX3 rho)*(5985374594098040249084986187295834377767382335536098713014150974058873528425 + 5016981384010441316957462154064291418831022317125242060445294134084510861601*rho 1 + 5985374594098040249084986187295834377767382335536098713014150974058873528425*rvkAccY3 rho) = rho 268 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow267 at r267
  simp only [one_mul, rvkAccX3, rvkAccY3, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r267 ⊢
  ring_nf at r267 ⊢
  exact r267

theorem rvk_prefix_4_addX (rho : Nat -> F)
    (r268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow268 rho) :
    rho 269*(1 + rho 268) = 5985374594098040249084986187295834377767382335536098713014150974058873528425 + 1405931137631089080511919837134276602405343288272728425904496491391642118434*rho 1 + 5246269736351055855239946375456540150089218132505579618823205171190923359739*rvkAccX3 rho + 5985374594098040249084986187295834377767382335536098713014150974058873528425*rvkAccY3 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow268 at r268
  simp only [one_mul, rvkAccX3, rvkAccY3, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r268 ⊢
  ring_nf at r268 ⊢
  exact r268

theorem rvk_prefix_4_addY (rho : Nat -> F)
    (r269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow269 rho) :
    rho 270*(1 + (-1)*rho 268) = 5246269736351055855239946375456540150089218132505579618823205171190923359739 + 8170297209188697796690838862827888789353937251559697058373780804696792635828*rho 1 + 5985374594098040249084986187295834377767382335536098713014150974058873528425*rvkAccX3 rho + 5246269736351055855239946375456540150089218132505579618823205171190923359739*rvkAccY3 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow269 at r269
  simp only [one_mul, rvkAccX3, rvkAccY3, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r269 ⊢
  ring_nf at r269 ⊢
  exact r269

theorem rvk_prefix_4_selX (rho : Nat -> F)
    (r270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow270 rho) :
    (1*rho 5)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX3 rho + rho 269) = rho 271 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow270 at r270
  simp only [one_mul, rvkAccX3, rvkAccY3, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r270 ⊢
  ring_nf at r270 ⊢
  exact r270

theorem rvk_prefix_4_selY (rho : Nat -> F)
    (r271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow271 rho) :
    (1*rho 5)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY3 rho + rho 270) = rho 272 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow271 at r271
  simp only [one_mul, rvkAccX3, rvkAccY3, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r271 ⊢
  ring_nf at r271 ⊢
  exact r271


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

