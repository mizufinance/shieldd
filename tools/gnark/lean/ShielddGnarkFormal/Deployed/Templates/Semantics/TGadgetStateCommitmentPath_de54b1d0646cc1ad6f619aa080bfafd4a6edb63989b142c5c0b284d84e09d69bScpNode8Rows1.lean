import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node8_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3255 rho)
    (r3256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3256 rho)
    (r3257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3257 rho)
    (r3258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3258 rho)
    (r3259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3259 rho)
    (tail : next (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) (rho 3252) (rho 3257)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg10 (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) (rho 3252) next := by
  exact ⟨rho 3253, rho 3254, rho 3255, rho 3256, rho 3257, r3255, r3256, r3257, r3258, r3259, tail⟩

theorem template_scp_node8_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3260 rho)
    (r3261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3261 rho)
    (r3262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3262 rho)
    (r3263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3263 rho)
    (r3264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3264 rho)
    (tail : next (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) (rho 3252) (rho 3257) (rho 3262)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg11 (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) (rho 3252) (rho 3257) next := by
  exact ⟨rho 3258, rho 3259, rho 3260, rho 3261, rho 3262, r3260, r3261, r3262, r3263, r3264, tail⟩

theorem template_scp_node8_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3265 rho)
    (r3266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3266 rho)
    (r3267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3267 rho)
    (r3268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3268 rho)
    (r3269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3269 rho)
    (tail : next (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) (rho 3252) (rho 3257) (rho 3262) (rho 3267)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg12 (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) (rho 3252) (rho 3257) (rho 3262) next := by
  exact ⟨rho 3263, rho 3264, rho 3265, rho 3266, rho 3267, r3265, r3266, r3267, r3268, r3269, tail⟩

theorem template_scp_node8_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3270 rho)
    (r3271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3271 rho)
    (r3272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3272 rho)
    (r3273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3273 rho)
    (r3274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3274 rho)
    (tail : next (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg13 (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) (rho 3252) (rho 3257) (rho 3262) (rho 3267) next := by
  exact ⟨rho 3268, rho 3269, rho 3270, rho 3271, rho 3272, r3270, r3271, r3272, r3273, r3274, tail⟩

theorem template_scp_node8_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3275 rho)
    (r3276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3276 rho)
    (r3277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3277 rho)
    (r3278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3278 rho)
    (r3279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3279 rho)
    (tail : next (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) (rho 3277)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg14 (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) next := by
  exact ⟨rho 3273, rho 3274, rho 3275, rho 3276, rho 3277, r3275, r3276, r3277, r3278, r3279, tail⟩

theorem template_scp_node8_seg15 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3280 rho)
    (r3281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3281 rho)
    (r3282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3282 rho)
    (r3283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3283 rho)
    (r3284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3284 rho)
    (tail : next (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) (rho 3277) (rho 3282)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg15 (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) (rho 3277) next := by
  exact ⟨rho 3278, rho 3279, rho 3280, rho 3281, rho 3282, r3280, r3281, r3282, r3283, r3284, tail⟩

theorem template_scp_node8_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3285 rho)
    (r3286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3286 rho)
    (r3287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3287 rho)
    (r3288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3288 rho)
    (r3289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3289 rho)
    (tail : next (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) (rho 3277) (rho 3282) (rho 3287)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg16 (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) (rho 3277) (rho 3282) next := by
  exact ⟨rho 3283, rho 3284, rho 3285, rho 3286, rho 3287, r3285, r3286, r3287, r3288, r3289, tail⟩

theorem template_scp_node8_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3290 rho)
    (r3291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3291 rho)
    (r3292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3292 rho)
    (r3293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3293 rho)
    (r3294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3294 rho)
    (tail : next (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) (rho 3277) (rho 3282) (rho 3287) (rho 3292)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg17 (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) (rho 3277) (rho 3282) (rho 3287) next := by
  exact ⟨rho 3288, rho 3289, rho 3290, rho 3291, rho 3292, r3290, r3291, r3292, r3293, r3294, tail⟩

theorem template_scp_node8_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3295 rho)
    (r3296 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3296 rho)
    (r3297 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3297 rho)
    (r3298 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3298 rho)
    (r3299 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3299 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg18 (rho 3252) (rho 3257) (rho 3262) (rho 3267) (rho 3272) (rho 3277) (rho 3282) (rho 3287) (rho 3292) next := by
  exact ⟨rho 3293, rho 3294, rho 3295, rho 3296, rho 3297, r3295, r3296, r3297, r3298, r3299, tail⟩

theorem template_scp_node8_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3300 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3300 rho)
    (r3301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3301 rho)
    (r3302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3302 rho)
    (r3303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3303 rho)
    (r3304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3304 rho)
    (tail : next (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) (rho 3302)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg19 (rho 3277) (rho 3282) (rho 3287) (rho 3292) (rho 3297) next := by
  exact ⟨rho 3298, rho 3299, rho 3300, rho 3301, rho 3302, r3300, r3301, r3302, r3303, r3304, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
