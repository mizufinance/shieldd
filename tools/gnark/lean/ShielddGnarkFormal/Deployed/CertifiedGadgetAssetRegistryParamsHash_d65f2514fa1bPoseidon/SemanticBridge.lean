import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon4Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon4Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash4.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.Order))

theorem range0_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (k : F → F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg0 w1 w2 w8 w14 w20 (fun w8 w14 w20 w7 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg1 w7 w8 w14 w20 (fun w7 w14 w20 w13 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg2 w7 w13 w14 w20 (fun w7 w13 w20 w19 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg3 w7 w13 w19 w20 (fun w7 w13 w19 w25 =>
      k w7 w13 w19 w25))))) :
    ∃ w7 w13 w19 w25 : F, spec0 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st0 w7 w13 w19 w25 ∧ k w7 w13 w19 w25 := by
  have h0 := seg0_sound w1 w2 w8 w14 w20 _ h
  rcases h0 with ⟨w7, hw7, h⟩
  have h1 := seg1_sound w7 w8 w14 w20 _ h
  rcases h1 with ⟨w13, hw13, h⟩
  have h2 := seg2_sound w7 w13 w14 w20 _ h
  rcases h2 with ⟨w19, hw19, h⟩
  have h3 := seg3_sound w7 w13 w19 w20 _ h
  rcases h3 with ⟨w25, hw25, h⟩
  have hSpec0 := spec0_eq ((-1 : F) * w1 + w2) (w8) (w14) (w20) w7 w13 w19 w25 hw7 hw13 hw19 hw25
  exact ⟨w7, w13, w19, w25, hSpec0, h⟩

theorem range1_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (k : F → F → F → F → F → Prop)
    (hSpec0 : spec0 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st0 w7 w13 w19 w25)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg4 w7 w13 w19 w25 (fun w7 w13 w19 w25 w30 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg5 w7 w13 w19 w25 w30 (fun w7 w13 w19 w25 w30 w35 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg6 w7 w13 w19 w25 w30 w35 (fun w7 w13 w19 w25 w30 w35 w40 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg7 w7 w13 w19 w25 w30 w35 w40 (fun w7 w13 w19 w25 w30 w35 w40 w45 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg8 w7 w13 w19 w25 w30 w35 w40 w45 (fun w30 w35 w40 w45 w50 =>
      k w30 w35 w40 w45 w50)))))) :
    ∃ w30 w35 w40 w45 w50 : F, spec1 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st1 w30 w35 w40 w45 w50 ∧ k w30 w35 w40 w45 w50 := by
  have h4 := seg4_sound w7 w13 w19 w25 _ h
  rcases h4 with ⟨w30, hw30, h⟩
  have h5 := seg5_sound w7 w13 w19 w25 w30 _ h
  rcases h5 with ⟨w35, hw35, h⟩
  have h6 := seg6_sound w7 w13 w19 w25 w30 w35 _ h
  rcases h6 with ⟨w40, hw40, h⟩
  have h7 := seg7_sound w7 w13 w19 w25 w30 w35 w40 _ h
  rcases h7 with ⟨w45, hw45, h⟩
  have h8 := seg8_sound w7 w13 w19 w25 w30 w35 w40 w45 _ h
  rcases h8 with ⟨w50, hw50, h⟩
  have hSpec1 := spec1_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w7 w13 w19 w25 w30 w35 w40 w45 w50 hSpec0 hw30 hw35 hw40 hw45 hw50
  exact ⟨w30, w35, w40, w45, w50, hSpec1, h⟩

