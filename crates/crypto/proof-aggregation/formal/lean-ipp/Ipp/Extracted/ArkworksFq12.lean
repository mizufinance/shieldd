import Ipp.Extracted.ArkworksFq12Generated
import Ipp.Extracted.ArkworksFq6
import Ipp.Bls12377Fq12
import Mathlib.Tactic

/-! S3-21 part 1: the reached componentwise Fq12 operation refines `Fq12Model`. -/

namespace Ipp.Extracted.ArkworksFq12

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFq6

abbrev Fq12LimbPair := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq12Mont

/-- Componentwise Montgomery decode into the concrete Fq12 model. -/
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
  ⟨canonical6_add a b output ha hb hexec, decode_fq6_add a b output ha hb hexec⟩

private theorem fq6_mul_spec (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul a b = .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a) (decodeFq6 b) :=
  ⟨canonical6_mul a b output ha hb hexec, decode_fq6_mul a b output ha hb hexec⟩

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
  ⟨canonical_fq2_add a b output ha hb hexec, decode_fq2_add a b output ha hb hexec⟩

private theorem fq6_sub_spec (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_sub a b = .ok output) :
    Canonical6 output ∧ decodeFq6 output =
      ⟨(decodeFq6 a).c0 - (decodeFq6 b).c0,
       (decodeFq6 a).c1 - (decodeFq6 b).c1,
       (decodeFq6 a).c2 - (decodeFq6 b).c2⟩ :=
  ⟨canonical6_sub a b output ha hb hexec, by
    simpa [decodeFq6] using decode_fq6_sub a b output ha hb hexec⟩

private theorem fq6_double_spec (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_double a = .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6Add (decodeFq6 a) (decodeFq6 a) :=
  ⟨canonical6_double a output ha hexec, decode_fq6_double a output ha hexec⟩

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

private theorem fq12_mul_spec (a b output : Fq12LimbPair)
    (ha : Canonical12 a) (hb : Canonical12 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul a b = .ok output) :
    Canonical12 output ∧
      decodeFq12 output =
        Ipp.Bls12377.fq12Mul (decodeFq12 a) (decodeFq12 b) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul at hexec
  obtain ⟨v0, hv0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v1, hv1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm2, hfm2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm3, hfm3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, hc1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm4, hfm4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c0, hc0, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sv0 := fq6_mul_spec a.c0 b.c0 v0 ha.1 hb.1 hv0
  have sv1 := fq6_mul_spec a.c1 b.c1 v1 ha.2 hb.2 hv1
  have sfm := fq6_add_spec a.c1 a.c0 fm ha.2 ha.1 hfm
  have sfm1 := fq6_add_spec b.c0 b.c1 fm1 hb.1 hb.2 hfm1
  have sfm2 := fq6_mul_spec fm fm1 fm2 sfm.1 sfm1.1 hfm2
  have sfm3 := fq6_sub_spec fm2 v0 fm3 sfm2.1 sv0.1 hfm3
  have sc1 := fq6_sub_spec fm3 v1 c1 sfm3.1 sv1.1 hc1
  have sfm4 := fq12_nonresidue_spec v1 fm4 sv1.1 hfm4
  have sc0 := fq6_add_spec fm4 v0 c0 sfm4.1 sv0.1 hc0
  refine ⟨⟨sc0.1, sc1.1⟩, ?_⟩
  change (⟨decodeFq6 c0, decodeFq6 c1⟩ : Ipp.Bls12377.Fq12Model) = _
  rw [sc0.2, sc1.2, sfm4.2, sfm3.2, sfm2.2, sv0.2, sv1.2, sfm.2, sfm1.2]
  simp [decodeFq12, decodeFq6, Ipp.Bls12377.fq12Mul,
    Ipp.Bls12377.fq6Add, Ipp.Bls12377.fq6Mul, Ipp.Bls12377.fq6MulByV] <;>
    ring_nf <;> try simp

theorem canonical12_mul (a b output : Fq12LimbPair)
    (ha : Canonical12 a) (hb : Canonical12 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul a b = .ok output) :
    Canonical12 output := (fq12_mul_spec a b output ha hb hexec).1

theorem decode_fq12_mul (a b output : Fq12LimbPair)
    (ha : Canonical12 a) (hb : Canonical12 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul a b = .ok output) :
    decodeFq12 output =
      Ipp.Bls12377.fq12Mul (decodeFq12 a) (decodeFq12 b) :=
  (fq12_mul_spec a b output ha hb hexec).2

private theorem fq12_square_spec (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square a = .ok output) :
    Canonical12 output ∧
      decodeFq12 output = Ipp.Bls12377.fq12Square (decodeFq12 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square at hexec
  obtain ⟨v0, hv0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v3, hv3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v2, hv2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v01, hv01, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm2, hfm2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm3, hfm3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm4, hfm4, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sv0 := fq6_sub_spec a.c0 a.c1 v0 ha.1 ha.2 hv0
  have sfm := fq12_nonresidue_spec a.c1 fm ha.2 hfm
  have sv3 := fq6_sub_spec a.c0 fm v3 ha.1 sfm.1 hv3
  have sv2 := fq6_mul_spec a.c0 a.c1 v2 ha.1 ha.2 hv2
  have sv01 := fq6_mul_spec v0 v3 v01 sv0.1 sv3.1 hv01
  have sfm1 := fq12_nonresidue_spec v2 fm1 sv2.1 hfm1
  have sfm2 := fq6_add_spec fm1 v01 fm2 sfm1.1 sv01.1 hfm2
  have sfm3 := fq6_add_spec fm2 v2 fm3 sfm2.1 sv2.1 hfm3
  have sfm4 := fq6_double_spec v2 fm4 sv2.1 hfm4
  refine ⟨⟨sfm3.1, sfm4.1⟩, ?_⟩
  change (⟨decodeFq6 fm3, decodeFq6 fm4⟩ : Ipp.Bls12377.Fq12Model) = _
  rw [sfm3.2, sfm4.2, sfm2.2, sfm1.2, sv01.2, sv2.2, sv0.2, sv3.2, sfm.2]
  simp [decodeFq12, decodeFq6, Ipp.Bls12377.fq12Square,
    Ipp.Bls12377.fq12Mul, Ipp.Bls12377.fq6Add, Ipp.Bls12377.fq6Mul,
    Ipp.Bls12377.fq6MulByV] <;> ring_nf <;> try simp

theorem canonical12_square (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square a = .ok output) :
    Canonical12 output := (fq12_square_spec a output ha hexec).1

theorem decode_fq12_square (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square a = .ok output) :
    decodeFq12 output = Ipp.Bls12377.fq12Square (decodeFq12 a) :=
  (fq12_square_spec a output ha hexec).2

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

/-- Executed quadratic conjugation preserves c0 and negates all three c1 Fq2 lanes. -/
theorem decode_fq12_conjugate (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate a =
      .ok output) :
    decodeFq12 output =
      ⟨decodeFq6 a.c0,
       ⟨-decodeFq2 a.c1.c0, -decodeFq2 a.c1.c1, -decodeFq2 a.c1.c2⟩⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate at hexec
  obtain ⟨c1, hc1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have e1 := decode_fq6_neg a.c1 c1 ha.2 hc1
  simp [decodeFq12, e1]

private theorem fq2_neg_canonical (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg a = .ok output) :
    Canonical2 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  exact ⟨(Ipp.Extracted.ArkworksFqOps.extracted_neg_spec a.c0 c0 ha.1 h0).1,
    (Ipp.Extracted.ArkworksFqOps.extracted_neg_spec a.c1 c1 ha.2 h1).1⟩

private theorem fq6_neg_spec (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_neg a = .ok output) :
    Canonical6 output ∧ decodeFq6 output =
      ⟨-decodeFq2 a.c0, -decodeFq2 a.c1, -decodeFq2 a.c2⟩ := by
  have hdecode := decode_fq6_neg a output ha hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_neg at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  exact ⟨⟨fq2_neg_canonical a.c0 c0 ha.1 h0,
    fq2_neg_canonical a.c1 c1 ha.2.1 h1,
    fq2_neg_canonical a.c2 c2 ha.2.2 h2⟩, hdecode⟩

private theorem fq6_eq_zero_decode (a : Fq6LimbTriple)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq6Mont.Insts.CoreCmpPartialEqFq6Mont.eq
        a ark_ip_proofs.s3_07_arkworks_fq_spike.FQ6_ZERO = .ok true) :
    decodeFq6 a = Ipp.Bls12377.fq6Zero := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.Fq6Mont.Insts.CoreCmpPartialEqFq6Mont.eq at hexec
  obtain ⟨b0, hb0, hexec⟩ := bind_eq_ok hexec
  split at hexec
  · have eb0 : b0 = true := by assumption
    rw [eb0] at hb0
    obtain ⟨b1, hb1, hexec⟩ := bind_eq_ok hexec
    split at hexec
    · have eb1 : b1 = true := by assumption
      rw [eb1] at hb1
      rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ6_ZERO] at hb0 hb1 hexec
      have h0 := fq2_eq_zero_decode a.c0 hb0
      have h1 := fq2_eq_zero_decode a.c1 hb1
      have h2 := fq2_eq_zero_decode a.c2 hexec
      have hz : Ipp.Bls12377.fq2Zero = 0 := by
        apply QuadraticAlgebra.ext <;> rfl
      simp [decodeFq6, Ipp.Bls12377.fq6Zero, h0, h1, h2, hz]
    · simp at hexec
  · simp at hexec

private def fq12InvNormRoute (a : Fq12LimbPair) :
    Result (Option Fq12LimbPair) := do
  let v1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_square a.c1
  let fm ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_square a.c0
  let fm1 ←
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_base_field_by_nonresidue v1
  let norm ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_sub fm fm1
  let o ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_inv norm
  match o with
  | none => .ok none
  | some normInv => do
    let c0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul a.c0 normInv
    let c1p ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul a.c1 normInv
    let c1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_neg c1p
    .ok (some ⟨c0, c1⟩)

private theorem fq12_inv_norm_some_spec (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : fq12InvNormRoute a = .ok (some output)) :
    Canonical12 output ∧
      Ipp.Bls12377.fq12Mul (decodeFq12 output) (decodeFq12 a) =
        Ipp.Bls12377.fq12One := by
  unfold fq12InvNormRoute at hexec
  obtain ⟨v1, hv1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨norm, hnorm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨o, ho, hexec⟩ := bind_eq_ok hexec
  cases o with
  | none => simp at hexec
  | some normInv =>
      obtain ⟨c0, hc0, hexec⟩ := bind_eq_ok hexec
      obtain ⟨c1p, hc1p, hexec⟩ := bind_eq_ok hexec
      obtain ⟨c1, hc1, hret⟩ := bind_eq_ok hexec
      simp only [Result.ok.injEq, Option.some.injEq] at hret
      subst output
      have sfm : Canonical6 fm ∧ decodeFq6 fm =
          Ipp.Bls12377.fq6Mul (decodeFq6 a.c0) (decodeFq6 a.c0) :=
        ⟨canonical6_square a.c0 fm ha.1 hfm,
          decode_fq6_square a.c0 fm ha.1 hfm⟩
      have sv1' : Canonical6 v1 ∧ decodeFq6 v1 =
          Ipp.Bls12377.fq6Mul (decodeFq6 a.c1) (decodeFq6 a.c1) :=
        ⟨canonical6_square a.c1 v1 ha.2 hv1,
          decode_fq6_square a.c1 v1 ha.2 hv1⟩
      have sfm1 := fq12_nonresidue_spec v1 fm1 sv1'.1 hfm1
      have snorm := fq6_sub_spec fm fm1 norm sfm.1 sfm1.1 hnorm
      have sinv := decode_fq6_inv_some norm normInv snorm.1 ho
      have sc0 := fq6_mul_spec a.c0 normInv c0 ha.1 sinv.1 hc0
      have sc1p := fq6_mul_spec a.c1 normInv c1p ha.2 sinv.1 hc1p
      have sc1 := fq6_neg_spec c1p c1 sc1p.1 hc1
      refine ⟨⟨sc0.1, sc1.1⟩, ?_⟩
      apply Ipp.Bls12377.fq12Coefficients_bijective.injective
      rw [Ipp.Bls12377.fq12Coefficients_mul,
        Ipp.Bls12377.fq12Coefficients_one]
      have hinv := Ipp.Extracted.ArkworksFq6.canonical_field_fq6_inv
        norm normInv snorm.1 ho
      have dnorm : decodeFq6 norm = Ipp.Bls12377.fq6Sub
          (Ipp.Bls12377.fq6Mul (decodeFq6 a.c0) (decodeFq6 a.c0))
          (Ipp.Bls12377.fq6MulByV
            (Ipp.Bls12377.fq6Mul (decodeFq6 a.c1) (decodeFq6 a.c1))) := by
        simpa [Ipp.Bls12377.fq6Sub, sfm.2, sfm1.2, sv1'.2] using snorm.2
      have hnormCoeff : Ipp.Bls12377.fq6Coefficients (decodeFq6 norm) =
          Ipp.Bls12377.fq6Coefficients (decodeFq6 a.c0) ^ 2 -
            Ipp.Bls12377.fq6V *
          Ipp.Bls12377.fq6Coefficients (decodeFq6 a.c1) ^ 2 := by
        rw [dnorm, Ipp.Bls12377.fq6Coefficients_sub,
          Ipp.Bls12377.fq6Coefficients_mul,
          Ipp.Bls12377.fq6Coefficients_mulByV,
          Ipp.Bls12377.fq6Coefficients_mul]
        simp [Ipp.Bls12377.fq6V, pow_two]
      rw [hnormCoeff] at hinv
      have hnegCoeff :
          Ipp.Bls12377.fq6Coefficients (decodeFq6 c1) =
            -Ipp.Bls12377.fq6Coefficients (decodeFq6 c1p) := by
        rw [sc1.2]
        simp [decodeFq6, Ipp.Bls12377.fq6Coefficients]
        ring
      simp only [decodeFq12, Ipp.Bls12377.fq12Coefficients, sc0.2,
        Ipp.Bls12377.fq6Coefficients_mul]
      rw [hnegCoeff, sc1p.2, Ipp.Bls12377.fq6Coefficients_mul]
      push_cast
      have hroot : AdjoinRoot.root Ipp.Bls12377.fq12Polynomial ^ 2 =
          algebraMap Ipp.Bls12377.Fq6Canonical Ipp.Bls12377.Fq12Canonical
            Ipp.Bls12377.fq6V := by
        simpa [Ipp.Bls12377.fq12Polynomial] using
          (root_X_pow_sub_C_pow 2 Ipp.Bls12377.fq6V)
      have hinvMap := congrArg
        (algebraMap Ipp.Bls12377.Fq6Canonical Ipp.Bls12377.Fq12Canonical) hinv
      simp only [map_mul, map_sub, map_pow, map_one] at hinvMap
      let X := algebraMap Ipp.Bls12377.Fq6Canonical Ipp.Bls12377.Fq12Canonical
        (Ipp.Bls12377.fq6Coefficients (decodeFq6 a.c0))
      let Y := algebraMap Ipp.Bls12377.Fq6Canonical Ipp.Bls12377.Fq12Canonical
        (Ipp.Bls12377.fq6Coefficients (decodeFq6 a.c1))
      let T := algebraMap Ipp.Bls12377.Fq6Canonical Ipp.Bls12377.Fq12Canonical
        (Ipp.Bls12377.fq6Coefficients (decodeFq6 normInv))
      let r := AdjoinRoot.root Ipp.Bls12377.fq12Polynomial
      change (X * T + -(Y * T) * r) * (X + Y * r) = 1
      calc
        (X * T + -(Y * T) * r) * (X + Y * r) =
            T * (X ^ 2 - Y ^ 2 * r ^ 2) := by ring
        _ = T * (X ^ 2 - Y ^ 2 *
            algebraMap Ipp.Bls12377.Fq6Canonical Ipp.Bls12377.Fq12Canonical
              Ipp.Bls12377.fq6V) := by rw [hroot]
        _ = 1 := by simpa [X, Y, T, mul_comm] using hinvMap

/-- A successful executed Fq12 inverse is canonical and multiplies its input to one. -/
theorem decode_fq12_inv_some (a output : Fq12LimbPair) (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_inv a =
      .ok (some output)) :
    Canonical12 output ∧
      Ipp.Bls12377.fq12Mul (decodeFq12 output) (decodeFq12 a) =
        Ipp.Bls12377.fq12One := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_inv at hexec
  obtain ⟨b0, hb0, hexec⟩ := bind_eq_ok hexec
  split at hexec
  · obtain ⟨b1, hb1, hexec⟩ := bind_eq_ok hexec
    split at hexec
    · simp at hexec
    · change fq12InvNormRoute a = .ok (some output) at hexec
      exact fq12_inv_norm_some_spec a output ha hexec
  · change fq12InvNormRoute a = .ok (some output) at hexec
    exact fq12_inv_norm_some_spec a output ha hexec

private theorem fq12_inv_norm_none (a : Fq12LimbPair) (ha : Canonical12 a)
    (hexec : fq12InvNormRoute a = .ok none) :
    decodeFq12 a = Ipp.Bls12377.fq12Zero := by
  unfold fq12InvNormRoute at hexec
  obtain ⟨v1, hv1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨norm, hnorm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨o, ho, hexec⟩ := bind_eq_ok hexec
  cases o with
  | some normInv =>
      obtain ⟨c0, hc0, hexec⟩ := bind_eq_ok hexec
      obtain ⟨c1p, hc1p, hexec⟩ := bind_eq_ok hexec
      obtain ⟨c1, hc1, hexec⟩ := bind_eq_ok hexec
      exact absurd (Result.ok.inj hexec) (Option.some_ne_none _)
  | none =>
      have sfm : Canonical6 fm ∧ decodeFq6 fm =
          Ipp.Bls12377.fq6Mul (decodeFq6 a.c0) (decodeFq6 a.c0) :=
        ⟨canonical6_square a.c0 fm ha.1 hfm,
          decode_fq6_square a.c0 fm ha.1 hfm⟩
      have sv1 : Canonical6 v1 ∧ decodeFq6 v1 =
          Ipp.Bls12377.fq6Mul (decodeFq6 a.c1) (decodeFq6 a.c1) :=
        ⟨canonical6_square a.c1 v1 ha.2 hv1,
          decode_fq6_square a.c1 v1 ha.2 hv1⟩
      have sfm1 := fq12_nonresidue_spec v1 fm1 sv1.1 hfm1
      have snorm := fq6_sub_spec fm fm1 norm sfm.1 sfm1.1 hnorm
      have hzero := decode_fq6_inv_none norm snorm.1 ho
      have dnorm : decodeFq6 norm =
          Ipp.Bls12377.fq12QuadraticNorm (decodeFq12 a) := by
        simpa [decodeFq12, Ipp.Bls12377.fq12QuadraticNorm,
          Ipp.Bls12377.fq6Sub, sfm.2, sfm1.2, sv1.2] using snorm.2
      exact (Ipp.Bls12377.fq12QuadraticNorm_eq_zero_iff (decodeFq12 a)).mp
        (dnorm.symm.trans hzero)

/-- The executed Fq12 inverse returns `none` only for the zero field element. -/
theorem decode_fq12_inv_none (a : Fq12LimbPair) (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_inv a = .ok none) :
    decodeFq12 a = Ipp.Bls12377.fq12Zero := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_inv at hexec
  obtain ⟨b0, hb0, hexec⟩ := bind_eq_ok hexec
  split at hexec
  · obtain ⟨b1, hb1, hexec⟩ := bind_eq_ok hexec
    have eb0 : b0 = true := by assumption
    rw [eb0] at hb0
    split at hexec
    · have eb1 : b1 = true := by assumption
      rw [eb1] at hb1
      have h0 := fq6_eq_zero_decode a.c0 hb0
      have h1 := fq6_eq_zero_decode a.c1 hb1
      simp [decodeFq12, Ipp.Bls12377.fq12Zero, h0, h1]
    · change fq12InvNormRoute a = .ok none at hexec
      exact fq12_inv_norm_none a ha hexec
  · change fq12InvNormRoute a = .ok none at hexec
    exact fq12_inv_norm_none a ha hexec

private theorem fq12_conjugate_spec (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate a = .ok output) :
    Canonical12 output ∧ decodeFq12 output =
      ⟨decodeFq6 a.c0,
       ⟨-decodeFq2 a.c1.c0, -decodeFq2 a.c1.c1, -decodeFq2 a.c1.c2⟩⟩ := by
  have hdecode := decode_fq12_conjugate a output ha hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate at hexec
  obtain ⟨c1, hc1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  exact ⟨⟨ha.1, (fq6_neg_spec a.c1 c1 ha.2 hc1).1⟩, hdecode⟩

/-- Cyclotomic inverse is syntactically conjugation on every nonzero input. -/
theorem decode_fq12_cyclotomic_inverse_some (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_inverse a =
      .ok (some output)) :
    Canonical12 output ∧ decodeFq12 output =
      ⟨decodeFq6 a.c0,
       ⟨-decodeFq2 a.c1.c0, -decodeFq2 a.c1.c1, -decodeFq2 a.c1.c2⟩⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_inverse at hexec
  obtain ⟨b0, hb0, hexec⟩ := bind_eq_ok hexec
  split at hexec
  · obtain ⟨b1, hb1, hexec⟩ := bind_eq_ok hexec
    split at hexec
    · simp at hexec
    · obtain ⟨conj, hconj, hret⟩ := bind_eq_ok hexec
      simp only [Result.ok.injEq, Option.some.injEq] at hret
      subst output
      exact fq12_conjugate_spec a conj ha hconj
  · obtain ⟨conj, hconj, hret⟩ := bind_eq_ok hexec
    simp only [Result.ok.injEq, Option.some.injEq] at hret
    subst output
    exact fq12_conjugate_spec a conj ha hconj

theorem decode_fq12_cyclotomic_inverse_none (a : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_inverse a =
      .ok none) :
    decodeFq12 a = Ipp.Bls12377.fq12Zero := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_inverse at hexec
  obtain ⟨b0, hb0, hexec⟩ := bind_eq_ok hexec
  split at hexec
  · obtain ⟨b1, hb1, hexec⟩ := bind_eq_ok hexec
    have eb0 : b0 = true := by assumption
    rw [eb0] at hb0
    split at hexec
    · have eb1 : b1 = true := by assumption
      rw [eb1] at hb1
      have h0 := fq6_eq_zero_decode a.c0 hb0
      have h1 := fq6_eq_zero_decode a.c1 hb1
      simp [decodeFq12, Ipp.Bls12377.fq12Zero, h0, h1]
    · obtain ⟨conj, hconj, hexec⟩ := bind_eq_ok hexec
      exact absurd (Result.ok.inj hexec) (Option.some_ne_none _)
  · obtain ⟨conj, hconj, hexec⟩ := bind_eq_ok hexec
    exact absurd (Result.ok.inj hexec) (Option.some_ne_none _)

private def frobenius12One : Ipp.Extracted.ArkworksFqMul.LimbArray :=
  MacCampaign.Array.make 6#usize [
    7981638599956744862#u64, 11830407261614897732#u64,
    6308788297503259939#u64, 10596665404780565693#u64,
    11693741422477421038#u64, 61545186993886319#u64]

private def frobenius12Two : Ipp.Extracted.ArkworksFqMul.LimbArray :=
  MacCampaign.Array.make 6#usize [
    6382252053795993818#u64, 1383562296554596171#u64,
    11197251941974877903#u64, 6684509567199238270#u64,
    6699184357838251020#u64, 19987743694136192#u64]

private theorem fq12_frobenius_radix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

private theorem fq12_decode_of_montgomery_eq
    (v : Ipp.Extracted.ArkworksFqMul.LimbArray) (c : Ipp.Bls12377.Fq)
    (h : (Ipp.Extracted.ArkworksFqMul.limbsToNat v : Ipp.Bls12377.Fq) =
      c * (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)) :
    Ipp.Extracted.ArkworksFqMul.decode v = c := by
  rw [Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv, h]
  rw [mul_assoc,
    ZMod.coe_mul_inv_eq_one _ fq12_frobenius_radix_coprime, mul_one]

set_option maxRecDepth 4096 in
private theorem decode_frobenius12One :
    Ipp.Extracted.ArkworksFqMul.decode frobenius12One =
      (92949345220277864758624960506473182677953048909283248980960104381795901929519566951595905490535835115111760994353 :
        Ipp.Bls12377.Fq) := by
  apply fq12_decode_of_montgomery_eq
  rfl

set_option maxRecDepth 4096 in
private theorem decode_frobenius12Two :
    Ipp.Extracted.ArkworksFqMul.decode frobenius12Two =
      (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410946 :
        Ipp.Bls12377.Fq) := by
  apply fq12_decode_of_montgomery_eq
  rfl

private theorem fq12_limbsToNat_make_six
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
private theorem canonical_frobenius12One :
    Ipp.Extracted.ArkworksFqMul.limbsToNat frobenius12One <
      Ipp.Bls12377.baseModulus := by
  rw [frobenius12One, fq12_limbsToNat_make_six]
  norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base,
    Ipp.Extracted.ArkworksFqMul.wordBase, Ipp.Bls12377.baseModulus]

