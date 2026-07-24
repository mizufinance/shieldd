import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas18
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

theorem rvk_step168 (rho : Nat -> F)
    (r168 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow168 rho)
    (r1141 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1141 rho)
    (r1142 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1142 rho)
    (r1143 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1143 rho)
    (r1144 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1144 rho)
    (r1145 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1145 rho)
    (r1146 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1146 rho)
    (r1147 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1147 rho)
    (r1148 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1148 rho)
    (hacc : onCurve (rvkRvkAcc rho 168)) :
    RvkFixedBaseLadder.FixedStepRel 168 (rho 169)
      (rvkRvkAcc rho 168) (rvkRvkAcc rho (168 + 1)) := by
  have hbrow168 : (1*(rho 169))*(1 + (-1)*(rho 169)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow168] using r168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1141 at r1141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1142 at r1142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1143 at r1143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1144 at r1144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1145 at r1145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1146 at r1146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1147 at r1147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1148 at r1148
  have h13_168 : rho 1142 = rvkAccX167 rho + rvkAccY167 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc973 rho
    rw [hLc] at r1141
    linear_combination -r1141
  have h14_168 : (3577537434118340960807172061232454296647112651088978807367204990823277584171*rvkAccX167 rho + 1370083345942680029195480491739159083921214067939609907254344268213071678047*rho 1) * (8007424209605860490869656975015322035683011603273810880079350669994908888146*rvkAccY167 rho + 8007424209605860490869656975015322035683011603273810880079350669994908888146 + 4701979476017914341331125189053818542549474616706661558177561626931212170113*rho 1) = rho 1143 := by
    have hL := rvk_lc974 rho
    have hR := rvk_lc975 rho
    rw [hL, hR] at r1142
    linear_combination r1142
  have h15_168 : 3299583714584440728756842303814451294710429767670600561327687084731336040931*rvkAccX167 rho + 8007424209605860490869656975015322035683011603273810880079350669994908888146*rvkAccY167 rho + 8007424209605860490869656975015322035683011603273810880079350669994908888146 + 6812849619733360336146437439723069383420949364177451958706643256684888782875*rho 1 = rho 1144 := by
    have hLc := rvk_lc976 rho
    rw [hLc] at r1143
    linear_combination r1143
  have h16_168 : rho 1145 * (1 + rho 1143) = rho 1144 := by
    linear_combination r1144
  have h17_168 : 5144878034843929695491982634967095236665469567483463266607546371186073198110*rvkAccX167 rho + 437037539822509933379167963766224495692887731880252947855882785922500350895*rvkAccY167 rho + 437037539822509933379167963766224495692887731880252947855882785922500350895 + 1631612129695010088102387499058477147954949970976611869228590199232520456166*rho 1 = rho 1146 := by
    have hLc := rvk_lc977 rho
    rw [hLc] at r1145
    linear_combination r1145
  have h18_168 : rho 1147 * (1 + (-1)*rho 1143) = rho 1146 + 2862546174761930795377674340048226799017542035790347613471804298808835690036*rho 1142 := by
    linear_combination r1146
  have hSelX_168 : (1*rho 169) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX167 rho + rho 1145) = rho 1148 := by
    have hLc := rvk_lc978 rho
    rw [hLc] at r1147
    linear_combination r1147
  have hSelY_168 : (1*rho 169) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY167 rho + rho 1147) = rho 1149 := by
    have hLc := rvk_lc979 rho
    rw [hLc] at r1148
    linear_combination r1148
  have hr168 : RvkFixedBaseLadder.FixedStepRel 168 (rho 169) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX167 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY167 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX168 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY168 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX168_succ, rvkAccY168_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 168
      (8007424209605860490869656975015322035683011603273810880079350669994908888146 : EdwardsBridge.F) (3299583714584440728756842303814451294710429767670600561327687084731336040931 : EdwardsBridge.F) (2862546174761930795377674340048226799017542035790347613471804298808835690036 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3577537434118340960807172061232454296647112651088978807367204990823277584171 : EdwardsBridge.F) (1370083345942680029195480491739159083921214067939609907254344268213071678047 : EdwardsBridge.F)
      (4701979476017914341331125189053818542549474616706661558177561626931212170113 : EdwardsBridge.F) (6812849619733360336146437439723069383420949364177451958706643256684888782875 : EdwardsBridge.F) (5144878034843929695491982634967095236665469567483463266607546371186073198110 : EdwardsBridge.F)
      (437037539822509933379167963766224495692887731880252947855882785922500350895 : EdwardsBridge.F) (1631612129695010088102387499058477147954949970976611869228590199232520456166 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX167 rho : F)
      (rvkAccY167 rho : F) (rho 169 : F)
      (rho 1142 : F) (rho 1143 : F) (rho 1144 : F)
      (rho 1146 : F) (rho 1145 : F) (rho 1147 : F)
      (rho 1148 : F) (rho 1149 : F) hacc
      (by rw [C_eq_L168]; simp only [L168])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_168 h14_168 h15_168 h16_168 h17_168 h18_168 hSelX_168 hSelY_168 hbrow168
  exact hr168

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

