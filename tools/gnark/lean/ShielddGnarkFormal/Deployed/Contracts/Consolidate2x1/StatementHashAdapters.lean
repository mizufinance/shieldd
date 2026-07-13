import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg53
import ShielddGnarkFormal.Deployed.StatementHash.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg53_part0_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart0 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264) (rho 31269) (rho 33829) (rho 34169) (rho 34174)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg0 (rho 2) (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264) (rho 31269) (rho 33829) (rho 34169) k := by
  unfold Seg53.relationPart0 Seg53.relationRow0 Seg53.relationRow1 Seg53.relationRow2 Seg53.relationRow3 Seg53.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg0
  exact ⟨(rho 34170), (rho 34171), (rho 34172), (rho 34173), (rho 34174), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part1_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart1 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 33829) (rho 34169) (rho 34174) (rho 34179)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg1 (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264) (rho 31269) (rho 33829) (rho 34169) (rho 34174) k := by
  unfold Seg53.relationPart1 Seg53.relationRow5 Seg53.relationRow6 Seg53.relationRow7 Seg53.relationRow8 Seg53.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg1
  exact ⟨(rho 34175), (rho 34176), (rho 34177), (rho 34178), (rho 34179), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part2_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart2 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 34174) (rho 34179) (rho 34184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg2 (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 33829) (rho 34169) (rho 34174) (rho 34179) k := by
  unfold Seg53.relationPart2 Seg53.relationRow10 Seg53.relationRow11 Seg53.relationRow12 Seg53.relationRow13 Seg53.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg2
  exact ⟨(rho 34180), (rho 34181), (rho 34182), (rho 34183), (rho 34184), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part3_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart3 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 34174) (rho 34179) (rho 34184) (rho 34189)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg3 (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 34174) (rho 34179) (rho 34184) k := by
  unfold Seg53.relationPart3 Seg53.relationRow15 Seg53.relationRow16 Seg53.relationRow17 Seg53.relationRow18 Seg53.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg3
  exact ⟨(rho 34185), (rho 34186), (rho 34187), (rho 34188), (rho 34189), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part4_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart4 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg4 (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 34174) (rho 34179) (rho 34184) (rho 34189) k := by
  unfold Seg53.relationPart4 Seg53.relationRow20 Seg53.relationRow21 Seg53.relationRow22 Seg53.relationRow23 Seg53.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg4
  exact ⟨(rho 34190), (rho 34191), (rho 34192), (rho 34193), (rho 34194), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part5_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart5 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 30492) (rho 30832) (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg5 (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) k := by
  unfold Seg53.relationPart5 Seg53.relationRow25 Seg53.relationRow26 Seg53.relationRow27 Seg53.relationRow28 Seg53.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg5
  exact ⟨(rho 34195), (rho 34196), (rho 34197), (rho 34198), (rho 34199), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part6_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart6 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg6 (rho 30492) (rho 30832) (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) k := by
  unfold Seg53.relationPart6 Seg53.relationRow30 Seg53.relationRow31 Seg53.relationRow32 Seg53.relationRow33 Seg53.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg6
  exact ⟨(rho 34200), (rho 34201), (rho 34202), (rho 34203), (rho 34204), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part7_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart7 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg7 (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) k := by
  unfold Seg53.relationPart7 Seg53.relationRow35 Seg53.relationRow36 Seg53.relationRow37 Seg53.relationRow38 Seg53.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg7
  exact ⟨(rho 34205), (rho 34206), (rho 34207), (rho 34208), (rho 34209), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part8_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart8 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg8 (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) k := by
  unfold Seg53.relationPart8 Seg53.relationRow40 Seg53.relationRow41 Seg53.relationRow42 Seg53.relationRow43 Seg53.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg8
  exact ⟨(rho 34210), (rho 34211), (rho 34212), (rho 34213), (rho 34214), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part9_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart9 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg9 (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) k := by
  unfold Seg53.relationPart9 Seg53.relationRow45 Seg53.relationRow46 Seg53.relationRow47 Seg53.relationRow48 Seg53.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg9
  exact ⟨(rho 34215), (rho 34216), (rho 34217), (rho 34218), (rho 34219), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part10_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart10 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) (rho 34224)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg10 (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) k := by
  unfold Seg53.relationPart10 Seg53.relationRow50 Seg53.relationRow51 Seg53.relationRow52 Seg53.relationRow53 Seg53.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg10
  exact ⟨(rho 34220), (rho 34221), (rho 34222), (rho 34223), (rho 34224), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part11_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart11 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg11 (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) (rho 34224) k := by
  unfold Seg53.relationPart11 Seg53.relationRow55 Seg53.relationRow56 Seg53.relationRow57 Seg53.relationRow58 Seg53.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg11
  exact ⟨(rho 34225), (rho 34226), (rho 34227), (rho 34228), (rho 34229), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part12_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart12 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg12 (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) k := by
  unfold Seg53.relationPart12 Seg53.relationRow60 Seg53.relationRow61 Seg53.relationRow62 Seg53.relationRow63 Seg53.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg12
  exact ⟨(rho 34230), (rho 34231), (rho 34232), (rho 34233), (rho 34234), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part13_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart13 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg13 (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) k := by
  unfold Seg53.relationPart13 Seg53.relationRow65 Seg53.relationRow66 Seg53.relationRow67 Seg53.relationRow68 Seg53.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg13
  exact ⟨(rho 34235), (rho 34236), (rho 34237), (rho 34238), (rho 34239), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part14_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart14 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg14 (rho 34174) (rho 34179) (rho 34184) (rho 34189) (rho 34194) (rho 34199) (rho 34204) (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) k := by
  unfold Seg53.relationPart14 Seg53.relationRow70 Seg53.relationRow71 Seg53.relationRow72 Seg53.relationRow73 Seg53.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg14
  exact ⟨(rho 34240), (rho 34241), (rho 34242), (rho 34243), (rho 34244), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part15_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart15 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg15 (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) k := by
  unfold Seg53.relationPart15 Seg53.relationRow75 Seg53.relationRow76 Seg53.relationRow77 Seg53.relationRow78 Seg53.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg15
  exact ⟨(rho 34245), (rho 34246), (rho 34247), (rho 34248), (rho 34249), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part16_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart16 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg16 (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) k := by
  unfold Seg53.relationPart16 Seg53.relationRow80 Seg53.relationRow81 Seg53.relationRow82 Seg53.relationRow83 Seg53.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg16
  exact ⟨(rho 34250), (rho 34251), (rho 34252), (rho 34253), (rho 34254), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part17_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart17 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg17 (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) k := by
  unfold Seg53.relationPart17 Seg53.relationRow85 Seg53.relationRow86 Seg53.relationRow87 Seg53.relationRow88 Seg53.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg17
  exact ⟨(rho 34255), (rho 34256), (rho 34257), (rho 34258), (rho 34259), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part18_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart18 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) (rho 34264)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg18 (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) k := by
  unfold Seg53.relationPart18 Seg53.relationRow90 Seg53.relationRow91 Seg53.relationRow92 Seg53.relationRow93 Seg53.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg18
  exact ⟨(rho 34260), (rho 34261), (rho 34262), (rho 34263), (rho 34264), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part19_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart19 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg19 (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) (rho 34264) k := by
  unfold Seg53.relationPart19 Seg53.relationRow95 Seg53.relationRow96 Seg53.relationRow97 Seg53.relationRow98 Seg53.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg19
  exact ⟨(rho 34265), (rho 34266), (rho 34267), (rho 34268), (rho 34269), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part20_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart20 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg20 (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) k := by
  unfold Seg53.relationPart20 Seg53.relationRow100 Seg53.relationRow101 Seg53.relationRow102 Seg53.relationRow103 Seg53.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg20
  exact ⟨(rho 34270), (rho 34271), (rho 34272), (rho 34273), (rho 34274), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part21_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart21 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg21 (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) k := by
  unfold Seg53.relationPart21 Seg53.relationRow105 Seg53.relationRow106 Seg53.relationRow107 Seg53.relationRow108 Seg53.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg21
  exact ⟨(rho 34275), (rho 34276), (rho 34277), (rho 34278), (rho 34279), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part22_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart22 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg22 (rho 34209) (rho 34214) (rho 34219) (rho 34224) (rho 34229) (rho 34234) (rho 34239) (rho 34244) (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) k := by
  unfold Seg53.relationPart22 Seg53.relationRow110 Seg53.relationRow111 Seg53.relationRow112 Seg53.relationRow113 Seg53.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg22
  exact ⟨(rho 34280), (rho 34281), (rho 34282), (rho 34283), (rho 34284), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part23_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart23 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg23 (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) k := by
  unfold Seg53.relationPart23 Seg53.relationRow115 Seg53.relationRow116 Seg53.relationRow117 Seg53.relationRow118 Seg53.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg23
  exact ⟨(rho 34285), (rho 34286), (rho 34287), (rho 34288), (rho 34289), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part24_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart24 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg24 (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) k := by
  unfold Seg53.relationPart24 Seg53.relationRow120 Seg53.relationRow121 Seg53.relationRow122 Seg53.relationRow123 Seg53.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg24
  exact ⟨(rho 34290), (rho 34291), (rho 34292), (rho 34293), (rho 34294), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part25_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart25 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg25 (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) k := by
  unfold Seg53.relationPart25 Seg53.relationRow125 Seg53.relationRow126 Seg53.relationRow127 Seg53.relationRow128 Seg53.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg25
  exact ⟨(rho 34295), (rho 34296), (rho 34297), (rho 34298), (rho 34299), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part26_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart26 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) (rho 34304)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg26 (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) k := by
  unfold Seg53.relationPart26 Seg53.relationRow130 Seg53.relationRow131 Seg53.relationRow132 Seg53.relationRow133 Seg53.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg26
  exact ⟨(rho 34300), (rho 34301), (rho 34302), (rho 34303), (rho 34304), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part27_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart27 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg27 (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) (rho 34304) k := by
  unfold Seg53.relationPart27 Seg53.relationRow135 Seg53.relationRow136 Seg53.relationRow137 Seg53.relationRow138 Seg53.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg27
  exact ⟨(rho 34305), (rho 34306), (rho 34307), (rho 34308), (rho 34309), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part28_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart28 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg28 (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) k := by
  unfold Seg53.relationPart28 Seg53.relationRow140 Seg53.relationRow141 Seg53.relationRow142 Seg53.relationRow143 Seg53.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg28
  exact ⟨(rho 34310), (rho 34311), (rho 34312), (rho 34313), (rho 34314), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part29_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart29 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg29 (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) k := by
  unfold Seg53.relationPart29 Seg53.relationRow145 Seg53.relationRow146 Seg53.relationRow147 Seg53.relationRow148 Seg53.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg29
  exact ⟨(rho 34315), (rho 34316), (rho 34317), (rho 34318), (rho 34319), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part30_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart30 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg30 (rho 34249) (rho 34254) (rho 34259) (rho 34264) (rho 34269) (rho 34274) (rho 34279) (rho 34284) (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) k := by
  unfold Seg53.relationPart30 Seg53.relationRow150 Seg53.relationRow151 Seg53.relationRow152 Seg53.relationRow153 Seg53.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg30
  exact ⟨(rho 34320), (rho 34321), (rho 34322), (rho 34323), (rho 34324), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part31_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart31 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg31 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) k := by
  unfold Seg53.relationPart31 Seg53.relationRow155 Seg53.relationRow156 Seg53.relationRow157 Seg53.relationRow158 Seg53.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg31
  exact ⟨(rho 34325), (rho 34326), (rho 34327), (rho 34328), (rho 34329), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part32_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart32 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg32 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) k := by
  unfold Seg53.relationPart32 Seg53.relationRow160 Seg53.relationRow161 Seg53.relationRow162 Seg53.relationRow163 Seg53.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg32
  exact ⟨(rho 34330), (rho 34331), (rho 34332), (rho 34333), (rho 34334), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part33_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart33 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg33 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) k := by
  unfold Seg53.relationPart33 Seg53.relationRow165 Seg53.relationRow166 Seg53.relationRow167 Seg53.relationRow168 Seg53.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg33
  exact ⟨(rho 34335), (rho 34336), (rho 34337), (rho 34338), (rho 34339), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part34_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart34 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg34 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) k := by
  unfold Seg53.relationPart34 Seg53.relationRow170 Seg53.relationRow171 Seg53.relationRow172 Seg53.relationRow173 Seg53.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg34
  exact ⟨(rho 34340), (rho 34341), (rho 34342), (rho 34343), (rho 34344), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part35_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart35 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg35 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) k := by
  unfold Seg53.relationPart35 Seg53.relationRow175 Seg53.relationRow176 Seg53.relationRow177 Seg53.relationRow178 Seg53.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg35
  exact ⟨(rho 34345), (rho 34346), (rho 34347), (rho 34348), (rho 34349), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part36_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart36 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg36 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) k := by
  unfold Seg53.relationPart36 Seg53.relationRow180 Seg53.relationRow181 Seg53.relationRow182 Seg53.relationRow183 Seg53.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg36
  exact ⟨(rho 34350), (rho 34351), (rho 34352), (rho 34353), (rho 34354), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part37_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart37 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg37 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) k := by
  unfold Seg53.relationPart37 Seg53.relationRow185 Seg53.relationRow186 Seg53.relationRow187 Seg53.relationRow188 Seg53.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg37
  exact ⟨(rho 34355), (rho 34356), (rho 34357), (rho 34358), (rho 34359), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part38_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart38 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg38 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) k := by
  unfold Seg53.relationPart38 Seg53.relationRow190 Seg53.relationRow191 Seg53.relationRow192 Seg53.relationRow193 Seg53.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg38
  exact ⟨(rho 34360), (rho 34361), (rho 34362), (rho 34363), (rho 34364), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part39_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart39 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg39 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) k := by
  unfold Seg53.relationPart39 Seg53.relationRow195 Seg53.relationRow196 Seg53.relationRow197 Seg53.relationRow198 Seg53.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg39
  exact ⟨(rho 34365), (rho 34366), (rho 34367), (rho 34368), (rho 34369), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part40_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart40 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg40 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) k := by
  unfold Seg53.relationPart40 Seg53.relationRow200 Seg53.relationRow201 Seg53.relationRow202 Seg53.relationRow203 Seg53.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg40
  exact ⟨(rho 34370), (rho 34371), (rho 34372), (rho 34373), (rho 34374), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part41_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart41 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg41 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) k := by
  unfold Seg53.relationPart41 Seg53.relationRow205 Seg53.relationRow206 Seg53.relationRow207 Seg53.relationRow208 Seg53.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg41
  exact ⟨(rho 34375), (rho 34376), (rho 34377), (rho 34378), (rho 34379), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part42_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart42 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg42 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) k := by
  unfold Seg53.relationPart42 Seg53.relationRow210 Seg53.relationRow211 Seg53.relationRow212 Seg53.relationRow213 Seg53.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg42
  exact ⟨(rho 34380), (rho 34381), (rho 34382), (rho 34383), (rho 34384), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part43_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart43 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg43 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) k := by
  unfold Seg53.relationPart43 Seg53.relationRow215 Seg53.relationRow216 Seg53.relationRow217 Seg53.relationRow218 Seg53.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg43
  exact ⟨(rho 34385), (rho 34386), (rho 34387), (rho 34388), (rho 34389), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part44_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart44 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg44 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) k := by
  unfold Seg53.relationPart44 Seg53.relationRow220 Seg53.relationRow221 Seg53.relationRow222 Seg53.relationRow223 Seg53.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg44
  exact ⟨(rho 34390), (rho 34391), (rho 34392), (rho 34393), (rho 34394), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part45_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart45 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg45 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) k := by
  unfold Seg53.relationPart45 Seg53.relationRow225 Seg53.relationRow226 Seg53.relationRow227 Seg53.relationRow228 Seg53.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg45
  exact ⟨(rho 34395), (rho 34396), (rho 34397), (rho 34398), (rho 34399), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part46_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart46 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg46 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) k := by
  unfold Seg53.relationPart46 Seg53.relationRow230 Seg53.relationRow231 Seg53.relationRow232 Seg53.relationRow233 Seg53.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg46
  exact ⟨(rho 34400), (rho 34401), (rho 34402), (rho 34403), (rho 34404), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part47_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart47 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg47 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) k := by
  unfold Seg53.relationPart47 Seg53.relationRow235 Seg53.relationRow236 Seg53.relationRow237 Seg53.relationRow238 Seg53.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg47
  exact ⟨(rho 34405), (rho 34406), (rho 34407), (rho 34408), (rho 34409), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part48_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart48 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg48 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) k := by
  unfold Seg53.relationPart48 Seg53.relationRow240 Seg53.relationRow241 Seg53.relationRow242 Seg53.relationRow243 Seg53.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg48
  exact ⟨(rho 34410), (rho 34411), (rho 34412), (rho 34413), (rho 34414), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part49_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart49 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg49 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) k := by
  unfold Seg53.relationPart49 Seg53.relationRow245 Seg53.relationRow246 Seg53.relationRow247 Seg53.relationRow248 Seg53.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg49
  exact ⟨(rho 34415), (rho 34416), (rho 34417), (rho 34418), (rho 34419), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part50_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart50 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg50 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) k := by
  unfold Seg53.relationPart50 Seg53.relationRow250 Seg53.relationRow251 Seg53.relationRow252 Seg53.relationRow253 Seg53.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg50
  exact ⟨(rho 34420), (rho 34421), (rho 34422), (rho 34423), (rho 34424), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part51_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart51 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg51 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) k := by
  unfold Seg53.relationPart51 Seg53.relationRow255 Seg53.relationRow256 Seg53.relationRow257 Seg53.relationRow258 Seg53.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg51
  exact ⟨(rho 34425), (rho 34426), (rho 34427), (rho 34428), (rho 34429), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part52_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart52 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg52 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) k := by
  unfold Seg53.relationPart52 Seg53.relationRow260 Seg53.relationRow261 Seg53.relationRow262 Seg53.relationRow263 Seg53.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg52
  exact ⟨(rho 34430), (rho 34431), (rho 34432), (rho 34433), (rho 34434), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part53_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart53 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg53 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) k := by
  unfold Seg53.relationPart53 Seg53.relationRow265 Seg53.relationRow266 Seg53.relationRow267 Seg53.relationRow268 Seg53.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg53
  exact ⟨(rho 34435), (rho 34436), (rho 34437), (rho 34438), (rho 34439), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part54_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart54 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg54 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) k := by
  unfold Seg53.relationPart54 Seg53.relationRow270 Seg53.relationRow271 Seg53.relationRow272 Seg53.relationRow273 Seg53.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg54
  exact ⟨(rho 34440), (rho 34441), (rho 34442), (rho 34443), (rho 34444), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part55_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart55 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg55 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) k := by
  unfold Seg53.relationPart55 Seg53.relationRow275 Seg53.relationRow276 Seg53.relationRow277 Seg53.relationRow278 Seg53.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg55
  exact ⟨(rho 34445), (rho 34446), (rho 34447), (rho 34448), (rho 34449), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part56_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart56 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg56 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) k := by
  unfold Seg53.relationPart56 Seg53.relationRow280 Seg53.relationRow281 Seg53.relationRow282 Seg53.relationRow283 Seg53.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg56
  exact ⟨(rho 34450), (rho 34451), (rho 34452), (rho 34453), (rho 34454), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part57_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart57 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg57 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) k := by
  unfold Seg53.relationPart57 Seg53.relationRow285 Seg53.relationRow286 Seg53.relationRow287 Seg53.relationRow288 Seg53.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg57
  exact ⟨(rho 34455), (rho 34456), (rho 34457), (rho 34458), (rho 34459), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part58_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart58 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg58 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) k := by
  unfold Seg53.relationPart58 Seg53.relationRow290 Seg53.relationRow291 Seg53.relationRow292 Seg53.relationRow293 Seg53.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg58
  exact ⟨(rho 34460), (rho 34461), (rho 34462), (rho 34463), (rho 34464), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part59_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart59 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg59 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) k := by
  unfold Seg53.relationPart59 Seg53.relationRow295 Seg53.relationRow296 Seg53.relationRow297 Seg53.relationRow298 Seg53.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg59
  exact ⟨(rho 34465), (rho 34466), (rho 34467), (rho 34468), (rho 34469), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part60_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart60 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg60 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) k := by
  unfold Seg53.relationPart60 Seg53.relationRow300 Seg53.relationRow301 Seg53.relationRow302 Seg53.relationRow303 Seg53.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg60
  exact ⟨(rho 34470), (rho 34471), (rho 34472), (rho 34473), (rho 34474), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part61_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart61 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg61 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) k := by
  unfold Seg53.relationPart61 Seg53.relationRow305 Seg53.relationRow306 Seg53.relationRow307 Seg53.relationRow308 Seg53.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg61
  exact ⟨(rho 34475), (rho 34476), (rho 34477), (rho 34478), (rho 34479), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part62_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart62 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg62 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) k := by
  unfold Seg53.relationPart62 Seg53.relationRow310 Seg53.relationRow311 Seg53.relationRow312 Seg53.relationRow313 Seg53.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg62
  exact ⟨(rho 34480), (rho 34481), (rho 34482), (rho 34483), (rho 34484), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part63_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart63 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg63 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) k := by
  unfold Seg53.relationPart63 Seg53.relationRow315 Seg53.relationRow316 Seg53.relationRow317 Seg53.relationRow318 Seg53.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg63
  exact ⟨(rho 34485), (rho 34486), (rho 34487), (rho 34488), (rho 34489), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part64_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart64 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg64 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) k := by
  unfold Seg53.relationPart64 Seg53.relationRow320 Seg53.relationRow321 Seg53.relationRow322 Seg53.relationRow323 Seg53.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg64
  exact ⟨(rho 34490), (rho 34491), (rho 34492), (rho 34493), (rho 34494), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part65_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart65 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) (rho 34499)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg65 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) k := by
  unfold Seg53.relationPart65 Seg53.relationRow325 Seg53.relationRow326 Seg53.relationRow327 Seg53.relationRow328 Seg53.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg65
  exact ⟨(rho 34495), (rho 34496), (rho 34497), (rho 34498), (rho 34499), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part66_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart66 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg66 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) (rho 34499) k := by
  unfold Seg53.relationPart66 Seg53.relationRow330 Seg53.relationRow331 Seg53.relationRow332 Seg53.relationRow333 Seg53.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg66
  exact ⟨(rho 34500), (rho 34501), (rho 34502), (rho 34503), (rho 34504), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part67_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart67 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg67 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) k := by
  unfold Seg53.relationPart67 Seg53.relationRow335 Seg53.relationRow336 Seg53.relationRow337 Seg53.relationRow338 Seg53.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg67
  exact ⟨(rho 34505), (rho 34506), (rho 34507), (rho 34508), (rho 34509), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part68_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart68 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg68 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) k := by
  unfold Seg53.relationPart68 Seg53.relationRow340 Seg53.relationRow341 Seg53.relationRow342 Seg53.relationRow343 Seg53.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg68
  exact ⟨(rho 34510), (rho 34511), (rho 34512), (rho 34513), (rho 34514), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part69_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart69 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg69 (rho 34289) (rho 34294) (rho 34299) (rho 34304) (rho 34309) (rho 34314) (rho 34319) (rho 34324) (rho 34329) (rho 34334) (rho 34339) (rho 34344) (rho 34349) (rho 34354) (rho 34359) (rho 34364) (rho 34369) (rho 34374) (rho 34379) (rho 34384) (rho 34389) (rho 34394) (rho 34399) (rho 34404) (rho 34409) (rho 34414) (rho 34419) (rho 34424) (rho 34429) (rho 34434) (rho 34439) (rho 34444) (rho 34449) (rho 34454) (rho 34459) (rho 34464) (rho 34469) (rho 34474) (rho 34479) (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) k := by
  unfold Seg53.relationPart69 Seg53.relationRow345 Seg53.relationRow346 Seg53.relationRow347 Seg53.relationRow348 Seg53.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg69
  exact ⟨(rho 34515), (rho 34516), (rho 34517), (rho 34518), (rho 34519), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part70_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart70 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg70 (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) k := by
  unfold Seg53.relationPart70 Seg53.relationRow350 Seg53.relationRow351 Seg53.relationRow352 Seg53.relationRow353 Seg53.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg70
  exact ⟨(rho 34520), (rho 34521), (rho 34522), (rho 34523), (rho 34524), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part71_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart71 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg71 (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) k := by
  unfold Seg53.relationPart71 Seg53.relationRow355 Seg53.relationRow356 Seg53.relationRow357 Seg53.relationRow358 Seg53.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg71
  exact ⟨(rho 34525), (rho 34526), (rho 34527), (rho 34528), (rho 34529), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part72_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart72 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg72 (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) k := by
  unfold Seg53.relationPart72 Seg53.relationRow360 Seg53.relationRow361 Seg53.relationRow362 Seg53.relationRow363 Seg53.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg72
  exact ⟨(rho 34530), (rho 34531), (rho 34532), (rho 34533), (rho 34534), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part73_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart73 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) (rho 34539)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg73 (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) k := by
  unfold Seg53.relationPart73 Seg53.relationRow365 Seg53.relationRow366 Seg53.relationRow367 Seg53.relationRow368 Seg53.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg73
  exact ⟨(rho 34535), (rho 34536), (rho 34537), (rho 34538), (rho 34539), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part74_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart74 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg74 (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) (rho 34539) k := by
  unfold Seg53.relationPart74 Seg53.relationRow370 Seg53.relationRow371 Seg53.relationRow372 Seg53.relationRow373 Seg53.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg74
  exact ⟨(rho 34540), (rho 34541), (rho 34542), (rho 34543), (rho 34544), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part75_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart75 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg75 (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) k := by
  unfold Seg53.relationPart75 Seg53.relationRow375 Seg53.relationRow376 Seg53.relationRow377 Seg53.relationRow378 Seg53.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg75
  exact ⟨(rho 34545), (rho 34546), (rho 34547), (rho 34548), (rho 34549), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part76_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart76 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg76 (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) k := by
  unfold Seg53.relationPart76 Seg53.relationRow380 Seg53.relationRow381 Seg53.relationRow382 Seg53.relationRow383 Seg53.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg76
  exact ⟨(rho 34550), (rho 34551), (rho 34552), (rho 34553), (rho 34554), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part77_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart77 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg77 (rho 34484) (rho 34489) (rho 34494) (rho 34499) (rho 34504) (rho 34509) (rho 34514) (rho 34519) (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) k := by
  unfold Seg53.relationPart77 Seg53.relationRow385 Seg53.relationRow386 Seg53.relationRow387 Seg53.relationRow388 Seg53.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg77
  exact ⟨(rho 34555), (rho 34556), (rho 34557), (rho 34558), (rho 34559), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part78_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart78 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg78 (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) k := by
  unfold Seg53.relationPart78 Seg53.relationRow390 Seg53.relationRow391 Seg53.relationRow392 Seg53.relationRow393 Seg53.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg78
  exact ⟨(rho 34560), (rho 34561), (rho 34562), (rho 34563), (rho 34564), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part79_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart79 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg79 (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) k := by
  unfold Seg53.relationPart79 Seg53.relationRow395 Seg53.relationRow396 Seg53.relationRow397 Seg53.relationRow398 Seg53.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg79
  exact ⟨(rho 34565), (rho 34566), (rho 34567), (rho 34568), (rho 34569), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part80_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart80 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg80 (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) k := by
  unfold Seg53.relationPart80 Seg53.relationRow400 Seg53.relationRow401 Seg53.relationRow402 Seg53.relationRow403 Seg53.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg80
  exact ⟨(rho 34570), (rho 34571), (rho 34572), (rho 34573), (rho 34574), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part81_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart81 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) (rho 34579)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg81 (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) k := by
  unfold Seg53.relationPart81 Seg53.relationRow405 Seg53.relationRow406 Seg53.relationRow407 Seg53.relationRow408 Seg53.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg81
  exact ⟨(rho 34575), (rho 34576), (rho 34577), (rho 34578), (rho 34579), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part82_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart82 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg82 (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) (rho 34579) k := by
  unfold Seg53.relationPart82 Seg53.relationRow410 Seg53.relationRow411 Seg53.relationRow412 Seg53.relationRow413 Seg53.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg82
  exact ⟨(rho 34580), (rho 34581), (rho 34582), (rho 34583), (rho 34584), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part83_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart83 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg83 (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) k := by
  unfold Seg53.relationPart83 Seg53.relationRow415 Seg53.relationRow416 Seg53.relationRow417 Seg53.relationRow418 Seg53.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg83
  exact ⟨(rho 34585), (rho 34586), (rho 34587), (rho 34588), (rho 34589), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part84_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart84 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg84 (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) k := by
  unfold Seg53.relationPart84 Seg53.relationRow420 Seg53.relationRow421 Seg53.relationRow422 Seg53.relationRow423 Seg53.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg84
  exact ⟨(rho 34590), (rho 34591), (rho 34592), (rho 34593), (rho 34594), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part85_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart85 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg85 (rho 34524) (rho 34529) (rho 34534) (rho 34539) (rho 34544) (rho 34549) (rho 34554) (rho 34559) (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) k := by
  unfold Seg53.relationPart85 Seg53.relationRow425 Seg53.relationRow426 Seg53.relationRow427 Seg53.relationRow428 Seg53.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg85
  exact ⟨(rho 34595), (rho 34596), (rho 34597), (rho 34598), (rho 34599), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part86_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart86 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg86 (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) k := by
  unfold Seg53.relationPart86 Seg53.relationRow430 Seg53.relationRow431 Seg53.relationRow432 Seg53.relationRow433 Seg53.relationRow434 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg86
  exact ⟨(rho 34600), (rho 34601), (rho 34602), (rho 34603), (rho 34604), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part87_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart87 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg87 (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) k := by
  unfold Seg53.relationPart87 Seg53.relationRow435 Seg53.relationRow436 Seg53.relationRow437 Seg53.relationRow438 Seg53.relationRow439 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg87
  exact ⟨(rho 34605), (rho 34606), (rho 34607), (rho 34608), (rho 34609), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part88_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart88 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg88 (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) k := by
  unfold Seg53.relationPart88 Seg53.relationRow440 Seg53.relationRow441 Seg53.relationRow442 Seg53.relationRow443 Seg53.relationRow444 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg88
  exact ⟨(rho 34610), (rho 34611), (rho 34612), (rho 34613), (rho 34614), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part89_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart89 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) (rho 34619)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg89 (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) k := by
  unfold Seg53.relationPart89 Seg53.relationRow445 Seg53.relationRow446 Seg53.relationRow447 Seg53.relationRow448 Seg53.relationRow449 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg89
  exact ⟨(rho 34615), (rho 34616), (rho 34617), (rho 34618), (rho 34619), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part90_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart90 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) (rho 34619) (rho 34624)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg90 (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) (rho 34619) k := by
  unfold Seg53.relationPart90 Seg53.relationRow450 Seg53.relationRow451 Seg53.relationRow452 Seg53.relationRow453 Seg53.relationRow454 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg90
  exact ⟨(rho 34620), (rho 34621), (rho 34622), (rho 34623), (rho 34624), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part91_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart91 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) (rho 34619) (rho 34624) (rho 34629)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg91 (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) (rho 34619) (rho 34624) k := by
  unfold Seg53.relationPart91 Seg53.relationRow455 Seg53.relationRow456 Seg53.relationRow457 Seg53.relationRow458 Seg53.relationRow459 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg91
  exact ⟨(rho 34625), (rho 34626), (rho 34627), (rho 34628), (rho 34629), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part92_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart92 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) (rho 34619) (rho 34624) (rho 34629) (rho 34634)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg92 (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) (rho 34619) (rho 34624) (rho 34629) k := by
  unfold Seg53.relationPart92 Seg53.relationRow460 Seg53.relationRow461 Seg53.relationRow462 Seg53.relationRow463 Seg53.relationRow464 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg92
  exact ⟨(rho 34630), (rho 34631), (rho 34632), (rho 34633), (rho 34634), h0, h1, h2, h3, h4, hk⟩

