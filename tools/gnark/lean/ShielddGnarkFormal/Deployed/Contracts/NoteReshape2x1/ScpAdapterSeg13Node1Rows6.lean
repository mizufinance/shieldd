import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node1_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r957 : Seg13.relationRow957 rho)
    (r958 : Seg13.relationRow958 rho)
    (r959 : Seg13.relationRow959 rho)
    (r960 : Seg13.relationRow960 rho)
    (r961 : Seg13.relationRow961 rho)
    (tail : next (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) (rho 8164)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg60 (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) next := by
  exact ⟨rho 8160, rho 8161, rho 8162, rho 8163, rho 8164, r957, r958, r959, r960, r961, tail⟩

theorem seg13_scp_node1_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r962 : Seg13.relationRow962 rho)
    (r963 : Seg13.relationRow963 rho)
    (r964 : Seg13.relationRow964 rho)
    (r965 : Seg13.relationRow965 rho)
    (r966 : Seg13.relationRow966 rho)
    (tail : next (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) (rho 8164) (rho 8169)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg61 (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) (rho 8164) next := by
  exact ⟨rho 8165, rho 8166, rho 8167, rho 8168, rho 8169, r962, r963, r964, r965, r966, tail⟩

theorem seg13_scp_node1_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r967 : Seg13.relationRow967 rho)
    (r968 : Seg13.relationRow968 rho)
    (r969 : Seg13.relationRow969 rho)
    (r970 : Seg13.relationRow970 rho)
    (r971 : Seg13.relationRow971 rho)
    (tail : next (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) (rho 8164) (rho 8169) (rho 8174)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg62 (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) (rho 8164) (rho 8169) next := by
  exact ⟨rho 8170, rho 8171, rho 8172, rho 8173, rho 8174, r967, r968, r969, r970, r971, tail⟩

theorem seg13_scp_node1_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r972 : Seg13.relationRow972 rho)
    (r973 : Seg13.relationRow973 rho)
    (r974 : Seg13.relationRow974 rho)
    (r975 : Seg13.relationRow975 rho)
    (r976 : Seg13.relationRow976 rho)
    (tail : next (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) (rho 8164) (rho 8169) (rho 8174) (rho 8179)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg63 (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) (rho 8164) (rho 8169) (rho 8174) next := by
  exact ⟨rho 8175, rho 8176, rho 8177, rho 8178, rho 8179, r972, r973, r974, r975, r976, tail⟩

theorem seg13_scp_node1_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r977 : Seg13.relationRow977 rho)
    (r978 : Seg13.relationRow978 rho)
    (r979 : Seg13.relationRow979 rho)
    (r980 : Seg13.relationRow980 rho)
    (r981 : Seg13.relationRow981 rho)
    (tail : next (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg64 (rho 8139) (rho 8144) (rho 8149) (rho 8154) (rho 8159) (rho 8164) (rho 8169) (rho 8174) (rho 8179) next := by
  exact ⟨rho 8180, rho 8181, rho 8182, rho 8183, rho 8184, r977, r978, r979, r980, r981, tail⟩

theorem seg13_scp_node1_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r982 : Seg13.relationRow982 rho)
    (r983 : Seg13.relationRow983 rho)
    (r984 : Seg13.relationRow984 rho)
    (r985 : Seg13.relationRow985 rho)
    (r986 : Seg13.relationRow986 rho)
    (tail : next (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) (rho 8189)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg65 (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) next := by
  exact ⟨rho 8185, rho 8186, rho 8187, rho 8188, rho 8189, r982, r983, r984, r985, r986, tail⟩

theorem seg13_scp_node1_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r987 : Seg13.relationRow987 rho)
    (r988 : Seg13.relationRow988 rho)
    (r989 : Seg13.relationRow989 rho)
    (r990 : Seg13.relationRow990 rho)
    (r991 : Seg13.relationRow991 rho)
    (tail : next (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) (rho 8189) (rho 8194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg66 (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) (rho 8189) next := by
  exact ⟨rho 8190, rho 8191, rho 8192, rho 8193, rho 8194, r987, r988, r989, r990, r991, tail⟩

theorem seg13_scp_node1_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r992 : Seg13.relationRow992 rho)
    (r993 : Seg13.relationRow993 rho)
    (r994 : Seg13.relationRow994 rho)
    (r995 : Seg13.relationRow995 rho)
    (r996 : Seg13.relationRow996 rho)
    (tail : next (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) (rho 8189) (rho 8194) (rho 8199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg67 (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) (rho 8189) (rho 8194) next := by
  exact ⟨rho 8195, rho 8196, rho 8197, rho 8198, rho 8199, r992, r993, r994, r995, r996, tail⟩

theorem seg13_scp_node1_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r997 : Seg13.relationRow997 rho)
    (r998 : Seg13.relationRow998 rho)
    (r999 : Seg13.relationRow999 rho)
    (r1000 : Seg13.relationRow1000 rho)
    (r1001 : Seg13.relationRow1001 rho)
    (tail : next (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) (rho 8189) (rho 8194) (rho 8199) (rho 8204)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg68 (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) (rho 8189) (rho 8194) (rho 8199) next := by
  exact ⟨rho 8200, rho 8201, rho 8202, rho 8203, rho 8204, r997, r998, r999, r1000, r1001, tail⟩

theorem seg13_scp_node1_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1002 : Seg13.relationRow1002 rho)
    (r1003 : Seg13.relationRow1003 rho)
    (r1004 : Seg13.relationRow1004 rho)
    (r1005 : Seg13.relationRow1005 rho)
    (r1006 : Seg13.relationRow1006 rho)
    (tail : next (rho 8189) (rho 8194) (rho 8199) (rho 8204) (rho 8209)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg69 (rho 8164) (rho 8169) (rho 8174) (rho 8179) (rho 8184) (rho 8189) (rho 8194) (rho 8199) (rho 8204) next := by
  exact ⟨rho 8205, rho 8206, rho 8207, rho 8208, rho 8209, r1002, r1003, r1004, r1005, r1006, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

