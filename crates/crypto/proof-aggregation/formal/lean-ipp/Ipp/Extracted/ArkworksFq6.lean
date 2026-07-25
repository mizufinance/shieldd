import Ipp.Extracted.ArkworksFq6Generated
import Ipp.Extracted.ArkworksFq2
import Ipp.Bls12377Fq6
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

theorem canonical6_add (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_add a b = .ok output) :
    Canonical6 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_add at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  exact ⟨canonical_fq2_add a.c0 b.c0 c0 ha.1 hb.1 h0,
    canonical_fq2_add a.c1 b.c1 c1 ha.2.1 hb.2.1 h1,
    canonical_fq2_add a.c2 b.c2 c2 ha.2.2 hb.2.2 h2⟩

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

theorem canonical6_sub (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_sub a b = .ok output) :
    Canonical6 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_sub at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  exact ⟨canonical_fq2_sub a.c0 b.c0 c0 ha.1 hb.1 h0,
    canonical_fq2_sub a.c1 b.c1 c1 ha.2.1 hb.2.1 h1,
    canonical_fq2_sub a.c2 b.c2 c2 ha.2.2 hb.2.2 h2⟩

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

private theorem fq2_add_spec (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add a b = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a + decodeFq2 b :=
  ⟨canonical_fq2_add a b output ha hb hexec,
    decode_fq2_add a b output ha hb hexec⟩

private theorem fq2_sub_spec (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub a b = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a - decodeFq2 b :=
  ⟨canonical_fq2_sub a b output ha hb hexec,
    decode_fq2_sub a b output ha hb hexec⟩

private theorem fq2_double_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double a = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a + decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  refine ⟨⟨(extracted_double_spec a.c0 c0 ha.1 h0).1,
      (extracted_double_spec a.c1 c1 ha.2 h1).1⟩, ?_⟩
  have e0 := Ipp.Extracted.ArkworksFq2.decode_extracted_double a.c0 c0 ha.1 h0
  have e1 := Ipp.Extracted.ArkworksFq2.decode_extracted_double a.c1 c1 ha.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, e0, e1]

private theorem fq6_nonresidue_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_base_field_by_nonresidue a =
      .ok output) :
    Canonical2 output ∧
      decodeFq2 output = Ipp.Bls12377.fq2U * decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_base_field_by_nonresidue at hexec
  obtain ⟨c0, h0, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have e0 := extracted_mul_by_nonresidue_spec a.c1 c0 ha.2 h0
  refine ⟨⟨e0.1, ha.1⟩, ?_⟩
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, Ipp.Bls12377.fq2U, e0.2]

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

theorem canonical6_double (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_double a = .ok output) :
    Canonical6 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_double at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  exact ⟨(fq2_double_spec a.c0 c0 ha.1 h0).1,
    (fq2_double_spec a.c1 c1 ha.2.1 h1).1,
    (fq2_double_spec a.c2 c2 ha.2.2 h2).1⟩

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

theorem canonical6_mul_base_field_by_nonresidue
    (a output : Fq2LimbPair) (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_base_field_by_nonresidue a =
      .ok output) :
    Canonical2 output := (fq6_nonresidue_spec a output ha hexec).1

private theorem fq6_mul_spec (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul a b = .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a) (decodeFq6 b) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul at hexec
  obtain ⟨ad, had, hexec⟩ := bind_eq_ok hexec
  obtain ⟨be, hbe, hexec⟩ := bind_eq_ok hexec
  obtain ⟨cf, hcf, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm2, hfm2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm3, hfm3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨x, hx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm4, hfm4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm5, hfm5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm6, hfm6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm7, hfm7, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y, hy, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm8, hfm8, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm9, hfm9, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm10, hfm10, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm11, hfm11, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm12, hfm12, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z, hz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm13, hfm13, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm14, hfm14, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm15, hfm15, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm16, hfm16, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sad := extracted_fq2_mul_spec a.c0 b.c0 ad ha.1 hb.1 had
  have sbe := extracted_fq2_mul_spec a.c1 b.c1 be ha.2.1 hb.2.1 hbe
  have scf := extracted_fq2_mul_spec a.c2 b.c2 cf ha.2.2 hb.2.2 hcf
  have sfm := fq2_add_spec a.c1 a.c2 fm ha.2.1 ha.2.2 hfm
  have sfm1 := fq2_add_spec b.c1 b.c2 fm1 hb.2.1 hb.2.2 hfm1
  have sfm2 := extracted_fq2_mul_spec fm fm1 fm2 sfm.1 sfm1.1 hfm2
  have sfm3 := fq2_sub_spec fm2 be fm3 sfm2.1 sbe.1 hfm3
  have sx := fq2_sub_spec fm3 cf x sfm3.1 scf.1 hx
  have sfm4 := fq2_add_spec a.c0 a.c1 fm4 ha.1 ha.2.1 hfm4
  have sfm5 := fq2_add_spec b.c0 b.c1 fm5 hb.1 hb.2.1 hfm5
  have sfm6 := extracted_fq2_mul_spec fm4 fm5 fm6 sfm4.1 sfm5.1 hfm6
  have sfm7 := fq2_sub_spec fm6 ad fm7 sfm6.1 sad.1 hfm7
  have sy := fq2_sub_spec fm7 be y sfm7.1 sbe.1 hy
  have sfm8 := fq2_add_spec a.c0 a.c2 fm8 ha.1 ha.2.2 hfm8
  have sfm9 := fq2_add_spec b.c0 b.c2 fm9 hb.1 hb.2.2 hfm9
  have sfm10 := extracted_fq2_mul_spec fm8 fm9 fm10 sfm8.1 sfm9.1 hfm10
  have sfm11 := fq2_sub_spec fm10 ad fm11 sfm10.1 sad.1 hfm11
  have sfm12 := fq2_add_spec fm11 be fm12 sfm11.1 sbe.1 hfm12
  have sz := fq2_sub_spec fm12 cf z sfm12.1 scf.1 hz
  have sfm13 := fq6_nonresidue_spec x fm13 sx.1 hfm13
  have sfm14 := fq2_add_spec ad fm13 fm14 sad.1 sfm13.1 hfm14
  have sfm15 := fq6_nonresidue_spec cf fm15 scf.1 hfm15
  have sfm16 := fq2_add_spec y fm15 fm16 sy.1 sfm15.1 hfm16
  refine ⟨⟨sfm14.1, sfm16.1, sz.1⟩, ?_⟩
  simp [decodeFq6, Ipp.Bls12377.fq6Mul, sad.2, sbe.2, scf.2,
      sfm.2, sfm1.2, sfm2.2, sfm3.2, sx.2, sfm4.2, sfm5.2, sfm6.2,
      sfm7.2, sy.2, sfm8.2, sfm9.2, sfm10.2, sfm11.2, sfm12.2, sz.2,
      sfm13.2, sfm14.2, sfm15.2, sfm16.2] <;> ring_nf <;> simp

