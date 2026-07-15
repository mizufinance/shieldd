import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1278 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1278 rho = seg15AccX226 rho + seg15AccY226 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1278, Seg15.relationLc1278Part0, Seg15.relationLc1278Part1, Seg15.relationLc1278Part2, Seg15.relationLc1278Part3, Seg15.relationLc1278Part4, Seg15.relationLc1278Part5, Seg15.relationLc1278Part6, Seg15.relationLc1278Part7, Seg15.relationLc1278Part8, Seg15.relationLc1278Part9, Seg15.relationLc1278Part10, Seg15.relationLc1278Part11, Seg15.relationLc1278Part12, Seg15.relationLc1278Part13, Seg15.relationLc1278Part14]
  rw [seg15AccX226_sum, seg15AccY226_sum]
  ring

theorem seg15_lc1279 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1279 rho = 6835153613359202620753536692428562756593607850803641642315853655957739349557*seg15AccX226 rho + 2017182082067414761062071606460734901159165964626278109605283782069263953972*rho 16136 := by
  simp only [Seg15.relationLc1279, Seg15.relationLc1279Part0, Seg15.relationLc1279Part1, Seg15.relationLc1279Part2, Seg15.relationLc1279Part3, Seg15.relationLc1279Part4, Seg15.relationLc1279Part5, Seg15.relationLc1279Part6, Seg15.relationLc1279Part7]
  rw [seg15AccX226_sum]
  ring

theorem seg15_lc1280 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1280 rho = 4124457764415245496255913558276081521933417185473503110705956689248568844076*seg15AccY226 rho + 4124457764415245496255913558276081521933417185473503110705956689248568844076 + 702028760441283555932115401866662986118340125936855939554033690217644916028*rho 16136 := by
  simp only [Seg15.relationLc1280, Seg15.relationLc1280Part0, Seg15.relationLc1280Part1, Seg15.relationLc1280Part2, Seg15.relationLc1280Part3, Seg15.relationLc1280Part4, Seg15.relationLc1280Part5, Seg15.relationLc1280Part6, Seg15.relationLc1280Part7]
  rw [seg15AccY226_sum]
  ring

theorem seg15_lc1281 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1281 rho = 670328206463667571670381561423772983699249767941947996199548708911028979636*seg15AccX226 rho + 4124457764415245496255913558276081521933417185473503110705956689248568844076*seg15AccY226 rho + 4124457764415245496255913558276081521933417185473503110705956689248568844076 + 5759310616382359197185735522973011350951230249491416595907705522570065497749*rho 16136 := by
  simp only [Seg15.relationLc1281, Seg15.relationLc1281Part0, Seg15.relationLc1281Part1, Seg15.relationLc1281Part2, Seg15.relationLc1281Part3, Seg15.relationLc1281Part4, Seg15.relationLc1281Part5, Seg15.relationLc1281Part6, Seg15.relationLc1281Part7, Seg15.relationLc1281Part8, Seg15.relationLc1281Part9, Seg15.relationLc1281Part10, Seg15.relationLc1281Part11, Seg15.relationLc1281Part12, Seg15.relationLc1281Part13, Seg15.relationLc1281Part14]
  rw [seg15AccX226_sum, seg15AccY226_sum]
  ring

theorem seg15_lc1282 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1282 rho = 7774133542964702852578443377357773547676649567212115831735684747006380259405*seg15AccX226 rho + 4320003985013124927992911380505465009442482149680560717229276766668840394965*seg15AccY226 rho + 4320003985013124927992911380505465009442482149680560717229276766668840394965 + 2685151133046011227063089415808535180424669085662647232027527933347343741292*rho 16136 := by
  simp only [Seg15.relationLc1282, Seg15.relationLc1282Part0, Seg15.relationLc1282Part1, Seg15.relationLc1282Part2, Seg15.relationLc1282Part3, Seg15.relationLc1282Part4, Seg15.relationLc1282Part5, Seg15.relationLc1282Part6, Seg15.relationLc1282Part7, Seg15.relationLc1282Part8, Seg15.relationLc1282Part9, Seg15.relationLc1282Part10, Seg15.relationLc1282Part11, Seg15.relationLc1282Part12, Seg15.relationLc1282Part13, Seg15.relationLc1282Part14]
  rw [seg15AccX226_sum, seg15AccY226_sum]
  ring

theorem seg15_lc1283 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1283 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX226 rho + rho 17751 := by
  simp only [Seg15.relationLc1283, Seg15.relationLc1283Part0, Seg15.relationLc1283Part1, Seg15.relationLc1283Part2, Seg15.relationLc1283Part3, Seg15.relationLc1283Part4, Seg15.relationLc1283Part5, Seg15.relationLc1283Part6, Seg15.relationLc1283Part7]
  rw [seg15AccX226_sum]
  ring

theorem seg15_lc1284 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1284 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY226 rho + rho 17753 := by
  simp only [Seg15.relationLc1284, Seg15.relationLc1284Part0, Seg15.relationLc1284Part1, Seg15.relationLc1284Part2, Seg15.relationLc1284Part3, Seg15.relationLc1284Part4, Seg15.relationLc1284Part5, Seg15.relationLc1284Part6, Seg15.relationLc1284Part7]
  rw [seg15AccY226_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
