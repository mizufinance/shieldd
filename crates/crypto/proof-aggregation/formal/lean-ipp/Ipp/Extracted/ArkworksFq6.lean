import Ipp.Extracted.ArkworksFq6Generated
import Ipp.Extracted.ArkworksFq2
import Ipp.Bls12377Pairing
import Mathlib.Tactic

/-! S3-19 part 1: componentwise executed Fq6 operations refine `Fq6Model`. -/

namespace Ipp.Extracted.ArkworksFq6

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq2

abbrev Fq6LimbTriple := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq6Mont

/-- Componentwise Montgomery decode into the concrete Fq6 model. -/
def decodeFq6 (a : Fq6LimbTriple) : Ipp.Bls12377.Fq6Model :=
  ⟨decodeFq2 a.c0, decodeFq2 a.c1, decodeFq2 a.c2⟩

def Canonical6 (a : Fq6LimbTriple) : Prop :=
  Canonical2 a.c0 ∧ Canonical2 a.c1 ∧ Canonical2 a.c2

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

theorem decode_fq6_add (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_add a b = .ok output) :
    decodeFq6 output = Ipp.Bls12377.fq6Add (decodeFq6 a) (decodeFq6 b) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_add at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have e0 := decode_fq2_add a.c0 b.c0 c0 ha.1 hb.1 h0
  have e1 := decode_fq2_add a.c1 b.c1 c1 ha.2.1 hb.2.1 h1
  have e2 := decode_fq2_add a.c2 b.c2 c2 ha.2.2 hb.2.2 h2
  simp [decodeFq6, Ipp.Bls12377.fq6Add, e0, e1, e2]

theorem decode_fq6_sub (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_sub a b = .ok output) :
    decodeFq6 output =
      ⟨decodeFq2 a.c0 - decodeFq2 b.c0,
       decodeFq2 a.c1 - decodeFq2 b.c1,
       decodeFq2 a.c2 - decodeFq2 b.c2⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_sub at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have e0 := decode_fq2_sub a.c0 b.c0 c0 ha.1 hb.1 h0
  have e1 := decode_fq2_sub a.c1 b.c1 c1 ha.2.1 hb.2.1 h1
  have e2 := decode_fq2_sub a.c2 b.c2 c2 ha.2.2 hb.2.2 h2
  simp [decodeFq6, e0, e1, e2]

theorem decode_fq6_neg (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_neg a = .ok output) :
    decodeFq6 output =
      ⟨-decodeFq2 a.c0, -decodeFq2 a.c1, -decodeFq2 a.c2⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_neg at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have e0 := decode_fq2_neg a.c0 c0 ha.1 h0
  have e1 := decode_fq2_neg a.c1 c1 ha.2.1 h1
  have e2 := decode_fq2_neg a.c2 c2 ha.2.2 h2
  simp [decodeFq6, e0, e1, e2]

private theorem decode_fq2_double (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double a = .ok output) :
    decodeFq2 output = decodeFq2 a + decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have e0 := Ipp.Extracted.ArkworksFq2.decode_extracted_double a.c0 c0 ha.1 h0
  have e1 := Ipp.Extracted.ArkworksFq2.decode_extracted_double a.c1 c1 ha.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, e0, e1]

theorem decode_fq6_double (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_double a = .ok output) :
    decodeFq6 output = Ipp.Bls12377.fq6Add (decodeFq6 a) (decodeFq6 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_double at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have e0 := decode_fq2_double a.c0 c0 ha.1 h0
  have e1 := decode_fq2_double a.c1 c1 ha.2.1 h1
  have e2 := decode_fq2_double a.c2 c2 ha.2.2 h2
  simp [decodeFq6, Ipp.Bls12377.fq6Add, e0, e1, e2]

theorem decode_fq6_mul_base_field_by_nonresidue
    (a output : Fq2LimbPair) (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_base_field_by_nonresidue a =
      .ok output) :
    decodeFq2 output = Ipp.Bls12377.fq2U * decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_base_field_by_nonresidue at hexec
  obtain ⟨c0, h0, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have e0 := extracted_mul_by_nonresidue_spec a.c1 c0 ha.2 h0
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, Ipp.Bls12377.fq2U, e0.2]

#print axioms decode_fq6_add
#print axioms decode_fq6_sub
#print axioms decode_fq6_neg
#print axioms decode_fq6_double
#print axioms decode_fq6_mul_base_field_by_nonresidue

end Ipp.Extracted.ArkworksFq6
