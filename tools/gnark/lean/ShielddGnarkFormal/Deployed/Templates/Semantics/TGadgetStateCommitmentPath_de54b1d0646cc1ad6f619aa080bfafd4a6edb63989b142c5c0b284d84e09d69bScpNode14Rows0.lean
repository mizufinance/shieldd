import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node14_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5389 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5389 rho)
    (r5390 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5390 rho)
    (r5391 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5391 rho)
    (r5392 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5392 rho)
    (r5393 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5393 rho)
    (tail : next (rho 5374) (rho 5377) (rho 5375) (rho 5376) (rho 5378) (rho 5379) (rho 5380) (rho 5385)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg0 (rho 5372) (rho 5374) (rho 5377) (rho 5373) (rho 5375) (rho 5376) (rho 5378) (rho 5379) (rho 5380) next := by
  exact ⟨rho 5381, rho 5382, rho 5383, rho 5384, rho 5385, r5389, r5390, r5391, r5392, r5393, tail⟩

theorem template_scp_node14_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5394 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5394 rho)
    (r5395 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5395 rho)
    (r5396 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5396 rho)
    (r5397 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5397 rho)
    (r5398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5398 rho)
    (tail : next (rho 5374) (rho 5377) (rho 5378) (rho 5379) (rho 5380) (rho 5385) (rho 5390)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg1 (rho 5374) (rho 5377) (rho 5375) (rho 5376) (rho 5378) (rho 5379) (rho 5380) (rho 5385) next := by
  exact ⟨rho 5386, rho 5387, rho 5388, rho 5389, rho 5390, r5394, r5395, r5396, r5397, r5398, tail⟩

theorem template_scp_node14_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5399 rho)
    (r5400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5400 rho)
    (r5401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5401 rho)
    (r5402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5402 rho)
    (r5403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5403 rho)
    (tail : next (rho 5377) (rho 5380) (rho 5385) (rho 5390) (rho 5395)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg2 (rho 5374) (rho 5377) (rho 5378) (rho 5379) (rho 5380) (rho 5385) (rho 5390) next := by
  exact ⟨rho 5391, rho 5392, rho 5393, rho 5394, rho 5395, r5399, r5400, r5401, r5402, r5403, tail⟩

theorem template_scp_node14_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r5404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5404 rho)
    (r5405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5405 rho)
    (r5406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5406 rho)
    (r5407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5407 rho)
    (r5408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5408 rho)
    (tail : next (rho 5385) (rho 5390) (rho 5395) (rho 5400)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg3 (rho 5377) (rho 5380) (rho 5385) (rho 5390) (rho 5395) next := by
  exact ⟨rho 5396, rho 5397, rho 5398, rho 5399, rho 5400, r5404, r5405, r5406, r5407, r5408, tail⟩

theorem template_scp_node14_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5409 rho)
    (r5410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5410 rho)
    (r5411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5411 rho)
    (r5412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5412 rho)
    (r5413 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5413 rho)
    (tail : next (rho 5385) (rho 5390) (rho 5395) (rho 5400) (rho 5405)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg4 (rho 5385) (rho 5390) (rho 5395) (rho 5400) next := by
  exact ⟨rho 5401, rho 5402, rho 5403, rho 5404, rho 5405, r5409, r5410, r5411, r5412, r5413, tail⟩

theorem template_scp_node14_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5414 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5414 rho)
    (r5415 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5415 rho)
    (r5416 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5416 rho)
    (r5417 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5417 rho)
    (r5418 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5418 rho)
    (tail : next (rho 5385) (rho 5390) (rho 5395) (rho 5400) (rho 5405) (rho 5410)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg5 (rho 5385) (rho 5390) (rho 5395) (rho 5400) (rho 5405) next := by
  exact ⟨rho 5406, rho 5407, rho 5408, rho 5409, rho 5410, r5414, r5415, r5416, r5417, r5418, tail⟩

theorem template_scp_node14_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5419 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5419 rho)
    (r5420 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5420 rho)
    (r5421 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5421 rho)
    (r5422 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5422 rho)
    (r5423 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5423 rho)
    (tail : next (rho 5385) (rho 5390) (rho 5395) (rho 5400) (rho 5405) (rho 5410) (rho 5415)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg6 (rho 5385) (rho 5390) (rho 5395) (rho 5400) (rho 5405) (rho 5410) next := by
  exact ⟨rho 5411, rho 5412, rho 5413, rho 5414, rho 5415, r5419, r5420, r5421, r5422, r5423, tail⟩

theorem template_scp_node14_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5424 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5424 rho)
    (r5425 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5425 rho)
    (r5426 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5426 rho)
    (r5427 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5427 rho)
    (r5428 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5428 rho)
    (tail : next (rho 5385) (rho 5390) (rho 5395) (rho 5400) (rho 5405) (rho 5410) (rho 5415) (rho 5420)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg7 (rho 5385) (rho 5390) (rho 5395) (rho 5400) (rho 5405) (rho 5410) (rho 5415) next := by
  exact ⟨rho 5416, rho 5417, rho 5418, rho 5419, rho 5420, r5424, r5425, r5426, r5427, r5428, tail⟩

theorem template_scp_node14_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5429 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5429 rho)
    (r5430 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5430 rho)
    (r5431 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5431 rho)
    (r5432 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5432 rho)
    (r5433 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5433 rho)
    (tail : next (rho 5405) (rho 5410) (rho 5415) (rho 5420) (rho 5425)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg8 (rho 5385) (rho 5390) (rho 5395) (rho 5400) (rho 5405) (rho 5410) (rho 5415) (rho 5420) next := by
  exact ⟨rho 5421, rho 5422, rho 5423, rho 5424, rho 5425, r5429, r5430, r5431, r5432, r5433, tail⟩

theorem template_scp_node14_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5434 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5434 rho)
    (r5435 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5435 rho)
    (r5436 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5436 rho)
    (r5437 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5437 rho)
    (r5438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5438 rho)
    (tail : next (rho 5405) (rho 5410) (rho 5415) (rho 5420) (rho 5425) (rho 5430)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg9 (rho 5405) (rho 5410) (rho 5415) (rho 5420) (rho 5425) next := by
  exact ⟨rho 5426, rho 5427, rho 5428, rho 5429, rho 5430, r5434, r5435, r5436, r5437, r5438, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
