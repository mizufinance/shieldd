import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg109Defs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109

def relationRow2713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118288) * ((1 : F) * rho 118289) = ((1 : F) * rho 118298)

def relationRow2714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118288) * ((1 : F) * rho 118288) = ((1 : F) * rho 118299)

def relationRow2715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118289) * ((1 : F) * rho 118289) = ((1 : F) * rho 118300)

def relationRow2716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118301) * ((-1 : F) * rho 118299 + (1 : F) * rho 118300) = ((2 : F) * rho 118298)

def relationRow2717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118302) * ((2 : F) + (1 : F) * rho 118299 + (-1 : F) * rho 118300) = ((1 : F) * rho 118299 + (1 : F) * rho 118300)

def relationLc1688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 51⟩, ⟨(1 : F), 117647, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118301 + (1 : F) * rho 118302) * (relationLc1688 rho) = ((1 : F) * rho 118303)

def relationLc1689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118302) * (relationLc1689 rho) = ((1 : F) * rho 118304)

def relationLc1690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118301) * (relationLc1690 rho) = ((1 : F) * rho 118305)

def relationRow2721 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118304) * ((1 : F) * rho 118305) = ((1 : F) * rho 118306)

def relationRow2722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118307) * ((1 : F) + (1 : F) * rho 118306) = ((1 : F) * rho 118304 + (1 : F) * rho 118305)

def relationRow2723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118308) * ((1 : F) + (-1 : F) * rho 118306) = ((1 : F) * rho 118303 + (-1 : F) * rho 118304 + (-1 : F) * rho 118305)

def relationLc1691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 51⟩], residual := [((1 : F), 118307)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117445) * (relationLc1691 rho) = ((1 : F) * rho 118309)

def relationLc1692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 51⟩], residual := [((1 : F), 118308)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117445) * (relationLc1692 rho) = ((1 : F) * rho 118310)

def relationRow2726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118301) * ((1 : F) * rho 118302) = ((1 : F) * rho 118311)

def relationRow2727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118301) * ((1 : F) * rho 118301) = ((1 : F) * rho 118312)

def relationRow2728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118302) * ((1 : F) * rho 118302) = ((1 : F) * rho 118313)

def relationRow2729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118314) * ((-1 : F) * rho 118312 + (1 : F) * rho 118313) = ((2 : F) * rho 118311)

def relationRow2730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118315) * ((2 : F) + (1 : F) * rho 118312 + (-1 : F) * rho 118313) = ((1 : F) * rho 118312 + (1 : F) * rho 118313)

def relationLc1693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 52⟩, ⟨(1 : F), 117647, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118314 + (1 : F) * rho 118315) * (relationLc1693 rho) = ((1 : F) * rho 118316)

def relationLc1694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118315) * (relationLc1694 rho) = ((1 : F) * rho 118317)

def relationLc1695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118314) * (relationLc1695 rho) = ((1 : F) * rho 118318)

def relationRow2734 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118317) * ((1 : F) * rho 118318) = ((1 : F) * rho 118319)

def relationRow2735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118320) * ((1 : F) + (1 : F) * rho 118319) = ((1 : F) * rho 118317 + (1 : F) * rho 118318)

def relationRow2736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118321) * ((1 : F) + (-1 : F) * rho 118319) = ((1 : F) * rho 118316 + (-1 : F) * rho 118317 + (-1 : F) * rho 118318)

def relationLc1696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 52⟩], residual := [((1 : F), 118320)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117446) * (relationLc1696 rho) = ((1 : F) * rho 118322)

def relationLc1697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 52⟩], residual := [((1 : F), 118321)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117446) * (relationLc1697 rho) = ((1 : F) * rho 118323)

def relationRow2739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118314) * ((1 : F) * rho 118315) = ((1 : F) * rho 118324)

def relationRow2740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118314) * ((1 : F) * rho 118314) = ((1 : F) * rho 118325)

def relationRow2741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118315) * ((1 : F) * rho 118315) = ((1 : F) * rho 118326)

def relationRow2742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118327) * ((-1 : F) * rho 118325 + (1 : F) * rho 118326) = ((2 : F) * rho 118324)

def relationRow2743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118328) * ((2 : F) + (1 : F) * rho 118325 + (-1 : F) * rho 118326) = ((1 : F) * rho 118325 + (1 : F) * rho 118326)

def relationLc1698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 53⟩, ⟨(1 : F), 117647, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118327 + (1 : F) * rho 118328) * (relationLc1698 rho) = ((1 : F) * rho 118329)

def relationLc1699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118328) * (relationLc1699 rho) = ((1 : F) * rho 118330)

def relationLc1700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118327) * (relationLc1700 rho) = ((1 : F) * rho 118331)

def relationRow2747 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118330) * ((1 : F) * rho 118331) = ((1 : F) * rho 118332)

def relationRow2748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118333) * ((1 : F) + (1 : F) * rho 118332) = ((1 : F) * rho 118330 + (1 : F) * rho 118331)

def relationRow2749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118334) * ((1 : F) + (-1 : F) * rho 118332) = ((1 : F) * rho 118329 + (-1 : F) * rho 118330 + (-1 : F) * rho 118331)

def relationLc1701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 53⟩], residual := [((1 : F), 118333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117447) * (relationLc1701 rho) = ((1 : F) * rho 118335)

def relationLc1702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 53⟩], residual := [((1 : F), 118334)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117447) * (relationLc1702 rho) = ((1 : F) * rho 118336)

def relationRow2752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118327) * ((1 : F) * rho 118328) = ((1 : F) * rho 118337)

def relationRow2753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118327) * ((1 : F) * rho 118327) = ((1 : F) * rho 118338)

def relationRow2754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118328) * ((1 : F) * rho 118328) = ((1 : F) * rho 118339)

def relationRow2755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118340) * ((-1 : F) * rho 118338 + (1 : F) * rho 118339) = ((2 : F) * rho 118337)

def relationRow2756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118341) * ((2 : F) + (1 : F) * rho 118338 + (-1 : F) * rho 118339) = ((1 : F) * rho 118338 + (1 : F) * rho 118339)

def relationLc1703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 54⟩, ⟨(1 : F), 117647, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118340 + (1 : F) * rho 118341) * (relationLc1703 rho) = ((1 : F) * rho 118342)

def relationLc1704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118341) * (relationLc1704 rho) = ((1 : F) * rho 118343)

def relationLc1705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118340) * (relationLc1705 rho) = ((1 : F) * rho 118344)

def relationRow2760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118343) * ((1 : F) * rho 118344) = ((1 : F) * rho 118345)

def relationRow2761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118346) * ((1 : F) + (1 : F) * rho 118345) = ((1 : F) * rho 118343 + (1 : F) * rho 118344)

def relationRow2762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118347) * ((1 : F) + (-1 : F) * rho 118345) = ((1 : F) * rho 118342 + (-1 : F) * rho 118343 + (-1 : F) * rho 118344)

def relationLc1706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 54⟩], residual := [((1 : F), 118346)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117448) * (relationLc1706 rho) = ((1 : F) * rho 118348)

def relationLc1707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 54⟩], residual := [((1 : F), 118347)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117448) * (relationLc1707 rho) = ((1 : F) * rho 118349)

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118340) * ((1 : F) * rho 118341) = ((1 : F) * rho 118350)

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118340) * ((1 : F) * rho 118340) = ((1 : F) * rho 118351)

def relationRow2767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118341) * ((1 : F) * rho 118341) = ((1 : F) * rho 118352)

def relationRow2768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118353) * ((-1 : F) * rho 118351 + (1 : F) * rho 118352) = ((2 : F) * rho 118350)

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118354) * ((2 : F) + (1 : F) * rho 118351 + (-1 : F) * rho 118352) = ((1 : F) * rho 118351 + (1 : F) * rho 118352)

def relationLc1708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 55⟩, ⟨(1 : F), 117647, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118353 + (1 : F) * rho 118354) * (relationLc1708 rho) = ((1 : F) * rho 118355)

def relationLc1709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118354) * (relationLc1709 rho) = ((1 : F) * rho 118356)

def relationLc1710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118353) * (relationLc1710 rho) = ((1 : F) * rho 118357)

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118356) * ((1 : F) * rho 118357) = ((1 : F) * rho 118358)

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118359) * ((1 : F) + (1 : F) * rho 118358) = ((1 : F) * rho 118356 + (1 : F) * rho 118357)

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118360) * ((1 : F) + (-1 : F) * rho 118358) = ((1 : F) * rho 118355 + (-1 : F) * rho 118356 + (-1 : F) * rho 118357)

def relationLc1711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 55⟩], residual := [((1 : F), 118359)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117449) * (relationLc1711 rho) = ((1 : F) * rho 118361)

def relationLc1712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 55⟩], residual := [((1 : F), 118360)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117449) * (relationLc1712 rho) = ((1 : F) * rho 118362)

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118353) * ((1 : F) * rho 118354) = ((1 : F) * rho 118363)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118353) * ((1 : F) * rho 118353) = ((1 : F) * rho 118364)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118354) * ((1 : F) * rho 118354) = ((1 : F) * rho 118365)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118366) * ((-1 : F) * rho 118364 + (1 : F) * rho 118365) = ((2 : F) * rho 118363)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118367) * ((2 : F) + (1 : F) * rho 118364 + (-1 : F) * rho 118365) = ((1 : F) * rho 118364 + (1 : F) * rho 118365)

