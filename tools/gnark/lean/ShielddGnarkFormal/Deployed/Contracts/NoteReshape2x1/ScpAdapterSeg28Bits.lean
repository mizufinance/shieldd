import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_bits_bool (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    ∀ i : Nat, i < 48 →
      rho (19623 + i) = 0 ∨ rho (19623 + i) = 1 := by
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart2 at p2
  rcases p2 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩
  unfold Seg28.relationPart3 at p3
  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, r252, r253, r254, r255, r256, r257, r258, r259, r260, r261, r262, r263, r264, r265, r266, r267, r268, r269, r270, r271, r272, r273, r274, r275, r276, r277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hb0 : rho 19623 = 0 ∨ rho 19623 = 1 :=
    (mul_eq_zero.mp (show rho 19623 * (1 - rho 19623) = 0 by
      unfold Seg28.relationRow230 at r230;
      linear_combination r230)).imp
      id (fun hx => by linear_combination -hx)
  have hb1 : rho 19624 = 0 ∨ rho 19624 = 1 :=
    (mul_eq_zero.mp (show rho 19624 * (1 - rho 19624) = 0 by
      unfold Seg28.relationRow231 at r231;
      linear_combination r231)).imp
      id (fun hx => by linear_combination -hx)
  have hb2 : rho 19625 = 0 ∨ rho 19625 = 1 :=
    (mul_eq_zero.mp (show rho 19625 * (1 - rho 19625) = 0 by
      unfold Seg28.relationRow232 at r232;
      linear_combination r232)).imp
      id (fun hx => by linear_combination -hx)
  have hb3 : rho 19626 = 0 ∨ rho 19626 = 1 :=
    (mul_eq_zero.mp (show rho 19626 * (1 - rho 19626) = 0 by
      unfold Seg28.relationRow233 at r233;
      linear_combination r233)).imp
      id (fun hx => by linear_combination -hx)
  have hb4 : rho 19627 = 0 ∨ rho 19627 = 1 :=
    (mul_eq_zero.mp (show rho 19627 * (1 - rho 19627) = 0 by
      unfold Seg28.relationRow234 at r234;
      linear_combination r234)).imp
      id (fun hx => by linear_combination -hx)
  have hb5 : rho 19628 = 0 ∨ rho 19628 = 1 :=
    (mul_eq_zero.mp (show rho 19628 * (1 - rho 19628) = 0 by
      unfold Seg28.relationRow235 at r235;
      linear_combination r235)).imp
      id (fun hx => by linear_combination -hx)
  have hb6 : rho 19629 = 0 ∨ rho 19629 = 1 :=
    (mul_eq_zero.mp (show rho 19629 * (1 - rho 19629) = 0 by
      unfold Seg28.relationRow236 at r236;
      linear_combination r236)).imp
      id (fun hx => by linear_combination -hx)
  have hb7 : rho 19630 = 0 ∨ rho 19630 = 1 :=
    (mul_eq_zero.mp (show rho 19630 * (1 - rho 19630) = 0 by
      unfold Seg28.relationRow237 at r237;
      linear_combination r237)).imp
      id (fun hx => by linear_combination -hx)
  have hb8 : rho 19631 = 0 ∨ rho 19631 = 1 :=
    (mul_eq_zero.mp (show rho 19631 * (1 - rho 19631) = 0 by
      unfold Seg28.relationRow238 at r238;
      linear_combination r238)).imp
      id (fun hx => by linear_combination -hx)
  have hb9 : rho 19632 = 0 ∨ rho 19632 = 1 :=
    (mul_eq_zero.mp (show rho 19632 * (1 - rho 19632) = 0 by
      unfold Seg28.relationRow239 at r239;
      linear_combination r239)).imp
      id (fun hx => by linear_combination -hx)
  have hb10 : rho 19633 = 0 ∨ rho 19633 = 1 :=
    (mul_eq_zero.mp (show rho 19633 * (1 - rho 19633) = 0 by
      unfold Seg28.relationRow240 at r240;
      linear_combination r240)).imp
      id (fun hx => by linear_combination -hx)
  have hb11 : rho 19634 = 0 ∨ rho 19634 = 1 :=
    (mul_eq_zero.mp (show rho 19634 * (1 - rho 19634) = 0 by
      unfold Seg28.relationRow241 at r241;
      linear_combination r241)).imp
      id (fun hx => by linear_combination -hx)
  have hb12 : rho 19635 = 0 ∨ rho 19635 = 1 :=
    (mul_eq_zero.mp (show rho 19635 * (1 - rho 19635) = 0 by
      unfold Seg28.relationRow242 at r242;
      linear_combination r242)).imp
      id (fun hx => by linear_combination -hx)
  have hb13 : rho 19636 = 0 ∨ rho 19636 = 1 :=
    (mul_eq_zero.mp (show rho 19636 * (1 - rho 19636) = 0 by
      unfold Seg28.relationRow243 at r243;
      linear_combination r243)).imp
      id (fun hx => by linear_combination -hx)
  have hb14 : rho 19637 = 0 ∨ rho 19637 = 1 :=
    (mul_eq_zero.mp (show rho 19637 * (1 - rho 19637) = 0 by
      unfold Seg28.relationRow244 at r244;
      linear_combination r244)).imp
      id (fun hx => by linear_combination -hx)
  have hb15 : rho 19638 = 0 ∨ rho 19638 = 1 :=
    (mul_eq_zero.mp (show rho 19638 * (1 - rho 19638) = 0 by
      unfold Seg28.relationRow245 at r245;
      linear_combination r245)).imp
      id (fun hx => by linear_combination -hx)
  have hb16 : rho 19639 = 0 ∨ rho 19639 = 1 :=
    (mul_eq_zero.mp (show rho 19639 * (1 - rho 19639) = 0 by
      unfold Seg28.relationRow246 at r246;
      linear_combination r246)).imp
      id (fun hx => by linear_combination -hx)
  have hb17 : rho 19640 = 0 ∨ rho 19640 = 1 :=
    (mul_eq_zero.mp (show rho 19640 * (1 - rho 19640) = 0 by
      unfold Seg28.relationRow247 at r247;
      linear_combination r247)).imp
      id (fun hx => by linear_combination -hx)
  have hb18 : rho 19641 = 0 ∨ rho 19641 = 1 :=
    (mul_eq_zero.mp (show rho 19641 * (1 - rho 19641) = 0 by
      unfold Seg28.relationRow248 at r248;
      linear_combination r248)).imp
      id (fun hx => by linear_combination -hx)
  have hb19 : rho 19642 = 0 ∨ rho 19642 = 1 :=
    (mul_eq_zero.mp (show rho 19642 * (1 - rho 19642) = 0 by
      unfold Seg28.relationRow249 at r249;
      linear_combination r249)).imp
      id (fun hx => by linear_combination -hx)
  have hb20 : rho 19643 = 0 ∨ rho 19643 = 1 :=
    (mul_eq_zero.mp (show rho 19643 * (1 - rho 19643) = 0 by
      unfold Seg28.relationRow250 at r250;
      linear_combination r250)).imp
      id (fun hx => by linear_combination -hx)
  have hb21 : rho 19644 = 0 ∨ rho 19644 = 1 :=
    (mul_eq_zero.mp (show rho 19644 * (1 - rho 19644) = 0 by
      unfold Seg28.relationRow251 at r251;
      linear_combination r251)).imp
      id (fun hx => by linear_combination -hx)
  have hb22 : rho 19645 = 0 ∨ rho 19645 = 1 :=
    (mul_eq_zero.mp (show rho 19645 * (1 - rho 19645) = 0 by
      unfold Seg28.relationRow252 at r252;
      linear_combination r252)).imp
      id (fun hx => by linear_combination -hx)
  have hb23 : rho 19646 = 0 ∨ rho 19646 = 1 :=
    (mul_eq_zero.mp (show rho 19646 * (1 - rho 19646) = 0 by
      unfold Seg28.relationRow253 at r253;
      linear_combination r253)).imp
      id (fun hx => by linear_combination -hx)
  have hb24 : rho 19647 = 0 ∨ rho 19647 = 1 :=
    (mul_eq_zero.mp (show rho 19647 * (1 - rho 19647) = 0 by
      unfold Seg28.relationRow254 at r254;
      linear_combination r254)).imp
      id (fun hx => by linear_combination -hx)
  have hb25 : rho 19648 = 0 ∨ rho 19648 = 1 :=
    (mul_eq_zero.mp (show rho 19648 * (1 - rho 19648) = 0 by
      unfold Seg28.relationRow255 at r255;
      linear_combination r255)).imp
      id (fun hx => by linear_combination -hx)
  have hb26 : rho 19649 = 0 ∨ rho 19649 = 1 :=
    (mul_eq_zero.mp (show rho 19649 * (1 - rho 19649) = 0 by
      unfold Seg28.relationRow256 at r256;
      linear_combination r256)).imp
      id (fun hx => by linear_combination -hx)
  have hb27 : rho 19650 = 0 ∨ rho 19650 = 1 :=
    (mul_eq_zero.mp (show rho 19650 * (1 - rho 19650) = 0 by
      unfold Seg28.relationRow257 at r257;
      linear_combination r257)).imp
      id (fun hx => by linear_combination -hx)
  have hb28 : rho 19651 = 0 ∨ rho 19651 = 1 :=
    (mul_eq_zero.mp (show rho 19651 * (1 - rho 19651) = 0 by
      unfold Seg28.relationRow258 at r258;
      linear_combination r258)).imp
      id (fun hx => by linear_combination -hx)
  have hb29 : rho 19652 = 0 ∨ rho 19652 = 1 :=
    (mul_eq_zero.mp (show rho 19652 * (1 - rho 19652) = 0 by
      unfold Seg28.relationRow259 at r259;
      linear_combination r259)).imp
      id (fun hx => by linear_combination -hx)
  have hb30 : rho 19653 = 0 ∨ rho 19653 = 1 :=
    (mul_eq_zero.mp (show rho 19653 * (1 - rho 19653) = 0 by
      unfold Seg28.relationRow260 at r260;
      linear_combination r260)).imp
      id (fun hx => by linear_combination -hx)
  have hb31 : rho 19654 = 0 ∨ rho 19654 = 1 :=
    (mul_eq_zero.mp (show rho 19654 * (1 - rho 19654) = 0 by
      unfold Seg28.relationRow261 at r261;
      linear_combination r261)).imp
      id (fun hx => by linear_combination -hx)
  have hb32 : rho 19655 = 0 ∨ rho 19655 = 1 :=
    (mul_eq_zero.mp (show rho 19655 * (1 - rho 19655) = 0 by
      unfold Seg28.relationRow262 at r262;
      linear_combination r262)).imp
      id (fun hx => by linear_combination -hx)
  have hb33 : rho 19656 = 0 ∨ rho 19656 = 1 :=
    (mul_eq_zero.mp (show rho 19656 * (1 - rho 19656) = 0 by
      unfold Seg28.relationRow263 at r263;
      linear_combination r263)).imp
      id (fun hx => by linear_combination -hx)
  have hb34 : rho 19657 = 0 ∨ rho 19657 = 1 :=
    (mul_eq_zero.mp (show rho 19657 * (1 - rho 19657) = 0 by
      unfold Seg28.relationRow264 at r264;
      linear_combination r264)).imp
      id (fun hx => by linear_combination -hx)
  have hb35 : rho 19658 = 0 ∨ rho 19658 = 1 :=
    (mul_eq_zero.mp (show rho 19658 * (1 - rho 19658) = 0 by
      unfold Seg28.relationRow265 at r265;
      linear_combination r265)).imp
      id (fun hx => by linear_combination -hx)
  have hb36 : rho 19659 = 0 ∨ rho 19659 = 1 :=
    (mul_eq_zero.mp (show rho 19659 * (1 - rho 19659) = 0 by
      unfold Seg28.relationRow266 at r266;
      linear_combination r266)).imp
      id (fun hx => by linear_combination -hx)
  have hb37 : rho 19660 = 0 ∨ rho 19660 = 1 :=
    (mul_eq_zero.mp (show rho 19660 * (1 - rho 19660) = 0 by
      unfold Seg28.relationRow267 at r267;
      linear_combination r267)).imp
      id (fun hx => by linear_combination -hx)
  have hb38 : rho 19661 = 0 ∨ rho 19661 = 1 :=
    (mul_eq_zero.mp (show rho 19661 * (1 - rho 19661) = 0 by
      unfold Seg28.relationRow268 at r268;
      linear_combination r268)).imp
      id (fun hx => by linear_combination -hx)
  have hb39 : rho 19662 = 0 ∨ rho 19662 = 1 :=
    (mul_eq_zero.mp (show rho 19662 * (1 - rho 19662) = 0 by
      unfold Seg28.relationRow269 at r269;
      linear_combination r269)).imp
      id (fun hx => by linear_combination -hx)
  have hb40 : rho 19663 = 0 ∨ rho 19663 = 1 :=
    (mul_eq_zero.mp (show rho 19663 * (1 - rho 19663) = 0 by
      unfold Seg28.relationRow270 at r270;
      linear_combination r270)).imp
      id (fun hx => by linear_combination -hx)
  have hb41 : rho 19664 = 0 ∨ rho 19664 = 1 :=
    (mul_eq_zero.mp (show rho 19664 * (1 - rho 19664) = 0 by
      unfold Seg28.relationRow271 at r271;
      linear_combination r271)).imp
      id (fun hx => by linear_combination -hx)
  have hb42 : rho 19665 = 0 ∨ rho 19665 = 1 :=
    (mul_eq_zero.mp (show rho 19665 * (1 - rho 19665) = 0 by
      unfold Seg28.relationRow272 at r272;
      linear_combination r272)).imp
      id (fun hx => by linear_combination -hx)
  have hb43 : rho 19666 = 0 ∨ rho 19666 = 1 :=
    (mul_eq_zero.mp (show rho 19666 * (1 - rho 19666) = 0 by
      unfold Seg28.relationRow273 at r273;
      linear_combination r273)).imp
      id (fun hx => by linear_combination -hx)
  have hb44 : rho 19667 = 0 ∨ rho 19667 = 1 :=
    (mul_eq_zero.mp (show rho 19667 * (1 - rho 19667) = 0 by
      unfold Seg28.relationRow274 at r274;
      linear_combination r274)).imp
      id (fun hx => by linear_combination -hx)
  have hb45 : rho 19668 = 0 ∨ rho 19668 = 1 :=
    (mul_eq_zero.mp (show rho 19668 * (1 - rho 19668) = 0 by
      unfold Seg28.relationRow275 at r275;
      linear_combination r275)).imp
      id (fun hx => by linear_combination -hx)
  have hb46 : rho 19669 = 0 ∨ rho 19669 = 1 :=
    (mul_eq_zero.mp (show rho 19669 * (1 - rho 19669) = 0 by
      unfold Seg28.relationRow276 at r276;
      linear_combination r276)).imp
      id (fun hx => by linear_combination -hx)
  have hb47 : rho 19670 = 0 ∨ rho 19670 = 1 :=
    (mul_eq_zero.mp (show rho 19670 * (1 - rho 19670) = 0 by
      unfold Seg28.relationRow277 at r277;
      linear_combination r277)).imp
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

theorem seg28_scp_recompose (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    rho 111 = (1 : Seg28.F) * rho (19623 + 0)
      + (2 : Seg28.F) * rho (19623 + 1)
      + (4 : Seg28.F) * rho (19623 + 2)
      + (8 : Seg28.F) * rho (19623 + 3)
      + (16 : Seg28.F) * rho (19623 + 4)
      + (32 : Seg28.F) * rho (19623 + 5)
      + (64 : Seg28.F) * rho (19623 + 6)
      + (128 : Seg28.F) * rho (19623 + 7)
      + (256 : Seg28.F) * rho (19623 + 8)
      + (512 : Seg28.F) * rho (19623 + 9)
      + (1024 : Seg28.F) * rho (19623 + 10)
      + (2048 : Seg28.F) * rho (19623 + 11)
      + (4096 : Seg28.F) * rho (19623 + 12)
      + (8192 : Seg28.F) * rho (19623 + 13)
      + (16384 : Seg28.F) * rho (19623 + 14)
      + (32768 : Seg28.F) * rho (19623 + 15)
      + (65536 : Seg28.F) * rho (19623 + 16)
      + (131072 : Seg28.F) * rho (19623 + 17)
      + (262144 : Seg28.F) * rho (19623 + 18)
      + (524288 : Seg28.F) * rho (19623 + 19)
      + (1048576 : Seg28.F) * rho (19623 + 20)
      + (2097152 : Seg28.F) * rho (19623 + 21)
      + (4194304 : Seg28.F) * rho (19623 + 22)
      + (8388608 : Seg28.F) * rho (19623 + 23)
      + (16777216 : Seg28.F) * rho (19623 + 24)
      + (33554432 : Seg28.F) * rho (19623 + 25)
      + (67108864 : Seg28.F) * rho (19623 + 26)
      + (134217728 : Seg28.F) * rho (19623 + 27)
      + (268435456 : Seg28.F) * rho (19623 + 28)
      + (536870912 : Seg28.F) * rho (19623 + 29)
      + (1073741824 : Seg28.F) * rho (19623 + 30)
      + (2147483648 : Seg28.F) * rho (19623 + 31)
      + (4294967296 : Seg28.F) * rho (19623 + 32)
      + (8589934592 : Seg28.F) * rho (19623 + 33)
      + (17179869184 : Seg28.F) * rho (19623 + 34)
      + (34359738368 : Seg28.F) * rho (19623 + 35)
      + (68719476736 : Seg28.F) * rho (19623 + 36)
      + (137438953472 : Seg28.F) * rho (19623 + 37)
      + (274877906944 : Seg28.F) * rho (19623 + 38)
      + (549755813888 : Seg28.F) * rho (19623 + 39)
      + (1099511627776 : Seg28.F) * rho (19623 + 40)
      + (2199023255552 : Seg28.F) * rho (19623 + 41)
      + (4398046511104 : Seg28.F) * rho (19623 + 42)
      + (8796093022208 : Seg28.F) * rho (19623 + 43)
      + (17592186044416 : Seg28.F) * rho (19623 + 44)
      + (35184372088832 : Seg28.F) * rho (19623 + 45)
      + (70368744177664 : Seg28.F) * rho (19623 + 46)
      + (140737488355328 : Seg28.F) * rho (19623 + 47) := by
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r278, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg28.relationRow278 at r278
  linear_combination -r278

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

