import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_bits_bool (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    ∀ i : Nat, i < 48 →
      rho (7448 + i) = 0 ∨ rho (7448 + i) = 1 := by
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, p2, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart2 at p2
  rcases p2 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩
  unfold Seg13.relationPart3 at p3
  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, r252, r253, r254, r255, r256, r257, r258, r259, r260, r261, r262, r263, r264, r265, r266, r267, r268, r269, r270, r271, r272, r273, r274, r275, r276, r277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hb0 : rho 7448 = 0 ∨ rho 7448 = 1 :=
    (mul_eq_zero.mp (show rho 7448 * (1 - rho 7448) = 0 by
      unfold Seg13.relationRow230 at r230; linear_combination r230)).imp
      id (fun hx => by linear_combination -hx)
  have hb1 : rho 7449 = 0 ∨ rho 7449 = 1 :=
    (mul_eq_zero.mp (show rho 7449 * (1 - rho 7449) = 0 by
      unfold Seg13.relationRow231 at r231; linear_combination r231)).imp
      id (fun hx => by linear_combination -hx)
  have hb2 : rho 7450 = 0 ∨ rho 7450 = 1 :=
    (mul_eq_zero.mp (show rho 7450 * (1 - rho 7450) = 0 by
      unfold Seg13.relationRow232 at r232; linear_combination r232)).imp
      id (fun hx => by linear_combination -hx)
  have hb3 : rho 7451 = 0 ∨ rho 7451 = 1 :=
    (mul_eq_zero.mp (show rho 7451 * (1 - rho 7451) = 0 by
      unfold Seg13.relationRow233 at r233; linear_combination r233)).imp
      id (fun hx => by linear_combination -hx)
  have hb4 : rho 7452 = 0 ∨ rho 7452 = 1 :=
    (mul_eq_zero.mp (show rho 7452 * (1 - rho 7452) = 0 by
      unfold Seg13.relationRow234 at r234; linear_combination r234)).imp
      id (fun hx => by linear_combination -hx)
  have hb5 : rho 7453 = 0 ∨ rho 7453 = 1 :=
    (mul_eq_zero.mp (show rho 7453 * (1 - rho 7453) = 0 by
      unfold Seg13.relationRow235 at r235; linear_combination r235)).imp
      id (fun hx => by linear_combination -hx)
  have hb6 : rho 7454 = 0 ∨ rho 7454 = 1 :=
    (mul_eq_zero.mp (show rho 7454 * (1 - rho 7454) = 0 by
      unfold Seg13.relationRow236 at r236; linear_combination r236)).imp
      id (fun hx => by linear_combination -hx)
  have hb7 : rho 7455 = 0 ∨ rho 7455 = 1 :=
    (mul_eq_zero.mp (show rho 7455 * (1 - rho 7455) = 0 by
      unfold Seg13.relationRow237 at r237; linear_combination r237)).imp
      id (fun hx => by linear_combination -hx)
  have hb8 : rho 7456 = 0 ∨ rho 7456 = 1 :=
    (mul_eq_zero.mp (show rho 7456 * (1 - rho 7456) = 0 by
      unfold Seg13.relationRow238 at r238; linear_combination r238)).imp
      id (fun hx => by linear_combination -hx)
  have hb9 : rho 7457 = 0 ∨ rho 7457 = 1 :=
    (mul_eq_zero.mp (show rho 7457 * (1 - rho 7457) = 0 by
      unfold Seg13.relationRow239 at r239; linear_combination r239)).imp
      id (fun hx => by linear_combination -hx)
  have hb10 : rho 7458 = 0 ∨ rho 7458 = 1 :=
    (mul_eq_zero.mp (show rho 7458 * (1 - rho 7458) = 0 by
      unfold Seg13.relationRow240 at r240; linear_combination r240)).imp
      id (fun hx => by linear_combination -hx)
  have hb11 : rho 7459 = 0 ∨ rho 7459 = 1 :=
    (mul_eq_zero.mp (show rho 7459 * (1 - rho 7459) = 0 by
      unfold Seg13.relationRow241 at r241; linear_combination r241)).imp
      id (fun hx => by linear_combination -hx)
  have hb12 : rho 7460 = 0 ∨ rho 7460 = 1 :=
    (mul_eq_zero.mp (show rho 7460 * (1 - rho 7460) = 0 by
      unfold Seg13.relationRow242 at r242; linear_combination r242)).imp
      id (fun hx => by linear_combination -hx)
  have hb13 : rho 7461 = 0 ∨ rho 7461 = 1 :=
    (mul_eq_zero.mp (show rho 7461 * (1 - rho 7461) = 0 by
      unfold Seg13.relationRow243 at r243; linear_combination r243)).imp
      id (fun hx => by linear_combination -hx)
  have hb14 : rho 7462 = 0 ∨ rho 7462 = 1 :=
    (mul_eq_zero.mp (show rho 7462 * (1 - rho 7462) = 0 by
      unfold Seg13.relationRow244 at r244; linear_combination r244)).imp
      id (fun hx => by linear_combination -hx)
  have hb15 : rho 7463 = 0 ∨ rho 7463 = 1 :=
    (mul_eq_zero.mp (show rho 7463 * (1 - rho 7463) = 0 by
      unfold Seg13.relationRow245 at r245; linear_combination r245)).imp
      id (fun hx => by linear_combination -hx)
  have hb16 : rho 7464 = 0 ∨ rho 7464 = 1 :=
    (mul_eq_zero.mp (show rho 7464 * (1 - rho 7464) = 0 by
      unfold Seg13.relationRow246 at r246; linear_combination r246)).imp
      id (fun hx => by linear_combination -hx)
  have hb17 : rho 7465 = 0 ∨ rho 7465 = 1 :=
    (mul_eq_zero.mp (show rho 7465 * (1 - rho 7465) = 0 by
      unfold Seg13.relationRow247 at r247; linear_combination r247)).imp
      id (fun hx => by linear_combination -hx)
  have hb18 : rho 7466 = 0 ∨ rho 7466 = 1 :=
    (mul_eq_zero.mp (show rho 7466 * (1 - rho 7466) = 0 by
      unfold Seg13.relationRow248 at r248; linear_combination r248)).imp
      id (fun hx => by linear_combination -hx)
  have hb19 : rho 7467 = 0 ∨ rho 7467 = 1 :=
    (mul_eq_zero.mp (show rho 7467 * (1 - rho 7467) = 0 by
      unfold Seg13.relationRow249 at r249; linear_combination r249)).imp
      id (fun hx => by linear_combination -hx)
  have hb20 : rho 7468 = 0 ∨ rho 7468 = 1 :=
    (mul_eq_zero.mp (show rho 7468 * (1 - rho 7468) = 0 by
      unfold Seg13.relationRow250 at r250; linear_combination r250)).imp
      id (fun hx => by linear_combination -hx)
  have hb21 : rho 7469 = 0 ∨ rho 7469 = 1 :=
    (mul_eq_zero.mp (show rho 7469 * (1 - rho 7469) = 0 by
      unfold Seg13.relationRow251 at r251; linear_combination r251)).imp
      id (fun hx => by linear_combination -hx)
  have hb22 : rho 7470 = 0 ∨ rho 7470 = 1 :=
    (mul_eq_zero.mp (show rho 7470 * (1 - rho 7470) = 0 by
      unfold Seg13.relationRow252 at r252; linear_combination r252)).imp
      id (fun hx => by linear_combination -hx)
  have hb23 : rho 7471 = 0 ∨ rho 7471 = 1 :=
    (mul_eq_zero.mp (show rho 7471 * (1 - rho 7471) = 0 by
      unfold Seg13.relationRow253 at r253; linear_combination r253)).imp
      id (fun hx => by linear_combination -hx)
  have hb24 : rho 7472 = 0 ∨ rho 7472 = 1 :=
    (mul_eq_zero.mp (show rho 7472 * (1 - rho 7472) = 0 by
      unfold Seg13.relationRow254 at r254; linear_combination r254)).imp
      id (fun hx => by linear_combination -hx)
  have hb25 : rho 7473 = 0 ∨ rho 7473 = 1 :=
    (mul_eq_zero.mp (show rho 7473 * (1 - rho 7473) = 0 by
      unfold Seg13.relationRow255 at r255; linear_combination r255)).imp
      id (fun hx => by linear_combination -hx)
  have hb26 : rho 7474 = 0 ∨ rho 7474 = 1 :=
    (mul_eq_zero.mp (show rho 7474 * (1 - rho 7474) = 0 by
      unfold Seg13.relationRow256 at r256; linear_combination r256)).imp
      id (fun hx => by linear_combination -hx)
  have hb27 : rho 7475 = 0 ∨ rho 7475 = 1 :=
    (mul_eq_zero.mp (show rho 7475 * (1 - rho 7475) = 0 by
      unfold Seg13.relationRow257 at r257; linear_combination r257)).imp
      id (fun hx => by linear_combination -hx)
  have hb28 : rho 7476 = 0 ∨ rho 7476 = 1 :=
    (mul_eq_zero.mp (show rho 7476 * (1 - rho 7476) = 0 by
      unfold Seg13.relationRow258 at r258; linear_combination r258)).imp
      id (fun hx => by linear_combination -hx)
  have hb29 : rho 7477 = 0 ∨ rho 7477 = 1 :=
    (mul_eq_zero.mp (show rho 7477 * (1 - rho 7477) = 0 by
      unfold Seg13.relationRow259 at r259; linear_combination r259)).imp
      id (fun hx => by linear_combination -hx)
  have hb30 : rho 7478 = 0 ∨ rho 7478 = 1 :=
    (mul_eq_zero.mp (show rho 7478 * (1 - rho 7478) = 0 by
      unfold Seg13.relationRow260 at r260; linear_combination r260)).imp
      id (fun hx => by linear_combination -hx)
  have hb31 : rho 7479 = 0 ∨ rho 7479 = 1 :=
    (mul_eq_zero.mp (show rho 7479 * (1 - rho 7479) = 0 by
      unfold Seg13.relationRow261 at r261; linear_combination r261)).imp
      id (fun hx => by linear_combination -hx)
  have hb32 : rho 7480 = 0 ∨ rho 7480 = 1 :=
    (mul_eq_zero.mp (show rho 7480 * (1 - rho 7480) = 0 by
      unfold Seg13.relationRow262 at r262; linear_combination r262)).imp
      id (fun hx => by linear_combination -hx)
  have hb33 : rho 7481 = 0 ∨ rho 7481 = 1 :=
    (mul_eq_zero.mp (show rho 7481 * (1 - rho 7481) = 0 by
      unfold Seg13.relationRow263 at r263; linear_combination r263)).imp
      id (fun hx => by linear_combination -hx)
  have hb34 : rho 7482 = 0 ∨ rho 7482 = 1 :=
    (mul_eq_zero.mp (show rho 7482 * (1 - rho 7482) = 0 by
      unfold Seg13.relationRow264 at r264; linear_combination r264)).imp
      id (fun hx => by linear_combination -hx)
  have hb35 : rho 7483 = 0 ∨ rho 7483 = 1 :=
    (mul_eq_zero.mp (show rho 7483 * (1 - rho 7483) = 0 by
      unfold Seg13.relationRow265 at r265; linear_combination r265)).imp
      id (fun hx => by linear_combination -hx)
  have hb36 : rho 7484 = 0 ∨ rho 7484 = 1 :=
    (mul_eq_zero.mp (show rho 7484 * (1 - rho 7484) = 0 by
      unfold Seg13.relationRow266 at r266; linear_combination r266)).imp
      id (fun hx => by linear_combination -hx)
  have hb37 : rho 7485 = 0 ∨ rho 7485 = 1 :=
    (mul_eq_zero.mp (show rho 7485 * (1 - rho 7485) = 0 by
      unfold Seg13.relationRow267 at r267; linear_combination r267)).imp
      id (fun hx => by linear_combination -hx)
  have hb38 : rho 7486 = 0 ∨ rho 7486 = 1 :=
    (mul_eq_zero.mp (show rho 7486 * (1 - rho 7486) = 0 by
      unfold Seg13.relationRow268 at r268; linear_combination r268)).imp
      id (fun hx => by linear_combination -hx)
  have hb39 : rho 7487 = 0 ∨ rho 7487 = 1 :=
    (mul_eq_zero.mp (show rho 7487 * (1 - rho 7487) = 0 by
      unfold Seg13.relationRow269 at r269; linear_combination r269)).imp
      id (fun hx => by linear_combination -hx)
  have hb40 : rho 7488 = 0 ∨ rho 7488 = 1 :=
    (mul_eq_zero.mp (show rho 7488 * (1 - rho 7488) = 0 by
      unfold Seg13.relationRow270 at r270; linear_combination r270)).imp
      id (fun hx => by linear_combination -hx)
  have hb41 : rho 7489 = 0 ∨ rho 7489 = 1 :=
    (mul_eq_zero.mp (show rho 7489 * (1 - rho 7489) = 0 by
      unfold Seg13.relationRow271 at r271; linear_combination r271)).imp
      id (fun hx => by linear_combination -hx)
  have hb42 : rho 7490 = 0 ∨ rho 7490 = 1 :=
    (mul_eq_zero.mp (show rho 7490 * (1 - rho 7490) = 0 by
      unfold Seg13.relationRow272 at r272; linear_combination r272)).imp
      id (fun hx => by linear_combination -hx)
  have hb43 : rho 7491 = 0 ∨ rho 7491 = 1 :=
    (mul_eq_zero.mp (show rho 7491 * (1 - rho 7491) = 0 by
      unfold Seg13.relationRow273 at r273; linear_combination r273)).imp
      id (fun hx => by linear_combination -hx)
  have hb44 : rho 7492 = 0 ∨ rho 7492 = 1 :=
    (mul_eq_zero.mp (show rho 7492 * (1 - rho 7492) = 0 by
      unfold Seg13.relationRow274 at r274; linear_combination r274)).imp
      id (fun hx => by linear_combination -hx)
  have hb45 : rho 7493 = 0 ∨ rho 7493 = 1 :=
    (mul_eq_zero.mp (show rho 7493 * (1 - rho 7493) = 0 by
      unfold Seg13.relationRow275 at r275; linear_combination r275)).imp
      id (fun hx => by linear_combination -hx)
  have hb46 : rho 7494 = 0 ∨ rho 7494 = 1 :=
    (mul_eq_zero.mp (show rho 7494 * (1 - rho 7494) = 0 by
      unfold Seg13.relationRow276 at r276; linear_combination r276)).imp
      id (fun hx => by linear_combination -hx)
  have hb47 : rho 7495 = 0 ∨ rho 7495 = 1 :=
    (mul_eq_zero.mp (show rho 7495 * (1 - rho 7495) = 0 by
      unfold Seg13.relationRow277 at r277; linear_combination r277)).imp
      id (fun hx => by linear_combination -hx)
  intro i hi
  interval_cases i
  · simpa using hb0
  · simpa using hb1
  · simpa using hb2
  · simpa using hb3
  · simpa using hb4
  · simpa using hb5
  · simpa using hb6
  · simpa using hb7
  · simpa using hb8
  · simpa using hb9
  · simpa using hb10
  · simpa using hb11
  · simpa using hb12
  · simpa using hb13
  · simpa using hb14
  · simpa using hb15
  · simpa using hb16
  · simpa using hb17
  · simpa using hb18
  · simpa using hb19
  · simpa using hb20
  · simpa using hb21
  · simpa using hb22
  · simpa using hb23
  · simpa using hb24
  · simpa using hb25
  · simpa using hb26
  · simpa using hb27
  · simpa using hb28
  · simpa using hb29
  · simpa using hb30
  · simpa using hb31
  · simpa using hb32
  · simpa using hb33
  · simpa using hb34
  · simpa using hb35
  · simpa using hb36
  · simpa using hb37
  · simpa using hb38
  · simpa using hb39
  · simpa using hb40
  · simpa using hb41
  · simpa using hb42
  · simpa using hb43
  · simpa using hb44
  · simpa using hb45
  · simpa using hb46
  · simpa using hb47

theorem seg13_scp_recompose (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    rho 24 = (1 : Seg13.F) * rho (7448 + 0)
      + (2 : Seg13.F) * rho (7448 + 1)
      + (4 : Seg13.F) * rho (7448 + 2)
      + (8 : Seg13.F) * rho (7448 + 3)
      + (16 : Seg13.F) * rho (7448 + 4)
      + (32 : Seg13.F) * rho (7448 + 5)
      + (64 : Seg13.F) * rho (7448 + 6)
      + (128 : Seg13.F) * rho (7448 + 7)
      + (256 : Seg13.F) * rho (7448 + 8)
      + (512 : Seg13.F) * rho (7448 + 9)
      + (1024 : Seg13.F) * rho (7448 + 10)
      + (2048 : Seg13.F) * rho (7448 + 11)
      + (4096 : Seg13.F) * rho (7448 + 12)
      + (8192 : Seg13.F) * rho (7448 + 13)
      + (16384 : Seg13.F) * rho (7448 + 14)
      + (32768 : Seg13.F) * rho (7448 + 15)
      + (65536 : Seg13.F) * rho (7448 + 16)
      + (131072 : Seg13.F) * rho (7448 + 17)
      + (262144 : Seg13.F) * rho (7448 + 18)
      + (524288 : Seg13.F) * rho (7448 + 19)
      + (1048576 : Seg13.F) * rho (7448 + 20)
      + (2097152 : Seg13.F) * rho (7448 + 21)
      + (4194304 : Seg13.F) * rho (7448 + 22)
      + (8388608 : Seg13.F) * rho (7448 + 23)
      + (16777216 : Seg13.F) * rho (7448 + 24)
      + (33554432 : Seg13.F) * rho (7448 + 25)
      + (67108864 : Seg13.F) * rho (7448 + 26)
      + (134217728 : Seg13.F) * rho (7448 + 27)
      + (268435456 : Seg13.F) * rho (7448 + 28)
      + (536870912 : Seg13.F) * rho (7448 + 29)
      + (1073741824 : Seg13.F) * rho (7448 + 30)
      + (2147483648 : Seg13.F) * rho (7448 + 31)
      + (4294967296 : Seg13.F) * rho (7448 + 32)
      + (8589934592 : Seg13.F) * rho (7448 + 33)
      + (17179869184 : Seg13.F) * rho (7448 + 34)
      + (34359738368 : Seg13.F) * rho (7448 + 35)
      + (68719476736 : Seg13.F) * rho (7448 + 36)
      + (137438953472 : Seg13.F) * rho (7448 + 37)
      + (274877906944 : Seg13.F) * rho (7448 + 38)
      + (549755813888 : Seg13.F) * rho (7448 + 39)
      + (1099511627776 : Seg13.F) * rho (7448 + 40)
      + (2199023255552 : Seg13.F) * rho (7448 + 41)
      + (4398046511104 : Seg13.F) * rho (7448 + 42)
      + (8796093022208 : Seg13.F) * rho (7448 + 43)
      + (17592186044416 : Seg13.F) * rho (7448 + 44)
      + (35184372088832 : Seg13.F) * rho (7448 + 45)
      + (70368744177664 : Seg13.F) * rho (7448 + 46)
      + (140737488355328 : Seg13.F) * rho (7448 + 47) := by
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r278, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg13.relationRow278 at r278
  linear_combination -r278

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

