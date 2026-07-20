import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccWeighted2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30AccWeighted31 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX31 rho + cy * seg30AccY31 rho =
      ((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 := by
  calc
    _ = (cx * seg30AccX30 rho + cy * seg30AccY30 rho) +
        cx * rho 28715 + cy * rho 28716 := by
      rw [seg30AccX31, seg30AccY31]
      ring
    _ = _ := by rw [seg30AccWeighted30]

theorem seg30AccWeighted32 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX32 rho + cy * seg30AccY32 rho =
      (((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 := by
  calc
    _ = (cx * seg30AccX31 rho + cy * seg30AccY31 rho) +
        cx * rho 28720 + cy * rho 28721 := by
      rw [seg30AccX32, seg30AccY32]
      ring
    _ = _ := by rw [seg30AccWeighted31]

theorem seg30AccWeighted33 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX33 rho + cy * seg30AccY33 rho =
      ((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 := by
  calc
    _ = (cx * seg30AccX32 rho + cy * seg30AccY32 rho) +
        cx * rho 28725 + cy * rho 28726 := by
      rw [seg30AccX33, seg30AccY33]
      ring
    _ = _ := by rw [seg30AccWeighted32]

theorem seg30AccWeighted34 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX34 rho + cy * seg30AccY34 rho =
      (((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 := by
  calc
    _ = (cx * seg30AccX33 rho + cy * seg30AccY33 rho) +
        cx * rho 28730 + cy * rho 28731 := by
      rw [seg30AccX34, seg30AccY34]
      ring
    _ = _ := by rw [seg30AccWeighted33]

theorem seg30AccWeighted35 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX35 rho + cy * seg30AccY35 rho =
      ((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 := by
  calc
    _ = (cx * seg30AccX34 rho + cy * seg30AccY34 rho) +
        cx * rho 28735 + cy * rho 28736 := by
      rw [seg30AccX35, seg30AccY35]
      ring
    _ = _ := by rw [seg30AccWeighted34]

theorem seg30AccWeighted36 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX36 rho + cy * seg30AccY36 rho =
      (((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 := by
  calc
    _ = (cx * seg30AccX35 rho + cy * seg30AccY35 rho) +
        cx * rho 28740 + cy * rho 28741 := by
      rw [seg30AccX36, seg30AccY36]
      ring
    _ = _ := by rw [seg30AccWeighted35]

theorem seg30AccWeighted37 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX37 rho + cy * seg30AccY37 rho =
      ((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 := by
  calc
    _ = (cx * seg30AccX36 rho + cy * seg30AccY36 rho) +
        cx * rho 28745 + cy * rho 28746 := by
      rw [seg30AccX37, seg30AccY37]
      ring
    _ = _ := by rw [seg30AccWeighted36]

theorem seg30AccWeighted38 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX38 rho + cy * seg30AccY38 rho =
      (((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 := by
  calc
    _ = (cx * seg30AccX37 rho + cy * seg30AccY37 rho) +
        cx * rho 28750 + cy * rho 28751 := by
      rw [seg30AccX38, seg30AccY38]
      ring
    _ = _ := by rw [seg30AccWeighted37]

theorem seg30AccWeighted39 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX39 rho + cy * seg30AccY39 rho =
      ((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 := by
  calc
    _ = (cx * seg30AccX38 rho + cy * seg30AccY38 rho) +
        cx * rho 28755 + cy * rho 28756 := by
      rw [seg30AccX39, seg30AccY39]
      ring
    _ = _ := by rw [seg30AccWeighted38]

theorem seg30AccWeighted40 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX40 rho + cy * seg30AccY40 rho =
      (((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 := by
  calc
    _ = (cx * seg30AccX39 rho + cy * seg30AccY39 rho) +
        cx * rho 28760 + cy * rho 28761 := by
      rw [seg30AccX40, seg30AccY40]
      ring
    _ = _ := by rw [seg30AccWeighted39]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
