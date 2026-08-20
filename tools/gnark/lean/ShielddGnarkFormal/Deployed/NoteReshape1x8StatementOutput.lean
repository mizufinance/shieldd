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
      (Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.rawState2_38
        (Seg83.localRho rho))[1] := by
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.rawState2_38,
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.flatState2_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg83.localRho, Deployed.Templates.seated,
    hw1433, hw1438, hw1443, hw1448, hw1453, hw1458, hw1463, hw1468
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementOutput
