import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccWeighted3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15AccWeighted41 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX41 rho + cy * seg15AccY41 rho =
      ((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 := by
  calc
    _ = (cx * seg15AccX40 rho + cy * seg15AccY40 rho) +
        cx * rho 16590 + cy * rho 16591 := by
      rw [seg15AccX41, seg15AccY41]
      ring
    _ = _ := by rw [seg15AccWeighted40]

theorem seg15AccWeighted42 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX42 rho + cy * seg15AccY42 rho =
      (((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 := by
  calc
    _ = (cx * seg15AccX41 rho + cy * seg15AccY41 rho) +
        cx * rho 16595 + cy * rho 16596 := by
      rw [seg15AccX42, seg15AccY42]
      ring
    _ = _ := by rw [seg15AccWeighted41]

theorem seg15AccWeighted43 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX43 rho + cy * seg15AccY43 rho =
      ((((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 + cx * rho 16600) + cy * rho 16601 := by
  calc
    _ = (cx * seg15AccX42 rho + cy * seg15AccY42 rho) +
        cx * rho 16600 + cy * rho 16601 := by
      rw [seg15AccX43, seg15AccY43]
      ring
    _ = _ := by rw [seg15AccWeighted42]

theorem seg15AccWeighted44 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX44 rho + cy * seg15AccY44 rho =
      (((((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 + cx * rho 16600) + cy * rho 16601 + cx * rho 16605) + cy * rho 16606 := by
  calc
    _ = (cx * seg15AccX43 rho + cy * seg15AccY43 rho) +
        cx * rho 16605 + cy * rho 16606 := by
      rw [seg15AccX44, seg15AccY44]
      ring
    _ = _ := by rw [seg15AccWeighted43]

theorem seg15AccWeighted45 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX45 rho + cy * seg15AccY45 rho =
      ((((((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 + cx * rho 16600) + cy * rho 16601 + cx * rho 16605) + cy * rho 16606 + cx * rho 16610) + cy * rho 16611 := by
  calc
    _ = (cx * seg15AccX44 rho + cy * seg15AccY44 rho) +
        cx * rho 16610 + cy * rho 16611 := by
      rw [seg15AccX45, seg15AccY45]
      ring
    _ = _ := by rw [seg15AccWeighted44]

theorem seg15AccWeighted46 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX46 rho + cy * seg15AccY46 rho =
      (((((((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 + cx * rho 16600) + cy * rho 16601 + cx * rho 16605) + cy * rho 16606 + cx * rho 16610) + cy * rho 16611 + cx * rho 16615) + cy * rho 16616 := by
  calc
    _ = (cx * seg15AccX45 rho + cy * seg15AccY45 rho) +
        cx * rho 16615 + cy * rho 16616 := by
      rw [seg15AccX46, seg15AccY46]
      ring
    _ = _ := by rw [seg15AccWeighted45]

theorem seg15AccWeighted47 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX47 rho + cy * seg15AccY47 rho =
      ((((((((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 + cx * rho 16600) + cy * rho 16601 + cx * rho 16605) + cy * rho 16606 + cx * rho 16610) + cy * rho 16611 + cx * rho 16615) + cy * rho 16616 + cx * rho 16620) + cy * rho 16621 := by
  calc
    _ = (cx * seg15AccX46 rho + cy * seg15AccY46 rho) +
        cx * rho 16620 + cy * rho 16621 := by
      rw [seg15AccX47, seg15AccY47]
      ring
    _ = _ := by rw [seg15AccWeighted46]

theorem seg15AccWeighted48 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX48 rho + cy * seg15AccY48 rho =
      (((((((((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 + cx * rho 16600) + cy * rho 16601 + cx * rho 16605) + cy * rho 16606 + cx * rho 16610) + cy * rho 16611 + cx * rho 16615) + cy * rho 16616 + cx * rho 16620) + cy * rho 16621 + cx * rho 16625) + cy * rho 16626 := by
  calc
    _ = (cx * seg15AccX47 rho + cy * seg15AccY47 rho) +
        cx * rho 16625 + cy * rho 16626 := by
      rw [seg15AccX48, seg15AccY48]
      ring
    _ = _ := by rw [seg15AccWeighted47]

theorem seg15AccWeighted49 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX49 rho + cy * seg15AccY49 rho =
      ((((((((((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 + cx * rho 16600) + cy * rho 16601 + cx * rho 16605) + cy * rho 16606 + cx * rho 16610) + cy * rho 16611 + cx * rho 16615) + cy * rho 16616 + cx * rho 16620) + cy * rho 16621 + cx * rho 16625) + cy * rho 16626 + cx * rho 16630) + cy * rho 16631 := by
  calc
    _ = (cx * seg15AccX48 rho + cy * seg15AccY48 rho) +
        cx * rho 16630 + cy * rho 16631 := by
      rw [seg15AccX49, seg15AccY49]
      ring
    _ = _ := by rw [seg15AccWeighted48]

theorem seg15AccWeighted50 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX50 rho + cy * seg15AccY50 rho =
      (((((((((((((((((((((((((((((((((((((((((((((((((cx * rho 16390 + cy * rho 16391 + cx * rho 16395) + cy * rho 16396 + cx * rho 16400) + cy * rho 16401 + cx * rho 16405) + cy * rho 16406 + cx * rho 16410) + cy * rho 16411 + cx * rho 16415) + cy * rho 16416 + cx * rho 16420) + cy * rho 16421 + cx * rho 16425) + cy * rho 16426 + cx * rho 16430) + cy * rho 16431 + cx * rho 16435) + cy * rho 16436 + cx * rho 16440) + cy * rho 16441 + cx * rho 16445) + cy * rho 16446 + cx * rho 16450) + cy * rho 16451 + cx * rho 16455) + cy * rho 16456 + cx * rho 16460) + cy * rho 16461 + cx * rho 16465) + cy * rho 16466 + cx * rho 16470) + cy * rho 16471 + cx * rho 16475) + cy * rho 16476 + cx * rho 16480) + cy * rho 16481 + cx * rho 16485) + cy * rho 16486 + cx * rho 16490) + cy * rho 16491 + cx * rho 16495) + cy * rho 16496 + cx * rho 16500) + cy * rho 16501 + cx * rho 16505) + cy * rho 16506 + cx * rho 16510) + cy * rho 16511 + cx * rho 16515) + cy * rho 16516 + cx * rho 16520) + cy * rho 16521 + cx * rho 16525) + cy * rho 16526 + cx * rho 16530) + cy * rho 16531 + cx * rho 16535) + cy * rho 16536 + cx * rho 16540) + cy * rho 16541 + cx * rho 16545) + cy * rho 16546 + cx * rho 16550) + cy * rho 16551 + cx * rho 16555) + cy * rho 16556 + cx * rho 16560) + cy * rho 16561 + cx * rho 16565) + cy * rho 16566 + cx * rho 16570) + cy * rho 16571 + cx * rho 16575) + cy * rho 16576 + cx * rho 16580) + cy * rho 16581 + cx * rho 16585) + cy * rho 16586 + cx * rho 16590) + cy * rho 16591 + cx * rho 16595) + cy * rho 16596 + cx * rho 16600) + cy * rho 16601 + cx * rho 16605) + cy * rho 16606 + cx * rho 16610) + cy * rho 16611 + cx * rho 16615) + cy * rho 16616 + cx * rho 16620) + cy * rho 16621 + cx * rho 16625) + cy * rho 16626 + cx * rho 16630) + cy * rho 16631 + cx * rho 16635) + cy * rho 16636 := by
  calc
    _ = (cx * seg15AccX49 rho + cy * seg15AccY49 rho) +
        cx * rho 16635 + cy * rho 16636 := by
      rw [seg15AccX50, seg15AccY50]
      ring
    _ = _ := by rw [seg15AccWeighted49]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
