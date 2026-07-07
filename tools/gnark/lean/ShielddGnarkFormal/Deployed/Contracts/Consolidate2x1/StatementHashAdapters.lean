import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg59
import ShielddGnarkFormal.Deployed.StatementHash.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg59_part0_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart0 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 52713) (rho 53053) (rho 53058)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg0 (rho 2) (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 52713) (rho 53053) k := by
  unfold Seg59.relationPart0 Seg59.relationRow0 Seg59.relationRow1 Seg59.relationRow2 Seg59.relationRow3 Seg59.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg0
  exact ⟨(rho 53054), (rho 53055), (rho 53056), (rho 53057), (rho 53058), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part1_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart1 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 52713) (rho 53053) (rho 53058) (rho 53063)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg1 (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 52713) (rho 53053) (rho 53058) k := by
  unfold Seg59.relationPart1 Seg59.relationRow5 Seg59.relationRow6 Seg59.relationRow7 Seg59.relationRow8 Seg59.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg1
  exact ⟨(rho 53059), (rho 53060), (rho 53061), (rho 53062), (rho 53063), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part2_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart2 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53058) (rho 53063) (rho 53068)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg2 (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 52713) (rho 53053) (rho 53058) (rho 53063) k := by
  unfold Seg59.relationPart2 Seg59.relationRow10 Seg59.relationRow11 Seg59.relationRow12 Seg59.relationRow13 Seg59.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg2
  exact ⟨(rho 53064), (rho 53065), (rho 53066), (rho 53067), (rho 53068), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part3_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart3 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53058) (rho 53063) (rho 53068) (rho 53073)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg3 (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53058) (rho 53063) (rho 53068) k := by
  unfold Seg59.relationPart3 Seg59.relationRow15 Seg59.relationRow16 Seg59.relationRow17 Seg59.relationRow18 Seg59.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg3
  exact ⟨(rho 53069), (rho 53070), (rho 53071), (rho 53072), (rho 53073), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part4_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart4 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg4 (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53058) (rho 53063) (rho 53068) (rho 53073) k := by
  unfold Seg59.relationPart4 Seg59.relationRow20 Seg59.relationRow21 Seg59.relationRow22 Seg59.relationRow23 Seg59.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg4
  exact ⟨(rho 53074), (rho 53075), (rho 53076), (rho 53077), (rho 53078), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part5_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart5 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 31446) (rho 31786) (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg5 (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) k := by
  unfold Seg59.relationPart5 Seg59.relationRow25 Seg59.relationRow26 Seg59.relationRow27 Seg59.relationRow28 Seg59.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg5
  exact ⟨(rho 53079), (rho 53080), (rho 53081), (rho 53082), (rho 53083), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part6_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart6 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg6 (rho 31446) (rho 31786) (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) k := by
  unfold Seg59.relationPart6 Seg59.relationRow30 Seg59.relationRow31 Seg59.relationRow32 Seg59.relationRow33 Seg59.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg6
  exact ⟨(rho 53084), (rho 53085), (rho 53086), (rho 53087), (rho 53088), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part7_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart7 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg7 (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) k := by
  unfold Seg59.relationPart7 Seg59.relationRow35 Seg59.relationRow36 Seg59.relationRow37 Seg59.relationRow38 Seg59.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg7
  exact ⟨(rho 53089), (rho 53090), (rho 53091), (rho 53092), (rho 53093), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part8_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart8 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg8 (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) k := by
  unfold Seg59.relationPart8 Seg59.relationRow40 Seg59.relationRow41 Seg59.relationRow42 Seg59.relationRow43 Seg59.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg8
  exact ⟨(rho 53094), (rho 53095), (rho 53096), (rho 53097), (rho 53098), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part9_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart9 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg9 (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) k := by
  unfold Seg59.relationPart9 Seg59.relationRow45 Seg59.relationRow46 Seg59.relationRow47 Seg59.relationRow48 Seg59.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg9
  exact ⟨(rho 53099), (rho 53100), (rho 53101), (rho 53102), (rho 53103), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part10_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart10 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) (rho 53108)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg10 (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) k := by
  unfold Seg59.relationPart10 Seg59.relationRow50 Seg59.relationRow51 Seg59.relationRow52 Seg59.relationRow53 Seg59.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg10
  exact ⟨(rho 53104), (rho 53105), (rho 53106), (rho 53107), (rho 53108), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part11_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart11 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg11 (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) (rho 53108) k := by
  unfold Seg59.relationPart11 Seg59.relationRow55 Seg59.relationRow56 Seg59.relationRow57 Seg59.relationRow58 Seg59.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg11
  exact ⟨(rho 53109), (rho 53110), (rho 53111), (rho 53112), (rho 53113), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part12_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart12 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg12 (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) k := by
  unfold Seg59.relationPart12 Seg59.relationRow60 Seg59.relationRow61 Seg59.relationRow62 Seg59.relationRow63 Seg59.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg12
  exact ⟨(rho 53114), (rho 53115), (rho 53116), (rho 53117), (rho 53118), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part13_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart13 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg13 (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) k := by
  unfold Seg59.relationPart13 Seg59.relationRow65 Seg59.relationRow66 Seg59.relationRow67 Seg59.relationRow68 Seg59.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg13
  exact ⟨(rho 53119), (rho 53120), (rho 53121), (rho 53122), (rho 53123), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part14_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart14 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg14 (rho 53058) (rho 53063) (rho 53068) (rho 53073) (rho 53078) (rho 53083) (rho 53088) (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) k := by
  unfold Seg59.relationPart14 Seg59.relationRow70 Seg59.relationRow71 Seg59.relationRow72 Seg59.relationRow73 Seg59.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg14
  exact ⟨(rho 53124), (rho 53125), (rho 53126), (rho 53127), (rho 53128), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part15_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart15 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg15 (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) k := by
  unfold Seg59.relationPart15 Seg59.relationRow75 Seg59.relationRow76 Seg59.relationRow77 Seg59.relationRow78 Seg59.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg15
  exact ⟨(rho 53129), (rho 53130), (rho 53131), (rho 53132), (rho 53133), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part16_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart16 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg16 (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) k := by
  unfold Seg59.relationPart16 Seg59.relationRow80 Seg59.relationRow81 Seg59.relationRow82 Seg59.relationRow83 Seg59.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg16
  exact ⟨(rho 53134), (rho 53135), (rho 53136), (rho 53137), (rho 53138), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part17_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart17 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg17 (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) k := by
  unfold Seg59.relationPart17 Seg59.relationRow85 Seg59.relationRow86 Seg59.relationRow87 Seg59.relationRow88 Seg59.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg17
  exact ⟨(rho 53139), (rho 53140), (rho 53141), (rho 53142), (rho 53143), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part18_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart18 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) (rho 53148)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg18 (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) k := by
  unfold Seg59.relationPart18 Seg59.relationRow90 Seg59.relationRow91 Seg59.relationRow92 Seg59.relationRow93 Seg59.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg18
  exact ⟨(rho 53144), (rho 53145), (rho 53146), (rho 53147), (rho 53148), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part19_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart19 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg19 (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) (rho 53148) k := by
  unfold Seg59.relationPart19 Seg59.relationRow95 Seg59.relationRow96 Seg59.relationRow97 Seg59.relationRow98 Seg59.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg19
  exact ⟨(rho 53149), (rho 53150), (rho 53151), (rho 53152), (rho 53153), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part20_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart20 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg20 (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) k := by
  unfold Seg59.relationPart20 Seg59.relationRow100 Seg59.relationRow101 Seg59.relationRow102 Seg59.relationRow103 Seg59.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg20
  exact ⟨(rho 53154), (rho 53155), (rho 53156), (rho 53157), (rho 53158), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part21_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart21 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg21 (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) k := by
  unfold Seg59.relationPart21 Seg59.relationRow105 Seg59.relationRow106 Seg59.relationRow107 Seg59.relationRow108 Seg59.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg21
  exact ⟨(rho 53159), (rho 53160), (rho 53161), (rho 53162), (rho 53163), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part22_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart22 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg22 (rho 53093) (rho 53098) (rho 53103) (rho 53108) (rho 53113) (rho 53118) (rho 53123) (rho 53128) (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) k := by
  unfold Seg59.relationPart22 Seg59.relationRow110 Seg59.relationRow111 Seg59.relationRow112 Seg59.relationRow113 Seg59.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg22
  exact ⟨(rho 53164), (rho 53165), (rho 53166), (rho 53167), (rho 53168), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part23_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart23 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg23 (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) k := by
  unfold Seg59.relationPart23 Seg59.relationRow115 Seg59.relationRow116 Seg59.relationRow117 Seg59.relationRow118 Seg59.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg23
  exact ⟨(rho 53169), (rho 53170), (rho 53171), (rho 53172), (rho 53173), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part24_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart24 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg24 (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) k := by
  unfold Seg59.relationPart24 Seg59.relationRow120 Seg59.relationRow121 Seg59.relationRow122 Seg59.relationRow123 Seg59.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg24
  exact ⟨(rho 53174), (rho 53175), (rho 53176), (rho 53177), (rho 53178), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part25_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart25 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg25 (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) k := by
  unfold Seg59.relationPart25 Seg59.relationRow125 Seg59.relationRow126 Seg59.relationRow127 Seg59.relationRow128 Seg59.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg25
  exact ⟨(rho 53179), (rho 53180), (rho 53181), (rho 53182), (rho 53183), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part26_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart26 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) (rho 53188)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg26 (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) k := by
  unfold Seg59.relationPart26 Seg59.relationRow130 Seg59.relationRow131 Seg59.relationRow132 Seg59.relationRow133 Seg59.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg26
  exact ⟨(rho 53184), (rho 53185), (rho 53186), (rho 53187), (rho 53188), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part27_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart27 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg27 (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) (rho 53188) k := by
  unfold Seg59.relationPart27 Seg59.relationRow135 Seg59.relationRow136 Seg59.relationRow137 Seg59.relationRow138 Seg59.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg27
  exact ⟨(rho 53189), (rho 53190), (rho 53191), (rho 53192), (rho 53193), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part28_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart28 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg28 (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) k := by
  unfold Seg59.relationPart28 Seg59.relationRow140 Seg59.relationRow141 Seg59.relationRow142 Seg59.relationRow143 Seg59.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg28
  exact ⟨(rho 53194), (rho 53195), (rho 53196), (rho 53197), (rho 53198), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part29_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart29 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg29 (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) k := by
  unfold Seg59.relationPart29 Seg59.relationRow145 Seg59.relationRow146 Seg59.relationRow147 Seg59.relationRow148 Seg59.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg29
  exact ⟨(rho 53199), (rho 53200), (rho 53201), (rho 53202), (rho 53203), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part30_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart30 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg30 (rho 53133) (rho 53138) (rho 53143) (rho 53148) (rho 53153) (rho 53158) (rho 53163) (rho 53168) (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) k := by
  unfold Seg59.relationPart30 Seg59.relationRow150 Seg59.relationRow151 Seg59.relationRow152 Seg59.relationRow153 Seg59.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg30
  exact ⟨(rho 53204), (rho 53205), (rho 53206), (rho 53207), (rho 53208), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part31_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart31 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg31 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) k := by
  unfold Seg59.relationPart31 Seg59.relationRow155 Seg59.relationRow156 Seg59.relationRow157 Seg59.relationRow158 Seg59.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg31
  exact ⟨(rho 53209), (rho 53210), (rho 53211), (rho 53212), (rho 53213), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part32_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart32 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg32 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) k := by
  unfold Seg59.relationPart32 Seg59.relationRow160 Seg59.relationRow161 Seg59.relationRow162 Seg59.relationRow163 Seg59.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg32
  exact ⟨(rho 53214), (rho 53215), (rho 53216), (rho 53217), (rho 53218), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part33_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart33 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg33 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) k := by
  unfold Seg59.relationPart33 Seg59.relationRow165 Seg59.relationRow166 Seg59.relationRow167 Seg59.relationRow168 Seg59.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg33
  exact ⟨(rho 53219), (rho 53220), (rho 53221), (rho 53222), (rho 53223), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part34_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart34 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg34 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) k := by
  unfold Seg59.relationPart34 Seg59.relationRow170 Seg59.relationRow171 Seg59.relationRow172 Seg59.relationRow173 Seg59.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg34
  exact ⟨(rho 53224), (rho 53225), (rho 53226), (rho 53227), (rho 53228), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part35_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart35 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg35 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) k := by
  unfold Seg59.relationPart35 Seg59.relationRow175 Seg59.relationRow176 Seg59.relationRow177 Seg59.relationRow178 Seg59.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg35
  exact ⟨(rho 53229), (rho 53230), (rho 53231), (rho 53232), (rho 53233), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part36_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart36 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg36 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) k := by
  unfold Seg59.relationPart36 Seg59.relationRow180 Seg59.relationRow181 Seg59.relationRow182 Seg59.relationRow183 Seg59.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg36
  exact ⟨(rho 53234), (rho 53235), (rho 53236), (rho 53237), (rho 53238), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part37_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart37 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg37 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) k := by
  unfold Seg59.relationPart37 Seg59.relationRow185 Seg59.relationRow186 Seg59.relationRow187 Seg59.relationRow188 Seg59.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg37
  exact ⟨(rho 53239), (rho 53240), (rho 53241), (rho 53242), (rho 53243), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part38_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart38 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg38 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) k := by
  unfold Seg59.relationPart38 Seg59.relationRow190 Seg59.relationRow191 Seg59.relationRow192 Seg59.relationRow193 Seg59.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg38
  exact ⟨(rho 53244), (rho 53245), (rho 53246), (rho 53247), (rho 53248), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part39_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart39 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg39 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) k := by
  unfold Seg59.relationPart39 Seg59.relationRow195 Seg59.relationRow196 Seg59.relationRow197 Seg59.relationRow198 Seg59.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg39
  exact ⟨(rho 53249), (rho 53250), (rho 53251), (rho 53252), (rho 53253), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part40_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart40 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg40 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) k := by
  unfold Seg59.relationPart40 Seg59.relationRow200 Seg59.relationRow201 Seg59.relationRow202 Seg59.relationRow203 Seg59.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg40
  exact ⟨(rho 53254), (rho 53255), (rho 53256), (rho 53257), (rho 53258), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part41_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart41 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg41 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) k := by
  unfold Seg59.relationPart41 Seg59.relationRow205 Seg59.relationRow206 Seg59.relationRow207 Seg59.relationRow208 Seg59.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg41
  exact ⟨(rho 53259), (rho 53260), (rho 53261), (rho 53262), (rho 53263), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part42_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart42 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg42 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) k := by
  unfold Seg59.relationPart42 Seg59.relationRow210 Seg59.relationRow211 Seg59.relationRow212 Seg59.relationRow213 Seg59.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg42
  exact ⟨(rho 53264), (rho 53265), (rho 53266), (rho 53267), (rho 53268), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part43_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart43 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg43 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) k := by
  unfold Seg59.relationPart43 Seg59.relationRow215 Seg59.relationRow216 Seg59.relationRow217 Seg59.relationRow218 Seg59.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg43
  exact ⟨(rho 53269), (rho 53270), (rho 53271), (rho 53272), (rho 53273), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part44_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart44 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg44 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) k := by
  unfold Seg59.relationPart44 Seg59.relationRow220 Seg59.relationRow221 Seg59.relationRow222 Seg59.relationRow223 Seg59.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg44
  exact ⟨(rho 53274), (rho 53275), (rho 53276), (rho 53277), (rho 53278), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part45_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart45 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg45 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) k := by
  unfold Seg59.relationPart45 Seg59.relationRow225 Seg59.relationRow226 Seg59.relationRow227 Seg59.relationRow228 Seg59.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg45
  exact ⟨(rho 53279), (rho 53280), (rho 53281), (rho 53282), (rho 53283), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part46_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart46 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg46 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) k := by
  unfold Seg59.relationPart46 Seg59.relationRow230 Seg59.relationRow231 Seg59.relationRow232 Seg59.relationRow233 Seg59.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg46
  exact ⟨(rho 53284), (rho 53285), (rho 53286), (rho 53287), (rho 53288), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part47_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart47 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg47 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) k := by
  unfold Seg59.relationPart47 Seg59.relationRow235 Seg59.relationRow236 Seg59.relationRow237 Seg59.relationRow238 Seg59.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg47
  exact ⟨(rho 53289), (rho 53290), (rho 53291), (rho 53292), (rho 53293), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part48_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart48 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg48 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) k := by
  unfold Seg59.relationPart48 Seg59.relationRow240 Seg59.relationRow241 Seg59.relationRow242 Seg59.relationRow243 Seg59.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg48
  exact ⟨(rho 53294), (rho 53295), (rho 53296), (rho 53297), (rho 53298), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part49_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart49 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg49 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) k := by
  unfold Seg59.relationPart49 Seg59.relationRow245 Seg59.relationRow246 Seg59.relationRow247 Seg59.relationRow248 Seg59.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg49
  exact ⟨(rho 53299), (rho 53300), (rho 53301), (rho 53302), (rho 53303), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part50_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart50 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg50 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) k := by
  unfold Seg59.relationPart50 Seg59.relationRow250 Seg59.relationRow251 Seg59.relationRow252 Seg59.relationRow253 Seg59.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg50
  exact ⟨(rho 53304), (rho 53305), (rho 53306), (rho 53307), (rho 53308), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part51_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart51 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg51 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) k := by
  unfold Seg59.relationPart51 Seg59.relationRow255 Seg59.relationRow256 Seg59.relationRow257 Seg59.relationRow258 Seg59.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg51
  exact ⟨(rho 53309), (rho 53310), (rho 53311), (rho 53312), (rho 53313), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part52_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart52 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg52 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) k := by
  unfold Seg59.relationPart52 Seg59.relationRow260 Seg59.relationRow261 Seg59.relationRow262 Seg59.relationRow263 Seg59.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg52
  exact ⟨(rho 53314), (rho 53315), (rho 53316), (rho 53317), (rho 53318), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part53_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart53 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg53 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) k := by
  unfold Seg59.relationPart53 Seg59.relationRow265 Seg59.relationRow266 Seg59.relationRow267 Seg59.relationRow268 Seg59.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg53
  exact ⟨(rho 53319), (rho 53320), (rho 53321), (rho 53322), (rho 53323), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part54_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart54 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg54 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) k := by
  unfold Seg59.relationPart54 Seg59.relationRow270 Seg59.relationRow271 Seg59.relationRow272 Seg59.relationRow273 Seg59.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg54
  exact ⟨(rho 53324), (rho 53325), (rho 53326), (rho 53327), (rho 53328), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part55_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart55 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg55 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) k := by
  unfold Seg59.relationPart55 Seg59.relationRow275 Seg59.relationRow276 Seg59.relationRow277 Seg59.relationRow278 Seg59.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg55
  exact ⟨(rho 53329), (rho 53330), (rho 53331), (rho 53332), (rho 53333), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part56_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart56 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg56 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) k := by
  unfold Seg59.relationPart56 Seg59.relationRow280 Seg59.relationRow281 Seg59.relationRow282 Seg59.relationRow283 Seg59.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg56
  exact ⟨(rho 53334), (rho 53335), (rho 53336), (rho 53337), (rho 53338), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part57_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart57 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg57 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) k := by
  unfold Seg59.relationPart57 Seg59.relationRow285 Seg59.relationRow286 Seg59.relationRow287 Seg59.relationRow288 Seg59.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg57
  exact ⟨(rho 53339), (rho 53340), (rho 53341), (rho 53342), (rho 53343), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part58_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart58 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg58 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) k := by
  unfold Seg59.relationPart58 Seg59.relationRow290 Seg59.relationRow291 Seg59.relationRow292 Seg59.relationRow293 Seg59.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg58
  exact ⟨(rho 53344), (rho 53345), (rho 53346), (rho 53347), (rho 53348), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part59_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart59 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg59 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) k := by
  unfold Seg59.relationPart59 Seg59.relationRow295 Seg59.relationRow296 Seg59.relationRow297 Seg59.relationRow298 Seg59.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg59
  exact ⟨(rho 53349), (rho 53350), (rho 53351), (rho 53352), (rho 53353), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part60_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart60 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg60 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) k := by
  unfold Seg59.relationPart60 Seg59.relationRow300 Seg59.relationRow301 Seg59.relationRow302 Seg59.relationRow303 Seg59.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg60
  exact ⟨(rho 53354), (rho 53355), (rho 53356), (rho 53357), (rho 53358), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part61_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart61 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg61 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) k := by
  unfold Seg59.relationPart61 Seg59.relationRow305 Seg59.relationRow306 Seg59.relationRow307 Seg59.relationRow308 Seg59.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg61
  exact ⟨(rho 53359), (rho 53360), (rho 53361), (rho 53362), (rho 53363), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part62_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart62 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg62 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) k := by
  unfold Seg59.relationPart62 Seg59.relationRow310 Seg59.relationRow311 Seg59.relationRow312 Seg59.relationRow313 Seg59.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg62
  exact ⟨(rho 53364), (rho 53365), (rho 53366), (rho 53367), (rho 53368), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part63_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart63 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg63 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) k := by
  unfold Seg59.relationPart63 Seg59.relationRow315 Seg59.relationRow316 Seg59.relationRow317 Seg59.relationRow318 Seg59.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg63
  exact ⟨(rho 53369), (rho 53370), (rho 53371), (rho 53372), (rho 53373), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part64_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart64 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg64 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) k := by
  unfold Seg59.relationPart64 Seg59.relationRow320 Seg59.relationRow321 Seg59.relationRow322 Seg59.relationRow323 Seg59.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg64
  exact ⟨(rho 53374), (rho 53375), (rho 53376), (rho 53377), (rho 53378), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part65_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart65 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) (rho 53383)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg65 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) k := by
  unfold Seg59.relationPart65 Seg59.relationRow325 Seg59.relationRow326 Seg59.relationRow327 Seg59.relationRow328 Seg59.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg65
  exact ⟨(rho 53379), (rho 53380), (rho 53381), (rho 53382), (rho 53383), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part66_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart66 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg66 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) (rho 53383) k := by
  unfold Seg59.relationPart66 Seg59.relationRow330 Seg59.relationRow331 Seg59.relationRow332 Seg59.relationRow333 Seg59.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg66
  exact ⟨(rho 53384), (rho 53385), (rho 53386), (rho 53387), (rho 53388), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part67_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart67 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg67 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) k := by
  unfold Seg59.relationPart67 Seg59.relationRow335 Seg59.relationRow336 Seg59.relationRow337 Seg59.relationRow338 Seg59.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg67
  exact ⟨(rho 53389), (rho 53390), (rho 53391), (rho 53392), (rho 53393), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part68_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart68 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg68 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) k := by
  unfold Seg59.relationPart68 Seg59.relationRow340 Seg59.relationRow341 Seg59.relationRow342 Seg59.relationRow343 Seg59.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg68
  exact ⟨(rho 53394), (rho 53395), (rho 53396), (rho 53397), (rho 53398), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part69_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart69 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg69 (rho 53173) (rho 53178) (rho 53183) (rho 53188) (rho 53193) (rho 53198) (rho 53203) (rho 53208) (rho 53213) (rho 53218) (rho 53223) (rho 53228) (rho 53233) (rho 53238) (rho 53243) (rho 53248) (rho 53253) (rho 53258) (rho 53263) (rho 53268) (rho 53273) (rho 53278) (rho 53283) (rho 53288) (rho 53293) (rho 53298) (rho 53303) (rho 53308) (rho 53313) (rho 53318) (rho 53323) (rho 53328) (rho 53333) (rho 53338) (rho 53343) (rho 53348) (rho 53353) (rho 53358) (rho 53363) (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) k := by
  unfold Seg59.relationPart69 Seg59.relationRow345 Seg59.relationRow346 Seg59.relationRow347 Seg59.relationRow348 Seg59.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg69
  exact ⟨(rho 53399), (rho 53400), (rho 53401), (rho 53402), (rho 53403), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part70_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart70 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg70 (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) k := by
  unfold Seg59.relationPart70 Seg59.relationRow350 Seg59.relationRow351 Seg59.relationRow352 Seg59.relationRow353 Seg59.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg70
  exact ⟨(rho 53404), (rho 53405), (rho 53406), (rho 53407), (rho 53408), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part71_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart71 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg71 (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) k := by
  unfold Seg59.relationPart71 Seg59.relationRow355 Seg59.relationRow356 Seg59.relationRow357 Seg59.relationRow358 Seg59.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg71
  exact ⟨(rho 53409), (rho 53410), (rho 53411), (rho 53412), (rho 53413), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part72_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart72 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg72 (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) k := by
  unfold Seg59.relationPart72 Seg59.relationRow360 Seg59.relationRow361 Seg59.relationRow362 Seg59.relationRow363 Seg59.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg72
  exact ⟨(rho 53414), (rho 53415), (rho 53416), (rho 53417), (rho 53418), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part73_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart73 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) (rho 53423)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg73 (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) k := by
  unfold Seg59.relationPart73 Seg59.relationRow365 Seg59.relationRow366 Seg59.relationRow367 Seg59.relationRow368 Seg59.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg73
  exact ⟨(rho 53419), (rho 53420), (rho 53421), (rho 53422), (rho 53423), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part74_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart74 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg74 (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) (rho 53423) k := by
  unfold Seg59.relationPart74 Seg59.relationRow370 Seg59.relationRow371 Seg59.relationRow372 Seg59.relationRow373 Seg59.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg74
  exact ⟨(rho 53424), (rho 53425), (rho 53426), (rho 53427), (rho 53428), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part75_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart75 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg75 (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) k := by
  unfold Seg59.relationPart75 Seg59.relationRow375 Seg59.relationRow376 Seg59.relationRow377 Seg59.relationRow378 Seg59.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg75
  exact ⟨(rho 53429), (rho 53430), (rho 53431), (rho 53432), (rho 53433), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part76_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart76 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg76 (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) k := by
  unfold Seg59.relationPart76 Seg59.relationRow380 Seg59.relationRow381 Seg59.relationRow382 Seg59.relationRow383 Seg59.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg76
  exact ⟨(rho 53434), (rho 53435), (rho 53436), (rho 53437), (rho 53438), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part77_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart77 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg77 (rho 53368) (rho 53373) (rho 53378) (rho 53383) (rho 53388) (rho 53393) (rho 53398) (rho 53403) (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) k := by
  unfold Seg59.relationPart77 Seg59.relationRow385 Seg59.relationRow386 Seg59.relationRow387 Seg59.relationRow388 Seg59.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg77
  exact ⟨(rho 53439), (rho 53440), (rho 53441), (rho 53442), (rho 53443), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part78_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart78 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg78 (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) k := by
  unfold Seg59.relationPart78 Seg59.relationRow390 Seg59.relationRow391 Seg59.relationRow392 Seg59.relationRow393 Seg59.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg78
  exact ⟨(rho 53444), (rho 53445), (rho 53446), (rho 53447), (rho 53448), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part79_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart79 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg79 (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) k := by
  unfold Seg59.relationPart79 Seg59.relationRow395 Seg59.relationRow396 Seg59.relationRow397 Seg59.relationRow398 Seg59.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg79
  exact ⟨(rho 53449), (rho 53450), (rho 53451), (rho 53452), (rho 53453), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part80_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart80 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg80 (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) k := by
  unfold Seg59.relationPart80 Seg59.relationRow400 Seg59.relationRow401 Seg59.relationRow402 Seg59.relationRow403 Seg59.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg80
  exact ⟨(rho 53454), (rho 53455), (rho 53456), (rho 53457), (rho 53458), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part81_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart81 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) (rho 53463)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg81 (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) k := by
  unfold Seg59.relationPart81 Seg59.relationRow405 Seg59.relationRow406 Seg59.relationRow407 Seg59.relationRow408 Seg59.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg81
  exact ⟨(rho 53459), (rho 53460), (rho 53461), (rho 53462), (rho 53463), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part82_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart82 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg82 (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) (rho 53463) k := by
  unfold Seg59.relationPart82 Seg59.relationRow410 Seg59.relationRow411 Seg59.relationRow412 Seg59.relationRow413 Seg59.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg82
  exact ⟨(rho 53464), (rho 53465), (rho 53466), (rho 53467), (rho 53468), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part83_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart83 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg83 (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) k := by
  unfold Seg59.relationPart83 Seg59.relationRow415 Seg59.relationRow416 Seg59.relationRow417 Seg59.relationRow418 Seg59.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg83
  exact ⟨(rho 53469), (rho 53470), (rho 53471), (rho 53472), (rho 53473), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part84_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart84 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg84 (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) k := by
  unfold Seg59.relationPart84 Seg59.relationRow420 Seg59.relationRow421 Seg59.relationRow422 Seg59.relationRow423 Seg59.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg84
  exact ⟨(rho 53474), (rho 53475), (rho 53476), (rho 53477), (rho 53478), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part85_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart85 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg85 (rho 53408) (rho 53413) (rho 53418) (rho 53423) (rho 53428) (rho 53433) (rho 53438) (rho 53443) (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) k := by
  unfold Seg59.relationPart85 Seg59.relationRow425 Seg59.relationRow426 Seg59.relationRow427 Seg59.relationRow428 Seg59.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg85
  exact ⟨(rho 53479), (rho 53480), (rho 53481), (rho 53482), (rho 53483), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part86_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart86 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg86 (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) k := by
  unfold Seg59.relationPart86 Seg59.relationRow430 Seg59.relationRow431 Seg59.relationRow432 Seg59.relationRow433 Seg59.relationRow434 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg86
  exact ⟨(rho 53484), (rho 53485), (rho 53486), (rho 53487), (rho 53488), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part87_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart87 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg87 (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) k := by
  unfold Seg59.relationPart87 Seg59.relationRow435 Seg59.relationRow436 Seg59.relationRow437 Seg59.relationRow438 Seg59.relationRow439 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg87
  exact ⟨(rho 53489), (rho 53490), (rho 53491), (rho 53492), (rho 53493), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part88_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart88 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg88 (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) k := by
  unfold Seg59.relationPart88 Seg59.relationRow440 Seg59.relationRow441 Seg59.relationRow442 Seg59.relationRow443 Seg59.relationRow444 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg88
  exact ⟨(rho 53494), (rho 53495), (rho 53496), (rho 53497), (rho 53498), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part89_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart89 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) (rho 53503)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg89 (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) k := by
  unfold Seg59.relationPart89 Seg59.relationRow445 Seg59.relationRow446 Seg59.relationRow447 Seg59.relationRow448 Seg59.relationRow449 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg89
  exact ⟨(rho 53499), (rho 53500), (rho 53501), (rho 53502), (rho 53503), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part90_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart90 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) (rho 53503) (rho 53508)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg90 (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) (rho 53503) k := by
  unfold Seg59.relationPart90 Seg59.relationRow450 Seg59.relationRow451 Seg59.relationRow452 Seg59.relationRow453 Seg59.relationRow454 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg90
  exact ⟨(rho 53504), (rho 53505), (rho 53506), (rho 53507), (rho 53508), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part91_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart91 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) (rho 53503) (rho 53508) (rho 53513)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg91 (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) (rho 53503) (rho 53508) k := by
  unfold Seg59.relationPart91 Seg59.relationRow455 Seg59.relationRow456 Seg59.relationRow457 Seg59.relationRow458 Seg59.relationRow459 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg91
  exact ⟨(rho 53509), (rho 53510), (rho 53511), (rho 53512), (rho 53513), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part92_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart92 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) (rho 53503) (rho 53508) (rho 53513) (rho 53518)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg92 (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) (rho 53503) (rho 53508) (rho 53513) k := by
  unfold Seg59.relationPart92 Seg59.relationRow460 Seg59.relationRow461 Seg59.relationRow462 Seg59.relationRow463 Seg59.relationRow464 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg92
  exact ⟨(rho 53514), (rho 53515), (rho 53516), (rho 53517), (rho 53518), h0, h1, h2, h3, h4, hk⟩

