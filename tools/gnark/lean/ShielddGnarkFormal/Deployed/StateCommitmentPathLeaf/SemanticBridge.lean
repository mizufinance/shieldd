import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf

open Shieldd.GnarkFormal.Poseidon1Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon1Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.Order))

theorem range0_sound (w23 : F) (k : F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg0 w23 (fun w7216 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg1 w7216 (fun w7216 w7221 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg2 w7216 w7221 (fun w7221 w7226 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg3 w7221 w7226 (fun w7221 w7226 w7231 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg4 w7221 w7226 w7231 (fun w7231 w7236 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg5 w7231 w7236 (fun w7231 w7236 w7241 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg6 w7231 w7236 w7241 (fun w7241 w7246 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg7 w7241 w7246 (fun w7241 w7246 w7251 =>
      k w7241 w7246 w7251))))))))) :
    ∃ w7241 w7246 w7251 : F, spec4 (w23) = st4 w7241 w7246 w7251 ∧ k w7241 w7246 w7251 := by
  have h0 := seg0_sound w23 _ h
  rcases h0 with ⟨w7216, hw7216, h⟩
  have hSpec0 := spec0_eq (w23) w7216 hw7216
  have h1 := seg1_sound w7216 _ h
  rcases h1 with ⟨w7221, hw7221, h⟩
  have h2 := seg2_sound w7216 w7221 _ h
  rcases h2 with ⟨w7226, hw7226, h⟩
  have hSpec1 := spec1_step (w23) w7216 w7221 w7226 hSpec0 hw7221 hw7226
  have h3 := seg3_sound w7221 w7226 _ h
  rcases h3 with ⟨w7231, hw7231, h⟩
  have h4 := seg4_sound w7221 w7226 w7231 _ h
  rcases h4 with ⟨w7236, hw7236, h⟩
  have hSpec2 := spec2_step (w23) w7221 w7226 w7231 w7236 hSpec1 hw7231 hw7236
  have h5 := seg5_sound w7231 w7236 _ h
  rcases h5 with ⟨w7241, hw7241, h⟩
  have h6 := seg6_sound w7231 w7236 w7241 _ h
  rcases h6 with ⟨w7246, hw7246, h⟩
  have hSpec3 := spec3_step (w23) w7231 w7236 w7241 w7246 hSpec2 hw7241 hw7246
  have h7 := seg7_sound w7241 w7246 _ h
  rcases h7 with ⟨w7251, hw7251, h⟩
  have hSpec4 := spec4_step (w23) w7241 w7246 w7251 hSpec3 hw7251
  exact ⟨w7241, w7246, w7251, hSpec4, h⟩

theorem range1_sound (w23 : F) (w7241 : F) (w7246 : F) (w7251 : F) (k : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec4 : spec4 (w23) = st4 w7241 w7246 w7251)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg8 w7241 w7246 w7251 (fun w7241 w7246 w7251 w7256 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg9 w7241 w7246 w7251 w7256 (fun w7241 w7246 w7251 w7256 w7261 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg10 w7241 w7246 w7251 w7256 w7261 (fun w7241 w7246 w7251 w7256 w7261 w7266 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg11 w7241 w7246 w7251 w7256 w7261 w7266 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg12 w7241 w7246 w7251 w7256 w7261 w7266 w7271 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg13 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg14 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg15 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 =>
      k w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291))))))))) :
    ∃ w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 : F, spec12 (w23) = st12 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 ∧ k w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 := by
  have h8 := seg8_sound w7241 w7246 w7251 _ h
  rcases h8 with ⟨w7256, hw7256, h⟩
  have hSpec5 := spec5_step (w23) w7241 w7246 w7251 w7256 hSpec4 hw7256
  have h9 := seg9_sound w7241 w7246 w7251 w7256 _ h
  rcases h9 with ⟨w7261, hw7261, h⟩
  have hSpec6 := spec6_step (w23) w7241 w7246 w7251 w7256 w7261 hSpec5 hw7261
  have h10 := seg10_sound w7241 w7246 w7251 w7256 w7261 _ h
  rcases h10 with ⟨w7266, hw7266, h⟩
  have hSpec7 := spec7_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 hSpec6 hw7266
  have h11 := seg11_sound w7241 w7246 w7251 w7256 w7261 w7266 _ h
  rcases h11 with ⟨w7271, hw7271, h⟩
  have hSpec8 := spec8_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 hSpec7 hw7271
  have h12 := seg12_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 _ h
  rcases h12 with ⟨w7276, hw7276, h⟩
  have hSpec9 := spec9_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 hSpec8 hw7276
  have h13 := seg13_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 _ h
  rcases h13 with ⟨w7281, hw7281, h⟩
  have hSpec10 := spec10_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 hSpec9 hw7281
  have h14 := seg14_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 _ h
  rcases h14 with ⟨w7286, hw7286, h⟩
  have hSpec11 := spec11_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 hSpec10 hw7286
  have h15 := seg15_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 _ h
  rcases h15 with ⟨w7291, hw7291, h⟩
  have hSpec12 := spec12_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 hSpec11 hw7291
  exact ⟨w7241, w7246, w7251, w7256, w7261, w7266, w7271, w7276, w7281, w7286, w7291, hSpec12, h⟩

