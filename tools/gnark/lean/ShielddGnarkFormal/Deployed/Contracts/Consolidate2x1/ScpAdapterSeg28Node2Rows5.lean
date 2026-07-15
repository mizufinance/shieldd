import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node2_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1271 : Seg28.relationRow1271 rho)
    (r1272 : Seg28.relationRow1272 rho)
    (r1273 : Seg28.relationRow1273 rho)
    (r1274 : Seg28.relationRow1274 rho)
    (r1275 : Seg28.relationRow1275 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) (rho 20661)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg50 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) next := by
  exact ⟨rho 20657, rho 20658, rho 20659, rho 20660, rho 20661, r1271, r1272, r1273, r1274, r1275, tail⟩

theorem seg28_scp_node2_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1276 : Seg28.relationRow1276 rho)
    (r1277 : Seg28.relationRow1277 rho)
    (r1278 : Seg28.relationRow1278 rho)
    (r1279 : Seg28.relationRow1279 rho)
    (r1280 : Seg28.relationRow1280 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) (rho 20661) (rho 20666)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg51 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) (rho 20661) next := by
  exact ⟨rho 20662, rho 20663, rho 20664, rho 20665, rho 20666, r1276, r1277, r1278, r1279, r1280, tail⟩

theorem seg28_scp_node2_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1281 : Seg28.relationRow1281 rho)
    (r1282 : Seg28.relationRow1282 rho)
    (r1283 : Seg28.relationRow1283 rho)
    (r1284 : Seg28.relationRow1284 rho)
    (r1285 : Seg28.relationRow1285 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) (rho 20661) (rho 20666) (rho 20671)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg52 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) (rho 20661) (rho 20666) next := by
  exact ⟨rho 20667, rho 20668, rho 20669, rho 20670, rho 20671, r1281, r1282, r1283, r1284, r1285, tail⟩

theorem seg28_scp_node2_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1286 : Seg28.relationRow1286 rho)
    (r1287 : Seg28.relationRow1287 rho)
    (r1288 : Seg28.relationRow1288 rho)
    (r1289 : Seg28.relationRow1289 rho)
    (r1290 : Seg28.relationRow1290 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) (rho 20661) (rho 20666) (rho 20671) (rho 20676)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg53 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) (rho 20661) (rho 20666) (rho 20671) next := by
  exact ⟨rho 20672, rho 20673, rho 20674, rho 20675, rho 20676, r1286, r1287, r1288, r1289, r1290, tail⟩

theorem seg28_scp_node2_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1291 : Seg28.relationRow1291 rho)
    (r1292 : Seg28.relationRow1292 rho)
    (r1293 : Seg28.relationRow1293 rho)
    (r1294 : Seg28.relationRow1294 rho)
    (r1295 : Seg28.relationRow1295 rho)
    (tail : next (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg54 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556) (rho 20561) (rho 20566) (rho 20571) (rho 20576) (rho 20581) (rho 20586) (rho 20591) (rho 20596) (rho 20601) (rho 20606) (rho 20611) (rho 20616) (rho 20621) (rho 20626) (rho 20631) (rho 20636) (rho 20641) (rho 20646) (rho 20651) (rho 20656) (rho 20661) (rho 20666) (rho 20671) (rho 20676) next := by
  exact ⟨rho 20677, rho 20678, rho 20679, rho 20680, rho 20681, r1291, r1292, r1293, r1294, r1295, tail⟩

theorem seg28_scp_node2_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1296 : Seg28.relationRow1296 rho)
    (r1297 : Seg28.relationRow1297 rho)
    (r1298 : Seg28.relationRow1298 rho)
    (r1299 : Seg28.relationRow1299 rho)
    (r1300 : Seg28.relationRow1300 rho)
    (tail : next (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) (rho 20686)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg55 (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) next := by
  exact ⟨rho 20682, rho 20683, rho 20684, rho 20685, rho 20686, r1296, r1297, r1298, r1299, r1300, tail⟩

theorem seg28_scp_node2_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1301 : Seg28.relationRow1301 rho)
    (r1302 : Seg28.relationRow1302 rho)
    (r1303 : Seg28.relationRow1303 rho)
    (r1304 : Seg28.relationRow1304 rho)
    (r1305 : Seg28.relationRow1305 rho)
    (tail : next (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) (rho 20686) (rho 20691)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg56 (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) (rho 20686) next := by
  exact ⟨rho 20687, rho 20688, rho 20689, rho 20690, rho 20691, r1301, r1302, r1303, r1304, r1305, tail⟩

theorem seg28_scp_node2_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1306 : Seg28.relationRow1306 rho)
    (r1307 : Seg28.relationRow1307 rho)
    (r1308 : Seg28.relationRow1308 rho)
    (r1309 : Seg28.relationRow1309 rho)
    (r1310 : Seg28.relationRow1310 rho)
    (tail : next (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) (rho 20686) (rho 20691) (rho 20696)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg57 (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) (rho 20686) (rho 20691) next := by
  exact ⟨rho 20692, rho 20693, rho 20694, rho 20695, rho 20696, r1306, r1307, r1308, r1309, r1310, tail⟩

theorem seg28_scp_node2_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1311 : Seg28.relationRow1311 rho)
    (r1312 : Seg28.relationRow1312 rho)
    (r1313 : Seg28.relationRow1313 rho)
    (r1314 : Seg28.relationRow1314 rho)
    (r1315 : Seg28.relationRow1315 rho)
    (tail : next (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) (rho 20686) (rho 20691) (rho 20696) (rho 20701)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg58 (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) (rho 20686) (rho 20691) (rho 20696) next := by
  exact ⟨rho 20697, rho 20698, rho 20699, rho 20700, rho 20701, r1311, r1312, r1313, r1314, r1315, tail⟩

theorem seg28_scp_node2_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1316 : Seg28.relationRow1316 rho)
    (r1317 : Seg28.relationRow1317 rho)
    (r1318 : Seg28.relationRow1318 rho)
    (r1319 : Seg28.relationRow1319 rho)
    (r1320 : Seg28.relationRow1320 rho)
    (tail : next (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg59 (rho 20661) (rho 20666) (rho 20671) (rho 20676) (rho 20681) (rho 20686) (rho 20691) (rho 20696) (rho 20701) next := by
  exact ⟨rho 20702, rho 20703, rho 20704, rho 20705, rho 20706, r1316, r1317, r1318, r1319, r1320, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

