import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node3_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1385 : Seg28.relationRow1385 rho)
    (r1386 : Seg28.relationRow1386 rho)
    (r1387 : Seg28.relationRow1387 rho)
    (r1388 : Seg28.relationRow1388 rho)
    (r1389 : Seg28.relationRow1389 rho)
    (tail : next (rho 173) (rho 174) (rho 20756) (rho 20757) (rho 20758) (rho 20759) (rho 20760) (rho 20765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg0 (rho 172) (rho 173) (rho 174) (rho 20755) (rho 20756) (rho 20757) (rho 20758) (rho 20759) (rho 20760) next := by
  exact ⟨rho 20761, rho 20762, rho 20763, rho 20764, rho 20765, r1385, r1386, r1387, r1388, r1389, tail⟩

theorem seg28_scp_node3_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1390 : Seg28.relationRow1390 rho)
    (r1391 : Seg28.relationRow1391 rho)
    (r1392 : Seg28.relationRow1392 rho)
    (r1393 : Seg28.relationRow1393 rho)
    (r1394 : Seg28.relationRow1394 rho)
    (tail : next (rho 173) (rho 174) (rho 20758) (rho 20759) (rho 20760) (rho 20765) (rho 20770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg1 (rho 173) (rho 174) (rho 20756) (rho 20757) (rho 20758) (rho 20759) (rho 20760) (rho 20765) next := by
  exact ⟨rho 20766, rho 20767, rho 20768, rho 20769, rho 20770, r1390, r1391, r1392, r1393, r1394, tail⟩

theorem seg28_scp_node3_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1395 : Seg28.relationRow1395 rho)
    (r1396 : Seg28.relationRow1396 rho)
    (r1397 : Seg28.relationRow1397 rho)
    (r1398 : Seg28.relationRow1398 rho)
    (r1399 : Seg28.relationRow1399 rho)
    (tail : next (rho 174) (rho 20760) (rho 20765) (rho 20770) (rho 20775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg2 (rho 173) (rho 174) (rho 20758) (rho 20759) (rho 20760) (rho 20765) (rho 20770) next := by
  exact ⟨rho 20771, rho 20772, rho 20773, rho 20774, rho 20775, r1395, r1396, r1397, r1398, r1399, tail⟩

theorem seg28_scp_node3_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1400 : Seg28.relationRow1400 rho)
    (r1401 : Seg28.relationRow1401 rho)
    (r1402 : Seg28.relationRow1402 rho)
    (r1403 : Seg28.relationRow1403 rho)
    (r1404 : Seg28.relationRow1404 rho)
    (tail : next (rho 20765) (rho 20770) (rho 20775) (rho 20780)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg3 (rho 174) (rho 20760) (rho 20765) (rho 20770) (rho 20775) next := by
  exact ⟨rho 20776, rho 20777, rho 20778, rho 20779, rho 20780, r1400, r1401, r1402, r1403, r1404, tail⟩

theorem seg28_scp_node3_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1405 : Seg28.relationRow1405 rho)
    (r1406 : Seg28.relationRow1406 rho)
    (r1407 : Seg28.relationRow1407 rho)
    (r1408 : Seg28.relationRow1408 rho)
    (r1409 : Seg28.relationRow1409 rho)
    (tail : next (rho 20765) (rho 20770) (rho 20775) (rho 20780) (rho 20785)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg4 (rho 20765) (rho 20770) (rho 20775) (rho 20780) next := by
  exact ⟨rho 20781, rho 20782, rho 20783, rho 20784, rho 20785, r1405, r1406, r1407, r1408, r1409, tail⟩

theorem seg28_scp_node3_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1410 : Seg28.relationRow1410 rho)
    (r1411 : Seg28.relationRow1411 rho)
    (r1412 : Seg28.relationRow1412 rho)
    (r1413 : Seg28.relationRow1413 rho)
    (r1414 : Seg28.relationRow1414 rho)
    (tail : next (rho 20765) (rho 20770) (rho 20775) (rho 20780) (rho 20785) (rho 20790)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg5 (rho 20765) (rho 20770) (rho 20775) (rho 20780) (rho 20785) next := by
  exact ⟨rho 20786, rho 20787, rho 20788, rho 20789, rho 20790, r1410, r1411, r1412, r1413, r1414, tail⟩

theorem seg28_scp_node3_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1415 : Seg28.relationRow1415 rho)
    (r1416 : Seg28.relationRow1416 rho)
    (r1417 : Seg28.relationRow1417 rho)
    (r1418 : Seg28.relationRow1418 rho)
    (r1419 : Seg28.relationRow1419 rho)
    (tail : next (rho 20765) (rho 20770) (rho 20775) (rho 20780) (rho 20785) (rho 20790) (rho 20795)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg6 (rho 20765) (rho 20770) (rho 20775) (rho 20780) (rho 20785) (rho 20790) next := by
  exact ⟨rho 20791, rho 20792, rho 20793, rho 20794, rho 20795, r1415, r1416, r1417, r1418, r1419, tail⟩

theorem seg28_scp_node3_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1420 : Seg28.relationRow1420 rho)
    (r1421 : Seg28.relationRow1421 rho)
    (r1422 : Seg28.relationRow1422 rho)
    (r1423 : Seg28.relationRow1423 rho)
    (r1424 : Seg28.relationRow1424 rho)
    (tail : next (rho 20765) (rho 20770) (rho 20775) (rho 20780) (rho 20785) (rho 20790) (rho 20795) (rho 20800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg7 (rho 20765) (rho 20770) (rho 20775) (rho 20780) (rho 20785) (rho 20790) (rho 20795) next := by
  exact ⟨rho 20796, rho 20797, rho 20798, rho 20799, rho 20800, r1420, r1421, r1422, r1423, r1424, tail⟩

theorem seg28_scp_node3_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1425 : Seg28.relationRow1425 rho)
    (r1426 : Seg28.relationRow1426 rho)
    (r1427 : Seg28.relationRow1427 rho)
    (r1428 : Seg28.relationRow1428 rho)
    (r1429 : Seg28.relationRow1429 rho)
    (tail : next (rho 20785) (rho 20790) (rho 20795) (rho 20800) (rho 20805)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg8 (rho 20765) (rho 20770) (rho 20775) (rho 20780) (rho 20785) (rho 20790) (rho 20795) (rho 20800) next := by
  exact ⟨rho 20801, rho 20802, rho 20803, rho 20804, rho 20805, r1425, r1426, r1427, r1428, r1429, tail⟩

theorem seg28_scp_node3_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1430 : Seg28.relationRow1430 rho)
    (r1431 : Seg28.relationRow1431 rho)
    (r1432 : Seg28.relationRow1432 rho)
    (r1433 : Seg28.relationRow1433 rho)
    (r1434 : Seg28.relationRow1434 rho)
    (tail : next (rho 20785) (rho 20790) (rho 20795) (rho 20800) (rho 20805) (rho 20810)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg9 (rho 20785) (rho 20790) (rho 20795) (rho 20800) (rho 20805) next := by
  exact ⟨rho 20806, rho 20807, rho 20808, rho 20809, rho 20810, r1430, r1431, r1432, r1433, r1434, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

