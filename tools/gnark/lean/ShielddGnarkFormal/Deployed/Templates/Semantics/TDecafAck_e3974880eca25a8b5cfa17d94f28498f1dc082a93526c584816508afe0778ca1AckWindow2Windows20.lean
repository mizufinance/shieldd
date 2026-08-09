import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window120 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2909 at r2909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2910 at r2910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2911 at r2911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2912 at r2912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2913 at r2913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2914 at r2914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2915 at r2915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2916 at r2916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2917 at r2917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2918 at r2918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2919 at r2919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2920 at r2920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2921 at r2921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2922 at r2922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2923 at r2923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2924 at r2924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2925 at r2925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2926 at r2926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2927 at r2927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2928 at r2928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2929 at r2929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2930 at r2930
  have hshift1 : EdwardsBridge.doubleSpec (acc120 rho) (shiftOnce120 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2910) (rho 2911) (rho 2912) (rho 2913) (rho 2914) (rho 2915) (rho 2916)
      (by simpa [acc120] using hacc)
      (by linear_combination r2909)
      (by linear_combination r2910)
      (by linear_combination r2911)
      (by linear_combination r2912)
      (by linear_combination r2913)
    simpa [acc120, shiftOnce120] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce120 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc120 rho) (shiftOnce120 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc120 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce120 rho) (shifted120 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2915) (rho 2916) (rho 2917) (rho 2918) (rho 2919) (rho 2920) (rho 2921)
      (by simpa [shiftOnce120] using hshift1On)
      (by linear_combination r2914)
      (by linear_combination r2915)
      (by linear_combination r2916)
      (by linear_combination r2917)
      (by linear_combination r2918)
    simpa [shiftOnce120, shifted120] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted120 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce120 rho) (shifted120 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce120 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 9) (rho 8)
      (base rho) (twice rho) (triple rho) (digit120 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 9) (rho 8)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2923 + rho 2924, (1 : F) + rho 2926 + rho 2927⟩ := by
      constructor
      · refine ⟨(rho 2922 + (rho 258) - (0)), rho 2923, ?_, ?_, ?_⟩
        · linear_combination r2919 - (rho 8) * order_cast_zero
        · linear_combination r2920
        · linear_combination r2921
      · refine ⟨(rho 2925 + (rho 259) - ((1 : F))), rho 2926, ?_, ?_, ?_⟩
        · linear_combination r2922 - (rho 8) * order_cast_zero
        · linear_combination r2923
        · linear_combination r2924
    simpa [base, twice, triple, digit120] using hraw
  have hhigh : rho 9 =
      Bool.toZMod bits[8]! := by
    simpa only using rho_bit_of_map rho bits hbits 8 (by decide +kernel)
  have hlow : rho 8 =
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
      (rho 2920) (rho 2921) (rho 2923 + rho 2924) ((1 : F) + rho 2926 + rho 2927)
      (rho 2928) (rho 2929) (rho 2930) (rho 2931) (rho 2932) (rho 2933)
      (by simpa [shifted120] using hshift2On)
      (by simpa [digit120] using hdigitOn)
      (by linear_combination r2925)
      (by linear_combination r2926)
      (by linear_combination r2927)
      (by linear_combination r2928)
      (by linear_combination r2929)
      (by linear_combination r2930)
    simpa [shifted120, digit120, acc121] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc121 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted120 rho) (digit120 rho) (acc121 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted120 rho) (digit120 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 9) (rho 8)
      (base rho) (twice rho) (triple rho) (acc120 rho)
      (acc121 rho) :=
    ⟨shiftOnce120 rho, shifted120 rho, digit120 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window121 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2931 at r2931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2932 at r2932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2933 at r2933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2934 at r2934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2935 at r2935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2936 at r2936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2937 at r2937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2938 at r2938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2939 at r2939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2940 at r2940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2941 at r2941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2942 at r2942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2943 at r2943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2944 at r2944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2945 at r2945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2946 at r2946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2947 at r2947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2948 at r2948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2949 at r2949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2950 at r2950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2951 at r2951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2952 at r2952
  have hshift1 : EdwardsBridge.doubleSpec (acc121 rho) (shiftOnce121 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2932) (rho 2933) (rho 2934) (rho 2935) (rho 2936) (rho 2937) (rho 2938)
      (by simpa [acc121] using hacc)
      (by linear_combination r2931)
      (by linear_combination r2932)
      (by linear_combination r2933)
      (by linear_combination r2934)
      (by linear_combination r2935)
    simpa [acc121, shiftOnce121] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce121 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc121 rho) (shiftOnce121 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc121 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce121 rho) (shifted121 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2937) (rho 2938) (rho 2939) (rho 2940) (rho 2941) (rho 2942) (rho 2943)
      (by simpa [shiftOnce121] using hshift1On)
      (by linear_combination r2936)
      (by linear_combination r2937)
      (by linear_combination r2938)
      (by linear_combination r2939)
      (by linear_combination r2940)
    simpa [shiftOnce121, shifted121] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted121 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce121 rho) (shifted121 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce121 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 7) (rho 6)
      (base rho) (twice rho) (triple rho) (digit121 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 7) (rho 6)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2945 + rho 2946, (1 : F) + rho 2948 + rho 2949⟩ := by
      constructor
      · refine ⟨(rho 2944 + (rho 258) - (0)), rho 2945, ?_, ?_, ?_⟩
        · linear_combination r2941 - (rho 6) * order_cast_zero
        · linear_combination r2942
        · linear_combination r2943
      · refine ⟨(rho 2947 + (rho 259) - ((1 : F))), rho 2948, ?_, ?_, ?_⟩
        · linear_combination r2944 - (rho 6) * order_cast_zero
        · linear_combination r2945
        · linear_combination r2946
    simpa [base, twice, triple, digit121] using hraw
  have hhigh : rho 7 =
      Bool.toZMod bits[6]! := by
    simpa only using rho_bit_of_map rho bits hbits 6 (by decide +kernel)
  have hlow : rho 6 =
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
      (rho 2942) (rho 2943) (rho 2945 + rho 2946) ((1 : F) + rho 2948 + rho 2949)
      (rho 2950) (rho 2951) (rho 2952) (rho 2953) (rho 2954) (rho 2955)
      (by simpa [shifted121] using hshift2On)
      (by simpa [digit121] using hdigitOn)
      (by linear_combination r2947)
      (by linear_combination r2948)
      (by linear_combination r2949)
      (by linear_combination r2950)
      (by linear_combination r2951)
      (by linear_combination r2952)
    simpa [shifted121, digit121, acc122] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc122 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted121 rho) (digit121 rho) (acc122 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted121 rho) (digit121 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 7) (rho 6)
      (base rho) (twice rho) (triple rho) (acc121 rho)
      (acc122 rho) :=
    ⟨shiftOnce121 rho, shifted121 rho, digit121 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window122 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, p37
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972, r2973, r2974, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2953 at r2953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2954 at r2954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2955 at r2955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2956 at r2956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2957 at r2957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2958 at r2958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2959 at r2959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2960 at r2960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2961 at r2961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2962 at r2962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2963 at r2963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2964 at r2964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2965 at r2965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2966 at r2966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2967 at r2967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2968 at r2968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2969 at r2969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2970 at r2970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2971 at r2971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2972 at r2972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2973 at r2973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2974 at r2974
  have hshift1 : EdwardsBridge.doubleSpec (acc122 rho) (shiftOnce122 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2954) (rho 2955) (rho 2956) (rho 2957) (rho 2958) (rho 2959) (rho 2960)
      (by simpa [acc122] using hacc)
      (by linear_combination r2953)
      (by linear_combination r2954)
      (by linear_combination r2955)
      (by linear_combination r2956)
      (by linear_combination r2957)
    simpa [acc122, shiftOnce122] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce122 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc122 rho) (shiftOnce122 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc122 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce122 rho) (shifted122 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2959) (rho 2960) (rho 2961) (rho 2962) (rho 2963) (rho 2964) (rho 2965)
      (by simpa [shiftOnce122] using hshift1On)
      (by linear_combination r2958)
      (by linear_combination r2959)
      (by linear_combination r2960)
      (by linear_combination r2961)
      (by linear_combination r2962)
    simpa [shiftOnce122, shifted122] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted122 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce122 rho) (shifted122 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce122 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 5) (rho 4)
      (base rho) (twice rho) (triple rho) (digit122 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 5) (rho 4)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2967 + rho 2968, (1 : F) + rho 2970 + rho 2971⟩ := by
      constructor
      · refine ⟨(rho 2966 + (rho 258) - (0)), rho 2967, ?_, ?_, ?_⟩
        · linear_combination r2963 - (rho 4) * order_cast_zero
        · linear_combination r2964
        · linear_combination r2965
      · refine ⟨(rho 2969 + (rho 259) - ((1 : F))), rho 2970, ?_, ?_, ?_⟩
        · linear_combination r2966 - (rho 4) * order_cast_zero
        · linear_combination r2967
        · linear_combination r2968
    simpa [base, twice, triple, digit122] using hraw
  have hhigh : rho 5 =
      Bool.toZMod bits[4]! := by
    simpa only using rho_bit_of_map rho bits hbits 4 (by decide +kernel)
  have hlow : rho 4 =
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
      (rho 2964) (rho 2965) (rho 2967 + rho 2968) ((1 : F) + rho 2970 + rho 2971)
      (rho 2972) (rho 2973) (rho 2974) (rho 2975) (rho 2976) (rho 2977)
      (by simpa [shifted122] using hshift2On)
      (by simpa [digit122] using hdigitOn)
      (by linear_combination r2969)
      (by linear_combination r2970)
      (by linear_combination r2971)
      (by linear_combination r2972)
      (by linear_combination r2973)
      (by linear_combination r2974)
    simpa [shifted122, digit122, acc123] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc123 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted122 rho) (digit122 rho) (acc123 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted122 rho) (digit122 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 5) (rho 4)
      (base rho) (twice rho) (triple rho) (acc122 rho)
      (acc123 rho) :=
    ⟨shiftOnce122 rho, shifted122 rho, digit122 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window123 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2975 at r2975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2976 at r2976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2977 at r2977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2978 at r2978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2979 at r2979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2980 at r2980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2981 at r2981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2982 at r2982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2983 at r2983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2984 at r2984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2985 at r2985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2986 at r2986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2987 at r2987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2988 at r2988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2989 at r2989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2990 at r2990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2991 at r2991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2992 at r2992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2993 at r2993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2994 at r2994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2995 at r2995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2996 at r2996
  have hshift1 : EdwardsBridge.doubleSpec (acc123 rho) (shiftOnce123 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2976) (rho 2977) (rho 2978) (rho 2979) (rho 2980) (rho 2981) (rho 2982)
      (by simpa [acc123] using hacc)
      (by linear_combination r2975)
      (by linear_combination r2976)
      (by linear_combination r2977)
      (by linear_combination r2978)
      (by linear_combination r2979)
    simpa [acc123, shiftOnce123] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce123 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc123 rho) (shiftOnce123 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc123 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce123 rho) (shifted123 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2981) (rho 2982) (rho 2983) (rho 2984) (rho 2985) (rho 2986) (rho 2987)
      (by simpa [shiftOnce123] using hshift1On)
      (by linear_combination r2980)
      (by linear_combination r2981)
      (by linear_combination r2982)
      (by linear_combination r2983)
      (by linear_combination r2984)
    simpa [shiftOnce123, shifted123] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted123 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce123 rho) (shifted123 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce123 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 3) (rho 2)
      (base rho) (twice rho) (triple rho) (digit123 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 3) (rho 2)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2989 + rho 2990, (1 : F) + rho 2992 + rho 2993⟩ := by
      constructor
      · refine ⟨(rho 2988 + (rho 258) - (0)), rho 2989, ?_, ?_, ?_⟩
        · linear_combination r2985 - (rho 2) * order_cast_zero
        · linear_combination r2986
        · linear_combination r2987
      · refine ⟨(rho 2991 + (rho 259) - ((1 : F))), rho 2992, ?_, ?_, ?_⟩
        · linear_combination r2988 - (rho 2) * order_cast_zero
        · linear_combination r2989
        · linear_combination r2990
    simpa [base, twice, triple, digit123] using hraw
  have hhigh : rho 3 =
      Bool.toZMod bits[2]! := by
    simpa only using rho_bit_of_map rho bits hbits 2 (by decide +kernel)
  have hlow : rho 2 =
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
      (rho 2986) (rho 2987) (rho 2989 + rho 2990) ((1 : F) + rho 2992 + rho 2993)
      (rho 2994) (rho 2995) (rho 2996) (rho 2997) (rho 2998) (rho 2999)
      (by simpa [shifted123] using hshift2On)
      (by simpa [digit123] using hdigitOn)
      (by linear_combination r2991)
      (by linear_combination r2992)
      (by linear_combination r2993)
      (by linear_combination r2994)
      (by linear_combination r2995)
      (by linear_combination r2996)
    simpa [shifted123, digit123, acc124] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc124 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted123 rho) (digit123 rho) (acc124 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted123 rho) (digit123 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 3) (rho 2)
      (base rho) (twice rho) (triple rho) (acc123 rho)
      (acc124 rho) :=
    ⟨shiftOnce123 rho, shifted123 rho, digit123 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
