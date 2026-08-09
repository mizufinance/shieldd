import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4Poseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4Poseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon5Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon5Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash5.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.Order))

theorem range0_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (k : F → F → F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg0 w1 w2 w8 w14 w20 w26 (fun w8 w14 w20 w26 w7 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg1 w7 w8 w14 w20 w26 (fun w7 w14 w20 w26 w13 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg2 w7 w13 w14 w20 w26 (fun w7 w13 w20 w26 w19 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg3 w7 w13 w19 w20 w26 (fun w7 w13 w19 w26 w25 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg4 w7 w13 w19 w25 w26 (fun w7 w13 w19 w25 w31 =>
      k w7 w13 w19 w25 w31)))))) :
    ∃ w7 w13 w19 w25 w31 : F, spec0 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st0 w7 w13 w19 w25 w31 ∧ k w7 w13 w19 w25 w31 := by
  have h0 := seg0_sound w1 w2 w8 w14 w20 w26 _ h
  rcases h0 with ⟨w7, hw7, h⟩
  have h1 := seg1_sound w7 w8 w14 w20 w26 _ h
  rcases h1 with ⟨w13, hw13, h⟩
  have h2 := seg2_sound w7 w13 w14 w20 w26 _ h
  rcases h2 with ⟨w19, hw19, h⟩
  have h3 := seg3_sound w7 w13 w19 w20 w26 _ h
  rcases h3 with ⟨w25, hw25, h⟩
  have h4 := seg4_sound w7 w13 w19 w25 w26 _ h
  rcases h4 with ⟨w31, hw31, h⟩
  have hSpec0 := spec0_eq ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w7 w13 w19 w25 w31 hw7 hw13 hw19 hw25 hw31
  exact ⟨w7, w13, w19, w25, w31, hSpec0, h⟩

theorem range1_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w7 : F) (w13 : F) (w19 : F) (w25 : F) (w31 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec0 : spec0 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st0 w7 w13 w19 w25 w31)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg5 w7 w13 w19 w25 w31 (fun w7 w13 w19 w25 w31 w36 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg6 w7 w13 w19 w25 w31 w36 (fun w7 w13 w19 w25 w31 w36 w41 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg7 w7 w13 w19 w25 w31 w36 w41 (fun w7 w13 w19 w25 w31 w36 w41 w46 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg8 w7 w13 w19 w25 w31 w36 w41 w46 (fun w7 w13 w19 w25 w31 w36 w41 w46 w51 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg9 w7 w13 w19 w25 w31 w36 w41 w46 w51 (fun w7 w13 w19 w25 w31 w36 w41 w46 w51 w56 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg10 w7 w13 w19 w25 w31 w36 w41 w46 w51 w56 (fun w36 w41 w46 w51 w56 w61 =>
      k w36 w41 w46 w51 w56 w61))))))) :
    ∃ w36 w41 w46 w51 w56 w61 : F, spec1 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st1 w36 w41 w46 w51 w56 w61 ∧ k w36 w41 w46 w51 w56 w61 := by
  have h5 := seg5_sound w7 w13 w19 w25 w31 _ h
  rcases h5 with ⟨w36, hw36, h⟩
  have h6 := seg6_sound w7 w13 w19 w25 w31 w36 _ h
  rcases h6 with ⟨w41, hw41, h⟩
  have h7 := seg7_sound w7 w13 w19 w25 w31 w36 w41 _ h
  rcases h7 with ⟨w46, hw46, h⟩
  have h8 := seg8_sound w7 w13 w19 w25 w31 w36 w41 w46 _ h
  rcases h8 with ⟨w51, hw51, h⟩
  have h9 := seg9_sound w7 w13 w19 w25 w31 w36 w41 w46 w51 _ h
  rcases h9 with ⟨w56, hw56, h⟩
  have h10 := seg10_sound w7 w13 w19 w25 w31 w36 w41 w46 w51 w56 _ h
  rcases h10 with ⟨w61, hw61, h⟩
  have hSpec1 := spec1_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w7 w13 w19 w25 w31 w36 w41 w46 w51 w56 w61 hSpec0 hw36 hw41 hw46 hw51 hw56 hw61
  exact ⟨w36, w41, w46, w51, w56, w61, hSpec1, h⟩

