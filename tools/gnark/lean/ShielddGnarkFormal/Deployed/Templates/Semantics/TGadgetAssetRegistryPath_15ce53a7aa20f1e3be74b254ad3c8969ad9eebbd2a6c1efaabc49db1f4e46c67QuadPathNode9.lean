import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode9Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode9Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode9Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode9Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode9Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode9Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode9Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node9_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut9 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 3311 + rho 3312) (rho 3313 + rho 3314 + rho 3315) (rho 3313 + rho 3317 + rho 3318) (rho 3316 + rho 3319) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, p41, p42, p43, p44, p45, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 3311 + rho 3312) (rho 3313 + rho 3314 + rho 3315) (rho 3313 + rho 3317 + rho 3318) (rho 3316 + rho 3319)
      (fun w334 w339 w344 w349 w354 => w334 = rho 3649 ∧ w339 = rho 3654 ∧ w344 = rho 3659 ∧ w349 = rho 3664 ∧ w354 = rho 3669) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node9_seg0 rho _ r3323 r3324 r3325 r3326 r3327 (node9_seg1 rho _ r3328 r3329 r3330 r3331 r3332 (node9_seg2 rho _ r3333 r3334 r3335 r3336 r3337 (node9_seg3 rho _ r3338 r3339 r3340 r3341 r3342 (node9_seg4 rho _ r3343 r3344 r3345 r3346 r3347 (node9_seg5 rho _ r3348 r3349 r3350 r3351 r3352 (node9_seg6 rho _ r3353 r3354 r3355 r3356 r3357 (node9_seg7 rho _ r3358 r3359 r3360 r3361 r3362 (node9_seg8 rho _ r3363 r3364 r3365 r3366 r3367 (node9_seg9 rho _ r3368 r3369 r3370 r3371 r3372 (node9_seg10 rho _ r3373 r3374 r3375 r3376 r3377 (node9_seg11 rho _ r3378 r3379 r3380 r3381 r3382 (node9_seg12 rho _ r3383 r3384 r3385 r3386 r3387 (node9_seg13 rho _ r3388 r3389 r3390 r3391 r3392 (node9_seg14 rho _ r3393 r3394 r3395 r3396 r3397 (node9_seg15 rho _ r3398 r3399 r3400 r3401 r3402 (node9_seg16 rho _ r3403 r3404 r3405 r3406 r3407 (node9_seg17 rho _ r3408 r3409 r3410 r3411 r3412 (node9_seg18 rho _ r3413 r3414 r3415 r3416 r3417 (node9_seg19 rho _ r3418 r3419 r3420 r3421 r3422 (node9_seg20 rho _ r3423 r3424 r3425 r3426 r3427 (node9_seg21 rho _ r3428 r3429 r3430 r3431 r3432 (node9_seg22 rho _ r3433 r3434 r3435 r3436 r3437 (node9_seg23 rho _ r3438 r3439 r3440 r3441 r3442 (node9_seg24 rho _ r3443 r3444 r3445 r3446 r3447 (node9_seg25 rho _ r3448 r3449 r3450 r3451 r3452 (node9_seg26 rho _ r3453 r3454 r3455 r3456 r3457 (node9_seg27 rho _ r3458 r3459 r3460 r3461 r3462 (node9_seg28 rho _ r3463 r3464 r3465 r3466 r3467 (node9_seg29 rho _ r3468 r3469 r3470 r3471 r3472 (node9_seg30 rho _ r3473 r3474 r3475 r3476 r3477 (node9_seg31 rho _ r3478 r3479 r3480 r3481 r3482 (node9_seg32 rho _ r3483 r3484 r3485 r3486 r3487 (node9_seg33 rho _ r3488 r3489 r3490 r3491 r3492 (node9_seg34 rho _ r3493 r3494 r3495 r3496 r3497 (node9_seg35 rho _ r3498 r3499 r3500 r3501 r3502 (node9_seg36 rho _ r3503 r3504 r3505 r3506 r3507 (node9_seg37 rho _ r3508 r3509 r3510 r3511 r3512 (node9_seg38 rho _ r3513 r3514 r3515 r3516 r3517 (node9_seg39 rho _ r3518 r3519 r3520 r3521 r3522 (node9_seg40 rho _ r3523 r3524 r3525 r3526 r3527 (node9_seg41 rho _ r3528 r3529 r3530 r3531 r3532 (node9_seg42 rho _ r3533 r3534 r3535 r3536 r3537 (node9_seg43 rho _ r3538 r3539 r3540 r3541 r3542 (node9_seg44 rho _ r3543 r3544 r3545 r3546 r3547 (node9_seg45 rho _ r3548 r3549 r3550 r3551 r3552 (node9_seg46 rho _ r3553 r3554 r3555 r3556 r3557 (node9_seg47 rho _ r3558 r3559 r3560 r3561 r3562 (node9_seg48 rho _ r3563 r3564 r3565 r3566 r3567 (node9_seg49 rho _ r3568 r3569 r3570 r3571 r3572 (node9_seg50 rho _ r3573 r3574 r3575 r3576 r3577 (node9_seg51 rho _ r3578 r3579 r3580 r3581 r3582 (node9_seg52 rho _ r3583 r3584 r3585 r3586 r3587 (node9_seg53 rho _ r3588 r3589 r3590 r3591 r3592 (node9_seg54 rho _ r3593 r3594 r3595 r3596 r3597 (node9_seg55 rho _ r3598 r3599 r3600 r3601 r3602 (node9_seg56 rho _ r3603 r3604 r3605 r3606 r3607 (node9_seg57 rho _ r3608 r3609 r3610 r3611 r3612 (node9_seg58 rho _ r3613 r3614 r3615 r3616 r3617 (node9_seg59 rho _ r3618 r3619 r3620 r3621 r3622 (node9_seg60 rho _ r3623 r3624 r3625 r3626 r3627 (node9_seg61 rho _ r3628 r3629 r3630 r3631 r3632 (node9_seg62 rho _ r3633 r3634 r3635 r3636 r3637 (node9_seg63 rho _ r3638 r3639 r3640 r3641 r3642 (node9_seg64 rho _ r3643 r3644 r3645 r3646 r3647 (node9_seg65 rho _ r3648 r3649 r3650 r3651 r3652 (node9_seg66 rho _ r3653 r3654 r3655 r3656 r3657 (node9_seg67 rho _ r3658 r3659 r3660 r3661 r3662 (node9_seg68 rho _ r3663 r3664 r3665 r3666 r3667 (node9_seg69 rho _ r3668 r3669 r3670 r3671 r3672 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 3311 + rho 3312) (rho 3313 + rho 3314 + rho 3315) (rho 3313 + rho 3317 + rho 3318) (rho 3316 + rho 3319) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut9, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
