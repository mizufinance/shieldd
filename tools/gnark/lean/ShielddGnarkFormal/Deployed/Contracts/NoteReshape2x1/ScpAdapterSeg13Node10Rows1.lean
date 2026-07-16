import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node10_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3983 : Seg13.relationRow3983 rho)
    (r3984 : Seg13.relationRow3984 rho)
    (r3985 : Seg13.relationRow3985 rho)
    (r3986 : Seg13.relationRow3986 rho)
    (r3987 : Seg13.relationRow3987 rho)
    (tail : next (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) (rho 11155) (rho 11160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg10 (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) (rho 11155) next := by
  exact ⟨rho 11156, rho 11157, rho 11158, rho 11159, rho 11160, r3983, r3984, r3985, r3986, r3987, tail⟩

theorem seg13_scp_node10_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3988 : Seg13.relationRow3988 rho)
    (r3989 : Seg13.relationRow3989 rho)
    (r3990 : Seg13.relationRow3990 rho)
    (r3991 : Seg13.relationRow3991 rho)
    (r3992 : Seg13.relationRow3992 rho)
    (tail : next (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) (rho 11155) (rho 11160) (rho 11165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg11 (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) (rho 11155) (rho 11160) next := by
  exact ⟨rho 11161, rho 11162, rho 11163, rho 11164, rho 11165, r3988, r3989, r3990, r3991, r3992, tail⟩

theorem seg13_scp_node10_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3993 : Seg13.relationRow3993 rho)
    (r3994 : Seg13.relationRow3994 rho)
    (r3995 : Seg13.relationRow3995 rho)
    (r3996 : Seg13.relationRow3996 rho)
    (r3997 : Seg13.relationRow3997 rho)
    (tail : next (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) (rho 11155) (rho 11160) (rho 11165) (rho 11170)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg12 (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) (rho 11155) (rho 11160) (rho 11165) next := by
  exact ⟨rho 11166, rho 11167, rho 11168, rho 11169, rho 11170, r3993, r3994, r3995, r3996, r3997, tail⟩

theorem seg13_scp_node10_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3998 : Seg13.relationRow3998 rho)
    (r3999 : Seg13.relationRow3999 rho)
    (r4000 : Seg13.relationRow4000 rho)
    (r4001 : Seg13.relationRow4001 rho)
    (r4002 : Seg13.relationRow4002 rho)
    (tail : next (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg13 (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) (rho 11155) (rho 11160) (rho 11165) (rho 11170) next := by
  exact ⟨rho 11171, rho 11172, rho 11173, rho 11174, rho 11175, r3998, r3999, r4000, r4001, r4002, tail⟩

theorem seg13_scp_node10_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4003 : Seg13.relationRow4003 rho)
    (r4004 : Seg13.relationRow4004 rho)
    (r4005 : Seg13.relationRow4005 rho)
    (r4006 : Seg13.relationRow4006 rho)
    (r4007 : Seg13.relationRow4007 rho)
    (tail : next (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) (rho 11180)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg14 (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) next := by
  exact ⟨rho 11176, rho 11177, rho 11178, rho 11179, rho 11180, r4003, r4004, r4005, r4006, r4007, tail⟩

theorem seg13_scp_node10_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4008 : Seg13.relationRow4008 rho)
    (r4009 : Seg13.relationRow4009 rho)
    (r4010 : Seg13.relationRow4010 rho)
    (r4011 : Seg13.relationRow4011 rho)
    (r4012 : Seg13.relationRow4012 rho)
    (tail : next (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) (rho 11180) (rho 11185)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg15 (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) (rho 11180) next := by
  exact ⟨rho 11181, rho 11182, rho 11183, rho 11184, rho 11185, r4008, r4009, r4010, r4011, r4012, tail⟩

theorem seg13_scp_node10_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4013 : Seg13.relationRow4013 rho)
    (r4014 : Seg13.relationRow4014 rho)
    (r4015 : Seg13.relationRow4015 rho)
    (r4016 : Seg13.relationRow4016 rho)
    (r4017 : Seg13.relationRow4017 rho)
    (tail : next (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) (rho 11180) (rho 11185) (rho 11190)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg16 (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) (rho 11180) (rho 11185) next := by
  exact ⟨rho 11186, rho 11187, rho 11188, rho 11189, rho 11190, r4013, r4014, r4015, r4016, r4017, tail⟩

theorem seg13_scp_node10_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4018 : Seg13.relationRow4018 rho)
    (r4019 : Seg13.relationRow4019 rho)
    (r4020 : Seg13.relationRow4020 rho)
    (r4021 : Seg13.relationRow4021 rho)
    (r4022 : Seg13.relationRow4022 rho)
    (tail : next (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) (rho 11180) (rho 11185) (rho 11190) (rho 11195)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg17 (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) (rho 11180) (rho 11185) (rho 11190) next := by
  exact ⟨rho 11191, rho 11192, rho 11193, rho 11194, rho 11195, r4018, r4019, r4020, r4021, r4022, tail⟩

theorem seg13_scp_node10_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4023 : Seg13.relationRow4023 rho)
    (r4024 : Seg13.relationRow4024 rho)
    (r4025 : Seg13.relationRow4025 rho)
    (r4026 : Seg13.relationRow4026 rho)
    (r4027 : Seg13.relationRow4027 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg18 (rho 11155) (rho 11160) (rho 11165) (rho 11170) (rho 11175) (rho 11180) (rho 11185) (rho 11190) (rho 11195) next := by
  exact ⟨rho 11196, rho 11197, rho 11198, rho 11199, rho 11200, r4023, r4024, r4025, r4026, r4027, tail⟩

theorem seg13_scp_node10_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4028 : Seg13.relationRow4028 rho)
    (r4029 : Seg13.relationRow4029 rho)
    (r4030 : Seg13.relationRow4030 rho)
    (r4031 : Seg13.relationRow4031 rho)
    (r4032 : Seg13.relationRow4032 rho)
    (tail : next (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) (rho 11205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg19 (rho 11180) (rho 11185) (rho 11190) (rho 11195) (rho 11200) next := by
  exact ⟨rho 11201, rho 11202, rho 11203, rho 11204, rho 11205, r4028, r4029, r4030, r4031, r4032, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

