import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window18 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc18 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[90]! (scalarBits rho)[89]!
        (base rho) (twice rho) (triple rho) (acc18 rho)
        (acc19 rho) ∧
      EdwardsBridge.onCurve (acc19 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3381, r3382, r3383, r3384, r3385, r3386, r3387, r3388, r3389, r3390, r3391, r3392, r3393, r3394, r3395, r3396, r3397, r3398, r3399, r3400, r3401, r3402, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3381 at r3381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3382 at r3382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3383 at r3383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3384 at r3384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3385 at r3385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3386 at r3386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3387 at r3387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3388 at r3388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3389 at r3389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3390 at r3390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3391 at r3391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3392 at r3392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3393 at r3393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3394 at r3394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3395 at r3395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3396 at r3396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3397 at r3397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3398 at r3398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3399 at r3399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3400 at r3400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3401 at r3401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3402 at r3402
  have hshift1 : EdwardsBridge.doubleSpec (acc18 rho) (shiftOnce18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3205) (rho 3206) (rho 3207) (rho 3208) (rho 3209) (rho 3210) (rho 3211)
      (by simpa [acc18] using hacc)
      (by linear_combination r3381)
      (by linear_combination r3382)
      (by linear_combination r3383)
      (by linear_combination r3384)
      (by linear_combination r3385)
    simpa [acc18, shiftOnce18] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc18 rho) (shiftOnce18 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc18 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce18 rho) (shifted18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3210) (rho 3211) (rho 3212) (rho 3213) (rho 3214) (rho 3215) (rho 3216)
      (by simpa [shiftOnce18] using hshift1On)
      (by linear_combination r3386)
      (by linear_combination r3387)
      (by linear_combination r3388)
      (by linear_combination r3389)
      (by linear_combination r3390)
    simpa [shiftOnce18, shifted18] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce18 rho) (shifted18 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce18 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2755) (rho 2754)
      (base rho) (twice rho) (triple rho) (digit18 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2755) (rho 2754)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3218 + rho 3219, (1 : F) + rho 3221 + rho 3222⟩ := by
      constructor
      · refine ⟨(rho 3217 + (rho 2797) - (0)), rho 3218, ?_, ?_, ?_⟩
        · linear_combination r3391
        · linear_combination r3392
        · linear_combination r3393
      · refine ⟨(rho 3220 + (rho 2798) - ((1 : F))), rho 3221, ?_, ?_, ?_⟩
        · linear_combination r3394
        · linear_combination r3395
        · linear_combination r3396
    simpa [base, twice, triple, digit18] using hraw
  have hhigh : rho 2755 =
      Bool.toZMod bits[90]! := by
    simpa only using rho_bit_of_map rho bits hbits 90 (by decide +kernel)
  have hlow : rho 2754 =
      Bool.toZMod bits[89]! := by
    simpa only using rho_bit_of_map rho bits hbits 89 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[90]! bits[89]! (base rho) (twice rho) (triple rho)
    (digit18 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit18 rho) := by
    rw [hdigit]
    cases bits[90]! <;> cases bits[89]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted18 rho) (digit18 rho) (acc19 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3215) (rho 3216) (rho 3218 + rho 3219) ((1 : F) + rho 3221 + rho 3222)
      (rho 3223) (rho 3224) (rho 3225) (rho 3226) (rho 3227) (rho 3228)
      (by simpa [shifted18] using hshift2On)
      (by simpa [digit18] using hdigitOn)
      (by linear_combination r3397)
      (by linear_combination r3398)
      (by linear_combination r3399)
      (by linear_combination r3400)
      (by linear_combination r3401)
      (by linear_combination r3402)
    simpa [shifted18, digit18, acc19] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc19 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted18 rho) (digit18 rho) (acc19 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted18 rho) (digit18 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2755) (rho 2754)
      (base rho) (twice rho) (triple rho) (acc18 rho)
      (acc19 rho) :=
    ⟨shiftOnce18 rho, shifted18 rho, digit18 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window19 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc19 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[88]! (scalarBits rho)[87]!
        (base rho) (twice rho) (triple rho) (acc19 rho)
        (acc20 rho) ∧
      EdwardsBridge.onCurve (acc20 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3403 at r3403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3404 at r3404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3405 at r3405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3406 at r3406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3407 at r3407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3408 at r3408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3409 at r3409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3410 at r3410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3411 at r3411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3412 at r3412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3413 at r3413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3414 at r3414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3415 at r3415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3416 at r3416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3417 at r3417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3418 at r3418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3419 at r3419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3420 at r3420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3421 at r3421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3422 at r3422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3423 at r3423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3424 at r3424
  have hshift1 : EdwardsBridge.doubleSpec (acc19 rho) (shiftOnce19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3227) (rho 3228) (rho 3229) (rho 3230) (rho 3231) (rho 3232) (rho 3233)
      (by simpa [acc19] using hacc)
      (by linear_combination r3403)
      (by linear_combination r3404)
      (by linear_combination r3405)
      (by linear_combination r3406)
      (by linear_combination r3407)
    simpa [acc19, shiftOnce19] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc19 rho) (shiftOnce19 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc19 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce19 rho) (shifted19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3232) (rho 3233) (rho 3234) (rho 3235) (rho 3236) (rho 3237) (rho 3238)
      (by simpa [shiftOnce19] using hshift1On)
      (by linear_combination r3408)
      (by linear_combination r3409)
      (by linear_combination r3410)
      (by linear_combination r3411)
      (by linear_combination r3412)
    simpa [shiftOnce19, shifted19] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce19 rho) (shifted19 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce19 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2753) (rho 2752)
      (base rho) (twice rho) (triple rho) (digit19 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2753) (rho 2752)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3240 + rho 3241, (1 : F) + rho 3243 + rho 3244⟩ := by
      constructor
      · refine ⟨(rho 3239 + (rho 2797) - (0)), rho 3240, ?_, ?_, ?_⟩
        · linear_combination r3413
        · linear_combination r3414
        · linear_combination r3415
      · refine ⟨(rho 3242 + (rho 2798) - ((1 : F))), rho 3243, ?_, ?_, ?_⟩
        · linear_combination r3416
        · linear_combination r3417
        · linear_combination r3418
    simpa [base, twice, triple, digit19] using hraw
  have hhigh : rho 2753 =
      Bool.toZMod bits[88]! := by
    simpa only using rho_bit_of_map rho bits hbits 88 (by decide +kernel)
  have hlow : rho 2752 =
      Bool.toZMod bits[87]! := by
    simpa only using rho_bit_of_map rho bits hbits 87 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[88]! bits[87]! (base rho) (twice rho) (triple rho)
    (digit19 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit19 rho) := by
    rw [hdigit]
    cases bits[88]! <;> cases bits[87]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted19 rho) (digit19 rho) (acc20 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3237) (rho 3238) (rho 3240 + rho 3241) ((1 : F) + rho 3243 + rho 3244)
      (rho 3245) (rho 3246) (rho 3247) (rho 3248) (rho 3249) (rho 3250)
      (by simpa [shifted19] using hshift2On)
      (by simpa [digit19] using hdigitOn)
      (by linear_combination r3419)
      (by linear_combination r3420)
      (by linear_combination r3421)
      (by linear_combination r3422)
      (by linear_combination r3423)
      (by linear_combination r3424)
    simpa [shifted19, digit19, acc20] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc20 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted19 rho) (digit19 rho) (acc20 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted19 rho) (digit19 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2753) (rho 2752)
      (base rho) (twice rho) (triple rho) (acc19 rho)
      (acc20 rho) :=
    ⟨shiftOnce19 rho, shifted19 rho, digit19 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window20 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc20 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[86]! (scalarBits rho)[85]!
        (base rho) (twice rho) (triple rho) (acc20 rho)
        (acc21 rho) ∧
      EdwardsBridge.onCurve (acc21 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3425 at r3425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3426 at r3426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3427 at r3427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3428 at r3428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3429 at r3429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3430 at r3430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3431 at r3431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3432 at r3432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3433 at r3433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3434 at r3434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3435 at r3435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3436 at r3436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3437 at r3437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3438 at r3438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3439 at r3439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3440 at r3440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3441 at r3441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3442 at r3442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3443 at r3443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3444 at r3444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3445 at r3445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3446 at r3446
  have hshift1 : EdwardsBridge.doubleSpec (acc20 rho) (shiftOnce20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3249) (rho 3250) (rho 3251) (rho 3252) (rho 3253) (rho 3254) (rho 3255)
      (by simpa [acc20] using hacc)
      (by linear_combination r3425)
      (by linear_combination r3426)
      (by linear_combination r3427)
      (by linear_combination r3428)
      (by linear_combination r3429)
    simpa [acc20, shiftOnce20] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc20 rho) (shiftOnce20 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc20 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce20 rho) (shifted20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3254) (rho 3255) (rho 3256) (rho 3257) (rho 3258) (rho 3259) (rho 3260)
      (by simpa [shiftOnce20] using hshift1On)
      (by linear_combination r3430)
      (by linear_combination r3431)
      (by linear_combination r3432)
      (by linear_combination r3433)
      (by linear_combination r3434)
    simpa [shiftOnce20, shifted20] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce20 rho) (shifted20 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce20 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2751) (rho 2750)
      (base rho) (twice rho) (triple rho) (digit20 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2751) (rho 2750)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3262 + rho 3263, (1 : F) + rho 3265 + rho 3266⟩ := by
      constructor
      · refine ⟨(rho 3261 + (rho 2797) - (0)), rho 3262, ?_, ?_, ?_⟩
        · linear_combination r3435
        · linear_combination r3436
        · linear_combination r3437
      · refine ⟨(rho 3264 + (rho 2798) - ((1 : F))), rho 3265, ?_, ?_, ?_⟩
        · linear_combination r3438
        · linear_combination r3439
        · linear_combination r3440
    simpa [base, twice, triple, digit20] using hraw
  have hhigh : rho 2751 =
      Bool.toZMod bits[86]! := by
    simpa only using rho_bit_of_map rho bits hbits 86 (by decide +kernel)
  have hlow : rho 2750 =
      Bool.toZMod bits[85]! := by
    simpa only using rho_bit_of_map rho bits hbits 85 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[86]! bits[85]! (base rho) (twice rho) (triple rho)
    (digit20 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit20 rho) := by
    rw [hdigit]
    cases bits[86]! <;> cases bits[85]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted20 rho) (digit20 rho) (acc21 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3259) (rho 3260) (rho 3262 + rho 3263) ((1 : F) + rho 3265 + rho 3266)
      (rho 3267) (rho 3268) (rho 3269) (rho 3270) (rho 3271) (rho 3272)
      (by simpa [shifted20] using hshift2On)
      (by simpa [digit20] using hdigitOn)
      (by linear_combination r3441)
      (by linear_combination r3442)
      (by linear_combination r3443)
      (by linear_combination r3444)
      (by linear_combination r3445)
      (by linear_combination r3446)
    simpa [shifted20, digit20, acc21] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc21 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted20 rho) (digit20 rho) (acc21 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted20 rho) (digit20 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2751) (rho 2750)
      (base rho) (twice rho) (triple rho) (acc20 rho)
      (acc21 rho) :=
    ⟨shiftOnce20 rho, shifted20 rho, digit20 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window21 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc21 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[84]! (scalarBits rho)[83]!
        (base rho) (twice rho) (triple rho) (acc21 rho)
        (acc22 rho) ∧
      EdwardsBridge.onCurve (acc22 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3447 at r3447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3448 at r3448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3449 at r3449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3450 at r3450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3451 at r3451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3452 at r3452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3453 at r3453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3454 at r3454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3455 at r3455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3456 at r3456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3457 at r3457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3458 at r3458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3459 at r3459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3460 at r3460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3461 at r3461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3462 at r3462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3463 at r3463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3464 at r3464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3465 at r3465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3466 at r3466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3467 at r3467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3468 at r3468
  have hshift1 : EdwardsBridge.doubleSpec (acc21 rho) (shiftOnce21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3271) (rho 3272) (rho 3273) (rho 3274) (rho 3275) (rho 3276) (rho 3277)
      (by simpa [acc21] using hacc)
      (by linear_combination r3447)
      (by linear_combination r3448)
      (by linear_combination r3449)
      (by linear_combination r3450)
      (by linear_combination r3451)
    simpa [acc21, shiftOnce21] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc21 rho) (shiftOnce21 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc21 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce21 rho) (shifted21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3276) (rho 3277) (rho 3278) (rho 3279) (rho 3280) (rho 3281) (rho 3282)
      (by simpa [shiftOnce21] using hshift1On)
      (by linear_combination r3452)
      (by linear_combination r3453)
      (by linear_combination r3454)
      (by linear_combination r3455)
      (by linear_combination r3456)
    simpa [shiftOnce21, shifted21] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce21 rho) (shifted21 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce21 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2749) (rho 2748)
      (base rho) (twice rho) (triple rho) (digit21 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2749) (rho 2748)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3284 + rho 3285, (1 : F) + rho 3287 + rho 3288⟩ := by
      constructor
      · refine ⟨(rho 3283 + (rho 2797) - (0)), rho 3284, ?_, ?_, ?_⟩
        · linear_combination r3457
        · linear_combination r3458
        · linear_combination r3459
      · refine ⟨(rho 3286 + (rho 2798) - ((1 : F))), rho 3287, ?_, ?_, ?_⟩
        · linear_combination r3460
        · linear_combination r3461
        · linear_combination r3462
    simpa [base, twice, triple, digit21] using hraw
  have hhigh : rho 2749 =
      Bool.toZMod bits[84]! := by
    simpa only using rho_bit_of_map rho bits hbits 84 (by decide +kernel)
  have hlow : rho 2748 =
      Bool.toZMod bits[83]! := by
    simpa only using rho_bit_of_map rho bits hbits 83 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[84]! bits[83]! (base rho) (twice rho) (triple rho)
    (digit21 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit21 rho) := by
    rw [hdigit]
    cases bits[84]! <;> cases bits[83]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted21 rho) (digit21 rho) (acc22 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3281) (rho 3282) (rho 3284 + rho 3285) ((1 : F) + rho 3287 + rho 3288)
      (rho 3289) (rho 3290) (rho 3291) (rho 3292) (rho 3293) (rho 3294)
      (by simpa [shifted21] using hshift2On)
      (by simpa [digit21] using hdigitOn)
      (by linear_combination r3463)
      (by linear_combination r3464)
      (by linear_combination r3465)
      (by linear_combination r3466)
      (by linear_combination r3467)
      (by linear_combination r3468)
    simpa [shifted21, digit21, acc22] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc22 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted21 rho) (digit21 rho) (acc22 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted21 rho) (digit21 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2749) (rho 2748)
      (base rho) (twice rho) (triple rho) (acc21 rho)
      (acc22 rho) :=
    ⟨shiftOnce21 rho, shifted21 rho, digit21 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window22 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc22 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[82]! (scalarBits rho)[81]!
        (base rho) (twice rho) (triple rho) (acc22 rho)
        (acc23 rho) ∧
      EdwardsBridge.onCurve (acc23 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3469 at r3469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3470 at r3470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3471 at r3471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3472 at r3472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3473 at r3473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3474 at r3474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3475 at r3475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3476 at r3476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3477 at r3477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3478 at r3478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3479 at r3479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3480 at r3480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3481 at r3481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3482 at r3482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3483 at r3483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3484 at r3484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3485 at r3485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3486 at r3486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3487 at r3487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3488 at r3488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3489 at r3489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3490 at r3490
  have hshift1 : EdwardsBridge.doubleSpec (acc22 rho) (shiftOnce22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3293) (rho 3294) (rho 3295) (rho 3296) (rho 3297) (rho 3298) (rho 3299)
      (by simpa [acc22] using hacc)
      (by linear_combination r3469)
      (by linear_combination r3470)
      (by linear_combination r3471)
      (by linear_combination r3472)
      (by linear_combination r3473)
    simpa [acc22, shiftOnce22] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc22 rho) (shiftOnce22 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc22 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce22 rho) (shifted22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3298) (rho 3299) (rho 3300) (rho 3301) (rho 3302) (rho 3303) (rho 3304)
      (by simpa [shiftOnce22] using hshift1On)
      (by linear_combination r3474)
      (by linear_combination r3475)
      (by linear_combination r3476)
      (by linear_combination r3477)
      (by linear_combination r3478)
    simpa [shiftOnce22, shifted22] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce22 rho) (shifted22 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce22 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2747) (rho 2746)
      (base rho) (twice rho) (triple rho) (digit22 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2747) (rho 2746)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3306 + rho 3307, (1 : F) + rho 3309 + rho 3310⟩ := by
      constructor
      · refine ⟨(rho 3305 + (rho 2797) - (0)), rho 3306, ?_, ?_, ?_⟩
        · linear_combination r3479
        · linear_combination r3480
        · linear_combination r3481
      · refine ⟨(rho 3308 + (rho 2798) - ((1 : F))), rho 3309, ?_, ?_, ?_⟩
        · linear_combination r3482
        · linear_combination r3483
        · linear_combination r3484
    simpa [base, twice, triple, digit22] using hraw
  have hhigh : rho 2747 =
      Bool.toZMod bits[82]! := by
    simpa only using rho_bit_of_map rho bits hbits 82 (by decide +kernel)
  have hlow : rho 2746 =
      Bool.toZMod bits[81]! := by
    simpa only using rho_bit_of_map rho bits hbits 81 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[82]! bits[81]! (base rho) (twice rho) (triple rho)
    (digit22 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit22 rho) := by
    rw [hdigit]
    cases bits[82]! <;> cases bits[81]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted22 rho) (digit22 rho) (acc23 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3303) (rho 3304) (rho 3306 + rho 3307) ((1 : F) + rho 3309 + rho 3310)
      (rho 3311) (rho 3312) (rho 3313) (rho 3314) (rho 3315) (rho 3316)
      (by simpa [shifted22] using hshift2On)
      (by simpa [digit22] using hdigitOn)
      (by linear_combination r3485)
      (by linear_combination r3486)
      (by linear_combination r3487)
      (by linear_combination r3488)
      (by linear_combination r3489)
      (by linear_combination r3490)
    simpa [shifted22, digit22, acc23] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc23 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted22 rho) (digit22 rho) (acc23 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted22 rho) (digit22 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2747) (rho 2746)
      (base rho) (twice rho) (triple rho) (acc22 rho)
      (acc23 rho) :=
    ⟨shiftOnce22 rho, shifted22 rho, digit22 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window23 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc23 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[80]! (scalarBits rho)[79]!
        (base rho) (twice rho) (triple rho) (acc23 rho)
        (acc24 rho) ∧
      EdwardsBridge.onCurve (acc24 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3491, r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3491 at r3491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3492 at r3492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3493 at r3493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3494 at r3494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3495 at r3495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3496 at r3496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3497 at r3497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3498 at r3498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3499 at r3499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3500 at r3500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3501 at r3501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3502 at r3502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3503 at r3503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3504 at r3504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3505 at r3505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3506 at r3506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3507 at r3507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3508 at r3508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3509 at r3509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3510 at r3510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3511 at r3511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3512 at r3512
  have hshift1 : EdwardsBridge.doubleSpec (acc23 rho) (shiftOnce23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3315) (rho 3316) (rho 3317) (rho 3318) (rho 3319) (rho 3320) (rho 3321)
      (by simpa [acc23] using hacc)
      (by linear_combination r3491)
      (by linear_combination r3492)
      (by linear_combination r3493)
      (by linear_combination r3494)
      (by linear_combination r3495)
    simpa [acc23, shiftOnce23] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc23 rho) (shiftOnce23 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc23 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce23 rho) (shifted23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3320) (rho 3321) (rho 3322) (rho 3323) (rho 3324) (rho 3325) (rho 3326)
      (by simpa [shiftOnce23] using hshift1On)
      (by linear_combination r3496)
      (by linear_combination r3497)
      (by linear_combination r3498)
      (by linear_combination r3499)
      (by linear_combination r3500)
    simpa [shiftOnce23, shifted23] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce23 rho) (shifted23 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce23 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2745) (rho 2744)
      (base rho) (twice rho) (triple rho) (digit23 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2745) (rho 2744)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3328 + rho 3329, (1 : F) + rho 3331 + rho 3332⟩ := by
      constructor
      · refine ⟨(rho 3327 + (rho 2797) - (0)), rho 3328, ?_, ?_, ?_⟩
        · linear_combination r3501
        · linear_combination r3502
        · linear_combination r3503
      · refine ⟨(rho 3330 + (rho 2798) - ((1 : F))), rho 3331, ?_, ?_, ?_⟩
        · linear_combination r3504
        · linear_combination r3505
        · linear_combination r3506
    simpa [base, twice, triple, digit23] using hraw
  have hhigh : rho 2745 =
      Bool.toZMod bits[80]! := by
    simpa only using rho_bit_of_map rho bits hbits 80 (by decide +kernel)
  have hlow : rho 2744 =
      Bool.toZMod bits[79]! := by
    simpa only using rho_bit_of_map rho bits hbits 79 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[80]! bits[79]! (base rho) (twice rho) (triple rho)
    (digit23 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit23 rho) := by
    rw [hdigit]
    cases bits[80]! <;> cases bits[79]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted23 rho) (digit23 rho) (acc24 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3325) (rho 3326) (rho 3328 + rho 3329) ((1 : F) + rho 3331 + rho 3332)
      (rho 3333) (rho 3334) (rho 3335) (rho 3336) (rho 3337) (rho 3338)
      (by simpa [shifted23] using hshift2On)
      (by simpa [digit23] using hdigitOn)
      (by linear_combination r3507)
      (by linear_combination r3508)
      (by linear_combination r3509)
      (by linear_combination r3510)
      (by linear_combination r3511)
      (by linear_combination r3512)
    simpa [shifted23, digit23, acc24] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc24 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted23 rho) (digit23 rho) (acc24 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted23 rho) (digit23 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2745) (rho 2744)
      (base rho) (twice rho) (triple rho) (acc23 rho)
      (acc24 rho) :=
    ⟨shiftOnce23 rho, shifted23 rho, digit23 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
