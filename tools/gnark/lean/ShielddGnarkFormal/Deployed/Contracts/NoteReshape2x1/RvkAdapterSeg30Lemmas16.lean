import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc851 (rho : Nat -> Seg30.F) :
    Seg30.relationLc851 rho = seg30AccX165 rho + seg30AccY165 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc851, Seg30.relationLc851Part0, Seg30.relationLc851Part1, Seg30.relationLc851Part2, Seg30.relationLc851Part3, Seg30.relationLc851Part4, Seg30.relationLc851Part5, Seg30.relationLc851Part6, Seg30.relationLc851Part7, Seg30.relationLc851Part8, Seg30.relationLc851Part9, Seg30.relationLc851Part10]
  rw [seg30AccX165_sum, seg30AccY165_sum]
  ring

theorem seg30_lc852 (rho : Nat -> Seg30.F) :
    Seg30.relationLc852 rho = 6752900520793684586460825202669617871789922920207616704230916223175399863426*seg30AccX165 rho + 2172110831757520459045122539396047039067655777716602916546462073822197938371*rho 28311 := by
  simp only [Seg30.relationLc852, Seg30.relationLc852Part0, Seg30.relationLc852Part1, Seg30.relationLc852Part2, Seg30.relationLc852Part3, Seg30.relationLc852Part4, Seg30.relationLc852Part5]
  rw [seg30AccX165_sum]
  ring

theorem seg30_lc853 (rho : Nat -> Seg30.F) :
    Seg30.relationLc853 rho = 134981315129973742343420017434531221155794090476452068230443324353935350223*seg30AccY165 rho + 134981315129973742343420017434531221155794090476452068230443324353935350223 + 3286899558619516634992467298345430043381724126815233902352925627152671136555*rho 28311 := by
  simp only [Seg30.relationLc853, Seg30.relationLc853Part0, Seg30.relationLc853Part1, Seg30.relationLc853Part2, Seg30.relationLc853Part3, Seg30.relationLc853Part4, Seg30.relationLc853Part5]
  rw [seg30AccY165_sum]
  ring

theorem seg30_lc854 (rho : Nat -> Seg30.F) :
    Seg30.relationLc854 rho = 3518664608176657953754214696520971583695025252083422678664930355434384714524*seg30AccX165 rho + 134981315129973742343420017434531221155794090476452068230443324353935350223*seg30AccY165 rho + 134981315129973742343420017434531221155794090476452068230443324353935350223 + 5342130110311542382189399258803501128320603195704990114351913727838906816341*rho 28311 := by
  simp only [Seg30.relationLc854, Seg30.relationLc854Part0, Seg30.relationLc854Part1, Seg30.relationLc854Part2, Seg30.relationLc854Part3, Seg30.relationLc854Part4, Seg30.relationLc854Part5, Seg30.relationLc854Part6, Seg30.relationLc854Part7, Seg30.relationLc854Part8, Seg30.relationLc854Part9, Seg30.relationLc854Part10]
  rw [seg30AccX165_sum, seg30AccY165_sum]
  ring

theorem seg30_lc855 (rho : Nat -> Seg30.F) :
    Seg30.relationLc855 rho = 4925797141251712470494610242260574947680874083070641149270303100483024524517*seg30AccX165 rho + 8309480434298396681905404921347015310220105244677611759704790131563473888818*seg30AccY165 rho + 8309480434298396681905404921347015310220105244677611759704790131563473888818 + 3102331639116828042059425679978045403055296139449073713583319728078502422700*rho 28311 := by
  simp only [Seg30.relationLc855, Seg30.relationLc855Part0, Seg30.relationLc855Part1, Seg30.relationLc855Part2, Seg30.relationLc855Part3, Seg30.relationLc855Part4, Seg30.relationLc855Part5, Seg30.relationLc855Part6, Seg30.relationLc855Part7, Seg30.relationLc855Part8, Seg30.relationLc855Part9, Seg30.relationLc855Part10]
  rw [seg30AccX165_sum, seg30AccY165_sum]
  ring

theorem seg30_lc856 (rho : Nat -> Seg30.F) :
    Seg30.relationLc856 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX165 rho + rho 29438 := by
  simp only [Seg30.relationLc856, Seg30.relationLc856Part0, Seg30.relationLc856Part1, Seg30.relationLc856Part2, Seg30.relationLc856Part3, Seg30.relationLc856Part4, Seg30.relationLc856Part5]
  rw [seg30AccX165_sum]
  ring

theorem seg30_lc857 (rho : Nat -> Seg30.F) :
    Seg30.relationLc857 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY165 rho + rho 29440 := by
  simp only [Seg30.relationLc857, Seg30.relationLc857Part0, Seg30.relationLc857Part1, Seg30.relationLc857Part2, Seg30.relationLc857Part3, Seg30.relationLc857Part4, Seg30.relationLc857Part5]
  rw [seg30AccY165_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
