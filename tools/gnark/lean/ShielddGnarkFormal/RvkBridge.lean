import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Decaf377CircuitDefs
import ShielddGnarkFormal.Extracted.DecafRvk
import ProvenZk.Lemmas
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false

/-!
Bridge for the extracted DecafRvk circuit: a 251-bit generator ladder followed
by a checked Edwards add with the verification key, pinned to the outputs.
Soundness requires the witness `ak` to satisfy the curve equation.
-/

namespace Shieldd.GnarkFormal.RvkBridge

open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

abbrev F := EdwardsBridge.F

/-! ### Fact-free kernel facts -/

def genXNat : ℕ := 4959445789346820725352484487855828915252512307947624787834978378872129235627

def genYNat : ℕ := 6060471950081851567114691557659790004756535011754163002297540472747064943288

/-- Kernel-checked curve equation for the decaf377 generator, with `a = -1`
represented as `Order - 1`. -/
theorem gen_onCurve_nat :
    (genYNat * genYNat + (Order - 1) * (genXNat * genXNat)) % Order =
      (1 + EdwardsBridge.dNat * (genXNat * genXNat) * (genYNat * genYNat)) % Order := by
  decide +kernel

/-! ### Instance-dependent layer -/

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafRvk.Order) := ‹_›

section ChoiceFreeGenerator

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
attribute [-instance] ZMod.instField

theorem genX_natCast : ((genXNat : ℕ) : F) =
    (4959445789346820725352484487855828915252512307947624787834978378872129235627 : F) := by
  simp only [genXNat]; exact_mod_cast rfl

theorem genY_natCast : ((genYNat : ℕ) : F) =
    (6060471950081851567114691557659790004756535011754163002297540472747064943288 : F) := by
  simp only [genYNat]; exact_mod_cast rfl

theorem orderSubOne_cast : ((Order - 1 : ℕ) : F) = -1 := by
  rw [← EdwardsBridge.aNat_eq, ← EdwardsBridge.a_natCast]
  exact EdwardsBridge.a_eq

theorem generator_onCurve :
    EdwardsBridge.onCurve
      ⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627 : F),
       (6060471950081851567114691557659790004756535011754163002297540472747064943288 : F)⟩ := by
  have hcast :
      ((genYNat * genYNat + (Order - 1) * (genXNat * genXNat) : ℕ) : F) =
        ((1 + EdwardsBridge.dNat * (genXNat * genXNat) * (genYNat * genYNat) : ℕ) : F) := by
    exact Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq
      Order _ _ (by decide) gen_onCurve_nat
  simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_one] at hcast
  rw [orderSubOne_cast, genX_natCast, genY_natCast, ← EdwardsBridge.d_natCast] at hcast
  show -(_ * _) + _ * _ = 1 + EdwardsBridge.d * (_ * _) * (_ * _)
  linear_combination hcast

end ChoiceFreeGenerator

/-! ### Rung and ladder -/

@[simp] theorem rvkStep_uncps
    (bit ax ay cx cy : F) (k : List.Vector F 4 → Prop) :
    Extracted.DecafRvk.scalarMulStep bit ax ay cx cy k ↔
      ∃ acc' cur',
        StepRel bit ⟨ax, ay⟩ ⟨cx, cy⟩ acc' cur' ∧
        k vec![acc'.x, acc'.y, cur'.x, cur'.y] := by
  simp only [Extracted.DecafRvk.scalarMulStep, StepRel, EdwardsBridge.addSpec, EdwardsBridge.doubleSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.DecafRvk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
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

/-- The post-ladder gates of `DecafRvk.circuit`: Edwards add of `ak` with the
ladder result, pinned to the outputs. Verbatim gate shape with
`gate_251[i]` replaced by `state[i]`. -/
def rvkTailK (akX akY outX outY : F) (state : List.Vector F 4) : Prop :=
    ∃gate_252, gate_252 = Extracted.DecafRvk.Gates.mul akX (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_253, gate_253 = Extracted.DecafRvk.Gates.sub akY gate_252 ∧
    ∃gate_254, gate_254 = Extracted.DecafRvk.Gates.add state[0] state[1] ∧
    ∃gate_255, gate_255 = Extracted.DecafRvk.Gates.mul gate_253 gate_254 ∧
    ∃gate_256, gate_256 = Extracted.DecafRvk.Gates.mul state[1] akX ∧
    ∃gate_257, gate_257 = Extracted.DecafRvk.Gates.mul state[0] akY ∧
    ∃gate_258, gate_258 = Extracted.DecafRvk.Gates.mul (3021:F) gate_256 ∧
    ∃gate_259, gate_259 = Extracted.DecafRvk.Gates.mul gate_258 gate_257 ∧
    ∃gate_260, gate_260 = Extracted.DecafRvk.Gates.add gate_256 gate_257 ∧
    ∃gate_261, gate_261 = Extracted.DecafRvk.Gates.add (1:F) gate_259 ∧
    ∃gate_262, gate_262 = Extracted.DecafRvk.Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_256 ∧
    ∃gate_263, gate_263 = Extracted.DecafRvk.Gates.sub gate_262 gate_257 ∧
    ∃gate_264, gate_264 = Extracted.DecafRvk.Gates.add gate_263 gate_255 ∧
    ∃gate_265, gate_265 = Extracted.DecafRvk.Gates.sub (1:F) gate_259 ∧
    ∃gate_266, Extracted.DecafRvk.Gates.div_unchecked gate_260 gate_261 gate_266 ∧
    ∃gate_267, Extracted.DecafRvk.Gates.div_unchecked gate_264 gate_265 gate_267 ∧
    Extracted.DecafRvk.Gates.eq gate_266 outX ∧
    Extracted.DecafRvk.Gates.eq gate_267 outY ∧
    ∃gate_268, gate_268 = Extracted.DecafRvk.Gates.mul outX outX ∧
    ∃gate_269, gate_269 = Extracted.DecafRvk.Gates.mul outY outY ∧
    ∃gate_270, gate_270 = Extracted.DecafRvk.Gates.sub gate_269 gate_268 ∧
    ∃gate_271, gate_271 = Extracted.DecafRvk.Gates.mul (3021:F) gate_268 ∧
    ∃gate_272, gate_272 = Extracted.DecafRvk.Gates.mul gate_271 gate_269 ∧
    ∃gate_273, gate_273 = Extracted.DecafRvk.Gates.add (1:F) gate_272 ∧
    Extracted.DecafRvk.Gates.eq gate_270 gate_273 ∧
    True

def rvkLadderK {n : ℕ} (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
  | 0, _, acc, cur => k vec![acc.x, acc.y, cur.x, cur.y]
  | fuel + 1, bitIndex, acc, cur =>
      Extracted.DecafRvk.scalarMulStep bits[bitIndex]! acc.x acc.y cur.x cur.y
        (fun state =>
          rvkLadderK bits k fuel (bitIndex + 1)
            ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)

theorem rvk_circuit_eq_ladderK (akX akY randomizer outX outY : F) :
    Extracted.DecafRvk.circuit akX akY randomizer outX outY ↔
      (∃gate_0, gate_0 = Extracted.DecafRvk.Gates.mul akX akX ∧
       ∃gate_1, gate_1 = Extracted.DecafRvk.Gates.mul akY akY ∧
       ∃gate_2, gate_2 = Extracted.DecafRvk.Gates.sub gate_1 gate_0 ∧
       ∃gate_3, gate_3 = Extracted.DecafRvk.Gates.mul (3021:F) gate_0 ∧
       ∃gate_4, gate_4 = Extracted.DecafRvk.Gates.mul gate_3 gate_1 ∧
       ∃gate_5, gate_5 = Extracted.DecafRvk.Gates.add (1:F) gate_4 ∧
       Extracted.DecafRvk.Gates.eq gate_2 gate_5 ∧
      ∃ bits, GatesDef.to_binary randomizer 251 bits ∧
        rvkLadderK bits (rvkTailK akX akY outX outY) 251 0 ⟨0, 1⟩
          ⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627 : F),
           (6060471950081851567114691557659790004756535011754163002297540472747064943288 : F)⟩) := by
  unfold Extracted.DecafRvk.circuit rvkLadderK rvkTailK
  simp (config := { maxSteps := 1000000 }) only [Extracted.DecafRvk.Gates,
    GatesGnark9, GatesGnark8]
  rfl

/-- Generic-continuation ladder semantics: the continuation fires on the
model result, with some trailing pair, and the result is on the curve. -/
theorem rvkLadderK_final_semantic {n : ℕ} (bits : List.Vector Bool n)
    (k : List.Vector F 4 → Prop) :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      EdwardsBridge.onCurve acc →
      EdwardsBridge.onCurve cur →
      rvkLadderK (bits.map toZMod) k fuel bitIndex acc cur →
        EdwardsBridge.onCurve (scalarMulFromBits bits fuel bitIndex acc cur) ∧
        ∃ z w, k vec![
          (scalarMulFromBits bits fuel bitIndex acc cur).x,
          (scalarMulFromBits bits fuel bitIndex acc cur).y,
          z, w] := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur _ hacc _ h
    have hk : k vec![acc.x, acc.y, cur.x, cur.y] := by
      simpa [rvkLadderK] using h
    exact ⟨hacc, cur.x, cur.y, hk⟩
  | succ fuel ih =>
    intro bitIndex acc cur hbound hacc hcur h
    rw [rvkLadderK] at h
    have hlt : bitIndex < n := by omega
    have hbit :
        ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
      rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
        getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
    rw [hbit] at h
    have hstep := (rvkStep_uncps (toZMod bits[bitIndex]!) acc.x acc.y cur.x cur.y
      (fun state =>
        rvkLadderK (bits.map toZMod) k fuel (bitIndex + 1)
          ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)).mp h
    rcases hstep with ⟨acc', cur', hrel, htail⟩
    have htail' :
        rvkLadderK (bits.map toZMod) k fuel (bitIndex + 1) acc' cur' := by
      simpa using htail
    have hsem := stepRel_semantic bits[bitIndex]! acc cur acc' cur' hrel hacc hcur
    rcases hsem with ⟨hacc', hcur', haccOn, hcurOn⟩
    have htailSem := ih (bitIndex + 1) acc' cur' (by omega) haccOn hcurOn htail'
    simpa [scalarMulFromBits, hacc', hcur'] using htailSem

theorem rvkTailK_semantic (akX akY outX outY z w : F) (p : EdwardsBridge.Point)
    (h : rvkTailK akX akY outX outY vec![p.x, p.y, z, w]) :
    EdwardsBridge.addSpec ⟨akX, akY⟩ p ⟨outX, outY⟩ := by
  simp only [rvkTailK, EdwardsBridge.addSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.DecafRvk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add,
    GatesDef.sub, GatesDef.eq, exists_eq_left] at h ⊢
  rcases h with ⟨g266, h266, g267, h267, hx, hy, -⟩
  exact ⟨hx ▸ h266, hy ▸ h267⟩

/-! ### Final theorems -/

/-- The RVK ladder's exact 251-bit decomposition bounds its randomizer. -/
theorem randomizer_lt_of_circuit
    (akX akY randomizer outX outY : F)
    (h : Extracted.DecafRvk.circuit
      akX akY randomizer outX outY) :
    randomizer.val < 2 ^ 251 := by
  rw [rvk_circuit_eq_ladderK] at h
  rcases h with
    ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, bits, hbin, _⟩
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Order) pow251_lt_order] at hbin
  exact hbin.1

theorem rvk_circuit_sound (akX akY randomizer outX outY : F)
    (hak : EdwardsBridge.onCurve ⟨akX, akY⟩)
    (h : Extracted.DecafRvk.circuit akX akY randomizer outX outY) :
    Decaf377Assumptions.Point.mk outX outY =
      Decaf377Assumptions.rvk ⟨akX, akY⟩ randomizer := by
  rw [rvk_circuit_eq_ladderK] at h
  rcases h with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, bits, hbin, hladder⟩
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Order) pow251_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨randomizer.val, hscalarLt⟩ : Fin (2 ^ 251))
  have hsem := rvkLadderK_final_semantic bitsBool (rvkTailK akX akY outX outY)
    251 0 ⟨0, 1⟩ _ (by omega) EdwardsBridge.identity_onCurve generator_onCurve hladder
  rcases hsem with ⟨hon, z, w, htail⟩
  have haddSpec := rvkTailK_semantic akX akY outX outY z w _ htail
  have heq := EdwardsBridge.addSpec_eq ⟨akX, akY⟩ _ ⟨outX, outY⟩ hak hon haddSpec
  have hmodel := scalarMulFromBits_toA bitsBool randomizer 251 0 ⟨0, 1⟩
    ⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627 : F),
     (6060471950081851567114691557659790004756535011754163002297540472747064943288 : F)⟩
    (by omega)
    (by
      intro i _ hi
      exact toBitsLE_get!_eq_testBit randomizer.val hscalarLt i hi)
  have hfinal : Decaf377Assumptions.Point.mk outX outY =
      toA (EdwardsBridge.addF ⟨akX, akY⟩
        (scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩
          ⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627 : F),
           (6060471950081851567114691557659790004756535011754163002297540472747064943288 : F)⟩)) := by
    rw [← heq]; rfl
  rw [hfinal, toA_addF, hmodel]
  simp only [Decaf377Assumptions.rvk, Decaf377Assumptions.scalarMulLE,
    Decaf377Assumptions.generator, Decaf377Assumptions.identity, toA]

theorem rvk_circuit_onCurve (akX akY randomizer outX outY : F)
    (hak : EdwardsBridge.onCurve ⟨akX, akY⟩)
    (h : Extracted.DecafRvk.circuit akX akY randomizer outX outY) :
    EdwardsBridge.onCurve ⟨outX, outY⟩ := by
  rw [rvk_circuit_eq_ladderK] at h
  rcases h with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, bits, hbin, hladder⟩
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Order) pow251_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨randomizer.val, hscalarLt⟩ : Fin (2 ^ 251))
  have hsem := rvkLadderK_final_semantic bitsBool (rvkTailK akX akY outX outY)
    251 0 ⟨0, 1⟩ _ (by omega) EdwardsBridge.identity_onCurve generator_onCurve hladder
  rcases hsem with ⟨hon, z, w, htail⟩
  have haddSpec := rvkTailK_semantic akX akY outX outY z w _ htail
  have heq := EdwardsBridge.addSpec_eq ⟨akX, akY⟩ _ ⟨outX, outY⟩ hak hon haddSpec
  rw [heq]
  exact EdwardsBridge.add_onCurve _ _ hak hon

/-- `Decaf377Assumptions` predicate-level wrapper: extracted RVK constraints
imply the `rvk` spec, given `ak` on-curve (supplied by the DTK constraint on
the shared `ak` at the compose level). -/
theorem decaf377_randomizedVerificationKey_sound
    (ak : Decaf377Assumptions.Point) (r : F) (out : Decaf377Assumptions.Point)
    (hak : EdwardsBridge.onCurve ⟨ak.x, ak.y⟩)
    (h : Decaf377Assumptions.RandomizedVerificationKeyCircuit ak r out) :
    Decaf377Assumptions.RandomizedVerificationKeySpec ak r out := by
  have hsound := rvk_circuit_sound ak.x ak.y r out.x out.y hak h
  show out = Decaf377Assumptions.rvk ak r
  cases ak; cases out; exact hsound

/-- The RVK output point is on-curve, given `ak` on-curve. -/
theorem decaf377_randomizedVerificationKey_onCurve
    (ak : Decaf377Assumptions.Point) (r : F) (out : Decaf377Assumptions.Point)
    (hak : EdwardsBridge.onCurve ⟨ak.x, ak.y⟩)
    (h : Decaf377Assumptions.RandomizedVerificationKeyCircuit ak r out) :
    EdwardsBridge.onCurve ⟨out.x, out.y⟩ :=
  rvk_circuit_onCurve ak.x ak.y r out.x out.y hak h

end Shieldd.GnarkFormal.RvkBridge
