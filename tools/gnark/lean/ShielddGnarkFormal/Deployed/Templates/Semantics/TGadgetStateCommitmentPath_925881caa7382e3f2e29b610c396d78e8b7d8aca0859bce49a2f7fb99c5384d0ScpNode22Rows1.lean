import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node22_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8351 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8351 rho)
    (r8352 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8352 rho)
    (r8353 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8353 rho)
    (r8354 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8354 rho)
    (r8355 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8355 rho)
    (tail : next (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) (rho 8335) (rho 8340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg10 (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) (rho 8335) next := by
  exact ⟨rho 8336, rho 8337, rho 8338, rho 8339, rho 8340, r8351, r8352, r8353, r8354, r8355, tail⟩

theorem template_scp_node22_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8356 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8356 rho)
    (r8357 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8357 rho)
    (r8358 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8358 rho)
    (r8359 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8359 rho)
    (r8360 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8360 rho)
    (tail : next (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) (rho 8335) (rho 8340) (rho 8345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg11 (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) (rho 8335) (rho 8340) next := by
  exact ⟨rho 8341, rho 8342, rho 8343, rho 8344, rho 8345, r8356, r8357, r8358, r8359, r8360, tail⟩

theorem template_scp_node22_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8361 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8361 rho)
    (r8362 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8362 rho)
    (r8363 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8363 rho)
    (r8364 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8364 rho)
    (r8365 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8365 rho)
    (tail : next (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) (rho 8335) (rho 8340) (rho 8345) (rho 8350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg12 (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) (rho 8335) (rho 8340) (rho 8345) next := by
  exact ⟨rho 8346, rho 8347, rho 8348, rho 8349, rho 8350, r8361, r8362, r8363, r8364, r8365, tail⟩

theorem template_scp_node22_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8366 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8366 rho)
    (r8367 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8367 rho)
    (r8368 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8368 rho)
    (r8369 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8369 rho)
    (r8370 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8370 rho)
    (tail : next (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg13 (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) (rho 8335) (rho 8340) (rho 8345) (rho 8350) next := by
  exact ⟨rho 8351, rho 8352, rho 8353, rho 8354, rho 8355, r8366, r8367, r8368, r8369, r8370, tail⟩

theorem template_scp_node22_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8371 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8371 rho)
    (r8372 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8372 rho)
    (r8373 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8373 rho)
    (r8374 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8374 rho)
    (r8375 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8375 rho)
    (tail : next (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) (rho 8360)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg14 (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) next := by
  exact ⟨rho 8356, rho 8357, rho 8358, rho 8359, rho 8360, r8371, r8372, r8373, r8374, r8375, tail⟩

theorem template_scp_node22_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8376 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8376 rho)
    (r8377 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8377 rho)
    (r8378 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8378 rho)
    (r8379 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8379 rho)
    (r8380 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8380 rho)
    (tail : next (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) (rho 8360) (rho 8365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg15 (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) (rho 8360) next := by
  exact ⟨rho 8361, rho 8362, rho 8363, rho 8364, rho 8365, r8376, r8377, r8378, r8379, r8380, tail⟩

theorem template_scp_node22_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8381 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8381 rho)
    (r8382 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8382 rho)
    (r8383 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8383 rho)
    (r8384 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8384 rho)
    (r8385 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8385 rho)
    (tail : next (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) (rho 8360) (rho 8365) (rho 8370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg16 (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) (rho 8360) (rho 8365) next := by
  exact ⟨rho 8366, rho 8367, rho 8368, rho 8369, rho 8370, r8381, r8382, r8383, r8384, r8385, tail⟩

theorem template_scp_node22_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8386 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8386 rho)
    (r8387 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8387 rho)
    (r8388 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8388 rho)
    (r8389 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8389 rho)
    (r8390 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8390 rho)
    (tail : next (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) (rho 8360) (rho 8365) (rho 8370) (rho 8375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg17 (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) (rho 8360) (rho 8365) (rho 8370) next := by
  exact ⟨rho 8371, rho 8372, rho 8373, rho 8374, rho 8375, r8386, r8387, r8388, r8389, r8390, tail⟩

theorem template_scp_node22_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8391 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8391 rho)
    (r8392 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8392 rho)
    (r8393 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8393 rho)
    (r8394 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8394 rho)
    (r8395 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8395 rho)
    (tail : next (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg18 (rho 8335) (rho 8340) (rho 8345) (rho 8350) (rho 8355) (rho 8360) (rho 8365) (rho 8370) (rho 8375) next := by
  exact ⟨rho 8376, rho 8377, rho 8378, rho 8379, rho 8380, r8391, r8392, r8393, r8394, r8395, tail⟩

theorem template_scp_node22_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8396 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8396 rho)
    (r8397 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8397 rho)
    (r8398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8398 rho)
    (r8399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8399 rho)
    (r8400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8400 rho)
    (tail : next (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg19 (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) next := by
  exact ⟨rho 8381, rho 8382, rho 8383, rho 8384, rho 8385, r8396, r8397, r8398, r8399, r8400, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
