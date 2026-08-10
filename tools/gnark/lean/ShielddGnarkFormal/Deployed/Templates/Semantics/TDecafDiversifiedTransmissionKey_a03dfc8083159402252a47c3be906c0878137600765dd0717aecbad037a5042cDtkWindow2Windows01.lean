import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window6 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc6 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[236]! (scalarBits rho)[235]!
        (base rho) (twice rho) (triple rho) (acc6 rho)
        (acc7 rho) ∧
      EdwardsBridge.onCurve (acc7 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2868 at r2868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2869 at r2869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2870 at r2870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2871 at r2871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2872 at r2872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2873 at r2873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2874 at r2874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2875 at r2875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2876 at r2876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2877 at r2877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2878 at r2878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2879 at r2879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2880 at r2880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2881 at r2881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2882 at r2882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2883 at r2883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2884 at r2884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2885 at r2885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2886 at r2886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2887 at r2887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2888 at r2888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2889 at r2889
  have hshift1 : EdwardsBridge.doubleSpec (acc6 rho) (shiftOnce6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2360) (rho 2361) (rho 2362) (rho 2363) (rho 2364) (rho 2365) (rho 2366)
      (by simpa [acc6] using hacc)
      (by linear_combination r2868)
      (by linear_combination r2869)
      (by linear_combination r2870)
      (by linear_combination r2871)
      (by linear_combination r2872)
    simpa [acc6, shiftOnce6] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc6 rho) (shiftOnce6 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc6 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce6 rho) (shifted6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2365) (rho 2366) (rho 2367) (rho 2368) (rho 2369) (rho 2370) (rho 2371)
      (by simpa [shiftOnce6] using hshift1On)
      (by linear_combination r2873)
      (by linear_combination r2874)
      (by linear_combination r2875)
      (by linear_combination r2876)
      (by linear_combination r2877)
    simpa [shiftOnce6, shifted6] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce6 rho) (shifted6 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce6 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1219) (rho 1218)
      (base rho) (twice rho) (triple rho) (digit6 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1219) (rho 1218)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2373 + rho 2374, (1 : F) + rho 2376 + rho 2377⟩ := by
      constructor
      · refine ⟨(rho 2372 + (rho 2216) - (0)), rho 2373, ?_, ?_, ?_⟩
        · linear_combination r2878
        · linear_combination r2879
        · linear_combination r2880
      · refine ⟨(rho 2375 + (rho 2217) - ((1 : F))), rho 2376, ?_, ?_, ?_⟩
        · linear_combination r2881
        · linear_combination r2882
        · linear_combination r2883
    simpa [base, twice, triple, digit6] using hraw
  have hhigh : rho 1219 =
      Bool.toZMod bits[236]! := by
    simpa only using rho_bit_of_map rho bits hbits 236 (by decide +kernel)
  have hlow : rho 1218 =
      Bool.toZMod bits[235]! := by
    simpa only using rho_bit_of_map rho bits hbits 235 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[236]! bits[235]! (base rho) (twice rho) (triple rho)
    (digit6 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit6 rho) := by
    rw [hdigit]
    cases bits[236]! <;> cases bits[235]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted6 rho) (digit6 rho) (acc7 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2370) (rho 2371) (rho 2373 + rho 2374) ((1 : F) + rho 2376 + rho 2377)
      (rho 2378) (rho 2379) (rho 2380) (rho 2381) (rho 2382) (rho 2383)
      (by simpa [shifted6] using hshift2On)
      (by simpa [digit6] using hdigitOn)
      (by linear_combination r2884)
      (by linear_combination r2885)
      (by linear_combination r2886)
      (by linear_combination r2887)
      (by linear_combination r2888)
      (by linear_combination r2889)
    simpa [shifted6, digit6, acc7] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc7 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted6 rho) (digit6 rho) (acc7 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted6 rho) (digit6 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1219) (rho 1218)
      (base rho) (twice rho) (triple rho) (acc6 rho)
      (acc7 rho) :=
    ⟨shiftOnce6 rho, shifted6 rho, digit6 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window7 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc7 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[234]! (scalarBits rho)[233]!
        (base rho) (twice rho) (triple rho) (acc7 rho)
        (acc8 rho) ∧
      EdwardsBridge.onCurve (acc8 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, r2890, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2890 at r2890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2891 at r2891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2892 at r2892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2893 at r2893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2894 at r2894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2895 at r2895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2896 at r2896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2897 at r2897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2898 at r2898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2899 at r2899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2900 at r2900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2901 at r2901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2902 at r2902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2903 at r2903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2904 at r2904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2905 at r2905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2906 at r2906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2907 at r2907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2908 at r2908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2909 at r2909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2910 at r2910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2911 at r2911
  have hshift1 : EdwardsBridge.doubleSpec (acc7 rho) (shiftOnce7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2382) (rho 2383) (rho 2384) (rho 2385) (rho 2386) (rho 2387) (rho 2388)
      (by simpa [acc7] using hacc)
      (by linear_combination r2890)
      (by linear_combination r2891)
      (by linear_combination r2892)
      (by linear_combination r2893)
      (by linear_combination r2894)
    simpa [acc7, shiftOnce7] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc7 rho) (shiftOnce7 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc7 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce7 rho) (shifted7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2387) (rho 2388) (rho 2389) (rho 2390) (rho 2391) (rho 2392) (rho 2393)
      (by simpa [shiftOnce7] using hshift1On)
      (by linear_combination r2895)
      (by linear_combination r2896)
      (by linear_combination r2897)
      (by linear_combination r2898)
      (by linear_combination r2899)
    simpa [shiftOnce7, shifted7] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce7 rho) (shifted7 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce7 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1217) (rho 1216)
      (base rho) (twice rho) (triple rho) (digit7 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1217) (rho 1216)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2395 + rho 2396, (1 : F) + rho 2398 + rho 2399⟩ := by
      constructor
      · refine ⟨(rho 2394 + (rho 2216) - (0)), rho 2395, ?_, ?_, ?_⟩
        · linear_combination r2900
        · linear_combination r2901
        · linear_combination r2902
      · refine ⟨(rho 2397 + (rho 2217) - ((1 : F))), rho 2398, ?_, ?_, ?_⟩
        · linear_combination r2903
        · linear_combination r2904
        · linear_combination r2905
    simpa [base, twice, triple, digit7] using hraw
  have hhigh : rho 1217 =
      Bool.toZMod bits[234]! := by
    simpa only using rho_bit_of_map rho bits hbits 234 (by decide +kernel)
  have hlow : rho 1216 =
      Bool.toZMod bits[233]! := by
    simpa only using rho_bit_of_map rho bits hbits 233 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[234]! bits[233]! (base rho) (twice rho) (triple rho)
    (digit7 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit7 rho) := by
    rw [hdigit]
    cases bits[234]! <;> cases bits[233]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted7 rho) (digit7 rho) (acc8 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2392) (rho 2393) (rho 2395 + rho 2396) ((1 : F) + rho 2398 + rho 2399)
      (rho 2400) (rho 2401) (rho 2402) (rho 2403) (rho 2404) (rho 2405)
      (by simpa [shifted7] using hshift2On)
      (by simpa [digit7] using hdigitOn)
      (by linear_combination r2906)
      (by linear_combination r2907)
      (by linear_combination r2908)
      (by linear_combination r2909)
      (by linear_combination r2910)
      (by linear_combination r2911)
    simpa [shifted7, digit7, acc8] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc8 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted7 rho) (digit7 rho) (acc8 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted7 rho) (digit7 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1217) (rho 1216)
      (base rho) (twice rho) (triple rho) (acc7 rho)
      (acc8 rho) :=
    ⟨shiftOnce7 rho, shifted7 rho, digit7 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window8 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc8 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[232]! (scalarBits rho)[231]!
        (base rho) (twice rho) (triple rho) (acc8 rho)
        (acc9 rho) ∧
      EdwardsBridge.onCurve (acc9 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2912 at r2912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2913 at r2913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2914 at r2914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2915 at r2915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2916 at r2916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2917 at r2917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2918 at r2918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2919 at r2919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2920 at r2920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2921 at r2921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2922 at r2922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2923 at r2923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2924 at r2924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2925 at r2925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2926 at r2926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2927 at r2927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2928 at r2928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2929 at r2929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2930 at r2930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2931 at r2931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2932 at r2932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2933 at r2933
  have hshift1 : EdwardsBridge.doubleSpec (acc8 rho) (shiftOnce8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2404) (rho 2405) (rho 2406) (rho 2407) (rho 2408) (rho 2409) (rho 2410)
      (by simpa [acc8] using hacc)
      (by linear_combination r2912)
      (by linear_combination r2913)
      (by linear_combination r2914)
      (by linear_combination r2915)
      (by linear_combination r2916)
    simpa [acc8, shiftOnce8] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc8 rho) (shiftOnce8 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc8 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce8 rho) (shifted8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2409) (rho 2410) (rho 2411) (rho 2412) (rho 2413) (rho 2414) (rho 2415)
      (by simpa [shiftOnce8] using hshift1On)
      (by linear_combination r2917)
      (by linear_combination r2918)
      (by linear_combination r2919)
      (by linear_combination r2920)
      (by linear_combination r2921)
    simpa [shiftOnce8, shifted8] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce8 rho) (shifted8 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce8 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1215) (rho 1214)
      (base rho) (twice rho) (triple rho) (digit8 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1215) (rho 1214)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2417 + rho 2418, (1 : F) + rho 2420 + rho 2421⟩ := by
      constructor
      · refine ⟨(rho 2416 + (rho 2216) - (0)), rho 2417, ?_, ?_, ?_⟩
        · linear_combination r2922
        · linear_combination r2923
        · linear_combination r2924
      · refine ⟨(rho 2419 + (rho 2217) - ((1 : F))), rho 2420, ?_, ?_, ?_⟩
        · linear_combination r2925
        · linear_combination r2926
        · linear_combination r2927
    simpa [base, twice, triple, digit8] using hraw
  have hhigh : rho 1215 =
      Bool.toZMod bits[232]! := by
    simpa only using rho_bit_of_map rho bits hbits 232 (by decide +kernel)
  have hlow : rho 1214 =
      Bool.toZMod bits[231]! := by
    simpa only using rho_bit_of_map rho bits hbits 231 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[232]! bits[231]! (base rho) (twice rho) (triple rho)
    (digit8 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit8 rho) := by
    rw [hdigit]
    cases bits[232]! <;> cases bits[231]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted8 rho) (digit8 rho) (acc9 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2414) (rho 2415) (rho 2417 + rho 2418) ((1 : F) + rho 2420 + rho 2421)
      (rho 2422) (rho 2423) (rho 2424) (rho 2425) (rho 2426) (rho 2427)
      (by simpa [shifted8] using hshift2On)
      (by simpa [digit8] using hdigitOn)
      (by linear_combination r2928)
      (by linear_combination r2929)
      (by linear_combination r2930)
      (by linear_combination r2931)
      (by linear_combination r2932)
      (by linear_combination r2933)
    simpa [shifted8, digit8, acc9] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc9 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted8 rho) (digit8 rho) (acc9 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted8 rho) (digit8 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1215) (rho 1214)
      (base rho) (twice rho) (triple rho) (acc8 rho)
      (acc9 rho) :=
    ⟨shiftOnce8 rho, shifted8 rho, digit8 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window9 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc9 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[230]! (scalarBits rho)[229]!
        (base rho) (twice rho) (triple rho) (acc9 rho)
        (acc10 rho) ∧
      EdwardsBridge.onCurve (acc10 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2934 at r2934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2935 at r2935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2936 at r2936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2937 at r2937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2938 at r2938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2939 at r2939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2940 at r2940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2941 at r2941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2942 at r2942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2943 at r2943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2944 at r2944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2945 at r2945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2946 at r2946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2947 at r2947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2948 at r2948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2949 at r2949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2950 at r2950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2951 at r2951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2952 at r2952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2953 at r2953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2954 at r2954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2955 at r2955
  have hshift1 : EdwardsBridge.doubleSpec (acc9 rho) (shiftOnce9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2426) (rho 2427) (rho 2428) (rho 2429) (rho 2430) (rho 2431) (rho 2432)
      (by simpa [acc9] using hacc)
      (by linear_combination r2934)
      (by linear_combination r2935)
      (by linear_combination r2936)
      (by linear_combination r2937)
      (by linear_combination r2938)
    simpa [acc9, shiftOnce9] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc9 rho) (shiftOnce9 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc9 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce9 rho) (shifted9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2431) (rho 2432) (rho 2433) (rho 2434) (rho 2435) (rho 2436) (rho 2437)
      (by simpa [shiftOnce9] using hshift1On)
      (by linear_combination r2939)
      (by linear_combination r2940)
      (by linear_combination r2941)
      (by linear_combination r2942)
      (by linear_combination r2943)
    simpa [shiftOnce9, shifted9] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce9 rho) (shifted9 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce9 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1213) (rho 1212)
      (base rho) (twice rho) (triple rho) (digit9 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1213) (rho 1212)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2439 + rho 2440, (1 : F) + rho 2442 + rho 2443⟩ := by
      constructor
      · refine ⟨(rho 2438 + (rho 2216) - (0)), rho 2439, ?_, ?_, ?_⟩
        · linear_combination r2944
        · linear_combination r2945
        · linear_combination r2946
      · refine ⟨(rho 2441 + (rho 2217) - ((1 : F))), rho 2442, ?_, ?_, ?_⟩
        · linear_combination r2947
        · linear_combination r2948
        · linear_combination r2949
    simpa [base, twice, triple, digit9] using hraw
  have hhigh : rho 1213 =
      Bool.toZMod bits[230]! := by
    simpa only using rho_bit_of_map rho bits hbits 230 (by decide +kernel)
  have hlow : rho 1212 =
      Bool.toZMod bits[229]! := by
    simpa only using rho_bit_of_map rho bits hbits 229 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[230]! bits[229]! (base rho) (twice rho) (triple rho)
    (digit9 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit9 rho) := by
    rw [hdigit]
    cases bits[230]! <;> cases bits[229]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted9 rho) (digit9 rho) (acc10 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2436) (rho 2437) (rho 2439 + rho 2440) ((1 : F) + rho 2442 + rho 2443)
      (rho 2444) (rho 2445) (rho 2446) (rho 2447) (rho 2448) (rho 2449)
      (by simpa [shifted9] using hshift2On)
      (by simpa [digit9] using hdigitOn)
      (by linear_combination r2950)
      (by linear_combination r2951)
      (by linear_combination r2952)
      (by linear_combination r2953)
      (by linear_combination r2954)
      (by linear_combination r2955)
    simpa [shifted9, digit9, acc10] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc10 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted9 rho) (digit9 rho) (acc10 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted9 rho) (digit9 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1213) (rho 1212)
      (base rho) (twice rho) (triple rho) (acc9 rho)
      (acc10 rho) :=
    ⟨shiftOnce9 rho, shifted9 rho, digit9 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window10 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc10 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[228]! (scalarBits rho)[227]!
        (base rho) (twice rho) (triple rho) (acc10 rho)
        (acc11 rho) ∧
      EdwardsBridge.onCurve (acc11 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2956, r2957, r2958, r2959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2956 at r2956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2957 at r2957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2958 at r2958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2959 at r2959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2960 at r2960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2961 at r2961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2962 at r2962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2963 at r2963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2964 at r2964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2965 at r2965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2966 at r2966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2967 at r2967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2968 at r2968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2969 at r2969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2970 at r2970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2971 at r2971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2972 at r2972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2973 at r2973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2974 at r2974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2975 at r2975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2976 at r2976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2977 at r2977
  have hshift1 : EdwardsBridge.doubleSpec (acc10 rho) (shiftOnce10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2448) (rho 2449) (rho 2450) (rho 2451) (rho 2452) (rho 2453) (rho 2454)
      (by simpa [acc10] using hacc)
      (by linear_combination r2956)
      (by linear_combination r2957)
      (by linear_combination r2958)
      (by linear_combination r2959)
      (by linear_combination r2960)
    simpa [acc10, shiftOnce10] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc10 rho) (shiftOnce10 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc10 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce10 rho) (shifted10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2453) (rho 2454) (rho 2455) (rho 2456) (rho 2457) (rho 2458) (rho 2459)
      (by simpa [shiftOnce10] using hshift1On)
      (by linear_combination r2961)
      (by linear_combination r2962)
      (by linear_combination r2963)
      (by linear_combination r2964)
      (by linear_combination r2965)
    simpa [shiftOnce10, shifted10] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce10 rho) (shifted10 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce10 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1211) (rho 1210)
      (base rho) (twice rho) (triple rho) (digit10 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1211) (rho 1210)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2461 + rho 2462, (1 : F) + rho 2464 + rho 2465⟩ := by
      constructor
      · refine ⟨(rho 2460 + (rho 2216) - (0)), rho 2461, ?_, ?_, ?_⟩
        · linear_combination r2966
        · linear_combination r2967
        · linear_combination r2968
      · refine ⟨(rho 2463 + (rho 2217) - ((1 : F))), rho 2464, ?_, ?_, ?_⟩
        · linear_combination r2969
        · linear_combination r2970
        · linear_combination r2971
    simpa [base, twice, triple, digit10] using hraw
  have hhigh : rho 1211 =
      Bool.toZMod bits[228]! := by
    simpa only using rho_bit_of_map rho bits hbits 228 (by decide +kernel)
  have hlow : rho 1210 =
      Bool.toZMod bits[227]! := by
    simpa only using rho_bit_of_map rho bits hbits 227 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[228]! bits[227]! (base rho) (twice rho) (triple rho)
    (digit10 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit10 rho) := by
    rw [hdigit]
    cases bits[228]! <;> cases bits[227]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted10 rho) (digit10 rho) (acc11 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2458) (rho 2459) (rho 2461 + rho 2462) ((1 : F) + rho 2464 + rho 2465)
      (rho 2466) (rho 2467) (rho 2468) (rho 2469) (rho 2470) (rho 2471)
      (by simpa [shifted10] using hshift2On)
      (by simpa [digit10] using hdigitOn)
      (by linear_combination r2972)
      (by linear_combination r2973)
      (by linear_combination r2974)
      (by linear_combination r2975)
      (by linear_combination r2976)
      (by linear_combination r2977)
    simpa [shifted10, digit10, acc11] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc11 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted10 rho) (digit10 rho) (acc11 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted10 rho) (digit10 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1211) (rho 1210)
      (base rho) (twice rho) (triple rho) (acc10 rho)
      (acc11 rho) :=
    ⟨shiftOnce10 rho, shifted10 rho, digit10 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window11 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc11 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[226]! (scalarBits rho)[225]!
        (base rho) (twice rho) (triple rho) (acc11 rho)
        (acc12 rho) ∧
      EdwardsBridge.onCurve (acc12 rho) := by
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
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2978 at r2978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2979 at r2979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2980 at r2980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2981 at r2981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2982 at r2982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2983 at r2983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2984 at r2984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2985 at r2985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2986 at r2986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2987 at r2987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2988 at r2988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2989 at r2989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2990 at r2990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2991 at r2991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2992 at r2992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2993 at r2993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2994 at r2994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2995 at r2995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2996 at r2996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2997 at r2997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2998 at r2998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2999 at r2999
  have hshift1 : EdwardsBridge.doubleSpec (acc11 rho) (shiftOnce11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2470) (rho 2471) (rho 2472) (rho 2473) (rho 2474) (rho 2475) (rho 2476)
      (by simpa [acc11] using hacc)
      (by linear_combination r2978)
      (by linear_combination r2979)
      (by linear_combination r2980)
      (by linear_combination r2981)
      (by linear_combination r2982)
    simpa [acc11, shiftOnce11] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc11 rho) (shiftOnce11 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc11 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce11 rho) (shifted11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2475) (rho 2476) (rho 2477) (rho 2478) (rho 2479) (rho 2480) (rho 2481)
      (by simpa [shiftOnce11] using hshift1On)
      (by linear_combination r2983)
      (by linear_combination r2984)
      (by linear_combination r2985)
      (by linear_combination r2986)
      (by linear_combination r2987)
    simpa [shiftOnce11, shifted11] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce11 rho) (shifted11 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce11 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1209) (rho 1208)
      (base rho) (twice rho) (triple rho) (digit11 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1209) (rho 1208)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2483 + rho 2484, (1 : F) + rho 2486 + rho 2487⟩ := by
      constructor
      · refine ⟨(rho 2482 + (rho 2216) - (0)), rho 2483, ?_, ?_, ?_⟩
        · linear_combination r2988
        · linear_combination r2989
        · linear_combination r2990
      · refine ⟨(rho 2485 + (rho 2217) - ((1 : F))), rho 2486, ?_, ?_, ?_⟩
        · linear_combination r2991
        · linear_combination r2992
        · linear_combination r2993
    simpa [base, twice, triple, digit11] using hraw
  have hhigh : rho 1209 =
      Bool.toZMod bits[226]! := by
    simpa only using rho_bit_of_map rho bits hbits 226 (by decide +kernel)
  have hlow : rho 1208 =
      Bool.toZMod bits[225]! := by
    simpa only using rho_bit_of_map rho bits hbits 225 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[226]! bits[225]! (base rho) (twice rho) (triple rho)
    (digit11 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit11 rho) := by
    rw [hdigit]
    cases bits[226]! <;> cases bits[225]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted11 rho) (digit11 rho) (acc12 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2480) (rho 2481) (rho 2483 + rho 2484) ((1 : F) + rho 2486 + rho 2487)
      (rho 2488) (rho 2489) (rho 2490) (rho 2491) (rho 2492) (rho 2493)
      (by simpa [shifted11] using hshift2On)
      (by simpa [digit11] using hdigitOn)
      (by linear_combination r2994)
      (by linear_combination r2995)
      (by linear_combination r2996)
      (by linear_combination r2997)
      (by linear_combination r2998)
      (by linear_combination r2999)
    simpa [shifted11, digit11, acc12] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc12 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted11 rho) (digit11 rho) (acc12 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted11 rho) (digit11 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1209) (rho 1208)
      (base rho) (twice rho) (triple rho) (acc11 rho)
      (acc12 rho) :=
    ⟨shiftOnce11 rho, shifted11 rho, digit11 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
