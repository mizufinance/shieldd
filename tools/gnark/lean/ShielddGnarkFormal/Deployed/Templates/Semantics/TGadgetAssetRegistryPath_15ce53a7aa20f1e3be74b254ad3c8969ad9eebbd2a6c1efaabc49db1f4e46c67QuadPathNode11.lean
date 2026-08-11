import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode11Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode11Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode11Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode11Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode11Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode11Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode11Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node11_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut11 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 4037 + rho 4038) (rho 4039 + rho 4040 + rho 4041) (rho 4039 + rho 4043 + rho 4044) (rho 4042 + rho 4045) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, p50, p51, p52, p53, p54, p55,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart52 at p52
  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, r4239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart55 at p55
  rcases p55 with ⟨r4400, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 4037 + rho 4038) (rho 4039 + rho 4040 + rho 4041) (rho 4039 + rho 4043 + rho 4044) (rho 4042 + rho 4045)
      (fun w334 w339 w344 w349 w354 => w334 = rho 4375 ∧ w339 = rho 4380 ∧ w344 = rho 4385 ∧ w349 = rho 4390 ∧ w354 = rho 4395) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node11_seg0 rho _ r4051 r4052 r4053 r4054 r4055 (node11_seg1 rho _ r4056 r4057 r4058 r4059 r4060 (node11_seg2 rho _ r4061 r4062 r4063 r4064 r4065 (node11_seg3 rho _ r4066 r4067 r4068 r4069 r4070 (node11_seg4 rho _ r4071 r4072 r4073 r4074 r4075 (node11_seg5 rho _ r4076 r4077 r4078 r4079 r4080 (node11_seg6 rho _ r4081 r4082 r4083 r4084 r4085 (node11_seg7 rho _ r4086 r4087 r4088 r4089 r4090 (node11_seg8 rho _ r4091 r4092 r4093 r4094 r4095 (node11_seg9 rho _ r4096 r4097 r4098 r4099 r4100 (node11_seg10 rho _ r4101 r4102 r4103 r4104 r4105 (node11_seg11 rho _ r4106 r4107 r4108 r4109 r4110 (node11_seg12 rho _ r4111 r4112 r4113 r4114 r4115 (node11_seg13 rho _ r4116 r4117 r4118 r4119 r4120 (node11_seg14 rho _ r4121 r4122 r4123 r4124 r4125 (node11_seg15 rho _ r4126 r4127 r4128 r4129 r4130 (node11_seg16 rho _ r4131 r4132 r4133 r4134 r4135 (node11_seg17 rho _ r4136 r4137 r4138 r4139 r4140 (node11_seg18 rho _ r4141 r4142 r4143 r4144 r4145 (node11_seg19 rho _ r4146 r4147 r4148 r4149 r4150 (node11_seg20 rho _ r4151 r4152 r4153 r4154 r4155 (node11_seg21 rho _ r4156 r4157 r4158 r4159 r4160 (node11_seg22 rho _ r4161 r4162 r4163 r4164 r4165 (node11_seg23 rho _ r4166 r4167 r4168 r4169 r4170 (node11_seg24 rho _ r4171 r4172 r4173 r4174 r4175 (node11_seg25 rho _ r4176 r4177 r4178 r4179 r4180 (node11_seg26 rho _ r4181 r4182 r4183 r4184 r4185 (node11_seg27 rho _ r4186 r4187 r4188 r4189 r4190 (node11_seg28 rho _ r4191 r4192 r4193 r4194 r4195 (node11_seg29 rho _ r4196 r4197 r4198 r4199 r4200 (node11_seg30 rho _ r4201 r4202 r4203 r4204 r4205 (node11_seg31 rho _ r4206 r4207 r4208 r4209 r4210 (node11_seg32 rho _ r4211 r4212 r4213 r4214 r4215 (node11_seg33 rho _ r4216 r4217 r4218 r4219 r4220 (node11_seg34 rho _ r4221 r4222 r4223 r4224 r4225 (node11_seg35 rho _ r4226 r4227 r4228 r4229 r4230 (node11_seg36 rho _ r4231 r4232 r4233 r4234 r4235 (node11_seg37 rho _ r4236 r4237 r4238 r4239 r4240 (node11_seg38 rho _ r4241 r4242 r4243 r4244 r4245 (node11_seg39 rho _ r4246 r4247 r4248 r4249 r4250 (node11_seg40 rho _ r4251 r4252 r4253 r4254 r4255 (node11_seg41 rho _ r4256 r4257 r4258 r4259 r4260 (node11_seg42 rho _ r4261 r4262 r4263 r4264 r4265 (node11_seg43 rho _ r4266 r4267 r4268 r4269 r4270 (node11_seg44 rho _ r4271 r4272 r4273 r4274 r4275 (node11_seg45 rho _ r4276 r4277 r4278 r4279 r4280 (node11_seg46 rho _ r4281 r4282 r4283 r4284 r4285 (node11_seg47 rho _ r4286 r4287 r4288 r4289 r4290 (node11_seg48 rho _ r4291 r4292 r4293 r4294 r4295 (node11_seg49 rho _ r4296 r4297 r4298 r4299 r4300 (node11_seg50 rho _ r4301 r4302 r4303 r4304 r4305 (node11_seg51 rho _ r4306 r4307 r4308 r4309 r4310 (node11_seg52 rho _ r4311 r4312 r4313 r4314 r4315 (node11_seg53 rho _ r4316 r4317 r4318 r4319 r4320 (node11_seg54 rho _ r4321 r4322 r4323 r4324 r4325 (node11_seg55 rho _ r4326 r4327 r4328 r4329 r4330 (node11_seg56 rho _ r4331 r4332 r4333 r4334 r4335 (node11_seg57 rho _ r4336 r4337 r4338 r4339 r4340 (node11_seg58 rho _ r4341 r4342 r4343 r4344 r4345 (node11_seg59 rho _ r4346 r4347 r4348 r4349 r4350 (node11_seg60 rho _ r4351 r4352 r4353 r4354 r4355 (node11_seg61 rho _ r4356 r4357 r4358 r4359 r4360 (node11_seg62 rho _ r4361 r4362 r4363 r4364 r4365 (node11_seg63 rho _ r4366 r4367 r4368 r4369 r4370 (node11_seg64 rho _ r4371 r4372 r4373 r4374 r4375 (node11_seg65 rho _ r4376 r4377 r4378 r4379 r4380 (node11_seg66 rho _ r4381 r4382 r4383 r4384 r4385 (node11_seg67 rho _ r4386 r4387 r4388 r4389 r4390 (node11_seg68 rho _ r4391 r4392 r4393 r4394 r4395 (node11_seg69 rho _ r4396 r4397 r4398 r4399 r4400 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 4037 + rho 4038) (rho 4039 + rho 4040 + rho 4041) (rho 4039 + rho 4043 + rho 4044) (rho 4042 + rho 4045) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut11, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
