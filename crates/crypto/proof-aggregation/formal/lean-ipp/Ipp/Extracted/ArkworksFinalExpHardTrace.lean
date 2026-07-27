import Ipp.Extracted.ArkworksFinalExpHardPowerConjugate

/-!
S3-39: opaque trace boundary for the 18-operation hard chain.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Aeneas Result
open Ipp.Extracted.ArkworksFinalExpEasy

def HardTrace (input output : Fq12Limb) : Prop :=
  ∃ s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 :
      Fq12Limb,
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_square input =
        .ok s1 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp input =
        .ok s2 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate input = .ok s3 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul s2 s3 = .ok s4 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp s4 = .ok s5 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate s4 = .ok s6 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul s6 s5 = .ok s7 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp s7 = .ok s8 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius s7 1#usize =
        .ok s9 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul s9 s8 = .ok s10 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul input s1 = .ok s11 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp s10 =
        .ok s12 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp s12 =
        .ok s13 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius s10 2#usize =
        .ok s14 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate s10 = .ok s15 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul s15 s13 = .ok s16 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul s16 s14 = .ok s17 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul s11 s17 = .ok output

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

theorem final_exp_hard_trace (input output : Fq12Limb)
    (hexec : final_exp_hard input = .ok output) :
    HardTrace input output := by
  unfold final_exp_hard at hexec
  obtain ⟨s1, h1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, h2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s3, h3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s4, h4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s5, h5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s6, h6, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s7, h7, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s8, h8, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s9, h9, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s10, h10, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s11, h11, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s12, h12, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s13, h13, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s14, h14, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s15, h15, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s16, h16, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s17, h17, h18⟩ := bind_eq_ok hexec
  exact ⟨s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13,
    s14, s15, s16, s17, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10,
    h11, h12, h13, h14, h15, h16, h17, h18⟩

#print axioms final_exp_hard_trace

end Ipp.Extracted.ArkworksFinalExpHard
