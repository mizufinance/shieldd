import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node2_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1321 : Seg28.relationRow1321 rho)
    (r1322 : Seg28.relationRow1322 rho)
    (r1323 : Seg28.relationRow1323 rho)
    (r1324 : Seg28.relationRow1324 rho)
    (r1325 : Seg28.relationRow1325 rho)
    (tail : next (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) (rho 20711)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg60 (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) next := by
  exact ⟨rho 20707, rho 20708, rho 20709, rho 20710, rho 20711, r1321, r1322, r1323, r1324, r1325, tail⟩

theorem seg28_scp_node2_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1326 : Seg28.relationRow1326 rho)
    (r1327 : Seg28.relationRow1327 rho)
    (r1328 : Seg28.relationRow1328 rho)
    (r1329 : Seg28.relationRow1329 rho)
    (r1330 : Seg28.relationRow1330 rho)
    (tail : next (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) (rho 20711) (rho 20716)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg61 (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) (rho 20711) next := by
  exact ⟨rho 20712, rho 20713, rho 20714, rho 20715, rho 20716, r1326, r1327, r1328, r1329, r1330, tail⟩

theorem seg28_scp_node2_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1331 : Seg28.relationRow1331 rho)
    (r1332 : Seg28.relationRow1332 rho)
    (r1333 : Seg28.relationRow1333 rho)
    (r1334 : Seg28.relationRow1334 rho)
    (r1335 : Seg28.relationRow1335 rho)
    (tail : next (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) (rho 20711) (rho 20716) (rho 20721)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg62 (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) (rho 20711) (rho 20716) next := by
  exact ⟨rho 20717, rho 20718, rho 20719, rho 20720, rho 20721, r1331, r1332, r1333, r1334, r1335, tail⟩

theorem seg28_scp_node2_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1336 : Seg28.relationRow1336 rho)
    (r1337 : Seg28.relationRow1337 rho)
    (r1338 : Seg28.relationRow1338 rho)
    (r1339 : Seg28.relationRow1339 rho)
    (r1340 : Seg28.relationRow1340 rho)
    (tail : next (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) (rho 20711) (rho 20716) (rho 20721) (rho 20726)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg63 (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) (rho 20711) (rho 20716) (rho 20721) next := by
  exact ⟨rho 20722, rho 20723, rho 20724, rho 20725, rho 20726, r1336, r1337, r1338, r1339, r1340, tail⟩

theorem seg28_scp_node2_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1341 : Seg28.relationRow1341 rho)
    (r1342 : Seg28.relationRow1342 rho)
    (r1343 : Seg28.relationRow1343 rho)
    (r1344 : Seg28.relationRow1344 rho)
    (r1345 : Seg28.relationRow1345 rho)
    (tail : next (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg64 (rho 20686) (rho 20691) (rho 20696) (rho 20701) (rho 20706) (rho 20711) (rho 20716) (rho 20721) (rho 20726) next := by
  exact ⟨rho 20727, rho 20728, rho 20729, rho 20730, rho 20731, r1341, r1342, r1343, r1344, r1345, tail⟩

theorem seg28_scp_node2_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1346 : Seg28.relationRow1346 rho)
    (r1347 : Seg28.relationRow1347 rho)
    (r1348 : Seg28.relationRow1348 rho)
    (r1349 : Seg28.relationRow1349 rho)
    (r1350 : Seg28.relationRow1350 rho)
    (tail : next (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) (rho 20736)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg65 (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) next := by
  exact ⟨rho 20732, rho 20733, rho 20734, rho 20735, rho 20736, r1346, r1347, r1348, r1349, r1350, tail⟩

theorem seg28_scp_node2_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1351 : Seg28.relationRow1351 rho)
    (r1352 : Seg28.relationRow1352 rho)
    (r1353 : Seg28.relationRow1353 rho)
    (r1354 : Seg28.relationRow1354 rho)
    (r1355 : Seg28.relationRow1355 rho)
    (tail : next (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) (rho 20736) (rho 20741)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg66 (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) (rho 20736) next := by
  exact ⟨rho 20737, rho 20738, rho 20739, rho 20740, rho 20741, r1351, r1352, r1353, r1354, r1355, tail⟩

theorem seg28_scp_node2_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1356 : Seg28.relationRow1356 rho)
    (r1357 : Seg28.relationRow1357 rho)
    (r1358 : Seg28.relationRow1358 rho)
    (r1359 : Seg28.relationRow1359 rho)
    (r1360 : Seg28.relationRow1360 rho)
    (tail : next (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) (rho 20736) (rho 20741) (rho 20746)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg67 (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) (rho 20736) (rho 20741) next := by
  exact ⟨rho 20742, rho 20743, rho 20744, rho 20745, rho 20746, r1356, r1357, r1358, r1359, r1360, tail⟩

theorem seg28_scp_node2_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1361 : Seg28.relationRow1361 rho)
    (r1362 : Seg28.relationRow1362 rho)
    (r1363 : Seg28.relationRow1363 rho)
    (r1364 : Seg28.relationRow1364 rho)
    (r1365 : Seg28.relationRow1365 rho)
    (tail : next (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) (rho 20736) (rho 20741) (rho 20746) (rho 20751)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg68 (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) (rho 20736) (rho 20741) (rho 20746) next := by
  exact ⟨rho 20747, rho 20748, rho 20749, rho 20750, rho 20751, r1361, r1362, r1363, r1364, r1365, tail⟩

theorem seg28_scp_node2_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1366 : Seg28.relationRow1366 rho)
    (r1367 : Seg28.relationRow1367 rho)
    (r1368 : Seg28.relationRow1368 rho)
    (r1369 : Seg28.relationRow1369 rho)
    (r1370 : Seg28.relationRow1370 rho)
    (tail : next (rho 20736) (rho 20741) (rho 20746) (rho 20751) (rho 20756)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg69 (rho 20711) (rho 20716) (rho 20721) (rho 20726) (rho 20731) (rho 20736) (rho 20741) (rho 20746) (rho 20751) next := by
  exact ⟨rho 20752, rho 20753, rho 20754, rho 20755, rho 20756, r1366, r1367, r1368, r1369, r1370, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

