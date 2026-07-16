import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node10_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4233 : Seg28.relationRow4233 rho)
    (r4234 : Seg28.relationRow4234 rho)
    (r4235 : Seg28.relationRow4235 rho)
    (r4236 : Seg28.relationRow4236 rho)
    (r4237 : Seg28.relationRow4237 rho)
    (tail : next (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) (rho 23591)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg60 (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) next := by
  exact ⟨rho 23587, rho 23588, rho 23589, rho 23590, rho 23591, r4233, r4234, r4235, r4236, r4237, tail⟩

theorem seg28_scp_node10_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4238 : Seg28.relationRow4238 rho)
    (r4239 : Seg28.relationRow4239 rho)
    (r4240 : Seg28.relationRow4240 rho)
    (r4241 : Seg28.relationRow4241 rho)
    (r4242 : Seg28.relationRow4242 rho)
    (tail : next (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) (rho 23591) (rho 23596)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg61 (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) (rho 23591) next := by
  exact ⟨rho 23592, rho 23593, rho 23594, rho 23595, rho 23596, r4238, r4239, r4240, r4241, r4242, tail⟩

theorem seg28_scp_node10_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4243 : Seg28.relationRow4243 rho)
    (r4244 : Seg28.relationRow4244 rho)
    (r4245 : Seg28.relationRow4245 rho)
    (r4246 : Seg28.relationRow4246 rho)
    (r4247 : Seg28.relationRow4247 rho)
    (tail : next (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) (rho 23591) (rho 23596) (rho 23601)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg62 (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) (rho 23591) (rho 23596) next := by
  exact ⟨rho 23597, rho 23598, rho 23599, rho 23600, rho 23601, r4243, r4244, r4245, r4246, r4247, tail⟩

theorem seg28_scp_node10_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4248 : Seg28.relationRow4248 rho)
    (r4249 : Seg28.relationRow4249 rho)
    (r4250 : Seg28.relationRow4250 rho)
    (r4251 : Seg28.relationRow4251 rho)
    (r4252 : Seg28.relationRow4252 rho)
    (tail : next (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) (rho 23591) (rho 23596) (rho 23601) (rho 23606)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg63 (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) (rho 23591) (rho 23596) (rho 23601) next := by
  exact ⟨rho 23602, rho 23603, rho 23604, rho 23605, rho 23606, r4248, r4249, r4250, r4251, r4252, tail⟩

theorem seg28_scp_node10_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4253 : Seg28.relationRow4253 rho)
    (r4254 : Seg28.relationRow4254 rho)
    (r4255 : Seg28.relationRow4255 rho)
    (r4256 : Seg28.relationRow4256 rho)
    (r4257 : Seg28.relationRow4257 rho)
    (tail : next (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg64 (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586) (rho 23591) (rho 23596) (rho 23601) (rho 23606) next := by
  exact ⟨rho 23607, rho 23608, rho 23609, rho 23610, rho 23611, r4253, r4254, r4255, r4256, r4257, tail⟩

theorem seg28_scp_node10_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4258 : Seg28.relationRow4258 rho)
    (r4259 : Seg28.relationRow4259 rho)
    (r4260 : Seg28.relationRow4260 rho)
    (r4261 : Seg28.relationRow4261 rho)
    (r4262 : Seg28.relationRow4262 rho)
    (tail : next (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) (rho 23616)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg65 (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) next := by
  exact ⟨rho 23612, rho 23613, rho 23614, rho 23615, rho 23616, r4258, r4259, r4260, r4261, r4262, tail⟩

theorem seg28_scp_node10_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4263 : Seg28.relationRow4263 rho)
    (r4264 : Seg28.relationRow4264 rho)
    (r4265 : Seg28.relationRow4265 rho)
    (r4266 : Seg28.relationRow4266 rho)
    (r4267 : Seg28.relationRow4267 rho)
    (tail : next (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) (rho 23616) (rho 23621)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg66 (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) (rho 23616) next := by
  exact ⟨rho 23617, rho 23618, rho 23619, rho 23620, rho 23621, r4263, r4264, r4265, r4266, r4267, tail⟩

theorem seg28_scp_node10_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4268 : Seg28.relationRow4268 rho)
    (r4269 : Seg28.relationRow4269 rho)
    (r4270 : Seg28.relationRow4270 rho)
    (r4271 : Seg28.relationRow4271 rho)
    (r4272 : Seg28.relationRow4272 rho)
    (tail : next (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) (rho 23616) (rho 23621) (rho 23626)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg67 (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) (rho 23616) (rho 23621) next := by
  exact ⟨rho 23622, rho 23623, rho 23624, rho 23625, rho 23626, r4268, r4269, r4270, r4271, r4272, tail⟩

theorem seg28_scp_node10_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4273 : Seg28.relationRow4273 rho)
    (r4274 : Seg28.relationRow4274 rho)
    (r4275 : Seg28.relationRow4275 rho)
    (r4276 : Seg28.relationRow4276 rho)
    (r4277 : Seg28.relationRow4277 rho)
    (tail : next (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) (rho 23616) (rho 23621) (rho 23626) (rho 23631)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg68 (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) (rho 23616) (rho 23621) (rho 23626) next := by
  exact ⟨rho 23627, rho 23628, rho 23629, rho 23630, rho 23631, r4273, r4274, r4275, r4276, r4277, tail⟩

theorem seg28_scp_node10_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4278 : Seg28.relationRow4278 rho)
    (r4279 : Seg28.relationRow4279 rho)
    (r4280 : Seg28.relationRow4280 rho)
    (r4281 : Seg28.relationRow4281 rho)
    (r4282 : Seg28.relationRow4282 rho)
    (tail : next (rho 23616) (rho 23621) (rho 23626) (rho 23631) (rho 23636)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg69 (rho 23591) (rho 23596) (rho 23601) (rho 23606) (rho 23611) (rho 23616) (rho 23621) (rho 23626) (rho 23631) next := by
  exact ⟨rho 23632, rho 23633, rho 23634, rho 23635, rho 23636, r4278, r4279, r4280, r4281, r4282, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

