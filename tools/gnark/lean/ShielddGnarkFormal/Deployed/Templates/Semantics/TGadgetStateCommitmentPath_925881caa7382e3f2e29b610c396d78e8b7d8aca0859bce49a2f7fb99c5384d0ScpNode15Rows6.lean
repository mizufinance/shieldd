import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node15_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6053 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6053 rho)
    (r6054 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6054 rho)
    (r6055 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6055 rho)
    (r6056 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6056 rho)
    (r6057 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6057 rho)
    (tail : next (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) (rho 6049)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg60 (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) next := by
  exact ⟨rho 6045, rho 6046, rho 6047, rho 6048, rho 6049, r6053, r6054, r6055, r6056, r6057, tail⟩

theorem template_scp_node15_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6058 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6058 rho)
    (r6059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6059 rho)
    (r6060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6060 rho)
    (r6061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6061 rho)
    (r6062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6062 rho)
    (tail : next (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) (rho 6049) (rho 6054)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg61 (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) (rho 6049) next := by
  exact ⟨rho 6050, rho 6051, rho 6052, rho 6053, rho 6054, r6058, r6059, r6060, r6061, r6062, tail⟩

theorem template_scp_node15_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6063 rho)
    (r6064 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6064 rho)
    (r6065 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6065 rho)
    (r6066 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6066 rho)
    (r6067 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6067 rho)
    (tail : next (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) (rho 6049) (rho 6054) (rho 6059)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg62 (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) (rho 6049) (rho 6054) next := by
  exact ⟨rho 6055, rho 6056, rho 6057, rho 6058, rho 6059, r6063, r6064, r6065, r6066, r6067, tail⟩

theorem template_scp_node15_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6068 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6068 rho)
    (r6069 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6069 rho)
    (r6070 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6070 rho)
    (r6071 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6071 rho)
    (r6072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6072 rho)
    (tail : next (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) (rho 6049) (rho 6054) (rho 6059) (rho 6064)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg63 (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) (rho 6049) (rho 6054) (rho 6059) next := by
  exact ⟨rho 6060, rho 6061, rho 6062, rho 6063, rho 6064, r6068, r6069, r6070, r6071, r6072, tail⟩

theorem template_scp_node15_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6073 rho)
    (r6074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6074 rho)
    (r6075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6075 rho)
    (r6076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6076 rho)
    (r6077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6077 rho)
    (tail : next (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg64 (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044) (rho 6049) (rho 6054) (rho 6059) (rho 6064) next := by
  exact ⟨rho 6065, rho 6066, rho 6067, rho 6068, rho 6069, r6073, r6074, r6075, r6076, r6077, tail⟩

theorem template_scp_node15_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6078 rho)
    (r6079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6079 rho)
    (r6080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6080 rho)
    (r6081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6081 rho)
    (r6082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6082 rho)
    (tail : next (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) (rho 6074)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg65 (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) next := by
  exact ⟨rho 6070, rho 6071, rho 6072, rho 6073, rho 6074, r6078, r6079, r6080, r6081, r6082, tail⟩

theorem template_scp_node15_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6083 rho)
    (r6084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6084 rho)
    (r6085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6085 rho)
    (r6086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6086 rho)
    (r6087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6087 rho)
    (tail : next (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) (rho 6074) (rho 6079)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg66 (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) (rho 6074) next := by
  exact ⟨rho 6075, rho 6076, rho 6077, rho 6078, rho 6079, r6083, r6084, r6085, r6086, r6087, tail⟩

theorem template_scp_node15_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6088 rho)
    (r6089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6089 rho)
    (r6090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6090 rho)
    (r6091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6091 rho)
    (r6092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6092 rho)
    (tail : next (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) (rho 6074) (rho 6079) (rho 6084)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg67 (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) (rho 6074) (rho 6079) next := by
  exact ⟨rho 6080, rho 6081, rho 6082, rho 6083, rho 6084, r6088, r6089, r6090, r6091, r6092, tail⟩

theorem template_scp_node15_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6093 rho)
    (r6094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6094 rho)
    (r6095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6095 rho)
    (r6096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6096 rho)
    (r6097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6097 rho)
    (tail : next (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) (rho 6074) (rho 6079) (rho 6084) (rho 6089)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg68 (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) (rho 6074) (rho 6079) (rho 6084) next := by
  exact ⟨rho 6085, rho 6086, rho 6087, rho 6088, rho 6089, r6093, r6094, r6095, r6096, r6097, tail⟩

theorem template_scp_node15_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6098 rho)
    (r6099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6099 rho)
    (r6100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6100 rho)
    (r6101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6101 rho)
    (r6102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6102 rho)
    (tail : next (rho 6074) (rho 6079) (rho 6084) (rho 6089) (rho 6094)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg69 (rho 6049) (rho 6054) (rho 6059) (rho 6064) (rho 6069) (rho 6074) (rho 6079) (rho 6084) (rho 6089) next := by
  exact ⟨rho 6090, rho 6091, rho 6092, rho 6093, rho 6094, r6098, r6099, r6100, r6101, r6102, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
