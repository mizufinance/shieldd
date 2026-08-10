import ShielddGnarkFormal.Protocol.Common
import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.RvkDeployedRung

/-!
Exact relational bridge for gnark's MSB-first radix-4 variable-base ladder.

The lookup predicate mirrors `frontend.API.Lookup2`'s three R1CS rows.  The
ladder remains parameterized by width, table, and continuation so normalized
ACK, DTK, shared-secret, and balance providers can reuse it.
-/

namespace Shieldd.GnarkFormal.Window2ScalarMulBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

abbrev F := EdwardsBridge.F
abbrev Point := EdwardsBridge.Point
abbrev ProtocolPoint := Protocol.Common.Point F

variable [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]

/-- Promote the five bare gnark doubling rows to `doubleSpec` using the
on-curve denominator facts. -/
theorem doubleSpec_of_rows
    (x y xy xx yy outX outY : F)
    (hcurve : EdwardsBridge.onCurve ⟨x, y⟩)
    (hxy : x * y = xy) (hxx : x * x = xx) (hyy : y * y = yy)
    (houtX : outX * (yy - xx) = 2 * xy)
    (houtY : outY * (2 - yy + xx) = yy + xx) :
    EdwardsBridge.doubleSpec ⟨x, y⟩ ⟨outX, outY⟩ := by
  refine ⟨Or.inl ⟨RvkDeployedRung.double_den_x_ne ⟨x, y⟩ hcurve, ?_⟩,
          Or.inl ⟨RvkDeployedRung.double_den_y_ne ⟨x, y⟩ hcurve, ?_⟩⟩
  · simpa [EdwardsBridge.a_eq] using (by
      rw [hxy, hxx, hyy]
      linear_combination houtX)
  · simpa [EdwardsBridge.a_eq] using (by
      rw [hxx, hyy]
      linear_combination houtY)

/-- Promote the six bare gnark addition rows to `addSpec` using Edwards
completeness. -/
theorem addSpec_of_rows
    (px py qx qy t0 t1 t2 t3 outX outY : F)
    (hp : EdwardsBridge.onCurve ⟨px, py⟩)
    (hq : EdwardsBridge.onCurve ⟨qx, qy⟩)
    (h0 : (px + py) * (qx + qy) = t0)
    (h1 : px * qy = t1) (h2 : py * qx = t2)
    (h3 : 3021 * t1 * t2 = t3)
    (h4 : outX * (1 + t3) = t1 + t2)
    (h5 : outY * (1 - t3) = t0 - t1 - t2) :
    EdwardsBridge.addSpec ⟨px, py⟩ ⟨qx, qy⟩ ⟨outX, outY⟩ := by
  have h1' : qy * px = t1 := by linear_combination h1
  have h2' : qx * py = t2 := by linear_combination h2
  have haddX :
      outX * (1 + 3021 * (qy * px) * (qx * py)) =
        qy * px + qx * py := by
    calc
      outX * (1 + 3021 * (qy * px) * (qx * py)) =
          outX * (1 + t3) := by rw [h1', h2', h3]
      _ = t1 + t2 := h4
      _ = qy * px + qx * py := by rw [h1', h2']
  have haddY :
      outY * (1 - 3021 * (qy * px) * (qx * py)) =
        (-1) * (qy * px) - qx * py +
          (py - px * (-1)) * (qx + qy) := by
    calc
      outY * (1 - 3021 * (qy * px) * (qx * py)) =
          outY * (1 - t3) := by rw [h1', h2', h3]
      _ = t0 - t1 - t2 := h5
      _ = (-1) * (qy * px) - qx * py +
          (py - px * (-1)) * (qx + qy) := by
        rw [← h0, ← h1', ← h2']
        ring
  refine ⟨Or.inl ⟨EdwardsBridge.add_den_plus_ne ⟨px, py⟩ ⟨qx, qy⟩ hp hq, ?_⟩,
          Or.inl ⟨EdwardsBridge.add_den_minus_ne ⟨px, py⟩ ⟨qx, qy⟩ hp hq, ?_⟩⟩
  · simpa [EdwardsBridge.d] using haddX
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddY

/-- Exact three-row interpolation emitted by gnark `Lookup2` for one field
coordinate. `high` is gnark selector `b0`; `low` is selector `b1`. -/
def Lookup2CoordRel
    (high low i0 i1 i2 i3 output : F) : Prop :=
  ∃ tmp1 tmp2,
    (i3 - i2 - i1 + i0) * low = tmp1 - i1 + i0 ∧
    tmp1 * high = tmp2 ∧
    (i2 - i0) * low = output - tmp2 - i0

def Lookup2Rel
    (high low : F) (base twice triple output : Point) : Prop :=
  Lookup2CoordRel high low
      0 twice.x base.x triple.x output.x ∧
    Lookup2CoordRel high low
      1 twice.y base.y triple.y output.y

private theorem lookup2CoordRel_semantic
    (high low : Bool) (i0 i1 i2 i3 output : F)
    (h : Lookup2CoordRel (toZMod high) (toZMod low)
      i0 i1 i2 i3 output) :
    output =
      if low then (if high then i3 else i2)
      else (if high then i1 else i0) := by
  rcases h with ⟨tmp1, tmp2, h1, h2, h3⟩
  cases high <;> cases low <;>
    simp [Bool.toZMod_zero, Bool.toZMod_one] at h1 h2 h3 ⊢
  · linear_combination -h2 - h3
  · linear_combination -h2 - h3
  · linear_combination -h1 - h2 - h3
  · linear_combination -h1 - h2 - h3

/-- Semantic table digit represented by the deployed lookup ordering
`[identity, 2P, P, 3P]`. -/
def digit (base : Point) (high low : Bool) : Point :=
  if low then
    if high then EdwardsBridge.addF (EdwardsBridge.doubleF base) base else base
  else if high then EdwardsBridge.doubleF base else ⟨0, 1⟩

def toProtocolPoint (point : Point) : ProtocolPoint := ⟨point.x, point.y⟩

@[simp] theorem toProtocolPoint_add (left right : Point) :
    toProtocolPoint (EdwardsBridge.addF left right) =
      Protocol.Common.Decaf.add (toProtocolPoint left) (toProtocolPoint right) := by
  rfl

@[simp] theorem toProtocolPoint_double (point : Point) :
    toProtocolPoint (EdwardsBridge.doubleF point) =
      Protocol.Common.Decaf.double (toProtocolPoint point) := by
  rfl

@[simp] theorem toProtocolPoint_digit
    (base : Point) (high low : Bool) :
    toProtocolPoint (digit base high low) =
      Protocol.Common.Decaf.window2Digit (toProtocolPoint base) high low := by
  cases high <;> cases low <;> rfl

theorem lookup2Rel_semantic
    (high low : Bool) (base twice triple output : Point)
    (htwice : twice = EdwardsBridge.doubleF base)
    (htriple : triple = EdwardsBridge.addF (EdwardsBridge.doubleF base) base)
    (h : Lookup2Rel (toZMod high) (toZMod low)
      base twice triple output) :
    output = digit base high low := by
  rcases h with ⟨hx, hy⟩
  have hx' := lookup2CoordRel_semantic high low
    0 twice.x base.x triple.x output.x hx
  have hy' := lookup2CoordRel_semantic high low
    1 twice.y base.y triple.y output.y hy
  rw [htwice, htriple] at hx' hy'
  cases high <;> cases low <;>
    simp only [digit, Bool.false_eq_true, ↓reduceIte] at hx' hy' ⊢ <;>
    cases output <;> simp only at hx' hy' ⊢ <;>
    cases hx' <;> cases hy' <;> rfl

def TableRel (base twice triple : Point) : Prop :=
  EdwardsBridge.doubleSpec base twice ∧
    EdwardsBridge.addSpec twice base triple

theorem tableRel_semantic
    (base twice triple : Point)
    (hbase : EdwardsBridge.onCurve base)
    (h : TableRel base twice triple) :
    twice = EdwardsBridge.doubleF base ∧
      triple = EdwardsBridge.addF (EdwardsBridge.doubleF base) base ∧
      EdwardsBridge.onCurve twice ∧ EdwardsBridge.onCurve triple := by
  rcases h with ⟨htwiceSpec, htripleSpec⟩
  have htwice := EdwardsBridge.doubleSpec_eq base twice hbase htwiceSpec
  have htwiceOn : EdwardsBridge.onCurve twice := by
    rw [htwice]
    exact EdwardsBridge.double_onCurve base hbase
  have htriple := EdwardsBridge.addSpec_eq twice base triple
    htwiceOn hbase htripleSpec
  have htripleOn : EdwardsBridge.onCurve triple := by
    rw [htriple]
    exact EdwardsBridge.add_onCurve twice base htwiceOn hbase
  exact ⟨htwice, htwice ▸ htriple, htwiceOn, htripleOn⟩

/-- One full radix-4 rung: shift the accumulator by two doublings, select the
next digit, and add it. -/
def WindowRel
    (high low : F) (base twice triple accumulator next : Point) : Prop :=
  ∃ shiftedOnce shifted digitPoint,
    EdwardsBridge.doubleSpec accumulator shiftedOnce ∧
      EdwardsBridge.doubleSpec shiftedOnce shifted ∧
      Lookup2Rel high low base twice triple digitPoint ∧
      EdwardsBridge.addSpec shifted digitPoint next

theorem windowRel_semantic
    (high low : Bool) (base twice triple accumulator next : Point)
    (hbase : EdwardsBridge.onCurve base)
    (haccumulator : EdwardsBridge.onCurve accumulator)
    (htable : TableRel base twice triple)
    (h : WindowRel (toZMod high) (toZMod low)
      base twice triple accumulator next) :
    next = EdwardsBridge.addF
        (EdwardsBridge.doubleF (EdwardsBridge.doubleF accumulator))
        (digit base high low) ∧
      EdwardsBridge.onCurve next := by
  rcases tableRel_semantic base twice triple hbase htable with
    ⟨htwice, htriple, htwiceOn, htripleOn⟩
  rcases h with
    ⟨shiftedOnce, shifted, digitPoint, hshift1, hshift2, hlookup, hadd⟩
  have hshift1Eq := EdwardsBridge.doubleSpec_eq accumulator shiftedOnce
    haccumulator hshift1
  have hshift1On : EdwardsBridge.onCurve shiftedOnce := by
    rw [hshift1Eq]
    exact EdwardsBridge.double_onCurve accumulator haccumulator
  have hshift2Eq := EdwardsBridge.doubleSpec_eq shiftedOnce shifted
    hshift1On hshift2
  have hshift2On : EdwardsBridge.onCurve shifted := by
    rw [hshift2Eq]
    exact EdwardsBridge.double_onCurve shiftedOnce hshift1On
  have hdigit := lookup2Rel_semantic high low base twice triple digitPoint
    htwice htriple hlookup
  have hdigitOn : EdwardsBridge.onCurve digitPoint := by
    rw [hdigit]
    cases high <;> cases low
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwice] using htwiceOn
    · simpa [htriple] using htripleOn
  have hnext := EdwardsBridge.addSpec_eq shifted digitPoint next
    hshift2On hdigitOn hadd
  constructor
  · rw [hnext, hshift2Eq, hshift1Eq, hdigit]
  · rw [hnext]
    exact EdwardsBridge.add_onCurve shifted digitPoint hshift2On hdigitOn

/-- CPS ladder over descending high-bit indices. -/
def WindowLadderK {n : Nat}
    (bits : List.Vector F n) (base twice triple : Point)
    (k : Point → Prop) : Nat → Nat → Point → Prop
  | 0, _, accumulator => k accumulator
  | fuel + 1, highBit, accumulator =>
      ∃ next,
        WindowRel bits[highBit]! bits[highBit - 1]!
          base twice triple accumulator next ∧
        WindowLadderK bits base twice triple k
          fuel (highBit - 2) next

def PairsFromBits {n : Nat}
    (bits : List.Vector Bool n) (base : Point) :
    Nat → Nat → Point → Point
  | 0, _, accumulator => accumulator
  | fuel + 1, highBit, accumulator =>
      let shifted := EdwardsBridge.doubleF (EdwardsBridge.doubleF accumulator)
      let selected := digit base bits[highBit]! bits[highBit - 1]!
      PairsFromBits bits base fuel (highBit - 2)
        (EdwardsBridge.addF shifted selected)

theorem pairsFromBits_maps {n : Nat}
    (bits : List.Vector Bool n) (base accumulator : Point) :
    ∀ fuel highBit,
      toProtocolPoint (PairsFromBits bits base fuel highBit accumulator) =
        Protocol.Common.Decaf.scalarMulWindow2PairsFromBits bits
          (toProtocolPoint base) fuel highBit (toProtocolPoint accumulator) := by
  intro fuel
  induction fuel generalizing accumulator with
  | zero => intro highBit; rfl
  | succ fuel ih =>
      intro highBit
      simp only [PairsFromBits,
        Protocol.Common.Decaf.scalarMulWindow2PairsFromBits]
      simpa only [toProtocolPoint_add, toProtocolPoint_double,
        toProtocolPoint_digit] using
        ih (EdwardsBridge.addF
          (EdwardsBridge.doubleF (EdwardsBridge.doubleF accumulator))
          (digit base bits[highBit]! bits[highBit - 1]!)) (highBit - 2)

theorem windowLadderK_semantic {n : Nat}
    (bits : List.Vector Bool n) (base twice triple : Point)
    (k : Point → Prop) (htable : TableRel base twice triple)
    (hbase : EdwardsBridge.onCurve base) :
    ∀ fuel highBit accumulator,
      2 * fuel ≤ highBit + 2 →
      highBit < n →
      EdwardsBridge.onCurve accumulator →
      WindowLadderK (bits.map toZMod) base twice triple k
        fuel highBit accumulator →
      EdwardsBridge.onCurve
          (PairsFromBits bits base fuel highBit accumulator) ∧
        k (PairsFromBits bits base fuel highBit accumulator) := by
  intro fuel
  induction fuel with
  | zero =>
      intro highBit accumulator _ _ haccumulator h
      simpa [WindowLadderK, PairsFromBits] using ⟨haccumulator, h⟩
  | succ fuel ih =>
      intro highBit accumulator hspan hwidth haccumulator h
      rw [WindowLadderK] at h
      rcases h with ⟨next, hstep, htail⟩
      have hhigh : highBit < n := hwidth
      have hlow : highBit - 1 < n := by omega
      have hhighGet :
          (bits.map (Bool.toZMod
            (N := Extracted.DecafEdwardsAdd.Order)))[highBit]! =
              Bool.toZMod (N := Extracted.DecafEdwardsAdd.Order)
                bits[highBit]! := by
        rw [getElem!_pos (bits.map (Bool.toZMod
              (N := Extracted.DecafEdwardsAdd.Order))) highBit hhigh,
          getElem!_pos bits highBit hhigh, List.Vector.getElem_map]
      have hlowGet :
          (bits.map (Bool.toZMod
            (N := Extracted.DecafEdwardsAdd.Order)))[highBit - 1]! =
              Bool.toZMod (N := Extracted.DecafEdwardsAdd.Order)
                bits[highBit - 1]! := by
        rw [getElem!_pos (bits.map (Bool.toZMod
              (N := Extracted.DecafEdwardsAdd.Order))) (highBit - 1) hlow,
          getElem!_pos bits (highBit - 1) hlow, List.Vector.getElem_map]
      rw [hhighGet, hlowGet] at hstep
      rcases windowRel_semantic bits[highBit]! bits[highBit - 1]!
          base twice triple accumulator next hbase haccumulator htable hstep with
        ⟨hnext, hnextOn⟩
      have htailSem := ih (highBit - 2) next
        (by omega) (by omega) hnextOn htail
      simpa [PairsFromBits, hnext] using htailSem

def FinalRel
    (low : F) (base accumulator output : Point) : Prop :=
  ∃ shifted sum,
    EdwardsBridge.doubleSpec accumulator shifted ∧
      EdwardsBridge.addSpec shifted base sum ∧
      GatesDef.select low sum.x shifted.x output.x ∧
      GatesDef.select low sum.y shifted.y output.y

private theorem select_bool_value (bit : Bool) (whenTrue whenFalse output : F)
    (h : GatesDef.select (toZMod bit : F) whenTrue whenFalse output) :
    output = if bit then whenTrue else whenFalse := by
  dsimp [GatesDef.select] at h
  rcases h with ⟨_, hout⟩
  cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one] at hout ⊢ <;>
    linear_combination hout

theorem finalRel_semantic
    (low : Bool) (base accumulator output : Point)
    (hbase : EdwardsBridge.onCurve base)
    (haccumulator : EdwardsBridge.onCurve accumulator)
    (h : FinalRel (toZMod low) base accumulator output) :
    (output =
        if low then EdwardsBridge.addF (EdwardsBridge.doubleF accumulator) base
        else EdwardsBridge.doubleF accumulator) ∧
      EdwardsBridge.onCurve output := by
  rcases h with ⟨shifted, sum, hshift, hadd, hselectX, hselectY⟩
  have hshiftEq := EdwardsBridge.doubleSpec_eq accumulator shifted
    haccumulator hshift
  have hshiftOn : EdwardsBridge.onCurve shifted := by
    rw [hshiftEq]
    exact EdwardsBridge.double_onCurve accumulator haccumulator
  have hsumEq := EdwardsBridge.addSpec_eq shifted base sum hshiftOn hbase hadd
  have hsumOn : EdwardsBridge.onCurve sum := by
    rw [hsumEq]
    exact EdwardsBridge.add_onCurve shifted base hshiftOn hbase
  have hx := select_bool_value low sum.x shifted.x output.x hselectX
  have hy := select_bool_value low sum.y shifted.y output.y hselectY
  have houtput : output = if low then sum else shifted := by
    cases low <;> simp only [Bool.false_eq_true, ↓reduceIte] at hx hy ⊢ <;>
      cases output <;> cases sum <;> cases shifted <;>
      simp only at hx hy ⊢ <;> cases hx <;> cases hy <;> rfl
  constructor
  · rw [houtput, hsumEq, hshiftEq]
  · rw [houtput]
    cases low
    · exact hshiftOn
    · exact hsumOn

/-- Exact odd-width Window2 body after its separate binary decomposition.
Width 251 uses `m=125`; width 129 uses `m=64`. -/
def BodyRelOdd (m : Nat)
    (bits : List.Vector F (2 * m + 1)) (base output : Point) : Prop :=
  ∃ twice triple initial,
    TableRel base twice triple ∧
      Lookup2Rel bits[2 * m]! bits[2 * m - 1]!
        base twice triple initial ∧
      WindowLadderK bits base twice triple
        (fun accumulator => FinalRel bits[0]! base accumulator output)
        (m - 1) (2 * m - 2) initial

def scalarMulWindow2OddFromBits (m : Nat)
    (bits : List.Vector Bool (2 * m + 1)) (base : Point) : Point :=
  let initial := digit base bits[2 * m]! bits[2 * m - 1]!
  let accumulator := PairsFromBits bits base (m - 1) (2 * m - 2) initial
  let shifted := EdwardsBridge.doubleF accumulator
  if bits[0]! then EdwardsBridge.addF shifted base else shifted

theorem scalarMulWindow2OddFromBits_maps
    (m : Nat) (bits : List.Vector Bool (2 * m + 1)) (base : Point) :
    toProtocolPoint (scalarMulWindow2OddFromBits m bits base) =
      Protocol.Common.Decaf.scalarMulWindow2OddFromBits m bits
        (toProtocolPoint base) := by
  have hpairs := pairsFromBits_maps bits base
    (digit base bits[2 * m]! bits[2 * m - 1]!)
    (m - 1) (2 * m - 2)
  rw [toProtocolPoint_digit] at hpairs
  cases hlow : bits[0]!
  · simp only [scalarMulWindow2OddFromBits,
      Protocol.Common.Decaf.scalarMulWindow2OddFromBits, hlow,
      Bool.false_eq_true, if_false]
    rw [toProtocolPoint_double, hpairs]
  · simp only [scalarMulWindow2OddFromBits,
      Protocol.Common.Decaf.scalarMulWindow2OddFromBits, hlow, if_true]
    rw [toProtocolPoint_add, toProtocolPoint_double, hpairs]

theorem bodyRelOdd_semantic
    (m : Nat) (hm : 1 ≤ m)
    (bits : List.Vector Bool (2 * m + 1)) (base output : Point)
    (hbase : EdwardsBridge.onCurve base)
    (h : BodyRelOdd m (bits.map toZMod) base output) :
    EdwardsBridge.onCurve output ∧
      output = scalarMulWindow2OddFromBits m bits base := by
  rcases h with ⟨twice, triple, initial, htable, hlookup, hladder⟩
  rcases tableRel_semantic base twice triple hbase htable with
    ⟨htwice, htriple, htwiceOn, htripleOn⟩
  have hhigh :
      (bits.map (Bool.toZMod
        (N := Extracted.DecafEdwardsAdd.Order)))[2 * m]! =
          Bool.toZMod (N := Extracted.DecafEdwardsAdd.Order)
            bits[2 * m]! := by
    rw [getElem!_pos (bits.map (Bool.toZMod
          (N := Extracted.DecafEdwardsAdd.Order))) (2 * m) (by omega),
      getElem!_pos bits (2 * m) (by omega), List.Vector.getElem_map]
  have hlow :
      (bits.map (Bool.toZMod
        (N := Extracted.DecafEdwardsAdd.Order)))[2 * m - 1]! =
          Bool.toZMod (N := Extracted.DecafEdwardsAdd.Order)
            bits[2 * m - 1]! := by
    rw [getElem!_pos (bits.map (Bool.toZMod
          (N := Extracted.DecafEdwardsAdd.Order))) (2 * m - 1) (by omega),
      getElem!_pos bits (2 * m - 1) (by omega), List.Vector.getElem_map]
  rw [hhigh, hlow] at hlookup
  have hinitial := lookup2Rel_semantic bits[2 * m]! bits[2 * m - 1]!
    base twice triple initial htwice htriple hlookup
  have hinitialOn : EdwardsBridge.onCurve initial := by
    rw [hinitial]
    cases bits[2 * m]! <;> cases bits[2 * m - 1]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwice] using htwiceOn
    · simpa [htriple] using htripleOn
  have hladderSem := windowLadderK_semantic bits base twice triple
    (fun accumulator =>
      FinalRel (bits.map toZMod)[0]! base accumulator output)
    htable hbase (m - 1) (2 * m - 2) initial
      (by omega) (by omega) hinitialOn hladder
  rcases hladderSem with ⟨haccumulatorOn, hfinal⟩
  have h0 :
      (bits.map (Bool.toZMod
        (N := Extracted.DecafEdwardsAdd.Order)))[0]! =
          Bool.toZMod (N := Extracted.DecafEdwardsAdd.Order) bits[0]! := by
    rw [getElem!_pos (bits.map (Bool.toZMod
          (N := Extracted.DecafEdwardsAdd.Order))) 0 (by omega),
      getElem!_pos bits 0 (by omega), List.Vector.getElem_map]
  rw [h0] at hfinal
  rcases finalRel_semantic bits[0]! base
      (PairsFromBits bits base (m - 1) (2 * m - 2) initial) output
      hbase haccumulatorOn hfinal with ⟨houtput, houtputOn⟩
  refine ⟨houtputOn, ?_⟩
  unfold scalarMulWindow2OddFromBits
  rw [← hinitial]
  exact houtput

abbrev BodyRel251 := BodyRelOdd 125

abbrev scalarMulWindow2FromBits251 := scalarMulWindow2OddFromBits 125

theorem scalarMulWindow2FromBits251_maps
    (bits : List.Vector Bool 251) (base : Point) :
    toProtocolPoint (scalarMulWindow2FromBits251 bits base) =
      Protocol.Common.Decaf.scalarMulWindow2FromBits bits
        (toProtocolPoint base) := by
  have h := scalarMulWindow2OddFromBits_maps 125 bits base
  simpa [Protocol.Common.Decaf.scalarMulWindow2FromBits,
    Protocol.Common.Decaf.scalarMulWindow2OddFromBits] using h

theorem bodyRel251_semantic
    (bits : List.Vector Bool 251) (base output : Point)
    (hbase : EdwardsBridge.onCurve base)
    (h : BodyRel251 (bits.map toZMod) base output) :
    EdwardsBridge.onCurve output ∧
      output = scalarMulWindow2FromBits251 bits base := by
  exact bodyRelOdd_semantic 125 (by omega) bits base output hbase h

end Shieldd.GnarkFormal.Window2ScalarMulBridge
