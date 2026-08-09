import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window84 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4584 at r4584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4585 at r4585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4586 at r4586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4587 at r4587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4588 at r4588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4589 at r4589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4590 at r4590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4591 at r4591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4592 at r4592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4593 at r4593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4594 at r4594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4595 at r4595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4596 at r4596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4597 at r4597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4598 at r4598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4599 at r4599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4600 at r4600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4601 at r4601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4602 at r4602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4603 at r4603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4604 at r4604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4605 at r4605
  have hshift1 : EdwardsBridge.doubleSpec (acc84 rho) (shiftOnce84 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4076) (rho 4077) (rho 4078) (rho 4079) (rho 4080) (rho 4081) (rho 4082)
      (by simpa [acc84] using hacc)
      (by linear_combination r4584)
      (by linear_combination r4585)
      (by linear_combination r4586)
      (by linear_combination r4587)
      (by linear_combination r4588)
    simpa [acc84, shiftOnce84] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce84 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc84 rho) (shiftOnce84 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc84 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce84 rho) (shifted84 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4081) (rho 4082) (rho 4083) (rho 4084) (rho 4085) (rho 4086) (rho 4087)
      (by simpa [shiftOnce84] using hshift1On)
      (by linear_combination r4589)
      (by linear_combination r4590)
      (by linear_combination r4591)
      (by linear_combination r4592)
      (by linear_combination r4593)
    simpa [shiftOnce84, shifted84] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted84 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce84 rho) (shifted84 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce84 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1063) (rho 1062)
      (base rho) (twice rho) (triple rho) (digit84 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1063) (rho 1062)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4089 + rho 4090, (1 : F) + rho 4092 + rho 4093⟩ := by
      constructor
      · refine ⟨(rho 4088 + (rho 2216) - (0)), rho 4089, ?_, ?_, ?_⟩
        · linear_combination r4594
        · linear_combination r4595
        · linear_combination r4596
      · refine ⟨(rho 4091 + (rho 2217) - ((1 : F))), rho 4092, ?_, ?_, ?_⟩
        · linear_combination r4597
        · linear_combination r4598
        · linear_combination r4599
    simpa [base, twice, triple, digit84] using hraw
  have hhigh : rho 1063 =
      Bool.toZMod bits[80]! := by
    simpa only using rho_bit_of_map rho bits hbits 80 (by decide +kernel)
  have hlow : rho 1062 =
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
      (rho 4086) (rho 4087) (rho 4089 + rho 4090) ((1 : F) + rho 4092 + rho 4093)
      (rho 4094) (rho 4095) (rho 4096) (rho 4097) (rho 4098) (rho 4099)
      (by simpa [shifted84] using hshift2On)
      (by simpa [digit84] using hdigitOn)
      (by linear_combination r4600)
      (by linear_combination r4601)
      (by linear_combination r4602)
      (by linear_combination r4603)
      (by linear_combination r4604)
      (by linear_combination r4605)
    simpa [shifted84, digit84, acc85] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc85 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted84 rho) (digit84 rho) (acc85 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted84 rho) (digit84 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1063) (rho 1062)
      (base rho) (twice rho) (triple rho) (acc84 rho)
      (acc85 rho) :=
    ⟨shiftOnce84 rho, shifted84 rho, digit84 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window85 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4606 at r4606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4607 at r4607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4608 at r4608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4609 at r4609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4610 at r4610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4611 at r4611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4612 at r4612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4613 at r4613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4614 at r4614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4615 at r4615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4616 at r4616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4617 at r4617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4618 at r4618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4619 at r4619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4620 at r4620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4621 at r4621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4622 at r4622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4623 at r4623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4624 at r4624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4625 at r4625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4626 at r4626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4627 at r4627
  have hshift1 : EdwardsBridge.doubleSpec (acc85 rho) (shiftOnce85 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4098) (rho 4099) (rho 4100) (rho 4101) (rho 4102) (rho 4103) (rho 4104)
      (by simpa [acc85] using hacc)
      (by linear_combination r4606)
      (by linear_combination r4607)
      (by linear_combination r4608)
      (by linear_combination r4609)
      (by linear_combination r4610)
    simpa [acc85, shiftOnce85] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce85 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc85 rho) (shiftOnce85 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc85 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce85 rho) (shifted85 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4103) (rho 4104) (rho 4105) (rho 4106) (rho 4107) (rho 4108) (rho 4109)
      (by simpa [shiftOnce85] using hshift1On)
      (by linear_combination r4611)
      (by linear_combination r4612)
      (by linear_combination r4613)
      (by linear_combination r4614)
      (by linear_combination r4615)
    simpa [shiftOnce85, shifted85] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted85 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce85 rho) (shifted85 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce85 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1061) (rho 1060)
      (base rho) (twice rho) (triple rho) (digit85 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1061) (rho 1060)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4111 + rho 4112, (1 : F) + rho 4114 + rho 4115⟩ := by
      constructor
      · refine ⟨(rho 4110 + (rho 2216) - (0)), rho 4111, ?_, ?_, ?_⟩
        · linear_combination r4616
        · linear_combination r4617
        · linear_combination r4618
      · refine ⟨(rho 4113 + (rho 2217) - ((1 : F))), rho 4114, ?_, ?_, ?_⟩
        · linear_combination r4619
        · linear_combination r4620
        · linear_combination r4621
    simpa [base, twice, triple, digit85] using hraw
  have hhigh : rho 1061 =
      Bool.toZMod bits[78]! := by
    simpa only using rho_bit_of_map rho bits hbits 78 (by decide +kernel)
  have hlow : rho 1060 =
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
      (rho 4108) (rho 4109) (rho 4111 + rho 4112) ((1 : F) + rho 4114 + rho 4115)
      (rho 4116) (rho 4117) (rho 4118) (rho 4119) (rho 4120) (rho 4121)
      (by simpa [shifted85] using hshift2On)
      (by simpa [digit85] using hdigitOn)
      (by linear_combination r4622)
      (by linear_combination r4623)
      (by linear_combination r4624)
      (by linear_combination r4625)
      (by linear_combination r4626)
      (by linear_combination r4627)
    simpa [shifted85, digit85, acc86] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc86 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted85 rho) (digit85 rho) (acc86 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted85 rho) (digit85 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1061) (rho 1060)
      (base rho) (twice rho) (triple rho) (acc85 rho)
      (acc86 rho) :=
    ⟨shiftOnce85 rho, shifted85 rho, digit85 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window86 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, p58, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4628 at r4628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4629 at r4629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4630 at r4630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4631 at r4631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4632 at r4632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4633 at r4633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4634 at r4634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4635 at r4635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4636 at r4636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4637 at r4637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4638 at r4638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4639 at r4639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4640 at r4640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4641 at r4641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4642 at r4642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4643 at r4643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4644 at r4644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4645 at r4645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4646 at r4646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4647 at r4647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4648 at r4648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4649 at r4649
  have hshift1 : EdwardsBridge.doubleSpec (acc86 rho) (shiftOnce86 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4120) (rho 4121) (rho 4122) (rho 4123) (rho 4124) (rho 4125) (rho 4126)
      (by simpa [acc86] using hacc)
      (by linear_combination r4628)
      (by linear_combination r4629)
      (by linear_combination r4630)
      (by linear_combination r4631)
      (by linear_combination r4632)
    simpa [acc86, shiftOnce86] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce86 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc86 rho) (shiftOnce86 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc86 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce86 rho) (shifted86 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4125) (rho 4126) (rho 4127) (rho 4128) (rho 4129) (rho 4130) (rho 4131)
      (by simpa [shiftOnce86] using hshift1On)
      (by linear_combination r4633)
      (by linear_combination r4634)
      (by linear_combination r4635)
      (by linear_combination r4636)
      (by linear_combination r4637)
    simpa [shiftOnce86, shifted86] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted86 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce86 rho) (shifted86 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce86 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1059) (rho 1058)
      (base rho) (twice rho) (triple rho) (digit86 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1059) (rho 1058)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4133 + rho 4134, (1 : F) + rho 4136 + rho 4137⟩ := by
      constructor
      · refine ⟨(rho 4132 + (rho 2216) - (0)), rho 4133, ?_, ?_, ?_⟩
        · linear_combination r4638
        · linear_combination r4639
        · linear_combination r4640
      · refine ⟨(rho 4135 + (rho 2217) - ((1 : F))), rho 4136, ?_, ?_, ?_⟩
        · linear_combination r4641
        · linear_combination r4642
        · linear_combination r4643
    simpa [base, twice, triple, digit86] using hraw
  have hhigh : rho 1059 =
      Bool.toZMod bits[76]! := by
    simpa only using rho_bit_of_map rho bits hbits 76 (by decide +kernel)
  have hlow : rho 1058 =
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
      (rho 4130) (rho 4131) (rho 4133 + rho 4134) ((1 : F) + rho 4136 + rho 4137)
      (rho 4138) (rho 4139) (rho 4140) (rho 4141) (rho 4142) (rho 4143)
      (by simpa [shifted86] using hshift2On)
      (by simpa [digit86] using hdigitOn)
      (by linear_combination r4644)
      (by linear_combination r4645)
      (by linear_combination r4646)
      (by linear_combination r4647)
      (by linear_combination r4648)
      (by linear_combination r4649)
    simpa [shifted86, digit86, acc87] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc87 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted86 rho) (digit86 rho) (acc87 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted86 rho) (digit86 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1059) (rho 1058)
      (base rho) (twice rho) (triple rho) (acc86 rho)
      (acc87 rho) :=
    ⟨shiftOnce86 rho, shifted86 rho, digit86 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window87 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4650 at r4650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4651 at r4651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4652 at r4652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4653 at r4653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4654 at r4654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4655 at r4655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4656 at r4656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4657 at r4657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4658 at r4658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4659 at r4659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4660 at r4660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4661 at r4661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4662 at r4662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4663 at r4663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4664 at r4664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4665 at r4665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4666 at r4666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4667 at r4667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4668 at r4668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4669 at r4669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4670 at r4670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4671 at r4671
  have hshift1 : EdwardsBridge.doubleSpec (acc87 rho) (shiftOnce87 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4142) (rho 4143) (rho 4144) (rho 4145) (rho 4146) (rho 4147) (rho 4148)
      (by simpa [acc87] using hacc)
      (by linear_combination r4650)
      (by linear_combination r4651)
      (by linear_combination r4652)
      (by linear_combination r4653)
      (by linear_combination r4654)
    simpa [acc87, shiftOnce87] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce87 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc87 rho) (shiftOnce87 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc87 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce87 rho) (shifted87 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4147) (rho 4148) (rho 4149) (rho 4150) (rho 4151) (rho 4152) (rho 4153)
      (by simpa [shiftOnce87] using hshift1On)
      (by linear_combination r4655)
      (by linear_combination r4656)
      (by linear_combination r4657)
      (by linear_combination r4658)
      (by linear_combination r4659)
    simpa [shiftOnce87, shifted87] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted87 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce87 rho) (shifted87 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce87 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1057) (rho 1056)
      (base rho) (twice rho) (triple rho) (digit87 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1057) (rho 1056)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4155 + rho 4156, (1 : F) + rho 4158 + rho 4159⟩ := by
      constructor
      · refine ⟨(rho 4154 + (rho 2216) - (0)), rho 4155, ?_, ?_, ?_⟩
        · linear_combination r4660
        · linear_combination r4661
        · linear_combination r4662
      · refine ⟨(rho 4157 + (rho 2217) - ((1 : F))), rho 4158, ?_, ?_, ?_⟩
        · linear_combination r4663
        · linear_combination r4664
        · linear_combination r4665
    simpa [base, twice, triple, digit87] using hraw
  have hhigh : rho 1057 =
      Bool.toZMod bits[74]! := by
    simpa only using rho_bit_of_map rho bits hbits 74 (by decide +kernel)
  have hlow : rho 1056 =
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
      (rho 4152) (rho 4153) (rho 4155 + rho 4156) ((1 : F) + rho 4158 + rho 4159)
      (rho 4160) (rho 4161) (rho 4162) (rho 4163) (rho 4164) (rho 4165)
      (by simpa [shifted87] using hshift2On)
      (by simpa [digit87] using hdigitOn)
      (by linear_combination r4666)
      (by linear_combination r4667)
      (by linear_combination r4668)
      (by linear_combination r4669)
      (by linear_combination r4670)
      (by linear_combination r4671)
    simpa [shifted87, digit87, acc88] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc88 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted87 rho) (digit87 rho) (acc88 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted87 rho) (digit87 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1057) (rho 1056)
      (base rho) (twice rho) (triple rho) (acc87 rho)
      (acc88 rho) :=
    ⟨shiftOnce87 rho, shifted87 rho, digit87 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window88 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4672 at r4672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4673 at r4673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4674 at r4674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4675 at r4675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4676 at r4676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4677 at r4677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4678 at r4678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4679 at r4679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4680 at r4680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4681 at r4681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4682 at r4682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4683 at r4683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4684 at r4684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4685 at r4685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4686 at r4686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4687 at r4687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4688 at r4688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4689 at r4689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4690 at r4690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4691 at r4691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4692 at r4692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4693 at r4693
  have hshift1 : EdwardsBridge.doubleSpec (acc88 rho) (shiftOnce88 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4164) (rho 4165) (rho 4166) (rho 4167) (rho 4168) (rho 4169) (rho 4170)
      (by simpa [acc88] using hacc)
      (by linear_combination r4672)
      (by linear_combination r4673)
      (by linear_combination r4674)
      (by linear_combination r4675)
      (by linear_combination r4676)
    simpa [acc88, shiftOnce88] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce88 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc88 rho) (shiftOnce88 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc88 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce88 rho) (shifted88 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4169) (rho 4170) (rho 4171) (rho 4172) (rho 4173) (rho 4174) (rho 4175)
      (by simpa [shiftOnce88] using hshift1On)
      (by linear_combination r4677)
      (by linear_combination r4678)
      (by linear_combination r4679)
      (by linear_combination r4680)
      (by linear_combination r4681)
    simpa [shiftOnce88, shifted88] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted88 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce88 rho) (shifted88 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce88 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1055) (rho 1054)
      (base rho) (twice rho) (triple rho) (digit88 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1055) (rho 1054)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4177 + rho 4178, (1 : F) + rho 4180 + rho 4181⟩ := by
      constructor
      · refine ⟨(rho 4176 + (rho 2216) - (0)), rho 4177, ?_, ?_, ?_⟩
        · linear_combination r4682
        · linear_combination r4683
        · linear_combination r4684
      · refine ⟨(rho 4179 + (rho 2217) - ((1 : F))), rho 4180, ?_, ?_, ?_⟩
        · linear_combination r4685
        · linear_combination r4686
        · linear_combination r4687
    simpa [base, twice, triple, digit88] using hraw
  have hhigh : rho 1055 =
      Bool.toZMod bits[72]! := by
    simpa only using rho_bit_of_map rho bits hbits 72 (by decide +kernel)
  have hlow : rho 1054 =
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
      (rho 4174) (rho 4175) (rho 4177 + rho 4178) ((1 : F) + rho 4180 + rho 4181)
      (rho 4182) (rho 4183) (rho 4184) (rho 4185) (rho 4186) (rho 4187)
      (by simpa [shifted88] using hshift2On)
      (by simpa [digit88] using hdigitOn)
      (by linear_combination r4688)
      (by linear_combination r4689)
      (by linear_combination r4690)
      (by linear_combination r4691)
      (by linear_combination r4692)
      (by linear_combination r4693)
    simpa [shifted88, digit88, acc89] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc89 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted88 rho) (digit88 rho) (acc89 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted88 rho) (digit88 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1055) (rho 1054)
      (base rho) (twice rho) (triple rho) (acc88 rho)
      (acc89 rho) :=
    ⟨shiftOnce88 rho, shifted88 rho, digit88 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window89 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4694 at r4694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4695 at r4695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4696 at r4696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4697 at r4697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4698 at r4698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4699 at r4699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4700 at r4700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4701 at r4701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4702 at r4702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4703 at r4703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4704 at r4704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4705 at r4705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4706 at r4706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4707 at r4707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4708 at r4708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4709 at r4709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4710 at r4710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4711 at r4711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4712 at r4712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4713 at r4713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4714 at r4714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4715 at r4715
  have hshift1 : EdwardsBridge.doubleSpec (acc89 rho) (shiftOnce89 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4186) (rho 4187) (rho 4188) (rho 4189) (rho 4190) (rho 4191) (rho 4192)
      (by simpa [acc89] using hacc)
      (by linear_combination r4694)
      (by linear_combination r4695)
      (by linear_combination r4696)
      (by linear_combination r4697)
      (by linear_combination r4698)
    simpa [acc89, shiftOnce89] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce89 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc89 rho) (shiftOnce89 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc89 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce89 rho) (shifted89 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4191) (rho 4192) (rho 4193) (rho 4194) (rho 4195) (rho 4196) (rho 4197)
      (by simpa [shiftOnce89] using hshift1On)
      (by linear_combination r4699)
      (by linear_combination r4700)
      (by linear_combination r4701)
      (by linear_combination r4702)
      (by linear_combination r4703)
    simpa [shiftOnce89, shifted89] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted89 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce89 rho) (shifted89 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce89 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1053) (rho 1052)
      (base rho) (twice rho) (triple rho) (digit89 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1053) (rho 1052)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4199 + rho 4200, (1 : F) + rho 4202 + rho 4203⟩ := by
      constructor
      · refine ⟨(rho 4198 + (rho 2216) - (0)), rho 4199, ?_, ?_, ?_⟩
        · linear_combination r4704
        · linear_combination r4705
        · linear_combination r4706
      · refine ⟨(rho 4201 + (rho 2217) - ((1 : F))), rho 4202, ?_, ?_, ?_⟩
        · linear_combination r4707
        · linear_combination r4708
        · linear_combination r4709
    simpa [base, twice, triple, digit89] using hraw
  have hhigh : rho 1053 =
      Bool.toZMod bits[70]! := by
    simpa only using rho_bit_of_map rho bits hbits 70 (by decide +kernel)
  have hlow : rho 1052 =
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
      (rho 4196) (rho 4197) (rho 4199 + rho 4200) ((1 : F) + rho 4202 + rho 4203)
      (rho 4204) (rho 4205) (rho 4206) (rho 4207) (rho 4208) (rho 4209)
      (by simpa [shifted89] using hshift2On)
      (by simpa [digit89] using hdigitOn)
      (by linear_combination r4710)
      (by linear_combination r4711)
      (by linear_combination r4712)
      (by linear_combination r4713)
      (by linear_combination r4714)
      (by linear_combination r4715)
    simpa [shifted89, digit89, acc90] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc90 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted89 rho) (digit89 rho) (acc90 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted89 rho) (digit89 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1053) (rho 1052)
      (base rho) (twice rho) (triple rho) (acc89 rho)
      (acc90 rho) :=
    ⟨shiftOnce89 rho, shifted89 rho, digit89 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
