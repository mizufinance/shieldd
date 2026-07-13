import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode9.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node9_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode9Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (10 : Seg28.F))
        (rho 157 + rho 22921) (rho 158 + rho 22922 + rho 22923)
        (rho 158 + rho 22924 + rho 22925) (rho 159 + rho 22926) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, p45, p46, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3569, r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Seg28.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  unfold Seg28.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩
  unfold Seg28.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩
  unfold Seg28.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.relation (rho 157) (rho 158) (rho 159) (rho 22921) (rho 22922) (rho 22923) (rho 22924) (rho 22925) (rho 22926)
      (fun o0 o1 o2 o3 o4 => o0 = rho 23256 ∧ o1 = rho 23261 ∧ o2 = rho 23266 ∧ o3 = rho 23271 ∧ o4 = rho 23276) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg0
    refine ⟨rho 22927, rho 22928, rho 22929, rho 22930, rho 22931,
      (by unfold Seg28.relationRow3569 at r3569; linear_combination r3569), (by unfold Seg28.relationRow3570 at r3570; linear_combination r3570), (by unfold Seg28.relationRow3571 at r3571; linear_combination r3571), (by unfold Seg28.relationRow3572 at r3572; linear_combination r3572), (by unfold Seg28.relationRow3573 at r3573; linear_combination r3573), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg1
    refine ⟨rho 22932, rho 22933, rho 22934, rho 22935, rho 22936,
      (by unfold Seg28.relationRow3574 at r3574; linear_combination r3574), (by unfold Seg28.relationRow3575 at r3575; linear_combination r3575), (by unfold Seg28.relationRow3576 at r3576; linear_combination r3576), (by unfold Seg28.relationRow3577 at r3577; linear_combination r3577), (by unfold Seg28.relationRow3578 at r3578; linear_combination r3578), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg2
    refine ⟨rho 22937, rho 22938, rho 22939, rho 22940, rho 22941,
      (by unfold Seg28.relationRow3579 at r3579; linear_combination r3579), (by unfold Seg28.relationRow3580 at r3580; linear_combination r3580), (by unfold Seg28.relationRow3581 at r3581; linear_combination r3581), (by unfold Seg28.relationRow3582 at r3582; linear_combination r3582), (by unfold Seg28.relationRow3583 at r3583; linear_combination r3583), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg3
    refine ⟨rho 22942, rho 22943, rho 22944, rho 22945, rho 22946,
      (by unfold Seg28.relationRow3584 at r3584; linear_combination r3584), (by unfold Seg28.relationRow3585 at r3585; linear_combination r3585), (by unfold Seg28.relationRow3586 at r3586; linear_combination r3586), (by unfold Seg28.relationRow3587 at r3587; linear_combination r3587), (by unfold Seg28.relationRow3588 at r3588; linear_combination r3588), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg4
    refine ⟨rho 22947, rho 22948, rho 22949, rho 22950, rho 22951,
      (by unfold Seg28.relationRow3589 at r3589; linear_combination r3589), (by unfold Seg28.relationRow3590 at r3590; linear_combination r3590), (by unfold Seg28.relationRow3591 at r3591; linear_combination r3591), (by unfold Seg28.relationRow3592 at r3592; linear_combination r3592), (by unfold Seg28.relationRow3593 at r3593; linear_combination r3593), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg5
    refine ⟨rho 22952, rho 22953, rho 22954, rho 22955, rho 22956,
      (by unfold Seg28.relationRow3594 at r3594; linear_combination r3594), (by unfold Seg28.relationRow3595 at r3595; linear_combination r3595), (by unfold Seg28.relationRow3596 at r3596; linear_combination r3596), (by unfold Seg28.relationRow3597 at r3597; linear_combination r3597), (by unfold Seg28.relationRow3598 at r3598; linear_combination r3598), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg6
    refine ⟨rho 22957, rho 22958, rho 22959, rho 22960, rho 22961,
      (by unfold Seg28.relationRow3599 at r3599; linear_combination r3599), (by unfold Seg28.relationRow3600 at r3600; linear_combination r3600), (by unfold Seg28.relationRow3601 at r3601; linear_combination r3601), (by unfold Seg28.relationRow3602 at r3602; linear_combination r3602), (by unfold Seg28.relationRow3603 at r3603; linear_combination r3603), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg7
    refine ⟨rho 22962, rho 22963, rho 22964, rho 22965, rho 22966,
      (by unfold Seg28.relationRow3604 at r3604; linear_combination r3604), (by unfold Seg28.relationRow3605 at r3605; linear_combination r3605), (by unfold Seg28.relationRow3606 at r3606; linear_combination r3606), (by unfold Seg28.relationRow3607 at r3607; linear_combination r3607), (by unfold Seg28.relationRow3608 at r3608; linear_combination r3608), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg8
    refine ⟨rho 22967, rho 22968, rho 22969, rho 22970, rho 22971,
      (by unfold Seg28.relationRow3609 at r3609; linear_combination r3609), (by unfold Seg28.relationRow3610 at r3610; linear_combination r3610), (by unfold Seg28.relationRow3611 at r3611; linear_combination r3611), (by unfold Seg28.relationRow3612 at r3612; linear_combination r3612), (by unfold Seg28.relationRow3613 at r3613; linear_combination r3613), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg9
    refine ⟨rho 22972, rho 22973, rho 22974, rho 22975, rho 22976,
      (by unfold Seg28.relationRow3614 at r3614; linear_combination r3614), (by unfold Seg28.relationRow3615 at r3615; linear_combination r3615), (by unfold Seg28.relationRow3616 at r3616; linear_combination r3616), (by unfold Seg28.relationRow3617 at r3617; linear_combination r3617), (by unfold Seg28.relationRow3618 at r3618; linear_combination r3618), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg10
    refine ⟨rho 22977, rho 22978, rho 22979, rho 22980, rho 22981,
      (by unfold Seg28.relationRow3619 at r3619; linear_combination r3619), (by unfold Seg28.relationRow3620 at r3620; linear_combination r3620), (by unfold Seg28.relationRow3621 at r3621; linear_combination r3621), (by unfold Seg28.relationRow3622 at r3622; linear_combination r3622), (by unfold Seg28.relationRow3623 at r3623; linear_combination r3623), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg11
    refine ⟨rho 22982, rho 22983, rho 22984, rho 22985, rho 22986,
      (by unfold Seg28.relationRow3624 at r3624; linear_combination r3624), (by unfold Seg28.relationRow3625 at r3625; linear_combination r3625), (by unfold Seg28.relationRow3626 at r3626; linear_combination r3626), (by unfold Seg28.relationRow3627 at r3627; linear_combination r3627), (by unfold Seg28.relationRow3628 at r3628; linear_combination r3628), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg12
    refine ⟨rho 22987, rho 22988, rho 22989, rho 22990, rho 22991,
      (by unfold Seg28.relationRow3629 at r3629; linear_combination r3629), (by unfold Seg28.relationRow3630 at r3630; linear_combination r3630), (by unfold Seg28.relationRow3631 at r3631; linear_combination r3631), (by unfold Seg28.relationRow3632 at r3632; linear_combination r3632), (by unfold Seg28.relationRow3633 at r3633; linear_combination r3633), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg13
    refine ⟨rho 22992, rho 22993, rho 22994, rho 22995, rho 22996,
      (by unfold Seg28.relationRow3634 at r3634; linear_combination r3634), (by unfold Seg28.relationRow3635 at r3635; linear_combination r3635), (by unfold Seg28.relationRow3636 at r3636; linear_combination r3636), (by unfold Seg28.relationRow3637 at r3637; linear_combination r3637), (by unfold Seg28.relationRow3638 at r3638; linear_combination r3638), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg14
    refine ⟨rho 22997, rho 22998, rho 22999, rho 23000, rho 23001,
      (by unfold Seg28.relationRow3639 at r3639; linear_combination r3639), (by unfold Seg28.relationRow3640 at r3640; linear_combination r3640), (by unfold Seg28.relationRow3641 at r3641; linear_combination r3641), (by unfold Seg28.relationRow3642 at r3642; linear_combination r3642), (by unfold Seg28.relationRow3643 at r3643; linear_combination r3643), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg15
    refine ⟨rho 23002, rho 23003, rho 23004, rho 23005, rho 23006,
      (by unfold Seg28.relationRow3644 at r3644; linear_combination r3644), (by unfold Seg28.relationRow3645 at r3645; linear_combination r3645), (by unfold Seg28.relationRow3646 at r3646; linear_combination r3646), (by unfold Seg28.relationRow3647 at r3647; linear_combination r3647), (by unfold Seg28.relationRow3648 at r3648; linear_combination r3648), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg16
    refine ⟨rho 23007, rho 23008, rho 23009, rho 23010, rho 23011,
      (by unfold Seg28.relationRow3649 at r3649; linear_combination r3649), (by unfold Seg28.relationRow3650 at r3650; linear_combination r3650), (by unfold Seg28.relationRow3651 at r3651; linear_combination r3651), (by unfold Seg28.relationRow3652 at r3652; linear_combination r3652), (by unfold Seg28.relationRow3653 at r3653; linear_combination r3653), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg17
    refine ⟨rho 23012, rho 23013, rho 23014, rho 23015, rho 23016,
      (by unfold Seg28.relationRow3654 at r3654; linear_combination r3654), (by unfold Seg28.relationRow3655 at r3655; linear_combination r3655), (by unfold Seg28.relationRow3656 at r3656; linear_combination r3656), (by unfold Seg28.relationRow3657 at r3657; linear_combination r3657), (by unfold Seg28.relationRow3658 at r3658; linear_combination r3658), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg18
    refine ⟨rho 23017, rho 23018, rho 23019, rho 23020, rho 23021,
      (by unfold Seg28.relationRow3659 at r3659; linear_combination r3659), (by unfold Seg28.relationRow3660 at r3660; linear_combination r3660), (by unfold Seg28.relationRow3661 at r3661; linear_combination r3661), (by unfold Seg28.relationRow3662 at r3662; linear_combination r3662), (by unfold Seg28.relationRow3663 at r3663; linear_combination r3663), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg19
    refine ⟨rho 23022, rho 23023, rho 23024, rho 23025, rho 23026,
      (by unfold Seg28.relationRow3664 at r3664; linear_combination r3664), (by unfold Seg28.relationRow3665 at r3665; linear_combination r3665), (by unfold Seg28.relationRow3666 at r3666; linear_combination r3666), (by unfold Seg28.relationRow3667 at r3667; linear_combination r3667), (by unfold Seg28.relationRow3668 at r3668; linear_combination r3668), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg20
    refine ⟨rho 23027, rho 23028, rho 23029, rho 23030, rho 23031,
      (by unfold Seg28.relationRow3669 at r3669; linear_combination r3669), (by unfold Seg28.relationRow3670 at r3670; linear_combination r3670), (by unfold Seg28.relationRow3671 at r3671; linear_combination r3671), (by unfold Seg28.relationRow3672 at r3672; linear_combination r3672), (by unfold Seg28.relationRow3673 at r3673; linear_combination r3673), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg21
    refine ⟨rho 23032, rho 23033, rho 23034, rho 23035, rho 23036,
      (by unfold Seg28.relationRow3674 at r3674; linear_combination r3674), (by unfold Seg28.relationRow3675 at r3675; linear_combination r3675), (by unfold Seg28.relationRow3676 at r3676; linear_combination r3676), (by unfold Seg28.relationRow3677 at r3677; linear_combination r3677), (by unfold Seg28.relationRow3678 at r3678; linear_combination r3678), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg22
    refine ⟨rho 23037, rho 23038, rho 23039, rho 23040, rho 23041,
      (by unfold Seg28.relationRow3679 at r3679; linear_combination r3679), (by unfold Seg28.relationRow3680 at r3680; linear_combination r3680), (by unfold Seg28.relationRow3681 at r3681; linear_combination r3681), (by unfold Seg28.relationRow3682 at r3682; linear_combination r3682), (by unfold Seg28.relationRow3683 at r3683; linear_combination r3683), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg23
    refine ⟨rho 23042, rho 23043, rho 23044, rho 23045, rho 23046,
      (by unfold Seg28.relationRow3684 at r3684; linear_combination r3684), (by unfold Seg28.relationRow3685 at r3685; linear_combination r3685), (by unfold Seg28.relationRow3686 at r3686; linear_combination r3686), (by unfold Seg28.relationRow3687 at r3687; linear_combination r3687), (by unfold Seg28.relationRow3688 at r3688; linear_combination r3688), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg24
    refine ⟨rho 23047, rho 23048, rho 23049, rho 23050, rho 23051,
      (by unfold Seg28.relationRow3689 at r3689; linear_combination r3689), (by unfold Seg28.relationRow3690 at r3690; linear_combination r3690), (by unfold Seg28.relationRow3691 at r3691; linear_combination r3691), (by unfold Seg28.relationRow3692 at r3692; linear_combination r3692), (by unfold Seg28.relationRow3693 at r3693; linear_combination r3693), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg25
    refine ⟨rho 23052, rho 23053, rho 23054, rho 23055, rho 23056,
      (by unfold Seg28.relationRow3694 at r3694; linear_combination r3694), (by unfold Seg28.relationRow3695 at r3695; linear_combination r3695), (by unfold Seg28.relationRow3696 at r3696; linear_combination r3696), (by unfold Seg28.relationRow3697 at r3697; linear_combination r3697), (by unfold Seg28.relationRow3698 at r3698; linear_combination r3698), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg26
    refine ⟨rho 23057, rho 23058, rho 23059, rho 23060, rho 23061,
      (by unfold Seg28.relationRow3699 at r3699; linear_combination r3699), (by unfold Seg28.relationRow3700 at r3700; linear_combination r3700), (by unfold Seg28.relationRow3701 at r3701; linear_combination r3701), (by unfold Seg28.relationRow3702 at r3702; linear_combination r3702), (by unfold Seg28.relationRow3703 at r3703; linear_combination r3703), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg27
    refine ⟨rho 23062, rho 23063, rho 23064, rho 23065, rho 23066,
      (by unfold Seg28.relationRow3704 at r3704; linear_combination r3704), (by unfold Seg28.relationRow3705 at r3705; linear_combination r3705), (by unfold Seg28.relationRow3706 at r3706; linear_combination r3706), (by unfold Seg28.relationRow3707 at r3707; linear_combination r3707), (by unfold Seg28.relationRow3708 at r3708; linear_combination r3708), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg28
    refine ⟨rho 23067, rho 23068, rho 23069, rho 23070, rho 23071,
      (by unfold Seg28.relationRow3709 at r3709; linear_combination r3709), (by unfold Seg28.relationRow3710 at r3710; linear_combination r3710), (by unfold Seg28.relationRow3711 at r3711; linear_combination r3711), (by unfold Seg28.relationRow3712 at r3712; linear_combination r3712), (by unfold Seg28.relationRow3713 at r3713; linear_combination r3713), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg29
    refine ⟨rho 23072, rho 23073, rho 23074, rho 23075, rho 23076,
      (by unfold Seg28.relationRow3714 at r3714; linear_combination r3714), (by unfold Seg28.relationRow3715 at r3715; linear_combination r3715), (by unfold Seg28.relationRow3716 at r3716; linear_combination r3716), (by unfold Seg28.relationRow3717 at r3717; linear_combination r3717), (by unfold Seg28.relationRow3718 at r3718; linear_combination r3718), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg30
    refine ⟨rho 23077, rho 23078, rho 23079, rho 23080, rho 23081,
      (by unfold Seg28.relationRow3719 at r3719; linear_combination r3719), (by unfold Seg28.relationRow3720 at r3720; linear_combination r3720), (by unfold Seg28.relationRow3721 at r3721; linear_combination r3721), (by unfold Seg28.relationRow3722 at r3722; linear_combination r3722), (by unfold Seg28.relationRow3723 at r3723; linear_combination r3723), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg31
    refine ⟨rho 23082, rho 23083, rho 23084, rho 23085, rho 23086,
      (by unfold Seg28.relationRow3724 at r3724; linear_combination r3724), (by unfold Seg28.relationRow3725 at r3725; linear_combination r3725), (by unfold Seg28.relationRow3726 at r3726; linear_combination r3726), (by unfold Seg28.relationRow3727 at r3727; linear_combination r3727), (by unfold Seg28.relationRow3728 at r3728; linear_combination r3728), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg32
    refine ⟨rho 23087, rho 23088, rho 23089, rho 23090, rho 23091,
      (by unfold Seg28.relationRow3729 at r3729; linear_combination r3729), (by unfold Seg28.relationRow3730 at r3730; linear_combination r3730), (by unfold Seg28.relationRow3731 at r3731; linear_combination r3731), (by unfold Seg28.relationRow3732 at r3732; linear_combination r3732), (by unfold Seg28.relationRow3733 at r3733; linear_combination r3733), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg33
    refine ⟨rho 23092, rho 23093, rho 23094, rho 23095, rho 23096,
      (by unfold Seg28.relationRow3734 at r3734; linear_combination r3734), (by unfold Seg28.relationRow3735 at r3735; linear_combination r3735), (by unfold Seg28.relationRow3736 at r3736; linear_combination r3736), (by unfold Seg28.relationRow3737 at r3737; linear_combination r3737), (by unfold Seg28.relationRow3738 at r3738; linear_combination r3738), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg34
    refine ⟨rho 23097, rho 23098, rho 23099, rho 23100, rho 23101,
      (by unfold Seg28.relationRow3739 at r3739; linear_combination r3739), (by unfold Seg28.relationRow3740 at r3740; linear_combination r3740), (by unfold Seg28.relationRow3741 at r3741; linear_combination r3741), (by unfold Seg28.relationRow3742 at r3742; linear_combination r3742), (by unfold Seg28.relationRow3743 at r3743; linear_combination r3743), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg35
    refine ⟨rho 23102, rho 23103, rho 23104, rho 23105, rho 23106,
      (by unfold Seg28.relationRow3744 at r3744; linear_combination r3744), (by unfold Seg28.relationRow3745 at r3745; linear_combination r3745), (by unfold Seg28.relationRow3746 at r3746; linear_combination r3746), (by unfold Seg28.relationRow3747 at r3747; linear_combination r3747), (by unfold Seg28.relationRow3748 at r3748; linear_combination r3748), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg36
    refine ⟨rho 23107, rho 23108, rho 23109, rho 23110, rho 23111,
      (by unfold Seg28.relationRow3749 at r3749; linear_combination r3749), (by unfold Seg28.relationRow3750 at r3750; linear_combination r3750), (by unfold Seg28.relationRow3751 at r3751; linear_combination r3751), (by unfold Seg28.relationRow3752 at r3752; linear_combination r3752), (by unfold Seg28.relationRow3753 at r3753; linear_combination r3753), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg37
    refine ⟨rho 23112, rho 23113, rho 23114, rho 23115, rho 23116,
      (by unfold Seg28.relationRow3754 at r3754; linear_combination r3754), (by unfold Seg28.relationRow3755 at r3755; linear_combination r3755), (by unfold Seg28.relationRow3756 at r3756; linear_combination r3756), (by unfold Seg28.relationRow3757 at r3757; linear_combination r3757), (by unfold Seg28.relationRow3758 at r3758; linear_combination r3758), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg38
    refine ⟨rho 23117, rho 23118, rho 23119, rho 23120, rho 23121,
      (by unfold Seg28.relationRow3759 at r3759; linear_combination r3759), (by unfold Seg28.relationRow3760 at r3760; linear_combination r3760), (by unfold Seg28.relationRow3761 at r3761; linear_combination r3761), (by unfold Seg28.relationRow3762 at r3762; linear_combination r3762), (by unfold Seg28.relationRow3763 at r3763; linear_combination r3763), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg39
    refine ⟨rho 23122, rho 23123, rho 23124, rho 23125, rho 23126,
      (by unfold Seg28.relationRow3764 at r3764; linear_combination r3764), (by unfold Seg28.relationRow3765 at r3765; linear_combination r3765), (by unfold Seg28.relationRow3766 at r3766; linear_combination r3766), (by unfold Seg28.relationRow3767 at r3767; linear_combination r3767), (by unfold Seg28.relationRow3768 at r3768; linear_combination r3768), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg40
    refine ⟨rho 23127, rho 23128, rho 23129, rho 23130, rho 23131,
      (by unfold Seg28.relationRow3769 at r3769; linear_combination r3769), (by unfold Seg28.relationRow3770 at r3770; linear_combination r3770), (by unfold Seg28.relationRow3771 at r3771; linear_combination r3771), (by unfold Seg28.relationRow3772 at r3772; linear_combination r3772), (by unfold Seg28.relationRow3773 at r3773; linear_combination r3773), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg41
    refine ⟨rho 23132, rho 23133, rho 23134, rho 23135, rho 23136,
      (by unfold Seg28.relationRow3774 at r3774; linear_combination r3774), (by unfold Seg28.relationRow3775 at r3775; linear_combination r3775), (by unfold Seg28.relationRow3776 at r3776; linear_combination r3776), (by unfold Seg28.relationRow3777 at r3777; linear_combination r3777), (by unfold Seg28.relationRow3778 at r3778; linear_combination r3778), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg42
    refine ⟨rho 23137, rho 23138, rho 23139, rho 23140, rho 23141,
      (by unfold Seg28.relationRow3779 at r3779; linear_combination r3779), (by unfold Seg28.relationRow3780 at r3780; linear_combination r3780), (by unfold Seg28.relationRow3781 at r3781; linear_combination r3781), (by unfold Seg28.relationRow3782 at r3782; linear_combination r3782), (by unfold Seg28.relationRow3783 at r3783; linear_combination r3783), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg43
    refine ⟨rho 23142, rho 23143, rho 23144, rho 23145, rho 23146,
      (by unfold Seg28.relationRow3784 at r3784; linear_combination r3784), (by unfold Seg28.relationRow3785 at r3785; linear_combination r3785), (by unfold Seg28.relationRow3786 at r3786; linear_combination r3786), (by unfold Seg28.relationRow3787 at r3787; linear_combination r3787), (by unfold Seg28.relationRow3788 at r3788; linear_combination r3788), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg44
    refine ⟨rho 23147, rho 23148, rho 23149, rho 23150, rho 23151,
      (by unfold Seg28.relationRow3789 at r3789; linear_combination r3789), (by unfold Seg28.relationRow3790 at r3790; linear_combination r3790), (by unfold Seg28.relationRow3791 at r3791; linear_combination r3791), (by unfold Seg28.relationRow3792 at r3792; linear_combination r3792), (by unfold Seg28.relationRow3793 at r3793; linear_combination r3793), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg45
    refine ⟨rho 23152, rho 23153, rho 23154, rho 23155, rho 23156,
      (by unfold Seg28.relationRow3794 at r3794; linear_combination r3794), (by unfold Seg28.relationRow3795 at r3795; linear_combination r3795), (by unfold Seg28.relationRow3796 at r3796; linear_combination r3796), (by unfold Seg28.relationRow3797 at r3797; linear_combination r3797), (by unfold Seg28.relationRow3798 at r3798; linear_combination r3798), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg46
    refine ⟨rho 23157, rho 23158, rho 23159, rho 23160, rho 23161,
      (by unfold Seg28.relationRow3799 at r3799; linear_combination r3799), (by unfold Seg28.relationRow3800 at r3800; linear_combination r3800), (by unfold Seg28.relationRow3801 at r3801; linear_combination r3801), (by unfold Seg28.relationRow3802 at r3802; linear_combination r3802), (by unfold Seg28.relationRow3803 at r3803; linear_combination r3803), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg47
    refine ⟨rho 23162, rho 23163, rho 23164, rho 23165, rho 23166,
      (by unfold Seg28.relationRow3804 at r3804; linear_combination r3804), (by unfold Seg28.relationRow3805 at r3805; linear_combination r3805), (by unfold Seg28.relationRow3806 at r3806; linear_combination r3806), (by unfold Seg28.relationRow3807 at r3807; linear_combination r3807), (by unfold Seg28.relationRow3808 at r3808; linear_combination r3808), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg48
    refine ⟨rho 23167, rho 23168, rho 23169, rho 23170, rho 23171,
      (by unfold Seg28.relationRow3809 at r3809; linear_combination r3809), (by unfold Seg28.relationRow3810 at r3810; linear_combination r3810), (by unfold Seg28.relationRow3811 at r3811; linear_combination r3811), (by unfold Seg28.relationRow3812 at r3812; linear_combination r3812), (by unfold Seg28.relationRow3813 at r3813; linear_combination r3813), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg49
    refine ⟨rho 23172, rho 23173, rho 23174, rho 23175, rho 23176,
      (by unfold Seg28.relationRow3814 at r3814; linear_combination r3814), (by unfold Seg28.relationRow3815 at r3815; linear_combination r3815), (by unfold Seg28.relationRow3816 at r3816; linear_combination r3816), (by unfold Seg28.relationRow3817 at r3817; linear_combination r3817), (by unfold Seg28.relationRow3818 at r3818; linear_combination r3818), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg50
    refine ⟨rho 23177, rho 23178, rho 23179, rho 23180, rho 23181,
      (by unfold Seg28.relationRow3819 at r3819; linear_combination r3819), (by unfold Seg28.relationRow3820 at r3820; linear_combination r3820), (by unfold Seg28.relationRow3821 at r3821; linear_combination r3821), (by unfold Seg28.relationRow3822 at r3822; linear_combination r3822), (by unfold Seg28.relationRow3823 at r3823; linear_combination r3823), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg51
    refine ⟨rho 23182, rho 23183, rho 23184, rho 23185, rho 23186,
      (by unfold Seg28.relationRow3824 at r3824; linear_combination r3824), (by unfold Seg28.relationRow3825 at r3825; linear_combination r3825), (by unfold Seg28.relationRow3826 at r3826; linear_combination r3826), (by unfold Seg28.relationRow3827 at r3827; linear_combination r3827), (by unfold Seg28.relationRow3828 at r3828; linear_combination r3828), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg52
    refine ⟨rho 23187, rho 23188, rho 23189, rho 23190, rho 23191,
      (by unfold Seg28.relationRow3829 at r3829; linear_combination r3829), (by unfold Seg28.relationRow3830 at r3830; linear_combination r3830), (by unfold Seg28.relationRow3831 at r3831; linear_combination r3831), (by unfold Seg28.relationRow3832 at r3832; linear_combination r3832), (by unfold Seg28.relationRow3833 at r3833; linear_combination r3833), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg53
    refine ⟨rho 23192, rho 23193, rho 23194, rho 23195, rho 23196,
      (by unfold Seg28.relationRow3834 at r3834; linear_combination r3834), (by unfold Seg28.relationRow3835 at r3835; linear_combination r3835), (by unfold Seg28.relationRow3836 at r3836; linear_combination r3836), (by unfold Seg28.relationRow3837 at r3837; linear_combination r3837), (by unfold Seg28.relationRow3838 at r3838; linear_combination r3838), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg54
    refine ⟨rho 23197, rho 23198, rho 23199, rho 23200, rho 23201,
      (by unfold Seg28.relationRow3839 at r3839; linear_combination r3839), (by unfold Seg28.relationRow3840 at r3840; linear_combination r3840), (by unfold Seg28.relationRow3841 at r3841; linear_combination r3841), (by unfold Seg28.relationRow3842 at r3842; linear_combination r3842), (by unfold Seg28.relationRow3843 at r3843; linear_combination r3843), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg55
    refine ⟨rho 23202, rho 23203, rho 23204, rho 23205, rho 23206,
      (by unfold Seg28.relationRow3844 at r3844; linear_combination r3844), (by unfold Seg28.relationRow3845 at r3845; linear_combination r3845), (by unfold Seg28.relationRow3846 at r3846; linear_combination r3846), (by unfold Seg28.relationRow3847 at r3847; linear_combination r3847), (by unfold Seg28.relationRow3848 at r3848; linear_combination r3848), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg56
    refine ⟨rho 23207, rho 23208, rho 23209, rho 23210, rho 23211,
      (by unfold Seg28.relationRow3849 at r3849; linear_combination r3849), (by unfold Seg28.relationRow3850 at r3850; linear_combination r3850), (by unfold Seg28.relationRow3851 at r3851; linear_combination r3851), (by unfold Seg28.relationRow3852 at r3852; linear_combination r3852), (by unfold Seg28.relationRow3853 at r3853; linear_combination r3853), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg57
    refine ⟨rho 23212, rho 23213, rho 23214, rho 23215, rho 23216,
      (by unfold Seg28.relationRow3854 at r3854; linear_combination r3854), (by unfold Seg28.relationRow3855 at r3855; linear_combination r3855), (by unfold Seg28.relationRow3856 at r3856; linear_combination r3856), (by unfold Seg28.relationRow3857 at r3857; linear_combination r3857), (by unfold Seg28.relationRow3858 at r3858; linear_combination r3858), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg58
    refine ⟨rho 23217, rho 23218, rho 23219, rho 23220, rho 23221,
      (by unfold Seg28.relationRow3859 at r3859; linear_combination r3859), (by unfold Seg28.relationRow3860 at r3860; linear_combination r3860), (by unfold Seg28.relationRow3861 at r3861; linear_combination r3861), (by unfold Seg28.relationRow3862 at r3862; linear_combination r3862), (by unfold Seg28.relationRow3863 at r3863; linear_combination r3863), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg59
    refine ⟨rho 23222, rho 23223, rho 23224, rho 23225, rho 23226,
      (by unfold Seg28.relationRow3864 at r3864; linear_combination r3864), (by unfold Seg28.relationRow3865 at r3865; linear_combination r3865), (by unfold Seg28.relationRow3866 at r3866; linear_combination r3866), (by unfold Seg28.relationRow3867 at r3867; linear_combination r3867), (by unfold Seg28.relationRow3868 at r3868; linear_combination r3868), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg60
    refine ⟨rho 23227, rho 23228, rho 23229, rho 23230, rho 23231,
      (by unfold Seg28.relationRow3869 at r3869; linear_combination r3869), (by unfold Seg28.relationRow3870 at r3870; linear_combination r3870), (by unfold Seg28.relationRow3871 at r3871; linear_combination r3871), (by unfold Seg28.relationRow3872 at r3872; linear_combination r3872), (by unfold Seg28.relationRow3873 at r3873; linear_combination r3873), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg61
    refine ⟨rho 23232, rho 23233, rho 23234, rho 23235, rho 23236,
      (by unfold Seg28.relationRow3874 at r3874; linear_combination r3874), (by unfold Seg28.relationRow3875 at r3875; linear_combination r3875), (by unfold Seg28.relationRow3876 at r3876; linear_combination r3876), (by unfold Seg28.relationRow3877 at r3877; linear_combination r3877), (by unfold Seg28.relationRow3878 at r3878; linear_combination r3878), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg62
    refine ⟨rho 23237, rho 23238, rho 23239, rho 23240, rho 23241,
      (by unfold Seg28.relationRow3879 at r3879; linear_combination r3879), (by unfold Seg28.relationRow3880 at r3880; linear_combination r3880), (by unfold Seg28.relationRow3881 at r3881; linear_combination r3881), (by unfold Seg28.relationRow3882 at r3882; linear_combination r3882), (by unfold Seg28.relationRow3883 at r3883; linear_combination r3883), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg63
    refine ⟨rho 23242, rho 23243, rho 23244, rho 23245, rho 23246,
      (by unfold Seg28.relationRow3884 at r3884; linear_combination r3884), (by unfold Seg28.relationRow3885 at r3885; linear_combination r3885), (by unfold Seg28.relationRow3886 at r3886; linear_combination r3886), (by unfold Seg28.relationRow3887 at r3887; linear_combination r3887), (by unfold Seg28.relationRow3888 at r3888; linear_combination r3888), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg64
    refine ⟨rho 23247, rho 23248, rho 23249, rho 23250, rho 23251,
      (by unfold Seg28.relationRow3889 at r3889; linear_combination r3889), (by unfold Seg28.relationRow3890 at r3890; linear_combination r3890), (by unfold Seg28.relationRow3891 at r3891; linear_combination r3891), (by unfold Seg28.relationRow3892 at r3892; linear_combination r3892), (by unfold Seg28.relationRow3893 at r3893; linear_combination r3893), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg65
    refine ⟨rho 23252, rho 23253, rho 23254, rho 23255, rho 23256,
      (by unfold Seg28.relationRow3894 at r3894; linear_combination r3894), (by unfold Seg28.relationRow3895 at r3895; linear_combination r3895), (by unfold Seg28.relationRow3896 at r3896; linear_combination r3896), (by unfold Seg28.relationRow3897 at r3897; linear_combination r3897), (by unfold Seg28.relationRow3898 at r3898; linear_combination r3898), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg66
    refine ⟨rho 23257, rho 23258, rho 23259, rho 23260, rho 23261,
      (by unfold Seg28.relationRow3899 at r3899; linear_combination r3899), (by unfold Seg28.relationRow3900 at r3900; linear_combination r3900), (by unfold Seg28.relationRow3901 at r3901; linear_combination r3901), (by unfold Seg28.relationRow3902 at r3902; linear_combination r3902), (by unfold Seg28.relationRow3903 at r3903; linear_combination r3903), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg67
    refine ⟨rho 23262, rho 23263, rho 23264, rho 23265, rho 23266,
      (by unfold Seg28.relationRow3904 at r3904; linear_combination r3904), (by unfold Seg28.relationRow3905 at r3905; linear_combination r3905), (by unfold Seg28.relationRow3906 at r3906; linear_combination r3906), (by unfold Seg28.relationRow3907 at r3907; linear_combination r3907), (by unfold Seg28.relationRow3908 at r3908; linear_combination r3908), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg68
    refine ⟨rho 23267, rho 23268, rho 23269, rho 23270, rho 23271,
      (by unfold Seg28.relationRow3909 at r3909; linear_combination r3909), (by unfold Seg28.relationRow3910 at r3910; linear_combination r3910), (by unfold Seg28.relationRow3911 at r3911; linear_combination r3911), (by unfold Seg28.relationRow3912 at r3912; linear_combination r3912), (by unfold Seg28.relationRow3913 at r3913; linear_combination r3913), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg69
    refine ⟨rho 23272, rho 23273, rho 23274, rho 23275, rho 23276,
      (by unfold Seg28.relationRow3914 at r3914; linear_combination r3914), (by unfold Seg28.relationRow3915 at r3915; linear_combination r3915), (by unfold Seg28.relationRow3916 at r3916; linear_combination r3916), (by unfold Seg28.relationRow3917 at r3917; linear_combination r3917), (by unfold Seg28.relationRow3918 at r3918; linear_combination r3918), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.relation_sound_permSpec (rho 157) (rho 158) (rho 159) (rho 22921) (rho 22922) (rho 22923) (rho 22924) (rho 22925) (rho 22926) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.tctNode10DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.F) + (10 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode9Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode9.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

