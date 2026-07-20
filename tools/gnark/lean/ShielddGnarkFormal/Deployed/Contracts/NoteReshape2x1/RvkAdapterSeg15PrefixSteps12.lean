import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep121
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep122
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep123
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep124
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep125
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep126
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep127
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep128
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep129
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep130

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps12 (rho : Nat -> Seg15.F)
    (r121 : Seg15.relationRow121 rho)
    (r852 : Seg15.relationRow852 rho)
    (r853 : Seg15.relationRow853 rho)
    (r854 : Seg15.relationRow854 rho)
    (r855 : Seg15.relationRow855 rho)
    (r856 : Seg15.relationRow856 rho)
    (r122 : Seg15.relationRow122 rho)
    (r857 : Seg15.relationRow857 rho)
    (r858 : Seg15.relationRow858 rho)
    (r859 : Seg15.relationRow859 rho)
    (r860 : Seg15.relationRow860 rho)
    (r861 : Seg15.relationRow861 rho)
    (r123 : Seg15.relationRow123 rho)
    (r862 : Seg15.relationRow862 rho)
    (r863 : Seg15.relationRow863 rho)
    (r864 : Seg15.relationRow864 rho)
    (r865 : Seg15.relationRow865 rho)
    (r866 : Seg15.relationRow866 rho)
    (r124 : Seg15.relationRow124 rho)
    (r867 : Seg15.relationRow867 rho)
    (r868 : Seg15.relationRow868 rho)
    (r869 : Seg15.relationRow869 rho)
    (r870 : Seg15.relationRow870 rho)
    (r871 : Seg15.relationRow871 rho)
    (r125 : Seg15.relationRow125 rho)
    (r872 : Seg15.relationRow872 rho)
    (r873 : Seg15.relationRow873 rho)
    (r874 : Seg15.relationRow874 rho)
    (r875 : Seg15.relationRow875 rho)
    (r876 : Seg15.relationRow876 rho)
    (r126 : Seg15.relationRow126 rho)
    (r877 : Seg15.relationRow877 rho)
    (r878 : Seg15.relationRow878 rho)
    (r879 : Seg15.relationRow879 rho)
    (r880 : Seg15.relationRow880 rho)
    (r881 : Seg15.relationRow881 rho)
    (r127 : Seg15.relationRow127 rho)
    (r882 : Seg15.relationRow882 rho)
    (r883 : Seg15.relationRow883 rho)
    (r884 : Seg15.relationRow884 rho)
    (r885 : Seg15.relationRow885 rho)
    (r886 : Seg15.relationRow886 rho)
    (r128 : Seg15.relationRow128 rho)
    (r887 : Seg15.relationRow887 rho)
    (r888 : Seg15.relationRow888 rho)
    (r889 : Seg15.relationRow889 rho)
    (r890 : Seg15.relationRow890 rho)
    (r891 : Seg15.relationRow891 rho)
    (r129 : Seg15.relationRow129 rho)
    (r892 : Seg15.relationRow892 rho)
    (r893 : Seg15.relationRow893 rho)
    (r894 : Seg15.relationRow894 rho)
    (r895 : Seg15.relationRow895 rho)
    (r896 : Seg15.relationRow896 rho)
    (r130 : Seg15.relationRow130 rho)
    (r897 : Seg15.relationRow897 rho)
    (r898 : Seg15.relationRow898 rho)
    (r899 : Seg15.relationRow899 rho)
    (r900 : Seg15.relationRow900 rho)
    (r901 : Seg15.relationRow901 rho)
    : ∀ i, 121 ≤ i → i ≤ 130 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step121 rho r121 r852 r853 r854 r855 r856 hacc
  · exact seg15_prefix_step122 rho r122 r857 r858 r859 r860 r861 hacc
  · exact seg15_prefix_step123 rho r123 r862 r863 r864 r865 r866 hacc
  · exact seg15_prefix_step124 rho r124 r867 r868 r869 r870 r871 hacc
  · exact seg15_prefix_step125 rho r125 r872 r873 r874 r875 r876 hacc
  · exact seg15_prefix_step126 rho r126 r877 r878 r879 r880 r881 hacc
  · exact seg15_prefix_step127 rho r127 r882 r883 r884 r885 r886 hacc
  · exact seg15_prefix_step128 rho r128 r887 r888 r889 r890 r891 hacc
  · exact seg15_prefix_step129 rho r129 r892 r893 r894 r895 r896 hacc
  · exact seg15_prefix_step130 rho r130 r897 r898 r899 r900 r901 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

