import ShielddGnarkFormal.Deployed.DtkIvkPoseidon.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon

open Shieldd.GnarkFormal.Poseidon2Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon2Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Poseidon2.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.Order))

theorem range0_sound (w8 : F) (w572 : F) (w912 : F) (k : F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg0 w8 w572 w912 (fun w572 w912 w917 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg1 w572 w912 w917 (fun w917 w922 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg2 w917 w922 (fun w917 w922 w927 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg3 w917 w922 w927 (fun w917 w922 w927 w932 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg4 w917 w922 w927 w932 (fun w927 w932 w937 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg5 w927 w932 w937 (fun w927 w932 w937 w942 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg6 w927 w932 w937 w942 (fun w927 w932 w937 w942 w947 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg7 w927 w932 w937 w942 w947 (fun w942 w947 w952 =>
      k w942 w947 w952))))))))) :
    ∃ w942 w947 w952 : F, spec2 (w8) (w912 - w572) = st2 w942 w947 w952 ∧ k w942 w947 w952 := by
  have h0 := seg0_sound w8 w572 w912 _ h
  rcases h0 with ⟨w917, hw917, h⟩
  have h1 := seg1_sound w572 w912 w917 _ h
  rcases h1 with ⟨w922, hw922, h⟩
  have hSpec0 := spec0_eq (w8) (w912 - w572) w917 w922 hw917 hw922
  have h2 := seg2_sound w917 w922 _ h
  rcases h2 with ⟨w927, hw927, h⟩
  have h3 := seg3_sound w917 w922 w927 _ h
  rcases h3 with ⟨w932, hw932, h⟩
  have h4 := seg4_sound w917 w922 w927 w932 _ h
  rcases h4 with ⟨w937, hw937, h⟩
  have hSpec1 := spec1_step (w8) (w912 - w572) w917 w922 w927 w932 w937 hSpec0 hw927 hw932 hw937
  have h5 := seg5_sound w927 w932 w937 _ h
  rcases h5 with ⟨w942, hw942, h⟩
  have h6 := seg6_sound w927 w932 w937 w942 _ h
  rcases h6 with ⟨w947, hw947, h⟩
  have h7 := seg7_sound w927 w932 w937 w942 w947 _ h
  rcases h7 with ⟨w952, hw952, h⟩
  have hSpec2 := spec2_step (w8) (w912 - w572) w927 w932 w937 w942 w947 w952 hSpec1 hw942 hw947 hw952
  exact ⟨w942, w947, w952, hSpec2, h⟩

