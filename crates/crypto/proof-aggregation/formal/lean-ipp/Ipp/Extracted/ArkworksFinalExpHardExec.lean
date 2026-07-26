import Ipp.Extracted.ArkworksFinalExpHardFrobeniusOne

/-!
S3-39: the exact 18-operation hard chain and its full easy-then-hard wrapper.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFinalExpEasy

/-- Arkworks' BLS12 hard final-exponentiation chain for positive `X`. -/
def final_exp_hard (r0 : Fq12Limb) : Result Fq12Limb := do
  let y0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_square r0
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp r0
  let y2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate r0
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul y1 y2
  let y2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp y1
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate y1
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul y1 y2
  let y2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp y1
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius y1 1#usize
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul y1 y2
  let r ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul r0 y0
  let y0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp y1
  let y2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp y0
  let y0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius y1 2#usize
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_conjugate y1
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul y1 y2
  let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul y1 y0
  ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul r y1

/-- Full executed final exponentiation, preserving the easy-part inverse guard. -/
def final_exp (f : Fq12Limb) : Result (Option Fq12Limb) := do
  let easy ← final_exp_easy f
  match easy with
  | none => .ok none
  | some r => return some (← final_exp_hard r)

end Ipp.Extracted.ArkworksFinalExpHard
