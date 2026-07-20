import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node2_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1021 : Seg28.relationRow1021 rho)
    (r1022 : Seg28.relationRow1022 rho)
    (r1023 : Seg28.relationRow1023 rho)
    (r1024 : Seg28.relationRow1024 rho)
    (r1025 : Seg28.relationRow1025 rho)
    (tail : next (rho 176) (rho 177) (rho 20396) (rho 20397) (rho 20398) (rho 20399) (rho 20400) (rho 20405)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg0 (rho 175) (rho 176) (rho 177) (rho 20395) (rho 20396) (rho 20397) (rho 20398) (rho 20399) (rho 20400) next := by
  exact ⟨rho 20401, rho 20402, rho 20403, rho 20404, rho 20405, r1021, r1022, r1023, r1024, r1025, tail⟩

theorem seg28_scp_node2_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1026 : Seg28.relationRow1026 rho)
    (r1027 : Seg28.relationRow1027 rho)
    (r1028 : Seg28.relationRow1028 rho)
    (r1029 : Seg28.relationRow1029 rho)
    (r1030 : Seg28.relationRow1030 rho)
    (tail : next (rho 176) (rho 177) (rho 20398) (rho 20399) (rho 20400) (rho 20405) (rho 20410)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg1 (rho 176) (rho 177) (rho 20396) (rho 20397) (rho 20398) (rho 20399) (rho 20400) (rho 20405) next := by
  exact ⟨rho 20406, rho 20407, rho 20408, rho 20409, rho 20410, r1026, r1027, r1028, r1029, r1030, tail⟩

theorem seg28_scp_node2_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1031 : Seg28.relationRow1031 rho)
    (r1032 : Seg28.relationRow1032 rho)
    (r1033 : Seg28.relationRow1033 rho)
    (r1034 : Seg28.relationRow1034 rho)
    (r1035 : Seg28.relationRow1035 rho)
    (tail : next (rho 177) (rho 20400) (rho 20405) (rho 20410) (rho 20415)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg2 (rho 176) (rho 177) (rho 20398) (rho 20399) (rho 20400) (rho 20405) (rho 20410) next := by
  exact ⟨rho 20411, rho 20412, rho 20413, rho 20414, rho 20415, r1031, r1032, r1033, r1034, r1035, tail⟩

theorem seg28_scp_node2_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1036 : Seg28.relationRow1036 rho)
    (r1037 : Seg28.relationRow1037 rho)
    (r1038 : Seg28.relationRow1038 rho)
    (r1039 : Seg28.relationRow1039 rho)
    (r1040 : Seg28.relationRow1040 rho)
    (tail : next (rho 20405) (rho 20410) (rho 20415) (rho 20420)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg3 (rho 177) (rho 20400) (rho 20405) (rho 20410) (rho 20415) next := by
  exact ⟨rho 20416, rho 20417, rho 20418, rho 20419, rho 20420, r1036, r1037, r1038, r1039, r1040, tail⟩

theorem seg28_scp_node2_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1041 : Seg28.relationRow1041 rho)
    (r1042 : Seg28.relationRow1042 rho)
    (r1043 : Seg28.relationRow1043 rho)
    (r1044 : Seg28.relationRow1044 rho)
    (r1045 : Seg28.relationRow1045 rho)
    (tail : next (rho 20405) (rho 20410) (rho 20415) (rho 20420) (rho 20425)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg4 (rho 20405) (rho 20410) (rho 20415) (rho 20420) next := by
  exact ⟨rho 20421, rho 20422, rho 20423, rho 20424, rho 20425, r1041, r1042, r1043, r1044, r1045, tail⟩

theorem seg28_scp_node2_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1046 : Seg28.relationRow1046 rho)
    (r1047 : Seg28.relationRow1047 rho)
    (r1048 : Seg28.relationRow1048 rho)
    (r1049 : Seg28.relationRow1049 rho)
    (r1050 : Seg28.relationRow1050 rho)
    (tail : next (rho 20405) (rho 20410) (rho 20415) (rho 20420) (rho 20425) (rho 20430)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg5 (rho 20405) (rho 20410) (rho 20415) (rho 20420) (rho 20425) next := by
  exact ⟨rho 20426, rho 20427, rho 20428, rho 20429, rho 20430, r1046, r1047, r1048, r1049, r1050, tail⟩

theorem seg28_scp_node2_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1051 : Seg28.relationRow1051 rho)
    (r1052 : Seg28.relationRow1052 rho)
    (r1053 : Seg28.relationRow1053 rho)
    (r1054 : Seg28.relationRow1054 rho)
    (r1055 : Seg28.relationRow1055 rho)
    (tail : next (rho 20405) (rho 20410) (rho 20415) (rho 20420) (rho 20425) (rho 20430) (rho 20435)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg6 (rho 20405) (rho 20410) (rho 20415) (rho 20420) (rho 20425) (rho 20430) next := by
  exact ⟨rho 20431, rho 20432, rho 20433, rho 20434, rho 20435, r1051, r1052, r1053, r1054, r1055, tail⟩

theorem seg28_scp_node2_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1056 : Seg28.relationRow1056 rho)
    (r1057 : Seg28.relationRow1057 rho)
    (r1058 : Seg28.relationRow1058 rho)
    (r1059 : Seg28.relationRow1059 rho)
    (r1060 : Seg28.relationRow1060 rho)
    (tail : next (rho 20405) (rho 20410) (rho 20415) (rho 20420) (rho 20425) (rho 20430) (rho 20435) (rho 20440)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg7 (rho 20405) (rho 20410) (rho 20415) (rho 20420) (rho 20425) (rho 20430) (rho 20435) next := by
  exact ⟨rho 20436, rho 20437, rho 20438, rho 20439, rho 20440, r1056, r1057, r1058, r1059, r1060, tail⟩

theorem seg28_scp_node2_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1061 : Seg28.relationRow1061 rho)
    (r1062 : Seg28.relationRow1062 rho)
    (r1063 : Seg28.relationRow1063 rho)
    (r1064 : Seg28.relationRow1064 rho)
    (r1065 : Seg28.relationRow1065 rho)
    (tail : next (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg8 (rho 20405) (rho 20410) (rho 20415) (rho 20420) (rho 20425) (rho 20430) (rho 20435) (rho 20440) next := by
  exact ⟨rho 20441, rho 20442, rho 20443, rho 20444, rho 20445, r1061, r1062, r1063, r1064, r1065, tail⟩

theorem seg28_scp_node2_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1066 : Seg28.relationRow1066 rho)
    (r1067 : Seg28.relationRow1067 rho)
    (r1068 : Seg28.relationRow1068 rho)
    (r1069 : Seg28.relationRow1069 rho)
    (r1070 : Seg28.relationRow1070 rho)
    (tail : next (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) (rho 20450)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg9 (rho 20425) (rho 20430) (rho 20435) (rho 20440) (rho 20445) next := by
  exact ⟨rho 20446, rho 20447, rho 20448, rho 20449, rho 20450, r1066, r1067, r1068, r1069, r1070, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

