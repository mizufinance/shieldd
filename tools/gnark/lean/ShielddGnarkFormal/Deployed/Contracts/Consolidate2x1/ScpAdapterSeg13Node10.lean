import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode10.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node10_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode10Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (11 : Seg13.F))
        (rho 64 + rho 11351) (rho 65 + rho 11352 + rho 11353)
        (rho 65 + rho 11354 + rho 11355) (rho 66 + rho 11356) := by
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3933, r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg13.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg13.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg13.relationPart52 at p52
  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, r4239⟩
  unfold Seg13.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.relation (rho 64) (rho 65) (rho 66) (rho 11351) (rho 11352) (rho 11353) (rho 11354) (rho 11355) (rho 11356)
      (fun o0 o1 o2 o3 o4 => o0 = rho 11686 ∧ o1 = rho 11691 ∧ o2 = rho 11696 ∧ o3 = rho 11701 ∧ o4 = rho 11706) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg0
    refine ⟨rho 11357, rho 11358, rho 11359, rho 11360, rho 11361,
      (by unfold Seg13.relationRow3933 at r3933; linear_combination r3933), (by unfold Seg13.relationRow3934 at r3934; linear_combination r3934), (by unfold Seg13.relationRow3935 at r3935; linear_combination r3935), (by unfold Seg13.relationRow3936 at r3936; linear_combination r3936), (by unfold Seg13.relationRow3937 at r3937; linear_combination r3937), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg1
    refine ⟨rho 11362, rho 11363, rho 11364, rho 11365, rho 11366,
      (by unfold Seg13.relationRow3938 at r3938; linear_combination r3938), (by unfold Seg13.relationRow3939 at r3939; linear_combination r3939), (by unfold Seg13.relationRow3940 at r3940; linear_combination r3940), (by unfold Seg13.relationRow3941 at r3941; linear_combination r3941), (by unfold Seg13.relationRow3942 at r3942; linear_combination r3942), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg2
    refine ⟨rho 11367, rho 11368, rho 11369, rho 11370, rho 11371,
      (by unfold Seg13.relationRow3943 at r3943; linear_combination r3943), (by unfold Seg13.relationRow3944 at r3944; linear_combination r3944), (by unfold Seg13.relationRow3945 at r3945; linear_combination r3945), (by unfold Seg13.relationRow3946 at r3946; linear_combination r3946), (by unfold Seg13.relationRow3947 at r3947; linear_combination r3947), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg3
    refine ⟨rho 11372, rho 11373, rho 11374, rho 11375, rho 11376,
      (by unfold Seg13.relationRow3948 at r3948; linear_combination r3948), (by unfold Seg13.relationRow3949 at r3949; linear_combination r3949), (by unfold Seg13.relationRow3950 at r3950; linear_combination r3950), (by unfold Seg13.relationRow3951 at r3951; linear_combination r3951), (by unfold Seg13.relationRow3952 at r3952; linear_combination r3952), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg4
    refine ⟨rho 11377, rho 11378, rho 11379, rho 11380, rho 11381,
      (by unfold Seg13.relationRow3953 at r3953; linear_combination r3953), (by unfold Seg13.relationRow3954 at r3954; linear_combination r3954), (by unfold Seg13.relationRow3955 at r3955; linear_combination r3955), (by unfold Seg13.relationRow3956 at r3956; linear_combination r3956), (by unfold Seg13.relationRow3957 at r3957; linear_combination r3957), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg5
    refine ⟨rho 11382, rho 11383, rho 11384, rho 11385, rho 11386,
      (by unfold Seg13.relationRow3958 at r3958; linear_combination r3958), (by unfold Seg13.relationRow3959 at r3959; linear_combination r3959), (by unfold Seg13.relationRow3960 at r3960; linear_combination r3960), (by unfold Seg13.relationRow3961 at r3961; linear_combination r3961), (by unfold Seg13.relationRow3962 at r3962; linear_combination r3962), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg6
    refine ⟨rho 11387, rho 11388, rho 11389, rho 11390, rho 11391,
      (by unfold Seg13.relationRow3963 at r3963; linear_combination r3963), (by unfold Seg13.relationRow3964 at r3964; linear_combination r3964), (by unfold Seg13.relationRow3965 at r3965; linear_combination r3965), (by unfold Seg13.relationRow3966 at r3966; linear_combination r3966), (by unfold Seg13.relationRow3967 at r3967; linear_combination r3967), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg7
    refine ⟨rho 11392, rho 11393, rho 11394, rho 11395, rho 11396,
      (by unfold Seg13.relationRow3968 at r3968; linear_combination r3968), (by unfold Seg13.relationRow3969 at r3969; linear_combination r3969), (by unfold Seg13.relationRow3970 at r3970; linear_combination r3970), (by unfold Seg13.relationRow3971 at r3971; linear_combination r3971), (by unfold Seg13.relationRow3972 at r3972; linear_combination r3972), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg8
    refine ⟨rho 11397, rho 11398, rho 11399, rho 11400, rho 11401,
      (by unfold Seg13.relationRow3973 at r3973; linear_combination r3973), (by unfold Seg13.relationRow3974 at r3974; linear_combination r3974), (by unfold Seg13.relationRow3975 at r3975; linear_combination r3975), (by unfold Seg13.relationRow3976 at r3976; linear_combination r3976), (by unfold Seg13.relationRow3977 at r3977; linear_combination r3977), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg9
    refine ⟨rho 11402, rho 11403, rho 11404, rho 11405, rho 11406,
      (by unfold Seg13.relationRow3978 at r3978; linear_combination r3978), (by unfold Seg13.relationRow3979 at r3979; linear_combination r3979), (by unfold Seg13.relationRow3980 at r3980; linear_combination r3980), (by unfold Seg13.relationRow3981 at r3981; linear_combination r3981), (by unfold Seg13.relationRow3982 at r3982; linear_combination r3982), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg10
    refine ⟨rho 11407, rho 11408, rho 11409, rho 11410, rho 11411,
      (by unfold Seg13.relationRow3983 at r3983; linear_combination r3983), (by unfold Seg13.relationRow3984 at r3984; linear_combination r3984), (by unfold Seg13.relationRow3985 at r3985; linear_combination r3985), (by unfold Seg13.relationRow3986 at r3986; linear_combination r3986), (by unfold Seg13.relationRow3987 at r3987; linear_combination r3987), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg11
    refine ⟨rho 11412, rho 11413, rho 11414, rho 11415, rho 11416,
      (by unfold Seg13.relationRow3988 at r3988; linear_combination r3988), (by unfold Seg13.relationRow3989 at r3989; linear_combination r3989), (by unfold Seg13.relationRow3990 at r3990; linear_combination r3990), (by unfold Seg13.relationRow3991 at r3991; linear_combination r3991), (by unfold Seg13.relationRow3992 at r3992; linear_combination r3992), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg12
    refine ⟨rho 11417, rho 11418, rho 11419, rho 11420, rho 11421,
      (by unfold Seg13.relationRow3993 at r3993; linear_combination r3993), (by unfold Seg13.relationRow3994 at r3994; linear_combination r3994), (by unfold Seg13.relationRow3995 at r3995; linear_combination r3995), (by unfold Seg13.relationRow3996 at r3996; linear_combination r3996), (by unfold Seg13.relationRow3997 at r3997; linear_combination r3997), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg13
    refine ⟨rho 11422, rho 11423, rho 11424, rho 11425, rho 11426,
      (by unfold Seg13.relationRow3998 at r3998; linear_combination r3998), (by unfold Seg13.relationRow3999 at r3999; linear_combination r3999), (by unfold Seg13.relationRow4000 at r4000; linear_combination r4000), (by unfold Seg13.relationRow4001 at r4001; linear_combination r4001), (by unfold Seg13.relationRow4002 at r4002; linear_combination r4002), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg14
    refine ⟨rho 11427, rho 11428, rho 11429, rho 11430, rho 11431,
      (by unfold Seg13.relationRow4003 at r4003; linear_combination r4003), (by unfold Seg13.relationRow4004 at r4004; linear_combination r4004), (by unfold Seg13.relationRow4005 at r4005; linear_combination r4005), (by unfold Seg13.relationRow4006 at r4006; linear_combination r4006), (by unfold Seg13.relationRow4007 at r4007; linear_combination r4007), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg15
    refine ⟨rho 11432, rho 11433, rho 11434, rho 11435, rho 11436,
      (by unfold Seg13.relationRow4008 at r4008; linear_combination r4008), (by unfold Seg13.relationRow4009 at r4009; linear_combination r4009), (by unfold Seg13.relationRow4010 at r4010; linear_combination r4010), (by unfold Seg13.relationRow4011 at r4011; linear_combination r4011), (by unfold Seg13.relationRow4012 at r4012; linear_combination r4012), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg16
    refine ⟨rho 11437, rho 11438, rho 11439, rho 11440, rho 11441,
      (by unfold Seg13.relationRow4013 at r4013; linear_combination r4013), (by unfold Seg13.relationRow4014 at r4014; linear_combination r4014), (by unfold Seg13.relationRow4015 at r4015; linear_combination r4015), (by unfold Seg13.relationRow4016 at r4016; linear_combination r4016), (by unfold Seg13.relationRow4017 at r4017; linear_combination r4017), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg17
    refine ⟨rho 11442, rho 11443, rho 11444, rho 11445, rho 11446,
      (by unfold Seg13.relationRow4018 at r4018; linear_combination r4018), (by unfold Seg13.relationRow4019 at r4019; linear_combination r4019), (by unfold Seg13.relationRow4020 at r4020; linear_combination r4020), (by unfold Seg13.relationRow4021 at r4021; linear_combination r4021), (by unfold Seg13.relationRow4022 at r4022; linear_combination r4022), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg18
    refine ⟨rho 11447, rho 11448, rho 11449, rho 11450, rho 11451,
      (by unfold Seg13.relationRow4023 at r4023; linear_combination r4023), (by unfold Seg13.relationRow4024 at r4024; linear_combination r4024), (by unfold Seg13.relationRow4025 at r4025; linear_combination r4025), (by unfold Seg13.relationRow4026 at r4026; linear_combination r4026), (by unfold Seg13.relationRow4027 at r4027; linear_combination r4027), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg19
    refine ⟨rho 11452, rho 11453, rho 11454, rho 11455, rho 11456,
      (by unfold Seg13.relationRow4028 at r4028; linear_combination r4028), (by unfold Seg13.relationRow4029 at r4029; linear_combination r4029), (by unfold Seg13.relationRow4030 at r4030; linear_combination r4030), (by unfold Seg13.relationRow4031 at r4031; linear_combination r4031), (by unfold Seg13.relationRow4032 at r4032; linear_combination r4032), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg20
    refine ⟨rho 11457, rho 11458, rho 11459, rho 11460, rho 11461,
      (by unfold Seg13.relationRow4033 at r4033; linear_combination r4033), (by unfold Seg13.relationRow4034 at r4034; linear_combination r4034), (by unfold Seg13.relationRow4035 at r4035; linear_combination r4035), (by unfold Seg13.relationRow4036 at r4036; linear_combination r4036), (by unfold Seg13.relationRow4037 at r4037; linear_combination r4037), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg21
    refine ⟨rho 11462, rho 11463, rho 11464, rho 11465, rho 11466,
      (by unfold Seg13.relationRow4038 at r4038; linear_combination r4038), (by unfold Seg13.relationRow4039 at r4039; linear_combination r4039), (by unfold Seg13.relationRow4040 at r4040; linear_combination r4040), (by unfold Seg13.relationRow4041 at r4041; linear_combination r4041), (by unfold Seg13.relationRow4042 at r4042; linear_combination r4042), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg22
    refine ⟨rho 11467, rho 11468, rho 11469, rho 11470, rho 11471,
      (by unfold Seg13.relationRow4043 at r4043; linear_combination r4043), (by unfold Seg13.relationRow4044 at r4044; linear_combination r4044), (by unfold Seg13.relationRow4045 at r4045; linear_combination r4045), (by unfold Seg13.relationRow4046 at r4046; linear_combination r4046), (by unfold Seg13.relationRow4047 at r4047; linear_combination r4047), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg23
    refine ⟨rho 11472, rho 11473, rho 11474, rho 11475, rho 11476,
      (by unfold Seg13.relationRow4048 at r4048; linear_combination r4048), (by unfold Seg13.relationRow4049 at r4049; linear_combination r4049), (by unfold Seg13.relationRow4050 at r4050; linear_combination r4050), (by unfold Seg13.relationRow4051 at r4051; linear_combination r4051), (by unfold Seg13.relationRow4052 at r4052; linear_combination r4052), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg24
    refine ⟨rho 11477, rho 11478, rho 11479, rho 11480, rho 11481,
      (by unfold Seg13.relationRow4053 at r4053; linear_combination r4053), (by unfold Seg13.relationRow4054 at r4054; linear_combination r4054), (by unfold Seg13.relationRow4055 at r4055; linear_combination r4055), (by unfold Seg13.relationRow4056 at r4056; linear_combination r4056), (by unfold Seg13.relationRow4057 at r4057; linear_combination r4057), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg25
    refine ⟨rho 11482, rho 11483, rho 11484, rho 11485, rho 11486,
      (by unfold Seg13.relationRow4058 at r4058; linear_combination r4058), (by unfold Seg13.relationRow4059 at r4059; linear_combination r4059), (by unfold Seg13.relationRow4060 at r4060; linear_combination r4060), (by unfold Seg13.relationRow4061 at r4061; linear_combination r4061), (by unfold Seg13.relationRow4062 at r4062; linear_combination r4062), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg26
    refine ⟨rho 11487, rho 11488, rho 11489, rho 11490, rho 11491,
      (by unfold Seg13.relationRow4063 at r4063; linear_combination r4063), (by unfold Seg13.relationRow4064 at r4064; linear_combination r4064), (by unfold Seg13.relationRow4065 at r4065; linear_combination r4065), (by unfold Seg13.relationRow4066 at r4066; linear_combination r4066), (by unfold Seg13.relationRow4067 at r4067; linear_combination r4067), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg27
    refine ⟨rho 11492, rho 11493, rho 11494, rho 11495, rho 11496,
      (by unfold Seg13.relationRow4068 at r4068; linear_combination r4068), (by unfold Seg13.relationRow4069 at r4069; linear_combination r4069), (by unfold Seg13.relationRow4070 at r4070; linear_combination r4070), (by unfold Seg13.relationRow4071 at r4071; linear_combination r4071), (by unfold Seg13.relationRow4072 at r4072; linear_combination r4072), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg28
    refine ⟨rho 11497, rho 11498, rho 11499, rho 11500, rho 11501,
      (by unfold Seg13.relationRow4073 at r4073; linear_combination r4073), (by unfold Seg13.relationRow4074 at r4074; linear_combination r4074), (by unfold Seg13.relationRow4075 at r4075; linear_combination r4075), (by unfold Seg13.relationRow4076 at r4076; linear_combination r4076), (by unfold Seg13.relationRow4077 at r4077; linear_combination r4077), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg29
    refine ⟨rho 11502, rho 11503, rho 11504, rho 11505, rho 11506,
      (by unfold Seg13.relationRow4078 at r4078; linear_combination r4078), (by unfold Seg13.relationRow4079 at r4079; linear_combination r4079), (by unfold Seg13.relationRow4080 at r4080; linear_combination r4080), (by unfold Seg13.relationRow4081 at r4081; linear_combination r4081), (by unfold Seg13.relationRow4082 at r4082; linear_combination r4082), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg30
    refine ⟨rho 11507, rho 11508, rho 11509, rho 11510, rho 11511,
      (by unfold Seg13.relationRow4083 at r4083; linear_combination r4083), (by unfold Seg13.relationRow4084 at r4084; linear_combination r4084), (by unfold Seg13.relationRow4085 at r4085; linear_combination r4085), (by unfold Seg13.relationRow4086 at r4086; linear_combination r4086), (by unfold Seg13.relationRow4087 at r4087; linear_combination r4087), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg31
    refine ⟨rho 11512, rho 11513, rho 11514, rho 11515, rho 11516,
      (by unfold Seg13.relationRow4088 at r4088; linear_combination r4088), (by unfold Seg13.relationRow4089 at r4089; linear_combination r4089), (by unfold Seg13.relationRow4090 at r4090; linear_combination r4090), (by unfold Seg13.relationRow4091 at r4091; linear_combination r4091), (by unfold Seg13.relationRow4092 at r4092; linear_combination r4092), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg32
    refine ⟨rho 11517, rho 11518, rho 11519, rho 11520, rho 11521,
      (by unfold Seg13.relationRow4093 at r4093; linear_combination r4093), (by unfold Seg13.relationRow4094 at r4094; linear_combination r4094), (by unfold Seg13.relationRow4095 at r4095; linear_combination r4095), (by unfold Seg13.relationRow4096 at r4096; linear_combination r4096), (by unfold Seg13.relationRow4097 at r4097; linear_combination r4097), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg33
    refine ⟨rho 11522, rho 11523, rho 11524, rho 11525, rho 11526,
      (by unfold Seg13.relationRow4098 at r4098; linear_combination r4098), (by unfold Seg13.relationRow4099 at r4099; linear_combination r4099), (by unfold Seg13.relationRow4100 at r4100; linear_combination r4100), (by unfold Seg13.relationRow4101 at r4101; linear_combination r4101), (by unfold Seg13.relationRow4102 at r4102; linear_combination r4102), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg34
    refine ⟨rho 11527, rho 11528, rho 11529, rho 11530, rho 11531,
      (by unfold Seg13.relationRow4103 at r4103; linear_combination r4103), (by unfold Seg13.relationRow4104 at r4104; linear_combination r4104), (by unfold Seg13.relationRow4105 at r4105; linear_combination r4105), (by unfold Seg13.relationRow4106 at r4106; linear_combination r4106), (by unfold Seg13.relationRow4107 at r4107; linear_combination r4107), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg35
    refine ⟨rho 11532, rho 11533, rho 11534, rho 11535, rho 11536,
      (by unfold Seg13.relationRow4108 at r4108; linear_combination r4108), (by unfold Seg13.relationRow4109 at r4109; linear_combination r4109), (by unfold Seg13.relationRow4110 at r4110; linear_combination r4110), (by unfold Seg13.relationRow4111 at r4111; linear_combination r4111), (by unfold Seg13.relationRow4112 at r4112; linear_combination r4112), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg36
    refine ⟨rho 11537, rho 11538, rho 11539, rho 11540, rho 11541,
      (by unfold Seg13.relationRow4113 at r4113; linear_combination r4113), (by unfold Seg13.relationRow4114 at r4114; linear_combination r4114), (by unfold Seg13.relationRow4115 at r4115; linear_combination r4115), (by unfold Seg13.relationRow4116 at r4116; linear_combination r4116), (by unfold Seg13.relationRow4117 at r4117; linear_combination r4117), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg37
    refine ⟨rho 11542, rho 11543, rho 11544, rho 11545, rho 11546,
      (by unfold Seg13.relationRow4118 at r4118; linear_combination r4118), (by unfold Seg13.relationRow4119 at r4119; linear_combination r4119), (by unfold Seg13.relationRow4120 at r4120; linear_combination r4120), (by unfold Seg13.relationRow4121 at r4121; linear_combination r4121), (by unfold Seg13.relationRow4122 at r4122; linear_combination r4122), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg38
    refine ⟨rho 11547, rho 11548, rho 11549, rho 11550, rho 11551,
      (by unfold Seg13.relationRow4123 at r4123; linear_combination r4123), (by unfold Seg13.relationRow4124 at r4124; linear_combination r4124), (by unfold Seg13.relationRow4125 at r4125; linear_combination r4125), (by unfold Seg13.relationRow4126 at r4126; linear_combination r4126), (by unfold Seg13.relationRow4127 at r4127; linear_combination r4127), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg39
    refine ⟨rho 11552, rho 11553, rho 11554, rho 11555, rho 11556,
      (by unfold Seg13.relationRow4128 at r4128; linear_combination r4128), (by unfold Seg13.relationRow4129 at r4129; linear_combination r4129), (by unfold Seg13.relationRow4130 at r4130; linear_combination r4130), (by unfold Seg13.relationRow4131 at r4131; linear_combination r4131), (by unfold Seg13.relationRow4132 at r4132; linear_combination r4132), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg40
    refine ⟨rho 11557, rho 11558, rho 11559, rho 11560, rho 11561,
      (by unfold Seg13.relationRow4133 at r4133; linear_combination r4133), (by unfold Seg13.relationRow4134 at r4134; linear_combination r4134), (by unfold Seg13.relationRow4135 at r4135; linear_combination r4135), (by unfold Seg13.relationRow4136 at r4136; linear_combination r4136), (by unfold Seg13.relationRow4137 at r4137; linear_combination r4137), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg41
    refine ⟨rho 11562, rho 11563, rho 11564, rho 11565, rho 11566,
      (by unfold Seg13.relationRow4138 at r4138; linear_combination r4138), (by unfold Seg13.relationRow4139 at r4139; linear_combination r4139), (by unfold Seg13.relationRow4140 at r4140; linear_combination r4140), (by unfold Seg13.relationRow4141 at r4141; linear_combination r4141), (by unfold Seg13.relationRow4142 at r4142; linear_combination r4142), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg42
    refine ⟨rho 11567, rho 11568, rho 11569, rho 11570, rho 11571,
      (by unfold Seg13.relationRow4143 at r4143; linear_combination r4143), (by unfold Seg13.relationRow4144 at r4144; linear_combination r4144), (by unfold Seg13.relationRow4145 at r4145; linear_combination r4145), (by unfold Seg13.relationRow4146 at r4146; linear_combination r4146), (by unfold Seg13.relationRow4147 at r4147; linear_combination r4147), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg43
    refine ⟨rho 11572, rho 11573, rho 11574, rho 11575, rho 11576,
      (by unfold Seg13.relationRow4148 at r4148; linear_combination r4148), (by unfold Seg13.relationRow4149 at r4149; linear_combination r4149), (by unfold Seg13.relationRow4150 at r4150; linear_combination r4150), (by unfold Seg13.relationRow4151 at r4151; linear_combination r4151), (by unfold Seg13.relationRow4152 at r4152; linear_combination r4152), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg44
    refine ⟨rho 11577, rho 11578, rho 11579, rho 11580, rho 11581,
      (by unfold Seg13.relationRow4153 at r4153; linear_combination r4153), (by unfold Seg13.relationRow4154 at r4154; linear_combination r4154), (by unfold Seg13.relationRow4155 at r4155; linear_combination r4155), (by unfold Seg13.relationRow4156 at r4156; linear_combination r4156), (by unfold Seg13.relationRow4157 at r4157; linear_combination r4157), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg45
    refine ⟨rho 11582, rho 11583, rho 11584, rho 11585, rho 11586,
      (by unfold Seg13.relationRow4158 at r4158; linear_combination r4158), (by unfold Seg13.relationRow4159 at r4159; linear_combination r4159), (by unfold Seg13.relationRow4160 at r4160; linear_combination r4160), (by unfold Seg13.relationRow4161 at r4161; linear_combination r4161), (by unfold Seg13.relationRow4162 at r4162; linear_combination r4162), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg46
    refine ⟨rho 11587, rho 11588, rho 11589, rho 11590, rho 11591,
      (by unfold Seg13.relationRow4163 at r4163; linear_combination r4163), (by unfold Seg13.relationRow4164 at r4164; linear_combination r4164), (by unfold Seg13.relationRow4165 at r4165; linear_combination r4165), (by unfold Seg13.relationRow4166 at r4166; linear_combination r4166), (by unfold Seg13.relationRow4167 at r4167; linear_combination r4167), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg47
    refine ⟨rho 11592, rho 11593, rho 11594, rho 11595, rho 11596,
      (by unfold Seg13.relationRow4168 at r4168; linear_combination r4168), (by unfold Seg13.relationRow4169 at r4169; linear_combination r4169), (by unfold Seg13.relationRow4170 at r4170; linear_combination r4170), (by unfold Seg13.relationRow4171 at r4171; linear_combination r4171), (by unfold Seg13.relationRow4172 at r4172; linear_combination r4172), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg48
    refine ⟨rho 11597, rho 11598, rho 11599, rho 11600, rho 11601,
      (by unfold Seg13.relationRow4173 at r4173; linear_combination r4173), (by unfold Seg13.relationRow4174 at r4174; linear_combination r4174), (by unfold Seg13.relationRow4175 at r4175; linear_combination r4175), (by unfold Seg13.relationRow4176 at r4176; linear_combination r4176), (by unfold Seg13.relationRow4177 at r4177; linear_combination r4177), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg49
    refine ⟨rho 11602, rho 11603, rho 11604, rho 11605, rho 11606,
      (by unfold Seg13.relationRow4178 at r4178; linear_combination r4178), (by unfold Seg13.relationRow4179 at r4179; linear_combination r4179), (by unfold Seg13.relationRow4180 at r4180; linear_combination r4180), (by unfold Seg13.relationRow4181 at r4181; linear_combination r4181), (by unfold Seg13.relationRow4182 at r4182; linear_combination r4182), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg50
    refine ⟨rho 11607, rho 11608, rho 11609, rho 11610, rho 11611,
      (by unfold Seg13.relationRow4183 at r4183; linear_combination r4183), (by unfold Seg13.relationRow4184 at r4184; linear_combination r4184), (by unfold Seg13.relationRow4185 at r4185; linear_combination r4185), (by unfold Seg13.relationRow4186 at r4186; linear_combination r4186), (by unfold Seg13.relationRow4187 at r4187; linear_combination r4187), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg51
    refine ⟨rho 11612, rho 11613, rho 11614, rho 11615, rho 11616,
      (by unfold Seg13.relationRow4188 at r4188; linear_combination r4188), (by unfold Seg13.relationRow4189 at r4189; linear_combination r4189), (by unfold Seg13.relationRow4190 at r4190; linear_combination r4190), (by unfold Seg13.relationRow4191 at r4191; linear_combination r4191), (by unfold Seg13.relationRow4192 at r4192; linear_combination r4192), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg52
    refine ⟨rho 11617, rho 11618, rho 11619, rho 11620, rho 11621,
      (by unfold Seg13.relationRow4193 at r4193; linear_combination r4193), (by unfold Seg13.relationRow4194 at r4194; linear_combination r4194), (by unfold Seg13.relationRow4195 at r4195; linear_combination r4195), (by unfold Seg13.relationRow4196 at r4196; linear_combination r4196), (by unfold Seg13.relationRow4197 at r4197; linear_combination r4197), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg53
    refine ⟨rho 11622, rho 11623, rho 11624, rho 11625, rho 11626,
      (by unfold Seg13.relationRow4198 at r4198; linear_combination r4198), (by unfold Seg13.relationRow4199 at r4199; linear_combination r4199), (by unfold Seg13.relationRow4200 at r4200; linear_combination r4200), (by unfold Seg13.relationRow4201 at r4201; linear_combination r4201), (by unfold Seg13.relationRow4202 at r4202; linear_combination r4202), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg54
    refine ⟨rho 11627, rho 11628, rho 11629, rho 11630, rho 11631,
      (by unfold Seg13.relationRow4203 at r4203; linear_combination r4203), (by unfold Seg13.relationRow4204 at r4204; linear_combination r4204), (by unfold Seg13.relationRow4205 at r4205; linear_combination r4205), (by unfold Seg13.relationRow4206 at r4206; linear_combination r4206), (by unfold Seg13.relationRow4207 at r4207; linear_combination r4207), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg55
    refine ⟨rho 11632, rho 11633, rho 11634, rho 11635, rho 11636,
      (by unfold Seg13.relationRow4208 at r4208; linear_combination r4208), (by unfold Seg13.relationRow4209 at r4209; linear_combination r4209), (by unfold Seg13.relationRow4210 at r4210; linear_combination r4210), (by unfold Seg13.relationRow4211 at r4211; linear_combination r4211), (by unfold Seg13.relationRow4212 at r4212; linear_combination r4212), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg56
    refine ⟨rho 11637, rho 11638, rho 11639, rho 11640, rho 11641,
      (by unfold Seg13.relationRow4213 at r4213; linear_combination r4213), (by unfold Seg13.relationRow4214 at r4214; linear_combination r4214), (by unfold Seg13.relationRow4215 at r4215; linear_combination r4215), (by unfold Seg13.relationRow4216 at r4216; linear_combination r4216), (by unfold Seg13.relationRow4217 at r4217; linear_combination r4217), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg57
    refine ⟨rho 11642, rho 11643, rho 11644, rho 11645, rho 11646,
      (by unfold Seg13.relationRow4218 at r4218; linear_combination r4218), (by unfold Seg13.relationRow4219 at r4219; linear_combination r4219), (by unfold Seg13.relationRow4220 at r4220; linear_combination r4220), (by unfold Seg13.relationRow4221 at r4221; linear_combination r4221), (by unfold Seg13.relationRow4222 at r4222; linear_combination r4222), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg58
    refine ⟨rho 11647, rho 11648, rho 11649, rho 11650, rho 11651,
      (by unfold Seg13.relationRow4223 at r4223; linear_combination r4223), (by unfold Seg13.relationRow4224 at r4224; linear_combination r4224), (by unfold Seg13.relationRow4225 at r4225; linear_combination r4225), (by unfold Seg13.relationRow4226 at r4226; linear_combination r4226), (by unfold Seg13.relationRow4227 at r4227; linear_combination r4227), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg59
    refine ⟨rho 11652, rho 11653, rho 11654, rho 11655, rho 11656,
      (by unfold Seg13.relationRow4228 at r4228; linear_combination r4228), (by unfold Seg13.relationRow4229 at r4229; linear_combination r4229), (by unfold Seg13.relationRow4230 at r4230; linear_combination r4230), (by unfold Seg13.relationRow4231 at r4231; linear_combination r4231), (by unfold Seg13.relationRow4232 at r4232; linear_combination r4232), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg60
    refine ⟨rho 11657, rho 11658, rho 11659, rho 11660, rho 11661,
      (by unfold Seg13.relationRow4233 at r4233; linear_combination r4233), (by unfold Seg13.relationRow4234 at r4234; linear_combination r4234), (by unfold Seg13.relationRow4235 at r4235; linear_combination r4235), (by unfold Seg13.relationRow4236 at r4236; linear_combination r4236), (by unfold Seg13.relationRow4237 at r4237; linear_combination r4237), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg61
    refine ⟨rho 11662, rho 11663, rho 11664, rho 11665, rho 11666,
      (by unfold Seg13.relationRow4238 at r4238; linear_combination r4238), (by unfold Seg13.relationRow4239 at r4239; linear_combination r4239), (by unfold Seg13.relationRow4240 at r4240; linear_combination r4240), (by unfold Seg13.relationRow4241 at r4241; linear_combination r4241), (by unfold Seg13.relationRow4242 at r4242; linear_combination r4242), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg62
    refine ⟨rho 11667, rho 11668, rho 11669, rho 11670, rho 11671,
      (by unfold Seg13.relationRow4243 at r4243; linear_combination r4243), (by unfold Seg13.relationRow4244 at r4244; linear_combination r4244), (by unfold Seg13.relationRow4245 at r4245; linear_combination r4245), (by unfold Seg13.relationRow4246 at r4246; linear_combination r4246), (by unfold Seg13.relationRow4247 at r4247; linear_combination r4247), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg63
    refine ⟨rho 11672, rho 11673, rho 11674, rho 11675, rho 11676,
      (by unfold Seg13.relationRow4248 at r4248; linear_combination r4248), (by unfold Seg13.relationRow4249 at r4249; linear_combination r4249), (by unfold Seg13.relationRow4250 at r4250; linear_combination r4250), (by unfold Seg13.relationRow4251 at r4251; linear_combination r4251), (by unfold Seg13.relationRow4252 at r4252; linear_combination r4252), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg64
    refine ⟨rho 11677, rho 11678, rho 11679, rho 11680, rho 11681,
      (by unfold Seg13.relationRow4253 at r4253; linear_combination r4253), (by unfold Seg13.relationRow4254 at r4254; linear_combination r4254), (by unfold Seg13.relationRow4255 at r4255; linear_combination r4255), (by unfold Seg13.relationRow4256 at r4256; linear_combination r4256), (by unfold Seg13.relationRow4257 at r4257; linear_combination r4257), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg65
    refine ⟨rho 11682, rho 11683, rho 11684, rho 11685, rho 11686,
      (by unfold Seg13.relationRow4258 at r4258; linear_combination r4258), (by unfold Seg13.relationRow4259 at r4259; linear_combination r4259), (by unfold Seg13.relationRow4260 at r4260; linear_combination r4260), (by unfold Seg13.relationRow4261 at r4261; linear_combination r4261), (by unfold Seg13.relationRow4262 at r4262; linear_combination r4262), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg66
    refine ⟨rho 11687, rho 11688, rho 11689, rho 11690, rho 11691,
      (by unfold Seg13.relationRow4263 at r4263; linear_combination r4263), (by unfold Seg13.relationRow4264 at r4264; linear_combination r4264), (by unfold Seg13.relationRow4265 at r4265; linear_combination r4265), (by unfold Seg13.relationRow4266 at r4266; linear_combination r4266), (by unfold Seg13.relationRow4267 at r4267; linear_combination r4267), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg67
    refine ⟨rho 11692, rho 11693, rho 11694, rho 11695, rho 11696,
      (by unfold Seg13.relationRow4268 at r4268; linear_combination r4268), (by unfold Seg13.relationRow4269 at r4269; linear_combination r4269), (by unfold Seg13.relationRow4270 at r4270; linear_combination r4270), (by unfold Seg13.relationRow4271 at r4271; linear_combination r4271), (by unfold Seg13.relationRow4272 at r4272; linear_combination r4272), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg68
    refine ⟨rho 11697, rho 11698, rho 11699, rho 11700, rho 11701,
      (by unfold Seg13.relationRow4273 at r4273; linear_combination r4273), (by unfold Seg13.relationRow4274 at r4274; linear_combination r4274), (by unfold Seg13.relationRow4275 at r4275; linear_combination r4275), (by unfold Seg13.relationRow4276 at r4276; linear_combination r4276), (by unfold Seg13.relationRow4277 at r4277; linear_combination r4277), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg69
    refine ⟨rho 11702, rho 11703, rho 11704, rho 11705, rho 11706,
      (by unfold Seg13.relationRow4278 at r4278; linear_combination r4278), (by unfold Seg13.relationRow4279 at r4279; linear_combination r4279), (by unfold Seg13.relationRow4280 at r4280; linear_combination r4280), (by unfold Seg13.relationRow4281 at r4281; linear_combination r4281), (by unfold Seg13.relationRow4282 at r4282; linear_combination r4282), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.relation_sound_permSpec (rho 64) (rho 65) (rho 66) (rho 11351) (rho 11352) (rho 11353) (rho 11354) (rho 11355) (rho 11356) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.tctNode11DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.F) + (11 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode10Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

