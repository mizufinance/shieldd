import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node8_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3255 : Seg28.relationRow3255 rho)
    (r3256 : Seg28.relationRow3256 rho)
    (r3257 : Seg28.relationRow3257 rho)
    (r3258 : Seg28.relationRow3258 rho)
    (r3259 : Seg28.relationRow3259 rho)
    (tail : next (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) (rho 22610) (rho 22615)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg10 (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) (rho 22610) next := by
  exact ⟨rho 22611, rho 22612, rho 22613, rho 22614, rho 22615, r3255, r3256, r3257, r3258, r3259, tail⟩

theorem seg28_scp_node8_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3260 : Seg28.relationRow3260 rho)
    (r3261 : Seg28.relationRow3261 rho)
    (r3262 : Seg28.relationRow3262 rho)
    (r3263 : Seg28.relationRow3263 rho)
    (r3264 : Seg28.relationRow3264 rho)
    (tail : next (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) (rho 22610) (rho 22615) (rho 22620)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg11 (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) (rho 22610) (rho 22615) next := by
  exact ⟨rho 22616, rho 22617, rho 22618, rho 22619, rho 22620, r3260, r3261, r3262, r3263, r3264, tail⟩

theorem seg28_scp_node8_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3265 : Seg28.relationRow3265 rho)
    (r3266 : Seg28.relationRow3266 rho)
    (r3267 : Seg28.relationRow3267 rho)
    (r3268 : Seg28.relationRow3268 rho)
    (r3269 : Seg28.relationRow3269 rho)
    (tail : next (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) (rho 22610) (rho 22615) (rho 22620) (rho 22625)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg12 (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) (rho 22610) (rho 22615) (rho 22620) next := by
  exact ⟨rho 22621, rho 22622, rho 22623, rho 22624, rho 22625, r3265, r3266, r3267, r3268, r3269, tail⟩

theorem seg28_scp_node8_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3270 : Seg28.relationRow3270 rho)
    (r3271 : Seg28.relationRow3271 rho)
    (r3272 : Seg28.relationRow3272 rho)
    (r3273 : Seg28.relationRow3273 rho)
    (r3274 : Seg28.relationRow3274 rho)
    (tail : next (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg13 (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) (rho 22610) (rho 22615) (rho 22620) (rho 22625) next := by
  exact ⟨rho 22626, rho 22627, rho 22628, rho 22629, rho 22630, r3270, r3271, r3272, r3273, r3274, tail⟩

theorem seg28_scp_node8_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3275 : Seg28.relationRow3275 rho)
    (r3276 : Seg28.relationRow3276 rho)
    (r3277 : Seg28.relationRow3277 rho)
    (r3278 : Seg28.relationRow3278 rho)
    (r3279 : Seg28.relationRow3279 rho)
    (tail : next (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) (rho 22635)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg14 (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) next := by
  exact ⟨rho 22631, rho 22632, rho 22633, rho 22634, rho 22635, r3275, r3276, r3277, r3278, r3279, tail⟩

theorem seg28_scp_node8_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3280 : Seg28.relationRow3280 rho)
    (r3281 : Seg28.relationRow3281 rho)
    (r3282 : Seg28.relationRow3282 rho)
    (r3283 : Seg28.relationRow3283 rho)
    (r3284 : Seg28.relationRow3284 rho)
    (tail : next (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) (rho 22635) (rho 22640)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg15 (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) (rho 22635) next := by
  exact ⟨rho 22636, rho 22637, rho 22638, rho 22639, rho 22640, r3280, r3281, r3282, r3283, r3284, tail⟩

theorem seg28_scp_node8_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3285 : Seg28.relationRow3285 rho)
    (r3286 : Seg28.relationRow3286 rho)
    (r3287 : Seg28.relationRow3287 rho)
    (r3288 : Seg28.relationRow3288 rho)
    (r3289 : Seg28.relationRow3289 rho)
    (tail : next (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) (rho 22635) (rho 22640) (rho 22645)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg16 (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) (rho 22635) (rho 22640) next := by
  exact ⟨rho 22641, rho 22642, rho 22643, rho 22644, rho 22645, r3285, r3286, r3287, r3288, r3289, tail⟩

theorem seg28_scp_node8_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3290 : Seg28.relationRow3290 rho)
    (r3291 : Seg28.relationRow3291 rho)
    (r3292 : Seg28.relationRow3292 rho)
    (r3293 : Seg28.relationRow3293 rho)
    (r3294 : Seg28.relationRow3294 rho)
    (tail : next (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) (rho 22635) (rho 22640) (rho 22645) (rho 22650)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg17 (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) (rho 22635) (rho 22640) (rho 22645) next := by
  exact ⟨rho 22646, rho 22647, rho 22648, rho 22649, rho 22650, r3290, r3291, r3292, r3293, r3294, tail⟩

theorem seg28_scp_node8_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3295 : Seg28.relationRow3295 rho)
    (r3296 : Seg28.relationRow3296 rho)
    (r3297 : Seg28.relationRow3297 rho)
    (r3298 : Seg28.relationRow3298 rho)
    (r3299 : Seg28.relationRow3299 rho)
    (tail : next (rho 22635) (rho 22640) (rho 22645) (rho 22650) (rho 22655)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg18 (rho 22610) (rho 22615) (rho 22620) (rho 22625) (rho 22630) (rho 22635) (rho 22640) (rho 22645) (rho 22650) next := by
  exact ⟨rho 22651, rho 22652, rho 22653, rho 22654, rho 22655, r3295, r3296, r3297, r3298, r3299, tail⟩

theorem seg28_scp_node8_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3300 : Seg28.relationRow3300 rho)
    (r3301 : Seg28.relationRow3301 rho)
    (r3302 : Seg28.relationRow3302 rho)
    (r3303 : Seg28.relationRow3303 rho)
    (r3304 : Seg28.relationRow3304 rho)
    (tail : next (rho 22635) (rho 22640) (rho 22645) (rho 22650) (rho 22655) (rho 22660)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg19 (rho 22635) (rho 22640) (rho 22645) (rho 22650) (rho 22655) next := by
  exact ⟨rho 22656, rho 22657, rho 22658, rho 22659, rho 22660, r3300, r3301, r3302, r3303, r3304, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

