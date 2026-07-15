import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node9_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3819 : Seg13.relationRow3819 rho)
    (r3820 : Seg13.relationRow3820 rho)
    (r3821 : Seg13.relationRow3821 rho)
    (r3822 : Seg13.relationRow3822 rho)
    (r3823 : Seg13.relationRow3823 rho)
    (tail : next (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) (rho 11000)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg50 (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) next := by
  exact ⟨rho 10996, rho 10997, rho 10998, rho 10999, rho 11000, r3819, r3820, r3821, r3822, r3823, tail⟩

theorem seg13_scp_node9_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3824 : Seg13.relationRow3824 rho)
    (r3825 : Seg13.relationRow3825 rho)
    (r3826 : Seg13.relationRow3826 rho)
    (r3827 : Seg13.relationRow3827 rho)
    (r3828 : Seg13.relationRow3828 rho)
    (tail : next (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) (rho 11000) (rho 11005)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg51 (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) (rho 11000) next := by
  exact ⟨rho 11001, rho 11002, rho 11003, rho 11004, rho 11005, r3824, r3825, r3826, r3827, r3828, tail⟩

theorem seg13_scp_node9_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3829 : Seg13.relationRow3829 rho)
    (r3830 : Seg13.relationRow3830 rho)
    (r3831 : Seg13.relationRow3831 rho)
    (r3832 : Seg13.relationRow3832 rho)
    (r3833 : Seg13.relationRow3833 rho)
    (tail : next (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) (rho 11000) (rho 11005) (rho 11010)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg52 (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) (rho 11000) (rho 11005) next := by
  exact ⟨rho 11006, rho 11007, rho 11008, rho 11009, rho 11010, r3829, r3830, r3831, r3832, r3833, tail⟩

theorem seg13_scp_node9_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3834 : Seg13.relationRow3834 rho)
    (r3835 : Seg13.relationRow3835 rho)
    (r3836 : Seg13.relationRow3836 rho)
    (r3837 : Seg13.relationRow3837 rho)
    (r3838 : Seg13.relationRow3838 rho)
    (tail : next (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) (rho 11000) (rho 11005) (rho 11010) (rho 11015)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg53 (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) (rho 11000) (rho 11005) (rho 11010) next := by
  exact ⟨rho 11011, rho 11012, rho 11013, rho 11014, rho 11015, r3834, r3835, r3836, r3837, r3838, tail⟩

theorem seg13_scp_node9_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3839 : Seg13.relationRow3839 rho)
    (r3840 : Seg13.relationRow3840 rho)
    (r3841 : Seg13.relationRow3841 rho)
    (r3842 : Seg13.relationRow3842 rho)
    (r3843 : Seg13.relationRow3843 rho)
    (tail : next (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg54 (rho 10820) (rho 10825) (rho 10830) (rho 10835) (rho 10840) (rho 10845) (rho 10850) (rho 10855) (rho 10860) (rho 10865) (rho 10870) (rho 10875) (rho 10880) (rho 10885) (rho 10890) (rho 10895) (rho 10900) (rho 10905) (rho 10910) (rho 10915) (rho 10920) (rho 10925) (rho 10930) (rho 10935) (rho 10940) (rho 10945) (rho 10950) (rho 10955) (rho 10960) (rho 10965) (rho 10970) (rho 10975) (rho 10980) (rho 10985) (rho 10990) (rho 10995) (rho 11000) (rho 11005) (rho 11010) (rho 11015) next := by
  exact ⟨rho 11016, rho 11017, rho 11018, rho 11019, rho 11020, r3839, r3840, r3841, r3842, r3843, tail⟩

theorem seg13_scp_node9_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3844 : Seg13.relationRow3844 rho)
    (r3845 : Seg13.relationRow3845 rho)
    (r3846 : Seg13.relationRow3846 rho)
    (r3847 : Seg13.relationRow3847 rho)
    (r3848 : Seg13.relationRow3848 rho)
    (tail : next (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) (rho 11025)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg55 (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) next := by
  exact ⟨rho 11021, rho 11022, rho 11023, rho 11024, rho 11025, r3844, r3845, r3846, r3847, r3848, tail⟩

theorem seg13_scp_node9_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3849 : Seg13.relationRow3849 rho)
    (r3850 : Seg13.relationRow3850 rho)
    (r3851 : Seg13.relationRow3851 rho)
    (r3852 : Seg13.relationRow3852 rho)
    (r3853 : Seg13.relationRow3853 rho)
    (tail : next (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) (rho 11025) (rho 11030)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg56 (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) (rho 11025) next := by
  exact ⟨rho 11026, rho 11027, rho 11028, rho 11029, rho 11030, r3849, r3850, r3851, r3852, r3853, tail⟩

theorem seg13_scp_node9_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3854 : Seg13.relationRow3854 rho)
    (r3855 : Seg13.relationRow3855 rho)
    (r3856 : Seg13.relationRow3856 rho)
    (r3857 : Seg13.relationRow3857 rho)
    (r3858 : Seg13.relationRow3858 rho)
    (tail : next (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) (rho 11025) (rho 11030) (rho 11035)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg57 (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) (rho 11025) (rho 11030) next := by
  exact ⟨rho 11031, rho 11032, rho 11033, rho 11034, rho 11035, r3854, r3855, r3856, r3857, r3858, tail⟩

theorem seg13_scp_node9_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3859 : Seg13.relationRow3859 rho)
    (r3860 : Seg13.relationRow3860 rho)
    (r3861 : Seg13.relationRow3861 rho)
    (r3862 : Seg13.relationRow3862 rho)
    (r3863 : Seg13.relationRow3863 rho)
    (tail : next (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) (rho 11025) (rho 11030) (rho 11035) (rho 11040)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg58 (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) (rho 11025) (rho 11030) (rho 11035) next := by
  exact ⟨rho 11036, rho 11037, rho 11038, rho 11039, rho 11040, r3859, r3860, r3861, r3862, r3863, tail⟩

theorem seg13_scp_node9_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3864 : Seg13.relationRow3864 rho)
    (r3865 : Seg13.relationRow3865 rho)
    (r3866 : Seg13.relationRow3866 rho)
    (r3867 : Seg13.relationRow3867 rho)
    (r3868 : Seg13.relationRow3868 rho)
    (tail : next (rho 11025) (rho 11030) (rho 11035) (rho 11040) (rho 11045)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg59 (rho 11000) (rho 11005) (rho 11010) (rho 11015) (rho 11020) (rho 11025) (rho 11030) (rho 11035) (rho 11040) next := by
  exact ⟨rho 11041, rho 11042, rho 11043, rho 11044, rho 11045, r3864, r3865, r3866, r3867, r3868, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

