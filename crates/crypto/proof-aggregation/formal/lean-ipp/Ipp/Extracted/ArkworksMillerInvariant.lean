import Ipp.Extracted.ArkworksMillerModel

/-! Bundled representation boundary for Miller-loop execution. -/

namespace Ipp.Extracted.ArkworksMillerInvariant

open Aeneas Aeneas.Std
open Ipp.Bls12377
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksFq6
open Ipp.Extracted.ArkworksMillerModel

abbrev Fq12Mont := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq12Mont

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

private theorem fq6_double_spec (a output : Fq6LimbTriple)
    (ha : Canonical6 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq6_double a = .ok output) :
    Canonical6 output ∧
      decodeFq6 output = Ipp.Bls12377.fq6Add (decodeFq6 a) (decodeFq6 a) :=
  ⟨canonical6_double a output ha hexec, decode_fq6_double a output ha hexec⟩

private theorem fq12_nonresidue_spec (a output :
    Ipp.Extracted.ArkworksFq6.Fq6LimbTriple)
    (ha : Ipp.Extracted.ArkworksFq6.Canonical6 a)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_base_field_by_nonresidue a =
        .ok output) :
    Ipp.Extracted.ArkworksFq6.Canonical6 output ∧
      Ipp.Extracted.ArkworksFq6.decodeFq6 output =
        Ipp.Bls12377.fq6MulByV
          (Ipp.Extracted.ArkworksFq6.decodeFq6 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul_base_field_by_nonresidue
    at hexec
  obtain ⟨fm, hfm, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have hcan :=
    Ipp.Extracted.ArkworksFq6.canonical6_mul_base_field_by_nonresidue
      a.c2 fm ha.2.2 hfm
  have hdec :=
    Ipp.Extracted.ArkworksFq6.decode_fq6_mul_base_field_by_nonresidue
      a.c2 fm ha.2.2 hfm
  exact ⟨⟨hcan, ha.1, ha.2.1⟩, by
    simp [Ipp.Extracted.ArkworksFq6.decodeFq6, Ipp.Bls12377.fq6MulByV,
      hdec]⟩

private theorem fq12_square_spec (a output : Fq12Mont)
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
  change
    (⟨Ipp.Extracted.ArkworksFq6.decodeFq6 fm3,
       Ipp.Extracted.ArkworksFq6.decodeFq6 fm4⟩ :
      Ipp.Bls12377.Fq12Model) = _
  rw [sfm3.2, sfm4.2, sfm2.2, sfm1.2, sv01.2, sv2.2, sv0.2, sv3.2, sfm.2]
  simp [decodeFq12, Ipp.Extracted.ArkworksFq6.decodeFq6,
    Ipp.Bls12377.fq12Square, Ipp.Bls12377.fq12Mul,
    Ipp.Bls12377.fq6Add, Ipp.Bls12377.fq6Mul,
    Ipp.Bls12377.fq6MulByV] <;> ring_nf <;> try simp

theorem canonical12_square (a output : Fq12Mont)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square a = .ok output) :
    Canonical12 output := (fq12_square_spec a output ha hexec).1

theorem decode_fq12_square (a output : Fq12Mont)
    (ha : Canonical12 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square a = .ok output) :
    decodeFq12 output = Ipp.Bls12377.fq12Square (decodeFq12 a) :=
  (fq12_square_spec a output ha hexec).2

private theorem radix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix
      Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

private theorem decode_zero :
    Ipp.Extracted.ArkworksFqMul.decode
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  change Ipp.Extracted.ArkworksFqMul.decode
    Ipp.Extracted.ArkworksFqInv.zeroArray = 0
  simp [Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv,
    Ipp.Extracted.ArkworksFqInv.limbsToNat_zeroArray]

private theorem canonical_zero :
    Ipp.Extracted.ArkworksFqMul.limbsToNat
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO <
        Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  change Ipp.Extracted.ArkworksFqMul.limbsToNat
    Ipp.Extracted.ArkworksFqInv.zeroArray < Ipp.Bls12377.baseModulus
  simp [Ipp.Extracted.ArkworksFqInv.limbsToNat_zeroArray,
    Ipp.Bls12377.baseModulus]

set_option exponentiation.threshold 1000 in
private theorem decode_one :
    Ipp.Extracted.ArkworksFqMul.decode
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = 1 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE,
    Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv]
  have hmod :
      (Ipp.Extracted.ArkworksFqMul.limbsToNat
          ark_ip_proofs.s3_07_arkworks_fq_spike.ONE : Ipp.Bls12377.Fq) =
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) := by
    apply (ZMod.natCast_eq_natCast_iff _ _ _).2
    norm_num [Nat.ModEq, Ipp.Extracted.ArkworksFqMul.limbsToNat,
      Ipp.Extracted.ArkworksFqMul.prefixToNat,
      Ipp.Extracted.ArkworksFqMul.limbCount,
      Ipp.Extracted.ArkworksFqMul.limb,
      Ipp.Extracted.ArkworksFqMul.limbWord,
      ark_ip_proofs.s3_07_arkworks_fq_spike.ONE, MacCampaign.Array.make,
      MacCampaign.U64.ofNat, MacCampaign.u64Base,
      Ipp.Extracted.ArkworksFqMul.wordBase, Ipp.Bls12377.baseModulus,
      Ipp.Bls12377.baseMontgomeryRadix]
  rw [hmod]
  exact ZMod.coe_mul_inv_eq_one _ radix_coprime

private theorem canonical_one :
    Ipp.Extracted.ArkworksFqMul.limbsToNat
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE <
        Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]
  exact Ipp.Extracted.ArkworksFqSqrtBytes.canonical_ONE

theorem fq12_one_spec :
    Canonical12 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE ∧
      decodeFq12 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE =
        Ipp.Bls12377.fq12One := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ6_ONE,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ6_ZERO,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]
  refine ⟨⟨⟨⟨canonical_one, canonical_zero⟩,
      ⟨canonical_zero, canonical_zero⟩,
      ⟨canonical_zero, canonical_zero⟩⟩,
    ⟨⟨canonical_zero, canonical_zero⟩,
      ⟨canonical_zero, canonical_zero⟩,
      ⟨canonical_zero, canonical_zero⟩⟩⟩, ?_⟩
  simp [decodeFq12, Ipp.Extracted.ArkworksFq6.decodeFq6,
    Ipp.Extracted.ArkworksFq2.decodeFq2, decode_one, decode_zero,
    Ipp.Bls12377.fq12One, Ipp.Bls12377.fq6One,
    Ipp.Bls12377.fq6Zero, Ipp.Bls12377.fq2One,
    Ipp.Bls12377.fq2Zero]

/-- Canonical accumulator, decoded prefix value, and exact coefficient index. -/
structure MillerLoopInv (coeffs : List DecodedEllCoeff) (x y : Fq)
    (remaining coeffIdx : Nat) (f : Fq12Mont) : Prop where
  canonical : Canonical12 f
  modelPrefix : millerPrefix coeffs x y (63 - remaining) =
    some (decodeFq12 f, coeffIdx)
  coeffIndex : coeffIdx = millerCoeffCount (63 - remaining)

theorem millerLoopInv_initial (coeffs : List DecodedEllCoeff) (x y : Fq) :
    MillerLoopInv coeffs x y 63 0
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE := by
  exact ⟨fq12_one_spec.1, by simp [millerPrefix, fq12_one_spec.2], rfl⟩

#print axioms canonical12_square
#print axioms decode_fq12_square
#print axioms fq12_one_spec
#print axioms millerLoopInv_initial

end Ipp.Extracted.ArkworksMillerInvariant
