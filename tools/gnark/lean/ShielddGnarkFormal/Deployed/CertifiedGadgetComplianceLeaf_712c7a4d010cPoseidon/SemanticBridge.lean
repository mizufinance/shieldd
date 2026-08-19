import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon7Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon7Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash7.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.Order))

theorem range0_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (k : F → F → F → F → F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg0 w1 w2 w8 w9 w15 w21 w27 w33 w39 (fun w8 w9 w15 w21 w27 w33 w39 w7 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg1 w7 w8 w9 w15 w21 w27 w33 w39 (fun w7 w15 w21 w27 w33 w39 w14 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg2 w7 w14 w15 w21 w27 w33 w39 (fun w7 w14 w21 w27 w33 w39 w20 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg3 w7 w14 w20 w21 w27 w33 w39 (fun w7 w14 w20 w27 w33 w39 w26 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg4 w7 w14 w20 w26 w27 w33 w39 (fun w7 w14 w20 w26 w33 w39 w32 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg5 w7 w14 w20 w26 w32 w33 w39 (fun w7 w14 w20 w26 w32 w39 w38 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg6 w7 w14 w20 w26 w32 w38 w39 (fun w7 w14 w20 w26 w32 w38 w44 =>
      k w7 w14 w20 w26 w32 w38 w44)))))))) :
    ∃ w7 w14 w20 w26 w32 w38 w44 : F, spec0 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st0 w7 w14 w20 w26 w32 w38 w44 ∧ k w7 w14 w20 w26 w32 w38 w44 := by
  have h0 := seg0_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 _ h
  rcases h0 with ⟨w7, hw7, h⟩
  have h1 := seg1_sound w7 w8 w9 w15 w21 w27 w33 w39 _ h
  rcases h1 with ⟨w14, hw14, h⟩
  have h2 := seg2_sound w7 w14 w15 w21 w27 w33 w39 _ h
  rcases h2 with ⟨w20, hw20, h⟩
  have h3 := seg3_sound w7 w14 w20 w21 w27 w33 w39 _ h
  rcases h3 with ⟨w26, hw26, h⟩
  have h4 := seg4_sound w7 w14 w20 w26 w27 w33 w39 _ h
  rcases h4 with ⟨w32, hw32, h⟩
  have h5 := seg5_sound w7 w14 w20 w26 w32 w33 w39 _ h
  rcases h5 with ⟨w38, hw38, h⟩
  have h6 := seg6_sound w7 w14 w20 w26 w32 w38 w39 _ h
  rcases h6 with ⟨w44, hw44, h⟩
  have hSpec0 := spec0_eq ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w7 w14 w20 w26 w32 w38 w44 hw7 hw14 hw20 hw26 hw32 hw38 hw44
  exact ⟨w7, w14, w20, w26, w32, w38, w44, hSpec0, h⟩

