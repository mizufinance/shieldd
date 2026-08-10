import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node19_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7259 rho)
    (r7260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7260 rho)
    (r7261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7261 rho)
    (r7262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7262 rho)
    (r7263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7263 rho)
    (tail : next (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) (rho 7246) (rho 7251)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg10 (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) (rho 7246) next := by
  exact ⟨rho 7247, rho 7248, rho 7249, rho 7250, rho 7251, r7259, r7260, r7261, r7262, r7263, tail⟩

theorem template_scp_node19_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7264 rho)
    (r7265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7265 rho)
    (r7266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7266 rho)
    (r7267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7267 rho)
    (r7268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7268 rho)
    (tail : next (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) (rho 7246) (rho 7251) (rho 7256)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg11 (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) (rho 7246) (rho 7251) next := by
  exact ⟨rho 7252, rho 7253, rho 7254, rho 7255, rho 7256, r7264, r7265, r7266, r7267, r7268, tail⟩

theorem template_scp_node19_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7269 rho)
    (r7270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7270 rho)
    (r7271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7271 rho)
    (r7272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7272 rho)
    (r7273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7273 rho)
    (tail : next (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) (rho 7246) (rho 7251) (rho 7256) (rho 7261)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg12 (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) (rho 7246) (rho 7251) (rho 7256) next := by
  exact ⟨rho 7257, rho 7258, rho 7259, rho 7260, rho 7261, r7269, r7270, r7271, r7272, r7273, tail⟩

theorem template_scp_node19_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7274 rho)
    (r7275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7275 rho)
    (r7276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7276 rho)
    (r7277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7277 rho)
    (r7278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7278 rho)
    (tail : next (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg13 (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) (rho 7246) (rho 7251) (rho 7256) (rho 7261) next := by
  exact ⟨rho 7262, rho 7263, rho 7264, rho 7265, rho 7266, r7274, r7275, r7276, r7277, r7278, tail⟩

theorem template_scp_node19_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7279 rho)
    (r7280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7280 rho)
    (r7281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7281 rho)
    (r7282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7282 rho)
    (r7283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7283 rho)
    (tail : next (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) (rho 7271)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg14 (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) next := by
  exact ⟨rho 7267, rho 7268, rho 7269, rho 7270, rho 7271, r7279, r7280, r7281, r7282, r7283, tail⟩

theorem template_scp_node19_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7284 rho)
    (r7285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7285 rho)
    (r7286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7286 rho)
    (r7287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7287 rho)
    (r7288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7288 rho)
    (tail : next (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) (rho 7271) (rho 7276)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg15 (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) (rho 7271) next := by
  exact ⟨rho 7272, rho 7273, rho 7274, rho 7275, rho 7276, r7284, r7285, r7286, r7287, r7288, tail⟩

theorem template_scp_node19_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7289 rho)
    (r7290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7290 rho)
    (r7291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7291 rho)
    (r7292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7292 rho)
    (r7293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7293 rho)
    (tail : next (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) (rho 7271) (rho 7276) (rho 7281)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg16 (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) (rho 7271) (rho 7276) next := by
  exact ⟨rho 7277, rho 7278, rho 7279, rho 7280, rho 7281, r7289, r7290, r7291, r7292, r7293, tail⟩

theorem template_scp_node19_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7294 rho)
    (r7295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7295 rho)
    (r7296 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7296 rho)
    (r7297 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7297 rho)
    (r7298 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7298 rho)
    (tail : next (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) (rho 7271) (rho 7276) (rho 7281) (rho 7286)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg17 (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) (rho 7271) (rho 7276) (rho 7281) next := by
  exact ⟨rho 7282, rho 7283, rho 7284, rho 7285, rho 7286, r7294, r7295, r7296, r7297, r7298, tail⟩

theorem template_scp_node19_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7299 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7299 rho)
    (r7300 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7300 rho)
    (r7301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7301 rho)
    (r7302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7302 rho)
    (r7303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7303 rho)
    (tail : next (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg18 (rho 7246) (rho 7251) (rho 7256) (rho 7261) (rho 7266) (rho 7271) (rho 7276) (rho 7281) (rho 7286) next := by
  exact ⟨rho 7287, rho 7288, rho 7289, rho 7290, rho 7291, r7299, r7300, r7301, r7302, r7303, tail⟩

theorem template_scp_node19_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7304 rho)
    (r7305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7305 rho)
    (r7306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7306 rho)
    (r7307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7307 rho)
    (r7308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7308 rho)
    (tail : next (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) (rho 7296)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg19 (rho 7271) (rho 7276) (rho 7281) (rho 7286) (rho 7291) next := by
  exact ⟨rho 7292, rho 7293, rho 7294, rho 7295, rho 7296, r7304, r7305, r7306, r7307, r7308, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