theorem range2_sound (w23 : F) (w7241 : F) (w7246 : F) (w7251 : F) (w7256 : F) (w7261 : F) (w7266 : F) (w7271 : F) (w7276 : F) (w7281 : F) (w7286 : F) (w7291 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec12 : spec12 (w23) = st12 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg16 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg17 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg18 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg19 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg20 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg21 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg22 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg23 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 =>
      k w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331))))))))) :
    ∃ w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 : F, spec20 (w23) = st20 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 ∧ k w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 := by
  have h16 := seg16_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 _ h
  rcases h16 with ⟨w7296, hw7296, h⟩
  have hSpec13 := spec13_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 hSpec12 hw7296
  have h17 := seg17_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 _ h
  rcases h17 with ⟨w7301, hw7301, h⟩
  have hSpec14 := spec14_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 hSpec13 hw7301
  have h18 := seg18_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 _ h
  rcases h18 with ⟨w7306, hw7306, h⟩
  have hSpec15 := spec15_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 hSpec14 hw7306
  have h19 := seg19_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 _ h
  rcases h19 with ⟨w7311, hw7311, h⟩
  have hSpec16 := spec16_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 hSpec15 hw7311
  have h20 := seg20_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 _ h
  rcases h20 with ⟨w7316, hw7316, h⟩
  have hSpec17 := spec17_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 hSpec16 hw7316
  have h21 := seg21_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 _ h
  rcases h21 with ⟨w7321, hw7321, h⟩
  have hSpec18 := spec18_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 hSpec17 hw7321
  have h22 := seg22_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 _ h
  rcases h22 with ⟨w7326, hw7326, h⟩
  have hSpec19 := spec19_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 hSpec18 hw7326
  have h23 := seg23_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 _ h
  rcases h23 with ⟨w7331, hw7331, h⟩
  have hSpec20 := spec20_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 hSpec19 hw7331
  exact ⟨w7241, w7246, w7251, w7256, w7261, w7266, w7271, w7276, w7281, w7286, w7291, w7296, w7301, w7306, w7311, w7316, w7321, w7326, w7331, hSpec20, h⟩

theorem range3_sound (w23 : F) (w7241 : F) (w7246 : F) (w7251 : F) (w7256 : F) (w7261 : F) (w7266 : F) (w7271 : F) (w7276 : F) (w7281 : F) (w7286 : F) (w7291 : F) (w7296 : F) (w7301 : F) (w7306 : F) (w7311 : F) (w7316 : F) (w7321 : F) (w7326 : F) (w7331 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec20 : spec20 (w23) = st20 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg24 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg25 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg26 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg27 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg28 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg29 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg30 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg31 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 =>
      k w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371))))))))) :
    ∃ w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 : F, spec28 (w23) = st28 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 ∧ k w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 := by
  have h24 := seg24_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 _ h
  rcases h24 with ⟨w7336, hw7336, h⟩
  have hSpec21 := spec21_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 hSpec20 hw7336
  have h25 := seg25_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 _ h
  rcases h25 with ⟨w7341, hw7341, h⟩
  have hSpec22 := spec22_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 hSpec21 hw7341
  have h26 := seg26_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 _ h
  rcases h26 with ⟨w7346, hw7346, h⟩
  have hSpec23 := spec23_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 hSpec22 hw7346
  have h27 := seg27_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 _ h
  rcases h27 with ⟨w7351, hw7351, h⟩
  have hSpec24 := spec24_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 hSpec23 hw7351
  have h28 := seg28_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 _ h
  rcases h28 with ⟨w7356, hw7356, h⟩
  have hSpec25 := spec25_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 hSpec24 hw7356
  have h29 := seg29_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 _ h
  rcases h29 with ⟨w7361, hw7361, h⟩
  have hSpec26 := spec26_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 hSpec25 hw7361
  have h30 := seg30_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 _ h
  rcases h30 with ⟨w7366, hw7366, h⟩
  have hSpec27 := spec27_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 hSpec26 hw7366
  have h31 := seg31_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 _ h
  rcases h31 with ⟨w7371, hw7371, h⟩
  have hSpec28 := spec28_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 hSpec27 hw7371
  exact ⟨w7241, w7246, w7251, w7256, w7261, w7266, w7271, w7276, w7281, w7286, w7291, w7296, w7301, w7306, w7311, w7316, w7321, w7326, w7331, w7336, w7341, w7346, w7351, w7356, w7361, w7366, w7371, hSpec28, h⟩

theorem range4_sound (w23 : F) (w7241 : F) (w7246 : F) (w7251 : F) (w7256 : F) (w7261 : F) (w7266 : F) (w7271 : F) (w7276 : F) (w7281 : F) (w7286 : F) (w7291 : F) (w7296 : F) (w7301 : F) (w7306 : F) (w7311 : F) (w7316 : F) (w7321 : F) (w7326 : F) (w7331 : F) (w7336 : F) (w7341 : F) (w7346 : F) (w7351 : F) (w7356 : F) (w7361 : F) (w7366 : F) (w7371 : F) (k : F → F → Prop)
    (hSpec28 : spec28 (w23) = st28 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg32 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg33 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg34 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg35 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg36 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg37 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 w7401 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg38 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 w7401 (fun w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 w7401 w7406 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg39 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 w7401 w7406 (fun w7406 w7411 =>
      k w7406 w7411))))))))) :
    ∃ w7406 w7411 : F, spec35 (w23) = st35 w7406 w7411 ∧ k w7406 w7411 := by
  have h32 := seg32_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 _ h
  rcases h32 with ⟨w7376, hw7376, h⟩
  have hSpec29 := spec29_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 hSpec28 hw7376
  have h33 := seg33_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 _ h
  rcases h33 with ⟨w7381, hw7381, h⟩
  have hSpec30 := spec30_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 hSpec29 hw7381
  have h34 := seg34_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 _ h
  rcases h34 with ⟨w7386, hw7386, h⟩
  have hSpec31 := spec31_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 hSpec30 hw7386
  have h35 := seg35_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 _ h
  rcases h35 with ⟨w7391, hw7391, h⟩
  have hSpec32 := spec32_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 hSpec31 hw7391
  have h36 := seg36_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 _ h
  rcases h36 with ⟨w7396, hw7396, h⟩
  have hSpec33 := spec33_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 hSpec32 hw7396
  have h37 := seg37_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 _ h
  rcases h37 with ⟨w7401, hw7401, h⟩
  have hSpec34 := spec34_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 w7401 hSpec33 hw7401
  have h38 := seg38_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 w7401 _ h
  rcases h38 with ⟨w7406, hw7406, h⟩
  have h39 := seg39_sound w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 w7401 w7406 _ h
  rcases h39 with ⟨w7411, hw7411, h⟩
  have hSpec35 := spec35_step (w23) w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 w7376 w7381 w7386 w7391 w7396 w7401 w7406 w7411 hSpec34 hw7406 hw7411
  exact ⟨w7406, w7411, hSpec35, h⟩

theorem range5_sound (w23 : F) (w7406 : F) (w7411 : F) (k : F → F → Prop)
    (hSpec35 : spec35 (w23) = st35 w7406 w7411)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg40 w7406 w7411 (fun w7406 w7411 w7416 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg41 w7406 w7411 w7416 (fun w7416 w7421 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg42 w7416 w7421 (fun w7416 w7421 w7426 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg43 w7416 w7421 w7426 (fun w7426 w7431 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg44 w7426 w7431 (fun w7426 w7431 w7436 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg45 w7426 w7431 w7436 (fun w7436 w7441 =>
      k w7436 w7441))))))) :
    ∃ w7436 w7441 : F, spec38 (w23) = st38 w7436 w7441 ∧ k w7436 w7441 := by
  have h40 := seg40_sound w7406 w7411 _ h
  rcases h40 with ⟨w7416, hw7416, h⟩
  have h41 := seg41_sound w7406 w7411 w7416 _ h
  rcases h41 with ⟨w7421, hw7421, h⟩
  have hSpec36 := spec36_step (w23) w7406 w7411 w7416 w7421 hSpec35 hw7416 hw7421
  have h42 := seg42_sound w7416 w7421 _ h
  rcases h42 with ⟨w7426, hw7426, h⟩
  have h43 := seg43_sound w7416 w7421 w7426 _ h
  rcases h43 with ⟨w7431, hw7431, h⟩
  have hSpec37 := spec37_step (w23) w7416 w7421 w7426 w7431 hSpec36 hw7426 hw7431
  have h44 := seg44_sound w7426 w7431 _ h
  rcases h44 with ⟨w7436, hw7436, h⟩
  have h45 := seg45_sound w7426 w7431 w7436 _ h
  rcases h45 with ⟨w7441, hw7441, h⟩
  have hSpec38 := spec38_step (w23) w7426 w7431 w7436 w7441 hSpec37 hw7436 hw7441
  exact ⟨w7436, w7441, hSpec38, h⟩

theorem relation_sound_permSpec (w23 : F) (k : F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.relation w23 k →
      ∃ w7436 w7441 : F, k w7436 w7441 ∧
        s38_1 w7436 w7441 = permSpec1 tctLeafDomainLit (w23) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.relation
  intro h
  have r0 := range0_sound w23 _ h
  rcases r0 with ⟨w7241, w7246, w7251, hSpec4, h⟩
  have r1 := range1_sound w23 w7241 w7246 w7251 _ hSpec4 h
  rcases r1 with ⟨w7241, w7246, w7251, w7256, w7261, w7266, w7271, w7276, w7281, w7286, w7291, hSpec12, h⟩
  have r2 := range2_sound w23 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 _ hSpec12 h
  rcases r2 with ⟨w7241, w7246, w7251, w7256, w7261, w7266, w7271, w7276, w7281, w7286, w7291, w7296, w7301, w7306, w7311, w7316, w7321, w7326, w7331, hSpec20, h⟩
  have r3 := range3_sound w23 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 _ hSpec20 h
  rcases r3 with ⟨w7241, w7246, w7251, w7256, w7261, w7266, w7271, w7276, w7281, w7286, w7291, w7296, w7301, w7306, w7311, w7316, w7321, w7326, w7331, w7336, w7341, w7346, w7351, w7356, w7361, w7366, w7371, hSpec28, h⟩
  have r4 := range4_sound w23 w7241 w7246 w7251 w7256 w7261 w7266 w7271 w7276 w7281 w7286 w7291 w7296 w7301 w7306 w7311 w7316 w7321 w7326 w7331 w7336 w7341 w7346 w7351 w7356 w7361 w7366 w7371 _ hSpec28 h
  rcases r4 with ⟨w7406, w7411, hSpec35, h⟩
  have r5 := range5_sound w23 w7406 w7411 _ hSpec35 h
  rcases r5 with ⟨w7436, w7441, hSpec38, h⟩
  refine ⟨w7436, w7441, h, ?_⟩
  rw [← spec38_eq_permSpec (w23)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf
