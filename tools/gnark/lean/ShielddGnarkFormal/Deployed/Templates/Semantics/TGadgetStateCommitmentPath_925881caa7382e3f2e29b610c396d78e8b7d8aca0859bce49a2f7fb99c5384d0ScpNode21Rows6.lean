import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node21_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8237 rho)
    (r8238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8238 rho)
    (r8239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8239 rho)
    (r8240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8240 rho)
    (r8241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8241 rho)
    (tail : next (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) (rho 8227)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg60 (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) next := by
  exact ⟨rho 8223, rho 8224, rho 8225, rho 8226, rho 8227, r8237, r8238, r8239, r8240, r8241, tail⟩

theorem template_scp_node21_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8242 rho)
    (r8243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8243 rho)
    (r8244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8244 rho)
    (r8245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8245 rho)
    (r8246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8246 rho)
    (tail : next (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) (rho 8227) (rho 8232)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg61 (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) (rho 8227) next := by
  exact ⟨rho 8228, rho 8229, rho 8230, rho 8231, rho 8232, r8242, r8243, r8244, r8245, r8246, tail⟩

theorem template_scp_node21_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8247 rho)
    (r8248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8248 rho)
    (r8249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8249 rho)
    (r8250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8250 rho)
    (r8251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8251 rho)
    (tail : next (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) (rho 8227) (rho 8232) (rho 8237)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg62 (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) (rho 8227) (rho 8232) next := by
  exact ⟨rho 8233, rho 8234, rho 8235, rho 8236, rho 8237, r8247, r8248, r8249, r8250, r8251, tail⟩

theorem template_scp_node21_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8252 rho)
    (r8253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8253 rho)
    (r8254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8254 rho)
    (r8255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8255 rho)
    (r8256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8256 rho)
    (tail : next (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) (rho 8227) (rho 8232) (rho 8237) (rho 8242)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg63 (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) (rho 8227) (rho 8232) (rho 8237) next := by
  exact ⟨rho 8238, rho 8239, rho 8240, rho 8241, rho 8242, r8252, r8253, r8254, r8255, r8256, tail⟩

theorem template_scp_node21_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8257 rho)
    (r8258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8258 rho)
    (r8259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8259 rho)
    (r8260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8260 rho)
    (r8261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8261 rho)
    (tail : next (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg64 (rho 8202) (rho 8207) (rho 8212) (rho 8217) (rho 8222) (rho 8227) (rho 8232) (rho 8237) (rho 8242) next := by
  exact ⟨rho 8243, rho 8244, rho 8245, rho 8246, rho 8247, r8257, r8258, r8259, r8260, r8261, tail⟩

theorem template_scp_node21_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8262 rho)
    (r8263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8263 rho)
    (r8264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8264 rho)
    (r8265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8265 rho)
    (r8266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8266 rho)
    (tail : next (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) (rho 8252)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg65 (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) next := by
  exact ⟨rho 8248, rho 8249, rho 8250, rho 8251, rho 8252, r8262, r8263, r8264, r8265, r8266, tail⟩

theorem template_scp_node21_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8267 rho)
    (r8268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8268 rho)
    (r8269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8269 rho)
    (r8270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8270 rho)
    (r8271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8271 rho)
    (tail : next (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) (rho 8252) (rho 8257)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg66 (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) (rho 8252) next := by
  exact ⟨rho 8253, rho 8254, rho 8255, rho 8256, rho 8257, r8267, r8268, r8269, r8270, r8271, tail⟩

theorem template_scp_node21_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8272 rho)
    (r8273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8273 rho)
    (r8274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8274 rho)
    (r8275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8275 rho)
    (r8276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8276 rho)
    (tail : next (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) (rho 8252) (rho 8257) (rho 8262)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg67 (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) (rho 8252) (rho 8257) next := by
  exact ⟨rho 8258, rho 8259, rho 8260, rho 8261, rho 8262, r8272, r8273, r8274, r8275, r8276, tail⟩

theorem template_scp_node21_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8277 rho)
    (r8278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8278 rho)
    (r8279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8279 rho)
    (r8280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8280 rho)
    (r8281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8281 rho)
    (tail : next (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) (rho 8252) (rho 8257) (rho 8262) (rho 8267)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg68 (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) (rho 8252) (rho 8257) (rho 8262) next := by
  exact ⟨rho 8263, rho 8264, rho 8265, rho 8266, rho 8267, r8277, r8278, r8279, r8280, r8281, tail⟩

theorem template_scp_node21_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8282 rho)
    (r8283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8283 rho)
    (r8284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8284 rho)
    (r8285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8285 rho)
    (r8286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8286 rho)
    (tail : next (rho 8252) (rho 8257) (rho 8262) (rho 8267) (rho 8272)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg69 (rho 8227) (rho 8232) (rho 8237) (rho 8242) (rho 8247) (rho 8252) (rho 8257) (rho 8262) (rho 8267) next := by
  exact ⟨rho 8268, rho 8269, rho 8270, rho 8271, rho 8272, r8282, r8283, r8284, r8285, r8286, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
