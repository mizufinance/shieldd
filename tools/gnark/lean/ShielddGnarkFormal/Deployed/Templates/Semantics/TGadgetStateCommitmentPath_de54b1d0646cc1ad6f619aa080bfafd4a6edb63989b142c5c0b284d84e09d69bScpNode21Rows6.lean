import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node21_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8237 rho)
    (r8238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8238 rho)
    (r8239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8239 rho)
    (r8240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8240 rho)
    (r8241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8241 rho)
    (tail : next (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) (rho 8226)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg60 (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) next := by
  exact ⟨rho 8222, rho 8223, rho 8224, rho 8225, rho 8226, r8237, r8238, r8239, r8240, r8241, tail⟩

theorem template_scp_node21_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8242 rho)
    (r8243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8243 rho)
    (r8244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8244 rho)
    (r8245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8245 rho)
    (r8246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8246 rho)
    (tail : next (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) (rho 8226) (rho 8231)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg61 (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) (rho 8226) next := by
  exact ⟨rho 8227, rho 8228, rho 8229, rho 8230, rho 8231, r8242, r8243, r8244, r8245, r8246, tail⟩

theorem template_scp_node21_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8247 rho)
    (r8248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8248 rho)
    (r8249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8249 rho)
    (r8250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8250 rho)
    (r8251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8251 rho)
    (tail : next (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) (rho 8226) (rho 8231) (rho 8236)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg62 (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) (rho 8226) (rho 8231) next := by
  exact ⟨rho 8232, rho 8233, rho 8234, rho 8235, rho 8236, r8247, r8248, r8249, r8250, r8251, tail⟩

theorem template_scp_node21_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8252 rho)
    (r8253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8253 rho)
    (r8254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8254 rho)
    (r8255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8255 rho)
    (r8256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8256 rho)
    (tail : next (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) (rho 8226) (rho 8231) (rho 8236) (rho 8241)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg63 (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) (rho 8226) (rho 8231) (rho 8236) next := by
  exact ⟨rho 8237, rho 8238, rho 8239, rho 8240, rho 8241, r8252, r8253, r8254, r8255, r8256, tail⟩

theorem template_scp_node21_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8257 rho)
    (r8258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8258 rho)
    (r8259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8259 rho)
    (r8260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8260 rho)
    (r8261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8261 rho)
    (tail : next (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg64 (rho 8201) (rho 8206) (rho 8211) (rho 8216) (rho 8221) (rho 8226) (rho 8231) (rho 8236) (rho 8241) next := by
  exact ⟨rho 8242, rho 8243, rho 8244, rho 8245, rho 8246, r8257, r8258, r8259, r8260, r8261, tail⟩

theorem template_scp_node21_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8262 rho)
    (r8263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8263 rho)
    (r8264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8264 rho)
    (r8265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8265 rho)
    (r8266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8266 rho)
    (tail : next (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) (rho 8251)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg65 (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) next := by
  exact ⟨rho 8247, rho 8248, rho 8249, rho 8250, rho 8251, r8262, r8263, r8264, r8265, r8266, tail⟩

theorem template_scp_node21_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8267 rho)
    (r8268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8268 rho)
    (r8269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8269 rho)
    (r8270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8270 rho)
    (r8271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8271 rho)
    (tail : next (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) (rho 8251) (rho 8256)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg66 (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) (rho 8251) next := by
  exact ⟨rho 8252, rho 8253, rho 8254, rho 8255, rho 8256, r8267, r8268, r8269, r8270, r8271, tail⟩

theorem template_scp_node21_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8272 rho)
    (r8273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8273 rho)
    (r8274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8274 rho)
    (r8275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8275 rho)
    (r8276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8276 rho)
    (tail : next (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) (rho 8251) (rho 8256) (rho 8261)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg67 (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) (rho 8251) (rho 8256) next := by
  exact ⟨rho 8257, rho 8258, rho 8259, rho 8260, rho 8261, r8272, r8273, r8274, r8275, r8276, tail⟩

theorem template_scp_node21_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8277 rho)
    (r8278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8278 rho)
    (r8279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8279 rho)
    (r8280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8280 rho)
    (r8281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8281 rho)
    (tail : next (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) (rho 8251) (rho 8256) (rho 8261) (rho 8266)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg68 (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) (rho 8251) (rho 8256) (rho 8261) next := by
  exact ⟨rho 8262, rho 8263, rho 8264, rho 8265, rho 8266, r8277, r8278, r8279, r8280, r8281, tail⟩

theorem template_scp_node21_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8282 rho)
    (r8283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8283 rho)
    (r8284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8284 rho)
    (r8285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8285 rho)
    (r8286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8286 rho)
    (tail : next (rho 8251) (rho 8256) (rho 8261) (rho 8266) (rho 8271)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg69 (rho 8226) (rho 8231) (rho 8236) (rho 8241) (rho 8246) (rho 8251) (rho 8256) (rho 8261) (rho 8266) next := by
  exact ⟨rho 8267, rho 8268, rho 8269, rho 8270, rho 8271, r8282, r8283, r8284, r8285, r8286, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
