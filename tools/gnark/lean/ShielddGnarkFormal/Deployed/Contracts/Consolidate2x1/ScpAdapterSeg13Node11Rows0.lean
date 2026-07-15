import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node11_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4297 : Seg13.relationRow4297 rho)
    (r4298 : Seg13.relationRow4298 rho)
    (r4299 : Seg13.relationRow4299 rho)
    (r4300 : Seg13.relationRow4300 rho)
    (r4301 : Seg13.relationRow4301 rho)
    (tail : next (rho 62) (rho 63) (rho 11461) (rho 11462) (rho 11463) (rho 11464) (rho 11465) (rho 11470)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg0 (rho 61) (rho 62) (rho 63) (rho 11460) (rho 11461) (rho 11462) (rho 11463) (rho 11464) (rho 11465) next := by
  exact ⟨rho 11466, rho 11467, rho 11468, rho 11469, rho 11470, r4297, r4298, r4299, r4300, r4301, tail⟩

theorem seg13_scp_node11_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4302 : Seg13.relationRow4302 rho)
    (r4303 : Seg13.relationRow4303 rho)
    (r4304 : Seg13.relationRow4304 rho)
    (r4305 : Seg13.relationRow4305 rho)
    (r4306 : Seg13.relationRow4306 rho)
    (tail : next (rho 62) (rho 63) (rho 11463) (rho 11464) (rho 11465) (rho 11470) (rho 11475)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg1 (rho 62) (rho 63) (rho 11461) (rho 11462) (rho 11463) (rho 11464) (rho 11465) (rho 11470) next := by
  exact ⟨rho 11471, rho 11472, rho 11473, rho 11474, rho 11475, r4302, r4303, r4304, r4305, r4306, tail⟩

theorem seg13_scp_node11_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4307 : Seg13.relationRow4307 rho)
    (r4308 : Seg13.relationRow4308 rho)
    (r4309 : Seg13.relationRow4309 rho)
    (r4310 : Seg13.relationRow4310 rho)
    (r4311 : Seg13.relationRow4311 rho)
    (tail : next (rho 63) (rho 11465) (rho 11470) (rho 11475) (rho 11480)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg2 (rho 62) (rho 63) (rho 11463) (rho 11464) (rho 11465) (rho 11470) (rho 11475) next := by
  exact ⟨rho 11476, rho 11477, rho 11478, rho 11479, rho 11480, r4307, r4308, r4309, r4310, r4311, tail⟩

theorem seg13_scp_node11_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4312 : Seg13.relationRow4312 rho)
    (r4313 : Seg13.relationRow4313 rho)
    (r4314 : Seg13.relationRow4314 rho)
    (r4315 : Seg13.relationRow4315 rho)
    (r4316 : Seg13.relationRow4316 rho)
    (tail : next (rho 11470) (rho 11475) (rho 11480) (rho 11485)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg3 (rho 63) (rho 11465) (rho 11470) (rho 11475) (rho 11480) next := by
  exact ⟨rho 11481, rho 11482, rho 11483, rho 11484, rho 11485, r4312, r4313, r4314, r4315, r4316, tail⟩

theorem seg13_scp_node11_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4317 : Seg13.relationRow4317 rho)
    (r4318 : Seg13.relationRow4318 rho)
    (r4319 : Seg13.relationRow4319 rho)
    (r4320 : Seg13.relationRow4320 rho)
    (r4321 : Seg13.relationRow4321 rho)
    (tail : next (rho 11470) (rho 11475) (rho 11480) (rho 11485) (rho 11490)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg4 (rho 11470) (rho 11475) (rho 11480) (rho 11485) next := by
  exact ⟨rho 11486, rho 11487, rho 11488, rho 11489, rho 11490, r4317, r4318, r4319, r4320, r4321, tail⟩

theorem seg13_scp_node11_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4322 : Seg13.relationRow4322 rho)
    (r4323 : Seg13.relationRow4323 rho)
    (r4324 : Seg13.relationRow4324 rho)
    (r4325 : Seg13.relationRow4325 rho)
    (r4326 : Seg13.relationRow4326 rho)
    (tail : next (rho 11470) (rho 11475) (rho 11480) (rho 11485) (rho 11490) (rho 11495)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg5 (rho 11470) (rho 11475) (rho 11480) (rho 11485) (rho 11490) next := by
  exact ⟨rho 11491, rho 11492, rho 11493, rho 11494, rho 11495, r4322, r4323, r4324, r4325, r4326, tail⟩

theorem seg13_scp_node11_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4327 : Seg13.relationRow4327 rho)
    (r4328 : Seg13.relationRow4328 rho)
    (r4329 : Seg13.relationRow4329 rho)
    (r4330 : Seg13.relationRow4330 rho)
    (r4331 : Seg13.relationRow4331 rho)
    (tail : next (rho 11470) (rho 11475) (rho 11480) (rho 11485) (rho 11490) (rho 11495) (rho 11500)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg6 (rho 11470) (rho 11475) (rho 11480) (rho 11485) (rho 11490) (rho 11495) next := by
  exact ⟨rho 11496, rho 11497, rho 11498, rho 11499, rho 11500, r4327, r4328, r4329, r4330, r4331, tail⟩

theorem seg13_scp_node11_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4332 : Seg13.relationRow4332 rho)
    (r4333 : Seg13.relationRow4333 rho)
    (r4334 : Seg13.relationRow4334 rho)
    (r4335 : Seg13.relationRow4335 rho)
    (r4336 : Seg13.relationRow4336 rho)
    (tail : next (rho 11470) (rho 11475) (rho 11480) (rho 11485) (rho 11490) (rho 11495) (rho 11500) (rho 11505)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg7 (rho 11470) (rho 11475) (rho 11480) (rho 11485) (rho 11490) (rho 11495) (rho 11500) next := by
  exact ⟨rho 11501, rho 11502, rho 11503, rho 11504, rho 11505, r4332, r4333, r4334, r4335, r4336, tail⟩

theorem seg13_scp_node11_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4337 : Seg13.relationRow4337 rho)
    (r4338 : Seg13.relationRow4338 rho)
    (r4339 : Seg13.relationRow4339 rho)
    (r4340 : Seg13.relationRow4340 rho)
    (r4341 : Seg13.relationRow4341 rho)
    (tail : next (rho 11490) (rho 11495) (rho 11500) (rho 11505) (rho 11510)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg8 (rho 11470) (rho 11475) (rho 11480) (rho 11485) (rho 11490) (rho 11495) (rho 11500) (rho 11505) next := by
  exact ⟨rho 11506, rho 11507, rho 11508, rho 11509, rho 11510, r4337, r4338, r4339, r4340, r4341, tail⟩

theorem seg13_scp_node11_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4342 : Seg13.relationRow4342 rho)
    (r4343 : Seg13.relationRow4343 rho)
    (r4344 : Seg13.relationRow4344 rho)
    (r4345 : Seg13.relationRow4345 rho)
    (r4346 : Seg13.relationRow4346 rho)
    (tail : next (rho 11490) (rho 11495) (rho 11500) (rho 11505) (rho 11510) (rho 11515)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg9 (rho 11490) (rho 11495) (rho 11500) (rho 11505) (rho 11510) next := by
  exact ⟨rho 11511, rho 11512, rho 11513, rho 11514, rho 11515, r4342, r4343, r4344, r4345, r4346, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

