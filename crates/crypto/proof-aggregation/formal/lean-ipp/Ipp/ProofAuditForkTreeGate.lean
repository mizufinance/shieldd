import Ipp.ForkTreeGateDominance

/-!
Kernel-audit roots for replay-contextual fork-tree gate dominance.

Only unconditional operational refinement and probability inequalities are
included.  The stronger filter-distribution equality is intentionally not an
audit claim.
-/

#print axioms Ipp.forkReplay4_selectorRefines
#print axioms Ipp.forkReplay4Continue_keepOptionalChild_refines
#print axioms Ipp.forkTreeCombined_gateReplayRefines
#print axioms Ipp.forkTreeCombined_gatePointwiseDom
#print axioms Ipp.forkTreeCombined_isSome_le_qualified_weaker_of_gate
