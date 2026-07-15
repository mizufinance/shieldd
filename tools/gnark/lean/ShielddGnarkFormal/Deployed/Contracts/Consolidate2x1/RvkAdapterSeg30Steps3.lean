import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step165
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step166
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step167
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step168
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step169

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps3 (rho : Nat -> Seg30.F)
    (r165 : Seg30.relationRow165 rho)
    (r1117 : Seg30.relationRow1117 rho)
    (r1118 : Seg30.relationRow1118 rho)
    (r1119 : Seg30.relationRow1119 rho)
    (r1120 : Seg30.relationRow1120 rho)
    (r1121 : Seg30.relationRow1121 rho)
    (r1122 : Seg30.relationRow1122 rho)
    (r1123 : Seg30.relationRow1123 rho)
    (r1124 : Seg30.relationRow1124 rho)
    (r166 : Seg30.relationRow166 rho)
    (r1125 : Seg30.relationRow1125 rho)
    (r1126 : Seg30.relationRow1126 rho)
    (r1127 : Seg30.relationRow1127 rho)
    (r1128 : Seg30.relationRow1128 rho)
    (r1129 : Seg30.relationRow1129 rho)
    (r1130 : Seg30.relationRow1130 rho)
    (r1131 : Seg30.relationRow1131 rho)
    (r1132 : Seg30.relationRow1132 rho)
    (r167 : Seg30.relationRow167 rho)
    (r1133 : Seg30.relationRow1133 rho)
    (r1134 : Seg30.relationRow1134 rho)
    (r1135 : Seg30.relationRow1135 rho)
    (r1136 : Seg30.relationRow1136 rho)
    (r1137 : Seg30.relationRow1137 rho)
    (r1138 : Seg30.relationRow1138 rho)
    (r1139 : Seg30.relationRow1139 rho)
    (r1140 : Seg30.relationRow1140 rho)
    (r168 : Seg30.relationRow168 rho)
    (r1141 : Seg30.relationRow1141 rho)
    (r1142 : Seg30.relationRow1142 rho)
    (r1143 : Seg30.relationRow1143 rho)
    (r1144 : Seg30.relationRow1144 rho)
    (r1145 : Seg30.relationRow1145 rho)
    (r1146 : Seg30.relationRow1146 rho)
    (r1147 : Seg30.relationRow1147 rho)
    (r1148 : Seg30.relationRow1148 rho)
    (r169 : Seg30.relationRow169 rho)
    (r1149 : Seg30.relationRow1149 rho)
    (r1150 : Seg30.relationRow1150 rho)
    (r1151 : Seg30.relationRow1151 rho)
    (r1152 : Seg30.relationRow1152 rho)
    (r1153 : Seg30.relationRow1153 rho)
    (r1154 : Seg30.relationRow1154 rho)
    (r1155 : Seg30.relationRow1155 rho)
    (r1156 : Seg30.relationRow1156 rho)
    : ∀ i, 165 ≤ i → i ≤ 169 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step165 rho r165 r1117 r1118 r1119 r1120 r1121 r1122 r1123 r1124 hacc
  · exact seg30_step166 rho r166 r1125 r1126 r1127 r1128 r1129 r1130 r1131 r1132 hacc
  · exact seg30_step167 rho r167 r1133 r1134 r1135 r1136 r1137 r1138 r1139 r1140 hacc
  · exact seg30_step168 rho r168 r1141 r1142 r1143 r1144 r1145 r1146 r1147 r1148 hacc
  · exact seg30_step169 rho r169 r1149 r1150 r1151 r1152 r1153 r1154 r1155 r1156 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

