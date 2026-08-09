import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node3_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1385 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1385 rho)
    (r1386 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1386 rho)
    (r1387 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1387 rho)
    (r1388 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1388 rho)
    (r1389 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1389 rho)
    (tail : next (rho 1382) (rho 1385) (rho 1383) (rho 1384) (rho 1386) (rho 1387) (rho 1388) (rho 1393)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg0 (rho 1380) (rho 1382) (rho 1385) (rho 1381) (rho 1383) (rho 1384) (rho 1386) (rho 1387) (rho 1388) next := by
  exact ⟨rho 1389, rho 1390, rho 1391, rho 1392, rho 1393, r1385, r1386, r1387, r1388, r1389, tail⟩

theorem template_scp_node3_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1390 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1390 rho)
    (r1391 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1391 rho)
    (r1392 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1392 rho)
    (r1393 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1393 rho)
    (r1394 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1394 rho)
    (tail : next (rho 1382) (rho 1385) (rho 1386) (rho 1387) (rho 1388) (rho 1393) (rho 1398)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg1 (rho 1382) (rho 1385) (rho 1383) (rho 1384) (rho 1386) (rho 1387) (rho 1388) (rho 1393) next := by
  exact ⟨rho 1394, rho 1395, rho 1396, rho 1397, rho 1398, r1390, r1391, r1392, r1393, r1394, tail⟩

theorem template_scp_node3_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1395 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1395 rho)
    (r1396 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1396 rho)
    (r1397 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1397 rho)
    (r1398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1398 rho)
    (r1399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1399 rho)
    (tail : next (rho 1385) (rho 1388) (rho 1393) (rho 1398) (rho 1403)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg2 (rho 1382) (rho 1385) (rho 1386) (rho 1387) (rho 1388) (rho 1393) (rho 1398) next := by
  exact ⟨rho 1399, rho 1400, rho 1401, rho 1402, rho 1403, r1395, r1396, r1397, r1398, r1399, tail⟩

theorem template_scp_node3_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r1400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1400 rho)
    (r1401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1401 rho)
    (r1402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1402 rho)
    (r1403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1403 rho)
    (r1404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1404 rho)
    (tail : next (rho 1393) (rho 1398) (rho 1403) (rho 1408)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg3 (rho 1385) (rho 1388) (rho 1393) (rho 1398) (rho 1403) next := by
  exact ⟨rho 1404, rho 1405, rho 1406, rho 1407, rho 1408, r1400, r1401, r1402, r1403, r1404, tail⟩

theorem template_scp_node3_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1405 rho)
    (r1406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1406 rho)
    (r1407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1407 rho)
    (r1408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1408 rho)
    (r1409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1409 rho)
    (tail : next (rho 1393) (rho 1398) (rho 1403) (rho 1408) (rho 1413)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg4 (rho 1393) (rho 1398) (rho 1403) (rho 1408) next := by
  exact ⟨rho 1409, rho 1410, rho 1411, rho 1412, rho 1413, r1405, r1406, r1407, r1408, r1409, tail⟩

theorem template_scp_node3_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1410 rho)
    (r1411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1411 rho)
    (r1412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1412 rho)
    (r1413 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1413 rho)
    (r1414 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1414 rho)
    (tail : next (rho 1393) (rho 1398) (rho 1403) (rho 1408) (rho 1413) (rho 1418)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg5 (rho 1393) (rho 1398) (rho 1403) (rho 1408) (rho 1413) next := by
  exact ⟨rho 1414, rho 1415, rho 1416, rho 1417, rho 1418, r1410, r1411, r1412, r1413, r1414, tail⟩

theorem template_scp_node3_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1415 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1415 rho)
    (r1416 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1416 rho)
    (r1417 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1417 rho)
    (r1418 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1418 rho)
    (r1419 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1419 rho)
    (tail : next (rho 1393) (rho 1398) (rho 1403) (rho 1408) (rho 1413) (rho 1418) (rho 1423)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg6 (rho 1393) (rho 1398) (rho 1403) (rho 1408) (rho 1413) (rho 1418) next := by
  exact ⟨rho 1419, rho 1420, rho 1421, rho 1422, rho 1423, r1415, r1416, r1417, r1418, r1419, tail⟩

theorem template_scp_node3_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1420 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1420 rho)
    (r1421 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1421 rho)
    (r1422 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1422 rho)
    (r1423 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1423 rho)
    (r1424 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1424 rho)
    (tail : next (rho 1393) (rho 1398) (rho 1403) (rho 1408) (rho 1413) (rho 1418) (rho 1423) (rho 1428)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg7 (rho 1393) (rho 1398) (rho 1403) (rho 1408) (rho 1413) (rho 1418) (rho 1423) next := by
  exact ⟨rho 1424, rho 1425, rho 1426, rho 1427, rho 1428, r1420, r1421, r1422, r1423, r1424, tail⟩

theorem template_scp_node3_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1425 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1425 rho)
    (r1426 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1426 rho)
    (r1427 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1427 rho)
    (r1428 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1428 rho)
    (r1429 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1429 rho)
    (tail : next (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg8 (rho 1393) (rho 1398) (rho 1403) (rho 1408) (rho 1413) (rho 1418) (rho 1423) (rho 1428) next := by
  exact ⟨rho 1429, rho 1430, rho 1431, rho 1432, rho 1433, r1425, r1426, r1427, r1428, r1429, tail⟩

theorem template_scp_node3_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1430 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1430 rho)
    (r1431 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1431 rho)
    (r1432 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1432 rho)
    (r1433 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1433 rho)
    (r1434 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1434 rho)
    (tail : next (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) (rho 1438)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg9 (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) next := by
  exact ⟨rho 1434, rho 1435, rho 1436, rho 1437, rho 1438, r1430, r1431, r1432, r1433, r1434, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