set_option maxRecDepth 4096 in
private theorem canonical_frobenius12Two :
    Ipp.Extracted.ArkworksFqMul.limbsToNat frobenius12Two <
      Ipp.Bls12377.baseModulus := by
  rw [frobenius12Two, fq12_limbsToNat_make_six]
  norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base,
    Ipp.Extracted.ArkworksFqMul.wordBase, Ipp.Bls12377.baseModulus]

private theorem decode_fq12_zero_limbs :
    Ipp.Extracted.ArkworksFqMul.decode
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  change Ipp.Extracted.ArkworksFqMul.decode
    Ipp.Extracted.ArkworksFqInv.zeroArray = 0
  simp [Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv,
    Ipp.Extracted.ArkworksFqInv.limbsToNat_zeroArray]

private theorem canonical_fq12_zero_limbs :
    Ipp.Extracted.ArkworksFqMul.limbsToNat
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO <
        Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  change Ipp.Extracted.ArkworksFqMul.limbsToNat
    Ipp.Extracted.ArkworksFqInv.zeroArray < Ipp.Bls12377.baseModulus
  simp [Ipp.Extracted.ArkworksFqInv.limbsToNat_zeroArray,
    Ipp.Bls12377.baseModulus]

private theorem frobenius12One_selected :
    (do
      let table ← ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP12_C1
      MacCampaign.Array.index_usize table 1#usize) = .ok frobenius12One := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP12_C1,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C1]
  rfl

private theorem frobenius12Two_selected :
    (do
      let table ← ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP12_C1
      MacCampaign.Array.index_usize table 2#usize) = .ok frobenius12Two := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP12_C1,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP6_C1]
  rfl

private theorem decode_frobenius12One_pair :
    decodeFq2 ⟨frobenius12One,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ =
      Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus - 1) / 6) := by
  rw [Ipp.Bls12377.fq12FrobeniusC1_one]
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, decode_frobenius12One, decode_fq12_zero_limbs]

