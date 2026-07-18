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

#print axioms decode_fq12_conjugate

end Ipp.Extracted.ArkworksFq12
