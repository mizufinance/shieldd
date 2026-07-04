import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Leaf
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node8
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node10
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node11
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node12
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node13
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node14
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node15
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node16
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node17
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node18
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node19
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node20
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node21
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node22
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Node23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg11_scp_step0 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode0Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (1 : Seg11.F))
        (seg11ScpLeafOut rho) (rho 94) (rho 95) (rho 96)
        (rho 1883) (rho 1884) := by
  have hnode := seg11_scp_node0_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r279, r280, r281, r282, _, r284, r285, _, r287, r288, _, r290, _, r292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (1 : Seg11.F))
      (seg11ScpLeafOut rho) (rho 94) (rho 95) (rho 96)
      (rho 1883) (rho 1884)
      (rho 1931) (rho 1932) (rho 1933) (rho 1934)
      (rho 1935) (rho 1936) (rho 1937) (rho 1938) (rho 1939) (rho 1940)
      (by unfold Seg11.relationRow279 at r279; linear_combination r279)
      (by unfold Seg11.relationRow280 at r280; linear_combination r280)
      (by unfold Seg11.relationRow281 at r281; linear_combination r281)
      (by unfold Seg11.relationRow282 at r282; linear_combination r282)
      (by unfold seg11ScpLeafOut; unfold Seg11.relationRow284 at r284; linear_combination r284)
      (by unfold Seg11.relationRow285 at r285; linear_combination r285)
      (by unfold seg11ScpLeafOut; unfold Seg11.relationRow287 at r287; linear_combination r287)
      (by unfold Seg11.relationRow288 at r288; linear_combination r288)
      (by unfold seg11ScpLeafOut; unfold Seg11.relationRow290 at r290; linear_combination r290)
      (by unfold seg11ScpLeafOut; unfold Seg11.relationRow292 at r292; linear_combination r292))

theorem seg11_scp_step1 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode1Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (2 : Seg11.F))
        (seg11ScpNode0Out rho) (rho 91) (rho 92) (rho 93)
        (rho 1885) (rho 1886) := by
  have hnode := seg11_scp_node1_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart8 at p8
  rcases p8 with ⟨_, _, _, r643, r644, r645, r646, _, r648, r649, _, r651, r652, _, r654, _, r656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (2 : Seg11.F))
      (seg11ScpNode0Out rho) (rho 91) (rho 92) (rho 93)
      (rho 1885) (rho 1886)
      (rho 2291) (rho 2292) (rho 2293) (rho 2294)
      (rho 2295) (rho 2296) (rho 2297) (rho 2298) (rho 2299) (rho 2300)
      (by unfold Seg11.relationRow643 at r643; linear_combination r643)
      (by unfold Seg11.relationRow644 at r644; linear_combination r644)
      (by unfold Seg11.relationRow645 at r645; linear_combination r645)
      (by unfold Seg11.relationRow646 at r646; linear_combination r646)
      (by unfold seg11ScpNode0Out; unfold Seg11.relationRow648 at r648; linear_combination r648)
      (by unfold Seg11.relationRow649 at r649; linear_combination r649)
      (by unfold seg11ScpNode0Out; unfold Seg11.relationRow651 at r651; linear_combination r651)
      (by unfold Seg11.relationRow652 at r652; linear_combination r652)
      (by unfold seg11ScpNode0Out; unfold Seg11.relationRow654 at r654; linear_combination r654)
      (by unfold seg11ScpNode0Out; unfold Seg11.relationRow656 at r656; linear_combination r656))

theorem seg11_scp_step2 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode2Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (3 : Seg11.F))
        (seg11ScpNode1Out rho) (rho 88) (rho 89) (rho 90)
        (rho 1887) (rho 1888) := by
  have hnode := seg11_scp_node2_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1007, r1008, r1009, r1010, _, r1012, r1013, _, r1015, r1016, _, r1018, _, r1020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (3 : Seg11.F))
      (seg11ScpNode1Out rho) (rho 88) (rho 89) (rho 90)
      (rho 1887) (rho 1888)
      (rho 2651) (rho 2652) (rho 2653) (rho 2654)
      (rho 2655) (rho 2656) (rho 2657) (rho 2658) (rho 2659) (rho 2660)
      (by unfold Seg11.relationRow1007 at r1007; linear_combination r1007)
      (by unfold Seg11.relationRow1008 at r1008; linear_combination r1008)
      (by unfold Seg11.relationRow1009 at r1009; linear_combination r1009)
      (by unfold Seg11.relationRow1010 at r1010; linear_combination r1010)
      (by unfold seg11ScpNode1Out; unfold Seg11.relationRow1012 at r1012; linear_combination r1012)
      (by unfold Seg11.relationRow1013 at r1013; linear_combination r1013)
      (by unfold seg11ScpNode1Out; unfold Seg11.relationRow1015 at r1015; linear_combination r1015)
      (by unfold Seg11.relationRow1016 at r1016; linear_combination r1016)
      (by unfold seg11ScpNode1Out; unfold Seg11.relationRow1018 at r1018; linear_combination r1018)
      (by unfold seg11ScpNode1Out; unfold Seg11.relationRow1020 at r1020; linear_combination r1020))

theorem seg11_scp_step3 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode3Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (4 : Seg11.F))
        (seg11ScpNode2Out rho) (rho 85) (rho 86) (rho 87)
        (rho 1889) (rho 1890) := by
  have hnode := seg11_scp_node3_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, r1371, r1372, r1373, r1374, _, r1376, r1377, _, r1379, r1380, _, r1382, _, r1384, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (4 : Seg11.F))
      (seg11ScpNode2Out rho) (rho 85) (rho 86) (rho 87)
      (rho 1889) (rho 1890)
      (rho 3011) (rho 3012) (rho 3013) (rho 3014)
      (rho 3015) (rho 3016) (rho 3017) (rho 3018) (rho 3019) (rho 3020)
      (by unfold Seg11.relationRow1371 at r1371; linear_combination r1371)
      (by unfold Seg11.relationRow1372 at r1372; linear_combination r1372)
      (by unfold Seg11.relationRow1373 at r1373; linear_combination r1373)
      (by unfold Seg11.relationRow1374 at r1374; linear_combination r1374)
      (by unfold seg11ScpNode2Out; unfold Seg11.relationRow1376 at r1376; linear_combination r1376)
      (by unfold Seg11.relationRow1377 at r1377; linear_combination r1377)
      (by unfold seg11ScpNode2Out; unfold Seg11.relationRow1379 at r1379; linear_combination r1379)
      (by unfold Seg11.relationRow1380 at r1380; linear_combination r1380)
      (by unfold seg11ScpNode2Out; unfold Seg11.relationRow1382 at r1382; linear_combination r1382)
      (by unfold seg11ScpNode2Out; unfold Seg11.relationRow1384 at r1384; linear_combination r1384))

theorem seg11_scp_step4 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode4Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (5 : Seg11.F))
        (seg11ScpNode3Out rho) (rho 82) (rho 83) (rho 84)
        (rho 1891) (rho 1892) := by
  have hnode := seg11_scp_node4_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1735, r1736, r1737, r1738, _, r1740, r1741, _, r1743, r1744, _, r1746, _, r1748, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (5 : Seg11.F))
      (seg11ScpNode3Out rho) (rho 82) (rho 83) (rho 84)
      (rho 1891) (rho 1892)
      (rho 3371) (rho 3372) (rho 3373) (rho 3374)
      (rho 3375) (rho 3376) (rho 3377) (rho 3378) (rho 3379) (rho 3380)
      (by unfold Seg11.relationRow1735 at r1735; linear_combination r1735)
      (by unfold Seg11.relationRow1736 at r1736; linear_combination r1736)
      (by unfold Seg11.relationRow1737 at r1737; linear_combination r1737)
      (by unfold Seg11.relationRow1738 at r1738; linear_combination r1738)
      (by unfold seg11ScpNode3Out; unfold Seg11.relationRow1740 at r1740; linear_combination r1740)
      (by unfold Seg11.relationRow1741 at r1741; linear_combination r1741)
      (by unfold seg11ScpNode3Out; unfold Seg11.relationRow1743 at r1743; linear_combination r1743)
      (by unfold Seg11.relationRow1744 at r1744; linear_combination r1744)
      (by unfold seg11ScpNode3Out; unfold Seg11.relationRow1746 at r1746; linear_combination r1746)
      (by unfold seg11ScpNode3Out; unfold Seg11.relationRow1748 at r1748; linear_combination r1748))

theorem seg11_scp_step5 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode5Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (6 : Seg11.F))
        (seg11ScpNode4Out rho) (rho 79) (rho 80) (rho 81)
        (rho 1893) (rho 1894) := by
  have hnode := seg11_scp_node5_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2099, r2100, r2101, r2102, _, r2104, r2105, _, r2107, r2108, _, r2110, _, r2112, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (6 : Seg11.F))
      (seg11ScpNode4Out rho) (rho 79) (rho 80) (rho 81)
      (rho 1893) (rho 1894)
      (rho 3731) (rho 3732) (rho 3733) (rho 3734)
      (rho 3735) (rho 3736) (rho 3737) (rho 3738) (rho 3739) (rho 3740)
      (by unfold Seg11.relationRow2099 at r2099; linear_combination r2099)
      (by unfold Seg11.relationRow2100 at r2100; linear_combination r2100)
      (by unfold Seg11.relationRow2101 at r2101; linear_combination r2101)
      (by unfold Seg11.relationRow2102 at r2102; linear_combination r2102)
      (by unfold seg11ScpNode4Out; unfold Seg11.relationRow2104 at r2104; linear_combination r2104)
      (by unfold Seg11.relationRow2105 at r2105; linear_combination r2105)
      (by unfold seg11ScpNode4Out; unfold Seg11.relationRow2107 at r2107; linear_combination r2107)
      (by unfold Seg11.relationRow2108 at r2108; linear_combination r2108)
      (by unfold seg11ScpNode4Out; unfold Seg11.relationRow2110 at r2110; linear_combination r2110)
      (by unfold seg11ScpNode4Out; unfold Seg11.relationRow2112 at r2112; linear_combination r2112))

theorem seg11_scp_step6 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode6Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (7 : Seg11.F))
        (seg11ScpNode5Out rho) (rho 76) (rho 77) (rho 78)
        (rho 1895) (rho 1896) := by
  have hnode := seg11_scp_node6_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2463, r2464, r2465, r2466, _, r2468, r2469, _, r2471, r2472, _, r2474, _, r2476, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (7 : Seg11.F))
      (seg11ScpNode5Out rho) (rho 76) (rho 77) (rho 78)
      (rho 1895) (rho 1896)
      (rho 4091) (rho 4092) (rho 4093) (rho 4094)
      (rho 4095) (rho 4096) (rho 4097) (rho 4098) (rho 4099) (rho 4100)
      (by unfold Seg11.relationRow2463 at r2463; linear_combination r2463)
      (by unfold Seg11.relationRow2464 at r2464; linear_combination r2464)
      (by unfold Seg11.relationRow2465 at r2465; linear_combination r2465)
      (by unfold Seg11.relationRow2466 at r2466; linear_combination r2466)
      (by unfold seg11ScpNode5Out; unfold Seg11.relationRow2468 at r2468; linear_combination r2468)
      (by unfold Seg11.relationRow2469 at r2469; linear_combination r2469)
      (by unfold seg11ScpNode5Out; unfold Seg11.relationRow2471 at r2471; linear_combination r2471)
      (by unfold Seg11.relationRow2472 at r2472; linear_combination r2472)
      (by unfold seg11ScpNode5Out; unfold Seg11.relationRow2474 at r2474; linear_combination r2474)
      (by unfold seg11ScpNode5Out; unfold Seg11.relationRow2476 at r2476; linear_combination r2476))

theorem seg11_scp_step7 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode7Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (8 : Seg11.F))
        (seg11ScpNode6Out rho) (rho 73) (rho 74) (rho 75)
        (rho 1897) (rho 1898) := by
  have hnode := seg11_scp_node7_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2827, r2828, r2829, r2830, _, r2832, r2833, _, r2835, r2836, _, r2838, _, r2840, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (8 : Seg11.F))
      (seg11ScpNode6Out rho) (rho 73) (rho 74) (rho 75)
      (rho 1897) (rho 1898)
      (rho 4451) (rho 4452) (rho 4453) (rho 4454)
      (rho 4455) (rho 4456) (rho 4457) (rho 4458) (rho 4459) (rho 4460)
      (by unfold Seg11.relationRow2827 at r2827; linear_combination r2827)
      (by unfold Seg11.relationRow2828 at r2828; linear_combination r2828)
      (by unfold Seg11.relationRow2829 at r2829; linear_combination r2829)
      (by unfold Seg11.relationRow2830 at r2830; linear_combination r2830)
      (by unfold seg11ScpNode6Out; unfold Seg11.relationRow2832 at r2832; linear_combination r2832)
      (by unfold Seg11.relationRow2833 at r2833; linear_combination r2833)
      (by unfold seg11ScpNode6Out; unfold Seg11.relationRow2835 at r2835; linear_combination r2835)
      (by unfold Seg11.relationRow2836 at r2836; linear_combination r2836)
      (by unfold seg11ScpNode6Out; unfold Seg11.relationRow2838 at r2838; linear_combination r2838)
      (by unfold seg11ScpNode6Out; unfold Seg11.relationRow2840 at r2840; linear_combination r2840))

theorem seg11_scp_step8 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode8Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (9 : Seg11.F))
        (seg11ScpNode7Out rho) (rho 70) (rho 71) (rho 72)
        (rho 1899) (rho 1900) := by
  have hnode := seg11_scp_node8_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3191, r3192, r3193, r3194, _, r3196, r3197, _, r3199⟩
  unfold Seg11.relationPart40 at p40
  rcases p40 with ⟨r3200, _, r3202, _, r3204, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (9 : Seg11.F))
      (seg11ScpNode7Out rho) (rho 70) (rho 71) (rho 72)
      (rho 1899) (rho 1900)
      (rho 4811) (rho 4812) (rho 4813) (rho 4814)
      (rho 4815) (rho 4816) (rho 4817) (rho 4818) (rho 4819) (rho 4820)
      (by unfold Seg11.relationRow3191 at r3191; linear_combination r3191)
      (by unfold Seg11.relationRow3192 at r3192; linear_combination r3192)
      (by unfold Seg11.relationRow3193 at r3193; linear_combination r3193)
      (by unfold Seg11.relationRow3194 at r3194; linear_combination r3194)
      (by unfold seg11ScpNode7Out; unfold Seg11.relationRow3196 at r3196; linear_combination r3196)
      (by unfold Seg11.relationRow3197 at r3197; linear_combination r3197)
      (by unfold seg11ScpNode7Out; unfold Seg11.relationRow3199 at r3199; linear_combination r3199)
      (by unfold Seg11.relationRow3200 at r3200; linear_combination r3200)
      (by unfold seg11ScpNode7Out; unfold Seg11.relationRow3202 at r3202; linear_combination r3202)
      (by unfold seg11ScpNode7Out; unfold Seg11.relationRow3204 at r3204; linear_combination r3204))

