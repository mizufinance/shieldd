import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node10_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4183 : Seg28.relationRow4183 rho)
    (r4184 : Seg28.relationRow4184 rho)
    (r4185 : Seg28.relationRow4185 rho)
    (r4186 : Seg28.relationRow4186 rho)
    (r4187 : Seg28.relationRow4187 rho)
    (tail : next (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) (rho 23541)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg50 (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) next := by
  exact ⟨rho 23537, rho 23538, rho 23539, rho 23540, rho 23541, r4183, r4184, r4185, r4186, r4187, tail⟩

theorem seg28_scp_node10_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4188 : Seg28.relationRow4188 rho)
    (r4189 : Seg28.relationRow4189 rho)
    (r4190 : Seg28.relationRow4190 rho)
    (r4191 : Seg28.relationRow4191 rho)
    (r4192 : Seg28.relationRow4192 rho)
    (tail : next (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) (rho 23541) (rho 23546)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg51 (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) (rho 23541) next := by
  exact ⟨rho 23542, rho 23543, rho 23544, rho 23545, rho 23546, r4188, r4189, r4190, r4191, r4192, tail⟩

theorem seg28_scp_node10_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4193 : Seg28.relationRow4193 rho)
    (r4194 : Seg28.relationRow4194 rho)
    (r4195 : Seg28.relationRow4195 rho)
    (r4196 : Seg28.relationRow4196 rho)
    (r4197 : Seg28.relationRow4197 rho)
    (tail : next (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) (rho 23541) (rho 23546) (rho 23551)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg52 (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) (rho 23541) (rho 23546) next := by
  exact ⟨rho 23547, rho 23548, rho 23549, rho 23550, rho 23551, r4193, r4194, r4195, r4196, r4197, tail⟩

theorem seg28_scp_node10_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4198 : Seg28.relationRow4198 rho)
    (r4199 : Seg28.relationRow4199 rho)
    (r4200 : Seg28.relationRow4200 rho)
    (r4201 : Seg28.relationRow4201 rho)
    (r4202 : Seg28.relationRow4202 rho)
    (tail : next (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) (rho 23541) (rho 23546) (rho 23551) (rho 23556)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg53 (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) (rho 23541) (rho 23546) (rho 23551) next := by
  exact ⟨rho 23552, rho 23553, rho 23554, rho 23555, rho 23556, r4198, r4199, r4200, r4201, r4202, tail⟩

theorem seg28_scp_node10_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4203 : Seg28.relationRow4203 rho)
    (r4204 : Seg28.relationRow4204 rho)
    (r4205 : Seg28.relationRow4205 rho)
    (r4206 : Seg28.relationRow4206 rho)
    (r4207 : Seg28.relationRow4207 rho)
    (tail : next (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg54 (rho 23361) (rho 23366) (rho 23371) (rho 23376) (rho 23381) (rho 23386) (rho 23391) (rho 23396) (rho 23401) (rho 23406) (rho 23411) (rho 23416) (rho 23421) (rho 23426) (rho 23431) (rho 23436) (rho 23441) (rho 23446) (rho 23451) (rho 23456) (rho 23461) (rho 23466) (rho 23471) (rho 23476) (rho 23481) (rho 23486) (rho 23491) (rho 23496) (rho 23501) (rho 23506) (rho 23511) (rho 23516) (rho 23521) (rho 23526) (rho 23531) (rho 23536) (rho 23541) (rho 23546) (rho 23551) (rho 23556) next := by
  exact ⟨rho 23557, rho 23558, rho 23559, rho 23560, rho 23561, r4203, r4204, r4205, r4206, r4207, tail⟩

theorem seg28_scp_node10_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4208 : Seg28.relationRow4208 rho)
    (r4209 : Seg28.relationRow4209 rho)
    (r4210 : Seg28.relationRow4210 rho)
    (r4211 : Seg28.relationRow4211 rho)
    (r4212 : Seg28.relationRow4212 rho)
    (tail : next (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) (rho 23566)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg55 (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) next := by
  exact ⟨rho 23562, rho 23563, rho 23564, rho 23565, rho 23566, r4208, r4209, r4210, r4211, r4212, tail⟩

theorem seg28_scp_node10_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4213 : Seg28.relationRow4213 rho)
    (r4214 : Seg28.relationRow4214 rho)
    (r4215 : Seg28.relationRow4215 rho)
    (r4216 : Seg28.relationRow4216 rho)
    (r4217 : Seg28.relationRow4217 rho)
    (tail : next (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) (rho 23566) (rho 23571)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg56 (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) (rho 23566) next := by
  exact ⟨rho 23567, rho 23568, rho 23569, rho 23570, rho 23571, r4213, r4214, r4215, r4216, r4217, tail⟩

theorem seg28_scp_node10_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4218 : Seg28.relationRow4218 rho)
    (r4219 : Seg28.relationRow4219 rho)
    (r4220 : Seg28.relationRow4220 rho)
    (r4221 : Seg28.relationRow4221 rho)
    (r4222 : Seg28.relationRow4222 rho)
    (tail : next (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) (rho 23566) (rho 23571) (rho 23576)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg57 (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) (rho 23566) (rho 23571) next := by
  exact ⟨rho 23572, rho 23573, rho 23574, rho 23575, rho 23576, r4218, r4219, r4220, r4221, r4222, tail⟩

theorem seg28_scp_node10_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4223 : Seg28.relationRow4223 rho)
    (r4224 : Seg28.relationRow4224 rho)
    (r4225 : Seg28.relationRow4225 rho)
    (r4226 : Seg28.relationRow4226 rho)
    (r4227 : Seg28.relationRow4227 rho)
    (tail : next (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) (rho 23566) (rho 23571) (rho 23576) (rho 23581)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg58 (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) (rho 23566) (rho 23571) (rho 23576) next := by
  exact ⟨rho 23577, rho 23578, rho 23579, rho 23580, rho 23581, r4223, r4224, r4225, r4226, r4227, tail⟩

theorem seg28_scp_node10_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4228 : Seg28.relationRow4228 rho)
    (r4229 : Seg28.relationRow4229 rho)
    (r4230 : Seg28.relationRow4230 rho)
    (r4231 : Seg28.relationRow4231 rho)
    (r4232 : Seg28.relationRow4232 rho)
    (tail : next (rho 23566) (rho 23571) (rho 23576) (rho 23581) (rho 23586)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg59 (rho 23541) (rho 23546) (rho 23551) (rho 23556) (rho 23561) (rho 23566) (rho 23571) (rho 23576) (rho 23581) next := by
  exact ⟨rho 23582, rho 23583, rho 23584, rho 23585, rho 23586, r4228, r4229, r4230, r4231, r4232, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

