import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step185
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step186
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step187
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step188
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Step189

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps7 (rho : Nat -> Seg30.F)
    (r185 : Seg30.relationRow185 rho)
    (r1277 : Seg30.relationRow1277 rho)
    (r1278 : Seg30.relationRow1278 rho)
    (r1279 : Seg30.relationRow1279 rho)
    (r1280 : Seg30.relationRow1280 rho)
    (r1281 : Seg30.relationRow1281 rho)
    (r1282 : Seg30.relationRow1282 rho)
    (r1283 : Seg30.relationRow1283 rho)
    (r1284 : Seg30.relationRow1284 rho)
    (r186 : Seg30.relationRow186 rho)
    (r1285 : Seg30.relationRow1285 rho)
    (r1286 : Seg30.relationRow1286 rho)
    (r1287 : Seg30.relationRow1287 rho)
    (r1288 : Seg30.relationRow1288 rho)
    (r1289 : Seg30.relationRow1289 rho)
    (r1290 : Seg30.relationRow1290 rho)
    (r1291 : Seg30.relationRow1291 rho)
    (r1292 : Seg30.relationRow1292 rho)
    (r187 : Seg30.relationRow187 rho)
    (r1293 : Seg30.relationRow1293 rho)
    (r1294 : Seg30.relationRow1294 rho)
    (r1295 : Seg30.relationRow1295 rho)
    (r1296 : Seg30.relationRow1296 rho)
    (r1297 : Seg30.relationRow1297 rho)
    (r1298 : Seg30.relationRow1298 rho)
    (r1299 : Seg30.relationRow1299 rho)
    (r1300 : Seg30.relationRow1300 rho)
    (r188 : Seg30.relationRow188 rho)
    (r1301 : Seg30.relationRow1301 rho)
    (r1302 : Seg30.relationRow1302 rho)
    (r1303 : Seg30.relationRow1303 rho)
    (r1304 : Seg30.relationRow1304 rho)
    (r1305 : Seg30.relationRow1305 rho)
    (r1306 : Seg30.relationRow1306 rho)
    (r1307 : Seg30.relationRow1307 rho)
    (r1308 : Seg30.relationRow1308 rho)
    (r189 : Seg30.relationRow189 rho)
    (r1309 : Seg30.relationRow1309 rho)
    (r1310 : Seg30.relationRow1310 rho)
    (r1311 : Seg30.relationRow1311 rho)
    (r1312 : Seg30.relationRow1312 rho)
    (r1313 : Seg30.relationRow1313 rho)
    (r1314 : Seg30.relationRow1314 rho)
    (r1315 : Seg30.relationRow1315 rho)
    (r1316 : Seg30.relationRow1316 rho)
    : ∀ i, 185 ≤ i → i ≤ 189 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step185 rho r185 r1277 r1278 r1279 r1280 r1281 r1282 r1283 r1284 hacc
  · exact seg30_step186 rho r186 r1285 r1286 r1287 r1288 r1289 r1290 r1291 r1292 hacc
  · exact seg30_step187 rho r187 r1293 r1294 r1295 r1296 r1297 r1298 r1299 r1300 hacc
  · exact seg30_step188 rho r188 r1301 r1302 r1303 r1304 r1305 r1306 r1307 r1308 hacc
  · exact seg30_step189 rho r189 r1309 r1310 r1311 r1312 r1313 r1314 r1315 r1316 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

