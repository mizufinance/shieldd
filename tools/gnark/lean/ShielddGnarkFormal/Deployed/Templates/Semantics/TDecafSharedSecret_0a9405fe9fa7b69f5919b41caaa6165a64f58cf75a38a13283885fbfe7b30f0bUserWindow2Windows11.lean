import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bUserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window66 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc66 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[116]! (scalarBits rho)[115]!
        (base rho) (twice rho) (triple rho) (acc66 rho)
        (acc67 rho) ∧
      EdwardsBridge.onCurve (acc67 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3278, r3279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3278 at r3278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3279 at r3279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3280 at r3280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3281 at r3281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3282 at r3282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3283 at r3283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3284 at r3284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3285 at r3285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3286 at r3286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3287 at r3287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3288 at r3288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3289 at r3289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3290 at r3290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3291 at r3291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3292 at r3292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3293 at r3293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3294 at r3294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3295 at r3295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3296 at r3296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3297 at r3297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3298 at r3298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3299 at r3299
  have hshift1 : EdwardsBridge.doubleSpec (acc66 rho) (shiftOnce66 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3282) (rho 3283) (rho 3284) (rho 3285) (rho 3286) (rho 3287) (rho 3288)
      (by simpa [acc66] using hacc)
      (by linear_combination r3278)
      (by linear_combination r3279)
      (by linear_combination r3280)
      (by linear_combination r3281)
      (by linear_combination r3282)
    simpa [acc66, shiftOnce66] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce66 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc66 rho) (shiftOnce66 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc66 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce66 rho) (shifted66 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3287) (rho 3288) (rho 3289) (rho 3290) (rho 3291) (rho 3292) (rho 3293)
      (by simpa [shiftOnce66] using hshift1On)
      (by linear_combination r3283)
      (by linear_combination r3284)
      (by linear_combination r3285)
      (by linear_combination r3286)
      (by linear_combination r3287)
    simpa [shiftOnce66, shifted66] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted66 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce66 rho) (shifted66 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce66 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 118) (rho 117)
      (base rho) (twice rho) (triple rho) (digit66 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 118) (rho 117)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3295 + rho 3296, (1 : F) + rho 3298 + rho 3299⟩ := by
      constructor
      · refine ⟨(rho 3294 + (rho 1818) - (0)), rho 3295, ?_, ?_, ?_⟩
        · linear_combination r3288
        · linear_combination r3289
        · linear_combination r3290
      · refine ⟨(rho 3297 + (rho 1819) - ((1 : F))), rho 3298, ?_, ?_, ?_⟩
        · linear_combination r3291
        · linear_combination r3292
        · linear_combination r3293
    simpa [base, twice, triple, digit66] using hraw
  have hhigh : rho 118 =
      Bool.toZMod bits[116]! := by
    simpa only using rho_bit_of_map rho bits hbits 116 (by decide +kernel)
  have hlow : rho 117 =
      Bool.toZMod bits[115]! := by
    simpa only using rho_bit_of_map rho bits hbits 115 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[116]! bits[115]! (base rho) (twice rho) (triple rho)
    (digit66 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit66 rho) := by
    rw [hdigit]
    cases bits[116]! <;> cases bits[115]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted66 rho) (digit66 rho) (acc67 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3292) (rho 3293) (rho 3295 + rho 3296) ((1 : F) + rho 3298 + rho 3299)
      (rho 3300) (rho 3301) (rho 3302) (rho 3303) (rho 3304) (rho 3305)
      (by simpa [shifted66] using hshift2On)
      (by simpa [digit66] using hdigitOn)
      (by linear_combination r3294)
      (by linear_combination r3295)
      (by linear_combination r3296)
      (by linear_combination r3297)
      (by linear_combination r3298)
      (by linear_combination r3299)
    simpa [shifted66, digit66, acc67] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc67 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted66 rho) (digit66 rho) (acc67 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted66 rho) (digit66 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 118) (rho 117)
      (base rho) (twice rho) (triple rho) (acc66 rho)
      (acc67 rho) :=
    ⟨shiftOnce66 rho, shifted66 rho, digit66 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window67 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc67 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[114]! (scalarBits rho)[113]!
        (base rho) (twice rho) (triple rho) (acc67 rho)
        (acc68 rho) ∧
      EdwardsBridge.onCurve (acc68 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3300 at r3300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3301 at r3301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3302 at r3302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3303 at r3303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3304 at r3304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3305 at r3305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3306 at r3306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3307 at r3307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3308 at r3308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3309 at r3309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3310 at r3310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3311 at r3311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3312 at r3312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3313 at r3313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3314 at r3314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3315 at r3315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3316 at r3316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3317 at r3317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3318 at r3318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3319 at r3319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3320 at r3320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3321 at r3321
  have hshift1 : EdwardsBridge.doubleSpec (acc67 rho) (shiftOnce67 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3304) (rho 3305) (rho 3306) (rho 3307) (rho 3308) (rho 3309) (rho 3310)
      (by simpa [acc67] using hacc)
      (by linear_combination r3300)
      (by linear_combination r3301)
      (by linear_combination r3302)
      (by linear_combination r3303)
      (by linear_combination r3304)
    simpa [acc67, shiftOnce67] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce67 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc67 rho) (shiftOnce67 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc67 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce67 rho) (shifted67 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3309) (rho 3310) (rho 3311) (rho 3312) (rho 3313) (rho 3314) (rho 3315)
      (by simpa [shiftOnce67] using hshift1On)
      (by linear_combination r3305)
      (by linear_combination r3306)
      (by linear_combination r3307)
      (by linear_combination r3308)
      (by linear_combination r3309)
    simpa [shiftOnce67, shifted67] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted67 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce67 rho) (shifted67 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce67 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 116) (rho 115)
      (base rho) (twice rho) (triple rho) (digit67 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 116) (rho 115)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3317 + rho 3318, (1 : F) + rho 3320 + rho 3321⟩ := by
      constructor
      · refine ⟨(rho 3316 + (rho 1818) - (0)), rho 3317, ?_, ?_, ?_⟩
        · linear_combination r3310
        · linear_combination r3311
        · linear_combination r3312
      · refine ⟨(rho 3319 + (rho 1819) - ((1 : F))), rho 3320, ?_, ?_, ?_⟩
        · linear_combination r3313
        · linear_combination r3314
        · linear_combination r3315
    simpa [base, twice, triple, digit67] using hraw
  have hhigh : rho 116 =
      Bool.toZMod bits[114]! := by
    simpa only using rho_bit_of_map rho bits hbits 114 (by decide +kernel)
  have hlow : rho 115 =
      Bool.toZMod bits[113]! := by
    simpa only using rho_bit_of_map rho bits hbits 113 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[114]! bits[113]! (base rho) (twice rho) (triple rho)
    (digit67 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit67 rho) := by
    rw [hdigit]
    cases bits[114]! <;> cases bits[113]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted67 rho) (digit67 rho) (acc68 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3314) (rho 3315) (rho 3317 + rho 3318) ((1 : F) + rho 3320 + rho 3321)
      (rho 3322) (rho 3323) (rho 3324) (rho 3325) (rho 3326) (rho 3327)
      (by simpa [shifted67] using hshift2On)
      (by simpa [digit67] using hdigitOn)
      (by linear_combination r3316)
      (by linear_combination r3317)
      (by linear_combination r3318)
      (by linear_combination r3319)
      (by linear_combination r3320)
      (by linear_combination r3321)
    simpa [shifted67, digit67, acc68] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc68 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted67 rho) (digit67 rho) (acc68 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted67 rho) (digit67 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 116) (rho 115)
      (base rho) (twice rho) (triple rho) (acc67 rho)
      (acc68 rho) :=
    ⟨shiftOnce67 rho, shifted67 rho, digit67 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window68 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc68 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[112]! (scalarBits rho)[111]!
        (base rho) (twice rho) (triple rho) (acc68 rho)
        (acc69 rho) ∧
      EdwardsBridge.onCurve (acc69 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3322, r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, r3332, r3333, r3334, r3335, r3336, r3337, r3338, r3339, r3340, r3341, r3342, r3343, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3322 at r3322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3323 at r3323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3324 at r3324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3325 at r3325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3326 at r3326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3327 at r3327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3328 at r3328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3329 at r3329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3330 at r3330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3331 at r3331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3332 at r3332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3333 at r3333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3334 at r3334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3335 at r3335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3336 at r3336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3337 at r3337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3338 at r3338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3339 at r3339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3340 at r3340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3341 at r3341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3342 at r3342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3343 at r3343
  have hshift1 : EdwardsBridge.doubleSpec (acc68 rho) (shiftOnce68 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3326) (rho 3327) (rho 3328) (rho 3329) (rho 3330) (rho 3331) (rho 3332)
      (by simpa [acc68] using hacc)
      (by linear_combination r3322)
      (by linear_combination r3323)
      (by linear_combination r3324)
      (by linear_combination r3325)
      (by linear_combination r3326)
    simpa [acc68, shiftOnce68] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce68 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc68 rho) (shiftOnce68 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc68 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce68 rho) (shifted68 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3331) (rho 3332) (rho 3333) (rho 3334) (rho 3335) (rho 3336) (rho 3337)
      (by simpa [shiftOnce68] using hshift1On)
      (by linear_combination r3327)
      (by linear_combination r3328)
      (by linear_combination r3329)
      (by linear_combination r3330)
      (by linear_combination r3331)
    simpa [shiftOnce68, shifted68] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted68 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce68 rho) (shifted68 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce68 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 114) (rho 113)
      (base rho) (twice rho) (triple rho) (digit68 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 114) (rho 113)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3339 + rho 3340, (1 : F) + rho 3342 + rho 3343⟩ := by
      constructor
      · refine ⟨(rho 3338 + (rho 1818) - (0)), rho 3339, ?_, ?_, ?_⟩
        · linear_combination r3332
        · linear_combination r3333
        · linear_combination r3334
      · refine ⟨(rho 3341 + (rho 1819) - ((1 : F))), rho 3342, ?_, ?_, ?_⟩
        · linear_combination r3335
        · linear_combination r3336
        · linear_combination r3337
    simpa [base, twice, triple, digit68] using hraw
  have hhigh : rho 114 =
      Bool.toZMod bits[112]! := by
    simpa only using rho_bit_of_map rho bits hbits 112 (by decide +kernel)
  have hlow : rho 113 =
      Bool.toZMod bits[111]! := by
    simpa only using rho_bit_of_map rho bits hbits 111 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[112]! bits[111]! (base rho) (twice rho) (triple rho)
    (digit68 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit68 rho) := by
    rw [hdigit]
    cases bits[112]! <;> cases bits[111]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted68 rho) (digit68 rho) (acc69 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3336) (rho 3337) (rho 3339 + rho 3340) ((1 : F) + rho 3342 + rho 3343)
      (rho 3344) (rho 3345) (rho 3346) (rho 3347) (rho 3348) (rho 3349)
      (by simpa [shifted68] using hshift2On)
      (by simpa [digit68] using hdigitOn)
      (by linear_combination r3338)
      (by linear_combination r3339)
      (by linear_combination r3340)
      (by linear_combination r3341)
      (by linear_combination r3342)
      (by linear_combination r3343)
    simpa [shifted68, digit68, acc69] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc69 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted68 rho) (digit68 rho) (acc69 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted68 rho) (digit68 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 114) (rho 113)
      (base rho) (twice rho) (triple rho) (acc68 rho)
      (acc69 rho) :=
    ⟨shiftOnce68 rho, shifted68 rho, digit68 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window69 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc69 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[110]! (scalarBits rho)[109]!
        (base rho) (twice rho) (triple rho) (acc69 rho)
        (acc70 rho) ∧
      EdwardsBridge.onCurve (acc70 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p41, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart41 at p41
  rcases p41 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3344, r3345, r3346, r3347, r3348, r3349, r3350, r3351, r3352, r3353, r3354, r3355, r3356, r3357, r3358, r3359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart42 at p42
  rcases p42 with ⟨r3360, r3361, r3362, r3363, r3364, r3365, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3344 at r3344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3345 at r3345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3346 at r3346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3347 at r3347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3348 at r3348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3349 at r3349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3350 at r3350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3351 at r3351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3352 at r3352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3353 at r3353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3354 at r3354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3355 at r3355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3356 at r3356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3357 at r3357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3358 at r3358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3359 at r3359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3360 at r3360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3361 at r3361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3362 at r3362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3363 at r3363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3364 at r3364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3365 at r3365
  have hshift1 : EdwardsBridge.doubleSpec (acc69 rho) (shiftOnce69 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3348) (rho 3349) (rho 3350) (rho 3351) (rho 3352) (rho 3353) (rho 3354)
      (by simpa [acc69] using hacc)
      (by linear_combination r3344)
      (by linear_combination r3345)
      (by linear_combination r3346)
      (by linear_combination r3347)
      (by linear_combination r3348)
    simpa [acc69, shiftOnce69] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce69 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc69 rho) (shiftOnce69 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc69 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce69 rho) (shifted69 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3353) (rho 3354) (rho 3355) (rho 3356) (rho 3357) (rho 3358) (rho 3359)
      (by simpa [shiftOnce69] using hshift1On)
      (by linear_combination r3349)
      (by linear_combination r3350)
      (by linear_combination r3351)
      (by linear_combination r3352)
      (by linear_combination r3353)
    simpa [shiftOnce69, shifted69] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted69 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce69 rho) (shifted69 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce69 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 112) (rho 111)
      (base rho) (twice rho) (triple rho) (digit69 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 112) (rho 111)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3361 + rho 3362, (1 : F) + rho 3364 + rho 3365⟩ := by
      constructor
      · refine ⟨(rho 3360 + (rho 1818) - (0)), rho 3361, ?_, ?_, ?_⟩
        · linear_combination r3354
        · linear_combination r3355
        · linear_combination r3356
      · refine ⟨(rho 3363 + (rho 1819) - ((1 : F))), rho 3364, ?_, ?_, ?_⟩
        · linear_combination r3357
        · linear_combination r3358
        · linear_combination r3359
    simpa [base, twice, triple, digit69] using hraw
  have hhigh : rho 112 =
      Bool.toZMod bits[110]! := by
    simpa only using rho_bit_of_map rho bits hbits 110 (by decide +kernel)
  have hlow : rho 111 =
      Bool.toZMod bits[109]! := by
    simpa only using rho_bit_of_map rho bits hbits 109 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[110]! bits[109]! (base rho) (twice rho) (triple rho)
    (digit69 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit69 rho) := by
    rw [hdigit]
    cases bits[110]! <;> cases bits[109]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted69 rho) (digit69 rho) (acc70 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3358) (rho 3359) (rho 3361 + rho 3362) ((1 : F) + rho 3364 + rho 3365)
      (rho 3366) (rho 3367) (rho 3368) (rho 3369) (rho 3370) (rho 3371)
      (by simpa [shifted69] using hshift2On)
      (by simpa [digit69] using hdigitOn)
      (by linear_combination r3360)
      (by linear_combination r3361)
      (by linear_combination r3362)
      (by linear_combination r3363)
      (by linear_combination r3364)
      (by linear_combination r3365)
    simpa [shifted69, digit69, acc70] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc70 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted69 rho) (digit69 rho) (acc70 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted69 rho) (digit69 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 112) (rho 111)
      (base rho) (twice rho) (triple rho) (acc69 rho)
      (acc70 rho) :=
    ⟨shiftOnce69 rho, shifted69 rho, digit69 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window70 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc70 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[108]! (scalarBits rho)[107]!
        (base rho) (twice rho) (triple rho) (acc70 rho)
        (acc71 rho) ∧
      EdwardsBridge.onCurve (acc71 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, r3366, r3367, r3368, r3369, r3370, r3371, r3372, r3373, r3374, r3375, r3376, r3377, r3378, r3379, r3380, r3381, r3382, r3383, r3384, r3385, r3386, r3387, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3366 at r3366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3367 at r3367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3368 at r3368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3369 at r3369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3370 at r3370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3371 at r3371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3372 at r3372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3373 at r3373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3374 at r3374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3375 at r3375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3376 at r3376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3377 at r3377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3378 at r3378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3379 at r3379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3380 at r3380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3381 at r3381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3382 at r3382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3383 at r3383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3384 at r3384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3385 at r3385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3386 at r3386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3387 at r3387
  have hshift1 : EdwardsBridge.doubleSpec (acc70 rho) (shiftOnce70 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3370) (rho 3371) (rho 3372) (rho 3373) (rho 3374) (rho 3375) (rho 3376)
      (by simpa [acc70] using hacc)
      (by linear_combination r3366)
      (by linear_combination r3367)
      (by linear_combination r3368)
      (by linear_combination r3369)
      (by linear_combination r3370)
    simpa [acc70, shiftOnce70] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce70 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc70 rho) (shiftOnce70 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc70 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce70 rho) (shifted70 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3375) (rho 3376) (rho 3377) (rho 3378) (rho 3379) (rho 3380) (rho 3381)
      (by simpa [shiftOnce70] using hshift1On)
      (by linear_combination r3371)
      (by linear_combination r3372)
      (by linear_combination r3373)
      (by linear_combination r3374)
      (by linear_combination r3375)
    simpa [shiftOnce70, shifted70] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted70 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce70 rho) (shifted70 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce70 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 110) (rho 109)
      (base rho) (twice rho) (triple rho) (digit70 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 110) (rho 109)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3383 + rho 3384, (1 : F) + rho 3386 + rho 3387⟩ := by
      constructor
      · refine ⟨(rho 3382 + (rho 1818) - (0)), rho 3383, ?_, ?_, ?_⟩
        · linear_combination r3376
        · linear_combination r3377
        · linear_combination r3378
      · refine ⟨(rho 3385 + (rho 1819) - ((1 : F))), rho 3386, ?_, ?_, ?_⟩
        · linear_combination r3379
        · linear_combination r3380
        · linear_combination r3381
    simpa [base, twice, triple, digit70] using hraw
  have hhigh : rho 110 =
      Bool.toZMod bits[108]! := by
    simpa only using rho_bit_of_map rho bits hbits 108 (by decide +kernel)
  have hlow : rho 109 =
      Bool.toZMod bits[107]! := by
    simpa only using rho_bit_of_map rho bits hbits 107 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[108]! bits[107]! (base rho) (twice rho) (triple rho)
    (digit70 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit70 rho) := by
    rw [hdigit]
    cases bits[108]! <;> cases bits[107]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted70 rho) (digit70 rho) (acc71 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3380) (rho 3381) (rho 3383 + rho 3384) ((1 : F) + rho 3386 + rho 3387)
      (rho 3388) (rho 3389) (rho 3390) (rho 3391) (rho 3392) (rho 3393)
      (by simpa [shifted70] using hshift2On)
      (by simpa [digit70] using hdigitOn)
      (by linear_combination r3382)
      (by linear_combination r3383)
      (by linear_combination r3384)
      (by linear_combination r3385)
      (by linear_combination r3386)
      (by linear_combination r3387)
    simpa [shifted70, digit70, acc71] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc71 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted70 rho) (digit70 rho) (acc71 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted70 rho) (digit70 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 110) (rho 109)
      (base rho) (twice rho) (triple rho) (acc70 rho)
      (acc71 rho) :=
    ⟨shiftOnce70 rho, shifted70 rho, digit70 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window71 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc71 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[106]! (scalarBits rho)[105]!
        (base rho) (twice rho) (triple rho) (acc71 rho)
        (acc72 rho) ∧
      EdwardsBridge.onCurve (acc72 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3388 at r3388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3389 at r3389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3390 at r3390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3391 at r3391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3392 at r3392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3393 at r3393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3394 at r3394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3395 at r3395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3396 at r3396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3397 at r3397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3398 at r3398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3399 at r3399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3400 at r3400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3401 at r3401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3402 at r3402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3403 at r3403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3404 at r3404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3405 at r3405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3406 at r3406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3407 at r3407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3408 at r3408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3409 at r3409
  have hshift1 : EdwardsBridge.doubleSpec (acc71 rho) (shiftOnce71 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3392) (rho 3393) (rho 3394) (rho 3395) (rho 3396) (rho 3397) (rho 3398)
      (by simpa [acc71] using hacc)
      (by linear_combination r3388)
      (by linear_combination r3389)
      (by linear_combination r3390)
      (by linear_combination r3391)
      (by linear_combination r3392)
    simpa [acc71, shiftOnce71] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce71 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc71 rho) (shiftOnce71 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc71 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce71 rho) (shifted71 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3397) (rho 3398) (rho 3399) (rho 3400) (rho 3401) (rho 3402) (rho 3403)
      (by simpa [shiftOnce71] using hshift1On)
      (by linear_combination r3393)
      (by linear_combination r3394)
      (by linear_combination r3395)
      (by linear_combination r3396)
      (by linear_combination r3397)
    simpa [shiftOnce71, shifted71] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted71 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce71 rho) (shifted71 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce71 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 108) (rho 107)
      (base rho) (twice rho) (triple rho) (digit71 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 108) (rho 107)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3405 + rho 3406, (1 : F) + rho 3408 + rho 3409⟩ := by
      constructor
      · refine ⟨(rho 3404 + (rho 1818) - (0)), rho 3405, ?_, ?_, ?_⟩
        · linear_combination r3398
        · linear_combination r3399
        · linear_combination r3400
      · refine ⟨(rho 3407 + (rho 1819) - ((1 : F))), rho 3408, ?_, ?_, ?_⟩
        · linear_combination r3401
        · linear_combination r3402
        · linear_combination r3403
    simpa [base, twice, triple, digit71] using hraw
  have hhigh : rho 108 =
      Bool.toZMod bits[106]! := by
    simpa only using rho_bit_of_map rho bits hbits 106 (by decide +kernel)
  have hlow : rho 107 =
      Bool.toZMod bits[105]! := by
    simpa only using rho_bit_of_map rho bits hbits 105 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[106]! bits[105]! (base rho) (twice rho) (triple rho)
    (digit71 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit71 rho) := by
    rw [hdigit]
    cases bits[106]! <;> cases bits[105]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted71 rho) (digit71 rho) (acc72 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3402) (rho 3403) (rho 3405 + rho 3406) ((1 : F) + rho 3408 + rho 3409)
      (rho 3410) (rho 3411) (rho 3412) (rho 3413) (rho 3414) (rho 3415)
      (by simpa [shifted71] using hshift2On)
      (by simpa [digit71] using hdigitOn)
      (by linear_combination r3404)
      (by linear_combination r3405)
      (by linear_combination r3406)
      (by linear_combination r3407)
      (by linear_combination r3408)
      (by linear_combination r3409)
    simpa [shifted71, digit71, acc72] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc72 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted71 rho) (digit71 rho) (acc72 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted71 rho) (digit71 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 108) (rho 107)
      (base rho) (twice rho) (triple rho) (acc71 rho)
      (acc72 rho) :=
    ⟨shiftOnce71 rho, shifted71 rho, digit71 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport
