import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node10_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4033 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4033 rho)
    (r4034 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4034 rho)
    (r4035 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4035 rho)
    (r4036 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4036 rho)
    (r4037 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4037 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg20 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) next := by
  exact ⟨rho 4029, rho 4030, rho 4031, rho 4032, rho 4033, r4033, r4034, r4035, r4036, r4037, tail⟩

theorem template_scp_node10_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4038 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4038 rho)
    (r4039 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4039 rho)
    (r4040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4040 rho)
    (r4041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4041 rho)
    (r4042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4042 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg21 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) next := by
  exact ⟨rho 4034, rho 4035, rho 4036, rho 4037, rho 4038, r4038, r4039, r4040, r4041, r4042, tail⟩

theorem template_scp_node10_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4043 rho)
    (r4044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4044 rho)
    (r4045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4045 rho)
    (r4046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4046 rho)
    (r4047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4047 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg22 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) next := by
  exact ⟨rho 4039, rho 4040, rho 4041, rho 4042, rho 4043, r4043, r4044, r4045, r4046, r4047, tail⟩

theorem template_scp_node10_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r4048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4048 rho)
    (r4049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4049 rho)
    (r4050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4050 rho)
    (r4051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4051 rho)
    (r4052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4052 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg23 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) next := by
  exact ⟨rho 4044, rho 4045, rho 4046, rho 4047, rho 4048, r4048, r4049, r4050, r4051, r4052, tail⟩

theorem template_scp_node10_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4053 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4053 rho)
    (r4054 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4054 rho)
    (r4055 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4055 rho)
    (r4056 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4056 rho)
    (r4057 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4057 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg24 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) next := by
  exact ⟨rho 4049, rho 4050, rho 4051, rho 4052, rho 4053, r4053, r4054, r4055, r4056, r4057, tail⟩

theorem template_scp_node10_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4058 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4058 rho)
    (r4059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4059 rho)
    (r4060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4060 rho)
    (r4061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4061 rho)
    (r4062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4062 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg25 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) next := by
  exact ⟨rho 4054, rho 4055, rho 4056, rho 4057, rho 4058, r4058, r4059, r4060, r4061, r4062, tail⟩

theorem template_scp_node10_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4063 rho)
    (r4064 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4064 rho)
    (r4065 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4065 rho)
    (r4066 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4066 rho)
    (r4067 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4067 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058) (rho 4063)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg26 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058) next := by
  exact ⟨rho 4059, rho 4060, rho 4061, rho 4062, rho 4063, r4063, r4064, r4065, r4066, r4067, tail⟩

theorem template_scp_node10_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4068 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4068 rho)
    (r4069 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4069 rho)
    (r4070 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4070 rho)
    (r4071 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4071 rho)
    (r4072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4072 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058) (rho 4063) (rho 4068)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg27 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058) (rho 4063) next := by
  exact ⟨rho 4064, rho 4065, rho 4066, rho 4067, rho 4068, r4068, r4069, r4070, r4071, r4072, tail⟩

theorem template_scp_node10_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4073 rho)
    (r4074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4074 rho)
    (r4075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4075 rho)
    (r4076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4076 rho)
    (r4077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4077 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058) (rho 4063) (rho 4068) (rho 4073)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg28 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058) (rho 4063) (rho 4068) next := by
  exact ⟨rho 4069, rho 4070, rho 4071, rho 4072, rho 4073, r4073, r4074, r4075, r4076, r4077, tail⟩

theorem template_scp_node10_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4078 rho)
    (r4079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4079 rho)
    (r4080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4080 rho)
    (r4081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4081 rho)
    (r4082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4082 rho)
    (tail : next (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058) (rho 4063) (rho 4068) (rho 4073) (rho 4078)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg29 (rho 4003) (rho 4008) (rho 4013) (rho 4018) (rho 4023) (rho 4028) (rho 4033) (rho 4038) (rho 4043) (rho 4048) (rho 4053) (rho 4058) (rho 4063) (rho 4068) (rho 4073) next := by
  exact ⟨rho 4074, rho 4075, rho 4076, rho 4077, rho 4078, r4078, r4079, r4080, r4081, r4082, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
