import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window108 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc108 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[32]! (scalarBits rho)[31]!
        (base rho) (twice rho) (triple rho) (acc108 rho)
        (acc109 rho) ∧
      EdwardsBridge.onCurve (acc109 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, p64, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5112 at r5112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5113 at r5113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5114 at r5114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5115 at r5115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5116 at r5116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5117 at r5117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5118 at r5118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5119 at r5119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5120 at r5120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5121 at r5121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5122 at r5122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5123 at r5123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5124 at r5124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5125 at r5125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5126 at r5126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5127 at r5127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5128 at r5128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5129 at r5129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5130 at r5130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5131 at r5131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5132 at r5132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5133 at r5133
  have hshift1 : EdwardsBridge.doubleSpec (acc108 rho) (shiftOnce108 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4604) (rho 4605) (rho 4606) (rho 4607) (rho 4608) (rho 4609) (rho 4610)
      (by simpa [acc108] using hacc)
      (by linear_combination r5112)
      (by linear_combination r5113)
      (by linear_combination r5114)
      (by linear_combination r5115)
      (by linear_combination r5116)
    simpa [acc108, shiftOnce108] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce108 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc108 rho) (shiftOnce108 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc108 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce108 rho) (shifted108 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4609) (rho 4610) (rho 4611) (rho 4612) (rho 4613) (rho 4614) (rho 4615)
      (by simpa [shiftOnce108] using hshift1On)
      (by linear_combination r5117)
      (by linear_combination r5118)
      (by linear_combination r5119)
      (by linear_combination r5120)
      (by linear_combination r5121)
    simpa [shiftOnce108, shifted108] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted108 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce108 rho) (shifted108 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce108 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1015) (rho 1014)
      (base rho) (twice rho) (triple rho) (digit108 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1015) (rho 1014)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4617 + rho 4618, (1 : F) + rho 4620 + rho 4621⟩ := by
      constructor
      · refine ⟨(rho 4616 + (rho 2216) - (0)), rho 4617, ?_, ?_, ?_⟩
        · linear_combination r5122
        · linear_combination r5123
        · linear_combination r5124
      · refine ⟨(rho 4619 + (rho 2217) - ((1 : F))), rho 4620, ?_, ?_, ?_⟩
        · linear_combination r5125
        · linear_combination r5126
        · linear_combination r5127
    simpa [base, twice, triple, digit108] using hraw
  have hhigh : rho 1015 =
      Bool.toZMod bits[32]! := by
    simpa only using rho_bit_of_map rho bits hbits 32 (by decide +kernel)
  have hlow : rho 1014 =
      Bool.toZMod bits[31]! := by
    simpa only using rho_bit_of_map rho bits hbits 31 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[32]! bits[31]! (base rho) (twice rho) (triple rho)
    (digit108 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit108 rho) := by
    rw [hdigit]
    cases bits[32]! <;> cases bits[31]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted108 rho) (digit108 rho) (acc109 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4614) (rho 4615) (rho 4617 + rho 4618) ((1 : F) + rho 4620 + rho 4621)
      (rho 4622) (rho 4623) (rho 4624) (rho 4625) (rho 4626) (rho 4627)
      (by simpa [shifted108] using hshift2On)
      (by simpa [digit108] using hdigitOn)
      (by linear_combination r5128)
      (by linear_combination r5129)
      (by linear_combination r5130)
      (by linear_combination r5131)
      (by linear_combination r5132)
      (by linear_combination r5133)
    simpa [shifted108, digit108, acc109] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc109 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted108 rho) (digit108 rho) (acc109 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted108 rho) (digit108 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1015) (rho 1014)
      (base rho) (twice rho) (triple rho) (acc108 rho)
      (acc109 rho) :=
    ⟨shiftOnce108 rho, shifted108 rho, digit108 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window109 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc109 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[30]! (scalarBits rho)[29]!
        (base rho) (twice rho) (triple rho) (acc109 rho)
        (acc110 rho) ∧
      EdwardsBridge.onCurve (acc110 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, r5155, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5134 at r5134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5135 at r5135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5136 at r5136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5137 at r5137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5138 at r5138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5139 at r5139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5140 at r5140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5141 at r5141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5142 at r5142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5143 at r5143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5144 at r5144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5145 at r5145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5146 at r5146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5147 at r5147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5148 at r5148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5149 at r5149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5150 at r5150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5151 at r5151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5152 at r5152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5153 at r5153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5154 at r5154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5155 at r5155
  have hshift1 : EdwardsBridge.doubleSpec (acc109 rho) (shiftOnce109 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4626) (rho 4627) (rho 4628) (rho 4629) (rho 4630) (rho 4631) (rho 4632)
      (by simpa [acc109] using hacc)
      (by linear_combination r5134)
      (by linear_combination r5135)
      (by linear_combination r5136)
      (by linear_combination r5137)
      (by linear_combination r5138)
    simpa [acc109, shiftOnce109] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce109 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc109 rho) (shiftOnce109 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc109 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce109 rho) (shifted109 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4631) (rho 4632) (rho 4633) (rho 4634) (rho 4635) (rho 4636) (rho 4637)
      (by simpa [shiftOnce109] using hshift1On)
      (by linear_combination r5139)
      (by linear_combination r5140)
      (by linear_combination r5141)
      (by linear_combination r5142)
      (by linear_combination r5143)
    simpa [shiftOnce109, shifted109] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted109 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce109 rho) (shifted109 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce109 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1013) (rho 1012)
      (base rho) (twice rho) (triple rho) (digit109 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1013) (rho 1012)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4639 + rho 4640, (1 : F) + rho 4642 + rho 4643⟩ := by
      constructor
      · refine ⟨(rho 4638 + (rho 2216) - (0)), rho 4639, ?_, ?_, ?_⟩
        · linear_combination r5144
        · linear_combination r5145
        · linear_combination r5146
      · refine ⟨(rho 4641 + (rho 2217) - ((1 : F))), rho 4642, ?_, ?_, ?_⟩
        · linear_combination r5147
        · linear_combination r5148
        · linear_combination r5149
    simpa [base, twice, triple, digit109] using hraw
  have hhigh : rho 1013 =
      Bool.toZMod bits[30]! := by
    simpa only using rho_bit_of_map rho bits hbits 30 (by decide +kernel)
  have hlow : rho 1012 =
      Bool.toZMod bits[29]! := by
    simpa only using rho_bit_of_map rho bits hbits 29 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[30]! bits[29]! (base rho) (twice rho) (triple rho)
    (digit109 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit109 rho) := by
    rw [hdigit]
    cases bits[30]! <;> cases bits[29]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted109 rho) (digit109 rho) (acc110 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4636) (rho 4637) (rho 4639 + rho 4640) ((1 : F) + rho 4642 + rho 4643)
      (rho 4644) (rho 4645) (rho 4646) (rho 4647) (rho 4648) (rho 4649)
      (by simpa [shifted109] using hshift2On)
      (by simpa [digit109] using hdigitOn)
      (by linear_combination r5150)
      (by linear_combination r5151)
      (by linear_combination r5152)
      (by linear_combination r5153)
      (by linear_combination r5154)
      (by linear_combination r5155)
    simpa [shifted109, digit109, acc110] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc110 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted109 rho) (digit109 rho) (acc110 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted109 rho) (digit109 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1013) (rho 1012)
      (base rho) (twice rho) (triple rho) (acc109 rho)
      (acc110 rho) :=
    ⟨shiftOnce109 rho, shifted109 rho, digit109 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window110 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc110 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[28]! (scalarBits rho)[27]!
        (base rho) (twice rho) (triple rho) (acc110 rho)
        (acc111 rho) ∧
      EdwardsBridge.onCurve (acc111 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5156 at r5156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5157 at r5157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5158 at r5158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5159 at r5159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5160 at r5160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5161 at r5161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5162 at r5162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5163 at r5163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5164 at r5164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5165 at r5165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5166 at r5166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5167 at r5167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5168 at r5168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5169 at r5169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5170 at r5170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5171 at r5171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5172 at r5172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5173 at r5173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5174 at r5174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5175 at r5175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5176 at r5176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5177 at r5177
  have hshift1 : EdwardsBridge.doubleSpec (acc110 rho) (shiftOnce110 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4648) (rho 4649) (rho 4650) (rho 4651) (rho 4652) (rho 4653) (rho 4654)
      (by simpa [acc110] using hacc)
      (by linear_combination r5156)
      (by linear_combination r5157)
      (by linear_combination r5158)
      (by linear_combination r5159)
      (by linear_combination r5160)
    simpa [acc110, shiftOnce110] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce110 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc110 rho) (shiftOnce110 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc110 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce110 rho) (shifted110 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4653) (rho 4654) (rho 4655) (rho 4656) (rho 4657) (rho 4658) (rho 4659)
      (by simpa [shiftOnce110] using hshift1On)
      (by linear_combination r5161)
      (by linear_combination r5162)
      (by linear_combination r5163)
      (by linear_combination r5164)
      (by linear_combination r5165)
    simpa [shiftOnce110, shifted110] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted110 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce110 rho) (shifted110 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce110 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1011) (rho 1010)
      (base rho) (twice rho) (triple rho) (digit110 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1011) (rho 1010)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4661 + rho 4662, (1 : F) + rho 4664 + rho 4665⟩ := by
      constructor
      · refine ⟨(rho 4660 + (rho 2216) - (0)), rho 4661, ?_, ?_, ?_⟩
        · linear_combination r5166
        · linear_combination r5167
        · linear_combination r5168
      · refine ⟨(rho 4663 + (rho 2217) - ((1 : F))), rho 4664, ?_, ?_, ?_⟩
        · linear_combination r5169
        · linear_combination r5170
        · linear_combination r5171
    simpa [base, twice, triple, digit110] using hraw
  have hhigh : rho 1011 =
      Bool.toZMod bits[28]! := by
    simpa only using rho_bit_of_map rho bits hbits 28 (by decide +kernel)
  have hlow : rho 1010 =
      Bool.toZMod bits[27]! := by
    simpa only using rho_bit_of_map rho bits hbits 27 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[28]! bits[27]! (base rho) (twice rho) (triple rho)
    (digit110 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit110 rho) := by
    rw [hdigit]
    cases bits[28]! <;> cases bits[27]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted110 rho) (digit110 rho) (acc111 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4658) (rho 4659) (rho 4661 + rho 4662) ((1 : F) + rho 4664 + rho 4665)
      (rho 4666) (rho 4667) (rho 4668) (rho 4669) (rho 4670) (rho 4671)
      (by simpa [shifted110] using hshift2On)
      (by simpa [digit110] using hdigitOn)
      (by linear_combination r5172)
      (by linear_combination r5173)
      (by linear_combination r5174)
      (by linear_combination r5175)
      (by linear_combination r5176)
      (by linear_combination r5177)
    simpa [shifted110, digit110, acc111] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc111 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted110 rho) (digit110 rho) (acc111 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted110 rho) (digit110 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1011) (rho 1010)
      (base rho) (twice rho) (triple rho) (acc110 rho)
      (acc111 rho) :=
    ⟨shiftOnce110 rho, shifted110 rho, digit110 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window111 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc111 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[26]! (scalarBits rho)[25]!
        (base rho) (twice rho) (triple rho) (acc111 rho)
        (acc112 rho) ∧
      EdwardsBridge.onCurve (acc112 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5178, r5179, r5180, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, r5195, r5196, r5197, r5198, r5199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5178 at r5178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5179 at r5179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5180 at r5180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5181 at r5181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5182 at r5182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5183 at r5183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5184 at r5184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5185 at r5185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5186 at r5186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5187 at r5187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5188 at r5188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5189 at r5189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5190 at r5190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5191 at r5191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5192 at r5192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5193 at r5193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5194 at r5194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5195 at r5195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5196 at r5196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5197 at r5197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5198 at r5198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5199 at r5199
  have hshift1 : EdwardsBridge.doubleSpec (acc111 rho) (shiftOnce111 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4670) (rho 4671) (rho 4672) (rho 4673) (rho 4674) (rho 4675) (rho 4676)
      (by simpa [acc111] using hacc)
      (by linear_combination r5178)
      (by linear_combination r5179)
      (by linear_combination r5180)
      (by linear_combination r5181)
      (by linear_combination r5182)
    simpa [acc111, shiftOnce111] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce111 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc111 rho) (shiftOnce111 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc111 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce111 rho) (shifted111 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4675) (rho 4676) (rho 4677) (rho 4678) (rho 4679) (rho 4680) (rho 4681)
      (by simpa [shiftOnce111] using hshift1On)
      (by linear_combination r5183)
      (by linear_combination r5184)
      (by linear_combination r5185)
      (by linear_combination r5186)
      (by linear_combination r5187)
    simpa [shiftOnce111, shifted111] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted111 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce111 rho) (shifted111 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce111 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1009) (rho 1008)
      (base rho) (twice rho) (triple rho) (digit111 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1009) (rho 1008)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4683 + rho 4684, (1 : F) + rho 4686 + rho 4687⟩ := by
      constructor
      · refine ⟨(rho 4682 + (rho 2216) - (0)), rho 4683, ?_, ?_, ?_⟩
        · linear_combination r5188
        · linear_combination r5189
        · linear_combination r5190
      · refine ⟨(rho 4685 + (rho 2217) - ((1 : F))), rho 4686, ?_, ?_, ?_⟩
        · linear_combination r5191
        · linear_combination r5192
        · linear_combination r5193
    simpa [base, twice, triple, digit111] using hraw
  have hhigh : rho 1009 =
      Bool.toZMod bits[26]! := by
    simpa only using rho_bit_of_map rho bits hbits 26 (by decide +kernel)
  have hlow : rho 1008 =
      Bool.toZMod bits[25]! := by
    simpa only using rho_bit_of_map rho bits hbits 25 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[26]! bits[25]! (base rho) (twice rho) (triple rho)
    (digit111 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit111 rho) := by
    rw [hdigit]
    cases bits[26]! <;> cases bits[25]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted111 rho) (digit111 rho) (acc112 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4680) (rho 4681) (rho 4683 + rho 4684) ((1 : F) + rho 4686 + rho 4687)
      (rho 4688) (rho 4689) (rho 4690) (rho 4691) (rho 4692) (rho 4693)
      (by simpa [shifted111] using hshift2On)
      (by simpa [digit111] using hdigitOn)
      (by linear_combination r5194)
      (by linear_combination r5195)
      (by linear_combination r5196)
      (by linear_combination r5197)
      (by linear_combination r5198)
      (by linear_combination r5199)
    simpa [shifted111, digit111, acc112] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc112 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted111 rho) (digit111 rho) (acc112 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted111 rho) (digit111 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1009) (rho 1008)
      (base rho) (twice rho) (triple rho) (acc111 rho)
      (acc112 rho) :=
    ⟨shiftOnce111 rho, shifted111 rho, digit111 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window112 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc112 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[24]! (scalarBits rho)[23]!
        (base rho) (twice rho) (triple rho) (acc112 rho)
        (acc113 rho) ∧
      EdwardsBridge.onCurve (acc113 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5200 at r5200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5201 at r5201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5202 at r5202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5203 at r5203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5204 at r5204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5205 at r5205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5206 at r5206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5207 at r5207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5208 at r5208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5209 at r5209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5210 at r5210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5211 at r5211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5212 at r5212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5213 at r5213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5214 at r5214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5215 at r5215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5216 at r5216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5217 at r5217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5218 at r5218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5219 at r5219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5220 at r5220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5221 at r5221
  have hshift1 : EdwardsBridge.doubleSpec (acc112 rho) (shiftOnce112 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4692) (rho 4693) (rho 4694) (rho 4695) (rho 4696) (rho 4697) (rho 4698)
      (by simpa [acc112] using hacc)
      (by linear_combination r5200)
      (by linear_combination r5201)
      (by linear_combination r5202)
      (by linear_combination r5203)
      (by linear_combination r5204)
    simpa [acc112, shiftOnce112] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce112 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc112 rho) (shiftOnce112 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc112 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce112 rho) (shifted112 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4697) (rho 4698) (rho 4699) (rho 4700) (rho 4701) (rho 4702) (rho 4703)
      (by simpa [shiftOnce112] using hshift1On)
      (by linear_combination r5205)
      (by linear_combination r5206)
      (by linear_combination r5207)
      (by linear_combination r5208)
      (by linear_combination r5209)
    simpa [shiftOnce112, shifted112] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted112 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce112 rho) (shifted112 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce112 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1007) (rho 1006)
      (base rho) (twice rho) (triple rho) (digit112 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1007) (rho 1006)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4705 + rho 4706, (1 : F) + rho 4708 + rho 4709⟩ := by
      constructor
      · refine ⟨(rho 4704 + (rho 2216) - (0)), rho 4705, ?_, ?_, ?_⟩
        · linear_combination r5210
        · linear_combination r5211
        · linear_combination r5212
      · refine ⟨(rho 4707 + (rho 2217) - ((1 : F))), rho 4708, ?_, ?_, ?_⟩
        · linear_combination r5213
        · linear_combination r5214
        · linear_combination r5215
    simpa [base, twice, triple, digit112] using hraw
  have hhigh : rho 1007 =
      Bool.toZMod bits[24]! := by
    simpa only using rho_bit_of_map rho bits hbits 24 (by decide +kernel)
  have hlow : rho 1006 =
      Bool.toZMod bits[23]! := by
    simpa only using rho_bit_of_map rho bits hbits 23 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[24]! bits[23]! (base rho) (twice rho) (triple rho)
    (digit112 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit112 rho) := by
    rw [hdigit]
    cases bits[24]! <;> cases bits[23]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted112 rho) (digit112 rho) (acc113 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4702) (rho 4703) (rho 4705 + rho 4706) ((1 : F) + rho 4708 + rho 4709)
      (rho 4710) (rho 4711) (rho 4712) (rho 4713) (rho 4714) (rho 4715)
      (by simpa [shifted112] using hshift2On)
      (by simpa [digit112] using hdigitOn)
      (by linear_combination r5216)
      (by linear_combination r5217)
      (by linear_combination r5218)
      (by linear_combination r5219)
      (by linear_combination r5220)
      (by linear_combination r5221)
    simpa [shifted112, digit112, acc113] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc113 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted112 rho) (digit112 rho) (acc113 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted112 rho) (digit112 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1007) (rho 1006)
      (base rho) (twice rho) (triple rho) (acc112 rho)
      (acc113 rho) :=
    ⟨shiftOnce112 rho, shifted112 rho, digit112 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window113 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc113 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[22]! (scalarBits rho)[21]!
        (base rho) (twice rho) (triple rho) (acc113 rho)
        (acc114 rho) ∧
      EdwardsBridge.onCurve (acc114 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5222 at r5222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5223 at r5223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5224 at r5224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5225 at r5225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5226 at r5226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5227 at r5227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5228 at r5228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5229 at r5229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5230 at r5230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5231 at r5231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5232 at r5232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5233 at r5233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5234 at r5234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5235 at r5235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5236 at r5236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5237 at r5237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5238 at r5238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5239 at r5239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5240 at r5240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5241 at r5241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5242 at r5242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5243 at r5243
  have hshift1 : EdwardsBridge.doubleSpec (acc113 rho) (shiftOnce113 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4714) (rho 4715) (rho 4716) (rho 4717) (rho 4718) (rho 4719) (rho 4720)
      (by simpa [acc113] using hacc)
      (by linear_combination r5222)
      (by linear_combination r5223)
      (by linear_combination r5224)
      (by linear_combination r5225)
      (by linear_combination r5226)
    simpa [acc113, shiftOnce113] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce113 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc113 rho) (shiftOnce113 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc113 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce113 rho) (shifted113 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4719) (rho 4720) (rho 4721) (rho 4722) (rho 4723) (rho 4724) (rho 4725)
      (by simpa [shiftOnce113] using hshift1On)
      (by linear_combination r5227)
      (by linear_combination r5228)
      (by linear_combination r5229)
      (by linear_combination r5230)
      (by linear_combination r5231)
    simpa [shiftOnce113, shifted113] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted113 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce113 rho) (shifted113 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce113 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1005) (rho 1004)
      (base rho) (twice rho) (triple rho) (digit113 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1005) (rho 1004)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4727 + rho 4728, (1 : F) + rho 4730 + rho 4731⟩ := by
      constructor
      · refine ⟨(rho 4726 + (rho 2216) - (0)), rho 4727, ?_, ?_, ?_⟩
        · linear_combination r5232
        · linear_combination r5233
        · linear_combination r5234
      · refine ⟨(rho 4729 + (rho 2217) - ((1 : F))), rho 4730, ?_, ?_, ?_⟩
        · linear_combination r5235
        · linear_combination r5236
        · linear_combination r5237
    simpa [base, twice, triple, digit113] using hraw
  have hhigh : rho 1005 =
      Bool.toZMod bits[22]! := by
    simpa only using rho_bit_of_map rho bits hbits 22 (by decide +kernel)
  have hlow : rho 1004 =
      Bool.toZMod bits[21]! := by
    simpa only using rho_bit_of_map rho bits hbits 21 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[22]! bits[21]! (base rho) (twice rho) (triple rho)
    (digit113 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit113 rho) := by
    rw [hdigit]
    cases bits[22]! <;> cases bits[21]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted113 rho) (digit113 rho) (acc114 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4724) (rho 4725) (rho 4727 + rho 4728) ((1 : F) + rho 4730 + rho 4731)
      (rho 4732) (rho 4733) (rho 4734) (rho 4735) (rho 4736) (rho 4737)
      (by simpa [shifted113] using hshift2On)
      (by simpa [digit113] using hdigitOn)
      (by linear_combination r5238)
      (by linear_combination r5239)
      (by linear_combination r5240)
      (by linear_combination r5241)
      (by linear_combination r5242)
      (by linear_combination r5243)
    simpa [shifted113, digit113, acc114] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc114 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted113 rho) (digit113 rho) (acc114 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted113 rho) (digit113 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1005) (rho 1004)
      (base rho) (twice rho) (triple rho) (acc113 rho)
      (acc114 rho) :=
    ⟨shiftOnce113 rho, shifted113 rho, digit113 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