theorem seg11_scp_step9 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode9Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (10 : Seg11.F))
        (seg11ScpNode8Out rho) (rho 67) (rho 68) (rho 69)
        (rho 1901) (rho 1902) := by
  have hnode := seg11_scp_node9_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3555, r3556, r3557, r3558, _, r3560, r3561, _, r3563, r3564, _, r3566, _, r3568, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (10 : Seg11.F))
      (seg11ScpNode8Out rho) (rho 67) (rho 68) (rho 69)
      (rho 1901) (rho 1902)
      (rho 5171) (rho 5172) (rho 5173) (rho 5174)
      (rho 5175) (rho 5176) (rho 5177) (rho 5178) (rho 5179) (rho 5180)
      (by unfold Seg11.relationRow3555 at r3555; linear_combination r3555)
      (by unfold Seg11.relationRow3556 at r3556; linear_combination r3556)
      (by unfold Seg11.relationRow3557 at r3557; linear_combination r3557)
      (by unfold Seg11.relationRow3558 at r3558; linear_combination r3558)
      (by unfold seg11ScpNode8Out; unfold Seg11.relationRow3560 at r3560; linear_combination r3560)
      (by unfold Seg11.relationRow3561 at r3561; linear_combination r3561)
      (by unfold seg11ScpNode8Out; unfold Seg11.relationRow3563 at r3563; linear_combination r3563)
      (by unfold Seg11.relationRow3564 at r3564; linear_combination r3564)
      (by unfold seg11ScpNode8Out; unfold Seg11.relationRow3566 at r3566; linear_combination r3566)
      (by unfold seg11ScpNode8Out; unfold Seg11.relationRow3568 at r3568; linear_combination r3568))

theorem seg11_scp_step10 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode10Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (11 : Seg11.F))
        (seg11ScpNode9Out rho) (rho 64) (rho 65) (rho 66)
        (rho 1903) (rho 1904) := by
  have hnode := seg11_scp_node10_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3919⟩
  unfold Seg11.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, r3922, _, r3924, r3925, _, r3927, r3928, _, r3930, _, r3932, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (11 : Seg11.F))
      (seg11ScpNode9Out rho) (rho 64) (rho 65) (rho 66)
      (rho 1903) (rho 1904)
      (rho 5531) (rho 5532) (rho 5533) (rho 5534)
      (rho 5535) (rho 5536) (rho 5537) (rho 5538) (rho 5539) (rho 5540)
      (by unfold Seg11.relationRow3919 at r3919; linear_combination r3919)
      (by unfold Seg11.relationRow3920 at r3920; linear_combination r3920)
      (by unfold Seg11.relationRow3921 at r3921; linear_combination r3921)
      (by unfold Seg11.relationRow3922 at r3922; linear_combination r3922)
      (by unfold seg11ScpNode9Out; unfold Seg11.relationRow3924 at r3924; linear_combination r3924)
      (by unfold Seg11.relationRow3925 at r3925; linear_combination r3925)
      (by unfold seg11ScpNode9Out; unfold Seg11.relationRow3927 at r3927; linear_combination r3927)
      (by unfold Seg11.relationRow3928 at r3928; linear_combination r3928)
      (by unfold seg11ScpNode9Out; unfold Seg11.relationRow3930 at r3930; linear_combination r3930)
      (by unfold seg11ScpNode9Out; unfold Seg11.relationRow3932 at r3932; linear_combination r3932))

theorem seg11_scp_step11 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode11Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (12 : Seg11.F))
        (seg11ScpNode10Out rho) (rho 61) (rho 62) (rho 63)
        (rho 1905) (rho 1906) := by
  have hnode := seg11_scp_node11_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4283, r4284, r4285, r4286, _, r4288, r4289, _, r4291, r4292, _, r4294, _, r4296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (12 : Seg11.F))
      (seg11ScpNode10Out rho) (rho 61) (rho 62) (rho 63)
      (rho 1905) (rho 1906)
      (rho 5891) (rho 5892) (rho 5893) (rho 5894)
      (rho 5895) (rho 5896) (rho 5897) (rho 5898) (rho 5899) (rho 5900)
      (by unfold Seg11.relationRow4283 at r4283; linear_combination r4283)
      (by unfold Seg11.relationRow4284 at r4284; linear_combination r4284)
      (by unfold Seg11.relationRow4285 at r4285; linear_combination r4285)
      (by unfold Seg11.relationRow4286 at r4286; linear_combination r4286)
      (by unfold seg11ScpNode10Out; unfold Seg11.relationRow4288 at r4288; linear_combination r4288)
      (by unfold Seg11.relationRow4289 at r4289; linear_combination r4289)
      (by unfold seg11ScpNode10Out; unfold Seg11.relationRow4291 at r4291; linear_combination r4291)
      (by unfold Seg11.relationRow4292 at r4292; linear_combination r4292)
      (by unfold seg11ScpNode10Out; unfold Seg11.relationRow4294 at r4294; linear_combination r4294)
      (by unfold seg11ScpNode10Out; unfold Seg11.relationRow4296 at r4296; linear_combination r4296))

theorem seg11_scp_step12 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode12Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (13 : Seg11.F))
        (seg11ScpNode11Out rho) (rho 58) (rho 59) (rho 60)
        (rho 1907) (rho 1908) := by
  have hnode := seg11_scp_node12_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, r4647, r4648, r4649, r4650, _, r4652, r4653, _, r4655, r4656, _, r4658, _, r4660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (13 : Seg11.F))
      (seg11ScpNode11Out rho) (rho 58) (rho 59) (rho 60)
      (rho 1907) (rho 1908)
      (rho 6251) (rho 6252) (rho 6253) (rho 6254)
      (rho 6255) (rho 6256) (rho 6257) (rho 6258) (rho 6259) (rho 6260)
      (by unfold Seg11.relationRow4647 at r4647; linear_combination r4647)
      (by unfold Seg11.relationRow4648 at r4648; linear_combination r4648)
      (by unfold Seg11.relationRow4649 at r4649; linear_combination r4649)
      (by unfold Seg11.relationRow4650 at r4650; linear_combination r4650)
      (by unfold seg11ScpNode11Out; unfold Seg11.relationRow4652 at r4652; linear_combination r4652)
      (by unfold Seg11.relationRow4653 at r4653; linear_combination r4653)
      (by unfold seg11ScpNode11Out; unfold Seg11.relationRow4655 at r4655; linear_combination r4655)
      (by unfold Seg11.relationRow4656 at r4656; linear_combination r4656)
      (by unfold seg11ScpNode11Out; unfold Seg11.relationRow4658 at r4658; linear_combination r4658)
      (by unfold seg11ScpNode11Out; unfold Seg11.relationRow4660 at r4660; linear_combination r4660))

