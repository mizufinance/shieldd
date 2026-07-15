import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node12_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4961 : Seg28.relationRow4961 rho)
    (r4962 : Seg28.relationRow4962 rho)
    (r4963 : Seg28.relationRow4963 rho)
    (r4964 : Seg28.relationRow4964 rho)
    (r4965 : Seg28.relationRow4965 rho)
    (tail : next (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) (rho 24311)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg60 (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) next := by
  exact ⟨rho 24307, rho 24308, rho 24309, rho 24310, rho 24311, r4961, r4962, r4963, r4964, r4965, tail⟩

theorem seg28_scp_node12_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4966 : Seg28.relationRow4966 rho)
    (r4967 : Seg28.relationRow4967 rho)
    (r4968 : Seg28.relationRow4968 rho)
    (r4969 : Seg28.relationRow4969 rho)
    (r4970 : Seg28.relationRow4970 rho)
    (tail : next (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) (rho 24311) (rho 24316)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg61 (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) (rho 24311) next := by
  exact ⟨rho 24312, rho 24313, rho 24314, rho 24315, rho 24316, r4966, r4967, r4968, r4969, r4970, tail⟩

theorem seg28_scp_node12_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4971 : Seg28.relationRow4971 rho)
    (r4972 : Seg28.relationRow4972 rho)
    (r4973 : Seg28.relationRow4973 rho)
    (r4974 : Seg28.relationRow4974 rho)
    (r4975 : Seg28.relationRow4975 rho)
    (tail : next (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) (rho 24311) (rho 24316) (rho 24321)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg62 (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) (rho 24311) (rho 24316) next := by
  exact ⟨rho 24317, rho 24318, rho 24319, rho 24320, rho 24321, r4971, r4972, r4973, r4974, r4975, tail⟩

theorem seg28_scp_node12_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4976 : Seg28.relationRow4976 rho)
    (r4977 : Seg28.relationRow4977 rho)
    (r4978 : Seg28.relationRow4978 rho)
    (r4979 : Seg28.relationRow4979 rho)
    (r4980 : Seg28.relationRow4980 rho)
    (tail : next (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) (rho 24311) (rho 24316) (rho 24321) (rho 24326)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg63 (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) (rho 24311) (rho 24316) (rho 24321) next := by
  exact ⟨rho 24322, rho 24323, rho 24324, rho 24325, rho 24326, r4976, r4977, r4978, r4979, r4980, tail⟩

theorem seg28_scp_node12_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4981 : Seg28.relationRow4981 rho)
    (r4982 : Seg28.relationRow4982 rho)
    (r4983 : Seg28.relationRow4983 rho)
    (r4984 : Seg28.relationRow4984 rho)
    (r4985 : Seg28.relationRow4985 rho)
    (tail : next (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg64 (rho 24286) (rho 24291) (rho 24296) (rho 24301) (rho 24306) (rho 24311) (rho 24316) (rho 24321) (rho 24326) next := by
  exact ⟨rho 24327, rho 24328, rho 24329, rho 24330, rho 24331, r4981, r4982, r4983, r4984, r4985, tail⟩

theorem seg28_scp_node12_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4986 : Seg28.relationRow4986 rho)
    (r4987 : Seg28.relationRow4987 rho)
    (r4988 : Seg28.relationRow4988 rho)
    (r4989 : Seg28.relationRow4989 rho)
    (r4990 : Seg28.relationRow4990 rho)
    (tail : next (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) (rho 24336)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg65 (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) next := by
  exact ⟨rho 24332, rho 24333, rho 24334, rho 24335, rho 24336, r4986, r4987, r4988, r4989, r4990, tail⟩

theorem seg28_scp_node12_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4991 : Seg28.relationRow4991 rho)
    (r4992 : Seg28.relationRow4992 rho)
    (r4993 : Seg28.relationRow4993 rho)
    (r4994 : Seg28.relationRow4994 rho)
    (r4995 : Seg28.relationRow4995 rho)
    (tail : next (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) (rho 24336) (rho 24341)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg66 (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) (rho 24336) next := by
  exact ⟨rho 24337, rho 24338, rho 24339, rho 24340, rho 24341, r4991, r4992, r4993, r4994, r4995, tail⟩

theorem seg28_scp_node12_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4996 : Seg28.relationRow4996 rho)
    (r4997 : Seg28.relationRow4997 rho)
    (r4998 : Seg28.relationRow4998 rho)
    (r4999 : Seg28.relationRow4999 rho)
    (r5000 : Seg28.relationRow5000 rho)
    (tail : next (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) (rho 24336) (rho 24341) (rho 24346)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg67 (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) (rho 24336) (rho 24341) next := by
  exact ⟨rho 24342, rho 24343, rho 24344, rho 24345, rho 24346, r4996, r4997, r4998, r4999, r5000, tail⟩

theorem seg28_scp_node12_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5001 : Seg28.relationRow5001 rho)
    (r5002 : Seg28.relationRow5002 rho)
    (r5003 : Seg28.relationRow5003 rho)
    (r5004 : Seg28.relationRow5004 rho)
    (r5005 : Seg28.relationRow5005 rho)
    (tail : next (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) (rho 24336) (rho 24341) (rho 24346) (rho 24351)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg68 (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) (rho 24336) (rho 24341) (rho 24346) next := by
  exact ⟨rho 24347, rho 24348, rho 24349, rho 24350, rho 24351, r5001, r5002, r5003, r5004, r5005, tail⟩

theorem seg28_scp_node12_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5006 : Seg28.relationRow5006 rho)
    (r5007 : Seg28.relationRow5007 rho)
    (r5008 : Seg28.relationRow5008 rho)
    (r5009 : Seg28.relationRow5009 rho)
    (r5010 : Seg28.relationRow5010 rho)
    (tail : next (rho 24336) (rho 24341) (rho 24346) (rho 24351) (rho 24356)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg69 (rho 24311) (rho 24316) (rho 24321) (rho 24326) (rho 24331) (rho 24336) (rho 24341) (rho 24346) (rho 24351) next := by
  exact ⟨rho 24352, rho 24353, rho 24354, rho 24355, rho 24356, r5006, r5007, r5008, r5009, r5010, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

