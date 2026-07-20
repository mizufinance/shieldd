import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccWeighted1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30AccWeighted21 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX21 rho + cy * seg30AccY21 rho =
      ((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 := by
  calc
    _ = (cx * seg30AccX20 rho + cy * seg30AccY20 rho) +
        cx * rho 28665 + cy * rho 28666 := by
      rw [seg30AccX21, seg30AccY21]
      ring
    _ = _ := by rw [seg30AccWeighted20]

theorem seg30AccWeighted22 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX22 rho + cy * seg30AccY22 rho =
      (((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 := by
  calc
    _ = (cx * seg30AccX21 rho + cy * seg30AccY21 rho) +
        cx * rho 28670 + cy * rho 28671 := by
      rw [seg30AccX22, seg30AccY22]
      ring
    _ = _ := by rw [seg30AccWeighted21]

theorem seg30AccWeighted23 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX23 rho + cy * seg30AccY23 rho =
      ((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 := by
  calc
    _ = (cx * seg30AccX22 rho + cy * seg30AccY22 rho) +
        cx * rho 28675 + cy * rho 28676 := by
      rw [seg30AccX23, seg30AccY23]
      ring
    _ = _ := by rw [seg30AccWeighted22]

theorem seg30AccWeighted24 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX24 rho + cy * seg30AccY24 rho =
      (((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 := by
  calc
    _ = (cx * seg30AccX23 rho + cy * seg30AccY23 rho) +
        cx * rho 28680 + cy * rho 28681 := by
      rw [seg30AccX24, seg30AccY24]
      ring
    _ = _ := by rw [seg30AccWeighted23]

theorem seg30AccWeighted25 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX25 rho + cy * seg30AccY25 rho =
      ((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 := by
  calc
    _ = (cx * seg30AccX24 rho + cy * seg30AccY24 rho) +
        cx * rho 28685 + cy * rho 28686 := by
      rw [seg30AccX25, seg30AccY25]
      ring
    _ = _ := by rw [seg30AccWeighted24]

theorem seg30AccWeighted26 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX26 rho + cy * seg30AccY26 rho =
      (((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 := by
  calc
    _ = (cx * seg30AccX25 rho + cy * seg30AccY25 rho) +
        cx * rho 28690 + cy * rho 28691 := by
      rw [seg30AccX26, seg30AccY26]
      ring
    _ = _ := by rw [seg30AccWeighted25]

theorem seg30AccWeighted27 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX27 rho + cy * seg30AccY27 rho =
      ((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 := by
  calc
    _ = (cx * seg30AccX26 rho + cy * seg30AccY26 rho) +
        cx * rho 28695 + cy * rho 28696 := by
      rw [seg30AccX27, seg30AccY27]
      ring
    _ = _ := by rw [seg30AccWeighted26]

theorem seg30AccWeighted28 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX28 rho + cy * seg30AccY28 rho =
      (((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 := by
  calc
    _ = (cx * seg30AccX27 rho + cy * seg30AccY27 rho) +
        cx * rho 28700 + cy * rho 28701 := by
      rw [seg30AccX28, seg30AccY28]
      ring
    _ = _ := by rw [seg30AccWeighted27]

theorem seg30AccWeighted29 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX29 rho + cy * seg30AccY29 rho =
      ((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 := by
  calc
    _ = (cx * seg30AccX28 rho + cy * seg30AccY28 rho) +
        cx * rho 28705 + cy * rho 28706 := by
      rw [seg30AccX29, seg30AccY29]
      ring
    _ = _ := by rw [seg30AccWeighted28]

theorem seg30AccWeighted30 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX30 rho + cy * seg30AccY30 rho =
      (((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 := by
  calc
    _ = (cx * seg30AccX29 rho + cy * seg30AccY29 rho) +
        cx * rho 28710 + cy * rho 28711 := by
      rw [seg30AccX30, seg30AccY30]
      ring
    _ = _ := by rw [seg30AccWeighted29]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
