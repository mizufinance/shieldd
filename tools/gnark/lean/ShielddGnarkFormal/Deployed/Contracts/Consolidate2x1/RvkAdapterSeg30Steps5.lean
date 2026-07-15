import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step175
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step176
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step177
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step178
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step179

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps5 (rho : Nat -> Seg30.F)
    (r175 : Seg30.relationRow175 rho)
    (r1197 : Seg30.relationRow1197 rho)
    (r1198 : Seg30.relationRow1198 rho)
    (r1199 : Seg30.relationRow1199 rho)
    (r1200 : Seg30.relationRow1200 rho)
    (r1201 : Seg30.relationRow1201 rho)
    (r1202 : Seg30.relationRow1202 rho)
    (r1203 : Seg30.relationRow1203 rho)
    (r1204 : Seg30.relationRow1204 rho)
    (r176 : Seg30.relationRow176 rho)
    (r1205 : Seg30.relationRow1205 rho)
    (r1206 : Seg30.relationRow1206 rho)
    (r1207 : Seg30.relationRow1207 rho)
    (r1208 : Seg30.relationRow1208 rho)
    (r1209 : Seg30.relationRow1209 rho)
    (r1210 : Seg30.relationRow1210 rho)
    (r1211 : Seg30.relationRow1211 rho)
    (r1212 : Seg30.relationRow1212 rho)
    (r177 : Seg30.relationRow177 rho)
    (r1213 : Seg30.relationRow1213 rho)
    (r1214 : Seg30.relationRow1214 rho)
    (r1215 : Seg30.relationRow1215 rho)
    (r1216 : Seg30.relationRow1216 rho)
    (r1217 : Seg30.relationRow1217 rho)
    (r1218 : Seg30.relationRow1218 rho)
    (r1219 : Seg30.relationRow1219 rho)
    (r1220 : Seg30.relationRow1220 rho)
    (r178 : Seg30.relationRow178 rho)
    (r1221 : Seg30.relationRow1221 rho)
    (r1222 : Seg30.relationRow1222 rho)
    (r1223 : Seg30.relationRow1223 rho)
    (r1224 : Seg30.relationRow1224 rho)
    (r1225 : Seg30.relationRow1225 rho)
    (r1226 : Seg30.relationRow1226 rho)
    (r1227 : Seg30.relationRow1227 rho)
    (r1228 : Seg30.relationRow1228 rho)
    (r179 : Seg30.relationRow179 rho)
    (r1229 : Seg30.relationRow1229 rho)
    (r1230 : Seg30.relationRow1230 rho)
    (r1231 : Seg30.relationRow1231 rho)
    (r1232 : Seg30.relationRow1232 rho)
    (r1233 : Seg30.relationRow1233 rho)
    (r1234 : Seg30.relationRow1234 rho)
    (r1235 : Seg30.relationRow1235 rho)
    (r1236 : Seg30.relationRow1236 rho)
    : ∀ i, 175 ≤ i → i ≤ 179 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step175 rho r175 r1197 r1198 r1199 r1200 r1201 r1202 r1203 r1204 hacc
  · exact seg30_step176 rho r176 r1205 r1206 r1207 r1208 r1209 r1210 r1211 r1212 hacc
  · exact seg30_step177 rho r177 r1213 r1214 r1215 r1216 r1217 r1218 r1219 r1220 hacc
  · exact seg30_step178 rho r178 r1221 r1222 r1223 r1224 r1225 r1226 r1227 r1228 hacc
  · exact seg30_step179 rho r179 r1229 r1230 r1231 r1232 r1233 r1234 r1235 r1236 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

