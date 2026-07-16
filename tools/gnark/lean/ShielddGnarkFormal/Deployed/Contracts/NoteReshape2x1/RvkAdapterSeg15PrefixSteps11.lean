import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep111
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep112
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep113
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep114
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep115
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep116
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep117
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep118
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep119
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps11 (rho : Nat -> Seg15.F)
    (r111 : Seg15.relationRow111 rho)
    (r802 : Seg15.relationRow802 rho)
    (r803 : Seg15.relationRow803 rho)
    (r804 : Seg15.relationRow804 rho)
    (r805 : Seg15.relationRow805 rho)
    (r806 : Seg15.relationRow806 rho)
    (r112 : Seg15.relationRow112 rho)
    (r807 : Seg15.relationRow807 rho)
    (r808 : Seg15.relationRow808 rho)
    (r809 : Seg15.relationRow809 rho)
    (r810 : Seg15.relationRow810 rho)
    (r811 : Seg15.relationRow811 rho)
    (r113 : Seg15.relationRow113 rho)
    (r812 : Seg15.relationRow812 rho)
    (r813 : Seg15.relationRow813 rho)
    (r814 : Seg15.relationRow814 rho)
    (r815 : Seg15.relationRow815 rho)
    (r816 : Seg15.relationRow816 rho)
    (r114 : Seg15.relationRow114 rho)
    (r817 : Seg15.relationRow817 rho)
    (r818 : Seg15.relationRow818 rho)
    (r819 : Seg15.relationRow819 rho)
    (r820 : Seg15.relationRow820 rho)
    (r821 : Seg15.relationRow821 rho)
    (r115 : Seg15.relationRow115 rho)
    (r822 : Seg15.relationRow822 rho)
    (r823 : Seg15.relationRow823 rho)
    (r824 : Seg15.relationRow824 rho)
    (r825 : Seg15.relationRow825 rho)
    (r826 : Seg15.relationRow826 rho)
    (r116 : Seg15.relationRow116 rho)
    (r827 : Seg15.relationRow827 rho)
    (r828 : Seg15.relationRow828 rho)
    (r829 : Seg15.relationRow829 rho)
    (r830 : Seg15.relationRow830 rho)
    (r831 : Seg15.relationRow831 rho)
    (r117 : Seg15.relationRow117 rho)
    (r832 : Seg15.relationRow832 rho)
    (r833 : Seg15.relationRow833 rho)
    (r834 : Seg15.relationRow834 rho)
    (r835 : Seg15.relationRow835 rho)
    (r836 : Seg15.relationRow836 rho)
    (r118 : Seg15.relationRow118 rho)
    (r837 : Seg15.relationRow837 rho)
    (r838 : Seg15.relationRow838 rho)
    (r839 : Seg15.relationRow839 rho)
    (r840 : Seg15.relationRow840 rho)
    (r841 : Seg15.relationRow841 rho)
    (r119 : Seg15.relationRow119 rho)
    (r842 : Seg15.relationRow842 rho)
    (r843 : Seg15.relationRow843 rho)
    (r844 : Seg15.relationRow844 rho)
    (r845 : Seg15.relationRow845 rho)
    (r846 : Seg15.relationRow846 rho)
    (r120 : Seg15.relationRow120 rho)
    (r847 : Seg15.relationRow847 rho)
    (r848 : Seg15.relationRow848 rho)
    (r849 : Seg15.relationRow849 rho)
    (r850 : Seg15.relationRow850 rho)
    (r851 : Seg15.relationRow851 rho)
    : ∀ i, 111 ≤ i → i ≤ 120 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step111 rho r111 r802 r803 r804 r805 r806 hacc
  · exact seg15_prefix_step112 rho r112 r807 r808 r809 r810 r811 hacc
  · exact seg15_prefix_step113 rho r113 r812 r813 r814 r815 r816 hacc
  · exact seg15_prefix_step114 rho r114 r817 r818 r819 r820 r821 hacc
  · exact seg15_prefix_step115 rho r115 r822 r823 r824 r825 r826 hacc
  · exact seg15_prefix_step116 rho r116 r827 r828 r829 r830 r831 hacc
  · exact seg15_prefix_step117 rho r117 r832 r833 r834 r835 r836 hacc
  · exact seg15_prefix_step118 rho r118 r837 r838 r839 r840 r841 hacc
  · exact seg15_prefix_step119 rho r119 r842 r843 r844 r845 r846 hacc
  · exact seg15_prefix_step120 rho r120 r847 r848 r849 r850 r851 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

