import Ipp.Extracted.ArkworksScalarMulGlvSchedule

/-! Symbolic model of the extracted single-countdown GLV joint loop. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result ControlFlow

set_option maxHeartbeats 4000000

/-- The adapted generated array/division/shift path selects `glvBit`. -/
theorem extracted_glv_bit (scalar : ScalarArray) {bit : Nat} (hbit : bit < 256) :
    (show Result Bool from do
      let limb ← Usize.ofNat bit / 64#usize
      let word ← MacCampaign.Array.index_usize scalar limb
      let localBit ← Usize.ofNat bit % 64#usize
      let shifted ← word >>> localBit
      let low ← lift (shifted &&& 1#u64)
      ok (low = 1#u64)) = .ok (glvBit scalar bit) := by
  have hlimb : bit / 64 < 4 := by omega
  have hlocal : bit % 64 < 64 := Nat.mod_lt _ (by decide)
  have hdiv : (Usize.ofNat bit / 64#usize : Result Usize) =
      .ok (Usize.ofNat (bit / 64)) := by rfl
  have hrem : (Usize.ofNat bit % 64#usize : Result Usize) =
      .ok (Usize.ofNat (bit % 64)) := by rfl
  rw [hdiv]
  simp only [Result.bind_ok]
  rw [Ipp.Extracted.ArkworksFr.array_index_limbWord scalar
    ⟨bit / 64, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩]
  simp only [Result.bind_ok]
  rw [hrem]
  simp only [Result.bind_ok]
  have hword :
      (Ipp.Extracted.ArkworksFr.limbWord scalar
        ⟨bit / 64, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩).val =
        scalarWord scalar (bit / 64) := by
    simp [scalarWord, hlimb, Ipp.Extracted.ArkworksFr.limb]
  change MacCampaign.shr64
      (Ipp.Extracted.ArkworksFr.limbWord scalar
        ⟨bit / 64, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩)
      (MacCampaign.I32.ofNat (bit % 64)) >>= _ = _
  rw [show MacCampaign.shr64
      (Ipp.Extracted.ArkworksFr.limbWord scalar
        ⟨bit / 64, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using hlimb⟩)
      (MacCampaign.I32.ofNat (bit % 64)) =
      .ok (MacCampaign.U64.ofNat
        (scalarWord scalar (bit / 64) / 2 ^ (bit % 64))) by
    have hi32 : bit % 64 % MacCampaign.i32Base = bit % 64 :=
      Nat.mod_eq_of_lt (lt_trans hlocal (by decide))
    simp [MacCampaign.shr64, MacCampaign.I32.ofNat, hi32, hlocal, hword]]
  simp only [Result.bind_ok]
  unfold glvBit
  change (do
      let low ← lift (ark_ip_proofs.GlvRuntime.and64
        (MacCampaign.U64.ofNat
          (scalarWord scalar (bit / 64) / 2 ^ (bit % 64)))
        (MacCampaign.U64.ofNat 1))
      ok (decide (low = MacCampaign.U64.ofNat 1))) = _
  have hquot : scalarWord scalar (bit / 64) / 2 ^ (bit % 64) <
      MacCampaign.u64Base := by
    apply lt_of_le_of_lt (Nat.div_le_self _ _)
    simpa [MacCampaign.u64Base, Ipp.Extracted.ArkworksFqMul.wordBase] using
      scalarWord_lt scalar hlimb
  have hlow : scalarWord scalar (bit / 64) / 2 ^ (bit % 64) % 2 <
      MacCampaign.u64Base :=
    lt_trans (Nat.mod_lt _ (by decide)) (by decide)
  simp [Aeneas.lift, ark_ip_proofs.GlvRuntime.and64,
    MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hquot,
    Nat.mod_eq_of_lt hlow,
    Nat.mod_eq_of_lt (show 1 < MacCampaign.u64Base by decide)]

/-- The extracted scalar-bit helper selects the corresponding schedule bit. -/
theorem extracted_g1_glv_scalar_bit (scalar : ScalarArray) {bit : Nat}
    (hbit : bit < 256) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_bit scalar
      (Usize.ofNat bit) = .ok (glvBit scalar bit) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_bit
  exact extracted_glv_bit scalar hbit

/-- Pure model of one extracted joint-loop countdown iteration. -/
def glvJointBody {Acc : Type} (step : Acc → Bool → Bool → Result Acc)
    (k1 k2 : ScalarArray) (state : Acc × Bool × Usize) :
    Result (ControlFlow (Acc × Bool × Usize) Acc) := do
  let accumulator := state.1
  let skipZeros := state.2.1
  let bitIndex := state.2.2
  if bitIndex.val > 0 then
    let nextBit := Usize.ofNat (bitIndex.val - 1)
    let bit1 := glvBit k1 nextBit.val
    let bit2 := glvBit k2 nextBit.val
    if skipZeros then
      if bit1 then
        let output ← step accumulator true bit2
        ok (cont (output, true, nextBit))
      else if bit2 then
        let output ← step accumulator false true
        ok (cont (output, true, nextBit))
      else
        ok (cont (accumulator, false, nextBit))
    else
      let output ← step accumulator bit1 bit2
      ok (cont (output, false, nextBit))
  else
    ok (done accumulator)

/-- Every continuation decreases the symbolic remaining-bit measure. -/
theorem glvJointBody_decreases {Acc : Type}
    (step : Acc → Bool → Bool → Result Acc) (k1 k2 : ScalarArray)
    (state next : Acc × Bool × Usize)
    (hbody : glvJointBody step k1 k2 state = .ok (.cont next)) :
    next.2.2.val < state.2.2.val := by
  rcases state with ⟨accumulator, skipZeros, bitIndex⟩
  simp only [glvJointBody] at hbody
  by_cases hpos : bitIndex.val > 0
  · rw [if_pos hpos] at hbody
    cases skipZeros with
    | false =>
        cases h1 : glvBit k1 (bitIndex.val - 1) with
        | false =>
            cases h2 : glvBit k2 (bitIndex.val - 1) with
            | false =>
                cases hexec : step accumulator false false <;>
                  simp [h1, h2, hexec] at hbody
                rename_i output
                cases hbody
                simp
                omega
            | true =>
                cases hexec : step accumulator false true <;>
                  simp [h1, h2, hexec] at hbody
                rename_i output
                cases hbody
                simp
                omega
        | true =>
            cases h2 : glvBit k2 (bitIndex.val - 1) with
            | false =>
                cases hexec : step accumulator true false <;>
                  simp [h1, h2, hexec] at hbody
                rename_i output
                cases hbody
                simp
                omega
            | true =>
                cases hexec : step accumulator true true <;>
                  simp [h1, h2, hexec] at hbody
                rename_i output
                cases hbody
                simp
                omega
    | true =>
        cases h1 : glvBit k1 (bitIndex.val - 1) with
        | false =>
            cases h2 : glvBit k2 (bitIndex.val - 1) with
            | false =>
                simp [h1, h2] at hbody
                cases hbody
                simp
                omega
            | true =>
                cases hexec : step accumulator false true <;>
                  simp [h1, h2, hexec] at hbody
                rename_i output
                cases hbody
                simp
                omega
        | true =>
            cases h2 : glvBit k2 (bitIndex.val - 1) with
            | false =>
                cases hexec : step accumulator true false <;>
                  simp [h1, h2, hexec] at hbody
                rename_i output
                cases hbody
                simp
                omega
            | true =>
                cases hexec : step accumulator true true <;>
                  simp [h1, h2, hexec] at hbody
                rename_i output
                cases hbody
                simp
                omega
  · rw [if_neg hpos] at hbody
    simp at hbody

/-- Extracted joint-loop body, with checked subtraction and the extracted bit helper. -/
def glvJointExtractedBody {Acc : Type}
    (step : Acc → Bool → Bool → Result Acc)
    (k1 k2 : ScalarArray) (state : Acc × Bool × Usize) :
    Result (ControlFlow (Acc × Bool × Usize) Acc) := do
  let accumulator := state.1
  let skipZeros := state.2.1
  let bitIndex := state.2.2
  if bitIndex > 0#usize then
    let nextBit ← bitIndex - 1#usize
    let bit1 ←
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_bit k1 nextBit
    let bit2 ←
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_bit k2 nextBit
    if skipZeros then
      if bit1 then
        let output ← step accumulator true bit2
        ok (cont (output, true, nextBit))
      else if bit2 then
        let output ← step accumulator false true
        ok (cont (output, true, nextBit))
      else
        ok (cont (accumulator, false, nextBit))
    else
      let output ← step accumulator bit1 bit2
      ok (cont (output, false, nextBit))
  else
    ok (done accumulator)

/-- The extracted joint body is the symbolic paired-bit body. -/
theorem glvJointExtractedBody_eq_model {Acc : Type}
    (step : Acc → Bool → Bool → Result Acc)
    (k1 k2 : ScalarArray) (state : Acc × Bool × Usize)
    (hbound : state.2.2.val ≤ 256) :
    glvJointExtractedBody step k1 k2 state =
      glvJointBody step k1 k2 state := by
  rcases state with ⟨accumulator, skipZeros, bitIndex⟩
  change bitIndex.val ≤ 256 at hbound
  unfold glvJointExtractedBody glvJointBody
  by_cases hpos : bitIndex.val > 0
  · rw [if_pos (show bitIndex > 0#usize by exact hpos), if_pos hpos]
    rw [MacCampaign.sub_eq bitIndex 1#usize (by simp; omega)]
    simp only [Result.bind_ok, Usize.ofNat_val]
    have hbit : bitIndex.val - 1 < 256 := by omega
    have hnext : ({ val := bitIndex.val - 1 } : Usize) =
        Usize.ofNat (bitIndex.val - 1) := rfl
    rw [hnext]
    rw [extracted_g1_glv_scalar_bit k1 hbit,
      extracted_g1_glv_scalar_bit k2 hbit]
    rfl
  · rw [if_neg (show ¬bitIndex > 0#usize by exact hpos), if_neg hpos]

/-- Convert the extracted finite-loop witness to the paired-bit model. -/
theorem glvJointLoopResult_to_model {Acc : Type}
    (step : Acc → Bool → Bool → Result Acc)
    (k1 k2 : ScalarArray) {state : Acc × Bool × Usize}
    {result : Result Acc}
    (hrun : LoopResult (glvJointExtractedBody step k1 k2) state result)
    (hbound : state.2.2.val ≤ 256) :
    LoopResult (glvJointBody step k1 k2) state result := by
  induction hrun with
  | done hbody =>
      apply LoopResult.done
      rwa [← glvJointExtractedBody_eq_model step k1 k2 _ hbound]
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      have hmodel : glvJointBody step k1 k2 current = .ok (.cont nextState) := by
        rwa [← glvJointExtractedBody_eq_model step k1 k2 _ hbound]
      have hnextBound : nextState.2.2.val ≤ 256 := by
        have hlt := glvJointBody_decreases step k1 k2 current nextState hmodel
        omega
      exact LoopResult.next hmodel (ih hnextBound)
  | fail hbody =>
      apply LoopResult.fail
      rwa [← glvJointExtractedBody_eq_model step k1 k2 _ hbound]
  | div hbody =>
      apply LoopResult.div
      rwa [← glvJointExtractedBody_eq_model step k1 k2 _ hbound]

#print axioms extracted_glv_bit
#print axioms extracted_g1_glv_scalar_bit
#print axioms glvJointBody_decreases
#print axioms glvJointExtractedBody_eq_model
#print axioms glvJointLoopResult_to_model

end Ipp.Extracted.ArkworksScalarMul
