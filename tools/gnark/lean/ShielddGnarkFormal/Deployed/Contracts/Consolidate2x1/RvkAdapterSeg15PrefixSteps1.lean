import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep11
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep12
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep13
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep14
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep15
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep16
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep17
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep18
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep19
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps1 (rho : Nat -> Seg15.F)
    (r11 : Seg15.relationRow11 rho)
    (r302 : Seg15.relationRow302 rho)
    (r303 : Seg15.relationRow303 rho)
    (r304 : Seg15.relationRow304 rho)
    (r305 : Seg15.relationRow305 rho)
    (r306 : Seg15.relationRow306 rho)
    (r12 : Seg15.relationRow12 rho)
    (r307 : Seg15.relationRow307 rho)
    (r308 : Seg15.relationRow308 rho)
    (r309 : Seg15.relationRow309 rho)
    (r310 : Seg15.relationRow310 rho)
    (r311 : Seg15.relationRow311 rho)
    (r13 : Seg15.relationRow13 rho)
    (r312 : Seg15.relationRow312 rho)
    (r313 : Seg15.relationRow313 rho)
    (r314 : Seg15.relationRow314 rho)
    (r315 : Seg15.relationRow315 rho)
    (r316 : Seg15.relationRow316 rho)
    (r14 : Seg15.relationRow14 rho)
    (r317 : Seg15.relationRow317 rho)
    (r318 : Seg15.relationRow318 rho)
    (r319 : Seg15.relationRow319 rho)
    (r320 : Seg15.relationRow320 rho)
    (r321 : Seg15.relationRow321 rho)
    (r15 : Seg15.relationRow15 rho)
    (r322 : Seg15.relationRow322 rho)
    (r323 : Seg15.relationRow323 rho)
    (r324 : Seg15.relationRow324 rho)
    (r325 : Seg15.relationRow325 rho)
    (r326 : Seg15.relationRow326 rho)
    (r16 : Seg15.relationRow16 rho)
    (r327 : Seg15.relationRow327 rho)
    (r328 : Seg15.relationRow328 rho)
    (r329 : Seg15.relationRow329 rho)
    (r330 : Seg15.relationRow330 rho)
    (r331 : Seg15.relationRow331 rho)
    (r17 : Seg15.relationRow17 rho)
    (r332 : Seg15.relationRow332 rho)
    (r333 : Seg15.relationRow333 rho)
    (r334 : Seg15.relationRow334 rho)
    (r335 : Seg15.relationRow335 rho)
    (r336 : Seg15.relationRow336 rho)
    (r18 : Seg15.relationRow18 rho)
    (r337 : Seg15.relationRow337 rho)
    (r338 : Seg15.relationRow338 rho)
    (r339 : Seg15.relationRow339 rho)
    (r340 : Seg15.relationRow340 rho)
    (r341 : Seg15.relationRow341 rho)
    (r19 : Seg15.relationRow19 rho)
    (r342 : Seg15.relationRow342 rho)
    (r343 : Seg15.relationRow343 rho)
    (r344 : Seg15.relationRow344 rho)
    (r345 : Seg15.relationRow345 rho)
    (r346 : Seg15.relationRow346 rho)
    (r20 : Seg15.relationRow20 rho)
    (r347 : Seg15.relationRow347 rho)
    (r348 : Seg15.relationRow348 rho)
    (r349 : Seg15.relationRow349 rho)
    (r350 : Seg15.relationRow350 rho)
    (r351 : Seg15.relationRow351 rho)
    : ∀ i, 11 ≤ i → i ≤ 20 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step11 rho r11 r302 r303 r304 r305 r306 hacc
  · exact seg15_prefix_step12 rho r12 r307 r308 r309 r310 r311 hacc
  · exact seg15_prefix_step13 rho r13 r312 r313 r314 r315 r316 hacc
  · exact seg15_prefix_step14 rho r14 r317 r318 r319 r320 r321 hacc
  · exact seg15_prefix_step15 rho r15 r322 r323 r324 r325 r326 hacc
  · exact seg15_prefix_step16 rho r16 r327 r328 r329 r330 r331 hacc
  · exact seg15_prefix_step17 rho r17 r332 r333 r334 r335 r336 hacc
  · exact seg15_prefix_step18 rho r18 r337 r338 r339 r340 r341 hacc
  · exact seg15_prefix_step19 rho r19 r342 r343 r344 r345 r346 hacc
  · exact seg15_prefix_step20 rho r20 r347 r348 r349 r350 r351 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

