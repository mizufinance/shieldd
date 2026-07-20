import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccWeighted3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15AccWeighted41 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX41 rho + cy * seg15AccY41 rho =
      ((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 := by
  calc
    _ = (cx * seg15AccX40 rho + cy * seg15AccY40 rho) +
        cx * rho 16584 + cy * rho 16585 := by
      rw [seg15AccX41, seg15AccY41]
      ring
    _ = _ := by rw [seg15AccWeighted40]

theorem seg15AccWeighted42 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX42 rho + cy * seg15AccY42 rho =
      (((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 := by
  calc
    _ = (cx * seg15AccX41 rho + cy * seg15AccY41 rho) +
        cx * rho 16589 + cy * rho 16590 := by
      rw [seg15AccX42, seg15AccY42]
      ring
    _ = _ := by rw [seg15AccWeighted41]

theorem seg15AccWeighted43 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX43 rho + cy * seg15AccY43 rho =
      ((((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 + cx * rho 16594) + cy * rho 16595 := by
  calc
    _ = (cx * seg15AccX42 rho + cy * seg15AccY42 rho) +
        cx * rho 16594 + cy * rho 16595 := by
      rw [seg15AccX43, seg15AccY43]
      ring
    _ = _ := by rw [seg15AccWeighted42]

theorem seg15AccWeighted44 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX44 rho + cy * seg15AccY44 rho =
      (((((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 + cx * rho 16594) + cy * rho 16595 + cx * rho 16599) + cy * rho 16600 := by
  calc
    _ = (cx * seg15AccX43 rho + cy * seg15AccY43 rho) +
        cx * rho 16599 + cy * rho 16600 := by
      rw [seg15AccX44, seg15AccY44]
      ring
    _ = _ := by rw [seg15AccWeighted43]

theorem seg15AccWeighted45 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX45 rho + cy * seg15AccY45 rho =
      ((((((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 + cx * rho 16594) + cy * rho 16595 + cx * rho 16599) + cy * rho 16600 + cx * rho 16604) + cy * rho 16605 := by
  calc
    _ = (cx * seg15AccX44 rho + cy * seg15AccY44 rho) +
        cx * rho 16604 + cy * rho 16605 := by
      rw [seg15AccX45, seg15AccY45]
      ring
    _ = _ := by rw [seg15AccWeighted44]

theorem seg15AccWeighted46 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX46 rho + cy * seg15AccY46 rho =
      (((((((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 + cx * rho 16594) + cy * rho 16595 + cx * rho 16599) + cy * rho 16600 + cx * rho 16604) + cy * rho 16605 + cx * rho 16609) + cy * rho 16610 := by
  calc
    _ = (cx * seg15AccX45 rho + cy * seg15AccY45 rho) +
        cx * rho 16609 + cy * rho 16610 := by
      rw [seg15AccX46, seg15AccY46]
      ring
    _ = _ := by rw [seg15AccWeighted45]

theorem seg15AccWeighted47 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX47 rho + cy * seg15AccY47 rho =
      ((((((((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 + cx * rho 16594) + cy * rho 16595 + cx * rho 16599) + cy * rho 16600 + cx * rho 16604) + cy * rho 16605 + cx * rho 16609) + cy * rho 16610 + cx * rho 16614) + cy * rho 16615 := by
  calc
    _ = (cx * seg15AccX46 rho + cy * seg15AccY46 rho) +
        cx * rho 16614 + cy * rho 16615 := by
      rw [seg15AccX47, seg15AccY47]
      ring
    _ = _ := by rw [seg15AccWeighted46]

theorem seg15AccWeighted48 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX48 rho + cy * seg15AccY48 rho =
      (((((((((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 + cx * rho 16594) + cy * rho 16595 + cx * rho 16599) + cy * rho 16600 + cx * rho 16604) + cy * rho 16605 + cx * rho 16609) + cy * rho 16610 + cx * rho 16614) + cy * rho 16615 + cx * rho 16619) + cy * rho 16620 := by
  calc
    _ = (cx * seg15AccX47 rho + cy * seg15AccY47 rho) +
        cx * rho 16619 + cy * rho 16620 := by
      rw [seg15AccX48, seg15AccY48]
      ring
    _ = _ := by rw [seg15AccWeighted47]

theorem seg15AccWeighted49 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX49 rho + cy * seg15AccY49 rho =
      ((((((((((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 + cx * rho 16594) + cy * rho 16595 + cx * rho 16599) + cy * rho 16600 + cx * rho 16604) + cy * rho 16605 + cx * rho 16609) + cy * rho 16610 + cx * rho 16614) + cy * rho 16615 + cx * rho 16619) + cy * rho 16620 + cx * rho 16624) + cy * rho 16625 := by
  calc
    _ = (cx * seg15AccX48 rho + cy * seg15AccY48 rho) +
        cx * rho 16624 + cy * rho 16625 := by
      rw [seg15AccX49, seg15AccY49]
      ring
    _ = _ := by rw [seg15AccWeighted48]

theorem seg15AccWeighted50 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX50 rho + cy * seg15AccY50 rho =
      (((((((((((((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 + cx * rho 16584) + cy * rho 16585 + cx * rho 16589) + cy * rho 16590 + cx * rho 16594) + cy * rho 16595 + cx * rho 16599) + cy * rho 16600 + cx * rho 16604) + cy * rho 16605 + cx * rho 16609) + cy * rho 16610 + cx * rho 16614) + cy * rho 16615 + cx * rho 16619) + cy * rho 16620 + cx * rho 16624) + cy * rho 16625 + cx * rho 16629) + cy * rho 16630 := by
  calc
    _ = (cx * seg15AccX49 rho + cy * seg15AccY49 rho) +
        cx * rho 16629 + cy * rho 16630 := by
      rw [seg15AccX50, seg15AccY50]
      ring
    _ = _ := by rw [seg15AccWeighted49]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
