import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas17
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedSplitRung
import ShielddGnarkFormal.RvkFixedBaseLiteral
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem rvk_step167 (rho : Nat -> F)
    (r167 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow167 rho)
    (r1133 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1133 rho)
    (r1134 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1134 rho)
    (r1135 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1135 rho)
    (r1136 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1136 rho)
    (r1137 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1137 rho)
    (r1138 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1138 rho)
    (r1139 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1139 rho)
    (r1140 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1140 rho)
    (hacc : onCurve (rvkRvkAcc rho 167)) :
    RvkFixedBaseLadder.FixedStepRel 167 (rho 168)
      (rvkRvkAcc rho 167) (rvkRvkAcc rho (167 + 1)) := by
  have hbrow167 : (1*(rho 168))*(1 + (-1)*(rho 168)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow167] using r167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1133 at r1133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1134 at r1134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1135 at r1135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1136 at r1136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1137 at r1137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1138 at r1138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1139 at r1139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1140 at r1140
  have h13_167 : rho 1134 = rvkAccX166 rho + rvkAccY166 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc966 rho
    rw [hLc] at r1133
    linear_combination -r1133
  have h14_167 : (4918045902546149631114732373376623948482397847477317210332275144138366725318*rvkAccX166 rho + 493480449235403514561888987779906694161401996783583403140343374931943690515*rho 1) * (3641631821136829194203786441303006704722604542758872218004792580091789365315*rvkAccY166 rho + 3641631821136829194203786441303006704722604542758872218004792580091789365315 + 4743634741443840971423366029108310819962992559215462164130624617425074670819*rho 1) = rho 1135 := by
    have hL := rvk_lc967 rho
    have hR := rvk_lc968 rho
    rw [hL, hR] at r1134
    linear_combination r1134
  have h15_167 : 384577724453569314052699023166649618916577493135909983991214584112818084235*rvkAccX166 rho + 3641631821136829194203786441303006704722604542758872218004792580091789365315*rvkAccY166 rho + 3641631821136829194203786441303006704722604542758872218004792580091789365315 + 7460784791392073826731019034564597855776145672676744396555711430575241411646*rho 1 = rho 1136 := by
    have hLc := rvk_lc969 rho
    rw [hLc] at r1135
    linear_combination r1135
  have h16_167 : rho 1137 * (1 + rho 1135) = rho 1136 := by
    linear_combination r1136
  have h17_167 : 8059884024974801110196125915614896912459321842018153843944018871804591154806*rvkAccX166 rho + 4802829928291541230045038497478539826653294792395191609930440875825619873726*rvkAccY166 rho + 4802829928291541230045038497478539826653294792395191609930440875825619873726 + 983676958036296597517805904216948675599753662477319431379522025342167827395*rho 1 = rho 1138 := by
    have hLc := rvk_lc970 rho
    rw [hLc] at r1137
    linear_combination r1137
  have h18_167 : rho 1139 * (1 + (-1)*rho 1135) = rho 1138 + 4026209545590398508256485464469656323639182035894782201996007164204607449550*rho 1134 := by
    linear_combination r1138
  have hSelX_167 : (1*rho 168) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX166 rho + rho 1137) = rho 1140 := by
    have hLc := rvk_lc971 rho
    rw [hLc] at r1139
    linear_combination r1139
  have hSelY_167 : (1*rho 168) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY166 rho + rho 1139) = rho 1141 := by
    have hLc := rvk_lc972 rho
    rw [hLc] at r1140
    linear_combination r1140
  have hr167 : RvkFixedBaseLadder.FixedStepRel 167 (rho 168) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX166 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY166 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX167 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY167 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX167_succ, rvkAccY167_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 167
      (3641631821136829194203786441303006704722604542758872218004792580091789365315 : EdwardsBridge.F) (384577724453569314052699023166649618916577493135909983991214584112818084235 : EdwardsBridge.F) (4026209545590398508256485464469656323639182035894782201996007164204607449550 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4918045902546149631114732373376623948482397847477317210332275144138366725318 : EdwardsBridge.F) (493480449235403514561888987779906694161401996783583403140343374931943690515 : EdwardsBridge.F)
      (4743634741443840971423366029108310819962992559215462164130624617425074670819 : EdwardsBridge.F) (7460784791392073826731019034564597855776145672676744396555711430575241411646 : EdwardsBridge.F) (8059884024974801110196125915614896912459321842018153843944018871804591154806 : EdwardsBridge.F)
      (4802829928291541230045038497478539826653294792395191609930440875825619873726 : EdwardsBridge.F) (983676958036296597517805904216948675599753662477319431379522025342167827395 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX166 rho : F)
      (rvkAccY166 rho : F) (rho 168 : F)
      (rho 1134 : F) (rho 1135 : F) (rho 1136 : F)
      (rho 1138 : F) (rho 1137 : F) (rho 1139 : F)
      (rho 1140 : F) (rho 1141 : F) hacc
      (by rw [C_eq_L167]; simp only [L167])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_167 h14_167 h15_167 h16_167 h17_167 h18_167 hSelX_167 hSelY_167 hbrow167
  exact hr167

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

