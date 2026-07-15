import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node8Rows0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node8Rows1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node8Rows2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node8Rows3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node8Rows4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node8Rows5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Node8Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode8.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node8_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode8Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (9 : Seg13.F))
        (rho 70 + rho 10380) (rho 71 + rho 10381 + rho 10382)
        (rho 71 + rho 10383 + rho 10384) (rho 72 + rho 10385) := by
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, p41, p42, p43, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, r3205, r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279⟩
  unfold Seg13.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359⟩
  unfold Seg13.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Seg13.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Seg13.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.relation (rho 70) (rho 71) (rho 72) (rho 10380) (rho 10381) (rho 10382) (rho 10383) (rho 10384) (rho 10385)
      (fun o0 o1 o2 o3 o4 => o0 = rho 10715 ∧ o1 = rho 10720 ∧ o2 = rho 10725 ∧ o3 = rho 10730 ∧ o4 = rho 10735) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.relation
    exact seg13_scp_node8_seg0 rho _ r3205 r3206 r3207 r3208 r3209 (seg13_scp_node8_seg1 rho _ r3210 r3211 r3212 r3213 r3214 (seg13_scp_node8_seg2 rho _ r3215 r3216 r3217 r3218 r3219 (seg13_scp_node8_seg3 rho _ r3220 r3221 r3222 r3223 r3224 (seg13_scp_node8_seg4 rho _ r3225 r3226 r3227 r3228 r3229 (seg13_scp_node8_seg5 rho _ r3230 r3231 r3232 r3233 r3234 (seg13_scp_node8_seg6 rho _ r3235 r3236 r3237 r3238 r3239 (seg13_scp_node8_seg7 rho _ r3240 r3241 r3242 r3243 r3244 (seg13_scp_node8_seg8 rho _ r3245 r3246 r3247 r3248 r3249 (seg13_scp_node8_seg9 rho _ r3250 r3251 r3252 r3253 r3254 (seg13_scp_node8_seg10 rho _ r3255 r3256 r3257 r3258 r3259 (seg13_scp_node8_seg11 rho _ r3260 r3261 r3262 r3263 r3264 (seg13_scp_node8_seg12 rho _ r3265 r3266 r3267 r3268 r3269 (seg13_scp_node8_seg13 rho _ r3270 r3271 r3272 r3273 r3274 (seg13_scp_node8_seg14 rho _ r3275 r3276 r3277 r3278 r3279 (seg13_scp_node8_seg15 rho _ r3280 r3281 r3282 r3283 r3284 (seg13_scp_node8_seg16 rho _ r3285 r3286 r3287 r3288 r3289 (seg13_scp_node8_seg17 rho _ r3290 r3291 r3292 r3293 r3294 (seg13_scp_node8_seg18 rho _ r3295 r3296 r3297 r3298 r3299 (seg13_scp_node8_seg19 rho _ r3300 r3301 r3302 r3303 r3304 (seg13_scp_node8_seg20 rho _ r3305 r3306 r3307 r3308 r3309 (seg13_scp_node8_seg21 rho _ r3310 r3311 r3312 r3313 r3314 (seg13_scp_node8_seg22 rho _ r3315 r3316 r3317 r3318 r3319 (seg13_scp_node8_seg23 rho _ r3320 r3321 r3322 r3323 r3324 (seg13_scp_node8_seg24 rho _ r3325 r3326 r3327 r3328 r3329 (seg13_scp_node8_seg25 rho _ r3330 r3331 r3332 r3333 r3334 (seg13_scp_node8_seg26 rho _ r3335 r3336 r3337 r3338 r3339 (seg13_scp_node8_seg27 rho _ r3340 r3341 r3342 r3343 r3344 (seg13_scp_node8_seg28 rho _ r3345 r3346 r3347 r3348 r3349 (seg13_scp_node8_seg29 rho _ r3350 r3351 r3352 r3353 r3354 (seg13_scp_node8_seg30 rho _ r3355 r3356 r3357 r3358 r3359 (seg13_scp_node8_seg31 rho _ r3360 r3361 r3362 r3363 r3364 (seg13_scp_node8_seg32 rho _ r3365 r3366 r3367 r3368 r3369 (seg13_scp_node8_seg33 rho _ r3370 r3371 r3372 r3373 r3374 (seg13_scp_node8_seg34 rho _ r3375 r3376 r3377 r3378 r3379 (seg13_scp_node8_seg35 rho _ r3380 r3381 r3382 r3383 r3384 (seg13_scp_node8_seg36 rho _ r3385 r3386 r3387 r3388 r3389 (seg13_scp_node8_seg37 rho _ r3390 r3391 r3392 r3393 r3394 (seg13_scp_node8_seg38 rho _ r3395 r3396 r3397 r3398 r3399 (seg13_scp_node8_seg39 rho _ r3400 r3401 r3402 r3403 r3404 (seg13_scp_node8_seg40 rho _ r3405 r3406 r3407 r3408 r3409 (seg13_scp_node8_seg41 rho _ r3410 r3411 r3412 r3413 r3414 (seg13_scp_node8_seg42 rho _ r3415 r3416 r3417 r3418 r3419 (seg13_scp_node8_seg43 rho _ r3420 r3421 r3422 r3423 r3424 (seg13_scp_node8_seg44 rho _ r3425 r3426 r3427 r3428 r3429 (seg13_scp_node8_seg45 rho _ r3430 r3431 r3432 r3433 r3434 (seg13_scp_node8_seg46 rho _ r3435 r3436 r3437 r3438 r3439 (seg13_scp_node8_seg47 rho _ r3440 r3441 r3442 r3443 r3444 (seg13_scp_node8_seg48 rho _ r3445 r3446 r3447 r3448 r3449 (seg13_scp_node8_seg49 rho _ r3450 r3451 r3452 r3453 r3454 (seg13_scp_node8_seg50 rho _ r3455 r3456 r3457 r3458 r3459 (seg13_scp_node8_seg51 rho _ r3460 r3461 r3462 r3463 r3464 (seg13_scp_node8_seg52 rho _ r3465 r3466 r3467 r3468 r3469 (seg13_scp_node8_seg53 rho _ r3470 r3471 r3472 r3473 r3474 (seg13_scp_node8_seg54 rho _ r3475 r3476 r3477 r3478 r3479 (seg13_scp_node8_seg55 rho _ r3480 r3481 r3482 r3483 r3484 (seg13_scp_node8_seg56 rho _ r3485 r3486 r3487 r3488 r3489 (seg13_scp_node8_seg57 rho _ r3490 r3491 r3492 r3493 r3494 (seg13_scp_node8_seg58 rho _ r3495 r3496 r3497 r3498 r3499 (seg13_scp_node8_seg59 rho _ r3500 r3501 r3502 r3503 r3504 (seg13_scp_node8_seg60 rho _ r3505 r3506 r3507 r3508 r3509 (seg13_scp_node8_seg61 rho _ r3510 r3511 r3512 r3513 r3514 (seg13_scp_node8_seg62 rho _ r3515 r3516 r3517 r3518 r3519 (seg13_scp_node8_seg63 rho _ r3520 r3521 r3522 r3523 r3524 (seg13_scp_node8_seg64 rho _ r3525 r3526 r3527 r3528 r3529 (seg13_scp_node8_seg65 rho _ r3530 r3531 r3532 r3533 r3534 (seg13_scp_node8_seg66 rho _ r3535 r3536 r3537 r3538 r3539 (seg13_scp_node8_seg67 rho _ r3540 r3541 r3542 r3543 r3544 (seg13_scp_node8_seg68 rho _ r3545 r3546 r3547 r3548 r3549 (seg13_scp_node8_seg69 rho _ r3550 r3551 r3552 r3553 r3554 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.relation_sound_permSpec (rho 70) (rho 71) (rho 72) (rho 10380) (rho 10381) (rho 10382) (rho 10383) (rho 10384) (rho 10385) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.tctNode9DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.F) + (9 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode8Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

