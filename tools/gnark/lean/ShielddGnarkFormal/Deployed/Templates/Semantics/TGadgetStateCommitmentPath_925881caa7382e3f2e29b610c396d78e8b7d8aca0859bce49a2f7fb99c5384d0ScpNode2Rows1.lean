import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node2_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1071 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1071 rho)
    (r1072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1072 rho)
    (r1073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1073 rho)
    (r1074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1074 rho)
    (r1075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1075 rho)
    (tail : next (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) (rho 1075) (rho 1080)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg10 (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) (rho 1075) next := by
  exact ⟨rho 1076, rho 1077, rho 1078, rho 1079, rho 1080, r1071, r1072, r1073, r1074, r1075, tail⟩

theorem template_scp_node2_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1076 rho)
    (r1077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1077 rho)
    (r1078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1078 rho)
    (r1079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1079 rho)
    (r1080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1080 rho)
    (tail : next (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) (rho 1075) (rho 1080) (rho 1085)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg11 (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) (rho 1075) (rho 1080) next := by
  exact ⟨rho 1081, rho 1082, rho 1083, rho 1084, rho 1085, r1076, r1077, r1078, r1079, r1080, tail⟩

theorem template_scp_node2_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1081 rho)
    (r1082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1082 rho)
    (r1083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1083 rho)
    (r1084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1084 rho)
    (r1085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1085 rho)
    (tail : next (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) (rho 1075) (rho 1080) (rho 1085) (rho 1090)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg12 (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) (rho 1075) (rho 1080) (rho 1085) next := by
  exact ⟨rho 1086, rho 1087, rho 1088, rho 1089, rho 1090, r1081, r1082, r1083, r1084, r1085, tail⟩

theorem template_scp_node2_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1086 rho)
    (r1087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1087 rho)
    (r1088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1088 rho)
    (r1089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1089 rho)
    (r1090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1090 rho)
    (tail : next (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg13 (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) (rho 1075) (rho 1080) (rho 1085) (rho 1090) next := by
  exact ⟨rho 1091, rho 1092, rho 1093, rho 1094, rho 1095, r1086, r1087, r1088, r1089, r1090, tail⟩

theorem template_scp_node2_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1091 rho)
    (r1092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1092 rho)
    (r1093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1093 rho)
    (r1094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1094 rho)
    (r1095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1095 rho)
    (tail : next (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) (rho 1100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg14 (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) next := by
  exact ⟨rho 1096, rho 1097, rho 1098, rho 1099, rho 1100, r1091, r1092, r1093, r1094, r1095, tail⟩

theorem template_scp_node2_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1096 rho)
    (r1097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1097 rho)
    (r1098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1098 rho)
    (r1099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1099 rho)
    (r1100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1100 rho)
    (tail : next (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) (rho 1100) (rho 1105)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg15 (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) (rho 1100) next := by
  exact ⟨rho 1101, rho 1102, rho 1103, rho 1104, rho 1105, r1096, r1097, r1098, r1099, r1100, tail⟩

theorem template_scp_node2_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1101 rho)
    (r1102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1102 rho)
    (r1103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1103 rho)
    (r1104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1104 rho)
    (r1105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1105 rho)
    (tail : next (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) (rho 1100) (rho 1105) (rho 1110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg16 (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) (rho 1100) (rho 1105) next := by
  exact ⟨rho 1106, rho 1107, rho 1108, rho 1109, rho 1110, r1101, r1102, r1103, r1104, r1105, tail⟩

theorem template_scp_node2_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1106 rho)
    (r1107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1107 rho)
    (r1108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1108 rho)
    (r1109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1109 rho)
    (r1110 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1110 rho)
    (tail : next (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) (rho 1100) (rho 1105) (rho 1110) (rho 1115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg17 (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) (rho 1100) (rho 1105) (rho 1110) next := by
  exact ⟨rho 1111, rho 1112, rho 1113, rho 1114, rho 1115, r1106, r1107, r1108, r1109, r1110, tail⟩

theorem template_scp_node2_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1111 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1111 rho)
    (r1112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1112 rho)
    (r1113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1113 rho)
    (r1114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1114 rho)
    (r1115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1115 rho)
    (tail : next (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg18 (rho 1075) (rho 1080) (rho 1085) (rho 1090) (rho 1095) (rho 1100) (rho 1105) (rho 1110) (rho 1115) next := by
  exact ⟨rho 1116, rho 1117, rho 1118, rho 1119, rho 1120, r1111, r1112, r1113, r1114, r1115, tail⟩

theorem template_scp_node2_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1116 rho)
    (r1117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1117 rho)
    (r1118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1118 rho)
    (r1119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1119 rho)
    (r1120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1120 rho)
    (tail : next (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg19 (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) next := by
  exact ⟨rho 1121, rho 1122, rho 1123, rho 1124, rho 1125, r1116, r1117, r1118, r1119, r1120, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
