import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window72 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3409 at r3409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3410 at r3410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3411 at r3411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3412 at r3412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3413 at r3413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3414 at r3414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3415 at r3415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3416 at r3416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3417 at r3417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3418 at r3418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3419 at r3419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3420 at r3420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3421 at r3421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3422 at r3422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3423 at r3423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3424 at r3424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3425 at r3425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3426 at r3426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3427 at r3427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3428 at r3428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3429 at r3429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3430 at r3430
  have hshift1 : EdwardsBridge.doubleSpec (acc72 rho) (shiftOnce72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3413) (rho 3414) (rho 3415) (rho 3416) (rho 3417) (rho 3418) (rho 3419)
      (by simpa [acc72] using hacc)
      (by linear_combination r3409)
      (by linear_combination r3410)
      (by linear_combination r3411)
      (by linear_combination r3412)
      (by linear_combination r3413)
    simpa [acc72, shiftOnce72] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc72 rho) (shiftOnce72 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc72 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce72 rho) (shifted72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3418) (rho 3419) (rho 3420) (rho 3421) (rho 3422) (rho 3423) (rho 3424)
      (by simpa [shiftOnce72] using hshift1On)
      (by linear_combination r3414)
      (by linear_combination r3415)
      (by linear_combination r3416)
      (by linear_combination r3417)
      (by linear_combination r3418)
    simpa [shiftOnce72, shifted72] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce72 rho) (shifted72 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce72 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 105) (rho 104)
      (base rho) (twice rho) (triple rho) (digit72 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 105) (rho 104)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3426 + rho 3427, (1 : F) + rho 3429 + rho 3430⟩ := by
      constructor
      · refine ⟨(rho 3425 + (rho 1817) - (0)), rho 3426, ?_, ?_, ?_⟩
        · linear_combination r3419
        · linear_combination r3420
        · linear_combination r3421
      · refine ⟨(rho 3428 + (rho 1818) - ((1 : F))), rho 3429, ?_, ?_, ?_⟩
        · linear_combination r3422
        · linear_combination r3423
        · linear_combination r3424
    simpa [base, twice, triple, digit72] using hraw
  have hhigh : rho 105 =
      Bool.toZMod bits[104]! := by
    simpa only using rho_bit_of_map rho bits hbits 104 (by decide +kernel)
  have hlow : rho 104 =
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
      (rho 3423) (rho 3424) (rho 3426 + rho 3427) ((1 : F) + rho 3429 + rho 3430)
      (rho 3431) (rho 3432) (rho 3433) (rho 3434) (rho 3435) (rho 3436)
      (by simpa [shifted72] using hshift2On)
      (by simpa [digit72] using hdigitOn)
      (by linear_combination r3425)
      (by linear_combination r3426)
      (by linear_combination r3427)
      (by linear_combination r3428)
      (by linear_combination r3429)
      (by linear_combination r3430)
    simpa [shifted72, digit72, acc73] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc73 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted72 rho) (digit72 rho) (acc73 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted72 rho) (digit72 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 105) (rho 104)
      (base rho) (twice rho) (triple rho) (acc72 rho)
      (acc73 rho) :=
    ⟨shiftOnce72 rho, shifted72 rho, digit72 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window73 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3431 at r3431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3432 at r3432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3433 at r3433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3434 at r3434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3435 at r3435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3436 at r3436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3437 at r3437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3438 at r3438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3439 at r3439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3440 at r3440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3441 at r3441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3442 at r3442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3443 at r3443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3444 at r3444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3445 at r3445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3446 at r3446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3447 at r3447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3448 at r3448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3449 at r3449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3450 at r3450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3451 at r3451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3452 at r3452
  have hshift1 : EdwardsBridge.doubleSpec (acc73 rho) (shiftOnce73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3435) (rho 3436) (rho 3437) (rho 3438) (rho 3439) (rho 3440) (rho 3441)
      (by simpa [acc73] using hacc)
      (by linear_combination r3431)
      (by linear_combination r3432)
      (by linear_combination r3433)
      (by linear_combination r3434)
      (by linear_combination r3435)
    simpa [acc73, shiftOnce73] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc73 rho) (shiftOnce73 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc73 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce73 rho) (shifted73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3440) (rho 3441) (rho 3442) (rho 3443) (rho 3444) (rho 3445) (rho 3446)
      (by simpa [shiftOnce73] using hshift1On)
      (by linear_combination r3436)
      (by linear_combination r3437)
      (by linear_combination r3438)
      (by linear_combination r3439)
      (by linear_combination r3440)
    simpa [shiftOnce73, shifted73] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce73 rho) (shifted73 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce73 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 103) (rho 102)
      (base rho) (twice rho) (triple rho) (digit73 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 103) (rho 102)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3448 + rho 3449, (1 : F) + rho 3451 + rho 3452⟩ := by
      constructor
      · refine ⟨(rho 3447 + (rho 1817) - (0)), rho 3448, ?_, ?_, ?_⟩
        · linear_combination r3441
        · linear_combination r3442
        · linear_combination r3443
      · refine ⟨(rho 3450 + (rho 1818) - ((1 : F))), rho 3451, ?_, ?_, ?_⟩
        · linear_combination r3444
        · linear_combination r3445
        · linear_combination r3446
    simpa [base, twice, triple, digit73] using hraw
  have hhigh : rho 103 =
      Bool.toZMod bits[102]! := by
    simpa only using rho_bit_of_map rho bits hbits 102 (by decide +kernel)
  have hlow : rho 102 =
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
      (rho 3445) (rho 3446) (rho 3448 + rho 3449) ((1 : F) + rho 3451 + rho 3452)
      (rho 3453) (rho 3454) (rho 3455) (rho 3456) (rho 3457) (rho 3458)
      (by simpa [shifted73] using hshift2On)
      (by simpa [digit73] using hdigitOn)
      (by linear_combination r3447)
      (by linear_combination r3448)
      (by linear_combination r3449)
      (by linear_combination r3450)
      (by linear_combination r3451)
      (by linear_combination r3452)
    simpa [shifted73, digit73, acc74] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc74 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted73 rho) (digit73 rho) (acc74 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted73 rho) (digit73 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 103) (rho 102)
      (base rho) (twice rho) (triple rho) (acc73 rho)
      (acc74 rho) :=
    ⟨shiftOnce73 rho, shifted73 rho, digit73 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window74 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3453 at r3453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3454 at r3454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3455 at r3455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3456 at r3456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3457 at r3457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3458 at r3458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3459 at r3459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3460 at r3460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3461 at r3461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3462 at r3462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3463 at r3463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3464 at r3464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3465 at r3465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3466 at r3466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3467 at r3467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3468 at r3468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3469 at r3469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3470 at r3470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3471 at r3471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3472 at r3472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3473 at r3473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3474 at r3474
  have hshift1 : EdwardsBridge.doubleSpec (acc74 rho) (shiftOnce74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3457) (rho 3458) (rho 3459) (rho 3460) (rho 3461) (rho 3462) (rho 3463)
      (by simpa [acc74] using hacc)
      (by linear_combination r3453)
      (by linear_combination r3454)
      (by linear_combination r3455)
      (by linear_combination r3456)
      (by linear_combination r3457)
    simpa [acc74, shiftOnce74] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc74 rho) (shiftOnce74 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc74 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce74 rho) (shifted74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3462) (rho 3463) (rho 3464) (rho 3465) (rho 3466) (rho 3467) (rho 3468)
      (by simpa [shiftOnce74] using hshift1On)
      (by linear_combination r3458)
      (by linear_combination r3459)
      (by linear_combination r3460)
      (by linear_combination r3461)
      (by linear_combination r3462)
    simpa [shiftOnce74, shifted74] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce74 rho) (shifted74 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce74 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 101) (rho 100)
      (base rho) (twice rho) (triple rho) (digit74 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 101) (rho 100)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3470 + rho 3471, (1 : F) + rho 3473 + rho 3474⟩ := by
      constructor
      · refine ⟨(rho 3469 + (rho 1817) - (0)), rho 3470, ?_, ?_, ?_⟩
        · linear_combination r3463
        · linear_combination r3464
        · linear_combination r3465
      · refine ⟨(rho 3472 + (rho 1818) - ((1 : F))), rho 3473, ?_, ?_, ?_⟩
        · linear_combination r3466
        · linear_combination r3467
        · linear_combination r3468
    simpa [base, twice, triple, digit74] using hraw
  have hhigh : rho 101 =
      Bool.toZMod bits[100]! := by
    simpa only using rho_bit_of_map rho bits hbits 100 (by decide +kernel)
  have hlow : rho 100 =
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
      (rho 3467) (rho 3468) (rho 3470 + rho 3471) ((1 : F) + rho 3473 + rho 3474)
      (rho 3475) (rho 3476) (rho 3477) (rho 3478) (rho 3479) (rho 3480)
      (by simpa [shifted74] using hshift2On)
      (by simpa [digit74] using hdigitOn)
      (by linear_combination r3469)
      (by linear_combination r3470)
      (by linear_combination r3471)
      (by linear_combination r3472)
      (by linear_combination r3473)
      (by linear_combination r3474)
    simpa [shifted74, digit74, acc75] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc75 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted74 rho) (digit74 rho) (acc75 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted74 rho) (digit74 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 101) (rho 100)
      (base rho) (twice rho) (triple rho) (acc74 rho)
      (acc75 rho) :=
    ⟨shiftOnce74 rho, shifted74 rho, digit74 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window75 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3475 at r3475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3476 at r3476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3477 at r3477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3478 at r3478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3479 at r3479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3480 at r3480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3481 at r3481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3482 at r3482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3483 at r3483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3484 at r3484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3485 at r3485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3486 at r3486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3487 at r3487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3488 at r3488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3489 at r3489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3490 at r3490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3491 at r3491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3492 at r3492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3493 at r3493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3494 at r3494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3495 at r3495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3496 at r3496
  have hshift1 : EdwardsBridge.doubleSpec (acc75 rho) (shiftOnce75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3479) (rho 3480) (rho 3481) (rho 3482) (rho 3483) (rho 3484) (rho 3485)
      (by simpa [acc75] using hacc)
      (by linear_combination r3475)
      (by linear_combination r3476)
      (by linear_combination r3477)
      (by linear_combination r3478)
      (by linear_combination r3479)
    simpa [acc75, shiftOnce75] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc75 rho) (shiftOnce75 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc75 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce75 rho) (shifted75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3484) (rho 3485) (rho 3486) (rho 3487) (rho 3488) (rho 3489) (rho 3490)
      (by simpa [shiftOnce75] using hshift1On)
      (by linear_combination r3480)
      (by linear_combination r3481)
      (by linear_combination r3482)
      (by linear_combination r3483)
      (by linear_combination r3484)
    simpa [shiftOnce75, shifted75] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce75 rho) (shifted75 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce75 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 99) (rho 98)
      (base rho) (twice rho) (triple rho) (digit75 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 99) (rho 98)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3492 + rho 3493, (1 : F) + rho 3495 + rho 3496⟩ := by
      constructor
      · refine ⟨(rho 3491 + (rho 1817) - (0)), rho 3492, ?_, ?_, ?_⟩
        · linear_combination r3485
        · linear_combination r3486
        · linear_combination r3487
      · refine ⟨(rho 3494 + (rho 1818) - ((1 : F))), rho 3495, ?_, ?_, ?_⟩
        · linear_combination r3488
        · linear_combination r3489
        · linear_combination r3490
    simpa [base, twice, triple, digit75] using hraw
  have hhigh : rho 99 =
      Bool.toZMod bits[98]! := by
    simpa only using rho_bit_of_map rho bits hbits 98 (by decide +kernel)
  have hlow : rho 98 =
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
      (rho 3489) (rho 3490) (rho 3492 + rho 3493) ((1 : F) + rho 3495 + rho 3496)
      (rho 3497) (rho 3498) (rho 3499) (rho 3500) (rho 3501) (rho 3502)
      (by simpa [shifted75] using hshift2On)
      (by simpa [digit75] using hdigitOn)
      (by linear_combination r3491)
      (by linear_combination r3492)
      (by linear_combination r3493)
      (by linear_combination r3494)
      (by linear_combination r3495)
      (by linear_combination r3496)
    simpa [shifted75, digit75, acc76] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc76 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted75 rho) (digit75 rho) (acc76 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted75 rho) (digit75 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 99) (rho 98)
      (base rho) (twice rho) (triple rho) (acc75 rho)
      (acc76 rho) :=
    ⟨shiftOnce75 rho, shifted75 rho, digit75 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window76 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3497 at r3497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3498 at r3498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3499 at r3499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3500 at r3500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3501 at r3501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3502 at r3502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3503 at r3503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3504 at r3504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3505 at r3505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3506 at r3506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3507 at r3507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3508 at r3508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3509 at r3509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3510 at r3510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3511 at r3511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3512 at r3512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3513 at r3513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3514 at r3514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3515 at r3515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3516 at r3516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3517 at r3517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3518 at r3518
  have hshift1 : EdwardsBridge.doubleSpec (acc76 rho) (shiftOnce76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3501) (rho 3502) (rho 3503) (rho 3504) (rho 3505) (rho 3506) (rho 3507)
      (by simpa [acc76] using hacc)
      (by linear_combination r3497)
      (by linear_combination r3498)
      (by linear_combination r3499)
      (by linear_combination r3500)
      (by linear_combination r3501)
    simpa [acc76, shiftOnce76] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc76 rho) (shiftOnce76 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc76 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce76 rho) (shifted76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3506) (rho 3507) (rho 3508) (rho 3509) (rho 3510) (rho 3511) (rho 3512)
      (by simpa [shiftOnce76] using hshift1On)
      (by linear_combination r3502)
      (by linear_combination r3503)
      (by linear_combination r3504)
      (by linear_combination r3505)
      (by linear_combination r3506)
    simpa [shiftOnce76, shifted76] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce76 rho) (shifted76 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce76 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 97) (rho 96)
      (base rho) (twice rho) (triple rho) (digit76 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 97) (rho 96)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3514 + rho 3515, (1 : F) + rho 3517 + rho 3518⟩ := by
      constructor
      · refine ⟨(rho 3513 + (rho 1817) - (0)), rho 3514, ?_, ?_, ?_⟩
        · linear_combination r3507
        · linear_combination r3508
        · linear_combination r3509
      · refine ⟨(rho 3516 + (rho 1818) - ((1 : F))), rho 3517, ?_, ?_, ?_⟩
        · linear_combination r3510
        · linear_combination r3511
        · linear_combination r3512
    simpa [base, twice, triple, digit76] using hraw
  have hhigh : rho 97 =
      Bool.toZMod bits[96]! := by
    simpa only using rho_bit_of_map rho bits hbits 96 (by decide +kernel)
  have hlow : rho 96 =
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
      (rho 3511) (rho 3512) (rho 3514 + rho 3515) ((1 : F) + rho 3517 + rho 3518)
      (rho 3519) (rho 3520) (rho 3521) (rho 3522) (rho 3523) (rho 3524)
      (by simpa [shifted76] using hshift2On)
      (by simpa [digit76] using hdigitOn)
      (by linear_combination r3513)
      (by linear_combination r3514)
      (by linear_combination r3515)
      (by linear_combination r3516)
      (by linear_combination r3517)
      (by linear_combination r3518)
    simpa [shifted76, digit76, acc77] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc77 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted76 rho) (digit76 rho) (acc77 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted76 rho) (digit76 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 97) (rho 96)
      (base rho) (twice rho) (triple rho) (acc76 rho)
      (acc77 rho) :=
    ⟨shiftOnce76 rho, shifted76 rho, digit76 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window77 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3519 at r3519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3520 at r3520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3521 at r3521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3522 at r3522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3523 at r3523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3524 at r3524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3525 at r3525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3526 at r3526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3527 at r3527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3528 at r3528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3529 at r3529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3530 at r3530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3531 at r3531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3532 at r3532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3533 at r3533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3534 at r3534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3535 at r3535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3536 at r3536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3537 at r3537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3538 at r3538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3539 at r3539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3540 at r3540
  have hshift1 : EdwardsBridge.doubleSpec (acc77 rho) (shiftOnce77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3523) (rho 3524) (rho 3525) (rho 3526) (rho 3527) (rho 3528) (rho 3529)
      (by simpa [acc77] using hacc)
      (by linear_combination r3519)
      (by linear_combination r3520)
      (by linear_combination r3521)
      (by linear_combination r3522)
      (by linear_combination r3523)
    simpa [acc77, shiftOnce77] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc77 rho) (shiftOnce77 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc77 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce77 rho) (shifted77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3528) (rho 3529) (rho 3530) (rho 3531) (rho 3532) (rho 3533) (rho 3534)
      (by simpa [shiftOnce77] using hshift1On)
      (by linear_combination r3524)
      (by linear_combination r3525)
      (by linear_combination r3526)
      (by linear_combination r3527)
      (by linear_combination r3528)
    simpa [shiftOnce77, shifted77] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce77 rho) (shifted77 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce77 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 95) (rho 94)
      (base rho) (twice rho) (triple rho) (digit77 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 95) (rho 94)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3536 + rho 3537, (1 : F) + rho 3539 + rho 3540⟩ := by
      constructor
      · refine ⟨(rho 3535 + (rho 1817) - (0)), rho 3536, ?_, ?_, ?_⟩
        · linear_combination r3529
        · linear_combination r3530
        · linear_combination r3531
      · refine ⟨(rho 3538 + (rho 1818) - ((1 : F))), rho 3539, ?_, ?_, ?_⟩
        · linear_combination r3532
        · linear_combination r3533
        · linear_combination r3534
    simpa [base, twice, triple, digit77] using hraw
  have hhigh : rho 95 =
      Bool.toZMod bits[94]! := by
    simpa only using rho_bit_of_map rho bits hbits 94 (by decide +kernel)
  have hlow : rho 94 =
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
      (rho 3533) (rho 3534) (rho 3536 + rho 3537) ((1 : F) + rho 3539 + rho 3540)
      (rho 3541) (rho 3542) (rho 3543) (rho 3544) (rho 3545) (rho 3546)
      (by simpa [shifted77] using hshift2On)
      (by simpa [digit77] using hdigitOn)
      (by linear_combination r3535)
      (by linear_combination r3536)
      (by linear_combination r3537)
      (by linear_combination r3538)
      (by linear_combination r3539)
      (by linear_combination r3540)
    simpa [shifted77, digit77, acc78] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc78 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted77 rho) (digit77 rho) (acc78 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted77 rho) (digit77 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 95) (rho 94)
      (base rho) (twice rho) (triple rho) (acc77 rho)
      (acc78 rho) :=
    ⟨shiftOnce77 rho, shifted77 rho, digit77 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
