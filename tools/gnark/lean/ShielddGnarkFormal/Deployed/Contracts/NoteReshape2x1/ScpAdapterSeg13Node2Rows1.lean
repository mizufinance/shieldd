import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node2_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1071 : Seg13.relationRow1071 rho)
    (r1072 : Seg13.relationRow1072 rho)
    (r1073 : Seg13.relationRow1073 rho)
    (r1074 : Seg13.relationRow1074 rho)
    (r1075 : Seg13.relationRow1075 rho)
    (tail : next (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) (rho 8275) (rho 8280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg10 (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) (rho 8275) next := by
  exact ⟨rho 8276, rho 8277, rho 8278, rho 8279, rho 8280, r1071, r1072, r1073, r1074, r1075, tail⟩

theorem seg13_scp_node2_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1076 : Seg13.relationRow1076 rho)
    (r1077 : Seg13.relationRow1077 rho)
    (r1078 : Seg13.relationRow1078 rho)
    (r1079 : Seg13.relationRow1079 rho)
    (r1080 : Seg13.relationRow1080 rho)
    (tail : next (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) (rho 8275) (rho 8280) (rho 8285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg11 (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) (rho 8275) (rho 8280) next := by
  exact ⟨rho 8281, rho 8282, rho 8283, rho 8284, rho 8285, r1076, r1077, r1078, r1079, r1080, tail⟩

theorem seg13_scp_node2_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1081 : Seg13.relationRow1081 rho)
    (r1082 : Seg13.relationRow1082 rho)
    (r1083 : Seg13.relationRow1083 rho)
    (r1084 : Seg13.relationRow1084 rho)
    (r1085 : Seg13.relationRow1085 rho)
    (tail : next (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) (rho 8275) (rho 8280) (rho 8285) (rho 8290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg12 (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) (rho 8275) (rho 8280) (rho 8285) next := by
  exact ⟨rho 8286, rho 8287, rho 8288, rho 8289, rho 8290, r1081, r1082, r1083, r1084, r1085, tail⟩

theorem seg13_scp_node2_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1086 : Seg13.relationRow1086 rho)
    (r1087 : Seg13.relationRow1087 rho)
    (r1088 : Seg13.relationRow1088 rho)
    (r1089 : Seg13.relationRow1089 rho)
    (r1090 : Seg13.relationRow1090 rho)
    (tail : next (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg13 (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) (rho 8275) (rho 8280) (rho 8285) (rho 8290) next := by
  exact ⟨rho 8291, rho 8292, rho 8293, rho 8294, rho 8295, r1086, r1087, r1088, r1089, r1090, tail⟩

theorem seg13_scp_node2_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1091 : Seg13.relationRow1091 rho)
    (r1092 : Seg13.relationRow1092 rho)
    (r1093 : Seg13.relationRow1093 rho)
    (r1094 : Seg13.relationRow1094 rho)
    (r1095 : Seg13.relationRow1095 rho)
    (tail : next (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) (rho 8300)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg14 (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) next := by
  exact ⟨rho 8296, rho 8297, rho 8298, rho 8299, rho 8300, r1091, r1092, r1093, r1094, r1095, tail⟩

theorem seg13_scp_node2_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1096 : Seg13.relationRow1096 rho)
    (r1097 : Seg13.relationRow1097 rho)
    (r1098 : Seg13.relationRow1098 rho)
    (r1099 : Seg13.relationRow1099 rho)
    (r1100 : Seg13.relationRow1100 rho)
    (tail : next (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) (rho 8300) (rho 8305)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg15 (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) (rho 8300) next := by
  exact ⟨rho 8301, rho 8302, rho 8303, rho 8304, rho 8305, r1096, r1097, r1098, r1099, r1100, tail⟩

theorem seg13_scp_node2_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1101 : Seg13.relationRow1101 rho)
    (r1102 : Seg13.relationRow1102 rho)
    (r1103 : Seg13.relationRow1103 rho)
    (r1104 : Seg13.relationRow1104 rho)
    (r1105 : Seg13.relationRow1105 rho)
    (tail : next (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg16 (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) (rho 8300) (rho 8305) next := by
  exact ⟨rho 8306, rho 8307, rho 8308, rho 8309, rho 8310, r1101, r1102, r1103, r1104, r1105, tail⟩

theorem seg13_scp_node2_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1106 : Seg13.relationRow1106 rho)
    (r1107 : Seg13.relationRow1107 rho)
    (r1108 : Seg13.relationRow1108 rho)
    (r1109 : Seg13.relationRow1109 rho)
    (r1110 : Seg13.relationRow1110 rho)
    (tail : next (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) (rho 8315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg17 (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) next := by
  exact ⟨rho 8311, rho 8312, rho 8313, rho 8314, rho 8315, r1106, r1107, r1108, r1109, r1110, tail⟩

theorem seg13_scp_node2_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1111 : Seg13.relationRow1111 rho)
    (r1112 : Seg13.relationRow1112 rho)
    (r1113 : Seg13.relationRow1113 rho)
    (r1114 : Seg13.relationRow1114 rho)
    (r1115 : Seg13.relationRow1115 rho)
    (tail : next (rho 8300) (rho 8305) (rho 8310) (rho 8315) (rho 8320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg18 (rho 8275) (rho 8280) (rho 8285) (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) (rho 8315) next := by
  exact ⟨rho 8316, rho 8317, rho 8318, rho 8319, rho 8320, r1111, r1112, r1113, r1114, r1115, tail⟩

theorem seg13_scp_node2_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1116 : Seg13.relationRow1116 rho)
    (r1117 : Seg13.relationRow1117 rho)
    (r1118 : Seg13.relationRow1118 rho)
    (r1119 : Seg13.relationRow1119 rho)
    (r1120 : Seg13.relationRow1120 rho)
    (tail : next (rho 8300) (rho 8305) (rho 8310) (rho 8315) (rho 8320) (rho 8325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg19 (rho 8300) (rho 8305) (rho 8310) (rho 8315) (rho 8320) next := by
  exact ⟨rho 8321, rho 8322, rho 8323, rho 8324, rho 8325, r1116, r1117, r1118, r1119, r1120, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

