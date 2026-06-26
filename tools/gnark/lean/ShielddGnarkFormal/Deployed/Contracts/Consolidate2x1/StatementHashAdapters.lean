import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg59
import ShielddGnarkFormal.Deployed.StatementHash.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg59_part0_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart0 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 53353) (rho 53693) (rho 53698)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg0 (rho 2) (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 53353) (rho 53693) k := by
  unfold Seg59.relationPart0 Seg59.relationRow0 Seg59.relationRow1 Seg59.relationRow2 Seg59.relationRow3 Seg59.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg0
  exact ⟨(rho 53694), (rho 53695), (rho 53696), (rho 53697), (rho 53698), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part1_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart1 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53353) (rho 53693) (rho 53698) (rho 53703)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg1 (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 53353) (rho 53693) (rho 53698) k := by
  unfold Seg59.relationPart1 Seg59.relationRow5 Seg59.relationRow6 Seg59.relationRow7 Seg59.relationRow8 Seg59.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg1
  exact ⟨(rho 53699), (rho 53700), (rho 53701), (rho 53702), (rho 53703), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part2_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart2 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53698) (rho 53703) (rho 53708)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg2 (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53353) (rho 53693) (rho 53698) (rho 53703) k := by
  unfold Seg59.relationPart2 Seg59.relationRow10 Seg59.relationRow11 Seg59.relationRow12 Seg59.relationRow13 Seg59.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg2
  exact ⟨(rho 53704), (rho 53705), (rho 53706), (rho 53707), (rho 53708), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part3_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart3 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53698) (rho 53703) (rho 53708) (rho 53713)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg3 (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53698) (rho 53703) (rho 53708) k := by
  unfold Seg59.relationPart3 Seg59.relationRow15 Seg59.relationRow16 Seg59.relationRow17 Seg59.relationRow18 Seg59.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg3
  exact ⟨(rho 53709), (rho 53710), (rho 53711), (rho 53712), (rho 53713), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part4_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart4 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg4 (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53698) (rho 53703) (rho 53708) (rho 53713) k := by
  unfold Seg59.relationPart4 Seg59.relationRow20 Seg59.relationRow21 Seg59.relationRow22 Seg59.relationRow23 Seg59.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg4
  exact ⟨(rho 53714), (rho 53715), (rho 53716), (rho 53717), (rho 53718), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part5_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart5 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 31446) (rho 31786) (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg5 (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) k := by
  unfold Seg59.relationPart5 Seg59.relationRow25 Seg59.relationRow26 Seg59.relationRow27 Seg59.relationRow28 Seg59.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg5
  exact ⟨(rho 53719), (rho 53720), (rho 53721), (rho 53722), (rho 53723), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part6_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart6 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg6 (rho 31446) (rho 31786) (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) k := by
  unfold Seg59.relationPart6 Seg59.relationRow30 Seg59.relationRow31 Seg59.relationRow32 Seg59.relationRow33 Seg59.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg6
  exact ⟨(rho 53724), (rho 53725), (rho 53726), (rho 53727), (rho 53728), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part7_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart7 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg7 (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) k := by
  unfold Seg59.relationPart7 Seg59.relationRow35 Seg59.relationRow36 Seg59.relationRow37 Seg59.relationRow38 Seg59.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg7
  exact ⟨(rho 53729), (rho 53730), (rho 53731), (rho 53732), (rho 53733), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part8_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart8 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg8 (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) k := by
  unfold Seg59.relationPart8 Seg59.relationRow40 Seg59.relationRow41 Seg59.relationRow42 Seg59.relationRow43 Seg59.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg8
  exact ⟨(rho 53734), (rho 53735), (rho 53736), (rho 53737), (rho 53738), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part9_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart9 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg9 (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) k := by
  unfold Seg59.relationPart9 Seg59.relationRow45 Seg59.relationRow46 Seg59.relationRow47 Seg59.relationRow48 Seg59.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg9
  exact ⟨(rho 53739), (rho 53740), (rho 53741), (rho 53742), (rho 53743), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part10_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart10 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) (rho 53748)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg10 (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) k := by
  unfold Seg59.relationPart10 Seg59.relationRow50 Seg59.relationRow51 Seg59.relationRow52 Seg59.relationRow53 Seg59.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg10
  exact ⟨(rho 53744), (rho 53745), (rho 53746), (rho 53747), (rho 53748), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part11_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart11 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg11 (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) (rho 53748) k := by
  unfold Seg59.relationPart11 Seg59.relationRow55 Seg59.relationRow56 Seg59.relationRow57 Seg59.relationRow58 Seg59.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg11
  exact ⟨(rho 53749), (rho 53750), (rho 53751), (rho 53752), (rho 53753), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part12_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart12 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg12 (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) k := by
  unfold Seg59.relationPart12 Seg59.relationRow60 Seg59.relationRow61 Seg59.relationRow62 Seg59.relationRow63 Seg59.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg12
  exact ⟨(rho 53754), (rho 53755), (rho 53756), (rho 53757), (rho 53758), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part13_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart13 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg13 (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) k := by
  unfold Seg59.relationPart13 Seg59.relationRow65 Seg59.relationRow66 Seg59.relationRow67 Seg59.relationRow68 Seg59.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg13
  exact ⟨(rho 53759), (rho 53760), (rho 53761), (rho 53762), (rho 53763), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part14_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart14 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg14 (rho 53698) (rho 53703) (rho 53708) (rho 53713) (rho 53718) (rho 53723) (rho 53728) (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) k := by
  unfold Seg59.relationPart14 Seg59.relationRow70 Seg59.relationRow71 Seg59.relationRow72 Seg59.relationRow73 Seg59.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg14
  exact ⟨(rho 53764), (rho 53765), (rho 53766), (rho 53767), (rho 53768), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part15_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart15 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg15 (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) k := by
  unfold Seg59.relationPart15 Seg59.relationRow75 Seg59.relationRow76 Seg59.relationRow77 Seg59.relationRow78 Seg59.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg15
  exact ⟨(rho 53769), (rho 53770), (rho 53771), (rho 53772), (rho 53773), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part16_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart16 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg16 (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) k := by
  unfold Seg59.relationPart16 Seg59.relationRow80 Seg59.relationRow81 Seg59.relationRow82 Seg59.relationRow83 Seg59.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg16
  exact ⟨(rho 53774), (rho 53775), (rho 53776), (rho 53777), (rho 53778), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part17_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart17 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg17 (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) k := by
  unfold Seg59.relationPart17 Seg59.relationRow85 Seg59.relationRow86 Seg59.relationRow87 Seg59.relationRow88 Seg59.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg17
  exact ⟨(rho 53779), (rho 53780), (rho 53781), (rho 53782), (rho 53783), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part18_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart18 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) (rho 53788)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg18 (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) k := by
  unfold Seg59.relationPart18 Seg59.relationRow90 Seg59.relationRow91 Seg59.relationRow92 Seg59.relationRow93 Seg59.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg18
  exact ⟨(rho 53784), (rho 53785), (rho 53786), (rho 53787), (rho 53788), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part19_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart19 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg19 (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) (rho 53788) k := by
  unfold Seg59.relationPart19 Seg59.relationRow95 Seg59.relationRow96 Seg59.relationRow97 Seg59.relationRow98 Seg59.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg19
  exact ⟨(rho 53789), (rho 53790), (rho 53791), (rho 53792), (rho 53793), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part20_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart20 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg20 (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) k := by
  unfold Seg59.relationPart20 Seg59.relationRow100 Seg59.relationRow101 Seg59.relationRow102 Seg59.relationRow103 Seg59.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg20
  exact ⟨(rho 53794), (rho 53795), (rho 53796), (rho 53797), (rho 53798), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part21_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart21 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg21 (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) k := by
  unfold Seg59.relationPart21 Seg59.relationRow105 Seg59.relationRow106 Seg59.relationRow107 Seg59.relationRow108 Seg59.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg21
  exact ⟨(rho 53799), (rho 53800), (rho 53801), (rho 53802), (rho 53803), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part22_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart22 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg22 (rho 53733) (rho 53738) (rho 53743) (rho 53748) (rho 53753) (rho 53758) (rho 53763) (rho 53768) (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) k := by
  unfold Seg59.relationPart22 Seg59.relationRow110 Seg59.relationRow111 Seg59.relationRow112 Seg59.relationRow113 Seg59.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg22
  exact ⟨(rho 53804), (rho 53805), (rho 53806), (rho 53807), (rho 53808), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part23_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart23 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg23 (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) k := by
  unfold Seg59.relationPart23 Seg59.relationRow115 Seg59.relationRow116 Seg59.relationRow117 Seg59.relationRow118 Seg59.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg23
  exact ⟨(rho 53809), (rho 53810), (rho 53811), (rho 53812), (rho 53813), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part24_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart24 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg24 (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) k := by
  unfold Seg59.relationPart24 Seg59.relationRow120 Seg59.relationRow121 Seg59.relationRow122 Seg59.relationRow123 Seg59.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg24
  exact ⟨(rho 53814), (rho 53815), (rho 53816), (rho 53817), (rho 53818), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part25_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart25 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg25 (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) k := by
  unfold Seg59.relationPart25 Seg59.relationRow125 Seg59.relationRow126 Seg59.relationRow127 Seg59.relationRow128 Seg59.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg25
  exact ⟨(rho 53819), (rho 53820), (rho 53821), (rho 53822), (rho 53823), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part26_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart26 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) (rho 53828)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg26 (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) k := by
  unfold Seg59.relationPart26 Seg59.relationRow130 Seg59.relationRow131 Seg59.relationRow132 Seg59.relationRow133 Seg59.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg26
  exact ⟨(rho 53824), (rho 53825), (rho 53826), (rho 53827), (rho 53828), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part27_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart27 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg27 (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) (rho 53828) k := by
  unfold Seg59.relationPart27 Seg59.relationRow135 Seg59.relationRow136 Seg59.relationRow137 Seg59.relationRow138 Seg59.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg27
  exact ⟨(rho 53829), (rho 53830), (rho 53831), (rho 53832), (rho 53833), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part28_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart28 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg28 (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) k := by
  unfold Seg59.relationPart28 Seg59.relationRow140 Seg59.relationRow141 Seg59.relationRow142 Seg59.relationRow143 Seg59.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg28
  exact ⟨(rho 53834), (rho 53835), (rho 53836), (rho 53837), (rho 53838), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part29_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart29 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg29 (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) k := by
  unfold Seg59.relationPart29 Seg59.relationRow145 Seg59.relationRow146 Seg59.relationRow147 Seg59.relationRow148 Seg59.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg29
  exact ⟨(rho 53839), (rho 53840), (rho 53841), (rho 53842), (rho 53843), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part30_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart30 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg30 (rho 53773) (rho 53778) (rho 53783) (rho 53788) (rho 53793) (rho 53798) (rho 53803) (rho 53808) (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) k := by
  unfold Seg59.relationPart30 Seg59.relationRow150 Seg59.relationRow151 Seg59.relationRow152 Seg59.relationRow153 Seg59.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg30
  exact ⟨(rho 53844), (rho 53845), (rho 53846), (rho 53847), (rho 53848), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part31_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart31 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg31 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) k := by
  unfold Seg59.relationPart31 Seg59.relationRow155 Seg59.relationRow156 Seg59.relationRow157 Seg59.relationRow158 Seg59.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg31
  exact ⟨(rho 53849), (rho 53850), (rho 53851), (rho 53852), (rho 53853), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part32_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart32 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg32 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) k := by
  unfold Seg59.relationPart32 Seg59.relationRow160 Seg59.relationRow161 Seg59.relationRow162 Seg59.relationRow163 Seg59.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg32
  exact ⟨(rho 53854), (rho 53855), (rho 53856), (rho 53857), (rho 53858), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part33_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart33 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg33 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) k := by
  unfold Seg59.relationPart33 Seg59.relationRow165 Seg59.relationRow166 Seg59.relationRow167 Seg59.relationRow168 Seg59.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg33
  exact ⟨(rho 53859), (rho 53860), (rho 53861), (rho 53862), (rho 53863), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part34_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart34 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg34 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) k := by
  unfold Seg59.relationPart34 Seg59.relationRow170 Seg59.relationRow171 Seg59.relationRow172 Seg59.relationRow173 Seg59.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg34
  exact ⟨(rho 53864), (rho 53865), (rho 53866), (rho 53867), (rho 53868), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part35_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart35 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg35 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) k := by
  unfold Seg59.relationPart35 Seg59.relationRow175 Seg59.relationRow176 Seg59.relationRow177 Seg59.relationRow178 Seg59.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg35
  exact ⟨(rho 53869), (rho 53870), (rho 53871), (rho 53872), (rho 53873), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part36_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart36 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg36 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) k := by
  unfold Seg59.relationPart36 Seg59.relationRow180 Seg59.relationRow181 Seg59.relationRow182 Seg59.relationRow183 Seg59.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg36
  exact ⟨(rho 53874), (rho 53875), (rho 53876), (rho 53877), (rho 53878), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part37_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart37 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg37 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) k := by
  unfold Seg59.relationPart37 Seg59.relationRow185 Seg59.relationRow186 Seg59.relationRow187 Seg59.relationRow188 Seg59.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg37
  exact ⟨(rho 53879), (rho 53880), (rho 53881), (rho 53882), (rho 53883), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part38_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart38 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg38 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) k := by
  unfold Seg59.relationPart38 Seg59.relationRow190 Seg59.relationRow191 Seg59.relationRow192 Seg59.relationRow193 Seg59.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg38
  exact ⟨(rho 53884), (rho 53885), (rho 53886), (rho 53887), (rho 53888), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part39_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart39 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg39 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) k := by
  unfold Seg59.relationPart39 Seg59.relationRow195 Seg59.relationRow196 Seg59.relationRow197 Seg59.relationRow198 Seg59.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg39
  exact ⟨(rho 53889), (rho 53890), (rho 53891), (rho 53892), (rho 53893), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part40_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart40 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg40 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) k := by
  unfold Seg59.relationPart40 Seg59.relationRow200 Seg59.relationRow201 Seg59.relationRow202 Seg59.relationRow203 Seg59.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg40
  exact ⟨(rho 53894), (rho 53895), (rho 53896), (rho 53897), (rho 53898), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part41_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart41 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg41 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) k := by
  unfold Seg59.relationPart41 Seg59.relationRow205 Seg59.relationRow206 Seg59.relationRow207 Seg59.relationRow208 Seg59.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg41
  exact ⟨(rho 53899), (rho 53900), (rho 53901), (rho 53902), (rho 53903), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part42_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart42 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg42 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) k := by
  unfold Seg59.relationPart42 Seg59.relationRow210 Seg59.relationRow211 Seg59.relationRow212 Seg59.relationRow213 Seg59.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg42
  exact ⟨(rho 53904), (rho 53905), (rho 53906), (rho 53907), (rho 53908), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part43_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart43 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg43 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) k := by
  unfold Seg59.relationPart43 Seg59.relationRow215 Seg59.relationRow216 Seg59.relationRow217 Seg59.relationRow218 Seg59.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg43
  exact ⟨(rho 53909), (rho 53910), (rho 53911), (rho 53912), (rho 53913), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part44_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart44 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg44 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) k := by
  unfold Seg59.relationPart44 Seg59.relationRow220 Seg59.relationRow221 Seg59.relationRow222 Seg59.relationRow223 Seg59.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg44
  exact ⟨(rho 53914), (rho 53915), (rho 53916), (rho 53917), (rho 53918), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part45_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart45 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg45 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) k := by
  unfold Seg59.relationPart45 Seg59.relationRow225 Seg59.relationRow226 Seg59.relationRow227 Seg59.relationRow228 Seg59.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg45
  exact ⟨(rho 53919), (rho 53920), (rho 53921), (rho 53922), (rho 53923), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part46_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart46 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg46 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) k := by
  unfold Seg59.relationPart46 Seg59.relationRow230 Seg59.relationRow231 Seg59.relationRow232 Seg59.relationRow233 Seg59.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg46
  exact ⟨(rho 53924), (rho 53925), (rho 53926), (rho 53927), (rho 53928), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part47_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart47 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg47 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) k := by
  unfold Seg59.relationPart47 Seg59.relationRow235 Seg59.relationRow236 Seg59.relationRow237 Seg59.relationRow238 Seg59.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg47
  exact ⟨(rho 53929), (rho 53930), (rho 53931), (rho 53932), (rho 53933), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part48_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart48 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg48 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) k := by
  unfold Seg59.relationPart48 Seg59.relationRow240 Seg59.relationRow241 Seg59.relationRow242 Seg59.relationRow243 Seg59.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg48
  exact ⟨(rho 53934), (rho 53935), (rho 53936), (rho 53937), (rho 53938), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part49_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart49 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg49 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) k := by
  unfold Seg59.relationPart49 Seg59.relationRow245 Seg59.relationRow246 Seg59.relationRow247 Seg59.relationRow248 Seg59.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg49
  exact ⟨(rho 53939), (rho 53940), (rho 53941), (rho 53942), (rho 53943), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part50_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart50 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg50 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) k := by
  unfold Seg59.relationPart50 Seg59.relationRow250 Seg59.relationRow251 Seg59.relationRow252 Seg59.relationRow253 Seg59.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg50
  exact ⟨(rho 53944), (rho 53945), (rho 53946), (rho 53947), (rho 53948), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part51_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart51 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg51 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) k := by
  unfold Seg59.relationPart51 Seg59.relationRow255 Seg59.relationRow256 Seg59.relationRow257 Seg59.relationRow258 Seg59.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg51
  exact ⟨(rho 53949), (rho 53950), (rho 53951), (rho 53952), (rho 53953), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part52_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart52 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg52 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) k := by
  unfold Seg59.relationPart52 Seg59.relationRow260 Seg59.relationRow261 Seg59.relationRow262 Seg59.relationRow263 Seg59.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg52
  exact ⟨(rho 53954), (rho 53955), (rho 53956), (rho 53957), (rho 53958), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part53_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart53 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg53 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) k := by
  unfold Seg59.relationPart53 Seg59.relationRow265 Seg59.relationRow266 Seg59.relationRow267 Seg59.relationRow268 Seg59.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg53
  exact ⟨(rho 53959), (rho 53960), (rho 53961), (rho 53962), (rho 53963), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part54_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart54 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg54 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) k := by
  unfold Seg59.relationPart54 Seg59.relationRow270 Seg59.relationRow271 Seg59.relationRow272 Seg59.relationRow273 Seg59.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg54
  exact ⟨(rho 53964), (rho 53965), (rho 53966), (rho 53967), (rho 53968), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part55_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart55 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg55 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) k := by
  unfold Seg59.relationPart55 Seg59.relationRow275 Seg59.relationRow276 Seg59.relationRow277 Seg59.relationRow278 Seg59.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg55
  exact ⟨(rho 53969), (rho 53970), (rho 53971), (rho 53972), (rho 53973), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part56_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart56 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg56 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) k := by
  unfold Seg59.relationPart56 Seg59.relationRow280 Seg59.relationRow281 Seg59.relationRow282 Seg59.relationRow283 Seg59.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg56
  exact ⟨(rho 53974), (rho 53975), (rho 53976), (rho 53977), (rho 53978), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part57_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart57 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg57 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) k := by
  unfold Seg59.relationPart57 Seg59.relationRow285 Seg59.relationRow286 Seg59.relationRow287 Seg59.relationRow288 Seg59.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg57
  exact ⟨(rho 53979), (rho 53980), (rho 53981), (rho 53982), (rho 53983), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part58_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart58 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg58 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) k := by
  unfold Seg59.relationPart58 Seg59.relationRow290 Seg59.relationRow291 Seg59.relationRow292 Seg59.relationRow293 Seg59.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg58
  exact ⟨(rho 53984), (rho 53985), (rho 53986), (rho 53987), (rho 53988), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part59_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart59 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg59 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) k := by
  unfold Seg59.relationPart59 Seg59.relationRow295 Seg59.relationRow296 Seg59.relationRow297 Seg59.relationRow298 Seg59.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg59
  exact ⟨(rho 53989), (rho 53990), (rho 53991), (rho 53992), (rho 53993), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part60_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart60 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg60 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) k := by
  unfold Seg59.relationPart60 Seg59.relationRow300 Seg59.relationRow301 Seg59.relationRow302 Seg59.relationRow303 Seg59.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg60
  exact ⟨(rho 53994), (rho 53995), (rho 53996), (rho 53997), (rho 53998), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part61_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart61 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg61 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) k := by
  unfold Seg59.relationPart61 Seg59.relationRow305 Seg59.relationRow306 Seg59.relationRow307 Seg59.relationRow308 Seg59.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg61
  exact ⟨(rho 53999), (rho 54000), (rho 54001), (rho 54002), (rho 54003), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part62_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart62 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg62 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) k := by
  unfold Seg59.relationPart62 Seg59.relationRow310 Seg59.relationRow311 Seg59.relationRow312 Seg59.relationRow313 Seg59.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg62
  exact ⟨(rho 54004), (rho 54005), (rho 54006), (rho 54007), (rho 54008), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part63_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart63 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg63 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) k := by
  unfold Seg59.relationPart63 Seg59.relationRow315 Seg59.relationRow316 Seg59.relationRow317 Seg59.relationRow318 Seg59.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg63
  exact ⟨(rho 54009), (rho 54010), (rho 54011), (rho 54012), (rho 54013), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part64_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart64 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg64 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) k := by
  unfold Seg59.relationPart64 Seg59.relationRow320 Seg59.relationRow321 Seg59.relationRow322 Seg59.relationRow323 Seg59.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg64
  exact ⟨(rho 54014), (rho 54015), (rho 54016), (rho 54017), (rho 54018), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part65_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart65 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) (rho 54023)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg65 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) k := by
  unfold Seg59.relationPart65 Seg59.relationRow325 Seg59.relationRow326 Seg59.relationRow327 Seg59.relationRow328 Seg59.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg65
  exact ⟨(rho 54019), (rho 54020), (rho 54021), (rho 54022), (rho 54023), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part66_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart66 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg66 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) (rho 54023) k := by
  unfold Seg59.relationPart66 Seg59.relationRow330 Seg59.relationRow331 Seg59.relationRow332 Seg59.relationRow333 Seg59.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg66
  exact ⟨(rho 54024), (rho 54025), (rho 54026), (rho 54027), (rho 54028), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part67_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart67 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg67 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) k := by
  unfold Seg59.relationPart67 Seg59.relationRow335 Seg59.relationRow336 Seg59.relationRow337 Seg59.relationRow338 Seg59.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg67
  exact ⟨(rho 54029), (rho 54030), (rho 54031), (rho 54032), (rho 54033), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part68_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart68 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg68 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) k := by
  unfold Seg59.relationPart68 Seg59.relationRow340 Seg59.relationRow341 Seg59.relationRow342 Seg59.relationRow343 Seg59.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg68
  exact ⟨(rho 54034), (rho 54035), (rho 54036), (rho 54037), (rho 54038), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part69_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart69 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg69 (rho 53813) (rho 53818) (rho 53823) (rho 53828) (rho 53833) (rho 53838) (rho 53843) (rho 53848) (rho 53853) (rho 53858) (rho 53863) (rho 53868) (rho 53873) (rho 53878) (rho 53883) (rho 53888) (rho 53893) (rho 53898) (rho 53903) (rho 53908) (rho 53913) (rho 53918) (rho 53923) (rho 53928) (rho 53933) (rho 53938) (rho 53943) (rho 53948) (rho 53953) (rho 53958) (rho 53963) (rho 53968) (rho 53973) (rho 53978) (rho 53983) (rho 53988) (rho 53993) (rho 53998) (rho 54003) (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) k := by
  unfold Seg59.relationPart69 Seg59.relationRow345 Seg59.relationRow346 Seg59.relationRow347 Seg59.relationRow348 Seg59.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg69
  exact ⟨(rho 54039), (rho 54040), (rho 54041), (rho 54042), (rho 54043), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part70_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart70 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg70 (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) k := by
  unfold Seg59.relationPart70 Seg59.relationRow350 Seg59.relationRow351 Seg59.relationRow352 Seg59.relationRow353 Seg59.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg70
  exact ⟨(rho 54044), (rho 54045), (rho 54046), (rho 54047), (rho 54048), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part71_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart71 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg71 (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) k := by
  unfold Seg59.relationPart71 Seg59.relationRow355 Seg59.relationRow356 Seg59.relationRow357 Seg59.relationRow358 Seg59.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg71
  exact ⟨(rho 54049), (rho 54050), (rho 54051), (rho 54052), (rho 54053), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part72_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart72 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg72 (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) k := by
  unfold Seg59.relationPart72 Seg59.relationRow360 Seg59.relationRow361 Seg59.relationRow362 Seg59.relationRow363 Seg59.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg72
  exact ⟨(rho 54054), (rho 54055), (rho 54056), (rho 54057), (rho 54058), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part73_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart73 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) (rho 54063)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg73 (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) k := by
  unfold Seg59.relationPart73 Seg59.relationRow365 Seg59.relationRow366 Seg59.relationRow367 Seg59.relationRow368 Seg59.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg73
  exact ⟨(rho 54059), (rho 54060), (rho 54061), (rho 54062), (rho 54063), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part74_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart74 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg74 (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) (rho 54063) k := by
  unfold Seg59.relationPart74 Seg59.relationRow370 Seg59.relationRow371 Seg59.relationRow372 Seg59.relationRow373 Seg59.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg74
  exact ⟨(rho 54064), (rho 54065), (rho 54066), (rho 54067), (rho 54068), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part75_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart75 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg75 (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) k := by
  unfold Seg59.relationPart75 Seg59.relationRow375 Seg59.relationRow376 Seg59.relationRow377 Seg59.relationRow378 Seg59.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg75
  exact ⟨(rho 54069), (rho 54070), (rho 54071), (rho 54072), (rho 54073), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part76_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart76 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg76 (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) k := by
  unfold Seg59.relationPart76 Seg59.relationRow380 Seg59.relationRow381 Seg59.relationRow382 Seg59.relationRow383 Seg59.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg76
  exact ⟨(rho 54074), (rho 54075), (rho 54076), (rho 54077), (rho 54078), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part77_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart77 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg77 (rho 54008) (rho 54013) (rho 54018) (rho 54023) (rho 54028) (rho 54033) (rho 54038) (rho 54043) (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) k := by
  unfold Seg59.relationPart77 Seg59.relationRow385 Seg59.relationRow386 Seg59.relationRow387 Seg59.relationRow388 Seg59.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg77
  exact ⟨(rho 54079), (rho 54080), (rho 54081), (rho 54082), (rho 54083), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part78_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart78 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg78 (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) k := by
  unfold Seg59.relationPart78 Seg59.relationRow390 Seg59.relationRow391 Seg59.relationRow392 Seg59.relationRow393 Seg59.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg78
  exact ⟨(rho 54084), (rho 54085), (rho 54086), (rho 54087), (rho 54088), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part79_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart79 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg79 (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) k := by
  unfold Seg59.relationPart79 Seg59.relationRow395 Seg59.relationRow396 Seg59.relationRow397 Seg59.relationRow398 Seg59.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg79
  exact ⟨(rho 54089), (rho 54090), (rho 54091), (rho 54092), (rho 54093), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part80_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart80 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg80 (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) k := by
  unfold Seg59.relationPart80 Seg59.relationRow400 Seg59.relationRow401 Seg59.relationRow402 Seg59.relationRow403 Seg59.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg80
  exact ⟨(rho 54094), (rho 54095), (rho 54096), (rho 54097), (rho 54098), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part81_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart81 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) (rho 54103)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg81 (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) k := by
  unfold Seg59.relationPart81 Seg59.relationRow405 Seg59.relationRow406 Seg59.relationRow407 Seg59.relationRow408 Seg59.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg81
  exact ⟨(rho 54099), (rho 54100), (rho 54101), (rho 54102), (rho 54103), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part82_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart82 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg82 (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) (rho 54103) k := by
  unfold Seg59.relationPart82 Seg59.relationRow410 Seg59.relationRow411 Seg59.relationRow412 Seg59.relationRow413 Seg59.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg82
  exact ⟨(rho 54104), (rho 54105), (rho 54106), (rho 54107), (rho 54108), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part83_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart83 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg83 (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) k := by
  unfold Seg59.relationPart83 Seg59.relationRow415 Seg59.relationRow416 Seg59.relationRow417 Seg59.relationRow418 Seg59.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg83
  exact ⟨(rho 54109), (rho 54110), (rho 54111), (rho 54112), (rho 54113), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part84_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart84 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg84 (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) k := by
  unfold Seg59.relationPart84 Seg59.relationRow420 Seg59.relationRow421 Seg59.relationRow422 Seg59.relationRow423 Seg59.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg84
  exact ⟨(rho 54114), (rho 54115), (rho 54116), (rho 54117), (rho 54118), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part85_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart85 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg85 (rho 54048) (rho 54053) (rho 54058) (rho 54063) (rho 54068) (rho 54073) (rho 54078) (rho 54083) (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) k := by
  unfold Seg59.relationPart85 Seg59.relationRow425 Seg59.relationRow426 Seg59.relationRow427 Seg59.relationRow428 Seg59.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg85
  exact ⟨(rho 54119), (rho 54120), (rho 54121), (rho 54122), (rho 54123), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part86_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart86 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg86 (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) k := by
  unfold Seg59.relationPart86 Seg59.relationRow430 Seg59.relationRow431 Seg59.relationRow432 Seg59.relationRow433 Seg59.relationRow434 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg86
  exact ⟨(rho 54124), (rho 54125), (rho 54126), (rho 54127), (rho 54128), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part87_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart87 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg87 (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) k := by
  unfold Seg59.relationPart87 Seg59.relationRow435 Seg59.relationRow436 Seg59.relationRow437 Seg59.relationRow438 Seg59.relationRow439 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg87
  exact ⟨(rho 54129), (rho 54130), (rho 54131), (rho 54132), (rho 54133), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part88_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart88 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg88 (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) k := by
  unfold Seg59.relationPart88 Seg59.relationRow440 Seg59.relationRow441 Seg59.relationRow442 Seg59.relationRow443 Seg59.relationRow444 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg88
  exact ⟨(rho 54134), (rho 54135), (rho 54136), (rho 54137), (rho 54138), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part89_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart89 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) (rho 54143)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg89 (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) k := by
  unfold Seg59.relationPart89 Seg59.relationRow445 Seg59.relationRow446 Seg59.relationRow447 Seg59.relationRow448 Seg59.relationRow449 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg89
  exact ⟨(rho 54139), (rho 54140), (rho 54141), (rho 54142), (rho 54143), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part90_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart90 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) (rho 54143) (rho 54148)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg90 (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) (rho 54143) k := by
  unfold Seg59.relationPart90 Seg59.relationRow450 Seg59.relationRow451 Seg59.relationRow452 Seg59.relationRow453 Seg59.relationRow454 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg90
  exact ⟨(rho 54144), (rho 54145), (rho 54146), (rho 54147), (rho 54148), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part91_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart91 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) (rho 54143) (rho 54148) (rho 54153)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg91 (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) (rho 54143) (rho 54148) k := by
  unfold Seg59.relationPart91 Seg59.relationRow455 Seg59.relationRow456 Seg59.relationRow457 Seg59.relationRow458 Seg59.relationRow459 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg91
  exact ⟨(rho 54149), (rho 54150), (rho 54151), (rho 54152), (rho 54153), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part92_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart92 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) (rho 54143) (rho 54148) (rho 54153) (rho 54158)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg92 (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) (rho 54143) (rho 54148) (rho 54153) k := by
  unfold Seg59.relationPart92 Seg59.relationRow460 Seg59.relationRow461 Seg59.relationRow462 Seg59.relationRow463 Seg59.relationRow464 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg92
  exact ⟨(rho 54154), (rho 54155), (rho 54156), (rho 54157), (rho 54158), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part93_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart93 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 54128) (rho 54133) (rho 54138) (rho 54143) (rho 54148) (rho 54153) (rho 54158) (rho 54163)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg93 (rho 54088) (rho 54093) (rho 54098) (rho 54103) (rho 54108) (rho 54113) (rho 54118) (rho 54123) (rho 54128) (rho 54133) (rho 54138) (rho 54143) (rho 54148) (rho 54153) (rho 54158) k := by
  unfold Seg59.relationPart93 Seg59.relationRow465 Seg59.relationRow466 Seg59.relationRow467 Seg59.relationRow468 Seg59.relationRow469 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg93
  exact ⟨(rho 54159), (rho 54160), (rho 54161), (rho 54162), (rho 54163), h0, h1, h2, h3, h4, hk⟩

theorem seg59_relation_to_statement_hash (rho : Nat → Seg59.F)
    (h : Seg59.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.relation
      (rho 2) (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 53353) (rho 53693)
      (fun w54128 w54133 w54138 w54143 w54148 w54153 w54158 w54163 =>
        w54128 = (rho 54128) ∧ w54133 = (rho 54133) ∧ w54138 = (rho 54138) ∧ w54143 = (rho 54143) ∧ w54148 = (rho 54148) ∧ w54153 = (rho 54153) ∧ w54158 = (rho 54158) ∧ w54163 = (rho 54163)) := by
  unfold Seg59.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61, p62, p63,
    p64, p65, p66, p67, p68, p69, p70, p71,
    p72, p73, p74, p75, p76, p77, p78, p79,
    p80, p81, p82, p83, p84, p85, p86, p87,
    p88, p89, p90, p91, p92, p93
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.relation
  apply seg59_part0_to_extracted rho p0
  apply seg59_part1_to_extracted rho p1
  apply seg59_part2_to_extracted rho p2
  apply seg59_part3_to_extracted rho p3
  apply seg59_part4_to_extracted rho p4
  apply seg59_part5_to_extracted rho p5
  apply seg59_part6_to_extracted rho p6
  apply seg59_part7_to_extracted rho p7
  apply seg59_part8_to_extracted rho p8
  apply seg59_part9_to_extracted rho p9
  apply seg59_part10_to_extracted rho p10
  apply seg59_part11_to_extracted rho p11
  apply seg59_part12_to_extracted rho p12
  apply seg59_part13_to_extracted rho p13
  apply seg59_part14_to_extracted rho p14
  apply seg59_part15_to_extracted rho p15
  apply seg59_part16_to_extracted rho p16
  apply seg59_part17_to_extracted rho p17
  apply seg59_part18_to_extracted rho p18
  apply seg59_part19_to_extracted rho p19
  apply seg59_part20_to_extracted rho p20
  apply seg59_part21_to_extracted rho p21
  apply seg59_part22_to_extracted rho p22
  apply seg59_part23_to_extracted rho p23
  apply seg59_part24_to_extracted rho p24
  apply seg59_part25_to_extracted rho p25
  apply seg59_part26_to_extracted rho p26
  apply seg59_part27_to_extracted rho p27
  apply seg59_part28_to_extracted rho p28
  apply seg59_part29_to_extracted rho p29
  apply seg59_part30_to_extracted rho p30
  apply seg59_part31_to_extracted rho p31
  apply seg59_part32_to_extracted rho p32
  apply seg59_part33_to_extracted rho p33
  apply seg59_part34_to_extracted rho p34
  apply seg59_part35_to_extracted rho p35
  apply seg59_part36_to_extracted rho p36
  apply seg59_part37_to_extracted rho p37
  apply seg59_part38_to_extracted rho p38
  apply seg59_part39_to_extracted rho p39
  apply seg59_part40_to_extracted rho p40
  apply seg59_part41_to_extracted rho p41
  apply seg59_part42_to_extracted rho p42
  apply seg59_part43_to_extracted rho p43
  apply seg59_part44_to_extracted rho p44
  apply seg59_part45_to_extracted rho p45
  apply seg59_part46_to_extracted rho p46
  apply seg59_part47_to_extracted rho p47
  apply seg59_part48_to_extracted rho p48
  apply seg59_part49_to_extracted rho p49
  apply seg59_part50_to_extracted rho p50
  apply seg59_part51_to_extracted rho p51
  apply seg59_part52_to_extracted rho p52
  apply seg59_part53_to_extracted rho p53
  apply seg59_part54_to_extracted rho p54
  apply seg59_part55_to_extracted rho p55
  apply seg59_part56_to_extracted rho p56
  apply seg59_part57_to_extracted rho p57
  apply seg59_part58_to_extracted rho p58
  apply seg59_part59_to_extracted rho p59
  apply seg59_part60_to_extracted rho p60
  apply seg59_part61_to_extracted rho p61
  apply seg59_part62_to_extracted rho p62
  apply seg59_part63_to_extracted rho p63
  apply seg59_part64_to_extracted rho p64
  apply seg59_part65_to_extracted rho p65
  apply seg59_part66_to_extracted rho p66
  apply seg59_part67_to_extracted rho p67
  apply seg59_part68_to_extracted rho p68
  apply seg59_part69_to_extracted rho p69
  apply seg59_part70_to_extracted rho p70
  apply seg59_part71_to_extracted rho p71
  apply seg59_part72_to_extracted rho p72
  apply seg59_part73_to_extracted rho p73
  apply seg59_part74_to_extracted rho p74
  apply seg59_part75_to_extracted rho p75
  apply seg59_part76_to_extracted rho p76
  apply seg59_part77_to_extracted rho p77
  apply seg59_part78_to_extracted rho p78
  apply seg59_part79_to_extracted rho p79
  apply seg59_part80_to_extracted rho p80
  apply seg59_part81_to_extracted rho p81
  apply seg59_part82_to_extracted rho p82
  apply seg59_part83_to_extracted rho p83
  apply seg59_part84_to_extracted rho p84
  apply seg59_part85_to_extracted rho p85
  apply seg59_part86_to_extracted rho p86
  apply seg59_part87_to_extracted rho p87
  apply seg59_part88_to_extracted rho p88
  apply seg59_part89_to_extracted rho p89
  apply seg59_part90_to_extracted rho p90
  apply seg59_part91_to_extracted rho p91
  apply seg59_part92_to_extracted rho p92
  apply seg59_part93_to_extracted rho p93
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem seg59_sound (rho : Nat → Seg59.F) (h : Seg59.relation rho) : Seg59.spec rho := by
  have hExtracted := seg59_relation_to_statement_hash rho h
  rcases Shieldd.GnarkFormal.Deployed.StatementHash.relation_sound_permSpec
      (rho 2) (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 53353) (rho 53693) _ hExtracted with
    ⟨w54128, w54133, w54138, w54143, w54148, w54153, w54158, w54163, hk, hperm⟩
  rcases hk with ⟨hw54128, hw54133, hw54138, hw54143, hw54148, hw54153, hw54158, hw54163⟩
  simpa [Seg59.spec, Specs.deployedSpec59, hw54128, hw54133, hw54138, hw54143, hw54148, hw54153, hw54158, hw54163] using hperm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
