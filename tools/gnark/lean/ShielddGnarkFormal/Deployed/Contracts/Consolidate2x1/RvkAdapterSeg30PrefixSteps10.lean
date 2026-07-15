import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep101
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep102
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep103
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep104
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep105
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep106
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep107
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep108
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep109
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps10 (rho : Nat -> Seg30.F)
    (r101 : Seg30.relationRow101 rho)
    (r752 : Seg30.relationRow752 rho)
    (r753 : Seg30.relationRow753 rho)
    (r754 : Seg30.relationRow754 rho)
    (r755 : Seg30.relationRow755 rho)
    (r756 : Seg30.relationRow756 rho)
    (r102 : Seg30.relationRow102 rho)
    (r757 : Seg30.relationRow757 rho)
    (r758 : Seg30.relationRow758 rho)
    (r759 : Seg30.relationRow759 rho)
    (r760 : Seg30.relationRow760 rho)
    (r761 : Seg30.relationRow761 rho)
    (r103 : Seg30.relationRow103 rho)
    (r762 : Seg30.relationRow762 rho)
    (r763 : Seg30.relationRow763 rho)
    (r764 : Seg30.relationRow764 rho)
    (r765 : Seg30.relationRow765 rho)
    (r766 : Seg30.relationRow766 rho)
    (r104 : Seg30.relationRow104 rho)
    (r767 : Seg30.relationRow767 rho)
    (r768 : Seg30.relationRow768 rho)
    (r769 : Seg30.relationRow769 rho)
    (r770 : Seg30.relationRow770 rho)
    (r771 : Seg30.relationRow771 rho)
    (r105 : Seg30.relationRow105 rho)
    (r772 : Seg30.relationRow772 rho)
    (r773 : Seg30.relationRow773 rho)
    (r774 : Seg30.relationRow774 rho)
    (r775 : Seg30.relationRow775 rho)
    (r776 : Seg30.relationRow776 rho)
    (r106 : Seg30.relationRow106 rho)
    (r777 : Seg30.relationRow777 rho)
    (r778 : Seg30.relationRow778 rho)
    (r779 : Seg30.relationRow779 rho)
    (r780 : Seg30.relationRow780 rho)
    (r781 : Seg30.relationRow781 rho)
    (r107 : Seg30.relationRow107 rho)
    (r782 : Seg30.relationRow782 rho)
    (r783 : Seg30.relationRow783 rho)
    (r784 : Seg30.relationRow784 rho)
    (r785 : Seg30.relationRow785 rho)
    (r786 : Seg30.relationRow786 rho)
    (r108 : Seg30.relationRow108 rho)
    (r787 : Seg30.relationRow787 rho)
    (r788 : Seg30.relationRow788 rho)
    (r789 : Seg30.relationRow789 rho)
    (r790 : Seg30.relationRow790 rho)
    (r791 : Seg30.relationRow791 rho)
    (r109 : Seg30.relationRow109 rho)
    (r792 : Seg30.relationRow792 rho)
    (r793 : Seg30.relationRow793 rho)
    (r794 : Seg30.relationRow794 rho)
    (r795 : Seg30.relationRow795 rho)
    (r796 : Seg30.relationRow796 rho)
    (r110 : Seg30.relationRow110 rho)
    (r797 : Seg30.relationRow797 rho)
    (r798 : Seg30.relationRow798 rho)
    (r799 : Seg30.relationRow799 rho)
    (r800 : Seg30.relationRow800 rho)
    (r801 : Seg30.relationRow801 rho)
    : ∀ i, 101 ≤ i → i ≤ 110 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step101 rho r101 r752 r753 r754 r755 r756 hacc
  · exact seg30_prefix_step102 rho r102 r757 r758 r759 r760 r761 hacc
  · exact seg30_prefix_step103 rho r103 r762 r763 r764 r765 r766 hacc
  · exact seg30_prefix_step104 rho r104 r767 r768 r769 r770 r771 hacc
  · exact seg30_prefix_step105 rho r105 r772 r773 r774 r775 r776 hacc
  · exact seg30_prefix_step106 rho r106 r777 r778 r779 r780 r781 hacc
  · exact seg30_prefix_step107 rho r107 r782 r783 r784 r785 r786 hacc
  · exact seg30_prefix_step108 rho r108 r787 r788 r789 r790 r791 hacc
  · exact seg30_prefix_step109 rho r109 r792 r793 r794 r795 r796 hacc
  · exact seg30_prefix_step110 rho r110 r797 r798 r799 r800 r801 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

