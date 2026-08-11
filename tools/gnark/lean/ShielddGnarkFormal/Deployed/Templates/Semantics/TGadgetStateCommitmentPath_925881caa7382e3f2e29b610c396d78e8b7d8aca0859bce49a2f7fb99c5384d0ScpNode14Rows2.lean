import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node14_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5489 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5489 rho)
    (r5490 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5490 rho)
    (r5491 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5491 rho)
    (r5492 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5492 rho)
    (r5493 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5493 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg20 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) next := by
  exact ⟨rho 5482, rho 5483, rho 5484, rho 5485, rho 5486, r5489, r5490, r5491, r5492, r5493, tail⟩

theorem template_scp_node14_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5494 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5494 rho)
    (r5495 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5495 rho)
    (r5496 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5496 rho)
    (r5497 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5497 rho)
    (r5498 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5498 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg21 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) next := by
  exact ⟨rho 5487, rho 5488, rho 5489, rho 5490, rho 5491, r5494, r5495, r5496, r5497, r5498, tail⟩

theorem template_scp_node14_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5499 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5499 rho)
    (r5500 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5500 rho)
    (r5501 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5501 rho)
    (r5502 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5502 rho)
    (r5503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5503 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg22 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) next := by
  exact ⟨rho 5492, rho 5493, rho 5494, rho 5495, rho 5496, r5499, r5500, r5501, r5502, r5503, tail⟩

theorem template_scp_node14_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r5504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5504 rho)
    (r5505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5505 rho)
    (r5506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5506 rho)
    (r5507 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5507 rho)
    (r5508 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5508 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg23 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) next := by
  exact ⟨rho 5497, rho 5498, rho 5499, rho 5500, rho 5501, r5504, r5505, r5506, r5507, r5508, tail⟩

theorem template_scp_node14_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5509 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5509 rho)
    (r5510 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5510 rho)
    (r5511 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5511 rho)
    (r5512 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5512 rho)
    (r5513 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5513 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg24 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) next := by
  exact ⟨rho 5502, rho 5503, rho 5504, rho 5505, rho 5506, r5509, r5510, r5511, r5512, r5513, tail⟩

theorem template_scp_node14_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5514 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5514 rho)
    (r5515 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5515 rho)
    (r5516 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5516 rho)
    (r5517 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5517 rho)
    (r5518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5518 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg25 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) next := by
  exact ⟨rho 5507, rho 5508, rho 5509, rho 5510, rho 5511, r5514, r5515, r5516, r5517, r5518, tail⟩

theorem template_scp_node14_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5519 rho)
    (r5520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5520 rho)
    (r5521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5521 rho)
    (r5522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5522 rho)
    (r5523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5523 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg26 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) next := by
  exact ⟨rho 5512, rho 5513, rho 5514, rho 5515, rho 5516, r5519, r5520, r5521, r5522, r5523, tail⟩

theorem template_scp_node14_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5524 rho)
    (r5525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5525 rho)
    (r5526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5526 rho)
    (r5527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5527 rho)
    (r5528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5528 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg27 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) next := by
  exact ⟨rho 5517, rho 5518, rho 5519, rho 5520, rho 5521, r5524, r5525, r5526, r5527, r5528, tail⟩

theorem template_scp_node14_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5529 rho)
    (r5530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5530 rho)
    (r5531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5531 rho)
    (r5532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5532 rho)
    (r5533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5533 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg28 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) next := by
  exact ⟨rho 5522, rho 5523, rho 5524, rho 5525, rho 5526, r5529, r5530, r5531, r5532, r5533, tail⟩

theorem template_scp_node14_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5534 rho)
    (r5535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5535 rho)
    (r5536 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5536 rho)
    (r5537 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5537 rho)
    (r5538 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5538 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) (rho 5531)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg29 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481) (rho 5486) (rho 5491) (rho 5496) (rho 5501) (rho 5506) (rho 5511) (rho 5516) (rho 5521) (rho 5526) next := by
  exact ⟨rho 5527, rho 5528, rho 5529, rho 5530, rho 5531, r5534, r5535, r5536, r5537, r5538, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
