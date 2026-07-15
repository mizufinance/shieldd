import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node3_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1385 : Seg13.relationRow1385 rho)
    (r1386 : Seg13.relationRow1386 rho)
    (r1387 : Seg13.relationRow1387 rho)
    (r1388 : Seg13.relationRow1388 rho)
    (r1389 : Seg13.relationRow1389 rho)
    (tail : next (rho 86) (rho 87) (rho 8581) (rho 8582) (rho 8583) (rho 8584) (rho 8585) (rho 8590)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg0 (rho 85) (rho 86) (rho 87) (rho 8580) (rho 8581) (rho 8582) (rho 8583) (rho 8584) (rho 8585) next := by
  exact ⟨rho 8586, rho 8587, rho 8588, rho 8589, rho 8590, r1385, r1386, r1387, r1388, r1389, tail⟩

theorem seg13_scp_node3_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1390 : Seg13.relationRow1390 rho)
    (r1391 : Seg13.relationRow1391 rho)
    (r1392 : Seg13.relationRow1392 rho)
    (r1393 : Seg13.relationRow1393 rho)
    (r1394 : Seg13.relationRow1394 rho)
    (tail : next (rho 86) (rho 87) (rho 8583) (rho 8584) (rho 8585) (rho 8590) (rho 8595)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg1 (rho 86) (rho 87) (rho 8581) (rho 8582) (rho 8583) (rho 8584) (rho 8585) (rho 8590) next := by
  exact ⟨rho 8591, rho 8592, rho 8593, rho 8594, rho 8595, r1390, r1391, r1392, r1393, r1394, tail⟩

theorem seg13_scp_node3_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1395 : Seg13.relationRow1395 rho)
    (r1396 : Seg13.relationRow1396 rho)
    (r1397 : Seg13.relationRow1397 rho)
    (r1398 : Seg13.relationRow1398 rho)
    (r1399 : Seg13.relationRow1399 rho)
    (tail : next (rho 87) (rho 8585) (rho 8590) (rho 8595) (rho 8600)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg2 (rho 86) (rho 87) (rho 8583) (rho 8584) (rho 8585) (rho 8590) (rho 8595) next := by
  exact ⟨rho 8596, rho 8597, rho 8598, rho 8599, rho 8600, r1395, r1396, r1397, r1398, r1399, tail⟩

theorem seg13_scp_node3_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1400 : Seg13.relationRow1400 rho)
    (r1401 : Seg13.relationRow1401 rho)
    (r1402 : Seg13.relationRow1402 rho)
    (r1403 : Seg13.relationRow1403 rho)
    (r1404 : Seg13.relationRow1404 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg3 (rho 87) (rho 8585) (rho 8590) (rho 8595) (rho 8600) next := by
  exact ⟨rho 8601, rho 8602, rho 8603, rho 8604, rho 8605, r1400, r1401, r1402, r1403, r1404, tail⟩

theorem seg13_scp_node3_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1405 : Seg13.relationRow1405 rho)
    (r1406 : Seg13.relationRow1406 rho)
    (r1407 : Seg13.relationRow1407 rho)
    (r1408 : Seg13.relationRow1408 rho)
    (r1409 : Seg13.relationRow1409 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg4 (rho 8590) (rho 8595) (rho 8600) (rho 8605) next := by
  exact ⟨rho 8606, rho 8607, rho 8608, rho 8609, rho 8610, r1405, r1406, r1407, r1408, r1409, tail⟩

theorem seg13_scp_node3_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1410 : Seg13.relationRow1410 rho)
    (r1411 : Seg13.relationRow1411 rho)
    (r1412 : Seg13.relationRow1412 rho)
    (r1413 : Seg13.relationRow1413 rho)
    (r1414 : Seg13.relationRow1414 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg5 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) next := by
  exact ⟨rho 8611, rho 8612, rho 8613, rho 8614, rho 8615, r1410, r1411, r1412, r1413, r1414, tail⟩

theorem seg13_scp_node3_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1415 : Seg13.relationRow1415 rho)
    (r1416 : Seg13.relationRow1416 rho)
    (r1417 : Seg13.relationRow1417 rho)
    (r1418 : Seg13.relationRow1418 rho)
    (r1419 : Seg13.relationRow1419 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg6 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) next := by
  exact ⟨rho 8616, rho 8617, rho 8618, rho 8619, rho 8620, r1415, r1416, r1417, r1418, r1419, tail⟩

theorem seg13_scp_node3_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1420 : Seg13.relationRow1420 rho)
    (r1421 : Seg13.relationRow1421 rho)
    (r1422 : Seg13.relationRow1422 rho)
    (r1423 : Seg13.relationRow1423 rho)
    (r1424 : Seg13.relationRow1424 rho)
    (tail : next (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620) (rho 8625)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg7 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620) next := by
  exact ⟨rho 8621, rho 8622, rho 8623, rho 8624, rho 8625, r1420, r1421, r1422, r1423, r1424, tail⟩

theorem seg13_scp_node3_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1425 : Seg13.relationRow1425 rho)
    (r1426 : Seg13.relationRow1426 rho)
    (r1427 : Seg13.relationRow1427 rho)
    (r1428 : Seg13.relationRow1428 rho)
    (r1429 : Seg13.relationRow1429 rho)
    (tail : next (rho 8610) (rho 8615) (rho 8620) (rho 8625) (rho 8630)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg8 (rho 8590) (rho 8595) (rho 8600) (rho 8605) (rho 8610) (rho 8615) (rho 8620) (rho 8625) next := by
  exact ⟨rho 8626, rho 8627, rho 8628, rho 8629, rho 8630, r1425, r1426, r1427, r1428, r1429, tail⟩

theorem seg13_scp_node3_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1430 : Seg13.relationRow1430 rho)
    (r1431 : Seg13.relationRow1431 rho)
    (r1432 : Seg13.relationRow1432 rho)
    (r1433 : Seg13.relationRow1433 rho)
    (r1434 : Seg13.relationRow1434 rho)
    (tail : next (rho 8610) (rho 8615) (rho 8620) (rho 8625) (rho 8630) (rho 8635)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg9 (rho 8610) (rho 8615) (rho 8620) (rho 8625) (rho 8630) next := by
  exact ⟨rho 8631, rho 8632, rho 8633, rho 8634, rho 8635, r1430, r1431, r1432, r1433, r1434, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

