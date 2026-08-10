import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Boolean
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Body
import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.ChoiceFreeBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

def spec (rho : Nat → F) : Prop :=
  AckBridge.AckWindow2BodySpec
    ⟨(base rho).x, (base rho).y⟩ (scalar rho)
    ⟨(output rho).x, (output rho).y⟩

theorem relation_sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho) : spec rho := by
  unfold spec AckBridge.AckWindow2BodySpec
  intro hbase
  have hbaseEdwards : EdwardsBridge.onCurve (base rho) := by
    exact (AckBridge.toProtocolPoint_onCurve_iff
      (Decaf377Assumptions.Point.mk (base rho).x (base rho).y)).1
        (by simpa only [AckBridge.toProtocolPoint] using hbase)
  have hbinary := scalar_toBinary rho h
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary
      ScalarMulBridge.pow251_lt_order hbinary with
    ⟨bits, hbits, _⟩
  have hbody := body_relation rho h bits hbits hbaseEdwards
  exact AckBridge.ack_window2_body_sound
    ⟨(base rho).x, (base rho).y⟩ (scalar rho)
    ⟨(output rho).x, (output rho).y⟩
    ⟨scalarBits rho, hbinary, hbody⟩ hbase

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
