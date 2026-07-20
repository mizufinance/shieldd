import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccWeighted1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15AccWeighted21 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX21 rho + cy * seg15AccY21 rho =
      ((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 := by
  calc
    _ = (cx * seg15AccX20 rho + cy * seg15AccY20 rho) +
        cx * rho 16484 + cy * rho 16485 := by
      rw [seg15AccX21, seg15AccY21]
      ring
    _ = _ := by rw [seg15AccWeighted20]

theorem seg15AccWeighted22 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX22 rho + cy * seg15AccY22 rho =
      (((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 := by
  calc
    _ = (cx * seg15AccX21 rho + cy * seg15AccY21 rho) +
        cx * rho 16489 + cy * rho 16490 := by
      rw [seg15AccX22, seg15AccY22]
      ring
    _ = _ := by rw [seg15AccWeighted21]

theorem seg15AccWeighted23 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX23 rho + cy * seg15AccY23 rho =
      ((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 := by
  calc
    _ = (cx * seg15AccX22 rho + cy * seg15AccY22 rho) +
        cx * rho 16494 + cy * rho 16495 := by
      rw [seg15AccX23, seg15AccY23]
      ring
    _ = _ := by rw [seg15AccWeighted22]

theorem seg15AccWeighted24 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX24 rho + cy * seg15AccY24 rho =
      (((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 := by
  calc
    _ = (cx * seg15AccX23 rho + cy * seg15AccY23 rho) +
        cx * rho 16499 + cy * rho 16500 := by
      rw [seg15AccX24, seg15AccY24]
      ring
    _ = _ := by rw [seg15AccWeighted23]

theorem seg15AccWeighted25 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX25 rho + cy * seg15AccY25 rho =
      ((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 := by
  calc
    _ = (cx * seg15AccX24 rho + cy * seg15AccY24 rho) +
        cx * rho 16504 + cy * rho 16505 := by
      rw [seg15AccX25, seg15AccY25]
      ring
    _ = _ := by rw [seg15AccWeighted24]

theorem seg15AccWeighted26 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX26 rho + cy * seg15AccY26 rho =
      (((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 := by
  calc
    _ = (cx * seg15AccX25 rho + cy * seg15AccY25 rho) +
        cx * rho 16509 + cy * rho 16510 := by
      rw [seg15AccX26, seg15AccY26]
      ring
    _ = _ := by rw [seg15AccWeighted25]

theorem seg15AccWeighted27 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX27 rho + cy * seg15AccY27 rho =
      ((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 := by
  calc
    _ = (cx * seg15AccX26 rho + cy * seg15AccY26 rho) +
        cx * rho 16514 + cy * rho 16515 := by
      rw [seg15AccX27, seg15AccY27]
      ring
    _ = _ := by rw [seg15AccWeighted26]

theorem seg15AccWeighted28 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX28 rho + cy * seg15AccY28 rho =
      (((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 := by
  calc
    _ = (cx * seg15AccX27 rho + cy * seg15AccY27 rho) +
        cx * rho 16519 + cy * rho 16520 := by
      rw [seg15AccX28, seg15AccY28]
      ring
    _ = _ := by rw [seg15AccWeighted27]

theorem seg15AccWeighted29 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX29 rho + cy * seg15AccY29 rho =
      ((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 := by
  calc
    _ = (cx * seg15AccX28 rho + cy * seg15AccY28 rho) +
        cx * rho 16524 + cy * rho 16525 := by
      rw [seg15AccX29, seg15AccY29]
      ring
    _ = _ := by rw [seg15AccWeighted28]

theorem seg15AccWeighted30 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX30 rho + cy * seg15AccY30 rho =
      (((((((((((((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 + cx * rho 16484) + cy * rho 16485 + cx * rho 16489) + cy * rho 16490 + cx * rho 16494) + cy * rho 16495 + cx * rho 16499) + cy * rho 16500 + cx * rho 16504) + cy * rho 16505 + cx * rho 16509) + cy * rho 16510 + cx * rho 16514) + cy * rho 16515 + cx * rho 16519) + cy * rho 16520 + cx * rho 16524) + cy * rho 16525 + cx * rho 16529) + cy * rho 16530 := by
  calc
    _ = (cx * seg15AccX29 rho + cy * seg15AccY29 rho) +
        cx * rho 16529 + cy * rho 16530 := by
      rw [seg15AccX30, seg15AccY30]
      ring
    _ = _ := by rw [seg15AccWeighted29]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