private theorem decode_frobenius12Two_pair :
    decodeFq2 ⟨frobenius12Two,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ =
      Ipp.Bls12377.fq2U ^
        ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 6) := by
  rw [Ipp.Bls12377.fq12FrobeniusC1_two]
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, decode_frobenius12Two, decode_fq12_zero_limbs]

private theorem canonical_frobenius12One_pair :
    Canonical2 ⟨frobenius12One,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ :=
  ⟨canonical_frobenius12One, canonical_fq12_zero_limbs⟩

private theorem canonical_frobenius12Two_pair :
    Canonical2 ⟨frobenius12Two,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ :=
  ⟨canonical_frobenius12Two, canonical_fq12_zero_limbs⟩

private theorem fq6_mul_by_fp2_spec (a : Fq6LimbTriple) (b : Fq2LimbPair)
    (output : Fq6LimbTriple) (ha : Canonical6 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_by_fp2 a b =
      .ok output) :
    Canonical6 output ∧ decodeFq6 output =
      ⟨decodeFq2 a.c0 * decodeFq2 b,
       decodeFq2 a.c1 * decodeFq2 b,
       decodeFq2 a.c2 * decodeFq2 b⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul_by_fp2 at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, h2, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have s0 := extracted_fq2_mul_spec a.c0 b c0 ha.1 hb h0
  have s1 := extracted_fq2_mul_spec a.c1 b c1 ha.2.1 hb h1
  have s2 := extracted_fq2_mul_spec a.c2 b c2 ha.2.2 hb h2
  exact ⟨⟨s0.1, s1.1, s2.1⟩, by simp [decodeFq6, s0.2, s1.2, s2.2]⟩

