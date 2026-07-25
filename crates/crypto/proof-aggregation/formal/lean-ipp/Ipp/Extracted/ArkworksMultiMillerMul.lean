import Ipp.Extracted.ArkworksMultiMillerChunkLoop

/-! Opaque-value projection of Fq12 multiplication conformance. -/

namespace Ipp.Extracted.ArkworksMultiMillerMul

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksFq6
open Ipp.Extracted.ArkworksMultiMillerModel

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

private theorem fq6_mul_spec (a b output : Fq6LimbTriple)
    (ha : Canonical6 a) (hb : Canonical6 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_mul a b = .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6Mul (decodeFq6 a) (decodeFq6 b) :=
  ⟨canonical6_mul a b output ha hb hexec,
    decode_fq6_mul a b output ha hb hexec⟩

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
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_base_field_by_nonresidue
    at hexec
  obtain ⟨fm, hfm, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have hcan := canonical6_mul_base_field_by_nonresidue a.c2 fm ha.2.2 hfm
  have hdec := decode_fq6_mul_base_field_by_nonresidue a.c2 fm ha.2.2 hfm
  exact ⟨⟨hcan, ha.1, ha.2.1⟩, by
    simp [decodeFq6, Ipp.Bls12377.fq6MulByV, hdec]⟩

private theorem fq12_mul_spec
    (a b output : ArkworksMultiMillerModel.Fq12Limb)
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
    Ipp.Bls12377.fq6Add, Ipp.Bls12377.fq6Mul,
    Ipp.Bls12377.fq6MulByV] <;> ring_nf <;> try simp

/-- Multiplication conformance without exposing any accumulator representation. -/
theorem mul_semantics
    (left right out : ArkworksMultiMillerModel.Fq12Limb)
    (leftValue rightValue outValue : Ipp.Bls12377.Fq12Model)
    (hleftValue : decodeFq12 left = leftValue)
    (hrightValue : decodeFq12 right = rightValue)
    (houtValue : decodeFq12 out = outValue)
    (hleft : Canonical12 left) (hright : Canonical12 right)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul left right = .ok out) :
    Canonical12 out ∧
      outValue = Ipp.Bls12377.fq12Mul leftValue rightValue := by
  have hmul := fq12_mul_spec left right out hleft hright hexec
  refine ⟨hmul.1, ?_⟩
  rw [← houtValue, ← hleftValue, ← hrightValue]
  exact hmul.2

#print axioms mul_semantics

end Ipp.Extracted.ArkworksMultiMillerMul
