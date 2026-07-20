import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccY24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15AccWeighted1 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX1 rho + cy * seg15AccY1 rho =
      cx * rho 16384 + cy * rho 16385 := by
  rw [seg15AccX1, seg15AccY1]

theorem seg15AccWeighted2 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX2 rho + cy * seg15AccY2 rho =
      (cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 := by
  calc
    _ = (cx * seg15AccX1 rho + cy * seg15AccY1 rho) +
        cx * rho 16389 + cy * rho 16390 := by
      rw [seg15AccX2, seg15AccY2]
      ring
    _ = _ := by rw [seg15AccWeighted1]

theorem seg15AccWeighted3 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX3 rho + cy * seg15AccY3 rho =
      ((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 := by
  calc
    _ = (cx * seg15AccX2 rho + cy * seg15AccY2 rho) +
        cx * rho 16394 + cy * rho 16395 := by
      rw [seg15AccX3, seg15AccY3]
      ring
    _ = _ := by rw [seg15AccWeighted2]

theorem seg15AccWeighted4 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX4 rho + cy * seg15AccY4 rho =
      (((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 := by
  calc
    _ = (cx * seg15AccX3 rho + cy * seg15AccY3 rho) +
        cx * rho 16399 + cy * rho 16400 := by
      rw [seg15AccX4, seg15AccY4]
      ring
    _ = _ := by rw [seg15AccWeighted3]

theorem seg15AccWeighted5 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX5 rho + cy * seg15AccY5 rho =
      ((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 := by
  calc
    _ = (cx * seg15AccX4 rho + cy * seg15AccY4 rho) +
        cx * rho 16404 + cy * rho 16405 := by
      rw [seg15AccX5, seg15AccY5]
      ring
    _ = _ := by rw [seg15AccWeighted4]

theorem seg15AccWeighted6 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX6 rho + cy * seg15AccY6 rho =
      (((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 := by
  calc
    _ = (cx * seg15AccX5 rho + cy * seg15AccY5 rho) +
        cx * rho 16409 + cy * rho 16410 := by
      rw [seg15AccX6, seg15AccY6]
      ring
    _ = _ := by rw [seg15AccWeighted5]

theorem seg15AccWeighted7 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX7 rho + cy * seg15AccY7 rho =
      ((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 := by
  calc
    _ = (cx * seg15AccX6 rho + cy * seg15AccY6 rho) +
        cx * rho 16414 + cy * rho 16415 := by
      rw [seg15AccX7, seg15AccY7]
      ring
    _ = _ := by rw [seg15AccWeighted6]

theorem seg15AccWeighted8 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX8 rho + cy * seg15AccY8 rho =
      (((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 := by
  calc
    _ = (cx * seg15AccX7 rho + cy * seg15AccY7 rho) +
        cx * rho 16419 + cy * rho 16420 := by
      rw [seg15AccX8, seg15AccY8]
      ring
    _ = _ := by rw [seg15AccWeighted7]

theorem seg15AccWeighted9 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX9 rho + cy * seg15AccY9 rho =
      ((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 := by
  calc
    _ = (cx * seg15AccX8 rho + cy * seg15AccY8 rho) +
        cx * rho 16424 + cy * rho 16425 := by
      rw [seg15AccX9, seg15AccY9]
      ring
    _ = _ := by rw [seg15AccWeighted8]

theorem seg15AccWeighted10 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX10 rho + cy * seg15AccY10 rho =
      (((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 := by
  calc
    _ = (cx * seg15AccX9 rho + cy * seg15AccY9 rho) +
        cx * rho 16429 + cy * rho 16430 := by
      rw [seg15AccX10, seg15AccY10]
      ring
    _ = _ := by rw [seg15AccWeighted9]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
