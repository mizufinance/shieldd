import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node10_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4233 : Seg13.relationRow4233 rho)
    (r4234 : Seg13.relationRow4234 rho)
    (r4235 : Seg13.relationRow4235 rho)
    (r4236 : Seg13.relationRow4236 rho)
    (r4237 : Seg13.relationRow4237 rho)
    (tail : next (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) (rho 11404)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg60 (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) next := by
  exact ⟨rho 11400, rho 11401, rho 11402, rho 11403, rho 11404, r4233, r4234, r4235, r4236, r4237, tail⟩

theorem seg13_scp_node10_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4238 : Seg13.relationRow4238 rho)
    (r4239 : Seg13.relationRow4239 rho)
    (r4240 : Seg13.relationRow4240 rho)
    (r4241 : Seg13.relationRow4241 rho)
    (r4242 : Seg13.relationRow4242 rho)
    (tail : next (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) (rho 11404) (rho 11409)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg61 (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) (rho 11404) next := by
  exact ⟨rho 11405, rho 11406, rho 11407, rho 11408, rho 11409, r4238, r4239, r4240, r4241, r4242, tail⟩

theorem seg13_scp_node10_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4243 : Seg13.relationRow4243 rho)
    (r4244 : Seg13.relationRow4244 rho)
    (r4245 : Seg13.relationRow4245 rho)
    (r4246 : Seg13.relationRow4246 rho)
    (r4247 : Seg13.relationRow4247 rho)
    (tail : next (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) (rho 11404) (rho 11409) (rho 11414)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg62 (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) (rho 11404) (rho 11409) next := by
  exact ⟨rho 11410, rho 11411, rho 11412, rho 11413, rho 11414, r4243, r4244, r4245, r4246, r4247, tail⟩

theorem seg13_scp_node10_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4248 : Seg13.relationRow4248 rho)
    (r4249 : Seg13.relationRow4249 rho)
    (r4250 : Seg13.relationRow4250 rho)
    (r4251 : Seg13.relationRow4251 rho)
    (r4252 : Seg13.relationRow4252 rho)
    (tail : next (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) (rho 11404) (rho 11409) (rho 11414) (rho 11419)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg63 (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) (rho 11404) (rho 11409) (rho 11414) next := by
  exact ⟨rho 11415, rho 11416, rho 11417, rho 11418, rho 11419, r4248, r4249, r4250, r4251, r4252, tail⟩

theorem seg13_scp_node10_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4253 : Seg13.relationRow4253 rho)
    (r4254 : Seg13.relationRow4254 rho)
    (r4255 : Seg13.relationRow4255 rho)
    (r4256 : Seg13.relationRow4256 rho)
    (r4257 : Seg13.relationRow4257 rho)
    (tail : next (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg64 (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399) (rho 11404) (rho 11409) (rho 11414) (rho 11419) next := by
  exact ⟨rho 11420, rho 11421, rho 11422, rho 11423, rho 11424, r4253, r4254, r4255, r4256, r4257, tail⟩

theorem seg13_scp_node10_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4258 : Seg13.relationRow4258 rho)
    (r4259 : Seg13.relationRow4259 rho)
    (r4260 : Seg13.relationRow4260 rho)
    (r4261 : Seg13.relationRow4261 rho)
    (r4262 : Seg13.relationRow4262 rho)
    (tail : next (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) (rho 11429)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg65 (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) next := by
  exact ⟨rho 11425, rho 11426, rho 11427, rho 11428, rho 11429, r4258, r4259, r4260, r4261, r4262, tail⟩

theorem seg13_scp_node10_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4263 : Seg13.relationRow4263 rho)
    (r4264 : Seg13.relationRow4264 rho)
    (r4265 : Seg13.relationRow4265 rho)
    (r4266 : Seg13.relationRow4266 rho)
    (r4267 : Seg13.relationRow4267 rho)
    (tail : next (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) (rho 11429) (rho 11434)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg66 (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) (rho 11429) next := by
  exact ⟨rho 11430, rho 11431, rho 11432, rho 11433, rho 11434, r4263, r4264, r4265, r4266, r4267, tail⟩

theorem seg13_scp_node10_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4268 : Seg13.relationRow4268 rho)
    (r4269 : Seg13.relationRow4269 rho)
    (r4270 : Seg13.relationRow4270 rho)
    (r4271 : Seg13.relationRow4271 rho)
    (r4272 : Seg13.relationRow4272 rho)
    (tail : next (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) (rho 11429) (rho 11434) (rho 11439)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg67 (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) (rho 11429) (rho 11434) next := by
  exact ⟨rho 11435, rho 11436, rho 11437, rho 11438, rho 11439, r4268, r4269, r4270, r4271, r4272, tail⟩

theorem seg13_scp_node10_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4273 : Seg13.relationRow4273 rho)
    (r4274 : Seg13.relationRow4274 rho)
    (r4275 : Seg13.relationRow4275 rho)
    (r4276 : Seg13.relationRow4276 rho)
    (r4277 : Seg13.relationRow4277 rho)
    (tail : next (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) (rho 11429) (rho 11434) (rho 11439) (rho 11444)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg68 (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) (rho 11429) (rho 11434) (rho 11439) next := by
  exact ⟨rho 11440, rho 11441, rho 11442, rho 11443, rho 11444, r4273, r4274, r4275, r4276, r4277, tail⟩

theorem seg13_scp_node10_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4278 : Seg13.relationRow4278 rho)
    (r4279 : Seg13.relationRow4279 rho)
    (r4280 : Seg13.relationRow4280 rho)
    (r4281 : Seg13.relationRow4281 rho)
    (r4282 : Seg13.relationRow4282 rho)
    (tail : next (rho 11429) (rho 11434) (rho 11439) (rho 11444) (rho 11449)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg69 (rho 11404) (rho 11409) (rho 11414) (rho 11419) (rho 11424) (rho 11429) (rho 11434) (rho 11439) (rho 11444) next := by
  exact ⟨rho 11445, rho 11446, rho 11447, rho 11448, rho 11449, r4278, r4279, r4280, r4281, r4282, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