theorem canonical6_mul (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul a b = .ok output) :
    Canonical6 output := (fq6_mul_spec a b output ha hb hexec).1

theorem decode_fq6_mul (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul a b = .ok output) :
    decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a) (decodeFq6 b) :=
  (fq6_mul_spec a b output ha hb hexec).2

private theorem fq6_square_spec (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_square a = .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a) (decodeFq6 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_square at hexec
  obtain ⟨s0, hs0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s1, hs1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm2, hfm2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm3, hfm3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s3, hs3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s4, hs4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm4, hfm4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm5, hfm5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm6, hfm6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm7, hfm7, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm8, hfm8, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm9, hfm9, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm10, hfm10, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm11, hfm11, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ss0 := extracted_fq2_square_spec a.c0 s0 ha.1 hs0
  have sfm := extracted_fq2_mul_spec a.c0 a.c1 fm ha.1 ha.2.1 hfm
  have ss1 := fq2_double_spec fm s1 sfm.1 hs1
  have sfm1 := fq2_sub_spec a.c0 a.c1 fm1 ha.1 ha.2.1 hfm1
  have sfm2 := fq2_add_spec fm1 a.c2 fm2 sfm1.1 ha.2.2 hfm2
  have ss2 := extracted_fq2_square_spec fm2 s2 sfm2.1 hs2
  have sfm3 := extracted_fq2_mul_spec a.c1 a.c2 fm3 ha.2.1 ha.2.2 hfm3
  have ss3 := fq2_double_spec fm3 s3 sfm3.1 hs3
  have ss4 := extracted_fq2_square_spec a.c2 s4 ha.2.2 hs4
  have sfm4 := fq6_nonresidue_spec s3 fm4 ss3.1 hfm4
  have sfm5 := fq2_add_spec fm4 s0 fm5 sfm4.1 ss0.1 hfm5
  have sfm6 := fq6_nonresidue_spec s4 fm6 ss4.1 hfm6
  have sfm7 := fq2_add_spec fm6 s1 fm7 sfm6.1 ss1.1 hfm7
  have sfm8 := fq2_add_spec s1 s2 fm8 ss1.1 ss2.1 hfm8
  have sfm9 := fq2_add_spec fm8 s3 fm9 sfm8.1 ss3.1 hfm9
  have sfm10 := fq2_sub_spec fm9 s0 fm10 sfm9.1 ss0.1 hfm10
  have sfm11 := fq2_sub_spec fm10 s4 fm11 sfm10.1 ss4.1 hfm11
  refine ⟨⟨sfm5.1, sfm7.1, sfm11.1⟩, ?_⟩
  simp [decodeFq6, Ipp.Bls12377.fq6Mul, ss0.2, sfm.2, ss1.2, sfm1.2,
      sfm2.2, ss2.2, sfm3.2, ss3.2, ss4.2, sfm4.2, sfm5.2, sfm6.2,
      sfm7.2, sfm8.2, sfm9.2, sfm10.2, sfm11.2] <;> ring_nf <;> simp

theorem canonical6_square (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_square a = .ok output) :
    Canonical6 output := (fq6_square_spec a output ha hexec).1

theorem decode_fq6_square (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_square a = .ok output) :
    decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a) (decodeFq6 a) :=
  (fq6_square_spec a output ha hexec).2

