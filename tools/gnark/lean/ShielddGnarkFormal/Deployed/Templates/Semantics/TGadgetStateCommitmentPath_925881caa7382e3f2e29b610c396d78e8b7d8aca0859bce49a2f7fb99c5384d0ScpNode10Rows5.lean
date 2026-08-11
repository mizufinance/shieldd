import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node10_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4183 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4183 rho)
    (r4184 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4184 rho)
    (r4185 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4185 rho)
    (r4186 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4186 rho)
    (r4187 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4187 rho)
    (tail : next (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) (rho 4184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg50 (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) next := by
  exact ⟨rho 4180, rho 4181, rho 4182, rho 4183, rho 4184, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4183 at r4183; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc98, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc98Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc98Part1] at r4183; linear_combination r4183), r4184, r4185, r4186, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4187 at r4187; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc98, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc98Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc98Part1] at r4187; linear_combination r4187), tail⟩

theorem template_scp_node10_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4188 rho)
    (r4189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4189 rho)
    (r4190 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4190 rho)
    (r4191 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4191 rho)
    (r4192 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4192 rho)
    (tail : next (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) (rho 4184) (rho 4189)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg51 (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) (rho 4184) next := by
  exact ⟨rho 4185, rho 4186, rho 4187, rho 4188, rho 4189, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4188 at r4188; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc99, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc99Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc99Part1] at r4188; linear_combination r4188), r4189, r4190, r4191, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4192 at r4192; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc99, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc99Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc99Part1] at r4192; linear_combination r4192), tail⟩

theorem template_scp_node10_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4193 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4193 rho)
    (r4194 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4194 rho)
    (r4195 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4195 rho)
    (r4196 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4196 rho)
    (r4197 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4197 rho)
    (tail : next (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) (rho 4184) (rho 4189) (rho 4194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg52 (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) (rho 4184) (rho 4189) next := by
  exact ⟨rho 4190, rho 4191, rho 4192, rho 4193, rho 4194, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4193 at r4193; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc100, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc100Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc100Part1] at r4193; linear_combination r4193), r4194, r4195, r4196, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4197 at r4197; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc100, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc100Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc100Part1] at r4197; linear_combination r4197), tail⟩

theorem template_scp_node10_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4198 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4198 rho)
    (r4199 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4199 rho)
    (r4200 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4200 rho)
    (r4201 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4201 rho)
    (r4202 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4202 rho)
    (tail : next (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) (rho 4184) (rho 4189) (rho 4194) (rho 4199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg53 (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) (rho 4184) (rho 4189) (rho 4194) next := by
  exact ⟨rho 4195, rho 4196, rho 4197, rho 4198, rho 4199, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4198 at r4198; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc101, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc101Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc101Part1] at r4198; linear_combination r4198), r4199, r4200, r4201, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4202 at r4202; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc101, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc101Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc101Part1] at r4202; linear_combination r4202), tail⟩

theorem template_scp_node10_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4203 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4203 rho)
    (r4204 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4204 rho)
    (r4205 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4205 rho)
    (r4206 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4206 rho)
    (r4207 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4207 rho)
    (tail : next (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg54 (rho 4004) (rho 4009) (rho 4014) (rho 4019) (rho 4024) (rho 4029) (rho 4034) (rho 4039) (rho 4044) (rho 4049) (rho 4054) (rho 4059) (rho 4064) (rho 4069) (rho 4074) (rho 4079) (rho 4084) (rho 4089) (rho 4094) (rho 4099) (rho 4104) (rho 4109) (rho 4114) (rho 4119) (rho 4124) (rho 4129) (rho 4134) (rho 4139) (rho 4144) (rho 4149) (rho 4154) (rho 4159) (rho 4164) (rho 4169) (rho 4174) (rho 4179) (rho 4184) (rho 4189) (rho 4194) (rho 4199) next := by
  exact ⟨rho 4200, rho 4201, rho 4202, rho 4203, rho 4204, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4203 at r4203; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc102, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc102Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc102Part1] at r4203; linear_combination r4203), r4204, r4205, r4206, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4207 at r4207; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc102, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc102Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc102Part1] at r4207; linear_combination r4207), tail⟩

theorem template_scp_node10_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4208 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4208 rho)
    (r4209 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4209 rho)
    (r4210 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4210 rho)
    (r4211 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4211 rho)
    (r4212 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4212 rho)
    (tail : next (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) (rho 4209)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg55 (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) next := by
  exact ⟨rho 4205, rho 4206, rho 4207, rho 4208, rho 4209, r4208, r4209, r4210, r4211, r4212, tail⟩

theorem template_scp_node10_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4213 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4213 rho)
    (r4214 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4214 rho)
    (r4215 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4215 rho)
    (r4216 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4216 rho)
    (r4217 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4217 rho)
    (tail : next (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) (rho 4209) (rho 4214)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg56 (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) (rho 4209) next := by
  exact ⟨rho 4210, rho 4211, rho 4212, rho 4213, rho 4214, r4213, r4214, r4215, r4216, r4217, tail⟩

theorem template_scp_node10_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4218 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4218 rho)
    (r4219 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4219 rho)
    (r4220 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4220 rho)
    (r4221 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4221 rho)
    (r4222 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4222 rho)
    (tail : next (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) (rho 4209) (rho 4214) (rho 4219)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg57 (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) (rho 4209) (rho 4214) next := by
  exact ⟨rho 4215, rho 4216, rho 4217, rho 4218, rho 4219, r4218, r4219, r4220, r4221, r4222, tail⟩

theorem template_scp_node10_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4223 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4223 rho)
    (r4224 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4224 rho)
    (r4225 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4225 rho)
    (r4226 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4226 rho)
    (r4227 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4227 rho)
    (tail : next (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) (rho 4209) (rho 4214) (rho 4219) (rho 4224)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg58 (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) (rho 4209) (rho 4214) (rho 4219) next := by
  exact ⟨rho 4220, rho 4221, rho 4222, rho 4223, rho 4224, r4223, r4224, r4225, r4226, r4227, tail⟩

theorem template_scp_node10_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4228 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4228 rho)
    (r4229 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4229 rho)
    (r4230 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4230 rho)
    (r4231 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4231 rho)
    (r4232 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4232 rho)
    (tail : next (rho 4209) (rho 4214) (rho 4219) (rho 4224) (rho 4229)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg59 (rho 4184) (rho 4189) (rho 4194) (rho 4199) (rho 4204) (rho 4209) (rho 4214) (rho 4219) (rho 4224) next := by
  exact ⟨rho 4225, rho 4226, rho 4227, rho 4228, rho 4229, r4228, r4229, r4230, r4231, r4232, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
