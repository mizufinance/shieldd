import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.SemanticBindings
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingOutput

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact final Poseidon-state LC projection for the 1x8 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementOutput

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8
abbrev DeployedF := Contracts.NoteReshape1x8.SemanticF
open NoteReshape1x8StatementSeating

theorem hash (rho : Nat → DeployedF) :
    statementHash rho =
      (Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.Trace.rawState2_38
        (Seg79.localRho rho))[1] := by
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.Trace.rawState2_38,
    Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.Trace.flatState2_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg79.localRho, Deployed.Templates.seated,
    hw1427, hw1432, hw1437, hw1442, hw1447, hw1452, hw1457, hw1462
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementOutput
