import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node3_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1435 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1435 rho)
    (r1436 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1436 rho)
    (r1437 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1437 rho)
    (r1438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1438 rho)
    (r1439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1439 rho)
    (tail : next (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) (rho 1438) (rho 1443)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg10 (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) (rho 1438) next := by
  exact ⟨rho 1439, rho 1440, rho 1441, rho 1442, rho 1443, r1435, r1436, r1437, r1438, r1439, tail⟩

theorem template_scp_node3_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1440 rho)
    (r1441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1441 rho)
    (r1442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1442 rho)
    (r1443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1443 rho)
    (r1444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1444 rho)
    (tail : next (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) (rho 1438) (rho 1443) (rho 1448)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg11 (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) (rho 1438) (rho 1443) next := by
  exact ⟨rho 1444, rho 1445, rho 1446, rho 1447, rho 1448, r1440, r1441, r1442, r1443, r1444, tail⟩

theorem template_scp_node3_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1445 rho)
    (r1446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1446 rho)
    (r1447 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1447 rho)
    (r1448 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1448 rho)
    (r1449 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1449 rho)
    (tail : next (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) (rho 1438) (rho 1443) (rho 1448) (rho 1453)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg12 (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) (rho 1438) (rho 1443) (rho 1448) next := by
  exact ⟨rho 1449, rho 1450, rho 1451, rho 1452, rho 1453, r1445, r1446, r1447, r1448, r1449, tail⟩

theorem template_scp_node3_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1450 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1450 rho)
    (r1451 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1451 rho)
    (r1452 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1452 rho)
    (r1453 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1453 rho)
    (r1454 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1454 rho)
    (tail : next (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg13 (rho 1413) (rho 1418) (rho 1423) (rho 1428) (rho 1433) (rho 1438) (rho 1443) (rho 1448) (rho 1453) next := by
  exact ⟨rho 1454, rho 1455, rho 1456, rho 1457, rho 1458, r1450, r1451, r1452, r1453, r1454, tail⟩

theorem template_scp_node3_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1455 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1455 rho)
    (r1456 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1456 rho)
    (r1457 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1457 rho)
    (r1458 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1458 rho)
    (r1459 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1459 rho)
    (tail : next (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) (rho 1463)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg14 (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) next := by
  exact ⟨rho 1459, rho 1460, rho 1461, rho 1462, rho 1463, r1455, r1456, r1457, r1458, r1459, tail⟩

theorem template_scp_node3_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1460 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1460 rho)
    (r1461 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1461 rho)
    (r1462 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1462 rho)
    (r1463 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1463 rho)
    (r1464 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1464 rho)
    (tail : next (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) (rho 1463) (rho 1468)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg15 (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) (rho 1463) next := by
  exact ⟨rho 1464, rho 1465, rho 1466, rho 1467, rho 1468, r1460, r1461, r1462, r1463, r1464, tail⟩

theorem template_scp_node3_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1465 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1465 rho)
    (r1466 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1466 rho)
    (r1467 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1467 rho)
    (r1468 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1468 rho)
    (r1469 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1469 rho)
    (tail : next (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) (rho 1463) (rho 1468) (rho 1473)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg16 (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) (rho 1463) (rho 1468) next := by
  exact ⟨rho 1469, rho 1470, rho 1471, rho 1472, rho 1473, r1465, r1466, r1467, r1468, r1469, tail⟩

theorem template_scp_node3_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1470 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1470 rho)
    (r1471 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1471 rho)
    (r1472 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1472 rho)
    (r1473 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1473 rho)
    (r1474 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1474 rho)
    (tail : next (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) (rho 1463) (rho 1468) (rho 1473) (rho 1478)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg17 (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) (rho 1463) (rho 1468) (rho 1473) next := by
  exact ⟨rho 1474, rho 1475, rho 1476, rho 1477, rho 1478, r1470, r1471, r1472, r1473, r1474, tail⟩

theorem template_scp_node3_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1475 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1475 rho)
    (r1476 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1476 rho)
    (r1477 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1477 rho)
    (r1478 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1478 rho)
    (r1479 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1479 rho)
    (tail : next (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg18 (rho 1438) (rho 1443) (rho 1448) (rho 1453) (rho 1458) (rho 1463) (rho 1468) (rho 1473) (rho 1478) next := by
  exact ⟨rho 1479, rho 1480, rho 1481, rho 1482, rho 1483, r1475, r1476, r1477, r1478, r1479, tail⟩

theorem template_scp_node3_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1480 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1480 rho)
    (r1481 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1481 rho)
    (r1482 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1482 rho)
    (r1483 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1483 rho)
    (r1484 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1484 rho)
    (tail : next (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) (rho 1488)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg19 (rho 1463) (rho 1468) (rho 1473) (rho 1478) (rho 1483) next := by
  exact ⟨rho 1484, rho 1485, rho 1486, rho 1487, rho 1488, r1480, r1481, r1482, r1483, r1484, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
