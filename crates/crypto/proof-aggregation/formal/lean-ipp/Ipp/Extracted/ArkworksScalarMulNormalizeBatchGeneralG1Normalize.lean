import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG1NormalizeStep

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMul

def G1ValidBatchInput (values : List G1BatchProj)
    (points : List G1AffinePoint) : Prop :=
  List.Forall₂ ValidG1LoopState values points

def G1ValidBatchOutput
    (values : List ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (points : List G1AffinePoint) : Prop :=
  List.Forall₂ ValidG1AffineLoopBase values points

theorem G1ValidBatchInput.z_canonical {values points}
    (hinput : G1ValidBatchInput values points) :
    ∀ value ∈ values,
      Ipp.Extracted.ArkworksFqMul.limbsToNat value.z <
        Ipp.Bls12377.baseModulus := by
  unfold G1ValidBatchInput at hinput
  induction hinput with
  | nil => simp
  | cons head tail ih =>
      intro value hmem
      rcases List.mem_cons.mp hmem with rfl | hmem
      · exact head.canonical.2.2
      · exact ih value hmem

private abbrev g1NormalizeBody (values : List G1BatchProj) :=
  fun (inverses, result, i) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body
      ⟨values⟩ inverses result i

private theorem g1_normalize_core (values : List G1BatchProj)
    (points : List G1AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (hlength : points.length = values.length)
    {state result}
    (hloop : LoopResult (g1NormalizeBody values) state result) :
    ∀ (inverses : alloc.vec.Vec G1BatchFq)
      (acc : alloc.vec.Vec
        ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
      (i : Nat),
      state = (inverses, acc, ⟨i⟩) →
      result = .ok out →
      i ≤ values.length →
      G1RecoveredBatch (values.drop i) inverses.val →
      List.Forall₂ ValidG1LoopState (values.drop i) (points.drop i) →
      List.Forall₂ ValidG1AffineLoopBase acc.val (points.take i) →
      G1ValidBatchOutput out.val points := by
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
            by_cases hz : (values[i]).z.val =
                ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
            · simp [g1NormalizeBody,
                ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                hlt, hz] at hbody
            · cases hsquare : ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv with
              | fail error =>
                  simp [g1NormalizeBody,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                    Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                    ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                    hlt, hz, hsquare] at hbody
              | div =>
                  simp [g1NormalizeBody,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                    Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                    ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                    hlt, hz, hsquare] at hbody
              | ok z2 =>
                  cases hx : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
                      (values[i]).x z2 with
                  | fail error =>
                      simp [g1NormalizeBody,
                        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                        Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                        ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                        ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                        hlt, hz, hsquare, hx] at hbody
                  | div =>
                      simp [g1NormalizeBody,
                        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                        Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                        ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                        ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                        hlt, hz, hsquare, hx] at hbody
                  | ok x =>
                      cases hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
                          (values[i]).y z2 with
                      | fail error =>
                          simp [g1NormalizeBody,
                            ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                            Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                            ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                            ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                            hlt, hz, hsquare, hx, hyz2] at hbody
                      | div =>
                          simp [g1NormalizeBody,
                            ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                            Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                            ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                            ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                            hlt, hz, hsquare, hx, hyz2] at hbody
                      | ok yz2 =>
                          cases hy : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
                              yz2 zinv <;>
                            simp [g1NormalizeBody,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                              ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                              hlt, hz, hsquare, hx, hyz2, hy] at hbody
      have hi : i = values.length := by omega
      simp [g1NormalizeBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
        Slice.len, hdone] at hbody
      subst acc
      unfold G1ValidBatchOutput
      have hpoints : i = points.length := by omega
      simpa [hpoints] using hacc
  | @next state next result hstep hnext ih =>
      intro inverses acc i hstate hresult hbound hrecovered hinput hacc
      cases hstate
      have hlt : i < values.length := by
        by_contra hnot
        simp [g1NormalizeBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
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
          by_cases hz : (values[i]).z.val =
              ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
          · have hstate : next =
                (⟨remaining⟩, ⟨acc.val ++ [g1AffineIdentity]⟩,
                  ⟨i + 1⟩) := by
              simpa [g1NormalizeBody, g1AffineIdentity,
                ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                hlt, hz] using hstep.symm
            have hvalid := g1_normalize_zero_semantic (values[i]) (points[i])
              hvalue hz
            apply ih ⟨remaining⟩ ⟨acc.val ++ [g1AffineIdentity]⟩
              (i + 1) hstate hresult (by omega) hremaining hinput
            rw [List.take_succ_eq_append_getElem hltPoints]
            exact forall₂_snoc hacc hvalid
          · cases hsquare : ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv with
            | fail error =>
                simp [g1NormalizeBody,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                  Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                  ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                  hlt, hz, hsquare] at hstep
            | div =>
                simp [g1NormalizeBody,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                  Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                  ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                  hlt, hz, hsquare] at hstep
            | ok z2 =>
                cases hx : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
                    (values[i]).x z2 with
                | fail error =>
                    simp [g1NormalizeBody,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                      Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                      ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                      hlt, hz, hsquare, hx] at hstep
                | div =>
                    simp [g1NormalizeBody,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                      Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                      ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                      hlt, hz, hsquare, hx] at hstep
                | ok x =>
                    cases hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
                        (values[i]).y z2 with
                    | fail error =>
                        simp [g1NormalizeBody,
                          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                          Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                          ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                          ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                          hlt, hz, hsquare, hx, hyz2] at hstep
                    | div =>
                        simp [g1NormalizeBody,
                          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                          Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                          ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                          ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                          hlt, hz, hsquare, hx, hyz2] at hstep
                    | ok yz2 =>
                        cases hy : ark_ip_proofs.s3_07_arkworks_fq_spike.mul yz2 zinv with
                        | fail error =>
                            simp [g1NormalizeBody,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                              ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                              hlt, hz, hsquare, hx, hyz2, hy] at hstep
                        | div =>
                            simp [g1NormalizeBody,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                              ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                              hlt, hz, hsquare, hx, hyz2, hy] at hstep
                        | ok y =>
                            let affine :
                                ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont :=
                              { x := x, y := y, infinity := false }
                            have hstate : next =
                                (⟨remaining⟩, ⟨acc.val ++ [affine]⟩,
                                  ⟨i + 1⟩) := by
                              simpa [g1NormalizeBody, affine,
                                ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                                ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                                ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                                hlt, hz, hsquare, hx, hyz2, hy] using hstep.symm
                            have hvalid := g1_normalize_nonzero_semantic
                              (values[i]) (points[i]) zinv z2 x yz2 y hvalue hzinv
                              hz hsquare hx hyz2 hy
                            apply ih ⟨remaining⟩ ⟨acc.val ++ [affine]⟩
                              (i + 1) hstate hresult (by omega) hremaining hinput
                            rw [List.take_succ_eq_append_getElem hltPoints]
                            exact forall₂_snoc hacc hvalid
  | fail hbody =>
      intro inverses acc i hstate hresult hbound hrecovered hinput hacc
      simp at hresult
  | div hbody =>
      intro inverses acc i hstate hresult hbound hrecovered hinput hacc
      simp at hresult

/-- The G1 scaling loop consumes recovered inverses and preserves every point. -/
theorem g1_normalize_recovered (values : List G1BatchProj)
    (points : List G1AffinePoint) (inverses : alloc.vec.Vec G1BatchFq)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (hinput : G1ValidBatchInput values points)
    (hrecovered : G1RecoveredBatch values inverses.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
      ⟨values⟩ inverses ⟨[]⟩ 0#usize = .ok out) :
    G1ValidBatchOutput out.val points := by
  have hlength := hinput.length_eq
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop at hexec
  have hloop := loopResult_of_eq (by simp) hexec
  apply g1_normalize_core values points out hlength.symm hloop inverses ⟨[]⟩ 0
    rfl rfl (by simp)
  · simpa using hrecovered
  · simpa [G1ValidBatchInput] using hinput
  · exact .nil

end Ipp.Extracted.ArkworksScalarMulNormalize
