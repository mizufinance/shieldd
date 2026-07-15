import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep51
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep52
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep53
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep54
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep55
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep56
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep57
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep58
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep59
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep60

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps5 (rho : Nat -> Seg15.F)
    (r51 : Seg15.relationRow51 rho)
    (r502 : Seg15.relationRow502 rho)
    (r503 : Seg15.relationRow503 rho)
    (r504 : Seg15.relationRow504 rho)
    (r505 : Seg15.relationRow505 rho)
    (r506 : Seg15.relationRow506 rho)
    (r52 : Seg15.relationRow52 rho)
    (r507 : Seg15.relationRow507 rho)
    (r508 : Seg15.relationRow508 rho)
    (r509 : Seg15.relationRow509 rho)
    (r510 : Seg15.relationRow510 rho)
    (r511 : Seg15.relationRow511 rho)
    (r53 : Seg15.relationRow53 rho)
    (r512 : Seg15.relationRow512 rho)
    (r513 : Seg15.relationRow513 rho)
    (r514 : Seg15.relationRow514 rho)
    (r515 : Seg15.relationRow515 rho)
    (r516 : Seg15.relationRow516 rho)
    (r54 : Seg15.relationRow54 rho)
    (r517 : Seg15.relationRow517 rho)
    (r518 : Seg15.relationRow518 rho)
    (r519 : Seg15.relationRow519 rho)
    (r520 : Seg15.relationRow520 rho)
    (r521 : Seg15.relationRow521 rho)
    (r55 : Seg15.relationRow55 rho)
    (r522 : Seg15.relationRow522 rho)
    (r523 : Seg15.relationRow523 rho)
    (r524 : Seg15.relationRow524 rho)
    (r525 : Seg15.relationRow525 rho)
    (r526 : Seg15.relationRow526 rho)
    (r56 : Seg15.relationRow56 rho)
    (r527 : Seg15.relationRow527 rho)
    (r528 : Seg15.relationRow528 rho)
    (r529 : Seg15.relationRow529 rho)
    (r530 : Seg15.relationRow530 rho)
    (r531 : Seg15.relationRow531 rho)
    (r57 : Seg15.relationRow57 rho)
    (r532 : Seg15.relationRow532 rho)
    (r533 : Seg15.relationRow533 rho)
    (r534 : Seg15.relationRow534 rho)
    (r535 : Seg15.relationRow535 rho)
    (r536 : Seg15.relationRow536 rho)
    (r58 : Seg15.relationRow58 rho)
    (r537 : Seg15.relationRow537 rho)
    (r538 : Seg15.relationRow538 rho)
    (r539 : Seg15.relationRow539 rho)
    (r540 : Seg15.relationRow540 rho)
    (r541 : Seg15.relationRow541 rho)
    (r59 : Seg15.relationRow59 rho)
    (r542 : Seg15.relationRow542 rho)
    (r543 : Seg15.relationRow543 rho)
    (r544 : Seg15.relationRow544 rho)
    (r545 : Seg15.relationRow545 rho)
    (r546 : Seg15.relationRow546 rho)
    (r60 : Seg15.relationRow60 rho)
    (r547 : Seg15.relationRow547 rho)
    (r548 : Seg15.relationRow548 rho)
    (r549 : Seg15.relationRow549 rho)
    (r550 : Seg15.relationRow550 rho)
    (r551 : Seg15.relationRow551 rho)
    : ∀ i, 51 ≤ i → i ≤ 60 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step51 rho r51 r502 r503 r504 r505 r506 hacc
  · exact seg15_prefix_step52 rho r52 r507 r508 r509 r510 r511 hacc
  · exact seg15_prefix_step53 rho r53 r512 r513 r514 r515 r516 hacc
  · exact seg15_prefix_step54 rho r54 r517 r518 r519 r520 r521 hacc
  · exact seg15_prefix_step55 rho r55 r522 r523 r524 r525 r526 hacc
  · exact seg15_prefix_step56 rho r56 r527 r528 r529 r530 r531 hacc
  · exact seg15_prefix_step57 rho r57 r532 r533 r534 r535 r536 hacc
  · exact seg15_prefix_step58 rho r58 r537 r538 r539 r540 r541 hacc
  · exact seg15_prefix_step59 rho r59 r542 r543 r544 r545 r546 hacc
  · exact seg15_prefix_step60 rho r60 r547 r548 r549 r550 r551 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

