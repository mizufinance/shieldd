import ShielddGnarkFormal.DtkBridge.SemanticsB
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

theorem dtk_circuit_ak_onCurve
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (h : Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY) :
    EdwardsBridge.onCurve ⟨AkX, AkY⟩ := by
  rw [dtk_circuit_eq] at h
  exact (dtkCircuitK_semantic _ _ _ _ _ _ _ _ _ _ h).1

theorem dtk_circuit_ivk_provenance
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (h : Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY) :
    Decaf377Assumptions.DiversifiedTransmissionKeyIvkProvenance
      Nk ⟨AkX, AkY⟩ IvkReduced IvkQuotient := by
  rw [dtk_circuit_eq] at h
  exact (dtkSeg0_provenance Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
    (∃ bits, GatesDef.to_binary IvkReduced 251 bits ∧
      dtkLadderK bits (finalKWithOutputCurve OutX OutY) 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩) h).2.1

theorem dtk_circuit_sound
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (hdiv : EdwardsBridge.onCurve ⟨DivGenX, DivGenY⟩)
    (h : Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY) :
    Decaf377Assumptions.Point.mk OutX OutY =
      Decaf377Assumptions.dtk Nk ⟨AkX, AkY⟩ ⟨DivGenX, DivGenY⟩ IvkReduced IvkQuotient := by
  letI : Ring F := (ZMod.commRing _).toRing
  letI : AddGroupWithOne F := (ZMod.commRing _).toAddGroupWithOne
  rw [dtk_circuit_eq] at h
  obtain ⟨-, bits, hbin, hladder⟩ := dtkCircuitK_semantic _ _ _ _ _ _ _ _ _ _ h
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary pow251_lt_order hbin with
    ⟨bitsBool, rfl, hscalarVal⟩
  have hscalarLt : IvkReduced.val < 2 ^ 251 := by
    rw [hscalarVal]
    exact (Fin.ofBitsLE bitsBool).isLt
  have hladderF := dtkLadderK_mono (finalKWithOutputCurve_implies_finalK OutX OutY)
    251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩ hladder
  have hsem := dtkLadderK_final_semantic bitsBool OutX OutY 251 0 ⟨0, 1⟩
    ⟨DivGenX, DivGenY⟩ (by omega) EdwardsBridge.identity_onCurve hdiv hladderF
  rcases hsem with ⟨-, hfinal⟩
  have hpoint : scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩ =
      ⟨OutX, OutY⟩ := point_eq_of_finalK hfinal
  have hmodel := scalarMulFromBits_toA bitsBool IvkReduced 251 0 ⟨0, 1⟩
    ⟨DivGenX, DivGenY⟩ (by omega)
    (by
      intro i _ hi
      rw [hscalarVal]
      exact (ofBitsLE_testBit bitsBool i hi).symm)
  rw [hpoint] at hmodel
  change Decaf377Assumptions.Point.mk OutX OutY =
    Decaf377Assumptions.scalarMulLEFrom IvkReduced 251 0
      (Decaf377Assumptions.Point.mk 0 1)
      (Decaf377Assumptions.Point.mk DivGenX DivGenY)
  exact hmodel

theorem dtk_circuit_onCurve
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (hdiv : EdwardsBridge.onCurve ⟨DivGenX, DivGenY⟩)
    (h : Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY) :
    EdwardsBridge.onCurve ⟨OutX, OutY⟩ := by
  rw [dtk_circuit_eq] at h
  obtain ⟨-, bits, hbin, hladder⟩ := dtkCircuitK_semantic _ _ _ _ _ _ _ _ _ _ h
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary pow251_lt_order hbin with
    ⟨bitsBool, rfl, -⟩
  have hladderF := dtkLadderK_mono (finalKWithOutputCurve_implies_finalK OutX OutY)
    251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩ hladder
  have hsem := dtkLadderK_final_semantic bitsBool OutX OutY 251 0 ⟨0, 1⟩
    ⟨DivGenX, DivGenY⟩ (by omega) EdwardsBridge.identity_onCurve hdiv hladderF
  rcases hsem with ⟨hon, hfinal⟩
  have hpoint : scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩ =
      ⟨OutX, OutY⟩ := point_eq_of_finalK hfinal
  rwa [hpoint] at hon

/-- The compress mirror's leading gates force the curve equation on its input. -/
theorem compress_circuit_onCurve (X Y WasSquare SqrtRatio Out : F)
    (h : Extracted.DecafCompressToField.circuit X Y WasSquare SqrtRatio Out) :
    EdwardsBridge.onCurve ⟨X, Y⟩ := by
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurve, -⟩ := h
  simp only [Extracted.DecafCompressToField.Gates, GatesGnark9, GatesGnark8,
    GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.eq] at hg0 hg1 hg2 hg3 hg4 hg5 hcurve
  subst hg0 hg1 hg2 hg3 hg4 hg5
  show -(X * X) + Y * Y = 1 + EdwardsBridge.d * (X * X) * (Y * Y)
  simp only [EdwardsBridge.d]
  linear_combination hcurve

/-- `Decaf377Assumptions` predicate-level wrapper: extracted DTK constraints
imply the `dtk` spec, given `divGen` on-curve (supplied by the div_gen
compress constraint at the compose level). -/
theorem decaf377_diversifiedTransmissionKey_sound
    (nk : F) (ak divGen : Decaf377Assumptions.Point) (ivkReduced ivkQuotientA : F)
    (out : Decaf377Assumptions.Point)
    (hdiv : EdwardsBridge.onCurve ⟨divGen.x, divGen.y⟩)
    (h : Decaf377Assumptions.DiversifiedTransmissionKeyCircuit
      nk ak divGen ivkReduced ivkQuotientA out) :
    Decaf377Assumptions.DiversifiedTransmissionKeySpec
      nk ak divGen ivkReduced ivkQuotientA out := by
  obtain ⟨ws, sr, h⟩ := h
  have hprov := dtk_circuit_ivk_provenance nk ak.x ak.y divGen.x divGen.y ws sr
    ivkReduced ivkQuotientA out.x out.y h
  have hsound := dtk_circuit_sound nk ak.x ak.y divGen.x divGen.y ws sr
    ivkReduced ivkQuotientA out.x out.y hdiv h
  refine ⟨?_, ?_⟩
  · cases ak
    simpa using hprov
  · show out = Decaf377Assumptions.dtk nk ak divGen ivkReduced ivkQuotientA
    cases ak; cases divGen; cases out; exact hsound

/-- The DTK output point is on-curve (last rung of the div-gen ladder),
given `divGen` on-curve. -/
theorem decaf377_diversifiedTransmissionKey_onCurve
    (nk : F) (ak divGen : Decaf377Assumptions.Point) (ivkReduced ivkQuotientA : F)
    (out : Decaf377Assumptions.Point)
    (hdiv : EdwardsBridge.onCurve ⟨divGen.x, divGen.y⟩)
    (h : Decaf377Assumptions.DiversifiedTransmissionKeyCircuit
      nk ak divGen ivkReduced ivkQuotientA out) :
    EdwardsBridge.onCurve ⟨out.x, out.y⟩ := by
  obtain ⟨ws, sr, h⟩ := h
  exact dtk_circuit_onCurve nk ak.x ak.y divGen.x divGen.y ws sr
    ivkReduced ivkQuotientA out.x out.y hdiv h

/-- The DTK constraint set asserts the shared `ak` is on-curve. -/
theorem decaf377_diversifiedTransmissionKey_ak_onCurve
    (nk : F) (ak divGen : Decaf377Assumptions.Point) (ivkReduced ivkQuotientA : F)
    (out : Decaf377Assumptions.Point)
    (h : Decaf377Assumptions.DiversifiedTransmissionKeyCircuit
      nk ak divGen ivkReduced ivkQuotientA out) :
    EdwardsBridge.onCurve ⟨ak.x, ak.y⟩ := by
  obtain ⟨ws, sr, h⟩ := h
  exact dtk_circuit_ak_onCurve nk ak.x ak.y divGen.x divGen.y ws sr
    ivkReduced ivkQuotientA out.x out.y h

/-- The compress constraint set asserts its input point is on-curve. -/
theorem decaf377_compressToField_onCurve
    (p : Decaf377Assumptions.Point) (out : F)
    (h : Decaf377Assumptions.CompressToFieldCircuit p out) :
    EdwardsBridge.onCurve ⟨p.x, p.y⟩ := by
  obtain ⟨ws, sr, h⟩ := h
  exact compress_circuit_onCurve p.x p.y ws sr out h

/-! ### Backward builders (deployed-slice mpr direction)

These reconstruct the extracted `dtkSeg*` continuation nest from the folded
`ltcRec` ladder results plus the carried tail `k`. They are the mpr companions of
the forward `dtkSeg*_pass`/`dtkSeg*_ltc*` lemmas and are instance-independent
(the segment structure is identical across all DTK deployments; only the `bits`
values differ). The deployed-slice generator feeds per-instance rematerialized
rows into these fixed builders. -/

end Shieldd.GnarkFormal.DtkBridge
