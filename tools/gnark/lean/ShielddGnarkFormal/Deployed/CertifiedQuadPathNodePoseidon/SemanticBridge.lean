import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon4Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon4Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash4.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.Order))

theorem range0_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (k : F → F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg0 w1 w2 w3 w4 (fun w2 w3 w4 w9 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg1 w2 w3 w4 w9 (fun w3 w4 w9 w14 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg2 w3 w4 w9 w14 (fun w4 w9 w14 w19 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg3 w4 w9 w14 w19 (fun w9 w14 w19 w24 =>
      k w9 w14 w19 w24))))) :
    ∃ w9 w14 w19 w24 : F, spec0 (w1) (w2) (w3) (w4) = st0 w9 w14 w19 w24 ∧ k w9 w14 w19 w24 := by
  have h0 := seg0_sound w1 w2 w3 w4 _ h
  rcases h0 with ⟨w9, hw9, h⟩
  have h1 := seg1_sound w2 w3 w4 w9 _ h
  rcases h1 with ⟨w14, hw14, h⟩
  have h2 := seg2_sound w3 w4 w9 w14 _ h
  rcases h2 with ⟨w19, hw19, h⟩
  have h3 := seg3_sound w4 w9 w14 w19 _ h
  rcases h3 with ⟨w24, hw24, h⟩
  have hSpec0 := spec0_eq (w1) (w2) (w3) (w4) w9 w14 w19 w24 hw9 hw14 hw19 hw24
  exact ⟨w9, w14, w19, w24, hSpec0, h⟩

theorem range1_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w9 : F) (w14 : F) (w19 : F) (w24 : F) (k : F → F → F → F → F → Prop)
    (hSpec0 : spec0 (w1) (w2) (w3) (w4) = st0 w9 w14 w19 w24)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg4 w9 w14 w19 w24 (fun w9 w14 w19 w24 w29 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg5 w9 w14 w19 w24 w29 (fun w9 w14 w19 w24 w29 w34 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg6 w9 w14 w19 w24 w29 w34 (fun w9 w14 w19 w24 w29 w34 w39 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg7 w9 w14 w19 w24 w29 w34 w39 (fun w9 w14 w19 w24 w29 w34 w39 w44 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg8 w9 w14 w19 w24 w29 w34 w39 w44 (fun w29 w34 w39 w44 w49 =>
      k w29 w34 w39 w44 w49)))))) :
    ∃ w29 w34 w39 w44 w49 : F, spec1 (w1) (w2) (w3) (w4) = st1 w29 w34 w39 w44 w49 ∧ k w29 w34 w39 w44 w49 := by
  have h4 := seg4_sound w9 w14 w19 w24 _ h
  rcases h4 with ⟨w29, hw29, h⟩
  have h5 := seg5_sound w9 w14 w19 w24 w29 _ h
  rcases h5 with ⟨w34, hw34, h⟩
  have h6 := seg6_sound w9 w14 w19 w24 w29 w34 _ h
  rcases h6 with ⟨w39, hw39, h⟩
  have h7 := seg7_sound w9 w14 w19 w24 w29 w34 w39 _ h
  rcases h7 with ⟨w44, hw44, h⟩
  have h8 := seg8_sound w9 w14 w19 w24 w29 w34 w39 w44 _ h
  rcases h8 with ⟨w49, hw49, h⟩
  have hSpec1 := spec1_step (w1) (w2) (w3) (w4) w9 w14 w19 w24 w29 w34 w39 w44 w49 hSpec0 hw29 hw34 hw39 hw44 hw49
  exact ⟨w29, w34, w39, w44, w49, hSpec1, h⟩

theorem range2_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w29 : F) (w34 : F) (w39 : F) (w44 : F) (w49 : F) (k : F → F → F → F → F → Prop)
    (hSpec1 : spec1 (w1) (w2) (w3) (w4) = st1 w29 w34 w39 w44 w49)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg9 w29 w34 w39 w44 w49 (fun w29 w34 w39 w44 w49 w54 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg10 w29 w34 w39 w44 w49 w54 (fun w29 w34 w39 w44 w49 w54 w59 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg11 w29 w34 w39 w44 w49 w54 w59 (fun w29 w34 w39 w44 w49 w54 w59 w64 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg12 w29 w34 w39 w44 w49 w54 w59 w64 (fun w29 w34 w39 w44 w49 w54 w59 w64 w69 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg13 w29 w34 w39 w44 w49 w54 w59 w64 w69 (fun w54 w59 w64 w69 w74 =>
      k w54 w59 w64 w69 w74)))))) :
    ∃ w54 w59 w64 w69 w74 : F, spec2 (w1) (w2) (w3) (w4) = st2 w54 w59 w64 w69 w74 ∧ k w54 w59 w64 w69 w74 := by
  have h9 := seg9_sound w29 w34 w39 w44 w49 _ h
  rcases h9 with ⟨w54, hw54, h⟩
  have h10 := seg10_sound w29 w34 w39 w44 w49 w54 _ h
  rcases h10 with ⟨w59, hw59, h⟩
  have h11 := seg11_sound w29 w34 w39 w44 w49 w54 w59 _ h
  rcases h11 with ⟨w64, hw64, h⟩
  have h12 := seg12_sound w29 w34 w39 w44 w49 w54 w59 w64 _ h
  rcases h12 with ⟨w69, hw69, h⟩
  have h13 := seg13_sound w29 w34 w39 w44 w49 w54 w59 w64 w69 _ h
  rcases h13 with ⟨w74, hw74, h⟩
  have hSpec2 := spec2_step (w1) (w2) (w3) (w4) w29 w34 w39 w44 w49 w54 w59 w64 w69 w74 hSpec1 hw54 hw59 hw64 hw69 hw74
  exact ⟨w54, w59, w64, w69, w74, hSpec2, h⟩

theorem range3_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w54 : F) (w59 : F) (w64 : F) (w69 : F) (w74 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec2 : spec2 (w1) (w2) (w3) (w4) = st2 w54 w59 w64 w69 w74)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg14 w54 w59 w64 w69 w74 (fun w54 w59 w64 w69 w74 w79 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg15 w54 w59 w64 w69 w74 w79 (fun w54 w59 w64 w69 w74 w79 w84 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg16 w54 w59 w64 w69 w74 w79 w84 (fun w54 w59 w64 w69 w74 w79 w84 w89 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg17 w54 w59 w64 w69 w74 w79 w84 w89 (fun w54 w59 w64 w69 w74 w79 w84 w89 w94 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg18 w54 w59 w64 w69 w74 w79 w84 w89 w94 (fun w79 w84 w89 w94 w99 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg19 w79 w84 w89 w94 w99 (fun w79 w84 w89 w94 w99 w104 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg20 w79 w84 w89 w94 w99 w104 (fun w79 w84 w89 w94 w99 w104 w109 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg21 w79 w84 w89 w94 w99 w104 w109 (fun w79 w84 w89 w94 w99 w104 w109 w114 =>
      k w79 w84 w89 w94 w99 w104 w109 w114))))))))) :
    ∃ w79 w84 w89 w94 w99 w104 w109 w114 : F, spec6 (w1) (w2) (w3) (w4) = st6 w79 w84 w89 w94 w99 w104 w109 w114 ∧ k w79 w84 w89 w94 w99 w104 w109 w114 := by
  have h14 := seg14_sound w54 w59 w64 w69 w74 _ h
  rcases h14 with ⟨w79, hw79, h⟩
  have h15 := seg15_sound w54 w59 w64 w69 w74 w79 _ h
  rcases h15 with ⟨w84, hw84, h⟩
  have h16 := seg16_sound w54 w59 w64 w69 w74 w79 w84 _ h
  rcases h16 with ⟨w89, hw89, h⟩
  have h17 := seg17_sound w54 w59 w64 w69 w74 w79 w84 w89 _ h
  rcases h17 with ⟨w94, hw94, h⟩
  have h18 := seg18_sound w54 w59 w64 w69 w74 w79 w84 w89 w94 _ h
  rcases h18 with ⟨w99, hw99, h⟩
  have hSpec3 := spec3_step (w1) (w2) (w3) (w4) w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 hSpec2 hw79 hw84 hw89 hw94 hw99
  have h19 := seg19_sound w79 w84 w89 w94 w99 _ h
  rcases h19 with ⟨w104, hw104, h⟩
  have hSpec4 := spec4_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 hSpec3 hw104
  have h20 := seg20_sound w79 w84 w89 w94 w99 w104 _ h
  rcases h20 with ⟨w109, hw109, h⟩
  have hSpec5 := spec5_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 hSpec4 hw109
  have h21 := seg21_sound w79 w84 w89 w94 w99 w104 w109 _ h
  rcases h21 with ⟨w114, hw114, h⟩
  have hSpec6 := spec6_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 hSpec5 hw114
  exact ⟨w79, w84, w89, w94, w99, w104, w109, w114, hSpec6, h⟩

