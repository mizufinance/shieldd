import ShielddGnarkFormal.NetBalanceCommitmentBridge
import ShielddGnarkFormal.RvkFixedBaseRung
import ShielddGnarkFormal.CompressDeployedGadgets

/-! # Deployed net-balance ladder keystones (consolidate2x1 seg52)

Seg52 carries four variable-base 128-bit value ladders (DTK rung shape) and one
251-bit blinding ladder over the constant `blindGen`, const-folded exactly like
the deployed RVK ladder (`RvkFixedBaseRung`). Both must land in the extracted
CPS ladder `nbLadderK` — unlike rvk, the net-balance spec needs the ladder's
*value* semantics, not just on-curve.

Two keystones close the gap: `stateTrace_to_nbLadderK` (variable-base; mirror of
`Dtk.stateTrace_to_dtkLadderK`) and `fixedTrace_to_nbLadderK` (fixed-base; the
folded-away doublings are re-supplied as `doubleSpec (Cb i) (Cb (i+1))` via
`doubleSpec_doubleF`, so per-rung certs only prove add+select rows). -/

namespace Shieldd.GnarkFormal.Deployed.NetBalance

open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.NetBalanceCommitmentBridge (nbLadderK nbStep_uncps blindGen_onCurve)
open Bool (toZMod)
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open EdwardsBridge (Point onCurve a d addSpec doubleSpec a_eq
  doubleF double_onCurve add_den_plus_ne add_den_minus_ne)

variable [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

/-- The gnark blinding generator baked into seg52's fixed-base rung rows. -/
def blindGen : Point :=
  ⟨(4661681602708190761543544705274244814260880986867766715334030151044279151219 : F),
   (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F)⟩

/-- `Cb i = 2^i · blindGen`, the kernel-reduced recurrence matching the folded
rung constants (same shape as `RvkFixedBaseConstants.C`). -/
def Cb : ℕ → Point
  | 0 => blindGen
  | i + 1 => doubleF (Cb i)

theorem Cb_succ (i : ℕ) : Cb (i + 1) = doubleF (Cb i) := rfl

theorem Cb_onCurve : ∀ i, onCurve (Cb i)
  | 0 => blindGen_onCurve
  | i + 1 => by
      rw [Cb_succ]
      exact double_onCurve (Cb i) (Cb_onCurve i)

/-- Converse of `doubleSpec_eq`: an on-curve point satisfies the relational
doubling spec at its functional double. Denominator non-vanishing arguments are
those of `doubleSpec_eq`. -/
theorem doubleSpec_doubleF (p : Point) (hp : onCurve p) : doubleSpec p (doubleF p) := by
  have hself := add_den_plus_ne p p hp hp
  have hselfm := add_den_minus_ne p p hp hp
  have ha := a_eq
  have hp' : -(p.x * p.x) + p.y * p.y = 1 + d * (p.x * p.x) * (p.y * p.y) := hp
  have hd1 : p.y * p.y + p.x * p.x * a ≠ 0 := by
    intro h0
    apply hself
    linear_combination -hp' + h0 - p.x * p.x * ha
  have hd2 : 2 - (p.y * p.y + p.x * p.x * a) ≠ 0 := by
    intro h0
    apply hselfm
    linear_combination hp' + h0 + p.x * p.x * ha
  have hd1' : p.y * p.y - p.x * p.x ≠ 0 := by
    intro h0
    apply hd1
    linear_combination h0 + p.x * p.x * ha
  have hd2' : 2 - (p.y * p.y - p.x * p.x) ≠ 0 := by
    intro h0
    apply hd2
    linear_combination h0 - p.x * p.x * ha
  simp only [doubleSpec, doubleF, GatesDef.div_unchecked]
  refine ⟨Or.inl ⟨hd1, ?_⟩, Or.inl ⟨hd2, ?_⟩⟩
  · have key : p.y * p.y + p.x * p.x * a = p.y * p.y - p.x * p.x := by
      linear_combination p.x * p.x * ha
    show 2 * (p.x * p.y) * (p.y * p.y - p.x * p.x)⁻¹
        * (p.y * p.y + p.x * p.x * a) = 2 * (p.x * p.y)
    rw [key, mul_assoc, inv_mul_cancel₀ hd1', mul_one]
  · have key2 : 2 - (p.y * p.y + p.x * p.x * a) = 2 - (p.y * p.y - p.x * p.x) := by
      linear_combination -(p.x * p.x) * ha
    have key3 : p.y * p.y - p.x * p.x * a = p.y * p.y + p.x * p.x := by
      linear_combination -(p.x * p.x) * ha
    show (p.y * p.y + p.x * p.x) * (2 - (p.y * p.y - p.x * p.x))⁻¹
        * (2 - (p.y * p.y + p.x * p.x * a)) = p.y * p.y - p.x * p.x * a
    rw [key2, key3, mul_assoc, inv_mul_cancel₀ hd2', mul_one]

theorem identity_addSpec (p : Point) : addSpec ⟨0, 1⟩ p p := by
  simp only [addSpec, a, d, GatesDef.div_unchecked]
  constructor <;> left <;> constructor
  · norm_num
  · ring
  · norm_num
  · ring

theorem addSpec_of_rows (px py qx qy t0 t1 t2 t3 rx ry : F)
    (hp : onCurve ⟨px, py⟩) (hq : onCurve ⟨qx, qy⟩)
    (h0 : (px + py) * (qx + qy) = t0)
    (h1 : px * qy = t1) (h2 : py * qx = t2)
    (h3 : 3021 * t1 * t2 = t3)
    (h4 : rx * (1 + t3) = t1 + t2)
    (h5 : ry * (1 - t3) = t0 - t1 - t2) :
    addSpec ⟨px, py⟩ ⟨qx, qy⟩ ⟨rx, ry⟩ := by
  have h1' : qy * px = t1 := by linear_combination h1
  have h2' : qx * py = t2 := by linear_combination h2
  have haddx : rx * (1 + 3021 * (qy * px) * (qx * py)) = qy * px + qx * py :=
    calc
      rx * (1 + 3021 * (qy * px) * (qx * py)) = rx * (1 + t3) := by
        rw [h1', h2', h3]
      _ = t1 + t2 := h4
      _ = qy * px + qx * py := by rw [h1', h2']
  have haddy : ry * (1 - 3021 * (qy * px) * (qx * py)) =
      (-1) * (qy * px) - qx * py + (py - px * (-1)) * (qx + qy) :=
    calc
      ry * (1 - 3021 * (qy * px) * (qx * py)) = ry * (1 - t3) := by
        rw [h1', h2', h3]
      _ = t0 - t1 - t2 := h5
      _ = (-1) * (qy * px) - qx * py +
          (py - px * (-1)) * (qx + qy) := by
        rw [← h0, ← h1', ← h2']
        ring
  refine ⟨Or.inl ⟨add_den_plus_ne ⟨px, py⟩ ⟨qx, qy⟩ hp hq, ?_⟩,
          Or.inl ⟨add_den_minus_ne ⟨px, py⟩ ⟨qx, qy⟩ hp hq, ?_⟩⟩
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy

def doublePow (base : Point) : ℕ → Point
  | 0 => base
  | i + 1 => doubleF (doublePow base i)

theorem doublePow_onCurve (base : Point) (hbase : onCurve base) :
    ∀ i, onCurve (doublePow base i)
  | 0 => hbase
  | i + 1 => double_onCurve _ (doublePow_onCurve base hbase i)

theorem zeroStepRel (cur : Point) (hcur : onCurve cur) :
    StepRel 0 ⟨0, 1⟩ cur ⟨0, 1⟩ (doubleF cur) := by
  refine ⟨cur, identity_addSpec cur, ?_, ?_, doubleSpec_doubleF cur hcur⟩
  · simp [GatesDef.select]
  · simp [GatesDef.select]

/-- One folded blinding rung against the recurrence constant: add `Cb i`, then
select by the bit (rvk `FixedStepRel` shape, `Cb` family). -/
def NbFixedStepRel (i : ℕ) (bit : F) (acc acc' : Point) : Prop :=
  ∃ sum,
    addSpec acc (Cb i) sum ∧
    GatesDef.select bit sum.x acc.x acc'.x ∧
    GatesDef.select bit sum.y acc.y acc'.y

/-- Bare deployed rows of one folded blinding rung → `NbFixedStepRel`.
Specializes the generic `RvkFixedBaseRung.fixedRung_stepRel` to `Cb i`. -/
theorem nbFixedRung_stepRel
    (i : ℕ) (bit : F) (acc sum acc' : Point)
    (hacc : onCurve acc)
    (hAddX : sum.x * (1 + d * ((Cb i).y * acc.x) * ((Cb i).x * acc.y))
        = (Cb i).y * acc.x + (Cb i).x * acc.y)
    (hAddY : sum.y * (1 - d * ((Cb i).y * acc.x) * ((Cb i).x * acc.y))
        = a * ((Cb i).y * acc.x) - (Cb i).x * acc.y
          + (acc.y - acc.x * a) * ((Cb i).x + (Cb i).y))
    (hbit : (1 - bit) * bit = 0)
    (hSelX : acc'.x = acc.x - bit * (acc.x - sum.x))
    (hSelY : acc'.y = acc.y - bit * (acc.y - sum.y)) :
    NbFixedStepRel i bit acc acc' :=
  RvkFixedBaseRung.fixedRung_stepRel bit acc (Cb i) sum acc' hacc
    (Cb_onCurve i) hAddX hAddY hbit hSelX hSelY

/-- Accumulator after the const-folded bit-zero rung. -/
def seedAcc (bit : F) : Point :=
  ⟨blindGen.x * bit, 1 + (blindGen.y - 1) * bit⟩

theorem identity_addSpec_blindGen : addSpec ⟨0, 1⟩ blindGen blindGen := by
  simp only [addSpec, blindGen, a, d, GatesDef.div_unchecked]
  constructor <;> left <;> constructor
  · norm_num
  · ring
  · norm_num
  · ring

/-- The first fixed-base rung is folded entirely into the seed expression. -/
theorem seedStepRel (bit : Bool) :
    NbFixedStepRel 0 (toZMod bit) ⟨0, 1⟩ (seedAcc (toZMod bit)) := by
  refine ⟨blindGen, ?_, ?_, ?_⟩
  · exact identity_addSpec_blindGen
  · cases bit <;> simp [seedAcc, blindGen, GatesDef.select,
      Bool.toZMod_zero, Bool.toZMod_one]
  · cases bit <;> simp [seedAcc, blindGen, GatesDef.select,
      Bool.toZMod_zero, Bool.toZMod_one]

/-- **Variable-base keystone.** State-trace form for the three value ladders;
mirror of `Dtk.stateTrace_to_dtkLadderK` with `nbLadderK` as the target. -/
theorem stateTrace_to_nbLadderK {n : ℕ}
    (bits : List.Vector Bool n) (k : List.Vector F 4 → Prop)
    (acc cur : ℕ → Point)
    (hstep : ∀ i, i < n → onCurve (acc i) → onCurve (cur i) →
      StepRel (toZMod bits[i]!) (acc i) (cur i) (acc (i + 1)) (cur (i + 1)))
    (hfinal : onCurve (acc n) →
      k vec![(acc n).x, (acc n).y, (cur n).x, (cur n).y]) :
    ∀ fuel bitIndex,
      bitIndex + fuel = n →
      onCurve (acc bitIndex) → onCurve (cur bitIndex) →
      nbLadderK (bits.map toZMod) k fuel bitIndex (acc bitIndex) (cur bitIndex) := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex hend hacc _
    have hi : bitIndex = n := by omega
    subst bitIndex
    simpa [nbLadderK] using hfinal hacc
  | succ fuel ih =>
    intro bitIndex hend hacc hcur
    have hlt : bitIndex < n := by omega
    have hrel := hstep bitIndex hlt hacc hcur
    have hsem := stepRel_semantic bits[bitIndex]! (acc bitIndex) (cur bitIndex)
      (acc (bitIndex + 1)) (cur (bitIndex + 1)) hrel hacc hcur
    rcases hsem with ⟨_, _, hacc', hcur'⟩
    rw [nbLadderK, nbStep_uncps]
    refine ⟨acc (bitIndex + 1), cur (bitIndex + 1), ?_, ?_⟩
    · have hbit :
          ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
        rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
          getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
      rwa [hbit]
    · have htail := ih (bitIndex + 1) (by omega) hacc' hcur'
      cases haccState : acc (bitIndex + 1)
      cases hcurState : cur (bitIndex + 1)
      simpa [haccState, hcurState] using htail

theorem stateTrace_final_onCurve {n : ℕ} (bits : List.Vector Bool n)
    (acc cur : ℕ → Point)
    (hstep : ∀ i, i < n → onCurve (acc i) → onCurve (cur i) →
      StepRel (toZMod bits[i]!) (acc i) (cur i) (acc (i + 1)) (cur (i + 1)))
    (hacc0 : onCurve (acc 0)) (hcur0 : onCurve (cur 0)) :
    onCurve (acc n) := by
  have hstates : ∀ i, i ≤ n → onCurve (acc i) ∧ onCurve (cur i) := by
    intro i hi
    induction i with
    | zero => exact ⟨hacc0, hcur0⟩
    | succ i ih =>
      have hlt : i < n := by omega
      have hprev := ih (by omega)
      have hsem := stepRel_semantic bits[i]! (acc i) (cur i)
        (acc (i + 1)) (cur (i + 1)) (hstep i hlt hprev.1 hprev.2)
        hprev.1 hprev.2
      exact ⟨hsem.2.2.1, hsem.2.2.2⟩
  exact (hstates n (by omega)).1

/-- The optimized-away zero-value leg, reconstructed at the circuit boundary. -/
theorem zeroLadderK128 (base : Point) (hbase : onCurve base)
    (k : List.Vector F 4 → Prop)
    (hk : ∀ cur, onCurve cur → k vec![0, 1, cur.x, cur.y]) :
    ∃ bits, Extracted.NetBalanceCommitment.Gates.to_binary (0 : F) 128 bits ∧
      nbLadderK bits k 128 0 ⟨0, 1⟩ base := by
  have hvz : ((0 : F).val) = 0 := ZMod.val_zero
  have hzero : ((0 : F).val) < 2 ^ 128 := by rw [hvz]; norm_num
  let bitsBool : List.Vector Bool 128 :=
    Fin.toBitsLE (⟨(0 : F).val, hzero⟩ : Fin (2 ^ 128))
  refine ⟨bitsBool.map toZMod, ?_, ?_⟩
  · simp only [Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8]
    rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
      (N := Order) pow128_lt_order]
    exact ⟨hzero, rfl⟩
  · apply stateTrace_to_nbLadderK bitsBool k
      (fun _ => ⟨0, 1⟩) (doublePow base)
      (fun i hi _ hcur => ?_) (fun hacc => ?_) 128 0 (by omega)
      EdwardsBridge.identity_onCurve hbase
    · have hbit := toBitsLE_get!_eq_testBit ((0 : F).val) hzero i hi
      have hfalse : bitsBool[i]! = false := by
        simpa [bitsBool, hvz] using hbit
      rw [hfalse]
      simpa [doublePow, Bool.toZMod_zero] using
        zeroStepRel (doublePow base i) hcur
    · exact hk (doublePow base 128) (doublePow_onCurve base hbase 128)

/-- **Fixed-base keystone.** A per-rung `NbFixedStepRel` trace over the `Cb`
recurrence yields the extracted CPS ladder with `cur` seated at `Cb`: the
folded doublings are restored by `doubleSpec_doubleF` + `Cb_succ`, so `StepRel`
holds rung-by-rung with `cur i = Cb i`. -/
theorem fixedTrace_to_nbLadderK {n : ℕ}
    (bits : List.Vector Bool n) (k : List.Vector F 4 → Prop)
    (acc : ℕ → Point)
    (hstep : ∀ i, i < n → onCurve (acc i) →
      NbFixedStepRel i (toZMod bits[i]!) (acc i) (acc (i + 1)))
    (hfinal : onCurve (acc n) →
      k vec![(acc n).x, (acc n).y, (Cb n).x, (Cb n).y]) :
    ∀ fuel bitIndex,
      bitIndex + fuel = n →
      onCurve (acc bitIndex) →
      nbLadderK (bits.map toZMod) k fuel bitIndex (acc bitIndex) (Cb bitIndex) := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex hend hacc
    have hi : bitIndex = n := by omega
    subst bitIndex
    simpa [nbLadderK] using hfinal hacc
  | succ fuel ih =>
    intro bitIndex hend hacc
    have hlt : bitIndex < n := by omega
    obtain ⟨sum, hadd, hselX, hselY⟩ := hstep bitIndex hlt hacc
    have hdbl : doubleSpec (Cb bitIndex) (Cb (bitIndex + 1)) := by
      rw [Cb_succ]
      exact doubleSpec_doubleF (Cb bitIndex) (Cb_onCurve bitIndex)
    have hrel : StepRel (toZMod bits[bitIndex]!) (acc bitIndex) (Cb bitIndex)
        (acc (bitIndex + 1)) (Cb (bitIndex + 1)) :=
      ⟨sum, hadd, hselX, hselY, hdbl⟩
    have hsem := stepRel_semantic bits[bitIndex]! (acc bitIndex) (Cb bitIndex)
      (acc (bitIndex + 1)) (Cb (bitIndex + 1)) hrel hacc (Cb_onCurve bitIndex)
    rcases hsem with ⟨_, _, hacc', _⟩
    rw [nbLadderK, nbStep_uncps]
    refine ⟨acc (bitIndex + 1), Cb (bitIndex + 1), ?_, ?_⟩
    · have hbit :
          ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
        rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
          getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
      rwa [hbit]
    · have htail := ih (bitIndex + 1) (by omega) hacc'
      cases haccState : acc (bitIndex + 1)
      cases hcurState : Cb (bitIndex + 1)
      simpa [haccState, hcurState] using htail

theorem fixedTrace_final_onCurve {n : ℕ} (bits : List.Vector Bool n)
    (acc : ℕ → Point)
    (hstep : ∀ i, i < n → onCurve (acc i) →
      NbFixedStepRel i (toZMod bits[i]!) (acc i) (acc (i + 1)))
    (hacc0 : onCurve (acc 0)) : onCurve (acc n) := by
  have hstates : ∀ i, i ≤ n → onCurve (acc i) := by
    intro i hi
    induction i with
    | zero => exact hacc0
    | succ i ih =>
      have hlt : i < n := by omega
      obtain ⟨sum, hadd, hselX, hselY⟩ := hstep i hlt (ih (by omega))
      have hrel : StepRel (toZMod bits[i]!) (acc i) (Cb i)
          (acc (i + 1)) (Cb (i + 1)) :=
        ⟨sum, hadd, hselX, hselY, by
          rw [Cb_succ]
          exact doubleSpec_doubleF (Cb i) (Cb_onCurve i)⟩
      exact (stepRel_semantic bits[i]! (acc i) (Cb i) (acc (i + 1))
        (Cb (i + 1)) hrel (ih (by omega)) (Cb_onCurve i)).2.2.1
  exact hstates n (by omega)

end Shieldd.GnarkFormal.Deployed.NetBalance