def relationLc1713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 56⟩, ⟨(1 : F), 117647, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118366 + (1 : F) * rho 118367) * (relationLc1713 rho) = ((1 : F) * rho 118368)

def relationLc1714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118367) * (relationLc1714 rho) = ((1 : F) * rho 118369)

def relationLc1715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118366) * (relationLc1715 rho) = ((1 : F) * rho 118370)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118369) * ((1 : F) * rho 118370) = ((1 : F) * rho 118371)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118372) * ((1 : F) + (1 : F) * rho 118371) = ((1 : F) * rho 118369 + (1 : F) * rho 118370)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118373) * ((1 : F) + (-1 : F) * rho 118371) = ((1 : F) * rho 118368 + (-1 : F) * rho 118369 + (-1 : F) * rho 118370)

def relationLc1716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 56⟩], residual := [((1 : F), 118372)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117450) * (relationLc1716 rho) = ((1 : F) * rho 118374)

def relationLc1717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 56⟩], residual := [((1 : F), 118373)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117450) * (relationLc1717 rho) = ((1 : F) * rho 118375)

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118366) * ((1 : F) * rho 118367) = ((1 : F) * rho 118376)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118366) * ((1 : F) * rho 118366) = ((1 : F) * rho 118377)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118367) * ((1 : F) * rho 118367) = ((1 : F) * rho 118378)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118379) * ((-1 : F) * rho 118377 + (1 : F) * rho 118378) = ((2 : F) * rho 118376)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118380) * ((2 : F) + (1 : F) * rho 118377 + (-1 : F) * rho 118378) = ((1 : F) * rho 118377 + (1 : F) * rho 118378)

def relationLc1718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 57⟩, ⟨(1 : F), 117647, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118379 + (1 : F) * rho 118380) * (relationLc1718 rho) = ((1 : F) * rho 118381)

def relationLc1719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118380) * (relationLc1719 rho) = ((1 : F) * rho 118382)

def relationLc1720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118379) * (relationLc1720 rho) = ((1 : F) * rho 118383)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118382) * ((1 : F) * rho 118383) = ((1 : F) * rho 118384)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118385) * ((1 : F) + (1 : F) * rho 118384) = ((1 : F) * rho 118382 + (1 : F) * rho 118383)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118386) * ((1 : F) + (-1 : F) * rho 118384) = ((1 : F) * rho 118381 + (-1 : F) * rho 118382 + (-1 : F) * rho 118383)

def relationLc1721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 57⟩], residual := [((1 : F), 118385)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117451) * (relationLc1721 rho) = ((1 : F) * rho 118387)

def relationLc1722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 57⟩], residual := [((1 : F), 118386)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117451) * (relationLc1722 rho) = ((1 : F) * rho 118388)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118379) * ((1 : F) * rho 118380) = ((1 : F) * rho 118389)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118379) * ((1 : F) * rho 118379) = ((1 : F) * rho 118390)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118380) * ((1 : F) * rho 118380) = ((1 : F) * rho 118391)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118392) * ((-1 : F) * rho 118390 + (1 : F) * rho 118391) = ((2 : F) * rho 118389)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118393) * ((2 : F) + (1 : F) * rho 118390 + (-1 : F) * rho 118391) = ((1 : F) * rho 118390 + (1 : F) * rho 118391)

def relationLc1723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 58⟩, ⟨(1 : F), 117647, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118392 + (1 : F) * rho 118393) * (relationLc1723 rho) = ((1 : F) * rho 118394)

def relationLc1724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118393) * (relationLc1724 rho) = ((1 : F) * rho 118395)

def relationLc1725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118392) * (relationLc1725 rho) = ((1 : F) * rho 118396)

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118395) * ((1 : F) * rho 118396) = ((1 : F) * rho 118397)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118398) * ((1 : F) + (1 : F) * rho 118397) = ((1 : F) * rho 118395 + (1 : F) * rho 118396)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118399) * ((1 : F) + (-1 : F) * rho 118397) = ((1 : F) * rho 118394 + (-1 : F) * rho 118395 + (-1 : F) * rho 118396)

def relationLc1726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 58⟩], residual := [((1 : F), 118398)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117452) * (relationLc1726 rho) = ((1 : F) * rho 118400)

def relationLc1727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 58⟩], residual := [((1 : F), 118399)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117452) * (relationLc1727 rho) = ((1 : F) * rho 118401)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118392) * ((1 : F) * rho 118393) = ((1 : F) * rho 118402)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118392) * ((1 : F) * rho 118392) = ((1 : F) * rho 118403)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118393) * ((1 : F) * rho 118393) = ((1 : F) * rho 118404)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118405) * ((-1 : F) * rho 118403 + (1 : F) * rho 118404) = ((2 : F) * rho 118402)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118406) * ((2 : F) + (1 : F) * rho 118403 + (-1 : F) * rho 118404) = ((1 : F) * rho 118403 + (1 : F) * rho 118404)

def relationLc1728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 59⟩, ⟨(1 : F), 117647, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118405 + (1 : F) * rho 118406) * (relationLc1728 rho) = ((1 : F) * rho 118407)

def relationLc1729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118406) * (relationLc1729 rho) = ((1 : F) * rho 118408)

def relationLc1730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118405) * (relationLc1730 rho) = ((1 : F) * rho 118409)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118408) * ((1 : F) * rho 118409) = ((1 : F) * rho 118410)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118411) * ((1 : F) + (1 : F) * rho 118410) = ((1 : F) * rho 118408 + (1 : F) * rho 118409)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118412) * ((1 : F) + (-1 : F) * rho 118410) = ((1 : F) * rho 118407 + (-1 : F) * rho 118408 + (-1 : F) * rho 118409)

def relationLc1731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 59⟩], residual := [((1 : F), 118411)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117453) * (relationLc1731 rho) = ((1 : F) * rho 118413)

def relationLc1732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 59⟩], residual := [((1 : F), 118412)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117453) * (relationLc1732 rho) = ((1 : F) * rho 118414)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118405) * ((1 : F) * rho 118406) = ((1 : F) * rho 118415)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118405) * ((1 : F) * rho 118405) = ((1 : F) * rho 118416)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118406) * ((1 : F) * rho 118406) = ((1 : F) * rho 118417)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118418) * ((-1 : F) * rho 118416 + (1 : F) * rho 118417) = ((2 : F) * rho 118415)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118419) * ((2 : F) + (1 : F) * rho 118416 + (-1 : F) * rho 118417) = ((1 : F) * rho 118416 + (1 : F) * rho 118417)

def relationLc1733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 60⟩, ⟨(1 : F), 117647, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118418 + (1 : F) * rho 118419) * (relationLc1733 rho) = ((1 : F) * rho 118420)

def relationLc1734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118419) * (relationLc1734 rho) = ((1 : F) * rho 118421)

def relationLc1735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118418) * (relationLc1735 rho) = ((1 : F) * rho 118422)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118421) * ((1 : F) * rho 118422) = ((1 : F) * rho 118423)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118424) * ((1 : F) + (1 : F) * rho 118423) = ((1 : F) * rho 118421 + (1 : F) * rho 118422)

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118425) * ((1 : F) + (-1 : F) * rho 118423) = ((1 : F) * rho 118420 + (-1 : F) * rho 118421 + (-1 : F) * rho 118422)

def relationLc1736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 60⟩], residual := [((1 : F), 118424)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117454) * (relationLc1736 rho) = ((1 : F) * rho 118426)

def relationLc1737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 60⟩], residual := [((1 : F), 118425)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117454) * (relationLc1737 rho) = ((1 : F) * rho 118427)

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118418) * ((1 : F) * rho 118419) = ((1 : F) * rho 118428)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118418) * ((1 : F) * rho 118418) = ((1 : F) * rho 118429)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118419) * ((1 : F) * rho 118419) = ((1 : F) * rho 118430)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118431) * ((-1 : F) * rho 118429 + (1 : F) * rho 118430) = ((2 : F) * rho 118428)

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118432) * ((2 : F) + (1 : F) * rho 118429 + (-1 : F) * rho 118430) = ((1 : F) * rho 118429 + (1 : F) * rho 118430)

def relationLc1738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 61⟩, ⟨(1 : F), 117647, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118431 + (1 : F) * rho 118432) * (relationLc1738 rho) = ((1 : F) * rho 118433)

def relationLc1739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118432) * (relationLc1739 rho) = ((1 : F) * rho 118434)

def relationLc1740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118431) * (relationLc1740 rho) = ((1 : F) * rho 118435)

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118434) * ((1 : F) * rho 118435) = ((1 : F) * rho 118436)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118437) * ((1 : F) + (1 : F) * rho 118436) = ((1 : F) * rho 118434 + (1 : F) * rho 118435)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118438) * ((1 : F) + (-1 : F) * rho 118436) = ((1 : F) * rho 118433 + (-1 : F) * rho 118434 + (-1 : F) * rho 118435)

def relationLc1741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 61⟩], residual := [((1 : F), 118437)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117455) * (relationLc1741 rho) = ((1 : F) * rho 118439)

