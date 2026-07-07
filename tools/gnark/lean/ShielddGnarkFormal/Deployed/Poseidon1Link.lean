import ShielddGnarkFormal.Poseidon1Bridge

/-! Reusable deployed-slice link for width-2 Poseidon permutations. -/

namespace Shieldd.GnarkFormal.Deployed.Poseidon1Link

open Shieldd.GnarkFormal.Poseidon1Bridge
open Shieldd.GnarkFormal.Extracted.PoseidonHash1 (F Order)

variable [Fact (Nat.Prime Order)]

def row2 (m0 m1 w0 w1 : F) : F :=
  m0 * w0 + m1 * w1

theorem fr_eq2 (prev cs : List.Vector F 2) (w0 w1 : F)
    (h0 : w0 = p17 (prev[0] + cs[0]))
    (h1 : w1 = p17 (prev[1] + cs[1])) :
    fr2 prev cs = vec![
      row2
        (4222230874714185212124412469390773265687949667577031913967616727958704619521 : F)
        (5629641166285580282832549959187697687583932890102709218623488970611606159361 : F)
        w0 w1,
      row2
        (5629641166285580282832549959187697687583932890102709218623488970611606159361 : F)
        (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F)
        w0 w1] := by
  subst h0 h1
  rfl

theorem pr_eq2 (prev cs : List.Vector F 2) (w0 : F)
    (h0 : w0 = p17 (prev[0] + cs[0])) :
    pr2 prev cs = vec![
      row2
        (4222230874714185212124412469390773265687949667577031913967616727958704619521 : F)
        (5629641166285580282832549959187697687583932890102709218623488970611606159361 : F)
        w0 (prev[1] + cs[1]),
      row2
        (5629641166285580282832549959187697687583932890102709218623488970611606159361 : F)
        (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F)
        w0 (prev[1] + cs[1])] := by
  subst h0
  rfl

end Shieldd.GnarkFormal.Deployed.Poseidon1Link
