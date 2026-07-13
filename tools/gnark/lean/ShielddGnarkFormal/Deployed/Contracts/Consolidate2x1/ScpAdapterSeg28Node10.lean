import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode10.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node10_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode10Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (11 : Seg28.F))
        (rho 154 + rho 23281) (rho 155 + rho 23282 + rho 23283)
        (rho 155 + rho 23284 + rho 23285) (rho 156 + rho 23286) := by
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3933, r3934, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg28.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg28.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg28.relationPart52 at p52
  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, r4239⟩
  unfold Seg28.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.relation (rho 154) (rho 155) (rho 156) (rho 23281) (rho 23282) (rho 23283) (rho 23284) (rho 23285) (rho 23286)
      (fun o0 o1 o2 o3 o4 => o0 = rho 23616 ∧ o1 = rho 23621 ∧ o2 = rho 23626 ∧ o3 = rho 23631 ∧ o4 = rho 23636) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg0
    refine ⟨rho 23287, rho 23288, rho 23289, rho 23290, rho 23291,
      (by unfold Seg28.relationRow3933 at r3933; linear_combination r3933), (by unfold Seg28.relationRow3934 at r3934; linear_combination r3934), (by unfold Seg28.relationRow3935 at r3935; linear_combination r3935), (by unfold Seg28.relationRow3936 at r3936; linear_combination r3936), (by unfold Seg28.relationRow3937 at r3937; linear_combination r3937), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg1
    refine ⟨rho 23292, rho 23293, rho 23294, rho 23295, rho 23296,
      (by unfold Seg28.relationRow3938 at r3938; linear_combination r3938), (by unfold Seg28.relationRow3939 at r3939; linear_combination r3939), (by unfold Seg28.relationRow3940 at r3940; linear_combination r3940), (by unfold Seg28.relationRow3941 at r3941; linear_combination r3941), (by unfold Seg28.relationRow3942 at r3942; linear_combination r3942), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg2
    refine ⟨rho 23297, rho 23298, rho 23299, rho 23300, rho 23301,
      (by unfold Seg28.relationRow3943 at r3943; linear_combination r3943), (by unfold Seg28.relationRow3944 at r3944; linear_combination r3944), (by unfold Seg28.relationRow3945 at r3945; linear_combination r3945), (by unfold Seg28.relationRow3946 at r3946; linear_combination r3946), (by unfold Seg28.relationRow3947 at r3947; linear_combination r3947), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg3
    refine ⟨rho 23302, rho 23303, rho 23304, rho 23305, rho 23306,
      (by unfold Seg28.relationRow3948 at r3948; linear_combination r3948), (by unfold Seg28.relationRow3949 at r3949; linear_combination r3949), (by unfold Seg28.relationRow3950 at r3950; linear_combination r3950), (by unfold Seg28.relationRow3951 at r3951; linear_combination r3951), (by unfold Seg28.relationRow3952 at r3952; linear_combination r3952), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg4
    refine ⟨rho 23307, rho 23308, rho 23309, rho 23310, rho 23311,
      (by unfold Seg28.relationRow3953 at r3953; linear_combination r3953), (by unfold Seg28.relationRow3954 at r3954; linear_combination r3954), (by unfold Seg28.relationRow3955 at r3955; linear_combination r3955), (by unfold Seg28.relationRow3956 at r3956; linear_combination r3956), (by unfold Seg28.relationRow3957 at r3957; linear_combination r3957), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg5
    refine ⟨rho 23312, rho 23313, rho 23314, rho 23315, rho 23316,
      (by unfold Seg28.relationRow3958 at r3958; linear_combination r3958), (by unfold Seg28.relationRow3959 at r3959; linear_combination r3959), (by unfold Seg28.relationRow3960 at r3960; linear_combination r3960), (by unfold Seg28.relationRow3961 at r3961; linear_combination r3961), (by unfold Seg28.relationRow3962 at r3962; linear_combination r3962), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg6
    refine ⟨rho 23317, rho 23318, rho 23319, rho 23320, rho 23321,
      (by unfold Seg28.relationRow3963 at r3963; linear_combination r3963), (by unfold Seg28.relationRow3964 at r3964; linear_combination r3964), (by unfold Seg28.relationRow3965 at r3965; linear_combination r3965), (by unfold Seg28.relationRow3966 at r3966; linear_combination r3966), (by unfold Seg28.relationRow3967 at r3967; linear_combination r3967), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg7
    refine ⟨rho 23322, rho 23323, rho 23324, rho 23325, rho 23326,
      (by unfold Seg28.relationRow3968 at r3968; linear_combination r3968), (by unfold Seg28.relationRow3969 at r3969; linear_combination r3969), (by unfold Seg28.relationRow3970 at r3970; linear_combination r3970), (by unfold Seg28.relationRow3971 at r3971; linear_combination r3971), (by unfold Seg28.relationRow3972 at r3972; linear_combination r3972), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg8
    refine ⟨rho 23327, rho 23328, rho 23329, rho 23330, rho 23331,
      (by unfold Seg28.relationRow3973 at r3973; linear_combination r3973), (by unfold Seg28.relationRow3974 at r3974; linear_combination r3974), (by unfold Seg28.relationRow3975 at r3975; linear_combination r3975), (by unfold Seg28.relationRow3976 at r3976; linear_combination r3976), (by unfold Seg28.relationRow3977 at r3977; linear_combination r3977), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg9
    refine ⟨rho 23332, rho 23333, rho 23334, rho 23335, rho 23336,
      (by unfold Seg28.relationRow3978 at r3978; linear_combination r3978), (by unfold Seg28.relationRow3979 at r3979; linear_combination r3979), (by unfold Seg28.relationRow3980 at r3980; linear_combination r3980), (by unfold Seg28.relationRow3981 at r3981; linear_combination r3981), (by unfold Seg28.relationRow3982 at r3982; linear_combination r3982), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg10
    refine ⟨rho 23337, rho 23338, rho 23339, rho 23340, rho 23341,
      (by unfold Seg28.relationRow3983 at r3983; linear_combination r3983), (by unfold Seg28.relationRow3984 at r3984; linear_combination r3984), (by unfold Seg28.relationRow3985 at r3985; linear_combination r3985), (by unfold Seg28.relationRow3986 at r3986; linear_combination r3986), (by unfold Seg28.relationRow3987 at r3987; linear_combination r3987), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg11
    refine ⟨rho 23342, rho 23343, rho 23344, rho 23345, rho 23346,
      (by unfold Seg28.relationRow3988 at r3988; linear_combination r3988), (by unfold Seg28.relationRow3989 at r3989; linear_combination r3989), (by unfold Seg28.relationRow3990 at r3990; linear_combination r3990), (by unfold Seg28.relationRow3991 at r3991; linear_combination r3991), (by unfold Seg28.relationRow3992 at r3992; linear_combination r3992), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg12
    refine ⟨rho 23347, rho 23348, rho 23349, rho 23350, rho 23351,
      (by unfold Seg28.relationRow3993 at r3993; linear_combination r3993), (by unfold Seg28.relationRow3994 at r3994; linear_combination r3994), (by unfold Seg28.relationRow3995 at r3995; linear_combination r3995), (by unfold Seg28.relationRow3996 at r3996; linear_combination r3996), (by unfold Seg28.relationRow3997 at r3997; linear_combination r3997), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg13
    refine ⟨rho 23352, rho 23353, rho 23354, rho 23355, rho 23356,
      (by unfold Seg28.relationRow3998 at r3998; linear_combination r3998), (by unfold Seg28.relationRow3999 at r3999; linear_combination r3999), (by unfold Seg28.relationRow4000 at r4000; linear_combination r4000), (by unfold Seg28.relationRow4001 at r4001; linear_combination r4001), (by unfold Seg28.relationRow4002 at r4002; linear_combination r4002), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg14
    refine ⟨rho 23357, rho 23358, rho 23359, rho 23360, rho 23361,
      (by unfold Seg28.relationRow4003 at r4003; linear_combination r4003), (by unfold Seg28.relationRow4004 at r4004; linear_combination r4004), (by unfold Seg28.relationRow4005 at r4005; linear_combination r4005), (by unfold Seg28.relationRow4006 at r4006; linear_combination r4006), (by unfold Seg28.relationRow4007 at r4007; linear_combination r4007), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg15
    refine ⟨rho 23362, rho 23363, rho 23364, rho 23365, rho 23366,
      (by unfold Seg28.relationRow4008 at r4008; linear_combination r4008), (by unfold Seg28.relationRow4009 at r4009; linear_combination r4009), (by unfold Seg28.relationRow4010 at r4010; linear_combination r4010), (by unfold Seg28.relationRow4011 at r4011; linear_combination r4011), (by unfold Seg28.relationRow4012 at r4012; linear_combination r4012), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg16
    refine ⟨rho 23367, rho 23368, rho 23369, rho 23370, rho 23371,
      (by unfold Seg28.relationRow4013 at r4013; linear_combination r4013), (by unfold Seg28.relationRow4014 at r4014; linear_combination r4014), (by unfold Seg28.relationRow4015 at r4015; linear_combination r4015), (by unfold Seg28.relationRow4016 at r4016; linear_combination r4016), (by unfold Seg28.relationRow4017 at r4017; linear_combination r4017), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg17
    refine ⟨rho 23372, rho 23373, rho 23374, rho 23375, rho 23376,
      (by unfold Seg28.relationRow4018 at r4018; linear_combination r4018), (by unfold Seg28.relationRow4019 at r4019; linear_combination r4019), (by unfold Seg28.relationRow4020 at r4020; linear_combination r4020), (by unfold Seg28.relationRow4021 at r4021; linear_combination r4021), (by unfold Seg28.relationRow4022 at r4022; linear_combination r4022), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg18
    refine ⟨rho 23377, rho 23378, rho 23379, rho 23380, rho 23381,
      (by unfold Seg28.relationRow4023 at r4023; linear_combination r4023), (by unfold Seg28.relationRow4024 at r4024; linear_combination r4024), (by unfold Seg28.relationRow4025 at r4025; linear_combination r4025), (by unfold Seg28.relationRow4026 at r4026; linear_combination r4026), (by unfold Seg28.relationRow4027 at r4027; linear_combination r4027), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg19
    refine ⟨rho 23382, rho 23383, rho 23384, rho 23385, rho 23386,
      (by unfold Seg28.relationRow4028 at r4028; linear_combination r4028), (by unfold Seg28.relationRow4029 at r4029; linear_combination r4029), (by unfold Seg28.relationRow4030 at r4030; linear_combination r4030), (by unfold Seg28.relationRow4031 at r4031; linear_combination r4031), (by unfold Seg28.relationRow4032 at r4032; linear_combination r4032), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg20
    refine ⟨rho 23387, rho 23388, rho 23389, rho 23390, rho 23391,
      (by unfold Seg28.relationRow4033 at r4033; linear_combination r4033), (by unfold Seg28.relationRow4034 at r4034; linear_combination r4034), (by unfold Seg28.relationRow4035 at r4035; linear_combination r4035), (by unfold Seg28.relationRow4036 at r4036; linear_combination r4036), (by unfold Seg28.relationRow4037 at r4037; linear_combination r4037), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg21
    refine ⟨rho 23392, rho 23393, rho 23394, rho 23395, rho 23396,
      (by unfold Seg28.relationRow4038 at r4038; linear_combination r4038), (by unfold Seg28.relationRow4039 at r4039; linear_combination r4039), (by unfold Seg28.relationRow4040 at r4040; linear_combination r4040), (by unfold Seg28.relationRow4041 at r4041; linear_combination r4041), (by unfold Seg28.relationRow4042 at r4042; linear_combination r4042), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg22
    refine ⟨rho 23397, rho 23398, rho 23399, rho 23400, rho 23401,
      (by unfold Seg28.relationRow4043 at r4043; linear_combination r4043), (by unfold Seg28.relationRow4044 at r4044; linear_combination r4044), (by unfold Seg28.relationRow4045 at r4045; linear_combination r4045), (by unfold Seg28.relationRow4046 at r4046; linear_combination r4046), (by unfold Seg28.relationRow4047 at r4047; linear_combination r4047), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg23
    refine ⟨rho 23402, rho 23403, rho 23404, rho 23405, rho 23406,
      (by unfold Seg28.relationRow4048 at r4048; linear_combination r4048), (by unfold Seg28.relationRow4049 at r4049; linear_combination r4049), (by unfold Seg28.relationRow4050 at r4050; linear_combination r4050), (by unfold Seg28.relationRow4051 at r4051; linear_combination r4051), (by unfold Seg28.relationRow4052 at r4052; linear_combination r4052), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg24
    refine ⟨rho 23407, rho 23408, rho 23409, rho 23410, rho 23411,
      (by unfold Seg28.relationRow4053 at r4053; linear_combination r4053), (by unfold Seg28.relationRow4054 at r4054; linear_combination r4054), (by unfold Seg28.relationRow4055 at r4055; linear_combination r4055), (by unfold Seg28.relationRow4056 at r4056; linear_combination r4056), (by unfold Seg28.relationRow4057 at r4057; linear_combination r4057), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg25
    refine ⟨rho 23412, rho 23413, rho 23414, rho 23415, rho 23416,
      (by unfold Seg28.relationRow4058 at r4058; linear_combination r4058), (by unfold Seg28.relationRow4059 at r4059; linear_combination r4059), (by unfold Seg28.relationRow4060 at r4060; linear_combination r4060), (by unfold Seg28.relationRow4061 at r4061; linear_combination r4061), (by unfold Seg28.relationRow4062 at r4062; linear_combination r4062), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg26
    refine ⟨rho 23417, rho 23418, rho 23419, rho 23420, rho 23421,
      (by unfold Seg28.relationRow4063 at r4063; linear_combination r4063), (by unfold Seg28.relationRow4064 at r4064; linear_combination r4064), (by unfold Seg28.relationRow4065 at r4065; linear_combination r4065), (by unfold Seg28.relationRow4066 at r4066; linear_combination r4066), (by unfold Seg28.relationRow4067 at r4067; linear_combination r4067), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg27
    refine ⟨rho 23422, rho 23423, rho 23424, rho 23425, rho 23426,
      (by unfold Seg28.relationRow4068 at r4068; linear_combination r4068), (by unfold Seg28.relationRow4069 at r4069; linear_combination r4069), (by unfold Seg28.relationRow4070 at r4070; linear_combination r4070), (by unfold Seg28.relationRow4071 at r4071; linear_combination r4071), (by unfold Seg28.relationRow4072 at r4072; linear_combination r4072), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg28
    refine ⟨rho 23427, rho 23428, rho 23429, rho 23430, rho 23431,
      (by unfold Seg28.relationRow4073 at r4073; linear_combination r4073), (by unfold Seg28.relationRow4074 at r4074; linear_combination r4074), (by unfold Seg28.relationRow4075 at r4075; linear_combination r4075), (by unfold Seg28.relationRow4076 at r4076; linear_combination r4076), (by unfold Seg28.relationRow4077 at r4077; linear_combination r4077), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg29
    refine ⟨rho 23432, rho 23433, rho 23434, rho 23435, rho 23436,
      (by unfold Seg28.relationRow4078 at r4078; linear_combination r4078), (by unfold Seg28.relationRow4079 at r4079; linear_combination r4079), (by unfold Seg28.relationRow4080 at r4080; linear_combination r4080), (by unfold Seg28.relationRow4081 at r4081; linear_combination r4081), (by unfold Seg28.relationRow4082 at r4082; linear_combination r4082), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg30
    refine ⟨rho 23437, rho 23438, rho 23439, rho 23440, rho 23441,
      (by unfold Seg28.relationRow4083 at r4083; linear_combination r4083), (by unfold Seg28.relationRow4084 at r4084; linear_combination r4084), (by unfold Seg28.relationRow4085 at r4085; linear_combination r4085), (by unfold Seg28.relationRow4086 at r4086; linear_combination r4086), (by unfold Seg28.relationRow4087 at r4087; linear_combination r4087), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg31
    refine ⟨rho 23442, rho 23443, rho 23444, rho 23445, rho 23446,
      (by unfold Seg28.relationRow4088 at r4088; linear_combination r4088), (by unfold Seg28.relationRow4089 at r4089; linear_combination r4089), (by unfold Seg28.relationRow4090 at r4090; linear_combination r4090), (by unfold Seg28.relationRow4091 at r4091; linear_combination r4091), (by unfold Seg28.relationRow4092 at r4092; linear_combination r4092), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg32
    refine ⟨rho 23447, rho 23448, rho 23449, rho 23450, rho 23451,
      (by unfold Seg28.relationRow4093 at r4093; linear_combination r4093), (by unfold Seg28.relationRow4094 at r4094; linear_combination r4094), (by unfold Seg28.relationRow4095 at r4095; linear_combination r4095), (by unfold Seg28.relationRow4096 at r4096; linear_combination r4096), (by unfold Seg28.relationRow4097 at r4097; linear_combination r4097), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg33
    refine ⟨rho 23452, rho 23453, rho 23454, rho 23455, rho 23456,
      (by unfold Seg28.relationRow4098 at r4098; linear_combination r4098), (by unfold Seg28.relationRow4099 at r4099; linear_combination r4099), (by unfold Seg28.relationRow4100 at r4100; linear_combination r4100), (by unfold Seg28.relationRow4101 at r4101; linear_combination r4101), (by unfold Seg28.relationRow4102 at r4102; linear_combination r4102), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg34
    refine ⟨rho 23457, rho 23458, rho 23459, rho 23460, rho 23461,
      (by unfold Seg28.relationRow4103 at r4103; linear_combination r4103), (by unfold Seg28.relationRow4104 at r4104; linear_combination r4104), (by unfold Seg28.relationRow4105 at r4105; linear_combination r4105), (by unfold Seg28.relationRow4106 at r4106; linear_combination r4106), (by unfold Seg28.relationRow4107 at r4107; linear_combination r4107), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg35
    refine ⟨rho 23462, rho 23463, rho 23464, rho 23465, rho 23466,
      (by unfold Seg28.relationRow4108 at r4108; linear_combination r4108), (by unfold Seg28.relationRow4109 at r4109; linear_combination r4109), (by unfold Seg28.relationRow4110 at r4110; linear_combination r4110), (by unfold Seg28.relationRow4111 at r4111; linear_combination r4111), (by unfold Seg28.relationRow4112 at r4112; linear_combination r4112), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg36
    refine ⟨rho 23467, rho 23468, rho 23469, rho 23470, rho 23471,
      (by unfold Seg28.relationRow4113 at r4113; linear_combination r4113), (by unfold Seg28.relationRow4114 at r4114; linear_combination r4114), (by unfold Seg28.relationRow4115 at r4115; linear_combination r4115), (by unfold Seg28.relationRow4116 at r4116; linear_combination r4116), (by unfold Seg28.relationRow4117 at r4117; linear_combination r4117), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg37
    refine ⟨rho 23472, rho 23473, rho 23474, rho 23475, rho 23476,
      (by unfold Seg28.relationRow4118 at r4118; linear_combination r4118), (by unfold Seg28.relationRow4119 at r4119; linear_combination r4119), (by unfold Seg28.relationRow4120 at r4120; linear_combination r4120), (by unfold Seg28.relationRow4121 at r4121; linear_combination r4121), (by unfold Seg28.relationRow4122 at r4122; linear_combination r4122), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg38
    refine ⟨rho 23477, rho 23478, rho 23479, rho 23480, rho 23481,
      (by unfold Seg28.relationRow4123 at r4123; linear_combination r4123), (by unfold Seg28.relationRow4124 at r4124; linear_combination r4124), (by unfold Seg28.relationRow4125 at r4125; linear_combination r4125), (by unfold Seg28.relationRow4126 at r4126; linear_combination r4126), (by unfold Seg28.relationRow4127 at r4127; linear_combination r4127), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg39
    refine ⟨rho 23482, rho 23483, rho 23484, rho 23485, rho 23486,
      (by unfold Seg28.relationRow4128 at r4128; linear_combination r4128), (by unfold Seg28.relationRow4129 at r4129; linear_combination r4129), (by unfold Seg28.relationRow4130 at r4130; linear_combination r4130), (by unfold Seg28.relationRow4131 at r4131; linear_combination r4131), (by unfold Seg28.relationRow4132 at r4132; linear_combination r4132), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg40
    refine ⟨rho 23487, rho 23488, rho 23489, rho 23490, rho 23491,
      (by unfold Seg28.relationRow4133 at r4133; linear_combination r4133), (by unfold Seg28.relationRow4134 at r4134; linear_combination r4134), (by unfold Seg28.relationRow4135 at r4135; linear_combination r4135), (by unfold Seg28.relationRow4136 at r4136; linear_combination r4136), (by unfold Seg28.relationRow4137 at r4137; linear_combination r4137), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg41
    refine ⟨rho 23492, rho 23493, rho 23494, rho 23495, rho 23496,
      (by unfold Seg28.relationRow4138 at r4138; linear_combination r4138), (by unfold Seg28.relationRow4139 at r4139; linear_combination r4139), (by unfold Seg28.relationRow4140 at r4140; linear_combination r4140), (by unfold Seg28.relationRow4141 at r4141; linear_combination r4141), (by unfold Seg28.relationRow4142 at r4142; linear_combination r4142), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg42
    refine ⟨rho 23497, rho 23498, rho 23499, rho 23500, rho 23501,
      (by unfold Seg28.relationRow4143 at r4143; linear_combination r4143), (by unfold Seg28.relationRow4144 at r4144; linear_combination r4144), (by unfold Seg28.relationRow4145 at r4145; linear_combination r4145), (by unfold Seg28.relationRow4146 at r4146; linear_combination r4146), (by unfold Seg28.relationRow4147 at r4147; linear_combination r4147), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg43
    refine ⟨rho 23502, rho 23503, rho 23504, rho 23505, rho 23506,
      (by unfold Seg28.relationRow4148 at r4148; linear_combination r4148), (by unfold Seg28.relationRow4149 at r4149; linear_combination r4149), (by unfold Seg28.relationRow4150 at r4150; linear_combination r4150), (by unfold Seg28.relationRow4151 at r4151; linear_combination r4151), (by unfold Seg28.relationRow4152 at r4152; linear_combination r4152), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg44
    refine ⟨rho 23507, rho 23508, rho 23509, rho 23510, rho 23511,
      (by unfold Seg28.relationRow4153 at r4153; linear_combination r4153), (by unfold Seg28.relationRow4154 at r4154; linear_combination r4154), (by unfold Seg28.relationRow4155 at r4155; linear_combination r4155), (by unfold Seg28.relationRow4156 at r4156; linear_combination r4156), (by unfold Seg28.relationRow4157 at r4157; linear_combination r4157), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg45
    refine ⟨rho 23512, rho 23513, rho 23514, rho 23515, rho 23516,
      (by unfold Seg28.relationRow4158 at r4158; linear_combination r4158), (by unfold Seg28.relationRow4159 at r4159; linear_combination r4159), (by unfold Seg28.relationRow4160 at r4160; linear_combination r4160), (by unfold Seg28.relationRow4161 at r4161; linear_combination r4161), (by unfold Seg28.relationRow4162 at r4162; linear_combination r4162), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg46
    refine ⟨rho 23517, rho 23518, rho 23519, rho 23520, rho 23521,
      (by unfold Seg28.relationRow4163 at r4163; linear_combination r4163), (by unfold Seg28.relationRow4164 at r4164; linear_combination r4164), (by unfold Seg28.relationRow4165 at r4165; linear_combination r4165), (by unfold Seg28.relationRow4166 at r4166; linear_combination r4166), (by unfold Seg28.relationRow4167 at r4167; linear_combination r4167), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg47
    refine ⟨rho 23522, rho 23523, rho 23524, rho 23525, rho 23526,
      (by unfold Seg28.relationRow4168 at r4168; linear_combination r4168), (by unfold Seg28.relationRow4169 at r4169; linear_combination r4169), (by unfold Seg28.relationRow4170 at r4170; linear_combination r4170), (by unfold Seg28.relationRow4171 at r4171; linear_combination r4171), (by unfold Seg28.relationRow4172 at r4172; linear_combination r4172), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg48
    refine ⟨rho 23527, rho 23528, rho 23529, rho 23530, rho 23531,
      (by unfold Seg28.relationRow4173 at r4173; linear_combination r4173), (by unfold Seg28.relationRow4174 at r4174; linear_combination r4174), (by unfold Seg28.relationRow4175 at r4175; linear_combination r4175), (by unfold Seg28.relationRow4176 at r4176; linear_combination r4176), (by unfold Seg28.relationRow4177 at r4177; linear_combination r4177), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg49
    refine ⟨rho 23532, rho 23533, rho 23534, rho 23535, rho 23536,
      (by unfold Seg28.relationRow4178 at r4178; linear_combination r4178), (by unfold Seg28.relationRow4179 at r4179; linear_combination r4179), (by unfold Seg28.relationRow4180 at r4180; linear_combination r4180), (by unfold Seg28.relationRow4181 at r4181; linear_combination r4181), (by unfold Seg28.relationRow4182 at r4182; linear_combination r4182), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg50
    refine ⟨rho 23537, rho 23538, rho 23539, rho 23540, rho 23541,
      (by unfold Seg28.relationRow4183 at r4183; linear_combination r4183), (by unfold Seg28.relationRow4184 at r4184; linear_combination r4184), (by unfold Seg28.relationRow4185 at r4185; linear_combination r4185), (by unfold Seg28.relationRow4186 at r4186; linear_combination r4186), (by unfold Seg28.relationRow4187 at r4187; linear_combination r4187), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg51
    refine ⟨rho 23542, rho 23543, rho 23544, rho 23545, rho 23546,
      (by unfold Seg28.relationRow4188 at r4188; linear_combination r4188), (by unfold Seg28.relationRow4189 at r4189; linear_combination r4189), (by unfold Seg28.relationRow4190 at r4190; linear_combination r4190), (by unfold Seg28.relationRow4191 at r4191; linear_combination r4191), (by unfold Seg28.relationRow4192 at r4192; linear_combination r4192), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg52
    refine ⟨rho 23547, rho 23548, rho 23549, rho 23550, rho 23551,
      (by unfold Seg28.relationRow4193 at r4193; linear_combination r4193), (by unfold Seg28.relationRow4194 at r4194; linear_combination r4194), (by unfold Seg28.relationRow4195 at r4195; linear_combination r4195), (by unfold Seg28.relationRow4196 at r4196; linear_combination r4196), (by unfold Seg28.relationRow4197 at r4197; linear_combination r4197), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg53
    refine ⟨rho 23552, rho 23553, rho 23554, rho 23555, rho 23556,
      (by unfold Seg28.relationRow4198 at r4198; linear_combination r4198), (by unfold Seg28.relationRow4199 at r4199; linear_combination r4199), (by unfold Seg28.relationRow4200 at r4200; linear_combination r4200), (by unfold Seg28.relationRow4201 at r4201; linear_combination r4201), (by unfold Seg28.relationRow4202 at r4202; linear_combination r4202), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg54
    refine ⟨rho 23557, rho 23558, rho 23559, rho 23560, rho 23561,
      (by unfold Seg28.relationRow4203 at r4203; linear_combination r4203), (by unfold Seg28.relationRow4204 at r4204; linear_combination r4204), (by unfold Seg28.relationRow4205 at r4205; linear_combination r4205), (by unfold Seg28.relationRow4206 at r4206; linear_combination r4206), (by unfold Seg28.relationRow4207 at r4207; linear_combination r4207), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg55
    refine ⟨rho 23562, rho 23563, rho 23564, rho 23565, rho 23566,
      (by unfold Seg28.relationRow4208 at r4208; linear_combination r4208), (by unfold Seg28.relationRow4209 at r4209; linear_combination r4209), (by unfold Seg28.relationRow4210 at r4210; linear_combination r4210), (by unfold Seg28.relationRow4211 at r4211; linear_combination r4211), (by unfold Seg28.relationRow4212 at r4212; linear_combination r4212), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg56
    refine ⟨rho 23567, rho 23568, rho 23569, rho 23570, rho 23571,
      (by unfold Seg28.relationRow4213 at r4213; linear_combination r4213), (by unfold Seg28.relationRow4214 at r4214; linear_combination r4214), (by unfold Seg28.relationRow4215 at r4215; linear_combination r4215), (by unfold Seg28.relationRow4216 at r4216; linear_combination r4216), (by unfold Seg28.relationRow4217 at r4217; linear_combination r4217), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg57
    refine ⟨rho 23572, rho 23573, rho 23574, rho 23575, rho 23576,
      (by unfold Seg28.relationRow4218 at r4218; linear_combination r4218), (by unfold Seg28.relationRow4219 at r4219; linear_combination r4219), (by unfold Seg28.relationRow4220 at r4220; linear_combination r4220), (by unfold Seg28.relationRow4221 at r4221; linear_combination r4221), (by unfold Seg28.relationRow4222 at r4222; linear_combination r4222), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg58
    refine ⟨rho 23577, rho 23578, rho 23579, rho 23580, rho 23581,
      (by unfold Seg28.relationRow4223 at r4223; linear_combination r4223), (by unfold Seg28.relationRow4224 at r4224; linear_combination r4224), (by unfold Seg28.relationRow4225 at r4225; linear_combination r4225), (by unfold Seg28.relationRow4226 at r4226; linear_combination r4226), (by unfold Seg28.relationRow4227 at r4227; linear_combination r4227), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg59
    refine ⟨rho 23582, rho 23583, rho 23584, rho 23585, rho 23586,
      (by unfold Seg28.relationRow4228 at r4228; linear_combination r4228), (by unfold Seg28.relationRow4229 at r4229; linear_combination r4229), (by unfold Seg28.relationRow4230 at r4230; linear_combination r4230), (by unfold Seg28.relationRow4231 at r4231; linear_combination r4231), (by unfold Seg28.relationRow4232 at r4232; linear_combination r4232), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg60
    refine ⟨rho 23587, rho 23588, rho 23589, rho 23590, rho 23591,
      (by unfold Seg28.relationRow4233 at r4233; linear_combination r4233), (by unfold Seg28.relationRow4234 at r4234; linear_combination r4234), (by unfold Seg28.relationRow4235 at r4235; linear_combination r4235), (by unfold Seg28.relationRow4236 at r4236; linear_combination r4236), (by unfold Seg28.relationRow4237 at r4237; linear_combination r4237), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg61
    refine ⟨rho 23592, rho 23593, rho 23594, rho 23595, rho 23596,
      (by unfold Seg28.relationRow4238 at r4238; linear_combination r4238), (by unfold Seg28.relationRow4239 at r4239; linear_combination r4239), (by unfold Seg28.relationRow4240 at r4240; linear_combination r4240), (by unfold Seg28.relationRow4241 at r4241; linear_combination r4241), (by unfold Seg28.relationRow4242 at r4242; linear_combination r4242), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg62
    refine ⟨rho 23597, rho 23598, rho 23599, rho 23600, rho 23601,
      (by unfold Seg28.relationRow4243 at r4243; linear_combination r4243), (by unfold Seg28.relationRow4244 at r4244; linear_combination r4244), (by unfold Seg28.relationRow4245 at r4245; linear_combination r4245), (by unfold Seg28.relationRow4246 at r4246; linear_combination r4246), (by unfold Seg28.relationRow4247 at r4247; linear_combination r4247), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg63
    refine ⟨rho 23602, rho 23603, rho 23604, rho 23605, rho 23606,
      (by unfold Seg28.relationRow4248 at r4248; linear_combination r4248), (by unfold Seg28.relationRow4249 at r4249; linear_combination r4249), (by unfold Seg28.relationRow4250 at r4250; linear_combination r4250), (by unfold Seg28.relationRow4251 at r4251; linear_combination r4251), (by unfold Seg28.relationRow4252 at r4252; linear_combination r4252), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg64
    refine ⟨rho 23607, rho 23608, rho 23609, rho 23610, rho 23611,
      (by unfold Seg28.relationRow4253 at r4253; linear_combination r4253), (by unfold Seg28.relationRow4254 at r4254; linear_combination r4254), (by unfold Seg28.relationRow4255 at r4255; linear_combination r4255), (by unfold Seg28.relationRow4256 at r4256; linear_combination r4256), (by unfold Seg28.relationRow4257 at r4257; linear_combination r4257), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg65
    refine ⟨rho 23612, rho 23613, rho 23614, rho 23615, rho 23616,
      (by unfold Seg28.relationRow4258 at r4258; linear_combination r4258), (by unfold Seg28.relationRow4259 at r4259; linear_combination r4259), (by unfold Seg28.relationRow4260 at r4260; linear_combination r4260), (by unfold Seg28.relationRow4261 at r4261; linear_combination r4261), (by unfold Seg28.relationRow4262 at r4262; linear_combination r4262), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg66
    refine ⟨rho 23617, rho 23618, rho 23619, rho 23620, rho 23621,
      (by unfold Seg28.relationRow4263 at r4263; linear_combination r4263), (by unfold Seg28.relationRow4264 at r4264; linear_combination r4264), (by unfold Seg28.relationRow4265 at r4265; linear_combination r4265), (by unfold Seg28.relationRow4266 at r4266; linear_combination r4266), (by unfold Seg28.relationRow4267 at r4267; linear_combination r4267), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg67
    refine ⟨rho 23622, rho 23623, rho 23624, rho 23625, rho 23626,
      (by unfold Seg28.relationRow4268 at r4268; linear_combination r4268), (by unfold Seg28.relationRow4269 at r4269; linear_combination r4269), (by unfold Seg28.relationRow4270 at r4270; linear_combination r4270), (by unfold Seg28.relationRow4271 at r4271; linear_combination r4271), (by unfold Seg28.relationRow4272 at r4272; linear_combination r4272), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg68
    refine ⟨rho 23627, rho 23628, rho 23629, rho 23630, rho 23631,
      (by unfold Seg28.relationRow4273 at r4273; linear_combination r4273), (by unfold Seg28.relationRow4274 at r4274; linear_combination r4274), (by unfold Seg28.relationRow4275 at r4275; linear_combination r4275), (by unfold Seg28.relationRow4276 at r4276; linear_combination r4276), (by unfold Seg28.relationRow4277 at r4277; linear_combination r4277), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg69
    refine ⟨rho 23632, rho 23633, rho 23634, rho 23635, rho 23636,
      (by unfold Seg28.relationRow4278 at r4278; linear_combination r4278), (by unfold Seg28.relationRow4279 at r4279; linear_combination r4279), (by unfold Seg28.relationRow4280 at r4280; linear_combination r4280), (by unfold Seg28.relationRow4281 at r4281; linear_combination r4281), (by unfold Seg28.relationRow4282 at r4282; linear_combination r4282), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.relation_sound_permSpec (rho 154) (rho 155) (rho 156) (rho 23281) (rho 23282) (rho 23283) (rho 23284) (rho 23285) (rho 23286) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.tctNode11DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.F) + (11 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode10Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode10.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

