import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs48

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow4192 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4016) * ((1 : F) * rho 4017) = ((1 : F) * rho 4018)

def relationRow4193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4019) * ((1 : F) + (1 : F) * rho 4018) = ((1 : F) * rho 4016 + (1 : F) * rho 4017)

def relationRow4194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((1 : F) + (-1 : F) * rho 4018) = ((1 : F) * rho 4015 + (-1 : F) * rho 4016 + (-1 : F) * rho 4017)

def relationRow4195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4019) * ((1 : F) * rho 4020) = ((1 : F) * rho 4021)

def relationRow4196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4019) * ((1 : F) * rho 4019) = ((1 : F) * rho 4022)

def relationRow4197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4020) * ((1 : F) * rho 4020) = ((1 : F) * rho 4023)

def relationRow4198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4024) * ((-1 : F) * rho 4022 + (1 : F) * rho 4023) = ((2 : F) * rho 4021)

def relationRow4199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4025) * ((2 : F) + (1 : F) * rho 4022 + (-1 : F) * rho 4023) = ((1 : F) * rho 4022 + (1 : F) * rho 4023)

def relationRow4200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4024) * ((1 : F) * rho 4025) = ((1 : F) * rho 4026)

def relationRow4201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4024) * ((1 : F) * rho 4024) = ((1 : F) * rho 4027)

def relationRow4202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4025) * ((1 : F) * rho 4025) = ((1 : F) * rho 4028)

def relationRow4203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4029) * ((-1 : F) * rho 4027 + (1 : F) * rho 4028) = ((2 : F) * rho 4026)

def relationRow4204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4030) * ((2 : F) + (1 : F) * rho 4027 + (-1 : F) * rho 4028) = ((1 : F) * rho 4027 + (1 : F) * rho 4028)

def relationRow4205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2680) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4031)

def relationRow4206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2681) * ((1 : F) * rho 2797 + (1 : F) * rho 4031) = ((1 : F) * rho 4032)

def relationRow4207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2680) = ((1 : F) * rho 4033)

def relationRow4208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2680) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4034)

def relationRow4209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2681) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4034) = ((1 : F) * rho 4035)

def relationRow4210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2680) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4036)

def relationRow4211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4029 + (1 : F) * rho 4030) * ((1 : F) + (1 : F) * rho 4032 + (1 : F) * rho 4033 + (1 : F) * rho 4035 + (1 : F) * rho 4036) = ((1 : F) * rho 4037)

def relationRow4212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4029) * ((1 : F) + (1 : F) * rho 4035 + (1 : F) * rho 4036) = ((1 : F) * rho 4038)

def relationRow4213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4030) * ((1 : F) * rho 4032 + (1 : F) * rho 4033) = ((1 : F) * rho 4039)

def relationRow4214 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4038) * ((1 : F) * rho 4039) = ((1 : F) * rho 4040)

def relationRow4215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4041) * ((1 : F) + (1 : F) * rho 4040) = ((1 : F) * rho 4038 + (1 : F) * rho 4039)

def relationRow4216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4042) * ((1 : F) + (-1 : F) * rho 4040) = ((1 : F) * rho 4037 + (-1 : F) * rho 4038 + (-1 : F) * rho 4039)

def relationRow4217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4041) * ((1 : F) * rho 4042) = ((1 : F) * rho 4043)

def relationRow4218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4041) * ((1 : F) * rho 4041) = ((1 : F) * rho 4044)

def relationRow4219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4042) * ((1 : F) * rho 4042) = ((1 : F) * rho 4045)

def relationRow4220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((-1 : F) * rho 4044 + (1 : F) * rho 4045) = ((2 : F) * rho 4043)

def relationRow4221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * ((2 : F) + (1 : F) * rho 4044 + (-1 : F) * rho 4045) = ((1 : F) * rho 4044 + (1 : F) * rho 4045)

def relationRow4222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((1 : F) * rho 4047) = ((1 : F) * rho 4048)

def relationRow4223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4046) * ((1 : F) * rho 4046) = ((1 : F) * rho 4049)

def relationRow4224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4047) * ((1 : F) * rho 4047) = ((1 : F) * rho 4050)

def relationRow4225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4051) * ((-1 : F) * rho 4049 + (1 : F) * rho 4050) = ((2 : F) * rho 4048)

def relationRow4226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((2 : F) + (1 : F) * rho 4049 + (-1 : F) * rho 4050) = ((1 : F) * rho 4049 + (1 : F) * rho 4050)

def relationRow4227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2678) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4053)

def relationRow4228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2679) * ((1 : F) * rho 2797 + (1 : F) * rho 4053) = ((1 : F) * rho 4054)

def relationRow4229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2678) = ((1 : F) * rho 4055)

def relationRow4230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2678) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4056)

def relationRow4231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2679) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4056) = ((1 : F) * rho 4057)

def relationRow4232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2678) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4058)

def relationRow4233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4051 + (1 : F) * rho 4052) * ((1 : F) + (1 : F) * rho 4054 + (1 : F) * rho 4055 + (1 : F) * rho 4057 + (1 : F) * rho 4058) = ((1 : F) * rho 4059)

def relationRow4234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4051) * ((1 : F) + (1 : F) * rho 4057 + (1 : F) * rho 4058) = ((1 : F) * rho 4060)

def relationRow4235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((1 : F) * rho 4054 + (1 : F) * rho 4055) = ((1 : F) * rho 4061)

def relationRow4236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4060) * ((1 : F) * rho 4061) = ((1 : F) * rho 4062)

def relationRow4237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4063) * ((1 : F) + (1 : F) * rho 4062) = ((1 : F) * rho 4060 + (1 : F) * rho 4061)

def relationRow4238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4064) * ((1 : F) + (-1 : F) * rho 4062) = ((1 : F) * rho 4059 + (-1 : F) * rho 4060 + (-1 : F) * rho 4061)

def relationRow4239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4063) * ((1 : F) * rho 4064) = ((1 : F) * rho 4065)

def relationRow4240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4063) * ((1 : F) * rho 4063) = ((1 : F) * rho 4066)

def relationRow4241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4064) * ((1 : F) * rho 4064) = ((1 : F) * rho 4067)

def relationRow4242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4068) * ((-1 : F) * rho 4066 + (1 : F) * rho 4067) = ((2 : F) * rho 4065)

def relationRow4243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4069) * ((2 : F) + (1 : F) * rho 4066 + (-1 : F) * rho 4067) = ((1 : F) * rho 4066 + (1 : F) * rho 4067)

def relationRow4244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4068) * ((1 : F) * rho 4069) = ((1 : F) * rho 4070)

def relationRow4245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4068) * ((1 : F) * rho 4068) = ((1 : F) * rho 4071)

def relationRow4246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4069) * ((1 : F) * rho 4069) = ((1 : F) * rho 4072)

def relationRow4247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * ((-1 : F) * rho 4071 + (1 : F) * rho 4072) = ((2 : F) * rho 4070)

def relationRow4248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4074) * ((2 : F) + (1 : F) * rho 4071 + (-1 : F) * rho 4072) = ((1 : F) * rho 4071 + (1 : F) * rho 4072)

def relationRow4249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2676) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4075)

def relationRow4250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2677) * ((1 : F) * rho 2797 + (1 : F) * rho 4075) = ((1 : F) * rho 4076)

def relationRow4251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2676) = ((1 : F) * rho 4077)

def relationRow4252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2676) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4078)

def relationRow4253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2677) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4078) = ((1 : F) * rho 4079)

def relationRow4254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2676) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4080)

def relationRow4255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073 + (1 : F) * rho 4074) * ((1 : F) + (1 : F) * rho 4076 + (1 : F) * rho 4077 + (1 : F) * rho 4079 + (1 : F) * rho 4080) = ((1 : F) * rho 4081)

def relationRow4256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4073) * ((1 : F) + (1 : F) * rho 4079 + (1 : F) * rho 4080) = ((1 : F) * rho 4082)

def relationRow4257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4074) * ((1 : F) * rho 4076 + (1 : F) * rho 4077) = ((1 : F) * rho 4083)

def relationRow4258 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4082) * ((1 : F) * rho 4083) = ((1 : F) * rho 4084)

def relationRow4259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) + (1 : F) * rho 4084) = ((1 : F) * rho 4082 + (1 : F) * rho 4083)

def relationRow4260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * ((1 : F) + (-1 : F) * rho 4084) = ((1 : F) * rho 4081 + (-1 : F) * rho 4082 + (-1 : F) * rho 4083)

def relationRow4261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) * rho 4086) = ((1 : F) * rho 4087)

def relationRow4262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) * rho 4085) = ((1 : F) * rho 4088)

def relationRow4263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4086) * ((1 : F) * rho 4086) = ((1 : F) * rho 4089)

def relationRow4264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4090) * ((-1 : F) * rho 4088 + (1 : F) * rho 4089) = ((2 : F) * rho 4087)

def relationRow4265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4091) * ((2 : F) + (1 : F) * rho 4088 + (-1 : F) * rho 4089) = ((1 : F) * rho 4088 + (1 : F) * rho 4089)

def relationRow4266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4090) * ((1 : F) * rho 4091) = ((1 : F) * rho 4092)

def relationRow4267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4090) * ((1 : F) * rho 4090) = ((1 : F) * rho 4093)

