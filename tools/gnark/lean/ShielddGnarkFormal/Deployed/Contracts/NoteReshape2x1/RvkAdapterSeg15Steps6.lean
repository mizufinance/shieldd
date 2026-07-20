import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step180
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step181
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step182
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step183
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step184

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps6 (rho : Nat -> Seg15.F)
    (r180 : Seg15.relationRow180 rho)
    (r1237 : Seg15.relationRow1237 rho)
    (r1238 : Seg15.relationRow1238 rho)
    (r1239 : Seg15.relationRow1239 rho)
    (r1240 : Seg15.relationRow1240 rho)
    (r1241 : Seg15.relationRow1241 rho)
    (r1242 : Seg15.relationRow1242 rho)
    (r1243 : Seg15.relationRow1243 rho)
    (r1244 : Seg15.relationRow1244 rho)
    (r181 : Seg15.relationRow181 rho)
    (r1245 : Seg15.relationRow1245 rho)
    (r1246 : Seg15.relationRow1246 rho)
    (r1247 : Seg15.relationRow1247 rho)
    (r1248 : Seg15.relationRow1248 rho)
    (r1249 : Seg15.relationRow1249 rho)
    (r1250 : Seg15.relationRow1250 rho)
    (r1251 : Seg15.relationRow1251 rho)
    (r1252 : Seg15.relationRow1252 rho)
    (r182 : Seg15.relationRow182 rho)
    (r1253 : Seg15.relationRow1253 rho)
    (r1254 : Seg15.relationRow1254 rho)
    (r1255 : Seg15.relationRow1255 rho)
    (r1256 : Seg15.relationRow1256 rho)
    (r1257 : Seg15.relationRow1257 rho)
    (r1258 : Seg15.relationRow1258 rho)
    (r1259 : Seg15.relationRow1259 rho)
    (r1260 : Seg15.relationRow1260 rho)
    (r183 : Seg15.relationRow183 rho)
    (r1261 : Seg15.relationRow1261 rho)
    (r1262 : Seg15.relationRow1262 rho)
    (r1263 : Seg15.relationRow1263 rho)
    (r1264 : Seg15.relationRow1264 rho)
    (r1265 : Seg15.relationRow1265 rho)
    (r1266 : Seg15.relationRow1266 rho)
    (r1267 : Seg15.relationRow1267 rho)
    (r1268 : Seg15.relationRow1268 rho)
    (r184 : Seg15.relationRow184 rho)
    (r1269 : Seg15.relationRow1269 rho)
    (r1270 : Seg15.relationRow1270 rho)
    (r1271 : Seg15.relationRow1271 rho)
    (r1272 : Seg15.relationRow1272 rho)
    (r1273 : Seg15.relationRow1273 rho)
    (r1274 : Seg15.relationRow1274 rho)
    (r1275 : Seg15.relationRow1275 rho)
    (r1276 : Seg15.relationRow1276 rho)
    : ∀ i, 180 ≤ i → i ≤ 184 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step180 rho r180 r1237 r1238 r1239 r1240 r1241 r1242 r1243 r1244 hacc
  · exact seg15_step181 rho r181 r1245 r1246 r1247 r1248 r1249 r1250 r1251 r1252 hacc
  · exact seg15_step182 rho r182 r1253 r1254 r1255 r1256 r1257 r1258 r1259 r1260 hacc
  · exact seg15_step183 rho r183 r1261 r1262 r1263 r1264 r1265 r1266 r1267 r1268 hacc
  · exact seg15_step184 rho r184 r1269 r1270 r1271 r1272 r1273 r1274 r1275 r1276 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

