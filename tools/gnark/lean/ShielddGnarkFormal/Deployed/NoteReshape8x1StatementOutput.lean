import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.SemanticBindings
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg169

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact final Poseidon-state LC projection for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF

theorem hash (rho : Nat → DeployedF) :
    statementHash rho =
      (Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.rawState4_38
        (Seg169.localRho rho))[1] := by
  have hw2368 : Seg169.wireSeating 2368 = 127860 := by decide +kernel
  have hw2373 : Seg169.wireSeating 2373 = 127865 := by decide +kernel
  have hw2378 : Seg169.wireSeating 2378 = 127870 := by decide +kernel
  have hw2383 : Seg169.wireSeating 2383 = 127875 := by decide +kernel
  have hw2388 : Seg169.wireSeating 2388 = 127880 := by decide +kernel
  have hw2393 : Seg169.wireSeating 2393 = 127885 := by decide +kernel
  have hw2398 : Seg169.wireSeating 2398 = 127890 := by decide +kernel
  have hw2403 : Seg169.wireSeating 2403 = 127895 := by decide +kernel
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.rawState4_38,
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.flatState4_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg169.localRho, Deployed.Templates.seated,
    hw2368, hw2373, hw2378, hw2383, hw2388, hw2393, hw2398, hw2403
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput
