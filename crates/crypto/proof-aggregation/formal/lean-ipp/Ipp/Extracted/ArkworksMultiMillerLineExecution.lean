import Ipp.Extracted.ArkworksMultiMillerLineModel

/-! Compact witness extracted from one successful raw line-body call. -/

namespace Ipp.Extracted.ArkworksMultiMillerLineExecution

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerLineModel

abbrev Fq12Limb := ArkworksMultiMillerModel.Fq12Limb
abbrev G2EllCoeffLimb := Ipp.Extracted.ArkworksEll.G2EllCoeffLimb

inductive LineBodyWitness
    (flow : ControlFlow (alloc.vec.Vec Usize × Fq12Limb × Usize)
      (alloc.vec.Vec Usize × Fq12Limb))
    (filtered : List ExecPair) (chunkStart cursor processed : Nat)
    (cursors : alloc.vec.Vec Usize) (f : Fq12Limb) : Prop where
  | intro (pair : ExecPair) (coeff : G2EllCoeffLimb)
      (c0 c1 c2 : Ipp.Extracted.ArkworksFq2.Fq2LimbPair)
      (nextF : Fq12Limb)
      (pairGet : filtered[chunkStart + processed]? = some pair)
      (coeffGet : pair.1.val[cursor]? = some coeff)
      (pairValid : ValidExecPair pair)
      (lineExec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_ell f coeff pair.2 =
        .ok (c0, c1, c2, nextF))
      (flowEq : flow = .cont
        (⟨cursors.val.set processed ⟨cursor + 1⟩⟩, nextF,
          ⟨processed + 1⟩)) :
      LineBodyWitness flow filtered chunkStart cursor processed cursors f

set_option maxHeartbeats 2000000

/-- Decode only the generated control/representation layer of an active body. -/
theorem line_body_witness
    (filtered : List ExecPair) (chunkStart width cursor processed : Nat)
    (cursors : alloc.vec.Vec Usize) (f : Fq12Limb)
    (flow : ControlFlow (alloc.vec.Vec Usize × Fq12Limb × Usize)
      (alloc.vec.Vec Usize × Fq12Limb))
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hcursor : cursor < 69)
    (hactive : processed < width)
    (hcursors : cursors.val = cursorState width cursor processed)
    (hbody :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop0.body
        ⟨filtered⟩ ⟨chunkStart⟩ cursors f ⟨processed⟩ = .ok flow) :
    LineBodyWitness flow filtered chunkStart cursor processed cursors f := by
  have hglobal : chunkStart + processed < filtered.length := by omega
  let pair : ExecPair := filtered[chunkStart + processed]
  have hpairGet : filtered[chunkStart + processed]? = some pair :=
    List.getElem?_eq_getElem hglobal
  have hpairValid : ValidPair (pair.1.val, pair.2) :=
    hvalid (chunkStart + processed) pair hpairGet
  have hcoeffLength : pair.1.val.length = 69 := validPair_length hpairValid
  have hcoeffBound : cursor < pair.1.val.length := by omega
  let coeff : G2EllCoeffLimb := pair.1.val[cursor]
  have hcoeffGet : pair.1.val[cursor]? = some coeff :=
    List.getElem?_eq_getElem hcoeffBound
  have hcursorsLength : cursors.val.length = width := by
    rw [hcursors, cursorState_length width cursor processed (by omega)]
  have hcursorsGet : cursors.val[processed]? = some ⟨cursor⟩ := by
    rw [hcursors]
    exact cursorState_get width cursor processed hactive
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop0.body
    at hbody
  rw [show Aeneas.Std.alloc.vec.Vec.len cursors = (⟨width⟩ : Usize) by
    simp [Aeneas.Std.alloc.vec.Vec.len, hcursorsLength]] at hbody
  rw [if_pos (show (⟨processed⟩ : Usize) < ⟨width⟩ by exact hactive)] at hbody
  simp only [Aeneas.Std.add_eq, Result.bind_ok] at hbody
  simp only [ark_ip_proofs.alloc.vec.Vec.index, hcursorsGet, hpairGet,
    hcoeffGet, Aeneas.Std.alloc.vec.Vec.index_mut, Result.bind_ok] at hbody
  cases hell : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_ell f coeff pair.2 with
  | fail error => rw [hell] at hbody; cases hbody
  | div => rw [hell] at hbody; cases hbody
  | ok lineResult =>
      rcases lineResult with ⟨c0, c1, c2, nextF⟩
      rw [hell] at hbody
      simp only [Result.bind_ok, Result.ok.injEq] at hbody
      exact ⟨pair, coeff, c0, c1, c2, nextF, hpairGet, hcoeffGet,
        hpairValid, hell, hbody.symm⟩

end Ipp.Extracted.ArkworksMultiMillerLineExecution
