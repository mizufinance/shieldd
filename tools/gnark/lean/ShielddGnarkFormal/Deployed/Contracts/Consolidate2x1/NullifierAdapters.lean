import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg11
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg27
import ShielddGnarkFormal.Deployed.Nullifier.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg11_part0_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart0 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 23) (rho 24) (rho 7163)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0 (rho 8) (rho 23) (rho 24) k := by
  unfold Seg11.relationPart0 Seg11.relationRow0 Seg11.relationRow1 Seg11.relationRow2 Seg11.relationRow3 Seg11.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0
  exact ⟨(rho 7159), (rho 7160), (rho 7161), (rho 7162), (rho 7163), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part1_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart1 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 24) (rho 7163) (rho 7168)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1 (rho 23) (rho 24) (rho 7163) k := by
  unfold Seg11.relationPart1 Seg11.relationRow5 Seg11.relationRow6 Seg11.relationRow7 Seg11.relationRow8 Seg11.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1
  exact ⟨(rho 7164), (rho 7165), (rho 7166), (rho 7167), (rho 7168), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part2_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart2 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7163) (rho 7168) (rho 7173)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2 (rho 24) (rho 7163) (rho 7168) k := by
  unfold Seg11.relationPart2 Seg11.relationRow10 Seg11.relationRow11 Seg11.relationRow12 Seg11.relationRow13 Seg11.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2
  exact ⟨(rho 7169), (rho 7170), (rho 7171), (rho 7172), (rho 7173), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part3_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart3 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7163) (rho 7168) (rho 7173) (rho 7178)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3 (rho 7163) (rho 7168) (rho 7173) k := by
  unfold Seg11.relationPart3 Seg11.relationRow15 Seg11.relationRow16 Seg11.relationRow17 Seg11.relationRow18 Seg11.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3
  exact ⟨(rho 7174), (rho 7175), (rho 7176), (rho 7177), (rho 7178), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part4_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart4 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7163) (rho 7168) (rho 7173) (rho 7178) (rho 7183)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4 (rho 7163) (rho 7168) (rho 7173) (rho 7178) k := by
  unfold Seg11.relationPart4 Seg11.relationRow20 Seg11.relationRow21 Seg11.relationRow22 Seg11.relationRow23 Seg11.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4
  exact ⟨(rho 7179), (rho 7180), (rho 7181), (rho 7182), (rho 7183), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part5_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart5 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7163) (rho 7168) (rho 7173) (rho 7178) (rho 7183) (rho 7188)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5 (rho 7163) (rho 7168) (rho 7173) (rho 7178) (rho 7183) k := by
  unfold Seg11.relationPart5 Seg11.relationRow25 Seg11.relationRow26 Seg11.relationRow27 Seg11.relationRow28 Seg11.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5
  exact ⟨(rho 7184), (rho 7185), (rho 7186), (rho 7187), (rho 7188), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part6_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart6 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7178) (rho 7183) (rho 7188) (rho 7193)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6 (rho 7163) (rho 7168) (rho 7173) (rho 7178) (rho 7183) (rho 7188) k := by
  unfold Seg11.relationPart6 Seg11.relationRow30 Seg11.relationRow31 Seg11.relationRow32 Seg11.relationRow33 Seg11.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6
  exact ⟨(rho 7189), (rho 7190), (rho 7191), (rho 7192), (rho 7193), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part7_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart7 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7178) (rho 7183) (rho 7188) (rho 7193) (rho 7198)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7 (rho 7178) (rho 7183) (rho 7188) (rho 7193) k := by
  unfold Seg11.relationPart7 Seg11.relationRow35 Seg11.relationRow36 Seg11.relationRow37 Seg11.relationRow38 Seg11.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7
  exact ⟨(rho 7194), (rho 7195), (rho 7196), (rho 7197), (rho 7198), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part8_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart8 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7178) (rho 7183) (rho 7188) (rho 7193) (rho 7198) (rho 7203)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8 (rho 7178) (rho 7183) (rho 7188) (rho 7193) (rho 7198) k := by
  unfold Seg11.relationPart8 Seg11.relationRow40 Seg11.relationRow41 Seg11.relationRow42 Seg11.relationRow43 Seg11.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8
  exact ⟨(rho 7199), (rho 7200), (rho 7201), (rho 7202), (rho 7203), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part9_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart9 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7178) (rho 7183) (rho 7188) (rho 7193) (rho 7198) (rho 7203) (rho 7208)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11 (rho 7178) (rho 7183) (rho 7188) (rho 7193) (rho 7198) (rho 7203) k := by
  unfold Seg11.relationPart9 Seg11.relationRow45 Seg11.relationRow46 Seg11.relationRow47 Seg11.relationRow48 Seg11.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11
  exact ⟨(rho 7204), (rho 7205), (rho 7206), (rho 7207), (rho 7208), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part10_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart10 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7198) (rho 7203) (rho 7208) (rho 7213)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10 (rho 7178) (rho 7183) (rho 7188) (rho 7193) (rho 7198) (rho 7203) (rho 7208) k := by
  unfold Seg11.relationPart10 Seg11.relationRow50 Seg11.relationRow51 Seg11.relationRow52 Seg11.relationRow53 Seg11.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10
  exact ⟨(rho 7209), (rho 7210), (rho 7211), (rho 7212), (rho 7213), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part11_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart11 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7198) (rho 7203) (rho 7208) (rho 7213) (rho 7218)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11 (rho 7198) (rho 7203) (rho 7208) (rho 7213) k := by
  unfold Seg11.relationPart11 Seg11.relationRow55 Seg11.relationRow56 Seg11.relationRow57 Seg11.relationRow58 Seg11.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11
  exact ⟨(rho 7214), (rho 7215), (rho 7216), (rho 7217), (rho 7218), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part12_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart12 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7198) (rho 7203) (rho 7208) (rho 7213) (rho 7218) (rho 7223)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12 (rho 7198) (rho 7203) (rho 7208) (rho 7213) (rho 7218) k := by
  unfold Seg11.relationPart12 Seg11.relationRow60 Seg11.relationRow61 Seg11.relationRow62 Seg11.relationRow63 Seg11.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12
  exact ⟨(rho 7219), (rho 7220), (rho 7221), (rho 7222), (rho 7223), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part13_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart13 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7198) (rho 7203) (rho 7208) (rho 7213) (rho 7218) (rho 7223) (rho 7228)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13 (rho 7198) (rho 7203) (rho 7208) (rho 7213) (rho 7218) (rho 7223) k := by
  unfold Seg11.relationPart13 Seg11.relationRow65 Seg11.relationRow66 Seg11.relationRow67 Seg11.relationRow68 Seg11.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13
  exact ⟨(rho 7224), (rho 7225), (rho 7226), (rho 7227), (rho 7228), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part14_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart14 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14 (rho 7198) (rho 7203) (rho 7208) (rho 7213) (rho 7218) (rho 7223) (rho 7228) k := by
  unfold Seg11.relationPart14 Seg11.relationRow70 Seg11.relationRow71 Seg11.relationRow72 Seg11.relationRow73 Seg11.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14
  exact ⟨(rho 7229), (rho 7230), (rho 7231), (rho 7232), (rho 7233), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part15_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart15 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15 (rho 7218) (rho 7223) (rho 7228) (rho 7233) k := by
  unfold Seg11.relationPart15 Seg11.relationRow75 Seg11.relationRow76 Seg11.relationRow77 Seg11.relationRow78 Seg11.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15
  exact ⟨(rho 7234), (rho 7235), (rho 7236), (rho 7237), (rho 7238), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part16_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart16 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) k := by
  unfold Seg11.relationPart16 Seg11.relationRow80 Seg11.relationRow81 Seg11.relationRow82 Seg11.relationRow83 Seg11.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16
  exact ⟨(rho 7239), (rho 7240), (rho 7241), (rho 7242), (rho 7243), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part17_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart17 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) k := by
  unfold Seg11.relationPart17 Seg11.relationRow85 Seg11.relationRow86 Seg11.relationRow87 Seg11.relationRow88 Seg11.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17
  exact ⟨(rho 7244), (rho 7245), (rho 7246), (rho 7247), (rho 7248), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part18_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart18 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) k := by
  unfold Seg11.relationPart18 Seg11.relationRow90 Seg11.relationRow91 Seg11.relationRow92 Seg11.relationRow93 Seg11.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18
  exact ⟨(rho 7249), (rho 7250), (rho 7251), (rho 7252), (rho 7253), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part19_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart19 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) k := by
  unfold Seg11.relationPart19 Seg11.relationRow95 Seg11.relationRow96 Seg11.relationRow97 Seg11.relationRow98 Seg11.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19
  exact ⟨(rho 7254), (rho 7255), (rho 7256), (rho 7257), (rho 7258), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part20_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart20 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) k := by
  unfold Seg11.relationPart20 Seg11.relationRow100 Seg11.relationRow101 Seg11.relationRow102 Seg11.relationRow103 Seg11.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20
  exact ⟨(rho 7259), (rho 7260), (rho 7261), (rho 7262), (rho 7263), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part21_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart21 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) k := by
  unfold Seg11.relationPart21 Seg11.relationRow105 Seg11.relationRow106 Seg11.relationRow107 Seg11.relationRow108 Seg11.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21
  exact ⟨(rho 7264), (rho 7265), (rho 7266), (rho 7267), (rho 7268), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part22_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart22 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) k := by
  unfold Seg11.relationPart22 Seg11.relationRow110 Seg11.relationRow111 Seg11.relationRow112 Seg11.relationRow113 Seg11.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22
  exact ⟨(rho 7269), (rho 7270), (rho 7271), (rho 7272), (rho 7273), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part23_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart23 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) k := by
  unfold Seg11.relationPart23 Seg11.relationRow115 Seg11.relationRow116 Seg11.relationRow117 Seg11.relationRow118 Seg11.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23
  exact ⟨(rho 7274), (rho 7275), (rho 7276), (rho 7277), (rho 7278), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part24_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart24 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) k := by
  unfold Seg11.relationPart24 Seg11.relationRow120 Seg11.relationRow121 Seg11.relationRow122 Seg11.relationRow123 Seg11.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24
  exact ⟨(rho 7279), (rho 7280), (rho 7281), (rho 7282), (rho 7283), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part25_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart25 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) k := by
  unfold Seg11.relationPart25 Seg11.relationRow125 Seg11.relationRow126 Seg11.relationRow127 Seg11.relationRow128 Seg11.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25
  exact ⟨(rho 7284), (rho 7285), (rho 7286), (rho 7287), (rho 7288), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part26_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart26 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) k := by
  unfold Seg11.relationPart26 Seg11.relationRow130 Seg11.relationRow131 Seg11.relationRow132 Seg11.relationRow133 Seg11.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26
  exact ⟨(rho 7289), (rho 7290), (rho 7291), (rho 7292), (rho 7293), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part27_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart27 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) k := by
  unfold Seg11.relationPart27 Seg11.relationRow135 Seg11.relationRow136 Seg11.relationRow137 Seg11.relationRow138 Seg11.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27
  exact ⟨(rho 7294), (rho 7295), (rho 7296), (rho 7297), (rho 7298), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part28_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart28 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) k := by
  unfold Seg11.relationPart28 Seg11.relationRow140 Seg11.relationRow141 Seg11.relationRow142 Seg11.relationRow143 Seg11.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28
  exact ⟨(rho 7299), (rho 7300), (rho 7301), (rho 7302), (rho 7303), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part29_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart29 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) k := by
  unfold Seg11.relationPart29 Seg11.relationRow145 Seg11.relationRow146 Seg11.relationRow147 Seg11.relationRow148 Seg11.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29
  exact ⟨(rho 7304), (rho 7305), (rho 7306), (rho 7307), (rho 7308), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part30_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart30 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) k := by
  unfold Seg11.relationPart30 Seg11.relationRow150 Seg11.relationRow151 Seg11.relationRow152 Seg11.relationRow153 Seg11.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30
  exact ⟨(rho 7309), (rho 7310), (rho 7311), (rho 7312), (rho 7313), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part31_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart31 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) k := by
  unfold Seg11.relationPart31 Seg11.relationRow155 Seg11.relationRow156 Seg11.relationRow157 Seg11.relationRow158 Seg11.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31
  exact ⟨(rho 7314), (rho 7315), (rho 7316), (rho 7317), (rho 7318), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part32_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart32 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) k := by
  unfold Seg11.relationPart32 Seg11.relationRow160 Seg11.relationRow161 Seg11.relationRow162 Seg11.relationRow163 Seg11.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32
  exact ⟨(rho 7319), (rho 7320), (rho 7321), (rho 7322), (rho 7323), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part33_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart33 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) k := by
  unfold Seg11.relationPart33 Seg11.relationRow165 Seg11.relationRow166 Seg11.relationRow167 Seg11.relationRow168 Seg11.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33
  exact ⟨(rho 7324), (rho 7325), (rho 7326), (rho 7327), (rho 7328), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part34_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart34 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) k := by
  unfold Seg11.relationPart34 Seg11.relationRow170 Seg11.relationRow171 Seg11.relationRow172 Seg11.relationRow173 Seg11.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34
  exact ⟨(rho 7329), (rho 7330), (rho 7331), (rho 7332), (rho 7333), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part35_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart35 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) k := by
  unfold Seg11.relationPart35 Seg11.relationRow175 Seg11.relationRow176 Seg11.relationRow177 Seg11.relationRow178 Seg11.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35
  exact ⟨(rho 7334), (rho 7335), (rho 7336), (rho 7337), (rho 7338), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part36_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart36 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) k := by
  unfold Seg11.relationPart36 Seg11.relationRow180 Seg11.relationRow181 Seg11.relationRow182 Seg11.relationRow183 Seg11.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36
  exact ⟨(rho 7339), (rho 7340), (rho 7341), (rho 7342), (rho 7343), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part37_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart37 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) k := by
  unfold Seg11.relationPart37 Seg11.relationRow185 Seg11.relationRow186 Seg11.relationRow187 Seg11.relationRow188 Seg11.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37
  exact ⟨(rho 7344), (rho 7345), (rho 7346), (rho 7347), (rho 7348), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part38_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart38 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) k := by
  unfold Seg11.relationPart38 Seg11.relationRow190 Seg11.relationRow191 Seg11.relationRow192 Seg11.relationRow193 Seg11.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38
  exact ⟨(rho 7349), (rho 7350), (rho 7351), (rho 7352), (rho 7353), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part39_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart39 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) k := by
  unfold Seg11.relationPart39 Seg11.relationRow195 Seg11.relationRow196 Seg11.relationRow197 Seg11.relationRow198 Seg11.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39
  exact ⟨(rho 7354), (rho 7355), (rho 7356), (rho 7357), (rho 7358), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part40_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart40 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) k := by
  unfold Seg11.relationPart40 Seg11.relationRow200 Seg11.relationRow201 Seg11.relationRow202 Seg11.relationRow203 Seg11.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40
  exact ⟨(rho 7359), (rho 7360), (rho 7361), (rho 7362), (rho 7363), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part41_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart41 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) k := by
  unfold Seg11.relationPart41 Seg11.relationRow205 Seg11.relationRow206 Seg11.relationRow207 Seg11.relationRow208 Seg11.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41
  exact ⟨(rho 7364), (rho 7365), (rho 7366), (rho 7367), (rho 7368), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part42_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart42 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) k := by
  unfold Seg11.relationPart42 Seg11.relationRow210 Seg11.relationRow211 Seg11.relationRow212 Seg11.relationRow213 Seg11.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42
  exact ⟨(rho 7369), (rho 7370), (rho 7371), (rho 7372), (rho 7373), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part43_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart43 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) k := by
  unfold Seg11.relationPart43 Seg11.relationRow215 Seg11.relationRow216 Seg11.relationRow217 Seg11.relationRow218 Seg11.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43
  exact ⟨(rho 7374), (rho 7375), (rho 7376), (rho 7377), (rho 7378), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part44_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart44 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) k := by
  unfold Seg11.relationPart44 Seg11.relationRow220 Seg11.relationRow221 Seg11.relationRow222 Seg11.relationRow223 Seg11.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44
  exact ⟨(rho 7379), (rho 7380), (rho 7381), (rho 7382), (rho 7383), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part45_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart45 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) (rho 7388)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) k := by
  unfold Seg11.relationPart45 Seg11.relationRow225 Seg11.relationRow226 Seg11.relationRow227 Seg11.relationRow228 Seg11.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45
  exact ⟨(rho 7384), (rho 7385), (rho 7386), (rho 7387), (rho 7388), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part46_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart46 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) (rho 7388) (rho 7393)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) (rho 7388) k := by
  unfold Seg11.relationPart46 Seg11.relationRow230 Seg11.relationRow231 Seg11.relationRow232 Seg11.relationRow233 Seg11.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46
  exact ⟨(rho 7389), (rho 7390), (rho 7391), (rho 7392), (rho 7393), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part47_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart47 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) (rho 7388) (rho 7393) (rho 7398)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) (rho 7388) (rho 7393) k := by
  unfold Seg11.relationPart47 Seg11.relationRow235 Seg11.relationRow236 Seg11.relationRow237 Seg11.relationRow238 Seg11.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47
  exact ⟨(rho 7394), (rho 7395), (rho 7396), (rho 7397), (rho 7398), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part48_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart48 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) (rho 7388) (rho 7393) (rho 7398) (rho 7403)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) (rho 7388) (rho 7393) (rho 7398) k := by
  unfold Seg11.relationPart48 Seg11.relationRow240 Seg11.relationRow241 Seg11.relationRow242 Seg11.relationRow243 Seg11.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48
  exact ⟨(rho 7399), (rho 7400), (rho 7401), (rho 7402), (rho 7403), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part49_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart49 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7393) (rho 7398) (rho 7403) (rho 7408)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49 (rho 7218) (rho 7223) (rho 7228) (rho 7233) (rho 7238) (rho 7243) (rho 7248) (rho 7253) (rho 7258) (rho 7263) (rho 7268) (rho 7273) (rho 7278) (rho 7283) (rho 7288) (rho 7293) (rho 7298) (rho 7303) (rho 7308) (rho 7313) (rho 7318) (rho 7323) (rho 7328) (rho 7333) (rho 7338) (rho 7343) (rho 7348) (rho 7353) (rho 7358) (rho 7363) (rho 7368) (rho 7373) (rho 7378) (rho 7383) (rho 7388) (rho 7393) (rho 7398) (rho 7403) k := by
  unfold Seg11.relationPart49 Seg11.relationRow245 Seg11.relationRow246 Seg11.relationRow247 Seg11.relationRow248 Seg11.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49
  exact ⟨(rho 7404), (rho 7405), (rho 7406), (rho 7407), (rho 7408), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part50_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart50 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7393) (rho 7398) (rho 7403) (rho 7408) (rho 7413)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50 (rho 7393) (rho 7398) (rho 7403) (rho 7408) k := by
  unfold Seg11.relationPart50 Seg11.relationRow250 Seg11.relationRow251 Seg11.relationRow252 Seg11.relationRow253 Seg11.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50
  exact ⟨(rho 7409), (rho 7410), (rho 7411), (rho 7412), (rho 7413), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part51_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart51 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7393) (rho 7398) (rho 7403) (rho 7408) (rho 7413) (rho 7418)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51 (rho 7393) (rho 7398) (rho 7403) (rho 7408) (rho 7413) k := by
  unfold Seg11.relationPart51 Seg11.relationRow255 Seg11.relationRow256 Seg11.relationRow257 Seg11.relationRow258 Seg11.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51
  exact ⟨(rho 7414), (rho 7415), (rho 7416), (rho 7417), (rho 7418), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part52_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart52 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7393) (rho 7398) (rho 7403) (rho 7408) (rho 7413) (rho 7418) (rho 7423)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52 (rho 7393) (rho 7398) (rho 7403) (rho 7408) (rho 7413) (rho 7418) k := by
  unfold Seg11.relationPart52 Seg11.relationRow260 Seg11.relationRow261 Seg11.relationRow262 Seg11.relationRow263 Seg11.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52
  exact ⟨(rho 7419), (rho 7420), (rho 7421), (rho 7422), (rho 7423), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part53_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart53 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7413) (rho 7418) (rho 7423) (rho 7428)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53 (rho 7393) (rho 7398) (rho 7403) (rho 7408) (rho 7413) (rho 7418) (rho 7423) k := by
  unfold Seg11.relationPart53 Seg11.relationRow265 Seg11.relationRow266 Seg11.relationRow267 Seg11.relationRow268 Seg11.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53
  exact ⟨(rho 7424), (rho 7425), (rho 7426), (rho 7427), (rho 7428), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part54_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart54 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7413) (rho 7418) (rho 7423) (rho 7428) (rho 7433)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54 (rho 7413) (rho 7418) (rho 7423) (rho 7428) k := by
  unfold Seg11.relationPart54 Seg11.relationRow270 Seg11.relationRow271 Seg11.relationRow272 Seg11.relationRow273 Seg11.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54
  exact ⟨(rho 7429), (rho 7430), (rho 7431), (rho 7432), (rho 7433), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part55_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart55 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7413) (rho 7418) (rho 7423) (rho 7428) (rho 7433) (rho 7438)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55 (rho 7413) (rho 7418) (rho 7423) (rho 7428) (rho 7433) k := by
  unfold Seg11.relationPart55 Seg11.relationRow275 Seg11.relationRow276 Seg11.relationRow277 Seg11.relationRow278 Seg11.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55
  exact ⟨(rho 7434), (rho 7435), (rho 7436), (rho 7437), (rho 7438), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part56_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart56 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7413) (rho 7418) (rho 7423) (rho 7428) (rho 7433) (rho 7438) (rho 7443)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56 (rho 7413) (rho 7418) (rho 7423) (rho 7428) (rho 7433) (rho 7438) k := by
  unfold Seg11.relationPart56 Seg11.relationRow280 Seg11.relationRow281 Seg11.relationRow282 Seg11.relationRow283 Seg11.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56
  exact ⟨(rho 7439), (rho 7440), (rho 7441), (rho 7442), (rho 7443), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part57_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart57 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7433) (rho 7438) (rho 7443) (rho 7448)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57 (rho 7413) (rho 7418) (rho 7423) (rho 7428) (rho 7433) (rho 7438) (rho 7443) k := by
  unfold Seg11.relationPart57 Seg11.relationRow285 Seg11.relationRow286 Seg11.relationRow287 Seg11.relationRow288 Seg11.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57
  exact ⟨(rho 7444), (rho 7445), (rho 7446), (rho 7447), (rho 7448), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part58_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart58 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7433) (rho 7438) (rho 7443) (rho 7448) (rho 7453)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58 (rho 7433) (rho 7438) (rho 7443) (rho 7448) k := by
  unfold Seg11.relationPart58 Seg11.relationRow290 Seg11.relationRow291 Seg11.relationRow292 Seg11.relationRow293 Seg11.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58
  exact ⟨(rho 7449), (rho 7450), (rho 7451), (rho 7452), (rho 7453), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part59_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart59 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7433) (rho 7438) (rho 7443) (rho 7448) (rho 7453) (rho 7458)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59 (rho 7433) (rho 7438) (rho 7443) (rho 7448) (rho 7453) k := by
  unfold Seg11.relationPart59 Seg11.relationRow295 Seg11.relationRow296 Seg11.relationRow297 Seg11.relationRow298 Seg11.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59
  exact ⟨(rho 7454), (rho 7455), (rho 7456), (rho 7457), (rho 7458), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part60_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart60 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7433) (rho 7438) (rho 7443) (rho 7448) (rho 7453) (rho 7458) (rho 7463)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60 (rho 7433) (rho 7438) (rho 7443) (rho 7448) (rho 7453) (rho 7458) k := by
  unfold Seg11.relationPart60 Seg11.relationRow300 Seg11.relationRow301 Seg11.relationRow302 Seg11.relationRow303 Seg11.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60
  exact ⟨(rho 7459), (rho 7460), (rho 7461), (rho 7462), (rho 7463), h0, h1, h2, h3, h4, hk⟩

