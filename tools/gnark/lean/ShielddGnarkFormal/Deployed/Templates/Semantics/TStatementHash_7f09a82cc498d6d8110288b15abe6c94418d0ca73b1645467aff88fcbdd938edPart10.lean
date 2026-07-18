import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part10

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart10 rho) :
    rho 73 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((4410293955507405567134463457866203289792979576444192632917134127208563751044 : F) + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 6 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 18 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 25 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 32 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 39 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 46 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 53) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((4410293955507405567134463457866203289792979576444192632917134127208563751044 : F) + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 6 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 18 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 25 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 32 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 39 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 46 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 53) (rho 69) (rho 70) (rho 71) (rho 72) (rho 73)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part10
