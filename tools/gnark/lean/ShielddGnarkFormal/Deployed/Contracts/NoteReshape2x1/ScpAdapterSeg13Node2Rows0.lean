import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node2_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1021 : Seg13.relationRow1021 rho)
    (r1022 : Seg13.relationRow1022 rho)
    (r1023 : Seg13.relationRow1023 rho)
    (r1024 : Seg13.relationRow1024 rho)
    (r1025 : Seg13.relationRow1025 rho)
    (tail : next (rho 89) (rho 90) (rho 8221) (rho 8222) (rho 8223) (rho 8224) (rho 8225) (rho 8230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg0 (rho 88) (rho 89) (rho 90) (rho 8220) (rho 8221) (rho 8222) (rho 8223) (rho 8224) (rho 8225) next := by
  exact ⟨rho 8226, rho 8227, rho 8228, rho 8229, rho 8230, r1021, r1022, r1023, r1024, r1025, tail⟩

theorem seg13_scp_node2_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1026 : Seg13.relationRow1026 rho)
    (r1027 : Seg13.relationRow1027 rho)
    (r1028 : Seg13.relationRow1028 rho)
    (r1029 : Seg13.relationRow1029 rho)
    (r1030 : Seg13.relationRow1030 rho)
    (tail : next (rho 89) (rho 90) (rho 8223) (rho 8224) (rho 8225) (rho 8230) (rho 8235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg1 (rho 89) (rho 90) (rho 8221) (rho 8222) (rho 8223) (rho 8224) (rho 8225) (rho 8230) next := by
  exact ⟨rho 8231, rho 8232, rho 8233, rho 8234, rho 8235, r1026, r1027, r1028, r1029, r1030, tail⟩

theorem seg13_scp_node2_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1031 : Seg13.relationRow1031 rho)
    (r1032 : Seg13.relationRow1032 rho)
    (r1033 : Seg13.relationRow1033 rho)
    (r1034 : Seg13.relationRow1034 rho)
    (r1035 : Seg13.relationRow1035 rho)
    (tail : next (rho 90) (rho 8225) (rho 8230) (rho 8235) (rho 8240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg2 (rho 89) (rho 90) (rho 8223) (rho 8224) (rho 8225) (rho 8230) (rho 8235) next := by
  exact ⟨rho 8236, rho 8237, rho 8238, rho 8239, rho 8240, r1031, r1032, r1033, r1034, r1035, tail⟩

theorem seg13_scp_node2_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1036 : Seg13.relationRow1036 rho)
    (r1037 : Seg13.relationRow1037 rho)
    (r1038 : Seg13.relationRow1038 rho)
    (r1039 : Seg13.relationRow1039 rho)
    (r1040 : Seg13.relationRow1040 rho)
    (tail : next (rho 8230) (rho 8235) (rho 8240) (rho 8245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg3 (rho 90) (rho 8225) (rho 8230) (rho 8235) (rho 8240) next := by
  exact ⟨rho 8241, rho 8242, rho 8243, rho 8244, rho 8245, r1036, r1037, r1038, r1039, r1040, tail⟩

theorem seg13_scp_node2_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1041 : Seg13.relationRow1041 rho)
    (r1042 : Seg13.relationRow1042 rho)
    (r1043 : Seg13.relationRow1043 rho)
    (r1044 : Seg13.relationRow1044 rho)
    (r1045 : Seg13.relationRow1045 rho)
    (tail : next (rho 8230) (rho 8235) (rho 8240) (rho 8245) (rho 8250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg4 (rho 8230) (rho 8235) (rho 8240) (rho 8245) next := by
  exact ⟨rho 8246, rho 8247, rho 8248, rho 8249, rho 8250, r1041, r1042, r1043, r1044, r1045, tail⟩

theorem seg13_scp_node2_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1046 : Seg13.relationRow1046 rho)
    (r1047 : Seg13.relationRow1047 rho)
    (r1048 : Seg13.relationRow1048 rho)
    (r1049 : Seg13.relationRow1049 rho)
    (r1050 : Seg13.relationRow1050 rho)
    (tail : next (rho 8230) (rho 8235) (rho 8240) (rho 8245) (rho 8250) (rho 8255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg5 (rho 8230) (rho 8235) (rho 8240) (rho 8245) (rho 8250) next := by
  exact ⟨rho 8251, rho 8252, rho 8253, rho 8254, rho 8255, r1046, r1047, r1048, r1049, r1050, tail⟩

theorem seg13_scp_node2_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1051 : Seg13.relationRow1051 rho)
    (r1052 : Seg13.relationRow1052 rho)
    (r1053 : Seg13.relationRow1053 rho)
    (r1054 : Seg13.relationRow1054 rho)
    (r1055 : Seg13.relationRow1055 rho)
    (tail : next (rho 8230) (rho 8235) (rho 8240) (rho 8245) (rho 8250) (rho 8255) (rho 8260)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg6 (rho 8230) (rho 8235) (rho 8240) (rho 8245) (rho 8250) (rho 8255) next := by
  exact ⟨rho 8256, rho 8257, rho 8258, rho 8259, rho 8260, r1051, r1052, r1053, r1054, r1055, tail⟩

theorem seg13_scp_node2_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1056 : Seg13.relationRow1056 rho)
    (r1057 : Seg13.relationRow1057 rho)
    (r1058 : Seg13.relationRow1058 rho)
    (r1059 : Seg13.relationRow1059 rho)
    (r1060 : Seg13.relationRow1060 rho)
    (tail : next (rho 8230) (rho 8235) (rho 8240) (rho 8245) (rho 8250) (rho 8255) (rho 8260) (rho 8265)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg7 (rho 8230) (rho 8235) (rho 8240) (rho 8245) (rho 8250) (rho 8255) (rho 8260) next := by
  exact ⟨rho 8261, rho 8262, rho 8263, rho 8264, rho 8265, r1056, r1057, r1058, r1059, r1060, tail⟩

theorem seg13_scp_node2_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1061 : Seg13.relationRow1061 rho)
    (r1062 : Seg13.relationRow1062 rho)
    (r1063 : Seg13.relationRow1063 rho)
    (r1064 : Seg13.relationRow1064 rho)
    (r1065 : Seg13.relationRow1065 rho)
    (tail : next (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg8 (rho 8230) (rho 8235) (rho 8240) (rho 8245) (rho 8250) (rho 8255) (rho 8260) (rho 8265) next := by
  exact ⟨rho 8266, rho 8267, rho 8268, rho 8269, rho 8270, r1061, r1062, r1063, r1064, r1065, tail⟩

theorem seg13_scp_node2_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1066 : Seg13.relationRow1066 rho)
    (r1067 : Seg13.relationRow1067 rho)
    (r1068 : Seg13.relationRow1068 rho)
    (r1069 : Seg13.relationRow1069 rho)
    (r1070 : Seg13.relationRow1070 rho)
    (tail : next (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) (rho 8275)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg9 (rho 8250) (rho 8255) (rho 8260) (rho 8265) (rho 8270) next := by
  exact ⟨rho 8271, rho 8272, rho 8273, rho 8274, rho 8275, r1066, r1067, r1068, r1069, r1070, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

