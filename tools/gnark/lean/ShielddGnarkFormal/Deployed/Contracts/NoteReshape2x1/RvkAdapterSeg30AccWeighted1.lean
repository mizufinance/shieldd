import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccWeighted0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30AccWeighted11 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX11 rho + cy * seg30AccY11 rho =
      ((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 := by
  calc
    _ = (cx * seg30AccX10 rho + cy * seg30AccY10 rho) +
        cx * rho 28615 + cy * rho 28616 := by
      rw [seg30AccX11, seg30AccY11]
      ring
    _ = _ := by rw [seg30AccWeighted10]

theorem seg30AccWeighted12 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX12 rho + cy * seg30AccY12 rho =
      (((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 := by
  calc
    _ = (cx * seg30AccX11 rho + cy * seg30AccY11 rho) +
        cx * rho 28620 + cy * rho 28621 := by
      rw [seg30AccX12, seg30AccY12]
      ring
    _ = _ := by rw [seg30AccWeighted11]

theorem seg30AccWeighted13 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX13 rho + cy * seg30AccY13 rho =
      ((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 := by
  calc
    _ = (cx * seg30AccX12 rho + cy * seg30AccY12 rho) +
        cx * rho 28625 + cy * rho 28626 := by
      rw [seg30AccX13, seg30AccY13]
      ring
    _ = _ := by rw [seg30AccWeighted12]

theorem seg30AccWeighted14 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX14 rho + cy * seg30AccY14 rho =
      (((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 := by
  calc
    _ = (cx * seg30AccX13 rho + cy * seg30AccY13 rho) +
        cx * rho 28630 + cy * rho 28631 := by
      rw [seg30AccX14, seg30AccY14]
      ring
    _ = _ := by rw [seg30AccWeighted13]

theorem seg30AccWeighted15 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX15 rho + cy * seg30AccY15 rho =
      ((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 := by
  calc
    _ = (cx * seg30AccX14 rho + cy * seg30AccY14 rho) +
        cx * rho 28635 + cy * rho 28636 := by
      rw [seg30AccX15, seg30AccY15]
      ring
    _ = _ := by rw [seg30AccWeighted14]

theorem seg30AccWeighted16 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX16 rho + cy * seg30AccY16 rho =
      (((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 := by
  calc
    _ = (cx * seg30AccX15 rho + cy * seg30AccY15 rho) +
        cx * rho 28640 + cy * rho 28641 := by
      rw [seg30AccX16, seg30AccY16]
      ring
    _ = _ := by rw [seg30AccWeighted15]

theorem seg30AccWeighted17 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX17 rho + cy * seg30AccY17 rho =
      ((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 := by
  calc
    _ = (cx * seg30AccX16 rho + cy * seg30AccY16 rho) +
        cx * rho 28645 + cy * rho 28646 := by
      rw [seg30AccX17, seg30AccY17]
      ring
    _ = _ := by rw [seg30AccWeighted16]

theorem seg30AccWeighted18 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX18 rho + cy * seg30AccY18 rho =
      (((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 := by
  calc
    _ = (cx * seg30AccX17 rho + cy * seg30AccY17 rho) +
        cx * rho 28650 + cy * rho 28651 := by
      rw [seg30AccX18, seg30AccY18]
      ring
    _ = _ := by rw [seg30AccWeighted17]

theorem seg30AccWeighted19 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX19 rho + cy * seg30AccY19 rho =
      ((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 := by
  calc
    _ = (cx * seg30AccX18 rho + cy * seg30AccY18 rho) +
        cx * rho 28655 + cy * rho 28656 := by
      rw [seg30AccX19, seg30AccY19]
      ring
    _ = _ := by rw [seg30AccWeighted18]

theorem seg30AccWeighted20 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX20 rho + cy * seg30AccY20 rho =
      (((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 := by
  calc
    _ = (cx * seg30AccX19 rho + cy * seg30AccY19 rho) +
        cx * rho 28660 + cy * rho 28661 := by
      rw [seg30AccX20, seg30AccY20]
      ring
    _ = _ := by rw [seg30AccWeighted19]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
