import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node16_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6417 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6417 rho)
    (r6418 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6418 rho)
    (r6419 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6419 rho)
    (r6420 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6420 rho)
    (r6421 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6421 rho)
    (tail : next (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) (rho 6412)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg60 (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) next := by
  exact ⟨rho 6408, rho 6409, rho 6410, rho 6411, rho 6412, r6417, r6418, r6419, r6420, r6421, tail⟩

theorem template_scp_node16_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6422 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6422 rho)
    (r6423 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6423 rho)
    (r6424 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6424 rho)
    (r6425 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6425 rho)
    (r6426 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6426 rho)
    (tail : next (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) (rho 6412) (rho 6417)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg61 (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) (rho 6412) next := by
  exact ⟨rho 6413, rho 6414, rho 6415, rho 6416, rho 6417, r6422, r6423, r6424, r6425, r6426, tail⟩

theorem template_scp_node16_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6427 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6427 rho)
    (r6428 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6428 rho)
    (r6429 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6429 rho)
    (r6430 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6430 rho)
    (r6431 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6431 rho)
    (tail : next (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) (rho 6412) (rho 6417) (rho 6422)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg62 (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) (rho 6412) (rho 6417) next := by
  exact ⟨rho 6418, rho 6419, rho 6420, rho 6421, rho 6422, r6427, r6428, r6429, r6430, r6431, tail⟩

theorem template_scp_node16_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6432 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6432 rho)
    (r6433 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6433 rho)
    (r6434 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6434 rho)
    (r6435 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6435 rho)
    (r6436 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6436 rho)
    (tail : next (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) (rho 6412) (rho 6417) (rho 6422) (rho 6427)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg63 (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) (rho 6412) (rho 6417) (rho 6422) next := by
  exact ⟨rho 6423, rho 6424, rho 6425, rho 6426, rho 6427, r6432, r6433, r6434, r6435, r6436, tail⟩

theorem template_scp_node16_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6437 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6437 rho)
    (r6438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6438 rho)
    (r6439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6439 rho)
    (r6440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6440 rho)
    (r6441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6441 rho)
    (tail : next (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg64 (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407) (rho 6412) (rho 6417) (rho 6422) (rho 6427) next := by
  exact ⟨rho 6428, rho 6429, rho 6430, rho 6431, rho 6432, r6437, r6438, r6439, r6440, r6441, tail⟩

theorem template_scp_node16_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6442 rho)
    (r6443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6443 rho)
    (r6444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6444 rho)
    (r6445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6445 rho)
    (r6446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6446 rho)
    (tail : next (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) (rho 6437)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg65 (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) next := by
  exact ⟨rho 6433, rho 6434, rho 6435, rho 6436, rho 6437, r6442, r6443, r6444, r6445, r6446, tail⟩

theorem template_scp_node16_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6447 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6447 rho)
    (r6448 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6448 rho)
    (r6449 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6449 rho)
    (r6450 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6450 rho)
    (r6451 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6451 rho)
    (tail : next (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) (rho 6437) (rho 6442)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg66 (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) (rho 6437) next := by
  exact ⟨rho 6438, rho 6439, rho 6440, rho 6441, rho 6442, r6447, r6448, r6449, r6450, r6451, tail⟩

theorem template_scp_node16_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6452 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6452 rho)
    (r6453 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6453 rho)
    (r6454 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6454 rho)
    (r6455 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6455 rho)
    (r6456 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6456 rho)
    (tail : next (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) (rho 6437) (rho 6442) (rho 6447)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg67 (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) (rho 6437) (rho 6442) next := by
  exact ⟨rho 6443, rho 6444, rho 6445, rho 6446, rho 6447, r6452, r6453, r6454, r6455, r6456, tail⟩

theorem template_scp_node16_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6457 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6457 rho)
    (r6458 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6458 rho)
    (r6459 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6459 rho)
    (r6460 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6460 rho)
    (r6461 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6461 rho)
    (tail : next (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) (rho 6437) (rho 6442) (rho 6447) (rho 6452)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg68 (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) (rho 6437) (rho 6442) (rho 6447) next := by
  exact ⟨rho 6448, rho 6449, rho 6450, rho 6451, rho 6452, r6457, r6458, r6459, r6460, r6461, tail⟩

theorem template_scp_node16_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6462 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6462 rho)
    (r6463 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6463 rho)
    (r6464 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6464 rho)
    (r6465 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6465 rho)
    (r6466 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6466 rho)
    (tail : next (rho 6437) (rho 6442) (rho 6447) (rho 6452) (rho 6457)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg69 (rho 6412) (rho 6417) (rho 6422) (rho 6427) (rho 6432) (rho 6437) (rho 6442) (rho 6447) (rho 6452) next := by
  exact ⟨rho 6453, rho 6454, rho 6455, rho 6456, rho 6457, r6462, r6463, r6464, r6465, r6466, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
