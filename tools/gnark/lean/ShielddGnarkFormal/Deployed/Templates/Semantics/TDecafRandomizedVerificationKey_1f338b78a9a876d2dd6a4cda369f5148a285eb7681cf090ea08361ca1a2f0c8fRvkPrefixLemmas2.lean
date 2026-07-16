import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

theorem rvk_prefix_3_v2 (rho : Nat -> F)
    (r262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow262 rho) :
    (6797058648839150029635289459958510155655927949801724905097229005197893694661*rho 1 + 4375534271212962697728589713170319096553412496036318551690834160728740146236*rvkAccX2 rho)*(2253669643409009747765366505106279809881109946637309378064786961724414984255 + 2139652619118088308876888028905056787644762439560588932992552696397712646249*rho 1 + 2253669643409009747765366505106279809881109946637309378064786961724414984255*rvkAccY2 rho) = rho 263 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow262 at r262
  simp only [one_mul, rvkAccX2, rvkAccY2, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r262 ⊢
  ring_nf at r262 ⊢
  exact r262

theorem rvk_prefix_3_addX (rho : Nat -> F)
    (r263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow263 rho) :
    rho 264*(1 + rho 263) = 2253669643409009747765366505106279809881109946637309378064786961724414984255 + 2742882124174671821370477122350270628889871438239147505621209572275713599605*rho 1 + 8180361010625165449867524118036403664317257486645755405193705371127132794962*rvkAccX2 rho + 2253669643409009747765366505106279809881109946637309378064786961724414984255*rvkAccY2 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow263 at r263
  simp only [one_mul, rvkAccX2, rvkAccY2, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r263 ⊢
  ring_nf at r263 ⊢
  exact r263

theorem rvk_prefix_3_addY (rho : Nat -> F)
    (r264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow264 rho) :
    rho 265*(1 + (-1)*rho 263) = 8180361010625165449867524118036403664317257486645755405193705371127132794962 + 2292025789201692440597056769487924739173808473639951666424334558890064428903*rho 1 + 2253669643409009747765366505106279809881109946637309378064786961724414984255*rvkAccX2 rho + 8180361010625165449867524118036403664317257486645755405193705371127132794962*rvkAccY2 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow264 at r264
  simp only [one_mul, rvkAccX2, rvkAccY2, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r264 ⊢
  ring_nf at r264 ⊢
  exact r264

theorem rvk_prefix_3_selX (rho : Nat -> F)
    (r265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow265 rho) :
    (1*rho 4)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX2 rho + rho 264) = rho 266 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow265 at r265
  simp only [one_mul, rvkAccX2, rvkAccY2, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r265 ⊢
  ring_nf at r265 ⊢
  exact r265

theorem rvk_prefix_3_selY (rho : Nat -> F)
    (r266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow266 rho) :
    (1*rho 4)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY2 rho + rho 265) = rho 267 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow266 at r266
  simp only [one_mul, rvkAccX2, rvkAccY2, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r266 ⊢
  ring_nf at r266 ⊢
  exact r266


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

