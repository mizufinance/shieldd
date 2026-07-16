import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node13_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5025 : Seg13.relationRow5025 rho)
    (r5026 : Seg13.relationRow5026 rho)
    (r5027 : Seg13.relationRow5027 rho)
    (r5028 : Seg13.relationRow5028 rho)
    (r5029 : Seg13.relationRow5029 rho)
    (tail : next (rho 56) (rho 57) (rho 12181) (rho 12182) (rho 12183) (rho 12184) (rho 12185) (rho 12190)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg0 (rho 55) (rho 56) (rho 57) (rho 12180) (rho 12181) (rho 12182) (rho 12183) (rho 12184) (rho 12185) next := by
  exact ⟨rho 12186, rho 12187, rho 12188, rho 12189, rho 12190, r5025, r5026, r5027, r5028, r5029, tail⟩

theorem seg13_scp_node13_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5030 : Seg13.relationRow5030 rho)
    (r5031 : Seg13.relationRow5031 rho)
    (r5032 : Seg13.relationRow5032 rho)
    (r5033 : Seg13.relationRow5033 rho)
    (r5034 : Seg13.relationRow5034 rho)
    (tail : next (rho 56) (rho 57) (rho 12183) (rho 12184) (rho 12185) (rho 12190) (rho 12195)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg1 (rho 56) (rho 57) (rho 12181) (rho 12182) (rho 12183) (rho 12184) (rho 12185) (rho 12190) next := by
  exact ⟨rho 12191, rho 12192, rho 12193, rho 12194, rho 12195, r5030, r5031, r5032, r5033, r5034, tail⟩

theorem seg13_scp_node13_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5035 : Seg13.relationRow5035 rho)
    (r5036 : Seg13.relationRow5036 rho)
    (r5037 : Seg13.relationRow5037 rho)
    (r5038 : Seg13.relationRow5038 rho)
    (r5039 : Seg13.relationRow5039 rho)
    (tail : next (rho 57) (rho 12185) (rho 12190) (rho 12195) (rho 12200)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg2 (rho 56) (rho 57) (rho 12183) (rho 12184) (rho 12185) (rho 12190) (rho 12195) next := by
  exact ⟨rho 12196, rho 12197, rho 12198, rho 12199, rho 12200, r5035, r5036, r5037, r5038, r5039, tail⟩

theorem seg13_scp_node13_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5040 : Seg13.relationRow5040 rho)
    (r5041 : Seg13.relationRow5041 rho)
    (r5042 : Seg13.relationRow5042 rho)
    (r5043 : Seg13.relationRow5043 rho)
    (r5044 : Seg13.relationRow5044 rho)
    (tail : next (rho 12190) (rho 12195) (rho 12200) (rho 12205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg3 (rho 57) (rho 12185) (rho 12190) (rho 12195) (rho 12200) next := by
  exact ⟨rho 12201, rho 12202, rho 12203, rho 12204, rho 12205, r5040, r5041, r5042, r5043, r5044, tail⟩

theorem seg13_scp_node13_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5045 : Seg13.relationRow5045 rho)
    (r5046 : Seg13.relationRow5046 rho)
    (r5047 : Seg13.relationRow5047 rho)
    (r5048 : Seg13.relationRow5048 rho)
    (r5049 : Seg13.relationRow5049 rho)
    (tail : next (rho 12190) (rho 12195) (rho 12200) (rho 12205) (rho 12210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg4 (rho 12190) (rho 12195) (rho 12200) (rho 12205) next := by
  exact ⟨rho 12206, rho 12207, rho 12208, rho 12209, rho 12210, r5045, r5046, r5047, r5048, r5049, tail⟩

theorem seg13_scp_node13_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5050 : Seg13.relationRow5050 rho)
    (r5051 : Seg13.relationRow5051 rho)
    (r5052 : Seg13.relationRow5052 rho)
    (r5053 : Seg13.relationRow5053 rho)
    (r5054 : Seg13.relationRow5054 rho)
    (tail : next (rho 12190) (rho 12195) (rho 12200) (rho 12205) (rho 12210) (rho 12215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg5 (rho 12190) (rho 12195) (rho 12200) (rho 12205) (rho 12210) next := by
  exact ⟨rho 12211, rho 12212, rho 12213, rho 12214, rho 12215, r5050, r5051, r5052, r5053, r5054, tail⟩

theorem seg13_scp_node13_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5055 : Seg13.relationRow5055 rho)
    (r5056 : Seg13.relationRow5056 rho)
    (r5057 : Seg13.relationRow5057 rho)
    (r5058 : Seg13.relationRow5058 rho)
    (r5059 : Seg13.relationRow5059 rho)
    (tail : next (rho 12190) (rho 12195) (rho 12200) (rho 12205) (rho 12210) (rho 12215) (rho 12220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg6 (rho 12190) (rho 12195) (rho 12200) (rho 12205) (rho 12210) (rho 12215) next := by
  exact ⟨rho 12216, rho 12217, rho 12218, rho 12219, rho 12220, r5055, r5056, r5057, r5058, r5059, tail⟩

theorem seg13_scp_node13_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5060 : Seg13.relationRow5060 rho)
    (r5061 : Seg13.relationRow5061 rho)
    (r5062 : Seg13.relationRow5062 rho)
    (r5063 : Seg13.relationRow5063 rho)
    (r5064 : Seg13.relationRow5064 rho)
    (tail : next (rho 12190) (rho 12195) (rho 12200) (rho 12205) (rho 12210) (rho 12215) (rho 12220) (rho 12225)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg7 (rho 12190) (rho 12195) (rho 12200) (rho 12205) (rho 12210) (rho 12215) (rho 12220) next := by
  exact ⟨rho 12221, rho 12222, rho 12223, rho 12224, rho 12225, r5060, r5061, r5062, r5063, r5064, tail⟩

theorem seg13_scp_node13_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5065 : Seg13.relationRow5065 rho)
    (r5066 : Seg13.relationRow5066 rho)
    (r5067 : Seg13.relationRow5067 rho)
    (r5068 : Seg13.relationRow5068 rho)
    (r5069 : Seg13.relationRow5069 rho)
    (tail : next (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg8 (rho 12190) (rho 12195) (rho 12200) (rho 12205) (rho 12210) (rho 12215) (rho 12220) (rho 12225) next := by
  exact ⟨rho 12226, rho 12227, rho 12228, rho 12229, rho 12230, r5065, r5066, r5067, r5068, r5069, tail⟩

theorem seg13_scp_node13_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5070 : Seg13.relationRow5070 rho)
    (r5071 : Seg13.relationRow5071 rho)
    (r5072 : Seg13.relationRow5072 rho)
    (r5073 : Seg13.relationRow5073 rho)
    (r5074 : Seg13.relationRow5074 rho)
    (tail : next (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) (rho 12235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg9 (rho 12210) (rho 12215) (rho 12220) (rho 12225) (rho 12230) next := by
  exact ⟨rho 12231, rho 12232, rho 12233, rho 12234, rho 12235, r5070, r5071, r5072, r5073, r5074, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

