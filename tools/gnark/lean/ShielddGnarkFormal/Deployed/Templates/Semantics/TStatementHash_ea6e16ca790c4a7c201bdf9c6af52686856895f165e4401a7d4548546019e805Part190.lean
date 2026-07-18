import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part190

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart190 rho) :
    rho 1027 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((2954945611316139733589090178653396749007434699703290389178189871607255503235 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 1009 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 1022) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow950 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow951 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow952 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow953 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow954 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((2954945611316139733589090178653396749007434699703290389178189871607255503235 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 1009 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 1022) (rho 1023) (rho 1024) (rho 1025) (rho 1026) (rho 1027)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part190
