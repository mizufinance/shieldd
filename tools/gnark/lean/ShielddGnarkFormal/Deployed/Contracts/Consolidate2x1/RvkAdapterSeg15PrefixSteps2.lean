import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep21
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep22
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep23
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep24
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep25
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep26
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep27
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep28
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep29
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps2 (rho : Nat -> Seg15.F)
    (r21 : Seg15.relationRow21 rho)
    (r352 : Seg15.relationRow352 rho)
    (r353 : Seg15.relationRow353 rho)
    (r354 : Seg15.relationRow354 rho)
    (r355 : Seg15.relationRow355 rho)
    (r356 : Seg15.relationRow356 rho)
    (r22 : Seg15.relationRow22 rho)
    (r357 : Seg15.relationRow357 rho)
    (r358 : Seg15.relationRow358 rho)
    (r359 : Seg15.relationRow359 rho)
    (r360 : Seg15.relationRow360 rho)
    (r361 : Seg15.relationRow361 rho)
    (r23 : Seg15.relationRow23 rho)
    (r362 : Seg15.relationRow362 rho)
    (r363 : Seg15.relationRow363 rho)
    (r364 : Seg15.relationRow364 rho)
    (r365 : Seg15.relationRow365 rho)
    (r366 : Seg15.relationRow366 rho)
    (r24 : Seg15.relationRow24 rho)
    (r367 : Seg15.relationRow367 rho)
    (r368 : Seg15.relationRow368 rho)
    (r369 : Seg15.relationRow369 rho)
    (r370 : Seg15.relationRow370 rho)
    (r371 : Seg15.relationRow371 rho)
    (r25 : Seg15.relationRow25 rho)
    (r372 : Seg15.relationRow372 rho)
    (r373 : Seg15.relationRow373 rho)
    (r374 : Seg15.relationRow374 rho)
    (r375 : Seg15.relationRow375 rho)
    (r376 : Seg15.relationRow376 rho)
    (r26 : Seg15.relationRow26 rho)
    (r377 : Seg15.relationRow377 rho)
    (r378 : Seg15.relationRow378 rho)
    (r379 : Seg15.relationRow379 rho)
    (r380 : Seg15.relationRow380 rho)
    (r381 : Seg15.relationRow381 rho)
    (r27 : Seg15.relationRow27 rho)
    (r382 : Seg15.relationRow382 rho)
    (r383 : Seg15.relationRow383 rho)
    (r384 : Seg15.relationRow384 rho)
    (r385 : Seg15.relationRow385 rho)
    (r386 : Seg15.relationRow386 rho)
    (r28 : Seg15.relationRow28 rho)
    (r387 : Seg15.relationRow387 rho)
    (r388 : Seg15.relationRow388 rho)
    (r389 : Seg15.relationRow389 rho)
    (r390 : Seg15.relationRow390 rho)
    (r391 : Seg15.relationRow391 rho)
    (r29 : Seg15.relationRow29 rho)
    (r392 : Seg15.relationRow392 rho)
    (r393 : Seg15.relationRow393 rho)
    (r394 : Seg15.relationRow394 rho)
    (r395 : Seg15.relationRow395 rho)
    (r396 : Seg15.relationRow396 rho)
    (r30 : Seg15.relationRow30 rho)
    (r397 : Seg15.relationRow397 rho)
    (r398 : Seg15.relationRow398 rho)
    (r399 : Seg15.relationRow399 rho)
    (r400 : Seg15.relationRow400 rho)
    (r401 : Seg15.relationRow401 rho)
    : ∀ i, 21 ≤ i → i ≤ 30 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step21 rho r21 r352 r353 r354 r355 r356 hacc
  · exact seg15_prefix_step22 rho r22 r357 r358 r359 r360 r361 hacc
  · exact seg15_prefix_step23 rho r23 r362 r363 r364 r365 r366 hacc
  · exact seg15_prefix_step24 rho r24 r367 r368 r369 r370 r371 hacc
  · exact seg15_prefix_step25 rho r25 r372 r373 r374 r375 r376 hacc
  · exact seg15_prefix_step26 rho r26 r377 r378 r379 r380 r381 hacc
  · exact seg15_prefix_step27 rho r27 r382 r383 r384 r385 r386 hacc
  · exact seg15_prefix_step28 rho r28 r387 r388 r389 r390 r391 hacc
  · exact seg15_prefix_step29 rho r29 r392 r393 r394 r395 r396 hacc
  · exact seg15_prefix_step30 rho r30 r397 r398 r399 r400 r401 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

