import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bUserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window120 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc120 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[8]! (scalarBits rho)[7]!
        (base rho) (twice rho) (triple rho) (acc120 rho)
        (acc121 rho) ∧
      EdwardsBridge.onCurve (acc121 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4466, r4467, r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, r4486, r4487, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4466 at r4466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4467 at r4467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4468 at r4468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4469 at r4469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4470 at r4470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4471 at r4471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4472 at r4472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4473 at r4473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4474 at r4474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4475 at r4475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4476 at r4476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4477 at r4477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4478 at r4478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4479 at r4479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4480 at r4480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4481 at r4481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4482 at r4482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4483 at r4483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4484 at r4484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4485 at r4485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4486 at r4486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4487 at r4487
  have hshift1 : EdwardsBridge.doubleSpec (acc120 rho) (shiftOnce120 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4470) (rho 4471) (rho 4472) (rho 4473) (rho 4474) (rho 4475) (rho 4476)
      (by simpa [acc120] using hacc)
      (by linear_combination r4466)
      (by linear_combination r4467)
      (by linear_combination r4468)
      (by linear_combination r4469)
      (by linear_combination r4470)
    simpa [acc120, shiftOnce120] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce120 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc120 rho) (shiftOnce120 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc120 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce120 rho) (shifted120 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4475) (rho 4476) (rho 4477) (rho 4478) (rho 4479) (rho 4480) (rho 4481)
      (by simpa [shiftOnce120] using hshift1On)
      (by linear_combination r4471)
      (by linear_combination r4472)
      (by linear_combination r4473)
      (by linear_combination r4474)
      (by linear_combination r4475)
    simpa [shiftOnce120, shifted120] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted120 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce120 rho) (shifted120 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce120 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 10) (rho 9)
      (base rho) (twice rho) (triple rho) (digit120 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 10) (rho 9)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4483 + rho 4484, (1 : F) + rho 4486 + rho 4487⟩ := by
      constructor
      · refine ⟨(rho 4482 + (rho 1818) - (0)), rho 4483, ?_, ?_, ?_⟩
        · linear_combination r4476
        · linear_combination r4477
        · linear_combination r4478
      · refine ⟨(rho 4485 + (rho 1819) - ((1 : F))), rho 4486, ?_, ?_, ?_⟩
        · linear_combination r4479
        · linear_combination r4480
        · linear_combination r4481
    simpa [base, twice, triple, digit120] using hraw
  have hhigh : rho 10 =
      Bool.toZMod bits[8]! := by
    simpa only using rho_bit_of_map rho bits hbits 8 (by decide +kernel)
  have hlow : rho 9 =
      Bool.toZMod bits[7]! := by
    simpa only using rho_bit_of_map rho bits hbits 7 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[8]! bits[7]! (base rho) (twice rho) (triple rho)
    (digit120 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit120 rho) := by
    rw [hdigit]
    cases bits[8]! <;> cases bits[7]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted120 rho) (digit120 rho) (acc121 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4480) (rho 4481) (rho 4483 + rho 4484) ((1 : F) + rho 4486 + rho 4487)
      (rho 4488) (rho 4489) (rho 4490) (rho 4491) (rho 4492) (rho 4493)
      (by simpa [shifted120] using hshift2On)
      (by simpa [digit120] using hdigitOn)
      (by linear_combination r4482)
      (by linear_combination r4483)
      (by linear_combination r4484)
      (by linear_combination r4485)
      (by linear_combination r4486)
      (by linear_combination r4487)
    simpa [shifted120, digit120, acc121] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc121 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted120 rho) (digit120 rho) (acc121 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted120 rho) (digit120 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 10) (rho 9)
      (base rho) (twice rho) (triple rho) (acc120 rho)
      (acc121 rho) :=
    ⟨shiftOnce120 rho, shifted120 rho, digit120 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window121 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc121 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[6]! (scalarBits rho)[5]!
        (base rho) (twice rho) (triple rho) (acc121 rho)
        (acc122 rho) ∧
      EdwardsBridge.onCurve (acc122 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4488 at r4488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4489 at r4489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4490 at r4490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4491 at r4491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4492 at r4492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4493 at r4493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4494 at r4494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4495 at r4495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4496 at r4496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4497 at r4497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4498 at r4498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4499 at r4499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4500 at r4500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4501 at r4501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4502 at r4502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4503 at r4503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4504 at r4504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4505 at r4505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4506 at r4506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4507 at r4507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4508 at r4508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4509 at r4509
  have hshift1 : EdwardsBridge.doubleSpec (acc121 rho) (shiftOnce121 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4492) (rho 4493) (rho 4494) (rho 4495) (rho 4496) (rho 4497) (rho 4498)
      (by simpa [acc121] using hacc)
      (by linear_combination r4488)
      (by linear_combination r4489)
      (by linear_combination r4490)
      (by linear_combination r4491)
      (by linear_combination r4492)
    simpa [acc121, shiftOnce121] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce121 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc121 rho) (shiftOnce121 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc121 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce121 rho) (shifted121 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4497) (rho 4498) (rho 4499) (rho 4500) (rho 4501) (rho 4502) (rho 4503)
      (by simpa [shiftOnce121] using hshift1On)
      (by linear_combination r4493)
      (by linear_combination r4494)
      (by linear_combination r4495)
      (by linear_combination r4496)
      (by linear_combination r4497)
    simpa [shiftOnce121, shifted121] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted121 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce121 rho) (shifted121 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce121 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 8) (rho 7)
      (base rho) (twice rho) (triple rho) (digit121 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 8) (rho 7)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4505 + rho 4506, (1 : F) + rho 4508 + rho 4509⟩ := by
      constructor
      · refine ⟨(rho 4504 + (rho 1818) - (0)), rho 4505, ?_, ?_, ?_⟩
        · linear_combination r4498
        · linear_combination r4499
        · linear_combination r4500
      · refine ⟨(rho 4507 + (rho 1819) - ((1 : F))), rho 4508, ?_, ?_, ?_⟩
        · linear_combination r4501
        · linear_combination r4502
        · linear_combination r4503
    simpa [base, twice, triple, digit121] using hraw
  have hhigh : rho 8 =
      Bool.toZMod bits[6]! := by
    simpa only using rho_bit_of_map rho bits hbits 6 (by decide +kernel)
  have hlow : rho 7 =
      Bool.toZMod bits[5]! := by
    simpa only using rho_bit_of_map rho bits hbits 5 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[6]! bits[5]! (base rho) (twice rho) (triple rho)
    (digit121 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit121 rho) := by
    rw [hdigit]
    cases bits[6]! <;> cases bits[5]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted121 rho) (digit121 rho) (acc122 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4502) (rho 4503) (rho 4505 + rho 4506) ((1 : F) + rho 4508 + rho 4509)
      (rho 4510) (rho 4511) (rho 4512) (rho 4513) (rho 4514) (rho 4515)
      (by simpa [shifted121] using hshift2On)
      (by simpa [digit121] using hdigitOn)
      (by linear_combination r4504)
      (by linear_combination r4505)
      (by linear_combination r4506)
      (by linear_combination r4507)
      (by linear_combination r4508)
      (by linear_combination r4509)
    simpa [shifted121, digit121, acc122] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc122 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted121 rho) (digit121 rho) (acc122 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted121 rho) (digit121 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 8) (rho 7)
      (base rho) (twice rho) (triple rho) (acc121 rho)
      (acc122 rho) :=
    ⟨shiftOnce121 rho, shifted121 rho, digit121 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window122 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc122 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[4]! (scalarBits rho)[3]!
        (base rho) (twice rho) (triple rho) (acc122 rho)
        (acc123 rho) ∧
      EdwardsBridge.onCurve (acc123 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4510 at r4510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4511 at r4511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4512 at r4512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4513 at r4513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4514 at r4514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4515 at r4515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4516 at r4516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4517 at r4517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4518 at r4518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4519 at r4519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4520 at r4520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4521 at r4521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4522 at r4522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4523 at r4523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4524 at r4524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4525 at r4525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4526 at r4526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4527 at r4527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4528 at r4528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4529 at r4529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4530 at r4530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4531 at r4531
  have hshift1 : EdwardsBridge.doubleSpec (acc122 rho) (shiftOnce122 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4514) (rho 4515) (rho 4516) (rho 4517) (rho 4518) (rho 4519) (rho 4520)
      (by simpa [acc122] using hacc)
      (by linear_combination r4510)
      (by linear_combination r4511)
      (by linear_combination r4512)
      (by linear_combination r4513)
      (by linear_combination r4514)
    simpa [acc122, shiftOnce122] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce122 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc122 rho) (shiftOnce122 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc122 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce122 rho) (shifted122 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4519) (rho 4520) (rho 4521) (rho 4522) (rho 4523) (rho 4524) (rho 4525)
      (by simpa [shiftOnce122] using hshift1On)
      (by linear_combination r4515)
      (by linear_combination r4516)
      (by linear_combination r4517)
      (by linear_combination r4518)
      (by linear_combination r4519)
    simpa [shiftOnce122, shifted122] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted122 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce122 rho) (shifted122 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce122 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 6) (rho 5)
      (base rho) (twice rho) (triple rho) (digit122 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 6) (rho 5)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4527 + rho 4528, (1 : F) + rho 4530 + rho 4531⟩ := by
      constructor
      · refine ⟨(rho 4526 + (rho 1818) - (0)), rho 4527, ?_, ?_, ?_⟩
        · linear_combination r4520
        · linear_combination r4521
        · linear_combination r4522
      · refine ⟨(rho 4529 + (rho 1819) - ((1 : F))), rho 4530, ?_, ?_, ?_⟩
        · linear_combination r4523
        · linear_combination r4524
        · linear_combination r4525
    simpa [base, twice, triple, digit122] using hraw
  have hhigh : rho 6 =
      Bool.toZMod bits[4]! := by
    simpa only using rho_bit_of_map rho bits hbits 4 (by decide +kernel)
  have hlow : rho 5 =
      Bool.toZMod bits[3]! := by
    simpa only using rho_bit_of_map rho bits hbits 3 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[4]! bits[3]! (base rho) (twice rho) (triple rho)
    (digit122 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit122 rho) := by
    rw [hdigit]
    cases bits[4]! <;> cases bits[3]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted122 rho) (digit122 rho) (acc123 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4524) (rho 4525) (rho 4527 + rho 4528) ((1 : F) + rho 4530 + rho 4531)
      (rho 4532) (rho 4533) (rho 4534) (rho 4535) (rho 4536) (rho 4537)
      (by simpa [shifted122] using hshift2On)
      (by simpa [digit122] using hdigitOn)
      (by linear_combination r4526)
      (by linear_combination r4527)
      (by linear_combination r4528)
      (by linear_combination r4529)
      (by linear_combination r4530)
      (by linear_combination r4531)
    simpa [shifted122, digit122, acc123] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc123 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted122 rho) (digit122 rho) (acc123 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted122 rho) (digit122 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 6) (rho 5)
      (base rho) (twice rho) (triple rho) (acc122 rho)
      (acc123 rho) :=
    ⟨shiftOnce122 rho, shifted122 rho, digit122 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window123 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc123 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[2]! (scalarBits rho)[1]!
        (base rho) (twice rho) (triple rho) (acc123 rho)
        (acc124 rho) ∧
      EdwardsBridge.onCurve (acc124 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4532 at r4532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4533 at r4533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4534 at r4534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4535 at r4535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4536 at r4536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4537 at r4537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4538 at r4538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4539 at r4539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4540 at r4540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4541 at r4541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4542 at r4542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4543 at r4543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4544 at r4544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4545 at r4545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4546 at r4546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4547 at r4547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4548 at r4548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4549 at r4549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4550 at r4550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4551 at r4551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4552 at r4552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4553 at r4553
  have hshift1 : EdwardsBridge.doubleSpec (acc123 rho) (shiftOnce123 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4536) (rho 4537) (rho 4538) (rho 4539) (rho 4540) (rho 4541) (rho 4542)
      (by simpa [acc123] using hacc)
      (by linear_combination r4532)
      (by linear_combination r4533)
      (by linear_combination r4534)
      (by linear_combination r4535)
      (by linear_combination r4536)
    simpa [acc123, shiftOnce123] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce123 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc123 rho) (shiftOnce123 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc123 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce123 rho) (shifted123 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4541) (rho 4542) (rho 4543) (rho 4544) (rho 4545) (rho 4546) (rho 4547)
      (by simpa [shiftOnce123] using hshift1On)
      (by linear_combination r4537)
      (by linear_combination r4538)
      (by linear_combination r4539)
      (by linear_combination r4540)
      (by linear_combination r4541)
    simpa [shiftOnce123, shifted123] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted123 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce123 rho) (shifted123 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce123 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 4) (rho 3)
      (base rho) (twice rho) (triple rho) (digit123 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 4) (rho 3)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 4549 + rho 4550, (1 : F) + rho 4552 + rho 4553⟩ := by
      constructor
      · refine ⟨(rho 4548 + (rho 1818) - (0)), rho 4549, ?_, ?_, ?_⟩
        · linear_combination r4542
        · linear_combination r4543
        · linear_combination r4544
      · refine ⟨(rho 4551 + (rho 1819) - ((1 : F))), rho 4552, ?_, ?_, ?_⟩
        · linear_combination r4545
        · linear_combination r4546
        · linear_combination r4547
    simpa [base, twice, triple, digit123] using hraw
  have hhigh : rho 4 =
      Bool.toZMod bits[2]! := by
    simpa only using rho_bit_of_map rho bits hbits 2 (by decide +kernel)
  have hlow : rho 3 =
      Bool.toZMod bits[1]! := by
    simpa only using rho_bit_of_map rho bits hbits 1 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[2]! bits[1]! (base rho) (twice rho) (triple rho)
    (digit123 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit123 rho) := by
    rw [hdigit]
    cases bits[2]! <;> cases bits[1]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted123 rho) (digit123 rho) (acc124 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4546) (rho 4547) (rho 4549 + rho 4550) ((1 : F) + rho 4552 + rho 4553)
      (rho 4554) (rho 4555) (rho 4556) (rho 4557) (rho 4558) (rho 4559)
      (by simpa [shifted123] using hshift2On)
      (by simpa [digit123] using hdigitOn)
      (by linear_combination r4548)
      (by linear_combination r4549)
      (by linear_combination r4550)
      (by linear_combination r4551)
      (by linear_combination r4552)
      (by linear_combination r4553)
    simpa [shifted123, digit123, acc124] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc124 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted123 rho) (digit123 rho) (acc124 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted123 rho) (digit123 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 4) (rho 3)
      (base rho) (twice rho) (triple rho) (acc123 rho)
      (acc124 rho) :=
    ⟨shiftOnce123 rho, shifted123 rho, digit123 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport
