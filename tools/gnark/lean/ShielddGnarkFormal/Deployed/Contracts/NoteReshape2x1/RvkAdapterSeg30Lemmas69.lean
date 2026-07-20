import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc1222 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1222 rho = seg30AccX218 rho + seg30AccY218 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28311 + 1 := by
  simp only [Seg30.relationLc1222, Seg30.relationLc1222Part0, Seg30.relationLc1222Part1, Seg30.relationLc1222Part2, Seg30.relationLc1222Part3, Seg30.relationLc1222Part4, Seg30.relationLc1222Part5, Seg30.relationLc1222Part6, Seg30.relationLc1222Part7, Seg30.relationLc1222Part8, Seg30.relationLc1222Part9, Seg30.relationLc1222Part10, Seg30.relationLc1222Part11, Seg30.relationLc1222Part12, Seg30.relationLc1222Part13]
  rw [seg30AccX218_sum, seg30AccY218_sum]
  ring

theorem seg30_lc1223 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1223 rho = 5042726138337050410117481750209014021783211713334716980850264846270323605457*seg30AccX218 rho + 1802206381324757352314972469660815013858957099923618989665176697551987854137*rho 28311 := by
  simp only [Seg30.relationLc1223, Seg30.relationLc1223Part0, Seg30.relationLc1223Part1, Seg30.relationLc1223Part2, Seg30.relationLc1223Part3, Seg30.relationLc1223Part4, Seg30.relationLc1223Part5, Seg30.relationLc1223Part6]
  rw [seg30AccX218_sum]
  ring

theorem seg30_lc1224 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1224 rho = 4803077331712487638838166294337594342563040291491461883571497988242232293798*seg30AccY218 rho + 4803077331712487638838166294337594342563040291491461883571497988242232293798 + 3459442394221216639749335745306415410227967554436235842074316218566856732320*rho 28311 := by
  simp only [Seg30.relationLc1224, Seg30.relationLc1224Part0, Seg30.relationLc1224Part1, Seg30.relationLc1224Part2, Seg30.relationLc1224Part3, Seg30.relationLc1224Part4, Seg30.relationLc1224Part5, Seg30.relationLc1224Part6]
  rw [seg30AccY218_sum]
  ring

theorem seg30_lc1225 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1225 rho = 5128164705259837275234181535741663473209262691951634484413792923865871853031*seg30AccX218 rho + 4803077331712487638838166294337594342563040291491461883571497988242232293798*seg30AccY218 rho + 4803077331712487638838166294337594342563040291491461883571497988242232293798 + 7384575298087074578510562222141553492010695665543891993484687932835507695401*rho 28311 := by
  simp only [Seg30.relationLc1225, Seg30.relationLc1225Part0, Seg30.relationLc1225Part1, Seg30.relationLc1225Part2, Seg30.relationLc1225Part3, Seg30.relationLc1225Part4, Seg30.relationLc1225Part5, Seg30.relationLc1225Part6, Seg30.relationLc1225Part7, Seg30.relationLc1225Part8, Seg30.relationLc1225Part9, Seg30.relationLc1225Part10, Seg30.relationLc1225Part11, Seg30.relationLc1225Part12, Seg30.relationLc1225Part13]
  rw [seg30AccX218_sum, seg30AccY218_sum]
  ring

theorem seg30_lc1226 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1226 rho = 3316297044168533149014643403039883058166636643202429343521440532051537386010*seg30AccX218 rho + 3641384417715882785410658644443952188812859043662601944363735467675176945243*seg30AccY218 rho + 3641384417715882785410658644443952188812859043662601944363735467675176945243 + 1059886451341295845738262716639993039365203669610171834450545523081901543640*rho 28311 := by
  simp only [Seg30.relationLc1226, Seg30.relationLc1226Part0, Seg30.relationLc1226Part1, Seg30.relationLc1226Part2, Seg30.relationLc1226Part3, Seg30.relationLc1226Part4, Seg30.relationLc1226Part5, Seg30.relationLc1226Part6, Seg30.relationLc1226Part7, Seg30.relationLc1226Part8, Seg30.relationLc1226Part9, Seg30.relationLc1226Part10, Seg30.relationLc1226Part11, Seg30.relationLc1226Part12, Seg30.relationLc1226Part13]
  rw [seg30AccX218_sum, seg30AccY218_sum]
  ring

theorem seg30_lc1227 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1227 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28311 + (-1)*seg30AccX218 rho + rho 29862 := by
  simp only [Seg30.relationLc1227, Seg30.relationLc1227Part0, Seg30.relationLc1227Part1, Seg30.relationLc1227Part2, Seg30.relationLc1227Part3, Seg30.relationLc1227Part4, Seg30.relationLc1227Part5, Seg30.relationLc1227Part6]
  rw [seg30AccX218_sum]
  ring

theorem seg30_lc1228 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1228 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28311 + (-1)*seg30AccY218 rho + rho 29864 := by
  simp only [Seg30.relationLc1228, Seg30.relationLc1228Part0, Seg30.relationLc1228Part1, Seg30.relationLc1228Part2, Seg30.relationLc1228Part3, Seg30.relationLc1228Part4, Seg30.relationLc1228Part5, Seg30.relationLc1228Part6]
  rw [seg30AccY218_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
