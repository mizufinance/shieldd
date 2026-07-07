import ShielddGnarkFormal.Deployed.StatementHash.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.StatementHash

open Shieldd.GnarkFormal.Poseidon7Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon7Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash7.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order))

theorem spec38_eq_permSpec (sin0 : F) (sin1 : F) (sin2 : F) (sin3 : F) (sin4 : F) (sin5 : F) (sin6 : F) :
    (spec38 sin0 sin1 sin2 sin3 sin4 sin5 sin6)[1] = permSpec7 statementDomainLit sin0 sin1 sin2 sin3 sin4 sin5 sin6 := by
  unfold permSpec7 statementDomainLit
  rfl

end Shieldd.GnarkFormal.Deployed.StatementHash
