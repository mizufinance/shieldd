import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window12 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc12 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[224]! (scalarBits rho)[223]!
        (base rho) (twice rho) (triple rho) (acc12 rho)
        (acc13 rho) ∧
      EdwardsBridge.onCurve (acc13 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3000 at r3000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3001 at r3001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3002 at r3002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3003 at r3003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3004 at r3004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3005 at r3005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3006 at r3006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3007 at r3007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3008 at r3008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3009 at r3009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3010 at r3010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3011 at r3011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3012 at r3012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3013 at r3013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3014 at r3014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3015 at r3015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3016 at r3016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3017 at r3017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3018 at r3018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3019 at r3019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3020 at r3020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3021 at r3021
  have hshift1 : EdwardsBridge.doubleSpec (acc12 rho) (shiftOnce12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2492) (rho 2493) (rho 2494) (rho 2495) (rho 2496) (rho 2497) (rho 2498)
      (by simpa [acc12] using hacc)
      (by linear_combination r3000)
      (by linear_combination r3001)
      (by linear_combination r3002)
      (by linear_combination r3003)
      (by linear_combination r3004)
    simpa [acc12, shiftOnce12] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc12 rho) (shiftOnce12 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc12 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce12 rho) (shifted12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2497) (rho 2498) (rho 2499) (rho 2500) (rho 2501) (rho 2502) (rho 2503)
      (by simpa [shiftOnce12] using hshift1On)
      (by linear_combination r3005)
      (by linear_combination r3006)
      (by linear_combination r3007)
      (by linear_combination r3008)
      (by linear_combination r3009)
    simpa [shiftOnce12, shifted12] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce12 rho) (shifted12 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce12 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1207) (rho 1206)
      (base rho) (twice rho) (triple rho) (digit12 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1207) (rho 1206)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2505 + rho 2506, (1 : F) + rho 2508 + rho 2509⟩ := by
      constructor
      · refine ⟨(rho 2504 + (rho 2216) - (0)), rho 2505, ?_, ?_, ?_⟩
        · linear_combination r3010
        · linear_combination r3011
        · linear_combination r3012
      · refine ⟨(rho 2507 + (rho 2217) - ((1 : F))), rho 2508, ?_, ?_, ?_⟩
        · linear_combination r3013
        · linear_combination r3014
        · linear_combination r3015
    simpa [base, twice, triple, digit12] using hraw
  have hhigh : rho 1207 =
      Bool.toZMod bits[224]! := by
    simpa only using rho_bit_of_map rho bits hbits 224 (by decide +kernel)
  have hlow : rho 1206 =
      Bool.toZMod bits[223]! := by
    simpa only using rho_bit_of_map rho bits hbits 223 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[224]! bits[223]! (base rho) (twice rho) (triple rho)
    (digit12 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit12 rho) := by
    rw [hdigit]
    cases bits[224]! <;> cases bits[223]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted12 rho) (digit12 rho) (acc13 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2502) (rho 2503) (rho 2505 + rho 2506) ((1 : F) + rho 2508 + rho 2509)
      (rho 2510) (rho 2511) (rho 2512) (rho 2513) (rho 2514) (rho 2515)
      (by simpa [shifted12] using hshift2On)
      (by simpa [digit12] using hdigitOn)
      (by linear_combination r3016)
      (by linear_combination r3017)
      (by linear_combination r3018)
      (by linear_combination r3019)
      (by linear_combination r3020)
      (by linear_combination r3021)
    simpa [shifted12, digit12, acc13] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc13 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted12 rho) (digit12 rho) (acc13 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted12 rho) (digit12 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1207) (rho 1206)
      (base rho) (twice rho) (triple rho) (acc12 rho)
      (acc13 rho) :=
    ⟨shiftOnce12 rho, shifted12 rho, digit12 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window13 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc13 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[222]! (scalarBits rho)[221]!
        (base rho) (twice rho) (triple rho) (acc13 rho)
        (acc14 rho) ∧
      EdwardsBridge.onCurve (acc14 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, r3037, r3038, r3039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart38 at p38
  rcases p38 with ⟨r3040, r3041, r3042, r3043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3022 at r3022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3023 at r3023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3024 at r3024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3025 at r3025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3026 at r3026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3027 at r3027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3028 at r3028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3029 at r3029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3030 at r3030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3031 at r3031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3032 at r3032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3033 at r3033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3034 at r3034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3035 at r3035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3036 at r3036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3037 at r3037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3038 at r3038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3039 at r3039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3040 at r3040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3041 at r3041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3042 at r3042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3043 at r3043
  have hshift1 : EdwardsBridge.doubleSpec (acc13 rho) (shiftOnce13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2514) (rho 2515) (rho 2516) (rho 2517) (rho 2518) (rho 2519) (rho 2520)
      (by simpa [acc13] using hacc)
      (by linear_combination r3022)
      (by linear_combination r3023)
      (by linear_combination r3024)
      (by linear_combination r3025)
      (by linear_combination r3026)
    simpa [acc13, shiftOnce13] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc13 rho) (shiftOnce13 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc13 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce13 rho) (shifted13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2519) (rho 2520) (rho 2521) (rho 2522) (rho 2523) (rho 2524) (rho 2525)
      (by simpa [shiftOnce13] using hshift1On)
      (by linear_combination r3027)
      (by linear_combination r3028)
      (by linear_combination r3029)
      (by linear_combination r3030)
      (by linear_combination r3031)
    simpa [shiftOnce13, shifted13] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce13 rho) (shifted13 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce13 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1205) (rho 1204)
      (base rho) (twice rho) (triple rho) (digit13 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1205) (rho 1204)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2527 + rho 2528, (1 : F) + rho 2530 + rho 2531⟩ := by
      constructor
      · refine ⟨(rho 2526 + (rho 2216) - (0)), rho 2527, ?_, ?_, ?_⟩
        · linear_combination r3032
        · linear_combination r3033
        · linear_combination r3034
      · refine ⟨(rho 2529 + (rho 2217) - ((1 : F))), rho 2530, ?_, ?_, ?_⟩
        · linear_combination r3035
        · linear_combination r3036
        · linear_combination r3037
    simpa [base, twice, triple, digit13] using hraw
  have hhigh : rho 1205 =
      Bool.toZMod bits[222]! := by
    simpa only using rho_bit_of_map rho bits hbits 222 (by decide +kernel)
  have hlow : rho 1204 =
      Bool.toZMod bits[221]! := by
    simpa only using rho_bit_of_map rho bits hbits 221 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[222]! bits[221]! (base rho) (twice rho) (triple rho)
    (digit13 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit13 rho) := by
    rw [hdigit]
    cases bits[222]! <;> cases bits[221]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted13 rho) (digit13 rho) (acc14 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2524) (rho 2525) (rho 2527 + rho 2528) ((1 : F) + rho 2530 + rho 2531)
      (rho 2532) (rho 2533) (rho 2534) (rho 2535) (rho 2536) (rho 2537)
      (by simpa [shifted13] using hshift2On)
      (by simpa [digit13] using hdigitOn)
      (by linear_combination r3038)
      (by linear_combination r3039)
      (by linear_combination r3040)
      (by linear_combination r3041)
      (by linear_combination r3042)
      (by linear_combination r3043)
    simpa [shifted13, digit13, acc14] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc14 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted13 rho) (digit13 rho) (acc14 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted13 rho) (digit13 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1205) (rho 1204)
      (base rho) (twice rho) (triple rho) (acc13 rho)
      (acc14 rho) :=
    ⟨shiftOnce13 rho, shifted13 rho, digit13 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window14 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc14 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[220]! (scalarBits rho)[219]!
        (base rho) (twice rho) (triple rho) (acc14 rho)
        (acc15 rho) ∧
      EdwardsBridge.onCurve (acc15 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, r3044, r3045, r3046, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, r3063, r3064, r3065, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3044 at r3044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3045 at r3045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3046 at r3046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3047 at r3047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3048 at r3048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3049 at r3049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3050 at r3050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3051 at r3051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3052 at r3052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3053 at r3053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3054 at r3054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3055 at r3055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3056 at r3056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3057 at r3057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3058 at r3058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3059 at r3059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3060 at r3060
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3061 at r3061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3062 at r3062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3063 at r3063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3064 at r3064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3065 at r3065
  have hshift1 : EdwardsBridge.doubleSpec (acc14 rho) (shiftOnce14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2536) (rho 2537) (rho 2538) (rho 2539) (rho 2540) (rho 2541) (rho 2542)
      (by simpa [acc14] using hacc)
      (by linear_combination r3044)
      (by linear_combination r3045)
      (by linear_combination r3046)
      (by linear_combination r3047)
      (by linear_combination r3048)
    simpa [acc14, shiftOnce14] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc14 rho) (shiftOnce14 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc14 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce14 rho) (shifted14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2541) (rho 2542) (rho 2543) (rho 2544) (rho 2545) (rho 2546) (rho 2547)
      (by simpa [shiftOnce14] using hshift1On)
      (by linear_combination r3049)
      (by linear_combination r3050)
      (by linear_combination r3051)
      (by linear_combination r3052)
      (by linear_combination r3053)
    simpa [shiftOnce14, shifted14] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce14 rho) (shifted14 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce14 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1203) (rho 1202)
      (base rho) (twice rho) (triple rho) (digit14 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1203) (rho 1202)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2549 + rho 2550, (1 : F) + rho 2552 + rho 2553⟩ := by
      constructor
      · refine ⟨(rho 2548 + (rho 2216) - (0)), rho 2549, ?_, ?_, ?_⟩
        · linear_combination r3054
        · linear_combination r3055
        · linear_combination r3056
      · refine ⟨(rho 2551 + (rho 2217) - ((1 : F))), rho 2552, ?_, ?_, ?_⟩
        · linear_combination r3057
        · linear_combination r3058
        · linear_combination r3059
    simpa [base, twice, triple, digit14] using hraw
  have hhigh : rho 1203 =
      Bool.toZMod bits[220]! := by
    simpa only using rho_bit_of_map rho bits hbits 220 (by decide +kernel)
  have hlow : rho 1202 =
      Bool.toZMod bits[219]! := by
    simpa only using rho_bit_of_map rho bits hbits 219 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[220]! bits[219]! (base rho) (twice rho) (triple rho)
    (digit14 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit14 rho) := by
    rw [hdigit]
    cases bits[220]! <;> cases bits[219]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted14 rho) (digit14 rho) (acc15 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2546) (rho 2547) (rho 2549 + rho 2550) ((1 : F) + rho 2552 + rho 2553)
      (rho 2554) (rho 2555) (rho 2556) (rho 2557) (rho 2558) (rho 2559)
      (by simpa [shifted14] using hshift2On)
      (by simpa [digit14] using hdigitOn)
      (by linear_combination r3060)
      (by linear_combination r3061)
      (by linear_combination r3062)
      (by linear_combination r3063)
      (by linear_combination r3064)
      (by linear_combination r3065)
    simpa [shifted14, digit14, acc15] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc15 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted14 rho) (digit14 rho) (acc15 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted14 rho) (digit14 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1203) (rho 1202)
      (base rho) (twice rho) (triple rho) (acc14 rho)
      (acc15 rho) :=
    ⟨shiftOnce14 rho, shifted14 rho, digit14 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window15 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc15 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[218]! (scalarBits rho)[217]!
        (base rho) (twice rho) (triple rho) (acc15 rho)
        (acc16 rho) ∧
      EdwardsBridge.onCurve (acc16 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3066 at r3066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3067 at r3067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3068 at r3068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3069 at r3069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3070 at r3070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3071 at r3071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3072 at r3072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3073 at r3073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3074 at r3074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3075 at r3075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3076 at r3076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3077 at r3077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3078 at r3078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3079 at r3079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3080 at r3080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3081 at r3081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3082 at r3082
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3083 at r3083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3084 at r3084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3085 at r3085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3086 at r3086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3087 at r3087
  have hshift1 : EdwardsBridge.doubleSpec (acc15 rho) (shiftOnce15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2558) (rho 2559) (rho 2560) (rho 2561) (rho 2562) (rho 2563) (rho 2564)
      (by simpa [acc15] using hacc)
      (by linear_combination r3066)
      (by linear_combination r3067)
      (by linear_combination r3068)
      (by linear_combination r3069)
      (by linear_combination r3070)
    simpa [acc15, shiftOnce15] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc15 rho) (shiftOnce15 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc15 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce15 rho) (shifted15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2563) (rho 2564) (rho 2565) (rho 2566) (rho 2567) (rho 2568) (rho 2569)
      (by simpa [shiftOnce15] using hshift1On)
      (by linear_combination r3071)
      (by linear_combination r3072)
      (by linear_combination r3073)
      (by linear_combination r3074)
      (by linear_combination r3075)
    simpa [shiftOnce15, shifted15] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce15 rho) (shifted15 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce15 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1201) (rho 1200)
      (base rho) (twice rho) (triple rho) (digit15 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1201) (rho 1200)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2571 + rho 2572, (1 : F) + rho 2574 + rho 2575⟩ := by
      constructor
      · refine ⟨(rho 2570 + (rho 2216) - (0)), rho 2571, ?_, ?_, ?_⟩
        · linear_combination r3076
        · linear_combination r3077
        · linear_combination r3078
      · refine ⟨(rho 2573 + (rho 2217) - ((1 : F))), rho 2574, ?_, ?_, ?_⟩
        · linear_combination r3079
        · linear_combination r3080
        · linear_combination r3081
    simpa [base, twice, triple, digit15] using hraw
  have hhigh : rho 1201 =
      Bool.toZMod bits[218]! := by
    simpa only using rho_bit_of_map rho bits hbits 218 (by decide +kernel)
  have hlow : rho 1200 =
      Bool.toZMod bits[217]! := by
    simpa only using rho_bit_of_map rho bits hbits 217 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[218]! bits[217]! (base rho) (twice rho) (triple rho)
    (digit15 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit15 rho) := by
    rw [hdigit]
    cases bits[218]! <;> cases bits[217]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted15 rho) (digit15 rho) (acc16 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2568) (rho 2569) (rho 2571 + rho 2572) ((1 : F) + rho 2574 + rho 2575)
      (rho 2576) (rho 2577) (rho 2578) (rho 2579) (rho 2580) (rho 2581)
      (by simpa [shifted15] using hshift2On)
      (by simpa [digit15] using hdigitOn)
      (by linear_combination r3082)
      (by linear_combination r3083)
      (by linear_combination r3084)
      (by linear_combination r3085)
      (by linear_combination r3086)
      (by linear_combination r3087)
    simpa [shifted15, digit15, acc16] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc16 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted15 rho) (digit15 rho) (acc16 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted15 rho) (digit15 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1201) (rho 1200)
      (base rho) (twice rho) (triple rho) (acc15 rho)
      (acc16 rho) :=
    ⟨shiftOnce15 rho, shifted15 rho, digit15 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window16 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc16 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[216]! (scalarBits rho)[215]!
        (base rho) (twice rho) (triple rho) (acc16 rho)
        (acc17 rho) ∧
      EdwardsBridge.onCurve (acc17 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3088 at r3088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3089 at r3089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3090 at r3090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3091 at r3091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3092 at r3092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3093 at r3093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3094 at r3094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3095 at r3095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3096 at r3096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3097 at r3097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3098 at r3098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3099 at r3099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3100 at r3100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3101 at r3101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3102 at r3102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3103 at r3103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3104 at r3104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3105 at r3105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3106 at r3106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3107 at r3107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3108 at r3108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3109 at r3109
  have hshift1 : EdwardsBridge.doubleSpec (acc16 rho) (shiftOnce16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2580) (rho 2581) (rho 2582) (rho 2583) (rho 2584) (rho 2585) (rho 2586)
      (by simpa [acc16] using hacc)
      (by linear_combination r3088)
      (by linear_combination r3089)
      (by linear_combination r3090)
      (by linear_combination r3091)
      (by linear_combination r3092)
    simpa [acc16, shiftOnce16] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc16 rho) (shiftOnce16 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc16 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce16 rho) (shifted16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2585) (rho 2586) (rho 2587) (rho 2588) (rho 2589) (rho 2590) (rho 2591)
      (by simpa [shiftOnce16] using hshift1On)
      (by linear_combination r3093)
      (by linear_combination r3094)
      (by linear_combination r3095)
      (by linear_combination r3096)
      (by linear_combination r3097)
    simpa [shiftOnce16, shifted16] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce16 rho) (shifted16 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce16 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1199) (rho 1198)
      (base rho) (twice rho) (triple rho) (digit16 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1199) (rho 1198)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2593 + rho 2594, (1 : F) + rho 2596 + rho 2597⟩ := by
      constructor
      · refine ⟨(rho 2592 + (rho 2216) - (0)), rho 2593, ?_, ?_, ?_⟩
        · linear_combination r3098
        · linear_combination r3099
        · linear_combination r3100
      · refine ⟨(rho 2595 + (rho 2217) - ((1 : F))), rho 2596, ?_, ?_, ?_⟩
        · linear_combination r3101
        · linear_combination r3102
        · linear_combination r3103
    simpa [base, twice, triple, digit16] using hraw
  have hhigh : rho 1199 =
      Bool.toZMod bits[216]! := by
    simpa only using rho_bit_of_map rho bits hbits 216 (by decide +kernel)
  have hlow : rho 1198 =
      Bool.toZMod bits[215]! := by
    simpa only using rho_bit_of_map rho bits hbits 215 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[216]! bits[215]! (base rho) (twice rho) (triple rho)
    (digit16 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit16 rho) := by
    rw [hdigit]
    cases bits[216]! <;> cases bits[215]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted16 rho) (digit16 rho) (acc17 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2590) (rho 2591) (rho 2593 + rho 2594) ((1 : F) + rho 2596 + rho 2597)
      (rho 2598) (rho 2599) (rho 2600) (rho 2601) (rho 2602) (rho 2603)
      (by simpa [shifted16] using hshift2On)
      (by simpa [digit16] using hdigitOn)
      (by linear_combination r3104)
      (by linear_combination r3105)
      (by linear_combination r3106)
      (by linear_combination r3107)
      (by linear_combination r3108)
      (by linear_combination r3109)
    simpa [shifted16, digit16, acc17] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc17 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted16 rho) (digit16 rho) (acc17 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted16 rho) (digit16 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1199) (rho 1198)
      (base rho) (twice rho) (triple rho) (acc16 rho)
      (acc17 rho) :=
    ⟨shiftOnce16 rho, shifted16 rho, digit16 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window17 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc17 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[214]! (scalarBits rho)[213]!
        (base rho) (twice rho) (triple rho) (acc17 rho)
        (acc18 rho) ∧
      EdwardsBridge.onCurve (acc18 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3110 at r3110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3111 at r3111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3112 at r3112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3113 at r3113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3114 at r3114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3115 at r3115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3116 at r3116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3117 at r3117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3118 at r3118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3119 at r3119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3120 at r3120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3121 at r3121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3122 at r3122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3123 at r3123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3124 at r3124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3125 at r3125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3126 at r3126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3127 at r3127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3128 at r3128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3129 at r3129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3130 at r3130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3131 at r3131
  have hshift1 : EdwardsBridge.doubleSpec (acc17 rho) (shiftOnce17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2602) (rho 2603) (rho 2604) (rho 2605) (rho 2606) (rho 2607) (rho 2608)
      (by simpa [acc17] using hacc)
      (by linear_combination r3110)
      (by linear_combination r3111)
      (by linear_combination r3112)
      (by linear_combination r3113)
      (by linear_combination r3114)
    simpa [acc17, shiftOnce17] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc17 rho) (shiftOnce17 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc17 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce17 rho) (shifted17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2607) (rho 2608) (rho 2609) (rho 2610) (rho 2611) (rho 2612) (rho 2613)
      (by simpa [shiftOnce17] using hshift1On)
      (by linear_combination r3115)
      (by linear_combination r3116)
      (by linear_combination r3117)
      (by linear_combination r3118)
      (by linear_combination r3119)
    simpa [shiftOnce17, shifted17] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce17 rho) (shifted17 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce17 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1197) (rho 1196)
      (base rho) (twice rho) (triple rho) (digit17 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1197) (rho 1196)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2615 + rho 2616, (1 : F) + rho 2618 + rho 2619⟩ := by
      constructor
      · refine ⟨(rho 2614 + (rho 2216) - (0)), rho 2615, ?_, ?_, ?_⟩
        · linear_combination r3120
        · linear_combination r3121
        · linear_combination r3122
      · refine ⟨(rho 2617 + (rho 2217) - ((1 : F))), rho 2618, ?_, ?_, ?_⟩
        · linear_combination r3123
        · linear_combination r3124
        · linear_combination r3125
    simpa [base, twice, triple, digit17] using hraw
  have hhigh : rho 1197 =
      Bool.toZMod bits[214]! := by
    simpa only using rho_bit_of_map rho bits hbits 214 (by decide +kernel)
  have hlow : rho 1196 =
      Bool.toZMod bits[213]! := by
    simpa only using rho_bit_of_map rho bits hbits 213 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[214]! bits[213]! (base rho) (twice rho) (triple rho)
    (digit17 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit17 rho) := by
    rw [hdigit]
    cases bits[214]! <;> cases bits[213]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted17 rho) (digit17 rho) (acc18 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2612) (rho 2613) (rho 2615 + rho 2616) ((1 : F) + rho 2618 + rho 2619)
      (rho 2620) (rho 2621) (rho 2622) (rho 2623) (rho 2624) (rho 2625)
      (by simpa [shifted17] using hshift2On)
      (by simpa [digit17] using hdigitOn)
      (by linear_combination r3126)
      (by linear_combination r3127)
      (by linear_combination r3128)
      (by linear_combination r3129)
      (by linear_combination r3130)
      (by linear_combination r3131)
    simpa [shifted17, digit17, acc18] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc18 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted17 rho) (digit17 rho) (acc18 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted17 rho) (digit17 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1197) (rho 1196)
      (base rho) (twice rho) (triple rho) (acc17 rho)
      (acc18 rho) :=
    ⟨shiftOnce17 rho, shifted17 rho, digit17 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
