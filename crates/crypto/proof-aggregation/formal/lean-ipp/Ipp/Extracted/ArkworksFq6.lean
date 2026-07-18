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

#print axioms decode_fq6_add
#print axioms decode_fq6_sub
#print axioms decode_fq6_neg
#print axioms decode_fq6_double
#print axioms decode_fq6_mul_base_field_by_nonresidue
#print axioms canonical6_mul
#print axioms decode_fq6_mul
#print axioms canonical6_square
#print axioms decode_fq6_square
#print axioms canonical6_mul_by_01
#print axioms decode_fq6_mul_by_01

end Ipp.Extracted.ArkworksFq6
