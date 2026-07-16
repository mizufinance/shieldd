import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step185
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step186
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step187
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step188
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step189

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps7 (rho : Nat -> Seg15.F)
    (r185 : Seg15.relationRow185 rho)
    (r1277 : Seg15.relationRow1277 rho)
    (r1278 : Seg15.relationRow1278 rho)
    (r1279 : Seg15.relationRow1279 rho)
    (r1280 : Seg15.relationRow1280 rho)
    (r1281 : Seg15.relationRow1281 rho)
    (r1282 : Seg15.relationRow1282 rho)
    (r1283 : Seg15.relationRow1283 rho)
    (r1284 : Seg15.relationRow1284 rho)
    (r186 : Seg15.relationRow186 rho)
    (r1285 : Seg15.relationRow1285 rho)
    (r1286 : Seg15.relationRow1286 rho)
    (r1287 : Seg15.relationRow1287 rho)
    (r1288 : Seg15.relationRow1288 rho)
    (r1289 : Seg15.relationRow1289 rho)
    (r1290 : Seg15.relationRow1290 rho)
    (r1291 : Seg15.relationRow1291 rho)
    (r1292 : Seg15.relationRow1292 rho)
    (r187 : Seg15.relationRow187 rho)
    (r1293 : Seg15.relationRow1293 rho)
    (r1294 : Seg15.relationRow1294 rho)
    (r1295 : Seg15.relationRow1295 rho)
    (r1296 : Seg15.relationRow1296 rho)
    (r1297 : Seg15.relationRow1297 rho)
    (r1298 : Seg15.relationRow1298 rho)
    (r1299 : Seg15.relationRow1299 rho)
    (r1300 : Seg15.relationRow1300 rho)
    (r188 : Seg15.relationRow188 rho)
    (r1301 : Seg15.relationRow1301 rho)
    (r1302 : Seg15.relationRow1302 rho)
    (r1303 : Seg15.relationRow1303 rho)
    (r1304 : Seg15.relationRow1304 rho)
    (r1305 : Seg15.relationRow1305 rho)
    (r1306 : Seg15.relationRow1306 rho)
    (r1307 : Seg15.relationRow1307 rho)
    (r1308 : Seg15.relationRow1308 rho)
    (r189 : Seg15.relationRow189 rho)
    (r1309 : Seg15.relationRow1309 rho)
    (r1310 : Seg15.relationRow1310 rho)
    (r1311 : Seg15.relationRow1311 rho)
    (r1312 : Seg15.relationRow1312 rho)
    (r1313 : Seg15.relationRow1313 rho)
    (r1314 : Seg15.relationRow1314 rho)
    (r1315 : Seg15.relationRow1315 rho)
    (r1316 : Seg15.relationRow1316 rho)
    : ∀ i, 185 ≤ i → i ≤ 189 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step185 rho r185 r1277 r1278 r1279 r1280 r1281 r1282 r1283 r1284 hacc
  · exact seg15_step186 rho r186 r1285 r1286 r1287 r1288 r1289 r1290 r1291 r1292 hacc
  · exact seg15_step187 rho r187 r1293 r1294 r1295 r1296 r1297 r1298 r1299 r1300 hacc
  · exact seg15_step188 rho r188 r1301 r1302 r1303 r1304 r1305 r1306 r1307 r1308 hacc
  · exact seg15_step189 rho r189 r1309 r1310 r1311 r1312 r1313 r1314 r1315 r1316 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

