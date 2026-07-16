import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccWeighted1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15AccWeighted21 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX21 rho + cy * seg15AccY21 rho =
      ((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 := by
  calc
    _ = (cx * seg15AccX20 rho + cy * seg15AccY20 rho) +
        cx * rho 16490 + cy * rho 16491 := by
      rw [seg15AccX21, seg15AccY21]
      ring
    _ = _ := by rw [seg15AccWeighted20]

theorem seg15AccWeighted22 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX22 rho + cy * seg15AccY22 rho =
      (((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 := by
  calc
    _ = (cx * seg15AccX21 rho + cy * seg15AccY21 rho) +
        cx * rho 16495 + cy * rho 16496 := by
      rw [seg15AccX22, seg15AccY22]
      ring
    _ = _ := by rw [seg15AccWeighted21]

theorem seg15AccWeighted23 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX23 rho + cy * seg15AccY23 rho =
      ((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 := by
  calc
    _ = (cx * seg15AccX22 rho + cy * seg15AccY22 rho) +
        cx * rho 16500 + cy * rho 16501 := by
      rw [seg15AccX23, seg15AccY23]
      ring
    _ = _ := by rw [seg15AccWeighted22]

theorem seg15AccWeighted24 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX24 rho + cy * seg15AccY24 rho =
      (((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 := by
  calc
    _ = (cx * seg15AccX23 rho + cy * seg15AccY23 rho) +
        cx * rho 16505 + cy * rho 16506 := by
      rw [seg15AccX24, seg15AccY24]
      ring
    _ = _ := by rw [seg15AccWeighted23]

theorem seg15AccWeighted25 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX25 rho + cy * seg15AccY25 rho =
      ((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 := by
  calc
    _ = (cx * seg15AccX24 rho + cy * seg15AccY24 rho) +
        cx * rho 16510 + cy * rho 16511 := by
      rw [seg15AccX25, seg15AccY25]
      ring
    _ = _ := by rw [seg15AccWeighted24]

theorem seg15AccWeighted26 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX26 rho + cy * seg15AccY26 rho =
      (((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 := by
  calc
    _ = (cx * seg15AccX25 rho + cy * seg15AccY25 rho) +
        cx * rho 16515 + cy * rho 16516 := by
      rw [seg15AccX26, seg15AccY26]
      ring
    _ = _ := by rw [seg15AccWeighted25]

theorem seg15AccWeighted27 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX27 rho + cy * seg15AccY27 rho =
      ((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 := by
  calc
    _ = (cx * seg15AccX26 rho + cy * seg15AccY26 rho) +
        cx * rho 16520 + cy * rho 16521 := by
      rw [seg15AccX27, seg15AccY27]
      ring
    _ = _ := by rw [seg15AccWeighted26]

theorem seg15AccWeighted28 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX28 rho + cy * seg15AccY28 rho =
      (((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 := by
  calc
    _ = (cx * seg15AccX27 rho + cy * seg15AccY27 rho) +
        cx * rho 16525 + cy * rho 16526 := by
      rw [seg15AccX28, seg15AccY28]
      ring
    _ = _ := by rw [seg15AccWeighted27]

theorem seg15AccWeighted29 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX29 rho + cy * seg15AccY29 rho =
      ((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 := by
  calc
    _ = (cx * seg15AccX28 rho + cy * seg15AccY28 rho) +
        cx * rho 16530 + cy * rho 16531 := by
      rw [seg15AccX29, seg15AccY29]
      ring
    _ = _ := by rw [seg15AccWeighted28]

theorem seg15AccWeighted30 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX30 rho + cy * seg15AccY30 rho =
      (((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 := by
  calc
    _ = (cx * seg15AccX29 rho + cy * seg15AccY29 rho) +
        cx * rho 16535 + cy * rho 16536 := by
      rw [seg15AccX30, seg15AccY30]
      ring
    _ = _ := by rw [seg15AccWeighted29]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