theorem seg11_scp_step13 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode13Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (14 : Seg11.F))
        (seg11ScpNode12Out rho) (rho 55) (rho 56) (rho 57)
        (rho 1909) (rho 1910) := by
  have hnode := seg11_scp_node13_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5011, r5012, r5013, r5014, _, r5016, r5017, _, r5019, r5020, _, r5022, _, r5024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (14 : Seg11.F))
      (seg11ScpNode12Out rho) (rho 55) (rho 56) (rho 57)
      (rho 1909) (rho 1910)
      (rho 6611) (rho 6612) (rho 6613) (rho 6614)
      (rho 6615) (rho 6616) (rho 6617) (rho 6618) (rho 6619) (rho 6620)
      (by unfold Seg11.relationRow5011 at r5011; linear_combination r5011)
      (by unfold Seg11.relationRow5012 at r5012; linear_combination r5012)
      (by unfold Seg11.relationRow5013 at r5013; linear_combination r5013)
      (by unfold Seg11.relationRow5014 at r5014; linear_combination r5014)
      (by unfold seg11ScpNode12Out; unfold Seg11.relationRow5016 at r5016; linear_combination r5016)
      (by unfold Seg11.relationRow5017 at r5017; linear_combination r5017)
      (by unfold seg11ScpNode12Out; unfold Seg11.relationRow5019 at r5019; linear_combination r5019)
      (by unfold Seg11.relationRow5020 at r5020; linear_combination r5020)
      (by unfold seg11ScpNode12Out; unfold Seg11.relationRow5022 at r5022; linear_combination r5022)
      (by unfold seg11ScpNode12Out; unfold Seg11.relationRow5024 at r5024; linear_combination r5024))

theorem seg11_scp_step14 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode14Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (15 : Seg11.F))
        (seg11ScpNode13Out rho) (rho 52) (rho 53) (rho 54)
        (rho 1911) (rho 1912) := by
  have hnode := seg11_scp_node14_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5375, r5376, r5377, r5378, _, r5380, r5381, _, r5383, r5384, _, r5386, _, r5388, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (15 : Seg11.F))
      (seg11ScpNode13Out rho) (rho 52) (rho 53) (rho 54)
      (rho 1911) (rho 1912)
      (rho 6971) (rho 6972) (rho 6973) (rho 6974)
      (rho 6975) (rho 6976) (rho 6977) (rho 6978) (rho 6979) (rho 6980)
      (by unfold Seg11.relationRow5375 at r5375; linear_combination r5375)
      (by unfold Seg11.relationRow5376 at r5376; linear_combination r5376)
      (by unfold Seg11.relationRow5377 at r5377; linear_combination r5377)
      (by unfold Seg11.relationRow5378 at r5378; linear_combination r5378)
      (by unfold seg11ScpNode13Out; unfold Seg11.relationRow5380 at r5380; linear_combination r5380)
      (by unfold Seg11.relationRow5381 at r5381; linear_combination r5381)
      (by unfold seg11ScpNode13Out; unfold Seg11.relationRow5383 at r5383; linear_combination r5383)
      (by unfold Seg11.relationRow5384 at r5384; linear_combination r5384)
      (by unfold seg11ScpNode13Out; unfold Seg11.relationRow5386 at r5386; linear_combination r5386)
      (by unfold seg11ScpNode13Out; unfold Seg11.relationRow5388 at r5388; linear_combination r5388))

theorem seg11_scp_step15 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode15Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (16 : Seg11.F))
        (seg11ScpNode14Out rho) (rho 49) (rho 50) (rho 51)
        (rho 1913) (rho 1914) := by
  have hnode := seg11_scp_node15_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5739, r5740, r5741, r5742, _, r5744, r5745, _, r5747, r5748, _, r5750, _, r5752, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (16 : Seg11.F))
      (seg11ScpNode14Out rho) (rho 49) (rho 50) (rho 51)
      (rho 1913) (rho 1914)
      (rho 7331) (rho 7332) (rho 7333) (rho 7334)
      (rho 7335) (rho 7336) (rho 7337) (rho 7338) (rho 7339) (rho 7340)
      (by unfold Seg11.relationRow5739 at r5739; linear_combination r5739)
      (by unfold Seg11.relationRow5740 at r5740; linear_combination r5740)
      (by unfold Seg11.relationRow5741 at r5741; linear_combination r5741)
      (by unfold Seg11.relationRow5742 at r5742; linear_combination r5742)
      (by unfold seg11ScpNode14Out; unfold Seg11.relationRow5744 at r5744; linear_combination r5744)
      (by unfold Seg11.relationRow5745 at r5745; linear_combination r5745)
      (by unfold seg11ScpNode14Out; unfold Seg11.relationRow5747 at r5747; linear_combination r5747)
      (by unfold Seg11.relationRow5748 at r5748; linear_combination r5748)
      (by unfold seg11ScpNode14Out; unfold Seg11.relationRow5750 at r5750; linear_combination r5750)
      (by unfold seg11ScpNode14Out; unfold Seg11.relationRow5752 at r5752; linear_combination r5752))

theorem seg11_scp_step16 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode16Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (17 : Seg11.F))
        (seg11ScpNode15Out rho) (rho 46) (rho 47) (rho 48)
        (rho 1915) (rho 1916) := by
  have hnode := seg11_scp_node16_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6103, r6104, r6105, r6106, _, r6108, r6109, _, r6111, r6112, _, r6114, _, r6116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (17 : Seg11.F))
      (seg11ScpNode15Out rho) (rho 46) (rho 47) (rho 48)
      (rho 1915) (rho 1916)
      (rho 7691) (rho 7692) (rho 7693) (rho 7694)
      (rho 7695) (rho 7696) (rho 7697) (rho 7698) (rho 7699) (rho 7700)
      (by unfold Seg11.relationRow6103 at r6103; linear_combination r6103)
      (by unfold Seg11.relationRow6104 at r6104; linear_combination r6104)
      (by unfold Seg11.relationRow6105 at r6105; linear_combination r6105)
      (by unfold Seg11.relationRow6106 at r6106; linear_combination r6106)
      (by unfold seg11ScpNode15Out; unfold Seg11.relationRow6108 at r6108; linear_combination r6108)
      (by unfold Seg11.relationRow6109 at r6109; linear_combination r6109)
      (by unfold seg11ScpNode15Out; unfold Seg11.relationRow6111 at r6111; linear_combination r6111)
      (by unfold Seg11.relationRow6112 at r6112; linear_combination r6112)
      (by unfold seg11ScpNode15Out; unfold Seg11.relationRow6114 at r6114; linear_combination r6114)
      (by unfold seg11ScpNode15Out; unfold Seg11.relationRow6116 at r6116; linear_combination r6116))

theorem seg11_scp_step17 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode17Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (18 : Seg11.F))
        (seg11ScpNode16Out rho) (rho 43) (rho 44) (rho 45)
        (rho 1917) (rho 1918) := by
  have hnode := seg11_scp_node17_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p80, p81, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart80 at p80
  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6467, r6468, r6469, r6470, _, r6472, r6473, _, r6475, r6476, _, r6478, _⟩
  unfold Seg11.relationPart81 at p81
  rcases p81 with ⟨r6480, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (18 : Seg11.F))
      (seg11ScpNode16Out rho) (rho 43) (rho 44) (rho 45)
      (rho 1917) (rho 1918)
      (rho 8051) (rho 8052) (rho 8053) (rho 8054)
      (rho 8055) (rho 8056) (rho 8057) (rho 8058) (rho 8059) (rho 8060)
      (by unfold Seg11.relationRow6467 at r6467; linear_combination r6467)
      (by unfold Seg11.relationRow6468 at r6468; linear_combination r6468)
      (by unfold Seg11.relationRow6469 at r6469; linear_combination r6469)
      (by unfold Seg11.relationRow6470 at r6470; linear_combination r6470)
      (by unfold seg11ScpNode16Out; unfold Seg11.relationRow6472 at r6472; linear_combination r6472)
      (by unfold Seg11.relationRow6473 at r6473; linear_combination r6473)
      (by unfold seg11ScpNode16Out; unfold Seg11.relationRow6475 at r6475; linear_combination r6475)
      (by unfold Seg11.relationRow6476 at r6476; linear_combination r6476)
      (by unfold seg11ScpNode16Out; unfold Seg11.relationRow6478 at r6478; linear_combination r6478)
      (by unfold seg11ScpNode16Out; unfold Seg11.relationRow6480 at r6480; linear_combination r6480))

theorem seg11_scp_step18 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode18Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (19 : Seg11.F))
        (seg11ScpNode17Out rho) (rho 40) (rho 41) (rho 42)
        (rho 1919) (rho 1920) := by
  have hnode := seg11_scp_node18_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p85, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart85 at p85
  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6831, r6832, r6833, r6834, _, r6836, r6837, _, r6839, r6840, _, r6842, _, r6844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (19 : Seg11.F))
      (seg11ScpNode17Out rho) (rho 40) (rho 41) (rho 42)
      (rho 1919) (rho 1920)
      (rho 8411) (rho 8412) (rho 8413) (rho 8414)
      (rho 8415) (rho 8416) (rho 8417) (rho 8418) (rho 8419) (rho 8420)
      (by unfold Seg11.relationRow6831 at r6831; linear_combination r6831)
      (by unfold Seg11.relationRow6832 at r6832; linear_combination r6832)
      (by unfold Seg11.relationRow6833 at r6833; linear_combination r6833)
      (by unfold Seg11.relationRow6834 at r6834; linear_combination r6834)
      (by unfold seg11ScpNode17Out; unfold Seg11.relationRow6836 at r6836; linear_combination r6836)
      (by unfold Seg11.relationRow6837 at r6837; linear_combination r6837)
      (by unfold seg11ScpNode17Out; unfold Seg11.relationRow6839 at r6839; linear_combination r6839)
      (by unfold Seg11.relationRow6840 at r6840; linear_combination r6840)
      (by unfold seg11ScpNode17Out; unfold Seg11.relationRow6842 at r6842; linear_combination r6842)
      (by unfold seg11ScpNode17Out; unfold Seg11.relationRow6844 at r6844; linear_combination r6844))

theorem seg11_scp_step19 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode19Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (20 : Seg11.F))
        (seg11ScpNode18Out rho) (rho 37) (rho 38) (rho 39)
        (rho 1921) (rho 1922) := by
  have hnode := seg11_scp_node19_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p89,
    p90, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart89 at p89
  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7195, r7196, r7197, r7198, _⟩
  unfold Seg11.relationPart90 at p90
  rcases p90 with ⟨r7200, r7201, _, r7203, r7204, _, r7206, _, r7208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (20 : Seg11.F))
      (seg11ScpNode18Out rho) (rho 37) (rho 38) (rho 39)
      (rho 1921) (rho 1922)
      (rho 8771) (rho 8772) (rho 8773) (rho 8774)
      (rho 8775) (rho 8776) (rho 8777) (rho 8778) (rho 8779) (rho 8780)
      (by unfold Seg11.relationRow7195 at r7195; linear_combination r7195)
      (by unfold Seg11.relationRow7196 at r7196; linear_combination r7196)
      (by unfold Seg11.relationRow7197 at r7197; linear_combination r7197)
      (by unfold Seg11.relationRow7198 at r7198; linear_combination r7198)
      (by unfold seg11ScpNode18Out; unfold Seg11.relationRow7200 at r7200; linear_combination r7200)
      (by unfold Seg11.relationRow7201 at r7201; linear_combination r7201)
      (by unfold seg11ScpNode18Out; unfold Seg11.relationRow7203 at r7203; linear_combination r7203)
      (by unfold Seg11.relationRow7204 at r7204; linear_combination r7204)
      (by unfold seg11ScpNode18Out; unfold Seg11.relationRow7206 at r7206; linear_combination r7206)
      (by unfold seg11ScpNode18Out; unfold Seg11.relationRow7208 at r7208; linear_combination r7208))

theorem seg11_scp_step20 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode20Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (21 : Seg11.F))
        (seg11ScpNode19Out rho) (rho 34) (rho 35) (rho 36)
        (rho 1923) (rho 1924) := by
  have hnode := seg11_scp_node20_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p94, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart94 at p94
  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7559, r7560, r7561, r7562, _, r7564, r7565, _, r7567, r7568, _, r7570, _, r7572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (21 : Seg11.F))
      (seg11ScpNode19Out rho) (rho 34) (rho 35) (rho 36)
      (rho 1923) (rho 1924)
      (rho 9131) (rho 9132) (rho 9133) (rho 9134)
      (rho 9135) (rho 9136) (rho 9137) (rho 9138) (rho 9139) (rho 9140)
      (by unfold Seg11.relationRow7559 at r7559; linear_combination r7559)
      (by unfold Seg11.relationRow7560 at r7560; linear_combination r7560)
      (by unfold Seg11.relationRow7561 at r7561; linear_combination r7561)
      (by unfold Seg11.relationRow7562 at r7562; linear_combination r7562)
      (by unfold seg11ScpNode19Out; unfold Seg11.relationRow7564 at r7564; linear_combination r7564)
      (by unfold Seg11.relationRow7565 at r7565; linear_combination r7565)
      (by unfold seg11ScpNode19Out; unfold Seg11.relationRow7567 at r7567; linear_combination r7567)
      (by unfold Seg11.relationRow7568 at r7568; linear_combination r7568)
      (by unfold seg11ScpNode19Out; unfold Seg11.relationRow7570 at r7570; linear_combination r7570)
      (by unfold seg11ScpNode19Out; unfold Seg11.relationRow7572 at r7572; linear_combination r7572))

theorem seg11_scp_step21 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode21Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (22 : Seg11.F))
        (seg11ScpNode20Out rho) (rho 31) (rho 32) (rho 33)
        (rho 1925) (rho 1926) := by
  have hnode := seg11_scp_node21_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p99,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart99 at p99
  rcases p99 with ⟨_, _, _, r7923, r7924, r7925, r7926, _, r7928, r7929, _, r7931, r7932, _, r7934, _, r7936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (22 : Seg11.F))
      (seg11ScpNode20Out rho) (rho 31) (rho 32) (rho 33)
      (rho 1925) (rho 1926)
      (rho 9491) (rho 9492) (rho 9493) (rho 9494)
      (rho 9495) (rho 9496) (rho 9497) (rho 9498) (rho 9499) (rho 9500)
      (by unfold Seg11.relationRow7923 at r7923; linear_combination r7923)
      (by unfold Seg11.relationRow7924 at r7924; linear_combination r7924)
      (by unfold Seg11.relationRow7925 at r7925; linear_combination r7925)
      (by unfold Seg11.relationRow7926 at r7926; linear_combination r7926)
      (by unfold seg11ScpNode20Out; unfold Seg11.relationRow7928 at r7928; linear_combination r7928)
      (by unfold Seg11.relationRow7929 at r7929; linear_combination r7929)
      (by unfold seg11ScpNode20Out; unfold Seg11.relationRow7931 at r7931; linear_combination r7931)
      (by unfold Seg11.relationRow7932 at r7932; linear_combination r7932)
      (by unfold seg11ScpNode20Out; unfold Seg11.relationRow7934 at r7934; linear_combination r7934)
      (by unfold seg11ScpNode20Out; unfold Seg11.relationRow7936 at r7936; linear_combination r7936))

theorem seg11_scp_step22 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode22Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (23 : Seg11.F))
        (seg11ScpNode21Out rho) (rho 28) (rho 29) (rho 30)
        (rho 1927) (rho 1928) := by
  have hnode := seg11_scp_node22_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p103, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart103 at p103
  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8287, r8288, r8289, r8290, _, r8292, r8293, _, r8295, r8296, _, r8298, _, r8300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (23 : Seg11.F))
      (seg11ScpNode21Out rho) (rho 28) (rho 29) (rho 30)
      (rho 1927) (rho 1928)
      (rho 9851) (rho 9852) (rho 9853) (rho 9854)
      (rho 9855) (rho 9856) (rho 9857) (rho 9858) (rho 9859) (rho 9860)
      (by unfold Seg11.relationRow8287 at r8287; linear_combination r8287)
      (by unfold Seg11.relationRow8288 at r8288; linear_combination r8288)
      (by unfold Seg11.relationRow8289 at r8289; linear_combination r8289)
      (by unfold Seg11.relationRow8290 at r8290; linear_combination r8290)
      (by unfold seg11ScpNode21Out; unfold Seg11.relationRow8292 at r8292; linear_combination r8292)
      (by unfold Seg11.relationRow8293 at r8293; linear_combination r8293)
      (by unfold seg11ScpNode21Out; unfold Seg11.relationRow8295 at r8295; linear_combination r8295)
      (by unfold Seg11.relationRow8296 at r8296; linear_combination r8296)
      (by unfold seg11ScpNode21Out; unfold Seg11.relationRow8298 at r8298; linear_combination r8298)
      (by unfold seg11ScpNode21Out; unfold Seg11.relationRow8300 at r8300; linear_combination r8300))

theorem seg11_scp_step23 (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode23Out rho =
      Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (24 : Seg11.F))
        (seg11ScpNode22Out rho) (rho 25) (rho 26) (rho 27)
        (rho 1929) (rho 1930) := by
  have hnode := seg11_scp_node23_eq rho h
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p108, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart108 at p108
  rcases p108 with ⟨_, _, _, _, _, _, _, _, _, _, _, r8651, r8652, r8653, r8654, _, r8656, r8657, _, r8659, r8660, _, r8662, _, r8664, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hnode.trans
    (Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recoverStep_eq Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (24 : Seg11.F))
      (seg11ScpNode22Out rho) (rho 25) (rho 26) (rho 27)
      (rho 1929) (rho 1930)
      (rho 10211) (rho 10212) (rho 10213) (rho 10214)
      (rho 10215) (rho 10216) (rho 10217) (rho 10218) (rho 10219) (rho 10220)
      (by unfold Seg11.relationRow8651 at r8651; linear_combination r8651)
      (by unfold Seg11.relationRow8652 at r8652; linear_combination r8652)
      (by unfold Seg11.relationRow8653 at r8653; linear_combination r8653)
      (by unfold Seg11.relationRow8654 at r8654; linear_combination r8654)
      (by unfold seg11ScpNode22Out; unfold Seg11.relationRow8656 at r8656; linear_combination r8656)
      (by unfold Seg11.relationRow8657 at r8657; linear_combination r8657)
      (by unfold seg11ScpNode22Out; unfold Seg11.relationRow8659 at r8659; linear_combination r8659)
      (by unfold Seg11.relationRow8660 at r8660; linear_combination r8660)
      (by unfold seg11ScpNode22Out; unfold Seg11.relationRow8662 at r8662; linear_combination r8662)
      (by unfold seg11ScpNode22Out; unfold Seg11.relationRow8664 at r8664; linear_combination r8664))

theorem seg11_scp_bits_bool (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    ∀ i : Nat, i < 48 →
      rho (1883 + i) = 0 ∨ rho (1883 + i) = 1 := by
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, p2, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart2 at p2
  rcases p2 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩
  unfold Seg11.relationPart3 at p3
  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, r252, r253, r254, r255, r256, r257, r258, r259, r260, r261, r262, r263, r264, r265, r266, r267, r268, r269, r270, r271, r272, r273, r274, r275, r276, r277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hb0 : rho 1883 = 0 ∨ rho 1883 = 1 :=
    (mul_eq_zero.mp (show rho 1883 * (1 - rho 1883) = 0 by
      unfold Seg11.relationRow230 at r230; linear_combination r230)).imp
      id (fun hx => by linear_combination -hx)
  have hb1 : rho 1884 = 0 ∨ rho 1884 = 1 :=
    (mul_eq_zero.mp (show rho 1884 * (1 - rho 1884) = 0 by
      unfold Seg11.relationRow231 at r231; linear_combination r231)).imp
      id (fun hx => by linear_combination -hx)
  have hb2 : rho 1885 = 0 ∨ rho 1885 = 1 :=
    (mul_eq_zero.mp (show rho 1885 * (1 - rho 1885) = 0 by
      unfold Seg11.relationRow232 at r232; linear_combination r232)).imp
      id (fun hx => by linear_combination -hx)
  have hb3 : rho 1886 = 0 ∨ rho 1886 = 1 :=
    (mul_eq_zero.mp (show rho 1886 * (1 - rho 1886) = 0 by
      unfold Seg11.relationRow233 at r233; linear_combination r233)).imp
      id (fun hx => by linear_combination -hx)
  have hb4 : rho 1887 = 0 ∨ rho 1887 = 1 :=
    (mul_eq_zero.mp (show rho 1887 * (1 - rho 1887) = 0 by
      unfold Seg11.relationRow234 at r234; linear_combination r234)).imp
      id (fun hx => by linear_combination -hx)
  have hb5 : rho 1888 = 0 ∨ rho 1888 = 1 :=
    (mul_eq_zero.mp (show rho 1888 * (1 - rho 1888) = 0 by
      unfold Seg11.relationRow235 at r235; linear_combination r235)).imp
      id (fun hx => by linear_combination -hx)
  have hb6 : rho 1889 = 0 ∨ rho 1889 = 1 :=
    (mul_eq_zero.mp (show rho 1889 * (1 - rho 1889) = 0 by
      unfold Seg11.relationRow236 at r236; linear_combination r236)).imp
      id (fun hx => by linear_combination -hx)
  have hb7 : rho 1890 = 0 ∨ rho 1890 = 1 :=
    (mul_eq_zero.mp (show rho 1890 * (1 - rho 1890) = 0 by
      unfold Seg11.relationRow237 at r237; linear_combination r237)).imp
      id (fun hx => by linear_combination -hx)
  have hb8 : rho 1891 = 0 ∨ rho 1891 = 1 :=
    (mul_eq_zero.mp (show rho 1891 * (1 - rho 1891) = 0 by
      unfold Seg11.relationRow238 at r238; linear_combination r238)).imp
      id (fun hx => by linear_combination -hx)
  have hb9 : rho 1892 = 0 ∨ rho 1892 = 1 :=
    (mul_eq_zero.mp (show rho 1892 * (1 - rho 1892) = 0 by
      unfold Seg11.relationRow239 at r239; linear_combination r239)).imp
      id (fun hx => by linear_combination -hx)
  have hb10 : rho 1893 = 0 ∨ rho 1893 = 1 :=
    (mul_eq_zero.mp (show rho 1893 * (1 - rho 1893) = 0 by
      unfold Seg11.relationRow240 at r240; linear_combination r240)).imp
      id (fun hx => by linear_combination -hx)
  have hb11 : rho 1894 = 0 ∨ rho 1894 = 1 :=
    (mul_eq_zero.mp (show rho 1894 * (1 - rho 1894) = 0 by
      unfold Seg11.relationRow241 at r241; linear_combination r241)).imp
      id (fun hx => by linear_combination -hx)
  have hb12 : rho 1895 = 0 ∨ rho 1895 = 1 :=
    (mul_eq_zero.mp (show rho 1895 * (1 - rho 1895) = 0 by
      unfold Seg11.relationRow242 at r242; linear_combination r242)).imp
      id (fun hx => by linear_combination -hx)
  have hb13 : rho 1896 = 0 ∨ rho 1896 = 1 :=
    (mul_eq_zero.mp (show rho 1896 * (1 - rho 1896) = 0 by
      unfold Seg11.relationRow243 at r243; linear_combination r243)).imp
      id (fun hx => by linear_combination -hx)
  have hb14 : rho 1897 = 0 ∨ rho 1897 = 1 :=
    (mul_eq_zero.mp (show rho 1897 * (1 - rho 1897) = 0 by
      unfold Seg11.relationRow244 at r244; linear_combination r244)).imp
      id (fun hx => by linear_combination -hx)
  have hb15 : rho 1898 = 0 ∨ rho 1898 = 1 :=
    (mul_eq_zero.mp (show rho 1898 * (1 - rho 1898) = 0 by
      unfold Seg11.relationRow245 at r245; linear_combination r245)).imp
      id (fun hx => by linear_combination -hx)
  have hb16 : rho 1899 = 0 ∨ rho 1899 = 1 :=
    (mul_eq_zero.mp (show rho 1899 * (1 - rho 1899) = 0 by
      unfold Seg11.relationRow246 at r246; linear_combination r246)).imp
      id (fun hx => by linear_combination -hx)
  have hb17 : rho 1900 = 0 ∨ rho 1900 = 1 :=
    (mul_eq_zero.mp (show rho 1900 * (1 - rho 1900) = 0 by
      unfold Seg11.relationRow247 at r247; linear_combination r247)).imp
      id (fun hx => by linear_combination -hx)
  have hb18 : rho 1901 = 0 ∨ rho 1901 = 1 :=
    (mul_eq_zero.mp (show rho 1901 * (1 - rho 1901) = 0 by
      unfold Seg11.relationRow248 at r248; linear_combination r248)).imp
      id (fun hx => by linear_combination -hx)
  have hb19 : rho 1902 = 0 ∨ rho 1902 = 1 :=
    (mul_eq_zero.mp (show rho 1902 * (1 - rho 1902) = 0 by
      unfold Seg11.relationRow249 at r249; linear_combination r249)).imp
      id (fun hx => by linear_combination -hx)
  have hb20 : rho 1903 = 0 ∨ rho 1903 = 1 :=
    (mul_eq_zero.mp (show rho 1903 * (1 - rho 1903) = 0 by
      unfold Seg11.relationRow250 at r250; linear_combination r250)).imp
      id (fun hx => by linear_combination -hx)
  have hb21 : rho 1904 = 0 ∨ rho 1904 = 1 :=
    (mul_eq_zero.mp (show rho 1904 * (1 - rho 1904) = 0 by
      unfold Seg11.relationRow251 at r251; linear_combination r251)).imp
      id (fun hx => by linear_combination -hx)
  have hb22 : rho 1905 = 0 ∨ rho 1905 = 1 :=
    (mul_eq_zero.mp (show rho 1905 * (1 - rho 1905) = 0 by
      unfold Seg11.relationRow252 at r252; linear_combination r252)).imp
      id (fun hx => by linear_combination -hx)
  have hb23 : rho 1906 = 0 ∨ rho 1906 = 1 :=
    (mul_eq_zero.mp (show rho 1906 * (1 - rho 1906) = 0 by
      unfold Seg11.relationRow253 at r253; linear_combination r253)).imp
      id (fun hx => by linear_combination -hx)
  have hb24 : rho 1907 = 0 ∨ rho 1907 = 1 :=
    (mul_eq_zero.mp (show rho 1907 * (1 - rho 1907) = 0 by
      unfold Seg11.relationRow254 at r254; linear_combination r254)).imp
      id (fun hx => by linear_combination -hx)
  have hb25 : rho 1908 = 0 ∨ rho 1908 = 1 :=
    (mul_eq_zero.mp (show rho 1908 * (1 - rho 1908) = 0 by
      unfold Seg11.relationRow255 at r255; linear_combination r255)).imp
      id (fun hx => by linear_combination -hx)
  have hb26 : rho 1909 = 0 ∨ rho 1909 = 1 :=
    (mul_eq_zero.mp (show rho 1909 * (1 - rho 1909) = 0 by
      unfold Seg11.relationRow256 at r256; linear_combination r256)).imp
      id (fun hx => by linear_combination -hx)
  have hb27 : rho 1910 = 0 ∨ rho 1910 = 1 :=
    (mul_eq_zero.mp (show rho 1910 * (1 - rho 1910) = 0 by
      unfold Seg11.relationRow257 at r257; linear_combination r257)).imp
      id (fun hx => by linear_combination -hx)
  have hb28 : rho 1911 = 0 ∨ rho 1911 = 1 :=
    (mul_eq_zero.mp (show rho 1911 * (1 - rho 1911) = 0 by
      unfold Seg11.relationRow258 at r258; linear_combination r258)).imp
      id (fun hx => by linear_combination -hx)
  have hb29 : rho 1912 = 0 ∨ rho 1912 = 1 :=
    (mul_eq_zero.mp (show rho 1912 * (1 - rho 1912) = 0 by
      unfold Seg11.relationRow259 at r259; linear_combination r259)).imp
      id (fun hx => by linear_combination -hx)
  have hb30 : rho 1913 = 0 ∨ rho 1913 = 1 :=
    (mul_eq_zero.mp (show rho 1913 * (1 - rho 1913) = 0 by
      unfold Seg11.relationRow260 at r260; linear_combination r260)).imp
      id (fun hx => by linear_combination -hx)
  have hb31 : rho 1914 = 0 ∨ rho 1914 = 1 :=
    (mul_eq_zero.mp (show rho 1914 * (1 - rho 1914) = 0 by
      unfold Seg11.relationRow261 at r261; linear_combination r261)).imp
      id (fun hx => by linear_combination -hx)
  have hb32 : rho 1915 = 0 ∨ rho 1915 = 1 :=
    (mul_eq_zero.mp (show rho 1915 * (1 - rho 1915) = 0 by
      unfold Seg11.relationRow262 at r262; linear_combination r262)).imp
      id (fun hx => by linear_combination -hx)
  have hb33 : rho 1916 = 0 ∨ rho 1916 = 1 :=
    (mul_eq_zero.mp (show rho 1916 * (1 - rho 1916) = 0 by
      unfold Seg11.relationRow263 at r263; linear_combination r263)).imp
      id (fun hx => by linear_combination -hx)
  have hb34 : rho 1917 = 0 ∨ rho 1917 = 1 :=
    (mul_eq_zero.mp (show rho 1917 * (1 - rho 1917) = 0 by
      unfold Seg11.relationRow264 at r264; linear_combination r264)).imp
      id (fun hx => by linear_combination -hx)
  have hb35 : rho 1918 = 0 ∨ rho 1918 = 1 :=
    (mul_eq_zero.mp (show rho 1918 * (1 - rho 1918) = 0 by
      unfold Seg11.relationRow265 at r265; linear_combination r265)).imp
      id (fun hx => by linear_combination -hx)
  have hb36 : rho 1919 = 0 ∨ rho 1919 = 1 :=
    (mul_eq_zero.mp (show rho 1919 * (1 - rho 1919) = 0 by
      unfold Seg11.relationRow266 at r266; linear_combination r266)).imp
      id (fun hx => by linear_combination -hx)
  have hb37 : rho 1920 = 0 ∨ rho 1920 = 1 :=
    (mul_eq_zero.mp (show rho 1920 * (1 - rho 1920) = 0 by
      unfold Seg11.relationRow267 at r267; linear_combination r267)).imp
      id (fun hx => by linear_combination -hx)
  have hb38 : rho 1921 = 0 ∨ rho 1921 = 1 :=
    (mul_eq_zero.mp (show rho 1921 * (1 - rho 1921) = 0 by
      unfold Seg11.relationRow268 at r268; linear_combination r268)).imp
      id (fun hx => by linear_combination -hx)
  have hb39 : rho 1922 = 0 ∨ rho 1922 = 1 :=
    (mul_eq_zero.mp (show rho 1922 * (1 - rho 1922) = 0 by
      unfold Seg11.relationRow269 at r269; linear_combination r269)).imp
      id (fun hx => by linear_combination -hx)
  have hb40 : rho 1923 = 0 ∨ rho 1923 = 1 :=
    (mul_eq_zero.mp (show rho 1923 * (1 - rho 1923) = 0 by
      unfold Seg11.relationRow270 at r270; linear_combination r270)).imp
      id (fun hx => by linear_combination -hx)
  have hb41 : rho 1924 = 0 ∨ rho 1924 = 1 :=
    (mul_eq_zero.mp (show rho 1924 * (1 - rho 1924) = 0 by
      unfold Seg11.relationRow271 at r271; linear_combination r271)).imp
      id (fun hx => by linear_combination -hx)
  have hb42 : rho 1925 = 0 ∨ rho 1925 = 1 :=
    (mul_eq_zero.mp (show rho 1925 * (1 - rho 1925) = 0 by
      unfold Seg11.relationRow272 at r272; linear_combination r272)).imp
      id (fun hx => by linear_combination -hx)
  have hb43 : rho 1926 = 0 ∨ rho 1926 = 1 :=
    (mul_eq_zero.mp (show rho 1926 * (1 - rho 1926) = 0 by
      unfold Seg11.relationRow273 at r273; linear_combination r273)).imp
      id (fun hx => by linear_combination -hx)
  have hb44 : rho 1927 = 0 ∨ rho 1927 = 1 :=
    (mul_eq_zero.mp (show rho 1927 * (1 - rho 1927) = 0 by
      unfold Seg11.relationRow274 at r274; linear_combination r274)).imp
      id (fun hx => by linear_combination -hx)
  have hb45 : rho 1928 = 0 ∨ rho 1928 = 1 :=
    (mul_eq_zero.mp (show rho 1928 * (1 - rho 1928) = 0 by
      unfold Seg11.relationRow275 at r275; linear_combination r275)).imp
      id (fun hx => by linear_combination -hx)
  have hb46 : rho 1929 = 0 ∨ rho 1929 = 1 :=
    (mul_eq_zero.mp (show rho 1929 * (1 - rho 1929) = 0 by
      unfold Seg11.relationRow276 at r276; linear_combination r276)).imp
      id (fun hx => by linear_combination -hx)
  have hb47 : rho 1930 = 0 ∨ rho 1930 = 1 :=
    (mul_eq_zero.mp (show rho 1930 * (1 - rho 1930) = 0 by
      unfold Seg11.relationRow277 at r277; linear_combination r277)).imp
      id (fun hx => by linear_combination -hx)
  intro i hi
  interval_cases i
  · simpa using hb0
  · simpa using hb1
  · simpa using hb2
  · simpa using hb3
  · simpa using hb4
  · simpa using hb5
  · simpa using hb6
  · simpa using hb7
  · simpa using hb8
  · simpa using hb9
  · simpa using hb10
  · simpa using hb11
  · simpa using hb12
  · simpa using hb13
  · simpa using hb14
  · simpa using hb15
  · simpa using hb16
  · simpa using hb17
  · simpa using hb18
  · simpa using hb19
  · simpa using hb20
  · simpa using hb21
  · simpa using hb22
  · simpa using hb23
  · simpa using hb24
  · simpa using hb25
  · simpa using hb26
  · simpa using hb27
  · simpa using hb28
  · simpa using hb29
  · simpa using hb30
  · simpa using hb31
  · simpa using hb32
  · simpa using hb33
  · simpa using hb34
  · simpa using hb35
  · simpa using hb36
  · simpa using hb37
  · simpa using hb38
  · simpa using hb39
  · simpa using hb40
  · simpa using hb41
  · simpa using hb42
  · simpa using hb43
  · simpa using hb44
  · simpa using hb45
  · simpa using hb46
  · simpa using hb47

theorem seg11_scp_recompose (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    rho 24 = (1 : Seg11.F) * rho (1883 + 0)
      + (2 : Seg11.F) * rho (1883 + 1)
      + (4 : Seg11.F) * rho (1883 + 2)
      + (8 : Seg11.F) * rho (1883 + 3)
      + (16 : Seg11.F) * rho (1883 + 4)
      + (32 : Seg11.F) * rho (1883 + 5)
      + (64 : Seg11.F) * rho (1883 + 6)
      + (128 : Seg11.F) * rho (1883 + 7)
      + (256 : Seg11.F) * rho (1883 + 8)
      + (512 : Seg11.F) * rho (1883 + 9)
      + (1024 : Seg11.F) * rho (1883 + 10)
      + (2048 : Seg11.F) * rho (1883 + 11)
      + (4096 : Seg11.F) * rho (1883 + 12)
      + (8192 : Seg11.F) * rho (1883 + 13)
      + (16384 : Seg11.F) * rho (1883 + 14)
      + (32768 : Seg11.F) * rho (1883 + 15)
      + (65536 : Seg11.F) * rho (1883 + 16)
      + (131072 : Seg11.F) * rho (1883 + 17)
      + (262144 : Seg11.F) * rho (1883 + 18)
      + (524288 : Seg11.F) * rho (1883 + 19)
      + (1048576 : Seg11.F) * rho (1883 + 20)
      + (2097152 : Seg11.F) * rho (1883 + 21)
      + (4194304 : Seg11.F) * rho (1883 + 22)
      + (8388608 : Seg11.F) * rho (1883 + 23)
      + (16777216 : Seg11.F) * rho (1883 + 24)
      + (33554432 : Seg11.F) * rho (1883 + 25)
      + (67108864 : Seg11.F) * rho (1883 + 26)
      + (134217728 : Seg11.F) * rho (1883 + 27)
      + (268435456 : Seg11.F) * rho (1883 + 28)
      + (536870912 : Seg11.F) * rho (1883 + 29)
      + (1073741824 : Seg11.F) * rho (1883 + 30)
      + (2147483648 : Seg11.F) * rho (1883 + 31)
      + (4294967296 : Seg11.F) * rho (1883 + 32)
      + (8589934592 : Seg11.F) * rho (1883 + 33)
      + (17179869184 : Seg11.F) * rho (1883 + 34)
      + (34359738368 : Seg11.F) * rho (1883 + 35)
      + (68719476736 : Seg11.F) * rho (1883 + 36)
      + (137438953472 : Seg11.F) * rho (1883 + 37)
      + (274877906944 : Seg11.F) * rho (1883 + 38)
      + (549755813888 : Seg11.F) * rho (1883 + 39)
      + (1099511627776 : Seg11.F) * rho (1883 + 40)
      + (2199023255552 : Seg11.F) * rho (1883 + 41)
      + (4398046511104 : Seg11.F) * rho (1883 + 42)
      + (8796093022208 : Seg11.F) * rho (1883 + 43)
      + (17592186044416 : Seg11.F) * rho (1883 + 44)
      + (35184372088832 : Seg11.F) * rho (1883 + 45)
      + (70368744177664 : Seg11.F) * rho (1883 + 46)
      + (140737488355328 : Seg11.F) * rho (1883 + 47) := by
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r278, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg11.relationRow278 at r278
  linear_combination -r278

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

