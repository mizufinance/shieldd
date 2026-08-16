import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Poseidon1Link
import ShielddGnarkFormal.Extracted.PoseidonHash1
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488Poseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488Poseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon1Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon1Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.Order))

theorem range0_sound (w1 : F) (k : F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg0 w1 (fun w6 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg1 w6 (fun w6 w11 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg2 w6 w11 (fun w11 w16 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg3 w11 w16 (fun w11 w16 w21 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg4 w11 w16 w21 (fun w21 w26 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg5 w21 w26 (fun w21 w26 w31 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg6 w21 w26 w31 (fun w31 w36 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg7 w31 w36 (fun w31 w36 w41 =>
      k w31 w36 w41))))))))) :
    ∃ w31 w36 w41 : F, spec4 (w1) = st4 w31 w36 w41 ∧ k w31 w36 w41 := by
  have h0 := seg0_sound w1 _ h
  rcases h0 with ⟨w6, hw6, h⟩
  have hSpec0 := spec0_eq (w1) w6 hw6
  have h1 := seg1_sound w6 _ h
  rcases h1 with ⟨w11, hw11, h⟩
  have h2 := seg2_sound w6 w11 _ h
  rcases h2 with ⟨w16, hw16, h⟩
  have hSpec1 := spec1_step (w1) w6 w11 w16 hSpec0 hw11 hw16
  have h3 := seg3_sound w11 w16 _ h
  rcases h3 with ⟨w21, hw21, h⟩
  have h4 := seg4_sound w11 w16 w21 _ h
  rcases h4 with ⟨w26, hw26, h⟩
  have hSpec2 := spec2_step (w1) w11 w16 w21 w26 hSpec1 hw21 hw26
  have h5 := seg5_sound w21 w26 _ h
  rcases h5 with ⟨w31, hw31, h⟩
  have h6 := seg6_sound w21 w26 w31 _ h
  rcases h6 with ⟨w36, hw36, h⟩
  have hSpec3 := spec3_step (w1) w21 w26 w31 w36 hSpec2 hw31 hw36
  have h7 := seg7_sound w31 w36 _ h
  rcases h7 with ⟨w41, hw41, h⟩
  have hSpec4 := spec4_step (w1) w31 w36 w41 hSpec3 hw41
  exact ⟨w31, w36, w41, hSpec4, h⟩

theorem range1_sound (w1 : F) (w31 : F) (w36 : F) (w41 : F) (k : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec4 : spec4 (w1) = st4 w31 w36 w41)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg8 w31 w36 w41 (fun w31 w36 w41 w46 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg9 w31 w36 w41 w46 (fun w31 w36 w41 w46 w51 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg10 w31 w36 w41 w46 w51 (fun w31 w36 w41 w46 w51 w56 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg11 w31 w36 w41 w46 w51 w56 (fun w31 w36 w41 w46 w51 w56 w61 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg12 w31 w36 w41 w46 w51 w56 w61 (fun w31 w36 w41 w46 w51 w56 w61 w66 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg13 w31 w36 w41 w46 w51 w56 w61 w66 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg14 w31 w36 w41 w46 w51 w56 w61 w66 w71 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg15 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 =>
      k w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81))))))))) :
    ∃ w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 : F, spec12 (w1) = st12 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 ∧ k w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 := by
  have h8 := seg8_sound w31 w36 w41 _ h
  rcases h8 with ⟨w46, hw46, h⟩
  have hSpec5 := spec5_step (w1) w31 w36 w41 w46 hSpec4 hw46
  have h9 := seg9_sound w31 w36 w41 w46 _ h
  rcases h9 with ⟨w51, hw51, h⟩
  have hSpec6 := spec6_step (w1) w31 w36 w41 w46 w51 hSpec5 hw51
  have h10 := seg10_sound w31 w36 w41 w46 w51 _ h
  rcases h10 with ⟨w56, hw56, h⟩
  have hSpec7 := spec7_step (w1) w31 w36 w41 w46 w51 w56 hSpec6 hw56
  have h11 := seg11_sound w31 w36 w41 w46 w51 w56 _ h
  rcases h11 with ⟨w61, hw61, h⟩
  have hSpec8 := spec8_step (w1) w31 w36 w41 w46 w51 w56 w61 hSpec7 hw61
  have h12 := seg12_sound w31 w36 w41 w46 w51 w56 w61 _ h
  rcases h12 with ⟨w66, hw66, h⟩
  have hSpec9 := spec9_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 hSpec8 hw66
  have h13 := seg13_sound w31 w36 w41 w46 w51 w56 w61 w66 _ h
  rcases h13 with ⟨w71, hw71, h⟩
  have hSpec10 := spec10_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 hSpec9 hw71
  have h14 := seg14_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 _ h
  rcases h14 with ⟨w76, hw76, h⟩
  have hSpec11 := spec11_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 hSpec10 hw76
  have h15 := seg15_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 _ h
  rcases h15 with ⟨w81, hw81, h⟩
  have hSpec12 := spec12_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 hSpec11 hw81
  exact ⟨w31, w36, w41, w46, w51, w56, w61, w66, w71, w76, w81, hSpec12, h⟩

