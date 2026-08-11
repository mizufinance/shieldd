import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon5Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon5Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash5.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.Order))

theorem range0_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (k : F → F → F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg0 w1 w7 w13 w19 w25 (fun w7 w13 w19 w25 w6 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg1 w6 w7 w13 w19 w25 (fun w6 w13 w19 w25 w12 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg2 w6 w12 w13 w19 w25 (fun w6 w12 w19 w25 w18 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg3 w6 w12 w18 w19 w25 (fun w6 w12 w18 w25 w24 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg4 w6 w12 w18 w24 w25 (fun w6 w12 w18 w24 w30 =>
      k w6 w12 w18 w24 w30)))))) :
    ∃ w6 w12 w18 w24 w30 : F, spec0 (w1) (w7) (w13) (w19) (w25) = st0 w6 w12 w18 w24 w30 ∧ k w6 w12 w18 w24 w30 := by
  have h0 := seg0_sound w1 w7 w13 w19 w25 _ h
  rcases h0 with ⟨w6, hw6, h⟩
  have h1 := seg1_sound w6 w7 w13 w19 w25 _ h
  rcases h1 with ⟨w12, hw12, h⟩
  have h2 := seg2_sound w6 w12 w13 w19 w25 _ h
  rcases h2 with ⟨w18, hw18, h⟩
  have h3 := seg3_sound w6 w12 w18 w19 w25 _ h
  rcases h3 with ⟨w24, hw24, h⟩
  have h4 := seg4_sound w6 w12 w18 w24 w25 _ h
  rcases h4 with ⟨w30, hw30, h⟩
  have hSpec0 := spec0_eq (w1) (w7) (w13) (w19) (w25) w6 w12 w18 w24 w30 hw6 hw12 hw18 hw24 hw30
  exact ⟨w6, w12, w18, w24, w30, hSpec0, h⟩

theorem range1_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w6 : F) (w12 : F) (w18 : F) (w24 : F) (w30 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec0 : spec0 (w1) (w7) (w13) (w19) (w25) = st0 w6 w12 w18 w24 w30)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg5 w6 w12 w18 w24 w30 (fun w6 w12 w18 w24 w30 w35 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg6 w6 w12 w18 w24 w30 w35 (fun w6 w12 w18 w24 w30 w35 w40 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg7 w6 w12 w18 w24 w30 w35 w40 (fun w6 w12 w18 w24 w30 w35 w40 w45 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg8 w6 w12 w18 w24 w30 w35 w40 w45 (fun w6 w12 w18 w24 w30 w35 w40 w45 w50 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg9 w6 w12 w18 w24 w30 w35 w40 w45 w50 (fun w6 w12 w18 w24 w30 w35 w40 w45 w50 w55 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg10 w6 w12 w18 w24 w30 w35 w40 w45 w50 w55 (fun w35 w40 w45 w50 w55 w60 =>
      k w35 w40 w45 w50 w55 w60))))))) :
    ∃ w35 w40 w45 w50 w55 w60 : F, spec1 (w1) (w7) (w13) (w19) (w25) = st1 w35 w40 w45 w50 w55 w60 ∧ k w35 w40 w45 w50 w55 w60 := by
  have h5 := seg5_sound w6 w12 w18 w24 w30 _ h
  rcases h5 with ⟨w35, hw35, h⟩
  have h6 := seg6_sound w6 w12 w18 w24 w30 w35 _ h
  rcases h6 with ⟨w40, hw40, h⟩
  have h7 := seg7_sound w6 w12 w18 w24 w30 w35 w40 _ h
  rcases h7 with ⟨w45, hw45, h⟩
  have h8 := seg8_sound w6 w12 w18 w24 w30 w35 w40 w45 _ h
  rcases h8 with ⟨w50, hw50, h⟩
  have h9 := seg9_sound w6 w12 w18 w24 w30 w35 w40 w45 w50 _ h
  rcases h9 with ⟨w55, hw55, h⟩
  have h10 := seg10_sound w6 w12 w18 w24 w30 w35 w40 w45 w50 w55 _ h
  rcases h10 with ⟨w60, hw60, h⟩
  have hSpec1 := spec1_step (w1) (w7) (w13) (w19) (w25) w6 w12 w18 w24 w30 w35 w40 w45 w50 w55 w60 hSpec0 hw35 hw40 hw45 hw50 hw55 hw60
  exact ⟨w35, w40, w45, w50, w55, w60, hSpec1, h⟩

