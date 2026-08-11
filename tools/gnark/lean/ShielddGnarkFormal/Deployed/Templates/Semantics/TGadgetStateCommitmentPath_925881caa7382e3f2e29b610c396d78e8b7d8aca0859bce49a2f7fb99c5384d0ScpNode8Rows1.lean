import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node8_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3255 rho)
    (r3256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3256 rho)
    (r3257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3257 rho)
    (r3258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3258 rho)
    (r3259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3259 rho)
    (tail : next (rho 3228) (rho 3233) (rho 3238) (rho 3243) (rho 3248) (rho 3253) (rho 3258)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg10 (rho 3228) (rho 3233) (rho 3238) (rho 3243) (rho 3248) (rho 3253) next := by
  exact ⟨rho 3254, rho 3255, rho 3256, rho 3257, rho 3258, r3255, r3256, r3257, r3258, r3259, tail⟩

theorem template_scp_node8_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3260 rho)
    (r3261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3261 rho)
    (r3262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3262 rho)
    (r3263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3263 rho)
    (r3264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3264 rho)
    (tail : next (rho 3228) (rho 3233) (rho 3238) (rho 3243) (rho 3248) (rho 3253) (rho 3258) (rho 3263)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg11 (rho 3228) (rho 3233) (rho 3238) (rho 3243) (rho 3248) (rho 3253) (rho 3258) next := by
  exact ⟨rho 3259, rho 3260, rho 3261, rho 3262, rho 3263, r3260, r3261, r3262, r3263, r3264, tail⟩

theorem template_scp_node8_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3265 rho)
    (r3266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3266 rho)
    (r3267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3267 rho)
    (r3268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3268 rho)
    (r3269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3269 rho)
    (tail : next (rho 3228) (rho 3233) (rho 3238) (rho 3243) (rho 3248) (rho 3253) (rho 3258) (rho 3263) (rho 3268)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg12 (rho 3228) (rho 3233) (rho 3238) (rho 3243) (rho 3248) (rho 3253) (rho 3258) (rho 3263) next := by
  exact ⟨rho 3264, rho 3265, rho 3266, rho 3267, rho 3268, r3265, r3266, r3267, r3268, r3269, tail⟩

theorem template_scp_node8_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3270 rho)
    (r3271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3271 rho)
    (r3272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3272 rho)
    (r3273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3273 rho)
    (r3274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3274 rho)
    (tail : next (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg13 (rho 3228) (rho 3233) (rho 3238) (rho 3243) (rho 3248) (rho 3253) (rho 3258) (rho 3263) (rho 3268) next := by
  exact ⟨rho 3269, rho 3270, rho 3271, rho 3272, rho 3273, r3270, r3271, r3272, r3273, r3274, tail⟩

theorem template_scp_node8_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3275 rho)
    (r3276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3276 rho)
    (r3277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3277 rho)
    (r3278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3278 rho)
    (r3279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3279 rho)
    (tail : next (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) (rho 3278)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg14 (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) next := by
  exact ⟨rho 3274, rho 3275, rho 3276, rho 3277, rho 3278, r3275, r3276, r3277, r3278, r3279, tail⟩

theorem template_scp_node8_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3280 rho)
    (r3281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3281 rho)
    (r3282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3282 rho)
    (r3283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3283 rho)
    (r3284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3284 rho)
    (tail : next (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) (rho 3278) (rho 3283)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg15 (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) (rho 3278) next := by
  exact ⟨rho 3279, rho 3280, rho 3281, rho 3282, rho 3283, r3280, r3281, r3282, r3283, r3284, tail⟩

theorem template_scp_node8_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3285 rho)
    (r3286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3286 rho)
    (r3287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3287 rho)
    (r3288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3288 rho)
    (r3289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3289 rho)
    (tail : next (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) (rho 3278) (rho 3283) (rho 3288)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg16 (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) (rho 3278) (rho 3283) next := by
  exact ⟨rho 3284, rho 3285, rho 3286, rho 3287, rho 3288, r3285, r3286, r3287, r3288, r3289, tail⟩

theorem template_scp_node8_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3290 rho)
    (r3291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3291 rho)
    (r3292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3292 rho)
    (r3293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3293 rho)
    (r3294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3294 rho)
    (tail : next (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) (rho 3278) (rho 3283) (rho 3288) (rho 3293)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg17 (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) (rho 3278) (rho 3283) (rho 3288) next := by
  exact ⟨rho 3289, rho 3290, rho 3291, rho 3292, rho 3293, r3290, r3291, r3292, r3293, r3294, tail⟩

theorem template_scp_node8_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3295 rho)
    (r3296 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3296 rho)
    (r3297 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3297 rho)
    (r3298 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3298 rho)
    (r3299 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3299 rho)
    (tail : next (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg18 (rho 3253) (rho 3258) (rho 3263) (rho 3268) (rho 3273) (rho 3278) (rho 3283) (rho 3288) (rho 3293) next := by
  exact ⟨rho 3294, rho 3295, rho 3296, rho 3297, rho 3298, r3295, r3296, r3297, r3298, r3299, tail⟩

theorem template_scp_node8_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3300 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3300 rho)
    (r3301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3301 rho)
    (r3302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3302 rho)
    (r3303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3303 rho)
    (r3304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3304 rho)
    (tail : next (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg19 (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) next := by
  exact ⟨rho 3299, rho 3300, rho 3301, rho 3302, rho 3303, r3300, r3301, r3302, r3303, r3304, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
