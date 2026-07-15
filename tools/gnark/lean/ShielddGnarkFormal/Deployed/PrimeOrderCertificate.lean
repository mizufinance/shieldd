import Mathlib.Data.List.Prime
import Mathlib.NumberTheory.LucasPrimality
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.ReduceModChar

set_option maxHeartbeats 4000000

/-! Kernel-checked primality certificate for the BLS12-377 scalar field.

The certificate is a Lucas chain. `reduce_mod_char` emits checked fast modular
exponentiation proofs; it does not use compiler-backed evaluation.
-/

namespace Shieldd.GnarkFormal.Deployed

private theorem primeOfLucasCertificate
    (p witness : Nat)
    (factors : List Nat)
    (factorization : factors.prod = p - 1)
    (factorsPrime : ∀ q ∈ factors, q.Prime)
    (fullOrder : (witness : ZMod p) ^ (p - 1) = 1)
    (properOrders : ∀ q ∈ factors, (witness : ZMod p) ^ ((p - 1) / q) ≠ 1) :
    p.Prime := by
  apply lucas_primality p witness fullOrder
  intro q hq hdiv
  apply properOrders q
  apply mem_list_primes_of_dvd_prod (Nat.prime_iff.mp hq)
  · intro factor hfactor
    exact Nat.prime_iff.mp (factorsPrime factor hfactor)
  rw [factorization]
  exact hdiv

private theorem prime126397 : Nat.Prime 126397 := by
  norm_num

private def factors1832756501 : List Nat :=
  List.replicate 2 2 ++ List.replicate 3 5 ++ [29, 126397]

private theorem prime1832756501 : Nat.Prime 1832756501 := by
  apply primeOfLucasCertificate 1832756501 2 factors1832756501
  · norm_num [factors1832756501, List.prod_replicate]
  · intro q hq
    simp [factors1832756501] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact Nat.prime_two
    · exact Nat.prime_five
    · norm_num
    · exact prime126397
  · reduce_mod_char
  · intro q hq
    simp [factors1832756501] at hq
    rcases hq with rfl | rfl | rfl | rfl
    all_goals reduce_mod_char
    all_goals decide

private def factors49484425527001 : List Nat :=
  List.replicate 3 2 ++ List.replicate 3 3 ++ List.replicate 3 5 ++ [1832756501]

private theorem prime49484425527001 : Nat.Prime 49484425527001 := by
  apply primeOfLucasCertificate 49484425527001 14 factors49484425527001
  · norm_num [factors49484425527001, List.prod_replicate]
  · intro q hq
    simp [factors49484425527001] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact Nat.prime_two
    · exact Nat.prime_three
    · exact Nat.prime_five
    · exact prime1832756501
  · reduce_mod_char
  · intro q hq
    simp [factors49484425527001] at hq
    rcases hq with rfl | rfl | rfl | rfl
    all_goals reduce_mod_char
    all_goals decide

private def factors958612291309063373 : List Nat :=
  List.replicate 2 2 ++ [29, 167, 49484425527001]

private theorem prime958612291309063373 : Nat.Prime 958612291309063373 := by
  apply primeOfLucasCertificate 958612291309063373 2 factors958612291309063373
  · norm_num [factors958612291309063373, List.prod_replicate]
  · intro q hq
    simp [factors958612291309063373] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact Nat.prime_two
    · norm_num
    · norm_num
    · exact prime49484425527001
  · reduce_mod_char
  · intro q hq
    simp [factors958612291309063373] at hq
    rcases hq with rfl | rfl | rfl | rfl
    all_goals reduce_mod_char
    all_goals decide

private def factors9586122913090633729 : List Nat :=
  List.replicate 46 2 ++ [3, 7, 13, 499]

private theorem prime9586122913090633729 : Nat.Prime 9586122913090633729 := by
  apply primeOfLucasCertificate 9586122913090633729 11 factors9586122913090633729
  · norm_num [factors9586122913090633729, List.prod_replicate]
  · intro q hq
    simp [factors9586122913090633729] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl
    · exact Nat.prime_two
    · exact Nat.prime_three
    · norm_num
    · norm_num
    · norm_num
  · reduce_mod_char
  · intro q hq
    simp [factors9586122913090633729] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl
    all_goals reduce_mod_char
    all_goals decide

private def decaf377ScalarFieldFactors : List Nat :=
  List.replicate 47 2 ++
    [3, 5, 7, 13, 499, 958612291309063373] ++
    List.replicate 2 9586122913090633729

/-- The BLS12-377 scalar-field order is prime. -/
theorem decaf377ScalarFieldPrime :
    Nat.Prime 8444461749428370424248824938781546531375899335154063827935233455917409239041 := by
  apply primeOfLucasCertificate
    8444461749428370424248824938781546531375899335154063827935233455917409239041
    22 decaf377ScalarFieldFactors
  · norm_num [decaf377ScalarFieldFactors, List.prod_replicate]
  · intro q hq
    simp [decaf377ScalarFieldFactors] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact Nat.prime_two
    · exact Nat.prime_three
    · exact Nat.prime_five
    · norm_num
    · norm_num
    · norm_num
    · exact prime958612291309063373
    · exact prime9586122913090633729
  · reduce_mod_char
  · intro q hq
    simp [decaf377ScalarFieldFactors] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    all_goals reduce_mod_char
    all_goals decide

end Shieldd.GnarkFormal.Deployed
