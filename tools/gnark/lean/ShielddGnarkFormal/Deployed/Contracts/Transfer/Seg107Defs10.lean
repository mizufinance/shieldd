import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg107Defs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107

def relationLc1709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100296) * (relationLc1709 rho) = ((1 : F) * rho 100298)

def relationLc1710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100295) * (relationLc1710 rho) = ((1 : F) * rho 100299)

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100298) * ((1 : F) * rho 100299) = ((1 : F) * rho 100300)

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100301) * ((1 : F) + (1 : F) * rho 100300) = ((1 : F) * rho 100298 + (1 : F) * rho 100299)

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100302) * ((1 : F) + (-1 : F) * rho 100300) = ((1 : F) * rho 100297 + (-1 : F) * rho 100298 + (-1 : F) * rho 100299)

def relationLc1711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 55⟩], residual := [((1 : F), 100301)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99391) * (relationLc1711 rho) = ((1 : F) * rho 100303)

def relationLc1712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 55⟩], residual := [((1 : F), 100302)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99391) * (relationLc1712 rho) = ((1 : F) * rho 100304)

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100295) * ((1 : F) * rho 100296) = ((1 : F) * rho 100305)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100295) * ((1 : F) * rho 100295) = ((1 : F) * rho 100306)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100296) * ((1 : F) * rho 100296) = ((1 : F) * rho 100307)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100308) * ((-1 : F) * rho 100306 + (1 : F) * rho 100307) = ((2 : F) * rho 100305)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100309) * ((2 : F) + (1 : F) * rho 100306 + (-1 : F) * rho 100307) = ((1 : F) * rho 100306 + (1 : F) * rho 100307)

def relationLc1713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 56⟩, ⟨(1 : F), 99589, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100308 + (1 : F) * rho 100309) * (relationLc1713 rho) = ((1 : F) * rho 100310)

def relationLc1714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100309) * (relationLc1714 rho) = ((1 : F) * rho 100311)

def relationLc1715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100308) * (relationLc1715 rho) = ((1 : F) * rho 100312)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100311) * ((1 : F) * rho 100312) = ((1 : F) * rho 100313)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100314) * ((1 : F) + (1 : F) * rho 100313) = ((1 : F) * rho 100311 + (1 : F) * rho 100312)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100315) * ((1 : F) + (-1 : F) * rho 100313) = ((1 : F) * rho 100310 + (-1 : F) * rho 100311 + (-1 : F) * rho 100312)

def relationLc1716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 56⟩], residual := [((1 : F), 100314)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99392) * (relationLc1716 rho) = ((1 : F) * rho 100316)

def relationLc1717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 56⟩], residual := [((1 : F), 100315)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99392) * (relationLc1717 rho) = ((1 : F) * rho 100317)

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100308) * ((1 : F) * rho 100309) = ((1 : F) * rho 100318)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100308) * ((1 : F) * rho 100308) = ((1 : F) * rho 100319)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100309) * ((1 : F) * rho 100309) = ((1 : F) * rho 100320)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100321) * ((-1 : F) * rho 100319 + (1 : F) * rho 100320) = ((2 : F) * rho 100318)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100322) * ((2 : F) + (1 : F) * rho 100319 + (-1 : F) * rho 100320) = ((1 : F) * rho 100319 + (1 : F) * rho 100320)

def relationLc1718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 57⟩, ⟨(1 : F), 99589, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100321 + (1 : F) * rho 100322) * (relationLc1718 rho) = ((1 : F) * rho 100323)

def relationLc1719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100322) * (relationLc1719 rho) = ((1 : F) * rho 100324)

def relationLc1720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100321) * (relationLc1720 rho) = ((1 : F) * rho 100325)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100324) * ((1 : F) * rho 100325) = ((1 : F) * rho 100326)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100327) * ((1 : F) + (1 : F) * rho 100326) = ((1 : F) * rho 100324 + (1 : F) * rho 100325)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100328) * ((1 : F) + (-1 : F) * rho 100326) = ((1 : F) * rho 100323 + (-1 : F) * rho 100324 + (-1 : F) * rho 100325)

def relationLc1721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 57⟩], residual := [((1 : F), 100327)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99393) * (relationLc1721 rho) = ((1 : F) * rho 100329)

def relationLc1722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 57⟩], residual := [((1 : F), 100328)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99393) * (relationLc1722 rho) = ((1 : F) * rho 100330)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100321) * ((1 : F) * rho 100322) = ((1 : F) * rho 100331)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100321) * ((1 : F) * rho 100321) = ((1 : F) * rho 100332)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100322) * ((1 : F) * rho 100322) = ((1 : F) * rho 100333)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100334) * ((-1 : F) * rho 100332 + (1 : F) * rho 100333) = ((2 : F) * rho 100331)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100335) * ((2 : F) + (1 : F) * rho 100332 + (-1 : F) * rho 100333) = ((1 : F) * rho 100332 + (1 : F) * rho 100333)

def relationLc1723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 58⟩, ⟨(1 : F), 99589, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100334 + (1 : F) * rho 100335) * (relationLc1723 rho) = ((1 : F) * rho 100336)

def relationLc1724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100335) * (relationLc1724 rho) = ((1 : F) * rho 100337)

def relationLc1725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100334) * (relationLc1725 rho) = ((1 : F) * rho 100338)

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100337) * ((1 : F) * rho 100338) = ((1 : F) * rho 100339)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100340) * ((1 : F) + (1 : F) * rho 100339) = ((1 : F) * rho 100337 + (1 : F) * rho 100338)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100341) * ((1 : F) + (-1 : F) * rho 100339) = ((1 : F) * rho 100336 + (-1 : F) * rho 100337 + (-1 : F) * rho 100338)

def relationLc1726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 58⟩], residual := [((1 : F), 100340)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99394) * (relationLc1726 rho) = ((1 : F) * rho 100342)

def relationLc1727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 58⟩], residual := [((1 : F), 100341)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99394) * (relationLc1727 rho) = ((1 : F) * rho 100343)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100334) * ((1 : F) * rho 100335) = ((1 : F) * rho 100344)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100334) * ((1 : F) * rho 100334) = ((1 : F) * rho 100345)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100335) * ((1 : F) * rho 100335) = ((1 : F) * rho 100346)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100347) * ((-1 : F) * rho 100345 + (1 : F) * rho 100346) = ((2 : F) * rho 100344)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100348) * ((2 : F) + (1 : F) * rho 100345 + (-1 : F) * rho 100346) = ((1 : F) * rho 100345 + (1 : F) * rho 100346)

def relationLc1728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 59⟩, ⟨(1 : F), 99589, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100347 + (1 : F) * rho 100348) * (relationLc1728 rho) = ((1 : F) * rho 100349)

def relationLc1729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100348) * (relationLc1729 rho) = ((1 : F) * rho 100350)

def relationLc1730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100347) * (relationLc1730 rho) = ((1 : F) * rho 100351)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100350) * ((1 : F) * rho 100351) = ((1 : F) * rho 100352)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100353) * ((1 : F) + (1 : F) * rho 100352) = ((1 : F) * rho 100350 + (1 : F) * rho 100351)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100354) * ((1 : F) + (-1 : F) * rho 100352) = ((1 : F) * rho 100349 + (-1 : F) * rho 100350 + (-1 : F) * rho 100351)

def relationLc1731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 59⟩], residual := [((1 : F), 100353)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99395) * (relationLc1731 rho) = ((1 : F) * rho 100355)

def relationLc1732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 59⟩], residual := [((1 : F), 100354)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99395) * (relationLc1732 rho) = ((1 : F) * rho 100356)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100347) * ((1 : F) * rho 100348) = ((1 : F) * rho 100357)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100347) * ((1 : F) * rho 100347) = ((1 : F) * rho 100358)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100348) * ((1 : F) * rho 100348) = ((1 : F) * rho 100359)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100360) * ((-1 : F) * rho 100358 + (1 : F) * rho 100359) = ((2 : F) * rho 100357)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100361) * ((2 : F) + (1 : F) * rho 100358 + (-1 : F) * rho 100359) = ((1 : F) * rho 100358 + (1 : F) * rho 100359)

def relationLc1733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 60⟩, ⟨(1 : F), 99589, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100360 + (1 : F) * rho 100361) * (relationLc1733 rho) = ((1 : F) * rho 100362)

def relationLc1734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100361) * (relationLc1734 rho) = ((1 : F) * rho 100363)

def relationLc1735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100360) * (relationLc1735 rho) = ((1 : F) * rho 100364)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100363) * ((1 : F) * rho 100364) = ((1 : F) * rho 100365)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100366) * ((1 : F) + (1 : F) * rho 100365) = ((1 : F) * rho 100363 + (1 : F) * rho 100364)

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100367) * ((1 : F) + (-1 : F) * rho 100365) = ((1 : F) * rho 100362 + (-1 : F) * rho 100363 + (-1 : F) * rho 100364)

def relationLc1736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 60⟩], residual := [((1 : F), 100366)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99396) * (relationLc1736 rho) = ((1 : F) * rho 100368)