theorem seg59_part93_to_extracted (rho : Nat → Seg59.F)
    (h : Seg59.relationPart93 rho)
    {k : Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Seg59.F → Prop} (hk : k (rho 53488) (rho 53493) (rho 53498) (rho 53503) (rho 53508) (rho 53513) (rho 53518) (rho 53523)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg93 (rho 53448) (rho 53453) (rho 53458) (rho 53463) (rho 53468) (rho 53473) (rho 53478) (rho 53483) (rho 53488) (rho 53493) (rho 53498) (rho 53503) (rho 53508) (rho 53513) (rho 53518) k := by
  unfold Seg59.relationPart93 Seg59.relationRow465 Seg59.relationRow466 Seg59.relationRow467 Seg59.relationRow468 Seg59.relationRow469 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg93
  exact ⟨(rho 53519), (rho 53520), (rho 53521), (rho 53522), (rho 53523), h0, h1, h2, h3, h4, hk⟩

theorem seg59_relation_to_statement_hash (rho : Nat → Seg59.F)
    (h : Seg59.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.relation
      (rho 2) (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 52713) (rho 53053)
      (fun w54128 w54133 w54138 w54143 w54148 w54153 w54158 w54163 =>
        w54128 = (rho 53488) ∧ w54133 = (rho 53493) ∧ w54138 = (rho 53498) ∧ w54143 = (rho 53503) ∧ w54148 = (rho 53508) ∧ w54153 = (rho 53513) ∧ w54158 = (rho 53518) ∧ w54163 = (rho 53523)) := by
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
      (rho 2) (rho 1637) (rho 1642) (rho 1647) (rho 1652) (rho 12746) (rho 13086) (rho 20337) (rho 20342) (rho 20347) (rho 20352) (rho 31446) (rho 31786) (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742) (rho 52713) (rho 53053) _ hExtracted with
    ⟨w54128, w54133, w54138, w54143, w54148, w54153, w54158, w54163, hk, hperm⟩
  rcases hk with ⟨hw54128, hw54133, hw54138, hw54143, hw54148, hw54153, hw54158, hw54163⟩
  simpa [Seg59.spec, Specs.deployedSpec59, hw54128, hw54133, hw54138, hw54143, hw54148, hw54153, hw54158, hw54163] using hperm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
