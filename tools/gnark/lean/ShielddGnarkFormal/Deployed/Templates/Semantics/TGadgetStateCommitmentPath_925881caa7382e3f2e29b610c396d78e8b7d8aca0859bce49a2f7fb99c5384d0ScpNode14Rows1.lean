import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node14_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5439 rho)
    (r5440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5440 rho)
    (r5441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5441 rho)
    (r5442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5442 rho)
    (r5443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5443 rho)
    (tail : next (rho 5406) (rho 5411) (rho 5416) (rho 5421) (rho 5426) (rho 5431) (rho 5436)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg10 (rho 5406) (rho 5411) (rho 5416) (rho 5421) (rho 5426) (rho 5431) next := by
  exact ⟨rho 5432, rho 5433, rho 5434, rho 5435, rho 5436, r5439, r5440, r5441, r5442, r5443, tail⟩

theorem template_scp_node14_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5444 rho)
    (r5445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5445 rho)
    (r5446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5446 rho)
    (r5447 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5447 rho)
    (r5448 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5448 rho)
    (tail : next (rho 5406) (rho 5411) (rho 5416) (rho 5421) (rho 5426) (rho 5431) (rho 5436) (rho 5441)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg11 (rho 5406) (rho 5411) (rho 5416) (rho 5421) (rho 5426) (rho 5431) (rho 5436) next := by
  exact ⟨rho 5437, rho 5438, rho 5439, rho 5440, rho 5441, r5444, r5445, r5446, r5447, r5448, tail⟩

theorem template_scp_node14_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5449 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5449 rho)
    (r5450 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5450 rho)
    (r5451 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5451 rho)
    (r5452 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5452 rho)
    (r5453 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5453 rho)
    (tail : next (rho 5406) (rho 5411) (rho 5416) (rho 5421) (rho 5426) (rho 5431) (rho 5436) (rho 5441) (rho 5446)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg12 (rho 5406) (rho 5411) (rho 5416) (rho 5421) (rho 5426) (rho 5431) (rho 5436) (rho 5441) next := by
  exact ⟨rho 5442, rho 5443, rho 5444, rho 5445, rho 5446, r5449, r5450, r5451, r5452, r5453, tail⟩

theorem template_scp_node14_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5454 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5454 rho)
    (r5455 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5455 rho)
    (r5456 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5456 rho)
    (r5457 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5457 rho)
    (r5458 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5458 rho)
    (tail : next (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg13 (rho 5406) (rho 5411) (rho 5416) (rho 5421) (rho 5426) (rho 5431) (rho 5436) (rho 5441) (rho 5446) next := by
  exact ⟨rho 5447, rho 5448, rho 5449, rho 5450, rho 5451, r5454, r5455, r5456, r5457, r5458, tail⟩

theorem template_scp_node14_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5459 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5459 rho)
    (r5460 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5460 rho)
    (r5461 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5461 rho)
    (r5462 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5462 rho)
    (r5463 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5463 rho)
    (tail : next (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) (rho 5456)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg14 (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) next := by
  exact ⟨rho 5452, rho 5453, rho 5454, rho 5455, rho 5456, r5459, r5460, r5461, r5462, r5463, tail⟩

theorem template_scp_node14_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5464 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5464 rho)
    (r5465 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5465 rho)
    (r5466 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5466 rho)
    (r5467 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5467 rho)
    (r5468 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5468 rho)
    (tail : next (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) (rho 5456) (rho 5461)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg15 (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) (rho 5456) next := by
  exact ⟨rho 5457, rho 5458, rho 5459, rho 5460, rho 5461, r5464, r5465, r5466, r5467, r5468, tail⟩

theorem template_scp_node14_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5469 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5469 rho)
    (r5470 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5470 rho)
    (r5471 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5471 rho)
    (r5472 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5472 rho)
    (r5473 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5473 rho)
    (tail : next (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) (rho 5456) (rho 5461) (rho 5466)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg16 (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) (rho 5456) (rho 5461) next := by
  exact ⟨rho 5462, rho 5463, rho 5464, rho 5465, rho 5466, r5469, r5470, r5471, r5472, r5473, tail⟩

theorem template_scp_node14_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5474 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5474 rho)
    (r5475 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5475 rho)
    (r5476 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5476 rho)
    (r5477 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5477 rho)
    (r5478 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5478 rho)
    (tail : next (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) (rho 5456) (rho 5461) (rho 5466) (rho 5471)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg17 (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) (rho 5456) (rho 5461) (rho 5466) next := by
  exact ⟨rho 5467, rho 5468, rho 5469, rho 5470, rho 5471, r5474, r5475, r5476, r5477, r5478, tail⟩

theorem template_scp_node14_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5479 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5479 rho)
    (r5480 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5480 rho)
    (r5481 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5481 rho)
    (r5482 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5482 rho)
    (r5483 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5483 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg18 (rho 5431) (rho 5436) (rho 5441) (rho 5446) (rho 5451) (rho 5456) (rho 5461) (rho 5466) (rho 5471) next := by
  exact ⟨rho 5472, rho 5473, rho 5474, rho 5475, rho 5476, r5479, r5480, r5481, r5482, r5483, tail⟩

theorem template_scp_node14_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5484 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5484 rho)
    (r5485 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5485 rho)
    (r5486 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5486 rho)
    (r5487 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5487 rho)
    (r5488 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5488 rho)
    (tail : next (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) (rho 5481)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg19 (rho 5456) (rho 5461) (rho 5466) (rho 5471) (rho 5476) next := by
  exact ⟨rho 5477, rho 5478, rho 5479, rho 5480, rho 5481, r5484, r5485, r5486, r5487, r5488, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
