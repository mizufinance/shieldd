import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9Poseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9Poseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon5Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon5Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash5.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.Order))

theorem range0_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (k : F → F → F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg0 w1 w7 w13 w19 w20 w26 w27 (fun w7 w13 w19 w20 w26 w27 w6 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg1 w6 w7 w13 w19 w20 w26 w27 (fun w6 w13 w19 w20 w26 w27 w12 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg2 w6 w12 w13 w19 w20 w26 w27 (fun w6 w12 w19 w20 w26 w27 w18 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg3 w6 w12 w18 w19 w20 w26 w27 (fun w6 w12 w18 w26 w27 w25 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg4 w6 w12 w18 w25 w26 w27 (fun w6 w12 w18 w25 w32 =>
      k w6 w12 w18 w25 w32)))))) :
    ∃ w6 w12 w18 w25 w32 : F, spec0 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st0 w6 w12 w18 w25 w32 ∧ k w6 w12 w18 w25 w32 := by
  have h0 := seg0_sound w1 w7 w13 w19 w20 w26 w27 _ h
  rcases h0 with ⟨w6, hw6, h⟩
  have h1 := seg1_sound w6 w7 w13 w19 w20 w26 w27 _ h
  rcases h1 with ⟨w12, hw12, h⟩
  have h2 := seg2_sound w6 w12 w13 w19 w20 w26 w27 _ h
  rcases h2 with ⟨w18, hw18, h⟩
  have h3 := seg3_sound w6 w12 w18 w19 w20 w26 w27 _ h
  rcases h3 with ⟨w25, hw25, h⟩
  have h4 := seg4_sound w6 w12 w18 w25 w26 w27 _ h
  rcases h4 with ⟨w32, hw32, h⟩
  have hSpec0 := spec0_eq (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w6 w12 w18 w25 w32 hw6 hw12 hw18 hw25 hw32
  exact ⟨w6, w12, w18, w25, w32, hSpec0, h⟩

theorem range1_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w6 : F) (w12 : F) (w18 : F) (w25 : F) (w32 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec0 : spec0 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st0 w6 w12 w18 w25 w32)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg5 w6 w12 w18 w25 w32 (fun w6 w12 w18 w25 w32 w37 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg6 w6 w12 w18 w25 w32 w37 (fun w6 w12 w18 w25 w32 w37 w42 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg7 w6 w12 w18 w25 w32 w37 w42 (fun w6 w12 w18 w25 w32 w37 w42 w47 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg8 w6 w12 w18 w25 w32 w37 w42 w47 (fun w6 w12 w18 w25 w32 w37 w42 w47 w52 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg9 w6 w12 w18 w25 w32 w37 w42 w47 w52 (fun w6 w12 w18 w25 w32 w37 w42 w47 w52 w57 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg10 w6 w12 w18 w25 w32 w37 w42 w47 w52 w57 (fun w37 w42 w47 w52 w57 w62 =>
      k w37 w42 w47 w52 w57 w62))))))) :
    ∃ w37 w42 w47 w52 w57 w62 : F, spec1 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st1 w37 w42 w47 w52 w57 w62 ∧ k w37 w42 w47 w52 w57 w62 := by
  have h5 := seg5_sound w6 w12 w18 w25 w32 _ h
  rcases h5 with ⟨w37, hw37, h⟩
  have h6 := seg6_sound w6 w12 w18 w25 w32 w37 _ h
  rcases h6 with ⟨w42, hw42, h⟩
  have h7 := seg7_sound w6 w12 w18 w25 w32 w37 w42 _ h
  rcases h7 with ⟨w47, hw47, h⟩
  have h8 := seg8_sound w6 w12 w18 w25 w32 w37 w42 w47 _ h
  rcases h8 with ⟨w52, hw52, h⟩
  have h9 := seg9_sound w6 w12 w18 w25 w32 w37 w42 w47 w52 _ h
  rcases h9 with ⟨w57, hw57, h⟩
  have h10 := seg10_sound w6 w12 w18 w25 w32 w37 w42 w47 w52 w57 _ h
  rcases h10 with ⟨w62, hw62, h⟩
  have hSpec1 := spec1_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w6 w12 w18 w25 w32 w37 w42 w47 w52 w57 w62 hSpec0 hw37 hw42 hw47 hw52 hw57 hw62
  exact ⟨w37, w42, w47, w52, w57, w62, hSpec1, h⟩

