import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs89

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationRow4325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4331)

def relationRow4326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4331) = ((1 : F) * rho 4332)

def relationRow4327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4333)

def relationRow4328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326 + (1 : F) * rho 4327) * ((1 : F) + (1 : F) * rho 4329 + (1 : F) * rho 4330 + (1 : F) * rho 4332 + (1 : F) * rho 4333) = ((1 : F) * rho 4334)

def relationRow4329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326) * ((1 : F) + (1 : F) * rho 4332 + (1 : F) * rho 4333) = ((1 : F) * rho 4335)

def relationRow4330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4327) * ((1 : F) * rho 4329 + (1 : F) * rho 4330) = ((1 : F) * rho 4336)

def relationRow4331 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4335) * ((1 : F) * rho 4336) = ((1 : F) * rho 4337)

def relationRow4332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * ((1 : F) + (1 : F) * rho 4337) = ((1 : F) * rho 4335 + (1 : F) * rho 4336)

def relationRow4333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * ((1 : F) + (-1 : F) * rho 4337) = ((1 : F) * rho 4334 + (-1 : F) * rho 4335 + (-1 : F) * rho 4336)

def relationRow4334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * ((1 : F) * rho 4339) = ((1 : F) * rho 4340)

def relationRow4335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * ((1 : F) * rho 4338) = ((1 : F) * rho 4341)

def relationRow4336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * ((1 : F) * rho 4339) = ((1 : F) * rho 4342)

def relationRow4337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4343) * ((-1 : F) * rho 4341 + (1 : F) * rho 4342) = ((2 : F) * rho 4340)

def relationRow4338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4344) * ((2 : F) + (1 : F) * rho 4341 + (-1 : F) * rho 4342) = ((1 : F) * rho 4341 + (1 : F) * rho 4342)

def relationRow4339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4343) * ((1 : F) * rho 4344) = ((1 : F) * rho 4345)

def relationRow4340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4343) * ((1 : F) * rho 4343) = ((1 : F) * rho 4346)

def relationRow4341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4344) * ((1 : F) * rho 4344) = ((1 : F) * rho 4347)

def relationRow4342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4348) * ((-1 : F) * rho 4346 + (1 : F) * rho 4347) = ((2 : F) * rho 4345)

def relationRow4343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4349) * ((2 : F) + (1 : F) * rho 4346 + (-1 : F) * rho 4347) = ((1 : F) * rho 4346 + (1 : F) * rho 4347)

def relationRow4344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4350)

def relationRow4345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22) * ((1 : F) * rho 1818 + (1 : F) * rho 4350) = ((1 : F) * rho 4351)

def relationRow4346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4352)

def relationRow4347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4353)

def relationRow4348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4353) = ((1 : F) * rho 4354)

def relationRow4349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4355)

def relationRow4350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4348 + (1 : F) * rho 4349) * ((1 : F) + (1 : F) * rho 4351 + (1 : F) * rho 4352 + (1 : F) * rho 4354 + (1 : F) * rho 4355) = ((1 : F) * rho 4356)

def relationRow4351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4348) * ((1 : F) + (1 : F) * rho 4354 + (1 : F) * rho 4355) = ((1 : F) * rho 4357)

def relationRow4352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4349) * ((1 : F) * rho 4351 + (1 : F) * rho 4352) = ((1 : F) * rho 4358)

def relationRow4353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4357) * ((1 : F) * rho 4358) = ((1 : F) * rho 4359)

def relationRow4354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4360) * ((1 : F) + (1 : F) * rho 4359) = ((1 : F) * rho 4357 + (1 : F) * rho 4358)

def relationRow4355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4361) * ((1 : F) + (-1 : F) * rho 4359) = ((1 : F) * rho 4356 + (-1 : F) * rho 4357 + (-1 : F) * rho 4358)

def relationRow4356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4360) * ((1 : F) * rho 4361) = ((1 : F) * rho 4362)

def relationRow4357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4360) * ((1 : F) * rho 4360) = ((1 : F) * rho 4363)

def relationRow4358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4361) * ((1 : F) * rho 4361) = ((1 : F) * rho 4364)

def relationRow4359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((-1 : F) * rho 4363 + (1 : F) * rho 4364) = ((2 : F) * rho 4362)

def relationRow4360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * ((2 : F) + (1 : F) * rho 4363 + (-1 : F) * rho 4364) = ((1 : F) * rho 4363 + (1 : F) * rho 4364)

def relationRow4361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((1 : F) * rho 4366) = ((1 : F) * rho 4367)

def relationRow4362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * ((1 : F) * rho 4365) = ((1 : F) * rho 4368)

def relationRow4363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * ((1 : F) * rho 4366) = ((1 : F) * rho 4369)

def relationRow4364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4370) * ((-1 : F) * rho 4368 + (1 : F) * rho 4369) = ((2 : F) * rho 4367)

def relationRow4365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4371) * ((2 : F) + (1 : F) * rho 4368 + (-1 : F) * rho 4369) = ((1 : F) * rho 4368 + (1 : F) * rho 4369)

def relationRow4366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 19) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4372)

def relationRow4367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((1 : F) * rho 1818 + (1 : F) * rho 4372) = ((1 : F) * rho 4373)

def relationRow4368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 19) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4374)

def relationRow4369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 19) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4375)

def relationRow4370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4375) = ((1 : F) * rho 4376)

def relationRow4371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 19) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4377)

def relationRow4372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4370 + (1 : F) * rho 4371) * ((1 : F) + (1 : F) * rho 4373 + (1 : F) * rho 4374 + (1 : F) * rho 4376 + (1 : F) * rho 4377) = ((1 : F) * rho 4378)

def relationRow4373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4370) * ((1 : F) + (1 : F) * rho 4376 + (1 : F) * rho 4377) = ((1 : F) * rho 4379)

def relationRow4374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4371) * ((1 : F) * rho 4373 + (1 : F) * rho 4374) = ((1 : F) * rho 4380)

def relationRow4375 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4379) * ((1 : F) * rho 4380) = ((1 : F) * rho 4381)

def relationRow4376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4382) * ((1 : F) + (1 : F) * rho 4381) = ((1 : F) * rho 4379 + (1 : F) * rho 4380)

def relationRow4377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4383) * ((1 : F) + (-1 : F) * rho 4381) = ((1 : F) * rho 4378 + (-1 : F) * rho 4379 + (-1 : F) * rho 4380)

def relationRow4378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4382) * ((1 : F) * rho 4383) = ((1 : F) * rho 4384)

def relationRow4379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4382) * ((1 : F) * rho 4382) = ((1 : F) * rho 4385)

def relationRow4380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4383) * ((1 : F) * rho 4383) = ((1 : F) * rho 4386)

def relationRow4381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4387) * ((-1 : F) * rho 4385 + (1 : F) * rho 4386) = ((2 : F) * rho 4384)

def relationRow4382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4388) * ((2 : F) + (1 : F) * rho 4385 + (-1 : F) * rho 4386) = ((1 : F) * rho 4385 + (1 : F) * rho 4386)

def relationRow4383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4387) * ((1 : F) * rho 4388) = ((1 : F) * rho 4389)

def relationRow4384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4387) * ((1 : F) * rho 4387) = ((1 : F) * rho 4390)

def relationRow4385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4388) * ((1 : F) * rho 4388) = ((1 : F) * rho 4391)

def relationRow4386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4392) * ((-1 : F) * rho 4390 + (1 : F) * rho 4391) = ((2 : F) * rho 4389)

def relationRow4387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4393) * ((2 : F) + (1 : F) * rho 4390 + (-1 : F) * rho 4391) = ((1 : F) * rho 4390 + (1 : F) * rho 4391)

def relationRow4388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4394)

def relationRow4389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18) * ((1 : F) * rho 1818 + (1 : F) * rho 4394) = ((1 : F) * rho 4395)

def relationRow4390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4396)

def relationRow4391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4397)

def relationRow4392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4397) = ((1 : F) * rho 4398)

def relationRow4393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4399)

def relationRow4394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4392 + (1 : F) * rho 4393) * ((1 : F) + (1 : F) * rho 4395 + (1 : F) * rho 4396 + (1 : F) * rho 4398 + (1 : F) * rho 4399) = ((1 : F) * rho 4400)

def relationRow4395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4392) * ((1 : F) + (1 : F) * rho 4398 + (1 : F) * rho 4399) = ((1 : F) * rho 4401)

def relationRow4396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4393) * ((1 : F) * rho 4395 + (1 : F) * rho 4396) = ((1 : F) * rho 4402)

def relationRow4397 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4401) * ((1 : F) * rho 4402) = ((1 : F) * rho 4403)

def relationRow4398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * ((1 : F) + (1 : F) * rho 4403) = ((1 : F) * rho 4401 + (1 : F) * rho 4402)

def relationRow4399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4405) * ((1 : F) + (-1 : F) * rho 4403) = ((1 : F) * rho 4400 + (-1 : F) * rho 4401 + (-1 : F) * rho 4402)

def relationRow4400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * ((1 : F) * rho 4405) = ((1 : F) * rho 4406)

def relationRow4401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * ((1 : F) * rho 4404) = ((1 : F) * rho 4407)

def relationRow4402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4405) * ((1 : F) * rho 4405) = ((1 : F) * rho 4408)

def relationRow4403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4409) * ((-1 : F) * rho 4407 + (1 : F) * rho 4408) = ((2 : F) * rho 4406)

def relationRow4404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * ((2 : F) + (1 : F) * rho 4407 + (-1 : F) * rho 4408) = ((1 : F) * rho 4407 + (1 : F) * rho 4408)

def relationRow4405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4409) * ((1 : F) * rho 4410) = ((1 : F) * rho 4411)

def relationRow4406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4409) * ((1 : F) * rho 4409) = ((1 : F) * rho 4412)

def relationRow4407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * ((1 : F) * rho 4410) = ((1 : F) * rho 4413)

def relationRow4408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4414) * ((-1 : F) * rho 4412 + (1 : F) * rho 4413) = ((2 : F) * rho 4411)

def relationRow4409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4415) * ((2 : F) + (1 : F) * rho 4412 + (-1 : F) * rho 4413) = ((1 : F) * rho 4412 + (1 : F) * rho 4413)

def relationRow4410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 15) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4416)

def relationRow4411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 16) * ((1 : F) * rho 1818 + (1 : F) * rho 4416) = ((1 : F) * rho 4417)

def relationRow4412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 15) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4418)

def relationRow4413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 15) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4419)

def relationRow4414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 16) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4419) = ((1 : F) * rho 4420)

def relationRow4415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 15) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4421)

def relationRow4416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4414 + (1 : F) * rho 4415) * ((1 : F) + (1 : F) * rho 4417 + (1 : F) * rho 4418 + (1 : F) * rho 4420 + (1 : F) * rho 4421) = ((1 : F) * rho 4422)

def relationRow4417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4414) * ((1 : F) + (1 : F) * rho 4420 + (1 : F) * rho 4421) = ((1 : F) * rho 4423)

def relationRow4418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4415) * ((1 : F) * rho 4417 + (1 : F) * rho 4418) = ((1 : F) * rho 4424)

def relationRow4419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4423) * ((1 : F) * rho 4424) = ((1 : F) * rho 4425)

def relationRow4420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4426) * ((1 : F) + (1 : F) * rho 4425) = ((1 : F) * rho 4423 + (1 : F) * rho 4424)

def relationRow4421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4427) * ((1 : F) + (-1 : F) * rho 4425) = ((1 : F) * rho 4422 + (-1 : F) * rho 4423 + (-1 : F) * rho 4424)

def relationRow4422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4426) * ((1 : F) * rho 4427) = ((1 : F) * rho 4428)

def relationRow4423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4426) * ((1 : F) * rho 4426) = ((1 : F) * rho 4429)

def relationRow4424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4427) * ((1 : F) * rho 4427) = ((1 : F) * rho 4430)

def relationRow4425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4431) * ((-1 : F) * rho 4429 + (1 : F) * rho 4430) = ((2 : F) * rho 4428)

def relationRow4426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4432) * ((2 : F) + (1 : F) * rho 4429 + (-1 : F) * rho 4430) = ((1 : F) * rho 4429 + (1 : F) * rho 4430)

def relationRow4427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4431) * ((1 : F) * rho 4432) = ((1 : F) * rho 4433)

def relationRow4428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4431) * ((1 : F) * rho 4431) = ((1 : F) * rho 4434)

def relationRow4429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4432) * ((1 : F) * rho 4432) = ((1 : F) * rho 4435)

def relationRow4430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * ((-1 : F) * rho 4434 + (1 : F) * rho 4435) = ((2 : F) * rho 4433)

def relationRow4431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4437) * ((2 : F) + (1 : F) * rho 4434 + (-1 : F) * rho 4435) = ((1 : F) * rho 4434 + (1 : F) * rho 4435)

def relationRow4432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 13) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4438)

def relationRow4433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 14) * ((1 : F) * rho 1818 + (1 : F) * rho 4438) = ((1 : F) * rho 4439)

def relationRow4434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 13) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4440)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
