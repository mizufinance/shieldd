import ShielddGnarkFormal.DtkBridge.SemanticsTailLadders
import ShielddGnarkFormal.DtkBridge.SemanticsTailValue

namespace Shieldd.GnarkFormal.DtkBridge

open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

theorem dtkTailK_laddersTail (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop)
    (h : dtkTailK bits IvkQuotient k) :
    Extracted.IvkModR.laddersTail IvkQuotient bits ∧ k :=
  ⟨dtkTailK_ladders bits IvkQuotient k h, dtkTailK_value bits IvkQuotient k h⟩

end Shieldd.GnarkFormal.DtkBridge