theorem range2_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w35 : F) (w40 : F) (w45 : F) (w50 : F) (w55 : F) (w60 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec1 : spec1 (w1) (w7) (w13) (w19) (w25) = st1 w35 w40 w45 w50 w55 w60)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg11 w35 w40 w45 w50 w55 w60 (fun w35 w40 w45 w50 w55 w60 w65 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg12 w35 w40 w45 w50 w55 w60 w65 (fun w35 w40 w45 w50 w55 w60 w65 w70 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg13 w35 w40 w45 w50 w55 w60 w65 w70 (fun w35 w40 w45 w50 w55 w60 w65 w70 w75 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg14 w35 w40 w45 w50 w55 w60 w65 w70 w75 (fun w35 w40 w45 w50 w55 w60 w65 w70 w75 w80 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg15 w35 w40 w45 w50 w55 w60 w65 w70 w75 w80 (fun w35 w40 w45 w50 w55 w60 w65 w70 w75 w80 w85 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg16 w35 w40 w45 w50 w55 w60 w65 w70 w75 w80 w85 (fun w65 w70 w75 w80 w85 w90 =>
      k w65 w70 w75 w80 w85 w90))))))) :
    ∃ w65 w70 w75 w80 w85 w90 : F, spec2 (w1) (w7) (w13) (w19) (w25) = st2 w65 w70 w75 w80 w85 w90 ∧ k w65 w70 w75 w80 w85 w90 := by
  have h11 := seg11_sound w35 w40 w45 w50 w55 w60 _ h
  rcases h11 with ⟨w65, hw65, h⟩
  have h12 := seg12_sound w35 w40 w45 w50 w55 w60 w65 _ h
  rcases h12 with ⟨w70, hw70, h⟩
  have h13 := seg13_sound w35 w40 w45 w50 w55 w60 w65 w70 _ h
  rcases h13 with ⟨w75, hw75, h⟩
  have h14 := seg14_sound w35 w40 w45 w50 w55 w60 w65 w70 w75 _ h
  rcases h14 with ⟨w80, hw80, h⟩
  have h15 := seg15_sound w35 w40 w45 w50 w55 w60 w65 w70 w75 w80 _ h
  rcases h15 with ⟨w85, hw85, h⟩
  have h16 := seg16_sound w35 w40 w45 w50 w55 w60 w65 w70 w75 w80 w85 _ h
  rcases h16 with ⟨w90, hw90, h⟩
  have hSpec2 := spec2_step (w1) (w7) (w13) (w19) (w25) w35 w40 w45 w50 w55 w60 w65 w70 w75 w80 w85 w90 hSpec1 hw65 hw70 hw75 hw80 hw85 hw90
  exact ⟨w65, w70, w75, w80, w85, w90, hSpec2, h⟩