theorem range2_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w36 : F) (w41 : F) (w46 : F) (w51 : F) (w56 : F) (w61 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec1 : spec1 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st1 w36 w41 w46 w51 w56 w61)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg11 w36 w41 w46 w51 w56 w61 (fun w36 w41 w46 w51 w56 w61 w66 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg12 w36 w41 w46 w51 w56 w61 w66 (fun w36 w41 w46 w51 w56 w61 w66 w71 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg13 w36 w41 w46 w51 w56 w61 w66 w71 (fun w36 w41 w46 w51 w56 w61 w66 w71 w76 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg14 w36 w41 w46 w51 w56 w61 w66 w71 w76 (fun w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg15 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 (fun w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg16 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 (fun w66 w71 w76 w81 w86 w91 =>
      k w66 w71 w76 w81 w86 w91))))))) :
    ∃ w66 w71 w76 w81 w86 w91 : F, spec2 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st2 w66 w71 w76 w81 w86 w91 ∧ k w66 w71 w76 w81 w86 w91 := by
  have h11 := seg11_sound w36 w41 w46 w51 w56 w61 _ h
  rcases h11 with ⟨w66, hw66, h⟩
  have h12 := seg12_sound w36 w41 w46 w51 w56 w61 w66 _ h
  rcases h12 with ⟨w71, hw71, h⟩
  have h13 := seg13_sound w36 w41 w46 w51 w56 w61 w66 w71 _ h
  rcases h13 with ⟨w76, hw76, h⟩
  have h14 := seg14_sound w36 w41 w46 w51 w56 w61 w66 w71 w76 _ h
  rcases h14 with ⟨w81, hw81, h⟩
  have h15 := seg15_sound w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 _ h
  rcases h15 with ⟨w86, hw86, h⟩
  have h16 := seg16_sound w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 _ h
  rcases h16 with ⟨w91, hw91, h⟩
  have hSpec2 := spec2_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 hSpec1 hw66 hw71 hw76 hw81 hw86 hw91
  exact ⟨w66, w71, w76, w81, w86, w91, hSpec2, h⟩

theorem range3_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w66 : F) (w71 : F) (w76 : F) (w81 : F) (w86 : F) (w91 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec2 : spec2 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st2 w66 w71 w76 w81 w86 w91)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg17 w66 w71 w76 w81 w86 w91 (fun w66 w71 w76 w81 w86 w91 w96 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg18 w66 w71 w76 w81 w86 w91 w96 (fun w66 w71 w76 w81 w86 w91 w96 w101 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg19 w66 w71 w76 w81 w86 w91 w96 w101 (fun w66 w71 w76 w81 w86 w91 w96 w101 w106 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg20 w66 w71 w76 w81 w86 w91 w96 w101 w106 (fun w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg21 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 (fun w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg22 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 (fun w96 w101 w106 w111 w116 w121 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg23 w96 w101 w106 w111 w116 w121 (fun w96 w101 w106 w111 w116 w121 w126 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg24 w96 w101 w106 w111 w116 w121 w126 (fun w96 w101 w106 w111 w116 w121 w126 w131 =>
      k w96 w101 w106 w111 w116 w121 w126 w131))))))))) :
    ∃ w96 w101 w106 w111 w116 w121 w126 w131 : F, spec5 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st5 w96 w101 w106 w111 w116 w121 w126 w131 ∧ k w96 w101 w106 w111 w116 w121 w126 w131 := by
  have h17 := seg17_sound w66 w71 w76 w81 w86 w91 _ h
  rcases h17 with ⟨w96, hw96, h⟩
  have h18 := seg18_sound w66 w71 w76 w81 w86 w91 w96 _ h
  rcases h18 with ⟨w101, hw101, h⟩
  have h19 := seg19_sound w66 w71 w76 w81 w86 w91 w96 w101 _ h
  rcases h19 with ⟨w106, hw106, h⟩
  have h20 := seg20_sound w66 w71 w76 w81 w86 w91 w96 w101 w106 _ h
  rcases h20 with ⟨w111, hw111, h⟩
  have h21 := seg21_sound w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 _ h
  rcases h21 with ⟨w116, hw116, h⟩
  have h22 := seg22_sound w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 _ h
  rcases h22 with ⟨w121, hw121, h⟩
  have hSpec3 := spec3_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 hSpec2 hw96 hw101 hw106 hw111 hw116 hw121
  have h23 := seg23_sound w96 w101 w106 w111 w116 w121 _ h
  rcases h23 with ⟨w126, hw126, h⟩
  have hSpec4 := spec4_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 hSpec3 hw126
  have h24 := seg24_sound w96 w101 w106 w111 w116 w121 w126 _ h
  rcases h24 with ⟨w131, hw131, h⟩
  have hSpec5 := spec5_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 hSpec4 hw131
  exact ⟨w96, w101, w106, w111, w116, w121, w126, w131, hSpec5, h⟩

theorem range4_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w96 : F) (w101 : F) (w106 : F) (w111 : F) (w116 : F) (w121 : F) (w126 : F) (w131 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec5 : spec5 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st5 w96 w101 w106 w111 w116 w121 w126 w131)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg25 w96 w101 w106 w111 w116 w121 w126 w131 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg26 w96 w101 w106 w111 w116 w121 w126 w131 w136 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg27 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg28 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg29 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg30 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg31 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg32 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 =>
      k w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171))))))))) :
    ∃ w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 : F, spec13 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st13 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 ∧ k w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 := by
  have h25 := seg25_sound w96 w101 w106 w111 w116 w121 w126 w131 _ h
  rcases h25 with ⟨w136, hw136, h⟩
  have hSpec6 := spec6_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 hSpec5 hw136
  have h26 := seg26_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 _ h
  rcases h26 with ⟨w141, hw141, h⟩
  have hSpec7 := spec7_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 hSpec6 hw141
  have h27 := seg27_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 _ h
  rcases h27 with ⟨w146, hw146, h⟩
  have hSpec8 := spec8_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 hSpec7 hw146
  have h28 := seg28_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 _ h
  rcases h28 with ⟨w151, hw151, h⟩
  have hSpec9 := spec9_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 hSpec8 hw151
  have h29 := seg29_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 _ h
  rcases h29 with ⟨w156, hw156, h⟩
  have hSpec10 := spec10_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 hSpec9 hw156
  have h30 := seg30_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 _ h
  rcases h30 with ⟨w161, hw161, h⟩
  have hSpec11 := spec11_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 hSpec10 hw161
  have h31 := seg31_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 _ h
  rcases h31 with ⟨w166, hw166, h⟩
  have hSpec12 := spec12_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 hSpec11 hw166
  have h32 := seg32_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 _ h
  rcases h32 with ⟨w171, hw171, h⟩
  have hSpec13 := spec13_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 hSpec12 hw171
  exact ⟨w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, w166, w171, hSpec13, h⟩

theorem range5_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w96 : F) (w101 : F) (w106 : F) (w111 : F) (w116 : F) (w121 : F) (w126 : F) (w131 : F) (w136 : F) (w141 : F) (w146 : F) (w151 : F) (w156 : F) (w161 : F) (w166 : F) (w171 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec13 : spec13 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st13 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg33 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg34 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg35 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg36 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg37 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg38 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg39 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg40 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 =>
      k w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211))))))))) :
    ∃ w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 : F, spec21 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st21 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 ∧ k w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 := by
  have h33 := seg33_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 _ h
  rcases h33 with ⟨w176, hw176, h⟩
  have hSpec14 := spec14_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 hSpec13 hw176
  have h34 := seg34_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 _ h
  rcases h34 with ⟨w181, hw181, h⟩
  have hSpec15 := spec15_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 hSpec14 hw181
  have h35 := seg35_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 _ h
  rcases h35 with ⟨w186, hw186, h⟩
  have hSpec16 := spec16_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 hSpec15 hw186
  have h36 := seg36_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 _ h
  rcases h36 with ⟨w191, hw191, h⟩
  have hSpec17 := spec17_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 hSpec16 hw191
  have h37 := seg37_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 _ h
  rcases h37 with ⟨w196, hw196, h⟩
  have hSpec18 := spec18_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 hSpec17 hw196
  have h38 := seg38_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 _ h
  rcases h38 with ⟨w201, hw201, h⟩
  have hSpec19 := spec19_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 hSpec18 hw201
  have h39 := seg39_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 _ h
  rcases h39 with ⟨w206, hw206, h⟩
  have hSpec20 := spec20_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 hSpec19 hw206
  have h40 := seg40_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 _ h
  rcases h40 with ⟨w211, hw211, h⟩
  have hSpec21 := spec21_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 hSpec20 hw211
  exact ⟨w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, w166, w171, w176, w181, w186, w191, w196, w201, w206, w211, hSpec21, h⟩

theorem range6_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w96 : F) (w101 : F) (w106 : F) (w111 : F) (w116 : F) (w121 : F) (w126 : F) (w131 : F) (w136 : F) (w141 : F) (w146 : F) (w151 : F) (w156 : F) (w161 : F) (w166 : F) (w171 : F) (w176 : F) (w181 : F) (w186 : F) (w191 : F) (w196 : F) (w201 : F) (w206 : F) (w211 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec21 : spec21 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st21 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg41 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg42 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg43 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg44 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg45 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg46 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg47 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg48 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 =>
      k w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251))))))))) :
    ∃ w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 : F, spec29 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st29 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 ∧ k w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 := by
  have h41 := seg41_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 _ h
  rcases h41 with ⟨w216, hw216, h⟩
  have hSpec22 := spec22_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 hSpec21 hw216
  have h42 := seg42_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 _ h
  rcases h42 with ⟨w221, hw221, h⟩
  have hSpec23 := spec23_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 hSpec22 hw221
  have h43 := seg43_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 _ h
  rcases h43 with ⟨w226, hw226, h⟩
  have hSpec24 := spec24_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 hSpec23 hw226
  have h44 := seg44_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 _ h
  rcases h44 with ⟨w231, hw231, h⟩
  have hSpec25 := spec25_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 hSpec24 hw231
  have h45 := seg45_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 _ h
  rcases h45 with ⟨w236, hw236, h⟩
  have hSpec26 := spec26_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 hSpec25 hw236
  have h46 := seg46_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 _ h
  rcases h46 with ⟨w241, hw241, h⟩
  have hSpec27 := spec27_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 hSpec26 hw241
  have h47 := seg47_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 _ h
  rcases h47 with ⟨w246, hw246, h⟩
  have hSpec28 := spec28_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 hSpec27 hw246
  have h48 := seg48_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 _ h
  rcases h48 with ⟨w251, hw251, h⟩
  have hSpec29 := spec29_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 hSpec28 hw251
  exact ⟨w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, w166, w171, w176, w181, w186, w191, w196, w201, w206, w211, w216, w221, w226, w231, w236, w241, w246, w251, hSpec29, h⟩

theorem range7_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w96 : F) (w101 : F) (w106 : F) (w111 : F) (w116 : F) (w121 : F) (w126 : F) (w131 : F) (w136 : F) (w141 : F) (w146 : F) (w151 : F) (w156 : F) (w161 : F) (w166 : F) (w171 : F) (w176 : F) (w181 : F) (w186 : F) (w191 : F) (w196 : F) (w201 : F) (w206 : F) (w211 : F) (w216 : F) (w221 : F) (w226 : F) (w231 : F) (w236 : F) (w241 : F) (w246 : F) (w251 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec29 : spec29 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st29 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg49 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg50 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg51 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg52 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg53 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 =>
      k w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276)))))) :
    ∃ w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 : F, spec34 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st34 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 ∧ k w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 := by
  have h49 := seg49_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 _ h
  rcases h49 with ⟨w256, hw256, h⟩
  have hSpec30 := spec30_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 hSpec29 hw256
  have h50 := seg50_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 _ h
  rcases h50 with ⟨w261, hw261, h⟩
  have hSpec31 := spec31_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 hSpec30 hw261
  have h51 := seg51_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 _ h
  rcases h51 with ⟨w266, hw266, h⟩
  have hSpec32 := spec32_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 hSpec31 hw266
  have h52 := seg52_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 _ h
  rcases h52 with ⟨w271, hw271, h⟩
  have hSpec33 := spec33_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 hSpec32 hw271
  have h53 := seg53_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 _ h
  rcases h53 with ⟨w276, hw276, h⟩
  have hSpec34 := spec34_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 hSpec33 hw276
  exact ⟨w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, w166, w171, w176, w181, w186, w191, w196, w201, w206, w211, w216, w221, w226, w231, w236, w241, w246, w251, w256, w261, w266, w271, w276, hSpec34, h⟩

