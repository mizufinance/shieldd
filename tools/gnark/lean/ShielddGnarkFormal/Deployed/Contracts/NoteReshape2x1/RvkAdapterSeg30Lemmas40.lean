import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1019 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1019 rho = seg30AccX189 rho + seg30AccY189 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1019, Seg30.relationLc1019Part0, Seg30.relationLc1019Part1, Seg30.relationLc1019Part2, Seg30.relationLc1019Part3, Seg30.relationLc1019Part4, Seg30.relationLc1019Part5, Seg30.relationLc1019Part6, Seg30.relationLc1019Part7, Seg30.relationLc1019Part8, Seg30.relationLc1019Part9, Seg30.relationLc1019Part10, Seg30.relationLc1019Part11]
  rw [seg30AccX189_sum, seg30AccY189_sum]
  ring

theorem seg30_lc1020 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1020 rho = 1592610760452662891257191408783115440613478706358284711365675255490931905864*seg30AccX189 rho + 2008230782896318434545456926310126833570643313191120532079101557439023108078*rho 28317 := by
  simp only [Seg30.relationLc1020, Seg30.relationLc1020Part0, Seg30.relationLc1020Part1, Seg30.relationLc1020Part2, Seg30.relationLc1020Part3, Seg30.relationLc1020Part4, Seg30.relationLc1020Part5]
  rw [seg30AccX189_sum]
  ring

theorem seg30_lc1021 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1021 rho = 6344949702198386215630756124622930373723578036744856127612445722441346277498*seg30AccY189 rho + 6344949702198386215630756124622930373723578036744856127612445722441346277498 + 1112727851671160842939416475354140523129346304208684762595779127643266167193*rho 28317 := by
  simp only [Seg30.relationLc1021, Seg30.relationLc1021Part0, Seg30.relationLc1021Part1, Seg30.relationLc1021Part2, Seg30.relationLc1021Part3, Seg30.relationLc1021Part4, Seg30.relationLc1021Part5]
  rw [seg30AccY189_sum]
  ring

theorem seg30_lc1022 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1022 rho = 4855883041879355210132891794131853505607597028755037124738452892480645739861*seg30AccX189 rho + 6344949702198386215630756124622930373723578036744856127612445722441346277498*seg30AccY189 rho + 6344949702198386215630756124622930373723578036744856127612445722441346277498 + 4302777201846820218147114162237971942902094329605565910628278457255713358472*rho 28317 := by
  simp only [Seg30.relationLc1022, Seg30.relationLc1022Part0, Seg30.relationLc1022Part1, Seg30.relationLc1022Part2, Seg30.relationLc1022Part3, Seg30.relationLc1022Part4, Seg30.relationLc1022Part5, Seg30.relationLc1022Part6, Seg30.relationLc1022Part7, Seg30.relationLc1022Part8, Seg30.relationLc1022Part9, Seg30.relationLc1022Part10, Seg30.relationLc1022Part11]
  rw [seg30AccX189_sum, seg30AccY189_sum]
  ring

theorem seg30_lc1023 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1023 rho = 3588578707549015214115933144649693025768302306399026703196780563436763499180*seg30AccX189 rho + 2099512047229984208618068814158616157652321298409207700322787733476062961543*seg30AccY189 rho + 2099512047229984208618068814158616157652321298409207700322787733476062961543 + 4141684547581550206101710776543574588473805005548497917306954998661695880569*rho 28317 := by
  simp only [Seg30.relationLc1023, Seg30.relationLc1023Part0, Seg30.relationLc1023Part1, Seg30.relationLc1023Part2, Seg30.relationLc1023Part3, Seg30.relationLc1023Part4, Seg30.relationLc1023Part5, Seg30.relationLc1023Part6, Seg30.relationLc1023Part7, Seg30.relationLc1023Part8, Seg30.relationLc1023Part9, Seg30.relationLc1023Part10, Seg30.relationLc1023Part11]
  rw [seg30AccX189_sum, seg30AccY189_sum]
  ring

theorem seg30_lc1024 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1024 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX189 rho + rho 29636 := by
  simp only [Seg30.relationLc1024, Seg30.relationLc1024Part0, Seg30.relationLc1024Part1, Seg30.relationLc1024Part2, Seg30.relationLc1024Part3, Seg30.relationLc1024Part4, Seg30.relationLc1024Part5]
  rw [seg30AccX189_sum]
  ring

theorem seg30_lc1025 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1025 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY189 rho + rho 29638 := by
  simp only [Seg30.relationLc1025, Seg30.relationLc1025Part0, Seg30.relationLc1025Part1, Seg30.relationLc1025Part2, Seg30.relationLc1025Part3, Seg30.relationLc1025Part4, Seg30.relationLc1025Part5]
  rw [seg30AccY189_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