theorem range1_sound (w8 : F) (w572 : F) (w912 : F) (w942 : F) (w947 : F) (w952 : F) (k : F → F → F → F → F → F → F → F → Prop)
    (hSpec2 : spec2 (w8) (w912 - w572) = st2 w942 w947 w952)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg8 w942 w947 w952 (fun w942 w947 w952 w957 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg9 w942 w947 w952 w957 (fun w942 w947 w952 w957 w962 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg10 w942 w947 w952 w957 w962 (fun w957 w962 w967 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg11 w957 w962 w967 (fun w957 w962 w967 w972 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg12 w957 w962 w967 w972 (fun w957 w962 w967 w972 w977 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg13 w957 w962 w967 w972 w977 (fun w957 w962 w967 w972 w977 w982 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg14 w957 w962 w967 w972 w977 w982 (fun w957 w962 w967 w972 w977 w982 w987 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg15 w957 w962 w967 w972 w977 w982 w987 (fun w957 w962 w967 w972 w977 w982 w987 w992 =>
      k w957 w962 w967 w972 w977 w982 w987 w992))))))))) :
    ∃ w957 w962 w967 w972 w977 w982 w987 w992 : F, spec8 (w8) (w912 - w572) = st8 w957 w962 w967 w972 w977 w982 w987 w992 ∧ k w957 w962 w967 w972 w977 w982 w987 w992 := by
  have h8 := seg8_sound w942 w947 w952 _ h
  rcases h8 with ⟨w957, hw957, h⟩
  have h9 := seg9_sound w942 w947 w952 w957 _ h
  rcases h9 with ⟨w962, hw962, h⟩
  have h10 := seg10_sound w942 w947 w952 w957 w962 _ h
  rcases h10 with ⟨w967, hw967, h⟩
  have hSpec3 := spec3_step (w8) (w912 - w572) w942 w947 w952 w957 w962 w967 hSpec2 hw957 hw962 hw967
  have h11 := seg11_sound w957 w962 w967 _ h
  rcases h11 with ⟨w972, hw972, h⟩
  have hSpec4 := spec4_step (w8) (w912 - w572) w957 w962 w967 w972 hSpec3 hw972
  have h12 := seg12_sound w957 w962 w967 w972 _ h
  rcases h12 with ⟨w977, hw977, h⟩
  have hSpec5 := spec5_step (w8) (w912 - w572) w957 w962 w967 w972 w977 hSpec4 hw977
  have h13 := seg13_sound w957 w962 w967 w972 w977 _ h
  rcases h13 with ⟨w982, hw982, h⟩
  have hSpec6 := spec6_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 hSpec5 hw982
  have h14 := seg14_sound w957 w962 w967 w972 w977 w982 _ h
  rcases h14 with ⟨w987, hw987, h⟩
  have hSpec7 := spec7_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 hSpec6 hw987
  have h15 := seg15_sound w957 w962 w967 w972 w977 w982 w987 _ h
  rcases h15 with ⟨w992, hw992, h⟩
  have hSpec8 := spec8_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 hSpec7 hw992
  exact ⟨w957, w962, w967, w972, w977, w982, w987, w992, hSpec8, h⟩

theorem range2_sound (w8 : F) (w572 : F) (w912 : F) (w957 : F) (w962 : F) (w967 : F) (w972 : F) (w977 : F) (w982 : F) (w987 : F) (w992 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec8 : spec8 (w8) (w912 - w572) = st8 w957 w962 w967 w972 w977 w982 w987 w992)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg16 w957 w962 w967 w972 w977 w982 w987 w992 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg17 w957 w962 w967 w972 w977 w982 w987 w992 w997 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg18 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg19 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg20 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg21 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg22 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg23 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 =>
      k w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032))))))))) :
    ∃ w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 : F, spec16 (w8) (w912 - w572) = st16 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 ∧ k w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 := by
  have h16 := seg16_sound w957 w962 w967 w972 w977 w982 w987 w992 _ h
  rcases h16 with ⟨w997, hw997, h⟩
  have hSpec9 := spec9_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 hSpec8 hw997
  have h17 := seg17_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 _ h
  rcases h17 with ⟨w1002, hw1002, h⟩
  have hSpec10 := spec10_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 hSpec9 hw1002
  have h18 := seg18_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 _ h
  rcases h18 with ⟨w1007, hw1007, h⟩
  have hSpec11 := spec11_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 hSpec10 hw1007
  have h19 := seg19_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 _ h
  rcases h19 with ⟨w1012, hw1012, h⟩
  have hSpec12 := spec12_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 hSpec11 hw1012
  have h20 := seg20_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 _ h
  rcases h20 with ⟨w1017, hw1017, h⟩
  have hSpec13 := spec13_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 hSpec12 hw1017
  have h21 := seg21_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 _ h
  rcases h21 with ⟨w1022, hw1022, h⟩
  have hSpec14 := spec14_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 hSpec13 hw1022
  have h22 := seg22_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 _ h
  rcases h22 with ⟨w1027, hw1027, h⟩
  have hSpec15 := spec15_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 hSpec14 hw1027
  have h23 := seg23_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 _ h
  rcases h23 with ⟨w1032, hw1032, h⟩
  have hSpec16 := spec16_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 hSpec15 hw1032
  exact ⟨w957, w962, w967, w972, w977, w982, w987, w992, w997, w1002, w1007, w1012, w1017, w1022, w1027, w1032, hSpec16, h⟩

theorem range3_sound (w8 : F) (w572 : F) (w912 : F) (w957 : F) (w962 : F) (w967 : F) (w972 : F) (w977 : F) (w982 : F) (w987 : F) (w992 : F) (w997 : F) (w1002 : F) (w1007 : F) (w1012 : F) (w1017 : F) (w1022 : F) (w1027 : F) (w1032 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec16 : spec16 (w8) (w912 - w572) = st16 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg24 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg25 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg26 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg27 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg28 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg29 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg30 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg31 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 =>
      k w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072))))))))) :
    ∃ w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 : F, spec24 (w8) (w912 - w572) = st24 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 ∧ k w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 := by
  have h24 := seg24_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 _ h
  rcases h24 with ⟨w1037, hw1037, h⟩
  have hSpec17 := spec17_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 hSpec16 hw1037
  have h25 := seg25_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 _ h
  rcases h25 with ⟨w1042, hw1042, h⟩
  have hSpec18 := spec18_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 hSpec17 hw1042
  have h26 := seg26_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 _ h
  rcases h26 with ⟨w1047, hw1047, h⟩
  have hSpec19 := spec19_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 hSpec18 hw1047
  have h27 := seg27_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ h
  rcases h27 with ⟨w1052, hw1052, h⟩
  have hSpec20 := spec20_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 hSpec19 hw1052
  have h28 := seg28_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 _ h
  rcases h28 with ⟨w1057, hw1057, h⟩
  have hSpec21 := spec21_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 hSpec20 hw1057
  have h29 := seg29_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 _ h
  rcases h29 with ⟨w1062, hw1062, h⟩
  have hSpec22 := spec22_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 hSpec21 hw1062
  have h30 := seg30_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 _ h
  rcases h30 with ⟨w1067, hw1067, h⟩
  have hSpec23 := spec23_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 hSpec22 hw1067
  have h31 := seg31_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 _ h
  rcases h31 with ⟨w1072, hw1072, h⟩
  have hSpec24 := spec24_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 hSpec23 hw1072
  exact ⟨w957, w962, w967, w972, w977, w982, w987, w992, w997, w1002, w1007, w1012, w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, hSpec24, h⟩

theorem range4_sound (w8 : F) (w572 : F) (w912 : F) (w957 : F) (w962 : F) (w967 : F) (w972 : F) (w977 : F) (w982 : F) (w987 : F) (w992 : F) (w997 : F) (w1002 : F) (w1007 : F) (w1012 : F) (w1017 : F) (w1022 : F) (w1027 : F) (w1032 : F) (w1037 : F) (w1042 : F) (w1047 : F) (w1052 : F) (w1057 : F) (w1062 : F) (w1067 : F) (w1072 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec24 : spec24 (w8) (w912 - w572) = st24 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg32 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg33 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg34 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg35 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg36 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg37 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg38 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg39 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 =>
      k w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112))))))))) :
    ∃ w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 : F, spec32 (w8) (w912 - w572) = st32 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 ∧ k w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 := by
  have h32 := seg32_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 _ h
  rcases h32 with ⟨w1077, hw1077, h⟩
  have hSpec25 := spec25_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 hSpec24 hw1077
  have h33 := seg33_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 _ h
  rcases h33 with ⟨w1082, hw1082, h⟩
  have hSpec26 := spec26_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 hSpec25 hw1082
  have h34 := seg34_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 _ h
  rcases h34 with ⟨w1087, hw1087, h⟩
  have hSpec27 := spec27_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 hSpec26 hw1087
  have h35 := seg35_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 _ h
  rcases h35 with ⟨w1092, hw1092, h⟩
  have hSpec28 := spec28_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 hSpec27 hw1092
  have h36 := seg36_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 _ h
  rcases h36 with ⟨w1097, hw1097, h⟩
  have hSpec29 := spec29_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 hSpec28 hw1097
  have h37 := seg37_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ h
  rcases h37 with ⟨w1102, hw1102, h⟩
  have hSpec30 := spec30_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 hSpec29 hw1102
  have h38 := seg38_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 _ h
  rcases h38 with ⟨w1107, hw1107, h⟩
  have hSpec31 := spec31_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 hSpec30 hw1107
  have h39 := seg39_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 _ h
  rcases h39 with ⟨w1112, hw1112, h⟩
  have hSpec32 := spec32_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 hSpec31 hw1112
  exact ⟨w957, w962, w967, w972, w977, w982, w987, w992, w997, w1002, w1007, w1012, w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, hSpec32, h⟩

theorem range5_sound (w8 : F) (w572 : F) (w912 : F) (w957 : F) (w962 : F) (w967 : F) (w972 : F) (w977 : F) (w982 : F) (w987 : F) (w992 : F) (w997 : F) (w1002 : F) (w1007 : F) (w1012 : F) (w1017 : F) (w1022 : F) (w1027 : F) (w1032 : F) (w1037 : F) (w1042 : F) (w1047 : F) (w1052 : F) (w1057 : F) (w1062 : F) (w1067 : F) (w1072 : F) (w1077 : F) (w1082 : F) (w1087 : F) (w1092 : F) (w1097 : F) (w1102 : F) (w1107 : F) (w1112 : F) (k : F → F → F → Prop)
    (hSpec32 : spec32 (w8) (w912 - w572) = st32 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg40 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg41 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg42 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg43 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 (fun w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg44 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 (fun w1127 w1132 w1137 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg45 w1127 w1132 w1137 (fun w1127 w1132 w1137 w1142 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg46 w1127 w1132 w1137 w1142 (fun w1127 w1132 w1137 w1142 w1147 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg47 w1127 w1132 w1137 w1142 w1147 (fun w1142 w1147 w1152 =>
      k w1142 w1147 w1152))))))))) :
    ∃ w1142 w1147 w1152 : F, spec36 (w8) (w912 - w572) = st36 w1142 w1147 w1152 ∧ k w1142 w1147 w1152 := by
  have h40 := seg40_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 _ h
  rcases h40 with ⟨w1117, hw1117, h⟩
  have hSpec33 := spec33_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 hSpec32 hw1117
  have h41 := seg41_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 _ h
  rcases h41 with ⟨w1122, hw1122, h⟩
  have hSpec34 := spec34_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 hSpec33 hw1122
  have h42 := seg42_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 _ h
  rcases h42 with ⟨w1127, hw1127, h⟩
  have h43 := seg43_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 _ h
  rcases h43 with ⟨w1132, hw1132, h⟩
  have h44 := seg44_sound w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 _ h
  rcases h44 with ⟨w1137, hw1137, h⟩
  have hSpec35 := spec35_step (w8) (w912 - w572) w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 hSpec34 hw1127 hw1132 hw1137
  have h45 := seg45_sound w1127 w1132 w1137 _ h
  rcases h45 with ⟨w1142, hw1142, h⟩
  have h46 := seg46_sound w1127 w1132 w1137 w1142 _ h
  rcases h46 with ⟨w1147, hw1147, h⟩
  have h47 := seg47_sound w1127 w1132 w1137 w1142 w1147 _ h
  rcases h47 with ⟨w1152, hw1152, h⟩
  have hSpec36 := spec36_step (w8) (w912 - w572) w1127 w1132 w1137 w1142 w1147 w1152 hSpec35 hw1142 hw1147 hw1152
  exact ⟨w1142, w1147, w1152, hSpec36, h⟩

theorem range6_sound (w8 : F) (w572 : F) (w912 : F) (w1142 : F) (w1147 : F) (w1152 : F) (k : F → F → F → Prop)
    (hSpec36 : spec36 (w8) (w912 - w572) = st36 w1142 w1147 w1152)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg48 w1142 w1147 w1152 (fun w1142 w1147 w1152 w1157 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg49 w1142 w1147 w1152 w1157 (fun w1142 w1147 w1152 w1157 w1162 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg50 w1142 w1147 w1152 w1157 w1162 (fun w1157 w1162 w1167 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg51 w1157 w1162 w1167 (fun w1157 w1162 w1167 w1172 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg52 w1157 w1162 w1167 w1172 (fun w1157 w1162 w1167 w1172 w1177 =>
      Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg53 w1157 w1162 w1167 w1172 w1177 (fun w1172 w1177 w1182 =>
      k w1172 w1177 w1182))))))) :
    ∃ w1172 w1177 w1182 : F, spec38 (w8) (w912 - w572) = st38 w1172 w1177 w1182 ∧ k w1172 w1177 w1182 := by
  have h48 := seg48_sound w1142 w1147 w1152 _ h
  rcases h48 with ⟨w1157, hw1157, h⟩
  have h49 := seg49_sound w1142 w1147 w1152 w1157 _ h
  rcases h49 with ⟨w1162, hw1162, h⟩
  have h50 := seg50_sound w1142 w1147 w1152 w1157 w1162 _ h
  rcases h50 with ⟨w1167, hw1167, h⟩
  have hSpec37 := spec37_step (w8) (w912 - w572) w1142 w1147 w1152 w1157 w1162 w1167 hSpec36 hw1157 hw1162 hw1167
  have h51 := seg51_sound w1157 w1162 w1167 _ h
  rcases h51 with ⟨w1172, hw1172, h⟩
  have h52 := seg52_sound w1157 w1162 w1167 w1172 _ h
  rcases h52 with ⟨w1177, hw1177, h⟩
  have h53 := seg53_sound w1157 w1162 w1167 w1172 w1177 _ h
  rcases h53 with ⟨w1182, hw1182, h⟩
  have hSpec38 := spec38_step (w8) (w912 - w572) w1157 w1162 w1167 w1172 w1177 w1182 hSpec37 hw1172 hw1177 hw1182
  exact ⟨w1172, w1177, w1182, hSpec38, h⟩

theorem relation_sound_permSpec (w8 : F) (w572 : F) (w912 : F) (k : F → F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.relation w8 w572 w912 k →
      ∃ w1172 w1177 w1182 : F, k w1172 w1177 w1182 ∧
        s38_1 w1172 w1177 w1182 = permSpec2 ivkDomainLit (w8) (w912 - w572) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.relation
  intro h
  have r0 := range0_sound w8 w572 w912 _ h
  rcases r0 with ⟨w942, w947, w952, hSpec2, h⟩
  have r1 := range1_sound w8 w572 w912 w942 w947 w952 _ hSpec2 h
  rcases r1 with ⟨w957, w962, w967, w972, w977, w982, w987, w992, hSpec8, h⟩
  have r2 := range2_sound w8 w572 w912 w957 w962 w967 w972 w977 w982 w987 w992 _ hSpec8 h
  rcases r2 with ⟨w957, w962, w967, w972, w977, w982, w987, w992, w997, w1002, w1007, w1012, w1017, w1022, w1027, w1032, hSpec16, h⟩
  have r3 := range3_sound w8 w572 w912 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 _ hSpec16 h
  rcases r3 with ⟨w957, w962, w967, w972, w977, w982, w987, w992, w997, w1002, w1007, w1012, w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, hSpec24, h⟩
  have r4 := range4_sound w8 w572 w912 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 _ hSpec24 h
  rcases r4 with ⟨w957, w962, w967, w972, w977, w982, w987, w992, w997, w1002, w1007, w1012, w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, hSpec32, h⟩
  have r5 := range5_sound w8 w572 w912 w957 w962 w967 w972 w977 w982 w987 w992 w997 w1002 w1007 w1012 w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 _ hSpec32 h
  rcases r5 with ⟨w1142, w1147, w1152, hSpec36, h⟩
  have r6 := range6_sound w8 w572 w912 w1142 w1147 w1152 _ hSpec36 h
  rcases r6 with ⟨w1172, w1177, w1182, hSpec38, h⟩
  refine ⟨w1172, w1177, w1182, h, ?_⟩
  rw [← spec38_eq_permSpec (w8) (w912 - w572)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon
