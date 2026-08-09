import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Bits
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Body
import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.ChoiceFreeBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

def bodyCircuit (rho : Nat → F) : Prop :=
  GatesDef.to_binary (rho 252) 251 (scalarBits rho) ∧
    Window2ScalarMulBridge.BodyRel251
      (scalarBits rho) (base rho) (output rho)

def spec (rho : Nat → F) : Prop :=
  AckBridge.AckWindow2BodySpec
    ⟨(base rho).x, (base rho).y⟩ (rho 252)
    ⟨(output rho).x, (output rho).y⟩

theorem relation_sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho) : spec rho := by
  unfold spec AckBridge.AckWindow2BodySpec
  intro hbase
  have hbaseEdwards : EdwardsBridge.onCurve (base rho) := by
    exact (AckBridge.toProtocolPoint_onCurve_iff
      (Decaf377Assumptions.Point.mk (base rho).x (base rho).y)).1
        (by simpa only [AckBridge.toProtocolPoint] using hbase)
  have hbinary := ack_toBinary rho h
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary
      ScalarMulBridge.pow251_lt_order hbinary with
    ⟨bits, hbits, _⟩
  have hbody := body_relation rho h bits hbits hbaseEdwards
  exact AckBridge.ack_window2_body_sound
    ⟨(base rho).x, (base rho).y⟩ (rho 252)
    ⟨(output rho).x, (output rho).y⟩
    ⟨scalarBits rho, hbinary, hbody⟩ hbase

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
