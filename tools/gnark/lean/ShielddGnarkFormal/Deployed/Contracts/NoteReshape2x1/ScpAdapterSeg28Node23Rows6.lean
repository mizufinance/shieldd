import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node23_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8965 : Seg28.relationRow8965 rho)
    (r8966 : Seg28.relationRow8966 rho)
    (r8967 : Seg28.relationRow8967 rho)
    (r8968 : Seg28.relationRow8968 rho)
    (r8969 : Seg28.relationRow8969 rho)
    (tail : next (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) (rho 28271)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg60 (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) next := by
  exact ⟨rho 28267, rho 28268, rho 28269, rho 28270, rho 28271, r8965, r8966, r8967, r8968, r8969, tail⟩

theorem seg28_scp_node23_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8970 : Seg28.relationRow8970 rho)
    (r8971 : Seg28.relationRow8971 rho)
    (r8972 : Seg28.relationRow8972 rho)
    (r8973 : Seg28.relationRow8973 rho)
    (r8974 : Seg28.relationRow8974 rho)
    (tail : next (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) (rho 28271) (rho 28276)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg61 (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) (rho 28271) next := by
  exact ⟨rho 28272, rho 28273, rho 28274, rho 28275, rho 28276, r8970, r8971, r8972, r8973, r8974, tail⟩

theorem seg28_scp_node23_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8975 : Seg28.relationRow8975 rho)
    (r8976 : Seg28.relationRow8976 rho)
    (r8977 : Seg28.relationRow8977 rho)
    (r8978 : Seg28.relationRow8978 rho)
    (r8979 : Seg28.relationRow8979 rho)
    (tail : next (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) (rho 28271) (rho 28276) (rho 28281)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg62 (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) (rho 28271) (rho 28276) next := by
  exact ⟨rho 28277, rho 28278, rho 28279, rho 28280, rho 28281, r8975, r8976, r8977, r8978, r8979, tail⟩

theorem seg28_scp_node23_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8980 : Seg28.relationRow8980 rho)
    (r8981 : Seg28.relationRow8981 rho)
    (r8982 : Seg28.relationRow8982 rho)
    (r8983 : Seg28.relationRow8983 rho)
    (r8984 : Seg28.relationRow8984 rho)
    (tail : next (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) (rho 28271) (rho 28276) (rho 28281) (rho 28286)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg63 (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) (rho 28271) (rho 28276) (rho 28281) next := by
  exact ⟨rho 28282, rho 28283, rho 28284, rho 28285, rho 28286, r8980, r8981, r8982, r8983, r8984, tail⟩

theorem seg28_scp_node23_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8985 : Seg28.relationRow8985 rho)
    (r8986 : Seg28.relationRow8986 rho)
    (r8987 : Seg28.relationRow8987 rho)
    (r8988 : Seg28.relationRow8988 rho)
    (r8989 : Seg28.relationRow8989 rho)
    (tail : next (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg64 (rho 28246) (rho 28251) (rho 28256) (rho 28261) (rho 28266) (rho 28271) (rho 28276) (rho 28281) (rho 28286) next := by
  exact ⟨rho 28287, rho 28288, rho 28289, rho 28290, rho 28291, r8985, r8986, r8987, r8988, r8989, tail⟩

theorem seg28_scp_node23_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8990 : Seg28.relationRow8990 rho)
    (r8991 : Seg28.relationRow8991 rho)
    (r8992 : Seg28.relationRow8992 rho)
    (r8993 : Seg28.relationRow8993 rho)
    (r8994 : Seg28.relationRow8994 rho)
    (tail : next (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) (rho 28296)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg65 (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) next := by
  exact ⟨rho 28292, rho 28293, rho 28294, rho 28295, rho 28296, r8990, r8991, r8992, r8993, r8994, tail⟩

theorem seg28_scp_node23_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8995 : Seg28.relationRow8995 rho)
    (r8996 : Seg28.relationRow8996 rho)
    (r8997 : Seg28.relationRow8997 rho)
    (r8998 : Seg28.relationRow8998 rho)
    (r8999 : Seg28.relationRow8999 rho)
    (tail : next (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) (rho 28296) (rho 28301)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg66 (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) (rho 28296) next := by
  exact ⟨rho 28297, rho 28298, rho 28299, rho 28300, rho 28301, r8995, r8996, r8997, r8998, r8999, tail⟩

theorem seg28_scp_node23_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r9000 : Seg28.relationRow9000 rho)
    (r9001 : Seg28.relationRow9001 rho)
    (r9002 : Seg28.relationRow9002 rho)
    (r9003 : Seg28.relationRow9003 rho)
    (r9004 : Seg28.relationRow9004 rho)
    (tail : next (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) (rho 28296) (rho 28301) (rho 28306)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg67 (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) (rho 28296) (rho 28301) next := by
  exact ⟨rho 28302, rho 28303, rho 28304, rho 28305, rho 28306, r9000, r9001, r9002, r9003, r9004, tail⟩

theorem seg28_scp_node23_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r9005 : Seg28.relationRow9005 rho)
    (r9006 : Seg28.relationRow9006 rho)
    (r9007 : Seg28.relationRow9007 rho)
    (r9008 : Seg28.relationRow9008 rho)
    (r9009 : Seg28.relationRow9009 rho)
    (tail : next (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) (rho 28296) (rho 28301) (rho 28306) (rho 28311)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg68 (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) (rho 28296) (rho 28301) (rho 28306) next := by
  exact ⟨rho 28307, rho 28308, rho 28309, rho 28310, rho 28311, r9005, r9006, r9007, r9008, r9009, tail⟩

theorem seg28_scp_node23_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r9010 : Seg28.relationRow9010 rho)
    (r9011 : Seg28.relationRow9011 rho)
    (r9012 : Seg28.relationRow9012 rho)
    (r9013 : Seg28.relationRow9013 rho)
    (r9014 : Seg28.relationRow9014 rho)
    (tail : next (rho 28296) (rho 28301) (rho 28306) (rho 28311) (rho 28316)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg69 (rho 28271) (rho 28276) (rho 28281) (rho 28286) (rho 28291) (rho 28296) (rho 28301) (rho 28306) (rho 28311) next := by
  exact ⟨rho 28312, rho 28313, rho 28314, rho 28315, rho 28316, r9010, r9011, r9012, r9013, r9014, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