theorem range2_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w30 : F) (w35 : F) (w40 : F) (w45 : F) (w50 : F) (k : F → F → F → F → F → Prop)
    (hSpec1 : spec1 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st1 w30 w35 w40 w45 w50)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg9 w30 w35 w40 w45 w50 (fun w30 w35 w40 w45 w50 w55 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg10 w30 w35 w40 w45 w50 w55 (fun w30 w35 w40 w45 w50 w55 w60 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg11 w30 w35 w40 w45 w50 w55 w60 (fun w30 w35 w40 w45 w50 w55 w60 w65 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg12 w30 w35 w40 w45 w50 w55 w60 w65 (fun w30 w35 w40 w45 w50 w55 w60 w65 w70 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg13 w30 w35 w40 w45 w50 w55 w60 w65 w70 (fun w55 w60 w65 w70 w75 =>
      k w55 w60 w65 w70 w75)))))) :
    ∃ w55 w60 w65 w70 w75 : F, spec2 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st2 w55 w60 w65 w70 w75 ∧ k w55 w60 w65 w70 w75 := by
  have h9 := seg9_sound w30 w35 w40 w45 w50 _ h
  rcases h9 with ⟨w55, hw55, h⟩
  have h10 := seg10_sound w30 w35 w40 w45 w50 w55 _ h
  rcases h10 with ⟨w60, hw60, h⟩
  have h11 := seg11_sound w30 w35 w40 w45 w50 w55 w60 _ h
  rcases h11 with ⟨w65, hw65, h⟩
  have h12 := seg12_sound w30 w35 w40 w45 w50 w55 w60 w65 _ h
  rcases h12 with ⟨w70, hw70, h⟩
  have h13 := seg13_sound w30 w35 w40 w45 w50 w55 w60 w65 w70 _ h
  rcases h13 with ⟨w75, hw75, h⟩
  have hSpec2 := spec2_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w30 w35 w40 w45 w50 w55 w60 w65 w70 w75 hSpec1 hw55 hw60 hw65 hw70 hw75
  exact ⟨w55, w60, w65, w70, w75, hSpec2, h⟩

theorem range3_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w55 : F) (w60 : F) (w65 : F) (w70 : F) (w75 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec2 : spec2 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st2 w55 w60 w65 w70 w75)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg14 w55 w60 w65 w70 w75 (fun w55 w60 w65 w70 w75 w80 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg15 w55 w60 w65 w70 w75 w80 (fun w55 w60 w65 w70 w75 w80 w85 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg16 w55 w60 w65 w70 w75 w80 w85 (fun w55 w60 w65 w70 w75 w80 w85 w90 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg17 w55 w60 w65 w70 w75 w80 w85 w90 (fun w55 w60 w65 w70 w75 w80 w85 w90 w95 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg18 w55 w60 w65 w70 w75 w80 w85 w90 w95 (fun w80 w85 w90 w95 w100 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg19 w80 w85 w90 w95 w100 (fun w80 w85 w90 w95 w100 w105 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg20 w80 w85 w90 w95 w100 w105 (fun w80 w85 w90 w95 w100 w105 w110 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg21 w80 w85 w90 w95 w100 w105 w110 (fun w80 w85 w90 w95 w100 w105 w110 w115 =>
      k w80 w85 w90 w95 w100 w105 w110 w115))))))))) :
    ∃ w80 w85 w90 w95 w100 w105 w110 w115 : F, spec6 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st6 w80 w85 w90 w95 w100 w105 w110 w115 ∧ k w80 w85 w90 w95 w100 w105 w110 w115 := by
  have h14 := seg14_sound w55 w60 w65 w70 w75 _ h
  rcases h14 with ⟨w80, hw80, h⟩
  have h15 := seg15_sound w55 w60 w65 w70 w75 w80 _ h
  rcases h15 with ⟨w85, hw85, h⟩
  have h16 := seg16_sound w55 w60 w65 w70 w75 w80 w85 _ h
  rcases h16 with ⟨w90, hw90, h⟩
  have h17 := seg17_sound w55 w60 w65 w70 w75 w80 w85 w90 _ h
  rcases h17 with ⟨w95, hw95, h⟩
  have h18 := seg18_sound w55 w60 w65 w70 w75 w80 w85 w90 w95 _ h
  rcases h18 with ⟨w100, hw100, h⟩
  have hSpec3 := spec3_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w55 w60 w65 w70 w75 w80 w85 w90 w95 w100 hSpec2 hw80 hw85 hw90 hw95 hw100
  have h19 := seg19_sound w80 w85 w90 w95 w100 _ h
  rcases h19 with ⟨w105, hw105, h⟩
  have hSpec4 := spec4_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 hSpec3 hw105
  have h20 := seg20_sound w80 w85 w90 w95 w100 w105 _ h
  rcases h20 with ⟨w110, hw110, h⟩
  have hSpec5 := spec5_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 hSpec4 hw110
  have h21 := seg21_sound w80 w85 w90 w95 w100 w105 w110 _ h
  rcases h21 with ⟨w115, hw115, h⟩
  have hSpec6 := spec6_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 hSpec5 hw115
  exact ⟨w80, w85, w90, w95, w100, w105, w110, w115, hSpec6, h⟩