theorem range2_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w37 : F) (w42 : F) (w47 : F) (w52 : F) (w57 : F) (w62 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec1 : spec1 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st1 w37 w42 w47 w52 w57 w62)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg11 w37 w42 w47 w52 w57 w62 (fun w37 w42 w47 w52 w57 w62 w67 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg12 w37 w42 w47 w52 w57 w62 w67 (fun w37 w42 w47 w52 w57 w62 w67 w72 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg13 w37 w42 w47 w52 w57 w62 w67 w72 (fun w37 w42 w47 w52 w57 w62 w67 w72 w77 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg14 w37 w42 w47 w52 w57 w62 w67 w72 w77 (fun w37 w42 w47 w52 w57 w62 w67 w72 w77 w82 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg15 w37 w42 w47 w52 w57 w62 w67 w72 w77 w82 (fun w37 w42 w47 w52 w57 w62 w67 w72 w77 w82 w87 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg16 w37 w42 w47 w52 w57 w62 w67 w72 w77 w82 w87 (fun w67 w72 w77 w82 w87 w92 =>
      k w67 w72 w77 w82 w87 w92))))))) :
    ∃ w67 w72 w77 w82 w87 w92 : F, spec2 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st2 w67 w72 w77 w82 w87 w92 ∧ k w67 w72 w77 w82 w87 w92 := by
  have h11 := seg11_sound w37 w42 w47 w52 w57 w62 _ h
  rcases h11 with ⟨w67, hw67, h⟩
  have h12 := seg12_sound w37 w42 w47 w52 w57 w62 w67 _ h
  rcases h12 with ⟨w72, hw72, h⟩
  have h13 := seg13_sound w37 w42 w47 w52 w57 w62 w67 w72 _ h
  rcases h13 with ⟨w77, hw77, h⟩
  have h14 := seg14_sound w37 w42 w47 w52 w57 w62 w67 w72 w77 _ h
  rcases h14 with ⟨w82, hw82, h⟩
  have h15 := seg15_sound w37 w42 w47 w52 w57 w62 w67 w72 w77 w82 _ h
  rcases h15 with ⟨w87, hw87, h⟩
  have h16 := seg16_sound w37 w42 w47 w52 w57 w62 w67 w72 w77 w82 w87 _ h
  rcases h16 with ⟨w92, hw92, h⟩
  have hSpec2 := spec2_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w37 w42 w47 w52 w57 w62 w67 w72 w77 w82 w87 w92 hSpec1 hw67 hw72 hw77 hw82 hw87 hw92
  exact ⟨w67, w72, w77, w82, w87, w92, hSpec2, h⟩

theorem range3_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w67 : F) (w72 : F) (w77 : F) (w82 : F) (w87 : F) (w92 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec2 : spec2 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st2 w67 w72 w77 w82 w87 w92)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg17 w67 w72 w77 w82 w87 w92 (fun w67 w72 w77 w82 w87 w92 w97 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg18 w67 w72 w77 w82 w87 w92 w97 (fun w67 w72 w77 w82 w87 w92 w97 w102 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg19 w67 w72 w77 w82 w87 w92 w97 w102 (fun w67 w72 w77 w82 w87 w92 w97 w102 w107 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg20 w67 w72 w77 w82 w87 w92 w97 w102 w107 (fun w67 w72 w77 w82 w87 w92 w97 w102 w107 w112 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg21 w67 w72 w77 w82 w87 w92 w97 w102 w107 w112 (fun w67 w72 w77 w82 w87 w92 w97 w102 w107 w112 w117 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg22 w67 w72 w77 w82 w87 w92 w97 w102 w107 w112 w117 (fun w97 w102 w107 w112 w117 w122 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg23 w97 w102 w107 w112 w117 w122 (fun w97 w102 w107 w112 w117 w122 w127 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg24 w97 w102 w107 w112 w117 w122 w127 (fun w97 w102 w107 w112 w117 w122 w127 w132 =>
      k w97 w102 w107 w112 w117 w122 w127 w132))))))))) :
    ∃ w97 w102 w107 w112 w117 w122 w127 w132 : F, spec5 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st5 w97 w102 w107 w112 w117 w122 w127 w132 ∧ k w97 w102 w107 w112 w117 w122 w127 w132 := by
  have h17 := seg17_sound w67 w72 w77 w82 w87 w92 _ h
  rcases h17 with ⟨w97, hw97, h⟩
  have h18 := seg18_sound w67 w72 w77 w82 w87 w92 w97 _ h
  rcases h18 with ⟨w102, hw102, h⟩
  have h19 := seg19_sound w67 w72 w77 w82 w87 w92 w97 w102 _ h
  rcases h19 with ⟨w107, hw107, h⟩
  have h20 := seg20_sound w67 w72 w77 w82 w87 w92 w97 w102 w107 _ h
  rcases h20 with ⟨w112, hw112, h⟩
  have h21 := seg21_sound w67 w72 w77 w82 w87 w92 w97 w102 w107 w112 _ h
  rcases h21 with ⟨w117, hw117, h⟩
  have h22 := seg22_sound w67 w72 w77 w82 w87 w92 w97 w102 w107 w112 w117 _ h
  rcases h22 with ⟨w122, hw122, h⟩
  have hSpec3 := spec3_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w67 w72 w77 w82 w87 w92 w97 w102 w107 w112 w117 w122 hSpec2 hw97 hw102 hw107 hw112 hw117 hw122
  have h23 := seg23_sound w97 w102 w107 w112 w117 w122 _ h
  rcases h23 with ⟨w127, hw127, h⟩
  have hSpec4 := spec4_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 hSpec3 hw127
  have h24 := seg24_sound w97 w102 w107 w112 w117 w122 w127 _ h
  rcases h24 with ⟨w132, hw132, h⟩
  have hSpec5 := spec5_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 hSpec4 hw132
  exact ⟨w97, w102, w107, w112, w117, w122, w127, w132, hSpec5, h⟩

theorem range4_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w97 : F) (w102 : F) (w107 : F) (w112 : F) (w117 : F) (w122 : F) (w127 : F) (w132 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec5 : spec5 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st5 w97 w102 w107 w112 w117 w122 w127 w132)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg25 w97 w102 w107 w112 w117 w122 w127 w132 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg26 w97 w102 w107 w112 w117 w122 w127 w132 w137 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg27 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg28 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg29 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg30 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg31 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg32 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 =>
      k w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172))))))))) :
    ∃ w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 : F, spec13 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st13 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 ∧ k w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 := by
  have h25 := seg25_sound w97 w102 w107 w112 w117 w122 w127 w132 _ h
  rcases h25 with ⟨w137, hw137, h⟩
  have hSpec6 := spec6_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 hSpec5 hw137
  have h26 := seg26_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 _ h
  rcases h26 with ⟨w142, hw142, h⟩
  have hSpec7 := spec7_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 hSpec6 hw142
  have h27 := seg27_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 _ h
  rcases h27 with ⟨w147, hw147, h⟩
  have hSpec8 := spec8_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 hSpec7 hw147
  have h28 := seg28_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 _ h
  rcases h28 with ⟨w152, hw152, h⟩
  have hSpec9 := spec9_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 hSpec8 hw152
  have h29 := seg29_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 _ h
  rcases h29 with ⟨w157, hw157, h⟩
  have hSpec10 := spec10_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 hSpec9 hw157
  have h30 := seg30_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 _ h
  rcases h30 with ⟨w162, hw162, h⟩
  have hSpec11 := spec11_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 hSpec10 hw162
  have h31 := seg31_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 _ h
  rcases h31 with ⟨w167, hw167, h⟩
  have hSpec12 := spec12_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 hSpec11 hw167
  have h32 := seg32_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 _ h
  rcases h32 with ⟨w172, hw172, h⟩
  have hSpec13 := spec13_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 hSpec12 hw172
  exact ⟨w97, w102, w107, w112, w117, w122, w127, w132, w137, w142, w147, w152, w157, w162, w167, w172, hSpec13, h⟩

