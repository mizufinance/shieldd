import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode10Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode10Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode10Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode10Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode10Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode10Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode10Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode10.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node10_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    seg37ScpNode10Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (11 : F))
        (rho 3915 + rho 3916) (rho 3917 + rho 3918 + rho 3919)
        (rho 3917 + rho 3921 + rho 3922) (rho 3920 + rho 3923) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    p50, p51, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3933, r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart52 at p52
  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, r4239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.relation (rho 3915) (rho 3917) (rho 3920) (rho 3916) (rho 3918) (rho 3919) (rho 3921) (rho 3922) (rho 3923)
      (fun o0 o1 o2 o3 o4 => o0 = rho 4253 ∧ o1 = rho 4258 ∧ o2 = rho 4263 ∧ o3 = rho 4268 ∧ o4 = rho 4273) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.relation
    exact template_scp_node10_seg0 rho _ r3933 r3934 r3935 r3936 r3937 (template_scp_node10_seg1 rho _ r3938 r3939 r3940 r3941 r3942 (template_scp_node10_seg2 rho _ r3943 r3944 r3945 r3946 r3947 (template_scp_node10_seg3 rho _ r3948 r3949 r3950 r3951 r3952 (template_scp_node10_seg4 rho _ r3953 r3954 r3955 r3956 r3957 (template_scp_node10_seg5 rho _ r3958 r3959 r3960 r3961 r3962 (template_scp_node10_seg6 rho _ r3963 r3964 r3965 r3966 r3967 (template_scp_node10_seg7 rho _ r3968 r3969 r3970 r3971 r3972 (template_scp_node10_seg8 rho _ r3973 r3974 r3975 r3976 r3977 (template_scp_node10_seg9 rho _ r3978 r3979 r3980 r3981 r3982 (template_scp_node10_seg10 rho _ r3983 r3984 r3985 r3986 r3987 (template_scp_node10_seg11 rho _ r3988 r3989 r3990 r3991 r3992 (template_scp_node10_seg12 rho _ r3993 r3994 r3995 r3996 r3997 (template_scp_node10_seg13 rho _ r3998 r3999 r4000 r4001 r4002 (template_scp_node10_seg14 rho _ r4003 r4004 r4005 r4006 r4007 (template_scp_node10_seg15 rho _ r4008 r4009 r4010 r4011 r4012 (template_scp_node10_seg16 rho _ r4013 r4014 r4015 r4016 r4017 (template_scp_node10_seg17 rho _ r4018 r4019 r4020 r4021 r4022 (template_scp_node10_seg18 rho _ r4023 r4024 r4025 r4026 r4027 (template_scp_node10_seg19 rho _ r4028 r4029 r4030 r4031 r4032 (template_scp_node10_seg20 rho _ r4033 r4034 r4035 r4036 r4037 (template_scp_node10_seg21 rho _ r4038 r4039 r4040 r4041 r4042 (template_scp_node10_seg22 rho _ r4043 r4044 r4045 r4046 r4047 (template_scp_node10_seg23 rho _ r4048 r4049 r4050 r4051 r4052 (template_scp_node10_seg24 rho _ r4053 r4054 r4055 r4056 r4057 (template_scp_node10_seg25 rho _ r4058 r4059 r4060 r4061 r4062 (template_scp_node10_seg26 rho _ r4063 r4064 r4065 r4066 r4067 (template_scp_node10_seg27 rho _ r4068 r4069 r4070 r4071 r4072 (template_scp_node10_seg28 rho _ r4073 r4074 r4075 r4076 r4077 (template_scp_node10_seg29 rho _ r4078 r4079 r4080 r4081 r4082 (template_scp_node10_seg30 rho _ r4083 r4084 r4085 r4086 r4087 (template_scp_node10_seg31 rho _ r4088 r4089 r4090 r4091 r4092 (template_scp_node10_seg32 rho _ r4093 r4094 r4095 r4096 r4097 (template_scp_node10_seg33 rho _ r4098 r4099 r4100 r4101 r4102 (template_scp_node10_seg34 rho _ r4103 r4104 r4105 r4106 r4107 (template_scp_node10_seg35 rho _ r4108 r4109 r4110 r4111 r4112 (template_scp_node10_seg36 rho _ r4113 r4114 r4115 r4116 r4117 (template_scp_node10_template rho _ r4118 r4119 r4120 r4121 r4122 (template_scp_node10_seg38 rho _ r4123 r4124 r4125 r4126 r4127 (template_scp_node10_seg39 rho _ r4128 r4129 r4130 r4131 r4132 (template_scp_node10_seg40 rho _ r4133 r4134 r4135 r4136 r4137 (template_scp_node10_seg41 rho _ r4138 r4139 r4140 r4141 r4142 (template_scp_node10_seg42 rho _ r4143 r4144 r4145 r4146 r4147 (template_scp_node10_seg43 rho _ r4148 r4149 r4150 r4151 r4152 (template_scp_node10_seg44 rho _ r4153 r4154 r4155 r4156 r4157 (template_scp_node10_seg45 rho _ r4158 r4159 r4160 r4161 r4162 (template_scp_node10_seg46 rho _ r4163 r4164 r4165 r4166 r4167 (template_scp_node10_seg47 rho _ r4168 r4169 r4170 r4171 r4172 (template_scp_node10_seg48 rho _ r4173 r4174 r4175 r4176 r4177 (template_scp_node10_seg49 rho _ r4178 r4179 r4180 r4181 r4182 (template_scp_node10_seg50 rho _ r4183 r4184 r4185 r4186 r4187 (template_scp_node10_seg51 rho _ r4188 r4189 r4190 r4191 r4192 (template_scp_node10_seg52 rho _ r4193 r4194 r4195 r4196 r4197 (template_scp_node10_seg53 rho _ r4198 r4199 r4200 r4201 r4202 (template_scp_node10_seg54 rho _ r4203 r4204 r4205 r4206 r4207 (template_scp_node10_seg55 rho _ r4208 r4209 r4210 r4211 r4212 (template_scp_node10_seg56 rho _ r4213 r4214 r4215 r4216 r4217 (template_scp_node10_seg57 rho _ r4218 r4219 r4220 r4221 r4222 (template_scp_node10_seg58 rho _ r4223 r4224 r4225 r4226 r4227 (template_scp_node10_seg59 rho _ r4228 r4229 r4230 r4231 r4232 (template_scp_node10_seg60 rho _ r4233 r4234 r4235 r4236 r4237 (template_scp_node10_seg61 rho _ r4238 r4239 r4240 r4241 r4242 (template_scp_node10_seg62 rho _ r4243 r4244 r4245 r4246 r4247 (template_scp_node10_seg63 rho _ r4248 r4249 r4250 r4251 r4252 (template_scp_node10_seg64 rho _ r4253 r4254 r4255 r4256 r4257 (template_scp_node10_seg65 rho _ r4258 r4259 r4260 r4261 r4262 (template_scp_node10_seg66 rho _ r4263 r4264 r4265 r4266 r4267 (template_scp_node10_seg67 rho _ r4268 r4269 r4270 r4271 r4272 (template_scp_node10_seg68 rho _ r4273 r4274 r4275 r4276 r4277 (template_scp_node10_seg69 rho _ r4278 r4279 r4280 r4281 r4282 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.relation_sound_permSpec (rho 3915) (rho 3917) (rho 3920) (rho 3916) (rho 3918) (rho 3919) (rho 3921) (rho 3922) (rho 3923) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.tctNode11DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.F) + (11 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg37ScpNode10Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
