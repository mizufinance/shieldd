import ShielddGnarkFormal.PrimeCertificates.P9586122913090633729
import Mathlib.Tactic.NormNum

namespace Shieldd.GnarkFormal.PrimeCertificates.Decaf377

def fieldOrder : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

def witness : Nat := 22

def factors : List Nat :=
  List.replicate 47 2 ++
    [3, 5, 7, 13, 499, 958612291309063373] ++
    List.replicate 2 9586122913090633729

theorem one_lt : 1 < fieldOrder := by decide

theorem factorization : factors.prod = fieldOrder - 1 := by
  norm_num [factors, fieldOrder, List.prod_replicate]

end Shieldd.GnarkFormal.PrimeCertificates.Decaf377