theorem range5_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w97 : F) (w102 : F) (w107 : F) (w112 : F) (w117 : F) (w122 : F) (w127 : F) (w132 : F) (w137 : F) (w142 : F) (w147 : F) (w152 : F) (w157 : F) (w162 : F) (w167 : F) (w172 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec13 : spec13 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st13 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg33 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg34 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg35 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg36 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg37 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg38 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg39 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg40 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 =>
      k w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212))))))))) :
    ∃ w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 : F, spec21 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st21 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 ∧ k w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 := by
  have h33 := seg33_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 _ h
  rcases h33 with ⟨w177, hw177, h⟩
  have hSpec14 := spec14_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 hSpec13 hw177
  have h34 := seg34_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 _ h
  rcases h34 with ⟨w182, hw182, h⟩
  have hSpec15 := spec15_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 hSpec14 hw182
  have h35 := seg35_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 _ h
  rcases h35 with ⟨w187, hw187, h⟩
  have hSpec16 := spec16_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 hSpec15 hw187
  have h36 := seg36_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 _ h
  rcases h36 with ⟨w192, hw192, h⟩
  have hSpec17 := spec17_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 hSpec16 hw192
  have h37 := seg37_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 _ h
  rcases h37 with ⟨w197, hw197, h⟩
  have hSpec18 := spec18_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 hSpec17 hw197
  have h38 := seg38_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 _ h
  rcases h38 with ⟨w202, hw202, h⟩
  have hSpec19 := spec19_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 hSpec18 hw202
  have h39 := seg39_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 _ h
  rcases h39 with ⟨w207, hw207, h⟩
  have hSpec20 := spec20_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 hSpec19 hw207
  have h40 := seg40_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 _ h
  rcases h40 with ⟨w212, hw212, h⟩
  have hSpec21 := spec21_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 hSpec20 hw212
  exact ⟨w97, w102, w107, w112, w117, w122, w127, w132, w137, w142, w147, w152, w157, w162, w167, w172, w177, w182, w187, w192, w197, w202, w207, w212, hSpec21, h⟩

theorem range6_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w97 : F) (w102 : F) (w107 : F) (w112 : F) (w117 : F) (w122 : F) (w127 : F) (w132 : F) (w137 : F) (w142 : F) (w147 : F) (w152 : F) (w157 : F) (w162 : F) (w167 : F) (w172 : F) (w177 : F) (w182 : F) (w187 : F) (w192 : F) (w197 : F) (w202 : F) (w207 : F) (w212 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec21 : spec21 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st21 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg41 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg42 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg43 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg44 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg45 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg46 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg47 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg48 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 =>
      k w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252))))))))) :
    ∃ w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 : F, spec29 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st29 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 ∧ k w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 := by
  have h41 := seg41_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 _ h
  rcases h41 with ⟨w217, hw217, h⟩
  have hSpec22 := spec22_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 hSpec21 hw217
  have h42 := seg42_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 _ h
  rcases h42 with ⟨w222, hw222, h⟩
  have hSpec23 := spec23_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 hSpec22 hw222
  have h43 := seg43_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 _ h
  rcases h43 with ⟨w227, hw227, h⟩
  have hSpec24 := spec24_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 hSpec23 hw227
  have h44 := seg44_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 _ h
  rcases h44 with ⟨w232, hw232, h⟩
  have hSpec25 := spec25_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 hSpec24 hw232
  have h45 := seg45_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 _ h
  rcases h45 with ⟨w237, hw237, h⟩
  have hSpec26 := spec26_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 hSpec25 hw237
  have h46 := seg46_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 _ h
  rcases h46 with ⟨w242, hw242, h⟩
  have hSpec27 := spec27_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 hSpec26 hw242
  have h47 := seg47_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 _ h
  rcases h47 with ⟨w247, hw247, h⟩
  have hSpec28 := spec28_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 hSpec27 hw247
  have h48 := seg48_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 _ h
  rcases h48 with ⟨w252, hw252, h⟩
  have hSpec29 := spec29_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 hSpec28 hw252
  exact ⟨w97, w102, w107, w112, w117, w122, w127, w132, w137, w142, w147, w152, w157, w162, w167, w172, w177, w182, w187, w192, w197, w202, w207, w212, w217, w222, w227, w232, w237, w242, w247, w252, hSpec29, h⟩

