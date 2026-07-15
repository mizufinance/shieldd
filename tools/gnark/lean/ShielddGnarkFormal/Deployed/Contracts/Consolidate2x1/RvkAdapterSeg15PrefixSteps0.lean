import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep8
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps0 (rho : Nat -> Seg15.F)
    (r1 : Seg15.relationRow1 rho)
    (r252 : Seg15.relationRow252 rho)
    (r253 : Seg15.relationRow253 rho)
    (r254 : Seg15.relationRow254 rho)
    (r255 : Seg15.relationRow255 rho)
    (r256 : Seg15.relationRow256 rho)
    (r2 : Seg15.relationRow2 rho)
    (r257 : Seg15.relationRow257 rho)
    (r258 : Seg15.relationRow258 rho)
    (r259 : Seg15.relationRow259 rho)
    (r260 : Seg15.relationRow260 rho)
    (r261 : Seg15.relationRow261 rho)
    (r3 : Seg15.relationRow3 rho)
    (r262 : Seg15.relationRow262 rho)
    (r263 : Seg15.relationRow263 rho)
    (r264 : Seg15.relationRow264 rho)
    (r265 : Seg15.relationRow265 rho)
    (r266 : Seg15.relationRow266 rho)
    (r4 : Seg15.relationRow4 rho)
    (r267 : Seg15.relationRow267 rho)
    (r268 : Seg15.relationRow268 rho)
    (r269 : Seg15.relationRow269 rho)
    (r270 : Seg15.relationRow270 rho)
    (r271 : Seg15.relationRow271 rho)
    (r5 : Seg15.relationRow5 rho)
    (r272 : Seg15.relationRow272 rho)
    (r273 : Seg15.relationRow273 rho)
    (r274 : Seg15.relationRow274 rho)
    (r275 : Seg15.relationRow275 rho)
    (r276 : Seg15.relationRow276 rho)
    (r6 : Seg15.relationRow6 rho)
    (r277 : Seg15.relationRow277 rho)
    (r278 : Seg15.relationRow278 rho)
    (r279 : Seg15.relationRow279 rho)
    (r280 : Seg15.relationRow280 rho)
    (r281 : Seg15.relationRow281 rho)
    (r7 : Seg15.relationRow7 rho)
    (r282 : Seg15.relationRow282 rho)
    (r283 : Seg15.relationRow283 rho)
    (r284 : Seg15.relationRow284 rho)
    (r285 : Seg15.relationRow285 rho)
    (r286 : Seg15.relationRow286 rho)
    (r8 : Seg15.relationRow8 rho)
    (r287 : Seg15.relationRow287 rho)
    (r288 : Seg15.relationRow288 rho)
    (r289 : Seg15.relationRow289 rho)
    (r290 : Seg15.relationRow290 rho)
    (r291 : Seg15.relationRow291 rho)
    (r9 : Seg15.relationRow9 rho)
    (r292 : Seg15.relationRow292 rho)
    (r293 : Seg15.relationRow293 rho)
    (r294 : Seg15.relationRow294 rho)
    (r295 : Seg15.relationRow295 rho)
    (r296 : Seg15.relationRow296 rho)
    (r10 : Seg15.relationRow10 rho)
    (r297 : Seg15.relationRow297 rho)
    (r298 : Seg15.relationRow298 rho)
    (r299 : Seg15.relationRow299 rho)
    (r300 : Seg15.relationRow300 rho)
    (r301 : Seg15.relationRow301 rho)
    : ∀ i, 1 ≤ i → i ≤ 10 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step1 rho r1 r252 r253 r254 r255 r256 hacc
  · exact seg15_prefix_step2 rho r2 r257 r258 r259 r260 r261 hacc
  · exact seg15_prefix_step3 rho r3 r262 r263 r264 r265 r266 hacc
  · exact seg15_prefix_step4 rho r4 r267 r268 r269 r270 r271 hacc
  · exact seg15_prefix_step5 rho r5 r272 r273 r274 r275 r276 hacc
  · exact seg15_prefix_step6 rho r6 r277 r278 r279 r280 r281 hacc
  · exact seg15_prefix_step7 rho r7 r282 r283 r284 r285 r286 hacc
  · exact seg15_prefix_step8 rho r8 r287 r288 r289 r290 r291 hacc
  · exact seg15_prefix_step9 rho r9 r292 r293 r294 r295 r296 hacc
  · exact seg15_prefix_step10 rho r10 r297 r298 r299 r300 r301 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

