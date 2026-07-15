import Ipp.Extracted.VerifyTippMippGenerated
import Ipp.FsGame

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

noncomputable section

namespace VerifyTippMipp

abbrev Commitment (GT ABT CT : Type) :=
  ark_ip_proofs.applications.groth16_aggregation.TippMippCoreCommitment GT ABT CT

abbrev Round (GT ABT CT : Type) :=
  Commitment GT ABT CT × Commitment GT ABT CT

abbrev RoundState (F GT ABT CT E FX : Type) :=
  core.ops.range.Range × FX × GT × GT × ABT × GT × CT × F × F ×
    alloc.vec.Vec F × alloc.vec.Vec F × Option E

abbrev RoundOutput (F GT ABT CT E FX : Type) :=
  FX × GT × GT × ABT × GT × CT × F ×
    alloc.vec.Vec F × alloc.vec.Vec F × Option E

private def finVec {T : Type} {n : Nat} (values : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

private def tracePrefix {T : Type} {n : Nat} (values : Fin n → T)
    (k : Nat) (hk : k ≤ n) : List T :=
  List.ofFn fun i : Fin k => values ⟨i, i.isLt.trans_le hk⟩

section GeneratedLoop

variable {F G1 G2 GT ABT CT E FX : Type}
variable (cloneF : core.clone.Clone F)
variable (cloneGT : core.clone.Clone GT) (defaultGT : core.default.Default GT)
variable (addGT : ark_ip_proofs.core.ops.arith.Add GT GT GT)
variable (mulGT : ark_ip_proofs.core.ops.arith.MulAssign GT F)
variable (cloneABT : core.clone.Clone ABT) (defaultABT : core.default.Default ABT)
variable (addABT : ark_ip_proofs.core.ops.arith.Add ABT ABT ABT)
variable (mulABT : ark_ip_proofs.core.ops.arith.MulAssign ABT F)
variable (cloneCT : core.clone.Clone CT) (defaultCT : core.default.Default CT)
variable (addCT : ark_ip_proofs.core.ops.arith.Add CT CT CT)
variable (mulCT : ark_ip_proofs.core.ops.arith.MulAssign CT F)
variable (effects :
  ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
    FX F G1 G2 GT ABT CT E)

def roundBody (rounds : alloc.vec.Vec (Round GT ABT CT)) (roundCount : Usize) :
    RoundState F GT ABT CT E FX →
      Result (ControlFlow (RoundState F GT ABT CT E FX)
        (RoundOutput F GT ABT CT E FX)) :=
  fun (iter, effect, comA, comB, comT, comC, comZ, prior, last, raw,
      inverse, roundError) =>
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop.body
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects rounds roundCount iter effect comA comB
      comT comC comZ prior last raw inverse roundError

private theorem reverseIndex {n k : Nat} (hk : k < n) :
    n - k - 1 = (Fin.rev ⟨k, hk⟩ : Fin n) := by
  simp [Fin.rev]
  omega

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

private theorem reverseRoundIndex {n : Nat} (rounds : Fin n → Round GT ABT CT)
    (k : Nat) (hk : k < n) :
    ark_ip_proofs.alloc.vec.Vec.index
        (ark_ip_proofs.core.slice.index.SliceIndexUsizeSlice (Round GT ABT CT))
        (finVec rounds) ⟨Nat.sub (Nat.sub n k) 1⟩ =
      .ok (rounds (Fin.rev ⟨k, hk⟩)) := by
  have hpos : 0 < Nat.sub n k := Nat.sub_pos_iff_lt.mpr hk
  have hi : Nat.sub (Nat.sub n k) 1 < n :=
    (Nat.sub_lt hpos (by omega)).trans_le (Nat.sub_le n k)
  unfold ark_ip_proofs.alloc.vec.Vec.index finVec
  rw [List.getElem?_ofFn, dif_pos hi]
  congr 2

/-- Once the single-exit error state is set, a valid later round advances only
    the iterator; effects, folds, challenges, transcripts, and the error agree. -/
theorem roundError_step {n : Nat} (rounds : Fin n → Round GT ABT CT)
    (k : Nat) (hk : k < n) (effect : FX) (comA comB comC : GT)
    (comT : ABT) (comZ : CT) (prior last : F) (raw inverse : alloc.vec.Vec F)
    (error : E) :
    roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
        mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩
        ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comA, comB, comT,
          comC, comZ, prior, last, raw, inverse, some error) =
      .ok (.cont
        ({ start := ⟨k + 1⟩, «end» := ⟨n⟩ }, effect, comA, comB, comT,
          comC, comZ, prior, last, raw, inverse, some error)) := by
  simp only [roundBody,
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop.body,
    core.iter.range.IteratorRange.next, hk, ↓reduceIte, Result.bind_ok]
  rw [usizeSub n k hk.le]
  simp only [Result.bind_ok]
  have hone : 1 ≤ Nat.sub n k := Nat.sub_pos_iff_lt.mpr hk
  rw [usizeSubOne (Nat.sub n k) hone]
  simp only [Result.bind_ok]
  rw [reverseRoundIndex rounds k hk]
  simp only [Result.bind_ok]
  rfl

/-- A challenge-derivation error enters the terminal round-error state without
    changing folds, challenges, or transcripts. -/
theorem deriveFailure_step {n : Nat} (rounds : Fin n → Round GT ABT CT)
    (k : Nat) (hk : k < n) (effect effect' : FX) (comA comB comC : GT)
    (comT : ABT) (comZ : CT) (prior last : F) (raw inverse : alloc.vec.Vec F)
    (error : E)
    (hderive : effects.derive_round effect prior (rounds (Fin.rev ⟨k, hk⟩)).1
        (rounds (Fin.rev ⟨k, hk⟩)).2 =
      .ok (.Err error, effect')) :
    roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
        mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩
        ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comA, comB, comT,
          comC, comZ, prior, last, raw, inverse, none) =
      .ok (.cont
        ({ start := ⟨k + 1⟩, «end» := ⟨n⟩ }, effect', comA, comB, comT,
          comC, comZ, prior, last, raw, inverse, some error)) := by
  simp only [roundBody,
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop.body,
    core.iter.range.IteratorRange.next, hk, ↓reduceIte, Result.bind_ok]
  rw [usizeSub n k hk.le]
  simp only [Result.bind_ok]
  have hone : 1 ≤ Nat.sub n k := Nat.sub_pos_iff_lt.mpr hk
  rw [usizeSubOne (Nat.sub n k) hone]
  simp only [Result.bind_ok]
  rw [reverseRoundIndex rounds k hk]
  simp only [Result.bind_ok]
  rw [hderive]
  rfl

/-- An inversion error enters the same terminal state after retaining the
    effect returned by challenge derivation. -/
theorem inversionFailure_step {n : Nat} (rounds : Fin n → Round GT ABT CT)
    (k : Nat) (hk : k < n) (effect effect' : FX) (comA comB comC : GT)
    (comT : ABT) (comZ : CT) (prior last rawChallenge : F)
    (raw inverse : alloc.vec.Vec F) (error : E)
    (hderive : effects.derive_round effect prior (rounds (Fin.rev ⟨k, hk⟩)).1
        (rounds (Fin.rev ⟨k, hk⟩)).2 =
      .ok (.Ok rawChallenge, effect'))
    (hinvert : effects.invert_round effect' rawChallenge = .ok (.Err error)) :
    roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
        mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩
        ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comA, comB, comT,
          comC, comZ, prior, last, raw, inverse, none) =
      .ok (.cont
        ({ start := ⟨k + 1⟩, «end» := ⟨n⟩ }, effect', comA, comB, comT,
          comC, comZ, prior, last, raw, inverse, some error)) := by
  simp only [roundBody,
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop.body,
    core.iter.range.IteratorRange.next, hk, ↓reduceIte, Result.bind_ok]
  rw [usizeSub n k hk.le]
  simp only [Result.bind_ok]
  have hone : 1 ≤ Nat.sub n k := Nat.sub_pos_iff_lt.mpr hk
  rw [usizeSubOne (Nat.sub n k) hone]
  simp only [Result.bind_ok]
  rw [reverseRoundIndex rounds k hk]
  simp only [Result.bind_ok]
  rw [hderive]
  simp only [ark_ip_proofs.core.option.Option.is_none, if_true, Result.bind_ok]
  rw [hinvert]
  rfl

private theorem roundErrorFuel {n : Nat} (rounds : Fin n → Round GT ABT CT)
    (start count : Nat) (hend : start + count = n)
    (effect : FX) (comA comB comC : GT) (comT : ABT) (comZ : CT)
    (prior last : F) (raw inverse : alloc.vec.Vec F) (error : E) :
    loopFuel
      (roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
        mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩)
      (count + 1)
      ({ start := ⟨start⟩, «end» := ⟨n⟩ }, effect, comA, comB, comT,
        comC, comZ, prior, last, raw, inverse, some error) =
      .ok (effect, comA, comB, comT, comC, comZ, last, raw, inverse, some error) := by
  induction count generalizing start with
  | zero =>
      have hsn : start = n := by omega
      subst start
      simp [loopFuel, roundBody,
        ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop.body,
        core.iter.range.IteratorRange.next]
  | succ remaining ih =>
      have hlt : start < n := by omega
      rw [loopFuel, roundError_step cloneF cloneGT defaultGT addGT mulGT cloneABT
        defaultABT addABT mulABT cloneCT defaultCT addCT mulCT effects rounds start hlt]
      exact ih (start + 1) (by omega)

/-- The extracted finite loop preserves the first stored round error through
    every remaining iteration and returns it unchanged. -/
theorem roundError_terminal {n k : Nat} (rounds : Fin n → Round GT ABT CT)
    (hk : k ≤ n) (effect : FX) (comA comB comC : GT) (comT : ABT) (comZ : CT)
    (prior last : F) (raw inverse : alloc.vec.Vec F) (error : E) :
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects
      { start := ⟨k⟩, «end» := ⟨n⟩ } (finVec rounds) effect comA comB comT
      comC comZ prior last raw inverse (some error) ⟨n⟩ =
      .ok (effect, comA, comB, comT, comC, comZ, last, raw, inverse, some error) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop
  apply loop_eq_of_fuel (fuel := n - k + 1) (by simp)
  exact roundErrorFuel cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT
    addABT mulABT cloneCT defaultCT addCT mulCT effects rounds k (n - k) (by omega)
    effect comA comB
    comC comT comZ prior last raw inverse error

/-- If round `k` is the first challenge-derivation failure, that error is the
    extracted loop's final error and every later round is observationally inert. -/
theorem deriveFailure_terminal {n : Nat} (rounds : Fin n → Round GT ABT CT)
    (k : Nat) (hk : k < n) (effect effect' : FX) (comA comB comC : GT)
    (comT : ABT) (comZ : CT) (prior last : F) (raw inverse : alloc.vec.Vec F)
    (error : E)
    (hderive : effects.derive_round effect prior (rounds (Fin.rev ⟨k, hk⟩)).1
        (rounds (Fin.rev ⟨k, hk⟩)).2 = .ok (.Err error, effect')) :
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects
      { start := ⟨k⟩, «end» := ⟨n⟩ } (finVec rounds) effect comA comB comT
      comC comZ prior last raw inverse none ⟨n⟩ =
      .ok (effect', comA, comB, comT, comC, comZ, last, raw, inverse,
        some error) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop
  apply loop_eq_of_fuel (fuel := n - k + 1) (by simp)
  change loopFuel
      (roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
        mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩)
      (n - k + 1)
      ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comA, comB, comT, comC, comZ,
        prior, last, raw, inverse, none) = _
  rw [show n - k + 1 = (n - (k + 1) + 1) + 1 by omega, loopFuel,
    deriveFailure_step cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT
      addABT mulABT cloneCT defaultCT addCT mulCT effects rounds k hk effect
      effect' comA comB comC comT comZ prior last raw inverse error hderive]
  exact roundErrorFuel cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT
    addABT mulABT cloneCT defaultCT addCT mulCT effects rounds (k + 1)
    (n - (k + 1)) (by omega) effect' comA comB comC comT comZ prior last raw
    inverse error

/-- If round `k` is the first inversion failure, the derivation's updated
    effect and that error are final; all later rounds are no-ops. -/
theorem inversionFailure_terminal {n : Nat} (rounds : Fin n → Round GT ABT CT)
    (k : Nat) (hk : k < n) (effect effect' : FX) (comA comB comC : GT)
    (comT : ABT) (comZ : CT) (prior last rawChallenge : F)
    (raw inverse : alloc.vec.Vec F) (error : E)
    (hderive : effects.derive_round effect prior (rounds (Fin.rev ⟨k, hk⟩)).1
        (rounds (Fin.rev ⟨k, hk⟩)).2 = .ok (.Ok rawChallenge, effect'))
    (hinvert : effects.invert_round effect' rawChallenge = .ok (.Err error)) :
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects
      { start := ⟨k⟩, «end» := ⟨n⟩ } (finVec rounds) effect comA comB comT
      comC comZ prior last raw inverse none ⟨n⟩ =
      .ok (effect', comA, comB, comT, comC, comZ, last, raw, inverse,
        some error) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop
  apply loop_eq_of_fuel (fuel := n - k + 1) (by simp)
  change loopFuel
      (roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
        mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩)
      (n - k + 1)
      ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect, comA, comB, comT, comC, comZ,
        prior, last, raw, inverse, none) = _
  rw [show n - k + 1 = (n - (k + 1) + 1) + 1 by omega, loopFuel,
    inversionFailure_step cloneF cloneGT defaultGT addGT mulGT cloneABT
      defaultABT addABT mulABT cloneCT defaultCT addCT mulCT effects rounds k hk
      effect effect' comA comB comC comT comZ prior last rawChallenge raw inverse
      error hderive hinvert]
  exact roundErrorFuel cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT
    addABT mulABT cloneCT defaultCT addCT mulCT effects rounds (k + 1)
    (n - (k + 1)) (by omega) effect' comA comB comC comT comZ prior last raw
    inverse error

/-- Reusable successful-loop interface. S2-32 supplies the five accumulator
    functions and proves one generated-body step for each reversed proof round. -/
structure SuccessInvariant (n : Nat) (rounds : Fin n → Round GT ABT CT) where
  effect : Nat → FX
  comA : Nat → GT
  comB : Nat → GT
  comT : Nat → ABT
  comC : Nat → GT
  comZ : Nat → CT
  prior : Nat → F
  last : Nat → F
  raw : Fin n → F
  inverse : Fin n → F
  step : ∀ k (hk : k < n),
    roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
        mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩
        ({ start := ⟨k⟩, «end» := ⟨n⟩ }, effect k, comA k, comB k, comT k,
          comC k, comZ k, prior k, last k, ⟨tracePrefix raw k hk.le⟩,
          ⟨tracePrefix inverse k hk.le⟩, none) =
      .ok (.cont
        ({ start := ⟨k + 1⟩, «end» := ⟨n⟩ }, effect (k + 1), comA (k + 1),
          comB (k + 1), comT (k + 1), comC (k + 1), comZ (k + 1),
          prior (k + 1), last (k + 1), ⟨tracePrefix raw (k + 1) (by omega)⟩,
          ⟨tracePrefix inverse (k + 1) (by omega)⟩, none))

private theorem successFuel {n : Nat} {rounds : Fin n → Round GT ABT CT}
    (inv : SuccessInvariant cloneF cloneGT defaultGT addGT mulGT cloneABT
      defaultABT addABT mulABT cloneCT defaultCT addCT mulCT effects n rounds) :
    loopFuel
      (roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
        mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩)
      (n + 1)
      ({ start := ⟨0⟩, «end» := ⟨n⟩ }, inv.effect 0, inv.comA 0, inv.comB 0,
        inv.comT 0, inv.comC 0, inv.comZ 0, inv.prior 0, inv.last 0,
        ⟨tracePrefix inv.raw 0 (Nat.zero_le n)⟩,
        ⟨tracePrefix inv.inverse 0 (Nat.zero_le n)⟩, none) =
      .ok (inv.effect n, inv.comA n, inv.comB n, inv.comT n, inv.comC n,
        inv.comZ n, inv.last n, finVec inv.raw, finVec inv.inverse, none) := by
  suffices h : ∀ start count (hend : start + count = n),
      loopFuel
        (roundBody cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT
          mulABT cloneCT defaultCT addCT mulCT effects (finVec rounds) ⟨n⟩)
        (count + 1)
        ({ start := ⟨start⟩, «end» := ⟨n⟩ }, inv.effect start,
          inv.comA start, inv.comB start, inv.comT start, inv.comC start,
          inv.comZ start, inv.prior start, inv.last start,
          ⟨tracePrefix inv.raw start (by omega)⟩,
          ⟨tracePrefix inv.inverse start (by omega)⟩, none) =
        .ok (inv.effect n, inv.comA n, inv.comB n, inv.comT n, inv.comC n,
          inv.comZ n, inv.last n, finVec inv.raw, finVec inv.inverse, none) by
    simpa using h 0 n (by omega)
  intro start count hend
  induction count generalizing start with
  | zero =>
      have hsn : start = n := by omega
      subst start
      simp [loopFuel, roundBody,
        ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop.body,
        core.iter.range.IteratorRange.next, tracePrefix, finVec]
  | succ remaining ih =>
      have hlt : start < n := by omega
      rw [loopFuel, inv.step start hlt]
      exact ih (start + 1) (by omega)

/-- An arbitrary successful execution emits raw and inverse challenges in
    derivation chronology while traversing proof rounds by `Fin.rev`. -/
theorem success_transcripts {n : Nat} {rounds : Fin n → Round GT ABT CT}
    (inv : SuccessInvariant cloneF cloneGT defaultGT addGT mulGT cloneABT
      defaultABT addABT mulABT cloneCT defaultCT addCT mulCT effects n rounds) :
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects { start := ⟨0⟩, «end» := ⟨n⟩ }
      (finVec rounds) (inv.effect 0) (inv.comA 0) (inv.comB 0) (inv.comT 0)
      (inv.comC 0) (inv.comZ 0) (inv.prior 0) (inv.last 0) ⟨[]⟩ ⟨[]⟩ none ⟨n⟩ =
      .ok (inv.effect n, inv.comA n, inv.comB n, inv.comT n, inv.comC n,
        inv.comZ n, inv.last n, finVec inv.raw, finVec inv.inverse, none) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core_loop
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  simpa [tracePrefix] using successFuel cloneF cloneGT defaultGT addGT mulGT cloneABT
    defaultABT addABT mulABT cloneCT defaultCT addCT mulCT effects inv

/-- Reversing a successful chronological transcript is exactly the model's
    `reversedView`, for every round count. -/
theorem reverse_chronological_eq_reversedView {n : Nat} (raw : Fin n → F) :
    (List.ofFn raw).reverse = List.ofFn (Ipp.reversedView raw) := by
  apply List.ext_getElem
  · simp
  · intro k hleft hright
    simp [Ipp.reversedView, List.getElem_reverse]
    congr 1
    apply Fin.ext
    simp [Fin.rev]
    omega

end GeneratedLoop
end VerifyTippMipp
end
end Ipp.Extracted
