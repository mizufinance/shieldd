import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.EncodeToCurveBridge
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Decaf377CircuitDefs
import ShielddGnarkFormal.Extracted.NetBalanceCommitment
import ProvenZk.Lemmas
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false

/-!
Bridge for the extracted `NetBalanceCommitment` circuit: a rate-1 Poseidon asset
hash, a decaf377 encode-to-curve of that hash producing the value generator,
four 128-bit value ladders from identity over that generator, an Edwards add
chain `add(add(add(add zero in0) in1)(neg out))`, a 251-bit blinding ladder over
the fixed blinding generator, and a final Edwards add pinned to the outputs.
Each segment is bridged with a bounded lemma; the ladders reuse `ScalarMulBridge`.
-/

namespace Shieldd.GnarkFormal.NetBalanceCommitmentBridge

open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

abbrev F := EdwardsBridge.F

/-! ### Fact-free kernel facts: blinding generator is on-curve -/

def blindGenXNat : ℕ := 4661681602708190761543544705274244814260880986867766715334030151044279151219

def blindGenYNat : ℕ := 4337336842509898676347982752646772244181661588533917621717979456142867120378

theorem blindGen_onCurve_nat :
    (blindGenYNat * blindGenYNat + (Order - 1) * (blindGenXNat * blindGenXNat)) % Order =
      (1 + EdwardsBridge.dNat * (blindGenXNat * blindGenXNat) * (blindGenYNat * blindGenYNat)) % Order := by
  decide +kernel

/-! ### Instance-dependent layer -/

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.NetBalanceCommitment.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEncodeToCurve.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.PoseidonHash1.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafAssertEquivalent.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafCompressToField.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafRvk.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafDtk.Order) := ‹_›

theorem blindGenX_natCast : ((blindGenXNat : ℕ) : F) =
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : F) := by
  simp only [blindGenXNat]; exact_mod_cast rfl

theorem blindGenY_natCast : ((blindGenYNat : ℕ) : F) =
    (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F) := by
  simp only [blindGenYNat]; exact_mod_cast rfl

theorem orderSubOne_cast : ((Order - 1 : ℕ) : F) = -1 := by
  rw [← EdwardsBridge.aNat_eq, ← EdwardsBridge.a_natCast]
  exact EdwardsBridge.a_eq

theorem blindGen_onCurve :
    EdwardsBridge.onCurve
      ⟨(4661681602708190761543544705274244814260880986867766715334030151044279151219 : F),
       (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F)⟩ := by
  have hcast :
      ((blindGenYNat * blindGenYNat + (Order - 1) * (blindGenXNat * blindGenXNat) : ℕ) : F) =
        ((1 + EdwardsBridge.dNat * (blindGenXNat * blindGenXNat) * (blindGenYNat * blindGenYNat) : ℕ) : F) := by
    rw [ZMod.natCast_eq_natCast_iff']
    exact blindGen_onCurve_nat
  simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_one] at hcast
  rw [orderSubOne_cast, blindGenX_natCast, blindGenY_natCast, ← EdwardsBridge.d_natCast] at hcast
  show -(_ * _) + _ * _ = 1 + EdwardsBridge.d * (_ * _) * (_ * _)
  linear_combination hcast

/-! ### Ladder rung and ladder -/

@[simp] theorem nbStep_uncps
    (bit ax ay cx cy : F) (k : List.Vector F 4 → Prop) :
    Extracted.NetBalanceCommitment.scalarMulStep bit ax ay cx cy k ↔
      ∃ acc' cur',
        StepRel bit ⟨ax, ay⟩ ⟨cx, cy⟩ acc' cur' ∧
        k vec![acc'.x, acc'.y, cur'.x, cur'.y] := by
  simp only [Extracted.NetBalanceCommitment.scalarMulStep, StepRel, EdwardsBridge.addSpec,
    EdwardsBridge.doubleSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add,
    GatesDef.sub, exists_eq_left]
  constructor
  · rintro ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩
    exact ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
  · rintro ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
    exact ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩

def nbLadderK {n : ℕ} (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
  | 0, _, acc, cur => k vec![acc.x, acc.y, cur.x, cur.y]
  | fuel + 1, bitIndex, acc, cur =>
      Extracted.NetBalanceCommitment.scalarMulStep bits[bitIndex]! acc.x acc.y cur.x cur.y
        (fun state =>
          nbLadderK bits k fuel (bitIndex + 1)
            ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)

theorem nbLadderK_final_semantic {n : ℕ} (bits : List.Vector Bool n)
    (k : List.Vector F 4 → Prop) :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      EdwardsBridge.onCurve acc →
      EdwardsBridge.onCurve cur →
      nbLadderK (bits.map toZMod) k fuel bitIndex acc cur →
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
      simpa [nbLadderK] using h
    exact ⟨hacc, cur.x, cur.y, hk⟩
  | succ fuel ih =>
    intro bitIndex acc cur hbound hacc hcur h
    rw [nbLadderK] at h
    have hlt : bitIndex < n := by omega
    have hbit :
        ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
      rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
        getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
    rw [hbit] at h
    have hstep := (nbStep_uncps (toZMod bits[bitIndex]!) acc.x acc.y cur.x cur.y
      (fun state =>
        nbLadderK (bits.map toZMod) k fuel (bitIndex + 1)
          ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)).mp h
    rcases hstep with ⟨acc', cur', hrel, htail⟩
    have htail' :
        nbLadderK (bits.map toZMod) k fuel (bitIndex + 1) acc' cur' := by
      simpa using htail
    have hsem := stepRel_semantic bits[bitIndex]! acc cur acc' cur' hrel hacc hcur
    rcases hsem with ⟨hacc', hcur', haccOn, hcurOn⟩
    have htailSem := ih (bitIndex + 1) acc' cur' (by omega) haccOn hcurOn htail'
    simpa [scalarMulFromBits, hacc', hcur'] using htailSem

/-! ### Encode-to-curve leg

The inline encode block of `NetBalanceCommitment.circuit` is `encodeSeg0`
followed by a continuation form of `encodeSeg1`: the final `OutX`/`OutY` pins are
replaced by feeding the value-generator coordinates `(gate_63, gate_65)` straight
into the ladders. `nbEncodeSeg1K` captures that continuation form; its semantic
lemma reuses the `EncodeToCurveBridge` post-segment reasoning. -/

open Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve
  (PostSem OnCurve NormalizeT canonical_value PreSem Relation encodeSeg0 encodeSeg0_semantic)

/-- Continuation form of `Extracted.DecafEncodeToCurve.encodeSeg1`: gates 52–71 of the
inline encode block, with the value generator `(gate_63, gate_65)` passed to `k`
rather than pinned to circuit outputs. Verbatim from `circuit` (lines 445–466). -/
def nbEncodeSeg1K (WasSquare T YDen : Extracted.DecafEncodeToCurve.F)
    (k : Extracted.DecafEncodeToCurve.F → Extracted.DecafEncodeToCurve.F → Prop) : Prop :=
    Extracted.DecafEncodeToCurve.canonicalFqBitsGadget T fun gate_51 =>
    ∃gate_52, gate_52 = Extracted.DecafEncodeToCurve.Gates.sub gate_51[0] WasSquare ∧
    ∃gate_53, Extracted.DecafEncodeToCurve.Gates.is_zero gate_52 gate_53 ∧
    ∃gate_54, gate_54 = Extracted.DecafEncodeToCurve.Gates.neg T ∧
    ∃gate_55, Extracted.DecafEncodeToCurve.Gates.select gate_53 gate_54 T gate_55 ∧
    ∃gate_56, gate_56 = Extracted.DecafEncodeToCurve.Gates.mul gate_55 gate_55 ∧
    ∃gate_57, gate_57 = Extracted.DecafEncodeToCurve.Gates.mul (2:F) gate_55 ∧
    ∃gate_58, gate_58 = Extracted.DecafEncodeToCurve.Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_56 ∧
    ∃gate_59, gate_59 = Extracted.DecafEncodeToCurve.Gates.add (1:F) gate_58 ∧
    ∃gate_60, gate_60 = Extracted.DecafEncodeToCurve.Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_56 ∧
    ∃gate_61, gate_61 = Extracted.DecafEncodeToCurve.Gates.sub (1:F) gate_60 ∧
    ∃gate_62, Extracted.DecafEncodeToCurve.Gates.inv gate_59 gate_62 ∧
    ∃gate_63, gate_63 = Extracted.DecafEncodeToCurve.Gates.mul gate_57 gate_62 ∧
    ∃gate_64, Extracted.DecafEncodeToCurve.Gates.inv YDen gate_64 ∧
    ∃gate_65, gate_65 = Extracted.DecafEncodeToCurve.Gates.mul gate_61 gate_64 ∧
    ∃gate_66, gate_66 = Extracted.DecafEncodeToCurve.Gates.mul gate_63 gate_63 ∧
    ∃gate_67, gate_67 = Extracted.DecafEncodeToCurve.Gates.mul gate_65 gate_65 ∧
    ∃gate_68, gate_68 = Extracted.DecafEncodeToCurve.Gates.sub gate_67 gate_66 ∧
    ∃gate_69, gate_69 = Extracted.DecafEncodeToCurve.Gates.mul (3021:F) gate_66 ∧
    ∃gate_70, gate_70 = Extracted.DecafEncodeToCurve.Gates.mul gate_69 gate_67 ∧
    ∃gate_71, gate_71 = Extracted.DecafEncodeToCurve.Gates.add (1:F) gate_70 ∧
    Extracted.DecafEncodeToCurve.Gates.eq gate_68 gate_71 ∧
    k gate_63 gate_65

theorem nbEncodeSeg1K_semantic (WasSquare T YDen : Extracted.DecafEncodeToCurve.F)
    (k : Extracted.DecafEncodeToCurve.F → Extracted.DecafEncodeToCurve.F → Prop)
    (h : nbEncodeSeg1K WasSquare T YDen k) :
    ∃ ox oy, PostSem WasSquare T YDen ox oy ∧ EdwardsBridge.onCurve ⟨ox, oy⟩ ∧ k ox oy := by
  unfold nbEncodeSeg1K at h
  obtain ⟨x, hbin, hlt, hk⟩ := canonical_value h
  obtain ⟨g52, hg52, g53, hg53, g54, hg54, g55, hg55, g56, hg56, g57, hg57,
    g58, hg58, g59, hg59, g60, hg60, g61, hg61, g62, hg62, g63, hg63,
    g64, hg64, g65, hg65, g66, hg66, g67, hg67, g68, hg68, g69, hg69,
    g70, hg70, g71, hg71, hcurve, hk'⟩ := hk
  simp only [Extracted.DecafEncodeToCurve.Gates, GatesGnark9, GatesGnark8,
    GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq] at *
  simp only [GatesDef.inv] at *
  subst hg52 hg54 hg56 hg57 hg58 hg59 hg60 hg61 hg66 hg67 hg68 hg69 hg70 hg71
  obtain ⟨hxden_ne, hxinv⟩ := hg62
  obtain ⟨hyden_ne, hyinv⟩ := hg64
  have hOnCurve : Extracted.DecafEncodeToCurve.OnCurve g63 g65 := by
    unfold Extracted.DecafEncodeToCurve.OnCurve Extracted.DecafEncodeToCurve.d Extracted.DecafEncodeToCurve.dNat
    linear_combination hcurve
  refine ⟨g63, g65, ⟨g55, ?_, ?_, ?_, ?_⟩, ?_, ?_⟩
  · exact ⟨x, g53, hbin, hlt, hg53, by simpa using hg55⟩
  · refine ⟨by simpa [Extracted.DecafEncodeToCurve.a, Extracted.DecafEncodeToCurve.aNat] using hxden_ne, ?_⟩
    calc
      g63 * (1 + Extracted.DecafEncodeToCurve.a * (g55 * g55))
          = ((2 * g55) * g62) * (1 + Extracted.DecafEncodeToCurve.a * (g55 * g55)) := by rw [hg63]
      _ = 2 * g55 * (g62 * (1 + Extracted.DecafEncodeToCurve.a * (g55 * g55))) := by ring
      _ = 2 * g55 := by
        rw [show g62 * (1 + Extracted.DecafEncodeToCurve.a * (g55 * g55)) = 1 by
          simpa [Extracted.DecafEncodeToCurve.a, Extracted.DecafEncodeToCurve.aNat] using hxinv]
        ring
  · refine ⟨hyden_ne, ?_⟩
    calc
      g65 * YDen =
          ((1 -
            8444461749428370424248824938781546531375899335154063827935233455917409239040 *
              (g55 * g55)) * g64) * YDen := by rw [hg65]
      _ = (1 - Extracted.DecafEncodeToCurve.a * (g55 * g55)) * (g64 * YDen) := by
        simp only [Extracted.DecafEncodeToCurve.a, Extracted.DecafEncodeToCurve.aNat]; ring
      _ = 1 - Extracted.DecafEncodeToCurve.a * (g55 * g55) := by rw [hyinv]; ring
  · exact hOnCurve
  · exact hOnCurve
  · exact hk'

/-! ### Edwards add continuation blocks

Each 16-gate Edwards add block of the circuit (`addA`/`addB`/`addC`) reduces to
`EdwardsBridge.addSpec`, with the result fed to a continuation; the final block
`addD` pins to the outputs. The first operand is presented in the gnark gadget's
Montgomery-adjusted form (`px·μ`, `py − px·μ`); the bridge lemmas recover the
plain `addSpec`. -/

/-- Generic Edwards-add continuation: gates of `addA`/`addB`/`addC` with the
result `(rx, ry)` passed to `k` rather than pinned. -/
def nbAddK (px py qx qy : F) (k : F → F → Prop) : Prop :=
    ∃g0, g0 = Extracted.NetBalanceCommitment.Gates.mul px (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃g1, g1 = Extracted.NetBalanceCommitment.Gates.sub py g0 ∧
    ∃g2, g2 = Extracted.NetBalanceCommitment.Gates.add qx qy ∧
    ∃g3, g3 = Extracted.NetBalanceCommitment.Gates.mul g1 g2 ∧
    ∃g4, g4 = Extracted.NetBalanceCommitment.Gates.mul qy px ∧
    ∃g5, g5 = Extracted.NetBalanceCommitment.Gates.mul qx py ∧
    ∃g6, g6 = Extracted.NetBalanceCommitment.Gates.mul (3021:F) g4 ∧
    ∃g7, g7 = Extracted.NetBalanceCommitment.Gates.mul g6 g5 ∧
    ∃g8, g8 = Extracted.NetBalanceCommitment.Gates.add g4 g5 ∧
    ∃g9, g9 = Extracted.NetBalanceCommitment.Gates.add (1:F) g7 ∧
    ∃g10, g10 = Extracted.NetBalanceCommitment.Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) g4 ∧
    ∃g11, g11 = Extracted.NetBalanceCommitment.Gates.sub g10 g5 ∧
    ∃g12, g12 = Extracted.NetBalanceCommitment.Gates.add g11 g3 ∧
    ∃g13, g13 = Extracted.NetBalanceCommitment.Gates.sub (1:F) g7 ∧
    ∃rx, Extracted.NetBalanceCommitment.Gates.div_unchecked g8 g9 rx ∧
    ∃ry, Extracted.NetBalanceCommitment.Gates.div_unchecked g12 g13 ry ∧
    k rx ry

theorem nbAddK_semantic (px py qx qy : F) (k : F → F → Prop)
    (h : nbAddK px py qx qy k) :
    ∃ rx ry, EdwardsBridge.addSpec ⟨px, py⟩ ⟨qx, qy⟩ ⟨rx, ry⟩ ∧ k rx ry := by
  simp only [nbAddK, EdwardsBridge.addSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, exists_eq_left] at h
  rcases h with ⟨rx, hrx, ry, hry, hk⟩
  exact ⟨rx, ry, ⟨hrx, hry⟩, hk⟩

theorem nbAddK_of_addSpec (p q out : EdwardsBridge.Point) (k : F → F → Prop)
    (hadd : EdwardsBridge.addSpec p q out) (hk : k out.x out.y) :
    nbAddK p.x p.y q.x q.y k := by
  simp only [nbAddK, EdwardsBridge.addSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, exists_eq_left]
  exact ⟨out.x, hadd.1, out.y, hadd.2, hk⟩

/-- Final Edwards-add block `addD`: pins the result to `(OutX, OutY)`. -/
def nbFinalK (px py qx qy outX outY : F) : Prop :=
    ∃g0, g0 = Extracted.NetBalanceCommitment.Gates.mul px (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃g1, g1 = Extracted.NetBalanceCommitment.Gates.sub py g0 ∧
    ∃g2, g2 = Extracted.NetBalanceCommitment.Gates.add qx qy ∧
    ∃g3, g3 = Extracted.NetBalanceCommitment.Gates.mul g1 g2 ∧
    ∃g4, g4 = Extracted.NetBalanceCommitment.Gates.mul qy px ∧
    ∃g5, g5 = Extracted.NetBalanceCommitment.Gates.mul qx py ∧
    ∃g6, g6 = Extracted.NetBalanceCommitment.Gates.mul (3021:F) g4 ∧
    ∃g7, g7 = Extracted.NetBalanceCommitment.Gates.mul g6 g5 ∧
    ∃g8, g8 = Extracted.NetBalanceCommitment.Gates.add g4 g5 ∧
    ∃g9, g9 = Extracted.NetBalanceCommitment.Gates.add (1:F) g7 ∧
    ∃g10, g10 = Extracted.NetBalanceCommitment.Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) g4 ∧
    ∃g11, g11 = Extracted.NetBalanceCommitment.Gates.sub g10 g5 ∧
    ∃g12, g12 = Extracted.NetBalanceCommitment.Gates.add g11 g3 ∧
    ∃g13, g13 = Extracted.NetBalanceCommitment.Gates.sub (1:F) g7 ∧
    ∃rx, Extracted.NetBalanceCommitment.Gates.div_unchecked g8 g9 rx ∧
    ∃ry, Extracted.NetBalanceCommitment.Gates.div_unchecked g12 g13 ry ∧
    Extracted.NetBalanceCommitment.Gates.eq rx outX ∧
    Extracted.NetBalanceCommitment.Gates.eq ry outY ∧
    ∃g14, g14 = Extracted.NetBalanceCommitment.Gates.mul outX outX ∧
    ∃g15, g15 = Extracted.NetBalanceCommitment.Gates.mul outY outY ∧
    ∃g16, g16 = Extracted.NetBalanceCommitment.Gates.sub g15 g14 ∧
    ∃g17, g17 = Extracted.NetBalanceCommitment.Gates.mul (3021:F) g14 ∧
    ∃g18, g18 = Extracted.NetBalanceCommitment.Gates.mul g17 g15 ∧
    ∃g19, g19 = Extracted.NetBalanceCommitment.Gates.add (1:F) g18 ∧
    Extracted.NetBalanceCommitment.Gates.eq g16 g19 ∧
    True

theorem nbFinalK_semantic (px py qx qy outX outY : F)
    (h : nbFinalK px py qx qy outX outY) :
    EdwardsBridge.addSpec ⟨px, py⟩ ⟨qx, qy⟩ ⟨outX, outY⟩ := by
  simp only [nbFinalK, EdwardsBridge.addSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq, exists_eq_left] at h ⊢
  rcases h with ⟨rx, hrx, ry, hry, hx, hy, -⟩
  exact ⟨hx ▸ hrx, hy ▸ hry⟩

theorem nbFinalK_of_addSpec (p q out : EdwardsBridge.Point)
    (hadd : EdwardsBridge.addSpec p q out) (hout : EdwardsBridge.onCurve out) :
    nbFinalK p.x p.y q.x q.y out.x out.y := by
  simp only [nbFinalK, EdwardsBridge.addSpec, EdwardsBridge.onCurve,
    EdwardsBridge.a, EdwardsBridge.d, Extracted.NetBalanceCommitment.Gates,
    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.eq, exists_eq_left]
  have hout' : out.y * out.y - out.x * out.x
      = 1 + 3021 * (out.x * out.x) * (out.y * out.y) := by
    have h := hout
    simp only [EdwardsBridge.onCurve, EdwardsBridge.d] at h
    linear_combination h
  exact ⟨out.x, hadd.1, out.y, hadd.2, rfl, rfl, hout', True.intro⟩

/-! ### Circuit body: four value ladders, add chain, blinding ladder, final add -/

/-- The post-encode body of `NetBalanceCommitment.circuit`: four 128-bit value
ladders from identity over the value generator `(vgX, vgY)`, the Edwards add
chain `add(add(add(zero, in0), in1), neg out)`, a 251-bit blinding ladder over
the fixed blinding generator, and the final Edwards add pinned to the outputs. -/
def nbBody (vgX vgY in0 in1 outp blind outX outY : F) : Prop :=
  ∃ b1, Extracted.NetBalanceCommitment.Gates.to_binary in0 128 b1 ∧
  nbLadderK b1 (fun s1 =>
  ∃ b2, Extracted.NetBalanceCommitment.Gates.to_binary in1 128 b2 ∧
  nbLadderK b2 (fun s2 =>
  ∃ b3, Extracted.NetBalanceCommitment.Gates.to_binary outp 128 b3 ∧
  nbLadderK b3 (fun s3 =>
    nbAddK (0:F) (1:F) s1[0] s1[1] (fun a1x a1y =>
    nbAddK a1x a1y s2[0] s2[1] (fun a2x a2y =>
    ∃ g621, g621 = Extracted.NetBalanceCommitment.Gates.neg s3[0] ∧
    nbAddK a2x a2y g621 s3[1] (fun a3x a3y =>
    ∃ b4, Extracted.NetBalanceCommitment.Gates.to_binary blind 251 b4 ∧
    nbLadderK b4 (fun s4 =>
    nbFinalK a3x a3y s4[0] s4[1] outX outY)
      251 0 ⟨0, 1⟩
      ⟨(4661681602708190761543544705274244814260880986867766715334030151044279151219 : F),
       (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F)⟩))))
    128 0 ⟨0, 1⟩ ⟨vgX, vgY⟩)
    128 0 ⟨0, 1⟩ ⟨vgX, vgY⟩)
    128 0 ⟨0, 1⟩ ⟨vgX, vgY⟩

/-- Structural restructuring of the extracted circuit into the nested
poseidon / encode / body continuation form. Definitional: `simp only [Gates]`
reduces both sides to the shared `GatesDef` primitives, then `rfl`. -/
theorem nb_circuit_eq
    (Input0Amount Input1Amount OutputAmount AssetID BalanceBlinding
      EncodeWasSquare EncodeInvSqrt OutX OutY : F) :
    Extracted.NetBalanceCommitment.circuit Input0Amount Input1Amount OutputAmount
        AssetID BalanceBlinding EncodeWasSquare EncodeInvSqrt OutX OutY ↔
      Extracted.PoseidonHash1.poseidonPerm1
        (6888358618106443442961843809729175081075858965522240584763322653509542282215:F)
        AssetID fun gate_0 =>
        encodeSeg0 gate_0 EncodeWasSquare EncodeInvSqrt fun T YDen =>
        nbEncodeSeg1K EncodeWasSquare T YDen fun vgX vgY =>
        nbBody vgX vgY Input0Amount Input1Amount OutputAmount BalanceBlinding OutX OutY := by
  unfold Extracted.NetBalanceCommitment.circuit encodeSeg0 nbEncodeSeg1K nbBody
    nbLadderK nbAddK nbFinalK
  simp (config := { maxSteps := 4000000 }) only [Extracted.NetBalanceCommitment.Gates,
    Extracted.DecafEncodeToCurve.Gates, GatesGnark9, GatesGnark8]
  rfl

/-- Peel one ladder: an `nBits` ladder from identity over `base` (on-curve)
yields a model result equal to `scalarMulLE nBits (toA base) scalar`, on-curve,
firing the continuation on the result coordinates. -/
theorem nbLadder {nBits : ℕ} {scalar : F} {base : EdwardsBridge.Point}
    {k : List.Vector F 4 → Prop} (hpow : 2 ^ nBits < Order)
    (hbase : EdwardsBridge.onCurve base)
    (h : ∃ b, Extracted.NetBalanceCommitment.Gates.to_binary scalar nBits b ∧
         nbLadderK b k nBits 0 ⟨0, 1⟩ base) :
    ∃ res : EdwardsBridge.Point, EdwardsBridge.onCurve res ∧
      toA res = Decaf377Assumptions.scalarMulLE nBits (toA base) scalar ∧
      ∃ z w, k vec![res.x, res.y, z, w] := by
  obtain ⟨b, hbin, hladder⟩ := h
  simp only [Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8] at hbin
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt (N := Order) hpow] at hbin
  rcases hbin with ⟨hlt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨scalar.val, hlt⟩ : Fin (2 ^ nBits))
  have hsem := nbLadderK_final_semantic bitsBool k nBits 0 ⟨0, 1⟩ base (by omega)
    EdwardsBridge.identity_onCurve hbase hladder
  rcases hsem with ⟨hon, z, w, htail⟩
  refine ⟨scalarMulFromBits bitsBool nBits 0 ⟨0, 1⟩ base, hon, ?_, z, w, htail⟩
  have hmodel := scalarMulFromBits_toA bitsBool scalar nBits 0 ⟨0, 1⟩ base (by omega)
    (by intro i _ hi; exact toBitsLE_get!_eq_testBit scalar.val hlt i (by omega))
  rw [hmodel]; rfl

/-! ### Final soundness -/

/-- The circuit output both lies on the curve and equals the spec commitment.
Proved together because the on-curve fact falls out of the same add-chain
threading used for the equality; `nb_circuit_sound` and `nb_circuit_onCurve`
project the two conjuncts. -/
private theorem nb_circuit_eq_and_onCurve
    (Input0Amount Input1Amount OutputAmount AssetID BalanceBlinding
      EncodeWasSquare EncodeInvSqrt OutX OutY : F)
    (h : Extracted.NetBalanceCommitment.circuit Input0Amount Input1Amount OutputAmount
        AssetID BalanceBlinding EncodeWasSquare EncodeInvSqrt OutX OutY) :
    EdwardsBridge.onCurve ⟨OutX, OutY⟩ ∧
    Decaf377Assumptions.Point.mk OutX OutY =
      Decaf377Assumptions.netBalanceCommit Input0Amount Input1Amount OutputAmount
        AssetID BalanceBlinding := by
  rw [nb_circuit_eq, Poseidon1Bridge.perm1_uncps] at h
  -- encode leg
  obtain ⟨T, YDen, hpre, htail⟩ := encodeSeg0_semantic _ EncodeWasSquare EncodeInvSqrt _ h
  obtain ⟨ox, oy, hpost, hvgOn, hbody⟩ :=
    nbEncodeSeg1K_semantic EncodeWasSquare T YDen _ htail
  have hEncSpec : Decaf377Assumptions.EncodeToCurveSpec
      (Poseidon1Bridge.permSpec1
        (6888358618106443442961843809729175081075858965522240584763322653509542282215:F)
        AssetID) ⟨ox, oy⟩ :=
    ⟨EncodeWasSquare, EncodeInvSqrt, T, YDen, hpre, hpost⟩
  have hvgEq := Decaf377Assumptions.encode_spec_eq hEncSpec
  -- identity seed (constant net-balance seed ladder eliminated) + three value ladders
  have hS0on : EdwardsBridge.onCurve (⟨0, 1⟩ : EdwardsBridge.Point) :=
    EdwardsBridge.identity_onCurve
  have hS0eq : toA (⟨0, 1⟩ : EdwardsBridge.Point)
      = Decaf377Assumptions.scalarMulLE 128 (toA ⟨ox, oy⟩) 0 := by
    rw [scalarMulLE_zero]; rfl
  obtain ⟨P1, hP1on, hP1eq, _, _, hbody⟩ :=
    nbLadder pow128_lt_order hvgOn hbody
  obtain ⟨P2, hP2on, hP2eq, _, _, hbody⟩ :=
    nbLadder pow128_lt_order hvgOn hbody
  obtain ⟨P3, hP3on, hP3eq, _, _, hbody⟩ :=
    nbLadder pow128_lt_order hvgOn hbody
  -- add chain
  obtain ⟨a1x, a1y, haddA, hbody⟩ := nbAddK_semantic _ _ _ _ _ hbody
  obtain ⟨a2x, a2y, haddB, hbody⟩ := nbAddK_semantic _ _ _ _ _ hbody
  obtain ⟨g621, hg621, hbody⟩ := hbody
  obtain ⟨a3x, a3y, haddC, hbody⟩ := nbAddK_semantic _ _ _ _ _ hbody
  -- blinding ladder + final add
  obtain ⟨P4, hP4on, hP4eq, _, _, hbody⟩ := nbLadder pow251_lt_order blindGen_onCurve hbody
  have hfinal := nbFinalK_semantic _ _ _ _ _ _ hbody
  -- thread on-curve and addF equalities forward
  have hA1 := EdwardsBridge.addSpec_eq ⟨0, 1⟩ P1 ⟨a1x, a1y⟩ hS0on hP1on haddA
  have hA1on : EdwardsBridge.onCurve ⟨a1x, a1y⟩ := hA1 ▸ EdwardsBridge.add_onCurve _ _ hS0on hP1on
  have hA2 := EdwardsBridge.addSpec_eq ⟨a1x, a1y⟩ P2 ⟨a2x, a2y⟩ hA1on hP2on haddB
  have hA2on : EdwardsBridge.onCurve ⟨a2x, a2y⟩ := hA2 ▸ EdwardsBridge.add_onCurve _ _ hA1on hP2on
  have hg621' : g621 = -P3.x := by
    rw [hg621]
    simp only [Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8, GatesDef.neg,
      mul_neg_one, neg_inj]
    rfl
  have hnegEq : EdwardsBridge.negF P3 = ⟨g621, P3.y⟩ := by
    rw [hg621']; rfl
  have hnegP3on : EdwardsBridge.onCurve ⟨g621, P3.y⟩ :=
    hnegEq ▸ EdwardsBridge.neg_onCurve P3 hP3on
  have hA3 := EdwardsBridge.addSpec_eq ⟨a2x, a2y⟩ ⟨g621, P3.y⟩ ⟨a3x, a3y⟩ hA2on hnegP3on haddC
  have hA3on : EdwardsBridge.onCurve ⟨a3x, a3y⟩ :=
    hA3 ▸ EdwardsBridge.add_onCurve _ _ hA2on hnegP3on
  have hOut := EdwardsBridge.addSpec_eq ⟨a3x, a3y⟩ P4 ⟨OutX, OutY⟩ hA3on hP4on hfinal
  have hOutOn : EdwardsBridge.onCurve ⟨OutX, OutY⟩ :=
    hOut ▸ EdwardsBridge.add_onCurve _ _ hA3on hP4on
  refine ⟨hOutOn, ?_⟩
  -- assemble
  have hbg : toA (⟨(4661681602708190761543544705274244814260880986867766715334030151044279151219 : F),
      (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F)⟩ :
      EdwardsBridge.Point) = Decaf377Assumptions.valueBlindingGenerator := rfl
  show (⟨OutX, OutY⟩ : Decaf377Assumptions.Point) =
    Decaf377Assumptions.netBalanceCommit _ _ _ _ _
  have hgoal : (⟨OutX, OutY⟩ : Decaf377Assumptions.Point) = toA ⟨OutX, OutY⟩ := rfl
  rw [hgoal, hOut, toA_addF, hA3, toA_addF, hnegEq.symm, toA_negF, hA2, toA_addF, hA1,
    toA_addF, hS0eq, hP1eq, hP2eq, hP3eq, hP4eq, hbg]
  simp only [Decaf377Assumptions.netBalanceCommit, Decaf377Assumptions.valueGeneratorDomain,
    hvgEq, toA]

theorem nb_circuit_sound
    (Input0Amount Input1Amount OutputAmount AssetID BalanceBlinding
      EncodeWasSquare EncodeInvSqrt OutX OutY : F)
    (h : Extracted.NetBalanceCommitment.circuit Input0Amount Input1Amount OutputAmount
        AssetID BalanceBlinding EncodeWasSquare EncodeInvSqrt OutX OutY) :
    Decaf377Assumptions.Point.mk OutX OutY =
      Decaf377Assumptions.netBalanceCommit Input0Amount Input1Amount OutputAmount
        AssetID BalanceBlinding :=
  (nb_circuit_eq_and_onCurve _ _ _ _ _ _ _ _ _ h).2

theorem nb_circuit_onCurve
    (Input0Amount Input1Amount OutputAmount AssetID BalanceBlinding
      EncodeWasSquare EncodeInvSqrt OutX OutY : F)
    (h : Extracted.NetBalanceCommitment.circuit Input0Amount Input1Amount OutputAmount
        AssetID BalanceBlinding EncodeWasSquare EncodeInvSqrt OutX OutY) :
    EdwardsBridge.onCurve ⟨OutX, OutY⟩ :=
  (nb_circuit_eq_and_onCurve _ _ _ _ _ _ _ _ _ h).1

/-- `Decaf377Assumptions` predicate-level wrapper. -/
theorem decaf377_netBalanceCommitment_sound
    (input0 input1 output assetID balanceBlinding : F) (out : Decaf377Assumptions.Point)
    (h : Decaf377Assumptions.NetBalanceCommitmentCircuit
      input0 input1 output assetID balanceBlinding out) :
    Decaf377Assumptions.NetBalanceCommitmentSpec
      input0 input1 output assetID balanceBlinding out := by
  obtain ⟨ews, einv, hcircuit⟩ := h
  have hsound := nb_circuit_sound input0 input1 output assetID balanceBlinding
    ews einv out.x out.y hcircuit
  show out = Decaf377Assumptions.netBalanceCommit input0 input1 output assetID balanceBlinding
  cases out; exact hsound

/-- `Decaf377Assumptions` predicate-level on-curve wrapper. -/
theorem decaf377_netBalanceCommitment_onCurve
    (input0 input1 output assetID balanceBlinding : F) (out : Decaf377Assumptions.Point)
    (h : Decaf377Assumptions.NetBalanceCommitmentCircuit
      input0 input1 output assetID balanceBlinding out) :
    EdwardsBridge.onCurve ⟨out.x, out.y⟩ := by
  obtain ⟨ews, einv, hcircuit⟩ := h
  exact nb_circuit_onCurve input0 input1 output assetID balanceBlinding
    ews einv out.x out.y hcircuit

end Shieldd.GnarkFormal.NetBalanceCommitmentBridge
