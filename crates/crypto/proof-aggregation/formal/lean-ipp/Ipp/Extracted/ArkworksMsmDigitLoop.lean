import Ipp.Extracted.ArkworksMsmWindow

/-! Executed signed-window digit generation. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksScalarMul

private theorem u64_ofNat_val_of_lt {value : Nat}
    (hvalue : value < MacCampaign.u64Base) :
    (MacCampaign.U64.ofNat value).val = value := by
  simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hvalue]

private theorem u64_eq_of_val_eq {left right : MacCampaign.U64}
    (hval : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

private theorem and_two_pow_sub_one (value width : Nat) :
    value &&& (2 ^ width - 1) = value % 2 ^ width := by
  apply Nat.eq_of_testBit_eq
  intro index
  rw [Nat.testBit_land, Nat.testBit_two_pow_sub_one,
    Nat.testBit_mod_two_pow]
  by_cases hindex : index < width <;> simp [hindex]

private theorem testBit_u64_ofNat (value index : Nat) (hindex : index < 64) :
    (MacCampaign.U64.ofNat value).val.testBit index = value.testBit index := by
  change (value % 2 ^ 64).testBit index = value.testBit index
  rw [Nat.testBit_mod_two_pow]
  simp [hindex]

/-- Fixed-width bit buffer computed by the extracted branch schedule. -/
private def extractedScalarWindowBuffer (scalar : ScalarArray)
    (bit width : Nat) : Nat :=
  let wordIndex := bit / 64
  let bitIndex := bit % 64
  let low :=
    (MacCampaign.U64.ofNat
      (scalarWord scalar wordIndex >>> bitIndex)).val
  if bitIndex < 64 - width then low
  else if wordIndex = 3 then low
  else
    low |||
      (MacCampaign.U64.ofNat
        (scalarWord scalar (wordIndex + 1) <<< (64 - bitIndex))).val

private theorem extractedScalarWindowBuffer_spec (scalar : ScalarArray)
    (bit width : Nat) (hwidth64 : width < 64) (hbit : bit < 256) :
    extractedScalarWindowBuffer scalar bit width &&& (2 ^ width - 1) =
      scalarWindowBuffer scalar bit % 2 ^ width := by
  rw [and_two_pow_sub_one]
  apply Nat.eq_of_testBit_eq
  intro index
  rw [Nat.testBit_mod_two_pow, Nat.testBit_mod_two_pow]
  by_cases hindex : index < width
  · have hindex64 : index < 64 := by omega
    simp only [hindex, decide_true, Bool.true_and]
    by_cases hlower : bit % 64 < 64 - width
    · have hshift : ¬64 - bit % 64 ≤ index := by omega
      simp [extractedScalarWindowBuffer, scalarWindowBuffer, hlower,
        Nat.testBit_lor, Nat.testBit_shiftLeft, hshift,
        testBit_u64_ofNat _ index hindex64]
    · by_cases hlast : bit / 64 = 3
      · have hnext : scalarWord scalar (bit / 64 + 1) = 0 := by
          simp [scalarWord, hlast]
        have hwordFour : scalarWord scalar 4 = 0 := by
          simp [scalarWord]
        simp [extractedScalarWindowBuffer, scalarWindowBuffer, hlower, hlast,
          hnext, hwordFour, testBit_u64_ofNat _ index hindex64]
      · simp [extractedScalarWindowBuffer, scalarWindowBuffer, hlower, hlast,
          Nat.testBit_lor, testBit_u64_ofNat _ index hindex64]
  · simp [hindex]

private theorem scalar_index_exec (scalar : ScalarArray) (index : Nat)
    (hindex : index < 4) :
    ∃ word, MacCampaign.Array.index_usize scalar (Usize.ofNat index) =
        .ok word ∧
      word.val = scalarWord scalar index := by
  have hindexList : index < scalar.val.length := by
    simpa [scalar.hlen] using hindex
  let word := scalar.val[index]'hindexList
  have hexec :
      MacCampaign.Array.index_usize scalar (Usize.ofNat index) =
        .ok word := by
    simp [MacCampaign.Array.index_usize,
      List.getElem?_eq_getElem hindexList, word]
  exact ⟨word, hexec,
    scalar_index_value scalar (Usize.ofNat index) word hindex hexec⟩

/-- The scalar-window prefix of the extracted digit body, kept opaque to the loop proof. -/
private def scalarWindowWith {α : Type} (scalar : ScalarArray)
    (width index : Nat) (next : MacCampaign.U64 → Result α) : Result α := do
  let bitOffset ← Usize.ofNat index * Usize.ofNat width
  let wordIndex ← bitOffset / 64#usize
  let bitIndex ← bitOffset % 64#usize
  let lowerLimit ← 64#usize - Usize.ofNat width
  let bitBuffer ←
    if bitIndex < lowerLimit then do
      let word ← MacCampaign.Array.index_usize scalar wordIndex
      MacCampaign.shr64ByUsize word bitIndex
    else do
      let scalarSlice ← lift (MacCampaign.Array.to_slice scalar)
      let lastIndex ← Slice.len scalarSlice - 1#usize
      if wordIndex = lastIndex then do
        let word ← MacCampaign.Array.index_usize scalar wordIndex
        MacCampaign.shr64ByUsize word bitIndex
      else do
        let lowWord ← MacCampaign.Array.index_usize scalar wordIndex
        let low ← MacCampaign.shr64ByUsize lowWord bitIndex
        let nextIndex ← 1#usize + wordIndex
        let highWord ← MacCampaign.Array.index_usize scalar nextIndex
        let highShift ← 64#usize - bitIndex
        let high ← MacCampaign.shl64ByUsize highWord highShift
        ok (MacCampaign.or64 low high)
  let coefficient ←
    MacCampaign.and64 bitBuffer (MacCampaign.U64.ofNat (2 ^ width - 1))
  next coefficient

private def scalarWindowCoefficient (scalar : ScalarArray)
    (width index : Nat) : Result MacCampaign.U64 :=
  scalarWindowWith scalar width index .ok

private theorem scalarWindowWith_spec {α : Type} (scalar : ScalarArray)
    (width index : Nat) (next : MacCampaign.U64 → Result α)
    (hwidth : 0 < width) (hwidth64 : width < 64)
    (hbit : index * width < 256) :
    scalarWindowWith scalar width index next =
      next (MacCampaign.U64.ofNat
        (scalarWindowBuffer scalar (index * width) % 2 ^ width)) := by
  have hwordIndex : index * width / 64 < 4 := by omega
  have hbitIndex : index * width % 64 < 64 :=
    Nat.mod_lt _ (by decide)
  have hlowerLimit : width ≤ 64 := by omega
  have hdivEq :
      Div.div (index * width) 64 = index * width / 64 := by rfl
  have hmodEq :
      Mod.mod (index * width) 64 = index * width % 64 := by rfl
  unfold scalarWindowWith
  simp only [MacCampaign.mul_eq, Result.bind_ok]
  simp [HDiv.hDiv, HMod.hMod]
  rw [MacCampaign.sub_eq (Usize.ofNat 64) (Usize.ofNat width) hlowerLimit]
  simp only [Result.bind_ok, Usize.ofNat_val]
  by_cases hlower : index * width % 64 < 64 - width
  · have hlowerNat : index * width % 64 < 64 - width := hlower
    change Mod.mod (index * width) 64 < 64 - width at hlower
    change Div.div (index * width) 64 < 4 at hwordIndex
    change Mod.mod (index * width) 64 < 64 at hbitIndex
    rw [if_pos hlower]
    let word :=
      scalar.val[Div.div (index * width) 64]'(by
        simpa [scalar.hlen] using hwordIndex)
    have hwordIndexList :
        Div.div (index * width) 64 < scalar.val.length := by
      simpa [scalar.hlen] using hwordIndex
    have hindexExec :
        MacCampaign.Array.index_usize scalar
          (Usize.ofNat (Div.div (index * width) 64)) = .ok word := by
      simp [MacCampaign.Array.index_usize,
        List.getElem?_eq_getElem hwordIndexList, word]
    rw [hindexExec]
    simp only [Result.bind_ok]
    have hshiftExec :
        MacCampaign.shr64ByUsize word
          (Usize.ofNat (Mod.mod (index * width) 64)) =
        .ok (MacCampaign.U64.ofNat
          (word.val >>> Mod.mod (index * width) 64)) := by
      simp [MacCampaign.shr64ByUsize, hbitIndex,
        Nat.shiftRight_eq_div_pow]
    rw [hshiftExec]
    simp only [Result.bind_ok, MacCampaign.and64]
    have hwordValue :
        word.val = scalarWord scalar (Div.div (index * width) 64) :=
      scalar_index_value scalar (Usize.ofNat (Div.div (index * width) 64))
        word hwordIndex hindexExec
    have hmask :
        (MacCampaign.U64.ofNat (2 ^ width - 1)).val =
          2 ^ width - 1 := by
      apply u64_ofNat_val_of_lt
      have hpow : 2 ^ width < 2 ^ 64 :=
        Nat.pow_lt_pow_right (by decide) hwidth64
      exact lt_of_le_of_lt (Nat.sub_le _ _) (by
        simpa [MacCampaign.u64Base] using hpow)
    rw [hwordValue, hmask]
    have hsemantic :=
      extractedScalarWindowBuffer_spec scalar (index * width) width
        hwidth64 hbit
    have hbuffer :
        (MacCampaign.U64.ofNat
          (scalarWord scalar (Div.div (index * width) 64) >>>
            Mod.mod (index * width) 64)).val =
        extractedScalarWindowBuffer scalar (index * width) width := by
      simp [extractedScalarWindowBuffer, hlowerNat, hdivEq, hmodEq]
    rw [hbuffer, hsemantic]
    have hresultMod :
        Mod.mod (scalarWindowBuffer scalar (index * width)) (2 ^ width) =
          scalarWindowBuffer scalar (index * width) % 2 ^ width := by rfl
    rw [hresultMod]
  · have hlowerNat : ¬index * width % 64 < 64 - width := hlower
    change ¬Mod.mod (index * width) 64 < 64 - width at hlower
    rw [if_neg hlower]
    simp only [lift, Result.bind_ok, MacCampaign.Array.to_slice, Slice.len]
    rw [MacCampaign.sub_eq
      ({ val := scalar.val.length } : Usize) 1#usize (by
      simp [scalar.hlen])]
    simp only [Result.bind_ok, scalar.hlen, Usize.ofNat_val, Nat.reduceSub]
    change Div.div (index * width) 64 < 4 at hwordIndex
    change Mod.mod (index * width) 64 < 64 at hbitIndex
    by_cases hlast : Div.div (index * width) 64 = 3
    · have hlastNat : index * width / 64 = 3 :=
        hdivEq.symm.trans hlast
      have hlastU :
          Usize.ofNat (Div.div (index * width) 64) =
            ({ val := 3 } : Usize) := by
        exact congrArg (fun value => ({ val := value } : Usize)) hlast
      rw [if_pos hlastU]
      obtain ⟨word, hwordExec, hwordValue⟩ :=
        scalar_index_exec scalar (Div.div (index * width) 64) hwordIndex
      rw [hwordExec]
      simp only [Result.bind_ok]
      have hshiftExec :
          MacCampaign.shr64ByUsize word
            (Usize.ofNat (Mod.mod (index * width) 64)) =
          .ok (MacCampaign.U64.ofNat
            (word.val >>> Mod.mod (index * width) 64)) := by
        simp [MacCampaign.shr64ByUsize, hbitIndex,
          Nat.shiftRight_eq_div_pow]
      rw [hshiftExec]
      simp only [Result.bind_ok, MacCampaign.and64]
      have hmask :
          (MacCampaign.U64.ofNat (2 ^ width - 1)).val =
            2 ^ width - 1 := by
        apply u64_ofNat_val_of_lt
        have hpow : 2 ^ width < 2 ^ 64 :=
          Nat.pow_lt_pow_right (by decide) hwidth64
        exact lt_of_le_of_lt (Nat.sub_le _ _) (by
          simpa [MacCampaign.u64Base] using hpow)
      rw [hwordValue, hmask]
      have hsemantic :=
        extractedScalarWindowBuffer_spec scalar (index * width) width
          hwidth64 hbit
      have hbuffer :
          (MacCampaign.U64.ofNat
            (scalarWord scalar (Div.div (index * width) 64) >>>
              Mod.mod (index * width) 64)).val =
          extractedScalarWindowBuffer scalar (index * width) width := by
        simp [extractedScalarWindowBuffer, hlowerNat, hlastNat, hdivEq, hmodEq]
      rw [hbuffer, hsemantic]
      have hresultMod :
          Mod.mod (scalarWindowBuffer scalar (index * width)) (2 ^ width) =
            scalarWindowBuffer scalar (index * width) % 2 ^ width := by rfl
      rw [hresultMod]
    · rw [if_neg (by
        intro heq
        apply hlast
        exact congrArg Usize.val heq)]
      have hnextIndex : 1 + Div.div (index * width) 64 < 4 := by
        omega
      obtain ⟨lowWord, hlowExec, hlowValue⟩ :=
        scalar_index_exec scalar (Div.div (index * width) 64) hwordIndex
      obtain ⟨highWord, hhighExec, hhighValue⟩ :=
        scalar_index_exec scalar (1 + Div.div (index * width) 64)
          hnextIndex
      rw [hlowExec]
      simp only [Result.bind_ok]
      have hlowShiftExec :
          MacCampaign.shr64ByUsize lowWord
              (Usize.ofNat (Mod.mod (index * width) 64)) =
            .ok (MacCampaign.U64.ofNat
              (lowWord.val >>> Mod.mod (index * width) 64)) := by
        simp [MacCampaign.shr64ByUsize, hbitIndex,
          Nat.shiftRight_eq_div_pow]
      rw [hlowShiftExec]
      simp only [Result.bind_ok]
      have hhighExec' :
          MacCampaign.Array.index_usize scalar
              ({ val := 1 + Div.div (index * width) 64 } : Usize) =
            .ok highWord := by
        exact hhighExec
      rw [hhighExec']
      simp only [Result.bind_ok]
      have hhighShiftBound :
          64 - Mod.mod (index * width) 64 < 64 := by
        omega
      rw [MacCampaign.sub_eq (Usize.ofNat 64)
        (Usize.ofNat (Mod.mod (index * width) 64)) (by
          change Mod.mod (index * width) 64 ≤ 64
          omega)]
      simp only [Result.bind_ok, Usize.ofNat_val]
      have hhighShiftExec :
          MacCampaign.shl64ByUsize highWord
              (Usize.ofNat (64 - Mod.mod (index * width) 64)) =
            .ok (MacCampaign.U64.ofNat
              (highWord.val <<< (64 - Mod.mod (index * width) 64))) := by
        simp [MacCampaign.shl64ByUsize, hhighShiftBound,
          Nat.shiftLeft_eq]
      have hhighShiftExec' :
          MacCampaign.shl64ByUsize highWord
              ({ val := 64 - Mod.mod (index * width) 64 } : Usize) =
            .ok (MacCampaign.U64.ofNat
              (highWord.val <<< (64 - Mod.mod (index * width) 64))) := by
        exact hhighShiftExec
      rw [hhighShiftExec']
      simp only [Result.bind_ok, MacCampaign.and64, MacCampaign.or64]
      rw [hlowValue, hhighValue]
      have hmask :
          (MacCampaign.U64.ofNat (2 ^ width - 1)).val =
            2 ^ width - 1 := by
        apply u64_ofNat_val_of_lt
        have hpow : 2 ^ width < 2 ^ 64 :=
          Nat.pow_lt_pow_right (by decide) hwidth64
        exact lt_of_le_of_lt (Nat.sub_le _ _) (by
          simpa [MacCampaign.u64Base] using hpow)
      rw [hmask]
      let low :=
        MacCampaign.U64.ofNat
          (scalarWord scalar (Div.div (index * width) 64) >>>
            Mod.mod (index * width) 64)
      let high :=
        MacCampaign.U64.ofNat
          (scalarWord scalar (1 + Div.div (index * width) 64) <<<
            (64 - Mod.mod (index * width) 64))
      have horLt : low.val ||| high.val < 2 ^ 64 := by
        apply Nat.bitwise_lt_two_pow
        · simpa [MacCampaign.u64Base] using low.isLt
        · simpa [MacCampaign.u64Base] using high.isLt
      have horValue :
          (MacCampaign.U64.ofNat (low.val ||| high.val)).val =
            low.val ||| high.val :=
        u64_ofNat_val_of_lt (by
          simpa [MacCampaign.u64Base] using horLt)
      change next (MacCampaign.U64.ofNat
        ((MacCampaign.U64.ofNat (low.val ||| high.val)).val &&&
          (2 ^ width - 1))) =
        next (MacCampaign.U64.ofNat
          (Mod.mod (scalarWindowBuffer scalar (index * width)) (2 ^ width)))
      rw [horValue]
      have hlastNat : ¬index * width / 64 = 3 := by
        intro heq
        exact hlast (hdivEq.trans heq)
      have hbuffer :
          low.val ||| high.val =
            extractedScalarWindowBuffer scalar (index * width) width := by
        simp [low, high, extractedScalarWindowBuffer, hlowerNat, hlastNat,
          hdivEq, hmodEq, Nat.add_comm]
      rw [hbuffer,
        extractedScalarWindowBuffer_spec scalar (index * width) width
          hwidth64 hbit]
      have hresultMod :
          Mod.mod (scalarWindowBuffer scalar (index * width)) (2 ^ width) =
            scalarWindowBuffer scalar (index * width) % 2 ^ width := by rfl
      rw [hresultMod]

private theorem scalarWindowCoefficient_spec (scalar : ScalarArray)
    (width index : Nat) (hwidth : 0 < width) (hwidth64 : width < 64)
    (hbit : index * width < 256) :
    scalarWindowCoefficient scalar width index =
      .ok (MacCampaign.U64.ofNat
        (scalarWindowBuffer scalar (index * width) % 2 ^ width)) := by
  exact scalarWindowWith_spec scalar width index .ok hwidth hwidth64 hbit

private def digitAfterCoefficient (width : Nat) (radix : MacCampaign.U64)
    (digitsCount : Usize) (carry coefficient : MacCampaign.U64)
    (digits : alloc.vec.Vec WnafDigit) (index : Usize) :
    Result (ControlFlow
      (MacCampaign.U64 × alloc.vec.Vec WnafDigit × Usize)
      (alloc.vec.Vec WnafDigit)) := do
  let coefficientWithCarry ← MacCampaign.add64 carry coefficient
  let half ← MacCampaign.div64 radix (MacCampaign.U64.ofNat 2)
  let rounded ← MacCampaign.add64 coefficientWithCarry half
  let nextCarry ← MacCampaign.shr64ByUsize rounded (Usize.ofNat width)
  let lastIndex ← digitsCount - 1#usize
  let (last, magnitude) ←
    if index = lastIndex then
      ok (true, coefficientWithCarry)
    else do
      let magnitude ←
        if nextCarry = MacCampaign.U64.ofNat 0 then
          ok coefficientWithCarry
        else
          MacCampaign.sub64 radix coefficientWithCarry
      ok (false, magnitude)
  let negative ←
    if last then
      ok false
    else if nextCarry != MacCampaign.U64.ofNat 0 then
      ok (magnitude != MacCampaign.U64.ofNat 0)
    else
      ok false
  let nextDigits ← alloc.vec.Vec.push digits { negative, magnitude }
  let nextIndex ← index + 1#usize
  ok (.cont (nextCarry, nextDigits, nextIndex))

private theorem digitAfterCoefficient_spec (width count carry coefficient index : Nat)
    (digits : alloc.vec.Vec WnafDigit)
    (hwidth : 0 < width) (hwidth64 : width < 64)
    (hcount : 0 < count) (hindex : index < count)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < 2 ^ width) :
    digitAfterCoefficient width (MacCampaign.U64.ofNat (2 ^ width))
        (Usize.ofNat count) (MacCampaign.U64.ofNat carry)
        (MacCampaign.U64.ofNat coefficient) digits (Usize.ofNat index) =
      .ok (.cont
        (MacCampaign.U64.ofNat (nextCarry (2 ^ width) carry coefficient),
          ⟨digits.val ++
            [if index + 1 = count then finalDigit carry coefficient
             else nonfinalDigit (2 ^ width) carry coefficient]⟩,
          Usize.ofNat (index + 1))) := by
  have hradix : 2 ^ width < MacCampaign.u64Base := by
    simpa [MacCampaign.u64Base] using
      (Nat.pow_lt_pow_right (by decide : 1 < 2) hwidth64)
  have hcarryWord : carry < MacCampaign.u64Base := by omega
  have hcoefficientWord : coefficient < MacCampaign.u64Base :=
    lt_trans hcoefficient hradix
  have hsum : carry + coefficient ≤ 2 ^ width := by omega
  have hsumWord : carry + coefficient < MacCampaign.u64Base :=
    lt_of_le_of_lt hsum hradix
  have hhalf : 2 ^ width / 2 < 2 ^ width :=
    Nat.div_lt_self (Nat.pow_pos (by decide)) (by omega)
  have hroundedWord :
      carry + coefficient + 2 ^ width / 2 < MacCampaign.u64Base := by
    have hpowLe : 2 ^ width ≤ 2 ^ 63 := by
      exact Nat.pow_le_pow_right (by decide) (by omega)
    have : carry + coefficient + 2 ^ width / 2 < 2 ^ 64 := by
      omega
    simpa [MacCampaign.u64Base] using this
  have hradixTwo : 2 ≤ 2 ^ width := by
    cases width with
    | zero => omega
    | succ exponent =>
        simp only [pow_succ]
        have := Nat.pow_pos (a := 2) (n := exponent) (by decide)
        omega
  have hnext :
      nextCarry (2 ^ width) carry coefficient ≤ 1 :=
    nextCarry_le_one (2 ^ width) carry coefficient hradixTwo hcarry
      hcoefficient
  have hnextWord :
      nextCarry (2 ^ width) carry coefficient < MacCampaign.u64Base := by
    omega
  have hcountLe : 1 ≤ count := by omega
  have hsumVal :
      (MacCampaign.U64.ofNat carry).val +
          (MacCampaign.U64.ofNat coefficient).val =
        carry + coefficient := by
    simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hcarryWord,
      Nat.mod_eq_of_lt hcoefficientWord]
  have hsumWordEq :
      ({ val := carry + coefficient, isLt := hsumWord } :
          MacCampaign.U64) =
        MacCampaign.U64.ofNat (carry + coefficient) := by
    apply u64_eq_of_val_eq
    simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hsumWord]
  have hradixVal :
      (MacCampaign.U64.ofNat (2 ^ width)).val = 2 ^ width :=
    u64_ofNat_val_of_lt hradix
  have hhalfVal :
      (MacCampaign.U64.ofNat (2 ^ width / 2)).val = 2 ^ width / 2 :=
    u64_ofNat_val_of_lt (lt_trans hhalf hradix)
  have hnextVal :
      (MacCampaign.U64.ofNat
        (nextCarry (2 ^ width) carry coefficient)).val =
        nextCarry (2 ^ width) carry coefficient :=
    u64_ofNat_val_of_lt hnextWord
  unfold digitAfterCoefficient
  simp only [hsumVal, MacCampaign.add64, hsumWord, ↓reduceDIte,
    Result.bind_ok]
  simp only [MacCampaign.div64]
  rw [hradixVal]
  rw [show (MacCampaign.U64.ofNat 2).val = 2 by decide]
  simp only [OfNat.ofNat, Nat.reduceEqDiff, ↓reduceIte, Result.bind_ok]
  rw [hhalfVal]
  simp only [MacCampaign.add64, hroundedWord, ↓reduceDIte, Result.bind_ok,
    MacCampaign.shr64ByUsize, Usize.ofNat_val, hwidth64, ↓reduceIte]
  have hnextDef :
      (carry + coefficient + 2 ^ width / 2) / 2 ^ width =
        nextCarry (2 ^ width) carry coefficient := rfl
  rw [hnextDef]
  rw [MacCampaign.sub_eq (Usize.ofNat count) 1#usize hcountLe]
  simp only [Result.bind_ok, Usize.ofNat_val]
  have hlast : index = count - 1 ↔ index + 1 = count := by omega
  by_cases hfinal : index + 1 = count
  · have hfinalU :
        Usize.ofNat index = ({ val := count - 1 } : Usize) := by
      exact congrArg Usize.ofNat (hlast.mpr hfinal)
    rw [if_pos hfinalU, if_pos hfinal]
    simp [alloc.vec.Vec.push, finalDigit, hsumWordEq, add_eq, Usize.ofNat]
  · have hfinalU :
        Usize.ofNat index ≠ ({ val := count - 1 } : Usize) := by
      intro heq
      apply hfinal
      apply hlast.mp
      exact congrArg Usize.val heq
    rw [if_neg hfinalU, if_neg hfinal]
    have hsub : carry + coefficient ≤ 2 ^ width := hsum
    have hsubWord :
        2 ^ width - (carry + coefficient) < MacCampaign.u64Base :=
      lt_of_le_of_lt (Nat.sub_le _ _) hradix
    by_cases hnextZero :
        nextCarry (2 ^ width) carry coefficient = 0
    · have hnextWordZero :
        MacCampaign.U64.ofNat
            (nextCarry (2 ^ width) carry coefficient) =
          MacCampaign.U64.ofNat 0 := by simp [hnextZero]
      simp [hnextWordZero, alloc.vec.Vec.push, nonfinalDigit,
        nonfinalMagnitude, hnextZero, hsumWordEq, add_eq, Usize.ofNat]
    · have hnextWordNe :
        MacCampaign.U64.ofNat
            (nextCarry (2 ^ width) carry coefficient) ≠
          MacCampaign.U64.ofNat 0 := by
        intro heq
        have := congrArg MacCampaign.U64.val heq
        apply hnextZero
        simpa [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hnextWord] using this
      have hnextBool :
          (MacCampaign.U64.ofNat
              (nextCarry (2 ^ width) carry coefficient) !=
            MacCampaign.U64.ofNat 0) = true := by
        simp [hnextWordNe]
      simp only [hnextWordNe, ↓reduceIte, Result.bind_ok,
        MacCampaign.sub64, hradixVal, hsub, ↓reduceDIte]
      have hsubVal :
          (MacCampaign.U64.ofNat (2 ^ width - (carry + coefficient))).val =
            2 ^ width - (carry + coefficient) :=
        u64_ofNat_val_of_lt hsubWord
      have hsubWordEq :
          ({ val := 2 ^ width - (carry + coefficient),
              isLt := hsubWord } : MacCampaign.U64) =
            MacCampaign.U64.ofNat
              (2 ^ width - (carry + coefficient)) := by
        apply u64_eq_of_val_eq
        simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hsubWord]
      simp only [Bool.false_eq_true, ↓reduceIte, hnextBool, Result.bind_ok,
        alloc.vec.Vec.push, add_eq, Usize.ofNat_val]
      simp only [nonfinalDigit, nonfinalMagnitude, hnextZero, ↓reduceIte,
        List.append_cancel_left_eq, List.cons.injEq, and_true]
      have hsign :
          (MacCampaign.U64.ofNat
              (2 ^ width - (carry + coefficient)) !=
              MacCampaign.U64.ofNat 0) =
            decide (nextCarry (2 ^ width) carry coefficient ≠ 0 ∧
              2 ^ width - (carry + coefficient) ≠ 0) := by
        by_cases hzero : 2 ^ width - (carry + coefficient) = 0
        · simp [hzero]
        · have hwordNe :
              MacCampaign.U64.ofNat
                  (2 ^ width - (carry + coefficient)) ≠
                MacCampaign.U64.ofNat 0 := by
            intro heq
            have := congrArg MacCampaign.U64.val heq
            rw [hsubVal] at this
            apply hzero
            simpa [MacCampaign.U64.ofNat] using this
          simp [hnextZero, hzero, hwordNe]
      simpa only [hsign, hsubWordEq, Usize.ofNat]

private theorem makeDigitsBody_eq (scalar : ScalarArray) (width count : Nat)
    (carry : MacCampaign.U64) (digits : alloc.vec.Vec WnafDigit)
    (index : Nat) (hwidth : width < 64) (hcount : 0 < count) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits_loop.body
        scalar (Usize.ofNat width) (MacCampaign.U64.ofNat (2 ^ width))
        (MacCampaign.U64.ofNat (2 ^ width - 1)) (Usize.ofNat count)
        carry digits (Usize.ofNat index) =
      if index < count then
        scalarWindowWith scalar width index fun coefficient =>
          digitAfterCoefficient width (MacCampaign.U64.ofNat (2 ^ width))
            (Usize.ofNat count) carry coefficient digits (Usize.ofNat index)
      else
        .ok (.done digits) := by
  have hwidthLe : width ≤ 64 := by omega
  have hcountLe : 1 ≤ count := by omega
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits_loop.body
    scalarWindowWith digitAfterCoefficient
  simp only [Usize.lt_iff_val_lt, Usize.ofNat_val, HAnd.hAnd, HOr.hOr,
    HAdd.hAdd, HDiv.hDiv, HShiftRight.hShiftRight, HShiftLeft.hShiftLeft,
    HSub.hSub]
  simp [hwidthLe, hcountLe, Usize.ofNat, MacCampaign.and64, lift, Result.bind,
    Nat.mod_lt _ (by decide : 0 < 64)]
  rfl

/-- One continuing extracted digit-body step realizes the pure signed-digit step. -/
theorem makeDigitsBody_step (scalar : ScalarArray) (width count carry index : Nat)
    (digits : alloc.vec.Vec WnafDigit)
    (hwidth : 0 < width) (hwidth64 : width < 64)
    (hcount : 0 < count) (hindex : index < count)
    (hbit : index * width < 256) (hcarry : carry ≤ 1) :
    let coefficient :=
      scalarWindowBuffer scalar (index * width) % 2 ^ width
    ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits_loop.body
        scalar (Usize.ofNat width) (MacCampaign.U64.ofNat (2 ^ width))
        (MacCampaign.U64.ofNat (2 ^ width - 1)) (Usize.ofNat count)
        (MacCampaign.U64.ofNat carry) digits (Usize.ofNat index) =
      .ok (.cont
        (MacCampaign.U64.ofNat
            (nextCarry (2 ^ width) carry coefficient),
          ⟨digits.val ++
            [if index + 1 = count then finalDigit carry coefficient
             else nonfinalDigit (2 ^ width) carry coefficient]⟩,
          Usize.ofNat (index + 1))) := by
  dsimp only
  rw [makeDigitsBody_eq scalar width count (MacCampaign.U64.ofNat carry)
    digits index hwidth64 hcount, if_pos hindex,
    scalarWindowWith_spec scalar width index _ hwidth hwidth64 hbit]
  apply digitAfterCoefficient_spec width count carry
    (scalarWindowBuffer scalar (index * width) % 2 ^ width) index digits
    hwidth hwidth64 hcount hindex hcarry
  exact Nat.mod_lt _ (by positivity)

/-- At or beyond the digit count, the extracted digit body returns the vector. -/
theorem makeDigitsBody_done (scalar : ScalarArray) (width count : Nat)
    (carry : MacCampaign.U64) (digits : alloc.vec.Vec WnafDigit) (index : Nat)
    (hwidth64 : width < 64) (hcount : 0 < count) (hindex : count ≤ index) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits_loop.body
        scalar (Usize.ofNat width) (MacCampaign.U64.ofNat (2 ^ width))
        (MacCampaign.U64.ofNat (2 ^ width - 1)) (Usize.ofNat count)
        carry digits (Usize.ofNat index) =
      .ok (.done digits) := by
  rw [makeDigitsBody_eq scalar width count carry digits index hwidth64 hcount,
    if_neg (by omega)]

#print axioms and_two_pow_sub_one
#print axioms makeDigitsBody_step
#print axioms makeDigitsBody_done

end Ipp.Extracted.ArkworksMsm
