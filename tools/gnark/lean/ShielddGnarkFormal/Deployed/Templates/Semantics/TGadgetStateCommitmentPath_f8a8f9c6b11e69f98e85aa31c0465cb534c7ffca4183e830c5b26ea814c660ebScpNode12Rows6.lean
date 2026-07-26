import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node12_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4961 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4961 rho)
    (r4962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4962 rho)
    (r4963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4963 rho)
    (r4964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4964 rho)
    (r4965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4965 rho)
    (tail : next (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) (rho 4954)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg60 (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) next := by
  exact ⟨rho 4950, rho 4951, rho 4952, rho 4953, rho 4954, r4961, r4962, r4963, r4964, r4965, tail⟩

theorem template_scp_node12_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4966 rho)
    (r4967 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4967 rho)
    (r4968 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4968 rho)
    (r4969 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4969 rho)
    (r4970 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4970 rho)
    (tail : next (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) (rho 4954) (rho 4959)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg61 (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) (rho 4954) next := by
  exact ⟨rho 4955, rho 4956, rho 4957, rho 4958, rho 4959, r4966, r4967, r4968, r4969, r4970, tail⟩

theorem template_scp_node12_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4971 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4971 rho)
    (r4972 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4972 rho)
    (r4973 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4973 rho)
    (r4974 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4974 rho)
    (r4975 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4975 rho)
    (tail : next (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) (rho 4954) (rho 4959) (rho 4964)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg62 (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) (rho 4954) (rho 4959) next := by
  exact ⟨rho 4960, rho 4961, rho 4962, rho 4963, rho 4964, r4971, r4972, r4973, r4974, r4975, tail⟩

theorem template_scp_node12_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4976 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4976 rho)
    (r4977 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4977 rho)
    (r4978 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4978 rho)
    (r4979 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4979 rho)
    (r4980 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4980 rho)
    (tail : next (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) (rho 4954) (rho 4959) (rho 4964) (rho 4969)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg63 (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) (rho 4954) (rho 4959) (rho 4964) next := by
  exact ⟨rho 4965, rho 4966, rho 4967, rho 4968, rho 4969, r4976, r4977, r4978, r4979, r4980, tail⟩

theorem template_scp_node12_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4981 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4981 rho)
    (r4982 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4982 rho)
    (r4983 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4983 rho)
    (r4984 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4984 rho)
    (r4985 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4985 rho)
    (tail : next (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg64 (rho 4929) (rho 4934) (rho 4939) (rho 4944) (rho 4949) (rho 4954) (rho 4959) (rho 4964) (rho 4969) next := by
  exact ⟨rho 4970, rho 4971, rho 4972, rho 4973, rho 4974, r4981, r4982, r4983, r4984, r4985, tail⟩

theorem template_scp_node12_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4986 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4986 rho)
    (r4987 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4987 rho)
    (r4988 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4988 rho)
    (r4989 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4989 rho)
    (r4990 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4990 rho)
    (tail : next (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) (rho 4979)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg65 (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) next := by
  exact ⟨rho 4975, rho 4976, rho 4977, rho 4978, rho 4979, r4986, r4987, r4988, r4989, r4990, tail⟩

theorem template_scp_node12_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4991 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4991 rho)
    (r4992 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4992 rho)
    (r4993 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4993 rho)
    (r4994 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4994 rho)
    (r4995 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4995 rho)
    (tail : next (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) (rho 4979) (rho 4984)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg66 (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) (rho 4979) next := by
  exact ⟨rho 4980, rho 4981, rho 4982, rho 4983, rho 4984, r4991, r4992, r4993, r4994, r4995, tail⟩

theorem template_scp_node12_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4996 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4996 rho)
    (r4997 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4997 rho)
    (r4998 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4998 rho)
    (r4999 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow4999 rho)
    (r5000 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5000 rho)
    (tail : next (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) (rho 4979) (rho 4984) (rho 4989)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg67 (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) (rho 4979) (rho 4984) next := by
  exact ⟨rho 4985, rho 4986, rho 4987, rho 4988, rho 4989, r4996, r4997, r4998, r4999, r5000, tail⟩

theorem template_scp_node12_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5001 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5001 rho)
    (r5002 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5002 rho)
    (r5003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5003 rho)
    (r5004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5004 rho)
    (r5005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5005 rho)
    (tail : next (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) (rho 4979) (rho 4984) (rho 4989) (rho 4994)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg68 (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) (rho 4979) (rho 4984) (rho 4989) next := by
  exact ⟨rho 4990, rho 4991, rho 4992, rho 4993, rho 4994, r5001, r5002, r5003, r5004, r5005, tail⟩

theorem template_scp_node12_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5006 rho)
    (r5007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5007 rho)
    (r5008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5008 rho)
    (r5009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5009 rho)
    (r5010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5010 rho)
    (tail : next (rho 4979) (rho 4984) (rho 4989) (rho 4994) (rho 4999)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg69 (rho 4954) (rho 4959) (rho 4964) (rho 4969) (rho 4974) (rho 4979) (rho 4984) (rho 4989) (rho 4994) next := by
  exact ⟨rho 4995, rho 4996, rho 4997, rho 4998, rho 4999, r5006, r5007, r5008, r5009, r5010, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

