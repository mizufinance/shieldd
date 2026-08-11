import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs49

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow4306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4129) * ((1 : F) * rho 4129) = ((1 : F) * rho 4132)

def relationRow4307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4130) * ((1 : F) * rho 4130) = ((1 : F) * rho 4133)

def relationRow4308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4134) * ((-1 : F) * rho 4132 + (1 : F) * rho 4133) = ((2 : F) * rho 4131)

def relationRow4309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4135) * ((2 : F) + (1 : F) * rho 4132 + (-1 : F) * rho 4133) = ((1 : F) * rho 4132 + (1 : F) * rho 4133)

def relationRow4310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4134) * ((1 : F) * rho 4135) = ((1 : F) * rho 4136)

def relationRow4311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4134) * ((1 : F) * rho 4134) = ((1 : F) * rho 4137)

def relationRow4312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4135) * ((1 : F) * rho 4135) = ((1 : F) * rho 4138)

def relationRow4313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4139) * ((-1 : F) * rho 4137 + (1 : F) * rho 4138) = ((2 : F) * rho 4136)

def relationRow4314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4140) * ((2 : F) + (1 : F) * rho 4137 + (-1 : F) * rho 4138) = ((1 : F) * rho 4137 + (1 : F) * rho 4138)

def relationRow4315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2670) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4141)

def relationRow4316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2671) * ((1 : F) * rho 2797 + (1 : F) * rho 4141) = ((1 : F) * rho 4142)

def relationRow4317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2670) = ((1 : F) * rho 4143)

def relationRow4318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2670) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4144)

def relationRow4319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2671) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4144) = ((1 : F) * rho 4145)

def relationRow4320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2670) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4146)

def relationRow4321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4139 + (1 : F) * rho 4140) * ((1 : F) + (1 : F) * rho 4142 + (1 : F) * rho 4143 + (1 : F) * rho 4145 + (1 : F) * rho 4146) = ((1 : F) * rho 4147)

def relationRow4322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4139) * ((1 : F) + (1 : F) * rho 4145 + (1 : F) * rho 4146) = ((1 : F) * rho 4148)

def relationRow4323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4140) * ((1 : F) * rho 4142 + (1 : F) * rho 4143) = ((1 : F) * rho 4149)

def relationRow4324 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4148) * ((1 : F) * rho 4149) = ((1 : F) * rho 4150)

def relationRow4325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * ((1 : F) + (1 : F) * rho 4150) = ((1 : F) * rho 4148 + (1 : F) * rho 4149)

def relationRow4326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4152) * ((1 : F) + (-1 : F) * rho 4150) = ((1 : F) * rho 4147 + (-1 : F) * rho 4148 + (-1 : F) * rho 4149)

def relationRow4327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * ((1 : F) * rho 4152) = ((1 : F) * rho 4153)

def relationRow4328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4151) * ((1 : F) * rho 4151) = ((1 : F) * rho 4154)

def relationRow4329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4152) * ((1 : F) * rho 4152) = ((1 : F) * rho 4155)

def relationRow4330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4156) * ((-1 : F) * rho 4154 + (1 : F) * rho 4155) = ((2 : F) * rho 4153)

def relationRow4331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157) * ((2 : F) + (1 : F) * rho 4154 + (-1 : F) * rho 4155) = ((1 : F) * rho 4154 + (1 : F) * rho 4155)

def relationRow4332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4156) * ((1 : F) * rho 4157) = ((1 : F) * rho 4158)

def relationRow4333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4156) * ((1 : F) * rho 4156) = ((1 : F) * rho 4159)

def relationRow4334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4157) * ((1 : F) * rho 4157) = ((1 : F) * rho 4160)

def relationRow4335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4161) * ((-1 : F) * rho 4159 + (1 : F) * rho 4160) = ((2 : F) * rho 4158)

def relationRow4336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4162) * ((2 : F) + (1 : F) * rho 4159 + (-1 : F) * rho 4160) = ((1 : F) * rho 4159 + (1 : F) * rho 4160)

def relationRow4337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2668) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4163)

def relationRow4338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2669) * ((1 : F) * rho 2797 + (1 : F) * rho 4163) = ((1 : F) * rho 4164)

def relationRow4339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2668) = ((1 : F) * rho 4165)

def relationRow4340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2668) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4166)

def relationRow4341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2669) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4166) = ((1 : F) * rho 4167)

def relationRow4342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2668) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4168)

def relationRow4343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4161 + (1 : F) * rho 4162) * ((1 : F) + (1 : F) * rho 4164 + (1 : F) * rho 4165 + (1 : F) * rho 4167 + (1 : F) * rho 4168) = ((1 : F) * rho 4169)

def relationRow4344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4161) * ((1 : F) + (1 : F) * rho 4167 + (1 : F) * rho 4168) = ((1 : F) * rho 4170)

def relationRow4345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4162) * ((1 : F) * rho 4164 + (1 : F) * rho 4165) = ((1 : F) * rho 4171)