theorem range4_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w80 : F) (w85 : F) (w90 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec6 : spec6 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st6 w80 w85 w90 w95 w100 w105 w110 w115)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg22 w80 w85 w90 w95 w100 w105 w110 w115 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg23 w80 w85 w90 w95 w100 w105 w110 w115 w120 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg24 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg25 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg26 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg27 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg28 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg29 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 =>
      k w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155))))))))) :
    ∃ w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 : F, spec14 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st14 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 ∧ k w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 := by
  have h22 := seg22_sound w80 w85 w90 w95 w100 w105 w110 w115 _ h
  rcases h22 with ⟨w120, hw120, h⟩
  have hSpec7 := spec7_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 hSpec6 hw120
  have h23 := seg23_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 _ h
  rcases h23 with ⟨w125, hw125, h⟩
  have hSpec8 := spec8_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 hSpec7 hw125
  have h24 := seg24_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 _ h
  rcases h24 with ⟨w130, hw130, h⟩
  have hSpec9 := spec9_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 hSpec8 hw130
  have h25 := seg25_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 _ h
  rcases h25 with ⟨w135, hw135, h⟩
  have hSpec10 := spec10_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 hSpec9 hw135
  have h26 := seg26_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 _ h
  rcases h26 with ⟨w140, hw140, h⟩
  have hSpec11 := spec11_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 hSpec10 hw140
  have h27 := seg27_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 _ h
  rcases h27 with ⟨w145, hw145, h⟩
  have hSpec12 := spec12_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 hSpec11 hw145
  have h28 := seg28_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 _ h
  rcases h28 with ⟨w150, hw150, h⟩
  have hSpec13 := spec13_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 hSpec12 hw150
  have h29 := seg29_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 _ h
  rcases h29 with ⟨w155, hw155, h⟩
  have hSpec14 := spec14_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 hSpec13 hw155
  exact ⟨w80, w85, w90, w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, hSpec14, h⟩

theorem range5_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w80 : F) (w85 : F) (w90 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (w135 : F) (w140 : F) (w145 : F) (w150 : F) (w155 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec14 : spec14 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st14 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg30 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg31 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg32 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg33 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg34 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg35 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg36 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg37 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 =>
      k w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195))))))))) :
    ∃ w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 : F, spec22 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st22 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 ∧ k w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 := by
  have h30 := seg30_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 _ h
  rcases h30 with ⟨w160, hw160, h⟩
  have hSpec15 := spec15_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 hSpec14 hw160
  have h31 := seg31_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 _ h
  rcases h31 with ⟨w165, hw165, h⟩
  have hSpec16 := spec16_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 hSpec15 hw165
  have h32 := seg32_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 _ h
  rcases h32 with ⟨w170, hw170, h⟩
  have hSpec17 := spec17_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 hSpec16 hw170
  have h33 := seg33_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 _ h
  rcases h33 with ⟨w175, hw175, h⟩
  have hSpec18 := spec18_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 hSpec17 hw175
  have h34 := seg34_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 _ h
  rcases h34 with ⟨w180, hw180, h⟩
  have hSpec19 := spec19_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 hSpec18 hw180
  have h35 := seg35_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 _ h
  rcases h35 with ⟨w185, hw185, h⟩
  have hSpec20 := spec20_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 hSpec19 hw185
  have h36 := seg36_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 _ h
  rcases h36 with ⟨w190, hw190, h⟩
  have hSpec21 := spec21_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 hSpec20 hw190
  have h37 := seg37_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 _ h
  rcases h37 with ⟨w195, hw195, h⟩
  have hSpec22 := spec22_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 hSpec21 hw195
  exact ⟨w80, w85, w90, w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, hSpec22, h⟩

