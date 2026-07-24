import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas5
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedSplitRung
import ShielddGnarkFormal.RvkFixedBaseLiteral
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem rvk_step155 (rho : Nat -> F)
    (r155 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow155 rho)
    (r1037 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1037 rho)
    (r1038 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1038 rho)
    (r1039 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1039 rho)
    (r1040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1040 rho)
    (r1041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1041 rho)
    (r1042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1042 rho)
    (r1043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1043 rho)
    (r1044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1044 rho)
    (hacc : onCurve (rvkRvkAcc rho 155)) :
    RvkFixedBaseLadder.FixedStepRel 155 (rho 156)
      (rvkRvkAcc rho 155) (rvkRvkAcc rho (155 + 1)) := by
  have hbrow155 : (1*(rho 156))*(1 + (-1)*(rho 156)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow155] using r155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1037 at r1037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1038 at r1038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1039 at r1039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1040 at r1040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1041 at r1041
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1042 at r1042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1043 at r1043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1044 at r1044
  have h13_155 : rho 1038 = rvkAccX154 rho + rvkAccY154 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc882 rho
    rw [hLc] at r1037
    linear_combination -r1037
  have h14_155 : (4368821252455360196064132101118635789175210849407228732022954977523087268278*rvkAccX154 rho + 2107395903920557572141994998616808636924098578621934478699655925422990880072*rho 1) * (4159213325184189711441316843469868268679184464412463059292100956586171524082*rvkAccY154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082 + 7490811308284524701189420543202543492686314952173282607366257967557762122603*rho 1) = rho 1039 := by
    have hL := rvk_lc883 rho
    have hR := rvk_lc884 rho
    rw [hL, hR] at r1038
    linear_combination r1038
  have h15_155 : 7196429448620020136449036585410400333515637239171124634835257818771577116372*rvkAccX154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082*rvkAccY154 rho + 4159213325184189711441316843469868268679184464412463059292100956586171524082 + 8209889118780059873848834645905447917446503706795333695833008928860707228632*rho 1 = rho 1040 := by
    have hLc := rvk_lc885 rho
    rw [hLc] at r1039
    linear_combination r1039
  have h16_155 : rho 1041 * (1 + rho 1039) = rho 1040 := by
    linear_combination r1040
  have h17_155 : 1248032300808350287799788353371146197860262095982939193099975637145832122669*rvkAccX154 rho + 4285248424244180712807508095311678262696714870741600768643132499331237714959*rvkAccY154 rho + 4285248424244180712807508095311678262696714870741600768643132499331237714959 + 234572630648310550399990292876098613929395628358730132102224527056702010409*rho 1 = rho 1042 := by
    have hLc := rvk_lc886 rho
    rw [hLc] at r1041
    linear_combination r1041
  have h18_155 : rho 1043 * (1 + (-1)*rho 1039) = rho 1042 + 2911181024375839423641528490098722070818922368429523866192125319440339401413*rho 1038 := by
    linear_combination r1042
  have hSelX_155 : (1*rho 156) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX154 rho + rho 1041) = rho 1044 := by
    have hLc := rvk_lc887 rho
    rw [hLc] at r1043
    linear_combination r1043
  have hSelY_155 : (1*rho 156) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY154 rho + rho 1043) = rho 1045 := by
    have hLc := rvk_lc888 rho
    rw [hLc] at r1044
    linear_combination r1044
  have hr155 : RvkFixedBaseLadder.FixedStepRel 155 (rho 156) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX154 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY154 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX155 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY155 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX155_succ, rvkAccY155_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 155
      (4159213325184189711441316843469868268679184464412463059292100956586171524082 : EdwardsBridge.F) (7196429448620020136449036585410400333515637239171124634835257818771577116372 : EdwardsBridge.F) (2911181024375839423641528490098722070818922368429523866192125319440339401413 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4368821252455360196064132101118635789175210849407228732022954977523087268278 : EdwardsBridge.F) (2107395903920557572141994998616808636924098578621934478699655925422990880072 : EdwardsBridge.F)
      (7490811308284524701189420543202543492686314952173282607366257967557762122603 : EdwardsBridge.F) (8209889118780059873848834645905447917446503706795333695833008928860707228632 : EdwardsBridge.F) (1248032300808350287799788353371146197860262095982939193099975637145832122669 : EdwardsBridge.F)
      (4285248424244180712807508095311678262696714870741600768643132499331237714959 : EdwardsBridge.F) (234572630648310550399990292876098613929395628358730132102224527056702010409 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX154 rho : F)
      (rvkAccY154 rho : F) (rho 156 : F)
      (rho 1038 : F) (rho 1039 : F) (rho 1040 : F)
      (rho 1042 : F) (rho 1041 : F) (rho 1043 : F)
      (rho 1044 : F) (rho 1045 : F) hacc
      (by rw [C_eq_L155]; simp only [L155])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_155 h14_155 h15_155 h16_155 h17_155 h18_155 hSelX_155 hSelY_155 hbrow155
  exact hr155

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

