import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0Bits_toBinary (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    GatesDef.to_binary (rho 193) 128 (seg48Out0Bits rho) := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p54, p55, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399⟩

  unfold Seg48.relationPart55 at p55

  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩

  unfold Seg48.relationPart56 at p56

  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationRow4356 at r4356

  unfold Seg48.relationRow4357 at r4357

  unfold Seg48.relationRow4358 at r4358

  unfold Seg48.relationRow4359 at r4359

  unfold Seg48.relationRow4360 at r4360

  unfold Seg48.relationRow4361 at r4361

  unfold Seg48.relationRow4362 at r4362

  unfold Seg48.relationRow4363 at r4363

  unfold Seg48.relationRow4364 at r4364

  unfold Seg48.relationRow4365 at r4365

  unfold Seg48.relationRow4366 at r4366

  unfold Seg48.relationRow4367 at r4367

  unfold Seg48.relationRow4368 at r4368

  unfold Seg48.relationRow4369 at r4369

  unfold Seg48.relationRow4370 at r4370

  unfold Seg48.relationRow4371 at r4371

  unfold Seg48.relationRow4372 at r4372

  unfold Seg48.relationRow4373 at r4373

  unfold Seg48.relationRow4374 at r4374

  unfold Seg48.relationRow4375 at r4375

  unfold Seg48.relationRow4376 at r4376

  unfold Seg48.relationRow4377 at r4377

  unfold Seg48.relationRow4378 at r4378

  unfold Seg48.relationRow4379 at r4379

  unfold Seg48.relationRow4380 at r4380

  unfold Seg48.relationRow4381 at r4381

  unfold Seg48.relationRow4382 at r4382

  unfold Seg48.relationRow4383 at r4383

  unfold Seg48.relationRow4384 at r4384

  unfold Seg48.relationRow4385 at r4385

  unfold Seg48.relationRow4386 at r4386

  unfold Seg48.relationRow4387 at r4387

  unfold Seg48.relationRow4388 at r4388

  unfold Seg48.relationRow4389 at r4389

  unfold Seg48.relationRow4390 at r4390

  unfold Seg48.relationRow4391 at r4391

  unfold Seg48.relationRow4392 at r4392

  unfold Seg48.relationRow4393 at r4393

  unfold Seg48.relationRow4394 at r4394

  unfold Seg48.relationRow4395 at r4395

  unfold Seg48.relationRow4396 at r4396

  unfold Seg48.relationRow4397 at r4397

  unfold Seg48.relationRow4398 at r4398

  unfold Seg48.relationRow4399 at r4399

  unfold Seg48.relationRow4400 at r4400

  unfold Seg48.relationRow4401 at r4401

  unfold Seg48.relationRow4402 at r4402

  unfold Seg48.relationRow4403 at r4403

  unfold Seg48.relationRow4404 at r4404

  unfold Seg48.relationRow4405 at r4405

  unfold Seg48.relationRow4406 at r4406

  unfold Seg48.relationRow4407 at r4407

  unfold Seg48.relationRow4408 at r4408

  unfold Seg48.relationRow4409 at r4409

  unfold Seg48.relationRow4410 at r4410

  unfold Seg48.relationRow4411 at r4411

  unfold Seg48.relationRow4412 at r4412

  unfold Seg48.relationRow4413 at r4413

  unfold Seg48.relationRow4414 at r4414

  unfold Seg48.relationRow4415 at r4415

  unfold Seg48.relationRow4416 at r4416

  unfold Seg48.relationRow4417 at r4417

  unfold Seg48.relationRow4418 at r4418

  unfold Seg48.relationRow4419 at r4419

  unfold Seg48.relationRow4420 at r4420

  unfold Seg48.relationRow4421 at r4421

  unfold Seg48.relationRow4422 at r4422

  unfold Seg48.relationRow4423 at r4423

  unfold Seg48.relationRow4424 at r4424

  unfold Seg48.relationRow4425 at r4425

  unfold Seg48.relationRow4426 at r4426

  unfold Seg48.relationRow4427 at r4427

  unfold Seg48.relationRow4428 at r4428

  unfold Seg48.relationRow4429 at r4429

  unfold Seg48.relationRow4430 at r4430

  unfold Seg48.relationRow4431 at r4431

  unfold Seg48.relationRow4432 at r4432

  unfold Seg48.relationRow4433 at r4433

  unfold Seg48.relationRow4434 at r4434

  unfold Seg48.relationRow4435 at r4435

  unfold Seg48.relationRow4436 at r4436

  unfold Seg48.relationRow4437 at r4437

  unfold Seg48.relationRow4438 at r4438

  unfold Seg48.relationRow4439 at r4439

  unfold Seg48.relationRow4440 at r4440

  unfold Seg48.relationRow4441 at r4441

  unfold Seg48.relationRow4442 at r4442

  unfold Seg48.relationRow4443 at r4443

  unfold Seg48.relationRow4444 at r4444

  unfold Seg48.relationRow4445 at r4445

  unfold Seg48.relationRow4446 at r4446

  unfold Seg48.relationRow4447 at r4447

  unfold Seg48.relationRow4448 at r4448

  unfold Seg48.relationRow4449 at r4449

  unfold Seg48.relationRow4450 at r4450

  unfold Seg48.relationRow4451 at r4451

  unfold Seg48.relationRow4452 at r4452

  unfold Seg48.relationRow4453 at r4453

  unfold Seg48.relationRow4454 at r4454

  unfold Seg48.relationRow4455 at r4455

  unfold Seg48.relationRow4456 at r4456

  unfold Seg48.relationRow4457 at r4457

  unfold Seg48.relationRow4458 at r4458

  unfold Seg48.relationRow4459 at r4459

  unfold Seg48.relationRow4460 at r4460

  unfold Seg48.relationRow4461 at r4461

  unfold Seg48.relationRow4462 at r4462

  unfold Seg48.relationRow4463 at r4463

  unfold Seg48.relationRow4464 at r4464

  unfold Seg48.relationRow4465 at r4465

  unfold Seg48.relationRow4466 at r4466

  unfold Seg48.relationRow4467 at r4467

  unfold Seg48.relationRow4468 at r4468

  unfold Seg48.relationRow4469 at r4469

  unfold Seg48.relationRow4470 at r4470

  unfold Seg48.relationRow4471 at r4471

  unfold Seg48.relationRow4472 at r4472

  unfold Seg48.relationRow4473 at r4473

  unfold Seg48.relationRow4474 at r4474

  unfold Seg48.relationRow4475 at r4475

  unfold Seg48.relationRow4476 at r4476

  unfold Seg48.relationRow4477 at r4477

  unfold Seg48.relationRow4478 at r4478

  unfold Seg48.relationRow4479 at r4479

  unfold Seg48.relationRow4480 at r4480

  unfold Seg48.relationRow4481 at r4481

  unfold Seg48.relationRow4482 at r4482

  unfold Seg48.relationRow4483 at r4483

  have hrecover := recover_ofFn_eq_recBits rho 37114 128

  have hacc : powSumAcc rho 0 1 37114 128 = rho 193 := by

    unfold Seg48.relationRow4484 at r4484

    simp only [powSumAcc]

    linear_combination r4484

  have hrec : recover_binary_zmod' (seg48Out0Bits rho) = rho 193 := by

    simp only [seg48Out0Bits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 193) (seg48Out0Bits rho)
  · intro i hi
    have key := seg48Out0Bits_get rho i hi
    have hgoal : rho (37114 + i) * (1 - rho (37114 + i)) = 0 := by
      interval_cases i
      · linear_combination r4356
      · linear_combination r4357
      · linear_combination r4358
      · linear_combination r4359
      · linear_combination r4360
      · linear_combination r4361
      · linear_combination r4362
      · linear_combination r4363
      · linear_combination r4364
      · linear_combination r4365
      · linear_combination r4366
      · linear_combination r4367
      · linear_combination r4368
      · linear_combination r4369
      · linear_combination r4370
      · linear_combination r4371
      · linear_combination r4372
      · linear_combination r4373
      · linear_combination r4374
      · linear_combination r4375
      · linear_combination r4376
      · linear_combination r4377
      · linear_combination r4378
      · linear_combination r4379
      · linear_combination r4380
      · linear_combination r4381
      · linear_combination r4382
      · linear_combination r4383
      · linear_combination r4384
      · linear_combination r4385
      · linear_combination r4386
      · linear_combination r4387
      · linear_combination r4388
      · linear_combination r4389
      · linear_combination r4390
      · linear_combination r4391
      · linear_combination r4392
      · linear_combination r4393
      · linear_combination r4394
      · linear_combination r4395
      · linear_combination r4396
      · linear_combination r4397
      · linear_combination r4398
      · linear_combination r4399
      · linear_combination r4400
      · linear_combination r4401
      · linear_combination r4402
      · linear_combination r4403
      · linear_combination r4404
      · linear_combination r4405
      · linear_combination r4406
      · linear_combination r4407
      · linear_combination r4408
      · linear_combination r4409
      · linear_combination r4410
      · linear_combination r4411
      · linear_combination r4412
      · linear_combination r4413
      · linear_combination r4414
      · linear_combination r4415
      · linear_combination r4416
      · linear_combination r4417
      · linear_combination r4418
      · linear_combination r4419
      · linear_combination r4420
      · linear_combination r4421
      · linear_combination r4422
      · linear_combination r4423
      · linear_combination r4424
      · linear_combination r4425
      · linear_combination r4426
      · linear_combination r4427
      · linear_combination r4428
      · linear_combination r4429
      · linear_combination r4430
      · linear_combination r4431
      · linear_combination r4432
      · linear_combination r4433
      · linear_combination r4434
      · linear_combination r4435
      · linear_combination r4436
      · linear_combination r4437
      · linear_combination r4438
      · linear_combination r4439
      · linear_combination r4440
      · linear_combination r4441
      · linear_combination r4442
      · linear_combination r4443
      · linear_combination r4444
      · linear_combination r4445
      · linear_combination r4446
      · linear_combination r4447
      · linear_combination r4448
      · linear_combination r4449
      · linear_combination r4450
      · linear_combination r4451
      · linear_combination r4452
      · linear_combination r4453
      · linear_combination r4454
      · linear_combination r4455
      · linear_combination r4456
      · linear_combination r4457
      · linear_combination r4458
      · linear_combination r4459
      · linear_combination r4460
      · linear_combination r4461
      · linear_combination r4462
      · linear_combination r4463
      · linear_combination r4464
      · linear_combination r4465
      · linear_combination r4466
      · linear_combination r4467
      · linear_combination r4468
      · linear_combination r4469
      · linear_combination r4470
      · linear_combination r4471
      · linear_combination r4472
      · linear_combination r4473
      · linear_combination r4474
      · linear_combination r4475
      · linear_combination r4476
      · linear_combination r4477
      · linear_combination r4478
      · linear_combination r4479
      · linear_combination r4480
      · linear_combination r4481
      · linear_combination r4482
      · linear_combination r4483
    have key' : (seg48Out0Bits rho)[i] = rho (37114 + i) := by
      rw [← getElem!_pos (seg48Out0Bits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