theorem range3_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w65 : F) (w70 : F) (w75 : F) (w80 : F) (w85 : F) (w90 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec2 : spec2 (w1) (w7) (w13) (w19) (w25) = st2 w65 w70 w75 w80 w85 w90)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg17 w65 w70 w75 w80 w85 w90 (fun w65 w70 w75 w80 w85 w90 w95 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg18 w65 w70 w75 w80 w85 w90 w95 (fun w65 w70 w75 w80 w85 w90 w95 w100 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg19 w65 w70 w75 w80 w85 w90 w95 w100 (fun w65 w70 w75 w80 w85 w90 w95 w100 w105 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg20 w65 w70 w75 w80 w85 w90 w95 w100 w105 (fun w65 w70 w75 w80 w85 w90 w95 w100 w105 w110 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg21 w65 w70 w75 w80 w85 w90 w95 w100 w105 w110 (fun w65 w70 w75 w80 w85 w90 w95 w100 w105 w110 w115 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg22 w65 w70 w75 w80 w85 w90 w95 w100 w105 w110 w115 (fun w95 w100 w105 w110 w115 w120 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg23 w95 w100 w105 w110 w115 w120 (fun w95 w100 w105 w110 w115 w120 w125 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg24 w95 w100 w105 w110 w115 w120 w125 (fun w95 w100 w105 w110 w115 w120 w125 w130 =>
      k w95 w100 w105 w110 w115 w120 w125 w130))))))))) :
    ∃ w95 w100 w105 w110 w115 w120 w125 w130 : F, spec5 (w1) (w7) (w13) (w19) (w25) = st5 w95 w100 w105 w110 w115 w120 w125 w130 ∧ k w95 w100 w105 w110 w115 w120 w125 w130 := by
  have h17 := seg17_sound w65 w70 w75 w80 w85 w90 _ h
  rcases h17 with ⟨w95, hw95, h⟩
  have h18 := seg18_sound w65 w70 w75 w80 w85 w90 w95 _ h
  rcases h18 with ⟨w100, hw100, h⟩
  have h19 := seg19_sound w65 w70 w75 w80 w85 w90 w95 w100 _ h
  rcases h19 with ⟨w105, hw105, h⟩
  have h20 := seg20_sound w65 w70 w75 w80 w85 w90 w95 w100 w105 _ h
  rcases h20 with ⟨w110, hw110, h⟩
  have h21 := seg21_sound w65 w70 w75 w80 w85 w90 w95 w100 w105 w110 _ h
  rcases h21 with ⟨w115, hw115, h⟩
  have h22 := seg22_sound w65 w70 w75 w80 w85 w90 w95 w100 w105 w110 w115 _ h
  rcases h22 with ⟨w120, hw120, h⟩
  have hSpec3 := spec3_step (w1) (w7) (w13) (w19) (w25) w65 w70 w75 w80 w85 w90 w95 w100 w105 w110 w115 w120 hSpec2 hw95 hw100 hw105 hw110 hw115 hw120
  have h23 := seg23_sound w95 w100 w105 w110 w115 w120 _ h
  rcases h23 with ⟨w125, hw125, h⟩
  have hSpec4 := spec4_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 hSpec3 hw125
  have h24 := seg24_sound w95 w100 w105 w110 w115 w120 w125 _ h
  rcases h24 with ⟨w130, hw130, h⟩
  have hSpec5 := spec5_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 hSpec4 hw130
  exact ⟨w95, w100, w105, w110, w115, w120, w125, w130, hSpec5, h⟩

theorem range4_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec5 : spec5 (w1) (w7) (w13) (w19) (w25) = st5 w95 w100 w105 w110 w115 w120 w125 w130)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg25 w95 w100 w105 w110 w115 w120 w125 w130 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg26 w95 w100 w105 w110 w115 w120 w125 w130 w135 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg27 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg28 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg29 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg30 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg31 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg32 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 =>
      k w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170))))))))) :
    ∃ w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 : F, spec13 (w1) (w7) (w13) (w19) (w25) = st13 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 ∧ k w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 := by
  have h25 := seg25_sound w95 w100 w105 w110 w115 w120 w125 w130 _ h
  rcases h25 with ⟨w135, hw135, h⟩
  have hSpec6 := spec6_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 hSpec5 hw135
  have h26 := seg26_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 _ h
  rcases h26 with ⟨w140, hw140, h⟩
  have hSpec7 := spec7_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 hSpec6 hw140
  have h27 := seg27_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 _ h
  rcases h27 with ⟨w145, hw145, h⟩
  have hSpec8 := spec8_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 hSpec7 hw145
  have h28 := seg28_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 _ h
  rcases h28 with ⟨w150, hw150, h⟩
  have hSpec9 := spec9_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 hSpec8 hw150
  have h29 := seg29_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 _ h
  rcases h29 with ⟨w155, hw155, h⟩
  have hSpec10 := spec10_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 hSpec9 hw155
  have h30 := seg30_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 _ h
  rcases h30 with ⟨w160, hw160, h⟩
  have hSpec11 := spec11_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 hSpec10 hw160
  have h31 := seg31_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 _ h
  rcases h31 with ⟨w165, hw165, h⟩
  have hSpec12 := spec12_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 hSpec11 hw165
  have h32 := seg32_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 _ h
  rcases h32 with ⟨w170, hw170, h⟩
  have hSpec13 := spec13_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 hSpec12 hw170
  exact ⟨w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, hSpec13, h⟩

