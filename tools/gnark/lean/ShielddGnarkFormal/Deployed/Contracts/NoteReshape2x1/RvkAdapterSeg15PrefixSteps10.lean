import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep101
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep102
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep103
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep104
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep105
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep106
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep107
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep108
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep109
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps10 (rho : Nat -> Seg15.F)
    (r101 : Seg15.relationRow101 rho)
    (r752 : Seg15.relationRow752 rho)
    (r753 : Seg15.relationRow753 rho)
    (r754 : Seg15.relationRow754 rho)
    (r755 : Seg15.relationRow755 rho)
    (r756 : Seg15.relationRow756 rho)
    (r102 : Seg15.relationRow102 rho)
    (r757 : Seg15.relationRow757 rho)
    (r758 : Seg15.relationRow758 rho)
    (r759 : Seg15.relationRow759 rho)
    (r760 : Seg15.relationRow760 rho)
    (r761 : Seg15.relationRow761 rho)
    (r103 : Seg15.relationRow103 rho)
    (r762 : Seg15.relationRow762 rho)
    (r763 : Seg15.relationRow763 rho)
    (r764 : Seg15.relationRow764 rho)
    (r765 : Seg15.relationRow765 rho)
    (r766 : Seg15.relationRow766 rho)
    (r104 : Seg15.relationRow104 rho)
    (r767 : Seg15.relationRow767 rho)
    (r768 : Seg15.relationRow768 rho)
    (r769 : Seg15.relationRow769 rho)
    (r770 : Seg15.relationRow770 rho)
    (r771 : Seg15.relationRow771 rho)
    (r105 : Seg15.relationRow105 rho)
    (r772 : Seg15.relationRow772 rho)
    (r773 : Seg15.relationRow773 rho)
    (r774 : Seg15.relationRow774 rho)
    (r775 : Seg15.relationRow775 rho)
    (r776 : Seg15.relationRow776 rho)
    (r106 : Seg15.relationRow106 rho)
    (r777 : Seg15.relationRow777 rho)
    (r778 : Seg15.relationRow778 rho)
    (r779 : Seg15.relationRow779 rho)
    (r780 : Seg15.relationRow780 rho)
    (r781 : Seg15.relationRow781 rho)
    (r107 : Seg15.relationRow107 rho)
    (r782 : Seg15.relationRow782 rho)
    (r783 : Seg15.relationRow783 rho)
    (r784 : Seg15.relationRow784 rho)
    (r785 : Seg15.relationRow785 rho)
    (r786 : Seg15.relationRow786 rho)
    (r108 : Seg15.relationRow108 rho)
    (r787 : Seg15.relationRow787 rho)
    (r788 : Seg15.relationRow788 rho)
    (r789 : Seg15.relationRow789 rho)
    (r790 : Seg15.relationRow790 rho)
    (r791 : Seg15.relationRow791 rho)
    (r109 : Seg15.relationRow109 rho)
    (r792 : Seg15.relationRow792 rho)
    (r793 : Seg15.relationRow793 rho)
    (r794 : Seg15.relationRow794 rho)
    (r795 : Seg15.relationRow795 rho)
    (r796 : Seg15.relationRow796 rho)
    (r110 : Seg15.relationRow110 rho)
    (r797 : Seg15.relationRow797 rho)
    (r798 : Seg15.relationRow798 rho)
    (r799 : Seg15.relationRow799 rho)
    (r800 : Seg15.relationRow800 rho)
    (r801 : Seg15.relationRow801 rho)
    : ∀ i, 101 ≤ i → i ≤ 110 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step101 rho r101 r752 r753 r754 r755 r756 hacc
  · exact seg15_prefix_step102 rho r102 r757 r758 r759 r760 r761 hacc
  · exact seg15_prefix_step103 rho r103 r762 r763 r764 r765 r766 hacc
  · exact seg15_prefix_step104 rho r104 r767 r768 r769 r770 r771 hacc
  · exact seg15_prefix_step105 rho r105 r772 r773 r774 r775 r776 hacc
  · exact seg15_prefix_step106 rho r106 r777 r778 r779 r780 r781 hacc
  · exact seg15_prefix_step107 rho r107 r782 r783 r784 r785 r786 hacc
  · exact seg15_prefix_step108 rho r108 r787 r788 r789 r790 r791 hacc
  · exact seg15_prefix_step109 rho r109 r792 r793 r794 r795 r796 hacc
  · exact seg15_prefix_step110 rho r110 r797 r798 r799 r800 r801 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

