import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep21
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep22
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep23
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep24
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep25
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep26
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep27
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep28
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep29
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps2 (rho : Nat -> Seg30.F)
    (r21 : Seg30.relationRow21 rho)
    (r352 : Seg30.relationRow352 rho)
    (r353 : Seg30.relationRow353 rho)
    (r354 : Seg30.relationRow354 rho)
    (r355 : Seg30.relationRow355 rho)
    (r356 : Seg30.relationRow356 rho)
    (r22 : Seg30.relationRow22 rho)
    (r357 : Seg30.relationRow357 rho)
    (r358 : Seg30.relationRow358 rho)
    (r359 : Seg30.relationRow359 rho)
    (r360 : Seg30.relationRow360 rho)
    (r361 : Seg30.relationRow361 rho)
    (r23 : Seg30.relationRow23 rho)
    (r362 : Seg30.relationRow362 rho)
    (r363 : Seg30.relationRow363 rho)
    (r364 : Seg30.relationRow364 rho)
    (r365 : Seg30.relationRow365 rho)
    (r366 : Seg30.relationRow366 rho)
    (r24 : Seg30.relationRow24 rho)
    (r367 : Seg30.relationRow367 rho)
    (r368 : Seg30.relationRow368 rho)
    (r369 : Seg30.relationRow369 rho)
    (r370 : Seg30.relationRow370 rho)
    (r371 : Seg30.relationRow371 rho)
    (r25 : Seg30.relationRow25 rho)
    (r372 : Seg30.relationRow372 rho)
    (r373 : Seg30.relationRow373 rho)
    (r374 : Seg30.relationRow374 rho)
    (r375 : Seg30.relationRow375 rho)
    (r376 : Seg30.relationRow376 rho)
    (r26 : Seg30.relationRow26 rho)
    (r377 : Seg30.relationRow377 rho)
    (r378 : Seg30.relationRow378 rho)
    (r379 : Seg30.relationRow379 rho)
    (r380 : Seg30.relationRow380 rho)
    (r381 : Seg30.relationRow381 rho)
    (r27 : Seg30.relationRow27 rho)
    (r382 : Seg30.relationRow382 rho)
    (r383 : Seg30.relationRow383 rho)
    (r384 : Seg30.relationRow384 rho)
    (r385 : Seg30.relationRow385 rho)
    (r386 : Seg30.relationRow386 rho)
    (r28 : Seg30.relationRow28 rho)
    (r387 : Seg30.relationRow387 rho)
    (r388 : Seg30.relationRow388 rho)
    (r389 : Seg30.relationRow389 rho)
    (r390 : Seg30.relationRow390 rho)
    (r391 : Seg30.relationRow391 rho)
    (r29 : Seg30.relationRow29 rho)
    (r392 : Seg30.relationRow392 rho)
    (r393 : Seg30.relationRow393 rho)
    (r394 : Seg30.relationRow394 rho)
    (r395 : Seg30.relationRow395 rho)
    (r396 : Seg30.relationRow396 rho)
    (r30 : Seg30.relationRow30 rho)
    (r397 : Seg30.relationRow397 rho)
    (r398 : Seg30.relationRow398 rho)
    (r399 : Seg30.relationRow399 rho)
    (r400 : Seg30.relationRow400 rho)
    (r401 : Seg30.relationRow401 rho)
    : ∀ i, 21 ≤ i → i ≤ 30 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step21 rho r21 r352 r353 r354 r355 r356 hacc
  · exact seg30_prefix_step22 rho r22 r357 r358 r359 r360 r361 hacc
  · exact seg30_prefix_step23 rho r23 r362 r363 r364 r365 r366 hacc
  · exact seg30_prefix_step24 rho r24 r367 r368 r369 r370 r371 hacc
  · exact seg30_prefix_step25 rho r25 r372 r373 r374 r375 r376 hacc
  · exact seg30_prefix_step26 rho r26 r377 r378 r379 r380 r381 hacc
  · exact seg30_prefix_step27 rho r27 r382 r383 r384 r385 r386 hacc
  · exact seg30_prefix_step28 rho r28 r387 r388 r389 r390 r391 hacc
  · exact seg30_prefix_step29 rho r29 r392 r393 r394 r395 r396 hacc
  · exact seg30_prefix_step30 rho r30 r397 r398 r399 r400 r401 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

