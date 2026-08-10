import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window12 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc12 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[102]! (scalarBits rho)[101]!
        (base rho) (twice rho) (triple rho) (acc12 rho)
        (acc13 rho) ∧
      EdwardsBridge.onCurve (acc13 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3249 at r3249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3250 at r3250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3251 at r3251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3252 at r3252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3253 at r3253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3254 at r3254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3255 at r3255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3256 at r3256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3257 at r3257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3258 at r3258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3259 at r3259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3260 at r3260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3261 at r3261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3262 at r3262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3263 at r3263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3264 at r3264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3265 at r3265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3266 at r3266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3267 at r3267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3268 at r3268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3269 at r3269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3270 at r3270
  have hshift1 : EdwardsBridge.doubleSpec (acc12 rho) (shiftOnce12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3073) (rho 3074) (rho 3075) (rho 3076) (rho 3077) (rho 3078) (rho 3079)
      (by simpa [acc12] using hacc)
      (by linear_combination r3249)
      (by linear_combination r3250)
      (by linear_combination r3251)
      (by linear_combination r3252)
      (by linear_combination r3253)
    simpa [acc12, shiftOnce12] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc12 rho) (shiftOnce12 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc12 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce12 rho) (shifted12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3078) (rho 3079) (rho 3080) (rho 3081) (rho 3082) (rho 3083) (rho 3084)
      (by simpa [shiftOnce12] using hshift1On)
      (by linear_combination r3254)
      (by linear_combination r3255)
      (by linear_combination r3256)
      (by linear_combination r3257)
      (by linear_combination r3258)
    simpa [shiftOnce12, shifted12] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce12 rho) (shifted12 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce12 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2767) (rho 2766)
      (base rho) (twice rho) (triple rho) (digit12 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2767) (rho 2766)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3086 + rho 3087, (1 : F) + rho 3089 + rho 3090⟩ := by
      constructor
      · refine ⟨(rho 3085 + (rho 2797) - (0)), rho 3086, ?_, ?_, ?_⟩
        · linear_combination r3259
        · linear_combination r3260
        · linear_combination r3261
      · refine ⟨(rho 3088 + (rho 2798) - ((1 : F))), rho 3089, ?_, ?_, ?_⟩
        · linear_combination r3262
        · linear_combination r3263
        · linear_combination r3264
    simpa [base, twice, triple, digit12] using hraw
  have hhigh : rho 2767 =
      Bool.toZMod bits[102]! := by
    simpa only using rho_bit_of_map rho bits hbits 102 (by decide +kernel)
  have hlow : rho 2766 =
      Bool.toZMod bits[101]! := by
    simpa only using rho_bit_of_map rho bits hbits 101 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[102]! bits[101]! (base rho) (twice rho) (triple rho)
    (digit12 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit12 rho) := by
    rw [hdigit]
    cases bits[102]! <;> cases bits[101]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted12 rho) (digit12 rho) (acc13 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3083) (rho 3084) (rho 3086 + rho 3087) ((1 : F) + rho 3089 + rho 3090)
      (rho 3091) (rho 3092) (rho 3093) (rho 3094) (rho 3095) (rho 3096)
      (by simpa [shifted12] using hshift2On)
      (by simpa [digit12] using hdigitOn)
      (by linear_combination r3265)
      (by linear_combination r3266)
      (by linear_combination r3267)
      (by linear_combination r3268)
      (by linear_combination r3269)
      (by linear_combination r3270)
    simpa [shifted12, digit12, acc13] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc13 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted12 rho) (digit12 rho) (acc13 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted12 rho) (digit12 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2767) (rho 2766)
      (base rho) (twice rho) (triple rho) (acc12 rho)
      (acc13 rho) :=
    ⟨shiftOnce12 rho, shifted12 rho, digit12 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window13 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc13 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[100]! (scalarBits rho)[99]!
        (base rho) (twice rho) (triple rho) (acc13 rho)
        (acc14 rho) ∧
      EdwardsBridge.onCurve (acc14 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3271 at r3271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3272 at r3272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3273 at r3273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3274 at r3274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3275 at r3275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3276 at r3276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3277 at r3277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3278 at r3278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3279 at r3279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3280 at r3280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3281 at r3281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3282 at r3282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3283 at r3283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3284 at r3284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3285 at r3285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3286 at r3286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3287 at r3287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3288 at r3288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3289 at r3289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3290 at r3290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3291 at r3291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3292 at r3292
  have hshift1 : EdwardsBridge.doubleSpec (acc13 rho) (shiftOnce13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3095) (rho 3096) (rho 3097) (rho 3098) (rho 3099) (rho 3100) (rho 3101)
      (by simpa [acc13] using hacc)
      (by linear_combination r3271)
      (by linear_combination r3272)
      (by linear_combination r3273)
      (by linear_combination r3274)
      (by linear_combination r3275)
    simpa [acc13, shiftOnce13] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc13 rho) (shiftOnce13 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc13 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce13 rho) (shifted13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3100) (rho 3101) (rho 3102) (rho 3103) (rho 3104) (rho 3105) (rho 3106)
      (by simpa [shiftOnce13] using hshift1On)
      (by linear_combination r3276)
      (by linear_combination r3277)
      (by linear_combination r3278)
      (by linear_combination r3279)
      (by linear_combination r3280)
    simpa [shiftOnce13, shifted13] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce13 rho) (shifted13 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce13 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2765) (rho 2764)
      (base rho) (twice rho) (triple rho) (digit13 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2765) (rho 2764)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3108 + rho 3109, (1 : F) + rho 3111 + rho 3112⟩ := by
      constructor
      · refine ⟨(rho 3107 + (rho 2797) - (0)), rho 3108, ?_, ?_, ?_⟩
        · linear_combination r3281
        · linear_combination r3282
        · linear_combination r3283
      · refine ⟨(rho 3110 + (rho 2798) - ((1 : F))), rho 3111, ?_, ?_, ?_⟩
        · linear_combination r3284
        · linear_combination r3285
        · linear_combination r3286
    simpa [base, twice, triple, digit13] using hraw
  have hhigh : rho 2765 =
      Bool.toZMod bits[100]! := by
    simpa only using rho_bit_of_map rho bits hbits 100 (by decide +kernel)
  have hlow : rho 2764 =
      Bool.toZMod bits[99]! := by
    simpa only using rho_bit_of_map rho bits hbits 99 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[100]! bits[99]! (base rho) (twice rho) (triple rho)
    (digit13 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit13 rho) := by
    rw [hdigit]
    cases bits[100]! <;> cases bits[99]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted13 rho) (digit13 rho) (acc14 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3105) (rho 3106) (rho 3108 + rho 3109) ((1 : F) + rho 3111 + rho 3112)
      (rho 3113) (rho 3114) (rho 3115) (rho 3116) (rho 3117) (rho 3118)
      (by simpa [shifted13] using hshift2On)
      (by simpa [digit13] using hdigitOn)
      (by linear_combination r3287)
      (by linear_combination r3288)
      (by linear_combination r3289)
      (by linear_combination r3290)
      (by linear_combination r3291)
      (by linear_combination r3292)
    simpa [shifted13, digit13, acc14] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc14 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted13 rho) (digit13 rho) (acc14 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted13 rho) (digit13 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2765) (rho 2764)
      (base rho) (twice rho) (triple rho) (acc13 rho)
      (acc14 rho) :=
    ⟨shiftOnce13 rho, shifted13 rho, digit13 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window14 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc14 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[98]! (scalarBits rho)[97]!
        (base rho) (twice rho) (triple rho) (acc14 rho)
        (acc15 rho) ∧
      EdwardsBridge.onCurve (acc15 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3293 at r3293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3294 at r3294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3295 at r3295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3296 at r3296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3297 at r3297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3298 at r3298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3299 at r3299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3300 at r3300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3301 at r3301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3302 at r3302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3303 at r3303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3304 at r3304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3305 at r3305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3306 at r3306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3307 at r3307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3308 at r3308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3309 at r3309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3310 at r3310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3311 at r3311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3312 at r3312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3313 at r3313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3314 at r3314
  have hshift1 : EdwardsBridge.doubleSpec (acc14 rho) (shiftOnce14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3117) (rho 3118) (rho 3119) (rho 3120) (rho 3121) (rho 3122) (rho 3123)
      (by simpa [acc14] using hacc)
      (by linear_combination r3293)
      (by linear_combination r3294)
      (by linear_combination r3295)
      (by linear_combination r3296)
      (by linear_combination r3297)
    simpa [acc14, shiftOnce14] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc14 rho) (shiftOnce14 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc14 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce14 rho) (shifted14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3122) (rho 3123) (rho 3124) (rho 3125) (rho 3126) (rho 3127) (rho 3128)
      (by simpa [shiftOnce14] using hshift1On)
      (by linear_combination r3298)
      (by linear_combination r3299)
      (by linear_combination r3300)
      (by linear_combination r3301)
      (by linear_combination r3302)
    simpa [shiftOnce14, shifted14] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce14 rho) (shifted14 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce14 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2763) (rho 2762)
      (base rho) (twice rho) (triple rho) (digit14 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2763) (rho 2762)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3130 + rho 3131, (1 : F) + rho 3133 + rho 3134⟩ := by
      constructor
      · refine ⟨(rho 3129 + (rho 2797) - (0)), rho 3130, ?_, ?_, ?_⟩
        · linear_combination r3303
        · linear_combination r3304
        · linear_combination r3305
      · refine ⟨(rho 3132 + (rho 2798) - ((1 : F))), rho 3133, ?_, ?_, ?_⟩
        · linear_combination r3306
        · linear_combination r3307
        · linear_combination r3308
    simpa [base, twice, triple, digit14] using hraw
  have hhigh : rho 2763 =
      Bool.toZMod bits[98]! := by
    simpa only using rho_bit_of_map rho bits hbits 98 (by decide +kernel)
  have hlow : rho 2762 =
      Bool.toZMod bits[97]! := by
    simpa only using rho_bit_of_map rho bits hbits 97 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[98]! bits[97]! (base rho) (twice rho) (triple rho)
    (digit14 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit14 rho) := by
    rw [hdigit]
    cases bits[98]! <;> cases bits[97]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted14 rho) (digit14 rho) (acc15 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3127) (rho 3128) (rho 3130 + rho 3131) ((1 : F) + rho 3133 + rho 3134)
      (rho 3135) (rho 3136) (rho 3137) (rho 3138) (rho 3139) (rho 3140)
      (by simpa [shifted14] using hshift2On)
      (by simpa [digit14] using hdigitOn)
      (by linear_combination r3309)
      (by linear_combination r3310)
      (by linear_combination r3311)
      (by linear_combination r3312)
      (by linear_combination r3313)
      (by linear_combination r3314)
    simpa [shifted14, digit14, acc15] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc15 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted14 rho) (digit14 rho) (acc15 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted14 rho) (digit14 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2763) (rho 2762)
      (base rho) (twice rho) (triple rho) (acc14 rho)
      (acc15 rho) :=
    ⟨shiftOnce14 rho, shifted14 rho, digit14 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window15 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc15 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[96]! (scalarBits rho)[95]!
        (base rho) (twice rho) (triple rho) (acc15 rho)
        (acc16 rho) ∧
      EdwardsBridge.onCurve (acc16 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3315 at r3315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3316 at r3316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3317 at r3317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3318 at r3318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3319 at r3319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3320 at r3320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3321 at r3321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3322 at r3322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3323 at r3323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3324 at r3324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3325 at r3325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3326 at r3326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3327 at r3327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3328 at r3328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3329 at r3329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3330 at r3330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3331 at r3331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3332 at r3332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3333 at r3333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3334 at r3334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3335 at r3335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3336 at r3336
  have hshift1 : EdwardsBridge.doubleSpec (acc15 rho) (shiftOnce15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3139) (rho 3140) (rho 3141) (rho 3142) (rho 3143) (rho 3144) (rho 3145)
      (by simpa [acc15] using hacc)
      (by linear_combination r3315)
      (by linear_combination r3316)
      (by linear_combination r3317)
      (by linear_combination r3318)
      (by linear_combination r3319)
    simpa [acc15, shiftOnce15] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc15 rho) (shiftOnce15 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc15 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce15 rho) (shifted15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3144) (rho 3145) (rho 3146) (rho 3147) (rho 3148) (rho 3149) (rho 3150)
      (by simpa [shiftOnce15] using hshift1On)
      (by linear_combination r3320)
      (by linear_combination r3321)
      (by linear_combination r3322)
      (by linear_combination r3323)
      (by linear_combination r3324)
    simpa [shiftOnce15, shifted15] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce15 rho) (shifted15 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce15 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2761) (rho 2760)
      (base rho) (twice rho) (triple rho) (digit15 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2761) (rho 2760)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3152 + rho 3153, (1 : F) + rho 3155 + rho 3156⟩ := by
      constructor
      · refine ⟨(rho 3151 + (rho 2797) - (0)), rho 3152, ?_, ?_, ?_⟩
        · linear_combination r3325
        · linear_combination r3326
        · linear_combination r3327
      · refine ⟨(rho 3154 + (rho 2798) - ((1 : F))), rho 3155, ?_, ?_, ?_⟩
        · linear_combination r3328
        · linear_combination r3329
        · linear_combination r3330
    simpa [base, twice, triple, digit15] using hraw
  have hhigh : rho 2761 =
      Bool.toZMod bits[96]! := by
    simpa only using rho_bit_of_map rho bits hbits 96 (by decide +kernel)
  have hlow : rho 2760 =
      Bool.toZMod bits[95]! := by
    simpa only using rho_bit_of_map rho bits hbits 95 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[96]! bits[95]! (base rho) (twice rho) (triple rho)
    (digit15 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit15 rho) := by
    rw [hdigit]
    cases bits[96]! <;> cases bits[95]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted15 rho) (digit15 rho) (acc16 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3149) (rho 3150) (rho 3152 + rho 3153) ((1 : F) + rho 3155 + rho 3156)
      (rho 3157) (rho 3158) (rho 3159) (rho 3160) (rho 3161) (rho 3162)
      (by simpa [shifted15] using hshift2On)
      (by simpa [digit15] using hdigitOn)
      (by linear_combination r3331)
      (by linear_combination r3332)
      (by linear_combination r3333)
      (by linear_combination r3334)
      (by linear_combination r3335)
      (by linear_combination r3336)
    simpa [shifted15, digit15, acc16] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc16 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted15 rho) (digit15 rho) (acc16 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted15 rho) (digit15 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2761) (rho 2760)
      (base rho) (twice rho) (triple rho) (acc15 rho)
      (acc16 rho) :=
    ⟨shiftOnce15 rho, shifted15 rho, digit15 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window16 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc16 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[94]! (scalarBits rho)[93]!
        (base rho) (twice rho) (triple rho) (acc16 rho)
        (acc17 rho) ∧
      EdwardsBridge.onCurve (acc17 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3337, r3338, r3339, r3340, r3341, r3342, r3343, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3337 at r3337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3338 at r3338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3339 at r3339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3340 at r3340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3341 at r3341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3342 at r3342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3343 at r3343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3344 at r3344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3345 at r3345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3346 at r3346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3347 at r3347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3348 at r3348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3349 at r3349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3350 at r3350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3351 at r3351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3352 at r3352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3353 at r3353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3354 at r3354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3355 at r3355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3356 at r3356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3357 at r3357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3358 at r3358
  have hshift1 : EdwardsBridge.doubleSpec (acc16 rho) (shiftOnce16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3161) (rho 3162) (rho 3163) (rho 3164) (rho 3165) (rho 3166) (rho 3167)
      (by simpa [acc16] using hacc)
      (by linear_combination r3337)
      (by linear_combination r3338)
      (by linear_combination r3339)
      (by linear_combination r3340)
      (by linear_combination r3341)
    simpa [acc16, shiftOnce16] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc16 rho) (shiftOnce16 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc16 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce16 rho) (shifted16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3166) (rho 3167) (rho 3168) (rho 3169) (rho 3170) (rho 3171) (rho 3172)
      (by simpa [shiftOnce16] using hshift1On)
      (by linear_combination r3342)
      (by linear_combination r3343)
      (by linear_combination r3344)
      (by linear_combination r3345)
      (by linear_combination r3346)
    simpa [shiftOnce16, shifted16] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce16 rho) (shifted16 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce16 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2759) (rho 2758)
      (base rho) (twice rho) (triple rho) (digit16 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2759) (rho 2758)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3174 + rho 3175, (1 : F) + rho 3177 + rho 3178⟩ := by
      constructor
      · refine ⟨(rho 3173 + (rho 2797) - (0)), rho 3174, ?_, ?_, ?_⟩
        · linear_combination r3347
        · linear_combination r3348
        · linear_combination r3349
      · refine ⟨(rho 3176 + (rho 2798) - ((1 : F))), rho 3177, ?_, ?_, ?_⟩
        · linear_combination r3350
        · linear_combination r3351
        · linear_combination r3352
    simpa [base, twice, triple, digit16] using hraw
  have hhigh : rho 2759 =
      Bool.toZMod bits[94]! := by
    simpa only using rho_bit_of_map rho bits hbits 94 (by decide +kernel)
  have hlow : rho 2758 =
      Bool.toZMod bits[93]! := by
    simpa only using rho_bit_of_map rho bits hbits 93 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[94]! bits[93]! (base rho) (twice rho) (triple rho)
    (digit16 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit16 rho) := by
    rw [hdigit]
    cases bits[94]! <;> cases bits[93]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted16 rho) (digit16 rho) (acc17 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3171) (rho 3172) (rho 3174 + rho 3175) ((1 : F) + rho 3177 + rho 3178)
      (rho 3179) (rho 3180) (rho 3181) (rho 3182) (rho 3183) (rho 3184)
      (by simpa [shifted16] using hshift2On)
      (by simpa [digit16] using hdigitOn)
      (by linear_combination r3353)
      (by linear_combination r3354)
      (by linear_combination r3355)
      (by linear_combination r3356)
      (by linear_combination r3357)
      (by linear_combination r3358)
    simpa [shifted16, digit16, acc17] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc17 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted16 rho) (digit16 rho) (acc17 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted16 rho) (digit16 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2759) (rho 2758)
      (base rho) (twice rho) (triple rho) (acc16 rho)
      (acc17 rho) :=
    ⟨shiftOnce16 rho, shifted16 rho, digit16 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window17 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc17 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[92]! (scalarBits rho)[91]!
        (base rho) (twice rho) (triple rho) (acc17 rho)
        (acc18 rho) ∧
      EdwardsBridge.onCurve (acc18 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, r3365, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3359 at r3359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3360 at r3360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3361 at r3361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3362 at r3362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3363 at r3363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3364 at r3364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3365 at r3365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3366 at r3366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3367 at r3367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3368 at r3368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3369 at r3369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3370 at r3370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3371 at r3371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3372 at r3372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3373 at r3373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3374 at r3374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3375 at r3375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3376 at r3376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3377 at r3377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3378 at r3378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3379 at r3379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3380 at r3380
  have hshift1 : EdwardsBridge.doubleSpec (acc17 rho) (shiftOnce17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3183) (rho 3184) (rho 3185) (rho 3186) (rho 3187) (rho 3188) (rho 3189)
      (by simpa [acc17] using hacc)
      (by linear_combination r3359)
      (by linear_combination r3360)
      (by linear_combination r3361)
      (by linear_combination r3362)
      (by linear_combination r3363)
    simpa [acc17, shiftOnce17] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc17 rho) (shiftOnce17 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc17 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce17 rho) (shifted17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3188) (rho 3189) (rho 3190) (rho 3191) (rho 3192) (rho 3193) (rho 3194)
      (by simpa [shiftOnce17] using hshift1On)
      (by linear_combination r3364)
      (by linear_combination r3365)
      (by linear_combination r3366)
      (by linear_combination r3367)
      (by linear_combination r3368)
    simpa [shiftOnce17, shifted17] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce17 rho) (shifted17 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce17 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2757) (rho 2756)
      (base rho) (twice rho) (triple rho) (digit17 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2757) (rho 2756)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3196 + rho 3197, (1 : F) + rho 3199 + rho 3200⟩ := by
      constructor
      · refine ⟨(rho 3195 + (rho 2797) - (0)), rho 3196, ?_, ?_, ?_⟩
        · linear_combination r3369
        · linear_combination r3370
        · linear_combination r3371
      · refine ⟨(rho 3198 + (rho 2798) - ((1 : F))), rho 3199, ?_, ?_, ?_⟩
        · linear_combination r3372
        · linear_combination r3373
        · linear_combination r3374
    simpa [base, twice, triple, digit17] using hraw
  have hhigh : rho 2757 =
      Bool.toZMod bits[92]! := by
    simpa only using rho_bit_of_map rho bits hbits 92 (by decide +kernel)
  have hlow : rho 2756 =
      Bool.toZMod bits[91]! := by
    simpa only using rho_bit_of_map rho bits hbits 91 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[92]! bits[91]! (base rho) (twice rho) (triple rho)
    (digit17 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit17 rho) := by
    rw [hdigit]
    cases bits[92]! <;> cases bits[91]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted17 rho) (digit17 rho) (acc18 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3193) (rho 3194) (rho 3196 + rho 3197) ((1 : F) + rho 3199 + rho 3200)
      (rho 3201) (rho 3202) (rho 3203) (rho 3204) (rho 3205) (rho 3206)
      (by simpa [shifted17] using hshift2On)
      (by simpa [digit17] using hdigitOn)
      (by linear_combination r3375)
      (by linear_combination r3376)
      (by linear_combination r3377)
      (by linear_combination r3378)
      (by linear_combination r3379)
      (by linear_combination r3380)
    simpa [shifted17, digit17, acc18] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc18 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted17 rho) (digit17 rho) (acc18 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted17 rho) (digit17 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2757) (rho 2756)
      (base rho) (twice rho) (triple rho) (acc17 rho)
      (acc18 rho) :=
    ⟨shiftOnce17 rho, shifted17 rho, digit17 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