theorem range5_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (w135 : F) (w140 : F) (w145 : F) (w150 : F) (w155 : F) (w160 : F) (w165 : F) (w170 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec13 : spec13 (w1) (w7) (w13) (w19) (w25) = st13 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg33 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg34 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg35 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg36 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg37 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg38 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg39 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg40 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 =>
      k w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210))))))))) :
    ∃ w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 : F, spec21 (w1) (w7) (w13) (w19) (w25) = st21 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 ∧ k w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 := by
  have h33 := seg33_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 _ h
  rcases h33 with ⟨w175, hw175, h⟩
  have hSpec14 := spec14_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 hSpec13 hw175
  have h34 := seg34_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 _ h
  rcases h34 with ⟨w180, hw180, h⟩
  have hSpec15 := spec15_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 hSpec14 hw180
  have h35 := seg35_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 _ h
  rcases h35 with ⟨w185, hw185, h⟩
  have hSpec16 := spec16_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 hSpec15 hw185
  have h36 := seg36_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 _ h
  rcases h36 with ⟨w190, hw190, h⟩
  have hSpec17 := spec17_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 hSpec16 hw190
  have h37 := seg37_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 _ h
  rcases h37 with ⟨w195, hw195, h⟩
  have hSpec18 := spec18_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 hSpec17 hw195
  have h38 := seg38_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 _ h
  rcases h38 with ⟨w200, hw200, h⟩
  have hSpec19 := spec19_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 hSpec18 hw200
  have h39 := seg39_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 _ h
  rcases h39 with ⟨w205, hw205, h⟩
  have hSpec20 := spec20_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 hSpec19 hw205
  have h40 := seg40_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 _ h
  rcases h40 with ⟨w210, hw210, h⟩
  have hSpec21 := spec21_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 hSpec20 hw210
  exact ⟨w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, hSpec21, h⟩

theorem range6_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (w135 : F) (w140 : F) (w145 : F) (w150 : F) (w155 : F) (w160 : F) (w165 : F) (w170 : F) (w175 : F) (w180 : F) (w185 : F) (w190 : F) (w195 : F) (w200 : F) (w205 : F) (w210 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec21 : spec21 (w1) (w7) (w13) (w19) (w25) = st21 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg41 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg42 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg43 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg44 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg45 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg46 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg47 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg48 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 =>
      k w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250))))))))) :
    ∃ w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 : F, spec29 (w1) (w7) (w13) (w19) (w25) = st29 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 ∧ k w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 := by
  have h41 := seg41_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 _ h
  rcases h41 with ⟨w215, hw215, h⟩
  have hSpec22 := spec22_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 hSpec21 hw215
  have h42 := seg42_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 _ h
  rcases h42 with ⟨w220, hw220, h⟩
  have hSpec23 := spec23_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 hSpec22 hw220
  have h43 := seg43_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 _ h
  rcases h43 with ⟨w225, hw225, h⟩
  have hSpec24 := spec24_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 hSpec23 hw225
  have h44 := seg44_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 _ h
  rcases h44 with ⟨w230, hw230, h⟩
  have hSpec25 := spec25_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 hSpec24 hw230
  have h45 := seg45_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 _ h
  rcases h45 with ⟨w235, hw235, h⟩
  have hSpec26 := spec26_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 hSpec25 hw235
  have h46 := seg46_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 _ h
  rcases h46 with ⟨w240, hw240, h⟩
  have hSpec27 := spec27_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 hSpec26 hw240
  have h47 := seg47_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 _ h
  rcases h47 with ⟨w245, hw245, h⟩
  have hSpec28 := spec28_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 hSpec27 hw245
  have h48 := seg48_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 _ h
  rcases h48 with ⟨w250, hw250, h⟩
  have hSpec29 := spec29_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 hSpec28 hw250
  exact ⟨w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, w215, w220, w225, w230, w235, w240, w245, w250, hSpec29, h⟩

