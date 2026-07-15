import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep11
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep12
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep13
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep14
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep15
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep16
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep17
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep18
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep19
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps1 (rho : Nat -> Seg30.F)
    (r11 : Seg30.relationRow11 rho)
    (r302 : Seg30.relationRow302 rho)
    (r303 : Seg30.relationRow303 rho)
    (r304 : Seg30.relationRow304 rho)
    (r305 : Seg30.relationRow305 rho)
    (r306 : Seg30.relationRow306 rho)
    (r12 : Seg30.relationRow12 rho)
    (r307 : Seg30.relationRow307 rho)
    (r308 : Seg30.relationRow308 rho)
    (r309 : Seg30.relationRow309 rho)
    (r310 : Seg30.relationRow310 rho)
    (r311 : Seg30.relationRow311 rho)
    (r13 : Seg30.relationRow13 rho)
    (r312 : Seg30.relationRow312 rho)
    (r313 : Seg30.relationRow313 rho)
    (r314 : Seg30.relationRow314 rho)
    (r315 : Seg30.relationRow315 rho)
    (r316 : Seg30.relationRow316 rho)
    (r14 : Seg30.relationRow14 rho)
    (r317 : Seg30.relationRow317 rho)
    (r318 : Seg30.relationRow318 rho)
    (r319 : Seg30.relationRow319 rho)
    (r320 : Seg30.relationRow320 rho)
    (r321 : Seg30.relationRow321 rho)
    (r15 : Seg30.relationRow15 rho)
    (r322 : Seg30.relationRow322 rho)
    (r323 : Seg30.relationRow323 rho)
    (r324 : Seg30.relationRow324 rho)
    (r325 : Seg30.relationRow325 rho)
    (r326 : Seg30.relationRow326 rho)
    (r16 : Seg30.relationRow16 rho)
    (r327 : Seg30.relationRow327 rho)
    (r328 : Seg30.relationRow328 rho)
    (r329 : Seg30.relationRow329 rho)
    (r330 : Seg30.relationRow330 rho)
    (r331 : Seg30.relationRow331 rho)
    (r17 : Seg30.relationRow17 rho)
    (r332 : Seg30.relationRow332 rho)
    (r333 : Seg30.relationRow333 rho)
    (r334 : Seg30.relationRow334 rho)
    (r335 : Seg30.relationRow335 rho)
    (r336 : Seg30.relationRow336 rho)
    (r18 : Seg30.relationRow18 rho)
    (r337 : Seg30.relationRow337 rho)
    (r338 : Seg30.relationRow338 rho)
    (r339 : Seg30.relationRow339 rho)
    (r340 : Seg30.relationRow340 rho)
    (r341 : Seg30.relationRow341 rho)
    (r19 : Seg30.relationRow19 rho)
    (r342 : Seg30.relationRow342 rho)
    (r343 : Seg30.relationRow343 rho)
    (r344 : Seg30.relationRow344 rho)
    (r345 : Seg30.relationRow345 rho)
    (r346 : Seg30.relationRow346 rho)
    (r20 : Seg30.relationRow20 rho)
    (r347 : Seg30.relationRow347 rho)
    (r348 : Seg30.relationRow348 rho)
    (r349 : Seg30.relationRow349 rho)
    (r350 : Seg30.relationRow350 rho)
    (r351 : Seg30.relationRow351 rho)
    : ∀ i, 11 ≤ i → i ≤ 20 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step11 rho r11 r302 r303 r304 r305 r306 hacc
  · exact seg30_prefix_step12 rho r12 r307 r308 r309 r310 r311 hacc
  · exact seg30_prefix_step13 rho r13 r312 r313 r314 r315 r316 hacc
  · exact seg30_prefix_step14 rho r14 r317 r318 r319 r320 r321 hacc
  · exact seg30_prefix_step15 rho r15 r322 r323 r324 r325 r326 hacc
  · exact seg30_prefix_step16 rho r16 r327 r328 r329 r330 r331 hacc
  · exact seg30_prefix_step17 rho r17 r332 r333 r334 r335 r336 hacc
  · exact seg30_prefix_step18 rho r18 r337 r338 r339 r340 r341 hacc
  · exact seg30_prefix_step19 rho r19 r342 r343 r344 r345 r346 hacc
  · exact seg30_prefix_step20 rho r20 r347 r348 r349 r350 r351 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

