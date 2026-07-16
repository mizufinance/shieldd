import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep81
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep82
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep83
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep84
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep85
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep86
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep87
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep88
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep89
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep90

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps8 (rho : Nat -> Seg15.F)
    (r81 : Seg15.relationRow81 rho)
    (r652 : Seg15.relationRow652 rho)
    (r653 : Seg15.relationRow653 rho)
    (r654 : Seg15.relationRow654 rho)
    (r655 : Seg15.relationRow655 rho)
    (r656 : Seg15.relationRow656 rho)
    (r82 : Seg15.relationRow82 rho)
    (r657 : Seg15.relationRow657 rho)
    (r658 : Seg15.relationRow658 rho)
    (r659 : Seg15.relationRow659 rho)
    (r660 : Seg15.relationRow660 rho)
    (r661 : Seg15.relationRow661 rho)
    (r83 : Seg15.relationRow83 rho)
    (r662 : Seg15.relationRow662 rho)
    (r663 : Seg15.relationRow663 rho)
    (r664 : Seg15.relationRow664 rho)
    (r665 : Seg15.relationRow665 rho)
    (r666 : Seg15.relationRow666 rho)
    (r84 : Seg15.relationRow84 rho)
    (r667 : Seg15.relationRow667 rho)
    (r668 : Seg15.relationRow668 rho)
    (r669 : Seg15.relationRow669 rho)
    (r670 : Seg15.relationRow670 rho)
    (r671 : Seg15.relationRow671 rho)
    (r85 : Seg15.relationRow85 rho)
    (r672 : Seg15.relationRow672 rho)
    (r673 : Seg15.relationRow673 rho)
    (r674 : Seg15.relationRow674 rho)
    (r675 : Seg15.relationRow675 rho)
    (r676 : Seg15.relationRow676 rho)
    (r86 : Seg15.relationRow86 rho)
    (r677 : Seg15.relationRow677 rho)
    (r678 : Seg15.relationRow678 rho)
    (r679 : Seg15.relationRow679 rho)
    (r680 : Seg15.relationRow680 rho)
    (r681 : Seg15.relationRow681 rho)
    (r87 : Seg15.relationRow87 rho)
    (r682 : Seg15.relationRow682 rho)
    (r683 : Seg15.relationRow683 rho)
    (r684 : Seg15.relationRow684 rho)
    (r685 : Seg15.relationRow685 rho)
    (r686 : Seg15.relationRow686 rho)
    (r88 : Seg15.relationRow88 rho)
    (r687 : Seg15.relationRow687 rho)
    (r688 : Seg15.relationRow688 rho)
    (r689 : Seg15.relationRow689 rho)
    (r690 : Seg15.relationRow690 rho)
    (r691 : Seg15.relationRow691 rho)
    (r89 : Seg15.relationRow89 rho)
    (r692 : Seg15.relationRow692 rho)
    (r693 : Seg15.relationRow693 rho)
    (r694 : Seg15.relationRow694 rho)
    (r695 : Seg15.relationRow695 rho)
    (r696 : Seg15.relationRow696 rho)
    (r90 : Seg15.relationRow90 rho)
    (r697 : Seg15.relationRow697 rho)
    (r698 : Seg15.relationRow698 rho)
    (r699 : Seg15.relationRow699 rho)
    (r700 : Seg15.relationRow700 rho)
    (r701 : Seg15.relationRow701 rho)
    : ∀ i, 81 ≤ i → i ≤ 90 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step81 rho r81 r652 r653 r654 r655 r656 hacc
  · exact seg15_prefix_step82 rho r82 r657 r658 r659 r660 r661 hacc
  · exact seg15_prefix_step83 rho r83 r662 r663 r664 r665 r666 hacc
  · exact seg15_prefix_step84 rho r84 r667 r668 r669 r670 r671 hacc
  · exact seg15_prefix_step85 rho r85 r672 r673 r674 r675 r676 hacc
  · exact seg15_prefix_step86 rho r86 r677 r678 r679 r680 r681 hacc
  · exact seg15_prefix_step87 rho r87 r682 r683 r684 r685 r686 hacc
  · exact seg15_prefix_step88 rho r88 r687 r688 r689 r690 r691 hacc
  · exact seg15_prefix_step89 rho r89 r692 r693 r694 r695 r696 hacc
  · exact seg15_prefix_step90 rho r90 r697 r698 r699 r700 r701 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

