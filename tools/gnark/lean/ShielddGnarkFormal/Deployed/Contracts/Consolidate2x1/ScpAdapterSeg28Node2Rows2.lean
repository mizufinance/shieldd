import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node2_seg20 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1121 : Seg28.relationRow1121 rho)
    (r1122 : Seg28.relationRow1122 rho)
    (r1123 : Seg28.relationRow1123 rho)
    (r1124 : Seg28.relationRow1124 rho)
    (r1125 : Seg28.relationRow1125 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg20 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) next := by
  exact ⟨rho 20507, rho 20508, rho 20509, rho 20510, rho 20511, r1121, r1122, r1123, r1124, r1125, tail⟩

theorem seg28_scp_node2_seg21 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1126 : Seg28.relationRow1126 rho)
    (r1127 : Seg28.relationRow1127 rho)
    (r1128 : Seg28.relationRow1128 rho)
    (r1129 : Seg28.relationRow1129 rho)
    (r1130 : Seg28.relationRow1130 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg21 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) next := by
  exact ⟨rho 20512, rho 20513, rho 20514, rho 20515, rho 20516, r1126, r1127, r1128, r1129, r1130, tail⟩

theorem seg28_scp_node2_seg22 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1131 : Seg28.relationRow1131 rho)
    (r1132 : Seg28.relationRow1132 rho)
    (r1133 : Seg28.relationRow1133 rho)
    (r1134 : Seg28.relationRow1134 rho)
    (r1135 : Seg28.relationRow1135 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg22 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) next := by
  exact ⟨rho 20517, rho 20518, rho 20519, rho 20520, rho 20521, r1131, r1132, r1133, r1134, r1135, tail⟩

theorem seg28_scp_node2_seg23 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1136 : Seg28.relationRow1136 rho)
    (r1137 : Seg28.relationRow1137 rho)
    (r1138 : Seg28.relationRow1138 rho)
    (r1139 : Seg28.relationRow1139 rho)
    (r1140 : Seg28.relationRow1140 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg23 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) next := by
  exact ⟨rho 20522, rho 20523, rho 20524, rho 20525, rho 20526, r1136, r1137, r1138, r1139, r1140, tail⟩

theorem seg28_scp_node2_seg24 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1141 : Seg28.relationRow1141 rho)
    (r1142 : Seg28.relationRow1142 rho)
    (r1143 : Seg28.relationRow1143 rho)
    (r1144 : Seg28.relationRow1144 rho)
    (r1145 : Seg28.relationRow1145 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg24 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) next := by
  exact ⟨rho 20527, rho 20528, rho 20529, rho 20530, rho 20531, r1141, r1142, r1143, r1144, r1145, tail⟩

theorem seg28_scp_node2_seg25 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1146 : Seg28.relationRow1146 rho)
    (r1147 : Seg28.relationRow1147 rho)
    (r1148 : Seg28.relationRow1148 rho)
    (r1149 : Seg28.relationRow1149 rho)
    (r1150 : Seg28.relationRow1150 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg25 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) next := by
  exact ⟨rho 20532, rho 20533, rho 20534, rho 20535, rho 20536, r1146, r1147, r1148, r1149, r1150, tail⟩

theorem seg28_scp_node2_seg26 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1151 : Seg28.relationRow1151 rho)
    (r1152 : Seg28.relationRow1152 rho)
    (r1153 : Seg28.relationRow1153 rho)
    (r1154 : Seg28.relationRow1154 rho)
    (r1155 : Seg28.relationRow1155 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg26 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) next := by
  exact ⟨rho 20537, rho 20538, rho 20539, rho 20540, rho 20541, r1151, r1152, r1153, r1154, r1155, tail⟩

theorem seg28_scp_node2_seg27 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1156 : Seg28.relationRow1156 rho)
    (r1157 : Seg28.relationRow1157 rho)
    (r1158 : Seg28.relationRow1158 rho)
    (r1159 : Seg28.relationRow1159 rho)
    (r1160 : Seg28.relationRow1160 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg27 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) next := by
  exact ⟨rho 20542, rho 20543, rho 20544, rho 20545, rho 20546, r1156, r1157, r1158, r1159, r1160, tail⟩

theorem seg28_scp_node2_seg28 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1161 : Seg28.relationRow1161 rho)
    (r1162 : Seg28.relationRow1162 rho)
    (r1163 : Seg28.relationRow1163 rho)
    (r1164 : Seg28.relationRow1164 rho)
    (r1165 : Seg28.relationRow1165 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg28 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) next := by
  exact ⟨rho 20547, rho 20548, rho 20549, rho 20550, rho 20551, r1161, r1162, r1163, r1164, r1165, tail⟩

theorem seg28_scp_node2_seg29 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1166 : Seg28.relationRow1166 rho)
    (r1167 : Seg28.relationRow1167 rho)
    (r1168 : Seg28.relationRow1168 rho)
    (r1169 : Seg28.relationRow1169 rho)
    (r1170 : Seg28.relationRow1170 rho)
    (tail : next (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) (rho 20556)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg29 (rho 20481) (rho 20486) (rho 20491) (rho 20496) (rho 20501) (rho 20506) (rho 20511) (rho 20516) (rho 20521) (rho 20526) (rho 20531) (rho 20536) (rho 20541) (rho 20546) (rho 20551) next := by
  exact ⟨rho 20552, rho 20553, rho 20554, rho 20555, rho 20556, r1166, r1167, r1168, r1169, r1170, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

