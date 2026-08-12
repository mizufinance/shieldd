import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node10_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4233 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4233 rho)
    (r4234 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4234 rho)
    (r4235 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4235 rho)
    (r4236 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4236 rho)
    (r4237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4237 rho)
    (tail : next (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) (rho 4233)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg60 (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) next := by
  exact ⟨rho 4229, rho 4230, rho 4231, rho 4232, rho 4233, r4233, r4234, r4235, r4236, r4237, tail⟩

theorem template_scp_node10_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4238 rho)
    (r4239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4239 rho)
    (r4240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4240 rho)
    (r4241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4241 rho)
    (r4242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4242 rho)
    (tail : next (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) (rho 4233) (rho 4238)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg61 (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) (rho 4233) next := by
  exact ⟨rho 4234, rho 4235, rho 4236, rho 4237, rho 4238, r4238, r4239, r4240, r4241, r4242, tail⟩

theorem template_scp_node10_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4243 rho)
    (r4244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4244 rho)
    (r4245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4245 rho)
    (r4246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4246 rho)
    (r4247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4247 rho)
    (tail : next (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) (rho 4233) (rho 4238) (rho 4243)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg62 (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) (rho 4233) (rho 4238) next := by
  exact ⟨rho 4239, rho 4240, rho 4241, rho 4242, rho 4243, r4243, r4244, r4245, r4246, r4247, tail⟩

theorem template_scp_node10_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4248 rho)
    (r4249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4249 rho)
    (r4250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4250 rho)
    (r4251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4251 rho)
    (r4252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4252 rho)
    (tail : next (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) (rho 4233) (rho 4238) (rho 4243) (rho 4248)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg63 (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) (rho 4233) (rho 4238) (rho 4243) next := by
  exact ⟨rho 4244, rho 4245, rho 4246, rho 4247, rho 4248, r4248, r4249, r4250, r4251, r4252, tail⟩

theorem template_scp_node10_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4253 rho)
    (r4254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4254 rho)
    (r4255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4255 rho)
    (r4256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4256 rho)
    (r4257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4257 rho)
    (tail : next (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg64 (rho 4208) (rho 4213) (rho 4218) (rho 4223) (rho 4228) (rho 4233) (rho 4238) (rho 4243) (rho 4248) next := by
  exact ⟨rho 4249, rho 4250, rho 4251, rho 4252, rho 4253, r4253, r4254, r4255, r4256, r4257, tail⟩

theorem template_scp_node10_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4258 rho)
    (r4259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4259 rho)
    (r4260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4260 rho)
    (r4261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4261 rho)
    (r4262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4262 rho)
    (tail : next (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) (rho 4258)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg65 (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) next := by
  exact ⟨rho 4254, rho 4255, rho 4256, rho 4257, rho 4258, r4258, r4259, r4260, r4261, r4262, tail⟩

theorem template_scp_node10_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4263 rho)
    (r4264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4264 rho)
    (r4265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4265 rho)
    (r4266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4266 rho)
    (r4267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4267 rho)
    (tail : next (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) (rho 4258) (rho 4263)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg66 (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) (rho 4258) next := by
  exact ⟨rho 4259, rho 4260, rho 4261, rho 4262, rho 4263, r4263, r4264, r4265, r4266, r4267, tail⟩

theorem template_scp_node10_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4268 rho)
    (r4269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4269 rho)
    (r4270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4270 rho)
    (r4271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4271 rho)
    (r4272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4272 rho)
    (tail : next (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) (rho 4258) (rho 4263) (rho 4268)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg67 (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) (rho 4258) (rho 4263) next := by
  exact ⟨rho 4264, rho 4265, rho 4266, rho 4267, rho 4268, r4268, r4269, r4270, r4271, r4272, tail⟩

theorem template_scp_node10_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4273 rho)
    (r4274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4274 rho)
    (r4275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4275 rho)
    (r4276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4276 rho)
    (r4277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4277 rho)
    (tail : next (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) (rho 4258) (rho 4263) (rho 4268) (rho 4273)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg68 (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) (rho 4258) (rho 4263) (rho 4268) next := by
  exact ⟨rho 4269, rho 4270, rho 4271, rho 4272, rho 4273, r4273, r4274, r4275, r4276, r4277, tail⟩

theorem template_scp_node10_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4278 rho)
    (r4279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4279 rho)
    (r4280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4280 rho)
    (r4281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4281 rho)
    (r4282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow4282 rho)
    (tail : next (rho 4258) (rho 4263) (rho 4268) (rho 4273) (rho 4278)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg69 (rho 4233) (rho 4238) (rho 4243) (rho 4248) (rho 4253) (rho 4258) (rho 4263) (rho 4268) (rho 4273) next := by
  exact ⟨rho 4274, rho 4275, rho 4276, rho 4277, rho 4278, r4278, r4279, r4280, r4281, r4282, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
