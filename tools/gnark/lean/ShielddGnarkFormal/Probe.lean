import ShielddGnarkFormal.CanonicalFqBitsChainAcc
import ShielddGnarkFormal.RvkToBinary
set_option maxRecDepth 100000
open Shieldd.GnarkFormal.Extracted.CanonicalFqBits
variable [Fact (Nat.Prime Order)]
-- getElem (with proof) over ofFn
example (rho : Nat → F) (j : ℕ) (hj : j < 253) :
    (List.Vector.ofFn (fun i : Fin 253 => rho (231 + i.val)))[j]'(by simpa using hj) = rho (231 + j) := by
  rw [List.Vector.getElem_def]
  simp only [List.Vector.toList_ofFn, List.getElem_ofFn]
-- flagFn with Wfun segmented if-le evaluates at concrete index
example : (fun n => if 253 ≤ n then (1:ℤ) else (if n ≤ 2 then 569 else if n ≤ 5 then 567 else 1)) 1 = 569 := by norm_num
