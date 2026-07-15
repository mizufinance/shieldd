import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node9_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3869 : Seg28.relationRow3869 rho)
    (r3870 : Seg28.relationRow3870 rho)
    (r3871 : Seg28.relationRow3871 rho)
    (r3872 : Seg28.relationRow3872 rho)
    (r3873 : Seg28.relationRow3873 rho)
    (tail : next (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) (rho 23231)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg60 (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) next := by
  exact ⟨rho 23227, rho 23228, rho 23229, rho 23230, rho 23231, r3869, r3870, r3871, r3872, r3873, tail⟩

theorem seg28_scp_node9_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3874 : Seg28.relationRow3874 rho)
    (r3875 : Seg28.relationRow3875 rho)
    (r3876 : Seg28.relationRow3876 rho)
    (r3877 : Seg28.relationRow3877 rho)
    (r3878 : Seg28.relationRow3878 rho)
    (tail : next (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) (rho 23231) (rho 23236)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg61 (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) (rho 23231) next := by
  exact ⟨rho 23232, rho 23233, rho 23234, rho 23235, rho 23236, r3874, r3875, r3876, r3877, r3878, tail⟩

theorem seg28_scp_node9_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3879 : Seg28.relationRow3879 rho)
    (r3880 : Seg28.relationRow3880 rho)
    (r3881 : Seg28.relationRow3881 rho)
    (r3882 : Seg28.relationRow3882 rho)
    (r3883 : Seg28.relationRow3883 rho)
    (tail : next (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) (rho 23231) (rho 23236) (rho 23241)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg62 (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) (rho 23231) (rho 23236) next := by
  exact ⟨rho 23237, rho 23238, rho 23239, rho 23240, rho 23241, r3879, r3880, r3881, r3882, r3883, tail⟩

theorem seg28_scp_node9_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3884 : Seg28.relationRow3884 rho)
    (r3885 : Seg28.relationRow3885 rho)
    (r3886 : Seg28.relationRow3886 rho)
    (r3887 : Seg28.relationRow3887 rho)
    (r3888 : Seg28.relationRow3888 rho)
    (tail : next (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) (rho 23231) (rho 23236) (rho 23241) (rho 23246)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg63 (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) (rho 23231) (rho 23236) (rho 23241) next := by
  exact ⟨rho 23242, rho 23243, rho 23244, rho 23245, rho 23246, r3884, r3885, r3886, r3887, r3888, tail⟩

theorem seg28_scp_node9_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3889 : Seg28.relationRow3889 rho)
    (r3890 : Seg28.relationRow3890 rho)
    (r3891 : Seg28.relationRow3891 rho)
    (r3892 : Seg28.relationRow3892 rho)
    (r3893 : Seg28.relationRow3893 rho)
    (tail : next (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg64 (rho 23206) (rho 23211) (rho 23216) (rho 23221) (rho 23226) (rho 23231) (rho 23236) (rho 23241) (rho 23246) next := by
  exact ⟨rho 23247, rho 23248, rho 23249, rho 23250, rho 23251, r3889, r3890, r3891, r3892, r3893, tail⟩

theorem seg28_scp_node9_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3894 : Seg28.relationRow3894 rho)
    (r3895 : Seg28.relationRow3895 rho)
    (r3896 : Seg28.relationRow3896 rho)
    (r3897 : Seg28.relationRow3897 rho)
    (r3898 : Seg28.relationRow3898 rho)
    (tail : next (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) (rho 23256)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg65 (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) next := by
  exact ⟨rho 23252, rho 23253, rho 23254, rho 23255, rho 23256, r3894, r3895, r3896, r3897, r3898, tail⟩

theorem seg28_scp_node9_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3899 : Seg28.relationRow3899 rho)
    (r3900 : Seg28.relationRow3900 rho)
    (r3901 : Seg28.relationRow3901 rho)
    (r3902 : Seg28.relationRow3902 rho)
    (r3903 : Seg28.relationRow3903 rho)
    (tail : next (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) (rho 23256) (rho 23261)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg66 (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) (rho 23256) next := by
  exact ⟨rho 23257, rho 23258, rho 23259, rho 23260, rho 23261, r3899, r3900, r3901, r3902, r3903, tail⟩

theorem seg28_scp_node9_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3904 : Seg28.relationRow3904 rho)
    (r3905 : Seg28.relationRow3905 rho)
    (r3906 : Seg28.relationRow3906 rho)
    (r3907 : Seg28.relationRow3907 rho)
    (r3908 : Seg28.relationRow3908 rho)
    (tail : next (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) (rho 23256) (rho 23261) (rho 23266)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg67 (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) (rho 23256) (rho 23261) next := by
  exact ⟨rho 23262, rho 23263, rho 23264, rho 23265, rho 23266, r3904, r3905, r3906, r3907, r3908, tail⟩

theorem seg28_scp_node9_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3909 : Seg28.relationRow3909 rho)
    (r3910 : Seg28.relationRow3910 rho)
    (r3911 : Seg28.relationRow3911 rho)
    (r3912 : Seg28.relationRow3912 rho)
    (r3913 : Seg28.relationRow3913 rho)
    (tail : next (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) (rho 23256) (rho 23261) (rho 23266) (rho 23271)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg68 (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) (rho 23256) (rho 23261) (rho 23266) next := by
  exact ⟨rho 23267, rho 23268, rho 23269, rho 23270, rho 23271, r3909, r3910, r3911, r3912, r3913, tail⟩

theorem seg28_scp_node9_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3914 : Seg28.relationRow3914 rho)
    (r3915 : Seg28.relationRow3915 rho)
    (r3916 : Seg28.relationRow3916 rho)
    (r3917 : Seg28.relationRow3917 rho)
    (r3918 : Seg28.relationRow3918 rho)
    (tail : next (rho 23256) (rho 23261) (rho 23266) (rho 23271) (rho 23276)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_1bed40.seg69 (rho 23231) (rho 23236) (rho 23241) (rho 23246) (rho 23251) (rho 23256) (rho 23261) (rho 23266) (rho 23271) next := by
  exact ⟨rho 23272, rho 23273, rho 23274, rho 23275, rho 23276, r3914, r3915, r3916, r3917, r3918, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

