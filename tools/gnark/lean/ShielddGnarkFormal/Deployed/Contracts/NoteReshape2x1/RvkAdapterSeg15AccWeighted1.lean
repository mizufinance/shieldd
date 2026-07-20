import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccWeighted0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15AccWeighted11 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX11 rho + cy * seg15AccY11 rho =
      ((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 := by
  calc
    _ = (cx * seg15AccX10 rho + cy * seg15AccY10 rho) +
        cx * rho 16434 + cy * rho 16435 := by
      rw [seg15AccX11, seg15AccY11]
      ring
    _ = _ := by rw [seg15AccWeighted10]

theorem seg15AccWeighted12 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX12 rho + cy * seg15AccY12 rho =
      (((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 := by
  calc
    _ = (cx * seg15AccX11 rho + cy * seg15AccY11 rho) +
        cx * rho 16439 + cy * rho 16440 := by
      rw [seg15AccX12, seg15AccY12]
      ring
    _ = _ := by rw [seg15AccWeighted11]

theorem seg15AccWeighted13 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX13 rho + cy * seg15AccY13 rho =
      ((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 := by
  calc
    _ = (cx * seg15AccX12 rho + cy * seg15AccY12 rho) +
        cx * rho 16444 + cy * rho 16445 := by
      rw [seg15AccX13, seg15AccY13]
      ring
    _ = _ := by rw [seg15AccWeighted12]

theorem seg15AccWeighted14 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX14 rho + cy * seg15AccY14 rho =
      (((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 := by
  calc
    _ = (cx * seg15AccX13 rho + cy * seg15AccY13 rho) +
        cx * rho 16449 + cy * rho 16450 := by
      rw [seg15AccX14, seg15AccY14]
      ring
    _ = _ := by rw [seg15AccWeighted13]

theorem seg15AccWeighted15 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX15 rho + cy * seg15AccY15 rho =
      ((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 := by
  calc
    _ = (cx * seg15AccX14 rho + cy * seg15AccY14 rho) +
        cx * rho 16454 + cy * rho 16455 := by
      rw [seg15AccX15, seg15AccY15]
      ring
    _ = _ := by rw [seg15AccWeighted14]

theorem seg15AccWeighted16 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX16 rho + cy * seg15AccY16 rho =
      (((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 := by
  calc
    _ = (cx * seg15AccX15 rho + cy * seg15AccY15 rho) +
        cx * rho 16459 + cy * rho 16460 := by
      rw [seg15AccX16, seg15AccY16]
      ring
    _ = _ := by rw [seg15AccWeighted15]

theorem seg15AccWeighted17 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX17 rho + cy * seg15AccY17 rho =
      ((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 := by
  calc
    _ = (cx * seg15AccX16 rho + cy * seg15AccY16 rho) +
        cx * rho 16464 + cy * rho 16465 := by
      rw [seg15AccX17, seg15AccY17]
      ring
    _ = _ := by rw [seg15AccWeighted16]

theorem seg15AccWeighted18 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX18 rho + cy * seg15AccY18 rho =
      (((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 := by
  calc
    _ = (cx * seg15AccX17 rho + cy * seg15AccY17 rho) +
        cx * rho 16469 + cy * rho 16470 := by
      rw [seg15AccX18, seg15AccY18]
      ring
    _ = _ := by rw [seg15AccWeighted17]

theorem seg15AccWeighted19 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX19 rho + cy * seg15AccY19 rho =
      ((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 := by
  calc
    _ = (cx * seg15AccX18 rho + cy * seg15AccY18 rho) +
        cx * rho 16474 + cy * rho 16475 := by
      rw [seg15AccX19, seg15AccY19]
      ring
    _ = _ := by rw [seg15AccWeighted18]

theorem seg15AccWeighted20 (rho : Nat -> Seg15.F) (cx cy : Seg15.F) :
    cx * seg15AccX20 rho + cy * seg15AccY20 rho =
      (((((((((((((((((((cx * rho 16384 + cy * rho 16385 + cx * rho 16389) + cy * rho 16390 + cx * rho 16394) + cy * rho 16395 + cx * rho 16399) + cy * rho 16400 + cx * rho 16404) + cy * rho 16405 + cx * rho 16409) + cy * rho 16410 + cx * rho 16414) + cy * rho 16415 + cx * rho 16419) + cy * rho 16420 + cx * rho 16424) + cy * rho 16425 + cx * rho 16429) + cy * rho 16430 + cx * rho 16434) + cy * rho 16435 + cx * rho 16439) + cy * rho 16440 + cx * rho 16444) + cy * rho 16445 + cx * rho 16449) + cy * rho 16450 + cx * rho 16454) + cy * rho 16455 + cx * rho 16459) + cy * rho 16460 + cx * rho 16464) + cy * rho 16465 + cx * rho 16469) + cy * rho 16470 + cx * rho 16474) + cy * rho 16475 + cx * rho 16479) + cy * rho 16480 := by
  calc
    _ = (cx * seg15AccX19 rho + cy * seg15AccY19 rho) +
        cx * rho 16479 + cy * rho 16480 := by
      rw [seg15AccX20, seg15AccY20]
      ring
    _ = _ := by rw [seg15AccWeighted19]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
