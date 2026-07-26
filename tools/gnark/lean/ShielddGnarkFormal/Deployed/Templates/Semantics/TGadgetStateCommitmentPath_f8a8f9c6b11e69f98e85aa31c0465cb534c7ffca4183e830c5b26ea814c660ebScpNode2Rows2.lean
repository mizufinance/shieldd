import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node2_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1121 rho)
    (r1122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1122 rho)
    (r1123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1123 rho)
    (r1124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1124 rho)
    (r1125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1125 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg20 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) next := by
  exact ⟨rho 1120, rho 1121, rho 1122, rho 1123, rho 1124, r1121, r1122, r1123, r1124, r1125, tail⟩

theorem template_scp_node2_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1126 rho)
    (r1127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1127 rho)
    (r1128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1128 rho)
    (r1129 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1129 rho)
    (r1130 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1130 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg21 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) next := by
  exact ⟨rho 1125, rho 1126, rho 1127, rho 1128, rho 1129, r1126, r1127, r1128, r1129, r1130, tail⟩

theorem template_scp_node2_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1131 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1131 rho)
    (r1132 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1132 rho)
    (r1133 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1133 rho)
    (r1134 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1134 rho)
    (r1135 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1135 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg22 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) next := by
  exact ⟨rho 1130, rho 1131, rho 1132, rho 1133, rho 1134, r1131, r1132, r1133, r1134, r1135, tail⟩

theorem template_scp_node2_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r1136 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1136 rho)
    (r1137 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1137 rho)
    (r1138 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1138 rho)
    (r1139 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1139 rho)
    (r1140 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1140 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg23 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) next := by
  exact ⟨rho 1135, rho 1136, rho 1137, rho 1138, rho 1139, r1136, r1137, r1138, r1139, r1140, tail⟩

theorem template_scp_node2_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1141 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1141 rho)
    (r1142 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1142 rho)
    (r1143 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1143 rho)
    (r1144 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1144 rho)
    (r1145 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1145 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg24 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) next := by
  exact ⟨rho 1140, rho 1141, rho 1142, rho 1143, rho 1144, r1141, r1142, r1143, r1144, r1145, tail⟩

theorem template_scp_node2_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1146 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1146 rho)
    (r1147 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1147 rho)
    (r1148 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1148 rho)
    (r1149 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1149 rho)
    (r1150 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1150 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg25 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) next := by
  exact ⟨rho 1145, rho 1146, rho 1147, rho 1148, rho 1149, r1146, r1147, r1148, r1149, r1150, tail⟩

theorem template_scp_node2_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1151 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1151 rho)
    (r1152 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1152 rho)
    (r1153 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1153 rho)
    (r1154 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1154 rho)
    (r1155 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1155 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg26 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) next := by
  exact ⟨rho 1150, rho 1151, rho 1152, rho 1153, rho 1154, r1151, r1152, r1153, r1154, r1155, tail⟩

theorem template_scp_node2_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1156 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1156 rho)
    (r1157 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1157 rho)
    (r1158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1158 rho)
    (r1159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1159 rho)
    (r1160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1160 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg27 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) next := by
  exact ⟨rho 1155, rho 1156, rho 1157, rho 1158, rho 1159, r1156, r1157, r1158, r1159, r1160, tail⟩

theorem template_scp_node2_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1161 rho)
    (r1162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1162 rho)
    (r1163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1163 rho)
    (r1164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1164 rho)
    (r1165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1165 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg28 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) next := by
  exact ⟨rho 1160, rho 1161, rho 1162, rho 1163, rho 1164, r1161, r1162, r1163, r1164, r1165, tail⟩

theorem template_scp_node2_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1166 rho)
    (r1167 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1167 rho)
    (r1168 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1168 rho)
    (r1169 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1169 rho)
    (r1170 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1170 rho)
    (tail : next (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg29 (rho 1094) (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) next := by
  exact ⟨rho 1165, rho 1166, rho 1167, rho 1168, rho 1169, r1166, r1167, r1168, r1169, r1170, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

