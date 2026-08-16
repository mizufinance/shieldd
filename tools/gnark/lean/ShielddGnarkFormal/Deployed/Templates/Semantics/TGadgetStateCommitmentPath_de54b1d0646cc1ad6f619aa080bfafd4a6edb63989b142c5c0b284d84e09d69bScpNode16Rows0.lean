import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node16_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6117 rho)
    (r6118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6118 rho)
    (r6119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6119 rho)
    (r6120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6120 rho)
    (r6121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6121 rho)
    (tail : next (rho 6100) (rho 6103) (rho 6101) (rho 6102) (rho 6104) (rho 6105) (rho 6106) (rho 6111)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg0 (rho 6098) (rho 6100) (rho 6103) (rho 6099) (rho 6101) (rho 6102) (rho 6104) (rho 6105) (rho 6106) next := by
  exact ⟨rho 6107, rho 6108, rho 6109, rho 6110, rho 6111, r6117, r6118, r6119, r6120, r6121, tail⟩

theorem template_scp_node16_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6122 rho)
    (r6123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6123 rho)
    (r6124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6124 rho)
    (r6125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6125 rho)
    (r6126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6126 rho)
    (tail : next (rho 6100) (rho 6103) (rho 6104) (rho 6105) (rho 6106) (rho 6111) (rho 6116)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg1 (rho 6100) (rho 6103) (rho 6101) (rho 6102) (rho 6104) (rho 6105) (rho 6106) (rho 6111) next := by
  exact ⟨rho 6112, rho 6113, rho 6114, rho 6115, rho 6116, r6122, r6123, r6124, r6125, r6126, tail⟩

theorem template_scp_node16_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6127 rho)
    (r6128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6128 rho)
    (r6129 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6129 rho)
    (r6130 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6130 rho)
    (r6131 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6131 rho)
    (tail : next (rho 6103) (rho 6106) (rho 6111) (rho 6116) (rho 6121)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg2 (rho 6100) (rho 6103) (rho 6104) (rho 6105) (rho 6106) (rho 6111) (rho 6116) next := by
  exact ⟨rho 6117, rho 6118, rho 6119, rho 6120, rho 6121, r6127, r6128, r6129, r6130, r6131, tail⟩

theorem template_scp_node16_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r6132 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6132 rho)
    (r6133 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6133 rho)
    (r6134 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6134 rho)
    (r6135 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6135 rho)
    (r6136 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6136 rho)
    (tail : next (rho 6111) (rho 6116) (rho 6121) (rho 6126)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg3 (rho 6103) (rho 6106) (rho 6111) (rho 6116) (rho 6121) next := by
  exact ⟨rho 6122, rho 6123, rho 6124, rho 6125, rho 6126, r6132, r6133, r6134, r6135, r6136, tail⟩

theorem template_scp_node16_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6137 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6137 rho)
    (r6138 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6138 rho)
    (r6139 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6139 rho)
    (r6140 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6140 rho)
    (r6141 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6141 rho)
    (tail : next (rho 6111) (rho 6116) (rho 6121) (rho 6126) (rho 6131)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg4 (rho 6111) (rho 6116) (rho 6121) (rho 6126) next := by
  exact ⟨rho 6127, rho 6128, rho 6129, rho 6130, rho 6131, r6137, r6138, r6139, r6140, r6141, tail⟩

theorem template_scp_node16_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6142 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6142 rho)
    (r6143 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6143 rho)
    (r6144 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6144 rho)
    (r6145 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6145 rho)
    (r6146 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6146 rho)
    (tail : next (rho 6111) (rho 6116) (rho 6121) (rho 6126) (rho 6131) (rho 6136)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg5 (rho 6111) (rho 6116) (rho 6121) (rho 6126) (rho 6131) next := by
  exact ⟨rho 6132, rho 6133, rho 6134, rho 6135, rho 6136, r6142, r6143, r6144, r6145, r6146, tail⟩

theorem template_scp_node16_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6147 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6147 rho)
    (r6148 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6148 rho)
    (r6149 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6149 rho)
    (r6150 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6150 rho)
    (r6151 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6151 rho)
    (tail : next (rho 6111) (rho 6116) (rho 6121) (rho 6126) (rho 6131) (rho 6136) (rho 6141)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg6 (rho 6111) (rho 6116) (rho 6121) (rho 6126) (rho 6131) (rho 6136) next := by
  exact ⟨rho 6137, rho 6138, rho 6139, rho 6140, rho 6141, r6147, r6148, r6149, r6150, r6151, tail⟩

theorem template_scp_node16_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6152 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6152 rho)
    (r6153 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6153 rho)
    (r6154 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6154 rho)
    (r6155 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6155 rho)
    (r6156 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6156 rho)
    (tail : next (rho 6111) (rho 6116) (rho 6121) (rho 6126) (rho 6131) (rho 6136) (rho 6141) (rho 6146)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg7 (rho 6111) (rho 6116) (rho 6121) (rho 6126) (rho 6131) (rho 6136) (rho 6141) next := by
  exact ⟨rho 6142, rho 6143, rho 6144, rho 6145, rho 6146, r6152, r6153, r6154, r6155, r6156, tail⟩

theorem template_scp_node16_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6157 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6157 rho)
    (r6158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6158 rho)
    (r6159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6159 rho)
    (r6160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6160 rho)
    (r6161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6161 rho)
    (tail : next (rho 6131) (rho 6136) (rho 6141) (rho 6146) (rho 6151)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg8 (rho 6111) (rho 6116) (rho 6121) (rho 6126) (rho 6131) (rho 6136) (rho 6141) (rho 6146) next := by
  exact ⟨rho 6147, rho 6148, rho 6149, rho 6150, rho 6151, r6157, r6158, r6159, r6160, r6161, tail⟩

theorem template_scp_node16_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6162 rho)
    (r6163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6163 rho)
    (r6164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6164 rho)
    (r6165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6165 rho)
    (r6166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6166 rho)
    (tail : next (rho 6131) (rho 6136) (rho 6141) (rho 6146) (rho 6151) (rho 6156)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg9 (rho 6131) (rho 6136) (rho 6141) (rho 6146) (rho 6151) next := by
  exact ⟨rho 6152, rho 6153, rho 6154, rho 6155, rho 6156, r6162, r6163, r6164, r6165, r6166, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