theorem range7_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w97 : F) (w102 : F) (w107 : F) (w112 : F) (w117 : F) (w122 : F) (w127 : F) (w132 : F) (w137 : F) (w142 : F) (w147 : F) (w152 : F) (w157 : F) (w162 : F) (w167 : F) (w172 : F) (w177 : F) (w182 : F) (w187 : F) (w192 : F) (w197 : F) (w202 : F) (w207 : F) (w212 : F) (w217 : F) (w222 : F) (w227 : F) (w232 : F) (w237 : F) (w242 : F) (w247 : F) (w252 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec29 : spec29 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st29 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg49 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg50 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg51 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg52 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg53 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 =>
      k w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277)))))) :
    ∃ w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 : F, spec34 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st34 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 ∧ k w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 := by
  have h49 := seg49_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 _ h
  rcases h49 with ⟨w257, hw257, h⟩
  have hSpec30 := spec30_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 hSpec29 hw257
  have h50 := seg50_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 _ h
  rcases h50 with ⟨w262, hw262, h⟩
  have hSpec31 := spec31_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 hSpec30 hw262
  have h51 := seg51_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 _ h
  rcases h51 with ⟨w267, hw267, h⟩
  have hSpec32 := spec32_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 hSpec31 hw267
  have h52 := seg52_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 _ h
  rcases h52 with ⟨w272, hw272, h⟩
  have hSpec33 := spec33_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 hSpec32 hw272
  have h53 := seg53_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 _ h
  rcases h53 with ⟨w277, hw277, h⟩
  have hSpec34 := spec34_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 hSpec33 hw277
  exact ⟨w97, w102, w107, w112, w117, w122, w127, w132, w137, w142, w147, w152, w157, w162, w167, w172, w177, w182, w187, w192, w197, w202, w207, w212, w217, w222, w227, w232, w237, w242, w247, w252, w257, w262, w267, w272, w277, hSpec34, h⟩

theorem range8_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w97 : F) (w102 : F) (w107 : F) (w112 : F) (w117 : F) (w122 : F) (w127 : F) (w132 : F) (w137 : F) (w142 : F) (w147 : F) (w152 : F) (w157 : F) (w162 : F) (w167 : F) (w172 : F) (w177 : F) (w182 : F) (w187 : F) (w192 : F) (w197 : F) (w202 : F) (w207 : F) (w212 : F) (w217 : F) (w222 : F) (w227 : F) (w232 : F) (w237 : F) (w242 : F) (w247 : F) (w252 : F) (w257 : F) (w262 : F) (w267 : F) (w272 : F) (w277 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec34 : spec34 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st34 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg54 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg55 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg56 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg57 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 w297 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg58 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 w297 (fun w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 w297 w302 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg59 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 w297 w302 (fun w282 w287 w292 w297 w302 w307 =>
      k w282 w287 w292 w297 w302 w307))))))) :
    ∃ w282 w287 w292 w297 w302 w307 : F, spec35 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st35 w282 w287 w292 w297 w302 w307 ∧ k w282 w287 w292 w297 w302 w307 := by
  have h54 := seg54_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 _ h
  rcases h54 with ⟨w282, hw282, h⟩
  have h55 := seg55_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 _ h
  rcases h55 with ⟨w287, hw287, h⟩
  have h56 := seg56_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 _ h
  rcases h56 with ⟨w292, hw292, h⟩
  have h57 := seg57_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 _ h
  rcases h57 with ⟨w297, hw297, h⟩
  have h58 := seg58_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 w297 _ h
  rcases h58 with ⟨w302, hw302, h⟩
  have h59 := seg59_sound w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 w297 w302 _ h
  rcases h59 with ⟨w307, hw307, h⟩
  have hSpec35 := spec35_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 w282 w287 w292 w297 w302 w307 hSpec34 hw282 hw287 hw292 hw297 hw302 hw307
  exact ⟨w282, w287, w292, w297, w302, w307, hSpec35, h⟩

