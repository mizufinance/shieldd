import ShielddGnarkFormal.DtkBridge.Core
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

def ivkGuard (IvkQuotient il : F) : Prop :=
    ∃gate_570, gate_570 = Extracted.IvkModR.Gates.sub IvkQuotient (4:F) ∧
    ∃gate_571, Extracted.IvkModR.Gates.is_zero gate_570 gate_571 ∧
    ∃gate_572, gate_572 = Extracted.IvkModR.Gates.sub (1:F) il ∧
    ∃gate_573, gate_573 = Extracted.IvkModR.Gates.mul gate_571 gate_572 ∧
    Extracted.IvkModR.Gates.eq gate_573 (0:F) ∧
    True

private theorem dtkSeg14_guard (gate_569 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg14 gate_569 IvkQuotient k) :
    ivkGuard IvkQuotient gate_569[1] := by
  unfold dtkSeg14 at h
  unfold ivkGuard
  simp only [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates, GatesGnark9, GatesGnark8,
    GatesDef.sub, GatesDef.mul, GatesDef.eq, GatesDef.is_zero] at h ⊢
  obtain ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, -⟩ := h
  exact ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, trivial⟩

private theorem dtkSeg13_ltcQ
    (bits : List.Vector F 253) (gate_527 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      42 gate_527[0] gate_527[1] := by
  change dtkSeg13 bits gate_527 (fun gate_569 => ivkGuard IvkQuotient gate_569[1])
  unfold dtkSeg13 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg14_guard _ _ _ h

private theorem dtkSeg12_ltcQ
    (bits : List.Vector F 253) (gate_486 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      83 gate_486[0] gate_486[1] := by
  change dtkSeg12 bits gate_486 (fun gate_527 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      42 gate_527[0] gate_527[1])
  unfold dtkSeg12 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg13_ltcQ _ _ _ _ h

private theorem dtkSeg11_ltcQ
    (bits : List.Vector F 253) (gate_446 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      123 gate_446[0] gate_446[1] := by
  change dtkSeg11 bits gate_446 (fun gate_486 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      83 gate_486[0] gate_486[1])
  unfold dtkSeg11 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg12_ltcQ _ _ _ _ h

private theorem dtkSeg10_ltcQ
    (bits : List.Vector F 253) (gate_408 : F) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      161 gate_408 (0:F) := by
  change dtkSeg10 bits gate_408 (fun gate_446 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      123 gate_446[0] gate_446[1])
  unfold dtkSeg10 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg11_ltcQ _ _ _ _ h

private theorem dtkSeg9_ltcQ
    (bits : List.Vector F 253) (gate_370 : F) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      199 gate_370 (0:F) := by
  change dtkSeg9 bits gate_370 (fun gate_408 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      161 gate_408 (0:F))
  unfold dtkSeg9 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg10_ltcQ _ _ _ _ h

private theorem dtkSeg8_ltcQ
    (bits : List.Vector F 253) (gate_332 : F) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      237 gate_332 (0:F) := by
  change dtkSeg8 bits gate_332 (fun gate_370 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      199 gate_370 (0:F))
  unfold dtkSeg8 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg9_ltcQ _ _ _ _ h

private theorem dtkSeg7_ltcRQ
    (bits : List.Vector F 253) (gate_294 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      21 gate_294[0] gate_294[1] := by
  change dtkSeg7 bits gate_294 (fun gate_332 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      237 gate_332 (0:F))
  unfold dtkSeg7 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps, Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
    GatesGnark9, GatesGnark8, GatesDef.eq] at h ⊢
  exact ⟨h.1, dtkSeg8_ltcQ _ _ _ _ h.2⟩

private theorem dtkSeg6_ltcR
    (bits : List.Vector F 253) (gate_254 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      61 gate_254[0] gate_254[1] := by
  change dtkSeg6 bits gate_254 (fun gate_294 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      21 gate_294[0] gate_294[1])
  unfold dtkSeg6 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg7_ltcRQ _ _ _ _ h

private theorem dtkSeg5_ltcR
    (bits : List.Vector F 253) (gate_216 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      99 gate_216[0] gate_216[1] := by
  change dtkSeg5 bits gate_216 (fun gate_254 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      61 gate_254[0] gate_254[1])
  unfold dtkSeg5 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg6_ltcR _ _ _ _ h

private theorem dtkSeg4_ltcR
    (bits : List.Vector F 253) (gate_177 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      138 gate_177[0] gate_177[1] := by
  change dtkSeg4 bits gate_177 (fun gate_216 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      99 gate_216[0] gate_216[1])
  unfold dtkSeg4 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg5_ltcR _ _ _ _ h

private theorem dtkSeg3_ltcR
    (bits : List.Vector F 253) (gate_139 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg3 bits gate_139 (fun gate_177 =>
      dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      176 gate_139[0] gate_139[1] := by
  change dtkSeg3 bits gate_139 (fun gate_177 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      138 gate_177[0] gate_177[1])
  unfold dtkSeg3 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg4_ltcR _ _ _ _ h

private theorem dtkSeg2_ltcR
    (bits : List.Vector F 253) (gate_100 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg2 bits gate_100 (fun gate_139 =>
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
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      215 gate_100[0] gate_100[1] := by
  change dtkSeg2 bits gate_100 (fun gate_139 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      176 gate_139[0] gate_139[1])
  unfold dtkSeg2 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg3_ltcR _ _ _ _ h

private theorem dtkSeg1_ltcR
    (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg1 bits (fun gate_100 =>
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
      dtkSeg13 bits gate_527 (fun gate_569 =>
      dtkSeg14 gate_569 IvkQuotient k)))))))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      253 (1:F) (0:F) := by
  change dtkSeg1 bits (fun gate_100 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      215 gate_100[0] gate_100[1])
  unfold dtkSeg1 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg2_ltcR _ _ _ _ h

theorem dtkTailK_ladders (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop)
    (h : dtkTailK bits IvkQuotient k) :
    Extracted.IvkModR.laddersTail IvkQuotient bits := by
  exact dtkSeg1_ltcR bits IvkQuotient k h


end Shieldd.GnarkFormal.DtkBridge