private theorem fq6_mul_by_01_spec (a : Fq6LimbTriple) (c0 c1 : Fq2LimbPair)
    (output : Fq6LimbTriple) (ha : Canonical6 a) (hc0 : Canonical2 c0)
    (hc1 : Canonical2 c1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_by_01 a c0 c1 =
      .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a)
        ⟨decodeFq2 c0, decodeFq2 c1, 0⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_by_01 at hexec
  obtain ⟨aa, haa, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bb, hbb, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm2, hfm2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm3, hfm3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t1, ht1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm4, hfm4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm5, hfm5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm6, hfm6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t3, ht3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm7, hfm7, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm8, hfm8, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm9, hfm9, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm10, hfm10, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t2, ht2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have saa := extracted_fq2_mul_spec a.c0 c0 aa ha.1 hc0 haa
  have sbb := extracted_fq2_mul_spec a.c1 c1 bb ha.2.1 hc1 hbb
  have sfm := fq2_add_spec a.c1 a.c2 fm ha.2.1 ha.2.2 hfm
  have sfm1 := extracted_fq2_mul_spec c1 fm fm1 hc1 sfm.1 hfm1
  have sfm2 := fq2_sub_spec fm1 bb fm2 sfm1.1 sbb.1 hfm2
  have sfm3 := fq6_nonresidue_spec fm2 fm3 sfm2.1 hfm3
  have st1 := fq2_add_spec fm3 aa t1 sfm3.1 saa.1 ht1
  have sfm4 := fq2_add_spec a.c0 a.c2 fm4 ha.1 ha.2.2 hfm4
  have sfm5 := extracted_fq2_mul_spec c0 fm4 fm5 hc0 sfm4.1 hfm5
  have sfm6 := fq2_sub_spec fm5 aa fm6 sfm5.1 saa.1 hfm6
  have st3 := fq2_add_spec fm6 bb t3 sfm6.1 sbb.1 ht3
  have sfm7 := fq2_add_spec c0 c1 fm7 hc0 hc1 hfm7
  have sfm8 := fq2_add_spec a.c0 a.c1 fm8 ha.1 ha.2.1 hfm8
  have sfm9 := extracted_fq2_mul_spec fm7 fm8 fm9 sfm7.1 sfm8.1 hfm9
  have sfm10 := fq2_sub_spec fm9 aa fm10 sfm9.1 saa.1 hfm10
  have st2 := fq2_sub_spec fm10 bb t2 sfm10.1 sbb.1 ht2
  refine ⟨⟨st1.1, st2.1, st3.1⟩, ?_⟩
  simp [decodeFq6, Ipp.Bls12377.fq6Mul, saa.2, sbb.2, sfm.2, sfm1.2,
      sfm2.2, sfm3.2, st1.2, sfm4.2, sfm5.2, sfm6.2, st3.2, sfm7.2,
      sfm8.2, sfm9.2, sfm10.2, st2.2] <;> ring_nf <;> simp

theorem canonical6_mul_by_01 (a : Fq6LimbTriple) (c0 c1 : Fq2LimbPair)
    (output : Fq6LimbTriple) (ha : Canonical6 a) (hc0 : Canonical2 c0)
    (hc1 : Canonical2 c1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_by_01 a c0 c1 =
      .ok output) :
    Canonical6 output := (fq6_mul_by_01_spec a c0 c1 output ha hc0 hc1 hexec).1

theorem decode_fq6_mul_by_01 (a : Fq6LimbTriple) (c0 c1 : Fq2LimbPair)
    (output : Fq6LimbTriple) (ha : Canonical6 a) (hc0 : Canonical2 c0)
    (hc1 : Canonical2 c1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_by_01 a c0 c1 =
      .ok output) :
    decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a)
      ⟨decodeFq2 c0, decodeFq2 c1, 0⟩ :=
  (fq6_mul_by_01_spec a c0 c1 output ha hc0 hc1 hexec).2

private def fq6InvNormRoute (a : Fq6LimbTriple) :
    Result (Option Fq6LimbTriple) := do
  let t0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square a.c0
  let t1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square a.c1
  let t2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square a.c2
  let t3 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.c0 a.c1
  let t4 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.c0 a.c2
  let t5 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.c1 a.c2
  let fm ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_base_field_by_nonresidue t5
  let s0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub t0 fm
  let fm1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_base_field_by_nonresidue t2
  let s1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub fm1 t3
  let s2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub t1 t4
  let fm2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.c2 s1
  let fm3 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.c1 s2
  let fm4 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add fm2 fm3
  let a3 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_base_field_by_nonresidue fm4
  let fm5 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.c0 s0
  let fm6 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add fm5 a3
  let o ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv fm6
  match o with
  | none => ok none
  | some t6 => do
    let fm7 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul t6 s0
    let fm8 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul t6 s1
    let fm9 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul t6 s2
    ok (some { c0 := fm7, c1 := fm8, c2 := fm9 })

private theorem fq6_inv_norm_some_spec (a output : Fq6LimbTriple)
    (ha : Canonical6 a) (hexec : fq6InvNormRoute a = .ok (some output)) :
    Canonical6 output ∧
      Ipp.Bls12377.fq6Mul (decodeFq6 output) (decodeFq6 a) =
        Ipp.Bls12377.fq6One := by
  unfold fq6InvNormRoute at hexec
  obtain ⟨t0, ht0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t1, ht1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t2, ht2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t3, ht3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t4, ht4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t5, ht5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s0, hs0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s1, hs1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm2, hfm2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm3, hfm3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm4, hfm4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨a3, ha3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm5, hfm5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm6, hfm6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨o, ho, hexec⟩ := bind_eq_ok hexec
  cases o with
  | none => simp at hexec
  | some t6 =>
      obtain ⟨fm7, hfm7, hexec⟩ := bind_eq_ok hexec
      obtain ⟨fm8, hfm8, hexec⟩ := bind_eq_ok hexec
      obtain ⟨fm9, hfm9, hret⟩ := bind_eq_ok hexec
      simp only [Result.ok.injEq, Option.some.injEq] at hret
      subst output
      have st0 := extracted_fq2_square_spec a.c0 t0 ha.1 ht0
      have st1 := extracted_fq2_square_spec a.c1 t1 ha.2.1 ht1
      have st2 := extracted_fq2_square_spec a.c2 t2 ha.2.2 ht2
      have st3 := extracted_fq2_mul_spec a.c0 a.c1 t3 ha.1 ha.2.1 ht3
      have st4 := extracted_fq2_mul_spec a.c0 a.c2 t4 ha.1 ha.2.2 ht4
      have st5 := extracted_fq2_mul_spec a.c1 a.c2 t5 ha.2.1 ha.2.2 ht5
      have sfm := fq6_nonresidue_spec t5 fm st5.1 hfm
      have ss0 := fq2_sub_spec t0 fm s0 st0.1 sfm.1 hs0
      have sfm1 := fq6_nonresidue_spec t2 fm1 st2.1 hfm1
      have ss1 := fq2_sub_spec fm1 t3 s1 sfm1.1 st3.1 hs1
      have ss2 := fq2_sub_spec t1 t4 s2 st1.1 st4.1 hs2
      have sfm2 := extracted_fq2_mul_spec a.c2 s1 fm2 ha.2.2 ss1.1 hfm2
      have sfm3 := extracted_fq2_mul_spec a.c1 s2 fm3 ha.2.1 ss2.1 hfm3
      have sfm4 := fq2_add_spec fm2 fm3 fm4 sfm2.1 sfm3.1 hfm4
      have sa3 := fq6_nonresidue_spec fm4 a3 sfm4.1 ha3
      have sfm5 := extracted_fq2_mul_spec a.c0 s0 fm5 ha.1 ss0.1 hfm5
      have sfm6 := fq2_add_spec fm5 a3 fm6 sfm5.1 sa3.1 hfm6
      have sinv := extracted_fq2_inv_some_spec fm6 t6 sfm6.1 ho
      have sfm7 := extracted_fq2_mul_spec t6 s0 fm7 sinv.1 ss0.1 hfm7
      have sfm8 := extracted_fq2_mul_spec t6 s1 fm8 sinv.1 ss1.1 hfm8
      have sfm9 := extracted_fq2_mul_spec t6 s2 fm9 sinv.1 ss2.1 hfm9
      refine ⟨⟨sfm7.1, sfm8.1, sfm9.1⟩, ?_⟩
      let x := decodeFq2 a.c0
      let y := decodeFq2 a.c1
      let z := decodeFq2 a.c2
      let t := decodeFq2 t6
      have ds0 : decodeFq2 s0 = x * x - Ipp.Bls12377.fq2U * (y * z) := by
        simp only [x, y, z, ss0.2, st0.2, sfm.2, st5.2]
      have ds1 : decodeFq2 s1 = Ipp.Bls12377.fq2U * (z * z) - x * y := by
        simp only [x, y, z, ss1.2, sfm1.2, st2.2, st3.2]
      have ds2 : decodeFq2 s2 = y * y - x * z := by
        simp only [x, y, z, ss2.2, st1.2, st4.2]
      have dnorm : decodeFq2 fm6 =
          Ipp.Bls12377.fq6CubicNorm (decodeFq6 a) := by
        simp only [sfm6.2, sfm5.2, sa3.2, sfm4.2, sfm2.2, sfm3.2,
          ds0, ds1, ds2, decodeFq6, Ipp.Bls12377.fq6CubicNorm, x, y, z]
        ring
      have hinv : t * Ipp.Bls12377.fq6CubicNorm (decodeFq6 a) = 1 := by
        simpa only [t, dnorm] using sinv.2
      have hout : decodeFq6 { c0 := fm7, c1 := fm8, c2 := fm9 } =
          ⟨t * (x * x - Ipp.Bls12377.fq2U * (y * z)),
           t * (Ipp.Bls12377.fq2U * (z * z) - x * y),
           t * (y * y - x * z)⟩ := by
        change (⟨decodeFq2 fm7, decodeFq2 fm8, decodeFq2 fm9⟩ :
          Ipp.Bls12377.Fq6Model) = _
        rw [sfm7.2, sfm8.2, sfm9.2, ds0, ds1, ds2]
      rw [hout]
      have hmodel : decodeFq6 a = (⟨x, y, z⟩ : Ipp.Bls12377.Fq6Model) := rfl
      rw [hmodel] at hinv ⊢
      exact Ipp.Bls12377.fq6Mul_scaledAdjugate ⟨x, y, z⟩ t hinv

/-- A successful executed Fq6 inverse is canonical and multiplies its input to one. -/
theorem decode_fq6_inv_some (a output : Fq6LimbTriple) (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_inv a =
      .ok (some output)) :
    Canonical6 output ∧
      Ipp.Bls12377.fq6Mul (decodeFq6 output) (decodeFq6 a) =
        Ipp.Bls12377.fq6One := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_inv at hexec
  obtain ⟨b0, hb0, hexec⟩ := bind_eq_ok hexec
  split at hexec
  · obtain ⟨b1, hb1, hexec⟩ := bind_eq_ok hexec
    split at hexec
    · obtain ⟨b2, hb2, hexec⟩ := bind_eq_ok hexec
      split at hexec
      · simp at hexec
      · change fq6InvNormRoute a = .ok (some output) at hexec
        exact fq6_inv_norm_some_spec a output ha hexec
    · change fq6InvNormRoute a = .ok (some output) at hexec
      exact fq6_inv_norm_some_spec a output ha hexec
  · change fq6InvNormRoute a = .ok (some output) at hexec
    exact fq6_inv_norm_some_spec a output ha hexec

private theorem decode_eq_of_val_eq (x y : Ipp.Extracted.ArkworksFqMul.LimbArray)
    (h : x.val = y.val) :
    Ipp.Extracted.ArkworksFqMul.decode x = Ipp.Extracted.ArkworksFqMul.decode y := by
  obtain ⟨xv, xh⟩ := x
  obtain ⟨yv, yh⟩ := y
  simp only at h
  subst h
  rfl

private theorem decode_fq2_zero_limbs :
    decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  change decodeFq2
    ⟨Ipp.Extracted.ArkworksFqInv.zeroArray,
     Ipp.Extracted.ArkworksFqInv.zeroArray⟩ = 0
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv,
      Ipp.Extracted.ArkworksFqInv.limbsToNat_zeroArray]

