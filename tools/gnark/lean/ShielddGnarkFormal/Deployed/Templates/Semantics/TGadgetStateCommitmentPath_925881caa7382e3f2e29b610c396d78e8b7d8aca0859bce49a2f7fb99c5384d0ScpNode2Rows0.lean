import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node2_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1021 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1021 rho)
    (r1022 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1022 rho)
    (r1023 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1023 rho)
    (r1024 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1024 rho)
    (r1025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1025 rho)
    (tail : next (rho 1019) (rho 1022) (rho 1020) (rho 1021) (rho 1023) (rho 1024) (rho 1025) (rho 1030)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg0 (rho 1017) (rho 1019) (rho 1022) (rho 1018) (rho 1020) (rho 1021) (rho 1023) (rho 1024) (rho 1025) next := by
  exact ⟨rho 1026, rho 1027, rho 1028, rho 1029, rho 1030, r1021, r1022, r1023, r1024, r1025, tail⟩

theorem template_scp_node2_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1026 rho)
    (r1027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1027 rho)
    (r1028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1028 rho)
    (r1029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1029 rho)
    (r1030 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1030 rho)
    (tail : next (rho 1019) (rho 1022) (rho 1023) (rho 1024) (rho 1025) (rho 1030) (rho 1035)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg1 (rho 1019) (rho 1022) (rho 1020) (rho 1021) (rho 1023) (rho 1024) (rho 1025) (rho 1030) next := by
  exact ⟨rho 1031, rho 1032, rho 1033, rho 1034, rho 1035, r1026, r1027, r1028, r1029, r1030, tail⟩

theorem template_scp_node2_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1031 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1031 rho)
    (r1032 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1032 rho)
    (r1033 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1033 rho)
    (r1034 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1034 rho)
    (r1035 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1035 rho)
    (tail : next (rho 1022) (rho 1025) (rho 1030) (rho 1035) (rho 1040)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg2 (rho 1019) (rho 1022) (rho 1023) (rho 1024) (rho 1025) (rho 1030) (rho 1035) next := by
  exact ⟨rho 1036, rho 1037, rho 1038, rho 1039, rho 1040, r1031, r1032, r1033, r1034, r1035, tail⟩

theorem template_scp_node2_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r1036 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1036 rho)
    (r1037 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1037 rho)
    (r1038 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1038 rho)
    (r1039 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1039 rho)
    (r1040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1040 rho)
    (tail : next (rho 1030) (rho 1035) (rho 1040) (rho 1045)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg3 (rho 1022) (rho 1025) (rho 1030) (rho 1035) (rho 1040) next := by
  exact ⟨rho 1041, rho 1042, rho 1043, rho 1044, rho 1045, r1036, r1037, r1038, r1039, r1040, tail⟩

theorem template_scp_node2_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1041 rho)
    (r1042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1042 rho)
    (r1043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1043 rho)
    (r1044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1044 rho)
    (r1045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1045 rho)
    (tail : next (rho 1030) (rho 1035) (rho 1040) (rho 1045) (rho 1050)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg4 (rho 1030) (rho 1035) (rho 1040) (rho 1045) next := by
  exact ⟨rho 1046, rho 1047, rho 1048, rho 1049, rho 1050, r1041, r1042, r1043, r1044, r1045, tail⟩

theorem template_scp_node2_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1046 rho)
    (r1047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1047 rho)
    (r1048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1048 rho)
    (r1049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1049 rho)
    (r1050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1050 rho)
    (tail : next (rho 1030) (rho 1035) (rho 1040) (rho 1045) (rho 1050) (rho 1055)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg5 (rho 1030) (rho 1035) (rho 1040) (rho 1045) (rho 1050) next := by
  exact ⟨rho 1051, rho 1052, rho 1053, rho 1054, rho 1055, r1046, r1047, r1048, r1049, r1050, tail⟩

theorem template_scp_node2_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1051 rho)
    (r1052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1052 rho)
    (r1053 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1053 rho)
    (r1054 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1054 rho)
    (r1055 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1055 rho)
    (tail : next (rho 1030) (rho 1035) (rho 1040) (rho 1045) (rho 1050) (rho 1055) (rho 1060)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg6 (rho 1030) (rho 1035) (rho 1040) (rho 1045) (rho 1050) (rho 1055) next := by
  exact ⟨rho 1056, rho 1057, rho 1058, rho 1059, rho 1060, r1051, r1052, r1053, r1054, r1055, tail⟩

theorem template_scp_node2_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1056 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1056 rho)
    (r1057 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1057 rho)
    (r1058 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1058 rho)
    (r1059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1059 rho)
    (r1060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1060 rho)
    (tail : next (rho 1030) (rho 1035) (rho 1040) (rho 1045) (rho 1050) (rho 1055) (rho 1060) (rho 1065)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg7 (rho 1030) (rho 1035) (rho 1040) (rho 1045) (rho 1050) (rho 1055) (rho 1060) next := by
  exact ⟨rho 1061, rho 1062, rho 1063, rho 1064, rho 1065, r1056, r1057, r1058, r1059, r1060, tail⟩

theorem template_scp_node2_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1061 rho)
    (r1062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1062 rho)
    (r1063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1063 rho)
    (r1064 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1064 rho)
    (r1065 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1065 rho)
    (tail : next (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg8 (rho 1030) (rho 1035) (rho 1040) (rho 1045) (rho 1050) (rho 1055) (rho 1060) (rho 1065) next := by
  exact ⟨rho 1066, rho 1067, rho 1068, rho 1069, rho 1070, r1061, r1062, r1063, r1064, r1065, tail⟩

theorem template_scp_node2_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1066 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1066 rho)
    (r1067 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1067 rho)
    (r1068 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1068 rho)
    (r1069 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1069 rho)
    (r1070 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1070 rho)
    (tail : next (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) (rho 1075)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg9 (rho 1050) (rho 1055) (rho 1060) (rho 1065) (rho 1070) next := by
  exact ⟨rho 1071, rho 1072, rho 1073, rho 1074, rho 1075, r1066, r1067, r1068, r1069, r1070, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
