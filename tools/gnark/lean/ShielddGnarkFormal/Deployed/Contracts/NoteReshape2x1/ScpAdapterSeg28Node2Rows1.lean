import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node2_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1071 : Seg28.relationRow1071 rho)
    (r1072 : Seg28.relationRow1072 rho)
    (r1073 : Seg28.relationRow1073 rho)
    (r1074 : Seg28.relationRow1074 rho)
    (r1075 : Seg28.relationRow1075 rho)
    (tail : next (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) (rho 20450) (rho 20455)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg10 (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) (rho 20450) next := by
  exact ⟨rho 20451, rho 20452, rho 20453, rho 20454, rho 20455, r1071, r1072, r1073, r1074, r1075, tail⟩

theorem seg28_scp_node2_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1076 : Seg28.relationRow1076 rho)
    (r1077 : Seg28.relationRow1077 rho)
    (r1078 : Seg28.relationRow1078 rho)
    (r1079 : Seg28.relationRow1079 rho)
    (r1080 : Seg28.relationRow1080 rho)
    (tail : next (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) (rho 20450) (rho 20455) (rho 20460)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg11 (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) (rho 20450) (rho 20455) next := by
  exact ⟨rho 20456, rho 20457, rho 20458, rho 20459, rho 20460, r1076, r1077, r1078, r1079, r1080, tail⟩

theorem seg28_scp_node2_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1081 : Seg28.relationRow1081 rho)
    (r1082 : Seg28.relationRow1082 rho)
    (r1083 : Seg28.relationRow1083 rho)
    (r1084 : Seg28.relationRow1084 rho)
    (r1085 : Seg28.relationRow1085 rho)
    (tail : next (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) (rho 20450) (rho 20455) (rho 20460) (rho 20465)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg12 (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) (rho 20450) (rho 20455) (rho 20460) next := by
  exact ⟨rho 20461, rho 20462, rho 20463, rho 20464, rho 20465, r1081, r1082, r1083, r1084, r1085, tail⟩

theorem seg28_scp_node2_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1086 : Seg28.relationRow1086 rho)
    (r1087 : Seg28.relationRow1087 rho)
    (r1088 : Seg28.relationRow1088 rho)
    (r1089 : Seg28.relationRow1089 rho)
    (r1090 : Seg28.relationRow1090 rho)
    (tail : next (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg13 (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) (rho 20450) (rho 20455) (rho 20460) (rho 20465) next := by
  exact ⟨rho 20466, rho 20467, rho 20468, rho 20469, rho 20470, r1086, r1087, r1088, r1089, r1090, tail⟩

theorem seg28_scp_node2_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1091 : Seg28.relationRow1091 rho)
    (r1092 : Seg28.relationRow1092 rho)
    (r1093 : Seg28.relationRow1093 rho)
    (r1094 : Seg28.relationRow1094 rho)
    (r1095 : Seg28.relationRow1095 rho)
    (tail : next (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) (rho 20475)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg14 (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) next := by
  exact ⟨rho 20471, rho 20472, rho 20473, rho 20474, rho 20475, r1091, r1092, r1093, r1094, r1095, tail⟩

theorem seg28_scp_node2_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1096 : Seg28.relationRow1096 rho)
    (r1097 : Seg28.relationRow1097 rho)
    (r1098 : Seg28.relationRow1098 rho)
    (r1099 : Seg28.relationRow1099 rho)
    (r1100 : Seg28.relationRow1100 rho)
    (tail : next (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) (rho 20475) (rho 20480)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg15 (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) (rho 20475) next := by
  exact ⟨rho 20476, rho 20477, rho 20478, rho 20479, rho 20480, r1096, r1097, r1098, r1099, r1100, tail⟩

theorem seg28_scp_node2_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1101 : Seg28.relationRow1101 rho)
    (r1102 : Seg28.relationRow1102 rho)
    (r1103 : Seg28.relationRow1103 rho)
    (r1104 : Seg28.relationRow1104 rho)
    (r1105 : Seg28.relationRow1105 rho)
    (tail : next (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) (rho 20475) (rho 20480) (rho 20485)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg16 (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) (rho 20475) (rho 20480) next := by
  exact ⟨rho 20481, rho 20482, rho 20483, rho 20484, rho 20485, r1101, r1102, r1103, r1104, r1105, tail⟩

theorem seg28_scp_node2_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1106 : Seg28.relationRow1106 rho)
    (r1107 : Seg28.relationRow1107 rho)
    (r1108 : Seg28.relationRow1108 rho)
    (r1109 : Seg28.relationRow1109 rho)
    (r1110 : Seg28.relationRow1110 rho)
    (tail : next (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) (rho 20475) (rho 20480) (rho 20485) (rho 20490)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg17 (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) (rho 20475) (rho 20480) (rho 20485) next := by
  exact ⟨rho 20486, rho 20487, rho 20488, rho 20489, rho 20490, r1106, r1107, r1108, r1109, r1110, tail⟩

theorem seg28_scp_node2_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1111 : Seg28.relationRow1111 rho)
    (r1112 : Seg28.relationRow1112 rho)
    (r1113 : Seg28.relationRow1113 rho)
    (r1114 : Seg28.relationRow1114 rho)
    (r1115 : Seg28.relationRow1115 rho)
    (tail : next (rho 20475) (rho 20480) (rho 20485) (rho 20490) (rho 20495)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg18 (rho 20450) (rho 20455) (rho 20460) (rho 20465) (rho 20470) (rho 20475) (rho 20480) (rho 20485) (rho 20490) next := by
  exact ⟨rho 20491, rho 20492, rho 20493, rho 20494, rho 20495, r1111, r1112, r1113, r1114, r1115, tail⟩

theorem seg28_scp_node2_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1116 : Seg28.relationRow1116 rho)
    (r1117 : Seg28.relationRow1117 rho)
    (r1118 : Seg28.relationRow1118 rho)
    (r1119 : Seg28.relationRow1119 rho)
    (r1120 : Seg28.relationRow1120 rho)
    (tail : next (rho 20475) (rho 20480) (rho 20485) (rho 20490) (rho 20495) (rho 20500)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg19 (rho 20475) (rho 20480) (rho 20485) (rho 20490) (rho 20495) next := by
  exact ⟨rho 20496, rho 20497, rho 20498, rho 20499, rho 20500, r1116, r1117, r1118, r1119, r1120, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