theorem range8_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w96 : F) (w101 : F) (w106 : F) (w111 : F) (w116 : F) (w121 : F) (w126 : F) (w131 : F) (w136 : F) (w141 : F) (w146 : F) (w151 : F) (w156 : F) (w161 : F) (w166 : F) (w171 : F) (w176 : F) (w181 : F) (w186 : F) (w191 : F) (w196 : F) (w201 : F) (w206 : F) (w211 : F) (w216 : F) (w221 : F) (w226 : F) (w231 : F) (w236 : F) (w241 : F) (w246 : F) (w251 : F) (w256 : F) (w261 : F) (w266 : F) (w271 : F) (w276 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec34 : spec34 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st34 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg54 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg55 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg56 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg57 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 w296 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg58 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 w296 (fun w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 w296 w301 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg59 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 w296 w301 (fun w281 w286 w291 w296 w301 w306 =>
      k w281 w286 w291 w296 w301 w306))))))) :
    ∃ w281 w286 w291 w296 w301 w306 : F, spec35 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st35 w281 w286 w291 w296 w301 w306 ∧ k w281 w286 w291 w296 w301 w306 := by
  have h54 := seg54_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 _ h
  rcases h54 with ⟨w281, hw281, h⟩
  have h55 := seg55_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 _ h
  rcases h55 with ⟨w286, hw286, h⟩
  have h56 := seg56_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 _ h
  rcases h56 with ⟨w291, hw291, h⟩
  have h57 := seg57_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 _ h
  rcases h57 with ⟨w296, hw296, h⟩
  have h58 := seg58_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 w296 _ h
  rcases h58 with ⟨w301, hw301, h⟩
  have h59 := seg59_sound w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 w296 w301 _ h
  rcases h59 with ⟨w306, hw306, h⟩
  have hSpec35 := spec35_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 w281 w286 w291 w296 w301 w306 hSpec34 hw281 hw286 hw291 hw296 hw301 hw306
  exact ⟨w281, w286, w291, w296, w301, w306, hSpec35, h⟩

theorem range9_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w281 : F) (w286 : F) (w291 : F) (w296 : F) (w301 : F) (w306 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec35 : spec35 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st35 w281 w286 w291 w296 w301 w306)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg60 w281 w286 w291 w296 w301 w306 (fun w281 w286 w291 w296 w301 w306 w311 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg61 w281 w286 w291 w296 w301 w306 w311 (fun w281 w286 w291 w296 w301 w306 w311 w316 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg62 w281 w286 w291 w296 w301 w306 w311 w316 (fun w281 w286 w291 w296 w301 w306 w311 w316 w321 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg63 w281 w286 w291 w296 w301 w306 w311 w316 w321 (fun w281 w286 w291 w296 w301 w306 w311 w316 w321 w326 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg64 w281 w286 w291 w296 w301 w306 w311 w316 w321 w326 (fun w281 w286 w291 w296 w301 w306 w311 w316 w321 w326 w331 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg65 w281 w286 w291 w296 w301 w306 w311 w316 w321 w326 w331 (fun w311 w316 w321 w326 w331 w336 =>
      k w311 w316 w321 w326 w331 w336))))))) :
    ∃ w311 w316 w321 w326 w331 w336 : F, spec36 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st36 w311 w316 w321 w326 w331 w336 ∧ k w311 w316 w321 w326 w331 w336 := by
  have h60 := seg60_sound w281 w286 w291 w296 w301 w306 _ h
  rcases h60 with ⟨w311, hw311, h⟩
  have h61 := seg61_sound w281 w286 w291 w296 w301 w306 w311 _ h
  rcases h61 with ⟨w316, hw316, h⟩
  have h62 := seg62_sound w281 w286 w291 w296 w301 w306 w311 w316 _ h
  rcases h62 with ⟨w321, hw321, h⟩
  have h63 := seg63_sound w281 w286 w291 w296 w301 w306 w311 w316 w321 _ h
  rcases h63 with ⟨w326, hw326, h⟩
  have h64 := seg64_sound w281 w286 w291 w296 w301 w306 w311 w316 w321 w326 _ h
  rcases h64 with ⟨w331, hw331, h⟩
  have h65 := seg65_sound w281 w286 w291 w296 w301 w306 w311 w316 w321 w326 w331 _ h
  rcases h65 with ⟨w336, hw336, h⟩
  have hSpec36 := spec36_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w281 w286 w291 w296 w301 w306 w311 w316 w321 w326 w331 w336 hSpec35 hw311 hw316 hw321 hw326 hw331 hw336
  exact ⟨w311, w316, w321, w326, w331, w336, hSpec36, h⟩

