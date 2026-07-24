import ShielddGnarkFormal.DtkBridge.Semantics
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

namespace Shieldd.GnarkFormal.DtkBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

theorem dtkSeg14_build (gate_569 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (hguard : ivkGuard IvkQuotient gate_569[1]) (hk : k) :
    dtkSeg14 gate_569 IvkQuotient k := by
  unfold dtkSeg14
  unfold ivkGuard at hguard
  simp only [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates, GatesGnark9, GatesGnark8,
    GatesDef.sub, GatesDef.mul, GatesDef.eq, GatesDef.is_zero] at hguard ⊢
  obtain ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, -⟩ := hguard
  exact ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, hk⟩

/-- `k`-carrying form of `ivkGuard`: the continuation the deployed q4 ladder is run
against (keystone #2 is generic in the continuation, so the generator plugs this
in directly). -/
def ivkGuardK (IvkQuotient : F) (k : Prop) (il : F) : Prop :=
    ∃gate_570, gate_570 = Extracted.IvkModR.Gates.sub IvkQuotient (4:F) ∧
    ∃gate_571, Extracted.IvkModR.Gates.is_zero gate_570 gate_571 ∧
    ∃gate_572, gate_572 = Extracted.IvkModR.Gates.sub (1:F) il ∧
    ∃gate_573, gate_573 = Extracted.IvkModR.Gates.mul gate_571 gate_572 ∧
    Extracted.IvkModR.Gates.eq gate_573 (0:F) ∧
    k

/-- `k`-carrying guard rebuilds `dtkSeg14` in one step. -/
theorem dtkSeg14_buildK (gate_569 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (hguard : ivkGuardK IvkQuotient k gate_569[1]) :
    dtkSeg14 gate_569 IvkQuotient k := by
  unfold dtkSeg14
  unfold ivkGuardK at hguard
  simp only [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates, GatesGnark9, GatesGnark8,
    GatesDef.sub, GatesDef.mul, GatesDef.eq, GatesDef.is_zero] at hguard ⊢
  obtain ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, hk⟩ := hguard
  exact ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, hk⟩

/-- mpr of `dtkSeg13_ltcQ`: cast the folded q4 ladder (run against `ivkGuardK`)
back into the extracted `dtkSeg13 → dtkSeg14` continuation. The `ltcRec`/`dtkSeg13`
defeq does the unrolling; `dtk_ltConstStep*_uncps` aligns the rung outputs and
`dtkSeg14_buildK` rebuilds the tail. -/
theorem dtkSeg13_build (bits : List.Vector F 253) (gate_527 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit
      (ivkGuardK IvkQuotient k) 42 gate_527[0] gate_527[1]) :
    dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k) := by
  have h2 : dtkSeg13 bits gate_527 (fun gate_569 => ivkGuardK IvkQuotient k gate_569[1]) :=
    hladder
  unfold dtkSeg13 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg14_buildK _ _ _ h2

theorem dtkSeg12_build (bits : List.Vector F 253) (gate_486 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit
      (ivkGuardK IvkQuotient k) 83 gate_486[0] gate_486[1]) :
    dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)) := by
  have h2 : dtkSeg12 bits gate_486 (fun gate_527 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuardK IvkQuotient k)
        42 gate_527[0] gate_527[1]) := hladder
  unfold dtkSeg12 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg13_build _ _ _ _ h2

theorem dtkSeg11_build (bits : List.Vector F 253) (gate_446 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit
      (ivkGuardK IvkQuotient k) 123 gate_446[0] gate_446[1]) :
    dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))) := by
  have h2 : dtkSeg11 bits gate_446 (fun gate_486 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuardK IvkQuotient k)
        83 gate_486[0] gate_486[1]) := hladder
  unfold dtkSeg11 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg12_build _ _ _ _ h2

theorem dtkSeg10_build (bits : List.Vector F 253) (gate_408 : F)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit
      (ivkGuardK IvkQuotient k) 161 gate_408 (0:F)) :
    dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))) := by
  have h2 : dtkSeg10 bits gate_408 (fun gate_446 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuardK IvkQuotient k)
        123 gate_446[0] gate_446[1]) := hladder
  unfold dtkSeg10 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg11_build _ _ _ _ h2

theorem dtkSeg9_build (bits : List.Vector F 253) (gate_370 : F)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit
      (ivkGuardK IvkQuotient k) 199 gate_370 (0:F)) :
    dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))) := by
  have h2 : dtkSeg9 bits gate_370 (fun gate_408 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuardK IvkQuotient k)
        161 gate_408 (0:F)) := hladder
  unfold dtkSeg9 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg10_build _ _ _ _ h2

theorem dtkSeg8_build (bits : List.Vector F 253) (gate_332 : F)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit
      (ivkGuardK IvkQuotient k) 237 gate_332 (0:F)) :
    dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))) := by
  have h2 : dtkSeg8 bits gate_332 (fun gate_370 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuardK IvkQuotient k)
        199 gate_370 (0:F)) := hladder
  unfold dtkSeg8 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg9_build _ _ _ _ h2

/-- The rBit `< r` continuation, carrying the tail `k` through the q4 guard.
`k`-carrying analog of the forward `RC` continuation. -/
def rContK (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop) (il1 : F) : Prop :=
    Extracted.IvkModR.Gates.eq il1 (1:F) ∧
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuardK IvkQuotient k)
      253 (1:F) (0:F)

/-- Crossover builder (mpr of `dtkSeg7_ltcRQ`): the rBit ladder finishes, the
`il1 = 1` guard fires, and the q4 ladder begins — all absorbed into `dtkSeg7`. -/
theorem dtkSeg7_build (bits : List.Vector F 253) (gate_294 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (rContK bits IvkQuotient k) 21 gate_294[0] gate_294[1]) :
    dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))) := by
  have h2 : dtkSeg7 bits gate_294 (fun gate_332 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuardK IvkQuotient k)
        237 gate_332 (0:F)) := hladder
  unfold dtkSeg7 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps, Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
    GatesGnark9, GatesGnark8, GatesDef.eq] at h2 ⊢
  exact ⟨h2.1, dtkSeg8_build _ _ _ _ h2.2⟩

theorem dtkSeg6_build (bits : List.Vector F 253) (gate_254 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (rContK bits IvkQuotient k) 61 gate_254[0] gate_254[1]) :
    dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))) := by
  have h2 : dtkSeg6 bits gate_254 (fun gate_294 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit (rContK bits IvkQuotient k)
        21 gate_294[0] gate_294[1]) := hladder
  unfold dtkSeg6 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg7_build _ _ _ _ h2

theorem dtkSeg5_build (bits : List.Vector F 253) (gate_216 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (rContK bits IvkQuotient k) 99 gate_216[0] gate_216[1]) :
    dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))) := by
  have h2 : dtkSeg5 bits gate_216 (fun gate_254 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit (rContK bits IvkQuotient k)
        61 gate_254[0] gate_254[1]) := hladder
  unfold dtkSeg5 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg6_build _ _ _ _ h2

theorem dtkSeg4_build (bits : List.Vector F 253) (gate_177 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (rContK bits IvkQuotient k) 138 gate_177[0] gate_177[1]) :
    dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))))) := by
  have h2 : dtkSeg4 bits gate_177 (fun gate_216 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit (rContK bits IvkQuotient k)
        99 gate_216[0] gate_216[1]) := hladder
  unfold dtkSeg4 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg5_build _ _ _ _ h2

theorem dtkSeg3_build (bits : List.Vector F 253) (gate_139 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (rContK bits IvkQuotient k) 176 gate_139[0] gate_139[1]) :
    dtkSeg3 bits gate_139 (fun gate_177 =>
      dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))))) := by
  have h2 : dtkSeg3 bits gate_139 (fun gate_177 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit (rContK bits IvkQuotient k)
        138 gate_177[0] gate_177[1]) := hladder
  unfold dtkSeg3 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg4_build _ _ _ _ h2

theorem dtkSeg2_build (bits : List.Vector F 253) (gate_100 : List.Vector F 2)
    (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (rContK bits IvkQuotient k) 215 gate_100[0] gate_100[1]) :
    dtkSeg2 bits gate_100 (fun gate_139 =>
      dtkSeg3 bits gate_139 (fun gate_177 =>
      dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))))))) := by
  have h2 : dtkSeg2 bits gate_100 (fun gate_139 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit (rContK bits IvkQuotient k)
        176 gate_139[0] gate_139[1]) := hladder
  unfold dtkSeg2 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg3_build _ _ _ _ h2

theorem dtkSeg1_build (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop)
    (hladder : Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (rContK bits IvkQuotient k) 253 (1:F) (0:F)) :
    dtkSeg1 bits (fun gate_100 =>
      dtkSeg2 bits gate_100 (fun gate_139 =>
      dtkSeg3 bits gate_139 (fun gate_177 =>
      dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))))))) := by
  have h2 : dtkSeg1 bits (fun gate_100 =>
      Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit (rContK bits IvkQuotient k)
        215 gate_100[0] gate_100[1]) := hladder
  unfold dtkSeg1 at h2 ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h2 ⊢
  exact dtkSeg2_build _ _ _ _ h2


end Shieldd.GnarkFormal.DtkBridge
