import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window114 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc114 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[20]! (scalarBits rho)[19]!
        (base rho) (twice rho) (triple rho) (acc114 rho)
        (acc115 rho) ∧
      EdwardsBridge.onCurve (acc115 rho) := by
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
    _, _, _, _, _, _, _, _, p88, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart88 at p88
  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7091, r7092, r7093, r7094, r7095, r7096, r7097, r7098, r7099, r7100, r7101, r7102, r7103, r7104, r7105, r7106, r7107, r7108, r7109, r7110, r7111, r7112, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7091 at r7091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7092 at r7092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7093 at r7093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7094 at r7094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7095 at r7095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7096 at r7096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7097 at r7097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7098 at r7098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7099 at r7099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7100 at r7100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7101 at r7101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7102 at r7102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7103 at r7103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7104 at r7104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7105 at r7105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7106 at r7106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7107 at r7107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7108 at r7108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7109 at r7109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7110 at r7110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7111 at r7111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7112 at r7112
  have hshift1 : EdwardsBridge.doubleSpec (acc114 rho) (shiftOnce114 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7097) (rho 7098) (rho 7099) (rho 7100) (rho 7101) (rho 7102) (rho 7103)
      (by simpa [acc114] using hacc)
      (by linear_combination r7091)
      (by linear_combination r7092)
      (by linear_combination r7093)
      (by linear_combination r7094)
      (by linear_combination r7095)
    simpa [acc114, shiftOnce114] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce114 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc114 rho) (shiftOnce114 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc114 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce114 rho) (shifted114 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7102) (rho 7103) (rho 7104) (rho 7105) (rho 7106) (rho 7107) (rho 7108)
      (by simpa [shiftOnce114] using hshift1On)
      (by linear_combination r7096)
      (by linear_combination r7097)
      (by linear_combination r7098)
      (by linear_combination r7099)
      (by linear_combination r7100)
    simpa [shiftOnce114, shifted114] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted114 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce114 rho) (shifted114 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce114 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 21) (rho 20)
      (base rho) (twice rho) (triple rho) (digit114 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 21) (rho 20)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7110 + rho 7111, (1 : F) + rho 7113 + rho 7114⟩ := by
      constructor
      · refine ⟨(rho 7109 + (rho 4577) - (0)), rho 7110, ?_, ?_, ?_⟩
        · linear_combination r7101 - (rho 20) * order_cast_zero
        · linear_combination r7102
        · linear_combination r7103
      · refine ⟨(rho 7112 + (rho 4578) - ((1 : F))), rho 7113, ?_, ?_, ?_⟩
        · linear_combination r7104 - (rho 20) * order_cast_zero
        · linear_combination r7105
        · linear_combination r7106
    simpa [base, twice, triple, digit114] using hraw
  have hhigh : rho 21 =
      Bool.toZMod bits[20]! := by
    simpa only using rho_bit_of_map rho bits hbits 20 (by decide +kernel)
  have hlow : rho 20 =
      Bool.toZMod bits[19]! := by
    simpa only using rho_bit_of_map rho bits hbits 19 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[20]! bits[19]! (base rho) (twice rho) (triple rho)
    (digit114 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit114 rho) := by
    rw [hdigit]
    cases bits[20]! <;> cases bits[19]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted114 rho) (digit114 rho) (acc115 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7107) (rho 7108) (rho 7110 + rho 7111) ((1 : F) + rho 7113 + rho 7114)
      (rho 7115) (rho 7116) (rho 7117) (rho 7118) (rho 7119) (rho 7120)
      (by simpa [shifted114] using hshift2On)
      (by simpa [digit114] using hdigitOn)
      (by linear_combination r7107)
      (by linear_combination r7108)
      (by linear_combination r7109)
      (by linear_combination r7110)
      (by linear_combination r7111)
      (by linear_combination r7112)
    simpa [shifted114, digit114, acc115] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc115 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted114 rho) (digit114 rho) (acc115 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted114 rho) (digit114 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 21) (rho 20)
      (base rho) (twice rho) (triple rho) (acc114 rho)
      (acc115 rho) :=
    ⟨shiftOnce114 rho, shifted114 rho, digit114 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window115 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc115 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[18]! (scalarBits rho)[17]!
        (base rho) (twice rho) (triple rho) (acc115 rho)
        (acc116 rho) ∧
      EdwardsBridge.onCurve (acc116 rho) := by
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
    _, _, _, _, _, _, _, _, p88, p89,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart88 at p88
  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7113, r7114, r7115, r7116, r7117, r7118, r7119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart89 at p89
  rcases p89 with ⟨r7120, r7121, r7122, r7123, r7124, r7125, r7126, r7127, r7128, r7129, r7130, r7131, r7132, r7133, r7134, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7113 at r7113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7114 at r7114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7115 at r7115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7116 at r7116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7117 at r7117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7118 at r7118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7119 at r7119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7120 at r7120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7121 at r7121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7122 at r7122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7123 at r7123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7124 at r7124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7125 at r7125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7126 at r7126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7127 at r7127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7128 at r7128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7129 at r7129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7130 at r7130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7131 at r7131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7132 at r7132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7133 at r7133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7134 at r7134
  have hshift1 : EdwardsBridge.doubleSpec (acc115 rho) (shiftOnce115 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7119) (rho 7120) (rho 7121) (rho 7122) (rho 7123) (rho 7124) (rho 7125)
      (by simpa [acc115] using hacc)
      (by linear_combination r7113)
      (by linear_combination r7114)
      (by linear_combination r7115)
      (by linear_combination r7116)
      (by linear_combination r7117)
    simpa [acc115, shiftOnce115] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce115 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc115 rho) (shiftOnce115 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc115 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce115 rho) (shifted115 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7124) (rho 7125) (rho 7126) (rho 7127) (rho 7128) (rho 7129) (rho 7130)
      (by simpa [shiftOnce115] using hshift1On)
      (by linear_combination r7118)
      (by linear_combination r7119)
      (by linear_combination r7120)
      (by linear_combination r7121)
      (by linear_combination r7122)
    simpa [shiftOnce115, shifted115] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted115 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce115 rho) (shifted115 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce115 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 19) (rho 18)
      (base rho) (twice rho) (triple rho) (digit115 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 19) (rho 18)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7132 + rho 7133, (1 : F) + rho 7135 + rho 7136⟩ := by
      constructor
      · refine ⟨(rho 7131 + (rho 4577) - (0)), rho 7132, ?_, ?_, ?_⟩
        · linear_combination r7123 - (rho 18) * order_cast_zero
        · linear_combination r7124
        · linear_combination r7125
      · refine ⟨(rho 7134 + (rho 4578) - ((1 : F))), rho 7135, ?_, ?_, ?_⟩
        · linear_combination r7126 - (rho 18) * order_cast_zero
        · linear_combination r7127
        · linear_combination r7128
    simpa [base, twice, triple, digit115] using hraw
  have hhigh : rho 19 =
      Bool.toZMod bits[18]! := by
    simpa only using rho_bit_of_map rho bits hbits 18 (by decide +kernel)
  have hlow : rho 18 =
      Bool.toZMod bits[17]! := by
    simpa only using rho_bit_of_map rho bits hbits 17 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[18]! bits[17]! (base rho) (twice rho) (triple rho)
    (digit115 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit115 rho) := by
    rw [hdigit]
    cases bits[18]! <;> cases bits[17]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted115 rho) (digit115 rho) (acc116 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7129) (rho 7130) (rho 7132 + rho 7133) ((1 : F) + rho 7135 + rho 7136)
      (rho 7137) (rho 7138) (rho 7139) (rho 7140) (rho 7141) (rho 7142)
      (by simpa [shifted115] using hshift2On)
      (by simpa [digit115] using hdigitOn)
      (by linear_combination r7129)
      (by linear_combination r7130)
      (by linear_combination r7131)
      (by linear_combination r7132)
      (by linear_combination r7133)
      (by linear_combination r7134)
    simpa [shifted115, digit115, acc116] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc116 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted115 rho) (digit115 rho) (acc116 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted115 rho) (digit115 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 19) (rho 18)
      (base rho) (twice rho) (triple rho) (acc115 rho)
      (acc116 rho) :=
    ⟨shiftOnce115 rho, shifted115 rho, digit115 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window116 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc116 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[16]! (scalarBits rho)[15]!
        (base rho) (twice rho) (triple rho) (acc116 rho)
        (acc117 rho) ∧
      EdwardsBridge.onCurve (acc117 rho) := by
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
    _, _, _, _, _, _, _, _, _, p89,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart89 at p89
  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7135, r7136, r7137, r7138, r7139, r7140, r7141, r7142, r7143, r7144, r7145, r7146, r7147, r7148, r7149, r7150, r7151, r7152, r7153, r7154, r7155, r7156, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7135 at r7135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7136 at r7136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7137 at r7137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7138 at r7138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7139 at r7139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7140 at r7140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7141 at r7141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7142 at r7142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7143 at r7143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7144 at r7144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7145 at r7145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7146 at r7146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7147 at r7147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7148 at r7148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7149 at r7149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7150 at r7150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7151 at r7151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7152 at r7152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7153 at r7153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7154 at r7154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7155 at r7155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7156 at r7156
  have hshift1 : EdwardsBridge.doubleSpec (acc116 rho) (shiftOnce116 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7141) (rho 7142) (rho 7143) (rho 7144) (rho 7145) (rho 7146) (rho 7147)
      (by simpa [acc116] using hacc)
      (by linear_combination r7135)
      (by linear_combination r7136)
      (by linear_combination r7137)
      (by linear_combination r7138)
      (by linear_combination r7139)
    simpa [acc116, shiftOnce116] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce116 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc116 rho) (shiftOnce116 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc116 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce116 rho) (shifted116 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7146) (rho 7147) (rho 7148) (rho 7149) (rho 7150) (rho 7151) (rho 7152)
      (by simpa [shiftOnce116] using hshift1On)
      (by linear_combination r7140)
      (by linear_combination r7141)
      (by linear_combination r7142)
      (by linear_combination r7143)
      (by linear_combination r7144)
    simpa [shiftOnce116, shifted116] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted116 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce116 rho) (shifted116 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce116 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 17) (rho 16)
      (base rho) (twice rho) (triple rho) (digit116 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 17) (rho 16)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7154 + rho 7155, (1 : F) + rho 7157 + rho 7158⟩ := by
      constructor
      · refine ⟨(rho 7153 + (rho 4577) - (0)), rho 7154, ?_, ?_, ?_⟩
        · linear_combination r7145 - (rho 16) * order_cast_zero
        · linear_combination r7146
        · linear_combination r7147
      · refine ⟨(rho 7156 + (rho 4578) - ((1 : F))), rho 7157, ?_, ?_, ?_⟩
        · linear_combination r7148 - (rho 16) * order_cast_zero
        · linear_combination r7149
        · linear_combination r7150
    simpa [base, twice, triple, digit116] using hraw
  have hhigh : rho 17 =
      Bool.toZMod bits[16]! := by
    simpa only using rho_bit_of_map rho bits hbits 16 (by decide +kernel)
  have hlow : rho 16 =
      Bool.toZMod bits[15]! := by
    simpa only using rho_bit_of_map rho bits hbits 15 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[16]! bits[15]! (base rho) (twice rho) (triple rho)
    (digit116 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit116 rho) := by
    rw [hdigit]
    cases bits[16]! <;> cases bits[15]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted116 rho) (digit116 rho) (acc117 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7151) (rho 7152) (rho 7154 + rho 7155) ((1 : F) + rho 7157 + rho 7158)
      (rho 7159) (rho 7160) (rho 7161) (rho 7162) (rho 7163) (rho 7164)
      (by simpa [shifted116] using hshift2On)
      (by simpa [digit116] using hdigitOn)
      (by linear_combination r7151)
      (by linear_combination r7152)
      (by linear_combination r7153)
      (by linear_combination r7154)
      (by linear_combination r7155)
      (by linear_combination r7156)
    simpa [shifted116, digit116, acc117] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc117 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted116 rho) (digit116 rho) (acc117 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted116 rho) (digit116 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 17) (rho 16)
      (base rho) (twice rho) (triple rho) (acc116 rho)
      (acc117 rho) :=
    ⟨shiftOnce116 rho, shifted116 rho, digit116 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window117 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc117 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[14]! (scalarBits rho)[13]!
        (base rho) (twice rho) (triple rho) (acc117 rho)
        (acc118 rho) ∧
      EdwardsBridge.onCurve (acc118 rho) := by
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
    _, _, _, _, _, _, _, _, _, p89,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart89 at p89
  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7157, r7158, r7159, r7160, r7161, r7162, r7163, r7164, r7165, r7166, r7167, r7168, r7169, r7170, r7171, r7172, r7173, r7174, r7175, r7176, r7177, r7178, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7157 at r7157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7158 at r7158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7159 at r7159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7160 at r7160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7161 at r7161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7162 at r7162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7163 at r7163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7164 at r7164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7165 at r7165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7166 at r7166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7167 at r7167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7168 at r7168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7169 at r7169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7170 at r7170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7171 at r7171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7172 at r7172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7173 at r7173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7174 at r7174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7175 at r7175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7176 at r7176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7177 at r7177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7178 at r7178
  have hshift1 : EdwardsBridge.doubleSpec (acc117 rho) (shiftOnce117 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7163) (rho 7164) (rho 7165) (rho 7166) (rho 7167) (rho 7168) (rho 7169)
      (by simpa [acc117] using hacc)
      (by linear_combination r7157)
      (by linear_combination r7158)
      (by linear_combination r7159)
      (by linear_combination r7160)
      (by linear_combination r7161)
    simpa [acc117, shiftOnce117] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce117 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc117 rho) (shiftOnce117 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc117 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce117 rho) (shifted117 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7168) (rho 7169) (rho 7170) (rho 7171) (rho 7172) (rho 7173) (rho 7174)
      (by simpa [shiftOnce117] using hshift1On)
      (by linear_combination r7162)
      (by linear_combination r7163)
      (by linear_combination r7164)
      (by linear_combination r7165)
      (by linear_combination r7166)
    simpa [shiftOnce117, shifted117] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted117 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce117 rho) (shifted117 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce117 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 15) (rho 14)
      (base rho) (twice rho) (triple rho) (digit117 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 15) (rho 14)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7176 + rho 7177, (1 : F) + rho 7179 + rho 7180⟩ := by
      constructor
      · refine ⟨(rho 7175 + (rho 4577) - (0)), rho 7176, ?_, ?_, ?_⟩
        · linear_combination r7167 - (rho 14) * order_cast_zero
        · linear_combination r7168
        · linear_combination r7169
      · refine ⟨(rho 7178 + (rho 4578) - ((1 : F))), rho 7179, ?_, ?_, ?_⟩
        · linear_combination r7170 - (rho 14) * order_cast_zero
        · linear_combination r7171
        · linear_combination r7172
    simpa [base, twice, triple, digit117] using hraw
  have hhigh : rho 15 =
      Bool.toZMod bits[14]! := by
    simpa only using rho_bit_of_map rho bits hbits 14 (by decide +kernel)
  have hlow : rho 14 =
      Bool.toZMod bits[13]! := by
    simpa only using rho_bit_of_map rho bits hbits 13 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[14]! bits[13]! (base rho) (twice rho) (triple rho)
    (digit117 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit117 rho) := by
    rw [hdigit]
    cases bits[14]! <;> cases bits[13]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted117 rho) (digit117 rho) (acc118 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7173) (rho 7174) (rho 7176 + rho 7177) ((1 : F) + rho 7179 + rho 7180)
      (rho 7181) (rho 7182) (rho 7183) (rho 7184) (rho 7185) (rho 7186)
      (by simpa [shifted117] using hshift2On)
      (by simpa [digit117] using hdigitOn)
      (by linear_combination r7173)
      (by linear_combination r7174)
      (by linear_combination r7175)
      (by linear_combination r7176)
      (by linear_combination r7177)
      (by linear_combination r7178)
    simpa [shifted117, digit117, acc118] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc118 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted117 rho) (digit117 rho) (acc118 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted117 rho) (digit117 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 15) (rho 14)
      (base rho) (twice rho) (triple rho) (acc117 rho)
      (acc118 rho) :=
    ⟨shiftOnce117 rho, shifted117 rho, digit117 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window118 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc118 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[12]! (scalarBits rho)[11]!
        (base rho) (twice rho) (triple rho) (acc118 rho)
        (acc119 rho) ∧
      EdwardsBridge.onCurve (acc119 rho) := by
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
    _, _, _, _, _, _, _, _, _, p89,
    p90, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart89 at p89
  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7179, r7180, r7181, r7182, r7183, r7184, r7185, r7186, r7187, r7188, r7189, r7190, r7191, r7192, r7193, r7194, r7195, r7196, r7197, r7198, r7199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart90 at p90
  rcases p90 with ⟨r7200, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7179 at r7179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7180 at r7180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7181 at r7181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7182 at r7182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7183 at r7183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7184 at r7184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7185 at r7185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7186 at r7186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7187 at r7187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7188 at r7188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7189 at r7189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7190 at r7190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7191 at r7191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7192 at r7192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7193 at r7193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7194 at r7194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7195 at r7195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7196 at r7196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7197 at r7197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7198 at r7198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7199 at r7199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7200 at r7200
  have hshift1 : EdwardsBridge.doubleSpec (acc118 rho) (shiftOnce118 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7185) (rho 7186) (rho 7187) (rho 7188) (rho 7189) (rho 7190) (rho 7191)
      (by simpa [acc118] using hacc)
      (by linear_combination r7179)
      (by linear_combination r7180)
      (by linear_combination r7181)
      (by linear_combination r7182)
      (by linear_combination r7183)
    simpa [acc118, shiftOnce118] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce118 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc118 rho) (shiftOnce118 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc118 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce118 rho) (shifted118 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7190) (rho 7191) (rho 7192) (rho 7193) (rho 7194) (rho 7195) (rho 7196)
      (by simpa [shiftOnce118] using hshift1On)
      (by linear_combination r7184)
      (by linear_combination r7185)
      (by linear_combination r7186)
      (by linear_combination r7187)
      (by linear_combination r7188)
    simpa [shiftOnce118, shifted118] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted118 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce118 rho) (shifted118 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce118 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 13) (rho 12)
      (base rho) (twice rho) (triple rho) (digit118 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 13) (rho 12)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7198 + rho 7199, (1 : F) + rho 7201 + rho 7202⟩ := by
      constructor
      · refine ⟨(rho 7197 + (rho 4577) - (0)), rho 7198, ?_, ?_, ?_⟩
        · linear_combination r7189 - (rho 12) * order_cast_zero
        · linear_combination r7190
        · linear_combination r7191
      · refine ⟨(rho 7200 + (rho 4578) - ((1 : F))), rho 7201, ?_, ?_, ?_⟩
        · linear_combination r7192 - (rho 12) * order_cast_zero
        · linear_combination r7193
        · linear_combination r7194
    simpa [base, twice, triple, digit118] using hraw
  have hhigh : rho 13 =
      Bool.toZMod bits[12]! := by
    simpa only using rho_bit_of_map rho bits hbits 12 (by decide +kernel)
  have hlow : rho 12 =
      Bool.toZMod bits[11]! := by
    simpa only using rho_bit_of_map rho bits hbits 11 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[12]! bits[11]! (base rho) (twice rho) (triple rho)
    (digit118 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit118 rho) := by
    rw [hdigit]
    cases bits[12]! <;> cases bits[11]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted118 rho) (digit118 rho) (acc119 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7195) (rho 7196) (rho 7198 + rho 7199) ((1 : F) + rho 7201 + rho 7202)
      (rho 7203) (rho 7204) (rho 7205) (rho 7206) (rho 7207) (rho 7208)
      (by simpa [shifted118] using hshift2On)
      (by simpa [digit118] using hdigitOn)
      (by linear_combination r7195)
      (by linear_combination r7196)
      (by linear_combination r7197)
      (by linear_combination r7198)
      (by linear_combination r7199)
      (by linear_combination r7200)
    simpa [shifted118, digit118, acc119] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc119 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted118 rho) (digit118 rho) (acc119 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted118 rho) (digit118 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 13) (rho 12)
      (base rho) (twice rho) (triple rho) (acc118 rho)
      (acc119 rho) :=
    ⟨shiftOnce118 rho, shifted118 rho, digit118 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window119 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc119 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[10]! (scalarBits rho)[9]!
        (base rho) (twice rho) (triple rho) (acc119 rho)
        (acc120 rho) ∧
      EdwardsBridge.onCurve (acc120 rho) := by
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
    _, _, _, _, _, _, _, _, _, _,
    p90, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart90 at p90
  rcases p90 with ⟨_, r7201, r7202, r7203, r7204, r7205, r7206, r7207, r7208, r7209, r7210, r7211, r7212, r7213, r7214, r7215, r7216, r7217, r7218, r7219, r7220, r7221, r7222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7201 at r7201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7202 at r7202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7203 at r7203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7204 at r7204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7205 at r7205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7206 at r7206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7207 at r7207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7208 at r7208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7209 at r7209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7210 at r7210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7211 at r7211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7212 at r7212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7213 at r7213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7214 at r7214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7215 at r7215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7216 at r7216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7217 at r7217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7218 at r7218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7219 at r7219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7220 at r7220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7221 at r7221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7222 at r7222
  have hshift1 : EdwardsBridge.doubleSpec (acc119 rho) (shiftOnce119 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7207) (rho 7208) (rho 7209) (rho 7210) (rho 7211) (rho 7212) (rho 7213)
      (by simpa [acc119] using hacc)
      (by linear_combination r7201)
      (by linear_combination r7202)
      (by linear_combination r7203)
      (by linear_combination r7204)
      (by linear_combination r7205)
    simpa [acc119, shiftOnce119] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce119 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc119 rho) (shiftOnce119 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc119 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce119 rho) (shifted119 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7212) (rho 7213) (rho 7214) (rho 7215) (rho 7216) (rho 7217) (rho 7218)
      (by simpa [shiftOnce119] using hshift1On)
      (by linear_combination r7206)
      (by linear_combination r7207)
      (by linear_combination r7208)
      (by linear_combination r7209)
      (by linear_combination r7210)
    simpa [shiftOnce119, shifted119] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted119 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce119 rho) (shifted119 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce119 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 11) (rho 10)
      (base rho) (twice rho) (triple rho) (digit119 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 11) (rho 10)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7220 + rho 7221, (1 : F) + rho 7223 + rho 7224⟩ := by
      constructor
      · refine ⟨(rho 7219 + (rho 4577) - (0)), rho 7220, ?_, ?_, ?_⟩
        · linear_combination r7211 - (rho 10) * order_cast_zero
        · linear_combination r7212
        · linear_combination r7213
      · refine ⟨(rho 7222 + (rho 4578) - ((1 : F))), rho 7223, ?_, ?_, ?_⟩
        · linear_combination r7214 - (rho 10) * order_cast_zero
        · linear_combination r7215
        · linear_combination r7216
    simpa [base, twice, triple, digit119] using hraw
  have hhigh : rho 11 =
      Bool.toZMod bits[10]! := by
    simpa only using rho_bit_of_map rho bits hbits 10 (by decide +kernel)
  have hlow : rho 10 =
      Bool.toZMod bits[9]! := by
    simpa only using rho_bit_of_map rho bits hbits 9 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[10]! bits[9]! (base rho) (twice rho) (triple rho)
    (digit119 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit119 rho) := by
    rw [hdigit]
    cases bits[10]! <;> cases bits[9]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted119 rho) (digit119 rho) (acc120 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7217) (rho 7218) (rho 7220 + rho 7221) ((1 : F) + rho 7223 + rho 7224)
      (rho 7225) (rho 7226) (rho 7227) (rho 7228) (rho 7229) (rho 7230)
      (by simpa [shifted119] using hshift2On)
      (by simpa [digit119] using hdigitOn)
      (by linear_combination r7217)
      (by linear_combination r7218)
      (by linear_combination r7219)
      (by linear_combination r7220)
      (by linear_combination r7221)
      (by linear_combination r7222)
    simpa [shifted119, digit119, acc120] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc120 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted119 rho) (digit119 rho) (acc120 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted119 rho) (digit119 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 11) (rho 10)
      (base rho) (twice rho) (triple rho) (acc119 rho)
      (acc120 rho) :=
    ⟨shiftOnce119 rho, shifted119 rho, digit119 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
