import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep71
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep72
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep73
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep74
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep75
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep76
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep77
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep78
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep79
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep80

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps7 (rho : Nat -> Seg30.F)
    (r71 : Seg30.relationRow71 rho)
    (r602 : Seg30.relationRow602 rho)
    (r603 : Seg30.relationRow603 rho)
    (r604 : Seg30.relationRow604 rho)
    (r605 : Seg30.relationRow605 rho)
    (r606 : Seg30.relationRow606 rho)
    (r72 : Seg30.relationRow72 rho)
    (r607 : Seg30.relationRow607 rho)
    (r608 : Seg30.relationRow608 rho)
    (r609 : Seg30.relationRow609 rho)
    (r610 : Seg30.relationRow610 rho)
    (r611 : Seg30.relationRow611 rho)
    (r73 : Seg30.relationRow73 rho)
    (r612 : Seg30.relationRow612 rho)
    (r613 : Seg30.relationRow613 rho)
    (r614 : Seg30.relationRow614 rho)
    (r615 : Seg30.relationRow615 rho)
    (r616 : Seg30.relationRow616 rho)
    (r74 : Seg30.relationRow74 rho)
    (r617 : Seg30.relationRow617 rho)
    (r618 : Seg30.relationRow618 rho)
    (r619 : Seg30.relationRow619 rho)
    (r620 : Seg30.relationRow620 rho)
    (r621 : Seg30.relationRow621 rho)
    (r75 : Seg30.relationRow75 rho)
    (r622 : Seg30.relationRow622 rho)
    (r623 : Seg30.relationRow623 rho)
    (r624 : Seg30.relationRow624 rho)
    (r625 : Seg30.relationRow625 rho)
    (r626 : Seg30.relationRow626 rho)
    (r76 : Seg30.relationRow76 rho)
    (r627 : Seg30.relationRow627 rho)
    (r628 : Seg30.relationRow628 rho)
    (r629 : Seg30.relationRow629 rho)
    (r630 : Seg30.relationRow630 rho)
    (r631 : Seg30.relationRow631 rho)
    (r77 : Seg30.relationRow77 rho)
    (r632 : Seg30.relationRow632 rho)
    (r633 : Seg30.relationRow633 rho)
    (r634 : Seg30.relationRow634 rho)
    (r635 : Seg30.relationRow635 rho)
    (r636 : Seg30.relationRow636 rho)
    (r78 : Seg30.relationRow78 rho)
    (r637 : Seg30.relationRow637 rho)
    (r638 : Seg30.relationRow638 rho)
    (r639 : Seg30.relationRow639 rho)
    (r640 : Seg30.relationRow640 rho)
    (r641 : Seg30.relationRow641 rho)
    (r79 : Seg30.relationRow79 rho)
    (r642 : Seg30.relationRow642 rho)
    (r643 : Seg30.relationRow643 rho)
    (r644 : Seg30.relationRow644 rho)
    (r645 : Seg30.relationRow645 rho)
    (r646 : Seg30.relationRow646 rho)
    (r80 : Seg30.relationRow80 rho)
    (r647 : Seg30.relationRow647 rho)
    (r648 : Seg30.relationRow648 rho)
    (r649 : Seg30.relationRow649 rho)
    (r650 : Seg30.relationRow650 rho)
    (r651 : Seg30.relationRow651 rho)
    : ∀ i, 71 ≤ i → i ≤ 80 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step71 rho r71 r602 r603 r604 r605 r606 hacc
  · exact seg30_prefix_step72 rho r72 r607 r608 r609 r610 r611 hacc
  · exact seg30_prefix_step73 rho r73 r612 r613 r614 r615 r616 hacc
  · exact seg30_prefix_step74 rho r74 r617 r618 r619 r620 r621 hacc
  · exact seg30_prefix_step75 rho r75 r622 r623 r624 r625 r626 hacc
  · exact seg30_prefix_step76 rho r76 r627 r628 r629 r630 r631 hacc
  · exact seg30_prefix_step77 rho r77 r632 r633 r634 r635 r636 hacc
  · exact seg30_prefix_step78 rho r78 r637 r638 r639 r640 r641 hacc
  · exact seg30_prefix_step79 rho r79 r642 r643 r644 r645 r646 hacc
  · exact seg30_prefix_step80 rho r80 r647 r648 r649 r650 r651 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

