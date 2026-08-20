import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.SemanticBindings
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg173

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact final Poseidon-state LC projection for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF

theorem hash (rho : Nat → DeployedF) :
    statementHash rho =
      (Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.rawState5_38
        (Seg173.localRho rho))[1] := by
  have hw2814 : Seg173.wireSeating 2814 = 134623 := by decide +kernel
  have hw2819 : Seg173.wireSeating 2819 = 134628 := by decide +kernel
  have hw2824 : Seg173.wireSeating 2824 = 134633 := by decide +kernel
  have hw2829 : Seg173.wireSeating 2829 = 134638 := by decide +kernel
  have hw2834 : Seg173.wireSeating 2834 = 134643 := by decide +kernel
  have hw2839 : Seg173.wireSeating 2839 = 134648 := by decide +kernel
  have hw2844 : Seg173.wireSeating 2844 = 134653 := by decide +kernel
  have hw2849 : Seg173.wireSeating 2849 = 134658 := by decide +kernel
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.rawState5_38,
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.flatState5_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg173.localRho, Deployed.Templates.seated,
    hw2814, hw2819, hw2824, hw2829, hw2834, hw2839, hw2844, hw2849
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput
