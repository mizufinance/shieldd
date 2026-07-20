import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1061 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1061 rho = seg30AccX195 rho + seg30AccY195 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc1061, Seg30.relationLc1061Part0, Seg30.relationLc1061Part1, Seg30.relationLc1061Part2, Seg30.relationLc1061Part3, Seg30.relationLc1061Part4, Seg30.relationLc1061Part5, Seg30.relationLc1061Part6, Seg30.relationLc1061Part7, Seg30.relationLc1061Part8, Seg30.relationLc1061Part9, Seg30.relationLc1061Part10, Seg30.relationLc1061Part11, Seg30.relationLc1061Part12]
  rw [seg30AccX195_sum, seg30AccY195_sum]
  ring

theorem seg30_lc1062 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1062 rho = 2726882893549286653395297697583952048957125187587692020914177283361371386400*seg30AccX195 rho + 5741333931361479268406648157145571440043320080730031609623243957940534941136*rho 28311 := by
  simp only [Seg30.relationLc1062, Seg30.relationLc1062Part0, Seg30.relationLc1062Part1, Seg30.relationLc1062Part2, Seg30.relationLc1062Part3, Seg30.relationLc1062Part4, Seg30.relationLc1062Part5, Seg30.relationLc1062Part6]
  rw [seg30AccX195_sum]
  ring

theorem seg30_lc1063 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1063 rho = 4633233701793813150664695046301819478821734034320544966385289707542159791425*seg30AccY195 rho + 4633233701793813150664695046301819478821734034320544966385289707542159791425 + 388934734324116195921518607490874179737522285262516869917388281634201801395*rho 28311 := by
  simp only [Seg30.relationLc1063, Seg30.relationLc1063Part0, Seg30.relationLc1063Part1, Seg30.relationLc1063Part2, Seg30.relationLc1063Part3, Seg30.relationLc1063Part4, Seg30.relationLc1063Part5, Seg30.relationLc1063Part6]
  rw [seg30AccY195_sum]
  ring

theorem seg30_lc1064 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1064 rho = 747235408802027206199216006736927135361245365002887366461311324069284885207*seg30AccX195 rho + 4633233701793813150664695046301819478821734034320544966385289707542159791425*seg30AccY195 rho + 4633233701793813150664695046301819478821734034320544966385289707542159791425 + 7035153507022758360008861714952271623140553082926184447081133123962444865328*rho 28311 := by
  simp only [Seg30.relationLc1064, Seg30.relationLc1064Part0, Seg30.relationLc1064Part1, Seg30.relationLc1064Part2, Seg30.relationLc1064Part3, Seg30.relationLc1064Part4, Seg30.relationLc1064Part5, Seg30.relationLc1064Part6, Seg30.relationLc1064Part7, Seg30.relationLc1064Part8, Seg30.relationLc1064Part9, Seg30.relationLc1064Part10, Seg30.relationLc1064Part11, Seg30.relationLc1064Part12]
  rw [seg30AccX195_sum, seg30AccY195_sum]
  ring

theorem seg30_lc1065 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1065 rho = 7697226340626343218049608932044619396014653970151176461473922131848124353834*seg30AccX195 rho + 3811228047634557273584129892479727052554165300833518861549943748375249447616*seg30AccY195 rho + 3811228047634557273584129892479727052554165300833518861549943748375249447616 + 1409308242405612064239963223829274908235346252227879380854100331954964373713*rho 28311 := by
  simp only [Seg30.relationLc1065, Seg30.relationLc1065Part0, Seg30.relationLc1065Part1, Seg30.relationLc1065Part2, Seg30.relationLc1065Part3, Seg30.relationLc1065Part4, Seg30.relationLc1065Part5, Seg30.relationLc1065Part6, Seg30.relationLc1065Part7, Seg30.relationLc1065Part8, Seg30.relationLc1065Part9, Seg30.relationLc1065Part10, Seg30.relationLc1065Part11, Seg30.relationLc1065Part12]
  rw [seg30AccX195_sum, seg30AccY195_sum]
  ring

theorem seg30_lc1066 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1066 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX195 rho + rho 29678 := by
  simp only [Seg30.relationLc1066, Seg30.relationLc1066Part0, Seg30.relationLc1066Part1, Seg30.relationLc1066Part2, Seg30.relationLc1066Part3, Seg30.relationLc1066Part4, Seg30.relationLc1066Part5, Seg30.relationLc1066Part6]
  rw [seg30AccX195_sum]
  ring

theorem seg30_lc1067 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1067 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY195 rho + rho 29680 := by
  simp only [Seg30.relationLc1067, Seg30.relationLc1067Part0, Seg30.relationLc1067Part1, Seg30.relationLc1067Part2, Seg30.relationLc1067Part3, Seg30.relationLc1067Part4, Seg30.relationLc1067Part5, Seg30.relationLc1067Part6]
  rw [seg30AccY195_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