theorem range7_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (w135 : F) (w140 : F) (w145 : F) (w150 : F) (w155 : F) (w160 : F) (w165 : F) (w170 : F) (w175 : F) (w180 : F) (w185 : F) (w190 : F) (w195 : F) (w200 : F) (w205 : F) (w210 : F) (w215 : F) (w220 : F) (w225 : F) (w230 : F) (w235 : F) (w240 : F) (w245 : F) (w250 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec29 : spec29 (w1) (w7) (w13) (w19) (w25) = st29 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg49 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg50 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg51 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg52 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg53 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 =>
      k w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275)))))) :
    ∃ w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 : F, spec34 (w1) (w7) (w13) (w19) (w25) = st34 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 ∧ k w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 := by
  have h49 := seg49_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 _ h
  rcases h49 with ⟨w255, hw255, h⟩
  have hSpec30 := spec30_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 hSpec29 hw255
  have h50 := seg50_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 _ h
  rcases h50 with ⟨w260, hw260, h⟩
  have hSpec31 := spec31_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 hSpec30 hw260
  have h51 := seg51_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 _ h
  rcases h51 with ⟨w265, hw265, h⟩
  have hSpec32 := spec32_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 hSpec31 hw265
  have h52 := seg52_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 _ h
  rcases h52 with ⟨w270, hw270, h⟩
  have hSpec33 := spec33_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 hSpec32 hw270
  have h53 := seg53_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 _ h
  rcases h53 with ⟨w275, hw275, h⟩
  have hSpec34 := spec34_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 hSpec33 hw275
  exact ⟨w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, w215, w220, w225, w230, w235, w240, w245, w250, w255, w260, w265, w270, w275, hSpec34, h⟩

theorem range8_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w95 : F) (w100 : F) (w105 : F) (w110 : F) (w115 : F) (w120 : F) (w125 : F) (w130 : F) (w135 : F) (w140 : F) (w145 : F) (w150 : F) (w155 : F) (w160 : F) (w165 : F) (w170 : F) (w175 : F) (w180 : F) (w185 : F) (w190 : F) (w195 : F) (w200 : F) (w205 : F) (w210 : F) (w215 : F) (w220 : F) (w225 : F) (w230 : F) (w235 : F) (w240 : F) (w245 : F) (w250 : F) (w255 : F) (w260 : F) (w265 : F) (w270 : F) (w275 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec34 : spec34 (w1) (w7) (w13) (w19) (w25) = st34 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg54 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg55 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg56 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg57 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 w295 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg58 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 w295 (fun w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 w295 w300 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg59 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 w295 w300 (fun w280 w285 w290 w295 w300 w305 =>
      k w280 w285 w290 w295 w300 w305))))))) :
    ∃ w280 w285 w290 w295 w300 w305 : F, spec35 (w1) (w7) (w13) (w19) (w25) = st35 w280 w285 w290 w295 w300 w305 ∧ k w280 w285 w290 w295 w300 w305 := by
  have h54 := seg54_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 _ h
  rcases h54 with ⟨w280, hw280, h⟩
  have h55 := seg55_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 _ h
  rcases h55 with ⟨w285, hw285, h⟩
  have h56 := seg56_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 _ h
  rcases h56 with ⟨w290, hw290, h⟩
  have h57 := seg57_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 _ h
  rcases h57 with ⟨w295, hw295, h⟩
  have h58 := seg58_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 w295 _ h
  rcases h58 with ⟨w300, hw300, h⟩
  have h59 := seg59_sound w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 w295 w300 _ h
  rcases h59 with ⟨w305, hw305, h⟩
  have hSpec35 := spec35_step (w1) (w7) (w13) (w19) (w25) w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 w280 w285 w290 w295 w300 w305 hSpec34 hw280 hw285 hw290 hw295 hw300 hw305
  exact ⟨w280, w285, w290, w295, w300, w305, hSpec35, h⟩

