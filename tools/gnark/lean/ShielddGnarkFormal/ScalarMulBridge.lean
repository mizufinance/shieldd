import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.EdwardsCompleteness
import ShielddGnarkFormal.Extracted.ScalarMulLE128
import ShielddGnarkFormal.Extracted.ScalarMulLE251
import ProvenZk.Lemmas
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false

/-!
Bridge for the hint-free scalar-mul extraction mirrors.

The generated circuits are a little-endian ladder over the already-bridged
Edwards add/double mirrors. This file collapses each generated rung to that
semantic step, then threads on-curve closure through the ladder.
-/

namespace Shieldd.GnarkFormal.ScalarMulBridge


open Bool (toZMod)

abbrev F := EdwardsBridge.F

theorem pow128_lt_order : 2 ^ 128 < Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order := by
  decide +kernel

theorem pow251_lt_order : 2 ^ 251 < Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order := by
  decide +kernel

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsNeg.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.ScalarMulLE128.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.ScalarMulLE251.Order) := ‹_›
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafAssertEquivalent.Order) := ‹_›
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafCompressToField.Order) := ‹_›

def toA (p : EdwardsBridge.Point) : Decaf377Assumptions.Point := ⟨p.x, p.y⟩

@[simp] theorem toA_addF (p q : EdwardsBridge.Point) :
    toA (EdwardsBridge.addF p q) = Decaf377Assumptions.add (toA p) (toA q) := by
  simp only [toA, EdwardsBridge.addF, Decaf377Assumptions.add, Decaf377Assumptions.curveD, EdwardsBridge.d]

@[simp] theorem toA_doubleF (p : EdwardsBridge.Point) :
    toA (EdwardsBridge.doubleF p) = Decaf377Assumptions.double (toA p) := by
  simp only [toA, EdwardsBridge.doubleF, Decaf377Assumptions.double]

@[simp] theorem toA_negF (p : EdwardsBridge.Point) :
    toA (EdwardsBridge.negF p) = Decaf377Assumptions.neg (toA p) := by
  simp only [toA, EdwardsBridge.negF, Decaf377Assumptions.neg]

def StepRel (bit : F) (acc cur acc' cur' : EdwardsBridge.Point) : Prop :=
  ∃ sum,
    EdwardsBridge.addSpec acc cur sum ∧
    GatesDef.select bit sum.x acc.x acc'.x ∧
    GatesDef.select bit sum.y acc.y acc'.y ∧
    EdwardsBridge.doubleSpec cur cur'

@[simp] theorem scalarMulStep128_uncps
    (bit ax ay cx cy : F) (k : List.Vector F 4 → Prop) :
    Extracted.ScalarMulLE128.scalarMulStep bit ax ay cx cy k ↔
      ∃ acc' cur',
        StepRel bit ⟨ax, ay⟩ ⟨cx, cy⟩ acc' cur' ∧
        k vec![acc'.x, acc'.y, cur'.x, cur'.y] := by
  simp only [Extracted.ScalarMulLE128.scalarMulStep, StepRel, EdwardsBridge.addSpec, EdwardsBridge.doubleSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.ScalarMulLE128.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    exists_eq_left]
  constructor
  · rintro ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩
    exact ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
  · rintro ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
    exact ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩

@[simp] theorem scalarMulStep251_uncps
    (bit ax ay cx cy : F) (k : List.Vector F 4 → Prop) :
    Extracted.ScalarMulLE251.scalarMulStep bit ax ay cx cy k ↔
      ∃ acc' cur',
        StepRel bit ⟨ax, ay⟩ ⟨cx, cy⟩ acc' cur' ∧
        k vec![acc'.x, acc'.y, cur'.x, cur'.y] := by
  simp only [Extracted.ScalarMulLE251.scalarMulStep, StepRel, EdwardsBridge.addSpec, EdwardsBridge.doubleSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.ScalarMulLE251.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    exists_eq_left]
  constructor
  · rintro ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩
    exact ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
  · rintro ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
    exact ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩

private theorem select_bool_value (b : Bool) (t f out : F)
    (h : GatesDef.select (toZMod b : F) t f out) :
    out = if b then t else f := by
  dsimp [GatesDef.select] at h
  rcases h with ⟨_, hout⟩
  cases b <;> simp [Bool.toZMod_zero, Bool.toZMod_one] at hout ⊢ <;>
    linear_combination hout

theorem stepRel_semantic (b : Bool) (acc cur acc' cur' : EdwardsBridge.Point)
    (h : StepRel (toZMod b : F) acc cur acc' cur')
    (hacc : EdwardsBridge.onCurve acc) (hcur : EdwardsBridge.onCurve cur) :
    acc' = (if b then EdwardsBridge.addF acc cur else acc) ∧
    cur' = EdwardsBridge.doubleF cur ∧
    EdwardsBridge.onCurve acc' ∧ EdwardsBridge.onCurve cur' := by
  rcases h with ⟨sum, hadd, hselX, hselY, hdbl⟩
  have hsum : sum = EdwardsBridge.addF acc cur := EdwardsBridge.addSpec_eq acc cur sum hacc hcur hadd
  have hcur' : cur' = EdwardsBridge.doubleF cur := EdwardsBridge.doubleSpec_eq cur cur' hcur hdbl
  have hx := select_bool_value b sum.x acc.x acc'.x hselX
  have hy := select_bool_value b sum.y acc.y acc'.y hselY
  have hacc' : acc' = (if b then EdwardsBridge.addF acc cur else acc) := by
    cases b
    · simp only [Bool.false_eq_true, ↓reduceIte] at hx hy ⊢
      cases acc' with
      | mk x y =>
        cases acc with
        | mk ax ay =>
          simp only at hx hy ⊢
          cases hx
          cases hy
          rfl
    · simp only [↓reduceIte] at hx hy ⊢
      rw [hsum] at hx hy
      cases acc' with
      | mk x y =>
        cases hsumF : EdwardsBridge.addF acc cur with
        | mk sx sy =>
          simp only [hsumF] at hx hy ⊢
          cases hx
          cases hy
          rfl
  refine ⟨hacc', hcur', ?_, ?_⟩
  · rw [hacc']
    cases b
    · simpa using hacc
    · exact EdwardsBridge.add_onCurve acc cur hacc hcur
  · rw [hcur']
    exact EdwardsBridge.double_onCurve cur hcur

def finalK (outX outY : F) (state : List.Vector F 4) : Prop :=
  GatesDef.eq state[0] outX ∧ GatesDef.eq state[1] outY ∧ True

def ladderK {n : ℕ} (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
  | 0, _, acc, cur => k vec![acc.x, acc.y, cur.x, cur.y]
  | fuel + 1, bitIndex, acc, cur =>
      ∃ acc' cur',
        StepRel bits[bitIndex]! acc cur acc' cur' ∧
        ladderK bits k fuel (bitIndex + 1) acc' cur'

theorem scalarMulLE128_eq_ladderK (baseX baseY scalar outX outY : F) :
    Extracted.ScalarMulLE128.circuit baseX baseY scalar outX outY ↔
      ∃ bits, GatesDef.to_binary scalar 128 bits ∧
        ladderK bits (finalK outX outY) 128 0 ⟨0, 1⟩ ⟨baseX, baseY⟩ := by
  unfold Extracted.ScalarMulLE128.circuit finalK
  simp (config := { maxSteps := 10000000 }) only [scalarMulStep128_uncps,
    Extracted.ScalarMulLE128.Gates, GatesGnark9, GatesGnark8, GatesDef.eq]
  rfl

def extractedLadderK251 {n : ℕ} (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
  | 0, _, acc, cur => k vec![acc.x, acc.y, cur.x, cur.y]
  | fuel + 1, bitIndex, acc, cur =>
      Extracted.ScalarMulLE251.scalarMulStep bits[bitIndex]! acc.x acc.y cur.x cur.y
        (fun state =>
          extractedLadderK251 bits k fuel (bitIndex + 1)
            ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)

theorem scalarMulLE251_eq_extractedLadderK (baseX baseY scalar outX outY : F) :
    Extracted.ScalarMulLE251.circuit baseX baseY scalar outX outY ↔
      ∃ bits, GatesDef.to_binary scalar 251 bits ∧
        extractedLadderK251 bits (finalK outX outY) 251 0 ⟨0, 1⟩ ⟨baseX, baseY⟩ := by
  unfold Extracted.ScalarMulLE251.circuit extractedLadderK251 finalK
  simp (config := { maxSteps := 1000000 }) only [Extracted.ScalarMulLE251.Gates,
    GatesGnark9, GatesGnark8, GatesDef.eq]
  rfl

def scalarMulFromBits {n : ℕ} (bits : List.Vector Bool n) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → EdwardsBridge.Point
  | 0, _, acc, _ => acc
  | fuel + 1, bitIndex, acc, cur =>
      let acc' := if bits[bitIndex]! then EdwardsBridge.addF acc cur else acc
      scalarMulFromBits bits fuel (bitIndex + 1) acc' (EdwardsBridge.doubleF cur)

theorem ofBitsLE_cons_val {n : ℕ} (hd : Bool) (tl : List.Vector Bool n) :
    (Fin.ofBitsLE (hd ::ᵥ tl)).val = Nat.bit hd (Fin.ofBitsLE tl).val := by
  simp [Fin.ofBitsLE, List.Vector.reverse_cons, Fin.ofBitsBE_snoc]
  cases hd
  · simp [Nat.bit]
  · simp [Nat.bit, Nat.add_comm]

theorem ofBitsLE_testBit {n : ℕ} (bits : List.Vector Bool n) :
    ∀ i, i < n → (Fin.ofBitsLE bits).val.testBit i = bits[i]! := by
  induction n with
  | zero => intro i hi; omega
  | succ n ih =>
    intro i hi
    cases bits using List.Vector.casesOn with
    | cons hd tl =>
      cases i with
      | zero =>
        rw [ofBitsLE_cons_val]
        rw [Nat.testBit_bit_zero]
        rw [getElem!_pos (hd ::ᵥ tl) 0 (by omega)]
        simp
      | succ i =>
        have hi' : i < n := by omega
        rw [ofBitsLE_cons_val]
        rw [Nat.testBit_bit_succ]
        rw [getElem!_pos (hd ::ᵥ tl) (i + 1) hi]
        rw [List.Vector.get_succ_nat]
        rw [← getElem!_pos tl i hi']
        exact ih tl i hi'

theorem toBitsLE_get!_eq_testBit {n : ℕ} (m : ℕ) (hm : m < 2 ^ n)
    (i : ℕ) (hi : i < n) :
    (Fin.toBitsLE (⟨m, hm⟩ : Fin (2 ^ n)))[i]! = m.testBit i := by
  have h := ofBitsLE_testBit (Fin.toBitsLE (⟨m, hm⟩ : Fin (2 ^ n))) i hi
  rw [Fin.ofBitsLE_toBitsLE_eq_self] at h
  exact h.symm

theorem scalarMulFromBits_toA {n : ℕ} (bits : List.Vector Bool n) (scalar : F) :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      (∀ i, bitIndex ≤ i → i < bitIndex + fuel → bits[i]! = scalar.val.testBit i) →
      toA (scalarMulFromBits bits fuel bitIndex acc cur) =
        Decaf377Assumptions.scalarMulLEFrom scalar fuel bitIndex (toA acc) (toA cur) := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur _ _
    rfl
  | succ fuel ih =>
    intro bitIndex acc cur hbound hbits
    have hidx : bitIndex < n := by omega
    have hbit : bits[bitIndex]! = scalar.val.testBit bitIndex :=
      hbits bitIndex (by omega) (by omega)
    simp only [scalarMulFromBits, Decaf377Assumptions.scalarMulLEFrom]
    rw [hbit]
    simp only [Decaf377Assumptions.select]
    cases scalar.val.testBit bitIndex
    · simpa [toA_doubleF] using
        ih (bitIndex + 1) acc (EdwardsBridge.doubleF cur) (by omega)
        (by intro i hi0 hi1; exact hbits i (by omega) (by omega))
    · simpa [toA_addF, toA_doubleF] using
        ih (bitIndex + 1) (EdwardsBridge.addF acc cur) (EdwardsBridge.doubleF cur)
          (by omega) (by intro i hi0 hi1; exact hbits i (by omega) (by omega))

theorem ladderK_final_semantic {n : ℕ} (bits : List.Vector Bool n) (outX outY : F) :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      EdwardsBridge.onCurve acc →
      EdwardsBridge.onCurve cur →
      ladderK (bits.map toZMod) (finalK outX outY) fuel bitIndex acc cur →
        EdwardsBridge.onCurve (scalarMulFromBits bits fuel bitIndex acc cur) ∧
        finalK outX outY vec![
          (scalarMulFromBits bits fuel bitIndex acc cur).x,
          (scalarMulFromBits bits fuel bitIndex acc cur).y,
          cur.x,
          cur.y] := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur _ hacc _ h
    have hk : finalK outX outY vec![acc.x, acc.y, cur.x, cur.y] := by
      simpa [ladderK] using h
    exact ⟨hacc, hk⟩
  | succ fuel ih =>
    intro bitIndex acc cur hbound hacc hcur h
    rw [ladderK] at h
    rcases h with ⟨acc', cur', hstep, htail⟩
    have hlt : bitIndex < n := by omega
    have hbit :
        ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
      rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
        getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
    rw [hbit] at hstep
    have hsem := stepRel_semantic bits[bitIndex]! acc cur acc' cur' hstep hacc hcur
    rcases hsem with ⟨hacc', hcur', haccOn, hcurOn⟩
    have htail' := ih (bitIndex + 1) acc' cur' (by omega) haccOn hcurOn htail
    simpa [scalarMulFromBits, finalK, hacc', hcur'] using htail'

theorem extractedLadderK251_final_semantic {n : ℕ} (bits : List.Vector Bool n)
    (outX outY : F) :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      EdwardsBridge.onCurve acc →
      EdwardsBridge.onCurve cur →
      extractedLadderK251 (bits.map toZMod) (finalK outX outY) fuel bitIndex acc cur →
        EdwardsBridge.onCurve (scalarMulFromBits bits fuel bitIndex acc cur) ∧
        finalK outX outY vec![
          (scalarMulFromBits bits fuel bitIndex acc cur).x,
          (scalarMulFromBits bits fuel bitIndex acc cur).y,
          cur.x,
          cur.y] := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur _ hacc _ h
    have hk : finalK outX outY vec![acc.x, acc.y, cur.x, cur.y] := by
      simpa [extractedLadderK251] using h
    exact ⟨hacc, hk⟩
  | succ fuel ih =>
    intro bitIndex acc cur hbound hacc hcur h
    rw [extractedLadderK251] at h
    have hlt : bitIndex < n := by omega
    have hbit :
        ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
      rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
        getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
    rw [hbit] at h
    have hstep := (scalarMulStep251_uncps (toZMod bits[bitIndex]!) acc.x acc.y cur.x cur.y
      (fun state =>
        extractedLadderK251 (bits.map toZMod) (finalK outX outY) fuel (bitIndex + 1)
          ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)).mp h
    rcases hstep with ⟨acc', cur', hrel, htail⟩
    have htail' :
        extractedLadderK251 (bits.map toZMod) (finalK outX outY) fuel (bitIndex + 1)
          acc' cur' := by
      simpa using htail
    have hsem := stepRel_semantic bits[bitIndex]! acc cur acc' cur' hrel hacc hcur
    rcases hsem with ⟨hacc', hcur', haccOn, hcurOn⟩
    have htailSem := ih (bitIndex + 1) acc' cur' (by omega) haccOn hcurOn htail'
    simpa [scalarMulFromBits, finalK, hacc', hcur'] using htailSem

private theorem point_eq_of_finalK {p : EdwardsBridge.Point} {outX outY z w : F}
    (h : finalK outX outY vec![p.x, p.y, z, w]) :
    p = ⟨outX, outY⟩ := by
  change p.x = outX ∧ p.y = outY ∧ True at h
  rcases h with ⟨hx, hy, -⟩
  cases p
  simp only at hx hy ⊢
  cases hx
  cases hy
  rfl

theorem scalarMulLE128_sound
    (baseX baseY scalar outX outY : F)
    (hbase : EdwardsBridge.onCurve ⟨baseX, baseY⟩)
    (h : Extracted.ScalarMulLE128.circuit baseX baseY scalar outX outY) :
    Decaf377Assumptions.Point.mk outX outY =
      Decaf377Assumptions.scalarMulLE 128 ⟨baseX, baseY⟩ scalar := by
  rw [scalarMulLE128_eq_ladderK] at h
  rcases h with ⟨bits, hbin, hladder⟩
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order) pow128_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨scalar.val, hscalarLt⟩ : Fin (2 ^ 128))
  have hsem := ladderK_final_semantic bitsBool outX outY 128 0 ⟨0, 1⟩ ⟨baseX, baseY⟩
    (by omega) EdwardsBridge.identity_onCurve hbase hladder
  rcases hsem with ⟨_, hfinal⟩
  have hpoint : scalarMulFromBits bitsBool 128 0 ⟨0, 1⟩ ⟨baseX, baseY⟩ = ⟨outX, outY⟩ :=
    point_eq_of_finalK hfinal
  have hmodel := scalarMulFromBits_toA bitsBool scalar 128 0 ⟨0, 1⟩ ⟨baseX, baseY⟩
    (by omega)
    (by
      intro i _ hi
      exact toBitsLE_get!_eq_testBit scalar.val hscalarLt i hi)
  rw [hpoint] at hmodel
  simpa [toA, Decaf377Assumptions.scalarMulLE, Decaf377Assumptions.identity] using hmodel

theorem scalarMulLE128_onCurve
    (baseX baseY scalar outX outY : F)
    (hbase : EdwardsBridge.onCurve ⟨baseX, baseY⟩)
    (h : Extracted.ScalarMulLE128.circuit baseX baseY scalar outX outY) :
    EdwardsBridge.onCurve ⟨outX, outY⟩ := by
  rw [scalarMulLE128_eq_ladderK] at h
  rcases h with ⟨bits, hbin, hladder⟩
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order) pow128_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨scalar.val, hscalarLt⟩ : Fin (2 ^ 128))
  have hsem := ladderK_final_semantic bitsBool outX outY 128 0 ⟨0, 1⟩ ⟨baseX, baseY⟩
    (by omega) EdwardsBridge.identity_onCurve hbase hladder
  rcases hsem with ⟨hon, hfinal⟩
  have hpoint : scalarMulFromBits bitsBool 128 0 ⟨0, 1⟩ ⟨baseX, baseY⟩ = ⟨outX, outY⟩ :=
    point_eq_of_finalK hfinal
  rwa [hpoint] at hon

theorem scalarMulLE251_sound
    (baseX baseY scalar outX outY : F)
    (hbase : EdwardsBridge.onCurve ⟨baseX, baseY⟩)
    (h : Extracted.ScalarMulLE251.circuit baseX baseY scalar outX outY) :
    Decaf377Assumptions.Point.mk outX outY =
      Decaf377Assumptions.scalarMulLE 251 ⟨baseX, baseY⟩ scalar := by
  rw [scalarMulLE251_eq_extractedLadderK] at h
  rcases h with ⟨bits, hbin, hladder⟩
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order) pow251_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨scalar.val, hscalarLt⟩ : Fin (2 ^ 251))
  have hsem := extractedLadderK251_final_semantic bitsBool outX outY 251 0 ⟨0, 1⟩
    ⟨baseX, baseY⟩
    (by omega) EdwardsBridge.identity_onCurve hbase hladder
  rcases hsem with ⟨_, hfinal⟩
  have hpoint : scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩ ⟨baseX, baseY⟩ = ⟨outX, outY⟩ :=
    point_eq_of_finalK hfinal
  have hmodel := scalarMulFromBits_toA bitsBool scalar 251 0 ⟨0, 1⟩ ⟨baseX, baseY⟩
    (by omega)
    (by
      intro i _ hi
      exact toBitsLE_get!_eq_testBit scalar.val hscalarLt i hi)
  rw [hpoint] at hmodel
  simpa [toA, Decaf377Assumptions.scalarMulLE, Decaf377Assumptions.identity] using hmodel

theorem scalarMulLE251_onCurve
    (baseX baseY scalar outX outY : F)
    (hbase : EdwardsBridge.onCurve ⟨baseX, baseY⟩)
    (h : Extracted.ScalarMulLE251.circuit baseX baseY scalar outX outY) :
    EdwardsBridge.onCurve ⟨outX, outY⟩ := by
  rw [scalarMulLE251_eq_extractedLadderK] at h
  rcases h with ⟨bits, hbin, hladder⟩
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order) pow251_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨scalar.val, hscalarLt⟩ : Fin (2 ^ 251))
  have hsem := extractedLadderK251_final_semantic bitsBool outX outY 251 0 ⟨0, 1⟩
    ⟨baseX, baseY⟩
    (by omega) EdwardsBridge.identity_onCurve hbase hladder
  rcases hsem with ⟨hon, hfinal⟩
  have hpoint : scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩ ⟨baseX, baseY⟩ = ⟨outX, outY⟩ :=
    point_eq_of_finalK hfinal
  rwa [hpoint] at hon

end Shieldd.GnarkFormal.ScalarMulBridge
