import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node0_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r393 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow393 rho)
    (r394 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow394 rho)
    (r395 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow395 rho)
    (r396 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow396 rho)
    (r397 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow397 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg20 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) next := by
  exact ⟨rho 400, rho 401, rho 402, rho 403, rho 404, r393, r394, r395, r396, r397, tail⟩

theorem template_scp_node0_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow398 rho)
    (r399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow399 rho)
    (r400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow400 rho)
    (r401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow401 rho)
    (r402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow402 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg21 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) next := by
  exact ⟨rho 405, rho 406, rho 407, rho 408, rho 409, r398, r399, r400, r401, r402, tail⟩

theorem template_scp_node0_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow403 rho)
    (r404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow404 rho)
    (r405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow405 rho)
    (r406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow406 rho)
    (r407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow407 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg22 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) next := by
  exact ⟨rho 410, rho 411, rho 412, rho 413, rho 414, r403, r404, r405, r406, r407, tail⟩

theorem template_scp_node0_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow408 rho)
    (r409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow409 rho)
    (r410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow410 rho)
    (r411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow411 rho)
    (r412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow412 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg23 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) next := by
  exact ⟨rho 415, rho 416, rho 417, rho 418, rho 419, r408, r409, r410, r411, r412, tail⟩

theorem template_scp_node0_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r413 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow413 rho)
    (r414 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow414 rho)
    (r415 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow415 rho)
    (r416 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow416 rho)
    (r417 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow417 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg24 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) next := by
  exact ⟨rho 420, rho 421, rho 422, rho 423, rho 424, r413, r414, r415, r416, r417, tail⟩

theorem template_scp_node0_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r418 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow418 rho)
    (r419 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow419 rho)
    (r420 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow420 rho)
    (r421 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow421 rho)
    (r422 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow422 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg25 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) next := by
  exact ⟨rho 425, rho 426, rho 427, rho 428, rho 429, r418, r419, r420, r421, r422, tail⟩

theorem template_scp_node0_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r423 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow423 rho)
    (r424 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow424 rho)
    (r425 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow425 rho)
    (r426 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow426 rho)
    (r427 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow427 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg26 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) next := by
  exact ⟨rho 430, rho 431, rho 432, rho 433, rho 434, r423, r424, r425, r426, r427, tail⟩

theorem template_scp_node0_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r428 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow428 rho)
    (r429 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow429 rho)
    (r430 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow430 rho)
    (r431 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow431 rho)
    (r432 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow432 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg27 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) next := by
  exact ⟨rho 435, rho 436, rho 437, rho 438, rho 439, r428, r429, r430, r431, r432, tail⟩

theorem template_scp_node0_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r433 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow433 rho)
    (r434 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow434 rho)
    (r435 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow435 rho)
    (r436 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow436 rho)
    (r437 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow437 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg28 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) next := by
  exact ⟨rho 440, rho 441, rho 442, rho 443, rho 444, r433, r434, r435, r436, r437, tail⟩

theorem template_scp_node0_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow438 rho)
    (r439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow439 rho)
    (r440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow440 rho)
    (r441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow441 rho)
    (r442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow442 rho)
    (tail : next (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.seg29 (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) next := by
  exact ⟨rho 445, rho 446, rho 447, rho 448, rho 449, r438, r439, r440, r441, r442, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
