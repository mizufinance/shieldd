import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc865 (rho : Nat -> Seg30.F) :
    Seg30.relationLc865 rho = seg30AccX167 rho + seg30AccY167 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc865, Seg30.relationLc865Part0, Seg30.relationLc865Part1, Seg30.relationLc865Part2, Seg30.relationLc865Part3, Seg30.relationLc865Part4, Seg30.relationLc865Part5, Seg30.relationLc865Part6, Seg30.relationLc865Part7, Seg30.relationLc865Part8, Seg30.relationLc865Part9, Seg30.relationLc865Part10]
  rw [seg30AccX167_sum, seg30AccY167_sum]
  ring

theorem seg30_lc866 (rho : Nat -> Seg30.F) :
    Seg30.relationLc866 rho = 3577537434118340960807172061232454296647112651088978807367204990823277584171*seg30AccX167 rho + 1370083345942680029195480491739159083921214067939609907254344268213071678047*rho 28317 := by
  simp only [Seg30.relationLc866, Seg30.relationLc866Part0, Seg30.relationLc866Part1, Seg30.relationLc866Part2, Seg30.relationLc866Part3, Seg30.relationLc866Part4, Seg30.relationLc866Part5]
  rw [seg30AccX167_sum]
  ring

theorem seg30_lc867 (rho : Nat -> Seg30.F) :
    Seg30.relationLc867 rho = 8007424209605860490869656975015322035683011603273810880079350669994908888146*seg30AccY167 rho + 8007424209605860490869656975015322035683011603273810880079350669994908888146 + 4701979476017914341331125189053818542549474616706661558177561626931212170113*rho 28317 := by
  simp only [Seg30.relationLc867, Seg30.relationLc867Part0, Seg30.relationLc867Part1, Seg30.relationLc867Part2, Seg30.relationLc867Part3, Seg30.relationLc867Part4, Seg30.relationLc867Part5]
  rw [seg30AccY167_sum]
  ring

theorem seg30_lc868 (rho : Nat -> Seg30.F) :
    Seg30.relationLc868 rho = 3299583714584440728756842303814451294710429767670600561327687084731336040931*seg30AccX167 rho + 8007424209605860490869656975015322035683011603273810880079350669994908888146*seg30AccY167 rho + 8007424209605860490869656975015322035683011603273810880079350669994908888146 + 6812849619733360336146437439723069383420949364177451958706643256684888782875*rho 28317 := by
  simp only [Seg30.relationLc868, Seg30.relationLc868Part0, Seg30.relationLc868Part1, Seg30.relationLc868Part2, Seg30.relationLc868Part3, Seg30.relationLc868Part4, Seg30.relationLc868Part5, Seg30.relationLc868Part6, Seg30.relationLc868Part7, Seg30.relationLc868Part8, Seg30.relationLc868Part9, Seg30.relationLc868Part10]
  rw [seg30AccX167_sum, seg30AccY167_sum]
  ring

theorem seg30_lc869 (rho : Nat -> Seg30.F) :
    Seg30.relationLc869 rho = 5144878034843929695491982634967095236665469567483463266607546371186073198110*seg30AccX167 rho + 437037539822509933379167963766224495692887731880252947855882785922500350895*seg30AccY167 rho + 437037539822509933379167963766224495692887731880252947855882785922500350895 + 1631612129695010088102387499058477147954949970976611869228590199232520456166*rho 28317 := by
  simp only [Seg30.relationLc869, Seg30.relationLc869Part0, Seg30.relationLc869Part1, Seg30.relationLc869Part2, Seg30.relationLc869Part3, Seg30.relationLc869Part4, Seg30.relationLc869Part5, Seg30.relationLc869Part6, Seg30.relationLc869Part7, Seg30.relationLc869Part8, Seg30.relationLc869Part9, Seg30.relationLc869Part10]
  rw [seg30AccX167_sum, seg30AccY167_sum]
  ring

theorem seg30_lc870 (rho : Nat -> Seg30.F) :
    Seg30.relationLc870 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX167 rho + rho 29460 := by
  simp only [Seg30.relationLc870, Seg30.relationLc870Part0, Seg30.relationLc870Part1, Seg30.relationLc870Part2, Seg30.relationLc870Part3, Seg30.relationLc870Part4, Seg30.relationLc870Part5]
  rw [seg30AccX167_sum]
  ring

theorem seg30_lc871 (rho : Nat -> Seg30.F) :
    Seg30.relationLc871 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY167 rho + rho 29462 := by
  simp only [Seg30.relationLc871, Seg30.relationLc871Part0, Seg30.relationLc871Part1, Seg30.relationLc871Part2, Seg30.relationLc871Part3, Seg30.relationLc871Part4, Seg30.relationLc871Part5]
  rw [seg30AccY167_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
