import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccWeighted3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30AccWeighted41 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX41 rho + cy * seg30AccY41 rho =
      ((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 := by
  calc
    _ = (cx * seg30AccX40 rho + cy * seg30AccY40 rho) +
        cx * rho 28771 + cy * rho 28772 := by
      rw [seg30AccX41, seg30AccY41]
      ring
    _ = _ := by rw [seg30AccWeighted40]

theorem seg30AccWeighted42 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX42 rho + cy * seg30AccY42 rho =
      (((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 := by
  calc
    _ = (cx * seg30AccX41 rho + cy * seg30AccY41 rho) +
        cx * rho 28776 + cy * rho 28777 := by
      rw [seg30AccX42, seg30AccY42]
      ring
    _ = _ := by rw [seg30AccWeighted41]

theorem seg30AccWeighted43 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX43 rho + cy * seg30AccY43 rho =
      ((((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 + cx * rho 28781) + cy * rho 28782 := by
  calc
    _ = (cx * seg30AccX42 rho + cy * seg30AccY42 rho) +
        cx * rho 28781 + cy * rho 28782 := by
      rw [seg30AccX43, seg30AccY43]
      ring
    _ = _ := by rw [seg30AccWeighted42]

theorem seg30AccWeighted44 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX44 rho + cy * seg30AccY44 rho =
      (((((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 + cx * rho 28781) + cy * rho 28782 + cx * rho 28786) + cy * rho 28787 := by
  calc
    _ = (cx * seg30AccX43 rho + cy * seg30AccY43 rho) +
        cx * rho 28786 + cy * rho 28787 := by
      rw [seg30AccX44, seg30AccY44]
      ring
    _ = _ := by rw [seg30AccWeighted43]

theorem seg30AccWeighted45 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX45 rho + cy * seg30AccY45 rho =
      ((((((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 + cx * rho 28781) + cy * rho 28782 + cx * rho 28786) + cy * rho 28787 + cx * rho 28791) + cy * rho 28792 := by
  calc
    _ = (cx * seg30AccX44 rho + cy * seg30AccY44 rho) +
        cx * rho 28791 + cy * rho 28792 := by
      rw [seg30AccX45, seg30AccY45]
      ring
    _ = _ := by rw [seg30AccWeighted44]

theorem seg30AccWeighted46 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX46 rho + cy * seg30AccY46 rho =
      (((((((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 + cx * rho 28781) + cy * rho 28782 + cx * rho 28786) + cy * rho 28787 + cx * rho 28791) + cy * rho 28792 + cx * rho 28796) + cy * rho 28797 := by
  calc
    _ = (cx * seg30AccX45 rho + cy * seg30AccY45 rho) +
        cx * rho 28796 + cy * rho 28797 := by
      rw [seg30AccX46, seg30AccY46]
      ring
    _ = _ := by rw [seg30AccWeighted45]

theorem seg30AccWeighted47 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX47 rho + cy * seg30AccY47 rho =
      ((((((((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 + cx * rho 28781) + cy * rho 28782 + cx * rho 28786) + cy * rho 28787 + cx * rho 28791) + cy * rho 28792 + cx * rho 28796) + cy * rho 28797 + cx * rho 28801) + cy * rho 28802 := by
  calc
    _ = (cx * seg30AccX46 rho + cy * seg30AccY46 rho) +
        cx * rho 28801 + cy * rho 28802 := by
      rw [seg30AccX47, seg30AccY47]
      ring
    _ = _ := by rw [seg30AccWeighted46]

theorem seg30AccWeighted48 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX48 rho + cy * seg30AccY48 rho =
      (((((((((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 + cx * rho 28781) + cy * rho 28782 + cx * rho 28786) + cy * rho 28787 + cx * rho 28791) + cy * rho 28792 + cx * rho 28796) + cy * rho 28797 + cx * rho 28801) + cy * rho 28802 + cx * rho 28806) + cy * rho 28807 := by
  calc
    _ = (cx * seg30AccX47 rho + cy * seg30AccY47 rho) +
        cx * rho 28806 + cy * rho 28807 := by
      rw [seg30AccX48, seg30AccY48]
      ring
    _ = _ := by rw [seg30AccWeighted47]

theorem seg30AccWeighted49 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX49 rho + cy * seg30AccY49 rho =
      ((((((((((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 + cx * rho 28781) + cy * rho 28782 + cx * rho 28786) + cy * rho 28787 + cx * rho 28791) + cy * rho 28792 + cx * rho 28796) + cy * rho 28797 + cx * rho 28801) + cy * rho 28802 + cx * rho 28806) + cy * rho 28807 + cx * rho 28811) + cy * rho 28812 := by
  calc
    _ = (cx * seg30AccX48 rho + cy * seg30AccY48 rho) +
        cx * rho 28811 + cy * rho 28812 := by
      rw [seg30AccX49, seg30AccY49]
      ring
    _ = _ := by rw [seg30AccWeighted48]

theorem seg30AccWeighted50 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX50 rho + cy * seg30AccY50 rho =
      (((((((((((((((((((((((((((((((((((((((((((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 + cx * rho 28621) + cy * rho 28622 + cx * rho 28626) + cy * rho 28627 + cx * rho 28631) + cy * rho 28632 + cx * rho 28636) + cy * rho 28637 + cx * rho 28641) + cy * rho 28642 + cx * rho 28646) + cy * rho 28647 + cx * rho 28651) + cy * rho 28652 + cx * rho 28656) + cy * rho 28657 + cx * rho 28661) + cy * rho 28662 + cx * rho 28666) + cy * rho 28667 + cx * rho 28671) + cy * rho 28672 + cx * rho 28676) + cy * rho 28677 + cx * rho 28681) + cy * rho 28682 + cx * rho 28686) + cy * rho 28687 + cx * rho 28691) + cy * rho 28692 + cx * rho 28696) + cy * rho 28697 + cx * rho 28701) + cy * rho 28702 + cx * rho 28706) + cy * rho 28707 + cx * rho 28711) + cy * rho 28712 + cx * rho 28716) + cy * rho 28717 + cx * rho 28721) + cy * rho 28722 + cx * rho 28726) + cy * rho 28727 + cx * rho 28731) + cy * rho 28732 + cx * rho 28736) + cy * rho 28737 + cx * rho 28741) + cy * rho 28742 + cx * rho 28746) + cy * rho 28747 + cx * rho 28751) + cy * rho 28752 + cx * rho 28756) + cy * rho 28757 + cx * rho 28761) + cy * rho 28762 + cx * rho 28766) + cy * rho 28767 + cx * rho 28771) + cy * rho 28772 + cx * rho 28776) + cy * rho 28777 + cx * rho 28781) + cy * rho 28782 + cx * rho 28786) + cy * rho 28787 + cx * rho 28791) + cy * rho 28792 + cx * rho 28796) + cy * rho 28797 + cx * rho 28801) + cy * rho 28802 + cx * rho 28806) + cy * rho 28807 + cx * rho 28811) + cy * rho 28812 + cx * rho 28816) + cy * rho 28817 := by
  calc
    _ = (cx * seg30AccX49 rho + cy * seg30AccY49 rho) +
        cx * rho 28816 + cy * rho 28817 := by
      rw [seg30AccX50, seg30AccY50]
      ring
    _ = _ := by rw [seg30AccWeighted49]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
