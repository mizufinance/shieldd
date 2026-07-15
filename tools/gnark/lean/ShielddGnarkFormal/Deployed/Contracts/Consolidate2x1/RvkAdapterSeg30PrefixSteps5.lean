import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep51
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep52
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep53
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep54
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep55
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep56
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep57
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep58
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep59
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep60

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps5 (rho : Nat -> Seg30.F)
    (r51 : Seg30.relationRow51 rho)
    (r502 : Seg30.relationRow502 rho)
    (r503 : Seg30.relationRow503 rho)
    (r504 : Seg30.relationRow504 rho)
    (r505 : Seg30.relationRow505 rho)
    (r506 : Seg30.relationRow506 rho)
    (r52 : Seg30.relationRow52 rho)
    (r507 : Seg30.relationRow507 rho)
    (r508 : Seg30.relationRow508 rho)
    (r509 : Seg30.relationRow509 rho)
    (r510 : Seg30.relationRow510 rho)
    (r511 : Seg30.relationRow511 rho)
    (r53 : Seg30.relationRow53 rho)
    (r512 : Seg30.relationRow512 rho)
    (r513 : Seg30.relationRow513 rho)
    (r514 : Seg30.relationRow514 rho)
    (r515 : Seg30.relationRow515 rho)
    (r516 : Seg30.relationRow516 rho)
    (r54 : Seg30.relationRow54 rho)
    (r517 : Seg30.relationRow517 rho)
    (r518 : Seg30.relationRow518 rho)
    (r519 : Seg30.relationRow519 rho)
    (r520 : Seg30.relationRow520 rho)
    (r521 : Seg30.relationRow521 rho)
    (r55 : Seg30.relationRow55 rho)
    (r522 : Seg30.relationRow522 rho)
    (r523 : Seg30.relationRow523 rho)
    (r524 : Seg30.relationRow524 rho)
    (r525 : Seg30.relationRow525 rho)
    (r526 : Seg30.relationRow526 rho)
    (r56 : Seg30.relationRow56 rho)
    (r527 : Seg30.relationRow527 rho)
    (r528 : Seg30.relationRow528 rho)
    (r529 : Seg30.relationRow529 rho)
    (r530 : Seg30.relationRow530 rho)
    (r531 : Seg30.relationRow531 rho)
    (r57 : Seg30.relationRow57 rho)
    (r532 : Seg30.relationRow532 rho)
    (r533 : Seg30.relationRow533 rho)
    (r534 : Seg30.relationRow534 rho)
    (r535 : Seg30.relationRow535 rho)
    (r536 : Seg30.relationRow536 rho)
    (r58 : Seg30.relationRow58 rho)
    (r537 : Seg30.relationRow537 rho)
    (r538 : Seg30.relationRow538 rho)
    (r539 : Seg30.relationRow539 rho)
    (r540 : Seg30.relationRow540 rho)
    (r541 : Seg30.relationRow541 rho)
    (r59 : Seg30.relationRow59 rho)
    (r542 : Seg30.relationRow542 rho)
    (r543 : Seg30.relationRow543 rho)
    (r544 : Seg30.relationRow544 rho)
    (r545 : Seg30.relationRow545 rho)
    (r546 : Seg30.relationRow546 rho)
    (r60 : Seg30.relationRow60 rho)
    (r547 : Seg30.relationRow547 rho)
    (r548 : Seg30.relationRow548 rho)
    (r549 : Seg30.relationRow549 rho)
    (r550 : Seg30.relationRow550 rho)
    (r551 : Seg30.relationRow551 rho)
    : ∀ i, 51 ≤ i → i ≤ 60 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step51 rho r51 r502 r503 r504 r505 r506 hacc
  · exact seg30_prefix_step52 rho r52 r507 r508 r509 r510 r511 hacc
  · exact seg30_prefix_step53 rho r53 r512 r513 r514 r515 r516 hacc
  · exact seg30_prefix_step54 rho r54 r517 r518 r519 r520 r521 hacc
  · exact seg30_prefix_step55 rho r55 r522 r523 r524 r525 r526 hacc
  · exact seg30_prefix_step56 rho r56 r527 r528 r529 r530 r531 hacc
  · exact seg30_prefix_step57 rho r57 r532 r533 r534 r535 r536 hacc
  · exact seg30_prefix_step58 rho r58 r537 r538 r539 r540 r541 hacc
  · exact seg30_prefix_step59 rho r59 r542 r543 r544 r545 r546 hacc
  · exact seg30_prefix_step60 rho r60 r547 r548 r549 r550 r551 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

