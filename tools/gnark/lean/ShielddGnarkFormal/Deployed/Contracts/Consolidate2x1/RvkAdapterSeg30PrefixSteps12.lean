import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep121
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep122
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep123
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep124
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep125
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep126
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep127
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep128
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep129
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixStep130

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps12 (rho : Nat -> Seg30.F)
    (r121 : Seg30.relationRow121 rho)
    (r852 : Seg30.relationRow852 rho)
    (r853 : Seg30.relationRow853 rho)
    (r854 : Seg30.relationRow854 rho)
    (r855 : Seg30.relationRow855 rho)
    (r856 : Seg30.relationRow856 rho)
    (r122 : Seg30.relationRow122 rho)
    (r857 : Seg30.relationRow857 rho)
    (r858 : Seg30.relationRow858 rho)
    (r859 : Seg30.relationRow859 rho)
    (r860 : Seg30.relationRow860 rho)
    (r861 : Seg30.relationRow861 rho)
    (r123 : Seg30.relationRow123 rho)
    (r862 : Seg30.relationRow862 rho)
    (r863 : Seg30.relationRow863 rho)
    (r864 : Seg30.relationRow864 rho)
    (r865 : Seg30.relationRow865 rho)
    (r866 : Seg30.relationRow866 rho)
    (r124 : Seg30.relationRow124 rho)
    (r867 : Seg30.relationRow867 rho)
    (r868 : Seg30.relationRow868 rho)
    (r869 : Seg30.relationRow869 rho)
    (r870 : Seg30.relationRow870 rho)
    (r871 : Seg30.relationRow871 rho)
    (r125 : Seg30.relationRow125 rho)
    (r872 : Seg30.relationRow872 rho)
    (r873 : Seg30.relationRow873 rho)
    (r874 : Seg30.relationRow874 rho)
    (r875 : Seg30.relationRow875 rho)
    (r876 : Seg30.relationRow876 rho)
    (r126 : Seg30.relationRow126 rho)
    (r877 : Seg30.relationRow877 rho)
    (r878 : Seg30.relationRow878 rho)
    (r879 : Seg30.relationRow879 rho)
    (r880 : Seg30.relationRow880 rho)
    (r881 : Seg30.relationRow881 rho)
    (r127 : Seg30.relationRow127 rho)
    (r882 : Seg30.relationRow882 rho)
    (r883 : Seg30.relationRow883 rho)
    (r884 : Seg30.relationRow884 rho)
    (r885 : Seg30.relationRow885 rho)
    (r886 : Seg30.relationRow886 rho)
    (r128 : Seg30.relationRow128 rho)
    (r887 : Seg30.relationRow887 rho)
    (r888 : Seg30.relationRow888 rho)
    (r889 : Seg30.relationRow889 rho)
    (r890 : Seg30.relationRow890 rho)
    (r891 : Seg30.relationRow891 rho)
    (r129 : Seg30.relationRow129 rho)
    (r892 : Seg30.relationRow892 rho)
    (r893 : Seg30.relationRow893 rho)
    (r894 : Seg30.relationRow894 rho)
    (r895 : Seg30.relationRow895 rho)
    (r896 : Seg30.relationRow896 rho)
    (r130 : Seg30.relationRow130 rho)
    (r897 : Seg30.relationRow897 rho)
    (r898 : Seg30.relationRow898 rho)
    (r899 : Seg30.relationRow899 rho)
    (r900 : Seg30.relationRow900 rho)
    (r901 : Seg30.relationRow901 rho)
    : ∀ i, 121 ≤ i → i ≤ 130 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step121 rho r121 r852 r853 r854 r855 r856 hacc
  · exact seg30_prefix_step122 rho r122 r857 r858 r859 r860 r861 hacc
  · exact seg30_prefix_step123 rho r123 r862 r863 r864 r865 r866 hacc
  · exact seg30_prefix_step124 rho r124 r867 r868 r869 r870 r871 hacc
  · exact seg30_prefix_step125 rho r125 r872 r873 r874 r875 r876 hacc
  · exact seg30_prefix_step126 rho r126 r877 r878 r879 r880 r881 hacc
  · exact seg30_prefix_step127 rho r127 r882 r883 r884 r885 r886 hacc
  · exact seg30_prefix_step128 rho r128 r887 r888 r889 r890 r891 hacc
  · exact seg30_prefix_step129 rho r129 r892 r893 r894 r895 r896 hacc
  · exact seg30_prefix_step130 rho r130 r897 r898 r899 r900 r901 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

