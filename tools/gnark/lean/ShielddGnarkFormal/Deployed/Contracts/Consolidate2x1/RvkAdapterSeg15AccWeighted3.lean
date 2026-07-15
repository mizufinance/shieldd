import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccWeighted2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15AccWeighted31 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX31 rho + cy * seg15AccY31 rho =
      ((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 := by
  calc
    _ = (cx * seg15AccX30 rho + cy * seg15AccY30 rho) +
        cx * rho 16540 + cy * rho 16541 := by
      rw [seg15AccX31, seg15AccY31]
      ring
    _ = _ := by rw [seg15AccWeighted30]

theorem seg15AccWeighted32 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX32 rho + cy * seg15AccY32 rho =
      (((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 := by
  calc
    _ = (cx * seg15AccX31 rho + cy * seg15AccY31 rho) +
        cx * rho 16545 + cy * rho 16546 := by
      rw [seg15AccX32, seg15AccY32]
      ring
    _ = _ := by rw [seg15AccWeighted31]

theorem seg15AccWeighted33 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX33 rho + cy * seg15AccY33 rho =
      ((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 := by
  calc
    _ = (cx * seg15AccX32 rho + cy * seg15AccY32 rho) +
        cx * rho 16550 + cy * rho 16551 := by
      rw [seg15AccX33, seg15AccY33]
      ring
    _ = _ := by rw [seg15AccWeighted32]

theorem seg15AccWeighted34 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX34 rho + cy * seg15AccY34 rho =
      (((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 := by
  calc
    _ = (cx * seg15AccX33 rho + cy * seg15AccY33 rho) +
        cx * rho 16555 + cy * rho 16556 := by
      rw [seg15AccX34, seg15AccY34]
      ring
    _ = _ := by rw [seg15AccWeighted33]

theorem seg15AccWeighted35 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX35 rho + cy * seg15AccY35 rho =
      ((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 := by
  calc
    _ = (cx * seg15AccX34 rho + cy * seg15AccY34 rho) +
        cx * rho 16560 + cy * rho 16561 := by
      rw [seg15AccX35, seg15AccY35]
      ring
    _ = _ := by rw [seg15AccWeighted34]

theorem seg15AccWeighted36 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX36 rho + cy * seg15AccY36 rho =
      (((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 := by
  calc
    _ = (cx * seg15AccX35 rho + cy * seg15AccY35 rho) +
        cx * rho 16565 + cy * rho 16566 := by
      rw [seg15AccX36, seg15AccY36]
      ring
    _ = _ := by rw [seg15AccWeighted35]

theorem seg15AccWeighted37 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX37 rho + cy * seg15AccY37 rho =
      ((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 := by
  calc
    _ = (cx * seg15AccX36 rho + cy * seg15AccY36 rho) +
        cx * rho 16570 + cy * rho 16571 := by
      rw [seg15AccX37, seg15AccY37]
      ring
    _ = _ := by rw [seg15AccWeighted36]

theorem seg15AccWeighted38 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX38 rho + cy * seg15AccY38 rho =
      (((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 := by
  calc
    _ = (cx * seg15AccX37 rho + cy * seg15AccY37 rho) +
        cx * rho 16575 + cy * rho 16576 := by
      rw [seg15AccX38, seg15AccY38]
      ring
    _ = _ := by rw [seg15AccWeighted37]

theorem seg15AccWeighted39 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX39 rho + cy * seg15AccY39 rho =
      ((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 := by
  calc
    _ = (cx * seg15AccX38 rho + cy * seg15AccY38 rho) +
        cx * rho 16580 + cy * rho 16581 := by
      rw [seg15AccX39, seg15AccY39]
      ring
    _ = _ := by rw [seg15AccWeighted38]

theorem seg15AccWeighted40 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX40 rho + cy * seg15AccY40 rho =
      (((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 := by
  calc
    _ = (cx * seg15AccX39 rho + cy * seg15AccY39 rho) +
        cx * rho 16585 + cy * rho 16586 := by
      rw [seg15AccX40, seg15AccY40]
      ring
    _ = _ := by rw [seg15AccWeighted39]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