def relationLc1737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 60⟩], residual := [((1 : F), 100367)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99396) * (relationLc1737 rho) = ((1 : F) * rho 100369)

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100360) * ((1 : F) * rho 100361) = ((1 : F) * rho 100370)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100360) * ((1 : F) * rho 100360) = ((1 : F) * rho 100371)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100361) * ((1 : F) * rho 100361) = ((1 : F) * rho 100372)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100373) * ((-1 : F) * rho 100371 + (1 : F) * rho 100372) = ((2 : F) * rho 100370)

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100374) * ((2 : F) + (1 : F) * rho 100371 + (-1 : F) * rho 100372) = ((1 : F) * rho 100371 + (1 : F) * rho 100372)

def relationLc1738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 61⟩, ⟨(1 : F), 99589, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100373 + (1 : F) * rho 100374) * (relationLc1738 rho) = ((1 : F) * rho 100375)

def relationLc1739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100374) * (relationLc1739 rho) = ((1 : F) * rho 100376)

def relationLc1740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100373) * (relationLc1740 rho) = ((1 : F) * rho 100377)

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100376) * ((1 : F) * rho 100377) = ((1 : F) * rho 100378)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100379) * ((1 : F) + (1 : F) * rho 100378) = ((1 : F) * rho 100376 + (1 : F) * rho 100377)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100380) * ((1 : F) + (-1 : F) * rho 100378) = ((1 : F) * rho 100375 + (-1 : F) * rho 100376 + (-1 : F) * rho 100377)

def relationLc1741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 61⟩], residual := [((1 : F), 100379)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99397) * (relationLc1741 rho) = ((1 : F) * rho 100381)

def relationLc1742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 61⟩], residual := [((1 : F), 100380)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99397) * (relationLc1742 rho) = ((1 : F) * rho 100382)

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100373) * ((1 : F) * rho 100374) = ((1 : F) * rho 100383)

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100373) * ((1 : F) * rho 100373) = ((1 : F) * rho 100384)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100374) * ((1 : F) * rho 100374) = ((1 : F) * rho 100385)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100386) * ((-1 : F) * rho 100384 + (1 : F) * rho 100385) = ((2 : F) * rho 100383)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100387) * ((2 : F) + (1 : F) * rho 100384 + (-1 : F) * rho 100385) = ((1 : F) * rho 100384 + (1 : F) * rho 100385)

def relationLc1743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 62⟩, ⟨(1 : F), 99589, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100386 + (1 : F) * rho 100387) * (relationLc1743 rho) = ((1 : F) * rho 100388)

def relationLc1744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100387) * (relationLc1744 rho) = ((1 : F) * rho 100389)

def relationLc1745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100386) * (relationLc1745 rho) = ((1 : F) * rho 100390)

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100389) * ((1 : F) * rho 100390) = ((1 : F) * rho 100391)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100392) * ((1 : F) + (1 : F) * rho 100391) = ((1 : F) * rho 100389 + (1 : F) * rho 100390)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100393) * ((1 : F) + (-1 : F) * rho 100391) = ((1 : F) * rho 100388 + (-1 : F) * rho 100389 + (-1 : F) * rho 100390)

def relationLc1746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 62⟩], residual := [((1 : F), 100392)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99398) * (relationLc1746 rho) = ((1 : F) * rho 100394)

def relationLc1747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 62⟩], residual := [((1 : F), 100393)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99398) * (relationLc1747 rho) = ((1 : F) * rho 100395)

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100386) * ((1 : F) * rho 100387) = ((1 : F) * rho 100396)

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100386) * ((1 : F) * rho 100386) = ((1 : F) * rho 100397)

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100387) * ((1 : F) * rho 100387) = ((1 : F) * rho 100398)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100399) * ((-1 : F) * rho 100397 + (1 : F) * rho 100398) = ((2 : F) * rho 100396)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100400) * ((2 : F) + (1 : F) * rho 100397 + (-1 : F) * rho 100398) = ((1 : F) * rho 100397 + (1 : F) * rho 100398)

def relationLc1748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 63⟩, ⟨(1 : F), 99589, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100399 + (1 : F) * rho 100400) * (relationLc1748 rho) = ((1 : F) * rho 100401)

def relationLc1749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100400) * (relationLc1749 rho) = ((1 : F) * rho 100402)

def relationLc1750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100399) * (relationLc1750 rho) = ((1 : F) * rho 100403)

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100402) * ((1 : F) * rho 100403) = ((1 : F) * rho 100404)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100405) * ((1 : F) + (1 : F) * rho 100404) = ((1 : F) * rho 100402 + (1 : F) * rho 100403)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100406) * ((1 : F) + (-1 : F) * rho 100404) = ((1 : F) * rho 100401 + (-1 : F) * rho 100402 + (-1 : F) * rho 100403)

def relationLc1751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 63⟩], residual := [((1 : F), 100405)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99399) * (relationLc1751 rho) = ((1 : F) * rho 100407)

def relationLc1752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 63⟩], residual := [((1 : F), 100406)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99399) * (relationLc1752 rho) = ((1 : F) * rho 100408)

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100399) * ((1 : F) * rho 100400) = ((1 : F) * rho 100409)

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100399) * ((1 : F) * rho 100399) = ((1 : F) * rho 100410)

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100400) * ((1 : F) * rho 100400) = ((1 : F) * rho 100411)

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100412) * ((-1 : F) * rho 100410 + (1 : F) * rho 100411) = ((2 : F) * rho 100409)

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100413) * ((2 : F) + (1 : F) * rho 100410 + (-1 : F) * rho 100411) = ((1 : F) * rho 100410 + (1 : F) * rho 100411)

def relationLc1753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 64⟩, ⟨(1 : F), 99589, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100412 + (1 : F) * rho 100413) * (relationLc1753 rho) = ((1 : F) * rho 100414)

def relationLc1754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100413) * (relationLc1754 rho) = ((1 : F) * rho 100415)

def relationLc1755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100412) * (relationLc1755 rho) = ((1 : F) * rho 100416)

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100415) * ((1 : F) * rho 100416) = ((1 : F) * rho 100417)

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100418) * ((1 : F) + (1 : F) * rho 100417) = ((1 : F) * rho 100415 + (1 : F) * rho 100416)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100419) * ((1 : F) + (-1 : F) * rho 100417) = ((1 : F) * rho 100414 + (-1 : F) * rho 100415 + (-1 : F) * rho 100416)

def relationLc1756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 64⟩], residual := [((1 : F), 100418)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99400) * (relationLc1756 rho) = ((1 : F) * rho 100420)

def relationLc1757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 64⟩], residual := [((1 : F), 100419)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99400) * (relationLc1757 rho) = ((1 : F) * rho 100421)

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100412) * ((1 : F) * rho 100413) = ((1 : F) * rho 100422)

def relationRow2896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100412) * ((1 : F) * rho 100412) = ((1 : F) * rho 100423)

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100413) * ((1 : F) * rho 100413) = ((1 : F) * rho 100424)

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100425) * ((-1 : F) * rho 100423 + (1 : F) * rho 100424) = ((2 : F) * rho 100422)

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100426) * ((2 : F) + (1 : F) * rho 100423 + (-1 : F) * rho 100424) = ((1 : F) * rho 100423 + (1 : F) * rho 100424)

def relationLc1758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 65⟩, ⟨(1 : F), 99589, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100425 + (1 : F) * rho 100426) * (relationLc1758 rho) = ((1 : F) * rho 100427)

def relationLc1759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100426) * (relationLc1759 rho) = ((1 : F) * rho 100428)

def relationLc1760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100425) * (relationLc1760 rho) = ((1 : F) * rho 100429)

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100428) * ((1 : F) * rho 100429) = ((1 : F) * rho 100430)

def relationRow2904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100431) * ((1 : F) + (1 : F) * rho 100430) = ((1 : F) * rho 100428 + (1 : F) * rho 100429)

def relationRow2905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100432) * ((1 : F) + (-1 : F) * rho 100430) = ((1 : F) * rho 100427 + (-1 : F) * rho 100428 + (-1 : F) * rho 100429)

def relationLc1761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 65⟩], residual := [((1 : F), 100431)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99401) * (relationLc1761 rho) = ((1 : F) * rho 100433)

def relationLc1762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 65⟩], residual := [((1 : F), 100432)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99401) * (relationLc1762 rho) = ((1 : F) * rho 100434)

def relationRow2908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100425) * ((1 : F) * rho 100426) = ((1 : F) * rho 100435)

def relationRow2909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100425) * ((1 : F) * rho 100425) = ((1 : F) * rho 100436)

def relationRow2910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100426) * ((1 : F) * rho 100426) = ((1 : F) * rho 100437)

def relationRow2911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100438) * ((-1 : F) * rho 100436 + (1 : F) * rho 100437) = ((2 : F) * rho 100435)

def relationRow2912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100439) * ((2 : F) + (1 : F) * rho 100436 + (-1 : F) * rho 100437) = ((1 : F) * rho 100436 + (1 : F) * rho 100437)

def relationLc1763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 66⟩, ⟨(1 : F), 99589, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100438 + (1 : F) * rho 100439) * (relationLc1763 rho) = ((1 : F) * rho 100440)

def relationLc1764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100439) * (relationLc1764 rho) = ((1 : F) * rho 100441)

def relationLc1765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100438) * (relationLc1765 rho) = ((1 : F) * rho 100442)

def relationRow2916 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100441) * ((1 : F) * rho 100442) = ((1 : F) * rho 100443)

def relationRow2917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100444) * ((1 : F) + (1 : F) * rho 100443) = ((1 : F) * rho 100441 + (1 : F) * rho 100442)

def relationRow2918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100445) * ((1 : F) + (-1 : F) * rho 100443) = ((1 : F) * rho 100440 + (-1 : F) * rho 100441 + (-1 : F) * rho 100442)

def relationLc1766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 66⟩], residual := [((1 : F), 100444)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99402) * (relationLc1766 rho) = ((1 : F) * rho 100446)

def relationLc1767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 66⟩], residual := [((1 : F), 100445)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99402) * (relationLc1767 rho) = ((1 : F) * rho 100447)

def relationRow2921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100438) * ((1 : F) * rho 100439) = ((1 : F) * rho 100448)

def relationRow2922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100438) * ((1 : F) * rho 100438) = ((1 : F) * rho 100449)

def relationRow2923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100439) * ((1 : F) * rho 100439) = ((1 : F) * rho 100450)

def relationRow2924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100451) * ((-1 : F) * rho 100449 + (1 : F) * rho 100450) = ((2 : F) * rho 100448)

def relationRow2925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100452) * ((2 : F) + (1 : F) * rho 100449 + (-1 : F) * rho 100450) = ((1 : F) * rho 100449 + (1 : F) * rho 100450)

def relationLc1768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 67⟩, ⟨(1 : F), 99589, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100451 + (1 : F) * rho 100452) * (relationLc1768 rho) = ((1 : F) * rho 100453)

def relationLc1769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100452) * (relationLc1769 rho) = ((1 : F) * rho 100454)

def relationLc1770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100451) * (relationLc1770 rho) = ((1 : F) * rho 100455)

def relationRow2929 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100454) * ((1 : F) * rho 100455) = ((1 : F) * rho 100456)

def relationRow2930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100457) * ((1 : F) + (1 : F) * rho 100456) = ((1 : F) * rho 100454 + (1 : F) * rho 100455)

def relationRow2931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100458) * ((1 : F) + (-1 : F) * rho 100456) = ((1 : F) * rho 100453 + (-1 : F) * rho 100454 + (-1 : F) * rho 100455)

def relationLc1771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 67⟩], residual := [((1 : F), 100457)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99403) * (relationLc1771 rho) = ((1 : F) * rho 100459)

def relationLc1772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 67⟩], residual := [((1 : F), 100458)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99403) * (relationLc1772 rho) = ((1 : F) * rho 100460)

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100451) * ((1 : F) * rho 100452) = ((1 : F) * rho 100461)

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100451) * ((1 : F) * rho 100451) = ((1 : F) * rho 100462)

def relationRow2936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100452) * ((1 : F) * rho 100452) = ((1 : F) * rho 100463)

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100464) * ((-1 : F) * rho 100462 + (1 : F) * rho 100463) = ((2 : F) * rho 100461)

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100465) * ((2 : F) + (1 : F) * rho 100462 + (-1 : F) * rho 100463) = ((1 : F) * rho 100462 + (1 : F) * rho 100463)

def relationLc1773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 68⟩, ⟨(1 : F), 99589, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100464 + (1 : F) * rho 100465) * (relationLc1773 rho) = ((1 : F) * rho 100466)

def relationLc1774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100465) * (relationLc1774 rho) = ((1 : F) * rho 100467)

def relationLc1775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100464) * (relationLc1775 rho) = ((1 : F) * rho 100468)

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100467) * ((1 : F) * rho 100468) = ((1 : F) * rho 100469)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100470) * ((1 : F) + (1 : F) * rho 100469) = ((1 : F) * rho 100467 + (1 : F) * rho 100468)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100471) * ((1 : F) + (-1 : F) * rho 100469) = ((1 : F) * rho 100466 + (-1 : F) * rho 100467 + (-1 : F) * rho 100468)

def relationLc1776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 68⟩], residual := [((1 : F), 100470)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99404) * (relationLc1776 rho) = ((1 : F) * rho 100472)

def relationLc1777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 68⟩], residual := [((1 : F), 100471)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99404) * (relationLc1777 rho) = ((1 : F) * rho 100473)

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100464) * ((1 : F) * rho 100465) = ((1 : F) * rho 100474)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100464) * ((1 : F) * rho 100464) = ((1 : F) * rho 100475)

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100465) * ((1 : F) * rho 100465) = ((1 : F) * rho 100476)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100477) * ((-1 : F) * rho 100475 + (1 : F) * rho 100476) = ((2 : F) * rho 100474)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100478) * ((2 : F) + (1 : F) * rho 100475 + (-1 : F) * rho 100476) = ((1 : F) * rho 100475 + (1 : F) * rho 100476)

def relationLc1778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 69⟩, ⟨(1 : F), 99589, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100477 + (1 : F) * rho 100478) * (relationLc1778 rho) = ((1 : F) * rho 100479)

def relationLc1779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100478) * (relationLc1779 rho) = ((1 : F) * rho 100480)

def relationLc1780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100477) * (relationLc1780 rho) = ((1 : F) * rho 100481)

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100480) * ((1 : F) * rho 100481) = ((1 : F) * rho 100482)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100483) * ((1 : F) + (1 : F) * rho 100482) = ((1 : F) * rho 100480 + (1 : F) * rho 100481)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100484) * ((1 : F) + (-1 : F) * rho 100482) = ((1 : F) * rho 100479 + (-1 : F) * rho 100480 + (-1 : F) * rho 100481)

def relationLc1781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 69⟩], residual := [((1 : F), 100483)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99405) * (relationLc1781 rho) = ((1 : F) * rho 100485)

def relationLc1782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 69⟩], residual := [((1 : F), 100484)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99405) * (relationLc1782 rho) = ((1 : F) * rho 100486)

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100477) * ((1 : F) * rho 100478) = ((1 : F) * rho 100487)

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100477) * ((1 : F) * rho 100477) = ((1 : F) * rho 100488)

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100478) * ((1 : F) * rho 100478) = ((1 : F) * rho 100489)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100490) * ((-1 : F) * rho 100488 + (1 : F) * rho 100489) = ((2 : F) * rho 100487)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100491) * ((2 : F) + (1 : F) * rho 100488 + (-1 : F) * rho 100489) = ((1 : F) * rho 100488 + (1 : F) * rho 100489)

def relationLc1783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 70⟩, ⟨(1 : F), 99589, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100490 + (1 : F) * rho 100491) * (relationLc1783 rho) = ((1 : F) * rho 100492)

def relationLc1784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100491) * (relationLc1784 rho) = ((1 : F) * rho 100493)

def relationLc1785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100490) * (relationLc1785 rho) = ((1 : F) * rho 100494)

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100493) * ((1 : F) * rho 100494) = ((1 : F) * rho 100495)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100496) * ((1 : F) + (1 : F) * rho 100495) = ((1 : F) * rho 100493 + (1 : F) * rho 100494)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100497) * ((1 : F) + (-1 : F) * rho 100495) = ((1 : F) * rho 100492 + (-1 : F) * rho 100493 + (-1 : F) * rho 100494)

def relationLc1786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 70⟩], residual := [((1 : F), 100496)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99406) * (relationLc1786 rho) = ((1 : F) * rho 100498)

def relationLc1787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 70⟩], residual := [((1 : F), 100497)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99406) * (relationLc1787 rho) = ((1 : F) * rho 100499)

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100490) * ((1 : F) * rho 100491) = ((1 : F) * rho 100500)

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100490) * ((1 : F) * rho 100490) = ((1 : F) * rho 100501)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100491) * ((1 : F) * rho 100491) = ((1 : F) * rho 100502)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100503) * ((-1 : F) * rho 100501 + (1 : F) * rho 100502) = ((2 : F) * rho 100500)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100504) * ((2 : F) + (1 : F) * rho 100501 + (-1 : F) * rho 100502) = ((1 : F) * rho 100501 + (1 : F) * rho 100502)

def relationLc1788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 71⟩, ⟨(1 : F), 99589, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100503 + (1 : F) * rho 100504) * (relationLc1788 rho) = ((1 : F) * rho 100505)

def relationLc1789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100504) * (relationLc1789 rho) = ((1 : F) * rho 100506)

def relationLc1790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100503) * (relationLc1790 rho) = ((1 : F) * rho 100507)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100506) * ((1 : F) * rho 100507) = ((1 : F) * rho 100508)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100509) * ((1 : F) + (1 : F) * rho 100508) = ((1 : F) * rho 100506 + (1 : F) * rho 100507)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100510) * ((1 : F) + (-1 : F) * rho 100508) = ((1 : F) * rho 100505 + (-1 : F) * rho 100506 + (-1 : F) * rho 100507)

def relationLc1791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 71⟩], residual := [((1 : F), 100509)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99407) * (relationLc1791 rho) = ((1 : F) * rho 100511)