theorem range6_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w80 : F) (w85 : F) (w90 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (w135 : F) (w140 : F) (w145 : F) (w150 : F) (w155 : F) (w160 : F) (w165 : F) (w170 : F) (w175 : F) (w180 : F) (w185 : F) (w190 : F) (w195 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec22 : spec22 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st22 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg38 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg39 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg40 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg41 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg42 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg43 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg44 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg45 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 =>
      k w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235))))))))) :
    ∃ w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 : F, spec30 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st30 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 ∧ k w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 := by
  have h38 := seg38_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 _ h
  rcases h38 with ⟨w200, hw200, h⟩
  have hSpec23 := spec23_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 hSpec22 hw200
  have h39 := seg39_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 _ h
  rcases h39 with ⟨w205, hw205, h⟩
  have hSpec24 := spec24_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 hSpec23 hw205
  have h40 := seg40_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 _ h
  rcases h40 with ⟨w210, hw210, h⟩
  have hSpec25 := spec25_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 hSpec24 hw210
  have h41 := seg41_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 _ h
  rcases h41 with ⟨w215, hw215, h⟩
  have hSpec26 := spec26_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 hSpec25 hw215
  have h42 := seg42_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 _ h
  rcases h42 with ⟨w220, hw220, h⟩
  have hSpec27 := spec27_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 hSpec26 hw220
  have h43 := seg43_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 _ h
  rcases h43 with ⟨w225, hw225, h⟩
  have hSpec28 := spec28_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 hSpec27 hw225
  have h44 := seg44_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 _ h
  rcases h44 with ⟨w230, hw230, h⟩
  have hSpec29 := spec29_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 hSpec28 hw230
  have h45 := seg45_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 _ h
  rcases h45 with ⟨w235, hw235, h⟩
  have hSpec30 := spec30_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 hSpec29 hw235
  exact ⟨w80, w85, w90, w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, w215, w220, w225, w230, w235, hSpec30, h⟩

theorem range7_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w80 : F) (w85 : F) (w90 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (w135 : F) (w140 : F) (w145 : F) (w150 : F) (w155 : F) (w160 : F) (w165 : F) (w170 : F) (w175 : F) (w180 : F) (w185 : F) (w190 : F) (w195 : F) (w200 : F) (w205 : F) (w210 : F) (w215 : F) (w220 : F) (w225 : F) (w230 : F) (w235 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec30 : spec30 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st30 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg46 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg47 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg48 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg49 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 =>
      k w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255))))) :
    ∃ w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 : F, spec34 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st34 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 ∧ k w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 := by
  have h46 := seg46_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 _ h
  rcases h46 with ⟨w240, hw240, h⟩
  have hSpec31 := spec31_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 hSpec30 hw240
  have h47 := seg47_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 _ h
  rcases h47 with ⟨w245, hw245, h⟩
  have hSpec32 := spec32_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 hSpec31 hw245
  have h48 := seg48_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 _ h
  rcases h48 with ⟨w250, hw250, h⟩
  have hSpec33 := spec33_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 hSpec32 hw250
  have h49 := seg49_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 _ h
  rcases h49 with ⟨w255, hw255, h⟩
  have hSpec34 := spec34_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 hSpec33 hw255
  exact ⟨w80, w85, w90, w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, w215, w220, w225, w230, w235, w240, w245, w250, w255, hSpec34, h⟩

