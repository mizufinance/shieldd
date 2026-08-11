import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Boolean
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Body

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

def spec (rho : Nat → F) : Prop :=
  EdwardsBridge.onCurve (base rho) →
    ∃ bits : List.Vector Bool 251,
      scalarBits rho = bits.map Bool.toZMod ∧
        EdwardsBridge.onCurve (output rho) ∧
        output rho =
          Window2ScalarMulBridge.scalarMulWindow2OddFromBits
            125 bits (base rho)

theorem relation_sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) : spec rho := by
  intro hbase
  rcases scalarBits_bool_exists rho h with ⟨bits, hbits⟩
  refine ⟨bits, hbits, ?_⟩
  have hbody := body_relation rho h bits hbits hbase
  apply Window2ScalarMulBridge.bodyRelOdd_semantic 125 (by decide +kernel)
    bits (base rho) (output rho) hbase
  simpa only [hbits] using hbody

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
