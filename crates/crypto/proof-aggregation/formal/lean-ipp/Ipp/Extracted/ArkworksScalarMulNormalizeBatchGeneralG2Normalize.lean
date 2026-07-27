import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG2NormalizeStep

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

def G2ValidBatchInput (values : List G2BatchProj)
    (points : List G2AffinePoint) : Prop :=
  List.Forall₂ ValidG2LoopState values points

def G2ValidBatchOutput
    (values : List ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (points : List G2AffinePoint) : Prop :=
  List.Forall₂ ValidG2AffineLoopBase values points

theorem G2ValidBatchInput.z_canonical {values points}
    (hinput : G2ValidBatchInput values points) :
    ∀ value ∈ values, Ipp.Extracted.ArkworksFq2.Canonical2 value.z := by
  unfold G2ValidBatchInput at hinput
  induction hinput with
  | nil => simp
  | cons head tail ih =>
      intro value hmem
      rcases List.mem_cons.mp hmem with rfl | hmem
      · exact head.canonical.2.2
      · exact ih value hmem

private abbrev g2NormalizeBody (values : List G2BatchProj) :=
  fun (inverses, result, i) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body
      ⟨values⟩ inverses result i

private theorem g2_normalize_core (values : List G2BatchProj)
    (points : List G2AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (hlength : points.length = values.length)
    {state result}
    (hloop : LoopResult (g2NormalizeBody values) state result) :
    ∀ (inverses : alloc.vec.Vec G2BatchFq)
      (acc : alloc.vec.Vec
        ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
      (i : Nat),
      state = (inverses, acc, ⟨i⟩) →
      result = .ok out →
      i ≤ values.length →
      G2RecoveredBatch (values.drop i) inverses.val →
      List.Forall₂ ValidG2LoopState (values.drop i) (points.drop i) →
      List.Forall₂ ValidG2AffineLoopBase acc.val (points.take i) →
      G2ValidBatchOutput out.val points := by
  induction hloop with
  | done hbody =>
      intro inverses acc i hstate hresult hbound hrecovered hinput hacc
      cases hstate
      simp only [Result.ok.injEq] at hresult
      subst out
      have hdone : ¬i < values.length := by
        intro hlt
        have hdrop := List.drop_eq_getElem_cons hlt
        rw [hdrop] at hrecovered
        obtain ⟨remaining, zinv, hinverses, hzinv, hremaining⟩ :=
          hrecovered.cons_cases
        cases inverses with
        | mk items =>
            change items = remaining ++ [zinv] at hinverses
            subst items
            by_cases hz : isZeroFq2Mont (values[i]).z
            · simp [g2NormalizeBody,
                ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                fq2_eq_zero, hlt, hz] at hbody
            · cases hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv with
              | fail error =>
                  simp [g2NormalizeBody,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                    Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                    fq2_eq_zero, hlt, hz, hz2] at hbody
              | div =>
                  simp [g2NormalizeBody,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                    Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                    fq2_eq_zero, hlt, hz, hz2] at hbody
              | ok z2 =>
                  cases hx : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
                      (values[i]).x z2 with
                  | fail error =>
                      simp [g2NormalizeBody,
                        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                        Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                        fq2_eq_zero, hlt, hz, hz2, hx] at hbody
                  | div =>
                      simp [g2NormalizeBody,
                        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                        Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                        fq2_eq_zero, hlt, hz, hz2, hx] at hbody
                  | ok x =>
                      cases hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
                          (values[i]).y z2 with
                      | fail error =>
                          simp [g2NormalizeBody,
                            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                            Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                            fq2_eq_zero, hlt, hz, hz2, hx, hyz2] at hbody
                      | div =>
                          simp [g2NormalizeBody,
                            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                            Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                            fq2_eq_zero, hlt, hz, hz2, hx, hyz2] at hbody
                      | ok yz2 =>
                          cases hy : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
                              yz2 zinv <;>
                            simp [g2NormalizeBody,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                              fq2_eq_zero, hlt, hz, hz2, hx, hyz2, hy] at hbody
      have hi : i = values.length := by omega
      simp [g2NormalizeBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
        Slice.len, hdone] at hbody
      subst acc
      unfold G2ValidBatchOutput
      have hpoints : i = points.length := by omega
      simpa [hpoints] using hacc
  | @next state next result hstep hnext ih =>
      intro inverses acc i hstate hresult hbound hrecovered hinput hacc
      cases hstate
      have hlt : i < values.length := by
        by_contra hnot
        simp [g2NormalizeBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
          Slice.len, hnot] at hstep
      have hltPoints : i < points.length := by omega
      have hdropValues := List.drop_eq_getElem_cons hlt
      have hdropPoints := List.drop_eq_getElem_cons hltPoints
      rw [hdropValues] at hrecovered
      obtain ⟨remaining, zinv, hinverses, hzinv, hremaining⟩ :=
        hrecovered.cons_cases
      rw [hdropValues, hdropPoints] at hinput
      cases hinput with
      | cons hvalue hinput =>
        cases inverses with
        | mk items =>
          change items = remaining ++ [zinv] at hinverses
          subst items
          by_cases hz : isZeroFq2Mont (values[i]).z
          · have hstate : next =
                (⟨remaining⟩, ⟨acc.val ++ [g2AffineIdentity]⟩,
                  ⟨i + 1⟩) := by
              simpa [g2NormalizeBody, g2AffineIdentity,
                ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                fq2_eq_zero, hlt, hz] using hstep.symm
            have hvalid := g2_normalize_zero_semantic (values[i]) (points[i])
              hvalue hz
            apply ih ⟨remaining⟩ ⟨acc.val ++ [g2AffineIdentity]⟩
              (i + 1) hstate hresult (by omega) hremaining hinput
            rw [List.take_succ_eq_append_getElem hltPoints]
            exact g2_forall₂_snoc hacc hvalid
          · cases hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv with
            | fail error =>
                simp [g2NormalizeBody,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                  Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                  fq2_eq_zero, hlt, hz, hz2] at hstep
            | div =>
                simp [g2NormalizeBody,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                  Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                  fq2_eq_zero, hlt, hz, hz2] at hstep
            | ok z2 =>
                cases hx : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
                    (values[i]).x z2 with
                | fail error =>
                    simp [g2NormalizeBody,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                      Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                      fq2_eq_zero, hlt, hz, hz2, hx] at hstep
                | div =>
                    simp [g2NormalizeBody,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                      Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                      fq2_eq_zero, hlt, hz, hz2, hx] at hstep
                | ok x =>
                    cases hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
                        (values[i]).y z2 with
                    | fail error =>
                        simp [g2NormalizeBody,
                          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                          Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                          fq2_eq_zero, hlt, hz, hz2, hx, hyz2] at hstep
                    | div =>
                        simp [g2NormalizeBody,
                          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                          Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                          fq2_eq_zero, hlt, hz, hz2, hx, hyz2] at hstep
                    | ok yz2 =>
                        cases hy : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul yz2 zinv with
                        | fail error =>
                            simp [g2NormalizeBody,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                              fq2_eq_zero, hlt, hz, hz2, hx, hyz2, hy] at hstep
                        | div =>
                            simp [g2NormalizeBody,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                              fq2_eq_zero, hlt, hz, hz2, hx, hyz2, hy] at hstep
                        | ok y =>
                            let affine :
                                ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont :=
                              { x := x, y := y, infinity := false }
                            have hstate : next =
                                (⟨remaining⟩, ⟨acc.val ++ [affine]⟩,
                                  ⟨i + 1⟩) := by
                              simpa [g2NormalizeBody, affine,
                                ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                                fq2_eq_zero, hlt, hz, hz2, hx, hyz2, hy] using hstep.symm
                            have hvalid := g2_normalize_nonzero_semantic
                              (values[i]) (points[i]) zinv z2 x yz2 y hvalue hzinv
                              hz hz2 hx hyz2 hy
                            apply ih ⟨remaining⟩ ⟨acc.val ++ [affine]⟩
                              (i + 1) hstate hresult (by omega) hremaining hinput
                            rw [List.take_succ_eq_append_getElem hltPoints]
                            exact g2_forall₂_snoc hacc hvalid
  | fail hbody =>
      intro inverses acc i hstate hresult hbound hrecovered hinput hacc
      simp at hresult
  | div hbody =>
      intro inverses acc i hstate hresult hbound hrecovered hinput hacc
      simp at hresult

/-- The G2 scaling loop consumes recovered inverses and preserves every point. -/
theorem g2_normalize_recovered (values : List G2BatchProj)
    (points : List G2AffinePoint) (inverses : alloc.vec.Vec G2BatchFq)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (hinput : G2ValidBatchInput values points)
    (hrecovered : G2RecoveredBatch values inverses.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
      ⟨values⟩ inverses ⟨[]⟩ 0#usize = .ok out) :
    G2ValidBatchOutput out.val points := by
  have hlength := hinput.length_eq
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop at hexec
  have hloop := loopResult_of_eq (by simp) hexec
  apply g2_normalize_core values points out hlength.symm hloop inverses ⟨[]⟩ 0
    rfl rfl (by simp)
  · simpa using hrecovered
  · simpa [G2ValidBatchInput] using hinput
  · exact .nil

end Ipp.Extracted.ArkworksScalarMulNormalize
