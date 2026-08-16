import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node17_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6481 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6481 rho)
    (r6482 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6482 rho)
    (r6483 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6483 rho)
    (r6484 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6484 rho)
    (r6485 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6485 rho)
    (tail : next (rho 6463) (rho 6466) (rho 6464) (rho 6465) (rho 6467) (rho 6468) (rho 6469) (rho 6474)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg0 (rho 6461) (rho 6463) (rho 6466) (rho 6462) (rho 6464) (rho 6465) (rho 6467) (rho 6468) (rho 6469) next := by
  exact ⟨rho 6470, rho 6471, rho 6472, rho 6473, rho 6474, r6481, r6482, r6483, r6484, r6485, tail⟩

theorem template_scp_node17_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6486 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6486 rho)
    (r6487 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6487 rho)
    (r6488 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6488 rho)
    (r6489 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6489 rho)
    (r6490 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6490 rho)
    (tail : next (rho 6463) (rho 6466) (rho 6467) (rho 6468) (rho 6469) (rho 6474) (rho 6479)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg1 (rho 6463) (rho 6466) (rho 6464) (rho 6465) (rho 6467) (rho 6468) (rho 6469) (rho 6474) next := by
  exact ⟨rho 6475, rho 6476, rho 6477, rho 6478, rho 6479, r6486, r6487, r6488, r6489, r6490, tail⟩

theorem template_scp_node17_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6491 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6491 rho)
    (r6492 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6492 rho)
    (r6493 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6493 rho)
    (r6494 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6494 rho)
    (r6495 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6495 rho)
    (tail : next (rho 6466) (rho 6469) (rho 6474) (rho 6479) (rho 6484)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg2 (rho 6463) (rho 6466) (rho 6467) (rho 6468) (rho 6469) (rho 6474) (rho 6479) next := by
  exact ⟨rho 6480, rho 6481, rho 6482, rho 6483, rho 6484, r6491, r6492, r6493, r6494, r6495, tail⟩

theorem template_scp_node17_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r6496 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6496 rho)
    (r6497 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6497 rho)
    (r6498 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6498 rho)
    (r6499 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6499 rho)
    (r6500 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6500 rho)
    (tail : next (rho 6474) (rho 6479) (rho 6484) (rho 6489)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg3 (rho 6466) (rho 6469) (rho 6474) (rho 6479) (rho 6484) next := by
  exact ⟨rho 6485, rho 6486, rho 6487, rho 6488, rho 6489, r6496, r6497, r6498, r6499, r6500, tail⟩

theorem template_scp_node17_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6501 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6501 rho)
    (r6502 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6502 rho)
    (r6503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6503 rho)
    (r6504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6504 rho)
    (r6505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6505 rho)
    (tail : next (rho 6474) (rho 6479) (rho 6484) (rho 6489) (rho 6494)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg4 (rho 6474) (rho 6479) (rho 6484) (rho 6489) next := by
  exact ⟨rho 6490, rho 6491, rho 6492, rho 6493, rho 6494, r6501, r6502, r6503, r6504, r6505, tail⟩

theorem template_scp_node17_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6506 rho)
    (r6507 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6507 rho)
    (r6508 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6508 rho)
    (r6509 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6509 rho)
    (r6510 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6510 rho)
    (tail : next (rho 6474) (rho 6479) (rho 6484) (rho 6489) (rho 6494) (rho 6499)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg5 (rho 6474) (rho 6479) (rho 6484) (rho 6489) (rho 6494) next := by
  exact ⟨rho 6495, rho 6496, rho 6497, rho 6498, rho 6499, r6506, r6507, r6508, r6509, r6510, tail⟩

theorem template_scp_node17_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6511 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6511 rho)
    (r6512 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6512 rho)
    (r6513 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6513 rho)
    (r6514 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6514 rho)
    (r6515 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6515 rho)
    (tail : next (rho 6474) (rho 6479) (rho 6484) (rho 6489) (rho 6494) (rho 6499) (rho 6504)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg6 (rho 6474) (rho 6479) (rho 6484) (rho 6489) (rho 6494) (rho 6499) next := by
  exact ⟨rho 6500, rho 6501, rho 6502, rho 6503, rho 6504, r6511, r6512, r6513, r6514, r6515, tail⟩

theorem template_scp_node17_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6516 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6516 rho)
    (r6517 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6517 rho)
    (r6518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6518 rho)
    (r6519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6519 rho)
    (r6520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6520 rho)
    (tail : next (rho 6474) (rho 6479) (rho 6484) (rho 6489) (rho 6494) (rho 6499) (rho 6504) (rho 6509)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg7 (rho 6474) (rho 6479) (rho 6484) (rho 6489) (rho 6494) (rho 6499) (rho 6504) next := by
  exact ⟨rho 6505, rho 6506, rho 6507, rho 6508, rho 6509, r6516, r6517, r6518, r6519, r6520, tail⟩

theorem template_scp_node17_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6521 rho)
    (r6522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6522 rho)
    (r6523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6523 rho)
    (r6524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6524 rho)
    (r6525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6525 rho)
    (tail : next (rho 6494) (rho 6499) (rho 6504) (rho 6509) (rho 6514)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg8 (rho 6474) (rho 6479) (rho 6484) (rho 6489) (rho 6494) (rho 6499) (rho 6504) (rho 6509) next := by
  exact ⟨rho 6510, rho 6511, rho 6512, rho 6513, rho 6514, r6521, r6522, r6523, r6524, r6525, tail⟩

theorem template_scp_node17_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6526 rho)
    (r6527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6527 rho)
    (r6528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6528 rho)
    (r6529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6529 rho)
    (r6530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6530 rho)
    (tail : next (rho 6494) (rho 6499) (rho 6504) (rho 6509) (rho 6514) (rho 6519)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg9 (rho 6494) (rho 6499) (rho 6504) (rho 6509) (rho 6514) next := by
  exact ⟨rho 6515, rho 6516, rho 6517, rho 6518, rho 6519, r6526, r6527, r6528, r6529, r6530, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
