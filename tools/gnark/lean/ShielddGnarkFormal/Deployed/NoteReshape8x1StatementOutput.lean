import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.SemanticBindings
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg161

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact final Poseidon-state LC projection for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF

theorem hash (rho : Nat → DeployedF) :
    statementHash rho =
      (Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.rawState3_38
        (Seg161.localRho rho))[1] := by
  have hw1874 : Seg161.wireSeating 1874 = 126190 := by decide +kernel
  have hw1879 : Seg161.wireSeating 1879 = 126195 := by decide +kernel
  have hw1884 : Seg161.wireSeating 1884 = 126200 := by decide +kernel
  have hw1889 : Seg161.wireSeating 1889 = 126205 := by decide +kernel
  have hw1894 : Seg161.wireSeating 1894 = 126210 := by decide +kernel
  have hw1899 : Seg161.wireSeating 1899 = 126215 := by decide +kernel
  have hw1904 : Seg161.wireSeating 1904 = 126220 := by decide +kernel
  have hw1909 : Seg161.wireSeating 1909 = 126225 := by decide +kernel
  simp [
    statementHash, statementHashLC,
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.rawState3_38,
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.flatState3_38Lane1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg161.localRho, Deployed.Templates.seated,
    hw1874, hw1879, hw1884, hw1889, hw1894, hw1899, hw1904, hw1909
  ]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementOutput
