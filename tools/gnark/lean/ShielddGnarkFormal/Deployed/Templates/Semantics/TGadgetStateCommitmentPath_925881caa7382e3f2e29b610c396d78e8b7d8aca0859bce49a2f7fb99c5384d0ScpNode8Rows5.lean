import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node8_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3455 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3455 rho)
    (r3456 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3456 rho)
    (r3457 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3457 rho)
    (r3458 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3458 rho)
    (r3459 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3459 rho)
    (tail : next (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) (rho 3458)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg50 (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) next := by
  exact ⟨rho 3454, rho 3455, rho 3456, rho 3457, rho 3458, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3455 at r3455; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc80, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc80Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc80Part1] at r3455; linear_combination r3455), r3456, r3457, r3458, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3459 at r3459; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc80, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc80Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc80Part1] at r3459; linear_combination r3459), tail⟩

theorem template_scp_node8_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3460 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3460 rho)
    (r3461 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3461 rho)
    (r3462 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3462 rho)
    (r3463 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3463 rho)
    (r3464 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3464 rho)
    (tail : next (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) (rho 3458) (rho 3463)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg51 (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) (rho 3458) next := by
  exact ⟨rho 3459, rho 3460, rho 3461, rho 3462, rho 3463, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3460 at r3460; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc81, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc81Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc81Part1] at r3460; linear_combination r3460), r3461, r3462, r3463, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3464 at r3464; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc81, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc81Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc81Part1] at r3464; linear_combination r3464), tail⟩

theorem template_scp_node8_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3465 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3465 rho)
    (r3466 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3466 rho)
    (r3467 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3467 rho)
    (r3468 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3468 rho)
    (r3469 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3469 rho)
    (tail : next (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) (rho 3458) (rho 3463) (rho 3468)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg52 (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) (rho 3458) (rho 3463) next := by
  exact ⟨rho 3464, rho 3465, rho 3466, rho 3467, rho 3468, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3465 at r3465; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc82, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc82Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc82Part1] at r3465; linear_combination r3465), r3466, r3467, r3468, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3469 at r3469; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc82, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc82Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc82Part1] at r3469; linear_combination r3469), tail⟩

theorem template_scp_node8_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3470 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3470 rho)
    (r3471 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3471 rho)
    (r3472 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3472 rho)
    (r3473 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3473 rho)
    (r3474 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3474 rho)
    (tail : next (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) (rho 3458) (rho 3463) (rho 3468) (rho 3473)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg53 (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) (rho 3458) (rho 3463) (rho 3468) next := by
  exact ⟨rho 3469, rho 3470, rho 3471, rho 3472, rho 3473, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3470 at r3470; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc83, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc83Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc83Part1] at r3470; linear_combination r3470), r3471, r3472, r3473, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3474 at r3474; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc83, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc83Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc83Part1] at r3474; linear_combination r3474), tail⟩

theorem template_scp_node8_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3475 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3475 rho)
    (r3476 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3476 rho)
    (r3477 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3477 rho)
    (r3478 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3478 rho)
    (r3479 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3479 rho)
    (tail : next (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg54 (rho 3278) (rho 3283) (rho 3288) (rho 3293) (rho 3298) (rho 3303) (rho 3308) (rho 3313) (rho 3318) (rho 3323) (rho 3328) (rho 3333) (rho 3338) (rho 3343) (rho 3348) (rho 3353) (rho 3358) (rho 3363) (rho 3368) (rho 3373) (rho 3378) (rho 3383) (rho 3388) (rho 3393) (rho 3398) (rho 3403) (rho 3408) (rho 3413) (rho 3418) (rho 3423) (rho 3428) (rho 3433) (rho 3438) (rho 3443) (rho 3448) (rho 3453) (rho 3458) (rho 3463) (rho 3468) (rho 3473) next := by
  exact ⟨rho 3474, rho 3475, rho 3476, rho 3477, rho 3478, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3475 at r3475; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc84, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc84Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc84Part1] at r3475; linear_combination r3475), r3476, r3477, r3478, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3479 at r3479; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc84, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc84Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc84Part1] at r3479; linear_combination r3479), tail⟩

theorem template_scp_node8_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3480 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3480 rho)
    (r3481 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3481 rho)
    (r3482 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3482 rho)
    (r3483 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3483 rho)
    (r3484 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3484 rho)
    (tail : next (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) (rho 3483)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg55 (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) next := by
  exact ⟨rho 3479, rho 3480, rho 3481, rho 3482, rho 3483, r3480, r3481, r3482, r3483, r3484, tail⟩

theorem template_scp_node8_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3485 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3485 rho)
    (r3486 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3486 rho)
    (r3487 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3487 rho)
    (r3488 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3488 rho)
    (r3489 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3489 rho)
    (tail : next (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) (rho 3483) (rho 3488)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg56 (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) (rho 3483) next := by
  exact ⟨rho 3484, rho 3485, rho 3486, rho 3487, rho 3488, r3485, r3486, r3487, r3488, r3489, tail⟩

theorem template_scp_node8_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3490 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3490 rho)
    (r3491 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3491 rho)
    (r3492 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3492 rho)
    (r3493 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3493 rho)
    (r3494 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3494 rho)
    (tail : next (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) (rho 3483) (rho 3488) (rho 3493)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg57 (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) (rho 3483) (rho 3488) next := by
  exact ⟨rho 3489, rho 3490, rho 3491, rho 3492, rho 3493, r3490, r3491, r3492, r3493, r3494, tail⟩

theorem template_scp_node8_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3495 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3495 rho)
    (r3496 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3496 rho)
    (r3497 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3497 rho)
    (r3498 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3498 rho)
    (r3499 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3499 rho)
    (tail : next (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) (rho 3483) (rho 3488) (rho 3493) (rho 3498)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg58 (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) (rho 3483) (rho 3488) (rho 3493) next := by
  exact ⟨rho 3494, rho 3495, rho 3496, rho 3497, rho 3498, r3495, r3496, r3497, r3498, r3499, tail⟩

theorem template_scp_node8_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3500 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3500 rho)
    (r3501 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3501 rho)
    (r3502 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3502 rho)
    (r3503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3503 rho)
    (r3504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3504 rho)
    (tail : next (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg59 (rho 3458) (rho 3463) (rho 3468) (rho 3473) (rho 3478) (rho 3483) (rho 3488) (rho 3493) (rho 3498) next := by
  exact ⟨rho 3499, rho 3500, rho 3501, rho 3502, rho 3503, r3500, r3501, r3502, r3503, r3504, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
