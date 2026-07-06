import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonRec

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_binary (rho : Nat -> Seg52.F) (h : Seg52.relation rho) : is_vector_binary (seg52CanonBits rho) := by
  unfold Seg52.relation at h
  rcases h with ⟨
    _, _, _, p3, p4, p5, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg52.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r258, r259, r260, r261, r262, r263, r264, r265, r266, r267, r268, r269, r270, r271, r272, r273, r274, r275, r276, r277, r278, r279, r280, r281, r282, r283, r284, r285, r286, r287, r288, r289, r290, r291, r292, r293, r294, r295, r296, r297, r298, r299, r300, r301, r302, r303, r304, r305, r306, r307, r308, r309, r310, r311, r312, r313, r314, r315, r316, r317, r318, r319⟩
  unfold Seg52.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, r326, r327, r328, r329, r330, r331, r332, r333, r334, r335, r336, r337, r338, r339, r340, r341, r342, r343, r344, r345, r346, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, r357, r358, r359, r360, r361, r362, r363, r364, r365, r366, r367, r368, r369, r370, r371, r372, r373, r374, r375, r376, r377, r378, r379, r380, r381, r382, r383, r384, r385, r386, r387, r388, r389, r390, r391, r392, r393, r394, r395, r396, r397, r398, r399⟩
  unfold Seg52.relationPart5 at p5
  rcases p5 with ⟨r400, r401, r402, r403, r404, r405, r406, r407, r408, r409, r410, r411, r412, r413, r414, r415, r416, r417, r418, r419, r420, r421, r422, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, r435, r436, r437, r438, r439, r440, r441, r442, r443, r444, r445, r446, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, r474, r475, r476, r477, r478, r479⟩
  unfold Seg52.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, r487, r488, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, r502, r503, r504, r505, r506, r507, r508, r509, r510, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow258 at r258
  unfold Seg52.relationRow259 at r259
  unfold Seg52.relationRow260 at r260
  unfold Seg52.relationRow261 at r261
  unfold Seg52.relationRow262 at r262
  unfold Seg52.relationRow263 at r263
  unfold Seg52.relationRow264 at r264
  unfold Seg52.relationRow265 at r265
  unfold Seg52.relationRow266 at r266
  unfold Seg52.relationRow267 at r267
  unfold Seg52.relationRow268 at r268
  unfold Seg52.relationRow269 at r269
  unfold Seg52.relationRow270 at r270
  unfold Seg52.relationRow271 at r271
  unfold Seg52.relationRow272 at r272
  unfold Seg52.relationRow273 at r273
  unfold Seg52.relationRow274 at r274
  unfold Seg52.relationRow275 at r275
  unfold Seg52.relationRow276 at r276
  unfold Seg52.relationRow277 at r277
  unfold Seg52.relationRow278 at r278
  unfold Seg52.relationRow279 at r279
  unfold Seg52.relationRow280 at r280
  unfold Seg52.relationRow281 at r281
  unfold Seg52.relationRow282 at r282
  unfold Seg52.relationRow283 at r283
  unfold Seg52.relationRow284 at r284
  unfold Seg52.relationRow285 at r285
  unfold Seg52.relationRow286 at r286
  unfold Seg52.relationRow287 at r287
  unfold Seg52.relationRow288 at r288
  unfold Seg52.relationRow289 at r289
  unfold Seg52.relationRow290 at r290
  unfold Seg52.relationRow291 at r291
  unfold Seg52.relationRow292 at r292
  unfold Seg52.relationRow293 at r293
  unfold Seg52.relationRow294 at r294
  unfold Seg52.relationRow295 at r295
  unfold Seg52.relationRow296 at r296
  unfold Seg52.relationRow297 at r297
  unfold Seg52.relationRow298 at r298
  unfold Seg52.relationRow299 at r299
  unfold Seg52.relationRow300 at r300
  unfold Seg52.relationRow301 at r301
  unfold Seg52.relationRow302 at r302
  unfold Seg52.relationRow303 at r303
  unfold Seg52.relationRow304 at r304
  unfold Seg52.relationRow305 at r305
  unfold Seg52.relationRow306 at r306
  unfold Seg52.relationRow307 at r307
  unfold Seg52.relationRow308 at r308
  unfold Seg52.relationRow309 at r309
  unfold Seg52.relationRow310 at r310
  unfold Seg52.relationRow311 at r311
  unfold Seg52.relationRow312 at r312
  unfold Seg52.relationRow313 at r313
  unfold Seg52.relationRow314 at r314
  unfold Seg52.relationRow315 at r315
  unfold Seg52.relationRow316 at r316
  unfold Seg52.relationRow317 at r317
  unfold Seg52.relationRow318 at r318
  unfold Seg52.relationRow319 at r319
  unfold Seg52.relationRow320 at r320
  unfold Seg52.relationRow321 at r321
  unfold Seg52.relationRow322 at r322
  unfold Seg52.relationRow323 at r323
  unfold Seg52.relationRow324 at r324
  unfold Seg52.relationRow325 at r325
  unfold Seg52.relationRow326 at r326
  unfold Seg52.relationRow327 at r327
  unfold Seg52.relationRow328 at r328
  unfold Seg52.relationRow329 at r329
  unfold Seg52.relationRow330 at r330
  unfold Seg52.relationRow331 at r331
  unfold Seg52.relationRow332 at r332
  unfold Seg52.relationRow333 at r333
  unfold Seg52.relationRow334 at r334
  unfold Seg52.relationRow335 at r335
  unfold Seg52.relationRow336 at r336
  unfold Seg52.relationRow337 at r337
  unfold Seg52.relationRow338 at r338
  unfold Seg52.relationRow339 at r339
  unfold Seg52.relationRow340 at r340
  unfold Seg52.relationRow341 at r341
  unfold Seg52.relationRow342 at r342
  unfold Seg52.relationRow343 at r343
  unfold Seg52.relationRow344 at r344
  unfold Seg52.relationRow345 at r345
  unfold Seg52.relationRow346 at r346
  unfold Seg52.relationRow347 at r347
  unfold Seg52.relationRow348 at r348
  unfold Seg52.relationRow349 at r349
  unfold Seg52.relationRow350 at r350
  unfold Seg52.relationRow351 at r351
  unfold Seg52.relationRow352 at r352
  unfold Seg52.relationRow353 at r353
  unfold Seg52.relationRow354 at r354
  unfold Seg52.relationRow355 at r355
  unfold Seg52.relationRow356 at r356
  unfold Seg52.relationRow357 at r357
  unfold Seg52.relationRow358 at r358
  unfold Seg52.relationRow359 at r359
  unfold Seg52.relationRow360 at r360
  unfold Seg52.relationRow361 at r361
  unfold Seg52.relationRow362 at r362
  unfold Seg52.relationRow363 at r363
  unfold Seg52.relationRow364 at r364
  unfold Seg52.relationRow365 at r365
  unfold Seg52.relationRow366 at r366
  unfold Seg52.relationRow367 at r367
  unfold Seg52.relationRow368 at r368
  unfold Seg52.relationRow369 at r369
  unfold Seg52.relationRow370 at r370
  unfold Seg52.relationRow371 at r371
  unfold Seg52.relationRow372 at r372
  unfold Seg52.relationRow373 at r373
  unfold Seg52.relationRow374 at r374
  unfold Seg52.relationRow375 at r375
  unfold Seg52.relationRow376 at r376
  unfold Seg52.relationRow377 at r377
  unfold Seg52.relationRow378 at r378
  unfold Seg52.relationRow379 at r379
  unfold Seg52.relationRow380 at r380
  unfold Seg52.relationRow381 at r381
  unfold Seg52.relationRow382 at r382
  unfold Seg52.relationRow383 at r383
  unfold Seg52.relationRow384 at r384
  unfold Seg52.relationRow385 at r385
  unfold Seg52.relationRow386 at r386
  unfold Seg52.relationRow387 at r387
  unfold Seg52.relationRow388 at r388
  unfold Seg52.relationRow389 at r389
  unfold Seg52.relationRow390 at r390
  unfold Seg52.relationRow391 at r391
  unfold Seg52.relationRow392 at r392
  unfold Seg52.relationRow393 at r393
  unfold Seg52.relationRow394 at r394
  unfold Seg52.relationRow395 at r395
  unfold Seg52.relationRow396 at r396
  unfold Seg52.relationRow397 at r397
  unfold Seg52.relationRow398 at r398
  unfold Seg52.relationRow399 at r399
  unfold Seg52.relationRow400 at r400
  unfold Seg52.relationRow401 at r401
  unfold Seg52.relationRow402 at r402
  unfold Seg52.relationRow403 at r403
  unfold Seg52.relationRow404 at r404
  unfold Seg52.relationRow405 at r405
  unfold Seg52.relationRow406 at r406
  unfold Seg52.relationRow407 at r407
  unfold Seg52.relationRow408 at r408
  unfold Seg52.relationRow409 at r409
  unfold Seg52.relationRow410 at r410
  unfold Seg52.relationRow411 at r411
  unfold Seg52.relationRow412 at r412
  unfold Seg52.relationRow413 at r413
  unfold Seg52.relationRow414 at r414
  unfold Seg52.relationRow415 at r415
  unfold Seg52.relationRow416 at r416
  unfold Seg52.relationRow417 at r417
  unfold Seg52.relationRow418 at r418
  unfold Seg52.relationRow419 at r419
  unfold Seg52.relationRow420 at r420
  unfold Seg52.relationRow421 at r421
  unfold Seg52.relationRow422 at r422
  unfold Seg52.relationRow423 at r423
  unfold Seg52.relationRow424 at r424
  unfold Seg52.relationRow425 at r425
  unfold Seg52.relationRow426 at r426
  unfold Seg52.relationRow427 at r427
  unfold Seg52.relationRow428 at r428
  unfold Seg52.relationRow429 at r429
  unfold Seg52.relationRow430 at r430
  unfold Seg52.relationRow431 at r431
  unfold Seg52.relationRow432 at r432
  unfold Seg52.relationRow433 at r433
  unfold Seg52.relationRow434 at r434
  unfold Seg52.relationRow435 at r435
  unfold Seg52.relationRow436 at r436
  unfold Seg52.relationRow437 at r437
  unfold Seg52.relationRow438 at r438
  unfold Seg52.relationRow439 at r439
  unfold Seg52.relationRow440 at r440
  unfold Seg52.relationRow441 at r441
  unfold Seg52.relationRow442 at r442
  unfold Seg52.relationRow443 at r443
  unfold Seg52.relationRow444 at r444
  unfold Seg52.relationRow445 at r445
  unfold Seg52.relationRow446 at r446
  unfold Seg52.relationRow447 at r447
  unfold Seg52.relationRow448 at r448
  unfold Seg52.relationRow449 at r449
  unfold Seg52.relationRow450 at r450
  unfold Seg52.relationRow451 at r451
  unfold Seg52.relationRow452 at r452
  unfold Seg52.relationRow453 at r453
  unfold Seg52.relationRow454 at r454
  unfold Seg52.relationRow455 at r455
  unfold Seg52.relationRow456 at r456
  unfold Seg52.relationRow457 at r457
  unfold Seg52.relationRow458 at r458
  unfold Seg52.relationRow459 at r459
  unfold Seg52.relationRow460 at r460
  unfold Seg52.relationRow461 at r461
  unfold Seg52.relationRow462 at r462
  unfold Seg52.relationRow463 at r463
  unfold Seg52.relationRow464 at r464
  unfold Seg52.relationRow465 at r465
  unfold Seg52.relationRow466 at r466
  unfold Seg52.relationRow467 at r467
  unfold Seg52.relationRow468 at r468
  unfold Seg52.relationRow469 at r469
  unfold Seg52.relationRow470 at r470
  unfold Seg52.relationRow471 at r471
  unfold Seg52.relationRow472 at r472
  unfold Seg52.relationRow473 at r473
  unfold Seg52.relationRow474 at r474
  unfold Seg52.relationRow475 at r475
  unfold Seg52.relationRow476 at r476
  unfold Seg52.relationRow477 at r477
  unfold Seg52.relationRow478 at r478
  unfold Seg52.relationRow479 at r479
  unfold Seg52.relationRow480 at r480
  unfold Seg52.relationRow481 at r481
  unfold Seg52.relationRow482 at r482
  unfold Seg52.relationRow483 at r483
  unfold Seg52.relationRow484 at r484
  unfold Seg52.relationRow485 at r485
  unfold Seg52.relationRow486 at r486
  unfold Seg52.relationRow487 at r487
  unfold Seg52.relationRow488 at r488
  unfold Seg52.relationRow489 at r489
  unfold Seg52.relationRow490 at r490
  unfold Seg52.relationRow491 at r491
  unfold Seg52.relationRow492 at r492
  unfold Seg52.relationRow493 at r493
  unfold Seg52.relationRow494 at r494
  unfold Seg52.relationRow495 at r495
  unfold Seg52.relationRow496 at r496
  unfold Seg52.relationRow497 at r497
  unfold Seg52.relationRow498 at r498
  unfold Seg52.relationRow499 at r499
  unfold Seg52.relationRow500 at r500
  unfold Seg52.relationRow501 at r501
  unfold Seg52.relationRow502 at r502
  unfold Seg52.relationRow503 at r503
  unfold Seg52.relationRow504 at r504
  unfold Seg52.relationRow505 at r505
  unfold Seg52.relationRow506 at r506
  unfold Seg52.relationRow507 at r507
  unfold Seg52.relationRow508 at r508
  unfold Seg52.relationRow509 at r509
  unfold Seg52.relationRow510 at r510
  apply Shieldd.GnarkFormal.Extracted.CanonicalFqBits.isVectorBinary_of_booleanity
  intro i hi
  have key := seg52CanonBits_get rho i hi
  have hgoal : rho (44818 + i) * (1 - rho (44818 + i)) = 0 := by
    interval_cases i
    · linear_combination r258
    · linear_combination r259
    · linear_combination r260
    · linear_combination r261
    · linear_combination r262
    · linear_combination r263
    · linear_combination r264
    · linear_combination r265
    · linear_combination r266
    · linear_combination r267
    · linear_combination r268
    · linear_combination r269
    · linear_combination r270
    · linear_combination r271
    · linear_combination r272
    · linear_combination r273
    · linear_combination r274
    · linear_combination r275
    · linear_combination r276
    · linear_combination r277
    · linear_combination r278
    · linear_combination r279
    · linear_combination r280
    · linear_combination r281
    · linear_combination r282
    · linear_combination r283
    · linear_combination r284
    · linear_combination r285
    · linear_combination r286
    · linear_combination r287
    · linear_combination r288
    · linear_combination r289
    · linear_combination r290
    · linear_combination r291
    · linear_combination r292
    · linear_combination r293
    · linear_combination r294
    · linear_combination r295
    · linear_combination r296
    · linear_combination r297
    · linear_combination r298
    · linear_combination r299
    · linear_combination r300
    · linear_combination r301
    · linear_combination r302
    · linear_combination r303
    · linear_combination r304
    · linear_combination r305
    · linear_combination r306
    · linear_combination r307
    · linear_combination r308
    · linear_combination r309
    · linear_combination r310
    · linear_combination r311
    · linear_combination r312
    · linear_combination r313
    · linear_combination r314
    · linear_combination r315
    · linear_combination r316
    · linear_combination r317
    · linear_combination r318
    · linear_combination r319
    · linear_combination r320
    · linear_combination r321
    · linear_combination r322
    · linear_combination r323
    · linear_combination r324
    · linear_combination r325
    · linear_combination r326
    · linear_combination r327
    · linear_combination r328
    · linear_combination r329
    · linear_combination r330
    · linear_combination r331
    · linear_combination r332
    · linear_combination r333
    · linear_combination r334
    · linear_combination r335
    · linear_combination r336
    · linear_combination r337
    · linear_combination r338
    · linear_combination r339
    · linear_combination r340
    · linear_combination r341
    · linear_combination r342
    · linear_combination r343
    · linear_combination r344
    · linear_combination r345
    · linear_combination r346
    · linear_combination r347
    · linear_combination r348
    · linear_combination r349
    · linear_combination r350
    · linear_combination r351
    · linear_combination r352
    · linear_combination r353
    · linear_combination r354
    · linear_combination r355
    · linear_combination r356
    · linear_combination r357
    · linear_combination r358
    · linear_combination r359
    · linear_combination r360
    · linear_combination r361
    · linear_combination r362
    · linear_combination r363
    · linear_combination r364
    · linear_combination r365
    · linear_combination r366
    · linear_combination r367
    · linear_combination r368
    · linear_combination r369
    · linear_combination r370
    · linear_combination r371
    · linear_combination r372
    · linear_combination r373
    · linear_combination r374
    · linear_combination r375
    · linear_combination r376
    · linear_combination r377
    · linear_combination r378
    · linear_combination r379
    · linear_combination r380
    · linear_combination r381
    · linear_combination r382
    · linear_combination r383
    · linear_combination r384
    · linear_combination r385
    · linear_combination r386
    · linear_combination r387
    · linear_combination r388
    · linear_combination r389
    · linear_combination r390
    · linear_combination r391
    · linear_combination r392
    · linear_combination r393
    · linear_combination r394
    · linear_combination r395
    · linear_combination r396
    · linear_combination r397
    · linear_combination r398
    · linear_combination r399
    · linear_combination r400
    · linear_combination r401
    · linear_combination r402
    · linear_combination r403
    · linear_combination r404
    · linear_combination r405
    · linear_combination r406
    · linear_combination r407
    · linear_combination r408
    · linear_combination r409
    · linear_combination r410
    · linear_combination r411
    · linear_combination r412
    · linear_combination r413
    · linear_combination r414
    · linear_combination r415
    · linear_combination r416
    · linear_combination r417
    · linear_combination r418
    · linear_combination r419
    · linear_combination r420
    · linear_combination r421
    · linear_combination r422
    · linear_combination r423
    · linear_combination r424
    · linear_combination r425
    · linear_combination r426
    · linear_combination r427
    · linear_combination r428
    · linear_combination r429
    · linear_combination r430
    · linear_combination r431
    · linear_combination r432
    · linear_combination r433
    · linear_combination r434
    · linear_combination r435
    · linear_combination r436
    · linear_combination r437
    · linear_combination r438
    · linear_combination r439
    · linear_combination r440
    · linear_combination r441
    · linear_combination r442
    · linear_combination r443
    · linear_combination r444
    · linear_combination r445
    · linear_combination r446
    · linear_combination r447
    · linear_combination r448
    · linear_combination r449
    · linear_combination r450
    · linear_combination r451
    · linear_combination r452
    · linear_combination r453
    · linear_combination r454
    · linear_combination r455
    · linear_combination r456
    · linear_combination r457
    · linear_combination r458
    · linear_combination r459
    · linear_combination r460
    · linear_combination r461
    · linear_combination r462
    · linear_combination r463
    · linear_combination r464
    · linear_combination r465
    · linear_combination r466
    · linear_combination r467
    · linear_combination r468
    · linear_combination r469
    · linear_combination r470
    · linear_combination r471
    · linear_combination r472
    · linear_combination r473
    · linear_combination r474
    · linear_combination r475
    · linear_combination r476
    · linear_combination r477
    · linear_combination r478
    · linear_combination r479
    · linear_combination r480
    · linear_combination r481
    · linear_combination r482
    · linear_combination r483
    · linear_combination r484
    · linear_combination r485
    · linear_combination r486
    · linear_combination r487
    · linear_combination r488
    · linear_combination r489
    · linear_combination r490
    · linear_combination r491
    · linear_combination r492
    · linear_combination r493
    · linear_combination r494
    · linear_combination r495
    · linear_combination r496
    · linear_combination r497
    · linear_combination r498
    · linear_combination r499
    · linear_combination r500
    · linear_combination r501
    · linear_combination r502
    · linear_combination r503
    · linear_combination r504
    · linear_combination r505
    · linear_combination r506
    · linear_combination r507
    · linear_combination r508
    · linear_combination r509
    · linear_combination r510
  exact key ▸ hgoal

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
