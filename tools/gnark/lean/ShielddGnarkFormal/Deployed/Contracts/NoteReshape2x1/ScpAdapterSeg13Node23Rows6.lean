import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node23_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8965 : Seg13.relationRow8965 rho)
    (r8966 : Seg13.relationRow8966 rho)
    (r8967 : Seg13.relationRow8967 rho)
    (r8968 : Seg13.relationRow8968 rho)
    (r8969 : Seg13.relationRow8969 rho)
    (tail : next (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) (rho 16084)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg60 (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) next := by
  exact ⟨rho 16080, rho 16081, rho 16082, rho 16083, rho 16084, r8965, r8966, r8967, r8968, r8969, tail⟩

theorem seg13_scp_node23_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8970 : Seg13.relationRow8970 rho)
    (r8971 : Seg13.relationRow8971 rho)
    (r8972 : Seg13.relationRow8972 rho)
    (r8973 : Seg13.relationRow8973 rho)
    (r8974 : Seg13.relationRow8974 rho)
    (tail : next (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) (rho 16084) (rho 16089)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg61 (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) (rho 16084) next := by
  exact ⟨rho 16085, rho 16086, rho 16087, rho 16088, rho 16089, r8970, r8971, r8972, r8973, r8974, tail⟩

theorem seg13_scp_node23_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8975 : Seg13.relationRow8975 rho)
    (r8976 : Seg13.relationRow8976 rho)
    (r8977 : Seg13.relationRow8977 rho)
    (r8978 : Seg13.relationRow8978 rho)
    (r8979 : Seg13.relationRow8979 rho)
    (tail : next (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) (rho 16084) (rho 16089) (rho 16094)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg62 (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) (rho 16084) (rho 16089) next := by
  exact ⟨rho 16090, rho 16091, rho 16092, rho 16093, rho 16094, r8975, r8976, r8977, r8978, r8979, tail⟩

theorem seg13_scp_node23_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8980 : Seg13.relationRow8980 rho)
    (r8981 : Seg13.relationRow8981 rho)
    (r8982 : Seg13.relationRow8982 rho)
    (r8983 : Seg13.relationRow8983 rho)
    (r8984 : Seg13.relationRow8984 rho)
    (tail : next (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) (rho 16084) (rho 16089) (rho 16094) (rho 16099)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg63 (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) (rho 16084) (rho 16089) (rho 16094) next := by
  exact ⟨rho 16095, rho 16096, rho 16097, rho 16098, rho 16099, r8980, r8981, r8982, r8983, r8984, tail⟩

theorem seg13_scp_node23_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8985 : Seg13.relationRow8985 rho)
    (r8986 : Seg13.relationRow8986 rho)
    (r8987 : Seg13.relationRow8987 rho)
    (r8988 : Seg13.relationRow8988 rho)
    (r8989 : Seg13.relationRow8989 rho)
    (tail : next (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg64 (rho 16059) (rho 16064) (rho 16069) (rho 16074) (rho 16079) (rho 16084) (rho 16089) (rho 16094) (rho 16099) next := by
  exact ⟨rho 16100, rho 16101, rho 16102, rho 16103, rho 16104, r8985, r8986, r8987, r8988, r8989, tail⟩

theorem seg13_scp_node23_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8990 : Seg13.relationRow8990 rho)
    (r8991 : Seg13.relationRow8991 rho)
    (r8992 : Seg13.relationRow8992 rho)
    (r8993 : Seg13.relationRow8993 rho)
    (r8994 : Seg13.relationRow8994 rho)
    (tail : next (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) (rho 16109)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg65 (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) next := by
  exact ⟨rho 16105, rho 16106, rho 16107, rho 16108, rho 16109, r8990, r8991, r8992, r8993, r8994, tail⟩

theorem seg13_scp_node23_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8995 : Seg13.relationRow8995 rho)
    (r8996 : Seg13.relationRow8996 rho)
    (r8997 : Seg13.relationRow8997 rho)
    (r8998 : Seg13.relationRow8998 rho)
    (r8999 : Seg13.relationRow8999 rho)
    (tail : next (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) (rho 16109) (rho 16114)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg66 (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) (rho 16109) next := by
  exact ⟨rho 16110, rho 16111, rho 16112, rho 16113, rho 16114, r8995, r8996, r8997, r8998, r8999, tail⟩

theorem seg13_scp_node23_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r9000 : Seg13.relationRow9000 rho)
    (r9001 : Seg13.relationRow9001 rho)
    (r9002 : Seg13.relationRow9002 rho)
    (r9003 : Seg13.relationRow9003 rho)
    (r9004 : Seg13.relationRow9004 rho)
    (tail : next (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) (rho 16109) (rho 16114) (rho 16119)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg67 (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) (rho 16109) (rho 16114) next := by
  exact ⟨rho 16115, rho 16116, rho 16117, rho 16118, rho 16119, r9000, r9001, r9002, r9003, r9004, tail⟩

theorem seg13_scp_node23_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r9005 : Seg13.relationRow9005 rho)
    (r9006 : Seg13.relationRow9006 rho)
    (r9007 : Seg13.relationRow9007 rho)
    (r9008 : Seg13.relationRow9008 rho)
    (r9009 : Seg13.relationRow9009 rho)
    (tail : next (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) (rho 16109) (rho 16114) (rho 16119) (rho 16124)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg68 (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) (rho 16109) (rho 16114) (rho 16119) next := by
  exact ⟨rho 16120, rho 16121, rho 16122, rho 16123, rho 16124, r9005, r9006, r9007, r9008, r9009, tail⟩

theorem seg13_scp_node23_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r9010 : Seg13.relationRow9010 rho)
    (r9011 : Seg13.relationRow9011 rho)
    (r9012 : Seg13.relationRow9012 rho)
    (r9013 : Seg13.relationRow9013 rho)
    (r9014 : Seg13.relationRow9014 rho)
    (tail : next (rho 16109) (rho 16114) (rho 16119) (rho 16124) (rho 16129)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg69 (rho 16084) (rho 16089) (rho 16094) (rho 16099) (rho 16104) (rho 16109) (rho 16114) (rho 16119) (rho 16124) next := by
  exact ⟨rho 16125, rho 16126, rho 16127, rho 16128, rho 16129, r9010, r9011, r9012, r9013, r9014, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