theorem range1_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w7 : F) (w14 : F) (w20 : F) (w26 : F) (w32 : F) (w38 : F) (w44 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec0 : spec0 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st0 w7 w14 w20 w26 w32 w38 w44)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg7 w7 w14 w20 w26 w32 w38 w44 (fun w7 w14 w20 w26 w32 w38 w44 w49 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg8 w7 w14 w20 w26 w32 w38 w44 w49 (fun w7 w14 w20 w26 w32 w38 w44 w49 w54 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg9 w7 w14 w20 w26 w32 w38 w44 w49 w54 (fun w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg10 w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 (fun w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg11 w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 (fun w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg12 w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 (fun w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 w74 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg13 w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 w74 (fun w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 w74 w79 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg14 w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 w74 w79 (fun w49 w54 w59 w64 w69 w74 w79 w84 =>
      k w49 w54 w59 w64 w69 w74 w79 w84))))))))) :
    ∃ w49 w54 w59 w64 w69 w74 w79 w84 : F, spec1 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st1 w49 w54 w59 w64 w69 w74 w79 w84 ∧ k w49 w54 w59 w64 w69 w74 w79 w84 := by
  have h7 := seg7_sound w7 w14 w20 w26 w32 w38 w44 _ h
  rcases h7 with ⟨w49, hw49, h⟩
  have h8 := seg8_sound w7 w14 w20 w26 w32 w38 w44 w49 _ h
  rcases h8 with ⟨w54, hw54, h⟩
  have h9 := seg9_sound w7 w14 w20 w26 w32 w38 w44 w49 w54 _ h
  rcases h9 with ⟨w59, hw59, h⟩
  have h10 := seg10_sound w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 _ h
  rcases h10 with ⟨w64, hw64, h⟩
  have h11 := seg11_sound w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 _ h
  rcases h11 with ⟨w69, hw69, h⟩
  have h12 := seg12_sound w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 _ h
  rcases h12 with ⟨w74, hw74, h⟩
  have h13 := seg13_sound w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 w74 _ h
  rcases h13 with ⟨w79, hw79, h⟩
  have h14 := seg14_sound w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 w74 w79 _ h
  rcases h14 with ⟨w84, hw84, h⟩
  have hSpec1 := spec1_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w7 w14 w20 w26 w32 w38 w44 w49 w54 w59 w64 w69 w74 w79 w84 hSpec0 hw49 hw54 hw59 hw64 hw69 hw74 hw79 hw84
  exact ⟨w49, w54, w59, w64, w69, w74, w79, w84, hSpec1, h⟩

theorem range2_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w49 : F) (w54 : F) (w59 : F) (w64 : F) (w69 : F) (w74 : F) (w79 : F) (w84 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec1 : spec1 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st1 w49 w54 w59 w64 w69 w74 w79 w84)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg15 w49 w54 w59 w64 w69 w74 w79 w84 (fun w49 w54 w59 w64 w69 w74 w79 w84 w89 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg16 w49 w54 w59 w64 w69 w74 w79 w84 w89 (fun w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg17 w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 (fun w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg18 w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 (fun w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg19 w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 (fun w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg20 w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 (fun w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 w114 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg21 w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 w114 (fun w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 w114 w119 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg22 w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 w114 w119 (fun w89 w94 w99 w104 w109 w114 w119 w124 =>
      k w89 w94 w99 w104 w109 w114 w119 w124))))))))) :
    ∃ w89 w94 w99 w104 w109 w114 w119 w124 : F, spec2 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st2 w89 w94 w99 w104 w109 w114 w119 w124 ∧ k w89 w94 w99 w104 w109 w114 w119 w124 := by
  have h15 := seg15_sound w49 w54 w59 w64 w69 w74 w79 w84 _ h
  rcases h15 with ⟨w89, hw89, h⟩
  have h16 := seg16_sound w49 w54 w59 w64 w69 w74 w79 w84 w89 _ h
  rcases h16 with ⟨w94, hw94, h⟩
  have h17 := seg17_sound w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 _ h
  rcases h17 with ⟨w99, hw99, h⟩
  have h18 := seg18_sound w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 _ h
  rcases h18 with ⟨w104, hw104, h⟩
  have h19 := seg19_sound w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 _ h
  rcases h19 with ⟨w109, hw109, h⟩
  have h20 := seg20_sound w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 _ h
  rcases h20 with ⟨w114, hw114, h⟩
  have h21 := seg21_sound w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 w114 _ h
  rcases h21 with ⟨w119, hw119, h⟩
  have h22 := seg22_sound w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 w114 w119 _ h
  rcases h22 with ⟨w124, hw124, h⟩
  have hSpec2 := spec2_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w49 w54 w59 w64 w69 w74 w79 w84 w89 w94 w99 w104 w109 w114 w119 w124 hSpec1 hw89 hw94 hw99 hw104 hw109 hw114 hw119 hw124
  exact ⟨w89, w94, w99, w104, w109, w114, w119, w124, hSpec2, h⟩