theorem range4_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w79 : F) (w84 : F) (w89 : F) (w94 : F) (w99 : F) (w104 : F) (w109 : F) (w114 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec6 : spec6 (w1) (w2) (w3) (w4) = st6 w79 w84 w89 w94 w99 w104 w109 w114)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg22 w79 w84 w89 w94 w99 w104 w109 w114 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg23 w79 w84 w89 w94 w99 w104 w109 w114 w119 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg24 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg25 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg26 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg27 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg28 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg29 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 =>
      k w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154))))))))) :
    ∃ w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 : F, spec14 (w1) (w2) (w3) (w4) = st14 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 ∧ k w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 := by
  have h22 := seg22_sound w79 w84 w89 w94 w99 w104 w109 w114 _ h
  rcases h22 with ⟨w119, hw119, h⟩
  have hSpec7 := spec7_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 hSpec6 hw119
  have h23 := seg23_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 _ h
  rcases h23 with ⟨w124, hw124, h⟩
  have hSpec8 := spec8_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 hSpec7 hw124
  have h24 := seg24_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 _ h
  rcases h24 with ⟨w129, hw129, h⟩
  have hSpec9 := spec9_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 hSpec8 hw129
  have h25 := seg25_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 _ h
  rcases h25 with ⟨w134, hw134, h⟩
  have hSpec10 := spec10_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 hSpec9 hw134
  have h26 := seg26_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 _ h
  rcases h26 with ⟨w139, hw139, h⟩
  have hSpec11 := spec11_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 hSpec10 hw139
  have h27 := seg27_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 _ h
  rcases h27 with ⟨w144, hw144, h⟩
  have hSpec12 := spec12_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 hSpec11 hw144
  have h28 := seg28_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 _ h
  rcases h28 with ⟨w149, hw149, h⟩
  have hSpec13 := spec13_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 hSpec12 hw149
  have h29 := seg29_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 _ h
  rcases h29 with ⟨w154, hw154, h⟩
  have hSpec14 := spec14_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 hSpec13 hw154
  exact ⟨w79, w84, w89, w94, w99, w104, w109, w114, w119, w124, w129, w134, w139, w144, w149, w154, hSpec14, h⟩

theorem range5_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w79 : F) (w84 : F) (w89 : F) (w94 : F) (w99 : F) (w104 : F) (w109 : F) (w114 : F) (w119 : F) (w124 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec14 : spec14 (w1) (w2) (w3) (w4) = st14 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg30 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg31 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg32 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg33 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg34 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg35 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg36 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg37 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 =>
      k w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194))))))))) :
    ∃ w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 : F, spec22 (w1) (w2) (w3) (w4) = st22 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 ∧ k w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 := by
  have h30 := seg30_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 _ h
  rcases h30 with ⟨w159, hw159, h⟩
  have hSpec15 := spec15_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 hSpec14 hw159
  have h31 := seg31_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 _ h
  rcases h31 with ⟨w164, hw164, h⟩
  have hSpec16 := spec16_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 hSpec15 hw164
  have h32 := seg32_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 _ h
  rcases h32 with ⟨w169, hw169, h⟩
  have hSpec17 := spec17_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 hSpec16 hw169
  have h33 := seg33_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 _ h
  rcases h33 with ⟨w174, hw174, h⟩
  have hSpec18 := spec18_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 hSpec17 hw174
  have h34 := seg34_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 _ h
  rcases h34 with ⟨w179, hw179, h⟩
  have hSpec19 := spec19_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 hSpec18 hw179
  have h35 := seg35_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 _ h
  rcases h35 with ⟨w184, hw184, h⟩
  have hSpec20 := spec20_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 hSpec19 hw184
  have h36 := seg36_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 _ h
  rcases h36 with ⟨w189, hw189, h⟩
  have hSpec21 := spec21_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 hSpec20 hw189
  have h37 := seg37_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 _ h
  rcases h37 with ⟨w194, hw194, h⟩
  have hSpec22 := spec22_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 hSpec21 hw194
  exact ⟨w79, w84, w89, w94, w99, w104, w109, w114, w119, w124, w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, hSpec22, h⟩

theorem range6_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w79 : F) (w84 : F) (w89 : F) (w94 : F) (w99 : F) (w104 : F) (w109 : F) (w114 : F) (w119 : F) (w124 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (w159 : F) (w164 : F) (w169 : F) (w174 : F) (w179 : F) (w184 : F) (w189 : F) (w194 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec22 : spec22 (w1) (w2) (w3) (w4) = st22 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg38 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg39 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg40 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg41 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg42 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg43 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg44 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg45 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 =>
      k w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234))))))))) :
    ∃ w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 : F, spec30 (w1) (w2) (w3) (w4) = st30 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 ∧ k w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 := by
  have h38 := seg38_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 _ h
  rcases h38 with ⟨w199, hw199, h⟩
  have hSpec23 := spec23_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 hSpec22 hw199
  have h39 := seg39_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 _ h
  rcases h39 with ⟨w204, hw204, h⟩
  have hSpec24 := spec24_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 hSpec23 hw204
  have h40 := seg40_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 _ h
  rcases h40 with ⟨w209, hw209, h⟩
  have hSpec25 := spec25_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 hSpec24 hw209
  have h41 := seg41_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 _ h
  rcases h41 with ⟨w214, hw214, h⟩
  have hSpec26 := spec26_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 hSpec25 hw214
  have h42 := seg42_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 _ h
  rcases h42 with ⟨w219, hw219, h⟩
  have hSpec27 := spec27_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 hSpec26 hw219
  have h43 := seg43_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 _ h
  rcases h43 with ⟨w224, hw224, h⟩
  have hSpec28 := spec28_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 hSpec27 hw224
  have h44 := seg44_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 _ h
  rcases h44 with ⟨w229, hw229, h⟩
  have hSpec29 := spec29_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 hSpec28 hw229
  have h45 := seg45_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 _ h
  rcases h45 with ⟨w234, hw234, h⟩
  have hSpec30 := spec30_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 hSpec29 hw234
  exact ⟨w79, w84, w89, w94, w99, w104, w109, w114, w119, w124, w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, hSpec30, h⟩

theorem range7_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w79 : F) (w84 : F) (w89 : F) (w94 : F) (w99 : F) (w104 : F) (w109 : F) (w114 : F) (w119 : F) (w124 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (w159 : F) (w164 : F) (w169 : F) (w174 : F) (w179 : F) (w184 : F) (w189 : F) (w194 : F) (w199 : F) (w204 : F) (w209 : F) (w214 : F) (w219 : F) (w224 : F) (w229 : F) (w234 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec30 : spec30 (w1) (w2) (w3) (w4) = st30 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg46 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg47 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg48 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg49 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 =>
      k w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254))))) :
    ∃ w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 : F, spec34 (w1) (w2) (w3) (w4) = st34 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 ∧ k w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 := by
  have h46 := seg46_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 _ h
  rcases h46 with ⟨w239, hw239, h⟩
  have hSpec31 := spec31_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 hSpec30 hw239
  have h47 := seg47_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 _ h
  rcases h47 with ⟨w244, hw244, h⟩
  have hSpec32 := spec32_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 hSpec31 hw244
  have h48 := seg48_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 _ h
  rcases h48 with ⟨w249, hw249, h⟩
  have hSpec33 := spec33_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 hSpec32 hw249
  have h49 := seg49_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 _ h
  rcases h49 with ⟨w254, hw254, h⟩
  have hSpec34 := spec34_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 hSpec33 hw254
  exact ⟨w79, w84, w89, w94, w99, w104, w109, w114, w119, w124, w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, w239, w244, w249, w254, hSpec34, h⟩

theorem range8_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w79 : F) (w84 : F) (w89 : F) (w94 : F) (w99 : F) (w104 : F) (w109 : F) (w114 : F) (w119 : F) (w124 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (w159 : F) (w164 : F) (w169 : F) (w174 : F) (w179 : F) (w184 : F) (w189 : F) (w194 : F) (w199 : F) (w204 : F) (w209 : F) (w214 : F) (w219 : F) (w224 : F) (w229 : F) (w234 : F) (w239 : F) (w244 : F) (w249 : F) (w254 : F) (k : F → F → F → F → F → Prop)
    (hSpec34 : spec34 (w1) (w2) (w3) (w4) = st34 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg50 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg51 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg52 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg53 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 (fun w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg54 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 (fun w259 w264 w269 w274 w279 =>
      k w259 w264 w269 w274 w279)))))) :
    ∃ w259 w264 w269 w274 w279 : F, spec35 (w1) (w2) (w3) (w4) = st35 w259 w264 w269 w274 w279 ∧ k w259 w264 w269 w274 w279 := by
  have h50 := seg50_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 _ h
  rcases h50 with ⟨w259, hw259, h⟩
  have h51 := seg51_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 _ h
  rcases h51 with ⟨w264, hw264, h⟩
  have h52 := seg52_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 _ h
  rcases h52 with ⟨w269, hw269, h⟩
  have h53 := seg53_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 _ h
  rcases h53 with ⟨w274, hw274, h⟩
  have h54 := seg54_sound w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 _ h
  rcases h54 with ⟨w279, hw279, h⟩
  have hSpec35 := spec35_step (w1) (w2) (w3) (w4) w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 hSpec34 hw259 hw264 hw269 hw274 hw279
  exact ⟨w259, w264, w269, w274, w279, hSpec35, h⟩

theorem range9_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w259 : F) (w264 : F) (w269 : F) (w274 : F) (w279 : F) (k : F → F → F → F → F → Prop)
    (hSpec35 : spec35 (w1) (w2) (w3) (w4) = st35 w259 w264 w269 w274 w279)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg55 w259 w264 w269 w274 w279 (fun w259 w264 w269 w274 w279 w284 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg56 w259 w264 w269 w274 w279 w284 (fun w259 w264 w269 w274 w279 w284 w289 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg57 w259 w264 w269 w274 w279 w284 w289 (fun w259 w264 w269 w274 w279 w284 w289 w294 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg58 w259 w264 w269 w274 w279 w284 w289 w294 (fun w259 w264 w269 w274 w279 w284 w289 w294 w299 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg59 w259 w264 w269 w274 w279 w284 w289 w294 w299 (fun w284 w289 w294 w299 w304 =>
      k w284 w289 w294 w299 w304)))))) :
    ∃ w284 w289 w294 w299 w304 : F, spec36 (w1) (w2) (w3) (w4) = st36 w284 w289 w294 w299 w304 ∧ k w284 w289 w294 w299 w304 := by
  have h55 := seg55_sound w259 w264 w269 w274 w279 _ h
  rcases h55 with ⟨w284, hw284, h⟩
  have h56 := seg56_sound w259 w264 w269 w274 w279 w284 _ h
  rcases h56 with ⟨w289, hw289, h⟩
  have h57 := seg57_sound w259 w264 w269 w274 w279 w284 w289 _ h
  rcases h57 with ⟨w294, hw294, h⟩
  have h58 := seg58_sound w259 w264 w269 w274 w279 w284 w289 w294 _ h
  rcases h58 with ⟨w299, hw299, h⟩
  have h59 := seg59_sound w259 w264 w269 w274 w279 w284 w289 w294 w299 _ h
  rcases h59 with ⟨w304, hw304, h⟩
  have hSpec36 := spec36_step (w1) (w2) (w3) (w4) w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 hSpec35 hw284 hw289 hw294 hw299 hw304
  exact ⟨w284, w289, w294, w299, w304, hSpec36, h⟩

theorem range10_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w284 : F) (w289 : F) (w294 : F) (w299 : F) (w304 : F) (k : F → F → F → F → F → Prop)
    (hSpec36 : spec36 (w1) (w2) (w3) (w4) = st36 w284 w289 w294 w299 w304)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg60 w284 w289 w294 w299 w304 (fun w284 w289 w294 w299 w304 w309 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg61 w284 w289 w294 w299 w304 w309 (fun w284 w289 w294 w299 w304 w309 w314 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg62 w284 w289 w294 w299 w304 w309 w314 (fun w284 w289 w294 w299 w304 w309 w314 w319 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg63 w284 w289 w294 w299 w304 w309 w314 w319 (fun w284 w289 w294 w299 w304 w309 w314 w319 w324 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg64 w284 w289 w294 w299 w304 w309 w314 w319 w324 (fun w309 w314 w319 w324 w329 =>
      k w309 w314 w319 w324 w329)))))) :
    ∃ w309 w314 w319 w324 w329 : F, spec37 (w1) (w2) (w3) (w4) = st37 w309 w314 w319 w324 w329 ∧ k w309 w314 w319 w324 w329 := by
  have h60 := seg60_sound w284 w289 w294 w299 w304 _ h
  rcases h60 with ⟨w309, hw309, h⟩
  have h61 := seg61_sound w284 w289 w294 w299 w304 w309 _ h
  rcases h61 with ⟨w314, hw314, h⟩
  have h62 := seg62_sound w284 w289 w294 w299 w304 w309 w314 _ h
  rcases h62 with ⟨w319, hw319, h⟩
  have h63 := seg63_sound w284 w289 w294 w299 w304 w309 w314 w319 _ h
  rcases h63 with ⟨w324, hw324, h⟩
  have h64 := seg64_sound w284 w289 w294 w299 w304 w309 w314 w319 w324 _ h
  rcases h64 with ⟨w329, hw329, h⟩
  have hSpec37 := spec37_step (w1) (w2) (w3) (w4) w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 hSpec36 hw309 hw314 hw319 hw324 hw329
  exact ⟨w309, w314, w319, w324, w329, hSpec37, h⟩

theorem range11_sound (w1 : F) (w2 : F) (w3 : F) (w4 : F) (w309 : F) (w314 : F) (w319 : F) (w324 : F) (w329 : F) (k : F → F → F → F → F → Prop)
    (hSpec37 : spec37 (w1) (w2) (w3) (w4) = st37 w309 w314 w319 w324 w329)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg65 w309 w314 w319 w324 w329 (fun w309 w314 w319 w324 w329 w334 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg66 w309 w314 w319 w324 w329 w334 (fun w309 w314 w319 w324 w329 w334 w339 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg67 w309 w314 w319 w324 w329 w334 w339 (fun w309 w314 w319 w324 w329 w334 w339 w344 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg68 w309 w314 w319 w324 w329 w334 w339 w344 (fun w309 w314 w319 w324 w329 w334 w339 w344 w349 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg69 w309 w314 w319 w324 w329 w334 w339 w344 w349 (fun w334 w339 w344 w349 w354 =>
      k w334 w339 w344 w349 w354)))))) :
    ∃ w334 w339 w344 w349 w354 : F, spec38 (w1) (w2) (w3) (w4) = st38 w334 w339 w344 w349 w354 ∧ k w334 w339 w344 w349 w354 := by
  have h65 := seg65_sound w309 w314 w319 w324 w329 _ h
  rcases h65 with ⟨w334, hw334, h⟩
  have h66 := seg66_sound w309 w314 w319 w324 w329 w334 _ h
  rcases h66 with ⟨w339, hw339, h⟩
  have h67 := seg67_sound w309 w314 w319 w324 w329 w334 w339 _ h
  rcases h67 with ⟨w344, hw344, h⟩
  have h68 := seg68_sound w309 w314 w319 w324 w329 w334 w339 w344 _ h
  rcases h68 with ⟨w349, hw349, h⟩
  have h69 := seg69_sound w309 w314 w319 w324 w329 w334 w339 w344 w349 _ h
  rcases h69 with ⟨w354, hw354, h⟩
  have hSpec38 := spec38_step (w1) (w2) (w3) (w4) w309 w314 w319 w324 w329 w334 w339 w344 w349 w354 hSpec37 hw334 hw339 hw344 hw349 hw354
  exact ⟨w334, w339, w344, w349, w354, hSpec38, h⟩

theorem relation_sound_permSpec (w1 : F) (w2 : F) (w3 : F) (w4 : F) (k : F → F → F → F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation w1 w2 w3 w4 k →
      ∃ w334 w339 w344 w349 w354 : F, k w334 w339 w344 w349 w354 ∧
        s38_1 w334 w339 w344 w349 w354 = permSpec4 domainLit (w1) (w2) (w3) (w4) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
  intro h
  have r0 := range0_sound w1 w2 w3 w4 _ h
  rcases r0 with ⟨w9, w14, w19, w24, hSpec0, h⟩
  have r1 := range1_sound w1 w2 w3 w4 w9 w14 w19 w24 _ hSpec0 h
  rcases r1 with ⟨w29, w34, w39, w44, w49, hSpec1, h⟩
  have r2 := range2_sound w1 w2 w3 w4 w29 w34 w39 w44 w49 _ hSpec1 h
  rcases r2 with ⟨w54, w59, w64, w69, w74, hSpec2, h⟩
  have r3 := range3_sound w1 w2 w3 w4 w54 w59 w64 w69 w74 _ hSpec2 h
  rcases r3 with ⟨w79, w84, w89, w94, w99, w104, w109, w114, hSpec6, h⟩
  have r4 := range4_sound w1 w2 w3 w4 w79 w84 w89 w94 w99 w104 w109 w114 _ hSpec6 h
  rcases r4 with ⟨w79, w84, w89, w94, w99, w104, w109, w114, w119, w124, w129, w134, w139, w144, w149, w154, hSpec14, h⟩
  have r5 := range5_sound w1 w2 w3 w4 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 _ hSpec14 h
  rcases r5 with ⟨w79, w84, w89, w94, w99, w104, w109, w114, w119, w124, w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, hSpec22, h⟩
  have r6 := range6_sound w1 w2 w3 w4 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 _ hSpec22 h
  rcases r6 with ⟨w79, w84, w89, w94, w99, w104, w109, w114, w119, w124, w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, hSpec30, h⟩
  have r7 := range7_sound w1 w2 w3 w4 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 _ hSpec30 h
  rcases r7 with ⟨w79, w84, w89, w94, w99, w104, w109, w114, w119, w124, w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, w239, w244, w249, w254, hSpec34, h⟩
  have r8 := range8_sound w1 w2 w3 w4 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 _ hSpec34 h
  rcases r8 with ⟨w259, w264, w269, w274, w279, hSpec35, h⟩
  have r9 := range9_sound w1 w2 w3 w4 w259 w264 w269 w274 w279 _ hSpec35 h
  rcases r9 with ⟨w284, w289, w294, w299, w304, hSpec36, h⟩
  have r10 := range10_sound w1 w2 w3 w4 w284 w289 w294 w299 w304 _ hSpec36 h
  rcases r10 with ⟨w309, w314, w319, w324, w329, hSpec37, h⟩
  have r11 := range11_sound w1 w2 w3 w4 w309 w314 w319 w324 w329 _ hSpec37 h
  rcases r11 with ⟨w334, w339, w344, w349, w354, hSpec38, h⟩
  refine ⟨w334, w339, w344, w349, w354, h, ?_⟩
  rw [← spec38_eq_permSpec (w1) (w2) (w3) (w4)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon
