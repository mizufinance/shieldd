import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep71
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep72
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep73
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep74
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep75
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep76
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep77
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep78
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep79
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixStep80

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps7 (rho : Nat -> Seg15.F)
    (r71 : Seg15.relationRow71 rho)
    (r602 : Seg15.relationRow602 rho)
    (r603 : Seg15.relationRow603 rho)
    (r604 : Seg15.relationRow604 rho)
    (r605 : Seg15.relationRow605 rho)
    (r606 : Seg15.relationRow606 rho)
    (r72 : Seg15.relationRow72 rho)
    (r607 : Seg15.relationRow607 rho)
    (r608 : Seg15.relationRow608 rho)
    (r609 : Seg15.relationRow609 rho)
    (r610 : Seg15.relationRow610 rho)
    (r611 : Seg15.relationRow611 rho)
    (r73 : Seg15.relationRow73 rho)
    (r612 : Seg15.relationRow612 rho)
    (r613 : Seg15.relationRow613 rho)
    (r614 : Seg15.relationRow614 rho)
    (r615 : Seg15.relationRow615 rho)
    (r616 : Seg15.relationRow616 rho)
    (r74 : Seg15.relationRow74 rho)
    (r617 : Seg15.relationRow617 rho)
    (r618 : Seg15.relationRow618 rho)
    (r619 : Seg15.relationRow619 rho)
    (r620 : Seg15.relationRow620 rho)
    (r621 : Seg15.relationRow621 rho)
    (r75 : Seg15.relationRow75 rho)
    (r622 : Seg15.relationRow622 rho)
    (r623 : Seg15.relationRow623 rho)
    (r624 : Seg15.relationRow624 rho)
    (r625 : Seg15.relationRow625 rho)
    (r626 : Seg15.relationRow626 rho)
    (r76 : Seg15.relationRow76 rho)
    (r627 : Seg15.relationRow627 rho)
    (r628 : Seg15.relationRow628 rho)
    (r629 : Seg15.relationRow629 rho)
    (r630 : Seg15.relationRow630 rho)
    (r631 : Seg15.relationRow631 rho)
    (r77 : Seg15.relationRow77 rho)
    (r632 : Seg15.relationRow632 rho)
    (r633 : Seg15.relationRow633 rho)
    (r634 : Seg15.relationRow634 rho)
    (r635 : Seg15.relationRow635 rho)
    (r636 : Seg15.relationRow636 rho)
    (r78 : Seg15.relationRow78 rho)
    (r637 : Seg15.relationRow637 rho)
    (r638 : Seg15.relationRow638 rho)
    (r639 : Seg15.relationRow639 rho)
    (r640 : Seg15.relationRow640 rho)
    (r641 : Seg15.relationRow641 rho)
    (r79 : Seg15.relationRow79 rho)
    (r642 : Seg15.relationRow642 rho)
    (r643 : Seg15.relationRow643 rho)
    (r644 : Seg15.relationRow644 rho)
    (r645 : Seg15.relationRow645 rho)
    (r646 : Seg15.relationRow646 rho)
    (r80 : Seg15.relationRow80 rho)
    (r647 : Seg15.relationRow647 rho)
    (r648 : Seg15.relationRow648 rho)
    (r649 : Seg15.relationRow649 rho)
    (r650 : Seg15.relationRow650 rho)
    (r651 : Seg15.relationRow651 rho)
    : ∀ i, 71 ≤ i → i ≤ 80 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step71 rho r71 r602 r603 r604 r605 r606 hacc
  · exact seg15_prefix_step72 rho r72 r607 r608 r609 r610 r611 hacc
  · exact seg15_prefix_step73 rho r73 r612 r613 r614 r615 r616 hacc
  · exact seg15_prefix_step74 rho r74 r617 r618 r619 r620 r621 hacc
  · exact seg15_prefix_step75 rho r75 r622 r623 r624 r625 r626 hacc
  · exact seg15_prefix_step76 rho r76 r627 r628 r629 r630 r631 hacc
  · exact seg15_prefix_step77 rho r77 r632 r633 r634 r635 r636 hacc
  · exact seg15_prefix_step78 rho r78 r637 r638 r639 r640 r641 hacc
  · exact seg15_prefix_step79 rho r79 r642 r643 r644 r645 r646 hacc
  · exact seg15_prefix_step80 rho r80 r647 r648 r649 r650 r651 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