theorem fq2_eq_zero_decode (a : Fq2LimbPair)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq a
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO = .ok true) :
    decodeFq2 a = 0 := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq at hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq at hexec
  simp only [ark_ip_proofs.core.array.equality.PartialEqArray.eq,
    Result.bind_ok] at hexec
  let z := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO
  have h0 : a.c0.val = z.c0.val := by
    by_contra hne
    rw [if_neg (by simpa [z] using hne)] at hexec
    simp at hexec
  rw [if_pos (by simpa [z] using h0)] at hexec
  have h1 : a.c1.val = z.c1.val := by
    exact of_decide_eq_true (Result.ok.inj hexec)
  have d0 := decode_eq_of_val_eq a.c0 z.c0 h0
  have d1 := decode_eq_of_val_eq a.c1 z.c1 h1
  rw [show decodeFq2 a = decodeFq2 z by
    apply QuadraticAlgebra.ext <;> simp [decodeFq2, d0, d1], decode_fq2_zero_limbs]

private theorem fq6_inv_norm_none (a : Fq6LimbTriple) (ha : Canonical6 a)
    (hexec : fq6InvNormRoute a = .ok none) :
    decodeFq6 a = Ipp.Bls12377.fq6Zero := by
  unfold fq6InvNormRoute at hexec
  obtain ⟨t0, ht0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t1, ht1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t2, ht2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t3, ht3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t4, ht4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨t5, ht5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s0, hs0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s1, hs1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm2, hfm2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm3, hfm3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm4, hfm4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨a3, ha3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm5, hfm5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm6, hfm6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨o, ho, hexec⟩ := bind_eq_ok hexec
  cases o with
  | some t6 =>
      obtain ⟨fm7, _, hexec⟩ := bind_eq_ok hexec
      obtain ⟨fm8, _, hexec⟩ := bind_eq_ok hexec
      obtain ⟨fm9, _, hexec⟩ := bind_eq_ok hexec
      exact absurd (Result.ok.inj hexec) (Option.some_ne_none _)
  | none =>
      have st0 := extracted_fq2_square_spec a.c0 t0 ha.1 ht0
      have st1 := extracted_fq2_square_spec a.c1 t1 ha.2.1 ht1
      have st2 := extracted_fq2_square_spec a.c2 t2 ha.2.2 ht2
      have st3 := extracted_fq2_mul_spec a.c0 a.c1 t3 ha.1 ha.2.1 ht3
      have st4 := extracted_fq2_mul_spec a.c0 a.c2 t4 ha.1 ha.2.2 ht4
      have st5 := extracted_fq2_mul_spec a.c1 a.c2 t5 ha.2.1 ha.2.2 ht5
      have sfm := fq6_nonresidue_spec t5 fm st5.1 hfm
      have ss0 := fq2_sub_spec t0 fm s0 st0.1 sfm.1 hs0
      have sfm1 := fq6_nonresidue_spec t2 fm1 st2.1 hfm1
      have ss1 := fq2_sub_spec fm1 t3 s1 sfm1.1 st3.1 hs1
      have ss2 := fq2_sub_spec t1 t4 s2 st1.1 st4.1 hs2
      have sfm2 := extracted_fq2_mul_spec a.c2 s1 fm2 ha.2.2 ss1.1 hfm2
      have sfm3 := extracted_fq2_mul_spec a.c1 s2 fm3 ha.2.1 ss2.1 hfm3
      have sfm4 := fq2_add_spec fm2 fm3 fm4 sfm2.1 sfm3.1 hfm4
      have sa3 := fq6_nonresidue_spec fm4 a3 sfm4.1 ha3
      have sfm5 := extracted_fq2_mul_spec a.c0 s0 fm5 ha.1 ss0.1 hfm5
      have sfm6 := fq2_add_spec fm5 a3 fm6 sfm5.1 sa3.1 hfm6
      have hzero := extracted_fq2_inv_none_iff fm6 sfm6.1 ho
      have hnorm : Ipp.Bls12377.fq6CubicNorm (decodeFq6 a) = 0 := by
        rw [← hzero]
        simp only [sfm6.2, sfm5.2, sa3.2, sfm4.2, sfm2.2, sfm3.2,
          ss0.2, ss1.2, ss2.2, st0.2, st1.2, st2.2, st3.2, st4.2,
          sfm.2, st5.2, sfm1.2, decodeFq6, Ipp.Bls12377.fq6CubicNorm]
        ring
      exact (Ipp.Bls12377.fq6CubicNorm_eq_zero_iff (decodeFq6 a)).mp hnorm

/-- The executed Fq6 inverse returns `none` only for the zero field element. -/
theorem decode_fq6_inv_none (a : Fq6LimbTriple) (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_inv a = .ok none) :
    decodeFq6 a = Ipp.Bls12377.fq6Zero := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_inv at hexec
  obtain ⟨b0, hb0, hexec⟩ := bind_eq_ok hexec
  split at hexec
  · obtain ⟨b1, hb1, hexec⟩ := bind_eq_ok hexec
    have eb0 : b0 = true := by assumption
    rw [eb0] at hb0
    split at hexec
    · obtain ⟨b2, hb2, hexec⟩ := bind_eq_ok hexec
      have eb1 : b1 = true := by assumption
      rw [eb1] at hb1
      split at hexec
      · have eb2 : b2 = true := by assumption
        rw [eb2] at hb2
        have h0 := fq2_eq_zero_decode a.c0 hb0
        have h1 := fq2_eq_zero_decode a.c1 hb1
        have h2 := fq2_eq_zero_decode a.c2 hb2
        have hz : Ipp.Bls12377.fq2Zero = 0 := by
          apply QuadraticAlgebra.ext <;> rfl
        simp [decodeFq6, Ipp.Bls12377.fq6Zero, h0, h1, h2, hz]
      · change fq6InvNormRoute a = .ok none at hexec
        exact fq6_inv_norm_none a ha hexec
    · change fq6InvNormRoute a = .ok none at hexec
      exact fq6_inv_norm_none a ha hexec
  · change fq6InvNormRoute a = .ok none at hexec
    exact fq6_inv_norm_none a ha hexec

