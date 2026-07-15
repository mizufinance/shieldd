import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step170
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step171
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step172
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step173
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step174

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps4 (rho : Nat -> Seg30.F)
    (r170 : Seg30.relationRow170 rho)
    (r1157 : Seg30.relationRow1157 rho)
    (r1158 : Seg30.relationRow1158 rho)
    (r1159 : Seg30.relationRow1159 rho)
    (r1160 : Seg30.relationRow1160 rho)
    (r1161 : Seg30.relationRow1161 rho)
    (r1162 : Seg30.relationRow1162 rho)
    (r1163 : Seg30.relationRow1163 rho)
    (r1164 : Seg30.relationRow1164 rho)
    (r171 : Seg30.relationRow171 rho)
    (r1165 : Seg30.relationRow1165 rho)
    (r1166 : Seg30.relationRow1166 rho)
    (r1167 : Seg30.relationRow1167 rho)
    (r1168 : Seg30.relationRow1168 rho)
    (r1169 : Seg30.relationRow1169 rho)
    (r1170 : Seg30.relationRow1170 rho)
    (r1171 : Seg30.relationRow1171 rho)
    (r1172 : Seg30.relationRow1172 rho)
    (r172 : Seg30.relationRow172 rho)
    (r1173 : Seg30.relationRow1173 rho)
    (r1174 : Seg30.relationRow1174 rho)
    (r1175 : Seg30.relationRow1175 rho)
    (r1176 : Seg30.relationRow1176 rho)
    (r1177 : Seg30.relationRow1177 rho)
    (r1178 : Seg30.relationRow1178 rho)
    (r1179 : Seg30.relationRow1179 rho)
    (r1180 : Seg30.relationRow1180 rho)
    (r173 : Seg30.relationRow173 rho)
    (r1181 : Seg30.relationRow1181 rho)
    (r1182 : Seg30.relationRow1182 rho)
    (r1183 : Seg30.relationRow1183 rho)
    (r1184 : Seg30.relationRow1184 rho)
    (r1185 : Seg30.relationRow1185 rho)
    (r1186 : Seg30.relationRow1186 rho)
    (r1187 : Seg30.relationRow1187 rho)
    (r1188 : Seg30.relationRow1188 rho)
    (r174 : Seg30.relationRow174 rho)
    (r1189 : Seg30.relationRow1189 rho)
    (r1190 : Seg30.relationRow1190 rho)
    (r1191 : Seg30.relationRow1191 rho)
    (r1192 : Seg30.relationRow1192 rho)
    (r1193 : Seg30.relationRow1193 rho)
    (r1194 : Seg30.relationRow1194 rho)
    (r1195 : Seg30.relationRow1195 rho)
    (r1196 : Seg30.relationRow1196 rho)
    : ∀ i, 170 ≤ i → i ≤ 174 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step170 rho r170 r1157 r1158 r1159 r1160 r1161 r1162 r1163 r1164 hacc
  · exact seg30_step171 rho r171 r1165 r1166 r1167 r1168 r1169 r1170 r1171 r1172 hacc
  · exact seg30_step172 rho r172 r1173 r1174 r1175 r1176 r1177 r1178 r1179 r1180 hacc
  · exact seg30_step173 rho r173 r1181 r1182 r1183 r1184 r1185 r1186 r1187 r1188 hacc
  · exact seg30_step174 rho r174 r1189 r1190 r1191 r1192 r1193 r1194 r1195 r1196 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

