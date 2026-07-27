import ShielddGnarkFormal.DtkBridge.SemanticsSeg0
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

theorem dtkSeg0_provenance
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F) (k : Prop)
    (h : dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
      (fun bits => dtkTailK bits IvkQuotient k)) :
    EdwardsBridge.onCurve ⟨AkX, AkY⟩ ∧
    Decaf377Assumptions.DiversifiedTransmissionKeyIvkProvenance
      Nk ⟨AkX, AkY⟩ IvkReduced IvkQuotient ∧
    k := by
  unfold dtkSeg0 at h
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurve,
    gd0, hgd0, gd1, hgd1, gd2, hgd2, gd3, hgd3, gd4, hgd4, gd5, hgd5, hcurved,
    ge0, hge0, ge1, hge1, ge2, hge2, ge3, hge3, ge4, hge4, ge5, hge5, hcurvee,
    g7, hg7, g8, hg8, g9, hg9, g10, hg10, g11, hg11, g12, hg12,
    hwsb, g14, hg14, g15, hg15, g16, hg16, g17, hg17, g18, hg18, h18z,
    g20, hg20, g21, hg21, g22, hg22, g23, hg23, g24, hg24, g25, hg25, h25z,
    g27, hg27, h27z, g29, hg29, g30, hg30, g31, hg31, h31z,
    g33, hg33, g34, hg34, h34, g36, hg36, habs1⟩ := h
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg0 hg1 hg2 hg3 hg4 hg5 hcurve hge0
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg7 hg8 hg9 hg10 hg11 hg12 hg17
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg18 h18z hg20 hg21 hg24 hg25 h25z
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg27 h27z hg29 hg30 hg31 h31z hg33
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg34 h34 hg36
  subst hg0 hg1 hg2 hg3 hg4 hg5 hge0 hg7 hg8 hg9 hg10 hg11 hg12 hg17 hg18
  subst hg20 hg21 hg24 hg25 hg27 hg29 hg30 hg31 hg33 hg34 hg36
  have honc : EdwardsBridge.onCurve ⟨AkX, AkY⟩ := by
    show -(AkX * AkX) + AkY * AkY = 1 + EdwardsBridge.d * (AkX * AkX) * (AkY * AkY)
    simp only [EdwardsBridge.d]
    linear_combination hcurve
  obtain ⟨x1, hbin1, hlt1, hk1⟩ := canonical_value habs1
  obtain ⟨g38, hg38, g39, hg39, g40, hsel1, g41, hg41, g42, hg42, g43, hg43,
    g44, hg44, habs2⟩ := hk1
  obtain ⟨x2, hbin2, hlt2, hk2⟩ := canonical_value habs2
  obtain ⟨g46, hg46, g47, hg47, g48, hsel2, hposeidon⟩ := hk2
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq] at hg38 hg39 hg41
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq] at hg42 hg43 hg44 hg46 hg47
  subst hg38 hg39 hg46 hg47
  have hrel : Extracted.DecafCompressToField.Relation AkX AkY g48 := by
    refine ⟨?_, SqrtRatio, ?_, ?_⟩
    · exact hcurve
    · unfold Extracted.DecafCompressToField.SqrtCase
        Extracted.DecafCompressToField.den Extracted.DecafCompressToField.u1
        Extracted.DecafCompressToField.aMinusD Extracted.DecafCompressToField.zeta
        Extracted.DecafCompressToField.zetaNat
      simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.select,
        GatesDef.inv, GatesDef.and] at hg15 hg16 hg22 hg23
      obtain ⟨-, h15⟩ := hg15
      obtain ⟨-, hinv⟩ := hg16
      obtain ⟨-, -, h22⟩ := hg22
      obtain ⟨-, -, h23⟩ := hg23
      change F at g16
      rcases dtk_is_zero_cases _ _ hg14 with ⟨hdne, h14⟩ | ⟨hdz, h14⟩
      · subst h14
        rw [h15] at hinv
        simp only [zero_mul, sub_zero] at hinv
        rcases dtk_is_bool_cases _ hwsb with hb | hb
        · right; right
          refine ⟨hdne, ?_⟩
          have h23' : g23 = 1 := by rw [h23, hb]; ring
          rw [h23', one_mul, sub_eq_zero] at h31z
          exact sqrt_zeta_case_mul SqrtRatio g16
            ((AkX + AkX * AkY) * (AkX - AkX * AkY) *
              8444461749428370424248824938781546531375899335154063827935233455917409236019 *
              (AkX * AkX))
            2841681278031794617739547238867782961338435681360110683443920362658525667816 h31z hinv
        · left
          refine ⟨hdne, ?_⟩
          rw [hb, one_mul, sub_eq_zero] at h25z
          rw [h25z]
          exact hinv
      · right; left
        subst h14
        refine ⟨hdz, ?_⟩
        rcases dtk_is_bool_cases _ hwsb with hb | hb
        · have h22' : g22 = 1 := by rw [h22, hb]; ring
          rw [h22', one_mul] at h27z
          exact
            (Shieldd.GnarkFormal.ChoiceFreeZMod.eq_zero_or_eq_zero_of_mul_eq_zero
              Order h27z).elim id id
        · exfalso
          rw [hb, one_mul] at h18z
          exact one_ne_zero h18z
    · have hsel1D : Extracted.DecafDtk.Gates.select
          (Extracted.DecafDtk.Gates.sub 1 (toZMod x1.head))
          (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY)))
          (Extracted.DecafDtk.Gates.neg
            (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY)))) g40 := by
        simpa [List.Vector.getElem_def', List.Vector.get_zero, List.Vector.head_map,
          Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.sub,
          GatesDef.neg] using hsel1
      have hsel1' : Extracted.DecafCompressToField.Gates.select
          (Extracted.DecafCompressToField.Gates.sub 1 (toZMod x1.head))
          (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY)))
          (Extracted.DecafCompressToField.Gates.neg
            (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY)))) g40 := by
        simpa [Extracted.DecafDtk.Gates, Extracted.DecafCompressToField.Gates,
          GatesGnark9, GatesGnark8] using hsel1D
      have h40 : g40 =
          Extracted.DecafCompressToField.absF
            (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY))) :=
        Extracted.DecafCompressToField.abs_select_eq _ _ x1 hbin1 hlt1 hsel1'
      have hsel2D : Extracted.DecafDtk.Gates.select
          (Extracted.DecafDtk.Gates.sub 1 (toZMod x2.head)) g44
          (Extracted.DecafDtk.Gates.neg g44) g48 := by
        simpa [List.Vector.getElem_def', List.Vector.get_zero, List.Vector.head_map,
          Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.sub,
          GatesDef.neg] using hsel2
      have hsel2' : Extracted.DecafCompressToField.Gates.select
          (Extracted.DecafCompressToField.Gates.sub 1 (toZMod x2.head)) g44
          (Extracted.DecafCompressToField.Gates.neg g44) g48 := by
        simpa [Extracted.DecafDtk.Gates, Extracted.DecafCompressToField.Gates,
          GatesGnark9, GatesGnark8] using hsel2D
      have h48 : g48 = Extracted.DecafCompressToField.absF g44 :=
        Extracted.DecafCompressToField.abs_select_eq _ _ x2 hbin2 hlt2 hsel2'
      rw [h48, hg44, hg43, hg42, hg41, h40]
      simp only [Extracted.DecafCompressToField.outOf, Extracted.DecafCompressToField.u1,
        Extracted.DecafCompressToField.aMinusD]
  have hpose := perm2_value hposeidon
  obtain ⟨g50, hg50, g51, hg51, hval, g53, hg53, g54, hg54, g55, hg55,
    g56, hg56, g57, hg57, g58, hg58, g59, hg59, g60, hg60, hvanish,
    bits, hbin, htail⟩ := hpose
  have htail' := dtkTailK_laddersTail bits IvkQuotient k htail
  let ivkModQ := Poseidon2Bridge.permSpec2
    (9361307723838134966014044876631201920149619:F) Nk g48
  have hmodCircuit : Extracted.IvkModR.circuit ivkModQ IvkQuotient IvkReduced := by
    rw [Extracted.IvkModR.circuit_eq_recursive]
    refine ⟨g50, ?_, g51, ?_, ?_, g53, ?_, g54, ?_, g55, ?_, g56, ?_,
      g57, ?_, g58, ?_, g59, ?_, g60, ?_, ?_, bits, ?_, htail'.1⟩
    · simpa [ivkModQ, Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg50
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg51
    · simpa [ivkModQ, Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hval
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg53
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg54
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg55
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg56
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg57
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg58
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg59
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg60
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hvanish
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hbin
  have hmod := Extracted.IvkModR.circuit_sound ivkModQ IvkQuotient IvkReduced hmodCircuit
  refine ⟨honc, ?_, htail'.2⟩
  refine ⟨g48, hrel, ?_, ?_⟩
  · simpa [ivkModQ, Decaf377Assumptions.dtkIvkModQ, Poseidon377.ivkDomain] using hmod.1
  · simpa [ivkModQ, Decaf377Assumptions.dtkIvkModQ, Poseidon377.ivkDomain] using hmod.2

end Shieldd.GnarkFormal.DtkBridge