theorem decode_fq12_frobenius_one (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius a 1#usize =
      .ok output) :
    Canonical12 output ∧ decodeFq12 output =
      ⟨⟨star (decodeFq2 a.c0.c0),
         Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus - 1) / 3) *
           star (decodeFq2 a.c0.c1),
         Ipp.Bls12377.fq2U ^
             (2 * ((Ipp.Bls12377.baseModulus - 1) / 3)) *
           star (decodeFq2 a.c0.c2)⟩,
       ⟨star (decodeFq2 a.c1.c0) *
           Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus - 1) / 6),
         (Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus - 1) / 3) *
           star (decodeFq2 a.c1.c1)) *
             Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus - 1) / 6),
         (Ipp.Bls12377.fq2U ^
             (2 * ((Ipp.Bls12377.baseModulus - 1) / 3)) *
           star (decodeFq2 a.c1.c2)) *
             Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus - 1) / 6)⟩⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius at hexec
  obtain ⟨table, htable, hexec⟩ := bind_eq_ok hexec
  obtain ⟨coeff, hcoeff, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c0, hc0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1p, hc1p, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, hc1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have hcoeff' : (do
      let table ← ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP12_C1
      MacCampaign.Array.index_usize table 1#usize) = .ok coeff := by
    rw [htable]
    simpa using hcoeff
  have ecoeff : frobenius12One = coeff :=
    Result.ok.inj (frobenius12One_selected.symm.trans hcoeff')
  subst coeff
  have sc0 := decode_fq6_frobenius_one a.c0 c0 ha.1 hc0
  have sc1p := decode_fq6_frobenius_one a.c1 c1p ha.2 hc1p
  have sc1 := fq6_mul_by_fp2_spec c1p
    ⟨frobenius12One, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ c1
    sc1p.1 canonical_frobenius12One_pair hc1
  have p0 : decodeFq2 c1p.c0 = star (decodeFq2 a.c1.c0) := by
    simpa [decodeFq6] using congrArg Ipp.Bls12377.Fq6Model.c0 sc1p.2
  have p1 : decodeFq2 c1p.c1 =
      Ipp.Bls12377.fq2U ^ ((Ipp.Bls12377.baseModulus - 1) / 3) *
        star (decodeFq2 a.c1.c1) := by
    simpa [decodeFq6] using congrArg Ipp.Bls12377.Fq6Model.c1 sc1p.2
  have p2 : decodeFq2 c1p.c2 =
      Ipp.Bls12377.fq2U ^ (2 * ((Ipp.Bls12377.baseModulus - 1) / 3)) *
        star (decodeFq2 a.c1.c2) := by
    simpa [decodeFq6] using congrArg Ipp.Bls12377.Fq6Model.c2 sc1p.2
  refine ⟨⟨sc0.1, sc1.1⟩, ?_⟩
  change (⟨decodeFq6 c0, decodeFq6 c1⟩ : Ipp.Bls12377.Fq12Model) = _
  rw [sc0.2, sc1.2, p0, p1, p2, decode_frobenius12One_pair]

theorem decode_fq12_frobenius_two (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius a 2#usize =
      .ok output) :
    Canonical12 output ∧ decodeFq12 output =
      ⟨⟨decodeFq2 a.c0.c0,
         Ipp.Bls12377.fq2U ^
             ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3) *
           decodeFq2 a.c0.c1,
         Ipp.Bls12377.fq2U ^
             (2 * ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3)) *
           decodeFq2 a.c0.c2⟩,
       ⟨decodeFq2 a.c1.c0 * Ipp.Bls12377.fq2U ^
           ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 6),
         (Ipp.Bls12377.fq2U ^
             ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3) *
           decodeFq2 a.c1.c1) * Ipp.Bls12377.fq2U ^
             ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 6),
         (Ipp.Bls12377.fq2U ^
             (2 * ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3)) *
           decodeFq2 a.c1.c2) * Ipp.Bls12377.fq2U ^
             ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 6)⟩⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius at hexec
  obtain ⟨table, htable, hexec⟩ := bind_eq_ok hexec
  obtain ⟨coeff, hcoeff, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c0, hc0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1p, hc1p, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, hc1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have hcoeff' : (do
      let table ← ark_ip_proofs.s3_07_arkworks_fq_spike.FROBENIUS_COEFF_FP12_C1
      MacCampaign.Array.index_usize table 2#usize) = .ok coeff := by
    rw [htable]
    simpa using hcoeff
  have ecoeff : frobenius12Two = coeff :=
    Result.ok.inj (frobenius12Two_selected.symm.trans hcoeff')
  subst coeff
  have sc0 := decode_fq6_frobenius_two a.c0 c0 ha.1 hc0
  have sc1p := decode_fq6_frobenius_two a.c1 c1p ha.2 hc1p
  have sc1 := fq6_mul_by_fp2_spec c1p
    ⟨frobenius12Two, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ c1
    sc1p.1 canonical_frobenius12Two_pair hc1
  have p0 : decodeFq2 c1p.c0 = decodeFq2 a.c1.c0 := by
    simpa [decodeFq6] using congrArg Ipp.Bls12377.Fq6Model.c0 sc1p.2
  have p1 : decodeFq2 c1p.c1 = Ipp.Bls12377.fq2U ^
      ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3) * decodeFq2 a.c1.c1 := by
    simpa [decodeFq6] using congrArg Ipp.Bls12377.Fq6Model.c1 sc1p.2
  have p2 : decodeFq2 c1p.c2 = Ipp.Bls12377.fq2U ^
      (2 * ((Ipp.Bls12377.baseModulus ^ 2 - 1) / 3)) *
        decodeFq2 a.c1.c2 := by
    simpa [decodeFq6] using congrArg Ipp.Bls12377.Fq6Model.c2 sc1p.2
  refine ⟨⟨sc0.1, sc1.1⟩, ?_⟩
  change (⟨decodeFq6 c0, decodeFq6 c1⟩ : Ipp.Bls12377.Fq12Model) = _
  rw [sc0.2, sc1.2, p0, p1, p2, decode_frobenius12Two_pair]

#print axioms decode_fq12_conjugate
#print axioms canonical12_mul
#print axioms decode_fq12_mul
#print axioms canonical12_square
#print axioms decode_fq12_square
#print axioms canonical12_mul_by_034
#print axioms decode_fq12_mul_by_034
#print axioms decode_fq12_inv_some
#print axioms decode_fq12_inv_none
#print axioms decode_fq12_cyclotomic_inverse_some
#print axioms decode_fq12_cyclotomic_inverse_none
#print axioms decode_fq12_frobenius_one
#print axioms decode_fq12_frobenius_two

end Ipp.Extracted.ArkworksFq12
