import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc893 (rho : Nat -> Seg30.F) :
    Seg30.relationLc893 rho = seg30AccX171 rho + seg30AccY171 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc893, Seg30.relationLc893Part0, Seg30.relationLc893Part1, Seg30.relationLc893Part2, Seg30.relationLc893Part3, Seg30.relationLc893Part4, Seg30.relationLc893Part5, Seg30.relationLc893Part6, Seg30.relationLc893Part7, Seg30.relationLc893Part8, Seg30.relationLc893Part9, Seg30.relationLc893Part10]
  rw [seg30AccX171_sum, seg30AccY171_sum]
  ring

theorem seg30_lc894 (rho : Nat -> Seg30.F) :
    Seg30.relationLc894 rho = 3365942066523477375214627643615779220768672575053196459320072238144942379339*seg30AccX171 rho + 1423821851998518400139618756530695611128436944393141932155203380004394904671*rho 28317 := by
  simp only [Seg30.relationLc894, Seg30.relationLc894Part0, Seg30.relationLc894Part1, Seg30.relationLc894Part2, Seg30.relationLc894Part3, Seg30.relationLc894Part4, Seg30.relationLc894Part5]
  rw [seg30AccX171_sum]
  ring

theorem seg30_lc895 (rho : Nat -> Seg30.F) :
    Seg30.relationLc895 rho = 1479178273223536705846674523499032468866589897110292784181593712648855960454*seg30AccY171 rho + 1479178273223536705846674523499032468866589897110292784181593712648855960454 + 637151713021132173793552022640666717427664671317187890220840102765594785537*rho 28317 := by
  simp only [Seg30.relationLc895, Seg30.relationLc895Part0, Seg30.relationLc895Part1, Seg30.relationLc895Part2, Seg30.relationLc895Part3, Seg30.relationLc895Part4, Seg30.relationLc895Part5]
  rw [seg30AccY171_sum]
  ring

theorem seg30_lc896 (rho : Nat -> Seg30.F) :
    Seg30.relationLc896 rho = 3115026921856910999665145848873306393635723446519920655670033148669360752953*seg30AccX171 rho + 1479178273223536705846674523499032468866589897110292784181593712648855960454*seg30AccY171 rho + 1479178273223536705846674523499032468866589897110292784181593712648855960454 + 2124698046204810288358435996883736379891453775337828439176053410255851690560*rho 28317 := by
  simp only [Seg30.relationLc896, Seg30.relationLc896Part0, Seg30.relationLc896Part1, Seg30.relationLc896Part2, Seg30.relationLc896Part3, Seg30.relationLc896Part4, Seg30.relationLc896Part5, Seg30.relationLc896Part6, Seg30.relationLc896Part7, Seg30.relationLc896Part8, Seg30.relationLc896Part9, Seg30.relationLc896Part10]
  rw [seg30AccX171_sum, seg30AccY171_sum]
  ring

theorem seg30_lc897 (rho : Nat -> Seg30.F) :
    Seg30.relationLc897 rho = 5329434827571459424583679089908240137740175888634143172265200307248048486088*seg30AccX171 rho + 6965283476204833718402150415282514062509309438043771043753639743268553278587*seg30AccY171 rho + 6965283476204833718402150415282514062509309438043771043753639743268553278587 + 6319763703223560135890388941897810151484445559816235388759180045661557548481*rho 28317 := by
  simp only [Seg30.relationLc897, Seg30.relationLc897Part0, Seg30.relationLc897Part1, Seg30.relationLc897Part2, Seg30.relationLc897Part3, Seg30.relationLc897Part4, Seg30.relationLc897Part5, Seg30.relationLc897Part6, Seg30.relationLc897Part7, Seg30.relationLc897Part8, Seg30.relationLc897Part9, Seg30.relationLc897Part10]
  rw [seg30AccX171_sum, seg30AccY171_sum]
  ring

theorem seg30_lc898 (rho : Nat -> Seg30.F) :
    Seg30.relationLc898 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX171 rho + rho 29492 := by
  simp only [Seg30.relationLc898, Seg30.relationLc898Part0, Seg30.relationLc898Part1, Seg30.relationLc898Part2, Seg30.relationLc898Part3, Seg30.relationLc898Part4, Seg30.relationLc898Part5]
  rw [seg30AccX171_sum]
  ring

theorem seg30_lc899 (rho : Nat -> Seg30.F) :
    Seg30.relationLc899 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY171 rho + rho 29494 := by
  simp only [Seg30.relationLc899, Seg30.relationLc899Part0, Seg30.relationLc899Part1, Seg30.relationLc899Part2, Seg30.relationLc899Part3, Seg30.relationLc899Part4, Seg30.relationLc899Part5]
  rw [seg30AccY171_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
