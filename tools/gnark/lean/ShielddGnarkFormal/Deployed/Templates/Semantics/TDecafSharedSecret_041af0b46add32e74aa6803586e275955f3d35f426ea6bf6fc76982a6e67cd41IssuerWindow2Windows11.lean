import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window66 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc66 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[116]! (scalarBits rho)[115]!
        (base rho) (twice rho) (triple rho) (acc66 rho)
        (acc67 rho) ∧
      EdwardsBridge.onCurve (acc67 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6035 at r6035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6036 at r6036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6037 at r6037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6038 at r6038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6039 at r6039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6040 at r6040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6041 at r6041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6042 at r6042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6043 at r6043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6044 at r6044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6045 at r6045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6046 at r6046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6047 at r6047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6048 at r6048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6049 at r6049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6050 at r6050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6051 at r6051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6052 at r6052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6053 at r6053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6054 at r6054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6055 at r6055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6056 at r6056
  have hshift1 : EdwardsBridge.doubleSpec (acc66 rho) (shiftOnce66 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6041) (rho 6042) (rho 6043) (rho 6044) (rho 6045) (rho 6046) (rho 6047)
      (by simpa [acc66] using hacc)
      (by linear_combination r6035)
      (by linear_combination r6036)
      (by linear_combination r6037)
      (by linear_combination r6038)
      (by linear_combination r6039)
    simpa [acc66, shiftOnce66] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce66 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc66 rho) (shiftOnce66 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc66 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce66 rho) (shifted66 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6046) (rho 6047) (rho 6048) (rho 6049) (rho 6050) (rho 6051) (rho 6052)
      (by simpa [shiftOnce66] using hshift1On)
      (by linear_combination r6040)
      (by linear_combination r6041)
      (by linear_combination r6042)
      (by linear_combination r6043)
      (by linear_combination r6044)
    simpa [shiftOnce66, shifted66] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted66 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce66 rho) (shifted66 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce66 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 117) (rho 116)
      (base rho) (twice rho) (triple rho) (digit66 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 117) (rho 116)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6054 + rho 6055, (1 : F) + rho 6057 + rho 6058⟩ := by
      constructor
      · refine ⟨(rho 6053 + (rho 4577) - (0)), rho 6054, ?_, ?_, ?_⟩
        · linear_combination r6045 - (rho 116) * order_cast_zero
        · linear_combination r6046
        · linear_combination r6047
      · refine ⟨(rho 6056 + (rho 4578) - ((1 : F))), rho 6057, ?_, ?_, ?_⟩
        · linear_combination r6048 - (rho 116) * order_cast_zero
        · linear_combination r6049
        · linear_combination r6050
    simpa [base, twice, triple, digit66] using hraw
  have hhigh : rho 117 =
      Bool.toZMod bits[116]! := by
    simpa only using rho_bit_of_map rho bits hbits 116 (by decide +kernel)
  have hlow : rho 116 =
      Bool.toZMod bits[115]! := by
    simpa only using rho_bit_of_map rho bits hbits 115 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[116]! bits[115]! (base rho) (twice rho) (triple rho)
    (digit66 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit66 rho) := by
    rw [hdigit]
    cases bits[116]! <;> cases bits[115]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted66 rho) (digit66 rho) (acc67 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6051) (rho 6052) (rho 6054 + rho 6055) ((1 : F) + rho 6057 + rho 6058)
      (rho 6059) (rho 6060) (rho 6061) (rho 6062) (rho 6063) (rho 6064)
      (by simpa [shifted66] using hshift2On)
      (by simpa [digit66] using hdigitOn)
      (by linear_combination r6051)
      (by linear_combination r6052)
      (by linear_combination r6053)
      (by linear_combination r6054)
      (by linear_combination r6055)
      (by linear_combination r6056)
    simpa [shifted66, digit66, acc67] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc67 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted66 rho) (digit66 rho) (acc67 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted66 rho) (digit66 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 117) (rho 116)
      (base rho) (twice rho) (triple rho) (acc66 rho)
      (acc67 rho) :=
    ⟨shiftOnce66 rho, shifted66 rho, digit66 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window67 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc67 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[114]! (scalarBits rho)[113]!
        (base rho) (twice rho) (triple rho) (acc67 rho)
        (acc68 rho) ∧
      EdwardsBridge.onCurve (acc68 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077, r6078, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6057 at r6057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6058 at r6058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6059 at r6059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6060 at r6060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6061 at r6061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6062 at r6062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6063 at r6063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6064 at r6064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6065 at r6065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6066 at r6066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6067 at r6067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6068 at r6068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6069 at r6069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6070 at r6070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6071 at r6071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6072 at r6072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6073 at r6073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6074 at r6074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6075 at r6075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6076 at r6076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6077 at r6077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6078 at r6078
  have hshift1 : EdwardsBridge.doubleSpec (acc67 rho) (shiftOnce67 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6063) (rho 6064) (rho 6065) (rho 6066) (rho 6067) (rho 6068) (rho 6069)
      (by simpa [acc67] using hacc)
      (by linear_combination r6057)
      (by linear_combination r6058)
      (by linear_combination r6059)
      (by linear_combination r6060)
      (by linear_combination r6061)
    simpa [acc67, shiftOnce67] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce67 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc67 rho) (shiftOnce67 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc67 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce67 rho) (shifted67 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6068) (rho 6069) (rho 6070) (rho 6071) (rho 6072) (rho 6073) (rho 6074)
      (by simpa [shiftOnce67] using hshift1On)
      (by linear_combination r6062)
      (by linear_combination r6063)
      (by linear_combination r6064)
      (by linear_combination r6065)
      (by linear_combination r6066)
    simpa [shiftOnce67, shifted67] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted67 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce67 rho) (shifted67 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce67 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 115) (rho 114)
      (base rho) (twice rho) (triple rho) (digit67 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 115) (rho 114)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6076 + rho 6077, (1 : F) + rho 6079 + rho 6080⟩ := by
      constructor
      · refine ⟨(rho 6075 + (rho 4577) - (0)), rho 6076, ?_, ?_, ?_⟩
        · linear_combination r6067 - (rho 114) * order_cast_zero
        · linear_combination r6068
        · linear_combination r6069
      · refine ⟨(rho 6078 + (rho 4578) - ((1 : F))), rho 6079, ?_, ?_, ?_⟩
        · linear_combination r6070 - (rho 114) * order_cast_zero
        · linear_combination r6071
        · linear_combination r6072
    simpa [base, twice, triple, digit67] using hraw
  have hhigh : rho 115 =
      Bool.toZMod bits[114]! := by
    simpa only using rho_bit_of_map rho bits hbits 114 (by decide +kernel)
  have hlow : rho 114 =
      Bool.toZMod bits[113]! := by
    simpa only using rho_bit_of_map rho bits hbits 113 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[114]! bits[113]! (base rho) (twice rho) (triple rho)
    (digit67 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit67 rho) := by
    rw [hdigit]
    cases bits[114]! <;> cases bits[113]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted67 rho) (digit67 rho) (acc68 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6073) (rho 6074) (rho 6076 + rho 6077) ((1 : F) + rho 6079 + rho 6080)
      (rho 6081) (rho 6082) (rho 6083) (rho 6084) (rho 6085) (rho 6086)
      (by simpa [shifted67] using hshift2On)
      (by simpa [digit67] using hdigitOn)
      (by linear_combination r6073)
      (by linear_combination r6074)
      (by linear_combination r6075)
      (by linear_combination r6076)
      (by linear_combination r6077)
      (by linear_combination r6078)
    simpa [shifted67, digit67, acc68] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc68 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted67 rho) (digit67 rho) (acc68 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted67 rho) (digit67 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 115) (rho 114)
      (base rho) (twice rho) (triple rho) (acc67 rho)
      (acc68 rho) :=
    ⟨shiftOnce67 rho, shifted67 rho, digit67 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window68 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc68 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[112]! (scalarBits rho)[111]!
        (base rho) (twice rho) (triple rho) (acc68 rho)
        (acc69 rho) ∧
      EdwardsBridge.onCurve (acc69 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, p76, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6079 at r6079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6080 at r6080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6081 at r6081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6082 at r6082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6083 at r6083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6084 at r6084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6085 at r6085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6086 at r6086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6087 at r6087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6088 at r6088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6089 at r6089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6090 at r6090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6091 at r6091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6092 at r6092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6093 at r6093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6094 at r6094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6095 at r6095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6096 at r6096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6097 at r6097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6098 at r6098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6099 at r6099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6100 at r6100
  have hshift1 : EdwardsBridge.doubleSpec (acc68 rho) (shiftOnce68 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6085) (rho 6086) (rho 6087) (rho 6088) (rho 6089) (rho 6090) (rho 6091)
      (by simpa [acc68] using hacc)
      (by linear_combination r6079)
      (by linear_combination r6080)
      (by linear_combination r6081)
      (by linear_combination r6082)
      (by linear_combination r6083)
    simpa [acc68, shiftOnce68] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce68 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc68 rho) (shiftOnce68 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc68 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce68 rho) (shifted68 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6090) (rho 6091) (rho 6092) (rho 6093) (rho 6094) (rho 6095) (rho 6096)
      (by simpa [shiftOnce68] using hshift1On)
      (by linear_combination r6084)
      (by linear_combination r6085)
      (by linear_combination r6086)
      (by linear_combination r6087)
      (by linear_combination r6088)
    simpa [shiftOnce68, shifted68] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted68 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce68 rho) (shifted68 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce68 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 113) (rho 112)
      (base rho) (twice rho) (triple rho) (digit68 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 113) (rho 112)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6098 + rho 6099, (1 : F) + rho 6101 + rho 6102⟩ := by
      constructor
      · refine ⟨(rho 6097 + (rho 4577) - (0)), rho 6098, ?_, ?_, ?_⟩
        · linear_combination r6089 - (rho 112) * order_cast_zero
        · linear_combination r6090
        · linear_combination r6091
      · refine ⟨(rho 6100 + (rho 4578) - ((1 : F))), rho 6101, ?_, ?_, ?_⟩
        · linear_combination r6092 - (rho 112) * order_cast_zero
        · linear_combination r6093
        · linear_combination r6094
    simpa [base, twice, triple, digit68] using hraw
  have hhigh : rho 113 =
      Bool.toZMod bits[112]! := by
    simpa only using rho_bit_of_map rho bits hbits 112 (by decide +kernel)
  have hlow : rho 112 =
      Bool.toZMod bits[111]! := by
    simpa only using rho_bit_of_map rho bits hbits 111 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[112]! bits[111]! (base rho) (twice rho) (triple rho)
    (digit68 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit68 rho) := by
    rw [hdigit]
    cases bits[112]! <;> cases bits[111]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted68 rho) (digit68 rho) (acc69 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6095) (rho 6096) (rho 6098 + rho 6099) ((1 : F) + rho 6101 + rho 6102)
      (rho 6103) (rho 6104) (rho 6105) (rho 6106) (rho 6107) (rho 6108)
      (by simpa [shifted68] using hshift2On)
      (by simpa [digit68] using hdigitOn)
      (by linear_combination r6095)
      (by linear_combination r6096)
      (by linear_combination r6097)
      (by linear_combination r6098)
      (by linear_combination r6099)
      (by linear_combination r6100)
    simpa [shifted68, digit68, acc69] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc69 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted68 rho) (digit68 rho) (acc69 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted68 rho) (digit68 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 113) (rho 112)
      (base rho) (twice rho) (triple rho) (acc68 rho)
      (acc69 rho) :=
    ⟨shiftOnce68 rho, shifted68 rho, digit68 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window69 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc69 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[110]! (scalarBits rho)[109]!
        (base rho) (twice rho) (triple rho) (acc69 rho)
        (acc70 rho) ∧
      EdwardsBridge.onCurve (acc70 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6101, r6102, r6103, r6104, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, r6119, r6120, r6121, r6122, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6101 at r6101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6102 at r6102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6103 at r6103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6104 at r6104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6105 at r6105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6106 at r6106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6107 at r6107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6108 at r6108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6109 at r6109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6110 at r6110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6111 at r6111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6112 at r6112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6113 at r6113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6114 at r6114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6115 at r6115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6116 at r6116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6117 at r6117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6118 at r6118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6119 at r6119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6120 at r6120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6121 at r6121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6122 at r6122
  have hshift1 : EdwardsBridge.doubleSpec (acc69 rho) (shiftOnce69 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6107) (rho 6108) (rho 6109) (rho 6110) (rho 6111) (rho 6112) (rho 6113)
      (by simpa [acc69] using hacc)
      (by linear_combination r6101)
      (by linear_combination r6102)
      (by linear_combination r6103)
      (by linear_combination r6104)
      (by linear_combination r6105)
    simpa [acc69, shiftOnce69] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce69 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc69 rho) (shiftOnce69 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc69 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce69 rho) (shifted69 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6112) (rho 6113) (rho 6114) (rho 6115) (rho 6116) (rho 6117) (rho 6118)
      (by simpa [shiftOnce69] using hshift1On)
      (by linear_combination r6106)
      (by linear_combination r6107)
      (by linear_combination r6108)
      (by linear_combination r6109)
      (by linear_combination r6110)
    simpa [shiftOnce69, shifted69] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted69 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce69 rho) (shifted69 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce69 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 111) (rho 110)
      (base rho) (twice rho) (triple rho) (digit69 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 111) (rho 110)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6120 + rho 6121, (1 : F) + rho 6123 + rho 6124⟩ := by
      constructor
      · refine ⟨(rho 6119 + (rho 4577) - (0)), rho 6120, ?_, ?_, ?_⟩
        · linear_combination r6111 - (rho 110) * order_cast_zero
        · linear_combination r6112
        · linear_combination r6113
      · refine ⟨(rho 6122 + (rho 4578) - ((1 : F))), rho 6123, ?_, ?_, ?_⟩
        · linear_combination r6114 - (rho 110) * order_cast_zero
        · linear_combination r6115
        · linear_combination r6116
    simpa [base, twice, triple, digit69] using hraw
  have hhigh : rho 111 =
      Bool.toZMod bits[110]! := by
    simpa only using rho_bit_of_map rho bits hbits 110 (by decide +kernel)
  have hlow : rho 110 =
      Bool.toZMod bits[109]! := by
    simpa only using rho_bit_of_map rho bits hbits 109 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[110]! bits[109]! (base rho) (twice rho) (triple rho)
    (digit69 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit69 rho) := by
    rw [hdigit]
    cases bits[110]! <;> cases bits[109]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted69 rho) (digit69 rho) (acc70 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6117) (rho 6118) (rho 6120 + rho 6121) ((1 : F) + rho 6123 + rho 6124)
      (rho 6125) (rho 6126) (rho 6127) (rho 6128) (rho 6129) (rho 6130)
      (by simpa [shifted69] using hshift2On)
      (by simpa [digit69] using hdigitOn)
      (by linear_combination r6117)
      (by linear_combination r6118)
      (by linear_combination r6119)
      (by linear_combination r6120)
      (by linear_combination r6121)
      (by linear_combination r6122)
    simpa [shifted69, digit69, acc70] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc70 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted69 rho) (digit69 rho) (acc70 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted69 rho) (digit69 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 111) (rho 110)
      (base rho) (twice rho) (triple rho) (acc69 rho)
      (acc70 rho) :=
    ⟨shiftOnce69 rho, shifted69 rho, digit69 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window70 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc70 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[108]! (scalarBits rho)[107]!
        (base rho) (twice rho) (triple rho) (acc70 rho)
        (acc71 rho) ∧
      EdwardsBridge.onCurve (acc71 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6123 at r6123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6124 at r6124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6125 at r6125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6126 at r6126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6127 at r6127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6128 at r6128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6129 at r6129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6130 at r6130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6131 at r6131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6132 at r6132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6133 at r6133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6134 at r6134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6135 at r6135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6136 at r6136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6137 at r6137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6138 at r6138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6139 at r6139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6140 at r6140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6141 at r6141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6142 at r6142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6143 at r6143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6144 at r6144
  have hshift1 : EdwardsBridge.doubleSpec (acc70 rho) (shiftOnce70 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6129) (rho 6130) (rho 6131) (rho 6132) (rho 6133) (rho 6134) (rho 6135)
      (by simpa [acc70] using hacc)
      (by linear_combination r6123)
      (by linear_combination r6124)
      (by linear_combination r6125)
      (by linear_combination r6126)
      (by linear_combination r6127)
    simpa [acc70, shiftOnce70] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce70 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc70 rho) (shiftOnce70 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc70 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce70 rho) (shifted70 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6134) (rho 6135) (rho 6136) (rho 6137) (rho 6138) (rho 6139) (rho 6140)
      (by simpa [shiftOnce70] using hshift1On)
      (by linear_combination r6128)
      (by linear_combination r6129)
      (by linear_combination r6130)
      (by linear_combination r6131)
      (by linear_combination r6132)
    simpa [shiftOnce70, shifted70] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted70 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce70 rho) (shifted70 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce70 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 109) (rho 108)
      (base rho) (twice rho) (triple rho) (digit70 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 109) (rho 108)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6142 + rho 6143, (1 : F) + rho 6145 + rho 6146⟩ := by
      constructor
      · refine ⟨(rho 6141 + (rho 4577) - (0)), rho 6142, ?_, ?_, ?_⟩
        · linear_combination r6133 - (rho 108) * order_cast_zero
        · linear_combination r6134
        · linear_combination r6135
      · refine ⟨(rho 6144 + (rho 4578) - ((1 : F))), rho 6145, ?_, ?_, ?_⟩
        · linear_combination r6136 - (rho 108) * order_cast_zero
        · linear_combination r6137
        · linear_combination r6138
    simpa [base, twice, triple, digit70] using hraw
  have hhigh : rho 109 =
      Bool.toZMod bits[108]! := by
    simpa only using rho_bit_of_map rho bits hbits 108 (by decide +kernel)
  have hlow : rho 108 =
      Bool.toZMod bits[107]! := by
    simpa only using rho_bit_of_map rho bits hbits 107 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[108]! bits[107]! (base rho) (twice rho) (triple rho)
    (digit70 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit70 rho) := by
    rw [hdigit]
    cases bits[108]! <;> cases bits[107]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted70 rho) (digit70 rho) (acc71 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6139) (rho 6140) (rho 6142 + rho 6143) ((1 : F) + rho 6145 + rho 6146)
      (rho 6147) (rho 6148) (rho 6149) (rho 6150) (rho 6151) (rho 6152)
      (by simpa [shifted70] using hshift2On)
      (by simpa [digit70] using hdigitOn)
      (by linear_combination r6139)
      (by linear_combination r6140)
      (by linear_combination r6141)
      (by linear_combination r6142)
      (by linear_combination r6143)
      (by linear_combination r6144)
    simpa [shifted70, digit70, acc71] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc71 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted70 rho) (digit70 rho) (acc71 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted70 rho) (digit70 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 109) (rho 108)
      (base rho) (twice rho) (triple rho) (acc70 rho)
      (acc71 rho) :=
    ⟨shiftOnce70 rho, shifted70 rho, digit70 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window71 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc71 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[106]! (scalarBits rho)[105]!
        (base rho) (twice rho) (triple rho) (acc71 rho)
        (acc72 rho) ∧
      EdwardsBridge.onCurve (acc72 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, p77, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6145, r6146, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart77 at p77
  rcases p77 with ⟨r6160, r6161, r6162, r6163, r6164, r6165, r6166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6145 at r6145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6146 at r6146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6147 at r6147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6148 at r6148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6149 at r6149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6150 at r6150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6151 at r6151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6152 at r6152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6153 at r6153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6154 at r6154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6155 at r6155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6156 at r6156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6157 at r6157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6158 at r6158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6159 at r6159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6160 at r6160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6161 at r6161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6162 at r6162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6163 at r6163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6164 at r6164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6165 at r6165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6166 at r6166
  have hshift1 : EdwardsBridge.doubleSpec (acc71 rho) (shiftOnce71 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6151) (rho 6152) (rho 6153) (rho 6154) (rho 6155) (rho 6156) (rho 6157)
      (by simpa [acc71] using hacc)
      (by linear_combination r6145)
      (by linear_combination r6146)
      (by linear_combination r6147)
      (by linear_combination r6148)
      (by linear_combination r6149)
    simpa [acc71, shiftOnce71] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce71 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc71 rho) (shiftOnce71 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc71 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce71 rho) (shifted71 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6156) (rho 6157) (rho 6158) (rho 6159) (rho 6160) (rho 6161) (rho 6162)
      (by simpa [shiftOnce71] using hshift1On)
      (by linear_combination r6150)
      (by linear_combination r6151)
      (by linear_combination r6152)
      (by linear_combination r6153)
      (by linear_combination r6154)
    simpa [shiftOnce71, shifted71] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted71 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce71 rho) (shifted71 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce71 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 107) (rho 106)
      (base rho) (twice rho) (triple rho) (digit71 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 107) (rho 106)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6164 + rho 6165, (1 : F) + rho 6167 + rho 6168⟩ := by
      constructor
      · refine ⟨(rho 6163 + (rho 4577) - (0)), rho 6164, ?_, ?_, ?_⟩
        · linear_combination r6155 - (rho 106) * order_cast_zero
        · linear_combination r6156
        · linear_combination r6157
      · refine ⟨(rho 6166 + (rho 4578) - ((1 : F))), rho 6167, ?_, ?_, ?_⟩
        · linear_combination r6158 - (rho 106) * order_cast_zero
        · linear_combination r6159
        · linear_combination r6160
    simpa [base, twice, triple, digit71] using hraw
  have hhigh : rho 107 =
      Bool.toZMod bits[106]! := by
    simpa only using rho_bit_of_map rho bits hbits 106 (by decide +kernel)
  have hlow : rho 106 =
      Bool.toZMod bits[105]! := by
    simpa only using rho_bit_of_map rho bits hbits 105 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[106]! bits[105]! (base rho) (twice rho) (triple rho)
    (digit71 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit71 rho) := by
    rw [hdigit]
    cases bits[106]! <;> cases bits[105]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted71 rho) (digit71 rho) (acc72 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6161) (rho 6162) (rho 6164 + rho 6165) ((1 : F) + rho 6167 + rho 6168)
      (rho 6169) (rho 6170) (rho 6171) (rho 6172) (rho 6173) (rho 6174)
      (by simpa [shifted71] using hshift2On)
      (by simpa [digit71] using hdigitOn)
      (by linear_combination r6161)
      (by linear_combination r6162)
      (by linear_combination r6163)
      (by linear_combination r6164)
      (by linear_combination r6165)
      (by linear_combination r6166)
    simpa [shifted71, digit71, acc72] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc72 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted71 rho) (digit71 rho) (acc72 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted71 rho) (digit71 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 107) (rho 106)
      (base rho) (twice rho) (triple rho) (acc71 rho)
      (acc72 rho) :=
    ⟨shiftOnce71 rho, shifted71 rho, digit71 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
