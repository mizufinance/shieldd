import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node10_seg20 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4033 : Seg13.relationRow4033 rho)
    (r4034 : Seg13.relationRow4034 rho)
    (r4035 : Seg13.relationRow4035 rho)
    (r4036 : Seg13.relationRow4036 rho)
    (r4037 : Seg13.relationRow4037 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg20 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) next := by
  exact ⟨rho 11206, rho 11207, rho 11208, rho 11209, rho 11210, r4033, r4034, r4035, r4036, r4037, tail⟩

theorem seg13_scp_node10_seg21 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4038 : Seg13.relationRow4038 rho)
    (r4039 : Seg13.relationRow4039 rho)
    (r4040 : Seg13.relationRow4040 rho)
    (r4041 : Seg13.relationRow4041 rho)
    (r4042 : Seg13.relationRow4042 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg21 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) next := by
  exact ⟨rho 11211, rho 11212, rho 11213, rho 11214, rho 11215, r4038, r4039, r4040, r4041, r4042, tail⟩

theorem seg13_scp_node10_seg22 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4043 : Seg13.relationRow4043 rho)
    (r4044 : Seg13.relationRow4044 rho)
    (r4045 : Seg13.relationRow4045 rho)
    (r4046 : Seg13.relationRow4046 rho)
    (r4047 : Seg13.relationRow4047 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg22 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) next := by
  exact ⟨rho 11216, rho 11217, rho 11218, rho 11219, rho 11220, r4043, r4044, r4045, r4046, r4047, tail⟩

theorem seg13_scp_node10_seg23 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4048 : Seg13.relationRow4048 rho)
    (r4049 : Seg13.relationRow4049 rho)
    (r4050 : Seg13.relationRow4050 rho)
    (r4051 : Seg13.relationRow4051 rho)
    (r4052 : Seg13.relationRow4052 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg23 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) next := by
  exact ⟨rho 11221, rho 11222, rho 11223, rho 11224, rho 11225, r4048, r4049, r4050, r4051, r4052, tail⟩

theorem seg13_scp_node10_seg24 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4053 : Seg13.relationRow4053 rho)
    (r4054 : Seg13.relationRow4054 rho)
    (r4055 : Seg13.relationRow4055 rho)
    (r4056 : Seg13.relationRow4056 rho)
    (r4057 : Seg13.relationRow4057 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg24 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) next := by
  exact ⟨rho 11226, rho 11227, rho 11228, rho 11229, rho 11230, r4053, r4054, r4055, r4056, r4057, tail⟩

theorem seg13_scp_node10_seg25 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4058 : Seg13.relationRow4058 rho)
    (r4059 : Seg13.relationRow4059 rho)
    (r4060 : Seg13.relationRow4060 rho)
    (r4061 : Seg13.relationRow4061 rho)
    (r4062 : Seg13.relationRow4062 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg25 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) next := by
  exact ⟨rho 11231, rho 11232, rho 11233, rho 11234, rho 11235, r4058, r4059, r4060, r4061, r4062, tail⟩

theorem seg13_scp_node10_seg26 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4063 : Seg13.relationRow4063 rho)
    (r4064 : Seg13.relationRow4064 rho)
    (r4065 : Seg13.relationRow4065 rho)
    (r4066 : Seg13.relationRow4066 rho)
    (r4067 : Seg13.relationRow4067 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235) (rho 11240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg26 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235) next := by
  exact ⟨rho 11236, rho 11237, rho 11238, rho 11239, rho 11240, r4063, r4064, r4065, r4066, r4067, tail⟩

theorem seg13_scp_node10_seg27 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4068 : Seg13.relationRow4068 rho)
    (r4069 : Seg13.relationRow4069 rho)
    (r4070 : Seg13.relationRow4070 rho)
    (r4071 : Seg13.relationRow4071 rho)
    (r4072 : Seg13.relationRow4072 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235) (rho 11240) (rho 11245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg27 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235) (rho 11240) next := by
  exact ⟨rho 11241, rho 11242, rho 11243, rho 11244, rho 11245, r4068, r4069, r4070, r4071, r4072, tail⟩

theorem seg13_scp_node10_seg28 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4073 : Seg13.relationRow4073 rho)
    (r4074 : Seg13.relationRow4074 rho)
    (r4075 : Seg13.relationRow4075 rho)
    (r4076 : Seg13.relationRow4076 rho)
    (r4077 : Seg13.relationRow4077 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235) (rho 11240) (rho 11245) (rho 11250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg28 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235) (rho 11240) (rho 11245) next := by
  exact ⟨rho 11246, rho 11247, rho 11248, rho 11249, rho 11250, r4073, r4074, r4075, r4076, r4077, tail⟩

theorem seg13_scp_node10_seg29 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4078 : Seg13.relationRow4078 rho)
    (r4079 : Seg13.relationRow4079 rho)
    (r4080 : Seg13.relationRow4080 rho)
    (r4081 : Seg13.relationRow4081 rho)
    (r4082 : Seg13.relationRow4082 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235) (rho 11240) (rho 11245) (rho 11250) (rho 11255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg29 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205) (rho 11210) (rho 11215) (rho 11220) (rho 11225) (rho 11230) (rho 11235) (rho 11240) (rho 11245) (rho 11250) next := by
  exact ⟨rho 11251, rho 11252, rho 11253, rho 11254, rho 11255, r4078, r4079, r4080, r4081, r4082, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