theorem range8_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w80 : F) (w85 : F) (w90 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (w135 : F) (w140 : F) (w145 : F) (w150 : F) (w155 : F) (w160 : F) (w165 : F) (w170 : F) (w175 : F) (w180 : F) (w185 : F) (w190 : F) (w195 : F) (w200 : F) (w205 : F) (w210 : F) (w215 : F) (w220 : F) (w225 : F) (w230 : F) (w235 : F) (w240 : F) (w245 : F) (w250 : F) (w255 : F) (k : F → F → F → F → F → Prop)
    (hSpec34 : spec34 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st34 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg50 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg51 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg52 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg53 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 (fun w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg54 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 (fun w260 w265 w270 w275 w280 =>
      k w260 w265 w270 w275 w280)))))) :
    ∃ w260 w265 w270 w275 w280 : F, spec35 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st35 w260 w265 w270 w275 w280 ∧ k w260 w265 w270 w275 w280 := by
  have h50 := seg50_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 _ h
  rcases h50 with ⟨w260, hw260, h⟩
  have h51 := seg51_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 _ h
  rcases h51 with ⟨w265, hw265, h⟩
  have h52 := seg52_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 _ h
  rcases h52 with ⟨w270, hw270, h⟩
  have h53 := seg53_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 _ h
  rcases h53 with ⟨w275, hw275, h⟩
  have h54 := seg54_sound w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 _ h
  rcases h54 with ⟨w280, hw280, h⟩
  have hSpec35 := spec35_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 hSpec34 hw260 hw265 hw270 hw275 hw280
  exact ⟨w260, w265, w270, w275, w280, hSpec35, h⟩

theorem range9_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w260 : F) (w265 : F) (w270 : F) (w275 : F) (w280 : F) (k : F → F → F → F → F → Prop)
    (hSpec35 : spec35 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st35 w260 w265 w270 w275 w280)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg55 w260 w265 w270 w275 w280 (fun w260 w265 w270 w275 w280 w285 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg56 w260 w265 w270 w275 w280 w285 (fun w260 w265 w270 w275 w280 w285 w290 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg57 w260 w265 w270 w275 w280 w285 w290 (fun w260 w265 w270 w275 w280 w285 w290 w295 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg58 w260 w265 w270 w275 w280 w285 w290 w295 (fun w260 w265 w270 w275 w280 w285 w290 w295 w300 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg59 w260 w265 w270 w275 w280 w285 w290 w295 w300 (fun w285 w290 w295 w300 w305 =>
      k w285 w290 w295 w300 w305)))))) :
    ∃ w285 w290 w295 w300 w305 : F, spec36 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st36 w285 w290 w295 w300 w305 ∧ k w285 w290 w295 w300 w305 := by
  have h55 := seg55_sound w260 w265 w270 w275 w280 _ h
  rcases h55 with ⟨w285, hw285, h⟩
  have h56 := seg56_sound w260 w265 w270 w275 w280 w285 _ h
  rcases h56 with ⟨w290, hw290, h⟩
  have h57 := seg57_sound w260 w265 w270 w275 w280 w285 w290 _ h
  rcases h57 with ⟨w295, hw295, h⟩
  have h58 := seg58_sound w260 w265 w270 w275 w280 w285 w290 w295 _ h
  rcases h58 with ⟨w300, hw300, h⟩
  have h59 := seg59_sound w260 w265 w270 w275 w280 w285 w290 w295 w300 _ h
  rcases h59 with ⟨w305, hw305, h⟩
  have hSpec36 := spec36_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w260 w265 w270 w275 w280 w285 w290 w295 w300 w305 hSpec35 hw285 hw290 hw295 hw300 hw305
  exact ⟨w285, w290, w295, w300, w305, hSpec36, h⟩

