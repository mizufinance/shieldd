import Ipp.Extracted.TippMippChallengeExecution

/-!
Recover the exact state-threaded Fiat--Shamir calls from an accepted extracted
TIPP/MIPP execution.  The proof follows the finite generated round loop; it
does not assume a separately supplied execution trace.
-/

namespace Ipp.Extracted.TippMippAcceptedRunProjection

open Aeneas Aeneas.Std Result ControlFlow
open ark_ip_proofs
open Ipp.Bls12377
open Ipp.Extracted.TippMippChallengeExecution

noncomputable section

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

abbrev Round :=
  Ipp.Extracted.VerifyTippMipp.Round
    ArkPairingOutput ArkPairingOutput g1PrimeSubgroup

abbrev Effects (FX : Type) :=
  applications.groth16_aggregation.TippMippEffect
    FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
      ArkPairingOutput g1PrimeSubgroup String

abbrev RoundState (FX : Type) :=
  core.ops.range.Range × FX × g1PrimeSubgroup × Fr × Fr × alloc.vec.Vec Fr ×
    alloc.vec.Vec Fr × Option String

abbrev RoundOutput (FX : Type) :=
  FX × g1PrimeSubgroup × Fr × alloc.vec.Vec Fr × alloc.vec.Vec Fr ×
    Option String

private def finVec {T : Type} {n : Nat} (values : Fin n → T) :
    alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

private def roundBody {FX : Type}
    (effects : Effects FX) (rounds : alloc.vec.Vec Round)
    (roundCount : Usize) :
    RoundState FX → Result (ControlFlow (RoundState FX) (RoundOutput FX)) :=
  fun (iter, effect, comZ, prior, last, raw, inverse, roundError) =>
    applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body
      (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
      (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
      (Ipp.Extracted.VerifyTippMipp.modelDefault g1PrimeSubgroup)
      (Ipp.Extracted.VerifyTippMipp.modelAdd g1PrimeSubgroup)
      (Ipp.Extracted.VerifyTippMipp.modelSmulAssign g1PrimeSubgroup)
      effects rounds roundCount iter effect comZ prior last raw inverse roundError

private theorem usizeSub (left right : Nat) (h : right ≤ left) :
    (({ val := left } : Usize) - ({ val := right } : Usize) : Result Usize) =
      .ok { val := Nat.sub left right } := by
  change (if right ≤ left then
      Aeneas.Result.ok ({ val := Nat.sub left right } : Usize)
    else (Aeneas.Result.fail .integerOverflow : Result Usize)) = _
  simp [h]

private theorem usizeSubOne (left : Nat) (h : 1 ≤ left) :
    (({ val := left } : Usize) - Usize.ofNat 1 : Result Usize) =
      .ok { val := Nat.sub left 1 } := by
  simpa [Usize.ofNat] using usizeSub left 1 h

private theorem reverseRoundIndex {n : Nat} (rounds : Fin n → Round)
    (k : Nat) (hk : k < n) :
    ark_ip_proofs.alloc.vec.Vec.index
        (ark_ip_proofs.core.slice.index.SliceIndexUsizeSlice Round)
        (finVec rounds) ⟨Nat.sub (Nat.sub n k) 1⟩ =
      .ok (rounds (Fin.rev ⟨k, hk⟩)) := by
  have hpos : 0 < Nat.sub n k := Nat.sub_pos_iff_lt.mpr hk
  have hi : Nat.sub (Nat.sub n k) 1 < n :=
    (Nat.sub_lt hpos (by omega)).trans_le (Nat.sub_le n k)
  unfold ark_ip_proofs.alloc.vec.Vec.index finVec
  rw [List.getElem?_ofFn, dif_pos hi]
  congr 2

/-- Calls and effect states for a suffix of the generated round loop.
`prior` is retained explicitly so composition does not need arithmetic casts
between differently sized `Fin` types. -/
private structure RoundSegment {FX : Type} {n : Nat}
    (effects : Effects FX) (rounds : Fin n → Round)
    (k : Nat) (startEffect : FX) (startPrior : Fr)
    (finalEffect : FX) (finalPrior : Fr) : Type where
  value : Nat → Fr
  effect : Nat → FX
  prior : Nat → Fr
  effect_start : effect k = startEffect
  effect_finish : effect n = finalEffect
  prior_start : prior k = startPrior
  prior_finish : prior n = finalPrior
  derive : ∀ i, k ≤ i → (hi : i < n) →
    effects.derive_round (effect i) (prior i)
        (rounds (Fin.rev ⟨i, hi⟩)).1
        (rounds (Fin.rev ⟨i, hi⟩)).2 =
      .ok (.Ok (value i), effect (i + 1))
  prior_next : ∀ i, k ≤ i → i < n →
    prior (i + 1) = value i

private def RoundSegment.nil {FX : Type} {n : Nat}
    (effects : Effects FX) (rounds : Fin n → Round)
    (effect : FX) (prior : Fr) :
    RoundSegment effects rounds n effect prior effect prior := {
  value := fun _ => 0
  effect := fun _ => effect
  prior := fun _ => prior
  effect_start := rfl
  effect_finish := rfl
  prior_start := rfl
  prior_finish := rfl
  derive := by
    intro i hni hin
    omega
  prior_next := by
    intro i hni hin
    omega
}

private def RoundSegment.cons {FX : Type} {n k : Nat}
    (effects : Effects FX) (rounds : Fin n → Round)
    (hk : k < n)
    (effect nextEffect finalEffect : FX)
    (prior value finalPrior : Fr)
    (head :
      effects.derive_round effect prior
          (rounds (Fin.rev ⟨k, hk⟩)).1
          (rounds (Fin.rev ⟨k, hk⟩)).2 =
        .ok (.Ok value, nextEffect))
    (tail :
      RoundSegment effects rounds (k + 1) nextEffect value
        finalEffect finalPrior) :
    RoundSegment effects rounds k effect prior finalEffect finalPrior := by
  let values : Nat → Fr :=
    fun i => if i = k then value else tail.value i
  let effectsAt : Nat → FX :=
    fun i => if i = k then effect else tail.effect i
  let priors : Nat → Fr :=
    fun i => if i = k then prior else tail.prior i
  refine {
    value := values
    effect := effectsAt
    prior := priors
    effect_start := by simp [effectsAt]
    effect_finish := by
      simp only [effectsAt]
      rw [if_neg (Nat.ne_of_gt hk)]
      exact tail.effect_finish
    prior_start := by simp [priors]
    prior_finish := by
      simp only [priors]
      rw [if_neg (Nat.ne_of_gt hk)]
      exact tail.prior_finish
    derive := ?_
    prior_next := ?_
  }
  · intro i hki hin
    by_cases hik : i = k
    · subst i
      simpa [effectsAt, priors, values, tail.effect_start] using head
    · have hnext : k + 1 ≤ i := by omega
      have hiNext : i + 1 ≠ k := by omega
      simpa [effectsAt, priors, values, hik, hiNext] using
        tail.derive i hnext hin
  · intro i hki hin
    by_cases hik : i = k
    · subst i
      have hsucc : k + 1 ≠ k := by omega
      simpa [priors, values, hsucc] using tail.prior_start
    · have hnext : k + 1 ≤ i := by omega
      have hiNext : i + 1 ≠ k := by omega
      simpa [priors, values, hik, hiNext] using
        tail.prior_next i hnext hin

private def foldValue {M : Type} [Add M] [SMul Fr M]
    (inverse raw : Fr) (left current right : M) : M :=
  inverse • left + current + raw • right

private theorem successfulRoundStep {FX : Type} {n : Nat}
    (effects : Effects FX) (rounds : Fin n → Round)
    (k : Nat) (hk : k < n)
    (effect nextEffect : FX)
    (comZ : g1PrimeSubgroup) (prior last value inverseValue : Fr)
    (raw inverse : alloc.vec.Vec Fr)
    (hderive :
      effects.derive_round effect prior
          (rounds (Fin.rev ⟨k, hk⟩)).1
          (rounds (Fin.rev ⟨k, hk⟩)).2 =
        .ok (.Ok value, nextEffect))
    (hinvert :
      effects.invert_round nextEffect value =
        .ok (.Ok inverseValue)) :
    roundBody effects (finVec rounds) ⟨n⟩
        ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comZ, prior, last, raw,
          inverse, none) =
      .ok (.cont
        ({ start := ⟨k + 1⟩, «end» := ⟨n⟩ }, nextEffect,
          foldValue inverseValue value
            (rounds (Fin.rev ⟨k, hk⟩)).1.c.2 comZ
            (rounds (Fin.rev ⟨k, hk⟩)).2.c.2,
          value, value, ⟨raw.val ++ [value]⟩,
          ⟨inverse.val ++ [inverseValue]⟩, none)) := by
  simp only [roundBody,
    applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
    core.iter.range.IteratorRange.next, hk, ↓reduceIte, Result.bind_ok]
  rw [usizeSub n k hk.le]
  simp only [Result.bind_ok]
  have hone : 1 ≤ Nat.sub n k := Nat.sub_pos_iff_lt.mpr hk
  rw [usizeSubOne (Nat.sub n k) hone]
  simp only [Result.bind_ok]
  rw [reverseRoundIndex rounds k hk]
  simp only [Result.bind_ok]
  rw [hderive]
  simp only [core.option.Option.is_none, if_true, Result.bind_ok]
  rw [hinvert]
  simp [foldValue, gipa.fold_output, ark_ip_proofs.mul_helper,
    Ipp.Extracted.VerifyTippMipp.modelClone,
    Ipp.Extracted.VerifyTippMipp.modelDefault,
    Ipp.Extracted.VerifyTippMipp.modelAdd,
    Ipp.Extracted.VerifyTippMipp.modelSmulAssign,
    Aeneas.Std.alloc.vec.Vec.push, Usize.ofNat]

private theorem noAcceptedTailAfterError {FX : Type} {n k : Nat}
    (effects : Effects FX) (rounds : Fin n → Round) (hk : k ≤ n)
    (effect finalEffect : FX)
    (comZ finalComZ : g1PrimeSubgroup)
    (prior last finalPrior : Fr)
    (raw inverse finalRaw finalInverse : alloc.vec.Vec Fr)
    (error : String)
    (hrun :
      LoopResult (roundBody effects (finVec rounds) ⟨n⟩)
        ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comZ, prior, last, raw,
          inverse, some error)
        (.ok (finalEffect, finalComZ, finalPrior, finalRaw, finalInverse,
          none))) :
    False := by
  have hrunEq := loop_eq_of_result hrun
  have hterminal :=
    Ipp.Extracted.VerifyTippMipp.roundError_terminal
      (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
      (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
      (Ipp.Extracted.VerifyTippMipp.modelDefault g1PrimeSubgroup)
      (Ipp.Extracted.VerifyTippMipp.modelAdd g1PrimeSubgroup)
      (Ipp.Extracted.VerifyTippMipp.modelSmulAssign g1PrimeSubgroup)
      effects rounds hk effect comZ prior last raw inverse error
  have hterminal' :
      loop (roundBody effects (finVec rounds) ⟨n⟩)
          ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comZ, prior, last, raw,
            inverse, some error) =
        .ok (effect, comZ, last, raw, inverse, some error) := by
    simpa [roundBody, finVec] using hterminal
  rw [hterminal'] at hrunEq
  simp at hrunEq

private theorem segmentOfLoopResult {FX : Type} {n k : Nat}
    (effects : Effects FX) (rounds : Fin n → Round) (hk : k ≤ n)
    (effect finalEffect : FX)
    (comZ finalComZ : g1PrimeSubgroup)
    (prior last finalPrior : Fr)
    (hpriorLast : prior = last)
    (raw inverse finalRaw finalInverse : alloc.vec.Vec Fr)
    (hrun :
      LoopResult (roundBody effects (finVec rounds) ⟨n⟩)
        ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comZ, prior, last, raw,
          inverse, none)
        (.ok (finalEffect, finalComZ, finalPrior, finalRaw, finalInverse,
          none))) :
    Nonempty
      (RoundSegment effects rounds k effect prior finalEffect finalPrior) := by
  by_cases hdone : k = n
  · subst k
    cases hrun with
    | done hbody =>
        have hbody' :
            (.ok (.done
              (effect, comZ, last, raw, inverse, none)) :
              Result (ControlFlow (RoundState FX) (RoundOutput FX))) =
            .ok (.done
              (finalEffect, finalComZ, finalPrior, finalRaw, finalInverse,
                none)) := by
          simpa [roundBody,
            applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
            core.iter.range.IteratorRange.next] using hbody
        rw [← hpriorLast] at hbody'
        cases hbody'
        exact ⟨RoundSegment.nil effects rounds effect prior⟩
    | next hstep _ =>
        simp [roundBody,
          applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
          core.iter.range.IteratorRange.next] at hstep
  · have hlt : k < n := by omega
    cases hrun with
    | done hbody =>
        simp only [roundBody,
          applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
          core.iter.range.IteratorRange.next, hlt, ↓reduceIte,
          Result.bind_ok] at hbody
        rw [usizeSub n k hlt.le] at hbody
        simp only [Result.bind_ok] at hbody
        have hone : 1 ≤ Nat.sub n k := Nat.sub_pos_iff_lt.mpr hlt
        rw [usizeSubOne (Nat.sub n k) hone] at hbody
        simp only [Result.bind_ok] at hbody
        rw [reverseRoundIndex rounds k hlt] at hbody
        cases hderive :
            effects.derive_round effect prior
              (rounds (Fin.rev ⟨k, hlt⟩)).1
              (rounds (Fin.rev ⟨k, hlt⟩)).2 <;>
          simp [hderive, core.option.Option.is_none] at hbody
        next derived =>
          rcases derived with ⟨derived, nextEffect⟩
          cases derived <;>
            simp [hderive, core.option.Option.is_none] at hbody
          next value =>
            cases hinvert : effects.invert_round nextEffect value <;>
              simp [hderive, hinvert, core.option.Option.is_none] at hbody
            next inverted =>
              cases inverted <;> simp [hderive, hinvert,
                core.option.Option.is_none,
                gipa.fold_output, ark_ip_proofs.mul_helper,
                Ipp.Extracted.VerifyTippMipp.modelClone,
                Ipp.Extracted.VerifyTippMipp.modelDefault,
                Ipp.Extracted.VerifyTippMipp.modelAdd,
                Ipp.Extracted.VerifyTippMipp.modelSmulAssign,
                Aeneas.Std.alloc.vec.Vec.push, Usize.ofNat] at hbody
    | next hstep htail =>
        cases hderive :
            effects.derive_round effect prior
              (rounds (Fin.rev ⟨k, hlt⟩)).1
              (rounds (Fin.rev ⟨k, hlt⟩)).2 with
        | fail error =>
            simp only [roundBody,
              applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
              core.iter.range.IteratorRange.next, hlt, ↓reduceIte,
              Result.bind_ok] at hstep
            rw [usizeSub n k hlt.le] at hstep
            simp only [Result.bind_ok] at hstep
            have hone : 1 ≤ Nat.sub n k := Nat.sub_pos_iff_lt.mpr hlt
            rw [usizeSubOne (Nat.sub n k) hone] at hstep
            simp only [Result.bind_ok] at hstep
            rw [reverseRoundIndex rounds k hlt] at hstep
            simp [hderive, core.option.Option.is_none] at hstep
        | div =>
            simp only [roundBody,
              applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
              core.iter.range.IteratorRange.next, hlt, ↓reduceIte,
              Result.bind_ok] at hstep
            rw [usizeSub n k hlt.le] at hstep
            simp only [Result.bind_ok] at hstep
            have hone : 1 ≤ Nat.sub n k := Nat.sub_pos_iff_lt.mpr hlt
            rw [usizeSubOne (Nat.sub n k) hone] at hstep
            simp only [Result.bind_ok] at hstep
            rw [reverseRoundIndex rounds k hlt] at hstep
            simp [hderive, core.option.Option.is_none] at hstep
        | ok derived =>
            rcases derived with ⟨derived, nextEffect⟩
            cases derived with
            | Err error =>
                have hfailure :=
                  Ipp.Extracted.VerifyTippMipp.deriveFailure_step
                    (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
                    (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
                    (Ipp.Extracted.VerifyTippMipp.modelDefault g1PrimeSubgroup)
                    (Ipp.Extracted.VerifyTippMipp.modelAdd g1PrimeSubgroup)
                    (Ipp.Extracted.VerifyTippMipp.modelSmulAssign
                      g1PrimeSubgroup)
                    effects rounds k hlt effect nextEffect comZ prior last raw
                    inverse error hderive
                rw [show roundBody effects (finVec rounds) ⟨n⟩
                    ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comZ, prior,
                      last, raw, inverse, none) =
                    _ by simpa [roundBody, finVec] using hfailure] at hstep
                cases hstep
                exact (noAcceptedTailAfterError effects rounds (by omega)
                  nextEffect finalEffect comZ finalComZ prior last finalPrior
                  raw inverse finalRaw finalInverse error htail).elim
            | Ok value =>
                cases hinvert :
                    effects.invert_round nextEffect value with
                | fail error =>
                    simp only [roundBody,
                      applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
                      core.iter.range.IteratorRange.next, hlt, ↓reduceIte,
                      Result.bind_ok] at hstep
                    rw [usizeSub n k hlt.le] at hstep
                    simp only [Result.bind_ok] at hstep
                    have hone : 1 ≤ Nat.sub n k :=
                      Nat.sub_pos_iff_lt.mpr hlt
                    rw [usizeSubOne (Nat.sub n k) hone] at hstep
                    simp only [Result.bind_ok] at hstep
                    rw [reverseRoundIndex rounds k hlt] at hstep
                    simp [hderive, hinvert, core.option.Option.is_none] at hstep
                | div =>
                    simp only [roundBody,
                      applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
                      core.iter.range.IteratorRange.next, hlt, ↓reduceIte,
                      Result.bind_ok] at hstep
                    rw [usizeSub n k hlt.le] at hstep
                    simp only [Result.bind_ok] at hstep
                    have hone : 1 ≤ Nat.sub n k :=
                      Nat.sub_pos_iff_lt.mpr hlt
                    rw [usizeSubOne (Nat.sub n k) hone] at hstep
                    simp only [Result.bind_ok] at hstep
                    rw [reverseRoundIndex rounds k hlt] at hstep
                    simp [hderive, hinvert, core.option.Option.is_none] at hstep
                | ok inverted =>
                    cases inverted with
                    | Err error =>
                        have hfailure :=
                          Ipp.Extracted.VerifyTippMipp.inversionFailure_step
                            (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
                            (Ipp.Extracted.VerifyTippMipp.modelClone
                              g1PrimeSubgroup)
                            (Ipp.Extracted.VerifyTippMipp.modelDefault
                              g1PrimeSubgroup)
                            (Ipp.Extracted.VerifyTippMipp.modelAdd
                              g1PrimeSubgroup)
                            (Ipp.Extracted.VerifyTippMipp.modelSmulAssign
                              g1PrimeSubgroup)
                            effects rounds k hlt effect nextEffect comZ prior
                            last value raw inverse error hderive hinvert
                        rw [show roundBody effects (finVec rounds) ⟨n⟩
                            ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comZ,
                              prior, last, raw, inverse, none) = _ by
                          simpa [roundBody, finVec] using hfailure] at hstep
                        cases hstep
                        exact
                          (noAcceptedTailAfterError effects rounds (by omega)
                            nextEffect finalEffect comZ finalComZ prior last
                            finalPrior raw inverse finalRaw finalInverse error
                            htail).elim
                    | Ok inverseValue =>
                        have hsuccess :=
                          successfulRoundStep effects rounds k hlt effect
                            nextEffect comZ prior last value inverseValue raw
                            inverse hderive hinvert
                        rw [hsuccess] at hstep
                        cases hstep
                        obtain ⟨tail⟩ :=
                          segmentOfLoopResult effects rounds (by omega)
                            nextEffect finalEffect
                            (foldValue inverseValue value
                              (rounds (Fin.rev ⟨k, hlt⟩)).1.c.2 comZ
                              (rounds (Fin.rev ⟨k, hlt⟩)).2.c.2)
                            finalComZ value value finalPrior rfl
                            ⟨raw.val ++ [value]⟩
                            ⟨inverse.val ++ [inverseValue]⟩
                            finalRaw finalInverse htail
                        exact
                          ⟨RoundSegment.cons effects rounds hlt effect
                            nextEffect finalEffect prior value finalPrior hderive
                            tail⟩
termination_by n - k
decreasing_by omega

private def dummyTranscript {n : Nat} (randomizer : Fr) :
    Ipp.FsTranscript n Fr := {
  randomizer := randomizer
  randomizerNonce := 0
  x0 := 0
  x0Nonce := 0
  roundPrev := fun _ => 0
  roundAnswer := fun _ => 0
  roundNonce := fun _ => 0
  bridge := 0
  bridgeNonce := 0
  kzg := 0
  kzgNonce := 0
}

private def coreInput0 {n : Nat}
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizer : Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup) :=
  Ipp.Extracted.VerifyTippMipp.coreInput stmt proof
    (dummyTranscript randomizer) g gBeta h hAlpha

private noncomputable def runPrefix {FX : Type}
    (effects : Effects FX)
    (input :
      applications.groth16_aggregation.TippMippCoreInput
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
          ArkPairingOutput g1PrimeSubgroup)
    (effect : FX) := by
  letI : DecidableEq ArkPairingOutput := Classical.decEq _
  exact applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core
    (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
    (Ipp.Extracted.VerifyTippMipp.modelOne Fr)
    (Ipp.Extracted.VerifyTippMipp.modelAdd Fr)
    (Ipp.Extracted.VerifyTippMipp.modelMul Fr)
    (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSmul g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSub g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelNeg g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSmul g2PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSub g2PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelDefault ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelAdd ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelSmulAssign ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelZero ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelDefault ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelAdd ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelSmulAssign ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelDefault g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelAdd g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSmulAssign g1PrimeSubgroup)
    effects input effect

private noncomputable def runExecution {FX PE : Type}
    (effects : Effects FX)
    (pairingEffect :
      tipa.PairingEffect PE g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (input :
      applications.groth16_aggregation.TippMippCoreInput
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
          ArkPairingOutput g1PrimeSubgroup)
    (effect : FX) (pairing : PE) := by
  letI : DecidableEq ArkPairingOutput := Classical.decEq _
  exact applications.groth16_aggregation.verify_tipp_mipp_execution_core
    (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
    (Ipp.Extracted.VerifyTippMipp.modelOne Fr)
    (Ipp.Extracted.VerifyTippMipp.modelAdd Fr)
    (Ipp.Extracted.VerifyTippMipp.modelMul Fr)
    (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSmul g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSub g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelNeg g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelClone g2PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSmul g2PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSub g2PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelDefault ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelAdd ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelSmulAssign ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelZero ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelClone ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelDefault ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelAdd ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelSmulAssign ArkPairingOutput)
    (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelDefault g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelAdd g1PrimeSubgroup)
    (Ipp.Extracted.VerifyTippMipp.modelSmulAssign g1PrimeSubgroup)
    effects pairingEffect input effect pairing

private theorem runExecution_eq_combined {FX PE : Type}
    (effects : Effects FX)
    (pairingEffect :
      tipa.PairingEffect PE g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (input :
      applications.groth16_aggregation.TippMippCoreInput
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
          ArkPairingOutput g1PrimeSubgroup)
    (effect : FX) (pairing : PE) :
    runExecution effects pairingEffect input effect pairing =
      Ipp.Extracted.CombinedChecks.runTippExecution
        effects pairingEffect input effect pairing := by
  rfl

private def CarriesEffect {A FX : Type} (expected : FX) :
    Result (A × FX) → Prop
  | .ok (_, actual) => actual = expected
  | .fail _ => True
  | .div => True

private theorem carriesEffect_bind {A B FX : Type} (expected : FX)
    (result : Result A) (next : A → Result (B × FX))
    (hnext : ∀ value, CarriesEffect expected (next value)) :
    CarriesEffect expected (result >>= next) := by
  cases result with
  | fail _ => trivial
  | div => trivial
  | ok value => exact hnext value

private theorem extractedRoundLoop_eq {FX : Type} {n : Nat}
    (effects : Effects FX) (rounds : Fin n → Round)
    (iter : core.ops.range.Range) (effect : FX)
    (comZ : g1PrimeSubgroup) (prior last : Fr)
    (raw inverse : alloc.vec.Vec Fr) (roundError : Option String) :
    applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
        (Ipp.Extracted.VerifyTippMipp.modelClone Fr)
        (Ipp.Extracted.VerifyTippMipp.modelClone g1PrimeSubgroup)
        (Ipp.Extracted.VerifyTippMipp.modelDefault g1PrimeSubgroup)
        (Ipp.Extracted.VerifyTippMipp.modelAdd g1PrimeSubgroup)
        (Ipp.Extracted.VerifyTippMipp.modelSmulAssign g1PrimeSubgroup)
        effects iter (finVec rounds) effect comZ prior last raw inverse
        roundError ⟨n⟩ =
      loop (roundBody effects (finVec rounds) ⟨n⟩)
        (iter, effect, comZ, prior, last, raw, inverse, roundError) := by
  rfl

/-- The values in a recovered segment induce exactly the `priorAt` schedule
used by the formal transcript. -/
private theorem RoundSegment.prior_eq_priorAt {FX : Type} {n : Nat}
    {effects : Effects FX} {rounds : Fin n → Round}
    {effect finalEffect : FX} {x0 finalPrior : Fr}
    (segment :
      RoundSegment effects rounds 0 effect x0 finalEffect finalPrior)
    (i : Nat) (hi : i ≤ n) :
    segment.prior i =
      Ipp.Extracted.VerifyTippMipp.priorAt
        (fun j : Fin n => segment.value j.val) x0 i := by
  cases i with
  | zero =>
      simpa using segment.prior_start
  | succ k =>
      have hk : k < n := by omega
      rw [segment.prior_next k (Nat.zero_le k) hk]
      simp [Ipp.Extracted.VerifyTippMipp.priorAt, hk]

private def effectTraceOfSegment {FX : Type} {n : Nat}
    (primitive : Primitive FX)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizer : Fr)
    (effect0 roundEffect roundFinalEffect bridgeEffect finalEffect : FX)
    (x0 bridge kzg lastRound : Fr)
    (hx0 :
      (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
        (@Ipp.Extracted.TippMippAdapter.partialEq
          ArkPairingOutput (Classical.decEq _))
        (@Ipp.Extracted.TippMippAdapter.partialEq
          g1PrimeSubgroup (Classical.decEq _))).derive_x0
        effect0 randomizer proof.ComA.1 proof.ComB proof.ComA.2 proof.ipAb
          proof.aggC =
        .ok (.Ok x0, roundEffect))
    (segment :
      RoundSegment
        (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
          (@Ipp.Extracted.TippMippAdapter.partialEq
            ArkPairingOutput (Classical.decEq _))
          (@Ipp.Extracted.TippMippAdapter.partialEq
            g1PrimeSubgroup (Classical.decEq _)))
        (Ipp.Extracted.VerifyTippMipp.extractedRounds proof.rounds)
        0 roundEffect x0 roundFinalEffect lastRound)
    (hbridge :
      (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
        (@Ipp.Extracted.TippMippAdapter.partialEq
          ArkPairingOutput (Classical.decEq _))
        (@Ipp.Extracted.TippMippAdapter.partialEq
          g1PrimeSubgroup (Classical.decEq _))).derive_final_bridge
        roundFinalEffect lastRound (proof.vFinal, proof.wFinal)
          (proof.aFinal, proof.bFinal, proof.cFinal) =
        .ok (.Ok bridge, bridgeEffect))
    (hkzg :
      (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
        (@Ipp.Extracted.TippMippAdapter.partialEq
          ArkPairingOutput (Classical.decEq _))
        (@Ipp.Extracted.TippMippAdapter.partialEq
          g1PrimeSubgroup (Classical.decEq _))).derive_kzg
        bridgeEffect bridge (proof.vFinal, proof.wFinal) =
        .ok (.Ok kzg, finalEffect)) :
    AcceptedEffectChallengeTrace primitive proof randomizer
      effect0 finalEffect := by
  let roundValue : Fin n → Fr := fun i => segment.value i.val
  let effect : Nat → FX := fun i => segment.effect i
  refine {
    x0Value := x0
    roundValue := roundValue
    bridgeValue := bridge
    kzgValue := kzg
    effect := effect
    bridgeEffect := bridgeEffect
    x0 := ?_
    round := ?_
    bridge := ?_
    kzg := hkzg
  }
  · simpa [effect, segment.effect_start] using hx0
  · intro k hk
    have hprior := segment.prior_eq_priorAt k hk.le
    have hderive := segment.derive k (Nat.zero_le k) hk
    simpa [effect, roundValue, hprior] using hderive
  · have hprior := segment.prior_eq_priorAt n (Nat.le_refl n)
    have hlast :
        lastRound =
          Ipp.Extracted.VerifyTippMipp.priorAt roundValue x0 n :=
      segment.prior_finish.symm.trans hprior
    simpa [effect, roundValue, segment.effect_finish, hlast] using hbridge

private structure PrefixCallWitness {FX : Type} {n : Nat}
    (primitive : Primitive FX)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizer : Fr) (effect0 finalEffect : FX) : Type where
  x0 : Fr
  bridge : Fr
  kzg : Fr
  roundEffect : FX
  roundFinalEffect : FX
  bridgeEffect : FX
  finalComZ : g1PrimeSubgroup
  lastRound : Fr
  raw : alloc.vec.Vec Fr
  inverse : alloc.vec.Vec Fr
  x0Call :
    (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq
        ArkPairingOutput (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq
        g1PrimeSubgroup (Classical.decEq _))).derive_x0
      effect0 randomizer proof.ComA.1 proof.ComB proof.ComA.2 proof.ipAb
        proof.aggC =
      .ok (.Ok x0, roundEffect)
  rounds :
    loop
        (roundBody
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              g1PrimeSubgroup (Classical.decEq _)))
          (finVec
            (Ipp.Extracted.VerifyTippMipp.extractedRounds proof.rounds))
          ⟨n⟩)
        ({ start := ⟨0⟩, «end» := ⟨n⟩ }, roundEffect,
          proof.aggC, x0, x0, ⟨[]⟩, ⟨[]⟩, none) =
      .ok (roundFinalEffect, finalComZ, lastRound, raw, inverse, none)
  bridgeCall :
    (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq
        ArkPairingOutput (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq
        g1PrimeSubgroup (Classical.decEq _))).derive_final_bridge
      roundFinalEffect lastRound (proof.vFinal, proof.wFinal)
        (proof.aFinal, proof.bFinal, proof.cFinal) =
      .ok (.Ok bridge, bridgeEffect)
  kzgCall :
    (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq
        ArkPairingOutput (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq
        g1PrimeSubgroup (Classical.decEq _))).derive_kzg
      bridgeEffect bridge (proof.vFinal, proof.wFinal) =
      .ok (.Ok kzg, finalEffect)

private theorem PrefixCallWitness.toEffectTrace {FX : Type} {n : Nat}
    {primitive : Primitive FX}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {randomizer : Fr} {effect0 finalEffect : FX}
    (calls :
      PrefixCallWitness primitive proof randomizer effect0 finalEffect) :
    Nonempty
      (AcceptedEffectChallengeTrace primitive proof randomizer
        effect0 finalEffect) := by
  have hrun :
      LoopResult
        (roundBody
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              g1PrimeSubgroup (Classical.decEq _)))
          (finVec
            (Ipp.Extracted.VerifyTippMipp.extractedRounds proof.rounds))
          ⟨n⟩)
        ({ start := ⟨0⟩, «end» := ⟨n⟩ }, calls.roundEffect,
          proof.aggC, calls.x0, calls.x0, ⟨[]⟩, ⟨[]⟩, none)
        (.ok (calls.roundFinalEffect, calls.finalComZ, calls.lastRound,
          calls.raw, calls.inverse, none)) :=
    loopResult_of_eq (by simp) calls.rounds
  obtain ⟨segment⟩ :=
    segmentOfLoopResult
      (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
        (@Ipp.Extracted.TippMippAdapter.partialEq
          ArkPairingOutput (Classical.decEq _))
        (@Ipp.Extracted.TippMippAdapter.partialEq
          g1PrimeSubgroup (Classical.decEq _)))
      (Ipp.Extracted.VerifyTippMipp.extractedRounds proof.rounds)
      (Nat.zero_le n) calls.roundEffect calls.roundFinalEffect
      proof.aggC calls.finalComZ calls.x0 calls.x0 calls.lastRound rfl
      ⟨[]⟩ ⟨[]⟩ calls.raw calls.inverse hrun
  exact
    ⟨effectTraceOfSegment primitive proof randomizer effect0 calls.roundEffect
      calls.roundFinalEffect calls.bridgeEffect finalEffect calls.x0
      calls.bridge calls.kzg calls.lastRound calls.x0Call segment
      calls.bridgeCall calls.kzgCall⟩

