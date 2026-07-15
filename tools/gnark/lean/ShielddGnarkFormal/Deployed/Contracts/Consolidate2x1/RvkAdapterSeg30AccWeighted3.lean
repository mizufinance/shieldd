import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccWeighted2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30AccWeighted31 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX31 rho + cy * seg30AccY31 rho =
      ((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 := by
  calc
    _ = (cx * seg30AccX30 rho + cy * seg30AccY30 rho) +
        cx * rho 28721 + cy * rho 28722 := by
      rw [seg30AccX31, seg30AccY31]
      ring
    _ = _ := by rw [seg30AccWeighted30]

theorem seg30AccWeighted32 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX32 rho + cy * seg30AccY32 rho =
      (((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 := by
  calc
    _ = (cx * seg30AccX31 rho + cy * seg30AccY31 rho) +
        cx * rho 28726 + cy * rho 28727 := by
      rw [seg30AccX32, seg30AccY32]
      ring
    _ = _ := by rw [seg30AccWeighted31]

theorem seg30AccWeighted33 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX33 rho + cy * seg30AccY33 rho =
      ((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 := by
  calc
    _ = (cx * seg30AccX32 rho + cy * seg30AccY32 rho) +
        cx * rho 28731 + cy * rho 28732 := by
      rw [seg30AccX33, seg30AccY33]
      ring
    _ = _ := by rw [seg30AccWeighted32]

theorem seg30AccWeighted34 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX34 rho + cy * seg30AccY34 rho =
      (((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 := by
  calc
    _ = (cx * seg30AccX33 rho + cy * seg30AccY33 rho) +
        cx * rho 28736 + cy * rho 28737 := by
      rw [seg30AccX34, seg30AccY34]
      ring
    _ = _ := by rw [seg30AccWeighted33]

theorem seg30AccWeighted35 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX35 rho + cy * seg30AccY35 rho =
      ((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 := by
  calc
    _ = (cx * seg30AccX34 rho + cy * seg30AccY34 rho) +
        cx * rho 28741 + cy * rho 28742 := by
      rw [seg30AccX35, seg30AccY35]
      ring
    _ = _ := by rw [seg30AccWeighted34]

theorem seg30AccWeighted36 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX36 rho + cy * seg30AccY36 rho =
      (((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 := by
  calc
    _ = (cx * seg30AccX35 rho + cy * seg30AccY35 rho) +
        cx * rho 28746 + cy * rho 28747 := by
      rw [seg30AccX36, seg30AccY36]
      ring
    _ = _ := by rw [seg30AccWeighted35]

theorem seg30AccWeighted37 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX37 rho + cy * seg30AccY37 rho =
      ((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 := by
  calc
    _ = (cx * seg30AccX36 rho + cy * seg30AccY36 rho) +
        cx * rho 28751 + cy * rho 28752 := by
      rw [seg30AccX37, seg30AccY37]
      ring
    _ = _ := by rw [seg30AccWeighted36]

theorem seg30AccWeighted38 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX38 rho + cy * seg30AccY38 rho =
      (((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 := by
  calc
    _ = (cx * seg30AccX37 rho + cy * seg30AccY37 rho) +
        cx * rho 28756 + cy * rho 28757 := by
      rw [seg30AccX38, seg30AccY38]
      ring
    _ = _ := by rw [seg30AccWeighted37]

theorem seg30AccWeighted39 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX39 rho + cy * seg30AccY39 rho =
      ((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 := by
  calc
    _ = (cx * seg30AccX38 rho + cy * seg30AccY38 rho) +
        cx * rho 28761 + cy * rho 28762 := by
      rw [seg30AccX39, seg30AccY39]
      ring
    _ = _ := by rw [seg30AccWeighted38]

theorem seg30AccWeighted40 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX40 rho + cy * seg30AccY40 rho =
      (((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 := by
  calc
    _ = (cx * seg30AccX39 rho + cy * seg30AccY39 rho) +
        cx * rho 28766 + cy * rho 28767 := by
      rw [seg30AccX40, seg30AccY40]
      ring
    _ = _ := by rw [seg30AccWeighted39]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
