import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node19_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7209 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7209 rho)
    (r7210 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7210 rho)
    (r7211 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7211 rho)
    (r7212 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7212 rho)
    (r7213 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7213 rho)
    (tail : next (rho 7190) (rho 7193) (rho 7191) (rho 7192) (rho 7194) (rho 7195) (rho 7196) (rho 7201)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg0 (rho 7188) (rho 7190) (rho 7193) (rho 7189) (rho 7191) (rho 7192) (rho 7194) (rho 7195) (rho 7196) next := by
  exact ⟨rho 7197, rho 7198, rho 7199, rho 7200, rho 7201, r7209, r7210, r7211, r7212, r7213, tail⟩

theorem template_scp_node19_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7214 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7214 rho)
    (r7215 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7215 rho)
    (r7216 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7216 rho)
    (r7217 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7217 rho)
    (r7218 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7218 rho)
    (tail : next (rho 7190) (rho 7193) (rho 7194) (rho 7195) (rho 7196) (rho 7201) (rho 7206)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg1 (rho 7190) (rho 7193) (rho 7191) (rho 7192) (rho 7194) (rho 7195) (rho 7196) (rho 7201) next := by
  exact ⟨rho 7202, rho 7203, rho 7204, rho 7205, rho 7206, r7214, r7215, r7216, r7217, r7218, tail⟩

theorem template_scp_node19_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7219 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7219 rho)
    (r7220 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7220 rho)
    (r7221 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7221 rho)
    (r7222 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7222 rho)
    (r7223 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7223 rho)
    (tail : next (rho 7193) (rho 7196) (rho 7201) (rho 7206) (rho 7211)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg2 (rho 7190) (rho 7193) (rho 7194) (rho 7195) (rho 7196) (rho 7201) (rho 7206) next := by
  exact ⟨rho 7207, rho 7208, rho 7209, rho 7210, rho 7211, r7219, r7220, r7221, r7222, r7223, tail⟩

theorem template_scp_node19_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r7224 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7224 rho)
    (r7225 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7225 rho)
    (r7226 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7226 rho)
    (r7227 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7227 rho)
    (r7228 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7228 rho)
    (tail : next (rho 7201) (rho 7206) (rho 7211) (rho 7216)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg3 (rho 7193) (rho 7196) (rho 7201) (rho 7206) (rho 7211) next := by
  exact ⟨rho 7212, rho 7213, rho 7214, rho 7215, rho 7216, r7224, r7225, r7226, r7227, r7228, tail⟩

theorem template_scp_node19_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7229 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7229 rho)
    (r7230 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7230 rho)
    (r7231 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7231 rho)
    (r7232 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7232 rho)
    (r7233 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7233 rho)
    (tail : next (rho 7201) (rho 7206) (rho 7211) (rho 7216) (rho 7221)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg4 (rho 7201) (rho 7206) (rho 7211) (rho 7216) next := by
  exact ⟨rho 7217, rho 7218, rho 7219, rho 7220, rho 7221, r7229, r7230, r7231, r7232, r7233, tail⟩

theorem template_scp_node19_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7234 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7234 rho)
    (r7235 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7235 rho)
    (r7236 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7236 rho)
    (r7237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7237 rho)
    (r7238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7238 rho)
    (tail : next (rho 7201) (rho 7206) (rho 7211) (rho 7216) (rho 7221) (rho 7226)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg5 (rho 7201) (rho 7206) (rho 7211) (rho 7216) (rho 7221) next := by
  exact ⟨rho 7222, rho 7223, rho 7224, rho 7225, rho 7226, r7234, r7235, r7236, r7237, r7238, tail⟩

theorem template_scp_node19_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7239 rho)
    (r7240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7240 rho)
    (r7241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7241 rho)
    (r7242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7242 rho)
    (r7243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7243 rho)
    (tail : next (rho 7201) (rho 7206) (rho 7211) (rho 7216) (rho 7221) (rho 7226) (rho 7231)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg6 (rho 7201) (rho 7206) (rho 7211) (rho 7216) (rho 7221) (rho 7226) next := by
  exact ⟨rho 7227, rho 7228, rho 7229, rho 7230, rho 7231, r7239, r7240, r7241, r7242, r7243, tail⟩

theorem template_scp_node19_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7244 rho)
    (r7245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7245 rho)
    (r7246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7246 rho)
    (r7247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7247 rho)
    (r7248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7248 rho)
    (tail : next (rho 7201) (rho 7206) (rho 7211) (rho 7216) (rho 7221) (rho 7226) (rho 7231) (rho 7236)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg7 (rho 7201) (rho 7206) (rho 7211) (rho 7216) (rho 7221) (rho 7226) (rho 7231) next := by
  exact ⟨rho 7232, rho 7233, rho 7234, rho 7235, rho 7236, r7244, r7245, r7246, r7247, r7248, tail⟩

theorem template_scp_node19_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7249 rho)
    (r7250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7250 rho)
    (r7251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7251 rho)
    (r7252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7252 rho)
    (r7253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7253 rho)
    (tail : next (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg8 (rho 7201) (rho 7206) (rho 7211) (rho 7216) (rho 7221) (rho 7226) (rho 7231) (rho 7236) next := by
  exact ⟨rho 7237, rho 7238, rho 7239, rho 7240, rho 7241, r7249, r7250, r7251, r7252, r7253, tail⟩

theorem template_scp_node19_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7254 rho)
    (r7255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7255 rho)
    (r7256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7256 rho)
    (r7257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7257 rho)
    (r7258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7258 rho)
    (tail : next (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) (rho 7246)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg9 (rho 7221) (rho 7226) (rho 7231) (rho 7236) (rho 7241) next := by
  exact ⟨rho 7242, rho 7243, rho 7244, rho 7245, rho 7246, r7254, r7255, r7256, r7257, r7258, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
