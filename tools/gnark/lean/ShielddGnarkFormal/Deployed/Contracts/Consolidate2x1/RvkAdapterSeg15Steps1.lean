import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step155
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step156
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step157
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step158
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step159

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps1 (rho : Nat -> Seg15.F)
    (r155 : Seg15.relationRow155 rho)
    (r1037 : Seg15.relationRow1037 rho)
    (r1038 : Seg15.relationRow1038 rho)
    (r1039 : Seg15.relationRow1039 rho)
    (r1040 : Seg15.relationRow1040 rho)
    (r1041 : Seg15.relationRow1041 rho)
    (r1042 : Seg15.relationRow1042 rho)
    (r1043 : Seg15.relationRow1043 rho)
    (r1044 : Seg15.relationRow1044 rho)
    (r156 : Seg15.relationRow156 rho)
    (r1045 : Seg15.relationRow1045 rho)
    (r1046 : Seg15.relationRow1046 rho)
    (r1047 : Seg15.relationRow1047 rho)
    (r1048 : Seg15.relationRow1048 rho)
    (r1049 : Seg15.relationRow1049 rho)
    (r1050 : Seg15.relationRow1050 rho)
    (r1051 : Seg15.relationRow1051 rho)
    (r1052 : Seg15.relationRow1052 rho)
    (r157 : Seg15.relationRow157 rho)
    (r1053 : Seg15.relationRow1053 rho)
    (r1054 : Seg15.relationRow1054 rho)
    (r1055 : Seg15.relationRow1055 rho)
    (r1056 : Seg15.relationRow1056 rho)
    (r1057 : Seg15.relationRow1057 rho)
    (r1058 : Seg15.relationRow1058 rho)
    (r1059 : Seg15.relationRow1059 rho)
    (r1060 : Seg15.relationRow1060 rho)
    (r158 : Seg15.relationRow158 rho)
    (r1061 : Seg15.relationRow1061 rho)
    (r1062 : Seg15.relationRow1062 rho)
    (r1063 : Seg15.relationRow1063 rho)
    (r1064 : Seg15.relationRow1064 rho)
    (r1065 : Seg15.relationRow1065 rho)
    (r1066 : Seg15.relationRow1066 rho)
    (r1067 : Seg15.relationRow1067 rho)
    (r1068 : Seg15.relationRow1068 rho)
    (r159 : Seg15.relationRow159 rho)
    (r1069 : Seg15.relationRow1069 rho)
    (r1070 : Seg15.relationRow1070 rho)
    (r1071 : Seg15.relationRow1071 rho)
    (r1072 : Seg15.relationRow1072 rho)
    (r1073 : Seg15.relationRow1073 rho)
    (r1074 : Seg15.relationRow1074 rho)
    (r1075 : Seg15.relationRow1075 rho)
    (r1076 : Seg15.relationRow1076 rho)
    : ∀ i, 155 ≤ i → i ≤ 159 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step155 rho r155 r1037 r1038 r1039 r1040 r1041 r1042 r1043 r1044 hacc
  · exact seg15_step156 rho r156 r1045 r1046 r1047 r1048 r1049 r1050 r1051 r1052 hacc
  · exact seg15_step157 rho r157 r1053 r1054 r1055 r1056 r1057 r1058 r1059 r1060 hacc
  · exact seg15_step158 rho r158 r1061 r1062 r1063 r1064 r1065 r1066 r1067 r1068 hacc
  · exact seg15_step159 rho r159 r1069 r1070 r1071 r1072 r1073 r1074 r1075 r1076 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