def relationLc1742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 61⟩], residual := [((1 : F), 118438)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117455) * (relationLc1742 rho) = ((1 : F) * rho 118440)

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118431) * ((1 : F) * rho 118432) = ((1 : F) * rho 118441)

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118431) * ((1 : F) * rho 118431) = ((1 : F) * rho 118442)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118432) * ((1 : F) * rho 118432) = ((1 : F) * rho 118443)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118444) * ((-1 : F) * rho 118442 + (1 : F) * rho 118443) = ((2 : F) * rho 118441)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118445) * ((2 : F) + (1 : F) * rho 118442 + (-1 : F) * rho 118443) = ((1 : F) * rho 118442 + (1 : F) * rho 118443)

def relationLc1743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 62⟩, ⟨(1 : F), 117647, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118444 + (1 : F) * rho 118445) * (relationLc1743 rho) = ((1 : F) * rho 118446)

def relationLc1744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118445) * (relationLc1744 rho) = ((1 : F) * rho 118447)

def relationLc1745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118444) * (relationLc1745 rho) = ((1 : F) * rho 118448)

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118447) * ((1 : F) * rho 118448) = ((1 : F) * rho 118449)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118450) * ((1 : F) + (1 : F) * rho 118449) = ((1 : F) * rho 118447 + (1 : F) * rho 118448)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118451) * ((1 : F) + (-1 : F) * rho 118449) = ((1 : F) * rho 118446 + (-1 : F) * rho 118447 + (-1 : F) * rho 118448)

def relationLc1746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 62⟩], residual := [((1 : F), 118450)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117456) * (relationLc1746 rho) = ((1 : F) * rho 118452)

def relationLc1747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 62⟩], residual := [((1 : F), 118451)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117456) * (relationLc1747 rho) = ((1 : F) * rho 118453)

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118444) * ((1 : F) * rho 118445) = ((1 : F) * rho 118454)

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118444) * ((1 : F) * rho 118444) = ((1 : F) * rho 118455)

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118445) * ((1 : F) * rho 118445) = ((1 : F) * rho 118456)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118457) * ((-1 : F) * rho 118455 + (1 : F) * rho 118456) = ((2 : F) * rho 118454)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118458) * ((2 : F) + (1 : F) * rho 118455 + (-1 : F) * rho 118456) = ((1 : F) * rho 118455 + (1 : F) * rho 118456)

def relationLc1748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 63⟩, ⟨(1 : F), 117647, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118457 + (1 : F) * rho 118458) * (relationLc1748 rho) = ((1 : F) * rho 118459)

def relationLc1749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118458) * (relationLc1749 rho) = ((1 : F) * rho 118460)

def relationLc1750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118457) * (relationLc1750 rho) = ((1 : F) * rho 118461)

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118460) * ((1 : F) * rho 118461) = ((1 : F) * rho 118462)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118463) * ((1 : F) + (1 : F) * rho 118462) = ((1 : F) * rho 118460 + (1 : F) * rho 118461)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118464) * ((1 : F) + (-1 : F) * rho 118462) = ((1 : F) * rho 118459 + (-1 : F) * rho 118460 + (-1 : F) * rho 118461)

def relationLc1751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 63⟩], residual := [((1 : F), 118463)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117457) * (relationLc1751 rho) = ((1 : F) * rho 118465)

def relationLc1752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 63⟩], residual := [((1 : F), 118464)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117457) * (relationLc1752 rho) = ((1 : F) * rho 118466)

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118457) * ((1 : F) * rho 118458) = ((1 : F) * rho 118467)

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118457) * ((1 : F) * rho 118457) = ((1 : F) * rho 118468)

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118458) * ((1 : F) * rho 118458) = ((1 : F) * rho 118469)

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118470) * ((-1 : F) * rho 118468 + (1 : F) * rho 118469) = ((2 : F) * rho 118467)

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118471) * ((2 : F) + (1 : F) * rho 118468 + (-1 : F) * rho 118469) = ((1 : F) * rho 118468 + (1 : F) * rho 118469)

def relationLc1753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 64⟩, ⟨(1 : F), 117647, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118470 + (1 : F) * rho 118471) * (relationLc1753 rho) = ((1 : F) * rho 118472)

def relationLc1754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118471) * (relationLc1754 rho) = ((1 : F) * rho 118473)

def relationLc1755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118470) * (relationLc1755 rho) = ((1 : F) * rho 118474)

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118473) * ((1 : F) * rho 118474) = ((1 : F) * rho 118475)

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118476) * ((1 : F) + (1 : F) * rho 118475) = ((1 : F) * rho 118473 + (1 : F) * rho 118474)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118477) * ((1 : F) + (-1 : F) * rho 118475) = ((1 : F) * rho 118472 + (-1 : F) * rho 118473 + (-1 : F) * rho 118474)

def relationLc1756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 64⟩], residual := [((1 : F), 118476)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117458) * (relationLc1756 rho) = ((1 : F) * rho 118478)

def relationLc1757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 64⟩], residual := [((1 : F), 118477)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117458) * (relationLc1757 rho) = ((1 : F) * rho 118479)

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118470) * ((1 : F) * rho 118471) = ((1 : F) * rho 118480)

def relationRow2896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118470) * ((1 : F) * rho 118470) = ((1 : F) * rho 118481)

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118471) * ((1 : F) * rho 118471) = ((1 : F) * rho 118482)

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118483) * ((-1 : F) * rho 118481 + (1 : F) * rho 118482) = ((2 : F) * rho 118480)

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118484) * ((2 : F) + (1 : F) * rho 118481 + (-1 : F) * rho 118482) = ((1 : F) * rho 118481 + (1 : F) * rho 118482)

def relationLc1758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 65⟩, ⟨(1 : F), 117647, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118483 + (1 : F) * rho 118484) * (relationLc1758 rho) = ((1 : F) * rho 118485)

def relationLc1759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118484) * (relationLc1759 rho) = ((1 : F) * rho 118486)

def relationLc1760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118483) * (relationLc1760 rho) = ((1 : F) * rho 118487)

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118486) * ((1 : F) * rho 118487) = ((1 : F) * rho 118488)

def relationRow2904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118489) * ((1 : F) + (1 : F) * rho 118488) = ((1 : F) * rho 118486 + (1 : F) * rho 118487)

def relationRow2905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118490) * ((1 : F) + (-1 : F) * rho 118488) = ((1 : F) * rho 118485 + (-1 : F) * rho 118486 + (-1 : F) * rho 118487)

def relationLc1761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 65⟩], residual := [((1 : F), 118489)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117459) * (relationLc1761 rho) = ((1 : F) * rho 118491)

def relationLc1762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 65⟩], residual := [((1 : F), 118490)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117459) * (relationLc1762 rho) = ((1 : F) * rho 118492)

def relationRow2908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118483) * ((1 : F) * rho 118484) = ((1 : F) * rho 118493)

def relationRow2909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118483) * ((1 : F) * rho 118483) = ((1 : F) * rho 118494)

def relationRow2910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118484) * ((1 : F) * rho 118484) = ((1 : F) * rho 118495)

def relationRow2911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118496) * ((-1 : F) * rho 118494 + (1 : F) * rho 118495) = ((2 : F) * rho 118493)

def relationRow2912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118497) * ((2 : F) + (1 : F) * rho 118494 + (-1 : F) * rho 118495) = ((1 : F) * rho 118494 + (1 : F) * rho 118495)

def relationLc1763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 66⟩, ⟨(1 : F), 117647, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118496 + (1 : F) * rho 118497) * (relationLc1763 rho) = ((1 : F) * rho 118498)

def relationLc1764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118497) * (relationLc1764 rho) = ((1 : F) * rho 118499)

def relationLc1765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118496) * (relationLc1765 rho) = ((1 : F) * rho 118500)

def relationRow2916 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118499) * ((1 : F) * rho 118500) = ((1 : F) * rho 118501)

def relationRow2917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118502) * ((1 : F) + (1 : F) * rho 118501) = ((1 : F) * rho 118499 + (1 : F) * rho 118500)

def relationRow2918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118503) * ((1 : F) + (-1 : F) * rho 118501) = ((1 : F) * rho 118498 + (-1 : F) * rho 118499 + (-1 : F) * rho 118500)

def relationLc1766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 66⟩], residual := [((1 : F), 118502)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117460) * (relationLc1766 rho) = ((1 : F) * rho 118504)

def relationLc1767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 66⟩], residual := [((1 : F), 118503)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117460) * (relationLc1767 rho) = ((1 : F) * rho 118505)

def relationRow2921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118496) * ((1 : F) * rho 118497) = ((1 : F) * rho 118506)

def relationRow2922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118496) * ((1 : F) * rho 118496) = ((1 : F) * rho 118507)

def relationRow2923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118497) * ((1 : F) * rho 118497) = ((1 : F) * rho 118508)

def relationRow2924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118509) * ((-1 : F) * rho 118507 + (1 : F) * rho 118508) = ((2 : F) * rho 118506)

def relationRow2925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118510) * ((2 : F) + (1 : F) * rho 118507 + (-1 : F) * rho 118508) = ((1 : F) * rho 118507 + (1 : F) * rho 118508)

def relationLc1768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 67⟩, ⟨(1 : F), 117647, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118509 + (1 : F) * rho 118510) * (relationLc1768 rho) = ((1 : F) * rho 118511)

def relationLc1769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118510) * (relationLc1769 rho) = ((1 : F) * rho 118512)

def relationLc1770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118509) * (relationLc1770 rho) = ((1 : F) * rho 118513)

def relationRow2929 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118512) * ((1 : F) * rho 118513) = ((1 : F) * rho 118514)

def relationRow2930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118515) * ((1 : F) + (1 : F) * rho 118514) = ((1 : F) * rho 118512 + (1 : F) * rho 118513)

def relationRow2931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118516) * ((1 : F) + (-1 : F) * rho 118514) = ((1 : F) * rho 118511 + (-1 : F) * rho 118512 + (-1 : F) * rho 118513)

def relationLc1771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 67⟩], residual := [((1 : F), 118515)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117461) * (relationLc1771 rho) = ((1 : F) * rho 118517)

def relationLc1772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 67⟩], residual := [((1 : F), 118516)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117461) * (relationLc1772 rho) = ((1 : F) * rho 118518)

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118509) * ((1 : F) * rho 118510) = ((1 : F) * rho 118519)

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118509) * ((1 : F) * rho 118509) = ((1 : F) * rho 118520)

def relationRow2936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118510) * ((1 : F) * rho 118510) = ((1 : F) * rho 118521)

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118522) * ((-1 : F) * rho 118520 + (1 : F) * rho 118521) = ((2 : F) * rho 118519)

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118523) * ((2 : F) + (1 : F) * rho 118520 + (-1 : F) * rho 118521) = ((1 : F) * rho 118520 + (1 : F) * rho 118521)

def relationLc1773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 68⟩, ⟨(1 : F), 117647, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118522 + (1 : F) * rho 118523) * (relationLc1773 rho) = ((1 : F) * rho 118524)

def relationLc1774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118523) * (relationLc1774 rho) = ((1 : F) * rho 118525)

def relationLc1775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118522) * (relationLc1775 rho) = ((1 : F) * rho 118526)

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118525) * ((1 : F) * rho 118526) = ((1 : F) * rho 118527)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118528) * ((1 : F) + (1 : F) * rho 118527) = ((1 : F) * rho 118525 + (1 : F) * rho 118526)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118529) * ((1 : F) + (-1 : F) * rho 118527) = ((1 : F) * rho 118524 + (-1 : F) * rho 118525 + (-1 : F) * rho 118526)

def relationLc1776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 68⟩], residual := [((1 : F), 118528)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117462) * (relationLc1776 rho) = ((1 : F) * rho 118530)

def relationLc1777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 68⟩], residual := [((1 : F), 118529)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117462) * (relationLc1777 rho) = ((1 : F) * rho 118531)

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118522) * ((1 : F) * rho 118523) = ((1 : F) * rho 118532)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118522) * ((1 : F) * rho 118522) = ((1 : F) * rho 118533)

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118523) * ((1 : F) * rho 118523) = ((1 : F) * rho 118534)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118535) * ((-1 : F) * rho 118533 + (1 : F) * rho 118534) = ((2 : F) * rho 118532)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118536) * ((2 : F) + (1 : F) * rho 118533 + (-1 : F) * rho 118534) = ((1 : F) * rho 118533 + (1 : F) * rho 118534)

def relationLc1778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 69⟩, ⟨(1 : F), 117647, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118535 + (1 : F) * rho 118536) * (relationLc1778 rho) = ((1 : F) * rho 118537)

def relationLc1779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118536) * (relationLc1779 rho) = ((1 : F) * rho 118538)

def relationLc1780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118535) * (relationLc1780 rho) = ((1 : F) * rho 118539)

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118538) * ((1 : F) * rho 118539) = ((1 : F) * rho 118540)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118541) * ((1 : F) + (1 : F) * rho 118540) = ((1 : F) * rho 118538 + (1 : F) * rho 118539)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118542) * ((1 : F) + (-1 : F) * rho 118540) = ((1 : F) * rho 118537 + (-1 : F) * rho 118538 + (-1 : F) * rho 118539)

def relationLc1781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 69⟩], residual := [((1 : F), 118541)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117463) * (relationLc1781 rho) = ((1 : F) * rho 118543)

def relationLc1782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 69⟩], residual := [((1 : F), 118542)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117463) * (relationLc1782 rho) = ((1 : F) * rho 118544)

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118535) * ((1 : F) * rho 118536) = ((1 : F) * rho 118545)

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118535) * ((1 : F) * rho 118535) = ((1 : F) * rho 118546)

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118536) * ((1 : F) * rho 118536) = ((1 : F) * rho 118547)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118548) * ((-1 : F) * rho 118546 + (1 : F) * rho 118547) = ((2 : F) * rho 118545)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118549) * ((2 : F) + (1 : F) * rho 118546 + (-1 : F) * rho 118547) = ((1 : F) * rho 118546 + (1 : F) * rho 118547)

def relationLc1783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 70⟩, ⟨(1 : F), 117647, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118548 + (1 : F) * rho 118549) * (relationLc1783 rho) = ((1 : F) * rho 118550)

def relationLc1784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118549) * (relationLc1784 rho) = ((1 : F) * rho 118551)

def relationLc1785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118548) * (relationLc1785 rho) = ((1 : F) * rho 118552)

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118551) * ((1 : F) * rho 118552) = ((1 : F) * rho 118553)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118554) * ((1 : F) + (1 : F) * rho 118553) = ((1 : F) * rho 118551 + (1 : F) * rho 118552)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118555) * ((1 : F) + (-1 : F) * rho 118553) = ((1 : F) * rho 118550 + (-1 : F) * rho 118551 + (-1 : F) * rho 118552)

def relationLc1786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 70⟩], residual := [((1 : F), 118554)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117464) * (relationLc1786 rho) = ((1 : F) * rho 118556)

def relationLc1787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 70⟩], residual := [((1 : F), 118555)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117464) * (relationLc1787 rho) = ((1 : F) * rho 118557)

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118548) * ((1 : F) * rho 118549) = ((1 : F) * rho 118558)

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118548) * ((1 : F) * rho 118548) = ((1 : F) * rho 118559)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118549) * ((1 : F) * rho 118549) = ((1 : F) * rho 118560)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118561) * ((-1 : F) * rho 118559 + (1 : F) * rho 118560) = ((2 : F) * rho 118558)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118562) * ((2 : F) + (1 : F) * rho 118559 + (-1 : F) * rho 118560) = ((1 : F) * rho 118559 + (1 : F) * rho 118560)

def relationLc1788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 71⟩, ⟨(1 : F), 117647, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118561 + (1 : F) * rho 118562) * (relationLc1788 rho) = ((1 : F) * rho 118563)

def relationLc1789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118562) * (relationLc1789 rho) = ((1 : F) * rho 118564)

def relationLc1790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118561) * (relationLc1790 rho) = ((1 : F) * rho 118565)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118564) * ((1 : F) * rho 118565) = ((1 : F) * rho 118566)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118567) * ((1 : F) + (1 : F) * rho 118566) = ((1 : F) * rho 118564 + (1 : F) * rho 118565)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118568) * ((1 : F) + (-1 : F) * rho 118566) = ((1 : F) * rho 118563 + (-1 : F) * rho 118564 + (-1 : F) * rho 118565)

def relationLc1791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 71⟩], residual := [((1 : F), 118567)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117465) * (relationLc1791 rho) = ((1 : F) * rho 118569)

def relationLc1792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 71⟩], residual := [((1 : F), 118568)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117465) * (relationLc1792 rho) = ((1 : F) * rho 118570)

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118561) * ((1 : F) * rho 118562) = ((1 : F) * rho 118571)

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118561) * ((1 : F) * rho 118561) = ((1 : F) * rho 118572)

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118562) * ((1 : F) * rho 118562) = ((1 : F) * rho 118573)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118574) * ((-1 : F) * rho 118572 + (1 : F) * rho 118573) = ((2 : F) * rho 118571)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118575) * ((2 : F) + (1 : F) * rho 118572 + (-1 : F) * rho 118573) = ((1 : F) * rho 118572 + (1 : F) * rho 118573)

def relationLc1793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 72⟩, ⟨(1 : F), 117647, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118574 + (1 : F) * rho 118575) * (relationLc1793 rho) = ((1 : F) * rho 118576)

def relationLc1794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118575) * (relationLc1794 rho) = ((1 : F) * rho 118577)

def relationLc1795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118574) * (relationLc1795 rho) = ((1 : F) * rho 118578)

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118577) * ((1 : F) * rho 118578) = ((1 : F) * rho 118579)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118580) * ((1 : F) + (1 : F) * rho 118579) = ((1 : F) * rho 118577 + (1 : F) * rho 118578)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118581) * ((1 : F) + (-1 : F) * rho 118579) = ((1 : F) * rho 118576 + (-1 : F) * rho 118577 + (-1 : F) * rho 118578)

def relationLc1796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 72⟩], residual := [((1 : F), 118580)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117466) * (relationLc1796 rho) = ((1 : F) * rho 118582)

def relationLc1797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 72⟩], residual := [((1 : F), 118581)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117466) * (relationLc1797 rho) = ((1 : F) * rho 118583)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118574) * ((1 : F) * rho 118575) = ((1 : F) * rho 118584)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118574) * ((1 : F) * rho 118574) = ((1 : F) * rho 118585)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118575) * ((1 : F) * rho 118575) = ((1 : F) * rho 118586)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118587) * ((-1 : F) * rho 118585 + (1 : F) * rho 118586) = ((2 : F) * rho 118584)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118588) * ((2 : F) + (1 : F) * rho 118585 + (-1 : F) * rho 118586) = ((1 : F) * rho 118585 + (1 : F) * rho 118586)

def relationLc1798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 73⟩, ⟨(1 : F), 117647, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118587 + (1 : F) * rho 118588) * (relationLc1798 rho) = ((1 : F) * rho 118589)

def relationLc1799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118588) * (relationLc1799 rho) = ((1 : F) * rho 118590)

def relationLc1800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118587) * (relationLc1800 rho) = ((1 : F) * rho 118591)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118590) * ((1 : F) * rho 118591) = ((1 : F) * rho 118592)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118593) * ((1 : F) + (1 : F) * rho 118592) = ((1 : F) * rho 118590 + (1 : F) * rho 118591)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118594) * ((1 : F) + (-1 : F) * rho 118592) = ((1 : F) * rho 118589 + (-1 : F) * rho 118590 + (-1 : F) * rho 118591)

def relationLc1801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 73⟩], residual := [((1 : F), 118593)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117467) * (relationLc1801 rho) = ((1 : F) * rho 118595)

def relationLc1802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 73⟩], residual := [((1 : F), 118594)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117467) * (relationLc1802 rho) = ((1 : F) * rho 118596)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118587) * ((1 : F) * rho 118588) = ((1 : F) * rho 118597)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118587) * ((1 : F) * rho 118587) = ((1 : F) * rho 118598)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118588) * ((1 : F) * rho 118588) = ((1 : F) * rho 118599)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118600) * ((-1 : F) * rho 118598 + (1 : F) * rho 118599) = ((2 : F) * rho 118597)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118601) * ((2 : F) + (1 : F) * rho 118598 + (-1 : F) * rho 118599) = ((1 : F) * rho 118598 + (1 : F) * rho 118599)

def relationLc1803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 74⟩, ⟨(1 : F), 117647, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118600 + (1 : F) * rho 118601) * (relationLc1803 rho) = ((1 : F) * rho 118602)

def relationLc1804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118601) * (relationLc1804 rho) = ((1 : F) * rho 118603)

def relationLc1805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118600) * (relationLc1805 rho) = ((1 : F) * rho 118604)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118603) * ((1 : F) * rho 118604) = ((1 : F) * rho 118605)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118606) * ((1 : F) + (1 : F) * rho 118605) = ((1 : F) * rho 118603 + (1 : F) * rho 118604)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118607) * ((1 : F) + (-1 : F) * rho 118605) = ((1 : F) * rho 118602 + (-1 : F) * rho 118603 + (-1 : F) * rho 118604)

def relationLc1806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 74⟩], residual := [((1 : F), 118606)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117468) * (relationLc1806 rho) = ((1 : F) * rho 118608)

def relationLc1807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 74⟩], residual := [((1 : F), 118607)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117468) * (relationLc1807 rho) = ((1 : F) * rho 118609)

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118600) * ((1 : F) * rho 118601) = ((1 : F) * rho 118610)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118600) * ((1 : F) * rho 118600) = ((1 : F) * rho 118611)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118601) * ((1 : F) * rho 118601) = ((1 : F) * rho 118612)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118613) * ((-1 : F) * rho 118611 + (1 : F) * rho 118612) = ((2 : F) * rho 118610)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118614) * ((2 : F) + (1 : F) * rho 118611 + (-1 : F) * rho 118612) = ((1 : F) * rho 118611 + (1 : F) * rho 118612)

def relationLc1808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 75⟩, ⟨(1 : F), 117647, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118613 + (1 : F) * rho 118614) * (relationLc1808 rho) = ((1 : F) * rho 118615)

def relationLc1809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118614) * (relationLc1809 rho) = ((1 : F) * rho 118616)

def relationLc1810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118613) * (relationLc1810 rho) = ((1 : F) * rho 118617)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118616) * ((1 : F) * rho 118617) = ((1 : F) * rho 118618)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118619) * ((1 : F) + (1 : F) * rho 118618) = ((1 : F) * rho 118616 + (1 : F) * rho 118617)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118620) * ((1 : F) + (-1 : F) * rho 118618) = ((1 : F) * rho 118615 + (-1 : F) * rho 118616 + (-1 : F) * rho 118617)

def relationLc1811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 75⟩], residual := [((1 : F), 118619)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117469) * (relationLc1811 rho) = ((1 : F) * rho 118621)

def relationLc1812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 75⟩], residual := [((1 : F), 118620)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117469) * (relationLc1812 rho) = ((1 : F) * rho 118622)

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118613) * ((1 : F) * rho 118614) = ((1 : F) * rho 118623)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118613) * ((1 : F) * rho 118613) = ((1 : F) * rho 118624)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118614) * ((1 : F) * rho 118614) = ((1 : F) * rho 118625)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118626) * ((-1 : F) * rho 118624 + (1 : F) * rho 118625) = ((2 : F) * rho 118623)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118627) * ((2 : F) + (1 : F) * rho 118624 + (-1 : F) * rho 118625) = ((1 : F) * rho 118624 + (1 : F) * rho 118625)

def relationLc1813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 76⟩, ⟨(1 : F), 117647, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118626 + (1 : F) * rho 118627) * (relationLc1813 rho) = ((1 : F) * rho 118628)

def relationLc1814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118627) * (relationLc1814 rho) = ((1 : F) * rho 118629)

def relationLc1815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118626) * (relationLc1815 rho) = ((1 : F) * rho 118630)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118629) * ((1 : F) * rho 118630) = ((1 : F) * rho 118631)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118632) * ((1 : F) + (1 : F) * rho 118631) = ((1 : F) * rho 118629 + (1 : F) * rho 118630)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118633) * ((1 : F) + (-1 : F) * rho 118631) = ((1 : F) * rho 118628 + (-1 : F) * rho 118629 + (-1 : F) * rho 118630)

def relationLc1816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 76⟩], residual := [((1 : F), 118632)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117470) * (relationLc1816 rho) = ((1 : F) * rho 118634)

def relationLc1817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 76⟩], residual := [((1 : F), 118633)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117470) * (relationLc1817 rho) = ((1 : F) * rho 118635)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118626) * ((1 : F) * rho 118627) = ((1 : F) * rho 118636)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118626) * ((1 : F) * rho 118626) = ((1 : F) * rho 118637)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118627) * ((1 : F) * rho 118627) = ((1 : F) * rho 118638)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118639) * ((-1 : F) * rho 118637 + (1 : F) * rho 118638) = ((2 : F) * rho 118636)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118640) * ((2 : F) + (1 : F) * rho 118637 + (-1 : F) * rho 118638) = ((1 : F) * rho 118637 + (1 : F) * rho 118638)

def relationLc1818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 77⟩, ⟨(1 : F), 117647, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118639 + (1 : F) * rho 118640) * (relationLc1818 rho) = ((1 : F) * rho 118641)

def relationLc1819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118640) * (relationLc1819 rho) = ((1 : F) * rho 118642)

def relationLc1820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118639) * (relationLc1820 rho) = ((1 : F) * rho 118643)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118642) * ((1 : F) * rho 118643) = ((1 : F) * rho 118644)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118645) * ((1 : F) + (1 : F) * rho 118644) = ((1 : F) * rho 118642 + (1 : F) * rho 118643)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118646) * ((1 : F) + (-1 : F) * rho 118644) = ((1 : F) * rho 118641 + (-1 : F) * rho 118642 + (-1 : F) * rho 118643)

def relationLc1821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 77⟩], residual := [((1 : F), 118645)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117471) * (relationLc1821 rho) = ((1 : F) * rho 118647)

def relationLc1822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 77⟩], residual := [((1 : F), 118646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117471) * (relationLc1822 rho) = ((1 : F) * rho 118648)

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118639) * ((1 : F) * rho 118640) = ((1 : F) * rho 118649)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118639) * ((1 : F) * rho 118639) = ((1 : F) * rho 118650)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118640) * ((1 : F) * rho 118640) = ((1 : F) * rho 118651)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118652) * ((-1 : F) * rho 118650 + (1 : F) * rho 118651) = ((2 : F) * rho 118649)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118653) * ((2 : F) + (1 : F) * rho 118650 + (-1 : F) * rho 118651) = ((1 : F) * rho 118650 + (1 : F) * rho 118651)

def relationLc1823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 78⟩, ⟨(1 : F), 117647, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118652 + (1 : F) * rho 118653) * (relationLc1823 rho) = ((1 : F) * rho 118654)

def relationLc1824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118653) * (relationLc1824 rho) = ((1 : F) * rho 118655)

def relationLc1825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118652) * (relationLc1825 rho) = ((1 : F) * rho 118656)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118655) * ((1 : F) * rho 118656) = ((1 : F) * rho 118657)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118658) * ((1 : F) + (1 : F) * rho 118657) = ((1 : F) * rho 118655 + (1 : F) * rho 118656)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118659) * ((1 : F) + (-1 : F) * rho 118657) = ((1 : F) * rho 118654 + (-1 : F) * rho 118655 + (-1 : F) * rho 118656)

def relationLc1826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 78⟩], residual := [((1 : F), 118658)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117472) * (relationLc1826 rho) = ((1 : F) * rho 118660)

def relationLc1827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 78⟩], residual := [((1 : F), 118659)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117472) * (relationLc1827 rho) = ((1 : F) * rho 118661)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118652) * ((1 : F) * rho 118653) = ((1 : F) * rho 118662)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118652) * ((1 : F) * rho 118652) = ((1 : F) * rho 118663)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118653) * ((1 : F) * rho 118653) = ((1 : F) * rho 118664)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118665) * ((-1 : F) * rho 118663 + (1 : F) * rho 118664) = ((2 : F) * rho 118662)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118666) * ((2 : F) + (1 : F) * rho 118663 + (-1 : F) * rho 118664) = ((1 : F) * rho 118663 + (1 : F) * rho 118664)

def relationLc1828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 79⟩, ⟨(1 : F), 117647, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118665 + (1 : F) * rho 118666) * (relationLc1828 rho) = ((1 : F) * rho 118667)

def relationLc1829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118666) * (relationLc1829 rho) = ((1 : F) * rho 118668)

def relationLc1830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118665) * (relationLc1830 rho) = ((1 : F) * rho 118669)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118668) * ((1 : F) * rho 118669) = ((1 : F) * rho 118670)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118671) * ((1 : F) + (1 : F) * rho 118670) = ((1 : F) * rho 118668 + (1 : F) * rho 118669)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118672) * ((1 : F) + (-1 : F) * rho 118670) = ((1 : F) * rho 118667 + (-1 : F) * rho 118668 + (-1 : F) * rho 118669)

def relationLc1831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 79⟩], residual := [((1 : F), 118671)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117473) * (relationLc1831 rho) = ((1 : F) * rho 118673)

def relationLc1832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 79⟩], residual := [((1 : F), 118672)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117473) * (relationLc1832 rho) = ((1 : F) * rho 118674)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118665) * ((1 : F) * rho 118666) = ((1 : F) * rho 118675)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118665) * ((1 : F) * rho 118665) = ((1 : F) * rho 118676)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118666) * ((1 : F) * rho 118666) = ((1 : F) * rho 118677)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118678) * ((-1 : F) * rho 118676 + (1 : F) * rho 118677) = ((2 : F) * rho 118675)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118679) * ((2 : F) + (1 : F) * rho 118676 + (-1 : F) * rho 118677) = ((1 : F) * rho 118676 + (1 : F) * rho 118677)

def relationLc1833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 80⟩, ⟨(1 : F), 117647, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118678 + (1 : F) * rho 118679) * (relationLc1833 rho) = ((1 : F) * rho 118680)

def relationLc1834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118679) * (relationLc1834 rho) = ((1 : F) * rho 118681)

def relationLc1835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118678) * (relationLc1835 rho) = ((1 : F) * rho 118682)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118681) * ((1 : F) * rho 118682) = ((1 : F) * rho 118683)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118684) * ((1 : F) + (1 : F) * rho 118683) = ((1 : F) * rho 118681 + (1 : F) * rho 118682)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118685) * ((1 : F) + (-1 : F) * rho 118683) = ((1 : F) * rho 118680 + (-1 : F) * rho 118681 + (-1 : F) * rho 118682)

def relationLc1836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 80⟩], residual := [((1 : F), 118684)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117474) * (relationLc1836 rho) = ((1 : F) * rho 118686)

def relationLc1837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 80⟩], residual := [((1 : F), 118685)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117474) * (relationLc1837 rho) = ((1 : F) * rho 118687)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118678) * ((1 : F) * rho 118679) = ((1 : F) * rho 118688)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118678) * ((1 : F) * rho 118678) = ((1 : F) * rho 118689)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118679) * ((1 : F) * rho 118679) = ((1 : F) * rho 118690)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118691) * ((-1 : F) * rho 118689 + (1 : F) * rho 118690) = ((2 : F) * rho 118688)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118692) * ((2 : F) + (1 : F) * rho 118689 + (-1 : F) * rho 118690) = ((1 : F) * rho 118689 + (1 : F) * rho 118690)

def relationLc1838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 81⟩, ⟨(1 : F), 117647, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118691 + (1 : F) * rho 118692) * (relationLc1838 rho) = ((1 : F) * rho 118693)

def relationLc1839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118692) * (relationLc1839 rho) = ((1 : F) * rho 118694)

def relationLc1840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118691) * (relationLc1840 rho) = ((1 : F) * rho 118695)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118694) * ((1 : F) * rho 118695) = ((1 : F) * rho 118696)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118697) * ((1 : F) + (1 : F) * rho 118696) = ((1 : F) * rho 118694 + (1 : F) * rho 118695)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118698) * ((1 : F) + (-1 : F) * rho 118696) = ((1 : F) * rho 118693 + (-1 : F) * rho 118694 + (-1 : F) * rho 118695)

def relationLc1841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 81⟩], residual := [((1 : F), 118697)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117475) * (relationLc1841 rho) = ((1 : F) * rho 118699)

def relationLc1842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 81⟩], residual := [((1 : F), 118698)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117475) * (relationLc1842 rho) = ((1 : F) * rho 118700)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118691) * ((1 : F) * rho 118692) = ((1 : F) * rho 118701)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118691) * ((1 : F) * rho 118691) = ((1 : F) * rho 118702)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118692) * ((1 : F) * rho 118692) = ((1 : F) * rho 118703)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118704) * ((-1 : F) * rho 118702 + (1 : F) * rho 118703) = ((2 : F) * rho 118701)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118705) * ((2 : F) + (1 : F) * rho 118702 + (-1 : F) * rho 118703) = ((1 : F) * rho 118702 + (1 : F) * rho 118703)

def relationLc1843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 82⟩, ⟨(1 : F), 117647, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118704 + (1 : F) * rho 118705) * (relationLc1843 rho) = ((1 : F) * rho 118706)

def relationLc1844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118705) * (relationLc1844 rho) = ((1 : F) * rho 118707)

def relationLc1845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118704) * (relationLc1845 rho) = ((1 : F) * rho 118708)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118707) * ((1 : F) * rho 118708) = ((1 : F) * rho 118709)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118710) * ((1 : F) + (1 : F) * rho 118709) = ((1 : F) * rho 118707 + (1 : F) * rho 118708)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118711) * ((1 : F) + (-1 : F) * rho 118709) = ((1 : F) * rho 118706 + (-1 : F) * rho 118707 + (-1 : F) * rho 118708)

def relationLc1846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 82⟩], residual := [((1 : F), 118710)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117476) * (relationLc1846 rho) = ((1 : F) * rho 118712)

def relationLc1847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 82⟩], residual := [((1 : F), 118711)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117476) * (relationLc1847 rho) = ((1 : F) * rho 118713)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118704) * ((1 : F) * rho 118705) = ((1 : F) * rho 118714)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118704) * ((1 : F) * rho 118704) = ((1 : F) * rho 118715)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118705) * ((1 : F) * rho 118705) = ((1 : F) * rho 118716)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118717) * ((-1 : F) * rho 118715 + (1 : F) * rho 118716) = ((2 : F) * rho 118714)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118718) * ((2 : F) + (1 : F) * rho 118715 + (-1 : F) * rho 118716) = ((1 : F) * rho 118715 + (1 : F) * rho 118716)

def relationLc1848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 83⟩, ⟨(1 : F), 117647, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118717 + (1 : F) * rho 118718) * (relationLc1848 rho) = ((1 : F) * rho 118719)

def relationLc1849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118718) * (relationLc1849 rho) = ((1 : F) * rho 118720)

def relationLc1850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118717) * (relationLc1850 rho) = ((1 : F) * rho 118721)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118720) * ((1 : F) * rho 118721) = ((1 : F) * rho 118722)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118723) * ((1 : F) + (1 : F) * rho 118722) = ((1 : F) * rho 118720 + (1 : F) * rho 118721)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118724) * ((1 : F) + (-1 : F) * rho 118722) = ((1 : F) * rho 118719 + (-1 : F) * rho 118720 + (-1 : F) * rho 118721)

def relationLc1851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 83⟩], residual := [((1 : F), 118723)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117477) * (relationLc1851 rho) = ((1 : F) * rho 118725)

def relationLc1852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 83⟩], residual := [((1 : F), 118724)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117477) * (relationLc1852 rho) = ((1 : F) * rho 118726)

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118717) * ((1 : F) * rho 118718) = ((1 : F) * rho 118727)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118717) * ((1 : F) * rho 118717) = ((1 : F) * rho 118728)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118718) * ((1 : F) * rho 118718) = ((1 : F) * rho 118729)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118730) * ((-1 : F) * rho 118728 + (1 : F) * rho 118729) = ((2 : F) * rho 118727)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118731) * ((2 : F) + (1 : F) * rho 118728 + (-1 : F) * rho 118729) = ((1 : F) * rho 118728 + (1 : F) * rho 118729)

def relationLc1853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 84⟩, ⟨(1 : F), 117647, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118730 + (1 : F) * rho 118731) * (relationLc1853 rho) = ((1 : F) * rho 118732)

def relationLc1854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118731) * (relationLc1854 rho) = ((1 : F) * rho 118733)

def relationLc1855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118730) * (relationLc1855 rho) = ((1 : F) * rho 118734)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118733) * ((1 : F) * rho 118734) = ((1 : F) * rho 118735)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118736) * ((1 : F) + (1 : F) * rho 118735) = ((1 : F) * rho 118733 + (1 : F) * rho 118734)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118737) * ((1 : F) + (-1 : F) * rho 118735) = ((1 : F) * rho 118732 + (-1 : F) * rho 118733 + (-1 : F) * rho 118734)

def relationLc1856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 84⟩], residual := [((1 : F), 118736)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117478) * (relationLc1856 rho) = ((1 : F) * rho 118738)

def relationLc1857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 84⟩], residual := [((1 : F), 118737)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117478) * (relationLc1857 rho) = ((1 : F) * rho 118739)

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118730) * ((1 : F) * rho 118731) = ((1 : F) * rho 118740)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118730) * ((1 : F) * rho 118730) = ((1 : F) * rho 118741)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118731) * ((1 : F) * rho 118731) = ((1 : F) * rho 118742)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118743) * ((-1 : F) * rho 118741 + (1 : F) * rho 118742) = ((2 : F) * rho 118740)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118744) * ((2 : F) + (1 : F) * rho 118741 + (-1 : F) * rho 118742) = ((1 : F) * rho 118741 + (1 : F) * rho 118742)

def relationLc1858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 85⟩, ⟨(1 : F), 117647, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118743 + (1 : F) * rho 118744) * (relationLc1858 rho) = ((1 : F) * rho 118745)

def relationLc1859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118744) * (relationLc1859 rho) = ((1 : F) * rho 118746)

def relationLc1860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118743) * (relationLc1860 rho) = ((1 : F) * rho 118747)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118746) * ((1 : F) * rho 118747) = ((1 : F) * rho 118748)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118749) * ((1 : F) + (1 : F) * rho 118748) = ((1 : F) * rho 118746 + (1 : F) * rho 118747)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118750) * ((1 : F) + (-1 : F) * rho 118748) = ((1 : F) * rho 118745 + (-1 : F) * rho 118746 + (-1 : F) * rho 118747)

def relationLc1861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 85⟩], residual := [((1 : F), 118749)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117479) * (relationLc1861 rho) = ((1 : F) * rho 118751)

def relationLc1862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 85⟩], residual := [((1 : F), 118750)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117479) * (relationLc1862 rho) = ((1 : F) * rho 118752)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118743) * ((1 : F) * rho 118744) = ((1 : F) * rho 118753)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118743) * ((1 : F) * rho 118743) = ((1 : F) * rho 118754)

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118744) * ((1 : F) * rho 118744) = ((1 : F) * rho 118755)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118756) * ((-1 : F) * rho 118754 + (1 : F) * rho 118755) = ((2 : F) * rho 118753)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118757) * ((2 : F) + (1 : F) * rho 118754 + (-1 : F) * rho 118755) = ((1 : F) * rho 118754 + (1 : F) * rho 118755)

def relationLc1863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 86⟩, ⟨(1 : F), 117647, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118756 + (1 : F) * rho 118757) * (relationLc1863 rho) = ((1 : F) * rho 118758)

def relationLc1864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118757) * (relationLc1864 rho) = ((1 : F) * rho 118759)

def relationLc1865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118756) * (relationLc1865 rho) = ((1 : F) * rho 118760)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118759) * ((1 : F) * rho 118760) = ((1 : F) * rho 118761)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118762) * ((1 : F) + (1 : F) * rho 118761) = ((1 : F) * rho 118759 + (1 : F) * rho 118760)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118763) * ((1 : F) + (-1 : F) * rho 118761) = ((1 : F) * rho 118758 + (-1 : F) * rho 118759 + (-1 : F) * rho 118760)

def relationLc1866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 86⟩], residual := [((1 : F), 118762)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117480) * (relationLc1866 rho) = ((1 : F) * rho 118764)

def relationLc1867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 86⟩], residual := [((1 : F), 118763)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117480) * (relationLc1867 rho) = ((1 : F) * rho 118765)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118756) * ((1 : F) * rho 118757) = ((1 : F) * rho 118766)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118756) * ((1 : F) * rho 118756) = ((1 : F) * rho 118767)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118757) * ((1 : F) * rho 118757) = ((1 : F) * rho 118768)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118769) * ((-1 : F) * rho 118767 + (1 : F) * rho 118768) = ((2 : F) * rho 118766)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118770) * ((2 : F) + (1 : F) * rho 118767 + (-1 : F) * rho 118768) = ((1 : F) * rho 118767 + (1 : F) * rho 118768)

def relationLc1868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 87⟩, ⟨(1 : F), 117647, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118769 + (1 : F) * rho 118770) * (relationLc1868 rho) = ((1 : F) * rho 118771)

def relationLc1869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118770) * (relationLc1869 rho) = ((1 : F) * rho 118772)

def relationLc1870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118769) * (relationLc1870 rho) = ((1 : F) * rho 118773)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118772) * ((1 : F) * rho 118773) = ((1 : F) * rho 118774)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118775) * ((1 : F) + (1 : F) * rho 118774) = ((1 : F) * rho 118772 + (1 : F) * rho 118773)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118776) * ((1 : F) + (-1 : F) * rho 118774) = ((1 : F) * rho 118771 + (-1 : F) * rho 118772 + (-1 : F) * rho 118773)

def relationLc1871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 87⟩], residual := [((1 : F), 118775)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117481) * (relationLc1871 rho) = ((1 : F) * rho 118777)

def relationLc1872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 87⟩], residual := [((1 : F), 118776)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117481) * (relationLc1872 rho) = ((1 : F) * rho 118778)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118769) * ((1 : F) * rho 118770) = ((1 : F) * rho 118779)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118769) * ((1 : F) * rho 118769) = ((1 : F) * rho 118780)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118770) * ((1 : F) * rho 118770) = ((1 : F) * rho 118781)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118782) * ((-1 : F) * rho 118780 + (1 : F) * rho 118781) = ((2 : F) * rho 118779)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118783) * ((2 : F) + (1 : F) * rho 118780 + (-1 : F) * rho 118781) = ((1 : F) * rho 118780 + (1 : F) * rho 118781)

def relationLc1873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 88⟩, ⟨(1 : F), 117647, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118782 + (1 : F) * rho 118783) * (relationLc1873 rho) = ((1 : F) * rho 118784)

def relationLc1874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118783) * (relationLc1874 rho) = ((1 : F) * rho 118785)

def relationLc1875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118782) * (relationLc1875 rho) = ((1 : F) * rho 118786)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118785) * ((1 : F) * rho 118786) = ((1 : F) * rho 118787)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118788) * ((1 : F) + (1 : F) * rho 118787) = ((1 : F) * rho 118785 + (1 : F) * rho 118786)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118789) * ((1 : F) + (-1 : F) * rho 118787) = ((1 : F) * rho 118784 + (-1 : F) * rho 118785 + (-1 : F) * rho 118786)

def relationLc1876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 88⟩], residual := [((1 : F), 118788)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117482) * (relationLc1876 rho) = ((1 : F) * rho 118790)

def relationLc1877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 88⟩], residual := [((1 : F), 118789)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117482) * (relationLc1877 rho) = ((1 : F) * rho 118791)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118782) * ((1 : F) * rho 118783) = ((1 : F) * rho 118792)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118782) * ((1 : F) * rho 118782) = ((1 : F) * rho 118793)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118783) * ((1 : F) * rho 118783) = ((1 : F) * rho 118794)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118795) * ((-1 : F) * rho 118793 + (1 : F) * rho 118794) = ((2 : F) * rho 118792)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118796) * ((2 : F) + (1 : F) * rho 118793 + (-1 : F) * rho 118794) = ((1 : F) * rho 118793 + (1 : F) * rho 118794)

def relationLc1878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 89⟩, ⟨(1 : F), 117647, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118795 + (1 : F) * rho 118796) * (relationLc1878 rho) = ((1 : F) * rho 118797)

def relationLc1879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118796) * (relationLc1879 rho) = ((1 : F) * rho 118798)

def relationLc1880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118795) * (relationLc1880 rho) = ((1 : F) * rho 118799)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118798) * ((1 : F) * rho 118799) = ((1 : F) * rho 118800)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118801) * ((1 : F) + (1 : F) * rho 118800) = ((1 : F) * rho 118798 + (1 : F) * rho 118799)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118802) * ((1 : F) + (-1 : F) * rho 118800) = ((1 : F) * rho 118797 + (-1 : F) * rho 118798 + (-1 : F) * rho 118799)

def relationLc1881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 89⟩], residual := [((1 : F), 118801)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117483) * (relationLc1881 rho) = ((1 : F) * rho 118803)

def relationLc1882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 89⟩], residual := [((1 : F), 118802)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117483) * (relationLc1882 rho) = ((1 : F) * rho 118804)

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118795) * ((1 : F) * rho 118796) = ((1 : F) * rho 118805)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118795) * ((1 : F) * rho 118795) = ((1 : F) * rho 118806)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118796) * ((1 : F) * rho 118796) = ((1 : F) * rho 118807)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118808) * ((-1 : F) * rho 118806 + (1 : F) * rho 118807) = ((2 : F) * rho 118805)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118809) * ((2 : F) + (1 : F) * rho 118806 + (-1 : F) * rho 118807) = ((1 : F) * rho 118806 + (1 : F) * rho 118807)

def relationLc1883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 90⟩, ⟨(1 : F), 117647, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118808 + (1 : F) * rho 118809) * (relationLc1883 rho) = ((1 : F) * rho 118810)

def relationLc1884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118809) * (relationLc1884 rho) = ((1 : F) * rho 118811)

def relationLc1885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118808) * (relationLc1885 rho) = ((1 : F) * rho 118812)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118811) * ((1 : F) * rho 118812) = ((1 : F) * rho 118813)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118814) * ((1 : F) + (1 : F) * rho 118813) = ((1 : F) * rho 118811 + (1 : F) * rho 118812)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118815) * ((1 : F) + (-1 : F) * rho 118813) = ((1 : F) * rho 118810 + (-1 : F) * rho 118811 + (-1 : F) * rho 118812)

def relationLc1886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 90⟩], residual := [((1 : F), 118814)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117484) * (relationLc1886 rho) = ((1 : F) * rho 118816)

def relationLc1887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 90⟩], residual := [((1 : F), 118815)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117484) * (relationLc1887 rho) = ((1 : F) * rho 118817)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118808) * ((1 : F) * rho 118809) = ((1 : F) * rho 118818)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118808) * ((1 : F) * rho 118808) = ((1 : F) * rho 118819)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118809) * ((1 : F) * rho 118809) = ((1 : F) * rho 118820)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118821) * ((-1 : F) * rho 118819 + (1 : F) * rho 118820) = ((2 : F) * rho 118818)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118822) * ((2 : F) + (1 : F) * rho 118819 + (-1 : F) * rho 118820) = ((1 : F) * rho 118819 + (1 : F) * rho 118820)

def relationLc1888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 91⟩, ⟨(1 : F), 117647, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118821 + (1 : F) * rho 118822) * (relationLc1888 rho) = ((1 : F) * rho 118823)

def relationLc1889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118822) * (relationLc1889 rho) = ((1 : F) * rho 118824)

def relationLc1890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118821) * (relationLc1890 rho) = ((1 : F) * rho 118825)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118824) * ((1 : F) * rho 118825) = ((1 : F) * rho 118826)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118827) * ((1 : F) + (1 : F) * rho 118826) = ((1 : F) * rho 118824 + (1 : F) * rho 118825)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118828) * ((1 : F) + (-1 : F) * rho 118826) = ((1 : F) * rho 118823 + (-1 : F) * rho 118824 + (-1 : F) * rho 118825)

def relationLc1891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 91⟩], residual := [((1 : F), 118827)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117485) * (relationLc1891 rho) = ((1 : F) * rho 118829)

def relationLc1892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 91⟩], residual := [((1 : F), 118828)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117485) * (relationLc1892 rho) = ((1 : F) * rho 118830)

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118821) * ((1 : F) * rho 118822) = ((1 : F) * rho 118831)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118821) * ((1 : F) * rho 118821) = ((1 : F) * rho 118832)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118822) * ((1 : F) * rho 118822) = ((1 : F) * rho 118833)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118834) * ((-1 : F) * rho 118832 + (1 : F) * rho 118833) = ((2 : F) * rho 118831)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118835) * ((2 : F) + (1 : F) * rho 118832 + (-1 : F) * rho 118833) = ((1 : F) * rho 118832 + (1 : F) * rho 118833)

def relationLc1893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 92⟩, ⟨(1 : F), 117647, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118834 + (1 : F) * rho 118835) * (relationLc1893 rho) = ((1 : F) * rho 118836)

def relationLc1894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118835) * (relationLc1894 rho) = ((1 : F) * rho 118837)

def relationLc1895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118834) * (relationLc1895 rho) = ((1 : F) * rho 118838)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118837) * ((1 : F) * rho 118838) = ((1 : F) * rho 118839)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118840) * ((1 : F) + (1 : F) * rho 118839) = ((1 : F) * rho 118837 + (1 : F) * rho 118838)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118841) * ((1 : F) + (-1 : F) * rho 118839) = ((1 : F) * rho 118836 + (-1 : F) * rho 118837 + (-1 : F) * rho 118838)

def relationLc1896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 92⟩], residual := [((1 : F), 118840)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117486) * (relationLc1896 rho) = ((1 : F) * rho 118842)

def relationLc1897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 92⟩], residual := [((1 : F), 118841)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117486) * (relationLc1897 rho) = ((1 : F) * rho 118843)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118834) * ((1 : F) * rho 118835) = ((1 : F) * rho 118844)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118834) * ((1 : F) * rho 118834) = ((1 : F) * rho 118845)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118835) * ((1 : F) * rho 118835) = ((1 : F) * rho 118846)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118847) * ((-1 : F) * rho 118845 + (1 : F) * rho 118846) = ((2 : F) * rho 118844)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118848) * ((2 : F) + (1 : F) * rho 118845 + (-1 : F) * rho 118846) = ((1 : F) * rho 118845 + (1 : F) * rho 118846)

def relationLc1898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 93⟩, ⟨(1 : F), 117647, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118847 + (1 : F) * rho 118848) * (relationLc1898 rho) = ((1 : F) * rho 118849)

def relationLc1899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118848) * (relationLc1899 rho) = ((1 : F) * rho 118850)

def relationLc1900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118847) * (relationLc1900 rho) = ((1 : F) * rho 118851)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118850) * ((1 : F) * rho 118851) = ((1 : F) * rho 118852)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118853) * ((1 : F) + (1 : F) * rho 118852) = ((1 : F) * rho 118850 + (1 : F) * rho 118851)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118854) * ((1 : F) + (-1 : F) * rho 118852) = ((1 : F) * rho 118849 + (-1 : F) * rho 118850 + (-1 : F) * rho 118851)

def relationLc1901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 93⟩], residual := [((1 : F), 118853)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117487) * (relationLc1901 rho) = ((1 : F) * rho 118855)

def relationLc1902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 93⟩], residual := [((1 : F), 118854)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117487) * (relationLc1902 rho) = ((1 : F) * rho 118856)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118847) * ((1 : F) * rho 118848) = ((1 : F) * rho 118857)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118847) * ((1 : F) * rho 118847) = ((1 : F) * rho 118858)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118848) * ((1 : F) * rho 118848) = ((1 : F) * rho 118859)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118860) * ((-1 : F) * rho 118858 + (1 : F) * rho 118859) = ((2 : F) * rho 118857)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118861) * ((2 : F) + (1 : F) * rho 118858 + (-1 : F) * rho 118859) = ((1 : F) * rho 118858 + (1 : F) * rho 118859)

def relationLc1903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 94⟩, ⟨(1 : F), 117647, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118860 + (1 : F) * rho 118861) * (relationLc1903 rho) = ((1 : F) * rho 118862)

def relationLc1904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118861) * (relationLc1904 rho) = ((1 : F) * rho 118863)

def relationLc1905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118860) * (relationLc1905 rho) = ((1 : F) * rho 118864)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118863) * ((1 : F) * rho 118864) = ((1 : F) * rho 118865)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118866) * ((1 : F) + (1 : F) * rho 118865) = ((1 : F) * rho 118863 + (1 : F) * rho 118864)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118867) * ((1 : F) + (-1 : F) * rho 118865) = ((1 : F) * rho 118862 + (-1 : F) * rho 118863 + (-1 : F) * rho 118864)

def relationLc1906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 94⟩], residual := [((1 : F), 118866)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117488) * (relationLc1906 rho) = ((1 : F) * rho 118868)

def relationLc1907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 94⟩], residual := [((1 : F), 118867)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117488) * (relationLc1907 rho) = ((1 : F) * rho 118869)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118860) * ((1 : F) * rho 118861) = ((1 : F) * rho 118870)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118860) * ((1 : F) * rho 118860) = ((1 : F) * rho 118871)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118861) * ((1 : F) * rho 118861) = ((1 : F) * rho 118872)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118873) * ((-1 : F) * rho 118871 + (1 : F) * rho 118872) = ((2 : F) * rho 118870)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118874) * ((2 : F) + (1 : F) * rho 118871 + (-1 : F) * rho 118872) = ((1 : F) * rho 118871 + (1 : F) * rho 118872)

def relationLc1908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 95⟩, ⟨(1 : F), 117647, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118873 + (1 : F) * rho 118874) * (relationLc1908 rho) = ((1 : F) * rho 118875)

def relationLc1909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118874) * (relationLc1909 rho) = ((1 : F) * rho 118876)

def relationLc1910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118873) * (relationLc1910 rho) = ((1 : F) * rho 118877)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118876) * ((1 : F) * rho 118877) = ((1 : F) * rho 118878)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118879) * ((1 : F) + (1 : F) * rho 118878) = ((1 : F) * rho 118876 + (1 : F) * rho 118877)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118880) * ((1 : F) + (-1 : F) * rho 118878) = ((1 : F) * rho 118875 + (-1 : F) * rho 118876 + (-1 : F) * rho 118877)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109
