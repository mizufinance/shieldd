import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep91
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep92
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep93
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep94
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep95
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep96
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep97
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep98
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep99
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps9 (rho : Nat -> Seg15.F)
    (r91 : Seg15.relationRow91 rho)
    (r702 : Seg15.relationRow702 rho)
    (r703 : Seg15.relationRow703 rho)
    (r704 : Seg15.relationRow704 rho)
    (r705 : Seg15.relationRow705 rho)
    (r706 : Seg15.relationRow706 rho)
    (r92 : Seg15.relationRow92 rho)
    (r707 : Seg15.relationRow707 rho)
    (r708 : Seg15.relationRow708 rho)
    (r709 : Seg15.relationRow709 rho)
    (r710 : Seg15.relationRow710 rho)
    (r711 : Seg15.relationRow711 rho)
    (r93 : Seg15.relationRow93 rho)
    (r712 : Seg15.relationRow712 rho)
    (r713 : Seg15.relationRow713 rho)
    (r714 : Seg15.relationRow714 rho)
    (r715 : Seg15.relationRow715 rho)
    (r716 : Seg15.relationRow716 rho)
    (r94 : Seg15.relationRow94 rho)
    (r717 : Seg15.relationRow717 rho)
    (r718 : Seg15.relationRow718 rho)
    (r719 : Seg15.relationRow719 rho)
    (r720 : Seg15.relationRow720 rho)
    (r721 : Seg15.relationRow721 rho)
    (r95 : Seg15.relationRow95 rho)
    (r722 : Seg15.relationRow722 rho)
    (r723 : Seg15.relationRow723 rho)
    (r724 : Seg15.relationRow724 rho)
    (r725 : Seg15.relationRow725 rho)
    (r726 : Seg15.relationRow726 rho)
    (r96 : Seg15.relationRow96 rho)
    (r727 : Seg15.relationRow727 rho)
    (r728 : Seg15.relationRow728 rho)
    (r729 : Seg15.relationRow729 rho)
    (r730 : Seg15.relationRow730 rho)
    (r731 : Seg15.relationRow731 rho)
    (r97 : Seg15.relationRow97 rho)
    (r732 : Seg15.relationRow732 rho)
    (r733 : Seg15.relationRow733 rho)
    (r734 : Seg15.relationRow734 rho)
    (r735 : Seg15.relationRow735 rho)
    (r736 : Seg15.relationRow736 rho)
    (r98 : Seg15.relationRow98 rho)
    (r737 : Seg15.relationRow737 rho)
    (r738 : Seg15.relationRow738 rho)
    (r739 : Seg15.relationRow739 rho)
    (r740 : Seg15.relationRow740 rho)
    (r741 : Seg15.relationRow741 rho)
    (r99 : Seg15.relationRow99 rho)
    (r742 : Seg15.relationRow742 rho)
    (r743 : Seg15.relationRow743 rho)
    (r744 : Seg15.relationRow744 rho)
    (r745 : Seg15.relationRow745 rho)
    (r746 : Seg15.relationRow746 rho)
    (r100 : Seg15.relationRow100 rho)
    (r747 : Seg15.relationRow747 rho)
    (r748 : Seg15.relationRow748 rho)
    (r749 : Seg15.relationRow749 rho)
    (r750 : Seg15.relationRow750 rho)
    (r751 : Seg15.relationRow751 rho)
    : ∀ i, 91 ≤ i → i ≤ 100 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step91 rho r91 r702 r703 r704 r705 r706 hacc
  · exact seg15_prefix_step92 rho r92 r707 r708 r709 r710 r711 hacc
  · exact seg15_prefix_step93 rho r93 r712 r713 r714 r715 r716 hacc
  · exact seg15_prefix_step94 rho r94 r717 r718 r719 r720 r721 hacc
  · exact seg15_prefix_step95 rho r95 r722 r723 r724 r725 r726 hacc
  · exact seg15_prefix_step96 rho r96 r727 r728 r729 r730 r731 hacc
  · exact seg15_prefix_step97 rho r97 r732 r733 r734 r735 r736 hacc
  · exact seg15_prefix_step98 rho r98 r737 r738 r739 r740 r741 hacc
  · exact seg15_prefix_step99 rho r99 r742 r743 r744 r745 r746 hacc
  · exact seg15_prefix_step100 rho r100 r747 r748 r749 r750 r751 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