theorem seg11_part61_to_extracted (rho : Nat → Seg11.F)
    (h : Seg11.relationPart61 rho)
    {k : Seg11.F → Seg11.F → Seg11.F → Seg11.F → Prop} (hk : k (rho 7453) (rho 7458) (rho 7463) (rho 7468)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61 (rho 7433) (rho 7438) (rho 7443) (rho 7448) (rho 7453) (rho 7458) (rho 7463) k := by
  unfold Seg11.relationPart61 Seg11.relationRow305 Seg11.relationRow306 Seg11.relationRow307 Seg11.relationRow308 Seg11.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61
  exact ⟨(rho 7464), (rho 7465), (rho 7466), (rho 7467), (rho 7468), h0, h1, h2, h3, h4, hk⟩

theorem seg11_relation_to_nullifier (rho : Nat → Seg11.F)
    (h : Seg11.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
      (rho 8) (rho 23) (rho 24)
      (fun w1637 w1642 w1647 w1652 =>
        w1637 = rho 7453 ∧ w1642 = rho 7458 ∧
        w1647 = rho 7463 ∧ w1652 = rho 7468) := by
  unfold Seg11.relation at h
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
  apply seg11_part0_to_extracted rho p0
  apply seg11_part1_to_extracted rho p1
  apply seg11_part2_to_extracted rho p2
  apply seg11_part3_to_extracted rho p3
  apply seg11_part4_to_extracted rho p4
  apply seg11_part5_to_extracted rho p5
  apply seg11_part6_to_extracted rho p6
  apply seg11_part7_to_extracted rho p7
  apply seg11_part8_to_extracted rho p8
  apply seg11_part9_to_extracted rho p9
  apply seg11_part10_to_extracted rho p10
  apply seg11_part11_to_extracted rho p11
  apply seg11_part12_to_extracted rho p12
  apply seg11_part13_to_extracted rho p13
  apply seg11_part14_to_extracted rho p14
  apply seg11_part15_to_extracted rho p15
  apply seg11_part16_to_extracted rho p16
  apply seg11_part17_to_extracted rho p17
  apply seg11_part18_to_extracted rho p18
  apply seg11_part19_to_extracted rho p19
  apply seg11_part20_to_extracted rho p20
  apply seg11_part21_to_extracted rho p21
  apply seg11_part22_to_extracted rho p22
  apply seg11_part23_to_extracted rho p23
  apply seg11_part24_to_extracted rho p24
  apply seg11_part25_to_extracted rho p25
  apply seg11_part26_to_extracted rho p26
  apply seg11_part27_to_extracted rho p27
  apply seg11_part28_to_extracted rho p28
  apply seg11_part29_to_extracted rho p29
  apply seg11_part30_to_extracted rho p30
  apply seg11_part31_to_extracted rho p31
  apply seg11_part32_to_extracted rho p32
  apply seg11_part33_to_extracted rho p33
  apply seg11_part34_to_extracted rho p34
  apply seg11_part35_to_extracted rho p35
  apply seg11_part36_to_extracted rho p36
  apply seg11_part37_to_extracted rho p37
  apply seg11_part38_to_extracted rho p38
  apply seg11_part39_to_extracted rho p39
  apply seg11_part40_to_extracted rho p40
  apply seg11_part41_to_extracted rho p41
  apply seg11_part42_to_extracted rho p42
  apply seg11_part43_to_extracted rho p43
  apply seg11_part44_to_extracted rho p44
  apply seg11_part45_to_extracted rho p45
  apply seg11_part46_to_extracted rho p46
  apply seg11_part47_to_extracted rho p47
  apply seg11_part48_to_extracted rho p48
  apply seg11_part49_to_extracted rho p49
  apply seg11_part50_to_extracted rho p50
  apply seg11_part51_to_extracted rho p51
  apply seg11_part52_to_extracted rho p52
  apply seg11_part53_to_extracted rho p53
  apply seg11_part54_to_extracted rho p54
  apply seg11_part55_to_extracted rho p55
  apply seg11_part56_to_extracted rho p56
  apply seg11_part57_to_extracted rho p57
  apply seg11_part58_to_extracted rho p58
  apply seg11_part59_to_extracted rho p59
  apply seg11_part60_to_extracted rho p60
  apply seg11_part61_to_extracted rho p61
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem seg11_sound (rho : Nat → Seg11.F) (h : Seg11.relation rho) : Seg11.spec rho := by
  have hExtracted := seg11_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      (rho 8) (rho 23) (rho 24) _ hExtracted with
    ⟨w1637, w1642, w1647, w1652, hk, hperm⟩
  rcases hk with ⟨hw1637, hw1642, hw1647, hw1652⟩
  simpa [Seg11.spec, Specs.deployedSpec11, hw1637, hw1642, hw1647, hw1652] using hperm

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
