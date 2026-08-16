import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window24 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc24 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[200]! (scalarBits rho)[199]!
        (base rho) (twice rho) (triple rho) (acc24 rho)
        (acc25 rho) ∧
      EdwardsBridge.onCurve (acc25 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5111 at r5111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5112 at r5112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5113 at r5113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5114 at r5114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5115 at r5115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5116 at r5116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5117 at r5117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5118 at r5118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5119 at r5119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5120 at r5120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5121 at r5121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5122 at r5122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5123 at r5123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5124 at r5124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5125 at r5125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5126 at r5126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5127 at r5127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5128 at r5128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5129 at r5129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5130 at r5130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5131 at r5131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5132 at r5132
  have hshift1 : EdwardsBridge.doubleSpec (acc24 rho) (shiftOnce24 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5117) (rho 5118) (rho 5119) (rho 5120) (rho 5121) (rho 5122) (rho 5123)
      (by simpa [acc24] using hacc)
      (by linear_combination r5111)
      (by linear_combination r5112)
      (by linear_combination r5113)
      (by linear_combination r5114)
      (by linear_combination r5115)
    simpa [acc24, shiftOnce24] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce24 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc24 rho) (shiftOnce24 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc24 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce24 rho) (shifted24 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5122) (rho 5123) (rho 5124) (rho 5125) (rho 5126) (rho 5127) (rho 5128)
      (by simpa [shiftOnce24] using hshift1On)
      (by linear_combination r5116)
      (by linear_combination r5117)
      (by linear_combination r5118)
      (by linear_combination r5119)
      (by linear_combination r5120)
    simpa [shiftOnce24, shifted24] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted24 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce24 rho) (shifted24 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce24 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 201) (rho 200)
      (base rho) (twice rho) (triple rho) (digit24 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 201) (rho 200)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5130 + rho 5131, (1 : F) + rho 5133 + rho 5134⟩ := by
      constructor
      · refine ⟨(rho 5129 + (rho 4577) - (0)), rho 5130, ?_, ?_, ?_⟩
        · linear_combination r5121 - (rho 200) * order_cast_zero
        · linear_combination r5122
        · linear_combination r5123
      · refine ⟨(rho 5132 + (rho 4578) - ((1 : F))), rho 5133, ?_, ?_, ?_⟩
        · linear_combination r5124 - (rho 200) * order_cast_zero
        · linear_combination r5125
        · linear_combination r5126
    simpa [base, twice, triple, digit24] using hraw
  have hhigh : rho 201 =
      Bool.toZMod bits[200]! := by
    simpa only using rho_bit_of_map rho bits hbits 200 (by decide +kernel)
  have hlow : rho 200 =
      Bool.toZMod bits[199]! := by
    simpa only using rho_bit_of_map rho bits hbits 199 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[200]! bits[199]! (base rho) (twice rho) (triple rho)
    (digit24 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit24 rho) := by
    rw [hdigit]
    cases bits[200]! <;> cases bits[199]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted24 rho) (digit24 rho) (acc25 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5127) (rho 5128) (rho 5130 + rho 5131) ((1 : F) + rho 5133 + rho 5134)
      (rho 5135) (rho 5136) (rho 5137) (rho 5138) (rho 5139) (rho 5140)
      (by simpa [shifted24] using hshift2On)
      (by simpa [digit24] using hdigitOn)
      (by linear_combination r5127)
      (by linear_combination r5128)
      (by linear_combination r5129)
      (by linear_combination r5130)
      (by linear_combination r5131)
      (by linear_combination r5132)
    simpa [shifted24, digit24, acc25] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc25 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted24 rho) (digit24 rho) (acc25 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted24 rho) (digit24 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 201) (rho 200)
      (base rho) (twice rho) (triple rho) (acc24 rho)
      (acc25 rho) :=
    ⟨shiftOnce24 rho, shifted24 rho, digit24 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window25 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc25 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[198]! (scalarBits rho)[197]!
        (base rho) (twice rho) (triple rho) (acc25 rho)
        (acc26 rho) ∧
      EdwardsBridge.onCurve (acc26 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5133 at r5133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5134 at r5134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5135 at r5135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5136 at r5136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5137 at r5137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5138 at r5138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5139 at r5139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5140 at r5140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5141 at r5141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5142 at r5142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5143 at r5143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5144 at r5144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5145 at r5145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5146 at r5146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5147 at r5147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5148 at r5148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5149 at r5149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5150 at r5150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5151 at r5151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5152 at r5152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5153 at r5153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5154 at r5154
  have hshift1 : EdwardsBridge.doubleSpec (acc25 rho) (shiftOnce25 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5139) (rho 5140) (rho 5141) (rho 5142) (rho 5143) (rho 5144) (rho 5145)
      (by simpa [acc25] using hacc)
      (by linear_combination r5133)
      (by linear_combination r5134)
      (by linear_combination r5135)
      (by linear_combination r5136)
      (by linear_combination r5137)
    simpa [acc25, shiftOnce25] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce25 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc25 rho) (shiftOnce25 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc25 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce25 rho) (shifted25 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5144) (rho 5145) (rho 5146) (rho 5147) (rho 5148) (rho 5149) (rho 5150)
      (by simpa [shiftOnce25] using hshift1On)
      (by linear_combination r5138)
      (by linear_combination r5139)
      (by linear_combination r5140)
      (by linear_combination r5141)
      (by linear_combination r5142)
    simpa [shiftOnce25, shifted25] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted25 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce25 rho) (shifted25 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce25 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 199) (rho 198)
      (base rho) (twice rho) (triple rho) (digit25 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 199) (rho 198)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5152 + rho 5153, (1 : F) + rho 5155 + rho 5156⟩ := by
      constructor
      · refine ⟨(rho 5151 + (rho 4577) - (0)), rho 5152, ?_, ?_, ?_⟩
        · linear_combination r5143 - (rho 198) * order_cast_zero
        · linear_combination r5144
        · linear_combination r5145
      · refine ⟨(rho 5154 + (rho 4578) - ((1 : F))), rho 5155, ?_, ?_, ?_⟩
        · linear_combination r5146 - (rho 198) * order_cast_zero
        · linear_combination r5147
        · linear_combination r5148
    simpa [base, twice, triple, digit25] using hraw
  have hhigh : rho 199 =
      Bool.toZMod bits[198]! := by
    simpa only using rho_bit_of_map rho bits hbits 198 (by decide +kernel)
  have hlow : rho 198 =
      Bool.toZMod bits[197]! := by
    simpa only using rho_bit_of_map rho bits hbits 197 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[198]! bits[197]! (base rho) (twice rho) (triple rho)
    (digit25 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit25 rho) := by
    rw [hdigit]
    cases bits[198]! <;> cases bits[197]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted25 rho) (digit25 rho) (acc26 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5149) (rho 5150) (rho 5152 + rho 5153) ((1 : F) + rho 5155 + rho 5156)
      (rho 5157) (rho 5158) (rho 5159) (rho 5160) (rho 5161) (rho 5162)
      (by simpa [shifted25] using hshift2On)
      (by simpa [digit25] using hdigitOn)
      (by linear_combination r5149)
      (by linear_combination r5150)
      (by linear_combination r5151)
      (by linear_combination r5152)
      (by linear_combination r5153)
      (by linear_combination r5154)
    simpa [shifted25, digit25, acc26] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc26 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted25 rho) (digit25 rho) (acc26 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted25 rho) (digit25 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 199) (rho 198)
      (base rho) (twice rho) (triple rho) (acc25 rho)
      (acc26 rho) :=
    ⟨shiftOnce25 rho, shifted25 rho, digit25 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window26 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc26 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[196]! (scalarBits rho)[195]!
        (base rho) (twice rho) (triple rho) (acc26 rho)
        (acc27 rho) ∧
      EdwardsBridge.onCurve (acc27 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5155 at r5155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5156 at r5156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5157 at r5157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5158 at r5158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5159 at r5159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5160 at r5160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5161 at r5161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5162 at r5162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5163 at r5163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5164 at r5164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5165 at r5165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5166 at r5166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5167 at r5167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5168 at r5168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5169 at r5169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5170 at r5170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5171 at r5171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5172 at r5172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5173 at r5173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5174 at r5174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5175 at r5175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5176 at r5176
  have hshift1 : EdwardsBridge.doubleSpec (acc26 rho) (shiftOnce26 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5161) (rho 5162) (rho 5163) (rho 5164) (rho 5165) (rho 5166) (rho 5167)
      (by simpa [acc26] using hacc)
      (by linear_combination r5155)
      (by linear_combination r5156)
      (by linear_combination r5157)
      (by linear_combination r5158)
      (by linear_combination r5159)
    simpa [acc26, shiftOnce26] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce26 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc26 rho) (shiftOnce26 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc26 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce26 rho) (shifted26 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5166) (rho 5167) (rho 5168) (rho 5169) (rho 5170) (rho 5171) (rho 5172)
      (by simpa [shiftOnce26] using hshift1On)
      (by linear_combination r5160)
      (by linear_combination r5161)
      (by linear_combination r5162)
      (by linear_combination r5163)
      (by linear_combination r5164)
    simpa [shiftOnce26, shifted26] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted26 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce26 rho) (shifted26 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce26 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 197) (rho 196)
      (base rho) (twice rho) (triple rho) (digit26 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 197) (rho 196)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5174 + rho 5175, (1 : F) + rho 5177 + rho 5178⟩ := by
      constructor
      · refine ⟨(rho 5173 + (rho 4577) - (0)), rho 5174, ?_, ?_, ?_⟩
        · linear_combination r5165 - (rho 196) * order_cast_zero
        · linear_combination r5166
        · linear_combination r5167
      · refine ⟨(rho 5176 + (rho 4578) - ((1 : F))), rho 5177, ?_, ?_, ?_⟩
        · linear_combination r5168 - (rho 196) * order_cast_zero
        · linear_combination r5169
        · linear_combination r5170
    simpa [base, twice, triple, digit26] using hraw
  have hhigh : rho 197 =
      Bool.toZMod bits[196]! := by
    simpa only using rho_bit_of_map rho bits hbits 196 (by decide +kernel)
  have hlow : rho 196 =
      Bool.toZMod bits[195]! := by
    simpa only using rho_bit_of_map rho bits hbits 195 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[196]! bits[195]! (base rho) (twice rho) (triple rho)
    (digit26 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit26 rho) := by
    rw [hdigit]
    cases bits[196]! <;> cases bits[195]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted26 rho) (digit26 rho) (acc27 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5171) (rho 5172) (rho 5174 + rho 5175) ((1 : F) + rho 5177 + rho 5178)
      (rho 5179) (rho 5180) (rho 5181) (rho 5182) (rho 5183) (rho 5184)
      (by simpa [shifted26] using hshift2On)
      (by simpa [digit26] using hdigitOn)
      (by linear_combination r5171)
      (by linear_combination r5172)
      (by linear_combination r5173)
      (by linear_combination r5174)
      (by linear_combination r5175)
      (by linear_combination r5176)
    simpa [shifted26, digit26, acc27] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc27 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted26 rho) (digit26 rho) (acc27 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted26 rho) (digit26 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 197) (rho 196)
      (base rho) (twice rho) (triple rho) (acc26 rho)
      (acc27 rho) :=
    ⟨shiftOnce26 rho, shifted26 rho, digit26 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window27 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc27 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[194]! (scalarBits rho)[193]!
        (base rho) (twice rho) (triple rho) (acc27 rho)
        (acc28 rho) ∧
      EdwardsBridge.onCurve (acc28 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5177, r5178, r5179, r5180, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, r5195, r5196, r5197, r5198, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5177 at r5177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5178 at r5178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5179 at r5179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5180 at r5180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5181 at r5181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5182 at r5182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5183 at r5183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5184 at r5184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5185 at r5185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5186 at r5186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5187 at r5187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5188 at r5188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5189 at r5189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5190 at r5190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5191 at r5191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5192 at r5192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5193 at r5193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5194 at r5194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5195 at r5195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5196 at r5196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5197 at r5197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5198 at r5198
  have hshift1 : EdwardsBridge.doubleSpec (acc27 rho) (shiftOnce27 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5183) (rho 5184) (rho 5185) (rho 5186) (rho 5187) (rho 5188) (rho 5189)
      (by simpa [acc27] using hacc)
      (by linear_combination r5177)
      (by linear_combination r5178)
      (by linear_combination r5179)
      (by linear_combination r5180)
      (by linear_combination r5181)
    simpa [acc27, shiftOnce27] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce27 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc27 rho) (shiftOnce27 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc27 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce27 rho) (shifted27 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5188) (rho 5189) (rho 5190) (rho 5191) (rho 5192) (rho 5193) (rho 5194)
      (by simpa [shiftOnce27] using hshift1On)
      (by linear_combination r5182)
      (by linear_combination r5183)
      (by linear_combination r5184)
      (by linear_combination r5185)
      (by linear_combination r5186)
    simpa [shiftOnce27, shifted27] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted27 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce27 rho) (shifted27 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce27 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 195) (rho 194)
      (base rho) (twice rho) (triple rho) (digit27 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 195) (rho 194)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5196 + rho 5197, (1 : F) + rho 5199 + rho 5200⟩ := by
      constructor
      · refine ⟨(rho 5195 + (rho 4577) - (0)), rho 5196, ?_, ?_, ?_⟩
        · linear_combination r5187 - (rho 194) * order_cast_zero
        · linear_combination r5188
        · linear_combination r5189
      · refine ⟨(rho 5198 + (rho 4578) - ((1 : F))), rho 5199, ?_, ?_, ?_⟩
        · linear_combination r5190 - (rho 194) * order_cast_zero
        · linear_combination r5191
        · linear_combination r5192
    simpa [base, twice, triple, digit27] using hraw
  have hhigh : rho 195 =
      Bool.toZMod bits[194]! := by
    simpa only using rho_bit_of_map rho bits hbits 194 (by decide +kernel)
  have hlow : rho 194 =
      Bool.toZMod bits[193]! := by
    simpa only using rho_bit_of_map rho bits hbits 193 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[194]! bits[193]! (base rho) (twice rho) (triple rho)
    (digit27 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit27 rho) := by
    rw [hdigit]
    cases bits[194]! <;> cases bits[193]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted27 rho) (digit27 rho) (acc28 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5193) (rho 5194) (rho 5196 + rho 5197) ((1 : F) + rho 5199 + rho 5200)
      (rho 5201) (rho 5202) (rho 5203) (rho 5204) (rho 5205) (rho 5206)
      (by simpa [shifted27] using hshift2On)
      (by simpa [digit27] using hdigitOn)
      (by linear_combination r5193)
      (by linear_combination r5194)
      (by linear_combination r5195)
      (by linear_combination r5196)
      (by linear_combination r5197)
      (by linear_combination r5198)
    simpa [shifted27, digit27, acc28] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc28 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted27 rho) (digit27 rho) (acc28 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted27 rho) (digit27 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 195) (rho 194)
      (base rho) (twice rho) (triple rho) (acc27 rho)
      (acc28 rho) :=
    ⟨shiftOnce27 rho, shifted27 rho, digit27 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window28 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc28 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[192]! (scalarBits rho)[191]!
        (base rho) (twice rho) (triple rho) (acc28 rho)
        (acc29 rho) ∧
      EdwardsBridge.onCurve (acc29 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5199 at r5199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5200 at r5200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5201 at r5201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5202 at r5202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5203 at r5203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5204 at r5204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5205 at r5205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5206 at r5206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5207 at r5207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5208 at r5208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5209 at r5209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5210 at r5210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5211 at r5211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5212 at r5212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5213 at r5213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5214 at r5214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5215 at r5215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5216 at r5216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5217 at r5217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5218 at r5218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5219 at r5219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5220 at r5220
  have hshift1 : EdwardsBridge.doubleSpec (acc28 rho) (shiftOnce28 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5205) (rho 5206) (rho 5207) (rho 5208) (rho 5209) (rho 5210) (rho 5211)
      (by simpa [acc28] using hacc)
      (by linear_combination r5199)
      (by linear_combination r5200)
      (by linear_combination r5201)
      (by linear_combination r5202)
      (by linear_combination r5203)
    simpa [acc28, shiftOnce28] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce28 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc28 rho) (shiftOnce28 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc28 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce28 rho) (shifted28 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5210) (rho 5211) (rho 5212) (rho 5213) (rho 5214) (rho 5215) (rho 5216)
      (by simpa [shiftOnce28] using hshift1On)
      (by linear_combination r5204)
      (by linear_combination r5205)
      (by linear_combination r5206)
      (by linear_combination r5207)
      (by linear_combination r5208)
    simpa [shiftOnce28, shifted28] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted28 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce28 rho) (shifted28 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce28 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 193) (rho 192)
      (base rho) (twice rho) (triple rho) (digit28 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 193) (rho 192)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5218 + rho 5219, (1 : F) + rho 5221 + rho 5222⟩ := by
      constructor
      · refine ⟨(rho 5217 + (rho 4577) - (0)), rho 5218, ?_, ?_, ?_⟩
        · linear_combination r5209 - (rho 192) * order_cast_zero
        · linear_combination r5210
        · linear_combination r5211
      · refine ⟨(rho 5220 + (rho 4578) - ((1 : F))), rho 5221, ?_, ?_, ?_⟩
        · linear_combination r5212 - (rho 192) * order_cast_zero
        · linear_combination r5213
        · linear_combination r5214
    simpa [base, twice, triple, digit28] using hraw
  have hhigh : rho 193 =
      Bool.toZMod bits[192]! := by
    simpa only using rho_bit_of_map rho bits hbits 192 (by decide +kernel)
  have hlow : rho 192 =
      Bool.toZMod bits[191]! := by
    simpa only using rho_bit_of_map rho bits hbits 191 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[192]! bits[191]! (base rho) (twice rho) (triple rho)
    (digit28 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit28 rho) := by
    rw [hdigit]
    cases bits[192]! <;> cases bits[191]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted28 rho) (digit28 rho) (acc29 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5215) (rho 5216) (rho 5218 + rho 5219) ((1 : F) + rho 5221 + rho 5222)
      (rho 5223) (rho 5224) (rho 5225) (rho 5226) (rho 5227) (rho 5228)
      (by simpa [shifted28] using hshift2On)
      (by simpa [digit28] using hdigitOn)
      (by linear_combination r5215)
      (by linear_combination r5216)
      (by linear_combination r5217)
      (by linear_combination r5218)
      (by linear_combination r5219)
      (by linear_combination r5220)
    simpa [shifted28, digit28, acc29] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc29 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted28 rho) (digit28 rho) (acc29 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted28 rho) (digit28 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 193) (rho 192)
      (base rho) (twice rho) (triple rho) (acc28 rho)
      (acc29 rho) :=
    ⟨shiftOnce28 rho, shifted28 rho, digit28 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window29 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc29 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[190]! (scalarBits rho)[189]!
        (base rho) (twice rho) (triple rho) (acc29 rho)
        (acc30 rho) ∧
      EdwardsBridge.onCurve (acc30 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5221 at r5221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5222 at r5222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5223 at r5223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5224 at r5224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5225 at r5225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5226 at r5226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5227 at r5227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5228 at r5228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5229 at r5229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5230 at r5230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5231 at r5231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5232 at r5232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5233 at r5233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5234 at r5234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5235 at r5235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5236 at r5236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5237 at r5237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5238 at r5238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5239 at r5239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5240 at r5240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5241 at r5241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5242 at r5242
  have hshift1 : EdwardsBridge.doubleSpec (acc29 rho) (shiftOnce29 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5227) (rho 5228) (rho 5229) (rho 5230) (rho 5231) (rho 5232) (rho 5233)
      (by simpa [acc29] using hacc)
      (by linear_combination r5221)
      (by linear_combination r5222)
      (by linear_combination r5223)
      (by linear_combination r5224)
      (by linear_combination r5225)
    simpa [acc29, shiftOnce29] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce29 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc29 rho) (shiftOnce29 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc29 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce29 rho) (shifted29 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5232) (rho 5233) (rho 5234) (rho 5235) (rho 5236) (rho 5237) (rho 5238)
      (by simpa [shiftOnce29] using hshift1On)
      (by linear_combination r5226)
      (by linear_combination r5227)
      (by linear_combination r5228)
      (by linear_combination r5229)
      (by linear_combination r5230)
    simpa [shiftOnce29, shifted29] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted29 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce29 rho) (shifted29 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce29 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 191) (rho 190)
      (base rho) (twice rho) (triple rho) (digit29 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 191) (rho 190)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5240 + rho 5241, (1 : F) + rho 5243 + rho 5244⟩ := by
      constructor
      · refine ⟨(rho 5239 + (rho 4577) - (0)), rho 5240, ?_, ?_, ?_⟩
        · linear_combination r5231 - (rho 190) * order_cast_zero
        · linear_combination r5232
        · linear_combination r5233
      · refine ⟨(rho 5242 + (rho 4578) - ((1 : F))), rho 5243, ?_, ?_, ?_⟩
        · linear_combination r5234 - (rho 190) * order_cast_zero
        · linear_combination r5235
        · linear_combination r5236
    simpa [base, twice, triple, digit29] using hraw
  have hhigh : rho 191 =
      Bool.toZMod bits[190]! := by
    simpa only using rho_bit_of_map rho bits hbits 190 (by decide +kernel)
  have hlow : rho 190 =
      Bool.toZMod bits[189]! := by
    simpa only using rho_bit_of_map rho bits hbits 189 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[190]! bits[189]! (base rho) (twice rho) (triple rho)
    (digit29 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit29 rho) := by
    rw [hdigit]
    cases bits[190]! <;> cases bits[189]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted29 rho) (digit29 rho) (acc30 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5237) (rho 5238) (rho 5240 + rho 5241) ((1 : F) + rho 5243 + rho 5244)
      (rho 5245) (rho 5246) (rho 5247) (rho 5248) (rho 5249) (rho 5250)
      (by simpa [shifted29] using hshift2On)
      (by simpa [digit29] using hdigitOn)
      (by linear_combination r5237)
      (by linear_combination r5238)
      (by linear_combination r5239)
      (by linear_combination r5240)
      (by linear_combination r5241)
      (by linear_combination r5242)
    simpa [shifted29, digit29, acc30] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc30 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted29 rho) (digit29 rho) (acc30 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted29 rho) (digit29 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 191) (rho 190)
      (base rho) (twice rho) (triple rho) (acc29 rho)
      (acc30 rho) :=
    ⟨shiftOnce29 rho, shifted29 rho, digit29 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
