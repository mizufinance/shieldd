import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bUserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window72 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc72 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[104]! (scalarBits rho)[103]!
        (base rho) (twice rho) (triple rho) (acc72 rho)
        (acc73 rho) ∧
      EdwardsBridge.onCurve (acc73 rho) := by
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
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3410 at r3410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3411 at r3411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3412 at r3412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3413 at r3413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3414 at r3414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3415 at r3415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3416 at r3416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3417 at r3417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3418 at r3418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3419 at r3419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3420 at r3420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3421 at r3421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3422 at r3422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3423 at r3423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3424 at r3424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3425 at r3425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3426 at r3426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3427 at r3427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3428 at r3428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3429 at r3429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3430 at r3430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3431 at r3431
  have hshift1 : EdwardsBridge.doubleSpec (acc72 rho) (shiftOnce72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3414) (rho 3415) (rho 3416) (rho 3417) (rho 3418) (rho 3419) (rho 3420)
      (by simpa [acc72] using hacc)
      (by linear_combination r3410)
      (by linear_combination r3411)
      (by linear_combination r3412)
      (by linear_combination r3413)
      (by linear_combination r3414)
    simpa [acc72, shiftOnce72] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc72 rho) (shiftOnce72 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc72 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce72 rho) (shifted72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3419) (rho 3420) (rho 3421) (rho 3422) (rho 3423) (rho 3424) (rho 3425)
      (by simpa [shiftOnce72] using hshift1On)
      (by linear_combination r3415)
      (by linear_combination r3416)
      (by linear_combination r3417)
      (by linear_combination r3418)
      (by linear_combination r3419)
    simpa [shiftOnce72, shifted72] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce72 rho) (shifted72 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce72 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 106) (rho 105)
      (base rho) (twice rho) (triple rho) (digit72 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 106) (rho 105)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3427 + rho 3428, (1 : F) + rho 3430 + rho 3431⟩ := by
      constructor
      · refine ⟨(rho 3426 + (rho 1818) - (0)), rho 3427, ?_, ?_, ?_⟩
        · linear_combination r3420
        · linear_combination r3421
        · linear_combination r3422
      · refine ⟨(rho 3429 + (rho 1819) - ((1 : F))), rho 3430, ?_, ?_, ?_⟩
        · linear_combination r3423
        · linear_combination r3424
        · linear_combination r3425
    simpa [base, twice, triple, digit72] using hraw
  have hhigh : rho 106 =
      Bool.toZMod bits[104]! := by
    simpa only using rho_bit_of_map rho bits hbits 104 (by decide +kernel)
  have hlow : rho 105 =
      Bool.toZMod bits[103]! := by
    simpa only using rho_bit_of_map rho bits hbits 103 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[104]! bits[103]! (base rho) (twice rho) (triple rho)
    (digit72 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit72 rho) := by
    rw [hdigit]
    cases bits[104]! <;> cases bits[103]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted72 rho) (digit72 rho) (acc73 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3424) (rho 3425) (rho 3427 + rho 3428) ((1 : F) + rho 3430 + rho 3431)
      (rho 3432) (rho 3433) (rho 3434) (rho 3435) (rho 3436) (rho 3437)
      (by simpa [shifted72] using hshift2On)
      (by simpa [digit72] using hdigitOn)
      (by linear_combination r3426)
      (by linear_combination r3427)
      (by linear_combination r3428)
      (by linear_combination r3429)
      (by linear_combination r3430)
      (by linear_combination r3431)
    simpa [shifted72, digit72, acc73] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc73 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted72 rho) (digit72 rho) (acc73 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted72 rho) (digit72 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 106) (rho 105)
      (base rho) (twice rho) (triple rho) (acc72 rho)
      (acc73 rho) :=
    ⟨shiftOnce72 rho, shifted72 rho, digit72 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window73 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc73 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[102]! (scalarBits rho)[101]!
        (base rho) (twice rho) (triple rho) (acc73 rho)
        (acc74 rho) ∧
      EdwardsBridge.onCurve (acc74 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3432 at r3432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3433 at r3433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3434 at r3434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3435 at r3435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3436 at r3436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3437 at r3437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3438 at r3438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3439 at r3439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3440 at r3440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3441 at r3441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3442 at r3442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3443 at r3443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3444 at r3444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3445 at r3445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3446 at r3446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3447 at r3447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3448 at r3448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3449 at r3449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3450 at r3450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3451 at r3451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3452 at r3452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3453 at r3453
  have hshift1 : EdwardsBridge.doubleSpec (acc73 rho) (shiftOnce73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3436) (rho 3437) (rho 3438) (rho 3439) (rho 3440) (rho 3441) (rho 3442)
      (by simpa [acc73] using hacc)
      (by linear_combination r3432)
      (by linear_combination r3433)
      (by linear_combination r3434)
      (by linear_combination r3435)
      (by linear_combination r3436)
    simpa [acc73, shiftOnce73] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc73 rho) (shiftOnce73 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc73 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce73 rho) (shifted73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3441) (rho 3442) (rho 3443) (rho 3444) (rho 3445) (rho 3446) (rho 3447)
      (by simpa [shiftOnce73] using hshift1On)
      (by linear_combination r3437)
      (by linear_combination r3438)
      (by linear_combination r3439)
      (by linear_combination r3440)
      (by linear_combination r3441)
    simpa [shiftOnce73, shifted73] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce73 rho) (shifted73 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce73 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 104) (rho 103)
      (base rho) (twice rho) (triple rho) (digit73 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 104) (rho 103)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3449 + rho 3450, (1 : F) + rho 3452 + rho 3453⟩ := by
      constructor
      · refine ⟨(rho 3448 + (rho 1818) - (0)), rho 3449, ?_, ?_, ?_⟩
        · linear_combination r3442
        · linear_combination r3443
        · linear_combination r3444
      · refine ⟨(rho 3451 + (rho 1819) - ((1 : F))), rho 3452, ?_, ?_, ?_⟩
        · linear_combination r3445
        · linear_combination r3446
        · linear_combination r3447
    simpa [base, twice, triple, digit73] using hraw
  have hhigh : rho 104 =
      Bool.toZMod bits[102]! := by
    simpa only using rho_bit_of_map rho bits hbits 102 (by decide +kernel)
  have hlow : rho 103 =
      Bool.toZMod bits[101]! := by
    simpa only using rho_bit_of_map rho bits hbits 101 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[102]! bits[101]! (base rho) (twice rho) (triple rho)
    (digit73 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit73 rho) := by
    rw [hdigit]
    cases bits[102]! <;> cases bits[101]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted73 rho) (digit73 rho) (acc74 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3446) (rho 3447) (rho 3449 + rho 3450) ((1 : F) + rho 3452 + rho 3453)
      (rho 3454) (rho 3455) (rho 3456) (rho 3457) (rho 3458) (rho 3459)
      (by simpa [shifted73] using hshift2On)
      (by simpa [digit73] using hdigitOn)
      (by linear_combination r3448)
      (by linear_combination r3449)
      (by linear_combination r3450)
      (by linear_combination r3451)
      (by linear_combination r3452)
      (by linear_combination r3453)
    simpa [shifted73, digit73, acc74] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc74 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted73 rho) (digit73 rho) (acc74 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted73 rho) (digit73 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 104) (rho 103)
      (base rho) (twice rho) (triple rho) (acc73 rho)
      (acc74 rho) :=
    ⟨shiftOnce73 rho, shifted73 rho, digit73 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window74 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc74 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[100]! (scalarBits rho)[99]!
        (base rho) (twice rho) (triple rho) (acc74 rho)
        (acc75 rho) ∧
      EdwardsBridge.onCurve (acc75 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3454 at r3454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3455 at r3455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3456 at r3456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3457 at r3457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3458 at r3458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3459 at r3459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3460 at r3460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3461 at r3461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3462 at r3462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3463 at r3463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3464 at r3464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3465 at r3465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3466 at r3466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3467 at r3467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3468 at r3468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3469 at r3469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3470 at r3470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3471 at r3471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3472 at r3472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3473 at r3473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3474 at r3474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3475 at r3475
  have hshift1 : EdwardsBridge.doubleSpec (acc74 rho) (shiftOnce74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3458) (rho 3459) (rho 3460) (rho 3461) (rho 3462) (rho 3463) (rho 3464)
      (by simpa [acc74] using hacc)
      (by linear_combination r3454)
      (by linear_combination r3455)
      (by linear_combination r3456)
      (by linear_combination r3457)
      (by linear_combination r3458)
    simpa [acc74, shiftOnce74] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc74 rho) (shiftOnce74 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc74 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce74 rho) (shifted74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3463) (rho 3464) (rho 3465) (rho 3466) (rho 3467) (rho 3468) (rho 3469)
      (by simpa [shiftOnce74] using hshift1On)
      (by linear_combination r3459)
      (by linear_combination r3460)
      (by linear_combination r3461)
      (by linear_combination r3462)
      (by linear_combination r3463)
    simpa [shiftOnce74, shifted74] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce74 rho) (shifted74 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce74 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 102) (rho 101)
      (base rho) (twice rho) (triple rho) (digit74 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 102) (rho 101)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3471 + rho 3472, (1 : F) + rho 3474 + rho 3475⟩ := by
      constructor
      · refine ⟨(rho 3470 + (rho 1818) - (0)), rho 3471, ?_, ?_, ?_⟩
        · linear_combination r3464
        · linear_combination r3465
        · linear_combination r3466
      · refine ⟨(rho 3473 + (rho 1819) - ((1 : F))), rho 3474, ?_, ?_, ?_⟩
        · linear_combination r3467
        · linear_combination r3468
        · linear_combination r3469
    simpa [base, twice, triple, digit74] using hraw
  have hhigh : rho 102 =
      Bool.toZMod bits[100]! := by
    simpa only using rho_bit_of_map rho bits hbits 100 (by decide +kernel)
  have hlow : rho 101 =
      Bool.toZMod bits[99]! := by
    simpa only using rho_bit_of_map rho bits hbits 99 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[100]! bits[99]! (base rho) (twice rho) (triple rho)
    (digit74 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit74 rho) := by
    rw [hdigit]
    cases bits[100]! <;> cases bits[99]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted74 rho) (digit74 rho) (acc75 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3468) (rho 3469) (rho 3471 + rho 3472) ((1 : F) + rho 3474 + rho 3475)
      (rho 3476) (rho 3477) (rho 3478) (rho 3479) (rho 3480) (rho 3481)
      (by simpa [shifted74] using hshift2On)
      (by simpa [digit74] using hdigitOn)
      (by linear_combination r3470)
      (by linear_combination r3471)
      (by linear_combination r3472)
      (by linear_combination r3473)
      (by linear_combination r3474)
      (by linear_combination r3475)
    simpa [shifted74, digit74, acc75] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc75 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted74 rho) (digit74 rho) (acc75 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted74 rho) (digit74 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 102) (rho 101)
      (base rho) (twice rho) (triple rho) (acc74 rho)
      (acc75 rho) :=
    ⟨shiftOnce74 rho, shifted74 rho, digit74 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window75 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc75 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[98]! (scalarBits rho)[97]!
        (base rho) (twice rho) (triple rho) (acc75 rho)
        (acc76 rho) ∧
      EdwardsBridge.onCurve (acc76 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3476 at r3476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3477 at r3477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3478 at r3478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3479 at r3479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3480 at r3480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3481 at r3481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3482 at r3482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3483 at r3483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3484 at r3484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3485 at r3485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3486 at r3486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3487 at r3487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3488 at r3488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3489 at r3489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3490 at r3490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3491 at r3491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3492 at r3492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3493 at r3493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3494 at r3494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3495 at r3495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3496 at r3496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3497 at r3497
  have hshift1 : EdwardsBridge.doubleSpec (acc75 rho) (shiftOnce75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3480) (rho 3481) (rho 3482) (rho 3483) (rho 3484) (rho 3485) (rho 3486)
      (by simpa [acc75] using hacc)
      (by linear_combination r3476)
      (by linear_combination r3477)
      (by linear_combination r3478)
      (by linear_combination r3479)
      (by linear_combination r3480)
    simpa [acc75, shiftOnce75] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc75 rho) (shiftOnce75 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc75 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce75 rho) (shifted75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3485) (rho 3486) (rho 3487) (rho 3488) (rho 3489) (rho 3490) (rho 3491)
      (by simpa [shiftOnce75] using hshift1On)
      (by linear_combination r3481)
      (by linear_combination r3482)
      (by linear_combination r3483)
      (by linear_combination r3484)
      (by linear_combination r3485)
    simpa [shiftOnce75, shifted75] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce75 rho) (shifted75 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce75 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 100) (rho 99)
      (base rho) (twice rho) (triple rho) (digit75 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 100) (rho 99)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3493 + rho 3494, (1 : F) + rho 3496 + rho 3497⟩ := by
      constructor
      · refine ⟨(rho 3492 + (rho 1818) - (0)), rho 3493, ?_, ?_, ?_⟩
        · linear_combination r3486
        · linear_combination r3487
        · linear_combination r3488
      · refine ⟨(rho 3495 + (rho 1819) - ((1 : F))), rho 3496, ?_, ?_, ?_⟩
        · linear_combination r3489
        · linear_combination r3490
        · linear_combination r3491
    simpa [base, twice, triple, digit75] using hraw
  have hhigh : rho 100 =
      Bool.toZMod bits[98]! := by
    simpa only using rho_bit_of_map rho bits hbits 98 (by decide +kernel)
  have hlow : rho 99 =
      Bool.toZMod bits[97]! := by
    simpa only using rho_bit_of_map rho bits hbits 97 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[98]! bits[97]! (base rho) (twice rho) (triple rho)
    (digit75 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit75 rho) := by
    rw [hdigit]
    cases bits[98]! <;> cases bits[97]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted75 rho) (digit75 rho) (acc76 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3490) (rho 3491) (rho 3493 + rho 3494) ((1 : F) + rho 3496 + rho 3497)
      (rho 3498) (rho 3499) (rho 3500) (rho 3501) (rho 3502) (rho 3503)
      (by simpa [shifted75] using hshift2On)
      (by simpa [digit75] using hdigitOn)
      (by linear_combination r3492)
      (by linear_combination r3493)
      (by linear_combination r3494)
      (by linear_combination r3495)
      (by linear_combination r3496)
      (by linear_combination r3497)
    simpa [shifted75, digit75, acc76] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc76 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted75 rho) (digit75 rho) (acc76 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted75 rho) (digit75 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 100) (rho 99)
      (base rho) (twice rho) (triple rho) (acc75 rho)
      (acc76 rho) :=
    ⟨shiftOnce75 rho, shifted75 rho, digit75 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window76 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc76 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[96]! (scalarBits rho)[95]!
        (base rho) (twice rho) (triple rho) (acc76 rho)
        (acc77 rho) ∧
      EdwardsBridge.onCurve (acc77 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3498 at r3498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3499 at r3499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3500 at r3500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3501 at r3501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3502 at r3502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3503 at r3503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3504 at r3504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3505 at r3505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3506 at r3506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3507 at r3507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3508 at r3508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3509 at r3509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3510 at r3510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3511 at r3511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3512 at r3512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3513 at r3513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3514 at r3514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3515 at r3515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3516 at r3516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3517 at r3517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3518 at r3518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3519 at r3519
  have hshift1 : EdwardsBridge.doubleSpec (acc76 rho) (shiftOnce76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3502) (rho 3503) (rho 3504) (rho 3505) (rho 3506) (rho 3507) (rho 3508)
      (by simpa [acc76] using hacc)
      (by linear_combination r3498)
      (by linear_combination r3499)
      (by linear_combination r3500)
      (by linear_combination r3501)
      (by linear_combination r3502)
    simpa [acc76, shiftOnce76] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc76 rho) (shiftOnce76 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc76 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce76 rho) (shifted76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3507) (rho 3508) (rho 3509) (rho 3510) (rho 3511) (rho 3512) (rho 3513)
      (by simpa [shiftOnce76] using hshift1On)
      (by linear_combination r3503)
      (by linear_combination r3504)
      (by linear_combination r3505)
      (by linear_combination r3506)
      (by linear_combination r3507)
    simpa [shiftOnce76, shifted76] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce76 rho) (shifted76 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce76 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 98) (rho 97)
      (base rho) (twice rho) (triple rho) (digit76 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 98) (rho 97)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3515 + rho 3516, (1 : F) + rho 3518 + rho 3519⟩ := by
      constructor
      · refine ⟨(rho 3514 + (rho 1818) - (0)), rho 3515, ?_, ?_, ?_⟩
        · linear_combination r3508
        · linear_combination r3509
        · linear_combination r3510
      · refine ⟨(rho 3517 + (rho 1819) - ((1 : F))), rho 3518, ?_, ?_, ?_⟩
        · linear_combination r3511
        · linear_combination r3512
        · linear_combination r3513
    simpa [base, twice, triple, digit76] using hraw
  have hhigh : rho 98 =
      Bool.toZMod bits[96]! := by
    simpa only using rho_bit_of_map rho bits hbits 96 (by decide +kernel)
  have hlow : rho 97 =
      Bool.toZMod bits[95]! := by
    simpa only using rho_bit_of_map rho bits hbits 95 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[96]! bits[95]! (base rho) (twice rho) (triple rho)
    (digit76 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit76 rho) := by
    rw [hdigit]
    cases bits[96]! <;> cases bits[95]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted76 rho) (digit76 rho) (acc77 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3512) (rho 3513) (rho 3515 + rho 3516) ((1 : F) + rho 3518 + rho 3519)
      (rho 3520) (rho 3521) (rho 3522) (rho 3523) (rho 3524) (rho 3525)
      (by simpa [shifted76] using hshift2On)
      (by simpa [digit76] using hdigitOn)
      (by linear_combination r3514)
      (by linear_combination r3515)
      (by linear_combination r3516)
      (by linear_combination r3517)
      (by linear_combination r3518)
      (by linear_combination r3519)
    simpa [shifted76, digit76, acc77] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc77 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted76 rho) (digit76 rho) (acc77 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted76 rho) (digit76 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 98) (rho 97)
      (base rho) (twice rho) (triple rho) (acc76 rho)
      (acc77 rho) :=
    ⟨shiftOnce76 rho, shifted76 rho, digit76 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window77 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc77 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[94]! (scalarBits rho)[93]!
        (base rho) (twice rho) (triple rho) (acc77 rho)
        (acc78 rho) ∧
      EdwardsBridge.onCurve (acc78 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3520 at r3520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3521 at r3521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3522 at r3522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3523 at r3523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3524 at r3524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3525 at r3525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3526 at r3526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3527 at r3527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3528 at r3528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3529 at r3529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3530 at r3530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3531 at r3531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3532 at r3532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3533 at r3533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3534 at r3534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3535 at r3535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3536 at r3536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3537 at r3537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3538 at r3538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3539 at r3539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3540 at r3540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3541 at r3541
  have hshift1 : EdwardsBridge.doubleSpec (acc77 rho) (shiftOnce77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3524) (rho 3525) (rho 3526) (rho 3527) (rho 3528) (rho 3529) (rho 3530)
      (by simpa [acc77] using hacc)
      (by linear_combination r3520)
      (by linear_combination r3521)
      (by linear_combination r3522)
      (by linear_combination r3523)
      (by linear_combination r3524)
    simpa [acc77, shiftOnce77] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc77 rho) (shiftOnce77 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc77 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce77 rho) (shifted77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3529) (rho 3530) (rho 3531) (rho 3532) (rho 3533) (rho 3534) (rho 3535)
      (by simpa [shiftOnce77] using hshift1On)
      (by linear_combination r3525)
      (by linear_combination r3526)
      (by linear_combination r3527)
      (by linear_combination r3528)
      (by linear_combination r3529)
    simpa [shiftOnce77, shifted77] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce77 rho) (shifted77 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce77 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 96) (rho 95)
      (base rho) (twice rho) (triple rho) (digit77 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 96) (rho 95)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3537 + rho 3538, (1 : F) + rho 3540 + rho 3541⟩ := by
      constructor
      · refine ⟨(rho 3536 + (rho 1818) - (0)), rho 3537, ?_, ?_, ?_⟩
        · linear_combination r3530
        · linear_combination r3531
        · linear_combination r3532
      · refine ⟨(rho 3539 + (rho 1819) - ((1 : F))), rho 3540, ?_, ?_, ?_⟩
        · linear_combination r3533
        · linear_combination r3534
        · linear_combination r3535
    simpa [base, twice, triple, digit77] using hraw
  have hhigh : rho 96 =
      Bool.toZMod bits[94]! := by
    simpa only using rho_bit_of_map rho bits hbits 94 (by decide +kernel)
  have hlow : rho 95 =
      Bool.toZMod bits[93]! := by
    simpa only using rho_bit_of_map rho bits hbits 93 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[94]! bits[93]! (base rho) (twice rho) (triple rho)
    (digit77 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit77 rho) := by
    rw [hdigit]
    cases bits[94]! <;> cases bits[93]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted77 rho) (digit77 rho) (acc78 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3534) (rho 3535) (rho 3537 + rho 3538) ((1 : F) + rho 3540 + rho 3541)
      (rho 3542) (rho 3543) (rho 3544) (rho 3545) (rho 3546) (rho 3547)
      (by simpa [shifted77] using hshift2On)
      (by simpa [digit77] using hdigitOn)
      (by linear_combination r3536)
      (by linear_combination r3537)
      (by linear_combination r3538)
      (by linear_combination r3539)
      (by linear_combination r3540)
      (by linear_combination r3541)
    simpa [shifted77, digit77, acc78] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc78 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted77 rho) (digit77 rho) (acc78 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted77 rho) (digit77 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 96) (rho 95)
      (base rho) (twice rho) (triple rho) (acc77 rho)
      (acc78 rho) :=
    ⟨shiftOnce77 rho, shifted77 rho, digit77 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport
