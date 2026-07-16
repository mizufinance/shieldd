import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node12_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4961 : Seg13.relationRow4961 rho)
    (r4962 : Seg13.relationRow4962 rho)
    (r4963 : Seg13.relationRow4963 rho)
    (r4964 : Seg13.relationRow4964 rho)
    (r4965 : Seg13.relationRow4965 rho)
    (tail : next (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) (rho 12130)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg60 (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) next := by
  exact ⟨rho 12126, rho 12127, rho 12128, rho 12129, rho 12130, r4961, r4962, r4963, r4964, r4965, tail⟩

theorem seg13_scp_node12_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4966 : Seg13.relationRow4966 rho)
    (r4967 : Seg13.relationRow4967 rho)
    (r4968 : Seg13.relationRow4968 rho)
    (r4969 : Seg13.relationRow4969 rho)
    (r4970 : Seg13.relationRow4970 rho)
    (tail : next (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) (rho 12130) (rho 12135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg61 (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) (rho 12130) next := by
  exact ⟨rho 12131, rho 12132, rho 12133, rho 12134, rho 12135, r4966, r4967, r4968, r4969, r4970, tail⟩

theorem seg13_scp_node12_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4971 : Seg13.relationRow4971 rho)
    (r4972 : Seg13.relationRow4972 rho)
    (r4973 : Seg13.relationRow4973 rho)
    (r4974 : Seg13.relationRow4974 rho)
    (r4975 : Seg13.relationRow4975 rho)
    (tail : next (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) (rho 12130) (rho 12135) (rho 12140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg62 (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) (rho 12130) (rho 12135) next := by
  exact ⟨rho 12136, rho 12137, rho 12138, rho 12139, rho 12140, r4971, r4972, r4973, r4974, r4975, tail⟩

theorem seg13_scp_node12_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4976 : Seg13.relationRow4976 rho)
    (r4977 : Seg13.relationRow4977 rho)
    (r4978 : Seg13.relationRow4978 rho)
    (r4979 : Seg13.relationRow4979 rho)
    (r4980 : Seg13.relationRow4980 rho)
    (tail : next (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) (rho 12130) (rho 12135) (rho 12140) (rho 12145)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg63 (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) (rho 12130) (rho 12135) (rho 12140) next := by
  exact ⟨rho 12141, rho 12142, rho 12143, rho 12144, rho 12145, r4976, r4977, r4978, r4979, r4980, tail⟩

theorem seg13_scp_node12_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4981 : Seg13.relationRow4981 rho)
    (r4982 : Seg13.relationRow4982 rho)
    (r4983 : Seg13.relationRow4983 rho)
    (r4984 : Seg13.relationRow4984 rho)
    (r4985 : Seg13.relationRow4985 rho)
    (tail : next (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg64 (rho 12105) (rho 12110) (rho 12115) (rho 12120) (rho 12125) (rho 12130) (rho 12135) (rho 12140) (rho 12145) next := by
  exact ⟨rho 12146, rho 12147, rho 12148, rho 12149, rho 12150, r4981, r4982, r4983, r4984, r4985, tail⟩

theorem seg13_scp_node12_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4986 : Seg13.relationRow4986 rho)
    (r4987 : Seg13.relationRow4987 rho)
    (r4988 : Seg13.relationRow4988 rho)
    (r4989 : Seg13.relationRow4989 rho)
    (r4990 : Seg13.relationRow4990 rho)
    (tail : next (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) (rho 12155)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg65 (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) next := by
  exact ⟨rho 12151, rho 12152, rho 12153, rho 12154, rho 12155, r4986, r4987, r4988, r4989, r4990, tail⟩

theorem seg13_scp_node12_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4991 : Seg13.relationRow4991 rho)
    (r4992 : Seg13.relationRow4992 rho)
    (r4993 : Seg13.relationRow4993 rho)
    (r4994 : Seg13.relationRow4994 rho)
    (r4995 : Seg13.relationRow4995 rho)
    (tail : next (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) (rho 12155) (rho 12160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg66 (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) (rho 12155) next := by
  exact ⟨rho 12156, rho 12157, rho 12158, rho 12159, rho 12160, r4991, r4992, r4993, r4994, r4995, tail⟩

theorem seg13_scp_node12_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4996 : Seg13.relationRow4996 rho)
    (r4997 : Seg13.relationRow4997 rho)
    (r4998 : Seg13.relationRow4998 rho)
    (r4999 : Seg13.relationRow4999 rho)
    (r5000 : Seg13.relationRow5000 rho)
    (tail : next (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) (rho 12155) (rho 12160) (rho 12165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg67 (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) (rho 12155) (rho 12160) next := by
  exact ⟨rho 12161, rho 12162, rho 12163, rho 12164, rho 12165, r4996, r4997, r4998, r4999, r5000, tail⟩

theorem seg13_scp_node12_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5001 : Seg13.relationRow5001 rho)
    (r5002 : Seg13.relationRow5002 rho)
    (r5003 : Seg13.relationRow5003 rho)
    (r5004 : Seg13.relationRow5004 rho)
    (r5005 : Seg13.relationRow5005 rho)
    (tail : next (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) (rho 12155) (rho 12160) (rho 12165) (rho 12170)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg68 (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) (rho 12155) (rho 12160) (rho 12165) next := by
  exact ⟨rho 12166, rho 12167, rho 12168, rho 12169, rho 12170, r5001, r5002, r5003, r5004, r5005, tail⟩

theorem seg13_scp_node12_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5006 : Seg13.relationRow5006 rho)
    (r5007 : Seg13.relationRow5007 rho)
    (r5008 : Seg13.relationRow5008 rho)
    (r5009 : Seg13.relationRow5009 rho)
    (r5010 : Seg13.relationRow5010 rho)
    (tail : next (rho 12155) (rho 12160) (rho 12165) (rho 12170) (rho 12175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg69 (rho 12130) (rho 12135) (rho 12140) (rho 12145) (rho 12150) (rho 12155) (rho 12160) (rho 12165) (rho 12170) next := by
  exact ⟨rho 12171, rho 12172, rho 12173, rho 12174, rho 12175, r5006, r5007, r5008, r5009, r5010, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

