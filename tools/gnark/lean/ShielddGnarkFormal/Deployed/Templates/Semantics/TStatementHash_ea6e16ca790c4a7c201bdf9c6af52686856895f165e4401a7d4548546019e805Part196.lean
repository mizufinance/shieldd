import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part196

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart196 rho) :
    rho 1057 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((3230517469065778907478008137712263126795543354752512620366035389818647458532 : F) + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1009 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 1022) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow980 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow981 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow982 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow983 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationRow984 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((3230517469065778907478008137712263126795543354752512620366035389818647458532 : F) + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1009 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 1022) (rho 1053) (rho 1054) (rho 1055) (rho 1056) (rho 1057)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part196
