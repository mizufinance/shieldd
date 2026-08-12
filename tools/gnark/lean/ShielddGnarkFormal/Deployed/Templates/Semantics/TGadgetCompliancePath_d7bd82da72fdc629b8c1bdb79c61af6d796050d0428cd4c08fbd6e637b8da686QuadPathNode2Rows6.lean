import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node2_seg60 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r1075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1075 rho)
    (r1076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1076 rho)
    (r1077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1077 rho)
    (r1078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1078 rho)
    (r1079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1079 rho)
    (tail : next (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) (rho 1084)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg60 (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) next := by
  exact ⟨rho 1080, rho 1081, rho 1082, rho 1083, rho 1084, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1075 at r1075; linear_combination r1075), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1076 at r1076; linear_combination r1076), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1077 at r1077; linear_combination r1077), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1078 at r1078; linear_combination r1078), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1079 at r1079; linear_combination r1079), tail⟩

theorem node2_seg61 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1080 rho)
    (r1081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1081 rho)
    (r1082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1082 rho)
    (r1083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1083 rho)
    (r1084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1084 rho)
    (tail : next (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) (rho 1084) (rho 1089)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg61 (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) (rho 1084) next := by
  exact ⟨rho 1085, rho 1086, rho 1087, rho 1088, rho 1089, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1080 at r1080; linear_combination r1080), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1081 at r1081; linear_combination r1081), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1082 at r1082; linear_combination r1082), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1083 at r1083; linear_combination r1083), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1084 at r1084; linear_combination r1084), tail⟩

theorem node2_seg62 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1085 rho)
    (r1086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1086 rho)
    (r1087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1087 rho)
    (r1088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1088 rho)
    (r1089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1089 rho)
    (tail : next (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) (rho 1084) (rho 1089) (rho 1094)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg62 (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) (rho 1084) (rho 1089) next := by
  exact ⟨rho 1090, rho 1091, rho 1092, rho 1093, rho 1094, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1085 at r1085; linear_combination r1085), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1086 at r1086; linear_combination r1086), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1087 at r1087; linear_combination r1087), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1088 at r1088; linear_combination r1088), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1089 at r1089; linear_combination r1089), tail⟩

theorem node2_seg63 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1090 rho)
    (r1091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1091 rho)
    (r1092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1092 rho)
    (r1093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1093 rho)
    (r1094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1094 rho)
    (tail : next (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) (rho 1084) (rho 1089) (rho 1094) (rho 1099)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg63 (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) (rho 1084) (rho 1089) (rho 1094) next := by
  exact ⟨rho 1095, rho 1096, rho 1097, rho 1098, rho 1099, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1090 at r1090; linear_combination r1090), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1091 at r1091; linear_combination r1091), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1092 at r1092; linear_combination r1092), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1093 at r1093; linear_combination r1093), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1094 at r1094; linear_combination r1094), tail⟩

theorem node2_seg64 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r1095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1095 rho)
    (r1096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1096 rho)
    (r1097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1097 rho)
    (r1098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1098 rho)
    (r1099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1099 rho)
    (tail : next (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg64 (rho 1059) (rho 1064) (rho 1069) (rho 1074) (rho 1079) (rho 1084) (rho 1089) (rho 1094) (rho 1099) next := by
  exact ⟨rho 1100, rho 1101, rho 1102, rho 1103, rho 1104, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1095 at r1095; linear_combination r1095), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1096 at r1096; linear_combination r1096), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1097 at r1097; linear_combination r1097), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1098 at r1098; linear_combination r1098), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1099 at r1099; linear_combination r1099), tail⟩

theorem node2_seg65 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r1100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1100 rho)
    (r1101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1101 rho)
    (r1102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1102 rho)
    (r1103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1103 rho)
    (r1104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1104 rho)
    (tail : next (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) (rho 1109)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg65 (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) next := by
  exact ⟨rho 1105, rho 1106, rho 1107, rho 1108, rho 1109, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1100 at r1100; linear_combination r1100), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1101 at r1101; linear_combination r1101), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1102 at r1102; linear_combination r1102), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1103 at r1103; linear_combination r1103), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1104 at r1104; linear_combination r1104), tail⟩

theorem node2_seg66 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1105 rho)
    (r1106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1106 rho)
    (r1107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1107 rho)
    (r1108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1108 rho)
    (r1109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1109 rho)
    (tail : next (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg66 (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) (rho 1109) next := by
  exact ⟨rho 1110, rho 1111, rho 1112, rho 1113, rho 1114, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1105 at r1105; linear_combination r1105), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1106 at r1106; linear_combination r1106), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1107 at r1107; linear_combination r1107), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1108 at r1108; linear_combination r1108), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1109 at r1109; linear_combination r1109), tail⟩

theorem node2_seg67 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1110 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1110 rho)
    (r1111 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1111 rho)
    (r1112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1112 rho)
    (r1113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1113 rho)
    (r1114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1114 rho)
    (tail : next (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg67 (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) next := by
  exact ⟨rho 1115, rho 1116, rho 1117, rho 1118, rho 1119, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1110 at r1110; linear_combination r1110), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1111 at r1111; linear_combination r1111), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1112 at r1112; linear_combination r1112), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1113 at r1113; linear_combination r1113), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1114 at r1114; linear_combination r1114), tail⟩

theorem node2_seg68 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1115 rho)
    (r1116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1116 rho)
    (r1117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1117 rho)
    (r1118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1118 rho)
    (r1119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1119 rho)
    (tail : next (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg68 (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) next := by
  exact ⟨rho 1120, rho 1121, rho 1122, rho 1123, rho 1124, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1115 at r1115; linear_combination r1115), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1116 at r1116; linear_combination r1116), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1117 at r1117; linear_combination r1117), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1118 at r1118; linear_combination r1118), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1119 at r1119; linear_combination r1119), tail⟩

theorem node2_seg69 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r1120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1120 rho)
    (r1121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1121 rho)
    (r1122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1122 rho)
    (r1123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1123 rho)
    (r1124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1124 rho)
    (tail : next (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg69 (rho 1084) (rho 1089) (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) next := by
  exact ⟨rho 1125, rho 1126, rho 1127, rho 1128, rho 1129, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1120 at r1120; linear_combination r1120), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1121 at r1121; linear_combination r1121), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1122 at r1122; linear_combination r1122), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1123 at r1123; linear_combination r1123), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1124 at r1124; linear_combination r1124), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