private def frobeniusC1One : Ipp.Extracted.ArkworksFqMul.LimbArray :=
  MacCampaign.Array.make 6#usize [
    6382252053795993818#u64, 1383562296554596171#u64,
    11197251941974877903#u64, 6684509567199238270#u64,
    6699184357838251020#u64, 19987743694136192#u64]

private def frobeniusC1Two : Ipp.Extracted.ArkworksFqMul.LimbArray :=
  MacCampaign.Array.make 6#usize [
    15766275933608376691#u64, 15635974902606112666#u64,
    1934946774703877852#u64, 18129354943882397960#u64,
    15437979634065614942#u64, 101285514078273488#u64]

private def frobeniusC1Four : Ipp.Extracted.ArkworksFqMul.LimbArray :=
  MacCampaign.Array.make 6#usize [
    3203870859294639911#u64, 276961138506029237#u64,
    9479726329337356593#u64, 13645541738420943632#u64,
    7584832609311778094#u64, 101110569012358506#u64]

private theorem frobenius_radix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

private theorem decode_of_montgomery_eq
    (v : Ipp.Extracted.ArkworksFqMul.LimbArray) (c : Ipp.Bls12377.Fq)
    (h : (Ipp.Extracted.ArkworksFqMul.limbsToNat v : Ipp.Bls12377.Fq) =
      c * (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)) :
    Ipp.Extracted.ArkworksFqMul.decode v = c := by
  rw [Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv, h]
  rw [mul_assoc, ZMod.coe_mul_inv_eq_one _ frobenius_radix_coprime, mul_one]

private theorem decode_frobeniusC1One :
    Ipp.Extracted.ArkworksFqMul.decode frobeniusC1One =
      (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410946 :
        Ipp.Bls12377.Fq) := by
  apply decode_of_montgomery_eq
  rfl

set_option maxRecDepth 4096 in
private theorem decode_frobeniusC1Two :
    Ipp.Extracted.ArkworksFqMul.decode frobeniusC1Two =
      (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410945 :
        Ipp.Bls12377.Fq) := by
  apply decode_of_montgomery_eq
  rfl

set_option maxRecDepth 4096 in
private theorem decode_frobeniusC1Four :
    Ipp.Extracted.ArkworksFqMul.decode frobeniusC1Four =
      (258664426012969093929703085429980814127835149614277183275038967946009968870203535512256352201271898244626862047231 :
        Ipp.Bls12377.Fq) := by
  apply decode_of_montgomery_eq
  rfl

private theorem decode_fq_zero_limbs :
    Ipp.Extracted.ArkworksFqMul.decode
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  change Ipp.Extracted.ArkworksFqMul.decode
    Ipp.Extracted.ArkworksFqInv.zeroArray = 0
  simp [Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv,
    Ipp.Extracted.ArkworksFqInv.limbsToNat_zeroArray]

private theorem limbsToNat_make_six
    (x0 x1 x2 x3 x4 x5 : MacCampaign.U64) :
    Ipp.Extracted.ArkworksFqMul.limbsToNat
      (MacCampaign.Array.make 6#usize [x0, x1, x2, x3, x4, x5]) =
      x0.val + x1.val * Ipp.Extracted.ArkworksFqMul.wordBase +
      x2.val * Ipp.Extracted.ArkworksFqMul.wordBase ^ 2 +
      x3.val * Ipp.Extracted.ArkworksFqMul.wordBase ^ 3 +
      x4.val * Ipp.Extracted.ArkworksFqMul.wordBase ^ 4 +
      x5.val * Ipp.Extracted.ArkworksFqMul.wordBase ^ 5 := by
  simp [Ipp.Extracted.ArkworksFqMul.limbsToNat,
    Ipp.Extracted.ArkworksFqMul.prefixToNat,
    Ipp.Extracted.ArkworksFqMul.limb,
    Ipp.Extracted.ArkworksFqMul.limbWord, MacCampaign.Array.make,
    Ipp.Extracted.ArkworksFqMul.limbCount]

set_option maxRecDepth 4096 in
private theorem canonical_frobeniusC1One :
    Ipp.Extracted.ArkworksFqMul.limbsToNat frobeniusC1One <
      Ipp.Bls12377.baseModulus := by
  rw [frobeniusC1One, limbsToNat_make_six]
  norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base,
    Ipp.Extracted.ArkworksFqMul.wordBase, Ipp.Bls12377.baseModulus]

set_option maxRecDepth 4096 in
private theorem canonical_frobeniusC1Two :
    Ipp.Extracted.ArkworksFqMul.limbsToNat frobeniusC1Two <
      Ipp.Bls12377.baseModulus := by
  rw [frobeniusC1Two, limbsToNat_make_six]
  norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base,
    Ipp.Extracted.ArkworksFqMul.wordBase, Ipp.Bls12377.baseModulus]

set_option maxRecDepth 4096 in
private theorem canonical_frobeniusC1Four :
    Ipp.Extracted.ArkworksFqMul.limbsToNat frobeniusC1Four <
      Ipp.Bls12377.baseModulus := by
  rw [frobeniusC1Four, limbsToNat_make_six]
  norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base,
    Ipp.Extracted.ArkworksFqMul.wordBase, Ipp.Bls12377.baseModulus]

private theorem canonical_fq_zero_limbs :
    Ipp.Extracted.ArkworksFqMul.limbsToNat
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO <
        Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  change Ipp.Extracted.ArkworksFqMul.limbsToNat
    Ipp.Extracted.ArkworksFqInv.zeroArray < Ipp.Bls12377.baseModulus
  simp [Ipp.Extracted.ArkworksFqInv.limbsToNat_zeroArray,
    Ipp.Bls12377.baseModulus]