theorem range9_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w282 : F) (w287 : F) (w292 : F) (w297 : F) (w302 : F) (w307 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec35 : spec35 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st35 w282 w287 w292 w297 w302 w307)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg60 w282 w287 w292 w297 w302 w307 (fun w282 w287 w292 w297 w302 w307 w312 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg61 w282 w287 w292 w297 w302 w307 w312 (fun w282 w287 w292 w297 w302 w307 w312 w317 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg62 w282 w287 w292 w297 w302 w307 w312 w317 (fun w282 w287 w292 w297 w302 w307 w312 w317 w322 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg63 w282 w287 w292 w297 w302 w307 w312 w317 w322 (fun w282 w287 w292 w297 w302 w307 w312 w317 w322 w327 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg64 w282 w287 w292 w297 w302 w307 w312 w317 w322 w327 (fun w282 w287 w292 w297 w302 w307 w312 w317 w322 w327 w332 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg65 w282 w287 w292 w297 w302 w307 w312 w317 w322 w327 w332 (fun w312 w317 w322 w327 w332 w337 =>
      k w312 w317 w322 w327 w332 w337))))))) :
    ∃ w312 w317 w322 w327 w332 w337 : F, spec36 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st36 w312 w317 w322 w327 w332 w337 ∧ k w312 w317 w322 w327 w332 w337 := by
  have h60 := seg60_sound w282 w287 w292 w297 w302 w307 _ h
  rcases h60 with ⟨w312, hw312, h⟩
  have h61 := seg61_sound w282 w287 w292 w297 w302 w307 w312 _ h
  rcases h61 with ⟨w317, hw317, h⟩
  have h62 := seg62_sound w282 w287 w292 w297 w302 w307 w312 w317 _ h
  rcases h62 with ⟨w322, hw322, h⟩
  have h63 := seg63_sound w282 w287 w292 w297 w302 w307 w312 w317 w322 _ h
  rcases h63 with ⟨w327, hw327, h⟩
  have h64 := seg64_sound w282 w287 w292 w297 w302 w307 w312 w317 w322 w327 _ h
  rcases h64 with ⟨w332, hw332, h⟩
  have h65 := seg65_sound w282 w287 w292 w297 w302 w307 w312 w317 w322 w327 w332 _ h
  rcases h65 with ⟨w337, hw337, h⟩
  have hSpec36 := spec36_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w282 w287 w292 w297 w302 w307 w312 w317 w322 w327 w332 w337 hSpec35 hw312 hw317 hw322 hw327 hw332 hw337
  exact ⟨w312, w317, w322, w327, w332, w337, hSpec36, h⟩

theorem range10_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w312 : F) (w317 : F) (w322 : F) (w327 : F) (w332 : F) (w337 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec36 : spec36 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st36 w312 w317 w322 w327 w332 w337)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg66 w312 w317 w322 w327 w332 w337 (fun w312 w317 w322 w327 w332 w337 w342 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg67 w312 w317 w322 w327 w332 w337 w342 (fun w312 w317 w322 w327 w332 w337 w342 w347 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg68 w312 w317 w322 w327 w332 w337 w342 w347 (fun w312 w317 w322 w327 w332 w337 w342 w347 w352 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg69 w312 w317 w322 w327 w332 w337 w342 w347 w352 (fun w312 w317 w322 w327 w332 w337 w342 w347 w352 w357 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg70 w312 w317 w322 w327 w332 w337 w342 w347 w352 w357 (fun w312 w317 w322 w327 w332 w337 w342 w347 w352 w357 w362 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg71 w312 w317 w322 w327 w332 w337 w342 w347 w352 w357 w362 (fun w342 w347 w352 w357 w362 w367 =>
      k w342 w347 w352 w357 w362 w367))))))) :
    ∃ w342 w347 w352 w357 w362 w367 : F, spec37 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st37 w342 w347 w352 w357 w362 w367 ∧ k w342 w347 w352 w357 w362 w367 := by
  have h66 := seg66_sound w312 w317 w322 w327 w332 w337 _ h
  rcases h66 with ⟨w342, hw342, h⟩
  have h67 := seg67_sound w312 w317 w322 w327 w332 w337 w342 _ h
  rcases h67 with ⟨w347, hw347, h⟩
  have h68 := seg68_sound w312 w317 w322 w327 w332 w337 w342 w347 _ h
  rcases h68 with ⟨w352, hw352, h⟩
  have h69 := seg69_sound w312 w317 w322 w327 w332 w337 w342 w347 w352 _ h
  rcases h69 with ⟨w357, hw357, h⟩
  have h70 := seg70_sound w312 w317 w322 w327 w332 w337 w342 w347 w352 w357 _ h
  rcases h70 with ⟨w362, hw362, h⟩
  have h71 := seg71_sound w312 w317 w322 w327 w332 w337 w342 w347 w352 w357 w362 _ h
  rcases h71 with ⟨w367, hw367, h⟩
  have hSpec37 := spec37_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w312 w317 w322 w327 w332 w337 w342 w347 w352 w357 w362 w367 hSpec36 hw342 hw347 hw352 hw357 hw362 hw367
  exact ⟨w342, w347, w352, w357, w362, w367, hSpec37, h⟩

