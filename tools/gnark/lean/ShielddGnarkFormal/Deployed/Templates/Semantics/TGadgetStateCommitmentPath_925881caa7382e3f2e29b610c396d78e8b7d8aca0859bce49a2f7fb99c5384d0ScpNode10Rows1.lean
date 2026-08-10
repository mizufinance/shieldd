import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node10_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3983 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3983 rho)
    (r3984 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3984 rho)
    (r3985 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3985 rho)
    (r3986 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3986 rho)
    (r3987 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3987 rho)
    (tail : next (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) (rho 3979) (rho 3984)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg10 (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) (rho 3979) next := by
  exact ⟨rho 3980, rho 3981, rho 3982, rho 3983, rho 3984, r3983, r3984, r3985, r3986, r3987, tail⟩

theorem template_scp_node10_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3988 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3988 rho)
    (r3989 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3989 rho)
    (r3990 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3990 rho)
    (r3991 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3991 rho)
    (r3992 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3992 rho)
    (tail : next (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) (rho 3979) (rho 3984) (rho 3989)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg11 (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) (rho 3979) (rho 3984) next := by
  exact ⟨rho 3985, rho 3986, rho 3987, rho 3988, rho 3989, r3988, r3989, r3990, r3991, r3992, tail⟩

theorem template_scp_node10_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3993 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3993 rho)
    (r3994 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3994 rho)
    (r3995 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3995 rho)
    (r3996 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3996 rho)
    (r3997 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3997 rho)
    (tail : next (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) (rho 3979) (rho 3984) (rho 3989) (rho 3994)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg12 (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) (rho 3979) (rho 3984) (rho 3989) next := by
  exact ⟨rho 3990, rho 3991, rho 3992, rho 3993, rho 3994, r3993, r3994, r3995, r3996, r3997, tail⟩

theorem template_scp_node10_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3998 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3998 rho)
    (r3999 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3999 rho)
    (r4000 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4000 rho)
    (r4001 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4001 rho)
    (r4002 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4002 rho)
    (tail : next (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg13 (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) (rho 3979) (rho 3984) (rho 3989) (rho 3994) next := by
  exact ⟨rho 3995, rho 3996, rho 3997, rho 3998, rho 3999, r3998, r3999, r4000, r4001, r4002, tail⟩

theorem template_scp_node10_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4003 rho)
    (r4004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4004 rho)
    (r4005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4005 rho)
    (r4006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4006 rho)
    (r4007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4007 rho)
    (tail : next (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) (rho 4004)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg14 (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) next := by
  exact ⟨rho 4000, rho 4001, rho 4002, rho 4003, rho 4004, r4003, r4004, r4005, r4006, r4007, tail⟩

theorem template_scp_node10_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4008 rho)
    (r4009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4009 rho)
    (r4010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4010 rho)
    (r4011 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4011 rho)
    (r4012 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4012 rho)
    (tail : next (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) (rho 4004) (rho 4009)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg15 (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) (rho 4004) next := by
  exact ⟨rho 4005, rho 4006, rho 4007, rho 4008, rho 4009, r4008, r4009, r4010, r4011, r4012, tail⟩

theorem template_scp_node10_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4013 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4013 rho)
    (r4014 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4014 rho)
    (r4015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4015 rho)
    (r4016 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4016 rho)
    (r4017 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4017 rho)
    (tail : next (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) (rho 4004) (rho 4009) (rho 4014)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg16 (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) (rho 4004) (rho 4009) next := by
  exact ⟨rho 4010, rho 4011, rho 4012, rho 4013, rho 4014, r4013, r4014, r4015, r4016, r4017, tail⟩

theorem template_scp_node10_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4018 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4018 rho)
    (r4019 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4019 rho)
    (r4020 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4020 rho)
    (r4021 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4021 rho)
    (r4022 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4022 rho)
    (tail : next (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) (rho 4004) (rho 4009) (rho 4014) (rho 4019)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg17 (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) (rho 4004) (rho 4009) (rho 4014) next := by
  exact ⟨rho 4015, rho 4016, rho 4017, rho 4018, rho 4019, r4018, r4019, r4020, r4021, r4022, tail⟩

theorem template_scp_node10_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4023 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4023 rho)
    (r4024 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4024 rho)
    (r4025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4025 rho)
    (r4026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4026 rho)
    (r4027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4027 rho)
    (tail : next (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg18 (rho 3979) (rho 3984) (rho 3989) (rho 3994) (rho 3999) (rho 4004) (rho 4009) (rho 4014) (rho 4019) next := by
  exact ⟨rho 4020, rho 4021, rho 4022, rho 4023, rho 4024, r4023, r4024, r4025, r4026, r4027, tail⟩

theorem template_scp_node10_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4028 rho)
    (r4029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4029 rho)
    (r4030 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4030 rho)
    (r4031 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4031 rho)
    (r4032 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4032 rho)
    (tail : next (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg19 (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) next := by
  exact ⟨rho 4025, rho 4026, rho 4027, rho 4028, rho 4029, r4028, r4029, r4030, r4031, r4032, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
