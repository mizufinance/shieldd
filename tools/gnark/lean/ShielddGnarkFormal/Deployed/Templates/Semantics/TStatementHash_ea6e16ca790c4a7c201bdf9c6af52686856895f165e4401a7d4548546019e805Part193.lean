import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part193

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart193 rho) :
    rho 1042 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((2599359702025490916189573731865636357324242816133056856994782964279752269984 : F) + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 1009 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1022) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow965 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow966 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow967 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow968 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow969 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((2599359702025490916189573731865636357324242816133056856994782964279752269984 : F) + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 1009 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1022) (rho 1038) (rho 1039) (rho 1040) (rho 1041) (rho 1042)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part193
