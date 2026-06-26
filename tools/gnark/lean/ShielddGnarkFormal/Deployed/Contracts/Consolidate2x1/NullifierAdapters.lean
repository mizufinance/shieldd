import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg27
import ShielddGnarkFormal.Deployed.Nullifier.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg9_part0_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart0 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 23) (rho 24) (rho 1347)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0 (rho 8) (rho 23) (rho 24) k := by
  unfold Seg9.relationPart0 Seg9.relationRow0 Seg9.relationRow1 Seg9.relationRow2 Seg9.relationRow3 Seg9.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0
  exact ⟨(rho 1343), (rho 1344), (rho 1345), (rho 1346), (rho 1347), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part1_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart1 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 24) (rho 1347) (rho 1352)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1 (rho 23) (rho 24) (rho 1347) k := by
  unfold Seg9.relationPart1 Seg9.relationRow5 Seg9.relationRow6 Seg9.relationRow7 Seg9.relationRow8 Seg9.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1
  exact ⟨(rho 1348), (rho 1349), (rho 1350), (rho 1351), (rho 1352), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part2_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart2 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1347) (rho 1352) (rho 1357)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2 (rho 24) (rho 1347) (rho 1352) k := by
  unfold Seg9.relationPart2 Seg9.relationRow10 Seg9.relationRow11 Seg9.relationRow12 Seg9.relationRow13 Seg9.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2
  exact ⟨(rho 1353), (rho 1354), (rho 1355), (rho 1356), (rho 1357), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part3_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart3 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1347) (rho 1352) (rho 1357) (rho 1362)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3 (rho 1347) (rho 1352) (rho 1357) k := by
  unfold Seg9.relationPart3 Seg9.relationRow15 Seg9.relationRow16 Seg9.relationRow17 Seg9.relationRow18 Seg9.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3
  exact ⟨(rho 1358), (rho 1359), (rho 1360), (rho 1361), (rho 1362), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part4_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart4 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1347) (rho 1352) (rho 1357) (rho 1362) (rho 1367)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4 (rho 1347) (rho 1352) (rho 1357) (rho 1362) k := by
  unfold Seg9.relationPart4 Seg9.relationRow20 Seg9.relationRow21 Seg9.relationRow22 Seg9.relationRow23 Seg9.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4
  exact ⟨(rho 1363), (rho 1364), (rho 1365), (rho 1366), (rho 1367), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part5_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart5 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1347) (rho 1352) (rho 1357) (rho 1362) (rho 1367) (rho 1372)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5 (rho 1347) (rho 1352) (rho 1357) (rho 1362) (rho 1367) k := by
  unfold Seg9.relationPart5 Seg9.relationRow25 Seg9.relationRow26 Seg9.relationRow27 Seg9.relationRow28 Seg9.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5
  exact ⟨(rho 1368), (rho 1369), (rho 1370), (rho 1371), (rho 1372), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part6_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart6 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1362) (rho 1367) (rho 1372) (rho 1377)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6 (rho 1347) (rho 1352) (rho 1357) (rho 1362) (rho 1367) (rho 1372) k := by
  unfold Seg9.relationPart6 Seg9.relationRow30 Seg9.relationRow31 Seg9.relationRow32 Seg9.relationRow33 Seg9.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6
  exact ⟨(rho 1373), (rho 1374), (rho 1375), (rho 1376), (rho 1377), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part7_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart7 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1362) (rho 1367) (rho 1372) (rho 1377) (rho 1382)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7 (rho 1362) (rho 1367) (rho 1372) (rho 1377) k := by
  unfold Seg9.relationPart7 Seg9.relationRow35 Seg9.relationRow36 Seg9.relationRow37 Seg9.relationRow38 Seg9.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7
  exact ⟨(rho 1378), (rho 1379), (rho 1380), (rho 1381), (rho 1382), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part8_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart8 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1362) (rho 1367) (rho 1372) (rho 1377) (rho 1382) (rho 1387)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8 (rho 1362) (rho 1367) (rho 1372) (rho 1377) (rho 1382) k := by
  unfold Seg9.relationPart8 Seg9.relationRow40 Seg9.relationRow41 Seg9.relationRow42 Seg9.relationRow43 Seg9.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8
  exact ⟨(rho 1383), (rho 1384), (rho 1385), (rho 1386), (rho 1387), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part9_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart9 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1362) (rho 1367) (rho 1372) (rho 1377) (rho 1382) (rho 1387) (rho 1392)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9 (rho 1362) (rho 1367) (rho 1372) (rho 1377) (rho 1382) (rho 1387) k := by
  unfold Seg9.relationPart9 Seg9.relationRow45 Seg9.relationRow46 Seg9.relationRow47 Seg9.relationRow48 Seg9.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9
  exact ⟨(rho 1388), (rho 1389), (rho 1390), (rho 1391), (rho 1392), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part10_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart10 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1382) (rho 1387) (rho 1392) (rho 1397)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10 (rho 1362) (rho 1367) (rho 1372) (rho 1377) (rho 1382) (rho 1387) (rho 1392) k := by
  unfold Seg9.relationPart10 Seg9.relationRow50 Seg9.relationRow51 Seg9.relationRow52 Seg9.relationRow53 Seg9.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10
  exact ⟨(rho 1393), (rho 1394), (rho 1395), (rho 1396), (rho 1397), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part11_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart11 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1382) (rho 1387) (rho 1392) (rho 1397) (rho 1402)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11 (rho 1382) (rho 1387) (rho 1392) (rho 1397) k := by
  unfold Seg9.relationPart11 Seg9.relationRow55 Seg9.relationRow56 Seg9.relationRow57 Seg9.relationRow58 Seg9.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11
  exact ⟨(rho 1398), (rho 1399), (rho 1400), (rho 1401), (rho 1402), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part12_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart12 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1382) (rho 1387) (rho 1392) (rho 1397) (rho 1402) (rho 1407)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12 (rho 1382) (rho 1387) (rho 1392) (rho 1397) (rho 1402) k := by
  unfold Seg9.relationPart12 Seg9.relationRow60 Seg9.relationRow61 Seg9.relationRow62 Seg9.relationRow63 Seg9.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12
  exact ⟨(rho 1403), (rho 1404), (rho 1405), (rho 1406), (rho 1407), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part13_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart13 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1382) (rho 1387) (rho 1392) (rho 1397) (rho 1402) (rho 1407) (rho 1412)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13 (rho 1382) (rho 1387) (rho 1392) (rho 1397) (rho 1402) (rho 1407) k := by
  unfold Seg9.relationPart13 Seg9.relationRow65 Seg9.relationRow66 Seg9.relationRow67 Seg9.relationRow68 Seg9.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13
  exact ⟨(rho 1408), (rho 1409), (rho 1410), (rho 1411), (rho 1412), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part14_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart14 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14 (rho 1382) (rho 1387) (rho 1392) (rho 1397) (rho 1402) (rho 1407) (rho 1412) k := by
  unfold Seg9.relationPart14 Seg9.relationRow70 Seg9.relationRow71 Seg9.relationRow72 Seg9.relationRow73 Seg9.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14
  exact ⟨(rho 1413), (rho 1414), (rho 1415), (rho 1416), (rho 1417), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part15_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart15 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15 (rho 1402) (rho 1407) (rho 1412) (rho 1417) k := by
  unfold Seg9.relationPart15 Seg9.relationRow75 Seg9.relationRow76 Seg9.relationRow77 Seg9.relationRow78 Seg9.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15
  exact ⟨(rho 1418), (rho 1419), (rho 1420), (rho 1421), (rho 1422), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part16_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart16 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) k := by
  unfold Seg9.relationPart16 Seg9.relationRow80 Seg9.relationRow81 Seg9.relationRow82 Seg9.relationRow83 Seg9.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16
  exact ⟨(rho 1423), (rho 1424), (rho 1425), (rho 1426), (rho 1427), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part17_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart17 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) k := by
  unfold Seg9.relationPart17 Seg9.relationRow85 Seg9.relationRow86 Seg9.relationRow87 Seg9.relationRow88 Seg9.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17
  exact ⟨(rho 1428), (rho 1429), (rho 1430), (rho 1431), (rho 1432), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part18_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart18 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) k := by
  unfold Seg9.relationPart18 Seg9.relationRow90 Seg9.relationRow91 Seg9.relationRow92 Seg9.relationRow93 Seg9.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18
  exact ⟨(rho 1433), (rho 1434), (rho 1435), (rho 1436), (rho 1437), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part19_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart19 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) k := by
  unfold Seg9.relationPart19 Seg9.relationRow95 Seg9.relationRow96 Seg9.relationRow97 Seg9.relationRow98 Seg9.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19
  exact ⟨(rho 1438), (rho 1439), (rho 1440), (rho 1441), (rho 1442), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part20_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart20 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) k := by
  unfold Seg9.relationPart20 Seg9.relationRow100 Seg9.relationRow101 Seg9.relationRow102 Seg9.relationRow103 Seg9.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20
  exact ⟨(rho 1443), (rho 1444), (rho 1445), (rho 1446), (rho 1447), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part21_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart21 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) k := by
  unfold Seg9.relationPart21 Seg9.relationRow105 Seg9.relationRow106 Seg9.relationRow107 Seg9.relationRow108 Seg9.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21
  exact ⟨(rho 1448), (rho 1449), (rho 1450), (rho 1451), (rho 1452), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part22_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart22 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) k := by
  unfold Seg9.relationPart22 Seg9.relationRow110 Seg9.relationRow111 Seg9.relationRow112 Seg9.relationRow113 Seg9.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22
  exact ⟨(rho 1453), (rho 1454), (rho 1455), (rho 1456), (rho 1457), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part23_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart23 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) k := by
  unfold Seg9.relationPart23 Seg9.relationRow115 Seg9.relationRow116 Seg9.relationRow117 Seg9.relationRow118 Seg9.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23
  exact ⟨(rho 1458), (rho 1459), (rho 1460), (rho 1461), (rho 1462), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part24_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart24 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) k := by
  unfold Seg9.relationPart24 Seg9.relationRow120 Seg9.relationRow121 Seg9.relationRow122 Seg9.relationRow123 Seg9.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24
  exact ⟨(rho 1463), (rho 1464), (rho 1465), (rho 1466), (rho 1467), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part25_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart25 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) k := by
  unfold Seg9.relationPart25 Seg9.relationRow125 Seg9.relationRow126 Seg9.relationRow127 Seg9.relationRow128 Seg9.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25
  exact ⟨(rho 1468), (rho 1469), (rho 1470), (rho 1471), (rho 1472), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part26_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart26 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) k := by
  unfold Seg9.relationPart26 Seg9.relationRow130 Seg9.relationRow131 Seg9.relationRow132 Seg9.relationRow133 Seg9.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26
  exact ⟨(rho 1473), (rho 1474), (rho 1475), (rho 1476), (rho 1477), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part27_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart27 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) k := by
  unfold Seg9.relationPart27 Seg9.relationRow135 Seg9.relationRow136 Seg9.relationRow137 Seg9.relationRow138 Seg9.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27
  exact ⟨(rho 1478), (rho 1479), (rho 1480), (rho 1481), (rho 1482), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part28_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart28 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) k := by
  unfold Seg9.relationPart28 Seg9.relationRow140 Seg9.relationRow141 Seg9.relationRow142 Seg9.relationRow143 Seg9.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28
  exact ⟨(rho 1483), (rho 1484), (rho 1485), (rho 1486), (rho 1487), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part29_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart29 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) k := by
  unfold Seg9.relationPart29 Seg9.relationRow145 Seg9.relationRow146 Seg9.relationRow147 Seg9.relationRow148 Seg9.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29
  exact ⟨(rho 1488), (rho 1489), (rho 1490), (rho 1491), (rho 1492), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part30_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart30 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) k := by
  unfold Seg9.relationPart30 Seg9.relationRow150 Seg9.relationRow151 Seg9.relationRow152 Seg9.relationRow153 Seg9.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30
  exact ⟨(rho 1493), (rho 1494), (rho 1495), (rho 1496), (rho 1497), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part31_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart31 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) k := by
  unfold Seg9.relationPart31 Seg9.relationRow155 Seg9.relationRow156 Seg9.relationRow157 Seg9.relationRow158 Seg9.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31
  exact ⟨(rho 1498), (rho 1499), (rho 1500), (rho 1501), (rho 1502), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part32_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart32 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) k := by
  unfold Seg9.relationPart32 Seg9.relationRow160 Seg9.relationRow161 Seg9.relationRow162 Seg9.relationRow163 Seg9.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32
  exact ⟨(rho 1503), (rho 1504), (rho 1505), (rho 1506), (rho 1507), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part33_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart33 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) k := by
  unfold Seg9.relationPart33 Seg9.relationRow165 Seg9.relationRow166 Seg9.relationRow167 Seg9.relationRow168 Seg9.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33
  exact ⟨(rho 1508), (rho 1509), (rho 1510), (rho 1511), (rho 1512), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part34_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart34 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) k := by
  unfold Seg9.relationPart34 Seg9.relationRow170 Seg9.relationRow171 Seg9.relationRow172 Seg9.relationRow173 Seg9.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34
  exact ⟨(rho 1513), (rho 1514), (rho 1515), (rho 1516), (rho 1517), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part35_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart35 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) k := by
  unfold Seg9.relationPart35 Seg9.relationRow175 Seg9.relationRow176 Seg9.relationRow177 Seg9.relationRow178 Seg9.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35
  exact ⟨(rho 1518), (rho 1519), (rho 1520), (rho 1521), (rho 1522), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part36_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart36 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) k := by
  unfold Seg9.relationPart36 Seg9.relationRow180 Seg9.relationRow181 Seg9.relationRow182 Seg9.relationRow183 Seg9.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36
  exact ⟨(rho 1523), (rho 1524), (rho 1525), (rho 1526), (rho 1527), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part37_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart37 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) k := by
  unfold Seg9.relationPart37 Seg9.relationRow185 Seg9.relationRow186 Seg9.relationRow187 Seg9.relationRow188 Seg9.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37
  exact ⟨(rho 1528), (rho 1529), (rho 1530), (rho 1531), (rho 1532), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part38_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart38 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) k := by
  unfold Seg9.relationPart38 Seg9.relationRow190 Seg9.relationRow191 Seg9.relationRow192 Seg9.relationRow193 Seg9.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38
  exact ⟨(rho 1533), (rho 1534), (rho 1535), (rho 1536), (rho 1537), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part39_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart39 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) k := by
  unfold Seg9.relationPart39 Seg9.relationRow195 Seg9.relationRow196 Seg9.relationRow197 Seg9.relationRow198 Seg9.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39
  exact ⟨(rho 1538), (rho 1539), (rho 1540), (rho 1541), (rho 1542), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part40_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart40 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) k := by
  unfold Seg9.relationPart40 Seg9.relationRow200 Seg9.relationRow201 Seg9.relationRow202 Seg9.relationRow203 Seg9.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40
  exact ⟨(rho 1543), (rho 1544), (rho 1545), (rho 1546), (rho 1547), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part41_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart41 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) k := by
  unfold Seg9.relationPart41 Seg9.relationRow205 Seg9.relationRow206 Seg9.relationRow207 Seg9.relationRow208 Seg9.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41
  exact ⟨(rho 1548), (rho 1549), (rho 1550), (rho 1551), (rho 1552), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part42_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart42 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) k := by
  unfold Seg9.relationPart42 Seg9.relationRow210 Seg9.relationRow211 Seg9.relationRow212 Seg9.relationRow213 Seg9.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42
  exact ⟨(rho 1553), (rho 1554), (rho 1555), (rho 1556), (rho 1557), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part43_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart43 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) k := by
  unfold Seg9.relationPart43 Seg9.relationRow215 Seg9.relationRow216 Seg9.relationRow217 Seg9.relationRow218 Seg9.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43
  exact ⟨(rho 1558), (rho 1559), (rho 1560), (rho 1561), (rho 1562), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part44_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart44 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) k := by
  unfold Seg9.relationPart44 Seg9.relationRow220 Seg9.relationRow221 Seg9.relationRow222 Seg9.relationRow223 Seg9.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44
  exact ⟨(rho 1563), (rho 1564), (rho 1565), (rho 1566), (rho 1567), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part45_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart45 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) (rho 1572)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) k := by
  unfold Seg9.relationPart45 Seg9.relationRow225 Seg9.relationRow226 Seg9.relationRow227 Seg9.relationRow228 Seg9.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45
  exact ⟨(rho 1568), (rho 1569), (rho 1570), (rho 1571), (rho 1572), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part46_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart46 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) (rho 1572) (rho 1577)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) (rho 1572) k := by
  unfold Seg9.relationPart46 Seg9.relationRow230 Seg9.relationRow231 Seg9.relationRow232 Seg9.relationRow233 Seg9.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46
  exact ⟨(rho 1573), (rho 1574), (rho 1575), (rho 1576), (rho 1577), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part47_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart47 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) (rho 1572) (rho 1577) (rho 1582)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) (rho 1572) (rho 1577) k := by
  unfold Seg9.relationPart47 Seg9.relationRow235 Seg9.relationRow236 Seg9.relationRow237 Seg9.relationRow238 Seg9.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47
  exact ⟨(rho 1578), (rho 1579), (rho 1580), (rho 1581), (rho 1582), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part48_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart48 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) (rho 1572) (rho 1577) (rho 1582) (rho 1587)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) (rho 1572) (rho 1577) (rho 1582) k := by
  unfold Seg9.relationPart48 Seg9.relationRow240 Seg9.relationRow241 Seg9.relationRow242 Seg9.relationRow243 Seg9.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48
  exact ⟨(rho 1583), (rho 1584), (rho 1585), (rho 1586), (rho 1587), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part49_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart49 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1577) (rho 1582) (rho 1587) (rho 1592)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49 (rho 1402) (rho 1407) (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532) (rho 1537) (rho 1542) (rho 1547) (rho 1552) (rho 1557) (rho 1562) (rho 1567) (rho 1572) (rho 1577) (rho 1582) (rho 1587) k := by
  unfold Seg9.relationPart49 Seg9.relationRow245 Seg9.relationRow246 Seg9.relationRow247 Seg9.relationRow248 Seg9.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49
  exact ⟨(rho 1588), (rho 1589), (rho 1590), (rho 1591), (rho 1592), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part50_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart50 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1577) (rho 1582) (rho 1587) (rho 1592) (rho 1597)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50 (rho 1577) (rho 1582) (rho 1587) (rho 1592) k := by
  unfold Seg9.relationPart50 Seg9.relationRow250 Seg9.relationRow251 Seg9.relationRow252 Seg9.relationRow253 Seg9.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50
  exact ⟨(rho 1593), (rho 1594), (rho 1595), (rho 1596), (rho 1597), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part51_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart51 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1577) (rho 1582) (rho 1587) (rho 1592) (rho 1597) (rho 1602)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51 (rho 1577) (rho 1582) (rho 1587) (rho 1592) (rho 1597) k := by
  unfold Seg9.relationPart51 Seg9.relationRow255 Seg9.relationRow256 Seg9.relationRow257 Seg9.relationRow258 Seg9.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51
  exact ⟨(rho 1598), (rho 1599), (rho 1600), (rho 1601), (rho 1602), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part52_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart52 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1577) (rho 1582) (rho 1587) (rho 1592) (rho 1597) (rho 1602) (rho 1607)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52 (rho 1577) (rho 1582) (rho 1587) (rho 1592) (rho 1597) (rho 1602) k := by
  unfold Seg9.relationPart52 Seg9.relationRow260 Seg9.relationRow261 Seg9.relationRow262 Seg9.relationRow263 Seg9.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52
  exact ⟨(rho 1603), (rho 1604), (rho 1605), (rho 1606), (rho 1607), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part53_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart53 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1597) (rho 1602) (rho 1607) (rho 1612)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53 (rho 1577) (rho 1582) (rho 1587) (rho 1592) (rho 1597) (rho 1602) (rho 1607) k := by
  unfold Seg9.relationPart53 Seg9.relationRow265 Seg9.relationRow266 Seg9.relationRow267 Seg9.relationRow268 Seg9.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53
  exact ⟨(rho 1608), (rho 1609), (rho 1610), (rho 1611), (rho 1612), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part54_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart54 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1597) (rho 1602) (rho 1607) (rho 1612) (rho 1617)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54 (rho 1597) (rho 1602) (rho 1607) (rho 1612) k := by
  unfold Seg9.relationPart54 Seg9.relationRow270 Seg9.relationRow271 Seg9.relationRow272 Seg9.relationRow273 Seg9.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54
  exact ⟨(rho 1613), (rho 1614), (rho 1615), (rho 1616), (rho 1617), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part55_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart55 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1597) (rho 1602) (rho 1607) (rho 1612) (rho 1617) (rho 1622)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55 (rho 1597) (rho 1602) (rho 1607) (rho 1612) (rho 1617) k := by
  unfold Seg9.relationPart55 Seg9.relationRow275 Seg9.relationRow276 Seg9.relationRow277 Seg9.relationRow278 Seg9.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55
  exact ⟨(rho 1618), (rho 1619), (rho 1620), (rho 1621), (rho 1622), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part56_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart56 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1597) (rho 1602) (rho 1607) (rho 1612) (rho 1617) (rho 1622) (rho 1627)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56 (rho 1597) (rho 1602) (rho 1607) (rho 1612) (rho 1617) (rho 1622) k := by
  unfold Seg9.relationPart56 Seg9.relationRow280 Seg9.relationRow281 Seg9.relationRow282 Seg9.relationRow283 Seg9.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56
  exact ⟨(rho 1623), (rho 1624), (rho 1625), (rho 1626), (rho 1627), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part57_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart57 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1617) (rho 1622) (rho 1627) (rho 1632)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57 (rho 1597) (rho 1602) (rho 1607) (rho 1612) (rho 1617) (rho 1622) (rho 1627) k := by
  unfold Seg9.relationPart57 Seg9.relationRow285 Seg9.relationRow286 Seg9.relationRow287 Seg9.relationRow288 Seg9.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57
  exact ⟨(rho 1628), (rho 1629), (rho 1630), (rho 1631), (rho 1632), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part58_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart58 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1617) (rho 1622) (rho 1627) (rho 1632) (rho 1637)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58 (rho 1617) (rho 1622) (rho 1627) (rho 1632) k := by
  unfold Seg9.relationPart58 Seg9.relationRow290 Seg9.relationRow291 Seg9.relationRow292 Seg9.relationRow293 Seg9.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58
  exact ⟨(rho 1633), (rho 1634), (rho 1635), (rho 1636), (rho 1637), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part59_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart59 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1617) (rho 1622) (rho 1627) (rho 1632) (rho 1637) (rho 1642)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59 (rho 1617) (rho 1622) (rho 1627) (rho 1632) (rho 1637) k := by
  unfold Seg9.relationPart59 Seg9.relationRow295 Seg9.relationRow296 Seg9.relationRow297 Seg9.relationRow298 Seg9.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59
  exact ⟨(rho 1638), (rho 1639), (rho 1640), (rho 1641), (rho 1642), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part60_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart60 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1617) (rho 1622) (rho 1627) (rho 1632) (rho 1637) (rho 1642) (rho 1647)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60 (rho 1617) (rho 1622) (rho 1627) (rho 1632) (rho 1637) (rho 1642) k := by
  unfold Seg9.relationPart60 Seg9.relationRow300 Seg9.relationRow301 Seg9.relationRow302 Seg9.relationRow303 Seg9.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60
  exact ⟨(rho 1643), (rho 1644), (rho 1645), (rho 1646), (rho 1647), h0, h1, h2, h3, h4, hk⟩

theorem seg9_part61_to_extracted (rho : Nat → Seg9.F)
    (h : Seg9.relationPart61 rho)
    {k : Seg9.F → Seg9.F → Seg9.F → Seg9.F → Prop} (hk : k (rho 1637) (rho 1642) (rho 1647) (rho 1652)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61 (rho 1617) (rho 1622) (rho 1627) (rho 1632) (rho 1637) (rho 1642) (rho 1647) k := by
  unfold Seg9.relationPart61 Seg9.relationRow305 Seg9.relationRow306 Seg9.relationRow307 Seg9.relationRow308 Seg9.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61
  exact ⟨(rho 1648), (rho 1649), (rho 1650), (rho 1651), (rho 1652), h0, h1, h2, h3, h4, hk⟩

theorem seg9_relation_to_nullifier (rho : Nat → Seg9.F)
    (h : Seg9.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
      (rho 8) (rho 23) (rho 24)
      (fun w1637 w1642 w1647 w1652 =>
        w1637 = rho 1637 ∧ w1642 = rho 1642 ∧
        w1647 = rho 1647 ∧ w1652 = rho 1652) := by
  unfold Seg9.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
  apply seg9_part0_to_extracted rho p0
  apply seg9_part1_to_extracted rho p1
  apply seg9_part2_to_extracted rho p2
  apply seg9_part3_to_extracted rho p3
  apply seg9_part4_to_extracted rho p4
  apply seg9_part5_to_extracted rho p5
  apply seg9_part6_to_extracted rho p6
  apply seg9_part7_to_extracted rho p7
  apply seg9_part8_to_extracted rho p8
  apply seg9_part9_to_extracted rho p9
  apply seg9_part10_to_extracted rho p10
  apply seg9_part11_to_extracted rho p11
  apply seg9_part12_to_extracted rho p12
  apply seg9_part13_to_extracted rho p13
  apply seg9_part14_to_extracted rho p14
  apply seg9_part15_to_extracted rho p15
  apply seg9_part16_to_extracted rho p16
  apply seg9_part17_to_extracted rho p17
  apply seg9_part18_to_extracted rho p18
  apply seg9_part19_to_extracted rho p19
  apply seg9_part20_to_extracted rho p20
  apply seg9_part21_to_extracted rho p21
  apply seg9_part22_to_extracted rho p22
  apply seg9_part23_to_extracted rho p23
  apply seg9_part24_to_extracted rho p24
  apply seg9_part25_to_extracted rho p25
  apply seg9_part26_to_extracted rho p26
  apply seg9_part27_to_extracted rho p27
  apply seg9_part28_to_extracted rho p28
  apply seg9_part29_to_extracted rho p29
  apply seg9_part30_to_extracted rho p30
  apply seg9_part31_to_extracted rho p31
  apply seg9_part32_to_extracted rho p32
  apply seg9_part33_to_extracted rho p33
  apply seg9_part34_to_extracted rho p34
  apply seg9_part35_to_extracted rho p35
  apply seg9_part36_to_extracted rho p36
  apply seg9_part37_to_extracted rho p37
  apply seg9_part38_to_extracted rho p38
  apply seg9_part39_to_extracted rho p39
  apply seg9_part40_to_extracted rho p40
  apply seg9_part41_to_extracted rho p41
  apply seg9_part42_to_extracted rho p42
  apply seg9_part43_to_extracted rho p43
  apply seg9_part44_to_extracted rho p44
  apply seg9_part45_to_extracted rho p45
  apply seg9_part46_to_extracted rho p46
  apply seg9_part47_to_extracted rho p47
  apply seg9_part48_to_extracted rho p48
  apply seg9_part49_to_extracted rho p49
  apply seg9_part50_to_extracted rho p50
  apply seg9_part51_to_extracted rho p51
  apply seg9_part52_to_extracted rho p52
  apply seg9_part53_to_extracted rho p53
  apply seg9_part54_to_extracted rho p54
  apply seg9_part55_to_extracted rho p55
  apply seg9_part56_to_extracted rho p56
  apply seg9_part57_to_extracted rho p57
  apply seg9_part58_to_extracted rho p58
  apply seg9_part59_to_extracted rho p59
  apply seg9_part60_to_extracted rho p60
  apply seg9_part61_to_extracted rho p61
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem seg9_sound (rho : Nat → Seg9.F) (h : Seg9.relation rho) : Seg9.spec rho := by
  have hExtracted := seg9_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      (rho 8) (rho 23) (rho 24) _ hExtracted with
    ⟨w1637, w1642, w1647, w1652, hk, hperm⟩
  rcases hk with ⟨hw1637, hw1642, hw1647, hw1652⟩
  simpa [Seg9.spec, Specs.deployedSpec9, hw1637, hw1642, hw1647, hw1652] using hperm

theorem seg27_part0_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart0 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 113) (rho 114) (rho 20047)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0 (rho 8) (rho 113) (rho 114) k := by
  unfold Seg27.relationPart0 Seg27.relationRow0 Seg27.relationRow1 Seg27.relationRow2 Seg27.relationRow3 Seg27.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0
  exact ⟨(rho 20043), (rho 20044), (rho 20045), (rho 20046), (rho 20047), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part1_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart1 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 114) (rho 20047) (rho 20052)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1 (rho 113) (rho 114) (rho 20047) k := by
  unfold Seg27.relationPart1 Seg27.relationRow5 Seg27.relationRow6 Seg27.relationRow7 Seg27.relationRow8 Seg27.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1
  exact ⟨(rho 20048), (rho 20049), (rho 20050), (rho 20051), (rho 20052), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part2_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart2 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20047) (rho 20052) (rho 20057)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2 (rho 114) (rho 20047) (rho 20052) k := by
  unfold Seg27.relationPart2 Seg27.relationRow10 Seg27.relationRow11 Seg27.relationRow12 Seg27.relationRow13 Seg27.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2
  exact ⟨(rho 20053), (rho 20054), (rho 20055), (rho 20056), (rho 20057), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part3_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart3 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20047) (rho 20052) (rho 20057) (rho 20062)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3 (rho 20047) (rho 20052) (rho 20057) k := by
  unfold Seg27.relationPart3 Seg27.relationRow15 Seg27.relationRow16 Seg27.relationRow17 Seg27.relationRow18 Seg27.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3
  exact ⟨(rho 20058), (rho 20059), (rho 20060), (rho 20061), (rho 20062), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part4_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart4 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20047) (rho 20052) (rho 20057) (rho 20062) (rho 20067)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4 (rho 20047) (rho 20052) (rho 20057) (rho 20062) k := by
  unfold Seg27.relationPart4 Seg27.relationRow20 Seg27.relationRow21 Seg27.relationRow22 Seg27.relationRow23 Seg27.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4
  exact ⟨(rho 20063), (rho 20064), (rho 20065), (rho 20066), (rho 20067), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part5_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart5 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20047) (rho 20052) (rho 20057) (rho 20062) (rho 20067) (rho 20072)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5 (rho 20047) (rho 20052) (rho 20057) (rho 20062) (rho 20067) k := by
  unfold Seg27.relationPart5 Seg27.relationRow25 Seg27.relationRow26 Seg27.relationRow27 Seg27.relationRow28 Seg27.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5
  exact ⟨(rho 20068), (rho 20069), (rho 20070), (rho 20071), (rho 20072), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part6_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart6 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20062) (rho 20067) (rho 20072) (rho 20077)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6 (rho 20047) (rho 20052) (rho 20057) (rho 20062) (rho 20067) (rho 20072) k := by
  unfold Seg27.relationPart6 Seg27.relationRow30 Seg27.relationRow31 Seg27.relationRow32 Seg27.relationRow33 Seg27.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6
  exact ⟨(rho 20073), (rho 20074), (rho 20075), (rho 20076), (rho 20077), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part7_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart7 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20062) (rho 20067) (rho 20072) (rho 20077) (rho 20082)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7 (rho 20062) (rho 20067) (rho 20072) (rho 20077) k := by
  unfold Seg27.relationPart7 Seg27.relationRow35 Seg27.relationRow36 Seg27.relationRow37 Seg27.relationRow38 Seg27.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7
  exact ⟨(rho 20078), (rho 20079), (rho 20080), (rho 20081), (rho 20082), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part8_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart8 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20062) (rho 20067) (rho 20072) (rho 20077) (rho 20082) (rho 20087)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8 (rho 20062) (rho 20067) (rho 20072) (rho 20077) (rho 20082) k := by
  unfold Seg27.relationPart8 Seg27.relationRow40 Seg27.relationRow41 Seg27.relationRow42 Seg27.relationRow43 Seg27.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8
  exact ⟨(rho 20083), (rho 20084), (rho 20085), (rho 20086), (rho 20087), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part9_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart9 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20062) (rho 20067) (rho 20072) (rho 20077) (rho 20082) (rho 20087) (rho 20092)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9 (rho 20062) (rho 20067) (rho 20072) (rho 20077) (rho 20082) (rho 20087) k := by
  unfold Seg27.relationPart9 Seg27.relationRow45 Seg27.relationRow46 Seg27.relationRow47 Seg27.relationRow48 Seg27.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9
  exact ⟨(rho 20088), (rho 20089), (rho 20090), (rho 20091), (rho 20092), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part10_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart10 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20082) (rho 20087) (rho 20092) (rho 20097)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10 (rho 20062) (rho 20067) (rho 20072) (rho 20077) (rho 20082) (rho 20087) (rho 20092) k := by
  unfold Seg27.relationPart10 Seg27.relationRow50 Seg27.relationRow51 Seg27.relationRow52 Seg27.relationRow53 Seg27.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10
  exact ⟨(rho 20093), (rho 20094), (rho 20095), (rho 20096), (rho 20097), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part11_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart11 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20082) (rho 20087) (rho 20092) (rho 20097) (rho 20102)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11 (rho 20082) (rho 20087) (rho 20092) (rho 20097) k := by
  unfold Seg27.relationPart11 Seg27.relationRow55 Seg27.relationRow56 Seg27.relationRow57 Seg27.relationRow58 Seg27.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11
  exact ⟨(rho 20098), (rho 20099), (rho 20100), (rho 20101), (rho 20102), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part12_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart12 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20082) (rho 20087) (rho 20092) (rho 20097) (rho 20102) (rho 20107)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12 (rho 20082) (rho 20087) (rho 20092) (rho 20097) (rho 20102) k := by
  unfold Seg27.relationPart12 Seg27.relationRow60 Seg27.relationRow61 Seg27.relationRow62 Seg27.relationRow63 Seg27.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12
  exact ⟨(rho 20103), (rho 20104), (rho 20105), (rho 20106), (rho 20107), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part13_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart13 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20082) (rho 20087) (rho 20092) (rho 20097) (rho 20102) (rho 20107) (rho 20112)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13 (rho 20082) (rho 20087) (rho 20092) (rho 20097) (rho 20102) (rho 20107) k := by
  unfold Seg27.relationPart13 Seg27.relationRow65 Seg27.relationRow66 Seg27.relationRow67 Seg27.relationRow68 Seg27.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13
  exact ⟨(rho 20108), (rho 20109), (rho 20110), (rho 20111), (rho 20112), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part14_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart14 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14 (rho 20082) (rho 20087) (rho 20092) (rho 20097) (rho 20102) (rho 20107) (rho 20112) k := by
  unfold Seg27.relationPart14 Seg27.relationRow70 Seg27.relationRow71 Seg27.relationRow72 Seg27.relationRow73 Seg27.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14
  exact ⟨(rho 20113), (rho 20114), (rho 20115), (rho 20116), (rho 20117), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part15_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart15 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15 (rho 20102) (rho 20107) (rho 20112) (rho 20117) k := by
  unfold Seg27.relationPart15 Seg27.relationRow75 Seg27.relationRow76 Seg27.relationRow77 Seg27.relationRow78 Seg27.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15
  exact ⟨(rho 20118), (rho 20119), (rho 20120), (rho 20121), (rho 20122), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part16_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart16 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) k := by
  unfold Seg27.relationPart16 Seg27.relationRow80 Seg27.relationRow81 Seg27.relationRow82 Seg27.relationRow83 Seg27.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16
  exact ⟨(rho 20123), (rho 20124), (rho 20125), (rho 20126), (rho 20127), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part17_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart17 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) k := by
  unfold Seg27.relationPart17 Seg27.relationRow85 Seg27.relationRow86 Seg27.relationRow87 Seg27.relationRow88 Seg27.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17
  exact ⟨(rho 20128), (rho 20129), (rho 20130), (rho 20131), (rho 20132), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part18_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart18 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) k := by
  unfold Seg27.relationPart18 Seg27.relationRow90 Seg27.relationRow91 Seg27.relationRow92 Seg27.relationRow93 Seg27.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18
  exact ⟨(rho 20133), (rho 20134), (rho 20135), (rho 20136), (rho 20137), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part19_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart19 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) k := by
  unfold Seg27.relationPart19 Seg27.relationRow95 Seg27.relationRow96 Seg27.relationRow97 Seg27.relationRow98 Seg27.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19
  exact ⟨(rho 20138), (rho 20139), (rho 20140), (rho 20141), (rho 20142), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part20_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart20 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) k := by
  unfold Seg27.relationPart20 Seg27.relationRow100 Seg27.relationRow101 Seg27.relationRow102 Seg27.relationRow103 Seg27.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20
  exact ⟨(rho 20143), (rho 20144), (rho 20145), (rho 20146), (rho 20147), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part21_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart21 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) k := by
  unfold Seg27.relationPart21 Seg27.relationRow105 Seg27.relationRow106 Seg27.relationRow107 Seg27.relationRow108 Seg27.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21
  exact ⟨(rho 20148), (rho 20149), (rho 20150), (rho 20151), (rho 20152), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part22_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart22 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) k := by
  unfold Seg27.relationPart22 Seg27.relationRow110 Seg27.relationRow111 Seg27.relationRow112 Seg27.relationRow113 Seg27.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22
  exact ⟨(rho 20153), (rho 20154), (rho 20155), (rho 20156), (rho 20157), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part23_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart23 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) k := by
  unfold Seg27.relationPart23 Seg27.relationRow115 Seg27.relationRow116 Seg27.relationRow117 Seg27.relationRow118 Seg27.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23
  exact ⟨(rho 20158), (rho 20159), (rho 20160), (rho 20161), (rho 20162), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part24_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart24 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) k := by
  unfold Seg27.relationPart24 Seg27.relationRow120 Seg27.relationRow121 Seg27.relationRow122 Seg27.relationRow123 Seg27.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24
  exact ⟨(rho 20163), (rho 20164), (rho 20165), (rho 20166), (rho 20167), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part25_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart25 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) k := by
  unfold Seg27.relationPart25 Seg27.relationRow125 Seg27.relationRow126 Seg27.relationRow127 Seg27.relationRow128 Seg27.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25
  exact ⟨(rho 20168), (rho 20169), (rho 20170), (rho 20171), (rho 20172), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part26_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart26 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) k := by
  unfold Seg27.relationPart26 Seg27.relationRow130 Seg27.relationRow131 Seg27.relationRow132 Seg27.relationRow133 Seg27.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26
  exact ⟨(rho 20173), (rho 20174), (rho 20175), (rho 20176), (rho 20177), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part27_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart27 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) k := by
  unfold Seg27.relationPart27 Seg27.relationRow135 Seg27.relationRow136 Seg27.relationRow137 Seg27.relationRow138 Seg27.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27
  exact ⟨(rho 20178), (rho 20179), (rho 20180), (rho 20181), (rho 20182), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part28_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart28 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) k := by
  unfold Seg27.relationPart28 Seg27.relationRow140 Seg27.relationRow141 Seg27.relationRow142 Seg27.relationRow143 Seg27.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28
  exact ⟨(rho 20183), (rho 20184), (rho 20185), (rho 20186), (rho 20187), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part29_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart29 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) k := by
  unfold Seg27.relationPart29 Seg27.relationRow145 Seg27.relationRow146 Seg27.relationRow147 Seg27.relationRow148 Seg27.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29
  exact ⟨(rho 20188), (rho 20189), (rho 20190), (rho 20191), (rho 20192), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part30_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart30 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) k := by
  unfold Seg27.relationPart30 Seg27.relationRow150 Seg27.relationRow151 Seg27.relationRow152 Seg27.relationRow153 Seg27.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30
  exact ⟨(rho 20193), (rho 20194), (rho 20195), (rho 20196), (rho 20197), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part31_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart31 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) k := by
  unfold Seg27.relationPart31 Seg27.relationRow155 Seg27.relationRow156 Seg27.relationRow157 Seg27.relationRow158 Seg27.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31
  exact ⟨(rho 20198), (rho 20199), (rho 20200), (rho 20201), (rho 20202), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part32_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart32 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) k := by
  unfold Seg27.relationPart32 Seg27.relationRow160 Seg27.relationRow161 Seg27.relationRow162 Seg27.relationRow163 Seg27.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32
  exact ⟨(rho 20203), (rho 20204), (rho 20205), (rho 20206), (rho 20207), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part33_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart33 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) k := by
  unfold Seg27.relationPart33 Seg27.relationRow165 Seg27.relationRow166 Seg27.relationRow167 Seg27.relationRow168 Seg27.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33
  exact ⟨(rho 20208), (rho 20209), (rho 20210), (rho 20211), (rho 20212), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part34_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart34 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) k := by
  unfold Seg27.relationPart34 Seg27.relationRow170 Seg27.relationRow171 Seg27.relationRow172 Seg27.relationRow173 Seg27.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34
  exact ⟨(rho 20213), (rho 20214), (rho 20215), (rho 20216), (rho 20217), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part35_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart35 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) k := by
  unfold Seg27.relationPart35 Seg27.relationRow175 Seg27.relationRow176 Seg27.relationRow177 Seg27.relationRow178 Seg27.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35
  exact ⟨(rho 20218), (rho 20219), (rho 20220), (rho 20221), (rho 20222), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part36_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart36 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) k := by
  unfold Seg27.relationPart36 Seg27.relationRow180 Seg27.relationRow181 Seg27.relationRow182 Seg27.relationRow183 Seg27.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36
  exact ⟨(rho 20223), (rho 20224), (rho 20225), (rho 20226), (rho 20227), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part37_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart37 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) k := by
  unfold Seg27.relationPart37 Seg27.relationRow185 Seg27.relationRow186 Seg27.relationRow187 Seg27.relationRow188 Seg27.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37
  exact ⟨(rho 20228), (rho 20229), (rho 20230), (rho 20231), (rho 20232), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part38_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart38 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) k := by
  unfold Seg27.relationPart38 Seg27.relationRow190 Seg27.relationRow191 Seg27.relationRow192 Seg27.relationRow193 Seg27.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38
  exact ⟨(rho 20233), (rho 20234), (rho 20235), (rho 20236), (rho 20237), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part39_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart39 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) k := by
  unfold Seg27.relationPart39 Seg27.relationRow195 Seg27.relationRow196 Seg27.relationRow197 Seg27.relationRow198 Seg27.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39
  exact ⟨(rho 20238), (rho 20239), (rho 20240), (rho 20241), (rho 20242), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part40_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart40 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) k := by
  unfold Seg27.relationPart40 Seg27.relationRow200 Seg27.relationRow201 Seg27.relationRow202 Seg27.relationRow203 Seg27.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40
  exact ⟨(rho 20243), (rho 20244), (rho 20245), (rho 20246), (rho 20247), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part41_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart41 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) k := by
  unfold Seg27.relationPart41 Seg27.relationRow205 Seg27.relationRow206 Seg27.relationRow207 Seg27.relationRow208 Seg27.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41
  exact ⟨(rho 20248), (rho 20249), (rho 20250), (rho 20251), (rho 20252), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part42_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart42 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) k := by
  unfold Seg27.relationPart42 Seg27.relationRow210 Seg27.relationRow211 Seg27.relationRow212 Seg27.relationRow213 Seg27.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42
  exact ⟨(rho 20253), (rho 20254), (rho 20255), (rho 20256), (rho 20257), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part43_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart43 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) k := by
  unfold Seg27.relationPart43 Seg27.relationRow215 Seg27.relationRow216 Seg27.relationRow217 Seg27.relationRow218 Seg27.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43
  exact ⟨(rho 20258), (rho 20259), (rho 20260), (rho 20261), (rho 20262), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part44_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart44 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) k := by
  unfold Seg27.relationPart44 Seg27.relationRow220 Seg27.relationRow221 Seg27.relationRow222 Seg27.relationRow223 Seg27.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44
  exact ⟨(rho 20263), (rho 20264), (rho 20265), (rho 20266), (rho 20267), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part45_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart45 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) (rho 20272)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) k := by
  unfold Seg27.relationPart45 Seg27.relationRow225 Seg27.relationRow226 Seg27.relationRow227 Seg27.relationRow228 Seg27.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45
  exact ⟨(rho 20268), (rho 20269), (rho 20270), (rho 20271), (rho 20272), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part46_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart46 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) (rho 20272) (rho 20277)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) (rho 20272) k := by
  unfold Seg27.relationPart46 Seg27.relationRow230 Seg27.relationRow231 Seg27.relationRow232 Seg27.relationRow233 Seg27.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46
  exact ⟨(rho 20273), (rho 20274), (rho 20275), (rho 20276), (rho 20277), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part47_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart47 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) (rho 20272) (rho 20277) (rho 20282)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) (rho 20272) (rho 20277) k := by
  unfold Seg27.relationPart47 Seg27.relationRow235 Seg27.relationRow236 Seg27.relationRow237 Seg27.relationRow238 Seg27.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47
  exact ⟨(rho 20278), (rho 20279), (rho 20280), (rho 20281), (rho 20282), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part48_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart48 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) (rho 20272) (rho 20277) (rho 20282) (rho 20287)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) (rho 20272) (rho 20277) (rho 20282) k := by
  unfold Seg27.relationPart48 Seg27.relationRow240 Seg27.relationRow241 Seg27.relationRow242 Seg27.relationRow243 Seg27.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48
  exact ⟨(rho 20283), (rho 20284), (rho 20285), (rho 20286), (rho 20287), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part49_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart49 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20277) (rho 20282) (rho 20287) (rho 20292)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49 (rho 20102) (rho 20107) (rho 20112) (rho 20117) (rho 20122) (rho 20127) (rho 20132) (rho 20137) (rho 20142) (rho 20147) (rho 20152) (rho 20157) (rho 20162) (rho 20167) (rho 20172) (rho 20177) (rho 20182) (rho 20187) (rho 20192) (rho 20197) (rho 20202) (rho 20207) (rho 20212) (rho 20217) (rho 20222) (rho 20227) (rho 20232) (rho 20237) (rho 20242) (rho 20247) (rho 20252) (rho 20257) (rho 20262) (rho 20267) (rho 20272) (rho 20277) (rho 20282) (rho 20287) k := by
  unfold Seg27.relationPart49 Seg27.relationRow245 Seg27.relationRow246 Seg27.relationRow247 Seg27.relationRow248 Seg27.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49
  exact ⟨(rho 20288), (rho 20289), (rho 20290), (rho 20291), (rho 20292), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part50_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart50 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20277) (rho 20282) (rho 20287) (rho 20292) (rho 20297)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50 (rho 20277) (rho 20282) (rho 20287) (rho 20292) k := by
  unfold Seg27.relationPart50 Seg27.relationRow250 Seg27.relationRow251 Seg27.relationRow252 Seg27.relationRow253 Seg27.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50
  exact ⟨(rho 20293), (rho 20294), (rho 20295), (rho 20296), (rho 20297), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part51_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart51 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20277) (rho 20282) (rho 20287) (rho 20292) (rho 20297) (rho 20302)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51 (rho 20277) (rho 20282) (rho 20287) (rho 20292) (rho 20297) k := by
  unfold Seg27.relationPart51 Seg27.relationRow255 Seg27.relationRow256 Seg27.relationRow257 Seg27.relationRow258 Seg27.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51
  exact ⟨(rho 20298), (rho 20299), (rho 20300), (rho 20301), (rho 20302), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part52_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart52 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20277) (rho 20282) (rho 20287) (rho 20292) (rho 20297) (rho 20302) (rho 20307)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52 (rho 20277) (rho 20282) (rho 20287) (rho 20292) (rho 20297) (rho 20302) k := by
  unfold Seg27.relationPart52 Seg27.relationRow260 Seg27.relationRow261 Seg27.relationRow262 Seg27.relationRow263 Seg27.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52
  exact ⟨(rho 20303), (rho 20304), (rho 20305), (rho 20306), (rho 20307), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part53_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart53 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20297) (rho 20302) (rho 20307) (rho 20312)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53 (rho 20277) (rho 20282) (rho 20287) (rho 20292) (rho 20297) (rho 20302) (rho 20307) k := by
  unfold Seg27.relationPart53 Seg27.relationRow265 Seg27.relationRow266 Seg27.relationRow267 Seg27.relationRow268 Seg27.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53
  exact ⟨(rho 20308), (rho 20309), (rho 20310), (rho 20311), (rho 20312), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part54_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart54 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20297) (rho 20302) (rho 20307) (rho 20312) (rho 20317)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54 (rho 20297) (rho 20302) (rho 20307) (rho 20312) k := by
  unfold Seg27.relationPart54 Seg27.relationRow270 Seg27.relationRow271 Seg27.relationRow272 Seg27.relationRow273 Seg27.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54
  exact ⟨(rho 20313), (rho 20314), (rho 20315), (rho 20316), (rho 20317), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part55_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart55 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20297) (rho 20302) (rho 20307) (rho 20312) (rho 20317) (rho 20322)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55 (rho 20297) (rho 20302) (rho 20307) (rho 20312) (rho 20317) k := by
  unfold Seg27.relationPart55 Seg27.relationRow275 Seg27.relationRow276 Seg27.relationRow277 Seg27.relationRow278 Seg27.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55
  exact ⟨(rho 20318), (rho 20319), (rho 20320), (rho 20321), (rho 20322), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part56_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart56 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20297) (rho 20302) (rho 20307) (rho 20312) (rho 20317) (rho 20322) (rho 20327)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56 (rho 20297) (rho 20302) (rho 20307) (rho 20312) (rho 20317) (rho 20322) k := by
  unfold Seg27.relationPart56 Seg27.relationRow280 Seg27.relationRow281 Seg27.relationRow282 Seg27.relationRow283 Seg27.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56
  exact ⟨(rho 20323), (rho 20324), (rho 20325), (rho 20326), (rho 20327), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part57_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart57 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20317) (rho 20322) (rho 20327) (rho 20332)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57 (rho 20297) (rho 20302) (rho 20307) (rho 20312) (rho 20317) (rho 20322) (rho 20327) k := by
  unfold Seg27.relationPart57 Seg27.relationRow285 Seg27.relationRow286 Seg27.relationRow287 Seg27.relationRow288 Seg27.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57
  exact ⟨(rho 20328), (rho 20329), (rho 20330), (rho 20331), (rho 20332), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part58_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart58 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20317) (rho 20322) (rho 20327) (rho 20332) (rho 20337)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58 (rho 20317) (rho 20322) (rho 20327) (rho 20332) k := by
  unfold Seg27.relationPart58 Seg27.relationRow290 Seg27.relationRow291 Seg27.relationRow292 Seg27.relationRow293 Seg27.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58
  exact ⟨(rho 20333), (rho 20334), (rho 20335), (rho 20336), (rho 20337), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part59_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart59 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20317) (rho 20322) (rho 20327) (rho 20332) (rho 20337) (rho 20342)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59 (rho 20317) (rho 20322) (rho 20327) (rho 20332) (rho 20337) k := by
  unfold Seg27.relationPart59 Seg27.relationRow295 Seg27.relationRow296 Seg27.relationRow297 Seg27.relationRow298 Seg27.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59
  exact ⟨(rho 20338), (rho 20339), (rho 20340), (rho 20341), (rho 20342), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part60_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart60 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20317) (rho 20322) (rho 20327) (rho 20332) (rho 20337) (rho 20342) (rho 20347)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60 (rho 20317) (rho 20322) (rho 20327) (rho 20332) (rho 20337) (rho 20342) k := by
  unfold Seg27.relationPart60 Seg27.relationRow300 Seg27.relationRow301 Seg27.relationRow302 Seg27.relationRow303 Seg27.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60
  exact ⟨(rho 20343), (rho 20344), (rho 20345), (rho 20346), (rho 20347), h0, h1, h2, h3, h4, hk⟩