private theorem frobeniusC1One_selected :
    MacCampaign.Array.index_usize
      ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C1 1#usize =
        .ok frobeniusC1One := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C1]
  rfl

private theorem frobeniusC1Two_selected :
    (do
      let table ← ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C2
      MacCampaign.Array.index_usize table 1#usize) =
        .ok frobeniusC1Two := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C2,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C1]
  rfl

private theorem frobeniusC1Two_selected_c1 :
    MacCampaign.Array.index_usize
      ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C1 2#usize =
        .ok frobeniusC1Two := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C1]
  rfl

private theorem frobeniusC1Four_selected :
    (do
      let table ← ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C2
      MacCampaign.Array.index_usize table 2#usize) =
        .ok frobeniusC1Four := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C2,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C1]
  rfl

private theorem fq2_frobenius_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius a =
      .ok output) :
    Canonical2 output ∧ decodeFq2 output = star (decodeFq2 a) := by
  have hdecode := decode_fq2_frobenius a output ha hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius at hexec
  obtain ⟨c1, hc1, hret⟩ := bind_eq_ok hexec
  cases hret
  exact ⟨⟨ha.1,
    (Ipp.Extracted.ArkworksFqOps.extracted_neg_spec a.c1 c1 ha.2 hc1).1⟩,
    hdecode⟩

private theorem decode_frobeniusC1One_pair :
    decodeFq2 ⟨frobeniusC1One,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ =
      Ipp.Bls12377.fq2U ^
        ((Ipp.Bls12377.baseModulus - 1) / 3) := by
  rw [Ipp.Bls12377.fq6FrobeniusC1_one]
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, decode_frobeniusC1One, decode_fq_zero_limbs]

private theorem decode_frobeniusC1Two_pair :
    decodeFq2 ⟨frobeniusC1Two,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ =
      Ipp.Bls12377.fq2U ^
        ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3) := by
  rw [Ipp.Bls12377.fq6FrobeniusC1_two]
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, decode_frobeniusC1Two, decode_fq_zero_limbs]

private theorem decode_frobeniusC1Two_c2_pair :
    decodeFq2 ⟨frobeniusC1Two,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ =
      Ipp.Bls12377.fq2U ^
        (2 * ((Ipp.Bls12377.baseModulus - 1) / 3)) := by
  rw [Ipp.Bls12377.fq6FrobeniusC2_one]
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, decode_frobeniusC1Two, decode_fq_zero_limbs]

private theorem decode_frobeniusC1Four_pair :
    decodeFq2 ⟨frobeniusC1Four,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ =
      Ipp.Bls12377.fq2U ^
        (2 * ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3)) := by
  rw [Ipp.Bls12377.fq6FrobeniusC2_two]
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, decode_frobeniusC1Four, decode_fq_zero_limbs]

private theorem canonical_frobeniusC1One_pair :
    Canonical2 ⟨frobeniusC1One,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ :=
  ⟨canonical_frobeniusC1One, canonical_fq_zero_limbs⟩

private theorem canonical_frobeniusC1Two_pair :
    Canonical2 ⟨frobeniusC1Two,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ :=
  ⟨canonical_frobeniusC1Two, canonical_fq_zero_limbs⟩

private theorem canonical_frobeniusC1Four_pair :
    Canonical2 ⟨frobeniusC1Four,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ :=
  ⟨canonical_frobeniusC1Four, canonical_fq_zero_limbs⟩