def relationLc1792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 71⟩], residual := [((1 : F), 100510)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99407) * (relationLc1792 rho) = ((1 : F) * rho 100512)

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100503) * ((1 : F) * rho 100504) = ((1 : F) * rho 100513)

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100503) * ((1 : F) * rho 100503) = ((1 : F) * rho 100514)

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100504) * ((1 : F) * rho 100504) = ((1 : F) * rho 100515)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100516) * ((-1 : F) * rho 100514 + (1 : F) * rho 100515) = ((2 : F) * rho 100513)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100517) * ((2 : F) + (1 : F) * rho 100514 + (-1 : F) * rho 100515) = ((1 : F) * rho 100514 + (1 : F) * rho 100515)

def relationLc1793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 72⟩, ⟨(1 : F), 99589, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100516 + (1 : F) * rho 100517) * (relationLc1793 rho) = ((1 : F) * rho 100518)

def relationLc1794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100517) * (relationLc1794 rho) = ((1 : F) * rho 100519)

def relationLc1795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100516) * (relationLc1795 rho) = ((1 : F) * rho 100520)

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100519) * ((1 : F) * rho 100520) = ((1 : F) * rho 100521)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100522) * ((1 : F) + (1 : F) * rho 100521) = ((1 : F) * rho 100519 + (1 : F) * rho 100520)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100523) * ((1 : F) + (-1 : F) * rho 100521) = ((1 : F) * rho 100518 + (-1 : F) * rho 100519 + (-1 : F) * rho 100520)

def relationLc1796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 72⟩], residual := [((1 : F), 100522)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99408) * (relationLc1796 rho) = ((1 : F) * rho 100524)

def relationLc1797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 72⟩], residual := [((1 : F), 100523)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99408) * (relationLc1797 rho) = ((1 : F) * rho 100525)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100516) * ((1 : F) * rho 100517) = ((1 : F) * rho 100526)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100516) * ((1 : F) * rho 100516) = ((1 : F) * rho 100527)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100517) * ((1 : F) * rho 100517) = ((1 : F) * rho 100528)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100529) * ((-1 : F) * rho 100527 + (1 : F) * rho 100528) = ((2 : F) * rho 100526)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100530) * ((2 : F) + (1 : F) * rho 100527 + (-1 : F) * rho 100528) = ((1 : F) * rho 100527 + (1 : F) * rho 100528)

def relationLc1798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 73⟩, ⟨(1 : F), 99589, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100529 + (1 : F) * rho 100530) * (relationLc1798 rho) = ((1 : F) * rho 100531)

def relationLc1799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100530) * (relationLc1799 rho) = ((1 : F) * rho 100532)

def relationLc1800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100529) * (relationLc1800 rho) = ((1 : F) * rho 100533)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100532) * ((1 : F) * rho 100533) = ((1 : F) * rho 100534)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100535) * ((1 : F) + (1 : F) * rho 100534) = ((1 : F) * rho 100532 + (1 : F) * rho 100533)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100536) * ((1 : F) + (-1 : F) * rho 100534) = ((1 : F) * rho 100531 + (-1 : F) * rho 100532 + (-1 : F) * rho 100533)

def relationLc1801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 73⟩], residual := [((1 : F), 100535)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99409) * (relationLc1801 rho) = ((1 : F) * rho 100537)

def relationLc1802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 73⟩], residual := [((1 : F), 100536)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99409) * (relationLc1802 rho) = ((1 : F) * rho 100538)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100529) * ((1 : F) * rho 100530) = ((1 : F) * rho 100539)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100529) * ((1 : F) * rho 100529) = ((1 : F) * rho 100540)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100530) * ((1 : F) * rho 100530) = ((1 : F) * rho 100541)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100542) * ((-1 : F) * rho 100540 + (1 : F) * rho 100541) = ((2 : F) * rho 100539)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100543) * ((2 : F) + (1 : F) * rho 100540 + (-1 : F) * rho 100541) = ((1 : F) * rho 100540 + (1 : F) * rho 100541)

def relationLc1803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 74⟩, ⟨(1 : F), 99589, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100542 + (1 : F) * rho 100543) * (relationLc1803 rho) = ((1 : F) * rho 100544)

def relationLc1804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100543) * (relationLc1804 rho) = ((1 : F) * rho 100545)

def relationLc1805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100542) * (relationLc1805 rho) = ((1 : F) * rho 100546)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100545) * ((1 : F) * rho 100546) = ((1 : F) * rho 100547)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100548) * ((1 : F) + (1 : F) * rho 100547) = ((1 : F) * rho 100545 + (1 : F) * rho 100546)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100549) * ((1 : F) + (-1 : F) * rho 100547) = ((1 : F) * rho 100544 + (-1 : F) * rho 100545 + (-1 : F) * rho 100546)

def relationLc1806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 74⟩], residual := [((1 : F), 100548)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99410) * (relationLc1806 rho) = ((1 : F) * rho 100550)

def relationLc1807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 74⟩], residual := [((1 : F), 100549)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99410) * (relationLc1807 rho) = ((1 : F) * rho 100551)

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100542) * ((1 : F) * rho 100543) = ((1 : F) * rho 100552)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100542) * ((1 : F) * rho 100542) = ((1 : F) * rho 100553)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100543) * ((1 : F) * rho 100543) = ((1 : F) * rho 100554)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100555) * ((-1 : F) * rho 100553 + (1 : F) * rho 100554) = ((2 : F) * rho 100552)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100556) * ((2 : F) + (1 : F) * rho 100553 + (-1 : F) * rho 100554) = ((1 : F) * rho 100553 + (1 : F) * rho 100554)

def relationLc1808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 75⟩, ⟨(1 : F), 99589, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100555 + (1 : F) * rho 100556) * (relationLc1808 rho) = ((1 : F) * rho 100557)

def relationLc1809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100556) * (relationLc1809 rho) = ((1 : F) * rho 100558)

def relationLc1810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100555) * (relationLc1810 rho) = ((1 : F) * rho 100559)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100558) * ((1 : F) * rho 100559) = ((1 : F) * rho 100560)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100561) * ((1 : F) + (1 : F) * rho 100560) = ((1 : F) * rho 100558 + (1 : F) * rho 100559)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100562) * ((1 : F) + (-1 : F) * rho 100560) = ((1 : F) * rho 100557 + (-1 : F) * rho 100558 + (-1 : F) * rho 100559)

def relationLc1811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 75⟩], residual := [((1 : F), 100561)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99411) * (relationLc1811 rho) = ((1 : F) * rho 100563)

def relationLc1812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 75⟩], residual := [((1 : F), 100562)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99411) * (relationLc1812 rho) = ((1 : F) * rho 100564)

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100555) * ((1 : F) * rho 100556) = ((1 : F) * rho 100565)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100555) * ((1 : F) * rho 100555) = ((1 : F) * rho 100566)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100556) * ((1 : F) * rho 100556) = ((1 : F) * rho 100567)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100568) * ((-1 : F) * rho 100566 + (1 : F) * rho 100567) = ((2 : F) * rho 100565)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100569) * ((2 : F) + (1 : F) * rho 100566 + (-1 : F) * rho 100567) = ((1 : F) * rho 100566 + (1 : F) * rho 100567)

def relationLc1813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 76⟩, ⟨(1 : F), 99589, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100568 + (1 : F) * rho 100569) * (relationLc1813 rho) = ((1 : F) * rho 100570)

def relationLc1814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100569) * (relationLc1814 rho) = ((1 : F) * rho 100571)

def relationLc1815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100568) * (relationLc1815 rho) = ((1 : F) * rho 100572)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100571) * ((1 : F) * rho 100572) = ((1 : F) * rho 100573)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100574) * ((1 : F) + (1 : F) * rho 100573) = ((1 : F) * rho 100571 + (1 : F) * rho 100572)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100575) * ((1 : F) + (-1 : F) * rho 100573) = ((1 : F) * rho 100570 + (-1 : F) * rho 100571 + (-1 : F) * rho 100572)

def relationLc1816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 76⟩], residual := [((1 : F), 100574)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99412) * (relationLc1816 rho) = ((1 : F) * rho 100576)

def relationLc1817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 76⟩], residual := [((1 : F), 100575)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99412) * (relationLc1817 rho) = ((1 : F) * rho 100577)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100568) * ((1 : F) * rho 100569) = ((1 : F) * rho 100578)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100568) * ((1 : F) * rho 100568) = ((1 : F) * rho 100579)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100569) * ((1 : F) * rho 100569) = ((1 : F) * rho 100580)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100581) * ((-1 : F) * rho 100579 + (1 : F) * rho 100580) = ((2 : F) * rho 100578)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100582) * ((2 : F) + (1 : F) * rho 100579 + (-1 : F) * rho 100580) = ((1 : F) * rho 100579 + (1 : F) * rho 100580)

def relationLc1818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 77⟩, ⟨(1 : F), 99589, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100581 + (1 : F) * rho 100582) * (relationLc1818 rho) = ((1 : F) * rho 100583)

def relationLc1819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100582) * (relationLc1819 rho) = ((1 : F) * rho 100584)

def relationLc1820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100581) * (relationLc1820 rho) = ((1 : F) * rho 100585)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100584) * ((1 : F) * rho 100585) = ((1 : F) * rho 100586)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100587) * ((1 : F) + (1 : F) * rho 100586) = ((1 : F) * rho 100584 + (1 : F) * rho 100585)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100588) * ((1 : F) + (-1 : F) * rho 100586) = ((1 : F) * rho 100583 + (-1 : F) * rho 100584 + (-1 : F) * rho 100585)

def relationLc1821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 77⟩], residual := [((1 : F), 100587)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99413) * (relationLc1821 rho) = ((1 : F) * rho 100589)

def relationLc1822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 77⟩], residual := [((1 : F), 100588)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99413) * (relationLc1822 rho) = ((1 : F) * rho 100590)

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100581) * ((1 : F) * rho 100582) = ((1 : F) * rho 100591)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100581) * ((1 : F) * rho 100581) = ((1 : F) * rho 100592)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100582) * ((1 : F) * rho 100582) = ((1 : F) * rho 100593)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100594) * ((-1 : F) * rho 100592 + (1 : F) * rho 100593) = ((2 : F) * rho 100591)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100595) * ((2 : F) + (1 : F) * rho 100592 + (-1 : F) * rho 100593) = ((1 : F) * rho 100592 + (1 : F) * rho 100593)

def relationLc1823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 78⟩, ⟨(1 : F), 99589, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100594 + (1 : F) * rho 100595) * (relationLc1823 rho) = ((1 : F) * rho 100596)

def relationLc1824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100595) * (relationLc1824 rho) = ((1 : F) * rho 100597)

def relationLc1825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100594) * (relationLc1825 rho) = ((1 : F) * rho 100598)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100597) * ((1 : F) * rho 100598) = ((1 : F) * rho 100599)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100600) * ((1 : F) + (1 : F) * rho 100599) = ((1 : F) * rho 100597 + (1 : F) * rho 100598)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100601) * ((1 : F) + (-1 : F) * rho 100599) = ((1 : F) * rho 100596 + (-1 : F) * rho 100597 + (-1 : F) * rho 100598)

def relationLc1826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 78⟩], residual := [((1 : F), 100600)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99414) * (relationLc1826 rho) = ((1 : F) * rho 100602)

def relationLc1827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 78⟩], residual := [((1 : F), 100601)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99414) * (relationLc1827 rho) = ((1 : F) * rho 100603)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100594) * ((1 : F) * rho 100595) = ((1 : F) * rho 100604)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100594) * ((1 : F) * rho 100594) = ((1 : F) * rho 100605)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100595) * ((1 : F) * rho 100595) = ((1 : F) * rho 100606)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100607) * ((-1 : F) * rho 100605 + (1 : F) * rho 100606) = ((2 : F) * rho 100604)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100608) * ((2 : F) + (1 : F) * rho 100605 + (-1 : F) * rho 100606) = ((1 : F) * rho 100605 + (1 : F) * rho 100606)

def relationLc1828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 79⟩, ⟨(1 : F), 99589, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100607 + (1 : F) * rho 100608) * (relationLc1828 rho) = ((1 : F) * rho 100609)

def relationLc1829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100608) * (relationLc1829 rho) = ((1 : F) * rho 100610)

def relationLc1830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100607) * (relationLc1830 rho) = ((1 : F) * rho 100611)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100610) * ((1 : F) * rho 100611) = ((1 : F) * rho 100612)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100613) * ((1 : F) + (1 : F) * rho 100612) = ((1 : F) * rho 100610 + (1 : F) * rho 100611)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100614) * ((1 : F) + (-1 : F) * rho 100612) = ((1 : F) * rho 100609 + (-1 : F) * rho 100610 + (-1 : F) * rho 100611)

def relationLc1831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 79⟩], residual := [((1 : F), 100613)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99415) * (relationLc1831 rho) = ((1 : F) * rho 100615)

def relationLc1832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 79⟩], residual := [((1 : F), 100614)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99415) * (relationLc1832 rho) = ((1 : F) * rho 100616)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100607) * ((1 : F) * rho 100608) = ((1 : F) * rho 100617)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100607) * ((1 : F) * rho 100607) = ((1 : F) * rho 100618)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100608) * ((1 : F) * rho 100608) = ((1 : F) * rho 100619)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100620) * ((-1 : F) * rho 100618 + (1 : F) * rho 100619) = ((2 : F) * rho 100617)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100621) * ((2 : F) + (1 : F) * rho 100618 + (-1 : F) * rho 100619) = ((1 : F) * rho 100618 + (1 : F) * rho 100619)

def relationLc1833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 80⟩, ⟨(1 : F), 99589, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100620 + (1 : F) * rho 100621) * (relationLc1833 rho) = ((1 : F) * rho 100622)

def relationLc1834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100621) * (relationLc1834 rho) = ((1 : F) * rho 100623)

def relationLc1835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100620) * (relationLc1835 rho) = ((1 : F) * rho 100624)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100623) * ((1 : F) * rho 100624) = ((1 : F) * rho 100625)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100626) * ((1 : F) + (1 : F) * rho 100625) = ((1 : F) * rho 100623 + (1 : F) * rho 100624)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100627) * ((1 : F) + (-1 : F) * rho 100625) = ((1 : F) * rho 100622 + (-1 : F) * rho 100623 + (-1 : F) * rho 100624)

def relationLc1836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 80⟩], residual := [((1 : F), 100626)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99416) * (relationLc1836 rho) = ((1 : F) * rho 100628)

def relationLc1837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 80⟩], residual := [((1 : F), 100627)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99416) * (relationLc1837 rho) = ((1 : F) * rho 100629)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100620) * ((1 : F) * rho 100621) = ((1 : F) * rho 100630)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100620) * ((1 : F) * rho 100620) = ((1 : F) * rho 100631)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100621) * ((1 : F) * rho 100621) = ((1 : F) * rho 100632)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100633) * ((-1 : F) * rho 100631 + (1 : F) * rho 100632) = ((2 : F) * rho 100630)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100634) * ((2 : F) + (1 : F) * rho 100631 + (-1 : F) * rho 100632) = ((1 : F) * rho 100631 + (1 : F) * rho 100632)

def relationLc1838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 81⟩, ⟨(1 : F), 99589, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100633 + (1 : F) * rho 100634) * (relationLc1838 rho) = ((1 : F) * rho 100635)

def relationLc1839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100634) * (relationLc1839 rho) = ((1 : F) * rho 100636)

def relationLc1840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100633) * (relationLc1840 rho) = ((1 : F) * rho 100637)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100636) * ((1 : F) * rho 100637) = ((1 : F) * rho 100638)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100639) * ((1 : F) + (1 : F) * rho 100638) = ((1 : F) * rho 100636 + (1 : F) * rho 100637)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100640) * ((1 : F) + (-1 : F) * rho 100638) = ((1 : F) * rho 100635 + (-1 : F) * rho 100636 + (-1 : F) * rho 100637)

def relationLc1841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 81⟩], residual := [((1 : F), 100639)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99417) * (relationLc1841 rho) = ((1 : F) * rho 100641)

def relationLc1842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 81⟩], residual := [((1 : F), 100640)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99417) * (relationLc1842 rho) = ((1 : F) * rho 100642)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100633) * ((1 : F) * rho 100634) = ((1 : F) * rho 100643)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100633) * ((1 : F) * rho 100633) = ((1 : F) * rho 100644)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100634) * ((1 : F) * rho 100634) = ((1 : F) * rho 100645)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100646) * ((-1 : F) * rho 100644 + (1 : F) * rho 100645) = ((2 : F) * rho 100643)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100647) * ((2 : F) + (1 : F) * rho 100644 + (-1 : F) * rho 100645) = ((1 : F) * rho 100644 + (1 : F) * rho 100645)

def relationLc1843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 82⟩, ⟨(1 : F), 99589, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100646 + (1 : F) * rho 100647) * (relationLc1843 rho) = ((1 : F) * rho 100648)

def relationLc1844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100647) * (relationLc1844 rho) = ((1 : F) * rho 100649)

def relationLc1845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100646) * (relationLc1845 rho) = ((1 : F) * rho 100650)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100649) * ((1 : F) * rho 100650) = ((1 : F) * rho 100651)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100652) * ((1 : F) + (1 : F) * rho 100651) = ((1 : F) * rho 100649 + (1 : F) * rho 100650)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100653) * ((1 : F) + (-1 : F) * rho 100651) = ((1 : F) * rho 100648 + (-1 : F) * rho 100649 + (-1 : F) * rho 100650)

def relationLc1846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 82⟩], residual := [((1 : F), 100652)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99418) * (relationLc1846 rho) = ((1 : F) * rho 100654)

def relationLc1847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 82⟩], residual := [((1 : F), 100653)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99418) * (relationLc1847 rho) = ((1 : F) * rho 100655)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100646) * ((1 : F) * rho 100647) = ((1 : F) * rho 100656)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100646) * ((1 : F) * rho 100646) = ((1 : F) * rho 100657)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100647) * ((1 : F) * rho 100647) = ((1 : F) * rho 100658)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100659) * ((-1 : F) * rho 100657 + (1 : F) * rho 100658) = ((2 : F) * rho 100656)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100660) * ((2 : F) + (1 : F) * rho 100657 + (-1 : F) * rho 100658) = ((1 : F) * rho 100657 + (1 : F) * rho 100658)