theorem range11_sound (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (w342 : F) (w347 : F) (w352 : F) (w357 : F) (w362 : F) (w367 : F) (k : F → F → F → F → F → F → Prop)
    (hSpec37 : spec37 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st37 w342 w347 w352 w357 w362 w367)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg72 w342 w347 w352 w357 w362 w367 (fun w342 w347 w352 w357 w362 w367 w372 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg73 w342 w347 w352 w357 w362 w367 w372 (fun w342 w347 w352 w357 w362 w367 w372 w377 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg74 w342 w347 w352 w357 w362 w367 w372 w377 (fun w342 w347 w352 w357 w362 w367 w372 w377 w382 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg75 w342 w347 w352 w357 w362 w367 w372 w377 w382 (fun w342 w347 w352 w357 w362 w367 w372 w377 w382 w387 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg76 w342 w347 w352 w357 w362 w367 w372 w377 w382 w387 (fun w342 w347 w352 w357 w362 w367 w372 w377 w382 w387 w392 =>
      Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg77 w342 w347 w352 w357 w362 w367 w372 w377 w382 w387 w392 (fun w372 w377 w382 w387 w392 w397 =>
      k w372 w377 w382 w387 w392 w397))))))) :
    ∃ w372 w377 w382 w387 w392 w397 : F, spec38 (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) = st38 w372 w377 w382 w387 w392 w397 ∧ k w372 w377 w382 w387 w392 w397 := by
  have h72 := seg72_sound w342 w347 w352 w357 w362 w367 _ h
  rcases h72 with ⟨w372, hw372, h⟩
  have h73 := seg73_sound w342 w347 w352 w357 w362 w367 w372 _ h
  rcases h73 with ⟨w377, hw377, h⟩
  have h74 := seg74_sound w342 w347 w352 w357 w362 w367 w372 w377 _ h
  rcases h74 with ⟨w382, hw382, h⟩
  have h75 := seg75_sound w342 w347 w352 w357 w362 w367 w372 w377 w382 _ h
  rcases h75 with ⟨w387, hw387, h⟩
  have h76 := seg76_sound w342 w347 w352 w357 w362 w367 w372 w377 w382 w387 _ h
  rcases h76 with ⟨w392, hw392, h⟩
  have h77 := seg77_sound w342 w347 w352 w357 w362 w367 w372 w377 w382 w387 w392 _ h
  rcases h77 with ⟨w397, hw397, h⟩
  have hSpec38 := spec38_step (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) w342 w347 w352 w357 w362 w367 w372 w377 w382 w387 w392 w397 hSpec37 hw372 hw377 hw382 hw387 hw392 hw397
  exact ⟨w372, w377, w382, w387, w392, w397, hSpec38, h⟩

