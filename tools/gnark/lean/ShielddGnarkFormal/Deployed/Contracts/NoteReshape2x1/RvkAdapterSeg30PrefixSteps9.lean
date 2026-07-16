import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep91
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep92
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep93
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep94
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep95
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep96
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep97
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep98
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep99
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps9 (rho : Nat -> Seg30.F)
    (r91 : Seg30.relationRow91 rho)
    (r702 : Seg30.relationRow702 rho)
    (r703 : Seg30.relationRow703 rho)
    (r704 : Seg30.relationRow704 rho)
    (r705 : Seg30.relationRow705 rho)
    (r706 : Seg30.relationRow706 rho)
    (r92 : Seg30.relationRow92 rho)
    (r707 : Seg30.relationRow707 rho)
    (r708 : Seg30.relationRow708 rho)
    (r709 : Seg30.relationRow709 rho)
    (r710 : Seg30.relationRow710 rho)
    (r711 : Seg30.relationRow711 rho)
    (r93 : Seg30.relationRow93 rho)
    (r712 : Seg30.relationRow712 rho)
    (r713 : Seg30.relationRow713 rho)
    (r714 : Seg30.relationRow714 rho)
    (r715 : Seg30.relationRow715 rho)
    (r716 : Seg30.relationRow716 rho)
    (r94 : Seg30.relationRow94 rho)
    (r717 : Seg30.relationRow717 rho)
    (r718 : Seg30.relationRow718 rho)
    (r719 : Seg30.relationRow719 rho)
    (r720 : Seg30.relationRow720 rho)
    (r721 : Seg30.relationRow721 rho)
    (r95 : Seg30.relationRow95 rho)
    (r722 : Seg30.relationRow722 rho)
    (r723 : Seg30.relationRow723 rho)
    (r724 : Seg30.relationRow724 rho)
    (r725 : Seg30.relationRow725 rho)
    (r726 : Seg30.relationRow726 rho)
    (r96 : Seg30.relationRow96 rho)
    (r727 : Seg30.relationRow727 rho)
    (r728 : Seg30.relationRow728 rho)
    (r729 : Seg30.relationRow729 rho)
    (r730 : Seg30.relationRow730 rho)
    (r731 : Seg30.relationRow731 rho)
    (r97 : Seg30.relationRow97 rho)
    (r732 : Seg30.relationRow732 rho)
    (r733 : Seg30.relationRow733 rho)
    (r734 : Seg30.relationRow734 rho)
    (r735 : Seg30.relationRow735 rho)
    (r736 : Seg30.relationRow736 rho)
    (r98 : Seg30.relationRow98 rho)
    (r737 : Seg30.relationRow737 rho)
    (r738 : Seg30.relationRow738 rho)
    (r739 : Seg30.relationRow739 rho)
    (r740 : Seg30.relationRow740 rho)
    (r741 : Seg30.relationRow741 rho)
    (r99 : Seg30.relationRow99 rho)
    (r742 : Seg30.relationRow742 rho)
    (r743 : Seg30.relationRow743 rho)
    (r744 : Seg30.relationRow744 rho)
    (r745 : Seg30.relationRow745 rho)
    (r746 : Seg30.relationRow746 rho)
    (r100 : Seg30.relationRow100 rho)
    (r747 : Seg30.relationRow747 rho)
    (r748 : Seg30.relationRow748 rho)
    (r749 : Seg30.relationRow749 rho)
    (r750 : Seg30.relationRow750 rho)
    (r751 : Seg30.relationRow751 rho)
    : ∀ i, 91 ≤ i → i ≤ 100 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step91 rho r91 r702 r703 r704 r705 r706 hacc
  · exact seg30_prefix_step92 rho r92 r707 r708 r709 r710 r711 hacc
  · exact seg30_prefix_step93 rho r93 r712 r713 r714 r715 r716 hacc
  · exact seg30_prefix_step94 rho r94 r717 r718 r719 r720 r721 hacc
  · exact seg30_prefix_step95 rho r95 r722 r723 r724 r725 r726 hacc
  · exact seg30_prefix_step96 rho r96 r727 r728 r729 r730 r731 hacc
  · exact seg30_prefix_step97 rho r97 r732 r733 r734 r735 r736 hacc
  · exact seg30_prefix_step98 rho r98 r737 r738 r739 r740 r741 hacc
  · exact seg30_prefix_step99 rho r99 r742 r743 r744 r745 r746 hacc
  · exact seg30_prefix_step100 rho r100 r747 r748 r749 r750 r751 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

