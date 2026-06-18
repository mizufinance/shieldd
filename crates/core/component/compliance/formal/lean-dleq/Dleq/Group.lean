/-
decaf377 scalar field for the compliance DLEQ.

`q` is the decaf377 prime-order group order = the `Fr` (scalar field) modulus,
251 bits, `q ≈ 2^250.9`. The DLEQ algebra is proved generically over an
arbitrary field `F` and `Module F G` (see `Dleq/Sigma.lean`); this module fixes
the concrete instantiation and the truncation keystone `2^250 < q`.

Source of truth: `crates/core/component/compliance/src/crypto.rs`
(`Fr::MODULUS`, `ChallengeKeepBits = MODULUS_BIT_SIZE - 1 = 250`).

Residual assumption CC-ASSUME-DECAF377-PRIME-ORDER-GROUP: decaf377 is a
prime-order group of order `q`; the curve equation is irrelevant to DLEQ
soundness, so we model the group abstractly as `Module (ZMod q) G` with `G`
of cardinality `q`.
-/
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.NormNum.Prime

namespace Dleq

/-- decaf377 scalar-field modulus (group order `q`). Matches
`crypto.rs` and `phase05_vectors.json`. -/
def q : ℕ :=
  2111115437357092606062206234695386632838870926408408195193685246394721360383

/-- Challenge truncation keep-bits: `Fr::MODULUS_BIT_SIZE - 1 = 250`. -/
def keepBits : ℕ := 250

/-- `q` is prime (the residual CC-ASSUME-DECAF377-PRIME-ORDER-GROUP content). -/
axiom q_prime : Nat.Prime q

instance : Fact (Nat.Prime q) := ⟨q_prime⟩

/-- Keystone for truncation soundness: the 250-bit challenge space embeds
injectively into `ZMod q` because `2^250 < q`. -/
theorem pow_keepBits_lt_q : 2 ^ keepBits < q := by
  unfold keepBits q
  decide

end Dleq
