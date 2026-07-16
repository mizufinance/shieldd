import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccWeighted0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30AccWeighted11 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX11 rho + cy * seg30AccY11 rho =
      ((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 := by
  calc
    _ = (cx * seg30AccX10 rho + cy * seg30AccY10 rho) +
        cx * rho 28621 + cy * rho 28622 := by
      rw [seg30AccX11, seg30AccY11]
      ring
    _ = _ := by rw [seg30AccWeighted10]

theorem seg30AccWeighted12 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX12 rho + cy * seg30AccY12 rho =
      (((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 := by
  calc
    _ = (cx * seg30AccX11 rho + cy * seg30AccY11 rho) +
        cx * rho 28626 + cy * rho 28627 := by
      rw [seg30AccX12, seg30AccY12]
      ring
    _ = _ := by rw [seg30AccWeighted11]

theorem seg30AccWeighted13 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX13 rho + cy * seg30AccY13 rho =
      ((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 := by
  calc
    _ = (cx * seg30AccX12 rho + cy * seg30AccY12 rho) +
        cx * rho 28631 + cy * rho 28632 := by
      rw [seg30AccX13, seg30AccY13]
      ring
    _ = _ := by rw [seg30AccWeighted12]

theorem seg30AccWeighted14 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX14 rho + cy * seg30AccY14 rho =
      (((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 := by
  calc
    _ = (cx * seg30AccX13 rho + cy * seg30AccY13 rho) +
        cx * rho 28636 + cy * rho 28637 := by
      rw [seg30AccX14, seg30AccY14]
      ring
    _ = _ := by rw [seg30AccWeighted13]

theorem seg30AccWeighted15 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX15 rho + cy * seg30AccY15 rho =
      ((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 := by
  calc
    _ = (cx * seg30AccX14 rho + cy * seg30AccY14 rho) +
        cx * rho 28641 + cy * rho 28642 := by
      rw [seg30AccX15, seg30AccY15]
      ring
    _ = _ := by rw [seg30AccWeighted14]

theorem seg30AccWeighted16 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX16 rho + cy * seg30AccY16 rho =
      (((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 := by
  calc
    _ = (cx * seg30AccX15 rho + cy * seg30AccY15 rho) +
        cx * rho 28646 + cy * rho 28647 := by
      rw [seg30AccX16, seg30AccY16]
      ring
    _ = _ := by rw [seg30AccWeighted15]

theorem seg30AccWeighted17 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX17 rho + cy * seg30AccY17 rho =
      ((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 := by
  calc
    _ = (cx * seg30AccX16 rho + cy * seg30AccY16 rho) +
        cx * rho 28651 + cy * rho 28652 := by
      rw [seg30AccX17, seg30AccY17]
      ring
    _ = _ := by rw [seg30AccWeighted16]

theorem seg30AccWeighted18 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX18 rho + cy * seg30AccY18 rho =
      (((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 := by
  calc
    _ = (cx * seg30AccX17 rho + cy * seg30AccY17 rho) +
        cx * rho 28656 + cy * rho 28657 := by
      rw [seg30AccX18, seg30AccY18]
      ring
    _ = _ := by rw [seg30AccWeighted17]

theorem seg30AccWeighted19 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX19 rho + cy * seg30AccY19 rho =
      ((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 := by
  calc
    _ = (cx * seg30AccX18 rho + cy * seg30AccY18 rho) +
        cx * rho 28661 + cy * rho 28662 := by
      rw [seg30AccX19, seg30AccY19]
      ring
    _ = _ := by rw [seg30AccWeighted18]

theorem seg30AccWeighted20 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX20 rho + cy * seg30AccY20 rho =
      (((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 := by
  calc
    _ = (cx * seg30AccX19 rho + cy * seg30AccY19 rho) +
        cx * rho 28666 + cy * rho 28667 := by
      rw [seg30AccX20, seg30AccY20]
      ring
    _ = _ := by rw [seg30AccWeighted19]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
