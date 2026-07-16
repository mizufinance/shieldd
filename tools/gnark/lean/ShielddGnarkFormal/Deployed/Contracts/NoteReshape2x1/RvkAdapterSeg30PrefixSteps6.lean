import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep61
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep62
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep63
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep64
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep65
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep66
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep67
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep68
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep69
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep70

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps6 (rho : Nat -> Seg30.F)
    (r61 : Seg30.relationRow61 rho)
    (r552 : Seg30.relationRow552 rho)
    (r553 : Seg30.relationRow553 rho)
    (r554 : Seg30.relationRow554 rho)
    (r555 : Seg30.relationRow555 rho)
    (r556 : Seg30.relationRow556 rho)
    (r62 : Seg30.relationRow62 rho)
    (r557 : Seg30.relationRow557 rho)
    (r558 : Seg30.relationRow558 rho)
    (r559 : Seg30.relationRow559 rho)
    (r560 : Seg30.relationRow560 rho)
    (r561 : Seg30.relationRow561 rho)
    (r63 : Seg30.relationRow63 rho)
    (r562 : Seg30.relationRow562 rho)
    (r563 : Seg30.relationRow563 rho)
    (r564 : Seg30.relationRow564 rho)
    (r565 : Seg30.relationRow565 rho)
    (r566 : Seg30.relationRow566 rho)
    (r64 : Seg30.relationRow64 rho)
    (r567 : Seg30.relationRow567 rho)
    (r568 : Seg30.relationRow568 rho)
    (r569 : Seg30.relationRow569 rho)
    (r570 : Seg30.relationRow570 rho)
    (r571 : Seg30.relationRow571 rho)
    (r65 : Seg30.relationRow65 rho)
    (r572 : Seg30.relationRow572 rho)
    (r573 : Seg30.relationRow573 rho)
    (r574 : Seg30.relationRow574 rho)
    (r575 : Seg30.relationRow575 rho)
    (r576 : Seg30.relationRow576 rho)
    (r66 : Seg30.relationRow66 rho)
    (r577 : Seg30.relationRow577 rho)
    (r578 : Seg30.relationRow578 rho)
    (r579 : Seg30.relationRow579 rho)
    (r580 : Seg30.relationRow580 rho)
    (r581 : Seg30.relationRow581 rho)
    (r67 : Seg30.relationRow67 rho)
    (r582 : Seg30.relationRow582 rho)
    (r583 : Seg30.relationRow583 rho)
    (r584 : Seg30.relationRow584 rho)
    (r585 : Seg30.relationRow585 rho)
    (r586 : Seg30.relationRow586 rho)
    (r68 : Seg30.relationRow68 rho)
    (r587 : Seg30.relationRow587 rho)
    (r588 : Seg30.relationRow588 rho)
    (r589 : Seg30.relationRow589 rho)
    (r590 : Seg30.relationRow590 rho)
    (r591 : Seg30.relationRow591 rho)
    (r69 : Seg30.relationRow69 rho)
    (r592 : Seg30.relationRow592 rho)
    (r593 : Seg30.relationRow593 rho)
    (r594 : Seg30.relationRow594 rho)
    (r595 : Seg30.relationRow595 rho)
    (r596 : Seg30.relationRow596 rho)
    (r70 : Seg30.relationRow70 rho)
    (r597 : Seg30.relationRow597 rho)
    (r598 : Seg30.relationRow598 rho)
    (r599 : Seg30.relationRow599 rho)
    (r600 : Seg30.relationRow600 rho)
    (r601 : Seg30.relationRow601 rho)
    : ∀ i, 61 ≤ i → i ≤ 70 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step61 rho r61 r552 r553 r554 r555 r556 hacc
  · exact seg30_prefix_step62 rho r62 r557 r558 r559 r560 r561 hacc
  · exact seg30_prefix_step63 rho r63 r562 r563 r564 r565 r566 hacc
  · exact seg30_prefix_step64 rho r64 r567 r568 r569 r570 r571 hacc
  · exact seg30_prefix_step65 rho r65 r572 r573 r574 r575 r576 hacc
  · exact seg30_prefix_step66 rho r66 r577 r578 r579 r580 r581 hacc
  · exact seg30_prefix_step67 rho r67 r582 r583 r584 r585 r586 hacc
  · exact seg30_prefix_step68 rho r68 r587 r588 r589 r590 r591 hacc
  · exact seg30_prefix_step69 rho r69 r592 r593 r594 r595 r596 hacc
  · exact seg30_prefix_step70 rho r70 r597 r598 r599 r600 r601 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

