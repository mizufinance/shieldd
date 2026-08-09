import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node2_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1321 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1321 rho)
    (r1322 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1322 rho)
    (r1323 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1323 rho)
    (r1324 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1324 rho)
    (r1325 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1325 rho)
    (tail : next (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) (rho 1330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg60 (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) next := by
  exact ⟨rho 1326, rho 1327, rho 1328, rho 1329, rho 1330, r1321, r1322, r1323, r1324, r1325, tail⟩

theorem template_scp_node2_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1326 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1326 rho)
    (r1327 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1327 rho)
    (r1328 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1328 rho)
    (r1329 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1329 rho)
    (r1330 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1330 rho)
    (tail : next (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) (rho 1330) (rho 1335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg61 (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) (rho 1330) next := by
  exact ⟨rho 1331, rho 1332, rho 1333, rho 1334, rho 1335, r1326, r1327, r1328, r1329, r1330, tail⟩

theorem template_scp_node2_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1331 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1331 rho)
    (r1332 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1332 rho)
    (r1333 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1333 rho)
    (r1334 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1334 rho)
    (r1335 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1335 rho)
    (tail : next (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) (rho 1330) (rho 1335) (rho 1340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg62 (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) (rho 1330) (rho 1335) next := by
  exact ⟨rho 1336, rho 1337, rho 1338, rho 1339, rho 1340, r1331, r1332, r1333, r1334, r1335, tail⟩

theorem template_scp_node2_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1336 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1336 rho)
    (r1337 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1337 rho)
    (r1338 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1338 rho)
    (r1339 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1339 rho)
    (r1340 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1340 rho)
    (tail : next (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) (rho 1330) (rho 1335) (rho 1340) (rho 1345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg63 (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) (rho 1330) (rho 1335) (rho 1340) next := by
  exact ⟨rho 1341, rho 1342, rho 1343, rho 1344, rho 1345, r1336, r1337, r1338, r1339, r1340, tail⟩

theorem template_scp_node2_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1341 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1341 rho)
    (r1342 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1342 rho)
    (r1343 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1343 rho)
    (r1344 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1344 rho)
    (r1345 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1345 rho)
    (tail : next (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg64 (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325) (rho 1330) (rho 1335) (rho 1340) (rho 1345) next := by
  exact ⟨rho 1346, rho 1347, rho 1348, rho 1349, rho 1350, r1341, r1342, r1343, r1344, r1345, tail⟩

theorem template_scp_node2_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1346 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1346 rho)
    (r1347 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1347 rho)
    (r1348 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1348 rho)
    (r1349 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1349 rho)
    (r1350 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1350 rho)
    (tail : next (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) (rho 1355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg65 (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) next := by
  exact ⟨rho 1351, rho 1352, rho 1353, rho 1354, rho 1355, r1346, r1347, r1348, r1349, r1350, tail⟩

theorem template_scp_node2_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1351 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1351 rho)
    (r1352 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1352 rho)
    (r1353 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1353 rho)
    (r1354 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1354 rho)
    (r1355 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1355 rho)
    (tail : next (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) (rho 1355) (rho 1360)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg66 (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) (rho 1355) next := by
  exact ⟨rho 1356, rho 1357, rho 1358, rho 1359, rho 1360, r1351, r1352, r1353, r1354, r1355, tail⟩

theorem template_scp_node2_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1356 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1356 rho)
    (r1357 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1357 rho)
    (r1358 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1358 rho)
    (r1359 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1359 rho)
    (r1360 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1360 rho)
    (tail : next (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) (rho 1355) (rho 1360) (rho 1365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg67 (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) (rho 1355) (rho 1360) next := by
  exact ⟨rho 1361, rho 1362, rho 1363, rho 1364, rho 1365, r1356, r1357, r1358, r1359, r1360, tail⟩

theorem template_scp_node2_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1361 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1361 rho)
    (r1362 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1362 rho)
    (r1363 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1363 rho)
    (r1364 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1364 rho)
    (r1365 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1365 rho)
    (tail : next (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) (rho 1355) (rho 1360) (rho 1365) (rho 1370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg68 (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) (rho 1355) (rho 1360) (rho 1365) next := by
  exact ⟨rho 1366, rho 1367, rho 1368, rho 1369, rho 1370, r1361, r1362, r1363, r1364, r1365, tail⟩

theorem template_scp_node2_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1366 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1366 rho)
    (r1367 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1367 rho)
    (r1368 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1368 rho)
    (r1369 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1369 rho)
    (r1370 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1370 rho)
    (tail : next (rho 1355) (rho 1360) (rho 1365) (rho 1370) (rho 1375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg69 (rho 1330) (rho 1335) (rho 1340) (rho 1345) (rho 1350) (rho 1355) (rho 1360) (rho 1365) (rho 1370) next := by
  exact ⟨rho 1371, rho 1372, rho 1373, rho 1374, rho 1375, r1366, r1367, r1368, r1369, r1370, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
