import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53Poseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53Poseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon6Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon6Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash6.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.Order))

theorem range0_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (k : F → F → F → F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg0 w1 w2 w8 w9 w15 w21 w27 w33 (fun w8 w9 w15 w21 w27 w33 w7 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg1 w7 w8 w9 w15 w21 w27 w33 (fun w7 w15 w21 w27 w33 w14 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg2 w7 w14 w15 w21 w27 w33 (fun w7 w14 w21 w27 w33 w20 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg3 w7 w14 w20 w21 w27 w33 (fun w7 w14 w20 w27 w33 w26 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg4 w7 w14 w20 w26 w27 w33 (fun w7 w14 w20 w26 w33 w32 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg5 w7 w14 w20 w26 w32 w33 (fun w7 w14 w20 w26 w32 w38 =>
      k w7 w14 w20 w26 w32 w38))))))) :
    ∃ w7 w14 w20 w26 w32 w38 : F, spec0 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st0 w7 w14 w20 w26 w32 w38 ∧ k w7 w14 w20 w26 w32 w38 := by
  have h0 := seg0_sound w1 w2 w8 w9 w15 w21 w27 w33 _ h
  rcases h0 with ⟨w7, hw7, h⟩
  have h1 := seg1_sound w7 w8 w9 w15 w21 w27 w33 _ h
  rcases h1 with ⟨w14, hw14, h⟩
  have h2 := seg2_sound w7 w14 w15 w21 w27 w33 _ h
  rcases h2 with ⟨w20, hw20, h⟩
  have h3 := seg3_sound w7 w14 w20 w21 w27 w33 _ h
  rcases h3 with ⟨w26, hw26, h⟩
  have h4 := seg4_sound w7 w14 w20 w26 w27 w33 _ h
  rcases h4 with ⟨w32, hw32, h⟩
  have h5 := seg5_sound w7 w14 w20 w26 w32 w33 _ h
  rcases h5 with ⟨w38, hw38, h⟩
  have hSpec0 := spec0_eq ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w7 w14 w20 w26 w32 w38 hw7 hw14 hw20 hw26 hw32 hw38
  exact ⟨w7, w14, w20, w26, w32, w38, hSpec0, h⟩

theorem range1_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w7 : F) (w14 : F) (w20 : F) (w26 : F) (w32 : F) (w38 : F) (k : F → F → F → F → F → F → F → Prop)
    (hSpec0 : spec0 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st0 w7 w14 w20 w26 w32 w38)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg6 w7 w14 w20 w26 w32 w38 (fun w7 w14 w20 w26 w32 w38 w43 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg7 w7 w14 w20 w26 w32 w38 w43 (fun w7 w14 w20 w26 w32 w38 w43 w48 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg8 w7 w14 w20 w26 w32 w38 w43 w48 (fun w7 w14 w20 w26 w32 w38 w43 w48 w53 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg9 w7 w14 w20 w26 w32 w38 w43 w48 w53 (fun w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg10 w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 (fun w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 w63 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg11 w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 w63 (fun w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 w63 w68 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg12 w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 w63 w68 (fun w43 w48 w53 w58 w63 w68 w73 =>
      k w43 w48 w53 w58 w63 w68 w73)))))))) :
    ∃ w43 w48 w53 w58 w63 w68 w73 : F, spec1 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st1 w43 w48 w53 w58 w63 w68 w73 ∧ k w43 w48 w53 w58 w63 w68 w73 := by
  have h6 := seg6_sound w7 w14 w20 w26 w32 w38 _ h
  rcases h6 with ⟨w43, hw43, h⟩
  have h7 := seg7_sound w7 w14 w20 w26 w32 w38 w43 _ h
  rcases h7 with ⟨w48, hw48, h⟩
  have h8 := seg8_sound w7 w14 w20 w26 w32 w38 w43 w48 _ h
  rcases h8 with ⟨w53, hw53, h⟩
  have h9 := seg9_sound w7 w14 w20 w26 w32 w38 w43 w48 w53 _ h
  rcases h9 with ⟨w58, hw58, h⟩
  have h10 := seg10_sound w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 _ h
  rcases h10 with ⟨w63, hw63, h⟩
  have h11 := seg11_sound w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 w63 _ h
  rcases h11 with ⟨w68, hw68, h⟩
  have h12 := seg12_sound w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 w63 w68 _ h
  rcases h12 with ⟨w73, hw73, h⟩
  have hSpec1 := spec1_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w7 w14 w20 w26 w32 w38 w43 w48 w53 w58 w63 w68 w73 hSpec0 hw43 hw48 hw53 hw58 hw63 hw68 hw73
  exact ⟨w43, w48, w53, w58, w63, w68, w73, hSpec1, h⟩

theorem range2_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w43 : F) (w48 : F) (w53 : F) (w58 : F) (w63 : F) (w68 : F) (w73 : F) (k : F → F → F → F → F → F → F → Prop)
    (hSpec1 : spec1 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st1 w43 w48 w53 w58 w63 w68 w73)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg13 w43 w48 w53 w58 w63 w68 w73 (fun w43 w48 w53 w58 w63 w68 w73 w78 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg14 w43 w48 w53 w58 w63 w68 w73 w78 (fun w43 w48 w53 w58 w63 w68 w73 w78 w83 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg15 w43 w48 w53 w58 w63 w68 w73 w78 w83 (fun w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg16 w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 (fun w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg17 w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 (fun w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 w98 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg18 w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 w98 (fun w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 w98 w103 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg19 w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 w98 w103 (fun w78 w83 w88 w93 w98 w103 w108 =>
      k w78 w83 w88 w93 w98 w103 w108)))))))) :
    ∃ w78 w83 w88 w93 w98 w103 w108 : F, spec2 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st2 w78 w83 w88 w93 w98 w103 w108 ∧ k w78 w83 w88 w93 w98 w103 w108 := by
  have h13 := seg13_sound w43 w48 w53 w58 w63 w68 w73 _ h
  rcases h13 with ⟨w78, hw78, h⟩
  have h14 := seg14_sound w43 w48 w53 w58 w63 w68 w73 w78 _ h
  rcases h14 with ⟨w83, hw83, h⟩
  have h15 := seg15_sound w43 w48 w53 w58 w63 w68 w73 w78 w83 _ h
  rcases h15 with ⟨w88, hw88, h⟩
  have h16 := seg16_sound w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 _ h
  rcases h16 with ⟨w93, hw93, h⟩
  have h17 := seg17_sound w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 _ h
  rcases h17 with ⟨w98, hw98, h⟩
  have h18 := seg18_sound w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 w98 _ h
  rcases h18 with ⟨w103, hw103, h⟩
  have h19 := seg19_sound w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 w98 w103 _ h
  rcases h19 with ⟨w108, hw108, h⟩
  have hSpec2 := spec2_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w43 w48 w53 w58 w63 w68 w73 w78 w83 w88 w93 w98 w103 w108 hSpec1 hw78 hw83 hw88 hw93 hw98 hw103 hw108
  exact ⟨w78, w83, w88, w93, w98, w103, w108, hSpec2, h⟩

theorem range3_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w78 : F) (w83 : F) (w88 : F) (w93 : F) (w98 : F) (w103 : F) (w108 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec2 : spec2 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st2 w78 w83 w88 w93 w98 w103 w108)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg20 w78 w83 w88 w93 w98 w103 w108 (fun w78 w83 w88 w93 w98 w103 w108 w113 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg21 w78 w83 w88 w93 w98 w103 w108 w113 (fun w78 w83 w88 w93 w98 w103 w108 w113 w118 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg22 w78 w83 w88 w93 w98 w103 w108 w113 w118 (fun w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg23 w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 (fun w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg24 w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 (fun w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 w133 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg25 w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 w133 (fun w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 w133 w138 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg26 w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 w133 w138 (fun w113 w118 w123 w128 w133 w138 w143 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg27 w113 w118 w123 w128 w133 w138 w143 (fun w113 w118 w123 w128 w133 w138 w143 w148 =>
      k w113 w118 w123 w128 w133 w138 w143 w148))))))))) :
    ∃ w113 w118 w123 w128 w133 w138 w143 w148 : F, spec4 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st4 w113 w118 w123 w128 w133 w138 w143 w148 ∧ k w113 w118 w123 w128 w133 w138 w143 w148 := by
  have h20 := seg20_sound w78 w83 w88 w93 w98 w103 w108 _ h
  rcases h20 with ⟨w113, hw113, h⟩
  have h21 := seg21_sound w78 w83 w88 w93 w98 w103 w108 w113 _ h
  rcases h21 with ⟨w118, hw118, h⟩
  have h22 := seg22_sound w78 w83 w88 w93 w98 w103 w108 w113 w118 _ h
  rcases h22 with ⟨w123, hw123, h⟩
  have h23 := seg23_sound w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 _ h
  rcases h23 with ⟨w128, hw128, h⟩
  have h24 := seg24_sound w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 _ h
  rcases h24 with ⟨w133, hw133, h⟩
  have h25 := seg25_sound w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 w133 _ h
  rcases h25 with ⟨w138, hw138, h⟩
  have h26 := seg26_sound w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 w133 w138 _ h
  rcases h26 with ⟨w143, hw143, h⟩
  have hSpec3 := spec3_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w78 w83 w88 w93 w98 w103 w108 w113 w118 w123 w128 w133 w138 w143 hSpec2 hw113 hw118 hw123 hw128 hw133 hw138 hw143
  have h27 := seg27_sound w113 w118 w123 w128 w133 w138 w143 _ h
  rcases h27 with ⟨w148, hw148, h⟩
  have hSpec4 := spec4_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 hSpec3 hw148
  exact ⟨w113, w118, w123, w128, w133, w138, w143, w148, hSpec4, h⟩

theorem range4_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w113 : F) (w118 : F) (w123 : F) (w128 : F) (w133 : F) (w138 : F) (w143 : F) (w148 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec4 : spec4 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st4 w113 w118 w123 w128 w133 w138 w143 w148)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg28 w113 w118 w123 w128 w133 w138 w143 w148 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg29 w113 w118 w123 w128 w133 w138 w143 w148 w153 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg30 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg31 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg32 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg33 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg34 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg35 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 =>
      k w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188))))))))) :
    ∃ w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 : F, spec12 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st12 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 ∧ k w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 := by
  have h28 := seg28_sound w113 w118 w123 w128 w133 w138 w143 w148 _ h
  rcases h28 with ⟨w153, hw153, h⟩
  have hSpec5 := spec5_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 hSpec4 hw153
  have h29 := seg29_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 _ h
  rcases h29 with ⟨w158, hw158, h⟩
  have hSpec6 := spec6_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 hSpec5 hw158
  have h30 := seg30_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 _ h
  rcases h30 with ⟨w163, hw163, h⟩
  have hSpec7 := spec7_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 hSpec6 hw163
  have h31 := seg31_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 _ h
  rcases h31 with ⟨w168, hw168, h⟩
  have hSpec8 := spec8_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 hSpec7 hw168
  have h32 := seg32_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 _ h
  rcases h32 with ⟨w173, hw173, h⟩
  have hSpec9 := spec9_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 hSpec8 hw173
  have h33 := seg33_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 _ h
  rcases h33 with ⟨w178, hw178, h⟩
  have hSpec10 := spec10_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 hSpec9 hw178
  have h34 := seg34_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 _ h
  rcases h34 with ⟨w183, hw183, h⟩
  have hSpec11 := spec11_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 hSpec10 hw183
  have h35 := seg35_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 _ h
  rcases h35 with ⟨w188, hw188, h⟩
  have hSpec12 := spec12_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 hSpec11 hw188
  exact ⟨w113, w118, w123, w128, w133, w138, w143, w148, w153, w158, w163, w168, w173, w178, w183, w188, hSpec12, h⟩

theorem range5_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w113 : F) (w118 : F) (w123 : F) (w128 : F) (w133 : F) (w138 : F) (w143 : F) (w148 : F) (w153 : F) (w158 : F) (w163 : F) (w168 : F) (w173 : F) (w178 : F) (w183 : F) (w188 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec12 : spec12 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st12 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg36 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg37 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg38 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg39 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg40 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg41 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg42 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg43 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 =>
      k w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228))))))))) :
    ∃ w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 : F, spec20 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st20 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 ∧ k w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 := by
  have h36 := seg36_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 _ h
  rcases h36 with ⟨w193, hw193, h⟩
  have hSpec13 := spec13_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 hSpec12 hw193
  have h37 := seg37_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 _ h
  rcases h37 with ⟨w198, hw198, h⟩
  have hSpec14 := spec14_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 hSpec13 hw198
  have h38 := seg38_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 _ h
  rcases h38 with ⟨w203, hw203, h⟩
  have hSpec15 := spec15_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 hSpec14 hw203
  have h39 := seg39_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 _ h
  rcases h39 with ⟨w208, hw208, h⟩
  have hSpec16 := spec16_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 hSpec15 hw208
  have h40 := seg40_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 _ h
  rcases h40 with ⟨w213, hw213, h⟩
  have hSpec17 := spec17_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 hSpec16 hw213
  have h41 := seg41_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 _ h
  rcases h41 with ⟨w218, hw218, h⟩
  have hSpec18 := spec18_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 hSpec17 hw218
  have h42 := seg42_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 _ h
  rcases h42 with ⟨w223, hw223, h⟩
  have hSpec19 := spec19_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 hSpec18 hw223
  have h43 := seg43_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 _ h
  rcases h43 with ⟨w228, hw228, h⟩
  have hSpec20 := spec20_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 hSpec19 hw228
  exact ⟨w113, w118, w123, w128, w133, w138, w143, w148, w153, w158, w163, w168, w173, w178, w183, w188, w193, w198, w203, w208, w213, w218, w223, w228, hSpec20, h⟩

theorem range6_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w113 : F) (w118 : F) (w123 : F) (w128 : F) (w133 : F) (w138 : F) (w143 : F) (w148 : F) (w153 : F) (w158 : F) (w163 : F) (w168 : F) (w173 : F) (w178 : F) (w183 : F) (w188 : F) (w193 : F) (w198 : F) (w203 : F) (w208 : F) (w213 : F) (w218 : F) (w223 : F) (w228 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec20 : spec20 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st20 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg44 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg45 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg46 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg47 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg48 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg49 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg50 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg51 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 =>
      k w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268))))))))) :
    ∃ w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 : F, spec28 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st28 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 ∧ k w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 := by
  have h44 := seg44_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 _ h
  rcases h44 with ⟨w233, hw233, h⟩
  have hSpec21 := spec21_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 hSpec20 hw233
  have h45 := seg45_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 _ h
  rcases h45 with ⟨w238, hw238, h⟩
  have hSpec22 := spec22_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 hSpec21 hw238
  have h46 := seg46_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 _ h
  rcases h46 with ⟨w243, hw243, h⟩
  have hSpec23 := spec23_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 hSpec22 hw243
  have h47 := seg47_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 _ h
  rcases h47 with ⟨w248, hw248, h⟩
  have hSpec24 := spec24_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 hSpec23 hw248
  have h48 := seg48_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 _ h
  rcases h48 with ⟨w253, hw253, h⟩
  have hSpec25 := spec25_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 hSpec24 hw253
  have h49 := seg49_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 _ h
  rcases h49 with ⟨w258, hw258, h⟩
  have hSpec26 := spec26_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 hSpec25 hw258
  have h50 := seg50_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 _ h
  rcases h50 with ⟨w263, hw263, h⟩
  have hSpec27 := spec27_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 hSpec26 hw263
  have h51 := seg51_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 _ h
  rcases h51 with ⟨w268, hw268, h⟩
  have hSpec28 := spec28_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 hSpec27 hw268
  exact ⟨w113, w118, w123, w128, w133, w138, w143, w148, w153, w158, w163, w168, w173, w178, w183, w188, w193, w198, w203, w208, w213, w218, w223, w228, w233, w238, w243, w248, w253, w258, w263, w268, hSpec28, h⟩

theorem range7_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w113 : F) (w118 : F) (w123 : F) (w128 : F) (w133 : F) (w138 : F) (w143 : F) (w148 : F) (w153 : F) (w158 : F) (w163 : F) (w168 : F) (w173 : F) (w178 : F) (w183 : F) (w188 : F) (w193 : F) (w198 : F) (w203 : F) (w208 : F) (w213 : F) (w218 : F) (w223 : F) (w228 : F) (w233 : F) (w238 : F) (w243 : F) (w248 : F) (w253 : F) (w258 : F) (w263 : F) (w268 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec28 : spec28 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st28 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg52 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg53 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg54 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg55 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg56 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg57 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 =>
      k w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298))))))) :
    ∃ w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 : F, spec34 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st34 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 ∧ k w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 := by
  have h52 := seg52_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 _ h
  rcases h52 with ⟨w273, hw273, h⟩
  have hSpec29 := spec29_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 hSpec28 hw273
  have h53 := seg53_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 _ h
  rcases h53 with ⟨w278, hw278, h⟩
  have hSpec30 := spec30_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 hSpec29 hw278
  have h54 := seg54_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 _ h
  rcases h54 with ⟨w283, hw283, h⟩
  have hSpec31 := spec31_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 hSpec30 hw283
  have h55 := seg55_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 _ h
  rcases h55 with ⟨w288, hw288, h⟩
  have hSpec32 := spec32_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 hSpec31 hw288
  have h56 := seg56_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 _ h
  rcases h56 with ⟨w293, hw293, h⟩
  have hSpec33 := spec33_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 hSpec32 hw293
  have h57 := seg57_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 _ h
  rcases h57 with ⟨w298, hw298, h⟩
  have hSpec34 := spec34_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 hSpec33 hw298
  exact ⟨w113, w118, w123, w128, w133, w138, w143, w148, w153, w158, w163, w168, w173, w178, w183, w188, w193, w198, w203, w208, w213, w218, w223, w228, w233, w238, w243, w248, w253, w258, w263, w268, w273, w278, w283, w288, w293, w298, hSpec34, h⟩

theorem range8_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w113 : F) (w118 : F) (w123 : F) (w128 : F) (w133 : F) (w138 : F) (w143 : F) (w148 : F) (w153 : F) (w158 : F) (w163 : F) (w168 : F) (w173 : F) (w178 : F) (w183 : F) (w188 : F) (w193 : F) (w198 : F) (w203 : F) (w208 : F) (w213 : F) (w218 : F) (w223 : F) (w228 : F) (w233 : F) (w238 : F) (w243 : F) (w248 : F) (w253 : F) (w258 : F) (w263 : F) (w268 : F) (w273 : F) (w278 : F) (w283 : F) (w288 : F) (w293 : F) (w298 : F) (k : F → F → F → F → F → F → F → Prop)
    (hSpec34 : spec34 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st34 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg58 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg59 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg60 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg61 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg62 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 w323 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg63 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 w323 (fun w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 w323 w328 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg64 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 w323 w328 (fun w303 w308 w313 w318 w323 w328 w333 =>
      k w303 w308 w313 w318 w323 w328 w333)))))))) :
    ∃ w303 w308 w313 w318 w323 w328 w333 : F, spec35 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st35 w303 w308 w313 w318 w323 w328 w333 ∧ k w303 w308 w313 w318 w323 w328 w333 := by
  have h58 := seg58_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 _ h
  rcases h58 with ⟨w303, hw303, h⟩
  have h59 := seg59_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 _ h
  rcases h59 with ⟨w308, hw308, h⟩
  have h60 := seg60_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 _ h
  rcases h60 with ⟨w313, hw313, h⟩
  have h61 := seg61_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 _ h
  rcases h61 with ⟨w318, hw318, h⟩
  have h62 := seg62_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 _ h
  rcases h62 with ⟨w323, hw323, h⟩
  have h63 := seg63_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 w323 _ h
  rcases h63 with ⟨w328, hw328, h⟩
  have h64 := seg64_sound w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 w323 w328 _ h
  rcases h64 with ⟨w333, hw333, h⟩
  have hSpec35 := spec35_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 w303 w308 w313 w318 w323 w328 w333 hSpec34 hw303 hw308 hw313 hw318 hw323 hw328 hw333
  exact ⟨w303, w308, w313, w318, w323, w328, w333, hSpec35, h⟩

theorem range9_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w303 : F) (w308 : F) (w313 : F) (w318 : F) (w323 : F) (w328 : F) (w333 : F) (k : F → F → F → F → F → F → F → Prop)
    (hSpec35 : spec35 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st35 w303 w308 w313 w318 w323 w328 w333)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg65 w303 w308 w313 w318 w323 w328 w333 (fun w303 w308 w313 w318 w323 w328 w333 w338 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg66 w303 w308 w313 w318 w323 w328 w333 w338 (fun w303 w308 w313 w318 w323 w328 w333 w338 w343 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg67 w303 w308 w313 w318 w323 w328 w333 w338 w343 (fun w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg68 w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 (fun w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg69 w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 (fun w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 w358 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg70 w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 w358 (fun w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 w358 w363 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg71 w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 w358 w363 (fun w338 w343 w348 w353 w358 w363 w368 =>
      k w338 w343 w348 w353 w358 w363 w368)))))))) :
    ∃ w338 w343 w348 w353 w358 w363 w368 : F, spec36 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st36 w338 w343 w348 w353 w358 w363 w368 ∧ k w338 w343 w348 w353 w358 w363 w368 := by
  have h65 := seg65_sound w303 w308 w313 w318 w323 w328 w333 _ h
  rcases h65 with ⟨w338, hw338, h⟩
  have h66 := seg66_sound w303 w308 w313 w318 w323 w328 w333 w338 _ h
  rcases h66 with ⟨w343, hw343, h⟩
  have h67 := seg67_sound w303 w308 w313 w318 w323 w328 w333 w338 w343 _ h
  rcases h67 with ⟨w348, hw348, h⟩
  have h68 := seg68_sound w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 _ h
  rcases h68 with ⟨w353, hw353, h⟩
  have h69 := seg69_sound w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 _ h
  rcases h69 with ⟨w358, hw358, h⟩
  have h70 := seg70_sound w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 w358 _ h
  rcases h70 with ⟨w363, hw363, h⟩
  have h71 := seg71_sound w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 w358 w363 _ h
  rcases h71 with ⟨w368, hw368, h⟩
  have hSpec36 := spec36_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w303 w308 w313 w318 w323 w328 w333 w338 w343 w348 w353 w358 w363 w368 hSpec35 hw338 hw343 hw348 hw353 hw358 hw363 hw368
  exact ⟨w338, w343, w348, w353, w358, w363, w368, hSpec36, h⟩

theorem range10_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w338 : F) (w343 : F) (w348 : F) (w353 : F) (w358 : F) (w363 : F) (w368 : F) (k : F → F → F → F → F → F → F → Prop)
    (hSpec36 : spec36 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st36 w338 w343 w348 w353 w358 w363 w368)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg72 w338 w343 w348 w353 w358 w363 w368 (fun w338 w343 w348 w353 w358 w363 w368 w373 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg73 w338 w343 w348 w353 w358 w363 w368 w373 (fun w338 w343 w348 w353 w358 w363 w368 w373 w378 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg74 w338 w343 w348 w353 w358 w363 w368 w373 w378 (fun w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg75 w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 (fun w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg76 w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 (fun w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 w393 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg77 w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 w393 (fun w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 w393 w398 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg78 w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 w393 w398 (fun w373 w378 w383 w388 w393 w398 w403 =>
      k w373 w378 w383 w388 w393 w398 w403)))))))) :
    ∃ w373 w378 w383 w388 w393 w398 w403 : F, spec37 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st37 w373 w378 w383 w388 w393 w398 w403 ∧ k w373 w378 w383 w388 w393 w398 w403 := by
  have h72 := seg72_sound w338 w343 w348 w353 w358 w363 w368 _ h
  rcases h72 with ⟨w373, hw373, h⟩
  have h73 := seg73_sound w338 w343 w348 w353 w358 w363 w368 w373 _ h
  rcases h73 with ⟨w378, hw378, h⟩
  have h74 := seg74_sound w338 w343 w348 w353 w358 w363 w368 w373 w378 _ h
  rcases h74 with ⟨w383, hw383, h⟩
  have h75 := seg75_sound w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 _ h
  rcases h75 with ⟨w388, hw388, h⟩
  have h76 := seg76_sound w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 _ h
  rcases h76 with ⟨w393, hw393, h⟩
  have h77 := seg77_sound w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 w393 _ h
  rcases h77 with ⟨w398, hw398, h⟩
  have h78 := seg78_sound w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 w393 w398 _ h
  rcases h78 with ⟨w403, hw403, h⟩
  have hSpec37 := spec37_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w338 w343 w348 w353 w358 w363 w368 w373 w378 w383 w388 w393 w398 w403 hSpec36 hw373 hw378 hw383 hw388 hw393 hw398 hw403
  exact ⟨w373, w378, w383, w388, w393, w398, w403, hSpec37, h⟩

theorem range11_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w373 : F) (w378 : F) (w383 : F) (w388 : F) (w393 : F) (w398 : F) (w403 : F) (k : F → F → F → F → F → F → F → Prop)
    (hSpec37 : spec37 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st37 w373 w378 w383 w388 w393 w398 w403)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg79 w373 w378 w383 w388 w393 w398 w403 (fun w373 w378 w383 w388 w393 w398 w403 w408 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg80 w373 w378 w383 w388 w393 w398 w403 w408 (fun w373 w378 w383 w388 w393 w398 w403 w408 w413 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg81 w373 w378 w383 w388 w393 w398 w403 w408 w413 (fun w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg82 w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 (fun w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg83 w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 (fun w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 w428 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg84 w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 w428 (fun w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 w428 w433 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg85 w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 w428 w433 (fun w408 w413 w418 w423 w428 w433 w438 =>
      k w408 w413 w418 w423 w428 w433 w438)))))))) :
    ∃ w408 w413 w418 w423 w428 w433 w438 : F, spec38 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) = st38 w408 w413 w418 w423 w428 w433 w438 ∧ k w408 w413 w418 w423 w428 w433 w438 := by
  have h79 := seg79_sound w373 w378 w383 w388 w393 w398 w403 _ h
  rcases h79 with ⟨w408, hw408, h⟩
  have h80 := seg80_sound w373 w378 w383 w388 w393 w398 w403 w408 _ h
  rcases h80 with ⟨w413, hw413, h⟩
  have h81 := seg81_sound w373 w378 w383 w388 w393 w398 w403 w408 w413 _ h
  rcases h81 with ⟨w418, hw418, h⟩
  have h82 := seg82_sound w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 _ h
  rcases h82 with ⟨w423, hw423, h⟩
  have h83 := seg83_sound w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 _ h
  rcases h83 with ⟨w428, hw428, h⟩
  have h84 := seg84_sound w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 w428 _ h
  rcases h84 with ⟨w433, hw433, h⟩
  have h85 := seg85_sound w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 w428 w433 _ h
  rcases h85 with ⟨w438, hw438, h⟩
  have hSpec38 := spec38_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) w373 w378 w383 w388 w393 w398 w403 w408 w413 w418 w423 w428 w433 w438 hSpec37 hw408 hw413 hw418 hw423 hw428 hw433 hw438
  exact ⟨w408, w413, w418, w423, w428, w433, w438, hSpec38, h⟩

theorem relation_sound_permSpec (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (k : F → F → F → F → F → F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.relation w1 w2 w8 w9 w15 w21 w27 w33 k →
      ∃ w408 w413 w418 w423 w428 w433 w438 : F, k w408 w413 w418 w423 w428 w433 w438 ∧
        s38_1 w408 w413 w418 w423 w428 w433 w438 = permSpec6 domainLit ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.relation
  intro h
  have r0 := range0_sound w1 w2 w8 w9 w15 w21 w27 w33 _ h
  rcases r0 with ⟨w7, w14, w20, w26, w32, w38, hSpec0, h⟩
  have r1 := range1_sound w1 w2 w8 w9 w15 w21 w27 w33 w7 w14 w20 w26 w32 w38 _ hSpec0 h
  rcases r1 with ⟨w43, w48, w53, w58, w63, w68, w73, hSpec1, h⟩
  have r2 := range2_sound w1 w2 w8 w9 w15 w21 w27 w33 w43 w48 w53 w58 w63 w68 w73 _ hSpec1 h
  rcases r2 with ⟨w78, w83, w88, w93, w98, w103, w108, hSpec2, h⟩
  have r3 := range3_sound w1 w2 w8 w9 w15 w21 w27 w33 w78 w83 w88 w93 w98 w103 w108 _ hSpec2 h
  rcases r3 with ⟨w113, w118, w123, w128, w133, w138, w143, w148, hSpec4, h⟩
  have r4 := range4_sound w1 w2 w8 w9 w15 w21 w27 w33 w113 w118 w123 w128 w133 w138 w143 w148 _ hSpec4 h
  rcases r4 with ⟨w113, w118, w123, w128, w133, w138, w143, w148, w153, w158, w163, w168, w173, w178, w183, w188, hSpec12, h⟩
  have r5 := range5_sound w1 w2 w8 w9 w15 w21 w27 w33 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 _ hSpec12 h
  rcases r5 with ⟨w113, w118, w123, w128, w133, w138, w143, w148, w153, w158, w163, w168, w173, w178, w183, w188, w193, w198, w203, w208, w213, w218, w223, w228, hSpec20, h⟩
  have r6 := range6_sound w1 w2 w8 w9 w15 w21 w27 w33 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 _ hSpec20 h
  rcases r6 with ⟨w113, w118, w123, w128, w133, w138, w143, w148, w153, w158, w163, w168, w173, w178, w183, w188, w193, w198, w203, w208, w213, w218, w223, w228, w233, w238, w243, w248, w253, w258, w263, w268, hSpec28, h⟩
  have r7 := range7_sound w1 w2 w8 w9 w15 w21 w27 w33 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 _ hSpec28 h
  rcases r7 with ⟨w113, w118, w123, w128, w133, w138, w143, w148, w153, w158, w163, w168, w173, w178, w183, w188, w193, w198, w203, w208, w213, w218, w223, w228, w233, w238, w243, w248, w253, w258, w263, w268, w273, w278, w283, w288, w293, w298, hSpec34, h⟩
  have r8 := range8_sound w1 w2 w8 w9 w15 w21 w27 w33 w113 w118 w123 w128 w133 w138 w143 w148 w153 w158 w163 w168 w173 w178 w183 w188 w193 w198 w203 w208 w213 w218 w223 w228 w233 w238 w243 w248 w253 w258 w263 w268 w273 w278 w283 w288 w293 w298 _ hSpec34 h
  rcases r8 with ⟨w303, w308, w313, w318, w323, w328, w333, hSpec35, h⟩
  have r9 := range9_sound w1 w2 w8 w9 w15 w21 w27 w33 w303 w308 w313 w318 w323 w328 w333 _ hSpec35 h
  rcases r9 with ⟨w338, w343, w348, w353, w358, w363, w368, hSpec36, h⟩
  have r10 := range10_sound w1 w2 w8 w9 w15 w21 w27 w33 w338 w343 w348 w353 w358 w363 w368 _ hSpec36 h
  rcases r10 with ⟨w373, w378, w383, w388, w393, w398, w403, hSpec37, h⟩
  have r11 := range11_sound w1 w2 w8 w9 w15 w21 w27 w33 w373 w378 w383 w388 w393 w398 w403 _ hSpec37 h
  rcases r11 with ⟨w408, w413, w418, w423, w428, w433, w438, hSpec38, h⟩
  refine ⟨w408, w413, w418, w423, w428, w433, w438, h, ?_⟩
  rw [← spec38_eq_permSpec ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53Poseidon
