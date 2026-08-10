import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window54 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc54 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[140]! (scalarBits rho)[139]!
        (base rho) (twice rho) (triple rho) (acc54 rho)
        (acc55 rho) ∧
      EdwardsBridge.onCurve (acc55 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3013 at r3013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3014 at r3014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3015 at r3015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3016 at r3016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3017 at r3017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3018 at r3018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3019 at r3019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3020 at r3020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3021 at r3021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3022 at r3022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3023 at r3023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3024 at r3024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3025 at r3025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3026 at r3026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3027 at r3027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3028 at r3028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3029 at r3029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3030 at r3030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3031 at r3031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3032 at r3032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3033 at r3033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3034 at r3034
  have hshift1 : EdwardsBridge.doubleSpec (acc54 rho) (shiftOnce54 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3017) (rho 3018) (rho 3019) (rho 3020) (rho 3021) (rho 3022) (rho 3023)
      (by simpa [acc54] using hacc)
      (by linear_combination r3013)
      (by linear_combination r3014)
      (by linear_combination r3015)
      (by linear_combination r3016)
      (by linear_combination r3017)
    simpa [acc54, shiftOnce54] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce54 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc54 rho) (shiftOnce54 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc54 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce54 rho) (shifted54 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3022) (rho 3023) (rho 3024) (rho 3025) (rho 3026) (rho 3027) (rho 3028)
      (by simpa [shiftOnce54] using hshift1On)
      (by linear_combination r3018)
      (by linear_combination r3019)
      (by linear_combination r3020)
      (by linear_combination r3021)
      (by linear_combination r3022)
    simpa [shiftOnce54, shifted54] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted54 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce54 rho) (shifted54 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce54 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 141) (rho 140)
      (base rho) (twice rho) (triple rho) (digit54 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 141) (rho 140)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3030 + rho 3031, (1 : F) + rho 3033 + rho 3034⟩ := by
      constructor
      · refine ⟨(rho 3029 + (rho 1817) - (0)), rho 3030, ?_, ?_, ?_⟩
        · linear_combination r3023
        · linear_combination r3024
        · linear_combination r3025
      · refine ⟨(rho 3032 + (rho 1818) - ((1 : F))), rho 3033, ?_, ?_, ?_⟩
        · linear_combination r3026
        · linear_combination r3027
        · linear_combination r3028
    simpa [base, twice, triple, digit54] using hraw
  have hhigh : rho 141 =
      Bool.toZMod bits[140]! := by
    simpa only using rho_bit_of_map rho bits hbits 140 (by decide +kernel)
  have hlow : rho 140 =
      Bool.toZMod bits[139]! := by
    simpa only using rho_bit_of_map rho bits hbits 139 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[140]! bits[139]! (base rho) (twice rho) (triple rho)
    (digit54 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit54 rho) := by
    rw [hdigit]
    cases bits[140]! <;> cases bits[139]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted54 rho) (digit54 rho) (acc55 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3027) (rho 3028) (rho 3030 + rho 3031) ((1 : F) + rho 3033 + rho 3034)
      (rho 3035) (rho 3036) (rho 3037) (rho 3038) (rho 3039) (rho 3040)
      (by simpa [shifted54] using hshift2On)
      (by simpa [digit54] using hdigitOn)
      (by linear_combination r3029)
      (by linear_combination r3030)
      (by linear_combination r3031)
      (by linear_combination r3032)
      (by linear_combination r3033)
      (by linear_combination r3034)
    simpa [shifted54, digit54, acc55] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc55 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted54 rho) (digit54 rho) (acc55 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted54 rho) (digit54 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 141) (rho 140)
      (base rho) (twice rho) (triple rho) (acc54 rho)
      (acc55 rho) :=
    ⟨shiftOnce54 rho, shifted54 rho, digit54 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window55 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc55 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[138]! (scalarBits rho)[137]!
        (base rho) (twice rho) (triple rho) (acc55 rho)
        (acc56 rho) ∧
      EdwardsBridge.onCurve (acc56 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3035, r3036, r3037, r3038, r3039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3035 at r3035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3036 at r3036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3037 at r3037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3038 at r3038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3039 at r3039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3040 at r3040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3041 at r3041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3042 at r3042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3043 at r3043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3044 at r3044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3045 at r3045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3046 at r3046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3047 at r3047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3048 at r3048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3049 at r3049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3050 at r3050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3051 at r3051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3052 at r3052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3053 at r3053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3054 at r3054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3055 at r3055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3056 at r3056
  have hshift1 : EdwardsBridge.doubleSpec (acc55 rho) (shiftOnce55 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3039) (rho 3040) (rho 3041) (rho 3042) (rho 3043) (rho 3044) (rho 3045)
      (by simpa [acc55] using hacc)
      (by linear_combination r3035)
      (by linear_combination r3036)
      (by linear_combination r3037)
      (by linear_combination r3038)
      (by linear_combination r3039)
    simpa [acc55, shiftOnce55] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce55 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc55 rho) (shiftOnce55 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc55 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce55 rho) (shifted55 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3044) (rho 3045) (rho 3046) (rho 3047) (rho 3048) (rho 3049) (rho 3050)
      (by simpa [shiftOnce55] using hshift1On)
      (by linear_combination r3040)
      (by linear_combination r3041)
      (by linear_combination r3042)
      (by linear_combination r3043)
      (by linear_combination r3044)
    simpa [shiftOnce55, shifted55] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted55 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce55 rho) (shifted55 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce55 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 139) (rho 138)
      (base rho) (twice rho) (triple rho) (digit55 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 139) (rho 138)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3052 + rho 3053, (1 : F) + rho 3055 + rho 3056⟩ := by
      constructor
      · refine ⟨(rho 3051 + (rho 1817) - (0)), rho 3052, ?_, ?_, ?_⟩
        · linear_combination r3045
        · linear_combination r3046
        · linear_combination r3047
      · refine ⟨(rho 3054 + (rho 1818) - ((1 : F))), rho 3055, ?_, ?_, ?_⟩
        · linear_combination r3048
        · linear_combination r3049
        · linear_combination r3050
    simpa [base, twice, triple, digit55] using hraw
  have hhigh : rho 139 =
      Bool.toZMod bits[138]! := by
    simpa only using rho_bit_of_map rho bits hbits 138 (by decide +kernel)
  have hlow : rho 138 =
      Bool.toZMod bits[137]! := by
    simpa only using rho_bit_of_map rho bits hbits 137 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[138]! bits[137]! (base rho) (twice rho) (triple rho)
    (digit55 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit55 rho) := by
    rw [hdigit]
    cases bits[138]! <;> cases bits[137]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted55 rho) (digit55 rho) (acc56 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3049) (rho 3050) (rho 3052 + rho 3053) ((1 : F) + rho 3055 + rho 3056)
      (rho 3057) (rho 3058) (rho 3059) (rho 3060) (rho 3061) (rho 3062)
      (by simpa [shifted55] using hshift2On)
      (by simpa [digit55] using hdigitOn)
      (by linear_combination r3051)
      (by linear_combination r3052)
      (by linear_combination r3053)
      (by linear_combination r3054)
      (by linear_combination r3055)
      (by linear_combination r3056)
    simpa [shifted55, digit55, acc56] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc56 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted55 rho) (digit55 rho) (acc56 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted55 rho) (digit55 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 139) (rho 138)
      (base rho) (twice rho) (triple rho) (acc55 rho)
      (acc56 rho) :=
    ⟨shiftOnce55 rho, shifted55 rho, digit55 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window56 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc56 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[136]! (scalarBits rho)[135]!
        (base rho) (twice rho) (triple rho) (acc56 rho)
        (acc57 rho) ∧
      EdwardsBridge.onCurve (acc57 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3057 at r3057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3058 at r3058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3059 at r3059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3060 at r3060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3061 at r3061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3062 at r3062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3063 at r3063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3064 at r3064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3065 at r3065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3066 at r3066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3067 at r3067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3068 at r3068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3069 at r3069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3070 at r3070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3071 at r3071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3072 at r3072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3073 at r3073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3074 at r3074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3075 at r3075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3076 at r3076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3077 at r3077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3078 at r3078
  have hshift1 : EdwardsBridge.doubleSpec (acc56 rho) (shiftOnce56 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3061) (rho 3062) (rho 3063) (rho 3064) (rho 3065) (rho 3066) (rho 3067)
      (by simpa [acc56] using hacc)
      (by linear_combination r3057)
      (by linear_combination r3058)
      (by linear_combination r3059)
      (by linear_combination r3060)
      (by linear_combination r3061)
    simpa [acc56, shiftOnce56] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce56 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc56 rho) (shiftOnce56 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc56 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce56 rho) (shifted56 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3066) (rho 3067) (rho 3068) (rho 3069) (rho 3070) (rho 3071) (rho 3072)
      (by simpa [shiftOnce56] using hshift1On)
      (by linear_combination r3062)
      (by linear_combination r3063)
      (by linear_combination r3064)
      (by linear_combination r3065)
      (by linear_combination r3066)
    simpa [shiftOnce56, shifted56] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted56 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce56 rho) (shifted56 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce56 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 137) (rho 136)
      (base rho) (twice rho) (triple rho) (digit56 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 137) (rho 136)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3074 + rho 3075, (1 : F) + rho 3077 + rho 3078⟩ := by
      constructor
      · refine ⟨(rho 3073 + (rho 1817) - (0)), rho 3074, ?_, ?_, ?_⟩
        · linear_combination r3067
        · linear_combination r3068
        · linear_combination r3069
      · refine ⟨(rho 3076 + (rho 1818) - ((1 : F))), rho 3077, ?_, ?_, ?_⟩
        · linear_combination r3070
        · linear_combination r3071
        · linear_combination r3072
    simpa [base, twice, triple, digit56] using hraw
  have hhigh : rho 137 =
      Bool.toZMod bits[136]! := by
    simpa only using rho_bit_of_map rho bits hbits 136 (by decide +kernel)
  have hlow : rho 136 =
      Bool.toZMod bits[135]! := by
    simpa only using rho_bit_of_map rho bits hbits 135 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[136]! bits[135]! (base rho) (twice rho) (triple rho)
    (digit56 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit56 rho) := by
    rw [hdigit]
    cases bits[136]! <;> cases bits[135]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted56 rho) (digit56 rho) (acc57 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3071) (rho 3072) (rho 3074 + rho 3075) ((1 : F) + rho 3077 + rho 3078)
      (rho 3079) (rho 3080) (rho 3081) (rho 3082) (rho 3083) (rho 3084)
      (by simpa [shifted56] using hshift2On)
      (by simpa [digit56] using hdigitOn)
      (by linear_combination r3073)
      (by linear_combination r3074)
      (by linear_combination r3075)
      (by linear_combination r3076)
      (by linear_combination r3077)
      (by linear_combination r3078)
    simpa [shifted56, digit56, acc57] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc57 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted56 rho) (digit56 rho) (acc57 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted56 rho) (digit56 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 137) (rho 136)
      (base rho) (twice rho) (triple rho) (acc56 rho)
      (acc57 rho) :=
    ⟨shiftOnce56 rho, shifted56 rho, digit56 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window57 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc57 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[134]! (scalarBits rho)[133]!
        (base rho) (twice rho) (triple rho) (acc57 rho)
        (acc58 rho) ∧
      EdwardsBridge.onCurve (acc58 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3079 at r3079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3080 at r3080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3081 at r3081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3082 at r3082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3083 at r3083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3084 at r3084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3085 at r3085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3086 at r3086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3087 at r3087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3088 at r3088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3089 at r3089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3090 at r3090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3091 at r3091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3092 at r3092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3093 at r3093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3094 at r3094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3095 at r3095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3096 at r3096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3097 at r3097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3098 at r3098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3099 at r3099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3100 at r3100
  have hshift1 : EdwardsBridge.doubleSpec (acc57 rho) (shiftOnce57 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3083) (rho 3084) (rho 3085) (rho 3086) (rho 3087) (rho 3088) (rho 3089)
      (by simpa [acc57] using hacc)
      (by linear_combination r3079)
      (by linear_combination r3080)
      (by linear_combination r3081)
      (by linear_combination r3082)
      (by linear_combination r3083)
    simpa [acc57, shiftOnce57] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce57 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc57 rho) (shiftOnce57 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc57 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce57 rho) (shifted57 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3088) (rho 3089) (rho 3090) (rho 3091) (rho 3092) (rho 3093) (rho 3094)
      (by simpa [shiftOnce57] using hshift1On)
      (by linear_combination r3084)
      (by linear_combination r3085)
      (by linear_combination r3086)
      (by linear_combination r3087)
      (by linear_combination r3088)
    simpa [shiftOnce57, shifted57] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted57 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce57 rho) (shifted57 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce57 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 135) (rho 134)
      (base rho) (twice rho) (triple rho) (digit57 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 135) (rho 134)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3096 + rho 3097, (1 : F) + rho 3099 + rho 3100⟩ := by
      constructor
      · refine ⟨(rho 3095 + (rho 1817) - (0)), rho 3096, ?_, ?_, ?_⟩
        · linear_combination r3089
        · linear_combination r3090
        · linear_combination r3091
      · refine ⟨(rho 3098 + (rho 1818) - ((1 : F))), rho 3099, ?_, ?_, ?_⟩
        · linear_combination r3092
        · linear_combination r3093
        · linear_combination r3094
    simpa [base, twice, triple, digit57] using hraw
  have hhigh : rho 135 =
      Bool.toZMod bits[134]! := by
    simpa only using rho_bit_of_map rho bits hbits 134 (by decide +kernel)
  have hlow : rho 134 =
      Bool.toZMod bits[133]! := by
    simpa only using rho_bit_of_map rho bits hbits 133 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[134]! bits[133]! (base rho) (twice rho) (triple rho)
    (digit57 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit57 rho) := by
    rw [hdigit]
    cases bits[134]! <;> cases bits[133]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted57 rho) (digit57 rho) (acc58 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3093) (rho 3094) (rho 3096 + rho 3097) ((1 : F) + rho 3099 + rho 3100)
      (rho 3101) (rho 3102) (rho 3103) (rho 3104) (rho 3105) (rho 3106)
      (by simpa [shifted57] using hshift2On)
      (by simpa [digit57] using hdigitOn)
      (by linear_combination r3095)
      (by linear_combination r3096)
      (by linear_combination r3097)
      (by linear_combination r3098)
      (by linear_combination r3099)
      (by linear_combination r3100)
    simpa [shifted57, digit57, acc58] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc58 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted57 rho) (digit57 rho) (acc58 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted57 rho) (digit57 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 135) (rho 134)
      (base rho) (twice rho) (triple rho) (acc57 rho)
      (acc58 rho) :=
    ⟨shiftOnce57 rho, shifted57 rho, digit57 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window58 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc58 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[132]! (scalarBits rho)[131]!
        (base rho) (twice rho) (triple rho) (acc58 rho)
        (acc59 rho) ∧
      EdwardsBridge.onCurve (acc59 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3101 at r3101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3102 at r3102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3103 at r3103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3104 at r3104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3105 at r3105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3106 at r3106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3107 at r3107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3108 at r3108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3109 at r3109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3110 at r3110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3111 at r3111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3112 at r3112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3113 at r3113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3114 at r3114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3115 at r3115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3116 at r3116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3117 at r3117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3118 at r3118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3119 at r3119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3120 at r3120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3121 at r3121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3122 at r3122
  have hshift1 : EdwardsBridge.doubleSpec (acc58 rho) (shiftOnce58 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3105) (rho 3106) (rho 3107) (rho 3108) (rho 3109) (rho 3110) (rho 3111)
      (by simpa [acc58] using hacc)
      (by linear_combination r3101)
      (by linear_combination r3102)
      (by linear_combination r3103)
      (by linear_combination r3104)
      (by linear_combination r3105)
    simpa [acc58, shiftOnce58] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce58 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc58 rho) (shiftOnce58 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc58 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce58 rho) (shifted58 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3110) (rho 3111) (rho 3112) (rho 3113) (rho 3114) (rho 3115) (rho 3116)
      (by simpa [shiftOnce58] using hshift1On)
      (by linear_combination r3106)
      (by linear_combination r3107)
      (by linear_combination r3108)
      (by linear_combination r3109)
      (by linear_combination r3110)
    simpa [shiftOnce58, shifted58] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted58 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce58 rho) (shifted58 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce58 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 133) (rho 132)
      (base rho) (twice rho) (triple rho) (digit58 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 133) (rho 132)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3118 + rho 3119, (1 : F) + rho 3121 + rho 3122⟩ := by
      constructor
      · refine ⟨(rho 3117 + (rho 1817) - (0)), rho 3118, ?_, ?_, ?_⟩
        · linear_combination r3111
        · linear_combination r3112
        · linear_combination r3113
      · refine ⟨(rho 3120 + (rho 1818) - ((1 : F))), rho 3121, ?_, ?_, ?_⟩
        · linear_combination r3114
        · linear_combination r3115
        · linear_combination r3116
    simpa [base, twice, triple, digit58] using hraw
  have hhigh : rho 133 =
      Bool.toZMod bits[132]! := by
    simpa only using rho_bit_of_map rho bits hbits 132 (by decide +kernel)
  have hlow : rho 132 =
      Bool.toZMod bits[131]! := by
    simpa only using rho_bit_of_map rho bits hbits 131 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[132]! bits[131]! (base rho) (twice rho) (triple rho)
    (digit58 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit58 rho) := by
    rw [hdigit]
    cases bits[132]! <;> cases bits[131]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted58 rho) (digit58 rho) (acc59 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3115) (rho 3116) (rho 3118 + rho 3119) ((1 : F) + rho 3121 + rho 3122)
      (rho 3123) (rho 3124) (rho 3125) (rho 3126) (rho 3127) (rho 3128)
      (by simpa [shifted58] using hshift2On)
      (by simpa [digit58] using hdigitOn)
      (by linear_combination r3117)
      (by linear_combination r3118)
      (by linear_combination r3119)
      (by linear_combination r3120)
      (by linear_combination r3121)
      (by linear_combination r3122)
    simpa [shifted58, digit58, acc59] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc59 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted58 rho) (digit58 rho) (acc59 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted58 rho) (digit58 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 133) (rho 132)
      (base rho) (twice rho) (triple rho) (acc58 rho)
      (acc59 rho) :=
    ⟨shiftOnce58 rho, shifted58 rho, digit58 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window59 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc59 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[130]! (scalarBits rho)[129]!
        (base rho) (twice rho) (triple rho) (acc59 rho)
        (acc60 rho) ∧
      EdwardsBridge.onCurve (acc60 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart39 at p39
  rcases p39 with ⟨_, _, _, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3123 at r3123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3124 at r3124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3125 at r3125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3126 at r3126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3127 at r3127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3128 at r3128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3129 at r3129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3130 at r3130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3131 at r3131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3132 at r3132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3133 at r3133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3134 at r3134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3135 at r3135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3136 at r3136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3137 at r3137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3138 at r3138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3139 at r3139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3140 at r3140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3141 at r3141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3142 at r3142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3143 at r3143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3144 at r3144
  have hshift1 : EdwardsBridge.doubleSpec (acc59 rho) (shiftOnce59 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3127) (rho 3128) (rho 3129) (rho 3130) (rho 3131) (rho 3132) (rho 3133)
      (by simpa [acc59] using hacc)
      (by linear_combination r3123)
      (by linear_combination r3124)
      (by linear_combination r3125)
      (by linear_combination r3126)
      (by linear_combination r3127)
    simpa [acc59, shiftOnce59] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce59 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc59 rho) (shiftOnce59 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc59 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce59 rho) (shifted59 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3132) (rho 3133) (rho 3134) (rho 3135) (rho 3136) (rho 3137) (rho 3138)
      (by simpa [shiftOnce59] using hshift1On)
      (by linear_combination r3128)
      (by linear_combination r3129)
      (by linear_combination r3130)
      (by linear_combination r3131)
      (by linear_combination r3132)
    simpa [shiftOnce59, shifted59] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted59 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce59 rho) (shifted59 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce59 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 131) (rho 130)
      (base rho) (twice rho) (triple rho) (digit59 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 131) (rho 130)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3140 + rho 3141, (1 : F) + rho 3143 + rho 3144⟩ := by
      constructor
      · refine ⟨(rho 3139 + (rho 1817) - (0)), rho 3140, ?_, ?_, ?_⟩
        · linear_combination r3133
        · linear_combination r3134
        · linear_combination r3135
      · refine ⟨(rho 3142 + (rho 1818) - ((1 : F))), rho 3143, ?_, ?_, ?_⟩
        · linear_combination r3136
        · linear_combination r3137
        · linear_combination r3138
    simpa [base, twice, triple, digit59] using hraw
  have hhigh : rho 131 =
      Bool.toZMod bits[130]! := by
    simpa only using rho_bit_of_map rho bits hbits 130 (by decide +kernel)
  have hlow : rho 130 =
      Bool.toZMod bits[129]! := by
    simpa only using rho_bit_of_map rho bits hbits 129 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[130]! bits[129]! (base rho) (twice rho) (triple rho)
    (digit59 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit59 rho) := by
    rw [hdigit]
    cases bits[130]! <;> cases bits[129]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted59 rho) (digit59 rho) (acc60 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3137) (rho 3138) (rho 3140 + rho 3141) ((1 : F) + rho 3143 + rho 3144)
      (rho 3145) (rho 3146) (rho 3147) (rho 3148) (rho 3149) (rho 3150)
      (by simpa [shifted59] using hshift2On)
      (by simpa [digit59] using hdigitOn)
      (by linear_combination r3139)
      (by linear_combination r3140)
      (by linear_combination r3141)
      (by linear_combination r3142)
      (by linear_combination r3143)
      (by linear_combination r3144)
    simpa [shifted59, digit59, acc60] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc60 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted59 rho) (digit59 rho) (acc60 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted59 rho) (digit59 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 131) (rho 130)
      (base rho) (twice rho) (triple rho) (acc59 rho)
      (acc60 rho) :=
    ⟨shiftOnce59 rho, shifted59 rho, digit59 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
