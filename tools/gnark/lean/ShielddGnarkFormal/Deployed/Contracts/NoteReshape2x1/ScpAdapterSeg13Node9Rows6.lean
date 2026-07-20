import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node9_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3869 : Seg13.relationRow3869 rho)
    (r3870 : Seg13.relationRow3870 rho)
    (r3871 : Seg13.relationRow3871 rho)
    (r3872 : Seg13.relationRow3872 rho)
    (r3873 : Seg13.relationRow3873 rho)
    (tail : next (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) (rho 11044)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg60 (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) next := by
  exact ⟨rho 11040, rho 11041, rho 11042, rho 11043, rho 11044, r3869, r3870, r3871, r3872, r3873, tail⟩

theorem seg13_scp_node9_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3874 : Seg13.relationRow3874 rho)
    (r3875 : Seg13.relationRow3875 rho)
    (r3876 : Seg13.relationRow3876 rho)
    (r3877 : Seg13.relationRow3877 rho)
    (r3878 : Seg13.relationRow3878 rho)
    (tail : next (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) (rho 11044) (rho 11049)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg61 (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) (rho 11044) next := by
  exact ⟨rho 11045, rho 11046, rho 11047, rho 11048, rho 11049, r3874, r3875, r3876, r3877, r3878, tail⟩

theorem seg13_scp_node9_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3879 : Seg13.relationRow3879 rho)
    (r3880 : Seg13.relationRow3880 rho)
    (r3881 : Seg13.relationRow3881 rho)
    (r3882 : Seg13.relationRow3882 rho)
    (r3883 : Seg13.relationRow3883 rho)
    (tail : next (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) (rho 11044) (rho 11049) (rho 11054)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg62 (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) (rho 11044) (rho 11049) next := by
  exact ⟨rho 11050, rho 11051, rho 11052, rho 11053, rho 11054, r3879, r3880, r3881, r3882, r3883, tail⟩

theorem seg13_scp_node9_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3884 : Seg13.relationRow3884 rho)
    (r3885 : Seg13.relationRow3885 rho)
    (r3886 : Seg13.relationRow3886 rho)
    (r3887 : Seg13.relationRow3887 rho)
    (r3888 : Seg13.relationRow3888 rho)
    (tail : next (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) (rho 11044) (rho 11049) (rho 11054) (rho 11059)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg63 (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) (rho 11044) (rho 11049) (rho 11054) next := by
  exact ⟨rho 11055, rho 11056, rho 11057, rho 11058, rho 11059, r3884, r3885, r3886, r3887, r3888, tail⟩

theorem seg13_scp_node9_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3889 : Seg13.relationRow3889 rho)
    (r3890 : Seg13.relationRow3890 rho)
    (r3891 : Seg13.relationRow3891 rho)
    (r3892 : Seg13.relationRow3892 rho)
    (r3893 : Seg13.relationRow3893 rho)
    (tail : next (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg64 (rho 11019) (rho 11024) (rho 11029) (rho 11034) (rho 11039) (rho 11044) (rho 11049) (rho 11054) (rho 11059) next := by
  exact ⟨rho 11060, rho 11061, rho 11062, rho 11063, rho 11064, r3889, r3890, r3891, r3892, r3893, tail⟩

theorem seg13_scp_node9_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3894 : Seg13.relationRow3894 rho)
    (r3895 : Seg13.relationRow3895 rho)
    (r3896 : Seg13.relationRow3896 rho)
    (r3897 : Seg13.relationRow3897 rho)
    (r3898 : Seg13.relationRow3898 rho)
    (tail : next (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) (rho 11069)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg65 (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) next := by
  exact ⟨rho 11065, rho 11066, rho 11067, rho 11068, rho 11069, r3894, r3895, r3896, r3897, r3898, tail⟩

theorem seg13_scp_node9_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3899 : Seg13.relationRow3899 rho)
    (r3900 : Seg13.relationRow3900 rho)
    (r3901 : Seg13.relationRow3901 rho)
    (r3902 : Seg13.relationRow3902 rho)
    (r3903 : Seg13.relationRow3903 rho)
    (tail : next (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) (rho 11069) (rho 11074)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg66 (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) (rho 11069) next := by
  exact ⟨rho 11070, rho 11071, rho 11072, rho 11073, rho 11074, r3899, r3900, r3901, r3902, r3903, tail⟩

theorem seg13_scp_node9_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3904 : Seg13.relationRow3904 rho)
    (r3905 : Seg13.relationRow3905 rho)
    (r3906 : Seg13.relationRow3906 rho)
    (r3907 : Seg13.relationRow3907 rho)
    (r3908 : Seg13.relationRow3908 rho)
    (tail : next (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) (rho 11069) (rho 11074) (rho 11079)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg67 (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) (rho 11069) (rho 11074) next := by
  exact ⟨rho 11075, rho 11076, rho 11077, rho 11078, rho 11079, r3904, r3905, r3906, r3907, r3908, tail⟩

theorem seg13_scp_node9_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3909 : Seg13.relationRow3909 rho)
    (r3910 : Seg13.relationRow3910 rho)
    (r3911 : Seg13.relationRow3911 rho)
    (r3912 : Seg13.relationRow3912 rho)
    (r3913 : Seg13.relationRow3913 rho)
    (tail : next (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) (rho 11069) (rho 11074) (rho 11079) (rho 11084)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg68 (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) (rho 11069) (rho 11074) (rho 11079) next := by
  exact ⟨rho 11080, rho 11081, rho 11082, rho 11083, rho 11084, r3909, r3910, r3911, r3912, r3913, tail⟩

theorem seg13_scp_node9_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3914 : Seg13.relationRow3914 rho)
    (r3915 : Seg13.relationRow3915 rho)
    (r3916 : Seg13.relationRow3916 rho)
    (r3917 : Seg13.relationRow3917 rho)
    (r3918 : Seg13.relationRow3918 rho)
    (tail : next (rho 11069) (rho 11074) (rho 11079) (rho 11084) (rho 11089)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg69 (rho 11044) (rho 11049) (rho 11054) (rho 11059) (rho 11064) (rho 11069) (rho 11074) (rho 11079) (rho 11084) next := by
  exact ⟨rho 11085, rho 11086, rho 11087, rho 11088, rho 11089, r3914, r3915, r3916, r3917, r3918, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

