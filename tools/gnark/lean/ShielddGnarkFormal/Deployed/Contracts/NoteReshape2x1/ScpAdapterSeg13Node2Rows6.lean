import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node2_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1321 : Seg13.relationRow1321 rho)
    (r1322 : Seg13.relationRow1322 rho)
    (r1323 : Seg13.relationRow1323 rho)
    (r1324 : Seg13.relationRow1324 rho)
    (r1325 : Seg13.relationRow1325 rho)
    (tail : next (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg60 (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) next := by
  exact ⟨rho 8520, rho 8521, rho 8522, rho 8523, rho 8524, r1321, r1322, r1323, r1324, r1325, tail⟩

theorem seg13_scp_node2_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1326 : Seg13.relationRow1326 rho)
    (r1327 : Seg13.relationRow1327 rho)
    (r1328 : Seg13.relationRow1328 rho)
    (r1329 : Seg13.relationRow1329 rho)
    (r1330 : Seg13.relationRow1330 rho)
    (tail : next (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg61 (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) next := by
  exact ⟨rho 8525, rho 8526, rho 8527, rho 8528, rho 8529, r1326, r1327, r1328, r1329, r1330, tail⟩

theorem seg13_scp_node2_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1331 : Seg13.relationRow1331 rho)
    (r1332 : Seg13.relationRow1332 rho)
    (r1333 : Seg13.relationRow1333 rho)
    (r1334 : Seg13.relationRow1334 rho)
    (r1335 : Seg13.relationRow1335 rho)
    (tail : next (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg62 (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) next := by
  exact ⟨rho 8530, rho 8531, rho 8532, rho 8533, rho 8534, r1331, r1332, r1333, r1334, r1335, tail⟩

theorem seg13_scp_node2_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1336 : Seg13.relationRow1336 rho)
    (r1337 : Seg13.relationRow1337 rho)
    (r1338 : Seg13.relationRow1338 rho)
    (r1339 : Seg13.relationRow1339 rho)
    (r1340 : Seg13.relationRow1340 rho)
    (tail : next (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) (rho 8539)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg63 (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) next := by
  exact ⟨rho 8535, rho 8536, rho 8537, rho 8538, rho 8539, r1336, r1337, r1338, r1339, r1340, tail⟩

theorem seg13_scp_node2_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1341 : Seg13.relationRow1341 rho)
    (r1342 : Seg13.relationRow1342 rho)
    (r1343 : Seg13.relationRow1343 rho)
    (r1344 : Seg13.relationRow1344 rho)
    (r1345 : Seg13.relationRow1345 rho)
    (tail : next (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg64 (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519) (rho 8524) (rho 8529) (rho 8534) (rho 8539) next := by
  exact ⟨rho 8540, rho 8541, rho 8542, rho 8543, rho 8544, r1341, r1342, r1343, r1344, r1345, tail⟩

theorem seg13_scp_node2_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1346 : Seg13.relationRow1346 rho)
    (r1347 : Seg13.relationRow1347 rho)
    (r1348 : Seg13.relationRow1348 rho)
    (r1349 : Seg13.relationRow1349 rho)
    (r1350 : Seg13.relationRow1350 rho)
    (tail : next (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg65 (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) next := by
  exact ⟨rho 8545, rho 8546, rho 8547, rho 8548, rho 8549, r1346, r1347, r1348, r1349, r1350, tail⟩

theorem seg13_scp_node2_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1351 : Seg13.relationRow1351 rho)
    (r1352 : Seg13.relationRow1352 rho)
    (r1353 : Seg13.relationRow1353 rho)
    (r1354 : Seg13.relationRow1354 rho)
    (r1355 : Seg13.relationRow1355 rho)
    (tail : next (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg66 (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549) next := by
  exact ⟨rho 8550, rho 8551, rho 8552, rho 8553, rho 8554, r1351, r1352, r1353, r1354, r1355, tail⟩

theorem seg13_scp_node2_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1356 : Seg13.relationRow1356 rho)
    (r1357 : Seg13.relationRow1357 rho)
    (r1358 : Seg13.relationRow1358 rho)
    (r1359 : Seg13.relationRow1359 rho)
    (r1360 : Seg13.relationRow1360 rho)
    (tail : next (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg67 (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) next := by
  exact ⟨rho 8555, rho 8556, rho 8557, rho 8558, rho 8559, r1356, r1357, r1358, r1359, r1360, tail⟩

theorem seg13_scp_node2_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1361 : Seg13.relationRow1361 rho)
    (r1362 : Seg13.relationRow1362 rho)
    (r1363 : Seg13.relationRow1363 rho)
    (r1364 : Seg13.relationRow1364 rho)
    (r1365 : Seg13.relationRow1365 rho)
    (tail : next (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) (rho 8564)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg68 (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) next := by
  exact ⟨rho 8560, rho 8561, rho 8562, rho 8563, rho 8564, r1361, r1362, r1363, r1364, r1365, tail⟩

theorem seg13_scp_node2_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1366 : Seg13.relationRow1366 rho)
    (r1367 : Seg13.relationRow1367 rho)
    (r1368 : Seg13.relationRow1368 rho)
    (r1369 : Seg13.relationRow1369 rho)
    (r1370 : Seg13.relationRow1370 rho)
    (tail : next (rho 8549) (rho 8554) (rho 8559) (rho 8564) (rho 8569)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg69 (rho 8524) (rho 8529) (rho 8534) (rho 8539) (rho 8544) (rho 8549) (rho 8554) (rho 8559) (rho 8564) next := by
  exact ⟨rho 8565, rho 8566, rho 8567, rho 8568, rho 8569, r1366, r1367, r1368, r1369, r1370, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

