import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node16_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6367 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6367 rho)
    (r6368 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6368 rho)
    (r6369 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6369 rho)
    (r6370 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6370 rho)
    (r6371 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6371 rho)
    (tail : next (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) (rho 6362)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg50 (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) next := by
  exact ⟨rho 6358, rho 6359, rho 6360, rho 6361, rho 6362, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6367 at r6367; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc152, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc152Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc152Part1] at r6367; linear_combination r6367), r6368, r6369, r6370, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6371 at r6371; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc152, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc152Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc152Part1] at r6371; linear_combination r6371), tail⟩

theorem template_scp_node16_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6372 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6372 rho)
    (r6373 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6373 rho)
    (r6374 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6374 rho)
    (r6375 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6375 rho)
    (r6376 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6376 rho)
    (tail : next (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) (rho 6362) (rho 6367)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg51 (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) (rho 6362) next := by
  exact ⟨rho 6363, rho 6364, rho 6365, rho 6366, rho 6367, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6372 at r6372; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc153, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc153Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc153Part1] at r6372; linear_combination r6372), r6373, r6374, r6375, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6376 at r6376; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc153, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc153Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc153Part1] at r6376; linear_combination r6376), tail⟩

theorem template_scp_node16_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6377 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6377 rho)
    (r6378 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6378 rho)
    (r6379 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6379 rho)
    (r6380 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6380 rho)
    (r6381 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6381 rho)
    (tail : next (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) (rho 6362) (rho 6367) (rho 6372)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg52 (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) (rho 6362) (rho 6367) next := by
  exact ⟨rho 6368, rho 6369, rho 6370, rho 6371, rho 6372, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6377 at r6377; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc154, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc154Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc154Part1] at r6377; linear_combination r6377), r6378, r6379, r6380, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6381 at r6381; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc154, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc154Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc154Part1] at r6381; linear_combination r6381), tail⟩

theorem template_scp_node16_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6382 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6382 rho)
    (r6383 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6383 rho)
    (r6384 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6384 rho)
    (r6385 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6385 rho)
    (r6386 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6386 rho)
    (tail : next (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) (rho 6362) (rho 6367) (rho 6372) (rho 6377)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg53 (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) (rho 6362) (rho 6367) (rho 6372) next := by
  exact ⟨rho 6373, rho 6374, rho 6375, rho 6376, rho 6377, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6382 at r6382; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc155, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc155Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc155Part1] at r6382; linear_combination r6382), r6383, r6384, r6385, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6386 at r6386; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc155, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc155Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc155Part1] at r6386; linear_combination r6386), tail⟩

theorem template_scp_node16_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6387 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6387 rho)
    (r6388 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6388 rho)
    (r6389 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6389 rho)
    (r6390 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6390 rho)
    (r6391 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6391 rho)
    (tail : next (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg54 (rho 6182) (rho 6187) (rho 6192) (rho 6197) (rho 6202) (rho 6207) (rho 6212) (rho 6217) (rho 6222) (rho 6227) (rho 6232) (rho 6237) (rho 6242) (rho 6247) (rho 6252) (rho 6257) (rho 6262) (rho 6267) (rho 6272) (rho 6277) (rho 6282) (rho 6287) (rho 6292) (rho 6297) (rho 6302) (rho 6307) (rho 6312) (rho 6317) (rho 6322) (rho 6327) (rho 6332) (rho 6337) (rho 6342) (rho 6347) (rho 6352) (rho 6357) (rho 6362) (rho 6367) (rho 6372) (rho 6377) next := by
  exact ⟨rho 6378, rho 6379, rho 6380, rho 6381, rho 6382, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6387 at r6387; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc156, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc156Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc156Part1] at r6387; linear_combination r6387), r6388, r6389, r6390, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6391 at r6391; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc156, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc156Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc156Part1] at r6391; linear_combination r6391), tail⟩

theorem template_scp_node16_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6392 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6392 rho)
    (r6393 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6393 rho)
    (r6394 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6394 rho)
    (r6395 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6395 rho)
    (r6396 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6396 rho)
    (tail : next (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) (rho 6387)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg55 (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) next := by
  exact ⟨rho 6383, rho 6384, rho 6385, rho 6386, rho 6387, r6392, r6393, r6394, r6395, r6396, tail⟩

theorem template_scp_node16_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6397 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6397 rho)
    (r6398 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6398 rho)
    (r6399 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6399 rho)
    (r6400 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6400 rho)
    (r6401 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6401 rho)
    (tail : next (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) (rho 6387) (rho 6392)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg56 (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) (rho 6387) next := by
  exact ⟨rho 6388, rho 6389, rho 6390, rho 6391, rho 6392, r6397, r6398, r6399, r6400, r6401, tail⟩

theorem template_scp_node16_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6402 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6402 rho)
    (r6403 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6403 rho)
    (r6404 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6404 rho)
    (r6405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6405 rho)
    (r6406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6406 rho)
    (tail : next (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) (rho 6387) (rho 6392) (rho 6397)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg57 (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) (rho 6387) (rho 6392) next := by
  exact ⟨rho 6393, rho 6394, rho 6395, rho 6396, rho 6397, r6402, r6403, r6404, r6405, r6406, tail⟩

theorem template_scp_node16_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6407 rho)
    (r6408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6408 rho)
    (r6409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6409 rho)
    (r6410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6410 rho)
    (r6411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6411 rho)
    (tail : next (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) (rho 6387) (rho 6392) (rho 6397) (rho 6402)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg58 (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) (rho 6387) (rho 6392) (rho 6397) next := by
  exact ⟨rho 6398, rho 6399, rho 6400, rho 6401, rho 6402, r6407, r6408, r6409, r6410, r6411, tail⟩

theorem template_scp_node16_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6412 rho)
    (r6413 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6413 rho)
    (r6414 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6414 rho)
    (r6415 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6415 rho)
    (r6416 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6416 rho)
    (tail : next (rho 6387) (rho 6392) (rho 6397) (rho 6402) (rho 6407)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg59 (rho 6362) (rho 6367) (rho 6372) (rho 6377) (rho 6382) (rho 6387) (rho 6392) (rho 6397) (rho 6402) next := by
  exact ⟨rho 6403, rho 6404, rho 6405, rho 6406, rho 6407, r6412, r6413, r6414, r6415, r6416, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
