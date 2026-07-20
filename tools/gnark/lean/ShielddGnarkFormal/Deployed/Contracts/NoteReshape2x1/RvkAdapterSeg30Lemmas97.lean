import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1418 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1418 rho = seg30AccX246 rho + seg30AccY246 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc1418, Seg30.relationLc1418Part0, Seg30.relationLc1418Part1, Seg30.relationLc1418Part2, Seg30.relationLc1418Part3, Seg30.relationLc1418Part4, Seg30.relationLc1418Part5, Seg30.relationLc1418Part6, Seg30.relationLc1418Part7, Seg30.relationLc1418Part8, Seg30.relationLc1418Part9, Seg30.relationLc1418Part10, Seg30.relationLc1418Part11, Seg30.relationLc1418Part12, Seg30.relationLc1418Part13, Seg30.relationLc1418Part14, Seg30.relationLc1418Part15]
  rw [seg30AccX246_sum, seg30AccY246_sum]
  ring

theorem seg30_lc1419 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1419 rho = 5534924756406337177111513556176623967822603506254860987227413148256358049338*seg30AccX246 rho + 872969105361601625054695350166036627749660834881608083797783466325305210703*rho 28311 := by
  simp only [Seg30.relationLc1419, Seg30.relationLc1419Part0, Seg30.relationLc1419Part1, Seg30.relationLc1419Part2, Seg30.relationLc1419Part3, Seg30.relationLc1419Part4, Seg30.relationLc1419Part5, Seg30.relationLc1419Part6, Seg30.relationLc1419Part7]
  rw [seg30AccX246_sum]
  ring

theorem seg30_lc1420 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1420 rho = 1099604033722253165143295412136742437014200263599542477935666598053853222560*seg30AccY246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560 + 2327547121241648030449164254120704810200423337676700747191607018970167858005*rho 28311 := by
  simp only [Seg30.relationLc1420, Seg30.relationLc1420Part0, Seg30.relationLc1420Part1, Seg30.relationLc1420Part2, Seg30.relationLc1420Part3, Seg30.relationLc1420Part4, Seg30.relationLc1420Part5, Seg30.relationLc1420Part6, Seg30.relationLc1420Part7]
  rw [seg30AccY246_sum]
  ring

theorem seg30_lc1421 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1421 rho = 4650339230074738944952965040301187853573632306477147635499344803157533241501*seg30AccX246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560*seg30AccY246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560 + 5033641772864297541305806834753178520561105303007391046273071358193728747976*rho 28311 := by
  simp only [Seg30.relationLc1421, Seg30.relationLc1421Part0, Seg30.relationLc1421Part1, Seg30.relationLc1421Part2, Seg30.relationLc1421Part3, Seg30.relationLc1421Part4, Seg30.relationLc1421Part5, Seg30.relationLc1421Part6, Seg30.relationLc1421Part7, Seg30.relationLc1421Part8, Seg30.relationLc1421Part9, Seg30.relationLc1421Part10, Seg30.relationLc1421Part11, Seg30.relationLc1421Part12, Seg30.relationLc1421Part13, Seg30.relationLc1421Part14, Seg30.relationLc1421Part15]
  rw [seg30AccX246_sum, seg30AccY246_sum]
  ring

theorem seg30_lc1422 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1422 rho = 3794122519353631479295859898480358677802267028676916192435888652759875997540*seg30AccX246 rho + 7344857715706117259105529526644804094361699071554521349999566857863556016481*seg30AccY246 rho + 7344857715706117259105529526644804094361699071554521349999566857863556016481 + 3410819976564072882943018104028368010814794032146672781662162097723680491065*rho 28311 := by
  simp only [Seg30.relationLc1422, Seg30.relationLc1422Part0, Seg30.relationLc1422Part1, Seg30.relationLc1422Part2, Seg30.relationLc1422Part3, Seg30.relationLc1422Part4, Seg30.relationLc1422Part5, Seg30.relationLc1422Part6, Seg30.relationLc1422Part7, Seg30.relationLc1422Part8, Seg30.relationLc1422Part9, Seg30.relationLc1422Part10, Seg30.relationLc1422Part11, Seg30.relationLc1422Part12, Seg30.relationLc1422Part13, Seg30.relationLc1422Part14, Seg30.relationLc1422Part15]
  rw [seg30AccX246_sum, seg30AccY246_sum]
  ring

theorem seg30_lc1423 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1423 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX246 rho + rho 30086 := by
  simp only [Seg30.relationLc1423, Seg30.relationLc1423Part0, Seg30.relationLc1423Part1, Seg30.relationLc1423Part2, Seg30.relationLc1423Part3, Seg30.relationLc1423Part4, Seg30.relationLc1423Part5, Seg30.relationLc1423Part6, Seg30.relationLc1423Part7]
  rw [seg30AccX246_sum]
  ring

theorem seg30_lc1424 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1424 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY246 rho + rho 30088 := by
  simp only [Seg30.relationLc1424, Seg30.relationLc1424Part0, Seg30.relationLc1424Part1, Seg30.relationLc1424Part2, Seg30.relationLc1424Part3, Seg30.relationLc1424Part4, Seg30.relationLc1424Part5, Seg30.relationLc1424Part6, Seg30.relationLc1424Part7]
  rw [seg30AccY246_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
