import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node11_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4297 : Seg28.relationRow4297 rho)
    (r4298 : Seg28.relationRow4298 rho)
    (r4299 : Seg28.relationRow4299 rho)
    (r4300 : Seg28.relationRow4300 rho)
    (r4301 : Seg28.relationRow4301 rho)
    (tail : next (rho 152) (rho 153) (rho 23642) (rho 23643) (rho 23644) (rho 23645) (rho 23646) (rho 23651)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg0 (rho 151) (rho 152) (rho 153) (rho 23641) (rho 23642) (rho 23643) (rho 23644) (rho 23645) (rho 23646) next := by
  exact ⟨rho 23647, rho 23648, rho 23649, rho 23650, rho 23651, r4297, r4298, r4299, r4300, r4301, tail⟩

theorem seg28_scp_node11_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4302 : Seg28.relationRow4302 rho)
    (r4303 : Seg28.relationRow4303 rho)
    (r4304 : Seg28.relationRow4304 rho)
    (r4305 : Seg28.relationRow4305 rho)
    (r4306 : Seg28.relationRow4306 rho)
    (tail : next (rho 152) (rho 153) (rho 23644) (rho 23645) (rho 23646) (rho 23651) (rho 23656)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg1 (rho 152) (rho 153) (rho 23642) (rho 23643) (rho 23644) (rho 23645) (rho 23646) (rho 23651) next := by
  exact ⟨rho 23652, rho 23653, rho 23654, rho 23655, rho 23656, r4302, r4303, r4304, r4305, r4306, tail⟩

theorem seg28_scp_node11_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4307 : Seg28.relationRow4307 rho)
    (r4308 : Seg28.relationRow4308 rho)
    (r4309 : Seg28.relationRow4309 rho)
    (r4310 : Seg28.relationRow4310 rho)
    (r4311 : Seg28.relationRow4311 rho)
    (tail : next (rho 153) (rho 23646) (rho 23651) (rho 23656) (rho 23661)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg2 (rho 152) (rho 153) (rho 23644) (rho 23645) (rho 23646) (rho 23651) (rho 23656) next := by
  exact ⟨rho 23657, rho 23658, rho 23659, rho 23660, rho 23661, r4307, r4308, r4309, r4310, r4311, tail⟩

theorem seg28_scp_node11_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4312 : Seg28.relationRow4312 rho)
    (r4313 : Seg28.relationRow4313 rho)
    (r4314 : Seg28.relationRow4314 rho)
    (r4315 : Seg28.relationRow4315 rho)
    (r4316 : Seg28.relationRow4316 rho)
    (tail : next (rho 23651) (rho 23656) (rho 23661) (rho 23666)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg3 (rho 153) (rho 23646) (rho 23651) (rho 23656) (rho 23661) next := by
  exact ⟨rho 23662, rho 23663, rho 23664, rho 23665, rho 23666, r4312, r4313, r4314, r4315, r4316, tail⟩

theorem seg28_scp_node11_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4317 : Seg28.relationRow4317 rho)
    (r4318 : Seg28.relationRow4318 rho)
    (r4319 : Seg28.relationRow4319 rho)
    (r4320 : Seg28.relationRow4320 rho)
    (r4321 : Seg28.relationRow4321 rho)
    (tail : next (rho 23651) (rho 23656) (rho 23661) (rho 23666) (rho 23671)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg4 (rho 23651) (rho 23656) (rho 23661) (rho 23666) next := by
  exact ⟨rho 23667, rho 23668, rho 23669, rho 23670, rho 23671, r4317, r4318, r4319, r4320, r4321, tail⟩

theorem seg28_scp_node11_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4322 : Seg28.relationRow4322 rho)
    (r4323 : Seg28.relationRow4323 rho)
    (r4324 : Seg28.relationRow4324 rho)
    (r4325 : Seg28.relationRow4325 rho)
    (r4326 : Seg28.relationRow4326 rho)
    (tail : next (rho 23651) (rho 23656) (rho 23661) (rho 23666) (rho 23671) (rho 23676)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg5 (rho 23651) (rho 23656) (rho 23661) (rho 23666) (rho 23671) next := by
  exact ⟨rho 23672, rho 23673, rho 23674, rho 23675, rho 23676, r4322, r4323, r4324, r4325, r4326, tail⟩

theorem seg28_scp_node11_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4327 : Seg28.relationRow4327 rho)
    (r4328 : Seg28.relationRow4328 rho)
    (r4329 : Seg28.relationRow4329 rho)
    (r4330 : Seg28.relationRow4330 rho)
    (r4331 : Seg28.relationRow4331 rho)
    (tail : next (rho 23651) (rho 23656) (rho 23661) (rho 23666) (rho 23671) (rho 23676) (rho 23681)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg6 (rho 23651) (rho 23656) (rho 23661) (rho 23666) (rho 23671) (rho 23676) next := by
  exact ⟨rho 23677, rho 23678, rho 23679, rho 23680, rho 23681, r4327, r4328, r4329, r4330, r4331, tail⟩

theorem seg28_scp_node11_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4332 : Seg28.relationRow4332 rho)
    (r4333 : Seg28.relationRow4333 rho)
    (r4334 : Seg28.relationRow4334 rho)
    (r4335 : Seg28.relationRow4335 rho)
    (r4336 : Seg28.relationRow4336 rho)
    (tail : next (rho 23651) (rho 23656) (rho 23661) (rho 23666) (rho 23671) (rho 23676) (rho 23681) (rho 23686)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg7 (rho 23651) (rho 23656) (rho 23661) (rho 23666) (rho 23671) (rho 23676) (rho 23681) next := by
  exact ⟨rho 23682, rho 23683, rho 23684, rho 23685, rho 23686, r4332, r4333, r4334, r4335, r4336, tail⟩

theorem seg28_scp_node11_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4337 : Seg28.relationRow4337 rho)
    (r4338 : Seg28.relationRow4338 rho)
    (r4339 : Seg28.relationRow4339 rho)
    (r4340 : Seg28.relationRow4340 rho)
    (r4341 : Seg28.relationRow4341 rho)
    (tail : next (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg8 (rho 23651) (rho 23656) (rho 23661) (rho 23666) (rho 23671) (rho 23676) (rho 23681) (rho 23686) next := by
  exact ⟨rho 23687, rho 23688, rho 23689, rho 23690, rho 23691, r4337, r4338, r4339, r4340, r4341, tail⟩

theorem seg28_scp_node11_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4342 : Seg28.relationRow4342 rho)
    (r4343 : Seg28.relationRow4343 rho)
    (r4344 : Seg28.relationRow4344 rho)
    (r4345 : Seg28.relationRow4345 rho)
    (r4346 : Seg28.relationRow4346 rho)
    (tail : next (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) (rho 23696)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg9 (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) next := by
  exact ⟨rho 23692, rho 23693, rho 23694, rho 23695, rho 23696, r4342, r4343, r4344, r4345, r4346, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

