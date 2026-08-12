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
      (Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.Trace.rawState2_38
        (Seg78.localRho rho))[1] := by
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.Trace.rawState2_38,
    Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.Trace.flatState2_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg78.localRho, Deployed.Templates.seated,
    hw1415, hw1420, hw1425, hw1430, hw1435, hw1440, hw1445, hw1450
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementOutput
