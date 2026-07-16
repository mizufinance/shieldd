import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

theorem rvk_prefix_8_v2 (rho : Nat -> F)
    (r287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow287 rho) :
    (799978936218574075797650752686907230160277414889474780602467453363530461367*rho 1 + 1600092672692822940186714189359922705142851054896853954591353221334641505328*rvkAccX7 rho)*(4459439039332613404838472382329192479308895207930647915181763202044922699287 + 6343420490949144625286344113701139626352279410779777619360573249971778763958*rho 1 + 4459439039332613404838472382329192479308895207930647915181763202044922699287*rvkAccY7 rho) = rho 288 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow287 at r287
  simp only [one_mul, rvkAccX7, rvkAccY7, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r287 ⊢
  ring_nf at r287 ⊢
  exact r287

theorem rvk_prefix_8_addX (rho : Nat -> F)
    (r288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow288 rho) :
    rho 289*(1 + rho 288) = 4459439039332613404838472382329192479308895207930647915181763202044922699287 + 3123552911867627195740217440836639561170261616445917289999174218603525896393*rho 1 + 2650430265187285000042394159600882500645314604694124251187418957110572194676*rvkAccX7 rho + 4459439039332613404838472382329192479308895207930647915181763202044922699287*rvkAccY7 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow288 at r288
  simp only [one_mul, rvkAccX7, rvkAccY7, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r288 ⊢
  ring_nf at r288 ⊢
  exact r288

theorem rvk_prefix_8_addY (rho : Nat -> F)
    (r289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow289 rho) :
    rho 290*(1 + (-1)*rho 288) = 2650430265187285000042394159600882500645314604694124251187418957110572194676 + 4261912733523430298230904496075599606809597086799772080236589833225886462164*rho 1 + 4459439039332613404838472382329192479308895207930647915181763202044922699287*rvkAccX7 rho + 2650430265187285000042394159600882500645314604694124251187418957110572194676*rvkAccY7 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow289 at r289
  simp only [one_mul, rvkAccX7, rvkAccY7, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r289 ⊢
  ring_nf at r289 ⊢
  exact r289

theorem rvk_prefix_8_selX (rho : Nat -> F)
    (r290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow290 rho) :
    (1*rho 9)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX7 rho + rho 289) = rho 291 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow290 at r290
  simp only [one_mul, rvkAccX7, rvkAccY7, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r290 ⊢
  ring_nf at r290 ⊢
  exact r290

theorem rvk_prefix_8_selY (rho : Nat -> F)
    (r291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow291 rho) :
    (1*rho 9)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY7 rho + rho 290) = rho 292 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow291 at r291
  simp only [one_mul, rvkAccX7, rvkAccY7, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r291 ⊢
  ring_nf at r291 ⊢
  exact r291


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