def relationRow4268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4091) * ((1 : F) * rho 4091) = ((1 : F) * rho 4094)

def relationRow4269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4095) * ((-1 : F) * rho 4093 + (1 : F) * rho 4094) = ((2 : F) * rho 4092)

def relationRow4270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4096) * ((2 : F) + (1 : F) * rho 4093 + (-1 : F) * rho 4094) = ((1 : F) * rho 4093 + (1 : F) * rho 4094)

def relationRow4271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4097)

def relationRow4272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2675) * ((1 : F) * rho 2797 + (1 : F) * rho 4097) = ((1 : F) * rho 4098)

def relationRow4273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2674) = ((1 : F) * rho 4099)

def relationRow4274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4100)

def relationRow4275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2675) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4100) = ((1 : F) * rho 4101)

def relationRow4276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4102)

def relationRow4277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4095 + (1 : F) * rho 4096) * ((1 : F) + (1 : F) * rho 4098 + (1 : F) * rho 4099 + (1 : F) * rho 4101 + (1 : F) * rho 4102) = ((1 : F) * rho 4103)

def relationRow4278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4095) * ((1 : F) + (1 : F) * rho 4101 + (1 : F) * rho 4102) = ((1 : F) * rho 4104)

def relationRow4279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4096) * ((1 : F) * rho 4098 + (1 : F) * rho 4099) = ((1 : F) * rho 4105)

def relationRow4280 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4104) * ((1 : F) * rho 4105) = ((1 : F) * rho 4106)

def relationRow4281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4107) * ((1 : F) + (1 : F) * rho 4106) = ((1 : F) * rho 4104 + (1 : F) * rho 4105)

def relationRow4282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4108) * ((1 : F) + (-1 : F) * rho 4106) = ((1 : F) * rho 4103 + (-1 : F) * rho 4104 + (-1 : F) * rho 4105)

def relationRow4283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4107) * ((1 : F) * rho 4108) = ((1 : F) * rho 4109)

def relationRow4284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4107) * ((1 : F) * rho 4107) = ((1 : F) * rho 4110)

def relationRow4285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4108) * ((1 : F) * rho 4108) = ((1 : F) * rho 4111)

def relationRow4286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * ((-1 : F) * rho 4110 + (1 : F) * rho 4111) = ((2 : F) * rho 4109)

def relationRow4287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4113) * ((2 : F) + (1 : F) * rho 4110 + (-1 : F) * rho 4111) = ((1 : F) * rho 4110 + (1 : F) * rho 4111)

def relationRow4288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * ((1 : F) * rho 4113) = ((1 : F) * rho 4114)

def relationRow4289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4112) * ((1 : F) * rho 4112) = ((1 : F) * rho 4115)

def relationRow4290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4113) * ((1 : F) * rho 4113) = ((1 : F) * rho 4116)

def relationRow4291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4117) * ((-1 : F) * rho 4115 + (1 : F) * rho 4116) = ((2 : F) * rho 4114)

def relationRow4292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118) * ((2 : F) + (1 : F) * rho 4115 + (-1 : F) * rho 4116) = ((1 : F) * rho 4115 + (1 : F) * rho 4116)

def relationRow4293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2672) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4119)

def relationRow4294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2673) * ((1 : F) * rho 2797 + (1 : F) * rho 4119) = ((1 : F) * rho 4120)

def relationRow4295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2672) = ((1 : F) * rho 4121)

def relationRow4296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2672) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4122)

def relationRow4297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2673) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4122) = ((1 : F) * rho 4123)

def relationRow4298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2672) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4124)

def relationRow4299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4117 + (1 : F) * rho 4118) * ((1 : F) + (1 : F) * rho 4120 + (1 : F) * rho 4121 + (1 : F) * rho 4123 + (1 : F) * rho 4124) = ((1 : F) * rho 4125)

def relationRow4300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4117) * ((1 : F) + (1 : F) * rho 4123 + (1 : F) * rho 4124) = ((1 : F) * rho 4126)

def relationRow4301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4118) * ((1 : F) * rho 4120 + (1 : F) * rho 4121) = ((1 : F) * rho 4127)

def relationRow4302 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4126) * ((1 : F) * rho 4127) = ((1 : F) * rho 4128)

def relationRow4303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4129) * ((1 : F) + (1 : F) * rho 4128) = ((1 : F) * rho 4126 + (1 : F) * rho 4127)

def relationRow4304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4130) * ((1 : F) + (-1 : F) * rho 4128) = ((1 : F) * rho 4125 + (-1 : F) * rho 4126 + (-1 : F) * rho 4127)

def relationRow4305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4129) * ((1 : F) * rho 4130) = ((1 : F) * rho 4131)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
