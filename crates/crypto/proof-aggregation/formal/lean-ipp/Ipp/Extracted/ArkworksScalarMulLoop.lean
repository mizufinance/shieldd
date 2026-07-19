import Ipp.Extracted.ArkworksScalarMulSchedule
import Ipp.Extracted.ArkworksScalarMulStep

/-! Symbolic refinement of the generated nested scalar countdown loops. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result ControlFlow

/-- The bit selected by one generated inner-loop countdown step. -/
def scalarBit (scalar : ScalarArray) (limb bit : Nat) : Bool :=
  decide (scalarWord scalar limb / 2 ^ bit % 2 = 1)

private theorem u64_ofNat_val_of_lt {value : Nat}
    (hvalue : value < MacCampaign.u64Base) :
    (MacCampaign.U64.ofNat value).val = value := by
  simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hvalue]

/-- Array indexing and the extracted shifts select the symbolic scalar bit. -/
theorem extracted_scalar_bit (scalar : ScalarArray) {limb bit : Nat}
    (hlimb : limb < 4) (hbit : bit < 64) :
    (do
      let word ← MacCampaign.Array.index_usize scalar (Usize.ofNat limb)
      let shifted ← word >>> (MacCampaign.I32.ofNat bit)
      let low := MacCampaign.U64.ofNat (shifted.val % 2)
      ok (low = 1#u64)) = .ok (scalarBit scalar limb bit) := by
  have hindex := Ipp.Extracted.ArkworksFr.array_index_limbWord scalar
    ⟨limb, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩
  have hshift : (MacCampaign.I32.ofNat bit).val = bit := by
    simp only [MacCampaign.I32.ofNat]
    rw [Nat.mod_eq_of_lt]
    exact lt_trans hbit (by decide)
  have hword :
      (Ipp.Extracted.ArkworksFr.limbWord scalar
        ⟨limb, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩).val =
        scalarWord scalar limb := by
    simp [scalarWord, hlimb, Ipp.Extracted.ArkworksFr.limb]
  rw [hindex]
  simp only [Result.bind_ok]
  change MacCampaign.shr64 _ (MacCampaign.I32.ofNat bit) >>= _ = _
  rw [show MacCampaign.shr64
      (Ipp.Extracted.ArkworksFr.limbWord scalar
        ⟨limb, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩)
      (MacCampaign.I32.ofNat bit) =
      .ok (MacCampaign.U64.ofNat
        (scalarWord scalar limb / 2 ^ bit)) by
    simp [MacCampaign.shr64, hshift, hbit, hword]]
  simp only [Result.bind_ok]
  unfold scalarBit
  have hquot : scalarWord scalar limb / 2 ^ bit < MacCampaign.u64Base := by
    apply lt_of_le_of_lt (Nat.div_le_self _ _) 
    simpa [MacCampaign.u64Base, Ipp.Extracted.ArkworksFqMul.wordBase] using
      scalarWord_lt scalar hlimb
  rw [u64_ofNat_val_of_lt hquot]
  have hlow : scalarWord scalar limb / 2 ^ bit % 2 < MacCampaign.u64Base := by
    exact lt_trans (Nat.mod_lt _ (by decide)) (by decide)
  simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hlow,
    Nat.mod_eq_of_lt (show 1 < MacCampaign.u64Base by decide)]

/-- Curve-independent model of the generated inner countdown body. -/
def scalarInnerBody {Acc : Type} (step : Acc → Bool → Result Acc)
    (scalar : ScalarArray) (limb : Nat)
    (state : Acc × Bool × Usize) : Result (ControlFlow (Acc × Bool × Usize) (Acc × Bool)) :=
  let accumulator := state.1
  let started := state.2.1
  let bitIndex := state.2.2
  if bitIndex.val > 0 then
    let nextBit := Usize.ofNat (bitIndex.val - 1)
    let bit := scalarBit scalar limb nextBit.val
    if started then do
      let output ← step accumulator bit
      ok (cont (output, true, nextBit))
    else if bit then do
      let output ← step accumulator true
      ok (cont (output, true, nextBit))
    else
      ok (cont (accumulator, false, nextBit))
  else
    ok (done (accumulator, started))

/-- The model inner body decreases the symbolic bit measure on every continuation. -/
theorem scalarInnerBody_decreases {Acc : Type} (step : Acc → Bool → Result Acc)
    (scalar : ScalarArray) (limb : Nat) (state next : Acc × Bool × Usize)
    (hbody : scalarInnerBody step scalar limb state = .ok (.cont next)) :
    next.2.2.val < state.2.2.val := by
  rcases state with ⟨accumulator, started, bitIndex⟩
  simp only [scalarInnerBody] at hbody
  by_cases hpos : bitIndex.val > 0
  · rw [if_pos hpos] at hbody
    cases started with
    | false =>
        rw [if_neg (by decide)] at hbody
        cases hbit : scalarBit scalar limb (bitIndex.val - 1) with
        | false =>
            simp [hbit] at hbody
            cases hbody
            simp
            omega
        | true =>
            rw [if_pos (by simpa using hbit)] at hbody
            cases hexec : step accumulator true <;> simp [hexec] at hbody
            rename_i output
            cases hbody
            simp
            omega
    | true =>
        rw [if_pos (by decide)] at hbody
        cases hexec : step accumulator (scalarBit scalar limb (bitIndex.val - 1)) <;>
          simp [hexec] at hbody
        rename_i output
        cases hbody
        simp
        omega
  · rw [if_neg hpos] at hbody
    simp at hbody

/-- A finite inner-loop execution preserves a symbolic scalar invariant.
    `bitIndex.val` is the decreasing measure in `scalarInnerBody_decreases`. -/
theorem scalarInnerLoopResult_valid {Acc : Type} (StateOk : Acc → Nat → Prop)
    (step : Acc → Bool → Result Acc) (scalar : ScalarArray) {limb : Nat}
    (hlimb : limb < 4)
    (hstep : ∀ accumulator output value bit,
      StateOk accumulator value → step accumulator bit = .ok output →
      StateOk output (2 * value + bitNat bit))
    {state : Acc × Bool × Usize} {result : Result (Acc × Bool)}
    (hrun : LoopResult (scalarInnerBody step scalar limb) state result)
    (hbound : state.2.2.val ≤ 64)
    (hvalid : StateOk state.1 (partialValue scalar limb state.2.2.val))
    (hsuppressed : state.2.1 = false → partialValue scalar limb state.2.2.val = 0) :
    ∀ output started, result = .ok (output, started) →
      StateOk output (highPrefix scalar limb) ∧
        (started = false → highPrefix scalar limb = 0) := by
  induction hrun with
  | done hbody =>
      rename_i current final
      rcases current with ⟨accumulator, started, bitIndex⟩
      intro output startedOut hresult
      simp only [scalarInnerBody] at hbody
      by_cases hpos : bitIndex.val > 0
      · rw [if_pos hpos] at hbody
        cases started with
        | false =>
            rw [if_neg (by decide)] at hbody
            cases hbit : scalarBit scalar limb (bitIndex.val - 1) with
            | false => simp [hbit] at hbody
            | true =>
                rw [if_pos (by simpa using hbit)] at hbody
                cases hexec : step accumulator true <;> simp [hexec] at hbody
        | true =>
            rw [if_pos (by decide)] at hbody
            cases hexec : step accumulator (scalarBit scalar limb (bitIndex.val - 1)) <;>
              simp [hexec] at hbody
      · have hzero : bitIndex.val = 0 := by omega
        rw [if_neg hpos] at hbody
        simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
        cases hbody
        cases hresult
        refine ⟨by simpa [hzero, partialValue_done scalar hlimb] using hvalid, ?_⟩
        intro hstarted
        have hz := hsuppressed hstarted
        simpa [hzero, partialValue_done scalar hlimb] using hz
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      rcases current with ⟨accumulator, started, bitIndex⟩
      intro output startedOut hresult
      have hpos : bitIndex.val > 0 := by
        by_contra hnot
        simp only [scalarInnerBody] at hbody
        rw [if_neg hnot] at hbody
        simp at hbody
      have hcurrentBound : bitIndex.val ≤ 64 := hbound
      have hnextBound : bitIndex.val - 1 ≤ 64 := by omega
      have hpred := partialValue_pred scalar (limb := limb)
        (bitIndex := bitIndex.val) hpos hbound
      simp only [scalarInnerBody] at hbody
      rw [if_pos hpos] at hbody
      cases started with
      | false =>
          rw [if_neg (by decide)] at hbody
          cases hbit : scalarBit scalar limb (bitIndex.val - 1) with
          | false =>
              rw [if_neg (by simpa using hbit)] at hbody
              simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hbody
              cases hbody
              have hzero := hsuppressed rfl
              have hnextZero : partialValue scalar limb (bitIndex.val - 1) = 0 := by
                rw [hpred, hzero]
                have hb : bitNat (scalarBit scalar limb (bitIndex.val - 1)) = 0 := by
                  rw [hbit]
                  rfl
                simpa [scalarBit] using hb
              apply ih hnextBound
                (by simpa [hnextZero, hzero] using hvalid)
                (by intro; exact hnextZero) output startedOut hresult
          | true =>
              cases hexec : step accumulator true with
              | ok nextAccumulator =>
                  rw [if_pos (by simpa using hbit), hexec] at hbody
                  simp only [Result.bind_ok, Result.ok.injEq, ControlFlow.cont.injEq] at hbody
                  cases hbody
                  have hzero := hsuppressed rfl
                  have hnextValid := hstep accumulator nextAccumulator
                    (partialValue scalar limb bitIndex.val) true hvalid hexec
                  apply ih hnextBound
                    (by
                      simp only [Usize.ofNat_val]
                      rw [hpred]
                      have hdec : decide
                          (scalarWord scalar limb / 2 ^ (bitIndex.val - 1) % 2 = 1) =
                          true := by simpa [scalarBit] using hbit
                      rw [hdec]
                      exact hnextValid)
                    (by simp) output startedOut hresult
              | fail error =>
                  rw [if_pos (by simpa using hbit), hexec] at hbody
                  simp at hbody
              | div =>
                  rw [if_pos (by simpa using hbit), hexec] at hbody
                  simp at hbody
      | true =>
          let bit := scalarBit scalar limb (bitIndex.val - 1)
          rw [if_pos (by decide)] at hbody
          cases hexec : step accumulator bit with
          | ok nextAccumulator =>
              change step accumulator bit >>= _ = _ at hbody
              rw [hexec] at hbody
              simp only [Result.bind_ok, Result.ok.injEq, ControlFlow.cont.injEq] at hbody
              cases hbody
              have hnextValid := hstep accumulator nextAccumulator
                (partialValue scalar limb bitIndex.val) bit hvalid hexec
              apply ih hnextBound
                (by
                  simp only [Usize.ofNat_val]
                  rw [hpred]
                  simpa [bit, scalarBit] using hnextValid)
                (by simp) output startedOut hresult
          | fail error =>
              change step accumulator bit >>= _ = _ at hbody
              rw [hexec] at hbody
              simp at hbody
          | div =>
              change step accumulator bit >>= _ = _ at hbody
              rw [hexec] at hbody
              simp at hbody
  | fail hbody =>
      intro output startedOut hresult
      simp at hresult
  | div hbody =>
      intro output startedOut hresult
      simp at hresult

/-- Shared extracted inner body before replacing array/shift operations by `scalarBit`. -/
def scalarInnerExtractedBody {Acc : Type} (step : Acc → Bool → Result Acc)
    (scalar : ScalarArray) (limb : Usize)
    (state : Acc × Bool × Usize) : Result (ControlFlow (Acc × Bool × Usize) (Acc × Bool)) := do
  let accumulator := state.1
  let started := state.2.1
  let bitIndex := state.2.2
  if bitIndex > 0#usize then
    let nextBit ← bitIndex - 1#usize
    let word ← MacCampaign.Array.index_usize scalar limb
    let shifted ← word >>> (MacCampaign.I32.ofNat nextBit.val)
    let low := MacCampaign.U64.ofNat (shifted.val % 2)
    let bit := low = 1#u64
    if started then
      let output ← step accumulator bit
      ok (cont (output, true, nextBit))
    else if bit then
      let output ← step accumulator true
      ok (cont (output, true, nextBit))
    else
      ok (cont (accumulator, false, nextBit))
  else
    ok (done (accumulator, started))

/-- The extracted array/shift body is the symbolic body, without bit unrolling. -/
theorem scalarInnerExtractedBody_eq_model {Acc : Type}
    (step : Acc → Bool → Result Acc) (scalar : ScalarArray) {limb : Nat}
    (hlimb : limb < 4) (state : Acc × Bool × Usize)
    (hbound : state.2.2.val ≤ 64) :
    scalarInnerExtractedBody step scalar (Usize.ofNat limb) state =
      scalarInnerBody step scalar limb state := by
  rcases state with ⟨accumulator, started, bitIndex⟩
  unfold scalarInnerExtractedBody scalarInnerBody
  by_cases hpos : bitIndex.val > 0
  · rw [if_pos (show bitIndex > 0#usize by exact hpos), if_pos hpos]
    rw [MacCampaign.sub_eq bitIndex 1#usize (by simp; omega)]
    simp only [Result.bind_ok, Usize.ofNat_val]
    have hcurrentBound : bitIndex.val ≤ 64 := hbound
    have hbit : bitIndex.val - 1 < 64 := by omega
    have hindex := Ipp.Extracted.ArkworksFr.array_index_limbWord scalar
      ⟨limb, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩
    rw [hindex]
    simp only [Result.bind_ok]
    have hshiftVal : (MacCampaign.I32.ofNat (bitIndex.val - 1)).val =
        bitIndex.val - 1 := by
      simp only [MacCampaign.I32.ofNat]
      rw [Nat.mod_eq_of_lt]
      exact lt_trans hbit (by decide)
    have hword :
        (Ipp.Extracted.ArkworksFr.limbWord scalar
          ⟨limb, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩).val =
          scalarWord scalar limb := by
      simp [scalarWord, hlimb, Ipp.Extracted.ArkworksFr.limb]
    change MacCampaign.shr64
        (Ipp.Extracted.ArkworksFr.limbWord scalar
          ⟨limb, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩)
        (MacCampaign.I32.ofNat (bitIndex.val - 1)) >>= _ = _
    rw [show MacCampaign.shr64
        (Ipp.Extracted.ArkworksFr.limbWord scalar
          ⟨limb, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩)
        (MacCampaign.I32.ofNat (bitIndex.val - 1)) =
        .ok (MacCampaign.U64.ofNat
          (scalarWord scalar limb / 2 ^ (bitIndex.val - 1))) by
      simp [MacCampaign.shr64, hshiftVal, hbit, hword]]
    simp only [Result.bind_ok]
    have hquot : scalarWord scalar limb / 2 ^ (bitIndex.val - 1) <
        MacCampaign.u64Base := by
      apply lt_of_le_of_lt (Nat.div_le_self _ _)
      simpa [MacCampaign.u64Base, Ipp.Extracted.ArkworksFqMul.wordBase] using
        scalarWord_lt scalar hlimb
    rw [u64_ofNat_val_of_lt hquot]
    unfold scalarBit
    have hlow : scalarWord scalar limb / 2 ^ (bitIndex.val - 1) % 2 <
        MacCampaign.u64Base :=
      lt_trans (Nat.mod_lt _ (by decide)) (by decide)
    simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hlow,
      Nat.mod_eq_of_lt (show 1 < MacCampaign.u64Base by decide), Usize.ofNat]
  · rw [if_neg (show ¬bitIndex > 0#usize by exact hpos), if_neg hpos]

/-- Convert the finite extracted witness to the symbolic body witness. -/
theorem scalarInnerLoopResult_to_model {Acc : Type}
    (step : Acc → Bool → Result Acc) (scalar : ScalarArray) {limb : Nat}
    (hlimb : limb < 4) {state : Acc × Bool × Usize} {result : Result (Acc × Bool)}
    (hrun : LoopResult
      (scalarInnerExtractedBody step scalar (Usize.ofNat limb)) state result)
    (hbound : state.2.2.val ≤ 64) :
    LoopResult (scalarInnerBody step scalar limb) state result := by
  induction hrun with
  | done hbody =>
      apply LoopResult.done
      rwa [← scalarInnerExtractedBody_eq_model step scalar hlimb _ hbound]
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      have hmodel : scalarInnerBody step scalar limb current = .ok (.cont nextState) := by
        rwa [← scalarInnerExtractedBody_eq_model step scalar hlimb _ hbound]
      have hnextBound : nextState.2.2.val ≤ 64 := by
        have hlt := scalarInnerBody_decreases step scalar limb current nextState hmodel
        omega
      exact LoopResult.next hmodel (ih hnextBound)
  | fail hbody =>
      apply LoopResult.fail
      rwa [← scalarInnerExtractedBody_eq_model step scalar hlimb _ hbound]
  | div hbody =>
      apply LoopResult.div
      rwa [← scalarInnerExtractedBody_eq_model step scalar hlimb _ hbound]

/-- Curve-independent model of the generated outer limb countdown. -/
def scalarOuterBody {Acc : Type}
    (inner : Acc → Bool → Nat → Result (Acc × Bool))
    (state : Acc × Bool × Usize) : Result (ControlFlow (Acc × Bool × Usize) Acc) := do
  let accumulator := state.1
  let started := state.2.1
  let limb := state.2.2
  if limb.val > 0 then
    let nextLimb := limb.val - 1
    let (output, nextStarted) ← inner accumulator started nextLimb
    ok (cont (output, nextStarted, Usize.ofNat nextLimb))
  else
    ok (done accumulator)

theorem scalarOuterBody_decreases {Acc : Type}
    (inner : Acc → Bool → Nat → Result (Acc × Bool))
    (state next : Acc × Bool × Usize)
    (hbody : scalarOuterBody inner state = .ok (.cont next)) :
    next.2.2.val < state.2.2.val := by
  rcases state with ⟨accumulator, started, limb⟩
  simp only [scalarOuterBody] at hbody
  by_cases hpos : limb.val > 0
  · rw [if_pos hpos] at hbody
    cases hexec : inner accumulator started (limb.val - 1) <;> simp [hexec] at hbody
    rename_i pair
    rcases pair with ⟨output, nextStarted⟩
    cases hbody
    simp
    omega
  · rw [if_neg hpos] at hbody
    simp at hbody

/-- A finite outer execution preserves the high-word scalar invariant. -/
theorem scalarOuterLoopResult_valid {Acc : Type} (StateOk : Acc → Nat → Prop)
    (inner : Acc → Bool → Nat → Result (Acc × Bool)) (scalar : ScalarArray)
    (hinner : ∀ accumulator started limb output nextStarted,
      limb < 4 →
      StateOk accumulator (highPrefix scalar (limb + 1)) →
      (started = false → highPrefix scalar (limb + 1) = 0) →
      inner accumulator started limb = .ok (output, nextStarted) →
      StateOk output (highPrefix scalar limb) ∧
        (nextStarted = false → highPrefix scalar limb = 0))
    {state : Acc × Bool × Usize} {result : Result Acc}
    (hrun : LoopResult (scalarOuterBody inner) state result)
    (hbound : state.2.2.val ≤ 4)
    (hvalid : StateOk state.1 (highPrefix scalar state.2.2.val))
    (hsuppressed : state.2.1 = false → highPrefix scalar state.2.2.val = 0) :
    ∀ output, result = .ok output → StateOk output (scalarToNat scalar) := by
  induction hrun with
  | done hbody =>
      rename_i current final
      rcases current with ⟨accumulator, started, limb⟩
      intro output hresult
      simp only [scalarOuterBody] at hbody
      by_cases hpos : limb.val > 0
      · rw [if_pos hpos] at hbody
        cases hexec : inner accumulator started (limb.val - 1) <;> simp [hexec] at hbody
      · have hzero : limb.val = 0 := by omega
        rw [if_neg hpos] at hbody
        simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
        cases hbody
        cases hresult
        simpa [hzero, highPrefix_zero] using hvalid
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      rcases current with ⟨accumulator, started, limb⟩
      intro output hresult
      have hpos : limb.val > 0 := by
        by_contra hnot
        simp [scalarOuterBody, hnot] at hbody
      have hcurrentBound : limb.val ≤ 4 := hbound
      have hnextLimb : limb.val - 1 < 4 := by omega
      simp only [scalarOuterBody] at hbody
      rw [if_pos hpos] at hbody
      cases hexec : inner accumulator started (limb.val - 1) with
      | ok pair =>
          rcases pair with ⟨nextAccumulator, nextStarted⟩
          simp [hexec] at hbody
          cases hbody
          have hsucc : limb.val - 1 + 1 = limb.val := by omega
          have hnext := hinner accumulator started (limb.val - 1)
            nextAccumulator nextStarted hnextLimb
            (by simpa [hsucc] using hvalid)
            (by intro hs; simpa [hsucc] using hsuppressed hs) hexec
          apply ih (by simp; omega) hnext.1 hnext.2 output hresult
      | fail error => simp [hexec] at hbody
      | div => simp [hexec] at hbody
  | fail hbody => intro output hresult; simp at hresult
  | div hbody => intro output hresult; simp at hresult

/-- Shared extracted outer body with checked `Usize` subtraction. -/
def scalarOuterExtractedBody {Acc : Type}
    (inner : Acc → Bool → Usize → Result (Acc × Bool))
    (state : Acc × Bool × Usize) : Result (ControlFlow (Acc × Bool × Usize) Acc) := do
  let accumulator := state.1
  let started := state.2.1
  let limb := state.2.2
  if limb > 0#usize then
    let nextLimb ← limb - 1#usize
    let (output, nextStarted) ← inner accumulator started nextLimb
    ok (cont (output, nextStarted, nextLimb))
  else
    ok (done accumulator)

theorem scalarOuterExtractedBody_eq_model {Acc : Type}
    (inner : Acc → Bool → Usize → Result (Acc × Bool))
    (state : Acc × Bool × Usize) :
    scalarOuterExtractedBody inner state =
      scalarOuterBody (fun accumulator started limb =>
        inner accumulator started (Usize.ofNat limb)) state := by
  rcases state with ⟨accumulator, started, limb⟩
  unfold scalarOuterExtractedBody scalarOuterBody
  by_cases hpos : limb.val > 0
  · rw [if_pos (show limb > 0#usize by exact hpos), if_pos hpos]
    rw [MacCampaign.sub_eq limb 1#usize (by simp; omega)]
    rfl
  · rw [if_neg (show ¬limb > 0#usize by exact hpos), if_neg hpos]

theorem scalarOuterLoopResult_to_model {Acc : Type}
    (inner : Acc → Bool → Usize → Result (Acc × Bool))
    {state : Acc × Bool × Usize} {result : Result Acc}
    (hrun : LoopResult (scalarOuterExtractedBody inner) state result) :
    LoopResult (scalarOuterBody (fun accumulator started limb =>
      inner accumulator started (Usize.ofNat limb))) state result := by
  induction hrun with
  | done hbody =>
      apply LoopResult.done
      rwa [← scalarOuterExtractedBody_eq_model inner]
  | next hbody hnext ih =>
      apply LoopResult.next
      · rwa [← scalarOuterExtractedBody_eq_model inner]
      · exact ih
  | fail hbody =>
      apply LoopResult.fail
      rwa [← scalarOuterExtractedBody_eq_model inner]
  | div hbody =>
      apply LoopResult.div
      rwa [← scalarOuterExtractedBody_eq_model inner]

/-- Scalar multiplication distributes one double-and-add bit over `nsmul`. -/
theorem nsmul_bit_step {G : Type} [AddCommMonoid G]
    (value : Nat) (base : G) (bit : Bool) :
    value • base + value • base + (if bit then base else 0) =
      (2 * value + bitNat bit) • base := by
  have hdouble : value • base + value • base = (2 * value) • base := by
    rw [Nat.mul_comm 2 value, mul_nsmul, two_nsmul]
  cases bit <;> simp [bitNat, add_nsmul, hdouble]

#print axioms scalarOuterExtractedBody_eq_model
#print axioms scalarOuterLoopResult_to_model
#print axioms nsmul_bit_step

#print axioms scalarInnerLoopResult_to_model
#print axioms scalarOuterBody_decreases
#print axioms scalarOuterLoopResult_valid

#print axioms scalarInnerExtractedBody_eq_model

#print axioms extracted_scalar_bit
#print axioms scalarInnerBody_decreases
#print axioms scalarInnerLoopResult_valid

end Ipp.Extracted.ArkworksScalarMul
