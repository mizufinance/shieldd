import Ipp.Extracted.ArkworksEllGenerated
import Ipp.Extracted.ArkworksFq6
import Ipp.Bls12377Fq12
import Mathlib.Tactic

/-! Sparse Fq12 refinement for the declarations owned by the Ell extraction. -/

namespace Ipp.Extracted.ArkworksEllFq12

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFq6
open Ipp.Extracted.ArkworksFqMul

abbrev Fq12LimbPair := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq12Mont

def decodeFq12 (a : Fq12LimbPair) : Ipp.Bls12377.Fq12Model :=
  ⟨decodeFq6 a.c0, decodeFq6 a.c1⟩

def Canonical12 (a : Fq12LimbPair) : Prop :=
  Canonical6 a.c0 ∧ Canonical6 a.c1

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

private theorem fq6_add_spec (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_add a b = .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6Add (decodeFq6 a) (decodeFq6 b) :=
  ⟨canonical6_add a b output ha hb hexec,
    decode_fq6_add a b output ha hb hexec⟩

private theorem fq6_mul_by_01_spec (a : Fq6LimbTriple) (c0 c1 : Fq2LimbPair)
    (output : Fq6LimbTriple) (ha : Canonical6 a) (hc0 : Canonical2 c0)
    (hc1 : Canonical2 c1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_by_01 a c0 c1 =
      .ok output) :
    Canonical6 output ∧ decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a)
      ⟨decodeFq2 c0, decodeFq2 c1, 0⟩ :=
  ⟨canonical6_mul_by_01 a c0 c1 output ha hc0 hc1 hexec,
    decode_fq6_mul_by_01 a c0 c1 output ha hc0 hc1 hexec⟩

private theorem fq2_add_spec (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add a b = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a + decodeFq2 b :=
  ⟨canonical_fq2_add a b output ha hb hexec,
    decode_fq2_add a b output ha hb hexec⟩

private theorem fq6_sub_spec (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_sub a b = .ok output) :
    Canonical6 output ∧ decodeFq6 output =
      ⟨(decodeFq6 a).c0 - (decodeFq6 b).c0,
       (decodeFq6 a).c1 - (decodeFq6 b).c1,
       (decodeFq6 a).c2 - (decodeFq6 b).c2⟩ :=
  ⟨canonical6_sub a b output ha hb hexec, by
    simpa [decodeFq6] using decode_fq6_sub a b output ha hb hexec⟩

private theorem fq12_nonresidue_spec (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_base_field_by_nonresidue a =
        .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6MulByV (decodeFq6 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_base_field_by_nonresidue at hexec
  obtain ⟨fm, hfm, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have hcan := canonical6_mul_base_field_by_nonresidue a.c2 fm ha.2.2 hfm
  have hdec := decode_fq6_mul_base_field_by_nonresidue a.c2 fm ha.2.2 hfm
  exact ⟨⟨hcan, ha.1, ha.2.1⟩, by
    simp [decodeFq6, Ipp.Bls12377.fq6MulByV, hdec]⟩

private theorem fq12_mul_by_034_spec (a : Fq12LimbPair)
    (c0 c3 c4 : Fq2LimbPair) (output : Fq12LimbPair)
    (ha : Canonical12 a) (hc0 : Canonical2 c0) (hc3 : Canonical2 c3)
    (hc4 : Canonical2 c4)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_by_034 a c0 c3 c4 =
      .ok output) :
    Canonical12 output ∧ decodeFq12 output =
      Ipp.Bls12377.fq12Mul (decodeFq12 a)
        (Ipp.Bls12377.sparse034 (decodeFq2 c0) (decodeFq2 c3) (decodeFq2 c4)) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_by_034 at hexec
  obtain ⟨m0, hm0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m1, hm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m2, hm2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bb, hbb, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m3, hm3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m4, hm4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨e, he, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m5, hm5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m6, hm6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m7, hm7, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m8, hm8, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sm0 := extracted_fq2_mul_spec a.c0.c0 c0 m0 ha.1.1 hc0 hm0
  have sm1 := extracted_fq2_mul_spec a.c0.c1 c0 m1 ha.1.2.1 hc0 hm1
  have sm2 := extracted_fq2_mul_spec a.c0.c2 c0 m2 ha.1.2.2 hc0 hm2
  have sbb := fq6_mul_by_01_spec a.c1 c3 c4 bb ha.2 hc3 hc4 hbb
  have sm3 := fq6_add_spec a.c0 a.c1 m3 ha.1 ha.2 hm3
  have sm4 := fq2_add_spec c0 c3 m4 hc0 hc3 hm4
  have se := fq6_mul_by_01_spec m3 m4 c4 e sm3.1 sm4.1 hc4 he
  have sm5 := fq12_nonresidue_spec bb m5 sbb.1 hm5
  have sm6 := fq6_add_spec m5 ⟨m0, m1, m2⟩ m6 sm5.1
    ⟨sm0.1, sm1.1, sm2.1⟩ hm6
  have sm7 := fq6_add_spec ⟨m0, m1, m2⟩ bb m7
    ⟨sm0.1, sm1.1, sm2.1⟩ sbb.1 hm7
  have sm8 := fq6_sub_spec e m7 m8 se.1 sm7.1 hm8
  refine ⟨⟨sm6.1, sm8.1⟩, ?_⟩
  change (⟨decodeFq6 m6, decodeFq6 m8⟩ : Ipp.Bls12377.Fq12Model) = _
  rw [sm6.2, sm8.2, sm5.2, sm7.2, se.2, sm3.2, sm4.2, sbb.2]
  have hzero : (⟨0, 0⟩ : Ipp.Bls12377.Fq2) = 0 := rfl
  simp [decodeFq12, decodeFq6, Ipp.Bls12377.fq12Mul,
    Ipp.Bls12377.sparse034, Ipp.Bls12377.fq2Zero, Ipp.Bls12377.fq6Add,
    Ipp.Bls12377.fq6Mul, Ipp.Bls12377.fq6MulByV, sm0.2, sm1.2, sm2.2,
    hzero] <;>
    ring_nf <;> try simp

theorem canonical12_mul_by_034 (a : Fq12LimbPair)
    (c0 c3 c4 : Fq2LimbPair) (output : Fq12LimbPair)
    (ha : Canonical12 a) (hc0 : Canonical2 c0) (hc3 : Canonical2 c3)
    (hc4 : Canonical2 c4)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_by_034 a c0 c3 c4 =
      .ok output) :
    Canonical12 output :=
  (fq12_mul_by_034_spec a c0 c3 c4 output ha hc0 hc3 hc4 hexec).1

theorem decode_fq12_mul_by_034 (a : Fq12LimbPair)
    (c0 c3 c4 : Fq2LimbPair) (output : Fq12LimbPair)
    (ha : Canonical12 a) (hc0 : Canonical2 c0) (hc3 : Canonical2 c3)
    (hc4 : Canonical2 c4)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_by_034 a c0 c3 c4 =
      .ok output) :
    decodeFq12 output = Ipp.Bls12377.fq12Mul (decodeFq12 a)
      (Ipp.Bls12377.sparse034 (decodeFq2 c0) (decodeFq2 c3) (decodeFq2 c4)) :=
  (fq12_mul_by_034_spec a c0 c3 c4 output ha hc0 hc3 hc4 hexec).2

#print axioms canonical12_mul_by_034
#print axioms decode_fq12_mul_by_034

end Ipp.Extracted.ArkworksEllFq12