theorem range10_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w285 : F) (w290 : F) (w295 : F) (w300 : F) (w305 : F) (k : F → F → F → F → F → Prop)
    (hSpec36 : spec36 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st36 w285 w290 w295 w300 w305)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg60 w285 w290 w295 w300 w305 (fun w285 w290 w295 w300 w305 w310 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg61 w285 w290 w295 w300 w305 w310 (fun w285 w290 w295 w300 w305 w310 w315 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg62 w285 w290 w295 w300 w305 w310 w315 (fun w285 w290 w295 w300 w305 w310 w315 w320 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg63 w285 w290 w295 w300 w305 w310 w315 w320 (fun w285 w290 w295 w300 w305 w310 w315 w320 w325 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg64 w285 w290 w295 w300 w305 w310 w315 w320 w325 (fun w310 w315 w320 w325 w330 =>
      k w310 w315 w320 w325 w330)))))) :
    ∃ w310 w315 w320 w325 w330 : F, spec37 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st37 w310 w315 w320 w325 w330 ∧ k w310 w315 w320 w325 w330 := by
  have h60 := seg60_sound w285 w290 w295 w300 w305 _ h
  rcases h60 with ⟨w310, hw310, h⟩
  have h61 := seg61_sound w285 w290 w295 w300 w305 w310 _ h
  rcases h61 with ⟨w315, hw315, h⟩
  have h62 := seg62_sound w285 w290 w295 w300 w305 w310 w315 _ h
  rcases h62 with ⟨w320, hw320, h⟩
  have h63 := seg63_sound w285 w290 w295 w300 w305 w310 w315 w320 _ h
  rcases h63 with ⟨w325, hw325, h⟩
  have h64 := seg64_sound w285 w290 w295 w300 w305 w310 w315 w320 w325 _ h
  rcases h64 with ⟨w330, hw330, h⟩
  have hSpec37 := spec37_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w285 w290 w295 w300 w305 w310 w315 w320 w325 w330 hSpec36 hw310 hw315 hw320 hw325 hw330
  exact ⟨w310, w315, w320, w325, w330, hSpec37, h⟩

theorem range11_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w310 : F) (w315 : F) (w320 : F) (w325 : F) (w330 : F) (k : F → F → F → F → F → Prop)
    (hSpec37 : spec37 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st37 w310 w315 w320 w325 w330)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg65 w310 w315 w320 w325 w330 (fun w310 w315 w320 w325 w330 w335 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg66 w310 w315 w320 w325 w330 w335 (fun w310 w315 w320 w325 w330 w335 w340 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg67 w310 w315 w320 w325 w330 w335 w340 (fun w310 w315 w320 w325 w330 w335 w340 w345 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg68 w310 w315 w320 w325 w330 w335 w340 w345 (fun w310 w315 w320 w325 w330 w335 w340 w345 w350 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg69 w310 w315 w320 w325 w330 w335 w340 w345 w350 (fun w335 w340 w345 w350 w355 =>
      k w335 w340 w345 w350 w355)))))) :
    ∃ w335 w340 w345 w350 w355 : F, spec38 ((-1 : F) * w1 + w2) (w8) (w14) (w20) = st38 w335 w340 w345 w350 w355 ∧ k w335 w340 w345 w350 w355 := by
  have h65 := seg65_sound w310 w315 w320 w325 w330 _ h
  rcases h65 with ⟨w335, hw335, h⟩
  have h66 := seg66_sound w310 w315 w320 w325 w330 w335 _ h
  rcases h66 with ⟨w340, hw340, h⟩
  have h67 := seg67_sound w310 w315 w320 w325 w330 w335 w340 _ h
  rcases h67 with ⟨w345, hw345, h⟩
  have h68 := seg68_sound w310 w315 w320 w325 w330 w335 w340 w345 _ h
  rcases h68 with ⟨w350, hw350, h⟩
  have h69 := seg69_sound w310 w315 w320 w325 w330 w335 w340 w345 w350 _ h
  rcases h69 with ⟨w355, hw355, h⟩
  have hSpec38 := spec38_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) w310 w315 w320 w325 w330 w335 w340 w345 w350 w355 hSpec37 hw335 hw340 hw345 hw350 hw355
  exact ⟨w335, w340, w345, w350, w355, hSpec38, h⟩

