import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node10_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4183 : Seg28.relationRow4183 rho)
    (r4184 : Seg28.relationRow4184 rho)
    (r4185 : Seg28.relationRow4185 rho)
    (r4186 : Seg28.relationRow4186 rho)
    (r4187 : Seg28.relationRow4187 rho)
    (tail : next (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) (rho 23535)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg50 (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) next := by
  exact ⟨rho 23531, rho 23532, rho 23533, rho 23534, rho 23535, r4183, r4184, r4185, r4186, r4187, tail⟩

theorem seg28_scp_node10_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4188 : Seg28.relationRow4188 rho)
    (r4189 : Seg28.relationRow4189 rho)
    (r4190 : Seg28.relationRow4190 rho)
    (r4191 : Seg28.relationRow4191 rho)
    (r4192 : Seg28.relationRow4192 rho)
    (tail : next (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) (rho 23535) (rho 23540)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg51 (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) (rho 23535) next := by
  exact ⟨rho 23536, rho 23537, rho 23538, rho 23539, rho 23540, r4188, r4189, r4190, r4191, r4192, tail⟩

theorem seg28_scp_node10_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4193 : Seg28.relationRow4193 rho)
    (r4194 : Seg28.relationRow4194 rho)
    (r4195 : Seg28.relationRow4195 rho)
    (r4196 : Seg28.relationRow4196 rho)
    (r4197 : Seg28.relationRow4197 rho)
    (tail : next (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) (rho 23535) (rho 23540) (rho 23545)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg52 (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) (rho 23535) (rho 23540) next := by
  exact ⟨rho 23541, rho 23542, rho 23543, rho 23544, rho 23545, r4193, r4194, r4195, r4196, r4197, tail⟩

theorem seg28_scp_node10_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4198 : Seg28.relationRow4198 rho)
    (r4199 : Seg28.relationRow4199 rho)
    (r4200 : Seg28.relationRow4200 rho)
    (r4201 : Seg28.relationRow4201 rho)
    (r4202 : Seg28.relationRow4202 rho)
    (tail : next (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) (rho 23535) (rho 23540) (rho 23545) (rho 23550)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg53 (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) (rho 23535) (rho 23540) (rho 23545) next := by
  exact ⟨rho 23546, rho 23547, rho 23548, rho 23549, rho 23550, r4198, r4199, r4200, r4201, r4202, tail⟩

theorem seg28_scp_node10_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4203 : Seg28.relationRow4203 rho)
    (r4204 : Seg28.relationRow4204 rho)
    (r4205 : Seg28.relationRow4205 rho)
    (r4206 : Seg28.relationRow4206 rho)
    (r4207 : Seg28.relationRow4207 rho)
    (tail : next (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg54 (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380) (rho 23385) (rho 23390) (rho 23395) (rho 23400) (rho 23405) (rho 23410) (rho 23415) (rho 23420) (rho 23425) (rho 23430) (rho 23435) (rho 23440) (rho 23445) (rho 23450) (rho 23455) (rho 23460) (rho 23465) (rho 23470) (rho 23475) (rho 23480) (rho 23485) (rho 23490) (rho 23495) (rho 23500) (rho 23505) (rho 23510) (rho 23515) (rho 23520) (rho 23525) (rho 23530) (rho 23535) (rho 23540) (rho 23545) (rho 23550) next := by
  exact ⟨rho 23551, rho 23552, rho 23553, rho 23554, rho 23555, r4203, r4204, r4205, r4206, r4207, tail⟩

theorem seg28_scp_node10_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4208 : Seg28.relationRow4208 rho)
    (r4209 : Seg28.relationRow4209 rho)
    (r4210 : Seg28.relationRow4210 rho)
    (r4211 : Seg28.relationRow4211 rho)
    (r4212 : Seg28.relationRow4212 rho)
    (tail : next (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) (rho 23560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg55 (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) next := by
  exact ⟨rho 23556, rho 23557, rho 23558, rho 23559, rho 23560, r4208, r4209, r4210, r4211, r4212, tail⟩

theorem seg28_scp_node10_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4213 : Seg28.relationRow4213 rho)
    (r4214 : Seg28.relationRow4214 rho)
    (r4215 : Seg28.relationRow4215 rho)
    (r4216 : Seg28.relationRow4216 rho)
    (r4217 : Seg28.relationRow4217 rho)
    (tail : next (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) (rho 23560) (rho 23565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg56 (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) (rho 23560) next := by
  exact ⟨rho 23561, rho 23562, rho 23563, rho 23564, rho 23565, r4213, r4214, r4215, r4216, r4217, tail⟩

theorem seg28_scp_node10_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4218 : Seg28.relationRow4218 rho)
    (r4219 : Seg28.relationRow4219 rho)
    (r4220 : Seg28.relationRow4220 rho)
    (r4221 : Seg28.relationRow4221 rho)
    (r4222 : Seg28.relationRow4222 rho)
    (tail : next (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) (rho 23560) (rho 23565) (rho 23570)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg57 (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) (rho 23560) (rho 23565) next := by
  exact ⟨rho 23566, rho 23567, rho 23568, rho 23569, rho 23570, r4218, r4219, r4220, r4221, r4222, tail⟩

theorem seg28_scp_node10_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4223 : Seg28.relationRow4223 rho)
    (r4224 : Seg28.relationRow4224 rho)
    (r4225 : Seg28.relationRow4225 rho)
    (r4226 : Seg28.relationRow4226 rho)
    (r4227 : Seg28.relationRow4227 rho)
    (tail : next (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) (rho 23560) (rho 23565) (rho 23570) (rho 23575)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg58 (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) (rho 23560) (rho 23565) (rho 23570) next := by
  exact ⟨rho 23571, rho 23572, rho 23573, rho 23574, rho 23575, r4223, r4224, r4225, r4226, r4227, tail⟩

theorem seg28_scp_node10_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4228 : Seg28.relationRow4228 rho)
    (r4229 : Seg28.relationRow4229 rho)
    (r4230 : Seg28.relationRow4230 rho)
    (r4231 : Seg28.relationRow4231 rho)
    (r4232 : Seg28.relationRow4232 rho)
    (tail : next (rho 23560) (rho 23565) (rho 23570) (rho 23575) (rho 23580)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg59 (rho 23535) (rho 23540) (rho 23545) (rho 23550) (rho 23555) (rho 23560) (rho 23565) (rho 23570) (rho 23575) next := by
  exact ⟨rho 23576, rho 23577, rho 23578, rho 23579, rho 23580, r4228, r4229, r4230, r4231, r4232, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

