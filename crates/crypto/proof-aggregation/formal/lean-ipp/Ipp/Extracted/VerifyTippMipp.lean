import Ipp.Extracted.CombinedChecksGenerated
import Ipp.Extracted.KzgVerifiers
import Ipp.Extracted.BaseCommitment
import Ipp.Extracted.StructuredScalar
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

private theorem tracePrefix_succ {T : Type} {n k : Nat} (values : Fin n → T)
    (hk : k < n) :
    tracePrefix values k hk.le ++ [values ⟨k, hk⟩] =
      tracePrefix values (k + 1) (by omega) := by
  unfold tracePrefix
  rw [List.ofFn_succ_last]
  rfl

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
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body
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
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
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
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
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
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
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
        ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
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
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects
      { start := ⟨k⟩, «end» := ⟨n⟩ } (finVec rounds) effect comA comB comT
      comC comZ prior last raw inverse (some error) ⟨n⟩ =
      .ok (effect, comA, comB, comT, comC, comZ, last, raw, inverse, some error) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
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
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects
      { start := ⟨k⟩, «end» := ⟨n⟩ } (finVec rounds) effect comA comB comT
      comC comZ prior last raw inverse none ⟨n⟩ =
      .ok (effect', comA, comB, comT, comC, comZ, last, raw, inverse,
        some error) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
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
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects
      { start := ⟨k⟩, «end» := ⟨n⟩ } (finVec rounds) effect comA comB comT
      comC comZ prior last raw inverse none ⟨n⟩ =
      .ok (effect', comA, comB, comT, comC, comZ, last, raw, inverse,
        some error) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
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
        ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
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
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
      cloneF cloneGT defaultGT addGT mulGT cloneABT defaultABT addABT mulABT
      cloneCT defaultCT addCT mulCT effects { start := ⟨0⟩, «end» := ⟨n⟩ }
      (finVec rounds) (inv.effect 0) (inv.comA 0) (inv.comB 0) (inv.comT 0)
      (inv.comC 0) (inv.comZ 0) (inv.prior 0) (inv.last 0) ⟨[]⟩ ⟨[]⟩ none ⟨n⟩ =
      .ok (inv.effect n, inv.comA n, inv.comB n, inv.comT n, inv.comC n,
        inv.comZ n, inv.last n, finVec inv.raw, finVec inv.inverse, none) := by
  unfold ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
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

section TerminalFolds

variable [Field F]
variable [AddCommGroup G1] [Module F G1]
variable [AddCommGroup GT] [Module F GT]

def modelClone (T : Type) : core.clone.Clone T where
  clone x := .ok x

def modelDefault (T : Type) [Zero T] : core.default.Default T where
  default := .ok 0

def modelAdd (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add x y := .ok (x + y)

def modelSmulAssign (M : Type) [SMul F M] :
    ark_ip_proofs.core.ops.arith.MulAssign M F where
  mul_assign x c := .ok (c • x)

def modelOne (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := { mul := fun x y => .ok (x * y) }
  one := .ok 1

def modelMul (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul x y := .ok (x * y)

def modelSmul (M : Type) [SMul F M] :
    ark_ip_proofs.core.ops.arith.Mul M F M where
  mul x c := .ok (c • x)

def modelSub (T : Type) [Sub T] :
    ark_ip_proofs.core.ops.arith.Sub T T T where
  sub x y := .ok (x - y)

def modelNeg (T : Type) [Neg T] :
    ark_ip_proofs.core.ops.arith.Neg T T where
  neg x := .ok (-x)

abbrev modelZero (T : Type) [Zero T] [Add T] [DecidableEq T] :=
  Ipp.Extracted.zeroModel T

abbrev modelPairing {G2 PE : Type} [AddCommGroup G2] [Module F G2]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (outcome : PE → Option Unit) :=
  Ipp.Extracted.pairingModel e outcome

/-- The landed fold-output equation, specialized to the verifier extraction's
    copy of `fold_output`. -/
private theorem foldOutput_eq_foldCom {M : Type} [AddCommGroup M] [Module F M]
    (left current right : M) (c : F)
    (_hc : c ≠ 0) :
    ark_ip_proofs.gipa.fold_output
        (modelClone M) (modelDefault M) (modelAdd M) (modelSmulAssign M)
        (modelClone F) left current right c c⁻¹ =
      .ok (Ipp.foldCom c left current right) := by
  rfl

/-- Extracted commitments store model rounds in the opposite order consumed by
    the verifier loop. -/
def extractedRounds {n : Nat} (rounds : Fin n → Ipp.RoundComs G1 GT) :
    Fin n → Round GT GT G1 := fun i =>
  let round := rounds (Fin.rev i)
  ({ ab := (round.LA.1, round.LB, round.LT.1)
     c := (round.LA.2, round.LT.2) },
   { ab := (round.RA.1, round.RB, round.RT.1)
     c := (round.RA.2, round.RT.2) })

/-- The extracted proof vector is exactly the chronological model-round
vector. This public equation lets downstream trace proofs normalize the
private vector constructor without duplicating it. -/
theorem extractedRounds_finVec_eq {n : Nat}
    (rounds : Fin n → Ipp.RoundComs G1 GT) :
    finVec (extractedRounds rounds) =
      ⟨List.ofFn (extractedRounds rounds)⟩ := by
  rfl

/-- One fold state shared by all five accumulator lanes. -/
def foldState {n : Nat} (raw : Fin n → F)
    (rounds : Fin n → Ipp.RoundComs G1 GT) (initial : Ipp.FoldedValues G1 GT) :
    Nat → Ipp.FoldedValues G1 GT
  | 0 => initial
  | k + 1 => if hk : k < n then
      Ipp.foldOne (raw ⟨k, hk⟩) (rounds ⟨k, hk⟩)
        (foldState raw rounds initial k)
    else foldState raw rounds initial k

private theorem foldState_eq_prefix {n k : Nat} (raw : Fin n → F)
    (rounds : Fin n → Ipp.RoundComs G1 GT) (initial : Ipp.FoldedValues G1 GT)
    (hk : k ≤ n) :
    foldState raw rounds initial k =
      Ipp.foldRounds k
        (fun i => raw ⟨i, i.isLt.trans_le hk⟩)
        (fun i => rounds ⟨i, i.isLt.trans_le hk⟩) initial := by
  induction k with
  | zero => rfl
  | succ k ih =>
      have hkn : k < n := by omega
      rw [foldState, dif_pos hkn, Ipp.foldRounds_succ_last]
      rw [ih hkn.le]
      rfl

/-- The shared five-lane state reaches the model terminal fold. -/
theorem foldState_terminal {n : Nat} (raw : Fin n → F)
    (rounds : Fin n → Ipp.RoundComs G1 GT) (initial : Ipp.FoldedValues G1 GT) :
    foldState raw rounds initial n = Ipp.foldRounds n raw rounds initial := by
  simpa using foldState_eq_prefix raw rounds initial (le_refl n)

private theorem foldState_succ_comT_snd {n k : Nat} (raw : Fin n → F)
    (rounds : Fin n → Ipp.RoundComs G1 GT) (initial : Ipp.FoldedValues G1 GT)
    (hk : k < n) :
    (foldState raw rounds initial (k + 1)).comT.2 =
      Ipp.foldCom (raw ⟨k, hk⟩)⁻¹ (rounds ⟨k, hk⟩).LT.2
        (foldState raw rounds initial k).comT.2 (rounds ⟨k, hk⟩).RT.2 := by
  rw [foldState, dif_pos hk]
  rfl

private theorem foldState_succ_comA_snd {n k : Nat} (raw : Fin n → F)
    (rounds : Fin n → Ipp.RoundComs G1 GT) (initial : Ipp.FoldedValues G1 GT)
    (hk : k < n) :
    (foldState raw rounds initial (k + 1)).comA.2 =
      Ipp.foldCom (raw ⟨k, hk⟩)⁻¹ (rounds ⟨k, hk⟩).LA.2
        (foldState raw rounds initial k).comA.2 (rounds ⟨k, hk⟩).RA.2 := by
  rw [foldState, dif_pos hk]
  rfl

def priorAt {n : Nat} (raw : Fin n → F) (initial : F) : Nat → F
  | 0 => initial
  | k + 1 => if hk : k < n then raw ⟨k, hk⟩ else initial

/-- Successful extracted folding returns exactly the five lane-native fields of
    `Ipp.terminalFold`. The raw transcript feeds the model; its inverses are the
    left fold coefficients used by the extracted verifier. -/
theorem success_terminal_folds {n : Nat} {G2 E FX : Type}
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (proof : Ipp.Proof n F G1 G2 GT) (ComA : GT × GT) (ComB : GT)
    (effect : Nat → FX) (initialPrior initialLast : F)
    (raw inverse : Fin n → F)
    (hderive : ∀ k (hk : k < n),
      effects.derive_round (effect k) (priorAt raw initialPrior k)
          (extractedRounds proof.rounds (Fin.rev ⟨k, hk⟩)).1
          (extractedRounds proof.rounds (Fin.rev ⟨k, hk⟩)).2 =
        .ok (.Ok (raw ⟨k, hk⟩), effect (k + 1)))
    (hinvert : ∀ k (hk : k < n),
      effects.invert_round (effect (k + 1)) (raw ⟨k, hk⟩) =
        .ok (.Ok (inverse ⟨k, hk⟩)))
    (hinverse : ∀ i, inverse i = (raw i)⁻¹)
    (hnonzero : ∀ i, raw i ≠ 0) :
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop
      (modelClone F) (modelClone GT) (modelDefault GT) (modelAdd GT)
      (modelSmulAssign GT) (modelClone GT) (modelDefault GT) (modelAdd GT)
      (modelSmulAssign GT) (modelClone G1) (modelDefault G1) (modelAdd G1)
      (modelSmulAssign G1) effects { start := ⟨0⟩, «end» := ⟨n⟩ }
      (finVec (extractedRounds proof.rounds)) (effect 0) ComA.1 ComB proof.ipAb
      ComA.2 proof.aggC initialPrior initialLast ⟨[]⟩ ⟨[]⟩ none ⟨n⟩ =
      let terminal := Ipp.terminalFold ComA ComB proof raw
      .ok (effect n, terminal.comA.1, terminal.comB, terminal.comT.1,
        terminal.comA.2, terminal.comT.2, priorAt raw initialLast n,
        finVec raw, finVec inverse, none) := by
  let initial : Ipp.FoldedValues G1 GT :=
    { comA := ComA, comB := ComB, comT := (proof.ipAb, proof.aggC) }
  let folded := foldState raw proof.rounds initial
  let inv : SuccessInvariant (modelClone F) (modelClone GT) (modelDefault GT)
      (modelAdd GT) (modelSmulAssign GT) (modelClone GT) (modelDefault GT)
      (modelAdd GT) (modelSmulAssign GT) (modelClone G1) (modelDefault G1)
      (modelAdd G1) (modelSmulAssign G1) effects n
      (extractedRounds proof.rounds) :=
    { effect := effect
      comA := fun k => (folded k).comA.1
      comB := fun k => (folded k).comB
      comT := fun k => (folded k).comT.1
      comC := fun k => (folded k).comA.2
      comZ := fun k => (folded k).comT.2
      prior := priorAt raw initialPrior
      last := priorAt raw initialLast
      raw := raw
      inverse := inverse
      step := by
        intro k hk
        simp only [roundBody,
          ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core_loop.body,
          core.iter.range.IteratorRange.next, hk, ↓reduceIte, Result.bind_ok]
        rw [usizeSub n k hk.le]
        simp only [Result.bind_ok]
        have hone : 1 ≤ Nat.sub n k := Nat.sub_pos_iff_lt.mpr hk
        rw [usizeSubOne (Nat.sub n k) hone]
        simp only [Result.bind_ok]
        rw [reverseRoundIndex (extractedRounds proof.rounds) k hk]
        simp only [Result.bind_ok]
        rw [hderive k hk]
        simp only [ark_ip_proofs.core.option.Option.is_none, if_true, Result.bind_ok]
        rw [hinvert k hk]
        simp only [Result.bind_ok]
        have hi : inverse ⟨k, hk⟩ ≠ 0 := by
          rw [hinverse]
          exact inv_ne_zero (hnonzero ⟨k, hk⟩)
        have hraw : raw ⟨k, hk⟩ = (inverse ⟨k, hk⟩)⁻¹ := by
          rw [hinverse, inv_inv]
        rw [hraw]
        rw [foldOutput_eq_foldCom _ _ _ _ hi,
          foldOutput_eq_foldCom _ _ _ _ hi,
          foldOutput_eq_foldCom _ _ _ _ hi,
          foldOutput_eq_foldCom _ _ _ _ hi,
          foldOutput_eq_foldCom _ _ _ _ hi]
        simp only [Result.bind_ok, modelClone, alloc.vec.Vec.push]
        simp only [Result.ok.injEq, ControlFlow.cont.injEq, Prod.mk.injEq]
        dsimp only [folded]
        constructor
        · rfl
        constructor
        · simp
        constructor
        · simp [foldState, hk, Ipp.foldOne, Ipp.foldCom,
            Ipp.gipaChallenge, extractedRounds, hinverse]
        constructor
        · simp [foldState, hk, Ipp.foldOne, Ipp.foldCom,
            Ipp.gipaChallenge, extractedRounds, hinverse]
        constructor
        · simp [foldState, hk, Ipp.foldOne, Ipp.foldCom,
            Ipp.gipaChallenge, extractedRounds, hinverse]
        constructor
        · rw [foldState_succ_comA_snd raw proof.rounds initial hk]
          simp [extractedRounds, hinverse]
        constructor
        · rw [foldState_succ_comT_snd raw proof.rounds initial hk]
          simp [extractedRounds, hinverse]
        constructor
        · simpa [priorAt, hk] using hraw.symm
        constructor
        · simpa [priorAt, hk] using hraw.symm
        constructor
        · simpa [hraw] using tracePrefix_succ raw hk
        · constructor
          · congr 1
            exact tracePrefix_succ inverse hk
          · trivial }
  have hloop := success_transcripts (inv := inv)
  simp only [inv, folded, foldState, initial, priorAt] at hloop
  rw [hloop]
  rw [foldState_terminal]
  rfl

/-- Model input for the complete extracted leaf verifier. -/
def coreInput {G2 : Type} [AddCommGroup G2] [Module F G2] {n : Nat}
    (stmt : Ipp.FsStatement n F G1 G2 GT)
    (proof : Ipp.Proof n F G1 G2 GT) (transcript : Ipp.FsTranscript n F)
    (g gBeta : G1) (h hAlpha : G2) :
    ark_ip_proofs.applications.groth16_aggregation.TippMippCoreInput
      F G1 G2 GT GT G1 :=
  { com_a := proof.ComA.1
    com_b := proof.ComB
    com_t := proof.ipAb
    com_c := proof.ComA.2
    com_z := proof.aggC
    ip_ab := proof.ipAb
    agg_c := proof.aggC
    proof :=
      { gipa_proof := finVec (extractedRounds proof.rounds)
        final_ck := (proof.vFinal, proof.wFinal)
        final_ck_proofs := (proof.vOpening, proof.wOpening)
        final_messages := (proof.aFinal, proof.bFinal, proof.cFinal) }
    verifier_g := g
    verifier_g_beta := gBeta
    verifier_h := h
    verifier_h_alpha := hAlpha
    r := transcript.randomizer
    kzg_g2_r_shift := 1 }

/-- The exact algebraic wrapper used by the TIPP/MIPP refinement. Keeping this
    wrapper named lets production adapters prove a shallow equality to it
    without normalizing the extracted verifier body. -/
noncomputable def runTippModel {G2 E FX PE : Type}
    [AddCommGroup G2] [Module F G2]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (pairingEffect : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.TippMippCoreInput
      F G1 G2 GT GT G1)
    (effect : FX) (pairing : PE) := by
  letI : DecidableEq GT := Classical.decEq _
  exact
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core
      (modelClone F) (modelOne F) (modelAdd F) (modelMul F)
      (modelClone G1) (modelSmul G1) (modelSub G1) (modelNeg G1)
      (modelClone G2) (modelSmul G2) (modelSub G2)
      (modelClone GT) (modelDefault GT) (modelAdd GT) (modelSmulAssign GT)
      (modelZero GT) (modelClone GT) (modelDefault GT) (modelAdd GT)
      (modelSmulAssign GT) (modelClone G1) (modelDefault G1) (modelAdd G1)
      (modelSmulAssign G1) effects pairingEffect input effect pairing

private theorem exists_success_effect_iff
    {E FX : Type} (valid : Bool) (effect : FX) :
    (∃ finalEffect,
      (.ok (.Ok valid, effect) :
        Result (ark_ip_proofs.core.result.Result Bool E × FX)) =
        .ok (.Ok true, finalEffect)) ↔
      valid = true := by
  cases valid
  · constructor
    · rintro ⟨finalEffect, h⟩
      cases h
    · intro h
      cases h
  · constructor
    · intro _
      rfl
    · intro _
      exact ⟨effect, rfl⟩

private theorem exists_success_effect_ite_iff
    {E FX : Type} (condition : Prop) [Decidable condition] (effect : FX) :
    (∃ finalEffect,
      (if condition then
          (.ok (.Ok true, effect) :
            Result (ark_ip_proofs.core.result.Result Bool E × FX))
        else .ok (.Ok false, effect)) =
        .ok (.Ok true, finalEffect)) ↔
      condition := by
  by_cases h : condition <;>
    simp [h, exists_success_effect_iff]

private theorem exists_success_effect_and_ite_iff
    {E FX : Type} (left right : Prop) [Decidable left] [Decidable right]
    (effect : FX) :
    (∃ finalEffect,
      (if left then
          if right then
            (.ok (.Ok true, effect) :
              Result (ark_ip_proofs.core.result.Result Bool E × FX))
          else .ok (.Ok false, effect)
        else .ok (.Ok false, effect)) =
        .ok (.Ok true, finalEffect)) ↔
      left ∧ right := by
  by_cases hl : left <;> by_cases hr : right <;>
    simp [hl, hr]

/-- Aeneas result sequencing distributes over a pure branch condition. -/
private theorem result_bind_ite {α β : Type} (condition : Prop)
    [Decidable condition] (yes no : Result α) (next : α → Result β) :
    ((if condition then yes else no) >>= next) =
      if condition then yes >>= next else no >>= next := by
  by_cases h : condition <;> simp [h]

/-- Acceptance bit produced after all seven leaf checks have returned. -/
private def acceptedModel (left right target c z ckV ckW : Bool) : Bool :=
  if left then
    if right then
      if target then
        if c then
          if ckV then
            if ckW then z else false
          else false
        else false
      else false
    else false
  else false

private theorem acceptedModel_eq_true_iff
    (left right target c z ckV ckW : Bool) :
    acceptedModel left right target c z ckV ckW = true ↔
      left = true ∧ right = true ∧ target = true ∧ c = true ∧ z = true ∧
        ckV = true ∧ ckW = true := by
  cases left <;> cases right <;> cases target <;> cases c <;> cases z <;>
    cases ckV <;> cases ckW <;> simp [acceptedModel]

/-- The result-valued tail emitted after the three base-commitment checks. -/
private def acceptedTailResult {E FX : Type}
    (c z ckV ckW : Bool) (effect : FX) :
    Result (ark_ip_proofs.core.result.Result Bool E × FX) :=
  if c = true then
    if ckV = true then
      if ckW = true then .ok (.Ok z, effect)
      else .ok (.Ok false, effect)
    else .ok (.Ok false, effect)
  else .ok (.Ok false, effect)

/-- The exact result tree extracted from the short-circuiting leaf checks. -/
private def extractedAcceptedResult {E FX : Type}
    (left right target c z ckV ckW : Bool) (effect : FX) :
    Result (ark_ip_proofs.core.result.Result Bool E × FX) :=
  if left = true then
    if right = true then
      if target = true then acceptedTailResult c z ckV ckW effect
      else .ok (.Ok false, effect)
    else
      if right = true then acceptedTailResult c z ckV ckW effect
      else .ok (.Ok false, effect)
  else
    if left = true then acceptedTailResult c z ckV ckW effect
    else .ok (.Ok false, effect)

private theorem extractedAcceptedResult_eq {E FX : Type}
    (left right target c z ckV ckW : Bool) (effect : FX) :
    extractedAcceptedResult (E := E) left right target c z ckV ckW effect =
      .ok (.Ok (acceptedModel left right target c z ckV ckW), effect) := by
  cases left <;> cases right <;> cases target <;> cases c <;> cases z <;>
    cases ckV <;> cases ckW <;>
      simp [extractedAcceptedResult, acceptedTailResult, acceptedModel]

set_option maxHeartbeats 1000000 in
/-- The full extracted TIPP/MIPP leaf verifier succeeds exactly on `LeafData`.
    Its hypotheses are only the concrete interpretations of extracted effects;
    in particular the decoded round challenges are nonzero and their stored
    inverse transcript is exact. -/
theorem verify_tipp_mipp_refinement_statement
    {G2 E FX PE : Type} [AddCommGroup G2] [Module F G2] [DecidableEq GT]
    {n : Nat}
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (outcome : PE → Option Unit)
    (stmt : Ipp.FsStatement n F G1 G2 GT)
    (proof : Ipp.Proof n F G1 G2 GT) (transcript : Ipp.FsTranscript n F)
    (g gBeta : G1) (h hAlpha : G2) (pairing : PE)
    (effect0 : FX) (effect : Nat → FX) (effect3 effect4 : FX)
    (inverse : Fin n → F)
    (leftAccepted rightAccepted targetAccepted cAccepted zAccepted : Bool)
    (hx0 : effects.derive_x0 effect0 transcript.randomizer proof.ComA.1 proof.ComB
      proof.ComA.2 proof.ipAb proof.aggC =
        .ok (.Ok transcript.x0, effect 0))
    (hderive : ∀ k (hk : k < n),
      effects.derive_round (effect k)
          (priorAt transcript.roundAnswer transcript.x0 k)
          (extractedRounds proof.rounds (Fin.rev ⟨k, hk⟩)).1
          (extractedRounds proof.rounds (Fin.rev ⟨k, hk⟩)).2 =
        .ok (.Ok (transcript.roundAnswer ⟨k, hk⟩), effect (k + 1)))
    (hinvert : ∀ k (hk : k < n),
      effects.invert_round (effect (k + 1))
          (transcript.roundAnswer ⟨k, hk⟩) =
        .ok (.Ok (inverse ⟨k, hk⟩)))
    (hinverse : ∀ i, inverse i = (transcript.roundAnswer i)⁻¹)
    (hnonzero : ∀ i, transcript.roundAnswer i ≠ 0)
    (hbridge : effects.derive_final_bridge (effect n)
      (priorAt transcript.roundAnswer transcript.x0 n)
      (proof.vFinal, proof.wFinal)
      (proof.aFinal, proof.bFinal, proof.cFinal) =
        .ok (.Ok transcript.bridge, effect3))
    (hkzg : effects.derive_kzg effect3 transcript.bridge
      (proof.vFinal, proof.wFinal) = .ok (.Ok transcript.kzg, effect4))
    (hrandomizer : effects.invert_randomizer effect4 transcript.randomizer =
      .ok (.Ok transcript.randomizer⁻¹))
    (hbaseInner :
      effects.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst.inner_product
        effect4 ⟨[proof.aFinal]⟩ ⟨[proof.bFinal]⟩ =
          .ok (.Ok (stmt.e proof.aFinal proof.bFinal)))
    (hbaseLeft :
      effects.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst.verify_left
        effect4 ⟨[proof.vFinal]⟩ ⟨[proof.aFinal]⟩
          (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comA.1 =
            .ok (.Ok leftAccepted))
    (hbaseRight :
      effects.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst.verify_right
        effect4 ⟨[proof.wFinal]⟩ ⟨[proof.bFinal]⟩
          (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comB =
            .ok (.Ok rightAccepted))
    (hbaseTarget :
      effects.gipaBaseCommitmentEffectSelfG2G1TupleG1G2GTGTGTABTEInst.verify_target
        effect4 ⟨[()]⟩ ⟨[stmt.e proof.aFinal proof.bFinal]⟩
          (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comT.1 =
            .ok (.Ok targetAccepted))
    (hleft : leftAccepted = true ↔
      stmt.e proof.aFinal proof.vFinal =
        (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comA.1)
    (hright : rightAccepted = true ↔
      stmt.e proof.wFinal proof.bFinal =
        (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comB)
    (htarget : targetAccepted = true ↔
      stmt.e proof.aFinal proof.bFinal =
        (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comT.1)
    (hc : effects.verify_c effect4 ⟨[proof.cFinal]⟩ ⟨[proof.vFinal]⟩
      (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comA.2 =
        .ok (.Ok cAccepted))
    (hcAccepted : cAccepted = true ↔
      stmt.e proof.cFinal proof.vFinal =
        (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comA.2)
    (hz : effects.verify_z effect4 ⟨[proof.cFinal]⟩
      ⟨[Ipp.terminalR transcript.randomizer
        (Ipp.reversedView transcript.roundAnswer)]⟩
      (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comT.2 =
        .ok (.Ok zAccepted))
    (hzAccepted : zAccepted = true ↔
      Ipp.terminalR transcript.randomizer
          (Ipp.reversedView transcript.roundAnswer) • proof.cFinal =
        (Ipp.terminalFold proof.ComA proof.ComB proof transcript.roundAnswer).comT.2)
    (hacceptV : stmt.acceptV transcript.kzg
        (Ipp.transcriptCoeffs (Ipp.reversedView transcript.roundAnswer) 1)
        proof.vFinal proof.vOpening ↔
      outcome pairing = some () ∧
        stmt.e g (proof.vFinal -
            (∑ i : Fin (2 ^ n),
              Ipp.transcriptCoeffs (Ipp.reversedView transcript.roundAnswer) 1 i *
                (transcript.kzg ^ 2) ^ (i : Nat)) • h) -
          stmt.e (gBeta - transcript.kzg • g) proof.vOpening = 0)
    (hacceptW : stmt.acceptW transcript.kzg
        (Ipp.transcriptCoeffs
          (fun i => Ipp.gipaChallenge (Ipp.reversedView transcript.roundAnswer i))
          transcript.randomizer⁻¹) proof.wFinal proof.wOpening ↔
      outcome pairing = some () ∧
        stmt.e (proof.wFinal -
            (∑ i : Fin (2 ^ n),
              Ipp.transcriptCoeffs
                (fun i => Ipp.gipaChallenge
                  (Ipp.reversedView transcript.roundAnswer i))
                transcript.randomizer⁻¹ i *
                (transcript.kzg ^ 2) ^ (i : Nat)) • g) h -
          stmt.e proof.wOpening (hAlpha - transcript.kzg • h) = 0) :
    (∃ finalEffect,
      runTippModel effects (modelPairing stmt.e outcome)
          (coreInput stmt proof transcript g gBeta h hAlpha) effect0 pairing =
        .ok (.Ok true, finalEffect)) ↔
    Ipp.LeafData stmt proof transcript := by
  letI : DecidableEq GT := Classical.decEq _
  have hloop := success_terminal_folds effects proof proof.ComA proof.ComB effect
    transcript.x0 transcript.x0 transcript.roundAnswer inverse hderive hinvert
    hinverse hnonzero
  simp only [modelClone, modelDefault, modelAdd, modelSmulAssign, finVec] at hloop
  have hv := hax_translated_verify_g2_kzg_opening_eq stmt.e outcome pairing
    (Ipp.reversedView transcript.roundAnswer) 1 transcript.kzg g gBeta h
    proof.vFinal proof.vOpening
  have hw := hax_translated_verify_g1_kzg_opening_eq stmt.e outcome pairing
    (fun i => Ipp.gipaChallenge (Ipp.reversedView transcript.roundAnswer i))
    transcript.randomizer⁻¹ transcript.kzg g hAlpha h proof.wFinal proof.wOpening
  change ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_opening_core
      (modelClone F) (modelOne F) (modelAdd F) (modelMul F)
      (modelClone G1) (modelSmul G1) (modelSub G1) (modelNeg G1)
      (modelClone G2) (modelSmul G2) (modelSub G2) (modelZero GT)
      (modelPairing stmt.e outcome) g gBeta h proof.vFinal proof.vOpening
      (finVec (Ipp.reversedView transcript.roundAnswer)) 1 transcript.kzg pairing = _ at hv
  change ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_opening_core
      (modelClone F) (modelOne F) (modelAdd F) (modelMul F)
      (modelClone G1) (modelSmul G1) (modelSub G1) (modelNeg G1)
      (modelClone G2) (modelSmul G2) (modelSub G2) (modelZero GT)
      (modelPairing stmt.e outcome) g hAlpha h proof.wFinal proof.wOpening
      (finVec (fun i => Ipp.gipaChallenge
        (Ipp.reversedView transcript.roundAnswer i))) transcript.randomizer⁻¹
      transcript.kzg pairing = _ at hw
  simp only [modelClone, modelOne, modelAdd, modelMul, modelSmul, modelSub,
    modelNeg, finVec] at hv hw
  let ckV : Bool :=
    match outcome pairing with
    | none => false
    | some _ => decide
        (stmt.e g (proof.vFinal -
              (∑ i : Fin (2 ^ n),
                Ipp.transcriptCoeffs (Ipp.reversedView transcript.roundAnswer) 1 i *
                  (transcript.kzg ^ 2) ^ (i : Nat)) • h) -
            stmt.e (gBeta - transcript.kzg • g) proof.vOpening = 0)
  let ckW : Bool :=
    match outcome pairing with
    | none => false
    | some _ => decide
        (stmt.e (proof.wFinal -
              (∑ i : Fin (2 ^ n),
                Ipp.transcriptCoeffs
                    (fun i => Ipp.gipaChallenge
                      (Ipp.reversedView transcript.roundAnswer i))
                    transcript.randomizer⁻¹ i *
                  (transcript.kzg ^ 2) ^ (i : Nat)) • g) h -
            stmt.e proof.wOpening (hAlpha - transcript.kzg • h) = 0)
  change _ = Aeneas.Result.ok ckV at hv
  change _ = Aeneas.Result.ok ckW at hw
  have hckV : ckV = true ↔
      stmt.acceptV transcript.kzg
        (Ipp.transcriptCoeffs (Ipp.reversedView transcript.roundAnswer) 1)
        proof.vFinal proof.vOpening := by
    unfold ckV
    rw [hacceptV]
    cases hpair : outcome pairing with
    | none => simp [hpair]
    | some value =>
        cases value
        simp [hpair]
  have hckW : ckW = true ↔
      stmt.acceptW transcript.kzg
        (Ipp.transcriptCoeffs
          (fun i => Ipp.gipaChallenge
            (Ipp.reversedView transcript.roundAnswer i))
          transcript.randomizer⁻¹) proof.wFinal proof.wOpening := by
    unfold ckW
    rw [hacceptW]
    cases hpair : outcome pairing with
    | none => simp [hpair]
    | some value =>
        cases value
        simp [hpair]
  have hs := hax_translated_structured_scalar_final_eq transcript.roundAnswer
    transcript.randomizer
  change ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner
      (modelClone F) (modelOne F) (modelAdd F) (modelMul F)
      ⟨List.ofFn (Ipp.reversedView transcript.roundAnswer)⟩ transcript.randomizer = _ at hs
  simp only [modelClone, modelOne, modelAdd, modelMul] at hs
  unfold runTippModel
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_execution_core
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_challenge_prefix_core
  simp only [coreInput, modelClone, modelOne, modelAdd, modelMul, modelSmul,
    modelSub, modelNeg, modelDefault, modelSmulAssign, Result.bind_ok]
  rw [hx0]
  simp only [ark_ip_proofs.core.result.Result.Insts.CoreOpsTry.branch,
    Result.bind_ok, ark_ip_proofs.alloc.vec.Vec.len,
    ark_ip_proofs.alloc.vec.Vec.new, finVec, List.length_ofFn, Usize.ofNat]
  rw [hloop]
  simp only [Result.bind_ok, ark_ip_proofs.alloc.vec.Vec.deref_mut,
    ark_ip_proofs.core.slice.Slice.reverse, lift,
    ark_ip_proofs.alloc.vec.CloneVec.clone_identity]
  rw [reverse_chronological_eq_reversedView transcript.roundAnswer]
  rw [reverse_chronological_eq_reversedView inverse]
  have hinverseReversed :
      Ipp.reversedView inverse =
        fun i => Ipp.gipaChallenge (Ipp.reversedView transcript.roundAnswer i) := by
    funext i
    simp [Ipp.reversedView, Ipp.gipaChallenge, hinverse]
  rw [hinverseReversed]
  rw [hbridge]
  simp only [ark_ip_proofs.core.result.Result.Insts.CoreOpsTry.branch,
    Result.bind_ok]
  rw [hkzg]
  simp only [ark_ip_proofs.core.result.Result.Insts.CoreOpsTry.branch,
    Result.bind_ok]
  rw [hrandomizer]
  simp only [ark_ip_proofs.core.result.Result.Insts.CoreOpsTry.branch,
    Result.bind_ok, modelClone]
  simp only [ark_ip_proofs.rayon_core.join.join, Result.bind_ok,
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_execution_core.closure.Insts.CoreOpsFunctionFnOnceTupleBool,
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_execution_core.closure_1.Insts.CoreOpsFunctionFnOnceTupleBool,
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_execution_core.closure.Insts.CoreOpsFunctionFnOnceTupleBool.call_once,
    ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_execution_core.closure_1.Insts.CoreOpsFunctionFnOnceTupleBool.call_once]
  rw [hv, hw]
  simp only [ark_ip_proofs.Array.make, ark_ip_proofs.Std.Array.to_slice,
    ark_ip_proofs.alloc.slice.Slice.into_vec, ark_ip_proofs.alloc.vec.Vec.index,
    List.getElem?_cons_zero, modelClone, Result.bind_ok]
  unfold ark_ip_proofs.gipa.verify_base_commitment_core
  simp only [ark_ip_proofs.Array.make, ark_ip_proofs.Array.to_slice,
    ark_ip_proofs.Std.Array.to_slice, ark_ip_proofs.alloc.slice.Slice.into_vec,
    ark_ip_proofs.alloc.vec.Vec.deref, alloc.vec.Vec.with_capacity,
    alloc.vec.Vec.push, lift, Result.bind_ok]
  rw [hbaseInner]
  simp only [Result.bind_ok]
  rw [hbaseLeft]
  simp only [Result.bind_ok]
  rw [hbaseRight]
  simp only [Result.bind_ok]
  simp only [List.nil_append]
  rw [hbaseTarget]
  simp only [hc, hz, ark_ip_proofs.core.result.Result.Insts.CoreOpsTry.branch,
    Result.bind_ok, ark_ip_proofs.alloc.vec.Vec.deref]
  rw [hs]
  simp only [Result.bind_ok]
  rw [hz]
  simp only [ark_ip_proofs.core.result.Result.Insts.CoreOpsTry.branch,
    Result.bind_ok]
  simp only [result_bind_ite, Result.bind_ok]
  change
    (∃ finalEffect,
      extractedAcceptedResult (E := E) leftAccepted rightAccepted targetAccepted
          cAccepted zAccepted ckV ckW effect4 =
        .ok (.Ok true, finalEffect)) ↔
      Ipp.LeafData stmt proof transcript
  rw [extractedAcceptedResult_eq]
  rw [exists_success_effect_iff, acceptedModel_eq_true_iff]
  dsimp only [Ipp.LeafData]
  rw [← hleft, ← hright, ← htarget, ← hcAccepted, ← hzAccepted, ← hckV,
    ← hckW]

end TerminalFolds

end GeneratedLoop
end VerifyTippMipp

export VerifyTippMipp (verify_tipp_mipp_refinement_statement)

#print axioms verify_tipp_mipp_refinement_statement

end
end Ipp.Extracted
