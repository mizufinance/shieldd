import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep41
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep42
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep43
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep44
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep45
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep46
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep47
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep48
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep49
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep50

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps4 (rho : Nat -> Seg30.F)
    (r41 : Seg30.relationRow41 rho)
    (r452 : Seg30.relationRow452 rho)
    (r453 : Seg30.relationRow453 rho)
    (r454 : Seg30.relationRow454 rho)
    (r455 : Seg30.relationRow455 rho)
    (r456 : Seg30.relationRow456 rho)
    (r42 : Seg30.relationRow42 rho)
    (r457 : Seg30.relationRow457 rho)
    (r458 : Seg30.relationRow458 rho)
    (r459 : Seg30.relationRow459 rho)
    (r460 : Seg30.relationRow460 rho)
    (r461 : Seg30.relationRow461 rho)
    (r43 : Seg30.relationRow43 rho)
    (r462 : Seg30.relationRow462 rho)
    (r463 : Seg30.relationRow463 rho)
    (r464 : Seg30.relationRow464 rho)
    (r465 : Seg30.relationRow465 rho)
    (r466 : Seg30.relationRow466 rho)
    (r44 : Seg30.relationRow44 rho)
    (r467 : Seg30.relationRow467 rho)
    (r468 : Seg30.relationRow468 rho)
    (r469 : Seg30.relationRow469 rho)
    (r470 : Seg30.relationRow470 rho)
    (r471 : Seg30.relationRow471 rho)
    (r45 : Seg30.relationRow45 rho)
    (r472 : Seg30.relationRow472 rho)
    (r473 : Seg30.relationRow473 rho)
    (r474 : Seg30.relationRow474 rho)
    (r475 : Seg30.relationRow475 rho)
    (r476 : Seg30.relationRow476 rho)
    (r46 : Seg30.relationRow46 rho)
    (r477 : Seg30.relationRow477 rho)
    (r478 : Seg30.relationRow478 rho)
    (r479 : Seg30.relationRow479 rho)
    (r480 : Seg30.relationRow480 rho)
    (r481 : Seg30.relationRow481 rho)
    (r47 : Seg30.relationRow47 rho)
    (r482 : Seg30.relationRow482 rho)
    (r483 : Seg30.relationRow483 rho)
    (r484 : Seg30.relationRow484 rho)
    (r485 : Seg30.relationRow485 rho)
    (r486 : Seg30.relationRow486 rho)
    (r48 : Seg30.relationRow48 rho)
    (r487 : Seg30.relationRow487 rho)
    (r488 : Seg30.relationRow488 rho)
    (r489 : Seg30.relationRow489 rho)
    (r490 : Seg30.relationRow490 rho)
    (r491 : Seg30.relationRow491 rho)
    (r49 : Seg30.relationRow49 rho)
    (r492 : Seg30.relationRow492 rho)
    (r493 : Seg30.relationRow493 rho)
    (r494 : Seg30.relationRow494 rho)
    (r495 : Seg30.relationRow495 rho)
    (r496 : Seg30.relationRow496 rho)
    (r50 : Seg30.relationRow50 rho)
    (r497 : Seg30.relationRow497 rho)
    (r498 : Seg30.relationRow498 rho)
    (r499 : Seg30.relationRow499 rho)
    (r500 : Seg30.relationRow500 rho)
    (r501 : Seg30.relationRow501 rho)
    : ∀ i, 41 ≤ i → i ≤ 50 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28311 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step41 rho r41 r452 r453 r454 r455 r456 hacc
  · exact seg30_prefix_step42 rho r42 r457 r458 r459 r460 r461 hacc
  · exact seg30_prefix_step43 rho r43 r462 r463 r464 r465 r466 hacc
  · exact seg30_prefix_step44 rho r44 r467 r468 r469 r470 r471 hacc
  · exact seg30_prefix_step45 rho r45 r472 r473 r474 r475 r476 hacc
  · exact seg30_prefix_step46 rho r46 r477 r478 r479 r480 r481 hacc
  · exact seg30_prefix_step47 rho r47 r482 r483 r484 r485 r486 hacc
  · exact seg30_prefix_step48 rho r48 r487 r488 r489 r490 r491 hacc
  · exact seg30_prefix_step49 rho r49 r492 r493 r494 r495 r496 hacc
  · exact seg30_prefix_step50 rho r50 r497 r498 r499 r500 r501 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

