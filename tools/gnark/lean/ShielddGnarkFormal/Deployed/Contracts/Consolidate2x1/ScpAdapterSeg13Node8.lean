import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode8.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node8_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode8Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (9 : Seg13.F))
        (rho 70 + rho 10631) (rho 71 + rho 10632 + rho 10633)
        (rho 71 + rho 10634 + rho 10635) (rho 72 + rho 10636) := by
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
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.relation (rho 70) (rho 71) (rho 72) (rho 10631) (rho 10632) (rho 10633) (rho 10634) (rho 10635) (rho 10636)
      (fun o0 o1 o2 o3 o4 => o0 = rho 10966 ∧ o1 = rho 10971 ∧ o2 = rho 10976 ∧ o3 = rho 10981 ∧ o4 = rho 10986) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg0
    refine ⟨rho 10637, rho 10638, rho 10639, rho 10640, rho 10641,
      (by unfold Seg13.relationRow3205 at r3205; linear_combination r3205), (by unfold Seg13.relationRow3206 at r3206; linear_combination r3206), (by unfold Seg13.relationRow3207 at r3207; linear_combination r3207), (by unfold Seg13.relationRow3208 at r3208; linear_combination r3208), (by unfold Seg13.relationRow3209 at r3209; linear_combination r3209), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg1
    refine ⟨rho 10642, rho 10643, rho 10644, rho 10645, rho 10646,
      (by unfold Seg13.relationRow3210 at r3210; linear_combination r3210), (by unfold Seg13.relationRow3211 at r3211; linear_combination r3211), (by unfold Seg13.relationRow3212 at r3212; linear_combination r3212), (by unfold Seg13.relationRow3213 at r3213; linear_combination r3213), (by unfold Seg13.relationRow3214 at r3214; linear_combination r3214), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg2
    refine ⟨rho 10647, rho 10648, rho 10649, rho 10650, rho 10651,
      (by unfold Seg13.relationRow3215 at r3215; linear_combination r3215), (by unfold Seg13.relationRow3216 at r3216; linear_combination r3216), (by unfold Seg13.relationRow3217 at r3217; linear_combination r3217), (by unfold Seg13.relationRow3218 at r3218; linear_combination r3218), (by unfold Seg13.relationRow3219 at r3219; linear_combination r3219), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg3
    refine ⟨rho 10652, rho 10653, rho 10654, rho 10655, rho 10656,
      (by unfold Seg13.relationRow3220 at r3220; linear_combination r3220), (by unfold Seg13.relationRow3221 at r3221; linear_combination r3221), (by unfold Seg13.relationRow3222 at r3222; linear_combination r3222), (by unfold Seg13.relationRow3223 at r3223; linear_combination r3223), (by unfold Seg13.relationRow3224 at r3224; linear_combination r3224), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg4
    refine ⟨rho 10657, rho 10658, rho 10659, rho 10660, rho 10661,
      (by unfold Seg13.relationRow3225 at r3225; linear_combination r3225), (by unfold Seg13.relationRow3226 at r3226; linear_combination r3226), (by unfold Seg13.relationRow3227 at r3227; linear_combination r3227), (by unfold Seg13.relationRow3228 at r3228; linear_combination r3228), (by unfold Seg13.relationRow3229 at r3229; linear_combination r3229), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg5
    refine ⟨rho 10662, rho 10663, rho 10664, rho 10665, rho 10666,
      (by unfold Seg13.relationRow3230 at r3230; linear_combination r3230), (by unfold Seg13.relationRow3231 at r3231; linear_combination r3231), (by unfold Seg13.relationRow3232 at r3232; linear_combination r3232), (by unfold Seg13.relationRow3233 at r3233; linear_combination r3233), (by unfold Seg13.relationRow3234 at r3234; linear_combination r3234), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg6
    refine ⟨rho 10667, rho 10668, rho 10669, rho 10670, rho 10671,
      (by unfold Seg13.relationRow3235 at r3235; linear_combination r3235), (by unfold Seg13.relationRow3236 at r3236; linear_combination r3236), (by unfold Seg13.relationRow3237 at r3237; linear_combination r3237), (by unfold Seg13.relationRow3238 at r3238; linear_combination r3238), (by unfold Seg13.relationRow3239 at r3239; linear_combination r3239), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg7
    refine ⟨rho 10672, rho 10673, rho 10674, rho 10675, rho 10676,
      (by unfold Seg13.relationRow3240 at r3240; linear_combination r3240), (by unfold Seg13.relationRow3241 at r3241; linear_combination r3241), (by unfold Seg13.relationRow3242 at r3242; linear_combination r3242), (by unfold Seg13.relationRow3243 at r3243; linear_combination r3243), (by unfold Seg13.relationRow3244 at r3244; linear_combination r3244), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg8
    refine ⟨rho 10677, rho 10678, rho 10679, rho 10680, rho 10681,
      (by unfold Seg13.relationRow3245 at r3245; linear_combination r3245), (by unfold Seg13.relationRow3246 at r3246; linear_combination r3246), (by unfold Seg13.relationRow3247 at r3247; linear_combination r3247), (by unfold Seg13.relationRow3248 at r3248; linear_combination r3248), (by unfold Seg13.relationRow3249 at r3249; linear_combination r3249), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg9
    refine ⟨rho 10682, rho 10683, rho 10684, rho 10685, rho 10686,
      (by unfold Seg13.relationRow3250 at r3250; linear_combination r3250), (by unfold Seg13.relationRow3251 at r3251; linear_combination r3251), (by unfold Seg13.relationRow3252 at r3252; linear_combination r3252), (by unfold Seg13.relationRow3253 at r3253; linear_combination r3253), (by unfold Seg13.relationRow3254 at r3254; linear_combination r3254), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg10
    refine ⟨rho 10687, rho 10688, rho 10689, rho 10690, rho 10691,
      (by unfold Seg13.relationRow3255 at r3255; linear_combination r3255), (by unfold Seg13.relationRow3256 at r3256; linear_combination r3256), (by unfold Seg13.relationRow3257 at r3257; linear_combination r3257), (by unfold Seg13.relationRow3258 at r3258; linear_combination r3258), (by unfold Seg13.relationRow3259 at r3259; linear_combination r3259), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg11
    refine ⟨rho 10692, rho 10693, rho 10694, rho 10695, rho 10696,
      (by unfold Seg13.relationRow3260 at r3260; linear_combination r3260), (by unfold Seg13.relationRow3261 at r3261; linear_combination r3261), (by unfold Seg13.relationRow3262 at r3262; linear_combination r3262), (by unfold Seg13.relationRow3263 at r3263; linear_combination r3263), (by unfold Seg13.relationRow3264 at r3264; linear_combination r3264), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg12
    refine ⟨rho 10697, rho 10698, rho 10699, rho 10700, rho 10701,
      (by unfold Seg13.relationRow3265 at r3265; linear_combination r3265), (by unfold Seg13.relationRow3266 at r3266; linear_combination r3266), (by unfold Seg13.relationRow3267 at r3267; linear_combination r3267), (by unfold Seg13.relationRow3268 at r3268; linear_combination r3268), (by unfold Seg13.relationRow3269 at r3269; linear_combination r3269), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg13
    refine ⟨rho 10702, rho 10703, rho 10704, rho 10705, rho 10706,
      (by unfold Seg13.relationRow3270 at r3270; linear_combination r3270), (by unfold Seg13.relationRow3271 at r3271; linear_combination r3271), (by unfold Seg13.relationRow3272 at r3272; linear_combination r3272), (by unfold Seg13.relationRow3273 at r3273; linear_combination r3273), (by unfold Seg13.relationRow3274 at r3274; linear_combination r3274), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg14
    refine ⟨rho 10707, rho 10708, rho 10709, rho 10710, rho 10711,
      (by unfold Seg13.relationRow3275 at r3275; linear_combination r3275), (by unfold Seg13.relationRow3276 at r3276; linear_combination r3276), (by unfold Seg13.relationRow3277 at r3277; linear_combination r3277), (by unfold Seg13.relationRow3278 at r3278; linear_combination r3278), (by unfold Seg13.relationRow3279 at r3279; linear_combination r3279), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg15
    refine ⟨rho 10712, rho 10713, rho 10714, rho 10715, rho 10716,
      (by unfold Seg13.relationRow3280 at r3280; linear_combination r3280), (by unfold Seg13.relationRow3281 at r3281; linear_combination r3281), (by unfold Seg13.relationRow3282 at r3282; linear_combination r3282), (by unfold Seg13.relationRow3283 at r3283; linear_combination r3283), (by unfold Seg13.relationRow3284 at r3284; linear_combination r3284), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg16
    refine ⟨rho 10717, rho 10718, rho 10719, rho 10720, rho 10721,
      (by unfold Seg13.relationRow3285 at r3285; linear_combination r3285), (by unfold Seg13.relationRow3286 at r3286; linear_combination r3286), (by unfold Seg13.relationRow3287 at r3287; linear_combination r3287), (by unfold Seg13.relationRow3288 at r3288; linear_combination r3288), (by unfold Seg13.relationRow3289 at r3289; linear_combination r3289), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg17
    refine ⟨rho 10722, rho 10723, rho 10724, rho 10725, rho 10726,
      (by unfold Seg13.relationRow3290 at r3290; linear_combination r3290), (by unfold Seg13.relationRow3291 at r3291; linear_combination r3291), (by unfold Seg13.relationRow3292 at r3292; linear_combination r3292), (by unfold Seg13.relationRow3293 at r3293; linear_combination r3293), (by unfold Seg13.relationRow3294 at r3294; linear_combination r3294), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg18
    refine ⟨rho 10727, rho 10728, rho 10729, rho 10730, rho 10731,
      (by unfold Seg13.relationRow3295 at r3295; linear_combination r3295), (by unfold Seg13.relationRow3296 at r3296; linear_combination r3296), (by unfold Seg13.relationRow3297 at r3297; linear_combination r3297), (by unfold Seg13.relationRow3298 at r3298; linear_combination r3298), (by unfold Seg13.relationRow3299 at r3299; linear_combination r3299), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg19
    refine ⟨rho 10732, rho 10733, rho 10734, rho 10735, rho 10736,
      (by unfold Seg13.relationRow3300 at r3300; linear_combination r3300), (by unfold Seg13.relationRow3301 at r3301; linear_combination r3301), (by unfold Seg13.relationRow3302 at r3302; linear_combination r3302), (by unfold Seg13.relationRow3303 at r3303; linear_combination r3303), (by unfold Seg13.relationRow3304 at r3304; linear_combination r3304), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg20
    refine ⟨rho 10737, rho 10738, rho 10739, rho 10740, rho 10741,
      (by unfold Seg13.relationRow3305 at r3305; linear_combination r3305), (by unfold Seg13.relationRow3306 at r3306; linear_combination r3306), (by unfold Seg13.relationRow3307 at r3307; linear_combination r3307), (by unfold Seg13.relationRow3308 at r3308; linear_combination r3308), (by unfold Seg13.relationRow3309 at r3309; linear_combination r3309), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg21
    refine ⟨rho 10742, rho 10743, rho 10744, rho 10745, rho 10746,
      (by unfold Seg13.relationRow3310 at r3310; linear_combination r3310), (by unfold Seg13.relationRow3311 at r3311; linear_combination r3311), (by unfold Seg13.relationRow3312 at r3312; linear_combination r3312), (by unfold Seg13.relationRow3313 at r3313; linear_combination r3313), (by unfold Seg13.relationRow3314 at r3314; linear_combination r3314), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg22
    refine ⟨rho 10747, rho 10748, rho 10749, rho 10750, rho 10751,
      (by unfold Seg13.relationRow3315 at r3315; linear_combination r3315), (by unfold Seg13.relationRow3316 at r3316; linear_combination r3316), (by unfold Seg13.relationRow3317 at r3317; linear_combination r3317), (by unfold Seg13.relationRow3318 at r3318; linear_combination r3318), (by unfold Seg13.relationRow3319 at r3319; linear_combination r3319), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg23
    refine ⟨rho 10752, rho 10753, rho 10754, rho 10755, rho 10756,
      (by unfold Seg13.relationRow3320 at r3320; linear_combination r3320), (by unfold Seg13.relationRow3321 at r3321; linear_combination r3321), (by unfold Seg13.relationRow3322 at r3322; linear_combination r3322), (by unfold Seg13.relationRow3323 at r3323; linear_combination r3323), (by unfold Seg13.relationRow3324 at r3324; linear_combination r3324), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg24
    refine ⟨rho 10757, rho 10758, rho 10759, rho 10760, rho 10761,
      (by unfold Seg13.relationRow3325 at r3325; linear_combination r3325), (by unfold Seg13.relationRow3326 at r3326; linear_combination r3326), (by unfold Seg13.relationRow3327 at r3327; linear_combination r3327), (by unfold Seg13.relationRow3328 at r3328; linear_combination r3328), (by unfold Seg13.relationRow3329 at r3329; linear_combination r3329), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg25
    refine ⟨rho 10762, rho 10763, rho 10764, rho 10765, rho 10766,
      (by unfold Seg13.relationRow3330 at r3330; linear_combination r3330), (by unfold Seg13.relationRow3331 at r3331; linear_combination r3331), (by unfold Seg13.relationRow3332 at r3332; linear_combination r3332), (by unfold Seg13.relationRow3333 at r3333; linear_combination r3333), (by unfold Seg13.relationRow3334 at r3334; linear_combination r3334), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg26
    refine ⟨rho 10767, rho 10768, rho 10769, rho 10770, rho 10771,
      (by unfold Seg13.relationRow3335 at r3335; linear_combination r3335), (by unfold Seg13.relationRow3336 at r3336; linear_combination r3336), (by unfold Seg13.relationRow3337 at r3337; linear_combination r3337), (by unfold Seg13.relationRow3338 at r3338; linear_combination r3338), (by unfold Seg13.relationRow3339 at r3339; linear_combination r3339), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg27
    refine ⟨rho 10772, rho 10773, rho 10774, rho 10775, rho 10776,
      (by unfold Seg13.relationRow3340 at r3340; linear_combination r3340), (by unfold Seg13.relationRow3341 at r3341; linear_combination r3341), (by unfold Seg13.relationRow3342 at r3342; linear_combination r3342), (by unfold Seg13.relationRow3343 at r3343; linear_combination r3343), (by unfold Seg13.relationRow3344 at r3344; linear_combination r3344), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg28
    refine ⟨rho 10777, rho 10778, rho 10779, rho 10780, rho 10781,
      (by unfold Seg13.relationRow3345 at r3345; linear_combination r3345), (by unfold Seg13.relationRow3346 at r3346; linear_combination r3346), (by unfold Seg13.relationRow3347 at r3347; linear_combination r3347), (by unfold Seg13.relationRow3348 at r3348; linear_combination r3348), (by unfold Seg13.relationRow3349 at r3349; linear_combination r3349), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg29
    refine ⟨rho 10782, rho 10783, rho 10784, rho 10785, rho 10786,
      (by unfold Seg13.relationRow3350 at r3350; linear_combination r3350), (by unfold Seg13.relationRow3351 at r3351; linear_combination r3351), (by unfold Seg13.relationRow3352 at r3352; linear_combination r3352), (by unfold Seg13.relationRow3353 at r3353; linear_combination r3353), (by unfold Seg13.relationRow3354 at r3354; linear_combination r3354), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg30
    refine ⟨rho 10787, rho 10788, rho 10789, rho 10790, rho 10791,
      (by unfold Seg13.relationRow3355 at r3355; linear_combination r3355), (by unfold Seg13.relationRow3356 at r3356; linear_combination r3356), (by unfold Seg13.relationRow3357 at r3357; linear_combination r3357), (by unfold Seg13.relationRow3358 at r3358; linear_combination r3358), (by unfold Seg13.relationRow3359 at r3359; linear_combination r3359), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg31
    refine ⟨rho 10792, rho 10793, rho 10794, rho 10795, rho 10796,
      (by unfold Seg13.relationRow3360 at r3360; linear_combination r3360), (by unfold Seg13.relationRow3361 at r3361; linear_combination r3361), (by unfold Seg13.relationRow3362 at r3362; linear_combination r3362), (by unfold Seg13.relationRow3363 at r3363; linear_combination r3363), (by unfold Seg13.relationRow3364 at r3364; linear_combination r3364), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg32
    refine ⟨rho 10797, rho 10798, rho 10799, rho 10800, rho 10801,
      (by unfold Seg13.relationRow3365 at r3365; linear_combination r3365), (by unfold Seg13.relationRow3366 at r3366; linear_combination r3366), (by unfold Seg13.relationRow3367 at r3367; linear_combination r3367), (by unfold Seg13.relationRow3368 at r3368; linear_combination r3368), (by unfold Seg13.relationRow3369 at r3369; linear_combination r3369), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg33
    refine ⟨rho 10802, rho 10803, rho 10804, rho 10805, rho 10806,
      (by unfold Seg13.relationRow3370 at r3370; linear_combination r3370), (by unfold Seg13.relationRow3371 at r3371; linear_combination r3371), (by unfold Seg13.relationRow3372 at r3372; linear_combination r3372), (by unfold Seg13.relationRow3373 at r3373; linear_combination r3373), (by unfold Seg13.relationRow3374 at r3374; linear_combination r3374), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg34
    refine ⟨rho 10807, rho 10808, rho 10809, rho 10810, rho 10811,
      (by unfold Seg13.relationRow3375 at r3375; linear_combination r3375), (by unfold Seg13.relationRow3376 at r3376; linear_combination r3376), (by unfold Seg13.relationRow3377 at r3377; linear_combination r3377), (by unfold Seg13.relationRow3378 at r3378; linear_combination r3378), (by unfold Seg13.relationRow3379 at r3379; linear_combination r3379), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg35
    refine ⟨rho 10812, rho 10813, rho 10814, rho 10815, rho 10816,
      (by unfold Seg13.relationRow3380 at r3380; linear_combination r3380), (by unfold Seg13.relationRow3381 at r3381; linear_combination r3381), (by unfold Seg13.relationRow3382 at r3382; linear_combination r3382), (by unfold Seg13.relationRow3383 at r3383; linear_combination r3383), (by unfold Seg13.relationRow3384 at r3384; linear_combination r3384), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg36
    refine ⟨rho 10817, rho 10818, rho 10819, rho 10820, rho 10821,
      (by unfold Seg13.relationRow3385 at r3385; linear_combination r3385), (by unfold Seg13.relationRow3386 at r3386; linear_combination r3386), (by unfold Seg13.relationRow3387 at r3387; linear_combination r3387), (by unfold Seg13.relationRow3388 at r3388; linear_combination r3388), (by unfold Seg13.relationRow3389 at r3389; linear_combination r3389), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg37
    refine ⟨rho 10822, rho 10823, rho 10824, rho 10825, rho 10826,
      (by unfold Seg13.relationRow3390 at r3390; linear_combination r3390), (by unfold Seg13.relationRow3391 at r3391; linear_combination r3391), (by unfold Seg13.relationRow3392 at r3392; linear_combination r3392), (by unfold Seg13.relationRow3393 at r3393; linear_combination r3393), (by unfold Seg13.relationRow3394 at r3394; linear_combination r3394), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg38
    refine ⟨rho 10827, rho 10828, rho 10829, rho 10830, rho 10831,
      (by unfold Seg13.relationRow3395 at r3395; linear_combination r3395), (by unfold Seg13.relationRow3396 at r3396; linear_combination r3396), (by unfold Seg13.relationRow3397 at r3397; linear_combination r3397), (by unfold Seg13.relationRow3398 at r3398; linear_combination r3398), (by unfold Seg13.relationRow3399 at r3399; linear_combination r3399), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg39
    refine ⟨rho 10832, rho 10833, rho 10834, rho 10835, rho 10836,
      (by unfold Seg13.relationRow3400 at r3400; linear_combination r3400), (by unfold Seg13.relationRow3401 at r3401; linear_combination r3401), (by unfold Seg13.relationRow3402 at r3402; linear_combination r3402), (by unfold Seg13.relationRow3403 at r3403; linear_combination r3403), (by unfold Seg13.relationRow3404 at r3404; linear_combination r3404), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg40
    refine ⟨rho 10837, rho 10838, rho 10839, rho 10840, rho 10841,
      (by unfold Seg13.relationRow3405 at r3405; linear_combination r3405), (by unfold Seg13.relationRow3406 at r3406; linear_combination r3406), (by unfold Seg13.relationRow3407 at r3407; linear_combination r3407), (by unfold Seg13.relationRow3408 at r3408; linear_combination r3408), (by unfold Seg13.relationRow3409 at r3409; linear_combination r3409), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg41
    refine ⟨rho 10842, rho 10843, rho 10844, rho 10845, rho 10846,
      (by unfold Seg13.relationRow3410 at r3410; linear_combination r3410), (by unfold Seg13.relationRow3411 at r3411; linear_combination r3411), (by unfold Seg13.relationRow3412 at r3412; linear_combination r3412), (by unfold Seg13.relationRow3413 at r3413; linear_combination r3413), (by unfold Seg13.relationRow3414 at r3414; linear_combination r3414), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg42
    refine ⟨rho 10847, rho 10848, rho 10849, rho 10850, rho 10851,
      (by unfold Seg13.relationRow3415 at r3415; linear_combination r3415), (by unfold Seg13.relationRow3416 at r3416; linear_combination r3416), (by unfold Seg13.relationRow3417 at r3417; linear_combination r3417), (by unfold Seg13.relationRow3418 at r3418; linear_combination r3418), (by unfold Seg13.relationRow3419 at r3419; linear_combination r3419), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg43
    refine ⟨rho 10852, rho 10853, rho 10854, rho 10855, rho 10856,
      (by unfold Seg13.relationRow3420 at r3420; linear_combination r3420), (by unfold Seg13.relationRow3421 at r3421; linear_combination r3421), (by unfold Seg13.relationRow3422 at r3422; linear_combination r3422), (by unfold Seg13.relationRow3423 at r3423; linear_combination r3423), (by unfold Seg13.relationRow3424 at r3424; linear_combination r3424), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg44
    refine ⟨rho 10857, rho 10858, rho 10859, rho 10860, rho 10861,
      (by unfold Seg13.relationRow3425 at r3425; linear_combination r3425), (by unfold Seg13.relationRow3426 at r3426; linear_combination r3426), (by unfold Seg13.relationRow3427 at r3427; linear_combination r3427), (by unfold Seg13.relationRow3428 at r3428; linear_combination r3428), (by unfold Seg13.relationRow3429 at r3429; linear_combination r3429), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg45
    refine ⟨rho 10862, rho 10863, rho 10864, rho 10865, rho 10866,
      (by unfold Seg13.relationRow3430 at r3430; linear_combination r3430), (by unfold Seg13.relationRow3431 at r3431; linear_combination r3431), (by unfold Seg13.relationRow3432 at r3432; linear_combination r3432), (by unfold Seg13.relationRow3433 at r3433; linear_combination r3433), (by unfold Seg13.relationRow3434 at r3434; linear_combination r3434), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg46
    refine ⟨rho 10867, rho 10868, rho 10869, rho 10870, rho 10871,
      (by unfold Seg13.relationRow3435 at r3435; linear_combination r3435), (by unfold Seg13.relationRow3436 at r3436; linear_combination r3436), (by unfold Seg13.relationRow3437 at r3437; linear_combination r3437), (by unfold Seg13.relationRow3438 at r3438; linear_combination r3438), (by unfold Seg13.relationRow3439 at r3439; linear_combination r3439), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg47
    refine ⟨rho 10872, rho 10873, rho 10874, rho 10875, rho 10876,
      (by unfold Seg13.relationRow3440 at r3440; linear_combination r3440), (by unfold Seg13.relationRow3441 at r3441; linear_combination r3441), (by unfold Seg13.relationRow3442 at r3442; linear_combination r3442), (by unfold Seg13.relationRow3443 at r3443; linear_combination r3443), (by unfold Seg13.relationRow3444 at r3444; linear_combination r3444), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg48
    refine ⟨rho 10877, rho 10878, rho 10879, rho 10880, rho 10881,
      (by unfold Seg13.relationRow3445 at r3445; linear_combination r3445), (by unfold Seg13.relationRow3446 at r3446; linear_combination r3446), (by unfold Seg13.relationRow3447 at r3447; linear_combination r3447), (by unfold Seg13.relationRow3448 at r3448; linear_combination r3448), (by unfold Seg13.relationRow3449 at r3449; linear_combination r3449), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg49
    refine ⟨rho 10882, rho 10883, rho 10884, rho 10885, rho 10886,
      (by unfold Seg13.relationRow3450 at r3450; linear_combination r3450), (by unfold Seg13.relationRow3451 at r3451; linear_combination r3451), (by unfold Seg13.relationRow3452 at r3452; linear_combination r3452), (by unfold Seg13.relationRow3453 at r3453; linear_combination r3453), (by unfold Seg13.relationRow3454 at r3454; linear_combination r3454), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg50
    refine ⟨rho 10887, rho 10888, rho 10889, rho 10890, rho 10891,
      (by unfold Seg13.relationRow3455 at r3455; linear_combination r3455), (by unfold Seg13.relationRow3456 at r3456; linear_combination r3456), (by unfold Seg13.relationRow3457 at r3457; linear_combination r3457), (by unfold Seg13.relationRow3458 at r3458; linear_combination r3458), (by unfold Seg13.relationRow3459 at r3459; linear_combination r3459), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg51
    refine ⟨rho 10892, rho 10893, rho 10894, rho 10895, rho 10896,
      (by unfold Seg13.relationRow3460 at r3460; linear_combination r3460), (by unfold Seg13.relationRow3461 at r3461; linear_combination r3461), (by unfold Seg13.relationRow3462 at r3462; linear_combination r3462), (by unfold Seg13.relationRow3463 at r3463; linear_combination r3463), (by unfold Seg13.relationRow3464 at r3464; linear_combination r3464), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg52
    refine ⟨rho 10897, rho 10898, rho 10899, rho 10900, rho 10901,
      (by unfold Seg13.relationRow3465 at r3465; linear_combination r3465), (by unfold Seg13.relationRow3466 at r3466; linear_combination r3466), (by unfold Seg13.relationRow3467 at r3467; linear_combination r3467), (by unfold Seg13.relationRow3468 at r3468; linear_combination r3468), (by unfold Seg13.relationRow3469 at r3469; linear_combination r3469), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg53
    refine ⟨rho 10902, rho 10903, rho 10904, rho 10905, rho 10906,
      (by unfold Seg13.relationRow3470 at r3470; linear_combination r3470), (by unfold Seg13.relationRow3471 at r3471; linear_combination r3471), (by unfold Seg13.relationRow3472 at r3472; linear_combination r3472), (by unfold Seg13.relationRow3473 at r3473; linear_combination r3473), (by unfold Seg13.relationRow3474 at r3474; linear_combination r3474), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg54
    refine ⟨rho 10907, rho 10908, rho 10909, rho 10910, rho 10911,
      (by unfold Seg13.relationRow3475 at r3475; linear_combination r3475), (by unfold Seg13.relationRow3476 at r3476; linear_combination r3476), (by unfold Seg13.relationRow3477 at r3477; linear_combination r3477), (by unfold Seg13.relationRow3478 at r3478; linear_combination r3478), (by unfold Seg13.relationRow3479 at r3479; linear_combination r3479), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg55
    refine ⟨rho 10912, rho 10913, rho 10914, rho 10915, rho 10916,
      (by unfold Seg13.relationRow3480 at r3480; linear_combination r3480), (by unfold Seg13.relationRow3481 at r3481; linear_combination r3481), (by unfold Seg13.relationRow3482 at r3482; linear_combination r3482), (by unfold Seg13.relationRow3483 at r3483; linear_combination r3483), (by unfold Seg13.relationRow3484 at r3484; linear_combination r3484), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg56
    refine ⟨rho 10917, rho 10918, rho 10919, rho 10920, rho 10921,
      (by unfold Seg13.relationRow3485 at r3485; linear_combination r3485), (by unfold Seg13.relationRow3486 at r3486; linear_combination r3486), (by unfold Seg13.relationRow3487 at r3487; linear_combination r3487), (by unfold Seg13.relationRow3488 at r3488; linear_combination r3488), (by unfold Seg13.relationRow3489 at r3489; linear_combination r3489), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg57
    refine ⟨rho 10922, rho 10923, rho 10924, rho 10925, rho 10926,
      (by unfold Seg13.relationRow3490 at r3490; linear_combination r3490), (by unfold Seg13.relationRow3491 at r3491; linear_combination r3491), (by unfold Seg13.relationRow3492 at r3492; linear_combination r3492), (by unfold Seg13.relationRow3493 at r3493; linear_combination r3493), (by unfold Seg13.relationRow3494 at r3494; linear_combination r3494), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg58
    refine ⟨rho 10927, rho 10928, rho 10929, rho 10930, rho 10931,
      (by unfold Seg13.relationRow3495 at r3495; linear_combination r3495), (by unfold Seg13.relationRow3496 at r3496; linear_combination r3496), (by unfold Seg13.relationRow3497 at r3497; linear_combination r3497), (by unfold Seg13.relationRow3498 at r3498; linear_combination r3498), (by unfold Seg13.relationRow3499 at r3499; linear_combination r3499), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg59
    refine ⟨rho 10932, rho 10933, rho 10934, rho 10935, rho 10936,
      (by unfold Seg13.relationRow3500 at r3500; linear_combination r3500), (by unfold Seg13.relationRow3501 at r3501; linear_combination r3501), (by unfold Seg13.relationRow3502 at r3502; linear_combination r3502), (by unfold Seg13.relationRow3503 at r3503; linear_combination r3503), (by unfold Seg13.relationRow3504 at r3504; linear_combination r3504), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg60
    refine ⟨rho 10937, rho 10938, rho 10939, rho 10940, rho 10941,
      (by unfold Seg13.relationRow3505 at r3505; linear_combination r3505), (by unfold Seg13.relationRow3506 at r3506; linear_combination r3506), (by unfold Seg13.relationRow3507 at r3507; linear_combination r3507), (by unfold Seg13.relationRow3508 at r3508; linear_combination r3508), (by unfold Seg13.relationRow3509 at r3509; linear_combination r3509), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg61
    refine ⟨rho 10942, rho 10943, rho 10944, rho 10945, rho 10946,
      (by unfold Seg13.relationRow3510 at r3510; linear_combination r3510), (by unfold Seg13.relationRow3511 at r3511; linear_combination r3511), (by unfold Seg13.relationRow3512 at r3512; linear_combination r3512), (by unfold Seg13.relationRow3513 at r3513; linear_combination r3513), (by unfold Seg13.relationRow3514 at r3514; linear_combination r3514), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg62
    refine ⟨rho 10947, rho 10948, rho 10949, rho 10950, rho 10951,
      (by unfold Seg13.relationRow3515 at r3515; linear_combination r3515), (by unfold Seg13.relationRow3516 at r3516; linear_combination r3516), (by unfold Seg13.relationRow3517 at r3517; linear_combination r3517), (by unfold Seg13.relationRow3518 at r3518; linear_combination r3518), (by unfold Seg13.relationRow3519 at r3519; linear_combination r3519), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg63
    refine ⟨rho 10952, rho 10953, rho 10954, rho 10955, rho 10956,
      (by unfold Seg13.relationRow3520 at r3520; linear_combination r3520), (by unfold Seg13.relationRow3521 at r3521; linear_combination r3521), (by unfold Seg13.relationRow3522 at r3522; linear_combination r3522), (by unfold Seg13.relationRow3523 at r3523; linear_combination r3523), (by unfold Seg13.relationRow3524 at r3524; linear_combination r3524), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg64
    refine ⟨rho 10957, rho 10958, rho 10959, rho 10960, rho 10961,
      (by unfold Seg13.relationRow3525 at r3525; linear_combination r3525), (by unfold Seg13.relationRow3526 at r3526; linear_combination r3526), (by unfold Seg13.relationRow3527 at r3527; linear_combination r3527), (by unfold Seg13.relationRow3528 at r3528; linear_combination r3528), (by unfold Seg13.relationRow3529 at r3529; linear_combination r3529), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg65
    refine ⟨rho 10962, rho 10963, rho 10964, rho 10965, rho 10966,
      (by unfold Seg13.relationRow3530 at r3530; linear_combination r3530), (by unfold Seg13.relationRow3531 at r3531; linear_combination r3531), (by unfold Seg13.relationRow3532 at r3532; linear_combination r3532), (by unfold Seg13.relationRow3533 at r3533; linear_combination r3533), (by unfold Seg13.relationRow3534 at r3534; linear_combination r3534), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg66
    refine ⟨rho 10967, rho 10968, rho 10969, rho 10970, rho 10971,
      (by unfold Seg13.relationRow3535 at r3535; linear_combination r3535), (by unfold Seg13.relationRow3536 at r3536; linear_combination r3536), (by unfold Seg13.relationRow3537 at r3537; linear_combination r3537), (by unfold Seg13.relationRow3538 at r3538; linear_combination r3538), (by unfold Seg13.relationRow3539 at r3539; linear_combination r3539), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg67
    refine ⟨rho 10972, rho 10973, rho 10974, rho 10975, rho 10976,
      (by unfold Seg13.relationRow3540 at r3540; linear_combination r3540), (by unfold Seg13.relationRow3541 at r3541; linear_combination r3541), (by unfold Seg13.relationRow3542 at r3542; linear_combination r3542), (by unfold Seg13.relationRow3543 at r3543; linear_combination r3543), (by unfold Seg13.relationRow3544 at r3544; linear_combination r3544), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg68
    refine ⟨rho 10977, rho 10978, rho 10979, rho 10980, rho 10981,
      (by unfold Seg13.relationRow3545 at r3545; linear_combination r3545), (by unfold Seg13.relationRow3546 at r3546; linear_combination r3546), (by unfold Seg13.relationRow3547 at r3547; linear_combination r3547), (by unfold Seg13.relationRow3548 at r3548; linear_combination r3548), (by unfold Seg13.relationRow3549 at r3549; linear_combination r3549), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg69
    refine ⟨rho 10982, rho 10983, rho 10984, rho 10985, rho 10986,
      (by unfold Seg13.relationRow3550 at r3550; linear_combination r3550), (by unfold Seg13.relationRow3551 at r3551; linear_combination r3551), (by unfold Seg13.relationRow3552 at r3552; linear_combination r3552), (by unfold Seg13.relationRow3553 at r3553; linear_combination r3553), (by unfold Seg13.relationRow3554 at r3554; linear_combination r3554), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.relation_sound_permSpec (rho 70) (rho 71) (rho 72) (rho 10631) (rho 10632) (rho 10633) (rho 10634) (rho 10635) (rho 10636) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.tctNode9DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.F) + (9 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode8Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode8.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

