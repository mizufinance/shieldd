import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window84 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc84 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[80]! (scalarBits rho)[79]!
        (base rho) (twice rho) (triple rho) (acc84 rho)
        (acc85 rho) ∧
      EdwardsBridge.onCurve (acc85 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p80, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart80 at p80
  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6431, r6432, r6433, r6434, r6435, r6436, r6437, r6438, r6439, r6440, r6441, r6442, r6443, r6444, r6445, r6446, r6447, r6448, r6449, r6450, r6451, r6452, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6431 at r6431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6432 at r6432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6433 at r6433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6434 at r6434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6435 at r6435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6436 at r6436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6437 at r6437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6438 at r6438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6439 at r6439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6440 at r6440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6441 at r6441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6442 at r6442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6443 at r6443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6444 at r6444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6445 at r6445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6446 at r6446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6447 at r6447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6448 at r6448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6449 at r6449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6450 at r6450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6451 at r6451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6452 at r6452
  have hshift1 : EdwardsBridge.doubleSpec (acc84 rho) (shiftOnce84 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6437) (rho 6438) (rho 6439) (rho 6440) (rho 6441) (rho 6442) (rho 6443)
      (by simpa [acc84] using hacc)
      (by linear_combination r6431)
      (by linear_combination r6432)
      (by linear_combination r6433)
      (by linear_combination r6434)
      (by linear_combination r6435)
    simpa [acc84, shiftOnce84] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce84 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc84 rho) (shiftOnce84 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc84 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce84 rho) (shifted84 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6442) (rho 6443) (rho 6444) (rho 6445) (rho 6446) (rho 6447) (rho 6448)
      (by simpa [shiftOnce84] using hshift1On)
      (by linear_combination r6436)
      (by linear_combination r6437)
      (by linear_combination r6438)
      (by linear_combination r6439)
      (by linear_combination r6440)
    simpa [shiftOnce84, shifted84] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted84 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce84 rho) (shifted84 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce84 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 81) (rho 80)
      (base rho) (twice rho) (triple rho) (digit84 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 81) (rho 80)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6450 + rho 6451, (1 : F) + rho 6453 + rho 6454⟩ := by
      constructor
      · refine ⟨(rho 6449 + (rho 4577) - (0)), rho 6450, ?_, ?_, ?_⟩
        · linear_combination r6441 - (rho 80) * order_cast_zero
        · linear_combination r6442
        · linear_combination r6443
      · refine ⟨(rho 6452 + (rho 4578) - ((1 : F))), rho 6453, ?_, ?_, ?_⟩
        · linear_combination r6444 - (rho 80) * order_cast_zero
        · linear_combination r6445
        · linear_combination r6446
    simpa [base, twice, triple, digit84] using hraw
  have hhigh : rho 81 =
      Bool.toZMod bits[80]! := by
    simpa only using rho_bit_of_map rho bits hbits 80 (by decide +kernel)
  have hlow : rho 80 =
      Bool.toZMod bits[79]! := by
    simpa only using rho_bit_of_map rho bits hbits 79 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[80]! bits[79]! (base rho) (twice rho) (triple rho)
    (digit84 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit84 rho) := by
    rw [hdigit]
    cases bits[80]! <;> cases bits[79]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted84 rho) (digit84 rho) (acc85 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6447) (rho 6448) (rho 6450 + rho 6451) ((1 : F) + rho 6453 + rho 6454)
      (rho 6455) (rho 6456) (rho 6457) (rho 6458) (rho 6459) (rho 6460)
      (by simpa [shifted84] using hshift2On)
      (by simpa [digit84] using hdigitOn)
      (by linear_combination r6447)
      (by linear_combination r6448)
      (by linear_combination r6449)
      (by linear_combination r6450)
      (by linear_combination r6451)
      (by linear_combination r6452)
    simpa [shifted84, digit84, acc85] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc85 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted84 rho) (digit84 rho) (acc85 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted84 rho) (digit84 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 81) (rho 80)
      (base rho) (twice rho) (triple rho) (acc84 rho)
      (acc85 rho) :=
    ⟨shiftOnce84 rho, shifted84 rho, digit84 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window85 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc85 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[78]! (scalarBits rho)[77]!
        (base rho) (twice rho) (triple rho) (acc85 rho)
        (acc86 rho) ∧
      EdwardsBridge.onCurve (acc86 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p80, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart80 at p80
  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6453, r6454, r6455, r6456, r6457, r6458, r6459, r6460, r6461, r6462, r6463, r6464, r6465, r6466, r6467, r6468, r6469, r6470, r6471, r6472, r6473, r6474, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6453 at r6453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6454 at r6454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6455 at r6455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6456 at r6456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6457 at r6457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6458 at r6458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6459 at r6459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6460 at r6460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6461 at r6461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6462 at r6462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6463 at r6463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6464 at r6464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6465 at r6465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6466 at r6466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6467 at r6467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6468 at r6468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6469 at r6469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6470 at r6470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6471 at r6471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6472 at r6472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6473 at r6473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6474 at r6474
  have hshift1 : EdwardsBridge.doubleSpec (acc85 rho) (shiftOnce85 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6459) (rho 6460) (rho 6461) (rho 6462) (rho 6463) (rho 6464) (rho 6465)
      (by simpa [acc85] using hacc)
      (by linear_combination r6453)
      (by linear_combination r6454)
      (by linear_combination r6455)
      (by linear_combination r6456)
      (by linear_combination r6457)
    simpa [acc85, shiftOnce85] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce85 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc85 rho) (shiftOnce85 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc85 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce85 rho) (shifted85 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6464) (rho 6465) (rho 6466) (rho 6467) (rho 6468) (rho 6469) (rho 6470)
      (by simpa [shiftOnce85] using hshift1On)
      (by linear_combination r6458)
      (by linear_combination r6459)
      (by linear_combination r6460)
      (by linear_combination r6461)
      (by linear_combination r6462)
    simpa [shiftOnce85, shifted85] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted85 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce85 rho) (shifted85 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce85 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 79) (rho 78)
      (base rho) (twice rho) (triple rho) (digit85 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 79) (rho 78)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6472 + rho 6473, (1 : F) + rho 6475 + rho 6476⟩ := by
      constructor
      · refine ⟨(rho 6471 + (rho 4577) - (0)), rho 6472, ?_, ?_, ?_⟩
        · linear_combination r6463 - (rho 78) * order_cast_zero
        · linear_combination r6464
        · linear_combination r6465
      · refine ⟨(rho 6474 + (rho 4578) - ((1 : F))), rho 6475, ?_, ?_, ?_⟩
        · linear_combination r6466 - (rho 78) * order_cast_zero
        · linear_combination r6467
        · linear_combination r6468
    simpa [base, twice, triple, digit85] using hraw
  have hhigh : rho 79 =
      Bool.toZMod bits[78]! := by
    simpa only using rho_bit_of_map rho bits hbits 78 (by decide +kernel)
  have hlow : rho 78 =
      Bool.toZMod bits[77]! := by
    simpa only using rho_bit_of_map rho bits hbits 77 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[78]! bits[77]! (base rho) (twice rho) (triple rho)
    (digit85 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit85 rho) := by
    rw [hdigit]
    cases bits[78]! <;> cases bits[77]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted85 rho) (digit85 rho) (acc86 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6469) (rho 6470) (rho 6472 + rho 6473) ((1 : F) + rho 6475 + rho 6476)
      (rho 6477) (rho 6478) (rho 6479) (rho 6480) (rho 6481) (rho 6482)
      (by simpa [shifted85] using hshift2On)
      (by simpa [digit85] using hdigitOn)
      (by linear_combination r6469)
      (by linear_combination r6470)
      (by linear_combination r6471)
      (by linear_combination r6472)
      (by linear_combination r6473)
      (by linear_combination r6474)
    simpa [shifted85, digit85, acc86] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc86 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted85 rho) (digit85 rho) (acc86 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted85 rho) (digit85 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 79) (rho 78)
      (base rho) (twice rho) (triple rho) (acc85 rho)
      (acc86 rho) :=
    ⟨shiftOnce85 rho, shifted85 rho, digit85 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window86 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc86 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[76]! (scalarBits rho)[75]!
        (base rho) (twice rho) (triple rho) (acc86 rho)
        (acc87 rho) ∧
      EdwardsBridge.onCurve (acc87 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p80, p81, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart80 at p80
  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6475, r6476, r6477, r6478, r6479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart81 at p81
  rcases p81 with ⟨r6480, r6481, r6482, r6483, r6484, r6485, r6486, r6487, r6488, r6489, r6490, r6491, r6492, r6493, r6494, r6495, r6496, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6475 at r6475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6476 at r6476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6477 at r6477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6478 at r6478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6479 at r6479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6480 at r6480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6481 at r6481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6482 at r6482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6483 at r6483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6484 at r6484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6485 at r6485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6486 at r6486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6487 at r6487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6488 at r6488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6489 at r6489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6490 at r6490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6491 at r6491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6492 at r6492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6493 at r6493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6494 at r6494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6495 at r6495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6496 at r6496
  have hshift1 : EdwardsBridge.doubleSpec (acc86 rho) (shiftOnce86 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6481) (rho 6482) (rho 6483) (rho 6484) (rho 6485) (rho 6486) (rho 6487)
      (by simpa [acc86] using hacc)
      (by linear_combination r6475)
      (by linear_combination r6476)
      (by linear_combination r6477)
      (by linear_combination r6478)
      (by linear_combination r6479)
    simpa [acc86, shiftOnce86] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce86 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc86 rho) (shiftOnce86 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc86 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce86 rho) (shifted86 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6486) (rho 6487) (rho 6488) (rho 6489) (rho 6490) (rho 6491) (rho 6492)
      (by simpa [shiftOnce86] using hshift1On)
      (by linear_combination r6480)
      (by linear_combination r6481)
      (by linear_combination r6482)
      (by linear_combination r6483)
      (by linear_combination r6484)
    simpa [shiftOnce86, shifted86] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted86 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce86 rho) (shifted86 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce86 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 77) (rho 76)
      (base rho) (twice rho) (triple rho) (digit86 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 77) (rho 76)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6494 + rho 6495, (1 : F) + rho 6497 + rho 6498⟩ := by
      constructor
      · refine ⟨(rho 6493 + (rho 4577) - (0)), rho 6494, ?_, ?_, ?_⟩
        · linear_combination r6485 - (rho 76) * order_cast_zero
        · linear_combination r6486
        · linear_combination r6487
      · refine ⟨(rho 6496 + (rho 4578) - ((1 : F))), rho 6497, ?_, ?_, ?_⟩
        · linear_combination r6488 - (rho 76) * order_cast_zero
        · linear_combination r6489
        · linear_combination r6490
    simpa [base, twice, triple, digit86] using hraw
  have hhigh : rho 77 =
      Bool.toZMod bits[76]! := by
    simpa only using rho_bit_of_map rho bits hbits 76 (by decide +kernel)
  have hlow : rho 76 =
      Bool.toZMod bits[75]! := by
    simpa only using rho_bit_of_map rho bits hbits 75 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[76]! bits[75]! (base rho) (twice rho) (triple rho)
    (digit86 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit86 rho) := by
    rw [hdigit]
    cases bits[76]! <;> cases bits[75]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted86 rho) (digit86 rho) (acc87 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6491) (rho 6492) (rho 6494 + rho 6495) ((1 : F) + rho 6497 + rho 6498)
      (rho 6499) (rho 6500) (rho 6501) (rho 6502) (rho 6503) (rho 6504)
      (by simpa [shifted86] using hshift2On)
      (by simpa [digit86] using hdigitOn)
      (by linear_combination r6491)
      (by linear_combination r6492)
      (by linear_combination r6493)
      (by linear_combination r6494)
      (by linear_combination r6495)
      (by linear_combination r6496)
    simpa [shifted86, digit86, acc87] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc87 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted86 rho) (digit86 rho) (acc87 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted86 rho) (digit86 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 77) (rho 76)
      (base rho) (twice rho) (triple rho) (acc86 rho)
      (acc87 rho) :=
    ⟨shiftOnce86 rho, shifted86 rho, digit86 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window87 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc87 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[74]! (scalarBits rho)[73]!
        (base rho) (twice rho) (triple rho) (acc87 rho)
        (acc88 rho) ∧
      EdwardsBridge.onCurve (acc88 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p81, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart81 at p81
  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6497, r6498, r6499, r6500, r6501, r6502, r6503, r6504, r6505, r6506, r6507, r6508, r6509, r6510, r6511, r6512, r6513, r6514, r6515, r6516, r6517, r6518, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6497 at r6497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6498 at r6498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6499 at r6499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6500 at r6500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6501 at r6501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6502 at r6502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6503 at r6503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6504 at r6504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6505 at r6505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6506 at r6506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6507 at r6507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6508 at r6508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6509 at r6509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6510 at r6510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6511 at r6511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6512 at r6512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6513 at r6513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6514 at r6514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6515 at r6515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6516 at r6516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6517 at r6517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6518 at r6518
  have hshift1 : EdwardsBridge.doubleSpec (acc87 rho) (shiftOnce87 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6503) (rho 6504) (rho 6505) (rho 6506) (rho 6507) (rho 6508) (rho 6509)
      (by simpa [acc87] using hacc)
      (by linear_combination r6497)
      (by linear_combination r6498)
      (by linear_combination r6499)
      (by linear_combination r6500)
      (by linear_combination r6501)
    simpa [acc87, shiftOnce87] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce87 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc87 rho) (shiftOnce87 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc87 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce87 rho) (shifted87 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6508) (rho 6509) (rho 6510) (rho 6511) (rho 6512) (rho 6513) (rho 6514)
      (by simpa [shiftOnce87] using hshift1On)
      (by linear_combination r6502)
      (by linear_combination r6503)
      (by linear_combination r6504)
      (by linear_combination r6505)
      (by linear_combination r6506)
    simpa [shiftOnce87, shifted87] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted87 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce87 rho) (shifted87 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce87 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 75) (rho 74)
      (base rho) (twice rho) (triple rho) (digit87 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 75) (rho 74)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6516 + rho 6517, (1 : F) + rho 6519 + rho 6520⟩ := by
      constructor
      · refine ⟨(rho 6515 + (rho 4577) - (0)), rho 6516, ?_, ?_, ?_⟩
        · linear_combination r6507 - (rho 74) * order_cast_zero
        · linear_combination r6508
        · linear_combination r6509
      · refine ⟨(rho 6518 + (rho 4578) - ((1 : F))), rho 6519, ?_, ?_, ?_⟩
        · linear_combination r6510 - (rho 74) * order_cast_zero
        · linear_combination r6511
        · linear_combination r6512
    simpa [base, twice, triple, digit87] using hraw
  have hhigh : rho 75 =
      Bool.toZMod bits[74]! := by
    simpa only using rho_bit_of_map rho bits hbits 74 (by decide +kernel)
  have hlow : rho 74 =
      Bool.toZMod bits[73]! := by
    simpa only using rho_bit_of_map rho bits hbits 73 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[74]! bits[73]! (base rho) (twice rho) (triple rho)
    (digit87 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit87 rho) := by
    rw [hdigit]
    cases bits[74]! <;> cases bits[73]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted87 rho) (digit87 rho) (acc88 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6513) (rho 6514) (rho 6516 + rho 6517) ((1 : F) + rho 6519 + rho 6520)
      (rho 6521) (rho 6522) (rho 6523) (rho 6524) (rho 6525) (rho 6526)
      (by simpa [shifted87] using hshift2On)
      (by simpa [digit87] using hdigitOn)
      (by linear_combination r6513)
      (by linear_combination r6514)
      (by linear_combination r6515)
      (by linear_combination r6516)
      (by linear_combination r6517)
      (by linear_combination r6518)
    simpa [shifted87, digit87, acc88] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc88 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted87 rho) (digit87 rho) (acc88 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted87 rho) (digit87 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 75) (rho 74)
      (base rho) (twice rho) (triple rho) (acc87 rho)
      (acc88 rho) :=
    ⟨shiftOnce87 rho, shifted87 rho, digit87 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window88 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc88 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[72]! (scalarBits rho)[71]!
        (base rho) (twice rho) (triple rho) (acc88 rho)
        (acc89 rho) ∧
      EdwardsBridge.onCurve (acc89 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p81, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart81 at p81
  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6519, r6520, r6521, r6522, r6523, r6524, r6525, r6526, r6527, r6528, r6529, r6530, r6531, r6532, r6533, r6534, r6535, r6536, r6537, r6538, r6539, r6540, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6519 at r6519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6520 at r6520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6521 at r6521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6522 at r6522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6523 at r6523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6524 at r6524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6525 at r6525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6526 at r6526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6527 at r6527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6528 at r6528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6529 at r6529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6530 at r6530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6531 at r6531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6532 at r6532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6533 at r6533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6534 at r6534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6535 at r6535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6536 at r6536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6537 at r6537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6538 at r6538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6539 at r6539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6540 at r6540
  have hshift1 : EdwardsBridge.doubleSpec (acc88 rho) (shiftOnce88 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6525) (rho 6526) (rho 6527) (rho 6528) (rho 6529) (rho 6530) (rho 6531)
      (by simpa [acc88] using hacc)
      (by linear_combination r6519)
      (by linear_combination r6520)
      (by linear_combination r6521)
      (by linear_combination r6522)
      (by linear_combination r6523)
    simpa [acc88, shiftOnce88] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce88 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc88 rho) (shiftOnce88 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc88 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce88 rho) (shifted88 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6530) (rho 6531) (rho 6532) (rho 6533) (rho 6534) (rho 6535) (rho 6536)
      (by simpa [shiftOnce88] using hshift1On)
      (by linear_combination r6524)
      (by linear_combination r6525)
      (by linear_combination r6526)
      (by linear_combination r6527)
      (by linear_combination r6528)
    simpa [shiftOnce88, shifted88] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted88 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce88 rho) (shifted88 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce88 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 73) (rho 72)
      (base rho) (twice rho) (triple rho) (digit88 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 73) (rho 72)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6538 + rho 6539, (1 : F) + rho 6541 + rho 6542⟩ := by
      constructor
      · refine ⟨(rho 6537 + (rho 4577) - (0)), rho 6538, ?_, ?_, ?_⟩
        · linear_combination r6529 - (rho 72) * order_cast_zero
        · linear_combination r6530
        · linear_combination r6531
      · refine ⟨(rho 6540 + (rho 4578) - ((1 : F))), rho 6541, ?_, ?_, ?_⟩
        · linear_combination r6532 - (rho 72) * order_cast_zero
        · linear_combination r6533
        · linear_combination r6534
    simpa [base, twice, triple, digit88] using hraw
  have hhigh : rho 73 =
      Bool.toZMod bits[72]! := by
    simpa only using rho_bit_of_map rho bits hbits 72 (by decide +kernel)
  have hlow : rho 72 =
      Bool.toZMod bits[71]! := by
    simpa only using rho_bit_of_map rho bits hbits 71 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[72]! bits[71]! (base rho) (twice rho) (triple rho)
    (digit88 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit88 rho) := by
    rw [hdigit]
    cases bits[72]! <;> cases bits[71]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted88 rho) (digit88 rho) (acc89 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6535) (rho 6536) (rho 6538 + rho 6539) ((1 : F) + rho 6541 + rho 6542)
      (rho 6543) (rho 6544) (rho 6545) (rho 6546) (rho 6547) (rho 6548)
      (by simpa [shifted88] using hshift2On)
      (by simpa [digit88] using hdigitOn)
      (by linear_combination r6535)
      (by linear_combination r6536)
      (by linear_combination r6537)
      (by linear_combination r6538)
      (by linear_combination r6539)
      (by linear_combination r6540)
    simpa [shifted88, digit88, acc89] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc89 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted88 rho) (digit88 rho) (acc89 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted88 rho) (digit88 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 73) (rho 72)
      (base rho) (twice rho) (triple rho) (acc88 rho)
      (acc89 rho) :=
    ⟨shiftOnce88 rho, shifted88 rho, digit88 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window89 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc89 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[70]! (scalarBits rho)[69]!
        (base rho) (twice rho) (triple rho) (acc89 rho)
        (acc90 rho) ∧
      EdwardsBridge.onCurve (acc90 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p81, p82, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart81 at p81
  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6541, r6542, r6543, r6544, r6545, r6546, r6547, r6548, r6549, r6550, r6551, r6552, r6553, r6554, r6555, r6556, r6557, r6558, r6559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart82 at p82
  rcases p82 with ⟨r6560, r6561, r6562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6541 at r6541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6542 at r6542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6543 at r6543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6544 at r6544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6545 at r6545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6546 at r6546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6547 at r6547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6548 at r6548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6549 at r6549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6550 at r6550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6551 at r6551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6552 at r6552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6553 at r6553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6554 at r6554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6555 at r6555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6556 at r6556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6557 at r6557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6558 at r6558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6559 at r6559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6560 at r6560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6561 at r6561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6562 at r6562
  have hshift1 : EdwardsBridge.doubleSpec (acc89 rho) (shiftOnce89 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6547) (rho 6548) (rho 6549) (rho 6550) (rho 6551) (rho 6552) (rho 6553)
      (by simpa [acc89] using hacc)
      (by linear_combination r6541)
      (by linear_combination r6542)
      (by linear_combination r6543)
      (by linear_combination r6544)
      (by linear_combination r6545)
    simpa [acc89, shiftOnce89] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce89 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc89 rho) (shiftOnce89 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc89 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce89 rho) (shifted89 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6552) (rho 6553) (rho 6554) (rho 6555) (rho 6556) (rho 6557) (rho 6558)
      (by simpa [shiftOnce89] using hshift1On)
      (by linear_combination r6546)
      (by linear_combination r6547)
      (by linear_combination r6548)
      (by linear_combination r6549)
      (by linear_combination r6550)
    simpa [shiftOnce89, shifted89] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted89 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce89 rho) (shifted89 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce89 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 71) (rho 70)
      (base rho) (twice rho) (triple rho) (digit89 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 71) (rho 70)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6560 + rho 6561, (1 : F) + rho 6563 + rho 6564⟩ := by
      constructor
      · refine ⟨(rho 6559 + (rho 4577) - (0)), rho 6560, ?_, ?_, ?_⟩
        · linear_combination r6551 - (rho 70) * order_cast_zero
        · linear_combination r6552
        · linear_combination r6553
      · refine ⟨(rho 6562 + (rho 4578) - ((1 : F))), rho 6563, ?_, ?_, ?_⟩
        · linear_combination r6554 - (rho 70) * order_cast_zero
        · linear_combination r6555
        · linear_combination r6556
    simpa [base, twice, triple, digit89] using hraw
  have hhigh : rho 71 =
      Bool.toZMod bits[70]! := by
    simpa only using rho_bit_of_map rho bits hbits 70 (by decide +kernel)
  have hlow : rho 70 =
      Bool.toZMod bits[69]! := by
    simpa only using rho_bit_of_map rho bits hbits 69 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[70]! bits[69]! (base rho) (twice rho) (triple rho)
    (digit89 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit89 rho) := by
    rw [hdigit]
    cases bits[70]! <;> cases bits[69]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted89 rho) (digit89 rho) (acc90 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6557) (rho 6558) (rho 6560 + rho 6561) ((1 : F) + rho 6563 + rho 6564)
      (rho 6565) (rho 6566) (rho 6567) (rho 6568) (rho 6569) (rho 6570)
      (by simpa [shifted89] using hshift2On)
      (by simpa [digit89] using hdigitOn)
      (by linear_combination r6557)
      (by linear_combination r6558)
      (by linear_combination r6559)
      (by linear_combination r6560)
      (by linear_combination r6561)
      (by linear_combination r6562)
    simpa [shifted89, digit89, acc90] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc90 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted89 rho) (digit89 rho) (acc90 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted89 rho) (digit89 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 71) (rho 70)
      (base rho) (twice rho) (triple rho) (acc89 rho)
      (acc90 rho) :=
    ⟨shiftOnce89 rho, shifted89 rho, digit89 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