theorem range2_sound (w1 : F) (w31 : F) (w36 : F) (w41 : F) (w46 : F) (w51 : F) (w56 : F) (w61 : F) (w66 : F) (w71 : F) (w76 : F) (w81 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec12 : spec12 (w1) = st12 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg16 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg17 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg18 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg19 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg20 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg21 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg22 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg23 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 =>
      k w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121))))))))) :
    ∃ w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 : F, spec20 (w1) = st20 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 ∧ k w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 := by
  have h16 := seg16_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 _ h
  rcases h16 with ⟨w86, hw86, h⟩
  have hSpec13 := spec13_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 hSpec12 hw86
  have h17 := seg17_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 _ h
  rcases h17 with ⟨w91, hw91, h⟩
  have hSpec14 := spec14_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 hSpec13 hw91
  have h18 := seg18_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 _ h
  rcases h18 with ⟨w96, hw96, h⟩
  have hSpec15 := spec15_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 hSpec14 hw96
  have h19 := seg19_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 _ h
  rcases h19 with ⟨w101, hw101, h⟩
  have hSpec16 := spec16_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 hSpec15 hw101
  have h20 := seg20_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 _ h
  rcases h20 with ⟨w106, hw106, h⟩
  have hSpec17 := spec17_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 hSpec16 hw106
  have h21 := seg21_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 _ h
  rcases h21 with ⟨w111, hw111, h⟩
  have hSpec18 := spec18_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 hSpec17 hw111
  have h22 := seg22_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 _ h
  rcases h22 with ⟨w116, hw116, h⟩
  have hSpec19 := spec19_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 hSpec18 hw116
  have h23 := seg23_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 _ h
  rcases h23 with ⟨w121, hw121, h⟩
  have hSpec20 := spec20_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 hSpec19 hw121
  exact ⟨w31, w36, w41, w46, w51, w56, w61, w66, w71, w76, w81, w86, w91, w96, w101, w106, w111, w116, w121, hSpec20, h⟩

theorem range3_sound (w1 : F) (w31 : F) (w36 : F) (w41 : F) (w46 : F) (w51 : F) (w56 : F) (w61 : F) (w66 : F) (w71 : F) (w76 : F) (w81 : F) (w86 : F) (w91 : F) (w96 : F) (w101 : F) (w106 : F) (w111 : F) (w116 : F) (w121 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec20 : spec20 (w1) = st20 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg24 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg25 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg26 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg27 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg28 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg29 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg30 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg31 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 =>
      k w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161))))))))) :
    ∃ w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 : F, spec28 (w1) = st28 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 ∧ k w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 := by
  have h24 := seg24_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 _ h
  rcases h24 with ⟨w126, hw126, h⟩
  have hSpec21 := spec21_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 hSpec20 hw126
  have h25 := seg25_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 _ h
  rcases h25 with ⟨w131, hw131, h⟩
  have hSpec22 := spec22_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 hSpec21 hw131
  have h26 := seg26_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 _ h
  rcases h26 with ⟨w136, hw136, h⟩
  have hSpec23 := spec23_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 hSpec22 hw136
  have h27 := seg27_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 _ h
  rcases h27 with ⟨w141, hw141, h⟩
  have hSpec24 := spec24_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 hSpec23 hw141
  have h28 := seg28_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 _ h
  rcases h28 with ⟨w146, hw146, h⟩
  have hSpec25 := spec25_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 hSpec24 hw146
  have h29 := seg29_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 _ h
  rcases h29 with ⟨w151, hw151, h⟩
  have hSpec26 := spec26_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 hSpec25 hw151
  have h30 := seg30_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 _ h
  rcases h30 with ⟨w156, hw156, h⟩
  have hSpec27 := spec27_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 hSpec26 hw156
  have h31 := seg31_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 _ h
  rcases h31 with ⟨w161, hw161, h⟩
  have hSpec28 := spec28_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 hSpec27 hw161
  exact ⟨w31, w36, w41, w46, w51, w56, w61, w66, w71, w76, w81, w86, w91, w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, hSpec28, h⟩

theorem range4_sound (w1 : F) (w31 : F) (w36 : F) (w41 : F) (w46 : F) (w51 : F) (w56 : F) (w61 : F) (w66 : F) (w71 : F) (w76 : F) (w81 : F) (w86 : F) (w91 : F) (w96 : F) (w101 : F) (w106 : F) (w111 : F) (w116 : F) (w121 : F) (w126 : F) (w131 : F) (w136 : F) (w141 : F) (w146 : F) (w151 : F) (w156 : F) (w161 : F) (k : F → F → Prop)
    (hSpec28 : spec28 (w1) = st28 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg32 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg33 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg34 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg35 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg36 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg37 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg38 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 (fun w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg39 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 (fun w196 w201 =>
      k w196 w201))))))))) :
    ∃ w196 w201 : F, spec35 (w1) = st35 w196 w201 ∧ k w196 w201 := by
  have h32 := seg32_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 _ h
  rcases h32 with ⟨w166, hw166, h⟩
  have hSpec29 := spec29_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 hSpec28 hw166
  have h33 := seg33_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 _ h
  rcases h33 with ⟨w171, hw171, h⟩
  have hSpec30 := spec30_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 hSpec29 hw171
  have h34 := seg34_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 _ h
  rcases h34 with ⟨w176, hw176, h⟩
  have hSpec31 := spec31_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 hSpec30 hw176
  have h35 := seg35_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 _ h
  rcases h35 with ⟨w181, hw181, h⟩
  have hSpec32 := spec32_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 hSpec31 hw181
  have h36 := seg36_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 _ h
  rcases h36 with ⟨w186, hw186, h⟩
  have hSpec33 := spec33_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 hSpec32 hw186
  have h37 := seg37_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 _ h
  rcases h37 with ⟨w191, hw191, h⟩
  have hSpec34 := spec34_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 hSpec33 hw191
  have h38 := seg38_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 _ h
  rcases h38 with ⟨w196, hw196, h⟩
  have h39 := seg39_sound w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 _ h
  rcases h39 with ⟨w201, hw201, h⟩
  have hSpec35 := spec35_step (w1) w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 w166 w171 w176 w181 w186 w191 w196 w201 hSpec34 hw196 hw201
  exact ⟨w196, w201, hSpec35, h⟩

theorem range5_sound (w1 : F) (w196 : F) (w201 : F) (k : F → F → Prop)
    (hSpec35 : spec35 (w1) = st35 w196 w201)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg40 w196 w201 (fun w196 w201 w206 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg41 w196 w201 w206 (fun w206 w211 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg42 w206 w211 (fun w206 w211 w216 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg43 w206 w211 w216 (fun w216 w221 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg44 w216 w221 (fun w216 w221 w226 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.seg45 w216 w221 w226 (fun w226 w231 =>
      k w226 w231))))))) :
    ∃ w226 w231 : F, spec38 (w1) = st38 w226 w231 ∧ k w226 w231 := by
  have h40 := seg40_sound w196 w201 _ h
  rcases h40 with ⟨w206, hw206, h⟩
  have h41 := seg41_sound w196 w201 w206 _ h
  rcases h41 with ⟨w211, hw211, h⟩
  have hSpec36 := spec36_step (w1) w196 w201 w206 w211 hSpec35 hw206 hw211
  have h42 := seg42_sound w206 w211 _ h
  rcases h42 with ⟨w216, hw216, h⟩
  have h43 := seg43_sound w206 w211 w216 _ h
  rcases h43 with ⟨w221, hw221, h⟩
  have hSpec37 := spec37_step (w1) w206 w211 w216 w221 hSpec36 hw216 hw221
  have h44 := seg44_sound w216 w221 _ h
  rcases h44 with ⟨w226, hw226, h⟩
  have h45 := seg45_sound w216 w221 w226 _ h
  rcases h45 with ⟨w231, hw231, h⟩
  have hSpec38 := spec38_step (w1) w216 w221 w226 w231 hSpec37 hw226 hw231
  exact ⟨w226, w231, hSpec38, h⟩

theorem relation_sound_permSpec (w1 : F) (k : F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.relation w1 k →
      ∃ w226 w231 : F, k w226 w231 ∧
        s38_1 w226 w231 = permSpec1 domainLit (w1) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.relation
  intro h
  have r0 := range0_sound w1 _ h
  rcases r0 with ⟨w31, w36, w41, hSpec4, h⟩
  have r1 := range1_sound w1 w31 w36 w41 _ hSpec4 h
  rcases r1 with ⟨w31, w36, w41, w46, w51, w56, w61, w66, w71, w76, w81, hSpec12, h⟩
  have r2 := range2_sound w1 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 _ hSpec12 h
  rcases r2 with ⟨w31, w36, w41, w46, w51, w56, w61, w66, w71, w76, w81, w86, w91, w96, w101, w106, w111, w116, w121, hSpec20, h⟩
  have r3 := range3_sound w1 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 _ hSpec20 h
  rcases r3 with ⟨w31, w36, w41, w46, w51, w56, w61, w66, w71, w76, w81, w86, w91, w96, w101, w106, w111, w116, w121, w126, w131, w136, w141, w146, w151, w156, w161, hSpec28, h⟩
  have r4 := range4_sound w1 w31 w36 w41 w46 w51 w56 w61 w66 w71 w76 w81 w86 w91 w96 w101 w106 w111 w116 w121 w126 w131 w136 w141 w146 w151 w156 w161 _ hSpec28 h
  rcases r4 with ⟨w196, w201, hSpec35, h⟩
  have r5 := range5_sound w1 w196 w201 _ hSpec35 h
  rcases r5 with ⟨w226, w231, hSpec38, h⟩
  refine ⟨w226, w231, h, ?_⟩
  rw [← spec38_eq_permSpec (w1)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488Poseidon