private theorem prefixCallWitness_of_success {FX : Type} {n : Nat}
    (primitive : Primitive FX)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizer : Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (effect0 finalEffect : FX)
    (challengePrefix :
      applications.groth16_aggregation.TippMippChallengePrefix
        Fr ArkPairingOutput ArkPairingOutput g1PrimeSubgroup)
    (hprefix :
      runPrefix
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              g1PrimeSubgroup (Classical.decEq _)))
          (coreInput0 stmt proof randomizer g gBeta h hAlpha) effect0 =
        .ok (.Ok challengePrefix, finalEffect)) :
    Nonempty
      (PrefixCallWitness primitive proof randomizer effect0 finalEffect) := by
  let effects :=
    Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq
        ArkPairingOutput (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq
        g1PrimeSubgroup (Classical.decEq _))
  change runPrefix effects
      (coreInput0 stmt proof randomizer g gBeta h hAlpha) effect0 =
        .ok (.Ok challengePrefix, finalEffect) at hprefix
  unfold runPrefix
    applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core
    at hprefix
  simp only [coreInput0, dummyTranscript,
    Ipp.Extracted.VerifyTippMipp.coreInput,
    Ipp.Extracted.VerifyTippMipp.modelClone, Result.bind_ok] at hprefix
  cases hx0 :
      effects.derive_x0 effect0 randomizer proof.ComA.1 proof.ComB
        proof.ComA.2 proof.ipAb proof.aggC with
  | fail error =>
      simp [hx0] at hprefix
  | div =>
      simp [hx0] at hprefix
  | ok x0Result =>
      rcases x0Result with ⟨x0Result, roundEffect⟩
      cases x0Result with
      | Err error =>
          simp [hx0,
            core.result.Result.Insts.CoreOpsTry.branch,
            core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual]
            at hprefix
      | Ok x0 =>
          simp only [hx0, core.result.Result.Insts.CoreOpsTry.branch,
            Result.bind_ok, ark_ip_proofs.alloc.vec.Vec.new] at hprefix
          rw [Ipp.Extracted.VerifyTippMipp.extractedRounds_finVec_eq
            proof.rounds] at hprefix
          simp only [ark_ip_proofs.alloc.vec.Vec.len,
            List.length_ofFn, Usize.ofNat] at hprefix
          have hloop :=
            extractedRoundLoop_eq effects
              (Ipp.Extracted.VerifyTippMipp.extractedRounds proof.rounds)
              { start := ⟨0⟩, «end» := ⟨n⟩ } roundEffect proof.aggC x0 x0
              ⟨[]⟩ ⟨[]⟩ none
          simp only [Ipp.Extracted.VerifyTippMipp.modelClone, finVec] at hloop
          rw [hloop] at hprefix
          cases hrounds :
              loop
                (roundBody effects
                  ⟨List.ofFn
                    (Ipp.Extracted.VerifyTippMipp.extractedRounds
                      proof.rounds)⟩
                  ⟨n⟩)
                ({ start := ⟨0⟩, «end» := ⟨n⟩ }, roundEffect,
                  proof.aggC, x0, x0, ⟨[]⟩, ⟨[]⟩, none) with
          | fail error =>
              simp [hrounds] at hprefix
          | div =>
              simp [hrounds] at hprefix
          | ok roundsOutput =>
              rcases roundsOutput with
                ⟨roundFinalEffect, finalComZ, lastRound, raw, inverse,
                  roundError⟩
              cases roundError with
              | some error =>
                  simp [hrounds] at hprefix
              | none =>
                  simp only [hrounds, Result.bind_ok,
                    alloc.vec.CloneVec.clone_identity,
                    alloc.vec.Vec.deref_mut, core.slice.Slice.reverse, lift]
                    at hprefix
                  have hfoldSuccess :
                      ∃ folded : ArkPairingOutput × ArkPairingOutput ×
                          ArkPairingOutput × ArkPairingOutput,
                        effects.fold_gt_commitments roundFinalEffect
                            (proof.ComA.1, proof.ComB, proof.ipAb,
                              proof.ComA.2)
                            (alloc.vec.Vec.deref
                              ⟨List.ofFn
                                (Ipp.Extracted.VerifyTippMipp.extractedRounds
                                  proof.rounds)⟩)
                            (alloc.vec.Vec.deref inverse)
                            (alloc.vec.Vec.deref raw) =
                          .ok folded := by
                    cases hfold :
                        effects.fold_gt_commitments roundFinalEffect
                          (proof.ComA.1, proof.ComB, proof.ipAb, proof.ComA.2)
                          (alloc.vec.Vec.deref
                            ⟨List.ofFn
                              (Ipp.Extracted.VerifyTippMipp.extractedRounds
                                proof.rounds)⟩)
                          (alloc.vec.Vec.deref inverse)
                          (alloc.vec.Vec.deref raw) with
                    | fail error => simp [hfold] at hprefix
                    | div => simp [hfold] at hprefix
                    | ok folded => exact ⟨folded, rfl⟩
                  obtain ⟨folded, hfold⟩ := hfoldSuccess
                  rw [hfold] at hprefix
                  simp only [Result.bind_ok] at hprefix
                  cases hbridge :
                      effects.derive_final_bridge roundFinalEffect lastRound
                        (proof.vFinal, proof.wFinal)
                        (proof.aFinal, proof.bFinal, proof.cFinal) with
                  | fail error =>
                      simp [hbridge] at hprefix
                  | div =>
                      simp [hbridge] at hprefix
                  | ok bridgeResult =>
                      rcases bridgeResult with ⟨bridgeResult, bridgeEffect⟩
                      cases bridgeResult with
                      | Err error =>
                          simp [hbridge,
                            core.result.Result.Insts.CoreOpsTry.branch,
                            core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual]
                            at hprefix
                      | Ok bridge =>
                          simp only [hbridge,
                            core.result.Result.Insts.CoreOpsTry.branch,
                            Result.bind_ok] at hprefix
                          cases hkzg :
                              effects.derive_kzg bridgeEffect bridge
                                (proof.vFinal, proof.wFinal) with
                          | fail error =>
                              simp [hkzg] at hprefix
                          | div =>
                              simp [hkzg] at hprefix
                          | ok kzgResult =>
                              rcases kzgResult with ⟨kzgResult, kzgEffect⟩
                              cases kzgResult with
                              | Err error =>
                                  simp [hkzg,
                                    core.result.Result.Insts.CoreOpsTry.branch,
                                    core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual]
                                    at hprefix
                              | Ok kzg =>
                                  simp only [hkzg,
                                    core.result.Result.Insts.CoreOpsTry.branch,
                                    Result.bind_ok] at hprefix
                                  cases hinverse :
                                      effects.invert_randomizer kzgEffect
                                        randomizer with
                                  | fail error =>
                                      simp [hinverse] at hprefix
                                  | div =>
                                      simp [hinverse] at hprefix
                                  | ok inverseResult =>
                                      cases inverseResult with
                                      | Err error =>
                                          simp [hinverse,
                                            core.result.Result.Insts.CoreOpsTry.branch,
                                            core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual]
                                            at hprefix
                                      | Ok randomizerInverse =>
                                          simp only [hinverse,
                                            core.result.Result.Insts.CoreOpsTry.branch,
                                            Result.bind_ok] at hprefix
                                          have heffect :
                                              kzgEffect = finalEffect := by
                                            exact congrArg
                                              (fun result =>
                                                match result with
                                                | .ok (_, effect) => effect
                                                | .fail _ => kzgEffect
                                                | .div => kzgEffect)
                                              hprefix
                                          subst kzgEffect
                                          exact ⟨{
                                            x0 := x0
                                            bridge := bridge
                                            kzg := kzg
                                            roundEffect := roundEffect
                                            roundFinalEffect :=
                                              roundFinalEffect
                                            bridgeEffect := bridgeEffect
                                            finalComZ := finalComZ
                                            lastRound := lastRound
                                            raw := raw
                                            inverse := inverse
                                            x0Call := hx0
                                            rounds := hrounds
                                            bridgeCall := hbridge
                                            kzgCall := hkzg
                                          }⟩

