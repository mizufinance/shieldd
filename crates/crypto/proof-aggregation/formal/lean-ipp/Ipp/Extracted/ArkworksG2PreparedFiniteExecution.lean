import Ipp.Extracted.ArkworksG2PreparedInvSome
import Ipp.Extracted.ArkworksG2PreparedResult
import Ipp.Extracted.ArkworksG2PreparedSchedule
import Ipp.Extracted.ArkworksG2PreparedTwo

/-! Opaque execution certificate for the finite prepared-G2 path. -/

namespace Ipp.Extracted.ArkworksG2PreparedFiniteExecution

open Aeneas Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqInv
open Ipp.Extracted.ArkworksG2PreparedDoubleOps
open Ipp.Extracted.ArkworksG2PreparedInvSome
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedTwo
open Ipp.Extracted.ArkworksG2PreparedResult

inductive FinitePreparedExecution (q : G2AffineMont)
    (prepared : G2PreparedLimb) : Prop where
  | mk (two : FqMont) (twoInvMont : FqMont) (coeffs : CoeffVec)
  (doubleExec : ark_ip_proofs.s3_07_arkworks_fq_spike.double
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two
  ) (invExec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv two =
    .ok (some twoInvMont)
  ) (scheduleExec : preparedSchedule
    (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
    { x := q.x, y := q.y, infinity := false }
    (initialState q) ⟨[]⟩ = .ok coeffs
  ) (preparedEq : prepared = { ell_coeffs := coeffs, infinity := false }) :
    FinitePreparedExecution q prepared

theorem finite_execution_of_g2_prepared (q : G2AffineMont)
    (prepared : G2PreparedLimb) (hfinite : q.infinity = false)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared q =
      .ok prepared) :
    FinitePreparedExecution q prepared := by
  have hraw := hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared at hraw
  simp only [hfinite, Bool.false_eq_true, if_false] at hraw
  obtain ⟨two, hdouble, hraw⟩ := bind_eq_ok hraw
  obtain ⟨inverse, hinv, hraw⟩ := bind_eq_ok hraw
  have htwoNe := (two_facts two hdouble).2.1
  obtain ⟨twoInvMont, hinverse⟩ := inv_some_of_execution two inverse htwoNe hinv
  subst inverse
  have hschedule := g2_prepared_finite_schedule q two twoInvMont
    hfinite hdouble hinv
  rw [hschedule] at hexec
  obtain ⟨coeffs, hcoeffs, hprepared⟩ := bind_eq_ok hexec
  exact .mk two twoInvMont coeffs hdouble hinv hcoeffs
    (Result.ok.inj hprepared).symm

end Ipp.Extracted.ArkworksG2PreparedFiniteExecution
