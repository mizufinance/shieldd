import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.SemanticBindings

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact final Poseidon-state LC projection for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem hash
    (rho : Nat → DeployedF) :
    statementHash rho =
      (Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.rawState2_38
        (Seg140.localRho rho))[1] := by
  have hw1417 : Seg140.wireSeating 1417 = 113012 := by decide +kernel
  have hw1422 : Seg140.wireSeating 1422 = 113017 := by decide +kernel
  have hw1427 : Seg140.wireSeating 1427 = 113022 := by decide +kernel
  have hw1432 : Seg140.wireSeating 1432 = 113027 := by decide +kernel
  have hw1437 : Seg140.wireSeating 1437 = 113032 := by decide +kernel
  have hw1442 : Seg140.wireSeating 1442 = 113037 := by decide +kernel
  have hw1447 : Seg140.wireSeating 1447 = 113042 := by decide +kernel
  have hw1452 : Seg140.wireSeating 1452 = 113047 := by decide +kernel
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.rawState2_38,
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.flatState2_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg140.localRho, Deployed.Templates.seated,
    hw1417, hw1422, hw1427, hw1432, hw1437, hw1442, hw1447, hw1452
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput
