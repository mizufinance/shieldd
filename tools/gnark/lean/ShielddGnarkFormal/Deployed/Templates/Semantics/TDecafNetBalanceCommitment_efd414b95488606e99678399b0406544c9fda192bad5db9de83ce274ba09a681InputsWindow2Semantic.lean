import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Boolean
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Body

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

def spec (rho : Nat → F) : Prop :=
  EdwardsBridge.onCurve (base rho) →
    ∃ bits : List.Vector Bool 129,
      scalarBits rho = bits.map Bool.toZMod ∧
        EdwardsBridge.onCurve (output rho) ∧
        output rho =
          Window2ScalarMulBridge.scalarMulWindow2OddFromBits
            64 bits (base rho)

theorem relation_sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho) : spec rho := by
  intro hbase
  rcases scalarBits_bool_exists rho h with ⟨bits, hbits⟩
  refine ⟨bits, hbits, ?_⟩
  have hbody := body_relation rho h bits hbits hbase
  apply Window2ScalarMulBridge.bodyRelOdd_semantic 64 (by decide +kernel)
    bits (base rho) (output rho) hbase
  simpa only [hbits] using hbody

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