theorem range3_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w89 : F) (w94 : F) (w99 : F) (w104 : F) (w109 : F) (w114 : F) (w119 : F) (w124 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec2 : spec2 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st2 w89 w94 w99 w104 w109 w114 w119 w124)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg23 w89 w94 w99 w104 w109 w114 w119 w124 (fun w89 w94 w99 w104 w109 w114 w119 w124 w129 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg24 w89 w94 w99 w104 w109 w114 w119 w124 w129 (fun w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg25 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 (fun w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg26 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 (fun w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg27 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 (fun w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg28 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 (fun w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg29 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 (fun w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg30 w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 (fun w129 w134 w139 w144 w149 w154 w159 w164 =>
      k w129 w134 w139 w144 w149 w154 w159 w164))))))))) :
    ∃ w129 w134 w139 w144 w149 w154 w159 w164 : F, spec3 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st3 w129 w134 w139 w144 w149 w154 w159 w164 ∧ k w129 w134 w139 w144 w149 w154 w159 w164 := by
  have h23 := seg23_sound w89 w94 w99 w104 w109 w114 w119 w124 _ h
  rcases h23 with ⟨w129, hw129, h⟩
  have h24 := seg24_sound w89 w94 w99 w104 w109 w114 w119 w124 w129 _ h
  rcases h24 with ⟨w134, hw134, h⟩
  have h25 := seg25_sound w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 _ h
  rcases h25 with ⟨w139, hw139, h⟩
  have h26 := seg26_sound w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 _ h
  rcases h26 with ⟨w144, hw144, h⟩
  have h27 := seg27_sound w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 _ h
  rcases h27 with ⟨w149, hw149, h⟩
  have h28 := seg28_sound w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 _ h
  rcases h28 with ⟨w154, hw154, h⟩
  have h29 := seg29_sound w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 _ h
  rcases h29 with ⟨w159, hw159, h⟩
  have h30 := seg30_sound w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 _ h
  rcases h30 with ⟨w164, hw164, h⟩
  have hSpec3 := spec3_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w89 w94 w99 w104 w109 w114 w119 w124 w129 w134 w139 w144 w149 w154 w159 w164 hSpec2 hw129 hw134 hw139 hw144 hw149 hw154 hw159 hw164
  exact ⟨w129, w134, w139, w144, w149, w154, w159, w164, hSpec3, h⟩

theorem range4_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (w159 : F) (w164 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec3 : spec3 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st3 w129 w134 w139 w144 w149 w154 w159 w164)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg31 w129 w134 w139 w144 w149 w154 w159 w164 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg32 w129 w134 w139 w144 w149 w154 w159 w164 w169 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg33 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg34 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg35 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg36 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg37 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg38 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 =>
      k w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204))))))))) :
    ∃ w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 : F, spec11 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st11 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 ∧ k w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 := by
  have h31 := seg31_sound w129 w134 w139 w144 w149 w154 w159 w164 _ h
  rcases h31 with ⟨w169, hw169, h⟩
  have hSpec4 := spec4_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 hSpec3 hw169
  have h32 := seg32_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 _ h
  rcases h32 with ⟨w174, hw174, h⟩
  have hSpec5 := spec5_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 hSpec4 hw174
  have h33 := seg33_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 _ h
  rcases h33 with ⟨w179, hw179, h⟩
  have hSpec6 := spec6_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 hSpec5 hw179
  have h34 := seg34_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 _ h
  rcases h34 with ⟨w184, hw184, h⟩
  have hSpec7 := spec7_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 hSpec6 hw184
  have h35 := seg35_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 _ h
  rcases h35 with ⟨w189, hw189, h⟩
  have hSpec8 := spec8_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 hSpec7 hw189
  have h36 := seg36_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 _ h
  rcases h36 with ⟨w194, hw194, h⟩
  have hSpec9 := spec9_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 hSpec8 hw194
  have h37 := seg37_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 _ h
  rcases h37 with ⟨w199, hw199, h⟩
  have hSpec10 := spec10_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 hSpec9 hw199
  have h38 := seg38_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 _ h
  rcases h38 with ⟨w204, hw204, h⟩
  have hSpec11 := spec11_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 hSpec10 hw204
  exact ⟨w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, hSpec11, h⟩

theorem range5_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (w159 : F) (w164 : F) (w169 : F) (w174 : F) (w179 : F) (w184 : F) (w189 : F) (w194 : F) (w199 : F) (w204 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec11 : spec11 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st11 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg39 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg40 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg41 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg42 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg43 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg44 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg45 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg46 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 =>
      k w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244))))))))) :
    ∃ w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 : F, spec19 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st19 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 ∧ k w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 := by
  have h39 := seg39_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 _ h
  rcases h39 with ⟨w209, hw209, h⟩
  have hSpec12 := spec12_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 hSpec11 hw209
  have h40 := seg40_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 _ h
  rcases h40 with ⟨w214, hw214, h⟩
  have hSpec13 := spec13_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 hSpec12 hw214
  have h41 := seg41_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 _ h
  rcases h41 with ⟨w219, hw219, h⟩
  have hSpec14 := spec14_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 hSpec13 hw219
  have h42 := seg42_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 _ h
  rcases h42 with ⟨w224, hw224, h⟩
  have hSpec15 := spec15_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 hSpec14 hw224
  have h43 := seg43_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 _ h
  rcases h43 with ⟨w229, hw229, h⟩
  have hSpec16 := spec16_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 hSpec15 hw229
  have h44 := seg44_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 _ h
  rcases h44 with ⟨w234, hw234, h⟩
  have hSpec17 := spec17_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 hSpec16 hw234
  have h45 := seg45_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 _ h
  rcases h45 with ⟨w239, hw239, h⟩
  have hSpec18 := spec18_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 hSpec17 hw239
  have h46 := seg46_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 _ h
  rcases h46 with ⟨w244, hw244, h⟩
  have hSpec19 := spec19_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 hSpec18 hw244
  exact ⟨w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, w239, w244, hSpec19, h⟩

theorem range6_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (w159 : F) (w164 : F) (w169 : F) (w174 : F) (w179 : F) (w184 : F) (w189 : F) (w194 : F) (w199 : F) (w204 : F) (w209 : F) (w214 : F) (w219 : F) (w224 : F) (w229 : F) (w234 : F) (w239 : F) (w244 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec19 : spec19 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st19 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg47 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg48 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg49 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg50 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg51 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg52 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg53 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg54 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 =>
      k w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284))))))))) :
    ∃ w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 : F, spec27 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st27 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 ∧ k w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 := by
  have h47 := seg47_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 _ h
  rcases h47 with ⟨w249, hw249, h⟩
  have hSpec20 := spec20_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 hSpec19 hw249
  have h48 := seg48_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 _ h
  rcases h48 with ⟨w254, hw254, h⟩
  have hSpec21 := spec21_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 hSpec20 hw254
  have h49 := seg49_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 _ h
  rcases h49 with ⟨w259, hw259, h⟩
  have hSpec22 := spec22_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 hSpec21 hw259
  have h50 := seg50_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 _ h
  rcases h50 with ⟨w264, hw264, h⟩
  have hSpec23 := spec23_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 hSpec22 hw264
  have h51 := seg51_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 _ h
  rcases h51 with ⟨w269, hw269, h⟩
  have hSpec24 := spec24_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 hSpec23 hw269
  have h52 := seg52_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 _ h
  rcases h52 with ⟨w274, hw274, h⟩
  have hSpec25 := spec25_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 hSpec24 hw274
  have h53 := seg53_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 _ h
  rcases h53 with ⟨w279, hw279, h⟩
  have hSpec26 := spec26_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 hSpec25 hw279
  have h54 := seg54_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 _ h
  rcases h54 with ⟨w284, hw284, h⟩
  have hSpec27 := spec27_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 hSpec26 hw284
  exact ⟨w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, w239, w244, w249, w254, w259, w264, w269, w274, w279, w284, hSpec27, h⟩

theorem range7_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (w159 : F) (w164 : F) (w169 : F) (w174 : F) (w179 : F) (w184 : F) (w189 : F) (w194 : F) (w199 : F) (w204 : F) (w209 : F) (w214 : F) (w219 : F) (w224 : F) (w229 : F) (w234 : F) (w239 : F) (w244 : F) (w249 : F) (w254 : F) (w259 : F) (w264 : F) (w269 : F) (w274 : F) (w279 : F) (w284 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec27 : spec27 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st27 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg55 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg56 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg57 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg58 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg59 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg60 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg61 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 =>
      k w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319)))))))) :
    ∃ w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 : F, spec34 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st34 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 ∧ k w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 := by
  have h55 := seg55_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 _ h
  rcases h55 with ⟨w289, hw289, h⟩
  have hSpec28 := spec28_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 hSpec27 hw289
  have h56 := seg56_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 _ h
  rcases h56 with ⟨w294, hw294, h⟩
  have hSpec29 := spec29_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 hSpec28 hw294
  have h57 := seg57_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 _ h
  rcases h57 with ⟨w299, hw299, h⟩
  have hSpec30 := spec30_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 hSpec29 hw299
  have h58 := seg58_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 _ h
  rcases h58 with ⟨w304, hw304, h⟩
  have hSpec31 := spec31_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 hSpec30 hw304
  have h59 := seg59_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 _ h
  rcases h59 with ⟨w309, hw309, h⟩
  have hSpec32 := spec32_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 hSpec31 hw309
  have h60 := seg60_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 _ h
  rcases h60 with ⟨w314, hw314, h⟩
  have hSpec33 := spec33_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 hSpec32 hw314
  have h61 := seg61_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 _ h
  rcases h61 with ⟨w319, hw319, h⟩
  have hSpec34 := spec34_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 hSpec33 hw319
  exact ⟨w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, w239, w244, w249, w254, w259, w264, w269, w274, w279, w284, w289, w294, w299, w304, w309, w314, w319, hSpec34, h⟩

theorem range8_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w129 : F) (w134 : F) (w139 : F) (w144 : F) (w149 : F) (w154 : F) (w159 : F) (w164 : F) (w169 : F) (w174 : F) (w179 : F) (w184 : F) (w189 : F) (w194 : F) (w199 : F) (w204 : F) (w209 : F) (w214 : F) (w219 : F) (w224 : F) (w229 : F) (w234 : F) (w239 : F) (w244 : F) (w249 : F) (w254 : F) (w259 : F) (w264 : F) (w269 : F) (w274 : F) (w279 : F) (w284 : F) (w289 : F) (w294 : F) (w299 : F) (w304 : F) (w309 : F) (w314 : F) (w319 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec34 : spec34 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st34 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg62 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg63 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg64 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg65 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg66 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg67 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 w349 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg68 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 w349 (fun w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 w349 w354 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg69 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 w349 w354 (fun w324 w329 w334 w339 w344 w349 w354 w359 =>
      k w324 w329 w334 w339 w344 w349 w354 w359))))))))) :
    ∃ w324 w329 w334 w339 w344 w349 w354 w359 : F, spec35 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st35 w324 w329 w334 w339 w344 w349 w354 w359 ∧ k w324 w329 w334 w339 w344 w349 w354 w359 := by
  have h62 := seg62_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 _ h
  rcases h62 with ⟨w324, hw324, h⟩
  have h63 := seg63_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 _ h
  rcases h63 with ⟨w329, hw329, h⟩
  have h64 := seg64_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 _ h
  rcases h64 with ⟨w334, hw334, h⟩
  have h65 := seg65_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 _ h
  rcases h65 with ⟨w339, hw339, h⟩
  have h66 := seg66_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 _ h
  rcases h66 with ⟨w344, hw344, h⟩
  have h67 := seg67_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 _ h
  rcases h67 with ⟨w349, hw349, h⟩
  have h68 := seg68_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 w349 _ h
  rcases h68 with ⟨w354, hw354, h⟩
  have h69 := seg69_sound w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 w349 w354 _ h
  rcases h69 with ⟨w359, hw359, h⟩
  have hSpec35 := spec35_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 w324 w329 w334 w339 w344 w349 w354 w359 hSpec34 hw324 hw329 hw334 hw339 hw344 hw349 hw354 hw359
  exact ⟨w324, w329, w334, w339, w344, w349, w354, w359, hSpec35, h⟩

theorem range9_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w324 : F) (w329 : F) (w334 : F) (w339 : F) (w344 : F) (w349 : F) (w354 : F) (w359 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec35 : spec35 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st35 w324 w329 w334 w339 w344 w349 w354 w359)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg70 w324 w329 w334 w339 w344 w349 w354 w359 (fun w324 w329 w334 w339 w344 w349 w354 w359 w364 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg71 w324 w329 w334 w339 w344 w349 w354 w359 w364 (fun w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg72 w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 (fun w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg73 w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 (fun w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg74 w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 (fun w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg75 w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 (fun w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 w389 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg76 w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 w389 (fun w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 w389 w394 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg77 w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 w389 w394 (fun w364 w369 w374 w379 w384 w389 w394 w399 =>
      k w364 w369 w374 w379 w384 w389 w394 w399))))))))) :
    ∃ w364 w369 w374 w379 w384 w389 w394 w399 : F, spec36 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st36 w364 w369 w374 w379 w384 w389 w394 w399 ∧ k w364 w369 w374 w379 w384 w389 w394 w399 := by
  have h70 := seg70_sound w324 w329 w334 w339 w344 w349 w354 w359 _ h
  rcases h70 with ⟨w364, hw364, h⟩
  have h71 := seg71_sound w324 w329 w334 w339 w344 w349 w354 w359 w364 _ h
  rcases h71 with ⟨w369, hw369, h⟩
  have h72 := seg72_sound w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 _ h
  rcases h72 with ⟨w374, hw374, h⟩
  have h73 := seg73_sound w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 _ h
  rcases h73 with ⟨w379, hw379, h⟩
  have h74 := seg74_sound w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 _ h
  rcases h74 with ⟨w384, hw384, h⟩
  have h75 := seg75_sound w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 _ h
  rcases h75 with ⟨w389, hw389, h⟩
  have h76 := seg76_sound w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 w389 _ h
  rcases h76 with ⟨w394, hw394, h⟩
  have h77 := seg77_sound w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 w389 w394 _ h
  rcases h77 with ⟨w399, hw399, h⟩
  have hSpec36 := spec36_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w324 w329 w334 w339 w344 w349 w354 w359 w364 w369 w374 w379 w384 w389 w394 w399 hSpec35 hw364 hw369 hw374 hw379 hw384 hw389 hw394 hw399
  exact ⟨w364, w369, w374, w379, w384, w389, w394, w399, hSpec36, h⟩

