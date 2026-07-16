import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep6
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep7
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep8
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep9
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps0 (rho : Nat -> Seg30.F)
    (r1 : Seg30.relationRow1 rho)
    (r252 : Seg30.relationRow252 rho)
    (r253 : Seg30.relationRow253 rho)
    (r254 : Seg30.relationRow254 rho)
    (r255 : Seg30.relationRow255 rho)
    (r256 : Seg30.relationRow256 rho)
    (r2 : Seg30.relationRow2 rho)
    (r257 : Seg30.relationRow257 rho)
    (r258 : Seg30.relationRow258 rho)
    (r259 : Seg30.relationRow259 rho)
    (r260 : Seg30.relationRow260 rho)
    (r261 : Seg30.relationRow261 rho)
    (r3 : Seg30.relationRow3 rho)
    (r262 : Seg30.relationRow262 rho)
    (r263 : Seg30.relationRow263 rho)
    (r264 : Seg30.relationRow264 rho)
    (r265 : Seg30.relationRow265 rho)
    (r266 : Seg30.relationRow266 rho)
    (r4 : Seg30.relationRow4 rho)
    (r267 : Seg30.relationRow267 rho)
    (r268 : Seg30.relationRow268 rho)
    (r269 : Seg30.relationRow269 rho)
    (r270 : Seg30.relationRow270 rho)
    (r271 : Seg30.relationRow271 rho)
    (r5 : Seg30.relationRow5 rho)
    (r272 : Seg30.relationRow272 rho)
    (r273 : Seg30.relationRow273 rho)
    (r274 : Seg30.relationRow274 rho)
    (r275 : Seg30.relationRow275 rho)
    (r276 : Seg30.relationRow276 rho)
    (r6 : Seg30.relationRow6 rho)
    (r277 : Seg30.relationRow277 rho)
    (r278 : Seg30.relationRow278 rho)
    (r279 : Seg30.relationRow279 rho)
    (r280 : Seg30.relationRow280 rho)
    (r281 : Seg30.relationRow281 rho)
    (r7 : Seg30.relationRow7 rho)
    (r282 : Seg30.relationRow282 rho)
    (r283 : Seg30.relationRow283 rho)
    (r284 : Seg30.relationRow284 rho)
    (r285 : Seg30.relationRow285 rho)
    (r286 : Seg30.relationRow286 rho)
    (r8 : Seg30.relationRow8 rho)
    (r287 : Seg30.relationRow287 rho)
    (r288 : Seg30.relationRow288 rho)
    (r289 : Seg30.relationRow289 rho)
    (r290 : Seg30.relationRow290 rho)
    (r291 : Seg30.relationRow291 rho)
    (r9 : Seg30.relationRow9 rho)
    (r292 : Seg30.relationRow292 rho)
    (r293 : Seg30.relationRow293 rho)
    (r294 : Seg30.relationRow294 rho)
    (r295 : Seg30.relationRow295 rho)
    (r296 : Seg30.relationRow296 rho)
    (r10 : Seg30.relationRow10 rho)
    (r297 : Seg30.relationRow297 rho)
    (r298 : Seg30.relationRow298 rho)
    (r299 : Seg30.relationRow299 rho)
    (r300 : Seg30.relationRow300 rho)
    (r301 : Seg30.relationRow301 rho)
    : ∀ i, 1 ≤ i → i ≤ 10 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step1 rho r1 r252 r253 r254 r255 r256 hacc
  · exact seg30_prefix_step2 rho r2 r257 r258 r259 r260 r261 hacc
  · exact seg30_prefix_step3 rho r3 r262 r263 r264 r265 r266 hacc
  · exact seg30_prefix_step4 rho r4 r267 r268 r269 r270 r271 hacc
  · exact seg30_prefix_step5 rho r5 r272 r273 r274 r275 r276 hacc
  · exact seg30_prefix_step6 rho r6 r277 r278 r279 r280 r281 hacc
  · exact seg30_prefix_step7 rho r7 r282 r283 r284 r285 r286 hacc
  · exact seg30_prefix_step8 rho r8 r287 r288 r289 r290 r291 hacc
  · exact seg30_prefix_step9 rho r9 r292 r293 r294 r295 r296 hacc
  · exact seg30_prefix_step10 rho r10 r297 r298 r299 r300 r301 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

