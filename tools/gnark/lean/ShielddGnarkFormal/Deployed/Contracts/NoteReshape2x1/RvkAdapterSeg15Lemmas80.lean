import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1299 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1299 rho = seg15AccX229 rho + seg15AccY229 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1299, Seg15.relationLc1299Part0, Seg15.relationLc1299Part1, Seg15.relationLc1299Part2, Seg15.relationLc1299Part3, Seg15.relationLc1299Part4, Seg15.relationLc1299Part5, Seg15.relationLc1299Part6, Seg15.relationLc1299Part7, Seg15.relationLc1299Part8, Seg15.relationLc1299Part9, Seg15.relationLc1299Part10, Seg15.relationLc1299Part11, Seg15.relationLc1299Part12, Seg15.relationLc1299Part13, Seg15.relationLc1299Part14]
  rw [seg15AccX229_sum, seg15AccY229_sum]
  ring

theorem seg15_lc1300 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1300 rho = 2328924494234622400026043661438891056472383178633768616512250314770556337886*seg15AccX229 rho + 3563738449595643250020585309828661675699916643359296520663432255509695000065*rho 16136 := by
  simp only [Seg15.relationLc1300, Seg15.relationLc1300Part0, Seg15.relationLc1300Part1, Seg15.relationLc1300Part2, Seg15.relationLc1300Part3, Seg15.relationLc1300Part4, Seg15.relationLc1300Part5, Seg15.relationLc1300Part6, Seg15.relationLc1300Part7]
  rw [seg15AccX229_sum]
  ring

theorem seg15_lc1301 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1301 rho = 172846403538610214843532136165434598897879428915183913667080104299606263159*seg15AccY229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159 + 4156547185992650513569278671728196236611014928975770533777923429996966767923*rho 16136 := by
  simp only [Seg15.relationLc1301, Seg15.relationLc1301Part0, Seg15.relationLc1301Part1, Seg15.relationLc1301Part2, Seg15.relationLc1301Part3, Seg15.relationLc1301Part4, Seg15.relationLc1301Part5, Seg15.relationLc1301Part6, Seg15.relationLc1301Part7]
  rw [seg15AccY229_sum]
  ring

theorem seg15_lc1302 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1302 rho = 3788339819586122657152328313707525468742408468160341031270689699795716675021*seg15AccX229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159*seg15AccY229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159 + 1451921156533177846431628239609457944424265296474686624833652475653192372560*rho 16136 := by
  simp only [Seg15.relationLc1302, Seg15.relationLc1302Part0, Seg15.relationLc1302Part1, Seg15.relationLc1302Part2, Seg15.relationLc1302Part3, Seg15.relationLc1302Part4, Seg15.relationLc1302Part5, Seg15.relationLc1302Part6, Seg15.relationLc1302Part7, Seg15.relationLc1302Part8, Seg15.relationLc1302Part9, Seg15.relationLc1302Part10, Seg15.relationLc1302Part11, Seg15.relationLc1302Part12, Seg15.relationLc1302Part13, Seg15.relationLc1302Part14]
  rw [seg15AccX229_sum, seg15AccY229_sum]
  ring

theorem seg15_lc1303 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1303 rho = 4656121929842247767096496625074021062633490866993722796664543756121692564020*seg15AccX229 rho + 8271615345889760209405292802616111932478019906238879914268153351617802975882*seg15AccY229 rho + 8271615345889760209405292802616111932478019906238879914268153351617802975882 + 6992540592895192577817196699172088586951634038679377203101580980264216866481*rho 16136 := by
  simp only [Seg15.relationLc1303, Seg15.relationLc1303Part0, Seg15.relationLc1303Part1, Seg15.relationLc1303Part2, Seg15.relationLc1303Part3, Seg15.relationLc1303Part4, Seg15.relationLc1303Part5, Seg15.relationLc1303Part6, Seg15.relationLc1303Part7, Seg15.relationLc1303Part8, Seg15.relationLc1303Part9, Seg15.relationLc1303Part10, Seg15.relationLc1303Part11, Seg15.relationLc1303Part12, Seg15.relationLc1303Part13, Seg15.relationLc1303Part14]
  rw [seg15AccX229_sum, seg15AccY229_sum]
  ring

theorem seg15_lc1304 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1304 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX229 rho + rho 17775 := by
  simp only [Seg15.relationLc1304, Seg15.relationLc1304Part0, Seg15.relationLc1304Part1, Seg15.relationLc1304Part2, Seg15.relationLc1304Part3, Seg15.relationLc1304Part4, Seg15.relationLc1304Part5, Seg15.relationLc1304Part6, Seg15.relationLc1304Part7]
  rw [seg15AccX229_sum]
  ring

theorem seg15_lc1305 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1305 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY229 rho + rho 17777 := by
  simp only [Seg15.relationLc1305, Seg15.relationLc1305Part0, Seg15.relationLc1305Part1, Seg15.relationLc1305Part2, Seg15.relationLc1305Part3, Seg15.relationLc1305Part4, Seg15.relationLc1305Part5, Seg15.relationLc1305Part6, Seg15.relationLc1305Part7]
  rw [seg15AccY229_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