theorem seg53_part93_to_extracted (rho : Nat → Seg53.F)
    (h : Seg53.relationPart93 rho)
    {k : Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Seg53.F → Prop} (hk : k (rho 34604) (rho 34609) (rho 34614) (rho 34619) (rho 34624) (rho 34629) (rho 34634) (rho 34639)) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg93 (rho 34564) (rho 34569) (rho 34574) (rho 34579) (rho 34584) (rho 34589) (rho 34594) (rho 34599) (rho 34604) (rho 34609) (rho 34614) (rho 34619) (rho 34624) (rho 34629) (rho 34634) k := by
  unfold Seg53.relationPart93 Seg53.relationRow465 Seg53.relationRow466 Seg53.relationRow467 Seg53.relationRow468 Seg53.relationRow469 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.seg93
  exact ⟨(rho 34635), (rho 34636), (rho 34637), (rho 34638), (rho 34639), h0, h1, h2, h3, h4, hk⟩

theorem seg53_relation_to_statement_hash (rho : Nat → Seg53.F)
    (h : Seg53.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.relation
      (rho 2) (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264) (rho 31269) (rho 33829) (rho 34169)
      (fun w54128 w54133 w54138 w54143 w54148 w54153 w54158 w54163 =>
        w54128 = (rho 34604) ∧ w54133 = (rho 34609) ∧ w54138 = (rho 34614) ∧ w54143 = (rho 34619) ∧ w54148 = (rho 34624) ∧ w54153 = (rho 34629) ∧ w54158 = (rho 34634) ∧ w54163 = (rho 34639)) := by
  unfold Seg53.relation at h
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
  apply seg53_part0_to_extracted rho p0
  apply seg53_part1_to_extracted rho p1
  apply seg53_part2_to_extracted rho p2
  apply seg53_part3_to_extracted rho p3
  apply seg53_part4_to_extracted rho p4
  apply seg53_part5_to_extracted rho p5
  apply seg53_part6_to_extracted rho p6
  apply seg53_part7_to_extracted rho p7
  apply seg53_part8_to_extracted rho p8
  apply seg53_part9_to_extracted rho p9
  apply seg53_part10_to_extracted rho p10
  apply seg53_part11_to_extracted rho p11
  apply seg53_part12_to_extracted rho p12
  apply seg53_part13_to_extracted rho p13
  apply seg53_part14_to_extracted rho p14
  apply seg53_part15_to_extracted rho p15
  apply seg53_part16_to_extracted rho p16
  apply seg53_part17_to_extracted rho p17
  apply seg53_part18_to_extracted rho p18
  apply seg53_part19_to_extracted rho p19
  apply seg53_part20_to_extracted rho p20
  apply seg53_part21_to_extracted rho p21
  apply seg53_part22_to_extracted rho p22
  apply seg53_part23_to_extracted rho p23
  apply seg53_part24_to_extracted rho p24
  apply seg53_part25_to_extracted rho p25
  apply seg53_part26_to_extracted rho p26
  apply seg53_part27_to_extracted rho p27
  apply seg53_part28_to_extracted rho p28
  apply seg53_part29_to_extracted rho p29
  apply seg53_part30_to_extracted rho p30
  apply seg53_part31_to_extracted rho p31
  apply seg53_part32_to_extracted rho p32
  apply seg53_part33_to_extracted rho p33
  apply seg53_part34_to_extracted rho p34
  apply seg53_part35_to_extracted rho p35
  apply seg53_part36_to_extracted rho p36
  apply seg53_part37_to_extracted rho p37
  apply seg53_part38_to_extracted rho p38
  apply seg53_part39_to_extracted rho p39
  apply seg53_part40_to_extracted rho p40
  apply seg53_part41_to_extracted rho p41
  apply seg53_part42_to_extracted rho p42
  apply seg53_part43_to_extracted rho p43
  apply seg53_part44_to_extracted rho p44
  apply seg53_part45_to_extracted rho p45
  apply seg53_part46_to_extracted rho p46
  apply seg53_part47_to_extracted rho p47
  apply seg53_part48_to_extracted rho p48
  apply seg53_part49_to_extracted rho p49
  apply seg53_part50_to_extracted rho p50
  apply seg53_part51_to_extracted rho p51
  apply seg53_part52_to_extracted rho p52
  apply seg53_part53_to_extracted rho p53
  apply seg53_part54_to_extracted rho p54
  apply seg53_part55_to_extracted rho p55
  apply seg53_part56_to_extracted rho p56
  apply seg53_part57_to_extracted rho p57
  apply seg53_part58_to_extracted rho p58
  apply seg53_part59_to_extracted rho p59
  apply seg53_part60_to_extracted rho p60
  apply seg53_part61_to_extracted rho p61
  apply seg53_part62_to_extracted rho p62
  apply seg53_part63_to_extracted rho p63
  apply seg53_part64_to_extracted rho p64
  apply seg53_part65_to_extracted rho p65
  apply seg53_part66_to_extracted rho p66
  apply seg53_part67_to_extracted rho p67
  apply seg53_part68_to_extracted rho p68
  apply seg53_part69_to_extracted rho p69
  apply seg53_part70_to_extracted rho p70
  apply seg53_part71_to_extracted rho p71
  apply seg53_part72_to_extracted rho p72
  apply seg53_part73_to_extracted rho p73
  apply seg53_part74_to_extracted rho p74
  apply seg53_part75_to_extracted rho p75
  apply seg53_part76_to_extracted rho p76
  apply seg53_part77_to_extracted rho p77
  apply seg53_part78_to_extracted rho p78
  apply seg53_part79_to_extracted rho p79
  apply seg53_part80_to_extracted rho p80
  apply seg53_part81_to_extracted rho p81
  apply seg53_part82_to_extracted rho p82
  apply seg53_part83_to_extracted rho p83
  apply seg53_part84_to_extracted rho p84
  apply seg53_part85_to_extracted rho p85
  apply seg53_part86_to_extracted rho p86
  apply seg53_part87_to_extracted rho p87
  apply seg53_part88_to_extracted rho p88
  apply seg53_part89_to_extracted rho p89
  apply seg53_part90_to_extracted rho p90
  apply seg53_part91_to_extracted rho p91
  apply seg53_part92_to_extracted rho p92
  apply seg53_part93_to_extracted rho p93
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem seg53_sound (rho : Nat → Seg53.F) (h : Seg53.relation rho) : Seg53.spec rho := by
  have hExtracted := seg53_relation_to_statement_hash rho h
  rcases Shieldd.GnarkFormal.Deployed.StatementHash.relation_sound_permSpec
      (rho 2) (rho 7202) (rho 7207) (rho 7212) (rho 7217) (rho 18311) (rho 18651) (rho 19383) (rho 19388) (rho 19393) (rho 19398) (rho 30492) (rho 30832) (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264) (rho 31269) (rho 33829) (rho 34169) _ hExtracted with
    ⟨w54128, w54133, w54138, w54143, w54148, w54153, w54158, w54163, hk, hperm⟩
  rcases hk with ⟨hw54128, hw54133, hw54138, hw54143, hw54148, hw54153, hw54158, hw54163⟩
  simpa [Seg53.spec, Specs.deployedSpec53, hw54128, hw54133, hw54138, hw54143, hw54148, hw54153, hw54158, hw54163] using hperm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