def relationRow4346 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4170) * ((1 : F) * rho 4171) = ((1 : F) * rho 4172)

def relationRow4347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4173) * ((1 : F) + (1 : F) * rho 4172) = ((1 : F) * rho 4170 + (1 : F) * rho 4171)

def relationRow4348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4174) * ((1 : F) + (-1 : F) * rho 4172) = ((1 : F) * rho 4169 + (-1 : F) * rho 4170 + (-1 : F) * rho 4171)

def relationRow4349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4173) * ((1 : F) * rho 4174) = ((1 : F) * rho 4175)

def relationRow4350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4173) * ((1 : F) * rho 4173) = ((1 : F) * rho 4176)

def relationRow4351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4174) * ((1 : F) * rho 4174) = ((1 : F) * rho 4177)

def relationRow4352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4178) * ((-1 : F) * rho 4176 + (1 : F) * rho 4177) = ((2 : F) * rho 4175)

def relationRow4353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4179) * ((2 : F) + (1 : F) * rho 4176 + (-1 : F) * rho 4177) = ((1 : F) * rho 4176 + (1 : F) * rho 4177)

def relationRow4354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4178) * ((1 : F) * rho 4179) = ((1 : F) * rho 4180)

def relationRow4355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4178) * ((1 : F) * rho 4178) = ((1 : F) * rho 4181)

def relationRow4356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4179) * ((1 : F) * rho 4179) = ((1 : F) * rho 4182)

def relationRow4357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((-1 : F) * rho 4181 + (1 : F) * rho 4182) = ((2 : F) * rho 4180)

def relationRow4358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4184) * ((2 : F) + (1 : F) * rho 4181 + (-1 : F) * rho 4182) = ((1 : F) * rho 4181 + (1 : F) * rho 4182)

def relationRow4359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2666) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4185)

def relationRow4360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2667) * ((1 : F) * rho 2797 + (1 : F) * rho 4185) = ((1 : F) * rho 4186)

def relationRow4361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2666) = ((1 : F) * rho 4187)

def relationRow4362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2666) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4188)

def relationRow4363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2667) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4188) = ((1 : F) * rho 4189)

def relationRow4364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2666) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4190)

def relationRow4365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183 + (1 : F) * rho 4184) * ((1 : F) + (1 : F) * rho 4186 + (1 : F) * rho 4187 + (1 : F) * rho 4189 + (1 : F) * rho 4190) = ((1 : F) * rho 4191)

def relationRow4366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4183) * ((1 : F) + (1 : F) * rho 4189 + (1 : F) * rho 4190) = ((1 : F) * rho 4192)

def relationRow4367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4184) * ((1 : F) * rho 4186 + (1 : F) * rho 4187) = ((1 : F) * rho 4193)

def relationRow4368 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4192) * ((1 : F) * rho 4193) = ((1 : F) * rho 4194)

def relationRow4369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4195) * ((1 : F) + (1 : F) * rho 4194) = ((1 : F) * rho 4192 + (1 : F) * rho 4193)

def relationRow4370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4196) * ((1 : F) + (-1 : F) * rho 4194) = ((1 : F) * rho 4191 + (-1 : F) * rho 4192 + (-1 : F) * rho 4193)

def relationRow4371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4195) * ((1 : F) * rho 4196) = ((1 : F) * rho 4197)

def relationRow4372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4195) * ((1 : F) * rho 4195) = ((1 : F) * rho 4198)

def relationRow4373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4196) * ((1 : F) * rho 4196) = ((1 : F) * rho 4199)

def relationRow4374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4200) * ((-1 : F) * rho 4198 + (1 : F) * rho 4199) = ((2 : F) * rho 4197)

def relationRow4375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4201) * ((2 : F) + (1 : F) * rho 4198 + (-1 : F) * rho 4199) = ((1 : F) * rho 4198 + (1 : F) * rho 4199)

def relationRow4376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4200 + (1 : F) * rho 4201) * ((1 : F) * rho 598 + (1 : F) * rho 600) = ((1 : F) * rho 4202)

def relationRow4377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * ((1 : F) * rho 4200) = ((1 : F) * rho 4203)

def relationRow4378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 4201) = ((1 : F) * rho 4204)

def relationRow4379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4203) * ((1 : F) * rho 4204) = ((1 : F) * rho 4205)

def relationRow4380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4206) * ((1 : F) + (1 : F) * rho 4205) = ((1 : F) * rho 4203 + (1 : F) * rho 4204)

def relationRow4381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4207) * ((1 : F) + (-1 : F) * rho 4205) = ((1 : F) * rho 4202 + (-1 : F) * rho 4203 + (-1 : F) * rho 4204)

def relationRow4382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2665) * ((-1 : F) * rho 4200 + (1 : F) * rho 4206) = ((1 : F) * rho 4208)

def relationRow4383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2665) * ((-1 : F) * rho 4201 + (1 : F) * rho 4207) = ((1 : F) * rho 4209)

def relationRow4384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2655 + (1 : F) * rho 2656 + (1 : F) * rho 2663 + (1 : F) * rho 2664) * ((-1 : F) * rho 4200 + (1 : F) * rho 4201 + (-1 : F) * rho 4208 + (1 : F) * rho 4209) = ((1 : F) * rho 4210)

def relationRow4385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4201 + (1 : F) * rho 4209) * ((1 : F) * rho 2655 + (1 : F) * rho 2663) = ((1 : F) * rho 4211)

def relationRow4386 (rho : Nat -> F) : Prop :=
    ((-1 : F) * rho 4200 + (-1 : F) * rho 4208) * ((1 : F) * rho 2656 + (1 : F) * rho 2664) = ((1 : F) * rho 4212)

def relationRow4387 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4211) * ((1 : F) * rho 4212) = ((1 : F) * rho 4213)

def relationRow4388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4214) * ((1 : F) + (1 : F) * rho 4213) = ((1 : F) * rho 4211 + (1 : F) * rho 4212)

def relationRow4389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4215) * ((1 : F) + (-1 : F) * rho 4213) = ((1 : F) * rho 4210 + (-1 : F) * rho 4211 + (-1 : F) * rho 4212)

def relationRow4390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4216) * ((1 : F) + (-1 : F) * rho 4216) = ((0 : F))

def relationRow4391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4217) * ((1 : F) + (-1 : F) * rho 4217) = ((0 : F))

def relationRow4392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4218) * ((1 : F) + (-1 : F) * rho 4218) = ((0 : F))

def relationRow4393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4219) * ((1 : F) + (-1 : F) * rho 4219) = ((0 : F))

def relationRow4394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4220) * ((1 : F) + (-1 : F) * rho 4220) = ((0 : F))

def relationRow4395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4221) * ((1 : F) + (-1 : F) * rho 4221) = ((0 : F))

def relationRow4396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4222) * ((1 : F) + (-1 : F) * rho 4222) = ((0 : F))

def relationRow4397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4223) * ((1 : F) + (-1 : F) * rho 4223) = ((0 : F))

def relationRow4398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4224) * ((1 : F) + (-1 : F) * rho 4224) = ((0 : F))

def relationRow4399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4225) * ((1 : F) + (-1 : F) * rho 4225) = ((0 : F))

def relationRow4400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4226) * ((1 : F) + (-1 : F) * rho 4226) = ((0 : F))

def relationRow4401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4227) * ((1 : F) + (-1 : F) * rho 4227) = ((0 : F))

def relationRow4402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4228) * ((1 : F) + (-1 : F) * rho 4228) = ((0 : F))

def relationRow4403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4229) * ((1 : F) + (-1 : F) * rho 4229) = ((0 : F))

def relationRow4404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4230) * ((1 : F) + (-1 : F) * rho 4230) = ((0 : F))

def relationRow4405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4231) * ((1 : F) + (-1 : F) * rho 4231) = ((0 : F))

def relationRow4406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4232) * ((1 : F) + (-1 : F) * rho 4232) = ((0 : F))

def relationRow4407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4233) * ((1 : F) + (-1 : F) * rho 4233) = ((0 : F))

def relationRow4408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4234) * ((1 : F) + (-1 : F) * rho 4234) = ((0 : F))

def relationRow4409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235) * ((1 : F) + (-1 : F) * rho 4235) = ((0 : F))

def relationRow4410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4236) * ((1 : F) + (-1 : F) * rho 4236) = ((0 : F))

def relationRow4411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4237) * ((1 : F) + (-1 : F) * rho 4237) = ((0 : F))

def relationRow4412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4238) * ((1 : F) + (-1 : F) * rho 4238) = ((0 : F))

def relationRow4413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4239) * ((1 : F) + (-1 : F) * rho 4239) = ((0 : F))

def relationRow4414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4240) * ((1 : F) + (-1 : F) * rho 4240) = ((0 : F))

def relationRow4415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * ((1 : F) + (-1 : F) * rho 4241) = ((0 : F))

def relationRow4416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4242) * ((1 : F) + (-1 : F) * rho 4242) = ((0 : F))

def relationRow4417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4243) * ((1 : F) + (-1 : F) * rho 4243) = ((0 : F))

def relationRow4418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4244) * ((1 : F) + (-1 : F) * rho 4244) = ((0 : F))

def relationRow4419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4245) * ((1 : F) + (-1 : F) * rho 4245) = ((0 : F))

def relationRow4420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4246) * ((1 : F) + (-1 : F) * rho 4246) = ((0 : F))

def relationRow4421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4247) * ((1 : F) + (-1 : F) * rho 4247) = ((0 : F))

def relationRow4422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248) * ((1 : F) + (-1 : F) * rho 4248) = ((0 : F))

def relationRow4423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4249) * ((1 : F) + (-1 : F) * rho 4249) = ((0 : F))

def relationRow4424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4250) * ((1 : F) + (-1 : F) * rho 4250) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