def relationLc1848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 83⟩, ⟨(1 : F), 99589, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100659 + (1 : F) * rho 100660) * (relationLc1848 rho) = ((1 : F) * rho 100661)

def relationLc1849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100660) * (relationLc1849 rho) = ((1 : F) * rho 100662)

def relationLc1850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100659) * (relationLc1850 rho) = ((1 : F) * rho 100663)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100662) * ((1 : F) * rho 100663) = ((1 : F) * rho 100664)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100665) * ((1 : F) + (1 : F) * rho 100664) = ((1 : F) * rho 100662 + (1 : F) * rho 100663)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100666) * ((1 : F) + (-1 : F) * rho 100664) = ((1 : F) * rho 100661 + (-1 : F) * rho 100662 + (-1 : F) * rho 100663)

def relationLc1851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 83⟩], residual := [((1 : F), 100665)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99419) * (relationLc1851 rho) = ((1 : F) * rho 100667)

def relationLc1852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 83⟩], residual := [((1 : F), 100666)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99419) * (relationLc1852 rho) = ((1 : F) * rho 100668)

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100659) * ((1 : F) * rho 100660) = ((1 : F) * rho 100669)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100659) * ((1 : F) * rho 100659) = ((1 : F) * rho 100670)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100660) * ((1 : F) * rho 100660) = ((1 : F) * rho 100671)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100672) * ((-1 : F) * rho 100670 + (1 : F) * rho 100671) = ((2 : F) * rho 100669)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100673) * ((2 : F) + (1 : F) * rho 100670 + (-1 : F) * rho 100671) = ((1 : F) * rho 100670 + (1 : F) * rho 100671)

def relationLc1853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 84⟩, ⟨(1 : F), 99589, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100672 + (1 : F) * rho 100673) * (relationLc1853 rho) = ((1 : F) * rho 100674)

def relationLc1854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100673) * (relationLc1854 rho) = ((1 : F) * rho 100675)

def relationLc1855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100672) * (relationLc1855 rho) = ((1 : F) * rho 100676)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100675) * ((1 : F) * rho 100676) = ((1 : F) * rho 100677)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100678) * ((1 : F) + (1 : F) * rho 100677) = ((1 : F) * rho 100675 + (1 : F) * rho 100676)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100679) * ((1 : F) + (-1 : F) * rho 100677) = ((1 : F) * rho 100674 + (-1 : F) * rho 100675 + (-1 : F) * rho 100676)

def relationLc1856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 84⟩], residual := [((1 : F), 100678)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99420) * (relationLc1856 rho) = ((1 : F) * rho 100680)

def relationLc1857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 84⟩], residual := [((1 : F), 100679)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99420) * (relationLc1857 rho) = ((1 : F) * rho 100681)

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100672) * ((1 : F) * rho 100673) = ((1 : F) * rho 100682)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100672) * ((1 : F) * rho 100672) = ((1 : F) * rho 100683)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100673) * ((1 : F) * rho 100673) = ((1 : F) * rho 100684)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100685) * ((-1 : F) * rho 100683 + (1 : F) * rho 100684) = ((2 : F) * rho 100682)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100686) * ((2 : F) + (1 : F) * rho 100683 + (-1 : F) * rho 100684) = ((1 : F) * rho 100683 + (1 : F) * rho 100684)

def relationLc1858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 85⟩, ⟨(1 : F), 99589, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100685 + (1 : F) * rho 100686) * (relationLc1858 rho) = ((1 : F) * rho 100687)

def relationLc1859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100686) * (relationLc1859 rho) = ((1 : F) * rho 100688)

def relationLc1860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100685) * (relationLc1860 rho) = ((1 : F) * rho 100689)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100688) * ((1 : F) * rho 100689) = ((1 : F) * rho 100690)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100691) * ((1 : F) + (1 : F) * rho 100690) = ((1 : F) * rho 100688 + (1 : F) * rho 100689)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100692) * ((1 : F) + (-1 : F) * rho 100690) = ((1 : F) * rho 100687 + (-1 : F) * rho 100688 + (-1 : F) * rho 100689)

def relationLc1861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 85⟩], residual := [((1 : F), 100691)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99421) * (relationLc1861 rho) = ((1 : F) * rho 100693)

def relationLc1862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 85⟩], residual := [((1 : F), 100692)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99421) * (relationLc1862 rho) = ((1 : F) * rho 100694)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100685) * ((1 : F) * rho 100686) = ((1 : F) * rho 100695)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100685) * ((1 : F) * rho 100685) = ((1 : F) * rho 100696)

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100686) * ((1 : F) * rho 100686) = ((1 : F) * rho 100697)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100698) * ((-1 : F) * rho 100696 + (1 : F) * rho 100697) = ((2 : F) * rho 100695)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100699) * ((2 : F) + (1 : F) * rho 100696 + (-1 : F) * rho 100697) = ((1 : F) * rho 100696 + (1 : F) * rho 100697)

def relationLc1863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 86⟩, ⟨(1 : F), 99589, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100698 + (1 : F) * rho 100699) * (relationLc1863 rho) = ((1 : F) * rho 100700)

def relationLc1864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100699) * (relationLc1864 rho) = ((1 : F) * rho 100701)

def relationLc1865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100698) * (relationLc1865 rho) = ((1 : F) * rho 100702)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100701) * ((1 : F) * rho 100702) = ((1 : F) * rho 100703)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100704) * ((1 : F) + (1 : F) * rho 100703) = ((1 : F) * rho 100701 + (1 : F) * rho 100702)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100705) * ((1 : F) + (-1 : F) * rho 100703) = ((1 : F) * rho 100700 + (-1 : F) * rho 100701 + (-1 : F) * rho 100702)

def relationLc1866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 86⟩], residual := [((1 : F), 100704)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99422) * (relationLc1866 rho) = ((1 : F) * rho 100706)

def relationLc1867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 86⟩], residual := [((1 : F), 100705)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99422) * (relationLc1867 rho) = ((1 : F) * rho 100707)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100698) * ((1 : F) * rho 100699) = ((1 : F) * rho 100708)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100698) * ((1 : F) * rho 100698) = ((1 : F) * rho 100709)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100699) * ((1 : F) * rho 100699) = ((1 : F) * rho 100710)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100711) * ((-1 : F) * rho 100709 + (1 : F) * rho 100710) = ((2 : F) * rho 100708)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100712) * ((2 : F) + (1 : F) * rho 100709 + (-1 : F) * rho 100710) = ((1 : F) * rho 100709 + (1 : F) * rho 100710)

def relationLc1868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 87⟩, ⟨(1 : F), 99589, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100711 + (1 : F) * rho 100712) * (relationLc1868 rho) = ((1 : F) * rho 100713)

def relationLc1869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100712) * (relationLc1869 rho) = ((1 : F) * rho 100714)

def relationLc1870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100711) * (relationLc1870 rho) = ((1 : F) * rho 100715)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100714) * ((1 : F) * rho 100715) = ((1 : F) * rho 100716)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100717) * ((1 : F) + (1 : F) * rho 100716) = ((1 : F) * rho 100714 + (1 : F) * rho 100715)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100718) * ((1 : F) + (-1 : F) * rho 100716) = ((1 : F) * rho 100713 + (-1 : F) * rho 100714 + (-1 : F) * rho 100715)

def relationLc1871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 87⟩], residual := [((1 : F), 100717)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99423) * (relationLc1871 rho) = ((1 : F) * rho 100719)

def relationLc1872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 87⟩], residual := [((1 : F), 100718)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99423) * (relationLc1872 rho) = ((1 : F) * rho 100720)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100711) * ((1 : F) * rho 100712) = ((1 : F) * rho 100721)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100711) * ((1 : F) * rho 100711) = ((1 : F) * rho 100722)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100712) * ((1 : F) * rho 100712) = ((1 : F) * rho 100723)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100724) * ((-1 : F) * rho 100722 + (1 : F) * rho 100723) = ((2 : F) * rho 100721)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100725) * ((2 : F) + (1 : F) * rho 100722 + (-1 : F) * rho 100723) = ((1 : F) * rho 100722 + (1 : F) * rho 100723)

def relationLc1873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 88⟩, ⟨(1 : F), 99589, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100724 + (1 : F) * rho 100725) * (relationLc1873 rho) = ((1 : F) * rho 100726)

def relationLc1874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100725) * (relationLc1874 rho) = ((1 : F) * rho 100727)

def relationLc1875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100724) * (relationLc1875 rho) = ((1 : F) * rho 100728)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100727) * ((1 : F) * rho 100728) = ((1 : F) * rho 100729)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100730) * ((1 : F) + (1 : F) * rho 100729) = ((1 : F) * rho 100727 + (1 : F) * rho 100728)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100731) * ((1 : F) + (-1 : F) * rho 100729) = ((1 : F) * rho 100726 + (-1 : F) * rho 100727 + (-1 : F) * rho 100728)

def relationLc1876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 88⟩], residual := [((1 : F), 100730)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99424) * (relationLc1876 rho) = ((1 : F) * rho 100732)

def relationLc1877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 88⟩], residual := [((1 : F), 100731)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99424) * (relationLc1877 rho) = ((1 : F) * rho 100733)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100724) * ((1 : F) * rho 100725) = ((1 : F) * rho 100734)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100724) * ((1 : F) * rho 100724) = ((1 : F) * rho 100735)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100725) * ((1 : F) * rho 100725) = ((1 : F) * rho 100736)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100737) * ((-1 : F) * rho 100735 + (1 : F) * rho 100736) = ((2 : F) * rho 100734)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100738) * ((2 : F) + (1 : F) * rho 100735 + (-1 : F) * rho 100736) = ((1 : F) * rho 100735 + (1 : F) * rho 100736)

def relationLc1878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 89⟩, ⟨(1 : F), 99589, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100737 + (1 : F) * rho 100738) * (relationLc1878 rho) = ((1 : F) * rho 100739)

def relationLc1879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100738) * (relationLc1879 rho) = ((1 : F) * rho 100740)

def relationLc1880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100737) * (relationLc1880 rho) = ((1 : F) * rho 100741)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100740) * ((1 : F) * rho 100741) = ((1 : F) * rho 100742)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100743) * ((1 : F) + (1 : F) * rho 100742) = ((1 : F) * rho 100740 + (1 : F) * rho 100741)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100744) * ((1 : F) + (-1 : F) * rho 100742) = ((1 : F) * rho 100739 + (-1 : F) * rho 100740 + (-1 : F) * rho 100741)

def relationLc1881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 89⟩], residual := [((1 : F), 100743)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99425) * (relationLc1881 rho) = ((1 : F) * rho 100745)

def relationLc1882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 89⟩], residual := [((1 : F), 100744)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99425) * (relationLc1882 rho) = ((1 : F) * rho 100746)

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100737) * ((1 : F) * rho 100738) = ((1 : F) * rho 100747)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100737) * ((1 : F) * rho 100737) = ((1 : F) * rho 100748)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100738) * ((1 : F) * rho 100738) = ((1 : F) * rho 100749)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100750) * ((-1 : F) * rho 100748 + (1 : F) * rho 100749) = ((2 : F) * rho 100747)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100751) * ((2 : F) + (1 : F) * rho 100748 + (-1 : F) * rho 100749) = ((1 : F) * rho 100748 + (1 : F) * rho 100749)

def relationLc1883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 90⟩, ⟨(1 : F), 99589, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100750 + (1 : F) * rho 100751) * (relationLc1883 rho) = ((1 : F) * rho 100752)

def relationLc1884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100751) * (relationLc1884 rho) = ((1 : F) * rho 100753)

def relationLc1885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100750) * (relationLc1885 rho) = ((1 : F) * rho 100754)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100753) * ((1 : F) * rho 100754) = ((1 : F) * rho 100755)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100756) * ((1 : F) + (1 : F) * rho 100755) = ((1 : F) * rho 100753 + (1 : F) * rho 100754)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100757) * ((1 : F) + (-1 : F) * rho 100755) = ((1 : F) * rho 100752 + (-1 : F) * rho 100753 + (-1 : F) * rho 100754)

def relationLc1886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 90⟩], residual := [((1 : F), 100756)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99426) * (relationLc1886 rho) = ((1 : F) * rho 100758)

def relationLc1887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 90⟩], residual := [((1 : F), 100757)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99426) * (relationLc1887 rho) = ((1 : F) * rho 100759)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100750) * ((1 : F) * rho 100751) = ((1 : F) * rho 100760)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100750) * ((1 : F) * rho 100750) = ((1 : F) * rho 100761)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100751) * ((1 : F) * rho 100751) = ((1 : F) * rho 100762)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100763) * ((-1 : F) * rho 100761 + (1 : F) * rho 100762) = ((2 : F) * rho 100760)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100764) * ((2 : F) + (1 : F) * rho 100761 + (-1 : F) * rho 100762) = ((1 : F) * rho 100761 + (1 : F) * rho 100762)

def relationLc1888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 91⟩, ⟨(1 : F), 99589, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100763 + (1 : F) * rho 100764) * (relationLc1888 rho) = ((1 : F) * rho 100765)

def relationLc1889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100764) * (relationLc1889 rho) = ((1 : F) * rho 100766)

def relationLc1890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100763) * (relationLc1890 rho) = ((1 : F) * rho 100767)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100766) * ((1 : F) * rho 100767) = ((1 : F) * rho 100768)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100769) * ((1 : F) + (1 : F) * rho 100768) = ((1 : F) * rho 100766 + (1 : F) * rho 100767)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100770) * ((1 : F) + (-1 : F) * rho 100768) = ((1 : F) * rho 100765 + (-1 : F) * rho 100766 + (-1 : F) * rho 100767)

def relationLc1891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 91⟩], residual := [((1 : F), 100769)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99427) * (relationLc1891 rho) = ((1 : F) * rho 100771)

def relationLc1892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 91⟩], residual := [((1 : F), 100770)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99427) * (relationLc1892 rho) = ((1 : F) * rho 100772)

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100763) * ((1 : F) * rho 100764) = ((1 : F) * rho 100773)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100763) * ((1 : F) * rho 100763) = ((1 : F) * rho 100774)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100764) * ((1 : F) * rho 100764) = ((1 : F) * rho 100775)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100776) * ((-1 : F) * rho 100774 + (1 : F) * rho 100775) = ((2 : F) * rho 100773)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100777) * ((2 : F) + (1 : F) * rho 100774 + (-1 : F) * rho 100775) = ((1 : F) * rho 100774 + (1 : F) * rho 100775)

def relationLc1893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 92⟩, ⟨(1 : F), 99589, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100776 + (1 : F) * rho 100777) * (relationLc1893 rho) = ((1 : F) * rho 100778)

def relationLc1894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100777) * (relationLc1894 rho) = ((1 : F) * rho 100779)

def relationLc1895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100776) * (relationLc1895 rho) = ((1 : F) * rho 100780)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100779) * ((1 : F) * rho 100780) = ((1 : F) * rho 100781)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100782) * ((1 : F) + (1 : F) * rho 100781) = ((1 : F) * rho 100779 + (1 : F) * rho 100780)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100783) * ((1 : F) + (-1 : F) * rho 100781) = ((1 : F) * rho 100778 + (-1 : F) * rho 100779 + (-1 : F) * rho 100780)

def relationLc1896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 92⟩], residual := [((1 : F), 100782)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99428) * (relationLc1896 rho) = ((1 : F) * rho 100784)

def relationLc1897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 92⟩], residual := [((1 : F), 100783)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99428) * (relationLc1897 rho) = ((1 : F) * rho 100785)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100776) * ((1 : F) * rho 100777) = ((1 : F) * rho 100786)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100776) * ((1 : F) * rho 100776) = ((1 : F) * rho 100787)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100777) * ((1 : F) * rho 100777) = ((1 : F) * rho 100788)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100789) * ((-1 : F) * rho 100787 + (1 : F) * rho 100788) = ((2 : F) * rho 100786)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100790) * ((2 : F) + (1 : F) * rho 100787 + (-1 : F) * rho 100788) = ((1 : F) * rho 100787 + (1 : F) * rho 100788)

def relationLc1898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 93⟩, ⟨(1 : F), 99589, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100789 + (1 : F) * rho 100790) * (relationLc1898 rho) = ((1 : F) * rho 100791)

def relationLc1899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100790) * (relationLc1899 rho) = ((1 : F) * rho 100792)

def relationLc1900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100789) * (relationLc1900 rho) = ((1 : F) * rho 100793)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100792) * ((1 : F) * rho 100793) = ((1 : F) * rho 100794)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100795) * ((1 : F) + (1 : F) * rho 100794) = ((1 : F) * rho 100792 + (1 : F) * rho 100793)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100796) * ((1 : F) + (-1 : F) * rho 100794) = ((1 : F) * rho 100791 + (-1 : F) * rho 100792 + (-1 : F) * rho 100793)

def relationLc1901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 93⟩], residual := [((1 : F), 100795)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99429) * (relationLc1901 rho) = ((1 : F) * rho 100797)

def relationLc1902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 93⟩], residual := [((1 : F), 100796)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99429) * (relationLc1902 rho) = ((1 : F) * rho 100798)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100789) * ((1 : F) * rho 100790) = ((1 : F) * rho 100799)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100789) * ((1 : F) * rho 100789) = ((1 : F) * rho 100800)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100790) * ((1 : F) * rho 100790) = ((1 : F) * rho 100801)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100802) * ((-1 : F) * rho 100800 + (1 : F) * rho 100801) = ((2 : F) * rho 100799)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100803) * ((2 : F) + (1 : F) * rho 100800 + (-1 : F) * rho 100801) = ((1 : F) * rho 100800 + (1 : F) * rho 100801)

def relationLc1903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 94⟩, ⟨(1 : F), 99589, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100802 + (1 : F) * rho 100803) * (relationLc1903 rho) = ((1 : F) * rho 100804)

def relationLc1904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100803) * (relationLc1904 rho) = ((1 : F) * rho 100805)

def relationLc1905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100802) * (relationLc1905 rho) = ((1 : F) * rho 100806)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100805) * ((1 : F) * rho 100806) = ((1 : F) * rho 100807)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100808) * ((1 : F) + (1 : F) * rho 100807) = ((1 : F) * rho 100805 + (1 : F) * rho 100806)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100809) * ((1 : F) + (-1 : F) * rho 100807) = ((1 : F) * rho 100804 + (-1 : F) * rho 100805 + (-1 : F) * rho 100806)

def relationLc1906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 94⟩], residual := [((1 : F), 100808)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99430) * (relationLc1906 rho) = ((1 : F) * rho 100810)

def relationLc1907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 94⟩], residual := [((1 : F), 100809)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99430) * (relationLc1907 rho) = ((1 : F) * rho 100811)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100802) * ((1 : F) * rho 100803) = ((1 : F) * rho 100812)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100802) * ((1 : F) * rho 100802) = ((1 : F) * rho 100813)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100803) * ((1 : F) * rho 100803) = ((1 : F) * rho 100814)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100815) * ((-1 : F) * rho 100813 + (1 : F) * rho 100814) = ((2 : F) * rho 100812)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100816) * ((2 : F) + (1 : F) * rho 100813 + (-1 : F) * rho 100814) = ((1 : F) * rho 100813 + (1 : F) * rho 100814)

def relationLc1908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 95⟩, ⟨(1 : F), 99589, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100815 + (1 : F) * rho 100816) * (relationLc1908 rho) = ((1 : F) * rho 100817)

def relationLc1909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100816) * (relationLc1909 rho) = ((1 : F) * rho 100818)

def relationLc1910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100815) * (relationLc1910 rho) = ((1 : F) * rho 100819)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100818) * ((1 : F) * rho 100819) = ((1 : F) * rho 100820)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100821) * ((1 : F) + (1 : F) * rho 100820) = ((1 : F) * rho 100818 + (1 : F) * rho 100819)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100822) * ((1 : F) + (-1 : F) * rho 100820) = ((1 : F) * rho 100817 + (-1 : F) * rho 100818 + (-1 : F) * rho 100819)

def relationLc1911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 95⟩], residual := [((1 : F), 100821)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99431) * (relationLc1911 rho) = ((1 : F) * rho 100823)

def relationLc1912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 95⟩], residual := [((1 : F), 100822)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99431) * (relationLc1912 rho) = ((1 : F) * rho 100824)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100815) * ((1 : F) * rho 100816) = ((1 : F) * rho 100825)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100815) * ((1 : F) * rho 100815) = ((1 : F) * rho 100826)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100816) * ((1 : F) * rho 100816) = ((1 : F) * rho 100827)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100828) * ((-1 : F) * rho 100826 + (1 : F) * rho 100827) = ((2 : F) * rho 100825)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100829) * ((2 : F) + (1 : F) * rho 100826 + (-1 : F) * rho 100827) = ((1 : F) * rho 100826 + (1 : F) * rho 100827)

def relationLc1913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 96⟩, ⟨(1 : F), 99589, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100828 + (1 : F) * rho 100829) * (relationLc1913 rho) = ((1 : F) * rho 100830)

def relationLc1914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100829) * (relationLc1914 rho) = ((1 : F) * rho 100831)

def relationLc1915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100828) * (relationLc1915 rho) = ((1 : F) * rho 100832)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100831) * ((1 : F) * rho 100832) = ((1 : F) * rho 100833)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100834) * ((1 : F) + (1 : F) * rho 100833) = ((1 : F) * rho 100831 + (1 : F) * rho 100832)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100835) * ((1 : F) + (-1 : F) * rho 100833) = ((1 : F) * rho 100830 + (-1 : F) * rho 100831 + (-1 : F) * rho 100832)

def relationLc1916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 96⟩], residual := [((1 : F), 100834)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99432) * (relationLc1916 rho) = ((1 : F) * rho 100836)

def relationLc1917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 96⟩], residual := [((1 : F), 100835)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99432) * (relationLc1917 rho) = ((1 : F) * rho 100837)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100828) * ((1 : F) * rho 100829) = ((1 : F) * rho 100838)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100828) * ((1 : F) * rho 100828) = ((1 : F) * rho 100839)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100829) * ((1 : F) * rho 100829) = ((1 : F) * rho 100840)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100841) * ((-1 : F) * rho 100839 + (1 : F) * rho 100840) = ((2 : F) * rho 100838)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100842) * ((2 : F) + (1 : F) * rho 100839 + (-1 : F) * rho 100840) = ((1 : F) * rho 100839 + (1 : F) * rho 100840)

def relationLc1918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 97⟩, ⟨(1 : F), 99589, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100841 + (1 : F) * rho 100842) * (relationLc1918 rho) = ((1 : F) * rho 100843)

def relationLc1919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100842) * (relationLc1919 rho) = ((1 : F) * rho 100844)

def relationLc1920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100841) * (relationLc1920 rho) = ((1 : F) * rho 100845)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100844) * ((1 : F) * rho 100845) = ((1 : F) * rho 100846)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100847) * ((1 : F) + (1 : F) * rho 100846) = ((1 : F) * rho 100844 + (1 : F) * rho 100845)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100848) * ((1 : F) + (-1 : F) * rho 100846) = ((1 : F) * rho 100843 + (-1 : F) * rho 100844 + (-1 : F) * rho 100845)

def relationLc1921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 97⟩], residual := [((1 : F), 100847)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99433) * (relationLc1921 rho) = ((1 : F) * rho 100849)

def relationLc1922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 97⟩], residual := [((1 : F), 100848)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99433) * (relationLc1922 rho) = ((1 : F) * rho 100850)

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100841) * ((1 : F) * rho 100842) = ((1 : F) * rho 100851)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100841) * ((1 : F) * rho 100841) = ((1 : F) * rho 100852)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100842) * ((1 : F) * rho 100842) = ((1 : F) * rho 100853)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100854) * ((-1 : F) * rho 100852 + (1 : F) * rho 100853) = ((2 : F) * rho 100851)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100855) * ((2 : F) + (1 : F) * rho 100852 + (-1 : F) * rho 100853) = ((1 : F) * rho 100852 + (1 : F) * rho 100853)

def relationLc1923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 98⟩, ⟨(1 : F), 99589, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100854 + (1 : F) * rho 100855) * (relationLc1923 rho) = ((1 : F) * rho 100856)

def relationLc1924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100855) * (relationLc1924 rho) = ((1 : F) * rho 100857)

def relationLc1925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100854) * (relationLc1925 rho) = ((1 : F) * rho 100858)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100857) * ((1 : F) * rho 100858) = ((1 : F) * rho 100859)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100860) * ((1 : F) + (1 : F) * rho 100859) = ((1 : F) * rho 100857 + (1 : F) * rho 100858)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100861) * ((1 : F) + (-1 : F) * rho 100859) = ((1 : F) * rho 100856 + (-1 : F) * rho 100857 + (-1 : F) * rho 100858)

def relationLc1926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 98⟩], residual := [((1 : F), 100860)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99434) * (relationLc1926 rho) = ((1 : F) * rho 100862)

def relationLc1927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 98⟩], residual := [((1 : F), 100861)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99434) * (relationLc1927 rho) = ((1 : F) * rho 100863)

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100854) * ((1 : F) * rho 100855) = ((1 : F) * rho 100864)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100854) * ((1 : F) * rho 100854) = ((1 : F) * rho 100865)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100855) * ((1 : F) * rho 100855) = ((1 : F) * rho 100866)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100867) * ((-1 : F) * rho 100865 + (1 : F) * rho 100866) = ((2 : F) * rho 100864)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100868) * ((2 : F) + (1 : F) * rho 100865 + (-1 : F) * rho 100866) = ((1 : F) * rho 100865 + (1 : F) * rho 100866)

def relationLc1928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 99⟩, ⟨(1 : F), 99589, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100867 + (1 : F) * rho 100868) * (relationLc1928 rho) = ((1 : F) * rho 100869)

def relationLc1929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100868) * (relationLc1929 rho) = ((1 : F) * rho 100870)

def relationLc1930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100867) * (relationLc1930 rho) = ((1 : F) * rho 100871)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100870) * ((1 : F) * rho 100871) = ((1 : F) * rho 100872)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100873) * ((1 : F) + (1 : F) * rho 100872) = ((1 : F) * rho 100870 + (1 : F) * rho 100871)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100874) * ((1 : F) + (-1 : F) * rho 100872) = ((1 : F) * rho 100869 + (-1 : F) * rho 100870 + (-1 : F) * rho 100871)

def relationLc1931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 99⟩], residual := [((1 : F), 100873)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99435) * (relationLc1931 rho) = ((1 : F) * rho 100875)

def relationLc1932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 99⟩], residual := [((1 : F), 100874)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99435) * (relationLc1932 rho) = ((1 : F) * rho 100876)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100867) * ((1 : F) * rho 100868) = ((1 : F) * rho 100877)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100867) * ((1 : F) * rho 100867) = ((1 : F) * rho 100878)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100868) * ((1 : F) * rho 100868) = ((1 : F) * rho 100879)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100880) * ((-1 : F) * rho 100878 + (1 : F) * rho 100879) = ((2 : F) * rho 100877)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100881) * ((2 : F) + (1 : F) * rho 100878 + (-1 : F) * rho 100879) = ((1 : F) * rho 100878 + (1 : F) * rho 100879)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107
