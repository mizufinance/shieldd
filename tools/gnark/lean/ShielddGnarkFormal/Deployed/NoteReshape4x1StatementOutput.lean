import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.SemanticBindings

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact final Poseidon-state LC projection for the 4x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1StatementOutput

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem hash
    (rho : Nat → DeployedF) :
    statementHash rho =
      (Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.rawState1_38
        (Seg80.localRho rho))[1] := by
  have hw921 : Seg80.wireSeating 921 = 61742 := by decide
  have hw926 : Seg80.wireSeating 926 = 61747 := by decide
  have hw931 : Seg80.wireSeating 931 = 61752 := by decide
  have hw936 : Seg80.wireSeating 936 = 61757 := by decide
  have hw941 : Seg80.wireSeating 941 = 61762 := by decide
  have hw946 : Seg80.wireSeating 946 = 61767 := by decide
  have hw951 : Seg80.wireSeating 951 = 61772 := by decide
  have hw956 : Seg80.wireSeating 956 = 61777 := by decide
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.rawState1_38,
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.flatState1_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg80.localRho, Deployed.Templates.seated,
    hw921, hw926, hw931, hw936, hw941, hw946, hw951, hw956
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1StatementOutput
