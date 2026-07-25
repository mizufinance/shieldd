import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem rvk_prefix_2_v2 (rho : Nat -> F)
    (r257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow257 rho) :
    (1834793207280290867390005895156704156901269454413112280319152067532631523274*rho 1 + 4386636651797864042993986078645103862843113109085208159654284735976701080790*rvkAccX1 rho)*(7330628450423064489432474261624781147472176877826994359016384944611204172009 + 5769242012146389753850892410357177407739480850431346496641029698576054545035*rho 1 + 7330628450423064489432474261624781147472176877826994359016384944611204172009*rvkAccY1 rho) = rho 258 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow257 at r257
  simp only [one_mul, rvkAccX1, rvkAccY1, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r257 ⊢
  ring_nf at r257 ⊢
  exact r257

theorem rvk_prefix_2_addX (rho : Nat -> F)
    (r258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow258 rho) :
    rho 259*(1 + rho 258) = 7330628450423064489432474261624781147472176877826994359016384944611204172009 + 2284167861755824501228947791765508483386999817169941504534138944699365803042*rho 1 + 1583565702359568197341221086206223250785038774182815403763984250508186140476*rvkAccX1 rho + 7330628450423064489432474261624781147472176877826994359016384944611204172009*rvkAccY1 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow258 at r258
  simp only [one_mul, rvkAccX1, rvkAccY1, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r258 ⊢
  ring_nf at r258 ⊢
  exact r258

theorem rvk_prefix_2_addY (rho : Nat -> F)
    (r259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow259 rho) :
    rho 260*(1 + (-1)*rho 258) = 1583565702359568197341221086206223250785038774182815403763984250508186140476 + 129268633123684386295389351182018689176304175765961050375746851796553548133*rho 1 + 7330628450423064489432474261624781147472176877826994359016384944611204172009*rvkAccX1 rho + 1583565702359568197341221086206223250785038774182815403763984250508186140476*rvkAccY1 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow259 at r259
  simp only [one_mul, rvkAccX1, rvkAccY1, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r259 ⊢
  ring_nf at r259 ⊢
  exact r259

theorem rvk_prefix_2_selX (rho : Nat -> F)
    (r260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow260 rho) :
    (1*rho 3)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX1 rho + rho 259) = rho 261 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow260 at r260
  simp only [one_mul, rvkAccX1, rvkAccY1, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r260 ⊢
  ring_nf at r260 ⊢
  exact r260

theorem rvk_prefix_2_selY (rho : Nat -> F)
    (r261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow261 rho) :
    (1*rho 3)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY1 rho + rho 260) = rho 262 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow261 at r261
  simp only [one_mul, rvkAccX1, rvkAccY1, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r261 ⊢
  ring_nf at r261 ⊢
  exact r261


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

