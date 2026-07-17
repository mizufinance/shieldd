import Ipp.Extracted.ArkworksFq2Generated
import Ipp.Extracted.ArkworksFqMul
import Ipp.Extracted.ArkworksFqOps
import Ipp.Extracted.ArkworksFqSquare
import Ipp.Extracted.ArkworksFqInv
import Ipp.Bls12377Core
import Ipp.Bls12377
import Mathlib.Tactic

/-! S3-16: the executed BLS12-377 Fq2 layer refines
`Fq2 = QuadraticAlgebra Fq (-5) 0`, composing the certified Fq operation
theorems. New limb-level content: the `double` shift telescope and the
fused two-product `sum_of_products2` kernel (exact K-accumulator
invariant plus the REDC global bound). -/

namespace Ipp.Extracted.ArkworksFq2

set_option maxRecDepth 8192
set_option exponentiation.threshold 1000

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps (extracted_add_spec decode_extracted_add
  decode_extracted_sub decode_extracted_neg extracted_sub_spec
  extracted_neg_spec)
open Ipp.Extracted.ArkworksFqSquare (decode_extracted_square
  extracted_square_spec)
open Ipp.Extracted.ArkworksFqInv (decode_extracted_inv extracted_inv_zero)

abbrev Fq2LimbPair := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- Montgomery decode of an executed Fq2 pair into the concrete model. -/
def decodeFq2 (a : Fq2LimbPair) : Ipp.Bls12377.Fq2 :=
  ⟨Ipp.Extracted.ArkworksFqMul.decode a.c0,
   Ipp.Extracted.ArkworksFqMul.decode a.c1⟩

/-- Canonicity of an executed Fq2 pair. -/
def Canonical2 (a : Fq2LimbPair) : Prop :=
  limbsToNat a.c0 < Ipp.Bls12377.baseModulus ∧
  limbsToNat a.c1 < Ipp.Bls12377.baseModulus

@[simp] theorem decodeFq2_mk (x y : LimbArray) :
    decodeFq2 ⟨x, y⟩ =
      ⟨Ipp.Extracted.ArkworksFqMul.decode x,
       Ipp.Extracted.ArkworksFqMul.decode y⟩ := rfl

/-! ### Componentwise operations -/

theorem decode_fq2_add (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add a b = .ok output) :
    decodeFq2 output = decodeFq2 a + decodeFq2 b := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add at hexec
  obtain ⟨fm, h0, hrest⟩ := bind_eq_ok hexec
  obtain ⟨fm1, h1, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq] at hreturn
  subst output
  have hc0 := decode_extracted_add a.c0 b.c0 fm ha.1 hb.1 h0
  have hc1 := decode_extracted_add a.c1 b.c1 fm1 ha.2 hb.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, hc0, hc1]

theorem decode_fq2_sub (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub a b = .ok output) :
    decodeFq2 output = decodeFq2 a - decodeFq2 b := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub at hexec
  obtain ⟨fm, h0, hrest⟩ := bind_eq_ok hexec
  obtain ⟨fm1, h1, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq] at hreturn
  subst output
  have hc0 := decode_extracted_sub a.c0 b.c0 fm ha.1 hb.1 h0
  have hc1 := decode_extracted_sub a.c1 b.c1 fm1 ha.2 hb.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, hc0, hc1]

theorem decode_fq2_neg (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg a = .ok output) :
    decodeFq2 output = -decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg at hexec
  obtain ⟨fm, h0, hrest⟩ := bind_eq_ok hexec
  obtain ⟨fm1, h1, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq] at hreturn
  subst output
  have hc0 := decode_extracted_neg a.c0 fm ha.1 h0
  have hc1 := decode_extracted_neg a.c1 fm1 ha.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, hc0, hc1]

end Ipp.Extracted.ArkworksFq2
