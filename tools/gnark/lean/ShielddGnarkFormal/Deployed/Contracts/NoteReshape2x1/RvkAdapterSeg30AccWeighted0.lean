import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccY24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30AccWeighted1 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX1 rho + cy * seg30AccY1 rho =
      cx * rho 28565 + cy * rho 28566 := by
  rw [seg30AccX1, seg30AccY1]

theorem seg30AccWeighted2 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX2 rho + cy * seg30AccY2 rho =
      (cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 := by
  calc
    _ = (cx * seg30AccX1 rho + cy * seg30AccY1 rho) +
        cx * rho 28570 + cy * rho 28571 := by
      rw [seg30AccX2, seg30AccY2]
      ring
    _ = _ := by rw [seg30AccWeighted1]

theorem seg30AccWeighted3 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX3 rho + cy * seg30AccY3 rho =
      ((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 := by
  calc
    _ = (cx * seg30AccX2 rho + cy * seg30AccY2 rho) +
        cx * rho 28575 + cy * rho 28576 := by
      rw [seg30AccX3, seg30AccY3]
      ring
    _ = _ := by rw [seg30AccWeighted2]

theorem seg30AccWeighted4 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX4 rho + cy * seg30AccY4 rho =
      (((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 := by
  calc
    _ = (cx * seg30AccX3 rho + cy * seg30AccY3 rho) +
        cx * rho 28580 + cy * rho 28581 := by
      rw [seg30AccX4, seg30AccY4]
      ring
    _ = _ := by rw [seg30AccWeighted3]

theorem seg30AccWeighted5 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX5 rho + cy * seg30AccY5 rho =
      ((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 := by
  calc
    _ = (cx * seg30AccX4 rho + cy * seg30AccY4 rho) +
        cx * rho 28585 + cy * rho 28586 := by
      rw [seg30AccX5, seg30AccY5]
      ring
    _ = _ := by rw [seg30AccWeighted4]

theorem seg30AccWeighted6 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX6 rho + cy * seg30AccY6 rho =
      (((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 := by
  calc
    _ = (cx * seg30AccX5 rho + cy * seg30AccY5 rho) +
        cx * rho 28590 + cy * rho 28591 := by
      rw [seg30AccX6, seg30AccY6]
      ring
    _ = _ := by rw [seg30AccWeighted5]

theorem seg30AccWeighted7 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX7 rho + cy * seg30AccY7 rho =
      ((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 := by
  calc
    _ = (cx * seg30AccX6 rho + cy * seg30AccY6 rho) +
        cx * rho 28595 + cy * rho 28596 := by
      rw [seg30AccX7, seg30AccY7]
      ring
    _ = _ := by rw [seg30AccWeighted6]

theorem seg30AccWeighted8 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX8 rho + cy * seg30AccY8 rho =
      (((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 := by
  calc
    _ = (cx * seg30AccX7 rho + cy * seg30AccY7 rho) +
        cx * rho 28600 + cy * rho 28601 := by
      rw [seg30AccX8, seg30AccY8]
      ring
    _ = _ := by rw [seg30AccWeighted7]

theorem seg30AccWeighted9 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX9 rho + cy * seg30AccY9 rho =
      ((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 := by
  calc
    _ = (cx * seg30AccX8 rho + cy * seg30AccY8 rho) +
        cx * rho 28605 + cy * rho 28606 := by
      rw [seg30AccX9, seg30AccY9]
      ring
    _ = _ := by rw [seg30AccWeighted8]

theorem seg30AccWeighted10 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX10 rho + cy * seg30AccY10 rho =
      (((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 := by
  calc
    _ = (cx * seg30AccX9 rho + cy * seg30AccY9 rho) +
        cx * rho 28610 + cy * rho 28611 := by
      rw [seg30AccX10, seg30AccY10]
      ring
    _ = _ := by rw [seg30AccWeighted9]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
