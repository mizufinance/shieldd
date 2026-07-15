import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccWeighted0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15AccWeighted11 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX11 rho + cy * seg15AccY11 rho =
      ((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 := by
  calc
    _ = (cx * seg15AccX10 rho + cy * seg15AccY10 rho) +
        cx * rho 16440 + cy * rho 16441 := by
      rw [seg15AccX11, seg15AccY11]
      ring
    _ = _ := by rw [seg15AccWeighted10]

theorem seg15AccWeighted12 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX12 rho + cy * seg15AccY12 rho =
      (((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 := by
  calc
    _ = (cx * seg15AccX11 rho + cy * seg15AccY11 rho) +
        cx * rho 16445 + cy * rho 16446 := by
      rw [seg15AccX12, seg15AccY12]
      ring
    _ = _ := by rw [seg15AccWeighted11]

theorem seg15AccWeighted13 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX13 rho + cy * seg15AccY13 rho =
      ((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 := by
  calc
    _ = (cx * seg15AccX12 rho + cy * seg15AccY12 rho) +
        cx * rho 16450 + cy * rho 16451 := by
      rw [seg15AccX13, seg15AccY13]
      ring
    _ = _ := by rw [seg15AccWeighted12]

theorem seg15AccWeighted14 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX14 rho + cy * seg15AccY14 rho =
      (((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 := by
  calc
    _ = (cx * seg15AccX13 rho + cy * seg15AccY13 rho) +
        cx * rho 16455 + cy * rho 16456 := by
      rw [seg15AccX14, seg15AccY14]
      ring
    _ = _ := by rw [seg15AccWeighted13]

theorem seg15AccWeighted15 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX15 rho + cy * seg15AccY15 rho =
      ((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 := by
  calc
    _ = (cx * seg15AccX14 rho + cy * seg15AccY14 rho) +
        cx * rho 16460 + cy * rho 16461 := by
      rw [seg15AccX15, seg15AccY15]
      ring
    _ = _ := by rw [seg15AccWeighted14]

theorem seg15AccWeighted16 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX16 rho + cy * seg15AccY16 rho =
      (((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 := by
  calc
    _ = (cx * seg15AccX15 rho + cy * seg15AccY15 rho) +
        cx * rho 16465 + cy * rho 16466 := by
      rw [seg15AccX16, seg15AccY16]
      ring
    _ = _ := by rw [seg15AccWeighted15]

theorem seg15AccWeighted17 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX17 rho + cy * seg15AccY17 rho =
      ((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 := by
  calc
    _ = (cx * seg15AccX16 rho + cy * seg15AccY16 rho) +
        cx * rho 16470 + cy * rho 16471 := by
      rw [seg15AccX17, seg15AccY17]
      ring
    _ = _ := by rw [seg15AccWeighted16]

theorem seg15AccWeighted18 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX18 rho + cy * seg15AccY18 rho =
      (((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 := by
  calc
    _ = (cx * seg15AccX17 rho + cy * seg15AccY17 rho) +
        cx * rho 16475 + cy * rho 16476 := by
      rw [seg15AccX18, seg15AccY18]
      ring
    _ = _ := by rw [seg15AccWeighted17]

theorem seg15AccWeighted19 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX19 rho + cy * seg15AccY19 rho =
      ((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 := by
  calc
    _ = (cx * seg15AccX18 rho + cy * seg15AccY18 rho) +
        cx * rho 16480 + cy * rho 16481 := by
      rw [seg15AccX19, seg15AccY19]
      ring
    _ = _ := by rw [seg15AccWeighted18]

theorem seg15AccWeighted20 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX20 rho + cy * seg15AccY20 rho =
      (((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 := by
  calc
    _ = (cx * seg15AccX19 rho + cy * seg15AccY19 rho) +
        cx * rho 16485 + cy * rho 16486 := by
      rw [seg15AccX20, seg15AccY20]
      ring
    _ = _ := by rw [seg15AccWeighted19]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
