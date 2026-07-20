import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep41
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep42
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep43
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep44
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep45
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep46
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep47
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep48
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep49
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep50

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps4 (rho : Nat -> Seg15.F)
    (r41 : Seg15.relationRow41 rho)
    (r452 : Seg15.relationRow452 rho)
    (r453 : Seg15.relationRow453 rho)
    (r454 : Seg15.relationRow454 rho)
    (r455 : Seg15.relationRow455 rho)
    (r456 : Seg15.relationRow456 rho)
    (r42 : Seg15.relationRow42 rho)
    (r457 : Seg15.relationRow457 rho)
    (r458 : Seg15.relationRow458 rho)
    (r459 : Seg15.relationRow459 rho)
    (r460 : Seg15.relationRow460 rho)
    (r461 : Seg15.relationRow461 rho)
    (r43 : Seg15.relationRow43 rho)
    (r462 : Seg15.relationRow462 rho)
    (r463 : Seg15.relationRow463 rho)
    (r464 : Seg15.relationRow464 rho)
    (r465 : Seg15.relationRow465 rho)
    (r466 : Seg15.relationRow466 rho)
    (r44 : Seg15.relationRow44 rho)
    (r467 : Seg15.relationRow467 rho)
    (r468 : Seg15.relationRow468 rho)
    (r469 : Seg15.relationRow469 rho)
    (r470 : Seg15.relationRow470 rho)
    (r471 : Seg15.relationRow471 rho)
    (r45 : Seg15.relationRow45 rho)
    (r472 : Seg15.relationRow472 rho)
    (r473 : Seg15.relationRow473 rho)
    (r474 : Seg15.relationRow474 rho)
    (r475 : Seg15.relationRow475 rho)
    (r476 : Seg15.relationRow476 rho)
    (r46 : Seg15.relationRow46 rho)
    (r477 : Seg15.relationRow477 rho)
    (r478 : Seg15.relationRow478 rho)
    (r479 : Seg15.relationRow479 rho)
    (r480 : Seg15.relationRow480 rho)
    (r481 : Seg15.relationRow481 rho)
    (r47 : Seg15.relationRow47 rho)
    (r482 : Seg15.relationRow482 rho)
    (r483 : Seg15.relationRow483 rho)
    (r484 : Seg15.relationRow484 rho)
    (r485 : Seg15.relationRow485 rho)
    (r486 : Seg15.relationRow486 rho)
    (r48 : Seg15.relationRow48 rho)
    (r487 : Seg15.relationRow487 rho)
    (r488 : Seg15.relationRow488 rho)
    (r489 : Seg15.relationRow489 rho)
    (r490 : Seg15.relationRow490 rho)
    (r491 : Seg15.relationRow491 rho)
    (r49 : Seg15.relationRow49 rho)
    (r492 : Seg15.relationRow492 rho)
    (r493 : Seg15.relationRow493 rho)
    (r494 : Seg15.relationRow494 rho)
    (r495 : Seg15.relationRow495 rho)
    (r496 : Seg15.relationRow496 rho)
    (r50 : Seg15.relationRow50 rho)
    (r497 : Seg15.relationRow497 rho)
    (r498 : Seg15.relationRow498 rho)
    (r499 : Seg15.relationRow499 rho)
    (r500 : Seg15.relationRow500 rho)
    (r501 : Seg15.relationRow501 rho)
    : ∀ i, 41 ≤ i → i ≤ 50 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step41 rho r41 r452 r453 r454 r455 r456 hacc
  · exact seg15_prefix_step42 rho r42 r457 r458 r459 r460 r461 hacc
  · exact seg15_prefix_step43 rho r43 r462 r463 r464 r465 r466 hacc
  · exact seg15_prefix_step44 rho r44 r467 r468 r469 r470 r471 hacc
  · exact seg15_prefix_step45 rho r45 r472 r473 r474 r475 r476 hacc
  · exact seg15_prefix_step46 rho r46 r477 r478 r479 r480 r481 hacc
  · exact seg15_prefix_step47 rho r47 r482 r483 r484 r485 r486 hacc
  · exact seg15_prefix_step48 rho r48 r487 r488 r489 r490 r491 hacc
  · exact seg15_prefix_step49 rho r49 r492 r493 r494 r495 r496 hacc
  · exact seg15_prefix_step50 rho r50 r497 r498 r499 r500 r501 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