theorem relation_sound_permSpec (w1 : F) (w7 : F) (w13 : F) (w19 : F) (w20 : F) (w26 : F) (w27 : F) (k : F → F → F → F → F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.relation w1 w7 w13 w19 w20 w26 w27 k →
      ∃ w372 w377 w382 w387 w392 w397 : F, k w372 w377 w382 w387 w392 w397 ∧
        s38_1 w372 w377 w382 w387 w392 w397 = permSpec5 domainLit (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.relation
  intro h
  have r0 := range0_sound w1 w7 w13 w19 w20 w26 w27 _ h
  rcases r0 with ⟨w6, w12, w18, w25, w32, hSpec0, h⟩
  have r1 := range1_sound w1 w7 w13 w19 w20 w26 w27 w6 w12 w18 w25 w32 _ hSpec0 h
  rcases r1 with ⟨w37, w42, w47, w52, w57, w62, hSpec1, h⟩
  have r2 := range2_sound w1 w7 w13 w19 w20 w26 w27 w37 w42 w47 w52 w57 w62 _ hSpec1 h
  rcases r2 with ⟨w67, w72, w77, w82, w87, w92, hSpec2, h⟩
  have r3 := range3_sound w1 w7 w13 w19 w20 w26 w27 w67 w72 w77 w82 w87 w92 _ hSpec2 h
  rcases r3 with ⟨w97, w102, w107, w112, w117, w122, w127, w132, hSpec5, h⟩
  have r4 := range4_sound w1 w7 w13 w19 w20 w26 w27 w97 w102 w107 w112 w117 w122 w127 w132 _ hSpec5 h
  rcases r4 with ⟨w97, w102, w107, w112, w117, w122, w127, w132, w137, w142, w147, w152, w157, w162, w167, w172, hSpec13, h⟩
  have r5 := range5_sound w1 w7 w13 w19 w20 w26 w27 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 _ hSpec13 h
  rcases r5 with ⟨w97, w102, w107, w112, w117, w122, w127, w132, w137, w142, w147, w152, w157, w162, w167, w172, w177, w182, w187, w192, w197, w202, w207, w212, hSpec21, h⟩
  have r6 := range6_sound w1 w7 w13 w19 w20 w26 w27 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 _ hSpec21 h
  rcases r6 with ⟨w97, w102, w107, w112, w117, w122, w127, w132, w137, w142, w147, w152, w157, w162, w167, w172, w177, w182, w187, w192, w197, w202, w207, w212, w217, w222, w227, w232, w237, w242, w247, w252, hSpec29, h⟩
  have r7 := range7_sound w1 w7 w13 w19 w20 w26 w27 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 _ hSpec29 h
  rcases r7 with ⟨w97, w102, w107, w112, w117, w122, w127, w132, w137, w142, w147, w152, w157, w162, w167, w172, w177, w182, w187, w192, w197, w202, w207, w212, w217, w222, w227, w232, w237, w242, w247, w252, w257, w262, w267, w272, w277, hSpec34, h⟩
  have r8 := range8_sound w1 w7 w13 w19 w20 w26 w27 w97 w102 w107 w112 w117 w122 w127 w132 w137 w142 w147 w152 w157 w162 w167 w172 w177 w182 w187 w192 w197 w202 w207 w212 w217 w222 w227 w232 w237 w242 w247 w252 w257 w262 w267 w272 w277 _ hSpec34 h
  rcases r8 with ⟨w282, w287, w292, w297, w302, w307, hSpec35, h⟩
  have r9 := range9_sound w1 w7 w13 w19 w20 w26 w27 w282 w287 w292 w297 w302 w307 _ hSpec35 h
  rcases r9 with ⟨w312, w317, w322, w327, w332, w337, hSpec36, h⟩
  have r10 := range10_sound w1 w7 w13 w19 w20 w26 w27 w312 w317 w322 w327 w332 w337 _ hSpec36 h
  rcases r10 with ⟨w342, w347, w352, w357, w362, w367, hSpec37, h⟩
  have r11 := range11_sound w1 w7 w13 w19 w20 w26 w27 w342 w347 w352 w357 w362 w367 _ hSpec37 h
  rcases r11 with ⟨w372, w377, w382, w387, w392, w397, hSpec38, h⟩
  refine ⟨w372, w377, w382, w387, w392, w397, h, ?_⟩
  rw [← spec38_eq_permSpec (w1) (w7) (w13) ((-1 : F) * w19 + w20) ((-1 : F) * w26 + w27)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9Poseidon