theorem seg27_part61_to_extracted (rho : Nat → Seg27.F)
    (h : Seg27.relationPart61 rho)
    {k : Seg27.F → Seg27.F → Seg27.F → Seg27.F → Prop} (hk : k (rho 20337) (rho 20342) (rho 20347) (rho 20352)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61 (rho 20317) (rho 20322) (rho 20327) (rho 20332) (rho 20337) (rho 20342) (rho 20347) k := by
  unfold Seg27.relationPart61 Seg27.relationRow305 Seg27.relationRow306 Seg27.relationRow307 Seg27.relationRow308 Seg27.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61
  exact ⟨(rho 20348), (rho 20349), (rho 20350), (rho 20351), (rho 20352), h0, h1, h2, h3, h4, hk⟩

theorem seg27_relation_to_nullifier (rho : Nat → Seg27.F)
    (h : Seg27.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
      (rho 8) (rho 113) (rho 114)
      (fun w1637 w1642 w1647 w1652 =>
        w1637 = rho 20337 ∧ w1642 = rho 20342 ∧
        w1647 = rho 20347 ∧ w1652 = rho 20352) := by
  unfold Seg27.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
  apply seg27_part0_to_extracted rho p0
  apply seg27_part1_to_extracted rho p1
  apply seg27_part2_to_extracted rho p2
  apply seg27_part3_to_extracted rho p3
  apply seg27_part4_to_extracted rho p4
  apply seg27_part5_to_extracted rho p5
  apply seg27_part6_to_extracted rho p6
  apply seg27_part7_to_extracted rho p7
  apply seg27_part8_to_extracted rho p8
  apply seg27_part9_to_extracted rho p9
  apply seg27_part10_to_extracted rho p10
  apply seg27_part11_to_extracted rho p11
  apply seg27_part12_to_extracted rho p12
  apply seg27_part13_to_extracted rho p13
  apply seg27_part14_to_extracted rho p14
  apply seg27_part15_to_extracted rho p15
  apply seg27_part16_to_extracted rho p16
  apply seg27_part17_to_extracted rho p17
  apply seg27_part18_to_extracted rho p18
  apply seg27_part19_to_extracted rho p19
  apply seg27_part20_to_extracted rho p20
  apply seg27_part21_to_extracted rho p21
  apply seg27_part22_to_extracted rho p22
  apply seg27_part23_to_extracted rho p23
  apply seg27_part24_to_extracted rho p24
  apply seg27_part25_to_extracted rho p25
  apply seg27_part26_to_extracted rho p26
  apply seg27_part27_to_extracted rho p27
  apply seg27_part28_to_extracted rho p28
  apply seg27_part29_to_extracted rho p29
  apply seg27_part30_to_extracted rho p30
  apply seg27_part31_to_extracted rho p31
  apply seg27_part32_to_extracted rho p32
  apply seg27_part33_to_extracted rho p33
  apply seg27_part34_to_extracted rho p34
  apply seg27_part35_to_extracted rho p35
  apply seg27_part36_to_extracted rho p36
  apply seg27_part37_to_extracted rho p37
  apply seg27_part38_to_extracted rho p38
  apply seg27_part39_to_extracted rho p39
  apply seg27_part40_to_extracted rho p40
  apply seg27_part41_to_extracted rho p41
  apply seg27_part42_to_extracted rho p42
  apply seg27_part43_to_extracted rho p43
  apply seg27_part44_to_extracted rho p44
  apply seg27_part45_to_extracted rho p45
  apply seg27_part46_to_extracted rho p46
  apply seg27_part47_to_extracted rho p47
  apply seg27_part48_to_extracted rho p48
  apply seg27_part49_to_extracted rho p49
  apply seg27_part50_to_extracted rho p50
  apply seg27_part51_to_extracted rho p51
  apply seg27_part52_to_extracted rho p52
  apply seg27_part53_to_extracted rho p53
  apply seg27_part54_to_extracted rho p54
  apply seg27_part55_to_extracted rho p55
  apply seg27_part56_to_extracted rho p56
  apply seg27_part57_to_extracted rho p57
  apply seg27_part58_to_extracted rho p58
  apply seg27_part59_to_extracted rho p59
  apply seg27_part60_to_extracted rho p60
  apply seg27_part61_to_extracted rho p61
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem seg27_sound (rho : Nat → Seg27.F) (h : Seg27.relation rho) : Seg27.spec rho := by
  have hExtracted := seg27_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      (rho 8) (rho 113) (rho 114) _ hExtracted with
    ⟨w1637, w1642, w1647, w1652, hk, hperm⟩
  rcases hk with ⟨hw1637, hw1642, hw1647, hw1652⟩
  simpa [Seg27.spec, Specs.deployedSpec27, hw1637, hw1642, hw1647, hw1652] using hperm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