theorem range10_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w311 : F) (w316 : F) (w321 : F) (w326 : F) (w331 : F) (w336 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec36 : spec36 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st36 w311 w316 w321 w326 w331 w336)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg66 w311 w316 w321 w326 w331 w336 (fun w311 w316 w321 w326 w331 w336 w341 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg67 w311 w316 w321 w326 w331 w336 w341 (fun w311 w316 w321 w326 w331 w336 w341 w346 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg68 w311 w316 w321 w326 w331 w336 w341 w346 (fun w311 w316 w321 w326 w331 w336 w341 w346 w351 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg69 w311 w316 w321 w326 w331 w336 w341 w346 w351 (fun w311 w316 w321 w326 w331 w336 w341 w346 w351 w356 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg70 w311 w316 w321 w326 w331 w336 w341 w346 w351 w356 (fun w311 w316 w321 w326 w331 w336 w341 w346 w351 w356 w361 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg71 w311 w316 w321 w326 w331 w336 w341 w346 w351 w356 w361 (fun w341 w346 w351 w356 w361 w366 =>
      k w341 w346 w351 w356 w361 w366))))))) :
    ∃ w341 w346 w351 w356 w361 w366 : F, spec37 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st37 w341 w346 w351 w356 w361 w366 ∧ k w341 w346 w351 w356 w361 w366 := by
  have h66 := seg66_sound w311 w316 w321 w326 w331 w336 _ h
  rcases h66 with ⟨w341, hw341, h⟩
  have h67 := seg67_sound w311 w316 w321 w326 w331 w336 w341 _ h
  rcases h67 with ⟨w346, hw346, h⟩
  have h68 := seg68_sound w311 w316 w321 w326 w331 w336 w341 w346 _ h
  rcases h68 with ⟨w351, hw351, h⟩
  have h69 := seg69_sound w311 w316 w321 w326 w331 w336 w341 w346 w351 _ h
  rcases h69 with ⟨w356, hw356, h⟩
  have h70 := seg70_sound w311 w316 w321 w326 w331 w336 w341 w346 w351 w356 _ h
  rcases h70 with ⟨w361, hw361, h⟩
  have h71 := seg71_sound w311 w316 w321 w326 w331 w336 w341 w346 w351 w356 w361 _ h
  rcases h71 with ⟨w366, hw366, h⟩
  have hSpec37 := spec37_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w311 w316 w321 w326 w331 w336 w341 w346 w351 w356 w361 w366 hSpec36 hw341 hw346 hw351 hw356 hw361 hw366
  exact ⟨w341, w346, w351, w356, w361, w366, hSpec37, h⟩

theorem range11_sound (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (w341 : F) (w346 : F) (w351 : F) (w356 : F) (w361 : F) (w366 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec37 : spec37 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st37 w341 w346 w351 w356 w361 w366)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg72 w341 w346 w351 w356 w361 w366 (fun w341 w346 w351 w356 w361 w366 w371 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg73 w341 w346 w351 w356 w361 w366 w371 (fun w341 w346 w351 w356 w361 w366 w371 w376 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg74 w341 w346 w351 w356 w361 w366 w371 w376 (fun w341 w346 w351 w356 w361 w366 w371 w376 w381 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg75 w341 w346 w351 w356 w361 w366 w371 w376 w381 (fun w341 w346 w351 w356 w361 w366 w371 w376 w381 w386 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg76 w341 w346 w351 w356 w361 w366 w371 w376 w381 w386 (fun w341 w346 w351 w356 w361 w366 w371 w376 w381 w386 w391 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg77 w341 w346 w351 w356 w361 w366 w371 w376 w381 w386 w391 (fun w371 w376 w381 w386 w391 w396 =>
      k w371 w376 w381 w386 w391 w396))))))) :
    ∃ w371 w376 w381 w386 w391 w396 : F, spec38 ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) = st38 w371 w376 w381 w386 w391 w396 ∧ k w371 w376 w381 w386 w391 w396 := by
  have h72 := seg72_sound w341 w346 w351 w356 w361 w366 _ h
  rcases h72 with ⟨w371, hw371, h⟩
  have h73 := seg73_sound w341 w346 w351 w356 w361 w366 w371 _ h
  rcases h73 with ⟨w376, hw376, h⟩
  have h74 := seg74_sound w341 w346 w351 w356 w361 w366 w371 w376 _ h
  rcases h74 with ⟨w381, hw381, h⟩
  have h75 := seg75_sound w341 w346 w351 w356 w361 w366 w371 w376 w381 _ h
  rcases h75 with ⟨w386, hw386, h⟩
  have h76 := seg76_sound w341 w346 w351 w356 w361 w366 w371 w376 w381 w386 _ h
  rcases h76 with ⟨w391, hw391, h⟩
  have h77 := seg77_sound w341 w346 w351 w356 w361 w366 w371 w376 w381 w386 w391 _ h
  rcases h77 with ⟨w396, hw396, h⟩
  have hSpec38 := spec38_step ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) w341 w346 w351 w356 w361 w366 w371 w376 w381 w386 w391 w396 hSpec37 hw371 hw376 hw381 hw386 hw391 hw396
  exact ⟨w371, w376, w381, w386, w391, w396, hSpec38, h⟩

theorem relation_sound_permSpec (w1 : F) (w2 : F) (w8 : F) (w14 : F) (w20 : F) (w26 : F) (k : F → F → F → F → F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.relation w1 w2 w8 w14 w20 w26 k →
      ∃ w371 w376 w381 w386 w391 w396 : F, k w371 w376 w381 w386 w391 w396 ∧
        s38_1 w371 w376 w381 w386 w391 w396 = permSpec5 domainLit ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.relation
  intro h
  have r0 := range0_sound w1 w2 w8 w14 w20 w26 _ h
  rcases r0 with ⟨w7, w13, w19, w25, w31, hSpec0, h⟩
  have r1 := range1_sound w1 w2 w8 w14 w20 w26 w7 w13 w19 w25 w31 _ hSpec0 h
  rcases r1 with ⟨w36, w41, w46, w51, w56, w61, hSpec1, h⟩
  have r2 := range2_sound w1 w2 w8 w14 w20 w26 w36 w41 w46 w51 w56 w61 _ hSpec1 h
  rcases r2 with ⟨w66, w71, w76, w81, w86, w91, hSpec2, h⟩
  have r3 := range3_sound w1 w2 w8 w14 w20 w26 w66 w71 w76 w81 w86 w91 _ hSpec2 h
  rcases r3 with ⟨w96, w101, w106, w111, w116, w121, w126, w131, hSpec5, h⟩
  have r4 := range4_sound w1 w2 w8 w14 w20 w26 w96 w101 w106 w111 w116 w121 w126 w131 _ hSpec5 h
  rcases r4 with ⟨w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, w166, w171, hSpec13, h⟩
  have r5 := range5_sound w1 w2 w8 w14 w20 w26 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 _ hSpec13 h
  rcases r5 with ⟨w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, w166, w171, w176, w181, w186, w191, w196, w201, w206, w211, hSpec21, h⟩
  have r6 := range6_sound w1 w2 w8 w14 w20 w26 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 _ hSpec21 h
  rcases r6 with ⟨w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, w166, w171, w176, w181, w186, w191, w196, w201, w206, w211, w216, w221, w226, w231, w236, w241, w246, w251, hSpec29, h⟩
  have r7 := range7_sound w1 w2 w8 w14 w20 w26 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 _ hSpec29 h
  rcases r7 with ⟨w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, w166, w171, w176, w181, w186, w191, w196, w201, w206, w211, w216, w221, w226, w231, w236, w241, w246, w251, w256, w261, w266, w271, w276, hSpec34, h⟩
  have r8 := range8_sound w1 w2 w8 w14 w20 w26 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 w206 w211 w216 w221 w226 w231 w236 w241 w246 w251 w256 w261 w266 w271 w276 _ hSpec34 h
  rcases r8 with ⟨w281, w286, w291, w296, w301, w306, hSpec35, h⟩
  have r9 := range9_sound w1 w2 w8 w14 w20 w26 w281 w286 w291 w296 w301 w306 _ hSpec35 h
  rcases r9 with ⟨w311, w316, w321, w326, w331, w336, hSpec36, h⟩
  have r10 := range10_sound w1 w2 w8 w14 w20 w26 w311 w316 w321 w326 w331 w336 _ hSpec36 h
  rcases r10 with ⟨w341, w346, w351, w356, w361, w366, hSpec37, h⟩
  have r11 := range11_sound w1 w2 w8 w14 w20 w26 w341 w346 w351 w356 w361 w366 _ hSpec37 h
  rcases r11 with ⟨w371, w376, w381, w386, w391, w396, hSpec38, h⟩
  refine ⟨w371, w376, w381, w386, w391, w396, h, ?_⟩
  rw [← spec38_eq_permSpec ((-1 : F) * w1 + w2) (w8) (w14) (w20) (w26)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4Poseidon
