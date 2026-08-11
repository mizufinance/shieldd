import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window30 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc30 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[188]! (scalarBits rho)[187]!
        (base rho) (twice rho) (triple rho) (acc30 rho)
        (acc31 rho) ∧
      EdwardsBridge.onCurve (acc31 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r929, r930, r931, r932, r933, r934, r935, r936, r937, r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow929 at r929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow930 at r930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow931 at r931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow932 at r932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow933 at r933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow934 at r934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow935 at r935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow936 at r936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow937 at r937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow938 at r938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow939 at r939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow940 at r940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow941 at r941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow942 at r942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow943 at r943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow944 at r944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow945 at r945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow946 at r946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow947 at r947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow948 at r948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow949 at r949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow950 at r950
  have hshift1 : EdwardsBridge.doubleSpec (acc30 rho) (shiftOnce30 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 930) (rho 931) (rho 932) (rho 933) (rho 934) (rho 935) (rho 936)
      (by simpa [acc30] using hacc)
      (by linear_combination r929)
      (by linear_combination r930)
      (by linear_combination r931)
      (by linear_combination r932)
      (by linear_combination r933)
    simpa [acc30, shiftOnce30] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce30 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc30 rho) (shiftOnce30 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc30 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce30 rho) (shifted30 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 935) (rho 936) (rho 937) (rho 938) (rho 939) (rho 940) (rho 941)
      (by simpa [shiftOnce30] using hshift1On)
      (by linear_combination r934)
      (by linear_combination r935)
      (by linear_combination r936)
      (by linear_combination r937)
      (by linear_combination r938)
    simpa [shiftOnce30, shifted30] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted30 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce30 rho) (shifted30 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce30 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 189) (rho 188)
      (base rho) (twice rho) (triple rho) (digit30 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 189) (rho 188)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 943 + rho 944, (1 : F) + rho 946 + rho 947⟩ := by
      constructor
      · refine ⟨(rho 942 + (rho 258) - (0)), rho 943, ?_, ?_, ?_⟩
        · linear_combination r939 - (rho 188) * order_cast_zero
        · linear_combination r940
        · linear_combination r941
      · refine ⟨(rho 945 + (rho 259) - ((1 : F))), rho 946, ?_, ?_, ?_⟩
        · linear_combination r942 - (rho 188) * order_cast_zero
        · linear_combination r943
        · linear_combination r944
    simpa [base, twice, triple, digit30] using hraw
  have hhigh : rho 189 =
      Bool.toZMod bits[188]! := by
    simpa only using rho_bit_of_map rho bits hbits 188 (by decide +kernel)
  have hlow : rho 188 =
      Bool.toZMod bits[187]! := by
    simpa only using rho_bit_of_map rho bits hbits 187 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[188]! bits[187]! (base rho) (twice rho) (triple rho)
    (digit30 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit30 rho) := by
    rw [hdigit]
    cases bits[188]! <;> cases bits[187]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted30 rho) (digit30 rho) (acc31 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 940) (rho 941) (rho 943 + rho 944) ((1 : F) + rho 946 + rho 947)
      (rho 948) (rho 949) (rho 950) (rho 951) (rho 952) (rho 953)
      (by simpa [shifted30] using hshift2On)
      (by simpa [digit30] using hdigitOn)
      (by linear_combination r945)
      (by linear_combination r946)
      (by linear_combination r947)
      (by linear_combination r948)
      (by linear_combination r949)
      (by linear_combination r950)
    simpa [shifted30, digit30, acc31] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc31 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted30 rho) (digit30 rho) (acc31 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted30 rho) (digit30 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 189) (rho 188)
      (base rho) (twice rho) (triple rho) (acc30 rho)
      (acc31 rho) :=
    ⟨shiftOnce30 rho, shifted30 rho, digit30 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window31 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc31 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[186]! (scalarBits rho)[185]!
        (base rho) (twice rho) (triple rho) (acc31 rho)
        (acc32 rho) ∧
      EdwardsBridge.onCurve (acc32 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r951, r952, r953, r954, r955, r956, r957, r958, r959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart12 at p12
  rcases p12 with ⟨r960, r961, r962, r963, r964, r965, r966, r967, r968, r969, r970, r971, r972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow951 at r951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow952 at r952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow953 at r953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow954 at r954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow955 at r955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow956 at r956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow957 at r957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow958 at r958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow959 at r959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow960 at r960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow961 at r961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow962 at r962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow963 at r963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow964 at r964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow965 at r965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow966 at r966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow967 at r967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow968 at r968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow969 at r969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow970 at r970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow971 at r971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow972 at r972
  have hshift1 : EdwardsBridge.doubleSpec (acc31 rho) (shiftOnce31 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 952) (rho 953) (rho 954) (rho 955) (rho 956) (rho 957) (rho 958)
      (by simpa [acc31] using hacc)
      (by linear_combination r951)
      (by linear_combination r952)
      (by linear_combination r953)
      (by linear_combination r954)
      (by linear_combination r955)
    simpa [acc31, shiftOnce31] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce31 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc31 rho) (shiftOnce31 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc31 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce31 rho) (shifted31 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 957) (rho 958) (rho 959) (rho 960) (rho 961) (rho 962) (rho 963)
      (by simpa [shiftOnce31] using hshift1On)
      (by linear_combination r956)
      (by linear_combination r957)
      (by linear_combination r958)
      (by linear_combination r959)
      (by linear_combination r960)
    simpa [shiftOnce31, shifted31] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted31 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce31 rho) (shifted31 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce31 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 187) (rho 186)
      (base rho) (twice rho) (triple rho) (digit31 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 187) (rho 186)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 965 + rho 966, (1 : F) + rho 968 + rho 969⟩ := by
      constructor
      · refine ⟨(rho 964 + (rho 258) - (0)), rho 965, ?_, ?_, ?_⟩
        · linear_combination r961 - (rho 186) * order_cast_zero
        · linear_combination r962
        · linear_combination r963
      · refine ⟨(rho 967 + (rho 259) - ((1 : F))), rho 968, ?_, ?_, ?_⟩
        · linear_combination r964 - (rho 186) * order_cast_zero
        · linear_combination r965
        · linear_combination r966
    simpa [base, twice, triple, digit31] using hraw
  have hhigh : rho 187 =
      Bool.toZMod bits[186]! := by
    simpa only using rho_bit_of_map rho bits hbits 186 (by decide +kernel)
  have hlow : rho 186 =
      Bool.toZMod bits[185]! := by
    simpa only using rho_bit_of_map rho bits hbits 185 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[186]! bits[185]! (base rho) (twice rho) (triple rho)
    (digit31 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit31 rho) := by
    rw [hdigit]
    cases bits[186]! <;> cases bits[185]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted31 rho) (digit31 rho) (acc32 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 962) (rho 963) (rho 965 + rho 966) ((1 : F) + rho 968 + rho 969)
      (rho 970) (rho 971) (rho 972) (rho 973) (rho 974) (rho 975)
      (by simpa [shifted31] using hshift2On)
      (by simpa [digit31] using hdigitOn)
      (by linear_combination r967)
      (by linear_combination r968)
      (by linear_combination r969)
      (by linear_combination r970)
      (by linear_combination r971)
      (by linear_combination r972)
    simpa [shifted31, digit31, acc32] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc32 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted31 rho) (digit31 rho) (acc32 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted31 rho) (digit31 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 187) (rho 186)
      (base rho) (twice rho) (triple rho) (acc31 rho)
      (acc32 rho) :=
    ⟨shiftOnce31 rho, shifted31 rho, digit31 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window32 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc32 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[184]! (scalarBits rho)[183]!
        (base rho) (twice rho) (triple rho) (acc32 rho)
        (acc33 rho) ∧
      EdwardsBridge.onCurve (acc33 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r973, r974, r975, r976, r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989, r990, r991, r992, r993, r994, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow973 at r973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow974 at r974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow975 at r975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow976 at r976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow977 at r977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow978 at r978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow979 at r979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow980 at r980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow981 at r981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow982 at r982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow983 at r983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow984 at r984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow985 at r985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow986 at r986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow987 at r987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow988 at r988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow989 at r989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow990 at r990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow991 at r991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow992 at r992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow993 at r993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow994 at r994
  have hshift1 : EdwardsBridge.doubleSpec (acc32 rho) (shiftOnce32 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 974) (rho 975) (rho 976) (rho 977) (rho 978) (rho 979) (rho 980)
      (by simpa [acc32] using hacc)
      (by linear_combination r973)
      (by linear_combination r974)
      (by linear_combination r975)
      (by linear_combination r976)
      (by linear_combination r977)
    simpa [acc32, shiftOnce32] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce32 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc32 rho) (shiftOnce32 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc32 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce32 rho) (shifted32 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 979) (rho 980) (rho 981) (rho 982) (rho 983) (rho 984) (rho 985)
      (by simpa [shiftOnce32] using hshift1On)
      (by linear_combination r978)
      (by linear_combination r979)
      (by linear_combination r980)
      (by linear_combination r981)
      (by linear_combination r982)
    simpa [shiftOnce32, shifted32] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted32 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce32 rho) (shifted32 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce32 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 185) (rho 184)
      (base rho) (twice rho) (triple rho) (digit32 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 185) (rho 184)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 987 + rho 988, (1 : F) + rho 990 + rho 991⟩ := by
      constructor
      · refine ⟨(rho 986 + (rho 258) - (0)), rho 987, ?_, ?_, ?_⟩
        · linear_combination r983 - (rho 184) * order_cast_zero
        · linear_combination r984
        · linear_combination r985
      · refine ⟨(rho 989 + (rho 259) - ((1 : F))), rho 990, ?_, ?_, ?_⟩
        · linear_combination r986 - (rho 184) * order_cast_zero
        · linear_combination r987
        · linear_combination r988
    simpa [base, twice, triple, digit32] using hraw
  have hhigh : rho 185 =
      Bool.toZMod bits[184]! := by
    simpa only using rho_bit_of_map rho bits hbits 184 (by decide +kernel)
  have hlow : rho 184 =
      Bool.toZMod bits[183]! := by
    simpa only using rho_bit_of_map rho bits hbits 183 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[184]! bits[183]! (base rho) (twice rho) (triple rho)
    (digit32 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit32 rho) := by
    rw [hdigit]
    cases bits[184]! <;> cases bits[183]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted32 rho) (digit32 rho) (acc33 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 984) (rho 985) (rho 987 + rho 988) ((1 : F) + rho 990 + rho 991)
      (rho 992) (rho 993) (rho 994) (rho 995) (rho 996) (rho 997)
      (by simpa [shifted32] using hshift2On)
      (by simpa [digit32] using hdigitOn)
      (by linear_combination r989)
      (by linear_combination r990)
      (by linear_combination r991)
      (by linear_combination r992)
      (by linear_combination r993)
      (by linear_combination r994)
    simpa [shifted32, digit32, acc33] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc33 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted32 rho) (digit32 rho) (acc33 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted32 rho) (digit32 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 185) (rho 184)
      (base rho) (twice rho) (triple rho) (acc32 rho)
      (acc33 rho) :=
    ⟨shiftOnce32 rho, shifted32 rho, digit32 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window33 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc33 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[182]! (scalarBits rho)[181]!
        (base rho) (twice rho) (triple rho) (acc33 rho)
        (acc34 rho) ∧
      EdwardsBridge.onCurve (acc34 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r995, r996, r997, r998, r999, r1000, r1001, r1002, r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, r1012, r1013, r1014, r1015, r1016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow995 at r995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow996 at r996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow997 at r997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow998 at r998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow999 at r999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1000 at r1000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1001 at r1001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1002 at r1002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1003 at r1003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1004 at r1004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1005 at r1005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1006 at r1006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1007 at r1007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1008 at r1008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1009 at r1009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1010 at r1010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1011 at r1011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1012 at r1012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1013 at r1013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1014 at r1014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1015 at r1015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1016 at r1016
  have hshift1 : EdwardsBridge.doubleSpec (acc33 rho) (shiftOnce33 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 996) (rho 997) (rho 998) (rho 999) (rho 1000) (rho 1001) (rho 1002)
      (by simpa [acc33] using hacc)
      (by linear_combination r995)
      (by linear_combination r996)
      (by linear_combination r997)
      (by linear_combination r998)
      (by linear_combination r999)
    simpa [acc33, shiftOnce33] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce33 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc33 rho) (shiftOnce33 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc33 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce33 rho) (shifted33 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1001) (rho 1002) (rho 1003) (rho 1004) (rho 1005) (rho 1006) (rho 1007)
      (by simpa [shiftOnce33] using hshift1On)
      (by linear_combination r1000)
      (by linear_combination r1001)
      (by linear_combination r1002)
      (by linear_combination r1003)
      (by linear_combination r1004)
    simpa [shiftOnce33, shifted33] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted33 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce33 rho) (shifted33 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce33 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 183) (rho 182)
      (base rho) (twice rho) (triple rho) (digit33 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 183) (rho 182)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1009 + rho 1010, (1 : F) + rho 1012 + rho 1013⟩ := by
      constructor
      · refine ⟨(rho 1008 + (rho 258) - (0)), rho 1009, ?_, ?_, ?_⟩
        · linear_combination r1005 - (rho 182) * order_cast_zero
        · linear_combination r1006
        · linear_combination r1007
      · refine ⟨(rho 1011 + (rho 259) - ((1 : F))), rho 1012, ?_, ?_, ?_⟩
        · linear_combination r1008 - (rho 182) * order_cast_zero
        · linear_combination r1009
        · linear_combination r1010
    simpa [base, twice, triple, digit33] using hraw
  have hhigh : rho 183 =
      Bool.toZMod bits[182]! := by
    simpa only using rho_bit_of_map rho bits hbits 182 (by decide +kernel)
  have hlow : rho 182 =
      Bool.toZMod bits[181]! := by
    simpa only using rho_bit_of_map rho bits hbits 181 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[182]! bits[181]! (base rho) (twice rho) (triple rho)
    (digit33 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit33 rho) := by
    rw [hdigit]
    cases bits[182]! <;> cases bits[181]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted33 rho) (digit33 rho) (acc34 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1006) (rho 1007) (rho 1009 + rho 1010) ((1 : F) + rho 1012 + rho 1013)
      (rho 1014) (rho 1015) (rho 1016) (rho 1017) (rho 1018) (rho 1019)
      (by simpa [shifted33] using hshift2On)
      (by simpa [digit33] using hdigitOn)
      (by linear_combination r1011)
      (by linear_combination r1012)
      (by linear_combination r1013)
      (by linear_combination r1014)
      (by linear_combination r1015)
      (by linear_combination r1016)
    simpa [shifted33, digit33, acc34] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc34 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted33 rho) (digit33 rho) (acc34 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted33 rho) (digit33 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 183) (rho 182)
      (base rho) (twice rho) (triple rho) (acc33 rho)
      (acc34 rho) :=
    ⟨shiftOnce33 rho, shifted33 rho, digit33 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window34 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc34 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[180]! (scalarBits rho)[179]!
        (base rho) (twice rho) (triple rho) (acc34 rho)
        (acc35 rho) ∧
      EdwardsBridge.onCurve (acc35 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1017 at r1017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1018 at r1018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1019 at r1019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1020 at r1020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1021 at r1021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1022 at r1022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1023 at r1023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1024 at r1024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1025 at r1025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1026 at r1026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1027 at r1027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1028 at r1028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1029 at r1029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1030 at r1030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1031 at r1031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1032 at r1032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1033 at r1033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1034 at r1034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1035 at r1035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1036 at r1036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1037 at r1037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1038 at r1038
  have hshift1 : EdwardsBridge.doubleSpec (acc34 rho) (shiftOnce34 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1018) (rho 1019) (rho 1020) (rho 1021) (rho 1022) (rho 1023) (rho 1024)
      (by simpa [acc34] using hacc)
      (by linear_combination r1017)
      (by linear_combination r1018)
      (by linear_combination r1019)
      (by linear_combination r1020)
      (by linear_combination r1021)
    simpa [acc34, shiftOnce34] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce34 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc34 rho) (shiftOnce34 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc34 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce34 rho) (shifted34 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1023) (rho 1024) (rho 1025) (rho 1026) (rho 1027) (rho 1028) (rho 1029)
      (by simpa [shiftOnce34] using hshift1On)
      (by linear_combination r1022)
      (by linear_combination r1023)
      (by linear_combination r1024)
      (by linear_combination r1025)
      (by linear_combination r1026)
    simpa [shiftOnce34, shifted34] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted34 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce34 rho) (shifted34 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce34 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 181) (rho 180)
      (base rho) (twice rho) (triple rho) (digit34 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 181) (rho 180)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1031 + rho 1032, (1 : F) + rho 1034 + rho 1035⟩ := by
      constructor
      · refine ⟨(rho 1030 + (rho 258) - (0)), rho 1031, ?_, ?_, ?_⟩
        · linear_combination r1027 - (rho 180) * order_cast_zero
        · linear_combination r1028
        · linear_combination r1029
      · refine ⟨(rho 1033 + (rho 259) - ((1 : F))), rho 1034, ?_, ?_, ?_⟩
        · linear_combination r1030 - (rho 180) * order_cast_zero
        · linear_combination r1031
        · linear_combination r1032
    simpa [base, twice, triple, digit34] using hraw
  have hhigh : rho 181 =
      Bool.toZMod bits[180]! := by
    simpa only using rho_bit_of_map rho bits hbits 180 (by decide +kernel)
  have hlow : rho 180 =
      Bool.toZMod bits[179]! := by
    simpa only using rho_bit_of_map rho bits hbits 179 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[180]! bits[179]! (base rho) (twice rho) (triple rho)
    (digit34 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit34 rho) := by
    rw [hdigit]
    cases bits[180]! <;> cases bits[179]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted34 rho) (digit34 rho) (acc35 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1028) (rho 1029) (rho 1031 + rho 1032) ((1 : F) + rho 1034 + rho 1035)
      (rho 1036) (rho 1037) (rho 1038) (rho 1039) (rho 1040) (rho 1041)
      (by simpa [shifted34] using hshift2On)
      (by simpa [digit34] using hdigitOn)
      (by linear_combination r1033)
      (by linear_combination r1034)
      (by linear_combination r1035)
      (by linear_combination r1036)
      (by linear_combination r1037)
      (by linear_combination r1038)
    simpa [shifted34, digit34, acc35] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc35 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted34 rho) (digit34 rho) (acc35 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted34 rho) (digit34 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 181) (rho 180)
      (base rho) (twice rho) (triple rho) (acc34 rho)
      (acc35 rho) :=
    ⟨shiftOnce34 rho, shifted34 rho, digit34 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window35 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc35 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[178]! (scalarBits rho)[177]!
        (base rho) (twice rho) (triple rho) (acc35 rho)
        (acc36 rho) ∧
      EdwardsBridge.onCurve (acc36 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, p13, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart13 at p13
  rcases p13 with ⟨r1040, r1041, r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1039 at r1039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1040 at r1040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1041 at r1041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1042 at r1042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1043 at r1043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1044 at r1044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1045 at r1045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1046 at r1046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1047 at r1047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1048 at r1048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1049 at r1049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1050 at r1050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1051 at r1051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1052 at r1052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1053 at r1053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1054 at r1054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1055 at r1055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1056 at r1056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1057 at r1057
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1058 at r1058
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1059 at r1059
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1060 at r1060
  have hshift1 : EdwardsBridge.doubleSpec (acc35 rho) (shiftOnce35 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1040) (rho 1041) (rho 1042) (rho 1043) (rho 1044) (rho 1045) (rho 1046)
      (by simpa [acc35] using hacc)
      (by linear_combination r1039)
      (by linear_combination r1040)
      (by linear_combination r1041)
      (by linear_combination r1042)
      (by linear_combination r1043)
    simpa [acc35, shiftOnce35] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce35 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc35 rho) (shiftOnce35 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc35 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce35 rho) (shifted35 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1045) (rho 1046) (rho 1047) (rho 1048) (rho 1049) (rho 1050) (rho 1051)
      (by simpa [shiftOnce35] using hshift1On)
      (by linear_combination r1044)
      (by linear_combination r1045)
      (by linear_combination r1046)
      (by linear_combination r1047)
      (by linear_combination r1048)
    simpa [shiftOnce35, shifted35] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted35 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce35 rho) (shifted35 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce35 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 179) (rho 178)
      (base rho) (twice rho) (triple rho) (digit35 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 179) (rho 178)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1053 + rho 1054, (1 : F) + rho 1056 + rho 1057⟩ := by
      constructor
      · refine ⟨(rho 1052 + (rho 258) - (0)), rho 1053, ?_, ?_, ?_⟩
        · linear_combination r1049 - (rho 178) * order_cast_zero
        · linear_combination r1050
        · linear_combination r1051
      · refine ⟨(rho 1055 + (rho 259) - ((1 : F))), rho 1056, ?_, ?_, ?_⟩
        · linear_combination r1052 - (rho 178) * order_cast_zero
        · linear_combination r1053
        · linear_combination r1054
    simpa [base, twice, triple, digit35] using hraw
  have hhigh : rho 179 =
      Bool.toZMod bits[178]! := by
    simpa only using rho_bit_of_map rho bits hbits 178 (by decide +kernel)
  have hlow : rho 178 =
      Bool.toZMod bits[177]! := by
    simpa only using rho_bit_of_map rho bits hbits 177 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[178]! bits[177]! (base rho) (twice rho) (triple rho)
    (digit35 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit35 rho) := by
    rw [hdigit]
    cases bits[178]! <;> cases bits[177]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted35 rho) (digit35 rho) (acc36 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1050) (rho 1051) (rho 1053 + rho 1054) ((1 : F) + rho 1056 + rho 1057)
      (rho 1058) (rho 1059) (rho 1060) (rho 1061) (rho 1062) (rho 1063)
      (by simpa [shifted35] using hshift2On)
      (by simpa [digit35] using hdigitOn)
      (by linear_combination r1055)
      (by linear_combination r1056)
      (by linear_combination r1057)
      (by linear_combination r1058)
      (by linear_combination r1059)
      (by linear_combination r1060)
    simpa [shifted35, digit35, acc36] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc36 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted35 rho) (digit35 rho) (acc36 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted35 rho) (digit35 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 179) (rho 178)
      (base rho) (twice rho) (triple rho) (acc35 rho)
      (acc36 rho) :=
    ⟨shiftOnce35 rho, shifted35 rho, digit35 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
