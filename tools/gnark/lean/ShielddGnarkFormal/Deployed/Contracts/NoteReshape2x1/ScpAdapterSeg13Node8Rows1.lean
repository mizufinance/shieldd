import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node8_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3255 : Seg13.relationRow3255 rho)
    (r3256 : Seg13.relationRow3256 rho)
    (r3257 : Seg13.relationRow3257 rho)
    (r3258 : Seg13.relationRow3258 rho)
    (r3259 : Seg13.relationRow3259 rho)
    (tail : next (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) (rho 10435) (rho 10440)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg10 (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) (rho 10435) next := by
  exact ⟨rho 10436, rho 10437, rho 10438, rho 10439, rho 10440, r3255, r3256, r3257, r3258, r3259, tail⟩

theorem seg13_scp_node8_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3260 : Seg13.relationRow3260 rho)
    (r3261 : Seg13.relationRow3261 rho)
    (r3262 : Seg13.relationRow3262 rho)
    (r3263 : Seg13.relationRow3263 rho)
    (r3264 : Seg13.relationRow3264 rho)
    (tail : next (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) (rho 10435) (rho 10440) (rho 10445)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg11 (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) (rho 10435) (rho 10440) next := by
  exact ⟨rho 10441, rho 10442, rho 10443, rho 10444, rho 10445, r3260, r3261, r3262, r3263, r3264, tail⟩

theorem seg13_scp_node8_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3265 : Seg13.relationRow3265 rho)
    (r3266 : Seg13.relationRow3266 rho)
    (r3267 : Seg13.relationRow3267 rho)
    (r3268 : Seg13.relationRow3268 rho)
    (r3269 : Seg13.relationRow3269 rho)
    (tail : next (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) (rho 10435) (rho 10440) (rho 10445) (rho 10450)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg12 (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) (rho 10435) (rho 10440) (rho 10445) next := by
  exact ⟨rho 10446, rho 10447, rho 10448, rho 10449, rho 10450, r3265, r3266, r3267, r3268, r3269, tail⟩

theorem seg13_scp_node8_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3270 : Seg13.relationRow3270 rho)
    (r3271 : Seg13.relationRow3271 rho)
    (r3272 : Seg13.relationRow3272 rho)
    (r3273 : Seg13.relationRow3273 rho)
    (r3274 : Seg13.relationRow3274 rho)
    (tail : next (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg13 (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) (rho 10435) (rho 10440) (rho 10445) (rho 10450) next := by
  exact ⟨rho 10451, rho 10452, rho 10453, rho 10454, rho 10455, r3270, r3271, r3272, r3273, r3274, tail⟩

theorem seg13_scp_node8_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3275 : Seg13.relationRow3275 rho)
    (r3276 : Seg13.relationRow3276 rho)
    (r3277 : Seg13.relationRow3277 rho)
    (r3278 : Seg13.relationRow3278 rho)
    (r3279 : Seg13.relationRow3279 rho)
    (tail : next (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) (rho 10460)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg14 (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) next := by
  exact ⟨rho 10456, rho 10457, rho 10458, rho 10459, rho 10460, r3275, r3276, r3277, r3278, r3279, tail⟩

theorem seg13_scp_node8_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3280 : Seg13.relationRow3280 rho)
    (r3281 : Seg13.relationRow3281 rho)
    (r3282 : Seg13.relationRow3282 rho)
    (r3283 : Seg13.relationRow3283 rho)
    (r3284 : Seg13.relationRow3284 rho)
    (tail : next (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) (rho 10460) (rho 10465)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg15 (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) (rho 10460) next := by
  exact ⟨rho 10461, rho 10462, rho 10463, rho 10464, rho 10465, r3280, r3281, r3282, r3283, r3284, tail⟩

theorem seg13_scp_node8_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3285 : Seg13.relationRow3285 rho)
    (r3286 : Seg13.relationRow3286 rho)
    (r3287 : Seg13.relationRow3287 rho)
    (r3288 : Seg13.relationRow3288 rho)
    (r3289 : Seg13.relationRow3289 rho)
    (tail : next (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) (rho 10460) (rho 10465) (rho 10470)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg16 (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) (rho 10460) (rho 10465) next := by
  exact ⟨rho 10466, rho 10467, rho 10468, rho 10469, rho 10470, r3285, r3286, r3287, r3288, r3289, tail⟩

theorem seg13_scp_node8_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3290 : Seg13.relationRow3290 rho)
    (r3291 : Seg13.relationRow3291 rho)
    (r3292 : Seg13.relationRow3292 rho)
    (r3293 : Seg13.relationRow3293 rho)
    (r3294 : Seg13.relationRow3294 rho)
    (tail : next (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) (rho 10460) (rho 10465) (rho 10470) (rho 10475)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg17 (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) (rho 10460) (rho 10465) (rho 10470) next := by
  exact ⟨rho 10471, rho 10472, rho 10473, rho 10474, rho 10475, r3290, r3291, r3292, r3293, r3294, tail⟩

theorem seg13_scp_node8_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3295 : Seg13.relationRow3295 rho)
    (r3296 : Seg13.relationRow3296 rho)
    (r3297 : Seg13.relationRow3297 rho)
    (r3298 : Seg13.relationRow3298 rho)
    (r3299 : Seg13.relationRow3299 rho)
    (tail : next (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg18 (rho 10435) (rho 10440) (rho 10445) (rho 10450) (rho 10455) (rho 10460) (rho 10465) (rho 10470) (rho 10475) next := by
  exact ⟨rho 10476, rho 10477, rho 10478, rho 10479, rho 10480, r3295, r3296, r3297, r3298, r3299, tail⟩

theorem seg13_scp_node8_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3300 : Seg13.relationRow3300 rho)
    (r3301 : Seg13.relationRow3301 rho)
    (r3302 : Seg13.relationRow3302 rho)
    (r3303 : Seg13.relationRow3303 rho)
    (r3304 : Seg13.relationRow3304 rho)
    (tail : next (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg19 (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) next := by
  exact ⟨rho 10481, rho 10482, rho 10483, rho 10484, rho 10485, r3300, r3301, r3302, r3303, r3304, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

