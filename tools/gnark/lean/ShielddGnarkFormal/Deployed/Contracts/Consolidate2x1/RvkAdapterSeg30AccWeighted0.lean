import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccY24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30AccWeighted1 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX1 rho + cy * seg30AccY1 rho =
      cx * rho 28571 + cy * rho 28572 := by
  rw [seg30AccX1, seg30AccY1]

theorem seg30AccWeighted2 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX2 rho + cy * seg30AccY2 rho =
      (cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 := by
  calc
    _ = (cx * seg30AccX1 rho + cy * seg30AccY1 rho) +
        cx * rho 28576 + cy * rho 28577 := by
      rw [seg30AccX2, seg30AccY2]
      ring
    _ = _ := by rw [seg30AccWeighted1]

theorem seg30AccWeighted3 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX3 rho + cy * seg30AccY3 rho =
      ((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 := by
  calc
    _ = (cx * seg30AccX2 rho + cy * seg30AccY2 rho) +
        cx * rho 28581 + cy * rho 28582 := by
      rw [seg30AccX3, seg30AccY3]
      ring
    _ = _ := by rw [seg30AccWeighted2]

theorem seg30AccWeighted4 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX4 rho + cy * seg30AccY4 rho =
      (((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 := by
  calc
    _ = (cx * seg30AccX3 rho + cy * seg30AccY3 rho) +
        cx * rho 28586 + cy * rho 28587 := by
      rw [seg30AccX4, seg30AccY4]
      ring
    _ = _ := by rw [seg30AccWeighted3]

theorem seg30AccWeighted5 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX5 rho + cy * seg30AccY5 rho =
      ((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 := by
  calc
    _ = (cx * seg30AccX4 rho + cy * seg30AccY4 rho) +
        cx * rho 28591 + cy * rho 28592 := by
      rw [seg30AccX5, seg30AccY5]
      ring
    _ = _ := by rw [seg30AccWeighted4]

theorem seg30AccWeighted6 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX6 rho + cy * seg30AccY6 rho =
      (((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 := by
  calc
    _ = (cx * seg30AccX5 rho + cy * seg30AccY5 rho) +
        cx * rho 28596 + cy * rho 28597 := by
      rw [seg30AccX6, seg30AccY6]
      ring
    _ = _ := by rw [seg30AccWeighted5]

theorem seg30AccWeighted7 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX7 rho + cy * seg30AccY7 rho =
      ((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 := by
  calc
    _ = (cx * seg30AccX6 rho + cy * seg30AccY6 rho) +
        cx * rho 28601 + cy * rho 28602 := by
      rw [seg30AccX7, seg30AccY7]
      ring
    _ = _ := by rw [seg30AccWeighted6]

theorem seg30AccWeighted8 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX8 rho + cy * seg30AccY8 rho =
      (((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 := by
  calc
    _ = (cx * seg30AccX7 rho + cy * seg30AccY7 rho) +
        cx * rho 28606 + cy * rho 28607 := by
      rw [seg30AccX8, seg30AccY8]
      ring
    _ = _ := by rw [seg30AccWeighted7]

theorem seg30AccWeighted9 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX9 rho + cy * seg30AccY9 rho =
      ((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 := by
  calc
    _ = (cx * seg30AccX8 rho + cy * seg30AccY8 rho) +
        cx * rho 28611 + cy * rho 28612 := by
      rw [seg30AccX9, seg30AccY9]
      ring
    _ = _ := by rw [seg30AccWeighted8]

theorem seg30AccWeighted10 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX10 rho + cy * seg30AccY10 rho =
      (((((((((cx * rho 28571 + cy * rho 28572 + cx * rho 28576) + cy * rho 28577 + cx * rho 28581) + cy * rho 28582 + cx * rho 28586) + cy * rho 28587 + cx * rho 28591) + cy * rho 28592 + cx * rho 28596) + cy * rho 28597 + cx * rho 28601) + cy * rho 28602 + cx * rho 28606) + cy * rho 28607 + cx * rho 28611) + cy * rho 28612 + cx * rho 28616) + cy * rho 28617 := by
  calc
    _ = (cx * seg30AccX9 rho + cy * seg30AccY9 rho) +
        cx * rho 28616 + cy * rho 28617 := by
      rw [seg30AccX10, seg30AccY10]
      ring
    _ = _ := by rw [seg30AccWeighted9]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