theorem range9_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w280 : F) (w285 : F) (w290 : F) (w295 : F) (w300 : F) (w305 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec35 : spec35 (w1) (w7) (w13) (w19) (w25) = st35 w280 w285 w290 w295 w300 w305)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg60 w280 w285 w290 w295 w300 w305 (fun w280 w285 w290 w295 w300 w305 w310 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg61 w280 w285 w290 w295 w300 w305 w310 (fun w280 w285 w290 w295 w300 w305 w310 w315 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg62 w280 w285 w290 w295 w300 w305 w310 w315 (fun w280 w285 w290 w295 w300 w305 w310 w315 w320 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg63 w280 w285 w290 w295 w300 w305 w310 w315 w320 (fun w280 w285 w290 w295 w300 w305 w310 w315 w320 w325 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg64 w280 w285 w290 w295 w300 w305 w310 w315 w320 w325 (fun w280 w285 w290 w295 w300 w305 w310 w315 w320 w325 w330 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg65 w280 w285 w290 w295 w300 w305 w310 w315 w320 w325 w330 (fun w310 w315 w320 w325 w330 w335 =>
      k w310 w315 w320 w325 w330 w335))))))) :
    ∃ w310 w315 w320 w325 w330 w335 : F, spec36 (w1) (w7) (w13) (w19) (w25) = st36 w310 w315 w320 w325 w330 w335 ∧ k w310 w315 w320 w325 w330 w335 := by
  have h60 := seg60_sound w280 w285 w290 w295 w300 w305 _ h
  rcases h60 with ⟨w310, hw310, h⟩
  have h61 := seg61_sound w280 w285 w290 w295 w300 w305 w310 _ h
  rcases h61 with ⟨w315, hw315, h⟩
  have h62 := seg62_sound w280 w285 w290 w295 w300 w305 w310 w315 _ h
  rcases h62 with ⟨w320, hw320, h⟩
  have h63 := seg63_sound w280 w285 w290 w295 w300 w305 w310 w315 w320 _ h
  rcases h63 with ⟨w325, hw325, h⟩
  have h64 := seg64_sound w280 w285 w290 w295 w300 w305 w310 w315 w320 w325 _ h
  rcases h64 with ⟨w330, hw330, h⟩
  have h65 := seg65_sound w280 w285 w290 w295 w300 w305 w310 w315 w320 w325 w330 _ h
  rcases h65 with ⟨w335, hw335, h⟩
  have hSpec36 := spec36_step (w1) (w7) (w13) (w19) (w25) w280 w285 w290 w295 w300 w305 w310 w315 w320 w325 w330 w335 hSpec35 hw310 hw315 hw320 hw325 hw330 hw335
  exact ⟨w310, w315, w320, w325, w330, w335, hSpec36, h⟩

theorem range10_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w310 : F) (w315 : F) (w320 : F) (w325 : F) (w330 : F) (w335 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec36 : spec36 (w1) (w7) (w13) (w19) (w25) = st36 w310 w315 w320 w325 w330 w335)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg66 w310 w315 w320 w325 w330 w335 (fun w310 w315 w320 w325 w330 w335 w340 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg67 w310 w315 w320 w325 w330 w335 w340 (fun w310 w315 w320 w325 w330 w335 w340 w345 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg68 w310 w315 w320 w325 w330 w335 w340 w345 (fun w310 w315 w320 w325 w330 w335 w340 w345 w350 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg69 w310 w315 w320 w325 w330 w335 w340 w345 w350 (fun w310 w315 w320 w325 w330 w335 w340 w345 w350 w355 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg70 w310 w315 w320 w325 w330 w335 w340 w345 w350 w355 (fun w310 w315 w320 w325 w330 w335 w340 w345 w350 w355 w360 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg71 w310 w315 w320 w325 w330 w335 w340 w345 w350 w355 w360 (fun w340 w345 w350 w355 w360 w365 =>
      k w340 w345 w350 w355 w360 w365))))))) :
    ∃ w340 w345 w350 w355 w360 w365 : F, spec37 (w1) (w7) (w13) (w19) (w25) = st37 w340 w345 w350 w355 w360 w365 ∧ k w340 w345 w350 w355 w360 w365 := by
  have h66 := seg66_sound w310 w315 w320 w325 w330 w335 _ h
  rcases h66 with ⟨w340, hw340, h⟩
  have h67 := seg67_sound w310 w315 w320 w325 w330 w335 w340 _ h
  rcases h67 with ⟨w345, hw345, h⟩
  have h68 := seg68_sound w310 w315 w320 w325 w330 w335 w340 w345 _ h
  rcases h68 with ⟨w350, hw350, h⟩
  have h69 := seg69_sound w310 w315 w320 w325 w330 w335 w340 w345 w350 _ h
  rcases h69 with ⟨w355, hw355, h⟩
  have h70 := seg70_sound w310 w315 w320 w325 w330 w335 w340 w345 w350 w355 _ h
  rcases h70 with ⟨w360, hw360, h⟩
  have h71 := seg71_sound w310 w315 w320 w325 w330 w335 w340 w345 w350 w355 w360 _ h
  rcases h71 with ⟨w365, hw365, h⟩
  have hSpec37 := spec37_step (w1) (w7) (w13) (w19) (w25) w310 w315 w320 w325 w330 w335 w340 w345 w350 w355 w360 w365 hSpec36 hw340 hw345 hw350 hw355 hw360 hw365
  exact ⟨w340, w345, w350, w355, w360, w365, hSpec37, h⟩

theorem range11_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w340 : F) (w345 : F) (w350 : F) (w355 : F) (w360 : F) (w365 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec37 : spec37 (w1) (w7) (w13) (w19) (w25) = st37 w340 w345 w350 w355 w360 w365)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg72 w340 w345 w350 w355 w360 w365 (fun w340 w345 w350 w355 w360 w365 w370 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg73 w340 w345 w350 w355 w360 w365 w370 (fun w340 w345 w350 w355 w360 w365 w370 w375 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg74 w340 w345 w350 w355 w360 w365 w370 w375 (fun w340 w345 w350 w355 w360 w365 w370 w375 w380 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg75 w340 w345 w350 w355 w360 w365 w370 w375 w380 (fun w340 w345 w350 w355 w360 w365 w370 w375 w380 w385 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg76 w340 w345 w350 w355 w360 w365 w370 w375 w380 w385 (fun w340 w345 w350 w355 w360 w365 w370 w375 w380 w385 w390 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg77 w340 w345 w350 w355 w360 w365 w370 w375 w380 w385 w390 (fun w370 w375 w380 w385 w390 w395 =>
      k w370 w375 w380 w385 w390 w395))))))) :
    ∃ w370 w375 w380 w385 w390 w395 : F, spec38 (w1) (w7) (w13) (w19) (w25) = st38 w370 w375 w380 w385 w390 w395 ∧ k w370 w375 w380 w385 w390 w395 := by
  have h72 := seg72_sound w340 w345 w350 w355 w360 w365 _ h
  rcases h72 with ⟨w370, hw370, h⟩
  have h73 := seg73_sound w340 w345 w350 w355 w360 w365 w370 _ h
  rcases h73 with ⟨w375, hw375, h⟩
  have h74 := seg74_sound w340 w345 w350 w355 w360 w365 w370 w375 _ h
  rcases h74 with ⟨w380, hw380, h⟩
  have h75 := seg75_sound w340 w345 w350 w355 w360 w365 w370 w375 w380 _ h
  rcases h75 with ⟨w385, hw385, h⟩
  have h76 := seg76_sound w340 w345 w350 w355 w360 w365 w370 w375 w380 w385 _ h
  rcases h76 with ⟨w390, hw390, h⟩
  have h77 := seg77_sound w340 w345 w350 w355 w360 w365 w370 w375 w380 w385 w390 _ h
  rcases h77 with ⟨w395, hw395, h⟩
  have hSpec38 := spec38_step (w1) (w7) (w13) (w19) (w25) w340 w345 w350 w355 w360 w365 w370 w375 w380 w385 w390 w395 hSpec37 hw370 hw375 hw380 hw385 hw390 hw395
  exact ⟨w370, w375, w380, w385, w390, w395, hSpec38, h⟩