theorem decode_fq6_frobenius_one (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_frobenius a 1#usize =
      .ok output) :
    Canonical6 output ∧ decodeFq6 output =
      ⟨star (decodeFq2 a.c0),
       Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus - 1) / 3) *
         star (decodeFq2 a.c1),
       Ipp.Bls12377.fq2U ^ (2 * ((Ipp.Bls12377.baseModulus - 1) / 3)) *
         star (decodeFq2 a.c2)⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_frobenius at hexec
  obtain ⟨index, hindex, hexec⟩ := bind_eq_ok hexec
  have hindexValue : (1#usize % 6#usize : Result Usize) = .ok 1#usize := by
    rfl
  have : (1#usize : Usize) = index :=
    Result.ok.inj (hindexValue.symm.trans hindex)
  subst index
  obtain ⟨c0, hc0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, hc1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, hc2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c3, hc3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c4, hc4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c5, hc5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c6, hc6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c7, hc7, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ec0 : frobeniusC1One = c0 :=
    Result.ok.inj (frobeniusC1One_selected.symm.trans hc0)
  have hc2' : (do
      let table ← ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C2
      MacCampaign.Array.index_usize table 1#usize) = .ok c2 := by
    rw [hc1]
    exact hc2
  have ec2 : frobeniusC1Two = c2 :=
    Result.ok.inj (frobeniusC1Two_selected.symm.trans hc2')
  subst c0
  subst c2
  have hc3' : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius a.c0 =
      .ok c3 := by
    simpa [ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius_power] using hc3
  have hc4' : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius a.c1 =
      .ok c4 := by
    simpa [ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius_power] using hc4
  have hc6' : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius a.c2 =
      .ok c6 := by
    simpa [ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius_power] using hc6
  have sc3 := fq2_frobenius_spec a.c0 c3 ha.1 hc3'
  have sc4 := fq2_frobenius_spec a.c1 c4 ha.2.1 hc4'
  have sc5 := extracted_fq2_mul_spec c4
    ⟨frobeniusC1One, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ c5
    sc4.1 canonical_frobeniusC1One_pair hc5
  have sc6 := fq2_frobenius_spec a.c2 c6 ha.2.2 hc6'
  have sc7 := extracted_fq2_mul_spec c6
    ⟨frobeniusC1Two, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ c7
    sc6.1 canonical_frobeniusC1Two_pair hc7
  refine ⟨⟨sc3.1, sc5.1, sc7.1⟩, ?_⟩
  change (⟨decodeFq2 c3, decodeFq2 c5, decodeFq2 c7⟩ :
    Ipp.Bls12377.Fq6Model) = _
  rw [sc3.2, sc5.2, sc4.2, decode_frobeniusC1One_pair,
    sc7.2, sc6.2, decode_frobeniusC1Two_c2_pair]
  simp only [mul_comm]

theorem decode_fq6_frobenius_two (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_frobenius a 2#usize =
      .ok output) :
    Canonical6 output ∧ decodeFq6 output =
      ⟨decodeFq2 a.c0,
       Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3) *
         decodeFq2 a.c1,
       Ipp.Bls12377.fq2U ^ (2 * ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3)) *
         decodeFq2 a.c2⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_frobenius at hexec
  obtain ⟨index, hindex, hexec⟩ := bind_eq_ok hexec
  have hindexValue : (2#usize % 6#usize : Result Usize) = .ok 2#usize := by
    rfl
  have : (2#usize : Usize) = index :=
    Result.ok.inj (hindexValue.symm.trans hindex)
  subst index
  obtain ⟨c0, hc0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, hc1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, hc2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c3, hc3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c4, hc4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c5, hc5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c6, hc6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c7, hc7, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ec0 : frobeniusC1Two = c0 :=
    Result.ok.inj (frobeniusC1Two_selected_c1.symm.trans hc0)
  have hc2' : (do
      let table ← ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C2
      MacCampaign.Array.index_usize table 2#usize) = .ok c2 := by
    rw [hc1]
    exact hc2
  have ec2 : frobeniusC1Four = c2 :=
    Result.ok.inj (frobeniusC1Four_selected.symm.trans hc2')
  subst c0
  subst c2
  have ec3 : a.c0 = c3 := by
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius_power at hc3
    rw [show (2#usize % 2#usize : Result Usize) = .ok 0#usize by rfl] at hc3
    simpa only [Result.bind_ok, if_true, Result.ok.injEq] using hc3
  have ec4 : a.c1 = c4 := by
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius_power at hc4
    rw [show (2#usize % 2#usize : Result Usize) = .ok 0#usize by rfl] at hc4
    simpa only [Result.bind_ok, if_true, Result.ok.injEq] using hc4
  have ec6 : a.c2 = c6 := by
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_frobenius_power at hc6
    rw [show (2#usize % 2#usize : Result Usize) = .ok 0#usize by rfl] at hc6
    simpa only [Result.bind_ok, if_true, Result.ok.injEq] using hc6
  subst c3
  subst c4
  subst c6
  have sc5 := extracted_fq2_mul_spec a.c1
    ⟨frobeniusC1Two, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ c5
    ha.2.1 canonical_frobeniusC1Two_pair hc5
  have sc7 := extracted_fq2_mul_spec a.c2
    ⟨frobeniusC1Four, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ c7
    ha.2.2 canonical_frobeniusC1Four_pair hc7
  refine ⟨⟨ha.1, sc5.1, sc7.1⟩, ?_⟩
  change (⟨decodeFq2 a.c0, decodeFq2 c5, decodeFq2 c7⟩ :
    Ipp.Bls12377.Fq6Model) = _
  rw [sc5.2, decode_frobeniusC1Two_pair,
    sc7.2, decode_frobeniusC1Four_pair]
  simp only [mul_comm]

/-- Executed multiplication transported into the canonical cubic field. -/
theorem canonical_field_fq6_mul (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul a b = .ok output) :
    Ipp.Bls12377.fq6Coefficients (decodeFq6 output) =
      Ipp.Bls12377.fq6Coefficients (decodeFq6 a) *
        Ipp.Bls12377.fq6Coefficients (decodeFq6 b) := by
  rw [decode_fq6_mul a b output ha hb hexec,
    Ipp.Bls12377.fq6Coefficients_mul]

/-- Executed squaring transported into the canonical cubic field. -/
theorem canonical_field_fq6_square (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_square a = .ok output) :
    Ipp.Bls12377.fq6Coefficients (decodeFq6 output) =
      Ipp.Bls12377.fq6Coefficients (decodeFq6 a) ^ 2 := by
  rw [decode_fq6_square a output ha hexec,
    Ipp.Bls12377.fq6Coefficients_mul, pow_two]

/-- A successful executed inverse is an inverse in the canonical cubic field. -/
theorem canonical_field_fq6_inv (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_inv a =
      .ok (some output)) :
    Ipp.Bls12377.fq6Coefficients (decodeFq6 output) *
        Ipp.Bls12377.fq6Coefficients (decodeFq6 a) = 1 := by
  have h := (decode_fq6_inv_some a output ha hexec).2
  rw [← Ipp.Bls12377.fq6Coefficients_mul, h,
    Ipp.Bls12377.fq6Coefficients_one]

#print axioms decode_fq6_add
#print axioms canonical6_add
#print axioms decode_fq6_sub
#print axioms canonical6_sub
#print axioms decode_fq6_neg
#print axioms decode_fq6_double
#print axioms canonical6_double
#print axioms decode_fq6_mul_base_field_by_nonresidue
#print axioms canonical6_mul_base_field_by_nonresidue
#print axioms canonical6_mul
#print axioms decode_fq6_mul
#print axioms canonical6_square
#print axioms decode_fq6_square
#print axioms canonical6_mul_by_01
#print axioms decode_fq6_mul_by_01
#print axioms decode_fq6_inv_some
#print axioms decode_fq6_inv_none
#print axioms fq2_eq_zero_decode
#print axioms canonical_field_fq6_mul
#print axioms canonical_field_fq6_square
#print axioms canonical_field_fq6_inv
#print axioms decode_fq6_frobenius_one
#print axioms decode_fq6_frobenius_two

end Ipp.Extracted.ArkworksFq6
