import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window36 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc36 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[176]! (scalarBits rho)[175]!
        (base rho) (twice rho) (triple rho) (acc36 rho)
        (acc37 rho) ∧
      EdwardsBridge.onCurve (acc37 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p13, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1061 at r1061
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1062 at r1062
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1063 at r1063
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1064 at r1064
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1065 at r1065
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1066 at r1066
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1067 at r1067
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1068 at r1068
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1069 at r1069
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1070 at r1070
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1071 at r1071
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1072 at r1072
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1073 at r1073
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1074 at r1074
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1075 at r1075
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1076 at r1076
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1077 at r1077
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1078 at r1078
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1079 at r1079
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1080 at r1080
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1081 at r1081
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1082 at r1082
  have hshift1 : EdwardsBridge.doubleSpec (acc36 rho) (shiftOnce36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1062) (rho 1063) (rho 1064) (rho 1065) (rho 1066) (rho 1067) (rho 1068)
      (by simpa [acc36] using hacc)
      (by linear_combination r1061)
      (by linear_combination r1062)
      (by linear_combination r1063)
      (by linear_combination r1064)
      (by linear_combination r1065)
    simpa [acc36, shiftOnce36] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc36 rho) (shiftOnce36 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc36 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce36 rho) (shifted36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1067) (rho 1068) (rho 1069) (rho 1070) (rho 1071) (rho 1072) (rho 1073)
      (by simpa [shiftOnce36] using hshift1On)
      (by linear_combination r1066)
      (by linear_combination r1067)
      (by linear_combination r1068)
      (by linear_combination r1069)
      (by linear_combination r1070)
    simpa [shiftOnce36, shifted36] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce36 rho) (shifted36 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce36 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 177) (rho 176)
      (base rho) (twice rho) (triple rho) (digit36 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 177) (rho 176)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1075 + rho 1076, (1 : F) + rho 1078 + rho 1079⟩ := by
      constructor
      · refine ⟨(rho 1074 + (rho 258) - (0)), rho 1075, ?_, ?_, ?_⟩
        · linear_combination r1071 - (rho 176) * order_cast_zero
        · linear_combination r1072
        · linear_combination r1073
      · refine ⟨(rho 1077 + (rho 259) - ((1 : F))), rho 1078, ?_, ?_, ?_⟩
        · linear_combination r1074 - (rho 176) * order_cast_zero
        · linear_combination r1075
        · linear_combination r1076
    simpa [base, twice, triple, digit36] using hraw
  have hhigh : rho 177 =
      Bool.toZMod bits[176]! := by
    simpa only using rho_bit_of_map rho bits hbits 176 (by decide +kernel)
  have hlow : rho 176 =
      Bool.toZMod bits[175]! := by
    simpa only using rho_bit_of_map rho bits hbits 175 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[176]! bits[175]! (base rho) (twice rho) (triple rho)
    (digit36 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit36 rho) := by
    rw [hdigit]
    cases bits[176]! <;> cases bits[175]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted36 rho) (digit36 rho) (acc37 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1072) (rho 1073) (rho 1075 + rho 1076) ((1 : F) + rho 1078 + rho 1079)
      (rho 1080) (rho 1081) (rho 1082) (rho 1083) (rho 1084) (rho 1085)
      (by simpa [shifted36] using hshift2On)
      (by simpa [digit36] using hdigitOn)
      (by linear_combination r1077)
      (by linear_combination r1078)
      (by linear_combination r1079)
      (by linear_combination r1080)
      (by linear_combination r1081)
      (by linear_combination r1082)
    simpa [shifted36, digit36, acc37] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc37 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted36 rho) (digit36 rho) (acc37 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted36 rho) (digit36 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 177) (rho 176)
      (base rho) (twice rho) (triple rho) (acc36 rho)
      (acc37 rho) :=
    ⟨shiftOnce36 rho, shifted36 rho, digit36 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window37 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc37 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[174]! (scalarBits rho)[173]!
        (base rho) (twice rho) (triple rho) (acc37 rho)
        (acc38 rho) ∧
      EdwardsBridge.onCurve (acc38 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p13, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1083 at r1083
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1084 at r1084
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1085 at r1085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1086 at r1086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1087 at r1087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1088 at r1088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1089 at r1089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1090 at r1090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1091 at r1091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1092 at r1092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1093 at r1093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1094 at r1094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1095 at r1095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1096 at r1096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1097 at r1097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1098 at r1098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1099 at r1099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1100 at r1100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1101 at r1101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1102 at r1102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1103 at r1103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1104 at r1104
  have hshift1 : EdwardsBridge.doubleSpec (acc37 rho) (shiftOnce37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1084) (rho 1085) (rho 1086) (rho 1087) (rho 1088) (rho 1089) (rho 1090)
      (by simpa [acc37] using hacc)
      (by linear_combination r1083)
      (by linear_combination r1084)
      (by linear_combination r1085)
      (by linear_combination r1086)
      (by linear_combination r1087)
    simpa [acc37, shiftOnce37] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc37 rho) (shiftOnce37 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc37 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce37 rho) (shifted37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1089) (rho 1090) (rho 1091) (rho 1092) (rho 1093) (rho 1094) (rho 1095)
      (by simpa [shiftOnce37] using hshift1On)
      (by linear_combination r1088)
      (by linear_combination r1089)
      (by linear_combination r1090)
      (by linear_combination r1091)
      (by linear_combination r1092)
    simpa [shiftOnce37, shifted37] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce37 rho) (shifted37 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce37 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 175) (rho 174)
      (base rho) (twice rho) (triple rho) (digit37 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 175) (rho 174)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1097 + rho 1098, (1 : F) + rho 1100 + rho 1101⟩ := by
      constructor
      · refine ⟨(rho 1096 + (rho 258) - (0)), rho 1097, ?_, ?_, ?_⟩
        · linear_combination r1093 - (rho 174) * order_cast_zero
        · linear_combination r1094
        · linear_combination r1095
      · refine ⟨(rho 1099 + (rho 259) - ((1 : F))), rho 1100, ?_, ?_, ?_⟩
        · linear_combination r1096 - (rho 174) * order_cast_zero
        · linear_combination r1097
        · linear_combination r1098
    simpa [base, twice, triple, digit37] using hraw
  have hhigh : rho 175 =
      Bool.toZMod bits[174]! := by
    simpa only using rho_bit_of_map rho bits hbits 174 (by decide +kernel)
  have hlow : rho 174 =
      Bool.toZMod bits[173]! := by
    simpa only using rho_bit_of_map rho bits hbits 173 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[174]! bits[173]! (base rho) (twice rho) (triple rho)
    (digit37 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit37 rho) := by
    rw [hdigit]
    cases bits[174]! <;> cases bits[173]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted37 rho) (digit37 rho) (acc38 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1094) (rho 1095) (rho 1097 + rho 1098) ((1 : F) + rho 1100 + rho 1101)
      (rho 1102) (rho 1103) (rho 1104) (rho 1105) (rho 1106) (rho 1107)
      (by simpa [shifted37] using hshift2On)
      (by simpa [digit37] using hdigitOn)
      (by linear_combination r1099)
      (by linear_combination r1100)
      (by linear_combination r1101)
      (by linear_combination r1102)
      (by linear_combination r1103)
      (by linear_combination r1104)
    simpa [shifted37, digit37, acc38] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc38 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted37 rho) (digit37 rho) (acc38 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted37 rho) (digit37 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 175) (rho 174)
      (base rho) (twice rho) (triple rho) (acc37 rho)
      (acc38 rho) :=
    ⟨shiftOnce37 rho, shifted37 rho, digit37 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window38 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc38 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[172]! (scalarBits rho)[171]!
        (base rho) (twice rho) (triple rho) (acc38 rho)
        (acc39 rho) ∧
      EdwardsBridge.onCurve (acc39 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p13, p14, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1105 at r1105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1106 at r1106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1107 at r1107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1108 at r1108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1109 at r1109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1110 at r1110
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1111 at r1111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1112 at r1112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1113 at r1113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1114 at r1114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1115 at r1115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1116 at r1116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1117 at r1117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1118 at r1118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1119 at r1119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1120 at r1120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1121 at r1121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1122 at r1122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1123 at r1123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1124 at r1124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1125 at r1125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1126 at r1126
  have hshift1 : EdwardsBridge.doubleSpec (acc38 rho) (shiftOnce38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1106) (rho 1107) (rho 1108) (rho 1109) (rho 1110) (rho 1111) (rho 1112)
      (by simpa [acc38] using hacc)
      (by linear_combination r1105)
      (by linear_combination r1106)
      (by linear_combination r1107)
      (by linear_combination r1108)
      (by linear_combination r1109)
    simpa [acc38, shiftOnce38] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc38 rho) (shiftOnce38 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc38 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce38 rho) (shifted38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1111) (rho 1112) (rho 1113) (rho 1114) (rho 1115) (rho 1116) (rho 1117)
      (by simpa [shiftOnce38] using hshift1On)
      (by linear_combination r1110)
      (by linear_combination r1111)
      (by linear_combination r1112)
      (by linear_combination r1113)
      (by linear_combination r1114)
    simpa [shiftOnce38, shifted38] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce38 rho) (shifted38 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce38 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 173) (rho 172)
      (base rho) (twice rho) (triple rho) (digit38 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 173) (rho 172)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1119 + rho 1120, (1 : F) + rho 1122 + rho 1123⟩ := by
      constructor
      · refine ⟨(rho 1118 + (rho 258) - (0)), rho 1119, ?_, ?_, ?_⟩
        · linear_combination r1115 - (rho 172) * order_cast_zero
        · linear_combination r1116
        · linear_combination r1117
      · refine ⟨(rho 1121 + (rho 259) - ((1 : F))), rho 1122, ?_, ?_, ?_⟩
        · linear_combination r1118 - (rho 172) * order_cast_zero
        · linear_combination r1119
        · linear_combination r1120
    simpa [base, twice, triple, digit38] using hraw
  have hhigh : rho 173 =
      Bool.toZMod bits[172]! := by
    simpa only using rho_bit_of_map rho bits hbits 172 (by decide +kernel)
  have hlow : rho 172 =
      Bool.toZMod bits[171]! := by
    simpa only using rho_bit_of_map rho bits hbits 171 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[172]! bits[171]! (base rho) (twice rho) (triple rho)
    (digit38 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit38 rho) := by
    rw [hdigit]
    cases bits[172]! <;> cases bits[171]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted38 rho) (digit38 rho) (acc39 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1116) (rho 1117) (rho 1119 + rho 1120) ((1 : F) + rho 1122 + rho 1123)
      (rho 1124) (rho 1125) (rho 1126) (rho 1127) (rho 1128) (rho 1129)
      (by simpa [shifted38] using hshift2On)
      (by simpa [digit38] using hdigitOn)
      (by linear_combination r1121)
      (by linear_combination r1122)
      (by linear_combination r1123)
      (by linear_combination r1124)
      (by linear_combination r1125)
      (by linear_combination r1126)
    simpa [shifted38, digit38, acc39] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc39 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted38 rho) (digit38 rho) (acc39 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted38 rho) (digit38 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 173) (rho 172)
      (base rho) (twice rho) (triple rho) (acc38 rho)
      (acc39 rho) :=
    ⟨shiftOnce38 rho, shifted38 rho, digit38 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window39 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc39 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[170]! (scalarBits rho)[169]!
        (base rho) (twice rho) (triple rho) (acc39 rho)
        (acc40 rho) ∧
      EdwardsBridge.onCurve (acc40 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p14, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart14 at p14
  rcases p14 with ⟨_, _, _, _, _, _, _, r1127, r1128, r1129, r1130, r1131, r1132, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1127 at r1127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1128 at r1128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1129 at r1129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1130 at r1130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1131 at r1131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1132 at r1132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1133 at r1133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1134 at r1134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1135 at r1135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1136 at r1136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1137 at r1137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1138 at r1138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1139 at r1139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1140 at r1140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1141 at r1141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1142 at r1142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1143 at r1143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1144 at r1144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1145 at r1145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1146 at r1146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1147 at r1147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1148 at r1148
  have hshift1 : EdwardsBridge.doubleSpec (acc39 rho) (shiftOnce39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1128) (rho 1129) (rho 1130) (rho 1131) (rho 1132) (rho 1133) (rho 1134)
      (by simpa [acc39] using hacc)
      (by linear_combination r1127)
      (by linear_combination r1128)
      (by linear_combination r1129)
      (by linear_combination r1130)
      (by linear_combination r1131)
    simpa [acc39, shiftOnce39] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc39 rho) (shiftOnce39 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc39 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce39 rho) (shifted39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1133) (rho 1134) (rho 1135) (rho 1136) (rho 1137) (rho 1138) (rho 1139)
      (by simpa [shiftOnce39] using hshift1On)
      (by linear_combination r1132)
      (by linear_combination r1133)
      (by linear_combination r1134)
      (by linear_combination r1135)
      (by linear_combination r1136)
    simpa [shiftOnce39, shifted39] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce39 rho) (shifted39 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce39 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 171) (rho 170)
      (base rho) (twice rho) (triple rho) (digit39 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 171) (rho 170)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1141 + rho 1142, (1 : F) + rho 1144 + rho 1145⟩ := by
      constructor
      · refine ⟨(rho 1140 + (rho 258) - (0)), rho 1141, ?_, ?_, ?_⟩
        · linear_combination r1137 - (rho 170) * order_cast_zero
        · linear_combination r1138
        · linear_combination r1139
      · refine ⟨(rho 1143 + (rho 259) - ((1 : F))), rho 1144, ?_, ?_, ?_⟩
        · linear_combination r1140 - (rho 170) * order_cast_zero
        · linear_combination r1141
        · linear_combination r1142
    simpa [base, twice, triple, digit39] using hraw
  have hhigh : rho 171 =
      Bool.toZMod bits[170]! := by
    simpa only using rho_bit_of_map rho bits hbits 170 (by decide +kernel)
  have hlow : rho 170 =
      Bool.toZMod bits[169]! := by
    simpa only using rho_bit_of_map rho bits hbits 169 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[170]! bits[169]! (base rho) (twice rho) (triple rho)
    (digit39 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit39 rho) := by
    rw [hdigit]
    cases bits[170]! <;> cases bits[169]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted39 rho) (digit39 rho) (acc40 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1138) (rho 1139) (rho 1141 + rho 1142) ((1 : F) + rho 1144 + rho 1145)
      (rho 1146) (rho 1147) (rho 1148) (rho 1149) (rho 1150) (rho 1151)
      (by simpa [shifted39] using hshift2On)
      (by simpa [digit39] using hdigitOn)
      (by linear_combination r1143)
      (by linear_combination r1144)
      (by linear_combination r1145)
      (by linear_combination r1146)
      (by linear_combination r1147)
      (by linear_combination r1148)
    simpa [shifted39, digit39, acc40] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc40 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted39 rho) (digit39 rho) (acc40 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted39 rho) (digit39 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 171) (rho 170)
      (base rho) (twice rho) (triple rho) (acc39 rho)
      (acc40 rho) :=
    ⟨shiftOnce39 rho, shifted39 rho, digit39 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window40 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc40 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[168]! (scalarBits rho)[167]!
        (base rho) (twice rho) (triple rho) (acc40 rho)
        (acc41 rho) ∧
      EdwardsBridge.onCurve (acc41 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p14, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart14 at p14
  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1149 at r1149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1150 at r1150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1151 at r1151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1152 at r1152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1153 at r1153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1154 at r1154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1155 at r1155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1156 at r1156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1157 at r1157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1158 at r1158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1159 at r1159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1160 at r1160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1161 at r1161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1162 at r1162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1163 at r1163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1164 at r1164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1165 at r1165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1166 at r1166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1167 at r1167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1168 at r1168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1169 at r1169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1170 at r1170
  have hshift1 : EdwardsBridge.doubleSpec (acc40 rho) (shiftOnce40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1150) (rho 1151) (rho 1152) (rho 1153) (rho 1154) (rho 1155) (rho 1156)
      (by simpa [acc40] using hacc)
      (by linear_combination r1149)
      (by linear_combination r1150)
      (by linear_combination r1151)
      (by linear_combination r1152)
      (by linear_combination r1153)
    simpa [acc40, shiftOnce40] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc40 rho) (shiftOnce40 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc40 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce40 rho) (shifted40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1155) (rho 1156) (rho 1157) (rho 1158) (rho 1159) (rho 1160) (rho 1161)
      (by simpa [shiftOnce40] using hshift1On)
      (by linear_combination r1154)
      (by linear_combination r1155)
      (by linear_combination r1156)
      (by linear_combination r1157)
      (by linear_combination r1158)
    simpa [shiftOnce40, shifted40] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce40 rho) (shifted40 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce40 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 169) (rho 168)
      (base rho) (twice rho) (triple rho) (digit40 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 169) (rho 168)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1163 + rho 1164, (1 : F) + rho 1166 + rho 1167⟩ := by
      constructor
      · refine ⟨(rho 1162 + (rho 258) - (0)), rho 1163, ?_, ?_, ?_⟩
        · linear_combination r1159 - (rho 168) * order_cast_zero
        · linear_combination r1160
        · linear_combination r1161
      · refine ⟨(rho 1165 + (rho 259) - ((1 : F))), rho 1166, ?_, ?_, ?_⟩
        · linear_combination r1162 - (rho 168) * order_cast_zero
        · linear_combination r1163
        · linear_combination r1164
    simpa [base, twice, triple, digit40] using hraw
  have hhigh : rho 169 =
      Bool.toZMod bits[168]! := by
    simpa only using rho_bit_of_map rho bits hbits 168 (by decide +kernel)
  have hlow : rho 168 =
      Bool.toZMod bits[167]! := by
    simpa only using rho_bit_of_map rho bits hbits 167 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[168]! bits[167]! (base rho) (twice rho) (triple rho)
    (digit40 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit40 rho) := by
    rw [hdigit]
    cases bits[168]! <;> cases bits[167]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted40 rho) (digit40 rho) (acc41 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1160) (rho 1161) (rho 1163 + rho 1164) ((1 : F) + rho 1166 + rho 1167)
      (rho 1168) (rho 1169) (rho 1170) (rho 1171) (rho 1172) (rho 1173)
      (by simpa [shifted40] using hshift2On)
      (by simpa [digit40] using hdigitOn)
      (by linear_combination r1165)
      (by linear_combination r1166)
      (by linear_combination r1167)
      (by linear_combination r1168)
      (by linear_combination r1169)
      (by linear_combination r1170)
    simpa [shifted40, digit40, acc41] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc41 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted40 rho) (digit40 rho) (acc41 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted40 rho) (digit40 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 169) (rho 168)
      (base rho) (twice rho) (triple rho) (acc40 rho)
      (acc41 rho) :=
    ⟨shiftOnce40 rho, shifted40 rho, digit40 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window41 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc41 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[166]! (scalarBits rho)[165]!
        (base rho) (twice rho) (triple rho) (acc41 rho)
        (acc42 rho) ∧
      EdwardsBridge.onCurve (acc42 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p14, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart14 at p14
  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1171 at r1171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1172 at r1172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1173 at r1173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1174 at r1174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1175 at r1175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1176 at r1176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1177 at r1177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1178 at r1178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1179 at r1179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1180 at r1180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1181 at r1181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1182 at r1182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1183 at r1183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1184 at r1184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1185 at r1185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1186 at r1186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1187 at r1187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1188 at r1188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1189 at r1189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1190 at r1190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1191 at r1191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1192 at r1192
  have hshift1 : EdwardsBridge.doubleSpec (acc41 rho) (shiftOnce41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1172) (rho 1173) (rho 1174) (rho 1175) (rho 1176) (rho 1177) (rho 1178)
      (by simpa [acc41] using hacc)
      (by linear_combination r1171)
      (by linear_combination r1172)
      (by linear_combination r1173)
      (by linear_combination r1174)
      (by linear_combination r1175)
    simpa [acc41, shiftOnce41] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc41 rho) (shiftOnce41 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc41 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce41 rho) (shifted41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1177) (rho 1178) (rho 1179) (rho 1180) (rho 1181) (rho 1182) (rho 1183)
      (by simpa [shiftOnce41] using hshift1On)
      (by linear_combination r1176)
      (by linear_combination r1177)
      (by linear_combination r1178)
      (by linear_combination r1179)
      (by linear_combination r1180)
    simpa [shiftOnce41, shifted41] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce41 rho) (shifted41 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce41 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 167) (rho 166)
      (base rho) (twice rho) (triple rho) (digit41 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 167) (rho 166)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1185 + rho 1186, (1 : F) + rho 1188 + rho 1189⟩ := by
      constructor
      · refine ⟨(rho 1184 + (rho 258) - (0)), rho 1185, ?_, ?_, ?_⟩
        · linear_combination r1181 - (rho 166) * order_cast_zero
        · linear_combination r1182
        · linear_combination r1183
      · refine ⟨(rho 1187 + (rho 259) - ((1 : F))), rho 1188, ?_, ?_, ?_⟩
        · linear_combination r1184 - (rho 166) * order_cast_zero
        · linear_combination r1185
        · linear_combination r1186
    simpa [base, twice, triple, digit41] using hraw
  have hhigh : rho 167 =
      Bool.toZMod bits[166]! := by
    simpa only using rho_bit_of_map rho bits hbits 166 (by decide +kernel)
  have hlow : rho 166 =
      Bool.toZMod bits[165]! := by
    simpa only using rho_bit_of_map rho bits hbits 165 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[166]! bits[165]! (base rho) (twice rho) (triple rho)
    (digit41 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit41 rho) := by
    rw [hdigit]
    cases bits[166]! <;> cases bits[165]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted41 rho) (digit41 rho) (acc42 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1182) (rho 1183) (rho 1185 + rho 1186) ((1 : F) + rho 1188 + rho 1189)
      (rho 1190) (rho 1191) (rho 1192) (rho 1193) (rho 1194) (rho 1195)
      (by simpa [shifted41] using hshift2On)
      (by simpa [digit41] using hdigitOn)
      (by linear_combination r1187)
      (by linear_combination r1188)
      (by linear_combination r1189)
      (by linear_combination r1190)
      (by linear_combination r1191)
      (by linear_combination r1192)
    simpa [shifted41, digit41, acc42] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc42 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted41 rho) (digit41 rho) (acc42 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted41 rho) (digit41 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 167) (rho 166)
      (base rho) (twice rho) (triple rho) (acc41 rho)
      (acc42 rho) :=
    ⟨shiftOnce41 rho, shifted41 rho, digit41 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