theorem relation_sound_permSpec (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (k : F → F → F → F → F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.relation w1 w7 w13 w19 w25 k →
      ∃ w370 w375 w380 w385 w390 w395 : F, k w370 w375 w380 w385 w390 w395 ∧
        s38_1 w370 w375 w380 w385 w390 w395 = permSpec5 domainLit (w1) (w7) (w13) (w19) (w25) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.relation
  intro h
  have r0 := range0_sound w1 w7 w13 w19 w25 _ h
  rcases r0 with ⟨w6, w12, w18, w24, w30, hSpec0, h⟩
  have r1 := range1_sound w1 w7 w13 w19 w25 w6 w12 w18 w24 w30 _ hSpec0 h
  rcases r1 with ⟨w35, w40, w45, w50, w55, w60, hSpec1, h⟩
  have r2 := range2_sound w1 w7 w13 w19 w25 w35 w40 w45 w50 w55 w60 _ hSpec1 h
  rcases r2 with ⟨w65, w70, w75, w80, w85, w90, hSpec2, h⟩
  have r3 := range3_sound w1 w7 w13 w19 w25 w65 w70 w75 w80 w85 w90 _ hSpec2 h
  rcases r3 with ⟨w95, w100, w105, w110, w115, w120, w125, w130, hSpec5, h⟩
  have r4 := range4_sound w1 w7 w13 w19 w25 w95 w100 w105 w110 w115 w120 w125 w130 _ hSpec5 h
  rcases r4 with ⟨w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, hSpec13, h⟩
  have r5 := range5_sound w1 w7 w13 w19 w25 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 _ hSpec13 h
  rcases r5 with ⟨w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, hSpec21, h⟩
  have r6 := range6_sound w1 w7 w13 w19 w25 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 _ hSpec21 h
  rcases r6 with ⟨w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, w215, w220, w225, w230, w235, w240, w245, w250, hSpec29, h⟩
  have r7 := range7_sound w1 w7 w13 w19 w25 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 _ hSpec29 h
  rcases r7 with ⟨w95, w100, w105, w110, w115, w120, w125, w130, w135, w140, w145, w150, w155, w160, w165, w170, w175, w180, w185, w190, w195, w200, w205, w210, w215, w220, w225, w230, w235, w240, w245, w250, w255, w260, w265, w270, w275, hSpec34, h⟩
  have r8 := range8_sound w1 w7 w13 w19 w25 w95 w100 w105 w110 w115 w120 w125 w130 w135 w140 w145 w150 w155 w160 w165 w170 w175 w180 w185 w190 w195 w200 w205 w210 w215 w220 w225 w230 w235 w240 w245 w250 w255 w260 w265 w270 w275 _ hSpec34 h
  rcases r8 with ⟨w280, w285, w290, w295, w300, w305, hSpec35, h⟩
  have r9 := range9_sound w1 w7 w13 w19 w25 w280 w285 w290 w295 w300 w305 _ hSpec35 h
  rcases r9 with ⟨w310, w315, w320, w325, w330, w335, hSpec36, h⟩
  have r10 := range10_sound w1 w7 w13 w19 w25 w310 w315 w320 w325 w330 w335 _ hSpec36 h
  rcases r10 with ⟨w340, w345, w350, w355, w360, w365, hSpec37, h⟩
  have r11 := range11_sound w1 w7 w13 w19 w25 w340 w345 w350 w355 w360 w365 _ hSpec37 h
  rcases r11 with ⟨w370, w375, w380, w385, w390, w395, hSpec38, h⟩
  refine ⟨w370, w375, w380, w385, w390, w395, h, ?_⟩
  rw [← spec38_eq_permSpec (w1) (w7) (w13) (w19) (w25)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidon
