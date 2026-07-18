import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part191

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart191 rho) :
    rho 1032 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((34508740648071631415987764505135271544843330444149763021267085147459606006 : F) + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 1009 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 1022) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow955 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow956 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow957 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow958 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow959 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((34508740648071631415987764505135271544843330444149763021267085147459606006 : F) + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 1009 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 1022) (rho 1028) (rho 1029) (rho 1030) (rho 1031) (rho 1032)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part191
