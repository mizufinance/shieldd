import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681NbSupportBase
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Window2ScalarMulBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.NbSupport.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.NbSupport.F

theorem order_cast_zero : (Order : F) = 0 := by
  exact Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq
    Order Order 0 (by decide) (by decide)

def scalarBits (rho : Nat → F) : List.Vector F 129 :=
  List.Vector.ofFn (fun i : Fin 129 => rho (2665 + i.val))

theorem scalarBits_get (rho : Nat → F) (i : Nat) (hi : i < 129) :
    (scalarBits rho)[i]! = rho (2665 + i) := by
  rw [getElem!_pos (scalarBits rho) i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [scalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]

theorem rho_bit_of_map (rho : Nat → F) (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (i : Nat) (hi : i < 129) :
    rho (2665 + i) = Bool.toZMod bits[i]! := by
  rw [← scalarBits_get rho i hi, hbits]
  rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),
    getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]

theorem scalarBits_get_of_map (rho : Nat → F)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (i : Nat) (hi : i < 129) :
    (scalarBits rho)[i]! = Bool.toZMod bits[i]! := by
  rw [scalarBits_get rho i hi]
  exact rho_bit_of_map rho bits hbits i hi

def base (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 598, rho 600⟩
def twice (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2797, rho 2798⟩
def triple (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2803, rho 2804⟩
def initial (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2806 + rho 2807, (1 : F) + rho 2809 + rho 2810⟩
def shiftOnce0 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2814, rho 2815⟩
def shifted0 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2819, rho 2820⟩
def digit0 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2822 + rho 2823, (1 : F) + rho 2825 + rho 2826⟩
def acc1 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2831, rho 2832⟩
def shiftOnce1 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2836, rho 2837⟩
def shifted1 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2841, rho 2842⟩
def digit1 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2844 + rho 2845, (1 : F) + rho 2847 + rho 2848⟩
def acc2 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2853, rho 2854⟩
def shiftOnce2 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2858, rho 2859⟩
def shifted2 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2863, rho 2864⟩
def digit2 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2866 + rho 2867, (1 : F) + rho 2869 + rho 2870⟩
def acc3 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2875, rho 2876⟩
def shiftOnce3 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2880, rho 2881⟩
def shifted3 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2885, rho 2886⟩
def digit3 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2888 + rho 2889, (1 : F) + rho 2891 + rho 2892⟩
def acc4 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2897, rho 2898⟩
def shiftOnce4 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2902, rho 2903⟩
def shifted4 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2907, rho 2908⟩
def digit4 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2910 + rho 2911, (1 : F) + rho 2913 + rho 2914⟩
def acc5 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2919, rho 2920⟩
def shiftOnce5 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2924, rho 2925⟩
def shifted5 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2929, rho 2930⟩
def digit5 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2932 + rho 2933, (1 : F) + rho 2935 + rho 2936⟩
def acc6 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2941, rho 2942⟩
def shiftOnce6 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2946, rho 2947⟩
def shifted6 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2951, rho 2952⟩
def digit6 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2954 + rho 2955, (1 : F) + rho 2957 + rho 2958⟩
def acc7 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2963, rho 2964⟩
def shiftOnce7 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2968, rho 2969⟩
def shifted7 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2973, rho 2974⟩
def digit7 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2976 + rho 2977, (1 : F) + rho 2979 + rho 2980⟩
def acc8 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2985, rho 2986⟩
def shiftOnce8 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2990, rho 2991⟩
def shifted8 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2995, rho 2996⟩
def digit8 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2998 + rho 2999, (1 : F) + rho 3001 + rho 3002⟩
def acc9 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3007, rho 3008⟩
def shiftOnce9 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3012, rho 3013⟩
def shifted9 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3017, rho 3018⟩
def digit9 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3020 + rho 3021, (1 : F) + rho 3023 + rho 3024⟩
def acc10 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3029, rho 3030⟩
def shiftOnce10 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3034, rho 3035⟩
def shifted10 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3039, rho 3040⟩
def digit10 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3042 + rho 3043, (1 : F) + rho 3045 + rho 3046⟩
def acc11 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3051, rho 3052⟩
def shiftOnce11 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3056, rho 3057⟩
def shifted11 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3061, rho 3062⟩
def digit11 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3064 + rho 3065, (1 : F) + rho 3067 + rho 3068⟩
def acc12 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3073, rho 3074⟩
def shiftOnce12 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3078, rho 3079⟩
def shifted12 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3083, rho 3084⟩
def digit12 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3086 + rho 3087, (1 : F) + rho 3089 + rho 3090⟩
def acc13 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3095, rho 3096⟩
def shiftOnce13 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3100, rho 3101⟩
def shifted13 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3105, rho 3106⟩
def digit13 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3108 + rho 3109, (1 : F) + rho 3111 + rho 3112⟩
def acc14 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3117, rho 3118⟩
def shiftOnce14 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3122, rho 3123⟩
def shifted14 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3127, rho 3128⟩
def digit14 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3130 + rho 3131, (1 : F) + rho 3133 + rho 3134⟩
def acc15 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3139, rho 3140⟩
def shiftOnce15 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3144, rho 3145⟩
def shifted15 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3149, rho 3150⟩
def digit15 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3152 + rho 3153, (1 : F) + rho 3155 + rho 3156⟩
def acc16 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3161, rho 3162⟩
def shiftOnce16 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3166, rho 3167⟩
def shifted16 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3171, rho 3172⟩
def digit16 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3174 + rho 3175, (1 : F) + rho 3177 + rho 3178⟩
def acc17 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3183, rho 3184⟩
def shiftOnce17 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3188, rho 3189⟩
def shifted17 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3193, rho 3194⟩
def digit17 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3196 + rho 3197, (1 : F) + rho 3199 + rho 3200⟩
def acc18 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3205, rho 3206⟩
def shiftOnce18 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3210, rho 3211⟩
def shifted18 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3215, rho 3216⟩
def digit18 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3218 + rho 3219, (1 : F) + rho 3221 + rho 3222⟩
def acc19 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3227, rho 3228⟩
def shiftOnce19 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3232, rho 3233⟩
def shifted19 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3237, rho 3238⟩
def digit19 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3240 + rho 3241, (1 : F) + rho 3243 + rho 3244⟩
def acc20 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3249, rho 3250⟩
def shiftOnce20 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3254, rho 3255⟩
def shifted20 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3259, rho 3260⟩
def digit20 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3262 + rho 3263, (1 : F) + rho 3265 + rho 3266⟩
def acc21 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3271, rho 3272⟩
def shiftOnce21 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3276, rho 3277⟩
def shifted21 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3281, rho 3282⟩
def digit21 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3284 + rho 3285, (1 : F) + rho 3287 + rho 3288⟩
def acc22 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3293, rho 3294⟩
def shiftOnce22 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3298, rho 3299⟩
def shifted22 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3303, rho 3304⟩
def digit22 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3306 + rho 3307, (1 : F) + rho 3309 + rho 3310⟩
def acc23 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3315, rho 3316⟩
def shiftOnce23 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3320, rho 3321⟩
def shifted23 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3325, rho 3326⟩
def digit23 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3328 + rho 3329, (1 : F) + rho 3331 + rho 3332⟩
def acc24 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3337, rho 3338⟩
def shiftOnce24 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3342, rho 3343⟩
def shifted24 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3347, rho 3348⟩
def digit24 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3350 + rho 3351, (1 : F) + rho 3353 + rho 3354⟩
def acc25 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3359, rho 3360⟩
def shiftOnce25 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3364, rho 3365⟩
def shifted25 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3369, rho 3370⟩
def digit25 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3372 + rho 3373, (1 : F) + rho 3375 + rho 3376⟩
def acc26 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3381, rho 3382⟩
def shiftOnce26 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3386, rho 3387⟩
def shifted26 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3391, rho 3392⟩
def digit26 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3394 + rho 3395, (1 : F) + rho 3397 + rho 3398⟩
def acc27 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3403, rho 3404⟩
def shiftOnce27 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3408, rho 3409⟩
def shifted27 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3413, rho 3414⟩
def digit27 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3416 + rho 3417, (1 : F) + rho 3419 + rho 3420⟩
def acc28 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3425, rho 3426⟩
def shiftOnce28 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3430, rho 3431⟩
def shifted28 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3435, rho 3436⟩
def digit28 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3438 + rho 3439, (1 : F) + rho 3441 + rho 3442⟩
def acc29 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3447, rho 3448⟩
def shiftOnce29 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3452, rho 3453⟩
def shifted29 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3457, rho 3458⟩
def digit29 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3460 + rho 3461, (1 : F) + rho 3463 + rho 3464⟩
def acc30 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3469, rho 3470⟩
def shiftOnce30 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3474, rho 3475⟩
def shifted30 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3479, rho 3480⟩
def digit30 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3482 + rho 3483, (1 : F) + rho 3485 + rho 3486⟩
def acc31 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3491, rho 3492⟩
def shiftOnce31 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3496, rho 3497⟩
def shifted31 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3501, rho 3502⟩
def digit31 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3504 + rho 3505, (1 : F) + rho 3507 + rho 3508⟩
def acc32 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3513, rho 3514⟩
def shiftOnce32 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3518, rho 3519⟩
def shifted32 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3523, rho 3524⟩
def digit32 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3526 + rho 3527, (1 : F) + rho 3529 + rho 3530⟩
def acc33 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3535, rho 3536⟩
def shiftOnce33 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3540, rho 3541⟩
def shifted33 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3545, rho 3546⟩
def digit33 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3548 + rho 3549, (1 : F) + rho 3551 + rho 3552⟩
def acc34 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3557, rho 3558⟩
def shiftOnce34 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3562, rho 3563⟩
def shifted34 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3567, rho 3568⟩
def digit34 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3570 + rho 3571, (1 : F) + rho 3573 + rho 3574⟩
def acc35 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3579, rho 3580⟩
def shiftOnce35 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3584, rho 3585⟩
def shifted35 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3589, rho 3590⟩
def digit35 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3592 + rho 3593, (1 : F) + rho 3595 + rho 3596⟩
def acc36 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3601, rho 3602⟩
def shiftOnce36 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3606, rho 3607⟩
def shifted36 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3611, rho 3612⟩
def digit36 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3614 + rho 3615, (1 : F) + rho 3617 + rho 3618⟩
def acc37 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3623, rho 3624⟩
def shiftOnce37 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3628, rho 3629⟩
def shifted37 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3633, rho 3634⟩
def digit37 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3636 + rho 3637, (1 : F) + rho 3639 + rho 3640⟩
def acc38 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3645, rho 3646⟩
def shiftOnce38 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3650, rho 3651⟩
def shifted38 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3655, rho 3656⟩
def digit38 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3658 + rho 3659, (1 : F) + rho 3661 + rho 3662⟩
def acc39 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3667, rho 3668⟩
def shiftOnce39 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3672, rho 3673⟩
def shifted39 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3677, rho 3678⟩
def digit39 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3680 + rho 3681, (1 : F) + rho 3683 + rho 3684⟩
def acc40 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3689, rho 3690⟩
def shiftOnce40 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3694, rho 3695⟩
def shifted40 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3699, rho 3700⟩
def digit40 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3702 + rho 3703, (1 : F) + rho 3705 + rho 3706⟩
def acc41 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3711, rho 3712⟩
def shiftOnce41 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3716, rho 3717⟩
def shifted41 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3721, rho 3722⟩
def digit41 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3724 + rho 3725, (1 : F) + rho 3727 + rho 3728⟩
def acc42 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3733, rho 3734⟩
def shiftOnce42 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3738, rho 3739⟩
def shifted42 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3743, rho 3744⟩
def digit42 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3746 + rho 3747, (1 : F) + rho 3749 + rho 3750⟩
def acc43 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3755, rho 3756⟩
def shiftOnce43 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3760, rho 3761⟩
def shifted43 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3765, rho 3766⟩
def digit43 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3768 + rho 3769, (1 : F) + rho 3771 + rho 3772⟩
def acc44 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3777, rho 3778⟩
def shiftOnce44 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3782, rho 3783⟩
def shifted44 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3787, rho 3788⟩
def digit44 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3790 + rho 3791, (1 : F) + rho 3793 + rho 3794⟩
def acc45 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3799, rho 3800⟩
def shiftOnce45 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3804, rho 3805⟩
def shifted45 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3809, rho 3810⟩
def digit45 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3812 + rho 3813, (1 : F) + rho 3815 + rho 3816⟩
def acc46 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3821, rho 3822⟩
def shiftOnce46 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3826, rho 3827⟩
def shifted46 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3831, rho 3832⟩
def digit46 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3834 + rho 3835, (1 : F) + rho 3837 + rho 3838⟩
def acc47 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3843, rho 3844⟩
def shiftOnce47 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3848, rho 3849⟩
def shifted47 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3853, rho 3854⟩
def digit47 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3856 + rho 3857, (1 : F) + rho 3859 + rho 3860⟩
def acc48 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3865, rho 3866⟩
def shiftOnce48 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3870, rho 3871⟩
def shifted48 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3875, rho 3876⟩
def digit48 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3878 + rho 3879, (1 : F) + rho 3881 + rho 3882⟩
def acc49 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3887, rho 3888⟩
def shiftOnce49 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3892, rho 3893⟩
def shifted49 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3897, rho 3898⟩
def digit49 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3900 + rho 3901, (1 : F) + rho 3903 + rho 3904⟩
def acc50 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3909, rho 3910⟩
def shiftOnce50 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3914, rho 3915⟩
def shifted50 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3919, rho 3920⟩
def digit50 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3922 + rho 3923, (1 : F) + rho 3925 + rho 3926⟩
def acc51 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3931, rho 3932⟩
def shiftOnce51 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3936, rho 3937⟩
def shifted51 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3941, rho 3942⟩
def digit51 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3944 + rho 3945, (1 : F) + rho 3947 + rho 3948⟩
def acc52 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3953, rho 3954⟩
def shiftOnce52 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3958, rho 3959⟩
def shifted52 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3963, rho 3964⟩
def digit52 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3966 + rho 3967, (1 : F) + rho 3969 + rho 3970⟩
def acc53 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3975, rho 3976⟩
def shiftOnce53 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3980, rho 3981⟩
def shifted53 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3985, rho 3986⟩
def digit53 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3988 + rho 3989, (1 : F) + rho 3991 + rho 3992⟩
def acc54 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 3997, rho 3998⟩
def shiftOnce54 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4002, rho 4003⟩
def shifted54 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4007, rho 4008⟩
def digit54 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4010 + rho 4011, (1 : F) + rho 4013 + rho 4014⟩
def acc55 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4019, rho 4020⟩
def shiftOnce55 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4024, rho 4025⟩
def shifted55 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4029, rho 4030⟩
def digit55 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4032 + rho 4033, (1 : F) + rho 4035 + rho 4036⟩
def acc56 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4041, rho 4042⟩
def shiftOnce56 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4046, rho 4047⟩
def shifted56 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4051, rho 4052⟩
def digit56 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4054 + rho 4055, (1 : F) + rho 4057 + rho 4058⟩
def acc57 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4063, rho 4064⟩
def shiftOnce57 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4068, rho 4069⟩
def shifted57 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4073, rho 4074⟩
def digit57 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4076 + rho 4077, (1 : F) + rho 4079 + rho 4080⟩
def acc58 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4085, rho 4086⟩
def shiftOnce58 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4090, rho 4091⟩
def shifted58 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4095, rho 4096⟩
def digit58 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4098 + rho 4099, (1 : F) + rho 4101 + rho 4102⟩
def acc59 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4107, rho 4108⟩
def shiftOnce59 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4112, rho 4113⟩
def shifted59 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4117, rho 4118⟩
def digit59 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4120 + rho 4121, (1 : F) + rho 4123 + rho 4124⟩
def acc60 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4129, rho 4130⟩
def shiftOnce60 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4134, rho 4135⟩
def shifted60 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4139, rho 4140⟩
def digit60 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4142 + rho 4143, (1 : F) + rho 4145 + rho 4146⟩
def acc61 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4151, rho 4152⟩
def shiftOnce61 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4156, rho 4157⟩
def shifted61 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4161, rho 4162⟩
def digit61 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4164 + rho 4165, (1 : F) + rho 4167 + rho 4168⟩
def acc62 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4173, rho 4174⟩
def shiftOnce62 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4178, rho 4179⟩
def shifted62 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4183, rho 4184⟩
def digit62 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4186 + rho 4187, (1 : F) + rho 4189 + rho 4190⟩
def acc63 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4195, rho 4196⟩
def acc0 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2806 + rho 2807, (1 : F) + rho 2809 + rho 2810⟩
def tailShift (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4200, rho 4201⟩
def tailSum (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4206, rho 4207⟩
def output (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 4200 + rho 4208, rho 4201 + rho 4209⟩

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
