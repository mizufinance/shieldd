import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccWeighted1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30AccWeighted21 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX21 rho + cy * seg30AccY21 rho =
      ((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 := by
  calc
    _ = (cx * seg30AccX20 rho + cy * seg30AccY20 rho) +
        cx * rho 28671 + cy * rho 28672 := by
      rw [seg30AccX21, seg30AccY21]
      ring
    _ = _ := by rw [seg30AccWeighted20]

theorem seg30AccWeighted22 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX22 rho + cy * seg30AccY22 rho =
      (((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 := by
  calc
    _ = (cx * seg30AccX21 rho + cy * seg30AccY21 rho) +
        cx * rho 28676 + cy * rho 28677 := by
      rw [seg30AccX22, seg30AccY22]
      ring
    _ = _ := by rw [seg30AccWeighted21]

theorem seg30AccWeighted23 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX23 rho + cy * seg30AccY23 rho =
      ((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 := by
  calc
    _ = (cx * seg30AccX22 rho + cy * seg30AccY22 rho) +
        cx * rho 28681 + cy * rho 28682 := by
      rw [seg30AccX23, seg30AccY23]
      ring
    _ = _ := by rw [seg30AccWeighted22]

theorem seg30AccWeighted24 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX24 rho + cy * seg30AccY24 rho =
      (((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 := by
  calc
    _ = (cx * seg30AccX23 rho + cy * seg30AccY23 rho) +
        cx * rho 28686 + cy * rho 28687 := by
      rw [seg30AccX24, seg30AccY24]
      ring
    _ = _ := by rw [seg30AccWeighted23]

theorem seg30AccWeighted25 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX25 rho + cy * seg30AccY25 rho =
      ((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 := by
  calc
    _ = (cx * seg30AccX24 rho + cy * seg30AccY24 rho) +
        cx * rho 28691 + cy * rho 28692 := by
      rw [seg30AccX25, seg30AccY25]
      ring
    _ = _ := by rw [seg30AccWeighted24]

theorem seg30AccWeighted26 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX26 rho + cy * seg30AccY26 rho =
      (((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 := by
  calc
    _ = (cx * seg30AccX25 rho + cy * seg30AccY25 rho) +
        cx * rho 28696 + cy * rho 28697 := by
      rw [seg30AccX26, seg30AccY26]
      ring
    _ = _ := by rw [seg30AccWeighted25]

theorem seg30AccWeighted27 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX27 rho + cy * seg30AccY27 rho =
      ((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 := by
  calc
    _ = (cx * seg30AccX26 rho + cy * seg30AccY26 rho) +
        cx * rho 28701 + cy * rho 28702 := by
      rw [seg30AccX27, seg30AccY27]
      ring
    _ = _ := by rw [seg30AccWeighted26]

theorem seg30AccWeighted28 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX28 rho + cy * seg30AccY28 rho =
      (((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 := by
  calc
    _ = (cx * seg30AccX27 rho + cy * seg30AccY27 rho) +
        cx * rho 28706 + cy * rho 28707 := by
      rw [seg30AccX28, seg30AccY28]
      ring
    _ = _ := by rw [seg30AccWeighted27]

theorem seg30AccWeighted29 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX29 rho + cy * seg30AccY29 rho =
      ((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 := by
  calc
    _ = (cx * seg30AccX28 rho + cy * seg30AccY28 rho) +
        cx * rho 28711 + cy * rho 28712 := by
      rw [seg30AccX29, seg30AccY29]
      ring
    _ = _ := by rw [seg30AccWeighted28]

theorem seg30AccWeighted30 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX30 rho + cy * seg30AccY30 rho =
      (((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 := by
  calc
    _ = (cx * seg30AccX29 rho + cy * seg30AccY29 rho) +
        cx * rho 28716 + cy * rho 28717 := by
      rw [seg30AccX30, seg30AccY30]
      ring
    _ = _ := by rw [seg30AccWeighted29]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
