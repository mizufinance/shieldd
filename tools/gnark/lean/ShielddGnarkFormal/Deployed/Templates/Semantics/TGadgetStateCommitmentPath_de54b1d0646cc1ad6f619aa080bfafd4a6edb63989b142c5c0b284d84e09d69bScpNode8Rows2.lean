import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node8_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3305 rho)
    (r3306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3306 rho)
    (r3307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3307 rho)
    (r3308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3308 rho)
    (r3309 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3309 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg20 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) next := by
  exact ⟨rho 3303, rho 3304, rho 3305, rho 3306, rho 3307, r3305, r3306, r3307, r3308, r3309, tail⟩

theorem template_scp_node8_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3310 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3310 rho)
    (r3311 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3311 rho)
    (r3312 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3312 rho)
    (r3313 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3313 rho)
    (r3314 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3314 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg21 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) next := by
  exact ⟨rho 3308, rho 3309, rho 3310, rho 3311, rho 3312, r3310, r3311, r3312, r3313, r3314, tail⟩

theorem template_scp_node8_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3315 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3315 rho)
    (r3316 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3316 rho)
    (r3317 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3317 rho)
    (r3318 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3318 rho)
    (r3319 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3319 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg22 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) next := by
  exact ⟨rho 3313, rho 3314, rho 3315, rho 3316, rho 3317, r3315, r3316, r3317, r3318, r3319, tail⟩

theorem template_scp_node8_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r3320 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3320 rho)
    (r3321 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3321 rho)
    (r3322 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3322 rho)
    (r3323 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3323 rho)
    (r3324 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3324 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg23 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) next := by
  exact ⟨rho 3318, rho 3319, rho 3320, rho 3321, rho 3322, r3320, r3321, r3322, r3323, r3324, tail⟩

theorem template_scp_node8_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3325 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3325 rho)
    (r3326 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3326 rho)
    (r3327 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3327 rho)
    (r3328 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3328 rho)
    (r3329 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3329 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg24 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) next := by
  exact ⟨rho 3323, rho 3324, rho 3325, rho 3326, rho 3327, r3325, r3326, r3327, r3328, r3329, tail⟩

theorem template_scp_node8_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3330 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3330 rho)
    (r3331 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3331 rho)
    (r3332 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3332 rho)
    (r3333 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3333 rho)
    (r3334 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3334 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg25 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) next := by
  exact ⟨rho 3328, rho 3329, rho 3330, rho 3331, rho 3332, r3330, r3331, r3332, r3333, r3334, tail⟩

theorem template_scp_node8_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3335 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3335 rho)
    (r3336 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3336 rho)
    (r3337 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3337 rho)
    (r3338 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3338 rho)
    (r3339 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3339 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332) (rho 3337)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg26 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332) next := by
  exact ⟨rho 3333, rho 3334, rho 3335, rho 3336, rho 3337, r3335, r3336, r3337, r3338, r3339, tail⟩

theorem template_scp_node8_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3340 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3340 rho)
    (r3341 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3341 rho)
    (r3342 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3342 rho)
    (r3343 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3343 rho)
    (r3344 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3344 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332) (rho 3337) (rho 3342)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg27 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332) (rho 3337) next := by
  exact ⟨rho 3338, rho 3339, rho 3340, rho 3341, rho 3342, r3340, r3341, r3342, r3343, r3344, tail⟩

theorem template_scp_node8_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3345 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3345 rho)
    (r3346 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3346 rho)
    (r3347 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3347 rho)
    (r3348 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3348 rho)
    (r3349 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3349 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332) (rho 3337) (rho 3342) (rho 3347)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg28 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332) (rho 3337) (rho 3342) next := by
  exact ⟨rho 3343, rho 3344, rho 3345, rho 3346, rho 3347, r3345, r3346, r3347, r3348, r3349, tail⟩

theorem template_scp_node8_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3350 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3350 rho)
    (r3351 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3351 rho)
    (r3352 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3352 rho)
    (r3353 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3353 rho)
    (r3354 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3354 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332) (rho 3337) (rho 3342) (rho 3347) (rho 3352)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg29 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302) (rho 3307) (rho 3312) (rho 3317) (rho 3322) (rho 3327) (rho 3332) (rho 3337) (rho 3342) (rho 3347) next := by
  exact ⟨rho 3348, rho 3349, rho 3350, rho 3351, rho 3352, r3350, r3351, r3352, r3353, r3354, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
