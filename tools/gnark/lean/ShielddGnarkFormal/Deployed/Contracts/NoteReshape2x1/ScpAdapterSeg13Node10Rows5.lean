import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node10_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4183 : Seg13.relationRow4183 rho)
    (r4184 : Seg13.relationRow4184 rho)
    (r4185 : Seg13.relationRow4185 rho)
    (r4186 : Seg13.relationRow4186 rho)
    (r4187 : Seg13.relationRow4187 rho)
    (tail : next (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) (rho 11354)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg50 (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) next := by
  exact ⟨rho 11350, rho 11351, rho 11352, rho 11353, rho 11354, r4183, r4184, r4185, r4186, r4187, tail⟩

theorem seg13_scp_node10_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4188 : Seg13.relationRow4188 rho)
    (r4189 : Seg13.relationRow4189 rho)
    (r4190 : Seg13.relationRow4190 rho)
    (r4191 : Seg13.relationRow4191 rho)
    (r4192 : Seg13.relationRow4192 rho)
    (tail : next (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) (rho 11354) (rho 11359)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg51 (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) (rho 11354) next := by
  exact ⟨rho 11355, rho 11356, rho 11357, rho 11358, rho 11359, r4188, r4189, r4190, r4191, r4192, tail⟩

theorem seg13_scp_node10_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4193 : Seg13.relationRow4193 rho)
    (r4194 : Seg13.relationRow4194 rho)
    (r4195 : Seg13.relationRow4195 rho)
    (r4196 : Seg13.relationRow4196 rho)
    (r4197 : Seg13.relationRow4197 rho)
    (tail : next (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) (rho 11354) (rho 11359) (rho 11364)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg52 (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) (rho 11354) (rho 11359) next := by
  exact ⟨rho 11360, rho 11361, rho 11362, rho 11363, rho 11364, r4193, r4194, r4195, r4196, r4197, tail⟩

theorem seg13_scp_node10_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4198 : Seg13.relationRow4198 rho)
    (r4199 : Seg13.relationRow4199 rho)
    (r4200 : Seg13.relationRow4200 rho)
    (r4201 : Seg13.relationRow4201 rho)
    (r4202 : Seg13.relationRow4202 rho)
    (tail : next (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) (rho 11354) (rho 11359) (rho 11364) (rho 11369)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg53 (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) (rho 11354) (rho 11359) (rho 11364) next := by
  exact ⟨rho 11365, rho 11366, rho 11367, rho 11368, rho 11369, r4198, r4199, r4200, r4201, r4202, tail⟩

theorem seg13_scp_node10_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4203 : Seg13.relationRow4203 rho)
    (r4204 : Seg13.relationRow4204 rho)
    (r4205 : Seg13.relationRow4205 rho)
    (r4206 : Seg13.relationRow4206 rho)
    (r4207 : Seg13.relationRow4207 rho)
    (tail : next (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg54 (rho 11174) (rho 11179) (rho 11184) (rho 11189) (rho 11194) (rho 11199) (rho 11204) (rho 11209) (rho 11214) (rho 11219) (rho 11224) (rho 11229) (rho 11234) (rho 11239) (rho 11244) (rho 11249) (rho 11254) (rho 11259) (rho 11264) (rho 11269) (rho 11274) (rho 11279) (rho 11284) (rho 11289) (rho 11294) (rho 11299) (rho 11304) (rho 11309) (rho 11314) (rho 11319) (rho 11324) (rho 11329) (rho 11334) (rho 11339) (rho 11344) (rho 11349) (rho 11354) (rho 11359) (rho 11364) (rho 11369) next := by
  exact ⟨rho 11370, rho 11371, rho 11372, rho 11373, rho 11374, r4203, r4204, r4205, r4206, r4207, tail⟩

theorem seg13_scp_node10_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4208 : Seg13.relationRow4208 rho)
    (r4209 : Seg13.relationRow4209 rho)
    (r4210 : Seg13.relationRow4210 rho)
    (r4211 : Seg13.relationRow4211 rho)
    (r4212 : Seg13.relationRow4212 rho)
    (tail : next (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) (rho 11379)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg55 (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) next := by
  exact ⟨rho 11375, rho 11376, rho 11377, rho 11378, rho 11379, r4208, r4209, r4210, r4211, r4212, tail⟩

theorem seg13_scp_node10_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4213 : Seg13.relationRow4213 rho)
    (r4214 : Seg13.relationRow4214 rho)
    (r4215 : Seg13.relationRow4215 rho)
    (r4216 : Seg13.relationRow4216 rho)
    (r4217 : Seg13.relationRow4217 rho)
    (tail : next (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) (rho 11379) (rho 11384)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg56 (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) (rho 11379) next := by
  exact ⟨rho 11380, rho 11381, rho 11382, rho 11383, rho 11384, r4213, r4214, r4215, r4216, r4217, tail⟩

theorem seg13_scp_node10_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4218 : Seg13.relationRow4218 rho)
    (r4219 : Seg13.relationRow4219 rho)
    (r4220 : Seg13.relationRow4220 rho)
    (r4221 : Seg13.relationRow4221 rho)
    (r4222 : Seg13.relationRow4222 rho)
    (tail : next (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) (rho 11379) (rho 11384) (rho 11389)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg57 (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) (rho 11379) (rho 11384) next := by
  exact ⟨rho 11385, rho 11386, rho 11387, rho 11388, rho 11389, r4218, r4219, r4220, r4221, r4222, tail⟩

theorem seg13_scp_node10_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4223 : Seg13.relationRow4223 rho)
    (r4224 : Seg13.relationRow4224 rho)
    (r4225 : Seg13.relationRow4225 rho)
    (r4226 : Seg13.relationRow4226 rho)
    (r4227 : Seg13.relationRow4227 rho)
    (tail : next (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) (rho 11379) (rho 11384) (rho 11389) (rho 11394)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg58 (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) (rho 11379) (rho 11384) (rho 11389) next := by
  exact ⟨rho 11390, rho 11391, rho 11392, rho 11393, rho 11394, r4223, r4224, r4225, r4226, r4227, tail⟩

theorem seg13_scp_node10_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4228 : Seg13.relationRow4228 rho)
    (r4229 : Seg13.relationRow4229 rho)
    (r4230 : Seg13.relationRow4230 rho)
    (r4231 : Seg13.relationRow4231 rho)
    (r4232 : Seg13.relationRow4232 rho)
    (tail : next (rho 11379) (rho 11384) (rho 11389) (rho 11394) (rho 11399)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg59 (rho 11354) (rho 11359) (rho 11364) (rho 11369) (rho 11374) (rho 11379) (rho 11384) (rho 11389) (rho 11394) next := by
  exact ⟨rho 11395, rho 11396, rho 11397, rho 11398, rho 11399, r4228, r4229, r4230, r4231, r4232, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

