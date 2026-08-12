import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node16_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6217 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6217 rho)
    (r6218 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6218 rho)
    (r6219 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6219 rho)
    (r6220 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6220 rho)
    (r6221 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6221 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg20 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) next := by
  exact ⟨rho 6207, rho 6208, rho 6209, rho 6210, rho 6211, r6217, r6218, r6219, r6220, r6221, tail⟩

theorem template_scp_node16_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6222 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6222 rho)
    (r6223 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6223 rho)
    (r6224 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6224 rho)
    (r6225 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6225 rho)
    (r6226 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6226 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg21 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) next := by
  exact ⟨rho 6212, rho 6213, rho 6214, rho 6215, rho 6216, r6222, r6223, r6224, r6225, r6226, tail⟩

theorem template_scp_node16_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6227 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6227 rho)
    (r6228 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6228 rho)
    (r6229 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6229 rho)
    (r6230 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6230 rho)
    (r6231 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6231 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg22 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) next := by
  exact ⟨rho 6217, rho 6218, rho 6219, rho 6220, rho 6221, r6227, r6228, r6229, r6230, r6231, tail⟩

theorem template_scp_node16_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r6232 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6232 rho)
    (r6233 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6233 rho)
    (r6234 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6234 rho)
    (r6235 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6235 rho)
    (r6236 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6236 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg23 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) next := by
  exact ⟨rho 6222, rho 6223, rho 6224, rho 6225, rho 6226, r6232, r6233, r6234, r6235, r6236, tail⟩

theorem template_scp_node16_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6237 rho)
    (r6238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6238 rho)
    (r6239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6239 rho)
    (r6240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6240 rho)
    (r6241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6241 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg24 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) next := by
  exact ⟨rho 6227, rho 6228, rho 6229, rho 6230, rho 6231, r6237, r6238, r6239, r6240, r6241, tail⟩

theorem template_scp_node16_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6242 rho)
    (r6243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6243 rho)
    (r6244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6244 rho)
    (r6245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6245 rho)
    (r6246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6246 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg25 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) next := by
  exact ⟨rho 6232, rho 6233, rho 6234, rho 6235, rho 6236, r6242, r6243, r6244, r6245, r6246, tail⟩

theorem template_scp_node16_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6247 rho)
    (r6248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6248 rho)
    (r6249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6249 rho)
    (r6250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6250 rho)
    (r6251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6251 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236) (rho 6241)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg26 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236) next := by
  exact ⟨rho 6237, rho 6238, rho 6239, rho 6240, rho 6241, r6247, r6248, r6249, r6250, r6251, tail⟩

theorem template_scp_node16_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6252 rho)
    (r6253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6253 rho)
    (r6254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6254 rho)
    (r6255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6255 rho)
    (r6256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6256 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236) (rho 6241) (rho 6246)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg27 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236) (rho 6241) next := by
  exact ⟨rho 6242, rho 6243, rho 6244, rho 6245, rho 6246, r6252, r6253, r6254, r6255, r6256, tail⟩

theorem template_scp_node16_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6257 rho)
    (r6258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6258 rho)
    (r6259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6259 rho)
    (r6260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6260 rho)
    (r6261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6261 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236) (rho 6241) (rho 6246) (rho 6251)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg28 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236) (rho 6241) (rho 6246) next := by
  exact ⟨rho 6247, rho 6248, rho 6249, rho 6250, rho 6251, r6257, r6258, r6259, r6260, r6261, tail⟩

theorem template_scp_node16_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6262 rho)
    (r6263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6263 rho)
    (r6264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6264 rho)
    (r6265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6265 rho)
    (r6266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6266 rho)
    (tail : next (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236) (rho 6241) (rho 6246) (rho 6251) (rho 6256)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg29 (rho 6181) (rho 6186) (rho 6191) (rho 6196) (rho 6201) (rho 6206) (rho 6211) (rho 6216) (rho 6221) (rho 6226) (rho 6231) (rho 6236) (rho 6241) (rho 6246) (rho 6251) next := by
  exact ⟨rho 6252, rho 6253, rho 6254, rho 6255, rho 6256, r6262, r6263, r6264, r6265, r6266, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
