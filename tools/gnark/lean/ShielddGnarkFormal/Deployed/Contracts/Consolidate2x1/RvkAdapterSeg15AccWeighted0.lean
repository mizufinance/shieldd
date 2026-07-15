import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccY24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15AccWeighted1 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX1 rho + cy * seg15AccY1 rho =
      cx * rho 16390 + cy * rho 16391 := by
  rw [seg15AccX1, seg15AccY1]

theorem seg15AccWeighted2 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX2 rho + cy * seg15AccY2 rho =
      (cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 := by
  calc
    _ = (cx * seg15AccX1 rho + cy * seg15AccY1 rho) +
        cx * rho 16395 + cy * rho 16396 := by
      rw [seg15AccX2, seg15AccY2]
      ring
    _ = _ := by rw [seg15AccWeighted1]

theorem seg15AccWeighted3 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX3 rho + cy * seg15AccY3 rho =
      ((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 := by
  calc
    _ = (cx * seg15AccX2 rho + cy * seg15AccY2 rho) +
        cx * rho 16400 + cy * rho 16401 := by
      rw [seg15AccX3, seg15AccY3]
      ring
    _ = _ := by rw [seg15AccWeighted2]

theorem seg15AccWeighted4 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX4 rho + cy * seg15AccY4 rho =
      (((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 := by
  calc
    _ = (cx * seg15AccX3 rho + cy * seg15AccY3 rho) +
        cx * rho 16405 + cy * rho 16406 := by
      rw [seg15AccX4, seg15AccY4]
      ring
    _ = _ := by rw [seg15AccWeighted3]

theorem seg15AccWeighted5 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX5 rho + cy * seg15AccY5 rho =
      ((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 := by
  calc
    _ = (cx * seg15AccX4 rho + cy * seg15AccY4 rho) +
        cx * rho 16410 + cy * rho 16411 := by
      rw [seg15AccX5, seg15AccY5]
      ring
    _ = _ := by rw [seg15AccWeighted4]

theorem seg15AccWeighted6 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX6 rho + cy * seg15AccY6 rho =
      (((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 := by
  calc
    _ = (cx * seg15AccX5 rho + cy * seg15AccY5 rho) +
        cx * rho 16415 + cy * rho 16416 := by
      rw [seg15AccX6, seg15AccY6]
      ring
    _ = _ := by rw [seg15AccWeighted5]

theorem seg15AccWeighted7 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX7 rho + cy * seg15AccY7 rho =
      ((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 := by
  calc
    _ = (cx * seg15AccX6 rho + cy * seg15AccY6 rho) +
        cx * rho 16420 + cy * rho 16421 := by
      rw [seg15AccX7, seg15AccY7]
      ring
    _ = _ := by rw [seg15AccWeighted6]

theorem seg15AccWeighted8 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX8 rho + cy * seg15AccY8 rho =
      (((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 := by
  calc
    _ = (cx * seg15AccX7 rho + cy * seg15AccY7 rho) +
        cx * rho 16425 + cy * rho 16426 := by
      rw [seg15AccX8, seg15AccY8]
      ring
    _ = _ := by rw [seg15AccWeighted7]

theorem seg15AccWeighted9 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX9 rho + cy * seg15AccY9 rho =
      ((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 := by
  calc
    _ = (cx * seg15AccX8 rho + cy * seg15AccY8 rho) +
        cx * rho 16430 + cy * rho 16431 := by
      rw [seg15AccX9, seg15AccY9]
      ring
    _ = _ := by rw [seg15AccWeighted8]

theorem seg15AccWeighted10 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX10 rho + cy * seg15AccY10 rho =
      (((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 := by
  calc
    _ = (cx * seg15AccX9 rho + cy * seg15AccY9 rho) +
        cx * rho 16435 + cy * rho 16436 := by
      rw [seg15AccX10, seg15AccY10]
      ring
    _ = _ := by rw [seg15AccWeighted9]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