theorem relation_sound_permSpec (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (k : F → F → F → F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.relation w1 w2 w8 w14 w20 k →
      ∃ w335 w340 w345 w350 w355 : F, k w335 w340 w345 w350 w355 ∧
        s38_1 w335 w340 w345 w350 w355 = permSpec4 domainLit ((-1 : F) * w1 + w2) (w8) (w14) (w20) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.relation
  intro h
  have r0 := range0_sound w1 w2 w8 w14 w20 _ h
  rcases r0 with ⟨w7, w13, w19, w25, hSpec0, h⟩
  have r1 := range1_sound w1 w2 w8 w14 w20 w7 w13 w19 w25 _ hSpec0 h
  rcases r1 with ⟨w30, w35, w40, w45, w50, hSpec1, h⟩
  have r2 := range2_sound w1 w2 w8 w14 w20 w30 w35 w40 w45 w50 _ hSpec1 h
  rcases r2 with ⟨w55, w60, w65, w70, w75, hSpec2, h⟩
  have r3 := range3_sound w1 w2 w8 w14 w20 w55 w60 w65 w70 w75 _ hSpec2 h
  rcases r3 with ⟨w80, w85, w90, w95, w100, w105, w110, w115, hSpec6, h⟩
  have r4 := range4_sound w1 w2 w8 w14 w20 w80 w85 w90 w95 w100 w105 w110 w115 _ hSpec6 h
  rcases r4 with ⟨w80, w85, w90, w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, hSpec14, h⟩
  have r5 := range5_sound w1 w2 w8 w14 w20 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 _ hSpec14 h
  rcases r5 with ⟨w80, w85, w90, w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, hSpec22, h⟩
  have r6 := range6_sound w1 w2 w8 w14 w20 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 _ hSpec22 h
  rcases r6 with ⟨w80, w85, w90, w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, w215, w220, w225, w230, w235, hSpec30, h⟩
  have r7 := range7_sound w1 w2 w8 w14 w20 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 _ hSpec30 h
  rcases r7 with ⟨w80, w85, w90, w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, w215, w220, w225, w230, w235, w240, w245, w250, w255, hSpec34, h⟩
  have r8 := range8_sound w1 w2 w8 w14 w20 w80 w85 w90 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 _ hSpec34 h
  rcases r8 with ⟨w260, w265, w270, w275, w280, hSpec35, h⟩
  have r9 := range9_sound w1 w2 w8 w14 w20 w260 w265 w270 w275 w280 _ hSpec35 h
  rcases r9 with ⟨w285, w290, w295, w300, w305, hSpec36, h⟩
  have r10 := range10_sound w1 w2 w8 w14 w20 w285 w290 w295 w300 w305 _ hSpec36 h
  rcases r10 with ⟨w310, w315, w320, w325, w330, hSpec37, h⟩
  have r11 := range11_sound w1 w2 w8 w14 w20 w310 w315 w320 w325 w330 _ hSpec37 h
  rcases r11 with ⟨w335, w340, w345, w350, w355, hSpec38, h⟩
  refine ⟨w335, w340, w345, w350, w355, h, ?_⟩
  rw [← spec38_eq_permSpec ((-1 : F) * w1 + w2) (w8) (w14) (w20)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon
