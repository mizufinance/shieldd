import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1383 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1383 rho = seg30AccX241 rho + seg30AccY241 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1383, Seg30.relationLc1383Part0, Seg30.relationLc1383Part1, Seg30.relationLc1383Part2, Seg30.relationLc1383Part3, Seg30.relationLc1383Part4, Seg30.relationLc1383Part5, Seg30.relationLc1383Part6, Seg30.relationLc1383Part7, Seg30.relationLc1383Part8, Seg30.relationLc1383Part9, Seg30.relationLc1383Part10, Seg30.relationLc1383Part11, Seg30.relationLc1383Part12, Seg30.relationLc1383Part13, Seg30.relationLc1383Part14, Seg30.relationLc1383Part15]
  rw [seg30AccX241_sum, seg30AccY241_sum]
  ring

theorem seg30_lc1384 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1384 rho = 4577919756531272352425690818081278835207495153207440076621707172903191132847*seg30AccX241 rho + 8220088989769612254898518930562028505285603666816911535389190907107422041386*rho 28317 := by
  simp only [Seg30.relationLc1384, Seg30.relationLc1384Part0, Seg30.relationLc1384Part1, Seg30.relationLc1384Part2, Seg30.relationLc1384Part3, Seg30.relationLc1384Part4, Seg30.relationLc1384Part5, Seg30.relationLc1384Part6, Seg30.relationLc1384Part7]
  rw [seg30AccX241_sum]
  ring

theorem seg30_lc1385 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1385 rho = 1832778559720170430478539365272560586379194156184726994910167946211622715322*seg30AccY241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322 + 8252697770305461570771050865159685789044519724630267641297089757715806104875*rho 28317 := by
  simp only [Seg30.relationLc1385, Seg30.relationLc1385Part0, Seg30.relationLc1385Part1, Seg30.relationLc1385Part2, Seg30.relationLc1385Part3, Seg30.relationLc1385Part4, Seg30.relationLc1385Part5, Seg30.relationLc1385Part6, Seg30.relationLc1385Part7]
  rw [seg30AccY241_sum]
  ring

theorem seg30_lc1386 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1386 rho = 5910681912627641956045826418868676149011538791681197739931051053618770712501*seg30AccX241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322*seg30AccY241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322 + 3936751622050889345279645366488077923281368824548767574225078338157616812496*rho 28317 := by
  simp only [Seg30.relationLc1386, Seg30.relationLc1386Part0, Seg30.relationLc1386Part1, Seg30.relationLc1386Part2, Seg30.relationLc1386Part3, Seg30.relationLc1386Part4, Seg30.relationLc1386Part5, Seg30.relationLc1386Part6, Seg30.relationLc1386Part7, Seg30.relationLc1386Part8, Seg30.relationLc1386Part9, Seg30.relationLc1386Part10, Seg30.relationLc1386Part11, Seg30.relationLc1386Part12, Seg30.relationLc1386Part13, Seg30.relationLc1386Part14, Seg30.relationLc1386Part15]
  rw [seg30AccX241_sum, seg30AccY241_sum]
  ring

theorem seg30_lc1387 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1387 rho = 2533779836800728468202998519912870382364360543472866088004182402298638526540*seg30AccX241 rho + 6611683189708199993770285573508985944996705178969336833025065509705786523719*seg30AccY241 rho + 6611683189708199993770285573508985944996705178969336833025065509705786523719 + 4507710127377481078969179572293468608094530510605296253710155117759792426545*rho 28317 := by
  simp only [Seg30.relationLc1387, Seg30.relationLc1387Part0, Seg30.relationLc1387Part1, Seg30.relationLc1387Part2, Seg30.relationLc1387Part3, Seg30.relationLc1387Part4, Seg30.relationLc1387Part5, Seg30.relationLc1387Part6, Seg30.relationLc1387Part7, Seg30.relationLc1387Part8, Seg30.relationLc1387Part9, Seg30.relationLc1387Part10, Seg30.relationLc1387Part11, Seg30.relationLc1387Part12, Seg30.relationLc1387Part13, Seg30.relationLc1387Part14, Seg30.relationLc1387Part15]
  rw [seg30AccX241_sum, seg30AccY241_sum]
  ring

theorem seg30_lc1388 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1388 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX241 rho + rho 30052 := by
  simp only [Seg30.relationLc1388, Seg30.relationLc1388Part0, Seg30.relationLc1388Part1, Seg30.relationLc1388Part2, Seg30.relationLc1388Part3, Seg30.relationLc1388Part4, Seg30.relationLc1388Part5, Seg30.relationLc1388Part6, Seg30.relationLc1388Part7]
  rw [seg30AccX241_sum]
  ring

theorem seg30_lc1389 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1389 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY241 rho + rho 30054 := by
  simp only [Seg30.relationLc1389, Seg30.relationLc1389Part0, Seg30.relationLc1389Part1, Seg30.relationLc1389Part2, Seg30.relationLc1389Part3, Seg30.relationLc1389Part4, Seg30.relationLc1389Part5, Seg30.relationLc1389Part6, Seg30.relationLc1389Part7]
  rw [seg30AccY241_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