set_option maxHeartbeats 400000 in
set_option maxRecDepth 10000 in
private theorem prefix_success_of_execution_success
    {FX PE : Type}
    (effects : Effects FX)
    (pairingEffect :
      tipa.PairingEffect PE g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (input :
      applications.groth16_aggregation.TippMippCoreInput
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
          ArkPairingOutput g1PrimeSubgroup)
    (effect0 finalEffect : FX) (pairing : PE)
    (output :
      applications.groth16_aggregation.TippMippCoreOutput
        Fr ArkPairingOutput ArkPairingOutput g1PrimeSubgroup)
    (hexec :
      runExecution effects pairingEffect input effect0 pairing =
        .ok (.Ok output, finalEffect)) :
    ∃ challengePrefix,
      runPrefix effects input effect0 =
        .ok (.Ok challengePrefix, finalEffect) := by
  unfold runExecution
    applications.groth16_aggregation.verify_tipp_mipp_execution_core
    at hexec
  cases hprefix : runPrefix effects input effect0 with
  | fail error =>
      have hprefixModel := hprefix
      unfold runPrefix at hprefixModel
      rw [hprefixModel] at hexec
      simp at hexec
  | div =>
      have hprefixModel := hprefix
      unfold runPrefix at hprefixModel
      rw [hprefixModel] at hexec
      simp at hexec
  | ok prefixResult =>
      have hprefixModel := hprefix
      unfold runPrefix at hprefixModel
      rw [hprefixModel] at hexec
      rcases prefixResult with ⟨prefixResult, prefixEffect⟩
      cases prefixResult with
      | Err error =>
          simp [
            core.result.Result.Insts.CoreOpsTry.branch,
            core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual]
            at hexec
      | Ok challengePrefix =>
          refine ⟨challengePrefix, ?_⟩
          have heffect : prefixEffect = finalEffect := by
            simp only [
              core.result.Result.Insts.CoreOpsTry.branch,
              Result.bind_ok,
              Ipp.Extracted.VerifyTippMipp.modelClone,
              ark_ip_proofs.Array.make, ark_ip_proofs.Array.to_slice,
              ark_ip_proofs.Std.Array.to_slice,
              alloc.slice.Slice.into_vec, alloc.vec.Vec.deref,
              ark_ip_proofs.alloc.vec.Vec.index, lift] at hexec
            have hcarry :
                CarriesEffect prefixEffect
                  (.ok
                    ((core.result.Result.Ok output :
                      core.result.Result
                        (applications.groth16_aggregation.TippMippCoreOutput
                          Fr ArkPairingOutput ArkPairingOutput
                            g1PrimeSubgroup)
                        String),
                      finalEffect)) := by
              rw [← hexec]
              apply carriesEffect_bind
              rintro ⟨ckVValid, ckWValid⟩
              apply carriesEffect_bind
              intro ckVFinal
              apply carriesEffect_bind
              intro ckWFinal
              apply carriesEffect_bind
              intro aFinal
              apply carriesEffect_bind
              intro bFinal
              apply carriesEffect_bind
              intro baseResult
              cases baseResult with
              | Err error => simp [CarriesEffect]
              | Ok baseValid =>
                  cases baseValid with
                  | false => simp [CarriesEffect]
                  | true =>
                      dsimp only
                      apply carriesEffect_bind
                      intro cResult
                      cases cResult with
                      | Err error =>
                          simp only [
                            core.result.Result.Insts.CoreOpsTry.branch,
                            Result.bind_ok]
                          apply carriesEffect_bind
                          intro residualResult
                          simp [CarriesEffect]
                      | Ok cValid =>
                          simp only [
                            core.result.Result.Insts.CoreOpsTry.branch,
                            Result.bind_ok]
                          cases cValid with
                          | false => simp [CarriesEffect]
                          | true =>
                              apply carriesEffect_bind
                              intro finalScalar
                              apply carriesEffect_bind
                              intro zResult
                              cases zResult with
                              | Err error =>
                                  simp only [
                                    core.result.Result.Insts.CoreOpsTry.branch,
                                    Result.bind_ok]
                                  apply carriesEffect_bind
                                  intro residualResult
                                  simp [CarriesEffect]
                              | Ok zValid =>
                                  simp only [
                                    core.result.Result.Insts.CoreOpsTry.branch,
                                    Result.bind_ok]
                                  cases ckVValid <;> cases ckWValid <;>
                                    simp [CarriesEffect]
            simpa [CarriesEffect] using hcarry.symm
          simpa [heffect] using hprefix

private theorem execution_success_of_runTipp_success
    {FX PE : Type}
    (effects : Effects FX)
    (pairingEffect :
      tipa.PairingEffect PE g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (input :
      applications.groth16_aggregation.TippMippCoreInput
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
          ArkPairingOutput g1PrimeSubgroup)
    (effect0 finalEffect : FX) (pairing : PE)
    (haccept :
      Ipp.Extracted.CombinedChecks.runTipp effects pairingEffect input
          effect0 pairing =
        .ok (.Ok true, finalEffect)) :
    ∃ output,
      runExecution effects pairingEffect input effect0 pairing =
          .ok (.Ok output, finalEffect) ∧
        output.accepted = true := by
  rw [Ipp.Extracted.CombinedChecks.runTipp_eq_execution] at haccept
  rw [← runExecution_eq_combined] at haccept
  cases hexec :
      runExecution effects pairingEffect input effect0 pairing with
  | fail error =>
      simp [hexec] at haccept
  | div =>
      simp [hexec] at haccept
  | ok executionResult =>
      rcases executionResult with ⟨executionResult, nextEffect⟩
      cases executionResult with
      | Err error =>
          simp [hexec] at haccept
      | Ok output =>
          simp only [hexec, Result.bind_ok] at haccept
          have heffect : nextEffect = finalEffect := by
            exact congrArg
              (fun result =>
                match result with
                | .ok (_, effect) => effect
                | .fail _ => nextEffect
                | .div => nextEffect)
              haccept
          have haccepted : output.accepted = true := by
            exact congrArg
              (fun result =>
                match result with
                | .ok (.Ok accepted, _) => accepted
                | _ => false)
              haccept
          subst nextEffect
          exact ⟨output, rfl, haccepted⟩

/-- An accepted extracted TIPP/MIPP execution determines every state-threaded
challenge call made by its generated prefix. -/
theorem runTipp_success_has_effect_trace
    {FX PE : Type} {n : Nat}
    (primitive : Primitive FX)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizer : Fr)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup)
    (pairingEffect :
      tipa.PairingEffect PE g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (pairing : PE)
    (effect0 finalEffect : FX)
    (accepted :
      Ipp.Extracted.CombinedChecks.runTipp
          (Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
            (@Ipp.Extracted.TippMippAdapter.partialEq
              ArkPairingOutput (Classical.decEq _))
            (@Ipp.Extracted.TippMippAdapter.partialEq
              g1PrimeSubgroup (Classical.decEq _)))
          pairingEffect
          (Ipp.Extracted.VerifyTippMipp.coreInput
            stmt proof {
              randomizer := randomizer
              randomizerNonce := 0
              x0 := 0
              x0Nonce := 0
              roundPrev := fun _ => 0
              roundAnswer := fun _ => 0
              roundNonce := fun _ => 0
              bridge := 0
              bridgeNonce := 0
              kzg := 0
              kzgNonce := 0
            } g gBeta h hAlpha)
          effect0 pairing =
        .ok (.Ok true, finalEffect)) :
    Nonempty
      (AcceptedEffectChallengeTrace primitive proof randomizer
        effect0 finalEffect) := by
  let effects :=
    Ipp.Extracted.TippMippAdapter.effectOfPrimitive primitive
      (@Ipp.Extracted.TippMippAdapter.partialEq
        ArkPairingOutput (Classical.decEq _))
      (@Ipp.Extracted.TippMippAdapter.partialEq
        g1PrimeSubgroup (Classical.decEq _))
  let input := coreInput0 stmt proof randomizer g gBeta h hAlpha
  have accepted' :
      Ipp.Extracted.CombinedChecks.runTipp effects pairingEffect input
          effect0 pairing =
        .ok (.Ok true, finalEffect) := by
    simpa [effects, input, coreInput0, dummyTranscript] using accepted
  obtain ⟨output, hexec, _⟩ :=
    execution_success_of_runTipp_success effects pairingEffect input
      effect0 finalEffect pairing accepted'
  obtain ⟨challengePrefix, hprefix⟩ :=
    prefix_success_of_execution_success effects pairingEffect input
      effect0 finalEffect pairing output hexec
  obtain ⟨calls⟩ :=
    prefixCallWitness_of_success primitive stmt proof randomizer
      g gBeta h hAlpha effect0 finalEffect challengePrefix (by
        simpa [effects, input] using hprefix)
  exact calls.toEffectTrace

/-- Every accepted concrete Arkworks TIPP/MIPP call exposes its exact
state-threaded challenge calls.  Acceptance is the only premise consumed by
the projection field; no caller-supplied operational trace remains. -/
theorem acceptedRunCallProjection
    {FX PE : Type} {n : Nat}
    (primitive : Primitive FX)
    (serialization : Serialization primitive)
    (stmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (randomizer : Fr)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup)
    (pairingEffect :
      tipa.PairingEffect PE g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput)
    (pairing : PE)
    (effect0 finalEffect : FX) :
    AcceptedRunCallProjection primitive serialization stmt proof randomizer
      g gBeta h hAlpha pairingEffect pairing effect0 finalEffect := by
  apply
    acceptedRunCallProjection_of_effectCalls primitive serialization stmt
      proof randomizer g gBeta h hAlpha pairingEffect pairing effect0
      finalEffect
  intro accepted
  exact
    runTipp_success_has_effect_trace primitive stmt proof randomizer
      g gBeta h hAlpha pairingEffect pairing effect0 finalEffect accepted

#print axioms runTipp_success_has_effect_trace
#print axioms acceptedRunCallProjection

end

end Ipp.Extracted.TippMippAcceptedRunProjection
