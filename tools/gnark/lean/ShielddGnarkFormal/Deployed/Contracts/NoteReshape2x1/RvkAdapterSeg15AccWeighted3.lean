import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccWeighted2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15AccWeighted31 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX31 rho + cy * seg15AccY31 rho =
      ((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 := by
  calc
    _ = (cx * seg15AccX30 rho + cy * seg15AccY30 rho) +
        cx * rho 16534 + cy * rho 16535 := by
      rw [seg15AccX31, seg15AccY31]
      ring
    _ = _ := by rw [seg15AccWeighted30]

theorem seg15AccWeighted32 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX32 rho + cy * seg15AccY32 rho =
      (((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 := by
  calc
    _ = (cx * seg15AccX31 rho + cy * seg15AccY31 rho) +
        cx * rho 16539 + cy * rho 16540 := by
      rw [seg15AccX32, seg15AccY32]
      ring
    _ = _ := by rw [seg15AccWeighted31]

theorem seg15AccWeighted33 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX33 rho + cy * seg15AccY33 rho =
      ((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 := by
  calc
    _ = (cx * seg15AccX32 rho + cy * seg15AccY32 rho) +
        cx * rho 16544 + cy * rho 16545 := by
      rw [seg15AccX33, seg15AccY33]
      ring
    _ = _ := by rw [seg15AccWeighted32]

theorem seg15AccWeighted34 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX34 rho + cy * seg15AccY34 rho =
      (((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 := by
  calc
    _ = (cx * seg15AccX33 rho + cy * seg15AccY33 rho) +
        cx * rho 16549 + cy * rho 16550 := by
      rw [seg15AccX34, seg15AccY34]
      ring
    _ = _ := by rw [seg15AccWeighted33]

theorem seg15AccWeighted35 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX35 rho + cy * seg15AccY35 rho =
      ((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 := by
  calc
    _ = (cx * seg15AccX34 rho + cy * seg15AccY34 rho) +
        cx * rho 16554 + cy * rho 16555 := by
      rw [seg15AccX35, seg15AccY35]
      ring
    _ = _ := by rw [seg15AccWeighted34]

theorem seg15AccWeighted36 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX36 rho + cy * seg15AccY36 rho =
      (((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 := by
  calc
    _ = (cx * seg15AccX35 rho + cy * seg15AccY35 rho) +
        cx * rho 16559 + cy * rho 16560 := by
      rw [seg15AccX36, seg15AccY36]
      ring
    _ = _ := by rw [seg15AccWeighted35]

theorem seg15AccWeighted37 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX37 rho + cy * seg15AccY37 rho =
      ((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 := by
  calc
    _ = (cx * seg15AccX36 rho + cy * seg15AccY36 rho) +
        cx * rho 16564 + cy * rho 16565 := by
      rw [seg15AccX37, seg15AccY37]
      ring
    _ = _ := by rw [seg15AccWeighted36]

theorem seg15AccWeighted38 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX38 rho + cy * seg15AccY38 rho =
      (((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 := by
  calc
    _ = (cx * seg15AccX37 rho + cy * seg15AccY37 rho) +
        cx * rho 16569 + cy * rho 16570 := by
      rw [seg15AccX38, seg15AccY38]
      ring
    _ = _ := by rw [seg15AccWeighted37]

theorem seg15AccWeighted39 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX39 rho + cy * seg15AccY39 rho =
      ((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 := by
  calc
    _ = (cx * seg15AccX38 rho + cy * seg15AccY38 rho) +
        cx * rho 16574 + cy * rho 16575 := by
      rw [seg15AccX39, seg15AccY39]
      ring
    _ = _ := by rw [seg15AccWeighted38]

theorem seg15AccWeighted40 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX40 rho + cy * seg15AccY40 rho =
      (((((((((((((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 + cx * rho 16534) + cy * rho 16535 + cx * rho 16539) + cy * rho 16540 + cx * rho 16544) + cy * rho 16545 + cx * rho 16549) + cy * rho 16550 + cx * rho 16554) + cy * rho 16555 + cx * rho 16559) + cy * rho 16560 + cx * rho 16564) + cy * rho 16565 + cx * rho 16569) + cy * rho 16570 + cx * rho 16574) + cy * rho 16575 + cx * rho 16579) + cy * rho 16580 := by
  calc
    _ = (cx * seg15AccX39 rho + cy * seg15AccY39 rho) +
        cx * rho 16579 + cy * rho 16580 := by
      rw [seg15AccX40, seg15AccY40]
      ring
    _ = _ := by rw [seg15AccWeighted39]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
