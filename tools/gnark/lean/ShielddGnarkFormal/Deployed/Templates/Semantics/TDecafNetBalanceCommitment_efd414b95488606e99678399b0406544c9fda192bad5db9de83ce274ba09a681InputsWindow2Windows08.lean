import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window48 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc48 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[30]! (scalarBits rho)[29]!
        (base rho) (twice rho) (triple rho) (acc48 rho)
        (acc49 rho) ∧
      EdwardsBridge.onCurve (acc49 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2495, r2496, r2497, r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, r2511, r2512, r2513, r2514, r2515, r2516, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2495 at r2495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2496 at r2496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2497 at r2497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2498 at r2498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2499 at r2499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2500 at r2500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2501 at r2501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2502 at r2502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2503 at r2503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2504 at r2504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2505 at r2505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2506 at r2506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2507 at r2507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2508 at r2508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2509 at r2509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2510 at r2510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2511 at r2511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2512 at r2512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2513 at r2513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2514 at r2514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2515 at r2515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2516 at r2516
  have hshift1 : EdwardsBridge.doubleSpec (acc48 rho) (shiftOnce48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2320) (rho 2321) (rho 2322) (rho 2323) (rho 2324) (rho 2325) (rho 2326)
      (by simpa [acc48] using hacc)
      (by linear_combination r2495)
      (by linear_combination r2496)
      (by linear_combination r2497)
      (by linear_combination r2498)
      (by linear_combination r2499)
    simpa [acc48, shiftOnce48] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc48 rho) (shiftOnce48 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc48 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce48 rho) (shifted48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2325) (rho 2326) (rho 2327) (rho 2328) (rho 2329) (rho 2330) (rho 2331)
      (by simpa [shiftOnce48] using hshift1On)
      (by linear_combination r2500)
      (by linear_combination r2501)
      (by linear_combination r2502)
      (by linear_combination r2503)
      (by linear_combination r2504)
    simpa [shiftOnce48, shifted48] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce48 rho) (shifted48 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce48 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1150) (rho 1149)
      (base rho) (twice rho) (triple rho) (digit48 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1150) (rho 1149)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2333 + rho 2334, (1 : F) + rho 2336 + rho 2337⟩ := by
      constructor
      · refine ⟨(rho 2332 + (rho 1252) - (0)), rho 2333, ?_, ?_, ?_⟩
        · linear_combination r2505
        · linear_combination r2506
        · linear_combination r2507
      · refine ⟨(rho 2335 + (rho 1253) - ((1 : F))), rho 2336, ?_, ?_, ?_⟩
        · linear_combination r2508
        · linear_combination r2509
        · linear_combination r2510
    simpa [base, twice, triple, digit48] using hraw
  have hhigh : rho 1150 =
      Bool.toZMod bits[30]! := by
    simpa only using rho_bit_of_map rho bits hbits 30 (by decide +kernel)
  have hlow : rho 1149 =
      Bool.toZMod bits[29]! := by
    simpa only using rho_bit_of_map rho bits hbits 29 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[30]! bits[29]! (base rho) (twice rho) (triple rho)
    (digit48 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit48 rho) := by
    rw [hdigit]
    cases bits[30]! <;> cases bits[29]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted48 rho) (digit48 rho) (acc49 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2330) (rho 2331) (rho 2333 + rho 2334) ((1 : F) + rho 2336 + rho 2337)
      (rho 2338) (rho 2339) (rho 2340) (rho 2341) (rho 2342) (rho 2343)
      (by simpa [shifted48] using hshift2On)
      (by simpa [digit48] using hdigitOn)
      (by linear_combination r2511)
      (by linear_combination r2512)
      (by linear_combination r2513)
      (by linear_combination r2514)
      (by linear_combination r2515)
      (by linear_combination r2516)
    simpa [shifted48, digit48, acc49] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc49 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted48 rho) (digit48 rho) (acc49 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted48 rho) (digit48 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1150) (rho 1149)
      (base rho) (twice rho) (triple rho) (acc48 rho)
      (acc49 rho) :=
    ⟨shiftOnce48 rho, shifted48 rho, digit48 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window49 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc49 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[28]! (scalarBits rho)[27]!
        (base rho) (twice rho) (triple rho) (acc49 rho)
        (acc50 rho) ∧
      EdwardsBridge.onCurve (acc50 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2517, r2518, r2519, r2520, r2521, r2522, r2523, r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536, r2537, r2538, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2517 at r2517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2518 at r2518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2519 at r2519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2520 at r2520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2521 at r2521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2522 at r2522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2523 at r2523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2524 at r2524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2525 at r2525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2526 at r2526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2527 at r2527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2528 at r2528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2529 at r2529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2530 at r2530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2531 at r2531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2532 at r2532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2533 at r2533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2534 at r2534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2535 at r2535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2536 at r2536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2537 at r2537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2538 at r2538
  have hshift1 : EdwardsBridge.doubleSpec (acc49 rho) (shiftOnce49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2342) (rho 2343) (rho 2344) (rho 2345) (rho 2346) (rho 2347) (rho 2348)
      (by simpa [acc49] using hacc)
      (by linear_combination r2517)
      (by linear_combination r2518)
      (by linear_combination r2519)
      (by linear_combination r2520)
      (by linear_combination r2521)
    simpa [acc49, shiftOnce49] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc49 rho) (shiftOnce49 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc49 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce49 rho) (shifted49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2347) (rho 2348) (rho 2349) (rho 2350) (rho 2351) (rho 2352) (rho 2353)
      (by simpa [shiftOnce49] using hshift1On)
      (by linear_combination r2522)
      (by linear_combination r2523)
      (by linear_combination r2524)
      (by linear_combination r2525)
      (by linear_combination r2526)
    simpa [shiftOnce49, shifted49] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce49 rho) (shifted49 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce49 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1148) (rho 1147)
      (base rho) (twice rho) (triple rho) (digit49 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1148) (rho 1147)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2355 + rho 2356, (1 : F) + rho 2358 + rho 2359⟩ := by
      constructor
      · refine ⟨(rho 2354 + (rho 1252) - (0)), rho 2355, ?_, ?_, ?_⟩
        · linear_combination r2527
        · linear_combination r2528
        · linear_combination r2529
      · refine ⟨(rho 2357 + (rho 1253) - ((1 : F))), rho 2358, ?_, ?_, ?_⟩
        · linear_combination r2530
        · linear_combination r2531
        · linear_combination r2532
    simpa [base, twice, triple, digit49] using hraw
  have hhigh : rho 1148 =
      Bool.toZMod bits[28]! := by
    simpa only using rho_bit_of_map rho bits hbits 28 (by decide +kernel)
  have hlow : rho 1147 =
      Bool.toZMod bits[27]! := by
    simpa only using rho_bit_of_map rho bits hbits 27 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[28]! bits[27]! (base rho) (twice rho) (triple rho)
    (digit49 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit49 rho) := by
    rw [hdigit]
    cases bits[28]! <;> cases bits[27]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted49 rho) (digit49 rho) (acc50 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2352) (rho 2353) (rho 2355 + rho 2356) ((1 : F) + rho 2358 + rho 2359)
      (rho 2360) (rho 2361) (rho 2362) (rho 2363) (rho 2364) (rho 2365)
      (by simpa [shifted49] using hshift2On)
      (by simpa [digit49] using hdigitOn)
      (by linear_combination r2533)
      (by linear_combination r2534)
      (by linear_combination r2535)
      (by linear_combination r2536)
      (by linear_combination r2537)
      (by linear_combination r2538)
    simpa [shifted49, digit49, acc50] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc50 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted49 rho) (digit49 rho) (acc50 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted49 rho) (digit49 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1148) (rho 1147)
      (base rho) (twice rho) (triple rho) (acc49 rho)
      (acc50 rho) :=
    ⟨shiftOnce49 rho, shifted49 rho, digit49 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window50 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc50 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[26]! (scalarBits rho)[25]!
        (base rho) (twice rho) (triple rho) (acc50 rho)
        (acc51 rho) ∧
      EdwardsBridge.onCurve (acc51 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart32 at p32
  rcases p32 with ⟨r2560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2539 at r2539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2540 at r2540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2541 at r2541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2542 at r2542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2543 at r2543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2544 at r2544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2545 at r2545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2546 at r2546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2547 at r2547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2548 at r2548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2549 at r2549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2550 at r2550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2551 at r2551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2552 at r2552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2553 at r2553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2554 at r2554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2555 at r2555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2556 at r2556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2557 at r2557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2558 at r2558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2559 at r2559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2560 at r2560
  have hshift1 : EdwardsBridge.doubleSpec (acc50 rho) (shiftOnce50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2364) (rho 2365) (rho 2366) (rho 2367) (rho 2368) (rho 2369) (rho 2370)
      (by simpa [acc50] using hacc)
      (by linear_combination r2539)
      (by linear_combination r2540)
      (by linear_combination r2541)
      (by linear_combination r2542)
      (by linear_combination r2543)
    simpa [acc50, shiftOnce50] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc50 rho) (shiftOnce50 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc50 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce50 rho) (shifted50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2369) (rho 2370) (rho 2371) (rho 2372) (rho 2373) (rho 2374) (rho 2375)
      (by simpa [shiftOnce50] using hshift1On)
      (by linear_combination r2544)
      (by linear_combination r2545)
      (by linear_combination r2546)
      (by linear_combination r2547)
      (by linear_combination r2548)
    simpa [shiftOnce50, shifted50] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce50 rho) (shifted50 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce50 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1146) (rho 1145)
      (base rho) (twice rho) (triple rho) (digit50 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1146) (rho 1145)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2377 + rho 2378, (1 : F) + rho 2380 + rho 2381⟩ := by
      constructor
      · refine ⟨(rho 2376 + (rho 1252) - (0)), rho 2377, ?_, ?_, ?_⟩
        · linear_combination r2549
        · linear_combination r2550
        · linear_combination r2551
      · refine ⟨(rho 2379 + (rho 1253) - ((1 : F))), rho 2380, ?_, ?_, ?_⟩
        · linear_combination r2552
        · linear_combination r2553
        · linear_combination r2554
    simpa [base, twice, triple, digit50] using hraw
  have hhigh : rho 1146 =
      Bool.toZMod bits[26]! := by
    simpa only using rho_bit_of_map rho bits hbits 26 (by decide +kernel)
  have hlow : rho 1145 =
      Bool.toZMod bits[25]! := by
    simpa only using rho_bit_of_map rho bits hbits 25 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[26]! bits[25]! (base rho) (twice rho) (triple rho)
    (digit50 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit50 rho) := by
    rw [hdigit]
    cases bits[26]! <;> cases bits[25]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted50 rho) (digit50 rho) (acc51 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2374) (rho 2375) (rho 2377 + rho 2378) ((1 : F) + rho 2380 + rho 2381)
      (rho 2382) (rho 2383) (rho 2384) (rho 2385) (rho 2386) (rho 2387)
      (by simpa [shifted50] using hshift2On)
      (by simpa [digit50] using hdigitOn)
      (by linear_combination r2555)
      (by linear_combination r2556)
      (by linear_combination r2557)
      (by linear_combination r2558)
      (by linear_combination r2559)
      (by linear_combination r2560)
    simpa [shifted50, digit50, acc51] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc51 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted50 rho) (digit50 rho) (acc51 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted50 rho) (digit50 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1146) (rho 1145)
      (base rho) (twice rho) (triple rho) (acc50 rho)
      (acc51 rho) :=
    ⟨shiftOnce50 rho, shifted50 rho, digit50 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window51 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc51 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[24]! (scalarBits rho)[23]!
        (base rho) (twice rho) (triple rho) (acc51 rho)
        (acc52 rho) ∧
      EdwardsBridge.onCurve (acc52 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart32 at p32
  rcases p32 with ⟨_, r2561, r2562, r2563, r2564, r2565, r2566, r2567, r2568, r2569, r2570, r2571, r2572, r2573, r2574, r2575, r2576, r2577, r2578, r2579, r2580, r2581, r2582, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2561 at r2561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2562 at r2562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2563 at r2563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2564 at r2564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2565 at r2565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2566 at r2566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2567 at r2567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2568 at r2568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2569 at r2569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2570 at r2570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2571 at r2571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2572 at r2572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2573 at r2573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2574 at r2574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2575 at r2575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2576 at r2576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2577 at r2577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2578 at r2578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2579 at r2579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2580 at r2580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2581 at r2581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2582 at r2582
  have hshift1 : EdwardsBridge.doubleSpec (acc51 rho) (shiftOnce51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2386) (rho 2387) (rho 2388) (rho 2389) (rho 2390) (rho 2391) (rho 2392)
      (by simpa [acc51] using hacc)
      (by linear_combination r2561)
      (by linear_combination r2562)
      (by linear_combination r2563)
      (by linear_combination r2564)
      (by linear_combination r2565)
    simpa [acc51, shiftOnce51] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc51 rho) (shiftOnce51 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc51 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce51 rho) (shifted51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2391) (rho 2392) (rho 2393) (rho 2394) (rho 2395) (rho 2396) (rho 2397)
      (by simpa [shiftOnce51] using hshift1On)
      (by linear_combination r2566)
      (by linear_combination r2567)
      (by linear_combination r2568)
      (by linear_combination r2569)
      (by linear_combination r2570)
    simpa [shiftOnce51, shifted51] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce51 rho) (shifted51 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce51 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1144) (rho 1143)
      (base rho) (twice rho) (triple rho) (digit51 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1144) (rho 1143)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2399 + rho 2400, (1 : F) + rho 2402 + rho 2403⟩ := by
      constructor
      · refine ⟨(rho 2398 + (rho 1252) - (0)), rho 2399, ?_, ?_, ?_⟩
        · linear_combination r2571
        · linear_combination r2572
        · linear_combination r2573
      · refine ⟨(rho 2401 + (rho 1253) - ((1 : F))), rho 2402, ?_, ?_, ?_⟩
        · linear_combination r2574
        · linear_combination r2575
        · linear_combination r2576
    simpa [base, twice, triple, digit51] using hraw
  have hhigh : rho 1144 =
      Bool.toZMod bits[24]! := by
    simpa only using rho_bit_of_map rho bits hbits 24 (by decide +kernel)
  have hlow : rho 1143 =
      Bool.toZMod bits[23]! := by
    simpa only using rho_bit_of_map rho bits hbits 23 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[24]! bits[23]! (base rho) (twice rho) (triple rho)
    (digit51 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit51 rho) := by
    rw [hdigit]
    cases bits[24]! <;> cases bits[23]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted51 rho) (digit51 rho) (acc52 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2396) (rho 2397) (rho 2399 + rho 2400) ((1 : F) + rho 2402 + rho 2403)
      (rho 2404) (rho 2405) (rho 2406) (rho 2407) (rho 2408) (rho 2409)
      (by simpa [shifted51] using hshift2On)
      (by simpa [digit51] using hdigitOn)
      (by linear_combination r2577)
      (by linear_combination r2578)
      (by linear_combination r2579)
      (by linear_combination r2580)
      (by linear_combination r2581)
      (by linear_combination r2582)
    simpa [shifted51, digit51, acc52] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc52 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted51 rho) (digit51 rho) (acc52 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted51 rho) (digit51 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1144) (rho 1143)
      (base rho) (twice rho) (triple rho) (acc51 rho)
      (acc52 rho) :=
    ⟨shiftOnce51 rho, shifted51 rho, digit51 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window52 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc52 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[22]! (scalarBits rho)[21]!
        (base rho) (twice rho) (triple rho) (acc52 rho)
        (acc53 rho) ∧
      EdwardsBridge.onCurve (acc53 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2583, r2584, r2585, r2586, r2587, r2588, r2589, r2590, r2591, r2592, r2593, r2594, r2595, r2596, r2597, r2598, r2599, r2600, r2601, r2602, r2603, r2604, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2583 at r2583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2584 at r2584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2585 at r2585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2586 at r2586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2587 at r2587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2588 at r2588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2589 at r2589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2590 at r2590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2591 at r2591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2592 at r2592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2593 at r2593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2594 at r2594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2595 at r2595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2596 at r2596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2597 at r2597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2598 at r2598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2599 at r2599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2600 at r2600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2601 at r2601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2602 at r2602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2603 at r2603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2604 at r2604
  have hshift1 : EdwardsBridge.doubleSpec (acc52 rho) (shiftOnce52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2408) (rho 2409) (rho 2410) (rho 2411) (rho 2412) (rho 2413) (rho 2414)
      (by simpa [acc52] using hacc)
      (by linear_combination r2583)
      (by linear_combination r2584)
      (by linear_combination r2585)
      (by linear_combination r2586)
      (by linear_combination r2587)
    simpa [acc52, shiftOnce52] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc52 rho) (shiftOnce52 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc52 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce52 rho) (shifted52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2413) (rho 2414) (rho 2415) (rho 2416) (rho 2417) (rho 2418) (rho 2419)
      (by simpa [shiftOnce52] using hshift1On)
      (by linear_combination r2588)
      (by linear_combination r2589)
      (by linear_combination r2590)
      (by linear_combination r2591)
      (by linear_combination r2592)
    simpa [shiftOnce52, shifted52] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce52 rho) (shifted52 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce52 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1142) (rho 1141)
      (base rho) (twice rho) (triple rho) (digit52 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1142) (rho 1141)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2421 + rho 2422, (1 : F) + rho 2424 + rho 2425⟩ := by
      constructor
      · refine ⟨(rho 2420 + (rho 1252) - (0)), rho 2421, ?_, ?_, ?_⟩
        · linear_combination r2593
        · linear_combination r2594
        · linear_combination r2595
      · refine ⟨(rho 2423 + (rho 1253) - ((1 : F))), rho 2424, ?_, ?_, ?_⟩
        · linear_combination r2596
        · linear_combination r2597
        · linear_combination r2598
    simpa [base, twice, triple, digit52] using hraw
  have hhigh : rho 1142 =
      Bool.toZMod bits[22]! := by
    simpa only using rho_bit_of_map rho bits hbits 22 (by decide +kernel)
  have hlow : rho 1141 =
      Bool.toZMod bits[21]! := by
    simpa only using rho_bit_of_map rho bits hbits 21 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[22]! bits[21]! (base rho) (twice rho) (triple rho)
    (digit52 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit52 rho) := by
    rw [hdigit]
    cases bits[22]! <;> cases bits[21]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted52 rho) (digit52 rho) (acc53 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2418) (rho 2419) (rho 2421 + rho 2422) ((1 : F) + rho 2424 + rho 2425)
      (rho 2426) (rho 2427) (rho 2428) (rho 2429) (rho 2430) (rho 2431)
      (by simpa [shifted52] using hshift2On)
      (by simpa [digit52] using hdigitOn)
      (by linear_combination r2599)
      (by linear_combination r2600)
      (by linear_combination r2601)
      (by linear_combination r2602)
      (by linear_combination r2603)
      (by linear_combination r2604)
    simpa [shifted52, digit52, acc53] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc53 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted52 rho) (digit52 rho) (acc53 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted52 rho) (digit52 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1142) (rho 1141)
      (base rho) (twice rho) (triple rho) (acc52 rho)
      (acc53 rho) :=
    ⟨shiftOnce52 rho, shifted52 rho, digit52 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window53 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc53 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[20]! (scalarBits rho)[19]!
        (base rho) (twice rho) (triple rho) (acc53 rho)
        (acc54 rho) ∧
      EdwardsBridge.onCurve (acc54 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2605, r2606, r2607, r2608, r2609, r2610, r2611, r2612, r2613, r2614, r2615, r2616, r2617, r2618, r2619, r2620, r2621, r2622, r2623, r2624, r2625, r2626, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2605 at r2605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2606 at r2606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2607 at r2607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2608 at r2608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2609 at r2609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2610 at r2610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2611 at r2611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2612 at r2612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2613 at r2613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2614 at r2614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2615 at r2615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2616 at r2616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2617 at r2617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2618 at r2618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2619 at r2619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2620 at r2620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2621 at r2621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2622 at r2622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2623 at r2623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2624 at r2624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2625 at r2625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2626 at r2626
  have hshift1 : EdwardsBridge.doubleSpec (acc53 rho) (shiftOnce53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2430) (rho 2431) (rho 2432) (rho 2433) (rho 2434) (rho 2435) (rho 2436)
      (by simpa [acc53] using hacc)
      (by linear_combination r2605)
      (by linear_combination r2606)
      (by linear_combination r2607)
      (by linear_combination r2608)
      (by linear_combination r2609)
    simpa [acc53, shiftOnce53] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc53 rho) (shiftOnce53 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc53 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce53 rho) (shifted53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2435) (rho 2436) (rho 2437) (rho 2438) (rho 2439) (rho 2440) (rho 2441)
      (by simpa [shiftOnce53] using hshift1On)
      (by linear_combination r2610)
      (by linear_combination r2611)
      (by linear_combination r2612)
      (by linear_combination r2613)
      (by linear_combination r2614)
    simpa [shiftOnce53, shifted53] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce53 rho) (shifted53 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce53 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1140) (rho 1139)
      (base rho) (twice rho) (triple rho) (digit53 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1140) (rho 1139)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2443 + rho 2444, (1 : F) + rho 2446 + rho 2447⟩ := by
      constructor
      · refine ⟨(rho 2442 + (rho 1252) - (0)), rho 2443, ?_, ?_, ?_⟩
        · linear_combination r2615
        · linear_combination r2616
        · linear_combination r2617
      · refine ⟨(rho 2445 + (rho 1253) - ((1 : F))), rho 2446, ?_, ?_, ?_⟩
        · linear_combination r2618
        · linear_combination r2619
        · linear_combination r2620
    simpa [base, twice, triple, digit53] using hraw
  have hhigh : rho 1140 =
      Bool.toZMod bits[20]! := by
    simpa only using rho_bit_of_map rho bits hbits 20 (by decide +kernel)
  have hlow : rho 1139 =
      Bool.toZMod bits[19]! := by
    simpa only using rho_bit_of_map rho bits hbits 19 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[20]! bits[19]! (base rho) (twice rho) (triple rho)
    (digit53 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit53 rho) := by
    rw [hdigit]
    cases bits[20]! <;> cases bits[19]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted53 rho) (digit53 rho) (acc54 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2440) (rho 2441) (rho 2443 + rho 2444) ((1 : F) + rho 2446 + rho 2447)
      (rho 2448) (rho 2449) (rho 2450) (rho 2451) (rho 2452) (rho 2453)
      (by simpa [shifted53] using hshift2On)
      (by simpa [digit53] using hdigitOn)
      (by linear_combination r2621)
      (by linear_combination r2622)
      (by linear_combination r2623)
      (by linear_combination r2624)
      (by linear_combination r2625)
      (by linear_combination r2626)
    simpa [shifted53, digit53, acc54] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc54 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted53 rho) (digit53 rho) (acc54 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted53 rho) (digit53 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1140) (rho 1139)
      (base rho) (twice rho) (triple rho) (acc53 rho)
      (acc54 rho) :=
    ⟨shiftOnce53 rho, shifted53 rho, digit53 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