theorem range10_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w364 : F) (w369 : F) (w374 : F) (w379 : F) (w384 : F) (w389 : F) (w394 : F) (w399 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec36 : spec36 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st36 w364 w369 w374 w379 w384 w389 w394 w399)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg78 w364 w369 w374 w379 w384 w389 w394 w399 (fun w364 w369 w374 w379 w384 w389 w394 w399 w404 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg79 w364 w369 w374 w379 w384 w389 w394 w399 w404 (fun w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg80 w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 (fun w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg81 w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 (fun w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg82 w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 (fun w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg83 w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 (fun w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 w429 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg84 w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 w429 (fun w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 w429 w434 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg85 w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 w429 w434 (fun w404 w409 w414 w419 w424 w429 w434 w439 =>
      k w404 w409 w414 w419 w424 w429 w434 w439))))))))) :
    ∃ w404 w409 w414 w419 w424 w429 w434 w439 : F, spec37 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st37 w404 w409 w414 w419 w424 w429 w434 w439 ∧ k w404 w409 w414 w419 w424 w429 w434 w439 := by
  have h78 := seg78_sound w364 w369 w374 w379 w384 w389 w394 w399 _ h
  rcases h78 with ⟨w404, hw404, h⟩
  have h79 := seg79_sound w364 w369 w374 w379 w384 w389 w394 w399 w404 _ h
  rcases h79 with ⟨w409, hw409, h⟩
  have h80 := seg80_sound w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 _ h
  rcases h80 with ⟨w414, hw414, h⟩
  have h81 := seg81_sound w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 _ h
  rcases h81 with ⟨w419, hw419, h⟩
  have h82 := seg82_sound w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 _ h
  rcases h82 with ⟨w424, hw424, h⟩
  have h83 := seg83_sound w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 _ h
  rcases h83 with ⟨w429, hw429, h⟩
  have h84 := seg84_sound w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 w429 _ h
  rcases h84 with ⟨w434, hw434, h⟩
  have h85 := seg85_sound w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 w429 w434 _ h
  rcases h85 with ⟨w439, hw439, h⟩
  have hSpec37 := spec37_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w364 w369 w374 w379 w384 w389 w394 w399 w404 w409 w414 w419 w424 w429 w434 w439 hSpec36 hw404 hw409 hw414 hw419 hw424 hw429 hw434 hw439
  exact ⟨w404, w409, w414, w419, w424, w429, w434, w439, hSpec37, h⟩

theorem range11_sound (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (w404 : F) (w409 : F) (w414 : F) (w419 : F) (w424 : F) (w429 : F) (w434 : F) (w439 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec37 : spec37 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st37 w404 w409 w414 w419 w424 w429 w434 w439)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg86 w404 w409 w414 w419 w424 w429 w434 w439 (fun w404 w409 w414 w419 w424 w429 w434 w439 w444 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg87 w404 w409 w414 w419 w424 w429 w434 w439 w444 (fun w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg88 w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 (fun w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg89 w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 (fun w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg90 w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 (fun w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg91 w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 (fun w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 w469 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg92 w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 w469 (fun w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 w469 w474 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg93 w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 w469 w474 (fun w444 w449 w454 w459 w464 w469 w474 w479 =>
      k w444 w449 w454 w459 w464 w469 w474 w479))))))))) :
    ∃ w444 w449 w454 w459 w464 w469 w474 w479 : F, spec38 ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) = st38 w444 w449 w454 w459 w464 w469 w474 w479 ∧ k w444 w449 w454 w459 w464 w469 w474 w479 := by
  have h86 := seg86_sound w404 w409 w414 w419 w424 w429 w434 w439 _ h
  rcases h86 with ⟨w444, hw444, h⟩
  have h87 := seg87_sound w404 w409 w414 w419 w424 w429 w434 w439 w444 _ h
  rcases h87 with ⟨w449, hw449, h⟩
  have h88 := seg88_sound w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 _ h
  rcases h88 with ⟨w454, hw454, h⟩
  have h89 := seg89_sound w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 _ h
  rcases h89 with ⟨w459, hw459, h⟩
  have h90 := seg90_sound w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 _ h
  rcases h90 with ⟨w464, hw464, h⟩
  have h91 := seg91_sound w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 _ h
  rcases h91 with ⟨w469, hw469, h⟩
  have h92 := seg92_sound w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 w469 _ h
  rcases h92 with ⟨w474, hw474, h⟩
  have h93 := seg93_sound w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 w469 w474 _ h
  rcases h93 with ⟨w479, hw479, h⟩
  have hSpec38 := spec38_step ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) w404 w409 w414 w419 w424 w429 w434 w439 w444 w449 w454 w459 w464 w469 w474 w479 hSpec37 hw444 hw449 hw454 hw459 hw464 hw469 hw474 hw479
  exact ⟨w444, w449, w454, w459, w464, w469, w474, w479, hSpec38, h⟩

theorem relation_sound_permSpec (w1 : F) (w2 : F) (w8 : F) (w9 : F) (w15 : F) (w21 : F) (w27 : F) (w33 : F) (w39 : F) (k : F → F → F → F → F → F → F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.relation w1 w2 w8 w9 w15 w21 w27 w33 w39 k →
      ∃ w444 w449 w454 w459 w464 w469 w474 w479 : F, k w444 w449 w454 w459 w464 w469 w474 w479 ∧
        s38_1 w444 w449 w454 w459 w464 w469 w474 w479 = permSpec7 domainLit ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.relation
  intro h
  have r0 := range0_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 _ h
  rcases r0 with ⟨w7, w14, w20, w26, w32, w38, w44, hSpec0, h⟩
  have r1 := range1_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w7 w14 w20 w26 w32 w38 w44 _ hSpec0 h
  rcases r1 with ⟨w49, w54, w59, w64, w69, w74, w79, w84, hSpec1, h⟩
  have r2 := range2_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w49 w54 w59 w64 w69 w74 w79 w84 _ hSpec1 h
  rcases r2 with ⟨w89, w94, w99, w104, w109, w114, w119, w124, hSpec2, h⟩
  have r3 := range3_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w89 w94 w99 w104 w109 w114 w119 w124 _ hSpec2 h
  rcases r3 with ⟨w129, w134, w139, w144, w149, w154, w159, w164, hSpec3, h⟩
  have r4 := range4_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w129 w134 w139 w144 w149 w154 w159 w164 _ hSpec3 h
  rcases r4 with ⟨w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, hSpec11, h⟩
  have r5 := range5_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 _ hSpec11 h
  rcases r5 with ⟨w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, w239, w244, hSpec19, h⟩
  have r6 := range6_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 _ hSpec19 h
  rcases r6 with ⟨w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, w239, w244, w249, w254, w259, w264, w269, w274, w279, w284, hSpec27, h⟩
  have r7 := range7_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 _ hSpec27 h
  rcases r7 with ⟨w129, w134, w139, w144, w149, w154, w159, w164, w169, w174, w179, w184, w189, w194, w199, w204, w209, w214, w219, w224, w229, w234, w239, w244, w249, w254, w259, w264, w269, w274, w279, w284, w289, w294, w299, w304, w309, w314, w319, hSpec34, h⟩
  have r8 := range8_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w129 w134 w139 w144 w149 w154 w159 w164 w169 w174 w179 w184 w189 w194 w199 w204 w209 w214 w219 w224 w229 w234 w239 w244 w249 w254 w259 w264 w269 w274 w279 w284 w289 w294 w299 w304 w309 w314 w319 _ hSpec34 h
  rcases r8 with ⟨w324, w329, w334, w339, w344, w349, w354, w359, hSpec35, h⟩
  have r9 := range9_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w324 w329 w334 w339 w344 w349 w354 w359 _ hSpec35 h
  rcases r9 with ⟨w364, w369, w374, w379, w384, w389, w394, w399, hSpec36, h⟩
  have r10 := range10_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w364 w369 w374 w379 w384 w389 w394 w399 _ hSpec36 h
  rcases r10 with ⟨w404, w409, w414, w419, w424, w429, w434, w439, hSpec37, h⟩
  have r11 := range11_sound w1 w2 w8 w9 w15 w21 w27 w33 w39 w404 w409 w414 w419 w424 w429 w434 w439 _ hSpec37 h
  rcases r11 with ⟨w444, w449, w454, w459, w464, w469, w474, w479, hSpec38, h⟩
  refine ⟨w444, w449, w454, w459, w464, w469, w474, w479, h, ?_⟩
  rw [← spec38_eq_permSpec ((-1 : F) * w1 + w2) ((-1 : F) * w8 + w9) (w15) (w21) (w27) (w33) (w39)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidon
