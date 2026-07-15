import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep81
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep82
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep83
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep84
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep85
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep86
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep87
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep88
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep89
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep90

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps8 (rho : Nat -> Seg30.F)
    (r81 : Seg30.relationRow81 rho)
    (r652 : Seg30.relationRow652 rho)
    (r653 : Seg30.relationRow653 rho)
    (r654 : Seg30.relationRow654 rho)
    (r655 : Seg30.relationRow655 rho)
    (r656 : Seg30.relationRow656 rho)
    (r82 : Seg30.relationRow82 rho)
    (r657 : Seg30.relationRow657 rho)
    (r658 : Seg30.relationRow658 rho)
    (r659 : Seg30.relationRow659 rho)
    (r660 : Seg30.relationRow660 rho)
    (r661 : Seg30.relationRow661 rho)
    (r83 : Seg30.relationRow83 rho)
    (r662 : Seg30.relationRow662 rho)
    (r663 : Seg30.relationRow663 rho)
    (r664 : Seg30.relationRow664 rho)
    (r665 : Seg30.relationRow665 rho)
    (r666 : Seg30.relationRow666 rho)
    (r84 : Seg30.relationRow84 rho)
    (r667 : Seg30.relationRow667 rho)
    (r668 : Seg30.relationRow668 rho)
    (r669 : Seg30.relationRow669 rho)
    (r670 : Seg30.relationRow670 rho)
    (r671 : Seg30.relationRow671 rho)
    (r85 : Seg30.relationRow85 rho)
    (r672 : Seg30.relationRow672 rho)
    (r673 : Seg30.relationRow673 rho)
    (r674 : Seg30.relationRow674 rho)
    (r675 : Seg30.relationRow675 rho)
    (r676 : Seg30.relationRow676 rho)
    (r86 : Seg30.relationRow86 rho)
    (r677 : Seg30.relationRow677 rho)
    (r678 : Seg30.relationRow678 rho)
    (r679 : Seg30.relationRow679 rho)
    (r680 : Seg30.relationRow680 rho)
    (r681 : Seg30.relationRow681 rho)
    (r87 : Seg30.relationRow87 rho)
    (r682 : Seg30.relationRow682 rho)
    (r683 : Seg30.relationRow683 rho)
    (r684 : Seg30.relationRow684 rho)
    (r685 : Seg30.relationRow685 rho)
    (r686 : Seg30.relationRow686 rho)
    (r88 : Seg30.relationRow88 rho)
    (r687 : Seg30.relationRow687 rho)
    (r688 : Seg30.relationRow688 rho)
    (r689 : Seg30.relationRow689 rho)
    (r690 : Seg30.relationRow690 rho)
    (r691 : Seg30.relationRow691 rho)
    (r89 : Seg30.relationRow89 rho)
    (r692 : Seg30.relationRow692 rho)
    (r693 : Seg30.relationRow693 rho)
    (r694 : Seg30.relationRow694 rho)
    (r695 : Seg30.relationRow695 rho)
    (r696 : Seg30.relationRow696 rho)
    (r90 : Seg30.relationRow90 rho)
    (r697 : Seg30.relationRow697 rho)
    (r698 : Seg30.relationRow698 rho)
    (r699 : Seg30.relationRow699 rho)
    (r700 : Seg30.relationRow700 rho)
    (r701 : Seg30.relationRow701 rho)
    : ∀ i, 81 ≤ i → i ≤ 90 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step81 rho r81 r652 r653 r654 r655 r656 hacc
  · exact seg30_prefix_step82 rho r82 r657 r658 r659 r660 r661 hacc
  · exact seg30_prefix_step83 rho r83 r662 r663 r664 r665 r666 hacc
  · exact seg30_prefix_step84 rho r84 r667 r668 r669 r670 r671 hacc
  · exact seg30_prefix_step85 rho r85 r672 r673 r674 r675 r676 hacc
  · exact seg30_prefix_step86 rho r86 r677 r678 r679 r680 r681 hacc
  · exact seg30_prefix_step87 rho r87 r682 r683 r684 r685 r686 hacc
  · exact seg30_prefix_step88 rho r88 r687 r688 r689 r690 r691 hacc
  · exact seg30_prefix_step89 rho r89 r692 r693 r694 r695 r696 hacc
  · exact seg30_prefix_step90 rho r90 r697 r698 r699 r700 r701 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

