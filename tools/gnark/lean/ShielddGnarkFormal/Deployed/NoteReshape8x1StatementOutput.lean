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
        (Seg143.localRho rho))[1] := by
  have hw1417 : Seg143.wireSeating 1417 = 112416 := by decide +kernel
  have hw1422 : Seg143.wireSeating 1422 = 112421 := by decide +kernel
  have hw1427 : Seg143.wireSeating 1427 = 112426 := by decide +kernel
  have hw1432 : Seg143.wireSeating 1432 = 112431 := by decide +kernel
  have hw1437 : Seg143.wireSeating 1437 = 112436 := by decide +kernel
  have hw1442 : Seg143.wireSeating 1442 = 112441 := by decide +kernel
  have hw1447 : Seg143.wireSeating 1447 = 112446 := by decide +kernel
  have hw1452 : Seg143.wireSeating 1452 = 112451 := by decide +kernel
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.rawState2_38,
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.flatState2_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg143.localRho, Deployed.Templates.seated,
    hw1417, hw1422, hw1427, hw1432, hw1437, hw1442, hw1447, hw1452
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput
