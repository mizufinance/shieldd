import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationRow2713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109259) * ((1 : F) * rho 109260) = ((1 : F) * rho 109269)

def relationRow2714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109259) * ((1 : F) * rho 109259) = ((1 : F) * rho 109270)

def relationRow2715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109260) * ((1 : F) * rho 109260) = ((1 : F) * rho 109271)

def relationRow2716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109272) * ((-1 : F) * rho 109270 + (1 : F) * rho 109271) = ((2 : F) * rho 109269)

def relationRow2717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109273) * ((2 : F) + (1 : F) * rho 109270 + (-1 : F) * rho 109271) = ((1 : F) * rho 109270 + (1 : F) * rho 109271)

def relationLc1688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 51⟩, ⟨(1 : F), 108618, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109272 + (1 : F) * rho 109273) * (relationLc1688 rho) = ((1 : F) * rho 109274)

def relationLc1689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109273) * (relationLc1689 rho) = ((1 : F) * rho 109275)

def relationLc1690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109272) * (relationLc1690 rho) = ((1 : F) * rho 109276)

def relationRow2721 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109275) * ((1 : F) * rho 109276) = ((1 : F) * rho 109277)

def relationRow2722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109278) * ((1 : F) + (1 : F) * rho 109277) = ((1 : F) * rho 109275 + (1 : F) * rho 109276)

def relationRow2723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109279) * ((1 : F) + (-1 : F) * rho 109277) = ((1 : F) * rho 109274 + (-1 : F) * rho 109275 + (-1 : F) * rho 109276)

def relationLc1691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 51⟩], residual := [((1 : F), 109278)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108416) * (relationLc1691 rho) = ((1 : F) * rho 109280)

def relationLc1692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 51⟩], residual := [((1 : F), 109279)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108416) * (relationLc1692 rho) = ((1 : F) * rho 109281)

def relationRow2726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109272) * ((1 : F) * rho 109273) = ((1 : F) * rho 109282)

def relationRow2727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109272) * ((1 : F) * rho 109272) = ((1 : F) * rho 109283)

def relationRow2728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109273) * ((1 : F) * rho 109273) = ((1 : F) * rho 109284)

def relationRow2729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109285) * ((-1 : F) * rho 109283 + (1 : F) * rho 109284) = ((2 : F) * rho 109282)

def relationRow2730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109286) * ((2 : F) + (1 : F) * rho 109283 + (-1 : F) * rho 109284) = ((1 : F) * rho 109283 + (1 : F) * rho 109284)

def relationLc1693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 52⟩, ⟨(1 : F), 108618, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109285 + (1 : F) * rho 109286) * (relationLc1693 rho) = ((1 : F) * rho 109287)

def relationLc1694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109286) * (relationLc1694 rho) = ((1 : F) * rho 109288)

def relationLc1695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109285) * (relationLc1695 rho) = ((1 : F) * rho 109289)

def relationRow2734 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109288) * ((1 : F) * rho 109289) = ((1 : F) * rho 109290)

def relationRow2735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109291) * ((1 : F) + (1 : F) * rho 109290) = ((1 : F) * rho 109288 + (1 : F) * rho 109289)

def relationRow2736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109292) * ((1 : F) + (-1 : F) * rho 109290) = ((1 : F) * rho 109287 + (-1 : F) * rho 109288 + (-1 : F) * rho 109289)

def relationLc1696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 52⟩], residual := [((1 : F), 109291)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108417) * (relationLc1696 rho) = ((1 : F) * rho 109293)

def relationLc1697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 52⟩], residual := [((1 : F), 109292)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108417) * (relationLc1697 rho) = ((1 : F) * rho 109294)

def relationRow2739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109285) * ((1 : F) * rho 109286) = ((1 : F) * rho 109295)

def relationRow2740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109285) * ((1 : F) * rho 109285) = ((1 : F) * rho 109296)

def relationRow2741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109286) * ((1 : F) * rho 109286) = ((1 : F) * rho 109297)

def relationRow2742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109298) * ((-1 : F) * rho 109296 + (1 : F) * rho 109297) = ((2 : F) * rho 109295)

def relationRow2743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109299) * ((2 : F) + (1 : F) * rho 109296 + (-1 : F) * rho 109297) = ((1 : F) * rho 109296 + (1 : F) * rho 109297)

def relationLc1698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 53⟩, ⟨(1 : F), 108618, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109298 + (1 : F) * rho 109299) * (relationLc1698 rho) = ((1 : F) * rho 109300)

def relationLc1699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109299) * (relationLc1699 rho) = ((1 : F) * rho 109301)

def relationLc1700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109298) * (relationLc1700 rho) = ((1 : F) * rho 109302)

def relationRow2747 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109301) * ((1 : F) * rho 109302) = ((1 : F) * rho 109303)

def relationRow2748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109304) * ((1 : F) + (1 : F) * rho 109303) = ((1 : F) * rho 109301 + (1 : F) * rho 109302)

def relationRow2749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109305) * ((1 : F) + (-1 : F) * rho 109303) = ((1 : F) * rho 109300 + (-1 : F) * rho 109301 + (-1 : F) * rho 109302)

def relationLc1701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 53⟩], residual := [((1 : F), 109304)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108418) * (relationLc1701 rho) = ((1 : F) * rho 109306)

def relationLc1702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 53⟩], residual := [((1 : F), 109305)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108418) * (relationLc1702 rho) = ((1 : F) * rho 109307)

def relationRow2752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109298) * ((1 : F) * rho 109299) = ((1 : F) * rho 109308)

def relationRow2753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109298) * ((1 : F) * rho 109298) = ((1 : F) * rho 109309)

def relationRow2754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109299) * ((1 : F) * rho 109299) = ((1 : F) * rho 109310)

def relationRow2755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109311) * ((-1 : F) * rho 109309 + (1 : F) * rho 109310) = ((2 : F) * rho 109308)

def relationRow2756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109312) * ((2 : F) + (1 : F) * rho 109309 + (-1 : F) * rho 109310) = ((1 : F) * rho 109309 + (1 : F) * rho 109310)

def relationLc1703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 54⟩, ⟨(1 : F), 108618, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109311 + (1 : F) * rho 109312) * (relationLc1703 rho) = ((1 : F) * rho 109313)

def relationLc1704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109312) * (relationLc1704 rho) = ((1 : F) * rho 109314)

def relationLc1705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109311) * (relationLc1705 rho) = ((1 : F) * rho 109315)

def relationRow2760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109314) * ((1 : F) * rho 109315) = ((1 : F) * rho 109316)

def relationRow2761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109317) * ((1 : F) + (1 : F) * rho 109316) = ((1 : F) * rho 109314 + (1 : F) * rho 109315)

def relationRow2762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109318) * ((1 : F) + (-1 : F) * rho 109316) = ((1 : F) * rho 109313 + (-1 : F) * rho 109314 + (-1 : F) * rho 109315)

def relationLc1706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 54⟩], residual := [((1 : F), 109317)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108419) * (relationLc1706 rho) = ((1 : F) * rho 109319)

def relationLc1707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 54⟩], residual := [((1 : F), 109318)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108419) * (relationLc1707 rho) = ((1 : F) * rho 109320)

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109311) * ((1 : F) * rho 109312) = ((1 : F) * rho 109321)

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109311) * ((1 : F) * rho 109311) = ((1 : F) * rho 109322)

def relationRow2767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109312) * ((1 : F) * rho 109312) = ((1 : F) * rho 109323)

def relationRow2768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109324) * ((-1 : F) * rho 109322 + (1 : F) * rho 109323) = ((2 : F) * rho 109321)

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109325) * ((2 : F) + (1 : F) * rho 109322 + (-1 : F) * rho 109323) = ((1 : F) * rho 109322 + (1 : F) * rho 109323)

def relationLc1708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 55⟩, ⟨(1 : F), 108618, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109324 + (1 : F) * rho 109325) * (relationLc1708 rho) = ((1 : F) * rho 109326)

def relationLc1709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109325) * (relationLc1709 rho) = ((1 : F) * rho 109327)

def relationLc1710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109324) * (relationLc1710 rho) = ((1 : F) * rho 109328)

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109327) * ((1 : F) * rho 109328) = ((1 : F) * rho 109329)

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109330) * ((1 : F) + (1 : F) * rho 109329) = ((1 : F) * rho 109327 + (1 : F) * rho 109328)

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109331) * ((1 : F) + (-1 : F) * rho 109329) = ((1 : F) * rho 109326 + (-1 : F) * rho 109327 + (-1 : F) * rho 109328)

def relationLc1711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 55⟩], residual := [((1 : F), 109330)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108420) * (relationLc1711 rho) = ((1 : F) * rho 109332)

def relationLc1712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 55⟩], residual := [((1 : F), 109331)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108420) * (relationLc1712 rho) = ((1 : F) * rho 109333)

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109324) * ((1 : F) * rho 109325) = ((1 : F) * rho 109334)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109324) * ((1 : F) * rho 109324) = ((1 : F) * rho 109335)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109325) * ((1 : F) * rho 109325) = ((1 : F) * rho 109336)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109337) * ((-1 : F) * rho 109335 + (1 : F) * rho 109336) = ((2 : F) * rho 109334)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109338) * ((2 : F) + (1 : F) * rho 109335 + (-1 : F) * rho 109336) = ((1 : F) * rho 109335 + (1 : F) * rho 109336)

def relationLc1713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 56⟩, ⟨(1 : F), 108618, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109337 + (1 : F) * rho 109338) * (relationLc1713 rho) = ((1 : F) * rho 109339)

def relationLc1714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109338) * (relationLc1714 rho) = ((1 : F) * rho 109340)

def relationLc1715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109337) * (relationLc1715 rho) = ((1 : F) * rho 109341)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109340) * ((1 : F) * rho 109341) = ((1 : F) * rho 109342)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109343) * ((1 : F) + (1 : F) * rho 109342) = ((1 : F) * rho 109340 + (1 : F) * rho 109341)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109344) * ((1 : F) + (-1 : F) * rho 109342) = ((1 : F) * rho 109339 + (-1 : F) * rho 109340 + (-1 : F) * rho 109341)

def relationLc1716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 56⟩], residual := [((1 : F), 109343)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108421) * (relationLc1716 rho) = ((1 : F) * rho 109345)

def relationLc1717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 56⟩], residual := [((1 : F), 109344)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108421) * (relationLc1717 rho) = ((1 : F) * rho 109346)

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109337) * ((1 : F) * rho 109338) = ((1 : F) * rho 109347)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109337) * ((1 : F) * rho 109337) = ((1 : F) * rho 109348)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109338) * ((1 : F) * rho 109338) = ((1 : F) * rho 109349)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109350) * ((-1 : F) * rho 109348 + (1 : F) * rho 109349) = ((2 : F) * rho 109347)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109351) * ((2 : F) + (1 : F) * rho 109348 + (-1 : F) * rho 109349) = ((1 : F) * rho 109348 + (1 : F) * rho 109349)

def relationLc1718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 57⟩, ⟨(1 : F), 108618, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109350 + (1 : F) * rho 109351) * (relationLc1718 rho) = ((1 : F) * rho 109352)

def relationLc1719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109351) * (relationLc1719 rho) = ((1 : F) * rho 109353)

def relationLc1720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109350) * (relationLc1720 rho) = ((1 : F) * rho 109354)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109353) * ((1 : F) * rho 109354) = ((1 : F) * rho 109355)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109356) * ((1 : F) + (1 : F) * rho 109355) = ((1 : F) * rho 109353 + (1 : F) * rho 109354)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109357) * ((1 : F) + (-1 : F) * rho 109355) = ((1 : F) * rho 109352 + (-1 : F) * rho 109353 + (-1 : F) * rho 109354)

def relationLc1721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 57⟩], residual := [((1 : F), 109356)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108422) * (relationLc1721 rho) = ((1 : F) * rho 109358)

def relationLc1722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 57⟩], residual := [((1 : F), 109357)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108422) * (relationLc1722 rho) = ((1 : F) * rho 109359)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109350) * ((1 : F) * rho 109351) = ((1 : F) * rho 109360)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109350) * ((1 : F) * rho 109350) = ((1 : F) * rho 109361)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109351) * ((1 : F) * rho 109351) = ((1 : F) * rho 109362)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109363) * ((-1 : F) * rho 109361 + (1 : F) * rho 109362) = ((2 : F) * rho 109360)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109364) * ((2 : F) + (1 : F) * rho 109361 + (-1 : F) * rho 109362) = ((1 : F) * rho 109361 + (1 : F) * rho 109362)

def relationLc1723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 58⟩, ⟨(1 : F), 108618, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109363 + (1 : F) * rho 109364) * (relationLc1723 rho) = ((1 : F) * rho 109365)

def relationLc1724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109364) * (relationLc1724 rho) = ((1 : F) * rho 109366)

def relationLc1725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109363) * (relationLc1725 rho) = ((1 : F) * rho 109367)

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109366) * ((1 : F) * rho 109367) = ((1 : F) * rho 109368)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109369) * ((1 : F) + (1 : F) * rho 109368) = ((1 : F) * rho 109366 + (1 : F) * rho 109367)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109370) * ((1 : F) + (-1 : F) * rho 109368) = ((1 : F) * rho 109365 + (-1 : F) * rho 109366 + (-1 : F) * rho 109367)

def relationLc1726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 58⟩], residual := [((1 : F), 109369)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108423) * (relationLc1726 rho) = ((1 : F) * rho 109371)

def relationLc1727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 58⟩], residual := [((1 : F), 109370)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108423) * (relationLc1727 rho) = ((1 : F) * rho 109372)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109363) * ((1 : F) * rho 109364) = ((1 : F) * rho 109373)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109363) * ((1 : F) * rho 109363) = ((1 : F) * rho 109374)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109364) * ((1 : F) * rho 109364) = ((1 : F) * rho 109375)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109376) * ((-1 : F) * rho 109374 + (1 : F) * rho 109375) = ((2 : F) * rho 109373)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109377) * ((2 : F) + (1 : F) * rho 109374 + (-1 : F) * rho 109375) = ((1 : F) * rho 109374 + (1 : F) * rho 109375)

def relationLc1728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 59⟩, ⟨(1 : F), 108618, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109376 + (1 : F) * rho 109377) * (relationLc1728 rho) = ((1 : F) * rho 109378)

def relationLc1729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109377) * (relationLc1729 rho) = ((1 : F) * rho 109379)

def relationLc1730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109376) * (relationLc1730 rho) = ((1 : F) * rho 109380)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109379) * ((1 : F) * rho 109380) = ((1 : F) * rho 109381)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109382) * ((1 : F) + (1 : F) * rho 109381) = ((1 : F) * rho 109379 + (1 : F) * rho 109380)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109383) * ((1 : F) + (-1 : F) * rho 109381) = ((1 : F) * rho 109378 + (-1 : F) * rho 109379 + (-1 : F) * rho 109380)

def relationLc1731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 59⟩], residual := [((1 : F), 109382)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108424) * (relationLc1731 rho) = ((1 : F) * rho 109384)

def relationLc1732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 59⟩], residual := [((1 : F), 109383)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108424) * (relationLc1732 rho) = ((1 : F) * rho 109385)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109376) * ((1 : F) * rho 109377) = ((1 : F) * rho 109386)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109376) * ((1 : F) * rho 109376) = ((1 : F) * rho 109387)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109377) * ((1 : F) * rho 109377) = ((1 : F) * rho 109388)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109389) * ((-1 : F) * rho 109387 + (1 : F) * rho 109388) = ((2 : F) * rho 109386)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109390) * ((2 : F) + (1 : F) * rho 109387 + (-1 : F) * rho 109388) = ((1 : F) * rho 109387 + (1 : F) * rho 109388)

def relationLc1733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 60⟩, ⟨(1 : F), 108618, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109389 + (1 : F) * rho 109390) * (relationLc1733 rho) = ((1 : F) * rho 109391)

def relationLc1734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109390) * (relationLc1734 rho) = ((1 : F) * rho 109392)

def relationLc1735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109389) * (relationLc1735 rho) = ((1 : F) * rho 109393)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109392) * ((1 : F) * rho 109393) = ((1 : F) * rho 109394)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109395) * ((1 : F) + (1 : F) * rho 109394) = ((1 : F) * rho 109392 + (1 : F) * rho 109393)

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109396) * ((1 : F) + (-1 : F) * rho 109394) = ((1 : F) * rho 109391 + (-1 : F) * rho 109392 + (-1 : F) * rho 109393)

def relationLc1736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 60⟩], residual := [((1 : F), 109395)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108425) * (relationLc1736 rho) = ((1 : F) * rho 109397)

def relationLc1737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 60⟩], residual := [((1 : F), 109396)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108425) * (relationLc1737 rho) = ((1 : F) * rho 109398)

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109389) * ((1 : F) * rho 109390) = ((1 : F) * rho 109399)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109389) * ((1 : F) * rho 109389) = ((1 : F) * rho 109400)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109390) * ((1 : F) * rho 109390) = ((1 : F) * rho 109401)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109402) * ((-1 : F) * rho 109400 + (1 : F) * rho 109401) = ((2 : F) * rho 109399)

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109403) * ((2 : F) + (1 : F) * rho 109400 + (-1 : F) * rho 109401) = ((1 : F) * rho 109400 + (1 : F) * rho 109401)

def relationLc1738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 61⟩, ⟨(1 : F), 108618, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109402 + (1 : F) * rho 109403) * (relationLc1738 rho) = ((1 : F) * rho 109404)

def relationLc1739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109403) * (relationLc1739 rho) = ((1 : F) * rho 109405)

def relationLc1740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109402) * (relationLc1740 rho) = ((1 : F) * rho 109406)

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109405) * ((1 : F) * rho 109406) = ((1 : F) * rho 109407)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109408) * ((1 : F) + (1 : F) * rho 109407) = ((1 : F) * rho 109405 + (1 : F) * rho 109406)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109409) * ((1 : F) + (-1 : F) * rho 109407) = ((1 : F) * rho 109404 + (-1 : F) * rho 109405 + (-1 : F) * rho 109406)

def relationLc1741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 61⟩], residual := [((1 : F), 109408)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108426) * (relationLc1741 rho) = ((1 : F) * rho 109410)

def relationLc1742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 61⟩], residual := [((1 : F), 109409)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108426) * (relationLc1742 rho) = ((1 : F) * rho 109411)

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109402) * ((1 : F) * rho 109403) = ((1 : F) * rho 109412)

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109402) * ((1 : F) * rho 109402) = ((1 : F) * rho 109413)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109403) * ((1 : F) * rho 109403) = ((1 : F) * rho 109414)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109415) * ((-1 : F) * rho 109413 + (1 : F) * rho 109414) = ((2 : F) * rho 109412)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109416) * ((2 : F) + (1 : F) * rho 109413 + (-1 : F) * rho 109414) = ((1 : F) * rho 109413 + (1 : F) * rho 109414)

def relationLc1743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 62⟩, ⟨(1 : F), 108618, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109415 + (1 : F) * rho 109416) * (relationLc1743 rho) = ((1 : F) * rho 109417)

def relationLc1744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109416) * (relationLc1744 rho) = ((1 : F) * rho 109418)

def relationLc1745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109415) * (relationLc1745 rho) = ((1 : F) * rho 109419)

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109418) * ((1 : F) * rho 109419) = ((1 : F) * rho 109420)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109421) * ((1 : F) + (1 : F) * rho 109420) = ((1 : F) * rho 109418 + (1 : F) * rho 109419)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109422) * ((1 : F) + (-1 : F) * rho 109420) = ((1 : F) * rho 109417 + (-1 : F) * rho 109418 + (-1 : F) * rho 109419)

def relationLc1746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 62⟩], residual := [((1 : F), 109421)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108427) * (relationLc1746 rho) = ((1 : F) * rho 109423)

def relationLc1747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 62⟩], residual := [((1 : F), 109422)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108427) * (relationLc1747 rho) = ((1 : F) * rho 109424)

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109415) * ((1 : F) * rho 109416) = ((1 : F) * rho 109425)

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109415) * ((1 : F) * rho 109415) = ((1 : F) * rho 109426)

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109416) * ((1 : F) * rho 109416) = ((1 : F) * rho 109427)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109428) * ((-1 : F) * rho 109426 + (1 : F) * rho 109427) = ((2 : F) * rho 109425)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109429) * ((2 : F) + (1 : F) * rho 109426 + (-1 : F) * rho 109427) = ((1 : F) * rho 109426 + (1 : F) * rho 109427)

def relationLc1748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 63⟩, ⟨(1 : F), 108618, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109428 + (1 : F) * rho 109429) * (relationLc1748 rho) = ((1 : F) * rho 109430)

def relationLc1749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109429) * (relationLc1749 rho) = ((1 : F) * rho 109431)

def relationLc1750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109428) * (relationLc1750 rho) = ((1 : F) * rho 109432)

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109431) * ((1 : F) * rho 109432) = ((1 : F) * rho 109433)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109434) * ((1 : F) + (1 : F) * rho 109433) = ((1 : F) * rho 109431 + (1 : F) * rho 109432)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109435) * ((1 : F) + (-1 : F) * rho 109433) = ((1 : F) * rho 109430 + (-1 : F) * rho 109431 + (-1 : F) * rho 109432)

def relationLc1751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 63⟩], residual := [((1 : F), 109434)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108428) * (relationLc1751 rho) = ((1 : F) * rho 109436)

def relationLc1752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 63⟩], residual := [((1 : F), 109435)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108428) * (relationLc1752 rho) = ((1 : F) * rho 109437)

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109428) * ((1 : F) * rho 109429) = ((1 : F) * rho 109438)

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109428) * ((1 : F) * rho 109428) = ((1 : F) * rho 109439)

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109429) * ((1 : F) * rho 109429) = ((1 : F) * rho 109440)

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109441) * ((-1 : F) * rho 109439 + (1 : F) * rho 109440) = ((2 : F) * rho 109438)

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109442) * ((2 : F) + (1 : F) * rho 109439 + (-1 : F) * rho 109440) = ((1 : F) * rho 109439 + (1 : F) * rho 109440)

def relationLc1753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 64⟩, ⟨(1 : F), 108618, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109441 + (1 : F) * rho 109442) * (relationLc1753 rho) = ((1 : F) * rho 109443)

def relationLc1754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109442) * (relationLc1754 rho) = ((1 : F) * rho 109444)

def relationLc1755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109441) * (relationLc1755 rho) = ((1 : F) * rho 109445)

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109444) * ((1 : F) * rho 109445) = ((1 : F) * rho 109446)

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109447) * ((1 : F) + (1 : F) * rho 109446) = ((1 : F) * rho 109444 + (1 : F) * rho 109445)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109448) * ((1 : F) + (-1 : F) * rho 109446) = ((1 : F) * rho 109443 + (-1 : F) * rho 109444 + (-1 : F) * rho 109445)

def relationLc1756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 64⟩], residual := [((1 : F), 109447)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108429) * (relationLc1756 rho) = ((1 : F) * rho 109449)

def relationLc1757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 64⟩], residual := [((1 : F), 109448)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108429) * (relationLc1757 rho) = ((1 : F) * rho 109450)

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109441) * ((1 : F) * rho 109442) = ((1 : F) * rho 109451)

def relationRow2896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109441) * ((1 : F) * rho 109441) = ((1 : F) * rho 109452)

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109442) * ((1 : F) * rho 109442) = ((1 : F) * rho 109453)

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109454) * ((-1 : F) * rho 109452 + (1 : F) * rho 109453) = ((2 : F) * rho 109451)

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109455) * ((2 : F) + (1 : F) * rho 109452 + (-1 : F) * rho 109453) = ((1 : F) * rho 109452 + (1 : F) * rho 109453)

def relationLc1758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 65⟩, ⟨(1 : F), 108618, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109454 + (1 : F) * rho 109455) * (relationLc1758 rho) = ((1 : F) * rho 109456)

def relationLc1759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109455) * (relationLc1759 rho) = ((1 : F) * rho 109457)

def relationLc1760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109454) * (relationLc1760 rho) = ((1 : F) * rho 109458)

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109457) * ((1 : F) * rho 109458) = ((1 : F) * rho 109459)

def relationRow2904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109460) * ((1 : F) + (1 : F) * rho 109459) = ((1 : F) * rho 109457 + (1 : F) * rho 109458)

def relationRow2905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109461) * ((1 : F) + (-1 : F) * rho 109459) = ((1 : F) * rho 109456 + (-1 : F) * rho 109457 + (-1 : F) * rho 109458)

def relationLc1761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 65⟩], residual := [((1 : F), 109460)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108430) * (relationLc1761 rho) = ((1 : F) * rho 109462)

def relationLc1762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 65⟩], residual := [((1 : F), 109461)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108430) * (relationLc1762 rho) = ((1 : F) * rho 109463)

def relationRow2908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109454) * ((1 : F) * rho 109455) = ((1 : F) * rho 109464)

def relationRow2909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109454) * ((1 : F) * rho 109454) = ((1 : F) * rho 109465)

def relationRow2910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109455) * ((1 : F) * rho 109455) = ((1 : F) * rho 109466)

def relationRow2911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109467) * ((-1 : F) * rho 109465 + (1 : F) * rho 109466) = ((2 : F) * rho 109464)

def relationRow2912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109468) * ((2 : F) + (1 : F) * rho 109465 + (-1 : F) * rho 109466) = ((1 : F) * rho 109465 + (1 : F) * rho 109466)

def relationLc1763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 66⟩, ⟨(1 : F), 108618, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109467 + (1 : F) * rho 109468) * (relationLc1763 rho) = ((1 : F) * rho 109469)

def relationLc1764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109468) * (relationLc1764 rho) = ((1 : F) * rho 109470)

def relationLc1765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109467) * (relationLc1765 rho) = ((1 : F) * rho 109471)

def relationRow2916 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109470) * ((1 : F) * rho 109471) = ((1 : F) * rho 109472)

def relationRow2917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109473) * ((1 : F) + (1 : F) * rho 109472) = ((1 : F) * rho 109470 + (1 : F) * rho 109471)

def relationRow2918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109474) * ((1 : F) + (-1 : F) * rho 109472) = ((1 : F) * rho 109469 + (-1 : F) * rho 109470 + (-1 : F) * rho 109471)

def relationLc1766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 66⟩], residual := [((1 : F), 109473)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108431) * (relationLc1766 rho) = ((1 : F) * rho 109475)

def relationLc1767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 66⟩], residual := [((1 : F), 109474)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108431) * (relationLc1767 rho) = ((1 : F) * rho 109476)

def relationRow2921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109467) * ((1 : F) * rho 109468) = ((1 : F) * rho 109477)

def relationRow2922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109467) * ((1 : F) * rho 109467) = ((1 : F) * rho 109478)

def relationRow2923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109468) * ((1 : F) * rho 109468) = ((1 : F) * rho 109479)

def relationRow2924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109480) * ((-1 : F) * rho 109478 + (1 : F) * rho 109479) = ((2 : F) * rho 109477)

def relationRow2925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109481) * ((2 : F) + (1 : F) * rho 109478 + (-1 : F) * rho 109479) = ((1 : F) * rho 109478 + (1 : F) * rho 109479)

def relationLc1768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 67⟩, ⟨(1 : F), 108618, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109480 + (1 : F) * rho 109481) * (relationLc1768 rho) = ((1 : F) * rho 109482)

def relationLc1769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109481) * (relationLc1769 rho) = ((1 : F) * rho 109483)

def relationLc1770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109480) * (relationLc1770 rho) = ((1 : F) * rho 109484)

def relationRow2929 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109483) * ((1 : F) * rho 109484) = ((1 : F) * rho 109485)

def relationRow2930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109486) * ((1 : F) + (1 : F) * rho 109485) = ((1 : F) * rho 109483 + (1 : F) * rho 109484)

def relationRow2931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109487) * ((1 : F) + (-1 : F) * rho 109485) = ((1 : F) * rho 109482 + (-1 : F) * rho 109483 + (-1 : F) * rho 109484)

def relationLc1771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 67⟩], residual := [((1 : F), 109486)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108432) * (relationLc1771 rho) = ((1 : F) * rho 109488)

def relationLc1772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 67⟩], residual := [((1 : F), 109487)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108432) * (relationLc1772 rho) = ((1 : F) * rho 109489)

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109480) * ((1 : F) * rho 109481) = ((1 : F) * rho 109490)

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109480) * ((1 : F) * rho 109480) = ((1 : F) * rho 109491)

def relationRow2936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109481) * ((1 : F) * rho 109481) = ((1 : F) * rho 109492)

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109493) * ((-1 : F) * rho 109491 + (1 : F) * rho 109492) = ((2 : F) * rho 109490)

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109494) * ((2 : F) + (1 : F) * rho 109491 + (-1 : F) * rho 109492) = ((1 : F) * rho 109491 + (1 : F) * rho 109492)

def relationLc1773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 68⟩, ⟨(1 : F), 108618, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109493 + (1 : F) * rho 109494) * (relationLc1773 rho) = ((1 : F) * rho 109495)

def relationLc1774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109494) * (relationLc1774 rho) = ((1 : F) * rho 109496)

def relationLc1775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109493) * (relationLc1775 rho) = ((1 : F) * rho 109497)

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109496) * ((1 : F) * rho 109497) = ((1 : F) * rho 109498)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109499) * ((1 : F) + (1 : F) * rho 109498) = ((1 : F) * rho 109496 + (1 : F) * rho 109497)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109500) * ((1 : F) + (-1 : F) * rho 109498) = ((1 : F) * rho 109495 + (-1 : F) * rho 109496 + (-1 : F) * rho 109497)

def relationLc1776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 68⟩], residual := [((1 : F), 109499)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108433) * (relationLc1776 rho) = ((1 : F) * rho 109501)

def relationLc1777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 68⟩], residual := [((1 : F), 109500)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108433) * (relationLc1777 rho) = ((1 : F) * rho 109502)

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109493) * ((1 : F) * rho 109494) = ((1 : F) * rho 109503)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109493) * ((1 : F) * rho 109493) = ((1 : F) * rho 109504)

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109494) * ((1 : F) * rho 109494) = ((1 : F) * rho 109505)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109506) * ((-1 : F) * rho 109504 + (1 : F) * rho 109505) = ((2 : F) * rho 109503)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109507) * ((2 : F) + (1 : F) * rho 109504 + (-1 : F) * rho 109505) = ((1 : F) * rho 109504 + (1 : F) * rho 109505)

def relationLc1778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 69⟩, ⟨(1 : F), 108618, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109506 + (1 : F) * rho 109507) * (relationLc1778 rho) = ((1 : F) * rho 109508)

def relationLc1779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109507) * (relationLc1779 rho) = ((1 : F) * rho 109509)

def relationLc1780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109506) * (relationLc1780 rho) = ((1 : F) * rho 109510)

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109509) * ((1 : F) * rho 109510) = ((1 : F) * rho 109511)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109512) * ((1 : F) + (1 : F) * rho 109511) = ((1 : F) * rho 109509 + (1 : F) * rho 109510)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109513) * ((1 : F) + (-1 : F) * rho 109511) = ((1 : F) * rho 109508 + (-1 : F) * rho 109509 + (-1 : F) * rho 109510)

def relationLc1781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 69⟩], residual := [((1 : F), 109512)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108434) * (relationLc1781 rho) = ((1 : F) * rho 109514)

def relationLc1782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 69⟩], residual := [((1 : F), 109513)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108434) * (relationLc1782 rho) = ((1 : F) * rho 109515)

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109506) * ((1 : F) * rho 109507) = ((1 : F) * rho 109516)

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109506) * ((1 : F) * rho 109506) = ((1 : F) * rho 109517)

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109507) * ((1 : F) * rho 109507) = ((1 : F) * rho 109518)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109519) * ((-1 : F) * rho 109517 + (1 : F) * rho 109518) = ((2 : F) * rho 109516)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109520) * ((2 : F) + (1 : F) * rho 109517 + (-1 : F) * rho 109518) = ((1 : F) * rho 109517 + (1 : F) * rho 109518)

def relationLc1783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 70⟩, ⟨(1 : F), 108618, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109519 + (1 : F) * rho 109520) * (relationLc1783 rho) = ((1 : F) * rho 109521)

def relationLc1784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109520) * (relationLc1784 rho) = ((1 : F) * rho 109522)

def relationLc1785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109519) * (relationLc1785 rho) = ((1 : F) * rho 109523)

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109522) * ((1 : F) * rho 109523) = ((1 : F) * rho 109524)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109525) * ((1 : F) + (1 : F) * rho 109524) = ((1 : F) * rho 109522 + (1 : F) * rho 109523)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109526) * ((1 : F) + (-1 : F) * rho 109524) = ((1 : F) * rho 109521 + (-1 : F) * rho 109522 + (-1 : F) * rho 109523)

def relationLc1786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 70⟩], residual := [((1 : F), 109525)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108435) * (relationLc1786 rho) = ((1 : F) * rho 109527)

def relationLc1787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 70⟩], residual := [((1 : F), 109526)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108435) * (relationLc1787 rho) = ((1 : F) * rho 109528)

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109519) * ((1 : F) * rho 109520) = ((1 : F) * rho 109529)

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109519) * ((1 : F) * rho 109519) = ((1 : F) * rho 109530)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109520) * ((1 : F) * rho 109520) = ((1 : F) * rho 109531)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109532) * ((-1 : F) * rho 109530 + (1 : F) * rho 109531) = ((2 : F) * rho 109529)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109533) * ((2 : F) + (1 : F) * rho 109530 + (-1 : F) * rho 109531) = ((1 : F) * rho 109530 + (1 : F) * rho 109531)

def relationLc1788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 71⟩, ⟨(1 : F), 108618, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109532 + (1 : F) * rho 109533) * (relationLc1788 rho) = ((1 : F) * rho 109534)

def relationLc1789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109533) * (relationLc1789 rho) = ((1 : F) * rho 109535)

def relationLc1790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109532) * (relationLc1790 rho) = ((1 : F) * rho 109536)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109535) * ((1 : F) * rho 109536) = ((1 : F) * rho 109537)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109538) * ((1 : F) + (1 : F) * rho 109537) = ((1 : F) * rho 109535 + (1 : F) * rho 109536)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109539) * ((1 : F) + (-1 : F) * rho 109537) = ((1 : F) * rho 109534 + (-1 : F) * rho 109535 + (-1 : F) * rho 109536)

def relationLc1791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 71⟩], residual := [((1 : F), 109538)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108436) * (relationLc1791 rho) = ((1 : F) * rho 109540)

def relationLc1792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 71⟩], residual := [((1 : F), 109539)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108436) * (relationLc1792 rho) = ((1 : F) * rho 109541)

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109532) * ((1 : F) * rho 109533) = ((1 : F) * rho 109542)

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109532) * ((1 : F) * rho 109532) = ((1 : F) * rho 109543)

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109533) * ((1 : F) * rho 109533) = ((1 : F) * rho 109544)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109545) * ((-1 : F) * rho 109543 + (1 : F) * rho 109544) = ((2 : F) * rho 109542)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109546) * ((2 : F) + (1 : F) * rho 109543 + (-1 : F) * rho 109544) = ((1 : F) * rho 109543 + (1 : F) * rho 109544)

def relationLc1793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 72⟩, ⟨(1 : F), 108618, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109545 + (1 : F) * rho 109546) * (relationLc1793 rho) = ((1 : F) * rho 109547)

def relationLc1794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109546) * (relationLc1794 rho) = ((1 : F) * rho 109548)

def relationLc1795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109545) * (relationLc1795 rho) = ((1 : F) * rho 109549)

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109548) * ((1 : F) * rho 109549) = ((1 : F) * rho 109550)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109551) * ((1 : F) + (1 : F) * rho 109550) = ((1 : F) * rho 109548 + (1 : F) * rho 109549)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109552) * ((1 : F) + (-1 : F) * rho 109550) = ((1 : F) * rho 109547 + (-1 : F) * rho 109548 + (-1 : F) * rho 109549)

def relationLc1796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 72⟩], residual := [((1 : F), 109551)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108437) * (relationLc1796 rho) = ((1 : F) * rho 109553)

def relationLc1797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 72⟩], residual := [((1 : F), 109552)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108437) * (relationLc1797 rho) = ((1 : F) * rho 109554)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109545) * ((1 : F) * rho 109546) = ((1 : F) * rho 109555)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109545) * ((1 : F) * rho 109545) = ((1 : F) * rho 109556)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109546) * ((1 : F) * rho 109546) = ((1 : F) * rho 109557)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109558) * ((-1 : F) * rho 109556 + (1 : F) * rho 109557) = ((2 : F) * rho 109555)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109559) * ((2 : F) + (1 : F) * rho 109556 + (-1 : F) * rho 109557) = ((1 : F) * rho 109556 + (1 : F) * rho 109557)

def relationLc1798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 73⟩, ⟨(1 : F), 108618, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109558 + (1 : F) * rho 109559) * (relationLc1798 rho) = ((1 : F) * rho 109560)

def relationLc1799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109559) * (relationLc1799 rho) = ((1 : F) * rho 109561)

def relationLc1800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109558) * (relationLc1800 rho) = ((1 : F) * rho 109562)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109561) * ((1 : F) * rho 109562) = ((1 : F) * rho 109563)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109564) * ((1 : F) + (1 : F) * rho 109563) = ((1 : F) * rho 109561 + (1 : F) * rho 109562)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109565) * ((1 : F) + (-1 : F) * rho 109563) = ((1 : F) * rho 109560 + (-1 : F) * rho 109561 + (-1 : F) * rho 109562)

def relationLc1801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 73⟩], residual := [((1 : F), 109564)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108438) * (relationLc1801 rho) = ((1 : F) * rho 109566)

def relationLc1802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 73⟩], residual := [((1 : F), 109565)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108438) * (relationLc1802 rho) = ((1 : F) * rho 109567)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109558) * ((1 : F) * rho 109559) = ((1 : F) * rho 109568)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109558) * ((1 : F) * rho 109558) = ((1 : F) * rho 109569)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109559) * ((1 : F) * rho 109559) = ((1 : F) * rho 109570)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109571) * ((-1 : F) * rho 109569 + (1 : F) * rho 109570) = ((2 : F) * rho 109568)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109572) * ((2 : F) + (1 : F) * rho 109569 + (-1 : F) * rho 109570) = ((1 : F) * rho 109569 + (1 : F) * rho 109570)

def relationLc1803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 74⟩, ⟨(1 : F), 108618, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109571 + (1 : F) * rho 109572) * (relationLc1803 rho) = ((1 : F) * rho 109573)

def relationLc1804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109572) * (relationLc1804 rho) = ((1 : F) * rho 109574)

def relationLc1805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109571) * (relationLc1805 rho) = ((1 : F) * rho 109575)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109574) * ((1 : F) * rho 109575) = ((1 : F) * rho 109576)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109577) * ((1 : F) + (1 : F) * rho 109576) = ((1 : F) * rho 109574 + (1 : F) * rho 109575)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109578) * ((1 : F) + (-1 : F) * rho 109576) = ((1 : F) * rho 109573 + (-1 : F) * rho 109574 + (-1 : F) * rho 109575)

def relationLc1806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 74⟩], residual := [((1 : F), 109577)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108439) * (relationLc1806 rho) = ((1 : F) * rho 109579)

def relationLc1807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 74⟩], residual := [((1 : F), 109578)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108439) * (relationLc1807 rho) = ((1 : F) * rho 109580)

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109571) * ((1 : F) * rho 109572) = ((1 : F) * rho 109581)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109571) * ((1 : F) * rho 109571) = ((1 : F) * rho 109582)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109572) * ((1 : F) * rho 109572) = ((1 : F) * rho 109583)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109584) * ((-1 : F) * rho 109582 + (1 : F) * rho 109583) = ((2 : F) * rho 109581)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109585) * ((2 : F) + (1 : F) * rho 109582 + (-1 : F) * rho 109583) = ((1 : F) * rho 109582 + (1 : F) * rho 109583)

def relationLc1808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 75⟩, ⟨(1 : F), 108618, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109584 + (1 : F) * rho 109585) * (relationLc1808 rho) = ((1 : F) * rho 109586)

def relationLc1809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109585) * (relationLc1809 rho) = ((1 : F) * rho 109587)

def relationLc1810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109584) * (relationLc1810 rho) = ((1 : F) * rho 109588)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109587) * ((1 : F) * rho 109588) = ((1 : F) * rho 109589)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109590) * ((1 : F) + (1 : F) * rho 109589) = ((1 : F) * rho 109587 + (1 : F) * rho 109588)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109591) * ((1 : F) + (-1 : F) * rho 109589) = ((1 : F) * rho 109586 + (-1 : F) * rho 109587 + (-1 : F) * rho 109588)

def relationLc1811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 75⟩], residual := [((1 : F), 109590)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108440) * (relationLc1811 rho) = ((1 : F) * rho 109592)

def relationLc1812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 75⟩], residual := [((1 : F), 109591)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108440) * (relationLc1812 rho) = ((1 : F) * rho 109593)

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109584) * ((1 : F) * rho 109585) = ((1 : F) * rho 109594)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109584) * ((1 : F) * rho 109584) = ((1 : F) * rho 109595)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109585) * ((1 : F) * rho 109585) = ((1 : F) * rho 109596)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109597) * ((-1 : F) * rho 109595 + (1 : F) * rho 109596) = ((2 : F) * rho 109594)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109598) * ((2 : F) + (1 : F) * rho 109595 + (-1 : F) * rho 109596) = ((1 : F) * rho 109595 + (1 : F) * rho 109596)

def relationLc1813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 76⟩, ⟨(1 : F), 108618, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109597 + (1 : F) * rho 109598) * (relationLc1813 rho) = ((1 : F) * rho 109599)

def relationLc1814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109598) * (relationLc1814 rho) = ((1 : F) * rho 109600)

def relationLc1815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109597) * (relationLc1815 rho) = ((1 : F) * rho 109601)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109600) * ((1 : F) * rho 109601) = ((1 : F) * rho 109602)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109603) * ((1 : F) + (1 : F) * rho 109602) = ((1 : F) * rho 109600 + (1 : F) * rho 109601)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109604) * ((1 : F) + (-1 : F) * rho 109602) = ((1 : F) * rho 109599 + (-1 : F) * rho 109600 + (-1 : F) * rho 109601)

def relationLc1816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 76⟩], residual := [((1 : F), 109603)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108441) * (relationLc1816 rho) = ((1 : F) * rho 109605)

def relationLc1817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 76⟩], residual := [((1 : F), 109604)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108441) * (relationLc1817 rho) = ((1 : F) * rho 109606)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109597) * ((1 : F) * rho 109598) = ((1 : F) * rho 109607)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109597) * ((1 : F) * rho 109597) = ((1 : F) * rho 109608)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109598) * ((1 : F) * rho 109598) = ((1 : F) * rho 109609)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109610) * ((-1 : F) * rho 109608 + (1 : F) * rho 109609) = ((2 : F) * rho 109607)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109611) * ((2 : F) + (1 : F) * rho 109608 + (-1 : F) * rho 109609) = ((1 : F) * rho 109608 + (1 : F) * rho 109609)

def relationLc1818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 77⟩, ⟨(1 : F), 108618, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109610 + (1 : F) * rho 109611) * (relationLc1818 rho) = ((1 : F) * rho 109612)

def relationLc1819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109611) * (relationLc1819 rho) = ((1 : F) * rho 109613)

def relationLc1820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109610) * (relationLc1820 rho) = ((1 : F) * rho 109614)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109613) * ((1 : F) * rho 109614) = ((1 : F) * rho 109615)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109616) * ((1 : F) + (1 : F) * rho 109615) = ((1 : F) * rho 109613 + (1 : F) * rho 109614)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109617) * ((1 : F) + (-1 : F) * rho 109615) = ((1 : F) * rho 109612 + (-1 : F) * rho 109613 + (-1 : F) * rho 109614)

def relationLc1821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 77⟩], residual := [((1 : F), 109616)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108442) * (relationLc1821 rho) = ((1 : F) * rho 109618)

def relationLc1822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 77⟩], residual := [((1 : F), 109617)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108442) * (relationLc1822 rho) = ((1 : F) * rho 109619)

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109610) * ((1 : F) * rho 109611) = ((1 : F) * rho 109620)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109610) * ((1 : F) * rho 109610) = ((1 : F) * rho 109621)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109611) * ((1 : F) * rho 109611) = ((1 : F) * rho 109622)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109623) * ((-1 : F) * rho 109621 + (1 : F) * rho 109622) = ((2 : F) * rho 109620)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109624) * ((2 : F) + (1 : F) * rho 109621 + (-1 : F) * rho 109622) = ((1 : F) * rho 109621 + (1 : F) * rho 109622)

def relationLc1823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 78⟩, ⟨(1 : F), 108618, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109623 + (1 : F) * rho 109624) * (relationLc1823 rho) = ((1 : F) * rho 109625)

def relationLc1824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109624) * (relationLc1824 rho) = ((1 : F) * rho 109626)

def relationLc1825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109623) * (relationLc1825 rho) = ((1 : F) * rho 109627)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109626) * ((1 : F) * rho 109627) = ((1 : F) * rho 109628)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109629) * ((1 : F) + (1 : F) * rho 109628) = ((1 : F) * rho 109626 + (1 : F) * rho 109627)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109630) * ((1 : F) + (-1 : F) * rho 109628) = ((1 : F) * rho 109625 + (-1 : F) * rho 109626 + (-1 : F) * rho 109627)

def relationLc1826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 78⟩], residual := [((1 : F), 109629)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108443) * (relationLc1826 rho) = ((1 : F) * rho 109631)

def relationLc1827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 78⟩], residual := [((1 : F), 109630)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108443) * (relationLc1827 rho) = ((1 : F) * rho 109632)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109623) * ((1 : F) * rho 109624) = ((1 : F) * rho 109633)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109623) * ((1 : F) * rho 109623) = ((1 : F) * rho 109634)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109624) * ((1 : F) * rho 109624) = ((1 : F) * rho 109635)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109636) * ((-1 : F) * rho 109634 + (1 : F) * rho 109635) = ((2 : F) * rho 109633)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109637) * ((2 : F) + (1 : F) * rho 109634 + (-1 : F) * rho 109635) = ((1 : F) * rho 109634 + (1 : F) * rho 109635)

def relationLc1828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 79⟩, ⟨(1 : F), 108618, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109636 + (1 : F) * rho 109637) * (relationLc1828 rho) = ((1 : F) * rho 109638)

def relationLc1829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109637) * (relationLc1829 rho) = ((1 : F) * rho 109639)

def relationLc1830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109636) * (relationLc1830 rho) = ((1 : F) * rho 109640)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109639) * ((1 : F) * rho 109640) = ((1 : F) * rho 109641)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109642) * ((1 : F) + (1 : F) * rho 109641) = ((1 : F) * rho 109639 + (1 : F) * rho 109640)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109643) * ((1 : F) + (-1 : F) * rho 109641) = ((1 : F) * rho 109638 + (-1 : F) * rho 109639 + (-1 : F) * rho 109640)

def relationLc1831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 79⟩], residual := [((1 : F), 109642)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108444) * (relationLc1831 rho) = ((1 : F) * rho 109644)

def relationLc1832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 79⟩], residual := [((1 : F), 109643)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108444) * (relationLc1832 rho) = ((1 : F) * rho 109645)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109636) * ((1 : F) * rho 109637) = ((1 : F) * rho 109646)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109636) * ((1 : F) * rho 109636) = ((1 : F) * rho 109647)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109637) * ((1 : F) * rho 109637) = ((1 : F) * rho 109648)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109649) * ((-1 : F) * rho 109647 + (1 : F) * rho 109648) = ((2 : F) * rho 109646)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109650) * ((2 : F) + (1 : F) * rho 109647 + (-1 : F) * rho 109648) = ((1 : F) * rho 109647 + (1 : F) * rho 109648)

def relationLc1833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 80⟩, ⟨(1 : F), 108618, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109649 + (1 : F) * rho 109650) * (relationLc1833 rho) = ((1 : F) * rho 109651)

def relationLc1834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109650) * (relationLc1834 rho) = ((1 : F) * rho 109652)

def relationLc1835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109649) * (relationLc1835 rho) = ((1 : F) * rho 109653)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109652) * ((1 : F) * rho 109653) = ((1 : F) * rho 109654)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109655) * ((1 : F) + (1 : F) * rho 109654) = ((1 : F) * rho 109652 + (1 : F) * rho 109653)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109656) * ((1 : F) + (-1 : F) * rho 109654) = ((1 : F) * rho 109651 + (-1 : F) * rho 109652 + (-1 : F) * rho 109653)

def relationLc1836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 80⟩], residual := [((1 : F), 109655)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108445) * (relationLc1836 rho) = ((1 : F) * rho 109657)

def relationLc1837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 80⟩], residual := [((1 : F), 109656)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108445) * (relationLc1837 rho) = ((1 : F) * rho 109658)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109649) * ((1 : F) * rho 109650) = ((1 : F) * rho 109659)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109649) * ((1 : F) * rho 109649) = ((1 : F) * rho 109660)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109650) * ((1 : F) * rho 109650) = ((1 : F) * rho 109661)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109662) * ((-1 : F) * rho 109660 + (1 : F) * rho 109661) = ((2 : F) * rho 109659)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109663) * ((2 : F) + (1 : F) * rho 109660 + (-1 : F) * rho 109661) = ((1 : F) * rho 109660 + (1 : F) * rho 109661)

def relationLc1838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 81⟩, ⟨(1 : F), 108618, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109662 + (1 : F) * rho 109663) * (relationLc1838 rho) = ((1 : F) * rho 109664)

def relationLc1839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109663) * (relationLc1839 rho) = ((1 : F) * rho 109665)

def relationLc1840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109662) * (relationLc1840 rho) = ((1 : F) * rho 109666)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109665) * ((1 : F) * rho 109666) = ((1 : F) * rho 109667)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109668) * ((1 : F) + (1 : F) * rho 109667) = ((1 : F) * rho 109665 + (1 : F) * rho 109666)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109669) * ((1 : F) + (-1 : F) * rho 109667) = ((1 : F) * rho 109664 + (-1 : F) * rho 109665 + (-1 : F) * rho 109666)

def relationLc1841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 81⟩], residual := [((1 : F), 109668)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108446) * (relationLc1841 rho) = ((1 : F) * rho 109670)

def relationLc1842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 81⟩], residual := [((1 : F), 109669)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108446) * (relationLc1842 rho) = ((1 : F) * rho 109671)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109662) * ((1 : F) * rho 109663) = ((1 : F) * rho 109672)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109662) * ((1 : F) * rho 109662) = ((1 : F) * rho 109673)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109663) * ((1 : F) * rho 109663) = ((1 : F) * rho 109674)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109675) * ((-1 : F) * rho 109673 + (1 : F) * rho 109674) = ((2 : F) * rho 109672)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109676) * ((2 : F) + (1 : F) * rho 109673 + (-1 : F) * rho 109674) = ((1 : F) * rho 109673 + (1 : F) * rho 109674)

def relationLc1843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 82⟩, ⟨(1 : F), 108618, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109675 + (1 : F) * rho 109676) * (relationLc1843 rho) = ((1 : F) * rho 109677)

def relationLc1844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109676) * (relationLc1844 rho) = ((1 : F) * rho 109678)

def relationLc1845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109675) * (relationLc1845 rho) = ((1 : F) * rho 109679)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109678) * ((1 : F) * rho 109679) = ((1 : F) * rho 109680)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109681) * ((1 : F) + (1 : F) * rho 109680) = ((1 : F) * rho 109678 + (1 : F) * rho 109679)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109682) * ((1 : F) + (-1 : F) * rho 109680) = ((1 : F) * rho 109677 + (-1 : F) * rho 109678 + (-1 : F) * rho 109679)

def relationLc1846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 82⟩], residual := [((1 : F), 109681)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108447) * (relationLc1846 rho) = ((1 : F) * rho 109683)

def relationLc1847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 82⟩], residual := [((1 : F), 109682)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108447) * (relationLc1847 rho) = ((1 : F) * rho 109684)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109675) * ((1 : F) * rho 109676) = ((1 : F) * rho 109685)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109675) * ((1 : F) * rho 109675) = ((1 : F) * rho 109686)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109676) * ((1 : F) * rho 109676) = ((1 : F) * rho 109687)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109688) * ((-1 : F) * rho 109686 + (1 : F) * rho 109687) = ((2 : F) * rho 109685)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109689) * ((2 : F) + (1 : F) * rho 109686 + (-1 : F) * rho 109687) = ((1 : F) * rho 109686 + (1 : F) * rho 109687)

def relationLc1848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 83⟩, ⟨(1 : F), 108618, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109688 + (1 : F) * rho 109689) * (relationLc1848 rho) = ((1 : F) * rho 109690)

def relationLc1849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109689) * (relationLc1849 rho) = ((1 : F) * rho 109691)

def relationLc1850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109688) * (relationLc1850 rho) = ((1 : F) * rho 109692)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109691) * ((1 : F) * rho 109692) = ((1 : F) * rho 109693)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109694) * ((1 : F) + (1 : F) * rho 109693) = ((1 : F) * rho 109691 + (1 : F) * rho 109692)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109695) * ((1 : F) + (-1 : F) * rho 109693) = ((1 : F) * rho 109690 + (-1 : F) * rho 109691 + (-1 : F) * rho 109692)

def relationLc1851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 83⟩], residual := [((1 : F), 109694)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108448) * (relationLc1851 rho) = ((1 : F) * rho 109696)

def relationLc1852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 83⟩], residual := [((1 : F), 109695)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108448) * (relationLc1852 rho) = ((1 : F) * rho 109697)

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109688) * ((1 : F) * rho 109689) = ((1 : F) * rho 109698)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109688) * ((1 : F) * rho 109688) = ((1 : F) * rho 109699)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109689) * ((1 : F) * rho 109689) = ((1 : F) * rho 109700)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109701) * ((-1 : F) * rho 109699 + (1 : F) * rho 109700) = ((2 : F) * rho 109698)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109702) * ((2 : F) + (1 : F) * rho 109699 + (-1 : F) * rho 109700) = ((1 : F) * rho 109699 + (1 : F) * rho 109700)

def relationLc1853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 84⟩, ⟨(1 : F), 108618, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109701 + (1 : F) * rho 109702) * (relationLc1853 rho) = ((1 : F) * rho 109703)

def relationLc1854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109702) * (relationLc1854 rho) = ((1 : F) * rho 109704)

def relationLc1855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109701) * (relationLc1855 rho) = ((1 : F) * rho 109705)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109704) * ((1 : F) * rho 109705) = ((1 : F) * rho 109706)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109707) * ((1 : F) + (1 : F) * rho 109706) = ((1 : F) * rho 109704 + (1 : F) * rho 109705)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109708) * ((1 : F) + (-1 : F) * rho 109706) = ((1 : F) * rho 109703 + (-1 : F) * rho 109704 + (-1 : F) * rho 109705)

def relationLc1856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 84⟩], residual := [((1 : F), 109707)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108449) * (relationLc1856 rho) = ((1 : F) * rho 109709)

def relationLc1857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 84⟩], residual := [((1 : F), 109708)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108449) * (relationLc1857 rho) = ((1 : F) * rho 109710)

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109701) * ((1 : F) * rho 109702) = ((1 : F) * rho 109711)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109701) * ((1 : F) * rho 109701) = ((1 : F) * rho 109712)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109702) * ((1 : F) * rho 109702) = ((1 : F) * rho 109713)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109714) * ((-1 : F) * rho 109712 + (1 : F) * rho 109713) = ((2 : F) * rho 109711)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109715) * ((2 : F) + (1 : F) * rho 109712 + (-1 : F) * rho 109713) = ((1 : F) * rho 109712 + (1 : F) * rho 109713)

def relationLc1858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 85⟩, ⟨(1 : F), 108618, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109714 + (1 : F) * rho 109715) * (relationLc1858 rho) = ((1 : F) * rho 109716)

def relationLc1859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109715) * (relationLc1859 rho) = ((1 : F) * rho 109717)

def relationLc1860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109714) * (relationLc1860 rho) = ((1 : F) * rho 109718)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109717) * ((1 : F) * rho 109718) = ((1 : F) * rho 109719)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109720) * ((1 : F) + (1 : F) * rho 109719) = ((1 : F) * rho 109717 + (1 : F) * rho 109718)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109721) * ((1 : F) + (-1 : F) * rho 109719) = ((1 : F) * rho 109716 + (-1 : F) * rho 109717 + (-1 : F) * rho 109718)

def relationLc1861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 85⟩], residual := [((1 : F), 109720)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108450) * (relationLc1861 rho) = ((1 : F) * rho 109722)

def relationLc1862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 85⟩], residual := [((1 : F), 109721)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108450) * (relationLc1862 rho) = ((1 : F) * rho 109723)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109714) * ((1 : F) * rho 109715) = ((1 : F) * rho 109724)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109714) * ((1 : F) * rho 109714) = ((1 : F) * rho 109725)

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109715) * ((1 : F) * rho 109715) = ((1 : F) * rho 109726)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109727) * ((-1 : F) * rho 109725 + (1 : F) * rho 109726) = ((2 : F) * rho 109724)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109728) * ((2 : F) + (1 : F) * rho 109725 + (-1 : F) * rho 109726) = ((1 : F) * rho 109725 + (1 : F) * rho 109726)

def relationLc1863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 86⟩, ⟨(1 : F), 108618, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109727 + (1 : F) * rho 109728) * (relationLc1863 rho) = ((1 : F) * rho 109729)

def relationLc1864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109728) * (relationLc1864 rho) = ((1 : F) * rho 109730)

def relationLc1865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109727) * (relationLc1865 rho) = ((1 : F) * rho 109731)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109730) * ((1 : F) * rho 109731) = ((1 : F) * rho 109732)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109733) * ((1 : F) + (1 : F) * rho 109732) = ((1 : F) * rho 109730 + (1 : F) * rho 109731)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109734) * ((1 : F) + (-1 : F) * rho 109732) = ((1 : F) * rho 109729 + (-1 : F) * rho 109730 + (-1 : F) * rho 109731)

def relationLc1866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 86⟩], residual := [((1 : F), 109733)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108451) * (relationLc1866 rho) = ((1 : F) * rho 109735)

def relationLc1867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 86⟩], residual := [((1 : F), 109734)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108451) * (relationLc1867 rho) = ((1 : F) * rho 109736)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109727) * ((1 : F) * rho 109728) = ((1 : F) * rho 109737)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109727) * ((1 : F) * rho 109727) = ((1 : F) * rho 109738)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109728) * ((1 : F) * rho 109728) = ((1 : F) * rho 109739)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109740) * ((-1 : F) * rho 109738 + (1 : F) * rho 109739) = ((2 : F) * rho 109737)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109741) * ((2 : F) + (1 : F) * rho 109738 + (-1 : F) * rho 109739) = ((1 : F) * rho 109738 + (1 : F) * rho 109739)

def relationLc1868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 87⟩, ⟨(1 : F), 108618, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109740 + (1 : F) * rho 109741) * (relationLc1868 rho) = ((1 : F) * rho 109742)

def relationLc1869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109741) * (relationLc1869 rho) = ((1 : F) * rho 109743)

def relationLc1870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109740) * (relationLc1870 rho) = ((1 : F) * rho 109744)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109743) * ((1 : F) * rho 109744) = ((1 : F) * rho 109745)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109746) * ((1 : F) + (1 : F) * rho 109745) = ((1 : F) * rho 109743 + (1 : F) * rho 109744)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109747) * ((1 : F) + (-1 : F) * rho 109745) = ((1 : F) * rho 109742 + (-1 : F) * rho 109743 + (-1 : F) * rho 109744)

def relationLc1871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 87⟩], residual := [((1 : F), 109746)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108452) * (relationLc1871 rho) = ((1 : F) * rho 109748)

def relationLc1872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 87⟩], residual := [((1 : F), 109747)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108452) * (relationLc1872 rho) = ((1 : F) * rho 109749)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109740) * ((1 : F) * rho 109741) = ((1 : F) * rho 109750)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109740) * ((1 : F) * rho 109740) = ((1 : F) * rho 109751)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109741) * ((1 : F) * rho 109741) = ((1 : F) * rho 109752)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109753) * ((-1 : F) * rho 109751 + (1 : F) * rho 109752) = ((2 : F) * rho 109750)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109754) * ((2 : F) + (1 : F) * rho 109751 + (-1 : F) * rho 109752) = ((1 : F) * rho 109751 + (1 : F) * rho 109752)

def relationLc1873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 88⟩, ⟨(1 : F), 108618, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109753 + (1 : F) * rho 109754) * (relationLc1873 rho) = ((1 : F) * rho 109755)

def relationLc1874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109754) * (relationLc1874 rho) = ((1 : F) * rho 109756)

def relationLc1875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109753) * (relationLc1875 rho) = ((1 : F) * rho 109757)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109756) * ((1 : F) * rho 109757) = ((1 : F) * rho 109758)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109759) * ((1 : F) + (1 : F) * rho 109758) = ((1 : F) * rho 109756 + (1 : F) * rho 109757)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109760) * ((1 : F) + (-1 : F) * rho 109758) = ((1 : F) * rho 109755 + (-1 : F) * rho 109756 + (-1 : F) * rho 109757)

def relationLc1876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 88⟩], residual := [((1 : F), 109759)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108453) * (relationLc1876 rho) = ((1 : F) * rho 109761)

def relationLc1877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 88⟩], residual := [((1 : F), 109760)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108453) * (relationLc1877 rho) = ((1 : F) * rho 109762)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109753) * ((1 : F) * rho 109754) = ((1 : F) * rho 109763)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109753) * ((1 : F) * rho 109753) = ((1 : F) * rho 109764)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109754) * ((1 : F) * rho 109754) = ((1 : F) * rho 109765)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109766) * ((-1 : F) * rho 109764 + (1 : F) * rho 109765) = ((2 : F) * rho 109763)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109767) * ((2 : F) + (1 : F) * rho 109764 + (-1 : F) * rho 109765) = ((1 : F) * rho 109764 + (1 : F) * rho 109765)

def relationLc1878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 89⟩, ⟨(1 : F), 108618, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109766 + (1 : F) * rho 109767) * (relationLc1878 rho) = ((1 : F) * rho 109768)

def relationLc1879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109767) * (relationLc1879 rho) = ((1 : F) * rho 109769)

def relationLc1880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109766) * (relationLc1880 rho) = ((1 : F) * rho 109770)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109769) * ((1 : F) * rho 109770) = ((1 : F) * rho 109771)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109772) * ((1 : F) + (1 : F) * rho 109771) = ((1 : F) * rho 109769 + (1 : F) * rho 109770)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109773) * ((1 : F) + (-1 : F) * rho 109771) = ((1 : F) * rho 109768 + (-1 : F) * rho 109769 + (-1 : F) * rho 109770)

def relationLc1881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 89⟩], residual := [((1 : F), 109772)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108454) * (relationLc1881 rho) = ((1 : F) * rho 109774)

def relationLc1882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 89⟩], residual := [((1 : F), 109773)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108454) * (relationLc1882 rho) = ((1 : F) * rho 109775)

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109766) * ((1 : F) * rho 109767) = ((1 : F) * rho 109776)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109766) * ((1 : F) * rho 109766) = ((1 : F) * rho 109777)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109767) * ((1 : F) * rho 109767) = ((1 : F) * rho 109778)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109779) * ((-1 : F) * rho 109777 + (1 : F) * rho 109778) = ((2 : F) * rho 109776)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109780) * ((2 : F) + (1 : F) * rho 109777 + (-1 : F) * rho 109778) = ((1 : F) * rho 109777 + (1 : F) * rho 109778)

def relationLc1883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 90⟩, ⟨(1 : F), 108618, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109779 + (1 : F) * rho 109780) * (relationLc1883 rho) = ((1 : F) * rho 109781)

def relationLc1884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109780) * (relationLc1884 rho) = ((1 : F) * rho 109782)

def relationLc1885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109779) * (relationLc1885 rho) = ((1 : F) * rho 109783)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109782) * ((1 : F) * rho 109783) = ((1 : F) * rho 109784)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109785) * ((1 : F) + (1 : F) * rho 109784) = ((1 : F) * rho 109782 + (1 : F) * rho 109783)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109786) * ((1 : F) + (-1 : F) * rho 109784) = ((1 : F) * rho 109781 + (-1 : F) * rho 109782 + (-1 : F) * rho 109783)

def relationLc1886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 90⟩], residual := [((1 : F), 109785)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108455) * (relationLc1886 rho) = ((1 : F) * rho 109787)

def relationLc1887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 90⟩], residual := [((1 : F), 109786)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108455) * (relationLc1887 rho) = ((1 : F) * rho 109788)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109779) * ((1 : F) * rho 109780) = ((1 : F) * rho 109789)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109779) * ((1 : F) * rho 109779) = ((1 : F) * rho 109790)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109780) * ((1 : F) * rho 109780) = ((1 : F) * rho 109791)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109792) * ((-1 : F) * rho 109790 + (1 : F) * rho 109791) = ((2 : F) * rho 109789)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109793) * ((2 : F) + (1 : F) * rho 109790 + (-1 : F) * rho 109791) = ((1 : F) * rho 109790 + (1 : F) * rho 109791)

def relationLc1888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 91⟩, ⟨(1 : F), 108618, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109792 + (1 : F) * rho 109793) * (relationLc1888 rho) = ((1 : F) * rho 109794)

def relationLc1889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109793) * (relationLc1889 rho) = ((1 : F) * rho 109795)

def relationLc1890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109792) * (relationLc1890 rho) = ((1 : F) * rho 109796)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109795) * ((1 : F) * rho 109796) = ((1 : F) * rho 109797)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109798) * ((1 : F) + (1 : F) * rho 109797) = ((1 : F) * rho 109795 + (1 : F) * rho 109796)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109799) * ((1 : F) + (-1 : F) * rho 109797) = ((1 : F) * rho 109794 + (-1 : F) * rho 109795 + (-1 : F) * rho 109796)

def relationLc1891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 91⟩], residual := [((1 : F), 109798)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108456) * (relationLc1891 rho) = ((1 : F) * rho 109800)

def relationLc1892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 91⟩], residual := [((1 : F), 109799)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108456) * (relationLc1892 rho) = ((1 : F) * rho 109801)

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109792) * ((1 : F) * rho 109793) = ((1 : F) * rho 109802)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109792) * ((1 : F) * rho 109792) = ((1 : F) * rho 109803)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109793) * ((1 : F) * rho 109793) = ((1 : F) * rho 109804)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109805) * ((-1 : F) * rho 109803 + (1 : F) * rho 109804) = ((2 : F) * rho 109802)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109806) * ((2 : F) + (1 : F) * rho 109803 + (-1 : F) * rho 109804) = ((1 : F) * rho 109803 + (1 : F) * rho 109804)

def relationLc1893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 92⟩, ⟨(1 : F), 108618, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109805 + (1 : F) * rho 109806) * (relationLc1893 rho) = ((1 : F) * rho 109807)

def relationLc1894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109806) * (relationLc1894 rho) = ((1 : F) * rho 109808)

def relationLc1895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109805) * (relationLc1895 rho) = ((1 : F) * rho 109809)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109808) * ((1 : F) * rho 109809) = ((1 : F) * rho 109810)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109811) * ((1 : F) + (1 : F) * rho 109810) = ((1 : F) * rho 109808 + (1 : F) * rho 109809)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109812) * ((1 : F) + (-1 : F) * rho 109810) = ((1 : F) * rho 109807 + (-1 : F) * rho 109808 + (-1 : F) * rho 109809)

def relationLc1896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 92⟩], residual := [((1 : F), 109811)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108457) * (relationLc1896 rho) = ((1 : F) * rho 109813)

def relationLc1897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 92⟩], residual := [((1 : F), 109812)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108457) * (relationLc1897 rho) = ((1 : F) * rho 109814)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109805) * ((1 : F) * rho 109806) = ((1 : F) * rho 109815)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109805) * ((1 : F) * rho 109805) = ((1 : F) * rho 109816)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109806) * ((1 : F) * rho 109806) = ((1 : F) * rho 109817)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109818) * ((-1 : F) * rho 109816 + (1 : F) * rho 109817) = ((2 : F) * rho 109815)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109819) * ((2 : F) + (1 : F) * rho 109816 + (-1 : F) * rho 109817) = ((1 : F) * rho 109816 + (1 : F) * rho 109817)

def relationLc1898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 93⟩, ⟨(1 : F), 108618, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109818 + (1 : F) * rho 109819) * (relationLc1898 rho) = ((1 : F) * rho 109820)

def relationLc1899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109819) * (relationLc1899 rho) = ((1 : F) * rho 109821)

def relationLc1900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109818) * (relationLc1900 rho) = ((1 : F) * rho 109822)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109821) * ((1 : F) * rho 109822) = ((1 : F) * rho 109823)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109824) * ((1 : F) + (1 : F) * rho 109823) = ((1 : F) * rho 109821 + (1 : F) * rho 109822)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109825) * ((1 : F) + (-1 : F) * rho 109823) = ((1 : F) * rho 109820 + (-1 : F) * rho 109821 + (-1 : F) * rho 109822)

def relationLc1901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 93⟩], residual := [((1 : F), 109824)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108458) * (relationLc1901 rho) = ((1 : F) * rho 109826)

def relationLc1902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 93⟩], residual := [((1 : F), 109825)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108458) * (relationLc1902 rho) = ((1 : F) * rho 109827)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109818) * ((1 : F) * rho 109819) = ((1 : F) * rho 109828)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109818) * ((1 : F) * rho 109818) = ((1 : F) * rho 109829)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109819) * ((1 : F) * rho 109819) = ((1 : F) * rho 109830)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109831) * ((-1 : F) * rho 109829 + (1 : F) * rho 109830) = ((2 : F) * rho 109828)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109832) * ((2 : F) + (1 : F) * rho 109829 + (-1 : F) * rho 109830) = ((1 : F) * rho 109829 + (1 : F) * rho 109830)

def relationLc1903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 94⟩, ⟨(1 : F), 108618, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109831 + (1 : F) * rho 109832) * (relationLc1903 rho) = ((1 : F) * rho 109833)

def relationLc1904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109832) * (relationLc1904 rho) = ((1 : F) * rho 109834)

def relationLc1905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109831) * (relationLc1905 rho) = ((1 : F) * rho 109835)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109834) * ((1 : F) * rho 109835) = ((1 : F) * rho 109836)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109837) * ((1 : F) + (1 : F) * rho 109836) = ((1 : F) * rho 109834 + (1 : F) * rho 109835)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109838) * ((1 : F) + (-1 : F) * rho 109836) = ((1 : F) * rho 109833 + (-1 : F) * rho 109834 + (-1 : F) * rho 109835)

def relationLc1906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 94⟩], residual := [((1 : F), 109837)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108459) * (relationLc1906 rho) = ((1 : F) * rho 109839)

def relationLc1907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 94⟩], residual := [((1 : F), 109838)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108459) * (relationLc1907 rho) = ((1 : F) * rho 109840)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109831) * ((1 : F) * rho 109832) = ((1 : F) * rho 109841)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109831) * ((1 : F) * rho 109831) = ((1 : F) * rho 109842)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109832) * ((1 : F) * rho 109832) = ((1 : F) * rho 109843)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109844) * ((-1 : F) * rho 109842 + (1 : F) * rho 109843) = ((2 : F) * rho 109841)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109845) * ((2 : F) + (1 : F) * rho 109842 + (-1 : F) * rho 109843) = ((1 : F) * rho 109842 + (1 : F) * rho 109843)

def relationLc1908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 95⟩, ⟨(1 : F), 108618, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109844 + (1 : F) * rho 109845) * (relationLc1908 rho) = ((1 : F) * rho 109846)

def relationLc1909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109845) * (relationLc1909 rho) = ((1 : F) * rho 109847)

def relationLc1910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109844) * (relationLc1910 rho) = ((1 : F) * rho 109848)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109847) * ((1 : F) * rho 109848) = ((1 : F) * rho 109849)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109850) * ((1 : F) + (1 : F) * rho 109849) = ((1 : F) * rho 109847 + (1 : F) * rho 109848)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109851) * ((1 : F) + (-1 : F) * rho 109849) = ((1 : F) * rho 109846 + (-1 : F) * rho 109847 + (-1 : F) * rho 109848)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
