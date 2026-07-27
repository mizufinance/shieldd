import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91273) * ((1 : F) + (-1 : F) * rho 91271) = ((1 : F) * rho 91268 + (-1 : F) * rho 91269 + (-1 : F) * rho 91270)

def relationLc1713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 55⟩], residual := [((1 : F), 91272)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90362) * (relationLc1713 rho) = ((1 : F) * rho 91274)

def relationLc1714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 55⟩], residual := [((1 : F), 91273)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90362) * (relationLc1714 rho) = ((1 : F) * rho 91275)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91266) * ((1 : F) * rho 91267) = ((1 : F) * rho 91276)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91266) * ((1 : F) * rho 91266) = ((1 : F) * rho 91277)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91267) * ((1 : F) * rho 91267) = ((1 : F) * rho 91278)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91279) * ((-1 : F) * rho 91277 + (1 : F) * rho 91278) = ((2 : F) * rho 91276)

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91280) * ((2 : F) + (1 : F) * rho 91277 + (-1 : F) * rho 91278) = ((1 : F) * rho 91277 + (1 : F) * rho 91278)

def relationLc1715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 56⟩, ⟨(1 : F), 90560, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91279 + (1 : F) * rho 91280) * (relationLc1715 rho) = ((1 : F) * rho 91281)

def relationLc1716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91280) * (relationLc1716 rho) = ((1 : F) * rho 91282)

def relationLc1717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91279) * (relationLc1717 rho) = ((1 : F) * rho 91283)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91282) * ((1 : F) * rho 91283) = ((1 : F) * rho 91284)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91285) * ((1 : F) + (1 : F) * rho 91284) = ((1 : F) * rho 91282 + (1 : F) * rho 91283)

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91286) * ((1 : F) + (-1 : F) * rho 91284) = ((1 : F) * rho 91281 + (-1 : F) * rho 91282 + (-1 : F) * rho 91283)

def relationLc1718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 56⟩], residual := [((1 : F), 91285)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90363) * (relationLc1718 rho) = ((1 : F) * rho 91287)

def relationLc1719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 56⟩], residual := [((1 : F), 91286)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90363) * (relationLc1719 rho) = ((1 : F) * rho 91288)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91279) * ((1 : F) * rho 91280) = ((1 : F) * rho 91289)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91279) * ((1 : F) * rho 91279) = ((1 : F) * rho 91290)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91280) * ((1 : F) * rho 91280) = ((1 : F) * rho 91291)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91292) * ((-1 : F) * rho 91290 + (1 : F) * rho 91291) = ((2 : F) * rho 91289)

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91293) * ((2 : F) + (1 : F) * rho 91290 + (-1 : F) * rho 91291) = ((1 : F) * rho 91290 + (1 : F) * rho 91291)

def relationLc1720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 57⟩, ⟨(1 : F), 90560, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91292 + (1 : F) * rho 91293) * (relationLc1720 rho) = ((1 : F) * rho 91294)

def relationLc1721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91293) * (relationLc1721 rho) = ((1 : F) * rho 91295)

def relationLc1722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91292) * (relationLc1722 rho) = ((1 : F) * rho 91296)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91295) * ((1 : F) * rho 91296) = ((1 : F) * rho 91297)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91298) * ((1 : F) + (1 : F) * rho 91297) = ((1 : F) * rho 91295 + (1 : F) * rho 91296)

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91299) * ((1 : F) + (-1 : F) * rho 91297) = ((1 : F) * rho 91294 + (-1 : F) * rho 91295 + (-1 : F) * rho 91296)

def relationLc1723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 57⟩], residual := [((1 : F), 91298)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90364) * (relationLc1723 rho) = ((1 : F) * rho 91300)

def relationLc1724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 57⟩], residual := [((1 : F), 91299)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90364) * (relationLc1724 rho) = ((1 : F) * rho 91301)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91292) * ((1 : F) * rho 91293) = ((1 : F) * rho 91302)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91292) * ((1 : F) * rho 91292) = ((1 : F) * rho 91303)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91293) * ((1 : F) * rho 91293) = ((1 : F) * rho 91304)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91305) * ((-1 : F) * rho 91303 + (1 : F) * rho 91304) = ((2 : F) * rho 91302)

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91306) * ((2 : F) + (1 : F) * rho 91303 + (-1 : F) * rho 91304) = ((1 : F) * rho 91303 + (1 : F) * rho 91304)

def relationLc1725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 58⟩, ⟨(1 : F), 90560, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91305 + (1 : F) * rho 91306) * (relationLc1725 rho) = ((1 : F) * rho 91307)

def relationLc1726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91306) * (relationLc1726 rho) = ((1 : F) * rho 91308)

def relationLc1727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91305) * (relationLc1727 rho) = ((1 : F) * rho 91309)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91308) * ((1 : F) * rho 91309) = ((1 : F) * rho 91310)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91311) * ((1 : F) + (1 : F) * rho 91310) = ((1 : F) * rho 91308 + (1 : F) * rho 91309)

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91312) * ((1 : F) + (-1 : F) * rho 91310) = ((1 : F) * rho 91307 + (-1 : F) * rho 91308 + (-1 : F) * rho 91309)

def relationLc1728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 58⟩], residual := [((1 : F), 91311)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90365) * (relationLc1728 rho) = ((1 : F) * rho 91313)

def relationLc1729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 58⟩], residual := [((1 : F), 91312)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90365) * (relationLc1729 rho) = ((1 : F) * rho 91314)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91305) * ((1 : F) * rho 91306) = ((1 : F) * rho 91315)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91305) * ((1 : F) * rho 91305) = ((1 : F) * rho 91316)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91306) * ((1 : F) * rho 91306) = ((1 : F) * rho 91317)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91318) * ((-1 : F) * rho 91316 + (1 : F) * rho 91317) = ((2 : F) * rho 91315)

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91319) * ((2 : F) + (1 : F) * rho 91316 + (-1 : F) * rho 91317) = ((1 : F) * rho 91316 + (1 : F) * rho 91317)

def relationLc1730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 59⟩, ⟨(1 : F), 90560, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91318 + (1 : F) * rho 91319) * (relationLc1730 rho) = ((1 : F) * rho 91320)

def relationLc1731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91319) * (relationLc1731 rho) = ((1 : F) * rho 91321)

def relationLc1732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91318) * (relationLc1732 rho) = ((1 : F) * rho 91322)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91321) * ((1 : F) * rho 91322) = ((1 : F) * rho 91323)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91324) * ((1 : F) + (1 : F) * rho 91323) = ((1 : F) * rho 91321 + (1 : F) * rho 91322)

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91325) * ((1 : F) + (-1 : F) * rho 91323) = ((1 : F) * rho 91320 + (-1 : F) * rho 91321 + (-1 : F) * rho 91322)

def relationLc1733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 59⟩], residual := [((1 : F), 91324)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90366) * (relationLc1733 rho) = ((1 : F) * rho 91326)

def relationLc1734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 59⟩], residual := [((1 : F), 91325)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90366) * (relationLc1734 rho) = ((1 : F) * rho 91327)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91318) * ((1 : F) * rho 91319) = ((1 : F) * rho 91328)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91318) * ((1 : F) * rho 91318) = ((1 : F) * rho 91329)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91319) * ((1 : F) * rho 91319) = ((1 : F) * rho 91330)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91331) * ((-1 : F) * rho 91329 + (1 : F) * rho 91330) = ((2 : F) * rho 91328)

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91332) * ((2 : F) + (1 : F) * rho 91329 + (-1 : F) * rho 91330) = ((1 : F) * rho 91329 + (1 : F) * rho 91330)

def relationLc1735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 60⟩, ⟨(1 : F), 90560, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91331 + (1 : F) * rho 91332) * (relationLc1735 rho) = ((1 : F) * rho 91333)

def relationLc1736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91332) * (relationLc1736 rho) = ((1 : F) * rho 91334)

def relationLc1737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91331) * (relationLc1737 rho) = ((1 : F) * rho 91335)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91334) * ((1 : F) * rho 91335) = ((1 : F) * rho 91336)

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91337) * ((1 : F) + (1 : F) * rho 91336) = ((1 : F) * rho 91334 + (1 : F) * rho 91335)

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91338) * ((1 : F) + (-1 : F) * rho 91336) = ((1 : F) * rho 91333 + (-1 : F) * rho 91334 + (-1 : F) * rho 91335)

def relationLc1738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 60⟩], residual := [((1 : F), 91337)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90367) * (relationLc1738 rho) = ((1 : F) * rho 91339)

def relationLc1739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 60⟩], residual := [((1 : F), 91338)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90367) * (relationLc1739 rho) = ((1 : F) * rho 91340)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91331) * ((1 : F) * rho 91332) = ((1 : F) * rho 91341)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91331) * ((1 : F) * rho 91331) = ((1 : F) * rho 91342)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91332) * ((1 : F) * rho 91332) = ((1 : F) * rho 91343)

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91344) * ((-1 : F) * rho 91342 + (1 : F) * rho 91343) = ((2 : F) * rho 91341)

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91345) * ((2 : F) + (1 : F) * rho 91342 + (-1 : F) * rho 91343) = ((1 : F) * rho 91342 + (1 : F) * rho 91343)

def relationLc1740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 61⟩, ⟨(1 : F), 90560, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91344 + (1 : F) * rho 91345) * (relationLc1740 rho) = ((1 : F) * rho 91346)

def relationLc1741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91345) * (relationLc1741 rho) = ((1 : F) * rho 91347)

def relationLc1742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91344) * (relationLc1742 rho) = ((1 : F) * rho 91348)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91347) * ((1 : F) * rho 91348) = ((1 : F) * rho 91349)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91350) * ((1 : F) + (1 : F) * rho 91349) = ((1 : F) * rho 91347 + (1 : F) * rho 91348)

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91351) * ((1 : F) + (-1 : F) * rho 91349) = ((1 : F) * rho 91346 + (-1 : F) * rho 91347 + (-1 : F) * rho 91348)

def relationLc1743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 61⟩], residual := [((1 : F), 91350)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90368) * (relationLc1743 rho) = ((1 : F) * rho 91352)

def relationLc1744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 61⟩], residual := [((1 : F), 91351)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90368) * (relationLc1744 rho) = ((1 : F) * rho 91353)

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91344) * ((1 : F) * rho 91345) = ((1 : F) * rho 91354)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91344) * ((1 : F) * rho 91344) = ((1 : F) * rho 91355)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91345) * ((1 : F) * rho 91345) = ((1 : F) * rho 91356)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91357) * ((-1 : F) * rho 91355 + (1 : F) * rho 91356) = ((2 : F) * rho 91354)

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91358) * ((2 : F) + (1 : F) * rho 91355 + (-1 : F) * rho 91356) = ((1 : F) * rho 91355 + (1 : F) * rho 91356)

def relationLc1745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 62⟩, ⟨(1 : F), 90560, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91357 + (1 : F) * rho 91358) * (relationLc1745 rho) = ((1 : F) * rho 91359)

def relationLc1746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91358) * (relationLc1746 rho) = ((1 : F) * rho 91360)

def relationLc1747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91357) * (relationLc1747 rho) = ((1 : F) * rho 91361)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91360) * ((1 : F) * rho 91361) = ((1 : F) * rho 91362)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91363) * ((1 : F) + (1 : F) * rho 91362) = ((1 : F) * rho 91360 + (1 : F) * rho 91361)

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91364) * ((1 : F) + (-1 : F) * rho 91362) = ((1 : F) * rho 91359 + (-1 : F) * rho 91360 + (-1 : F) * rho 91361)

def relationLc1748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 62⟩], residual := [((1 : F), 91363)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90369) * (relationLc1748 rho) = ((1 : F) * rho 91365)

def relationLc1749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 62⟩], residual := [((1 : F), 91364)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90369) * (relationLc1749 rho) = ((1 : F) * rho 91366)

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91357) * ((1 : F) * rho 91358) = ((1 : F) * rho 91367)

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91357) * ((1 : F) * rho 91357) = ((1 : F) * rho 91368)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91358) * ((1 : F) * rho 91358) = ((1 : F) * rho 91369)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91370) * ((-1 : F) * rho 91368 + (1 : F) * rho 91369) = ((2 : F) * rho 91367)

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91371) * ((2 : F) + (1 : F) * rho 91368 + (-1 : F) * rho 91369) = ((1 : F) * rho 91368 + (1 : F) * rho 91369)

def relationLc1750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 63⟩, ⟨(1 : F), 90560, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91370 + (1 : F) * rho 91371) * (relationLc1750 rho) = ((1 : F) * rho 91372)

def relationLc1751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91371) * (relationLc1751 rho) = ((1 : F) * rho 91373)

def relationLc1752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91370) * (relationLc1752 rho) = ((1 : F) * rho 91374)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91373) * ((1 : F) * rho 91374) = ((1 : F) * rho 91375)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91376) * ((1 : F) + (1 : F) * rho 91375) = ((1 : F) * rho 91373 + (1 : F) * rho 91374)

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91377) * ((1 : F) + (-1 : F) * rho 91375) = ((1 : F) * rho 91372 + (-1 : F) * rho 91373 + (-1 : F) * rho 91374)

def relationLc1753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 63⟩], residual := [((1 : F), 91376)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90370) * (relationLc1753 rho) = ((1 : F) * rho 91378)

def relationLc1754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 63⟩], residual := [((1 : F), 91377)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90370) * (relationLc1754 rho) = ((1 : F) * rho 91379)

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91370) * ((1 : F) * rho 91371) = ((1 : F) * rho 91380)

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91370) * ((1 : F) * rho 91370) = ((1 : F) * rho 91381)

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91371) * ((1 : F) * rho 91371) = ((1 : F) * rho 91382)

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91383) * ((-1 : F) * rho 91381 + (1 : F) * rho 91382) = ((2 : F) * rho 91380)

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91384) * ((2 : F) + (1 : F) * rho 91381 + (-1 : F) * rho 91382) = ((1 : F) * rho 91381 + (1 : F) * rho 91382)

def relationLc1755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 64⟩, ⟨(1 : F), 90560, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91383 + (1 : F) * rho 91384) * (relationLc1755 rho) = ((1 : F) * rho 91385)

def relationLc1756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91384) * (relationLc1756 rho) = ((1 : F) * rho 91386)

def relationLc1757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91383) * (relationLc1757 rho) = ((1 : F) * rho 91387)

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91386) * ((1 : F) * rho 91387) = ((1 : F) * rho 91388)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91389) * ((1 : F) + (1 : F) * rho 91388) = ((1 : F) * rho 91386 + (1 : F) * rho 91387)

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91390) * ((1 : F) + (-1 : F) * rho 91388) = ((1 : F) * rho 91385 + (-1 : F) * rho 91386 + (-1 : F) * rho 91387)

def relationLc1758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 64⟩], residual := [((1 : F), 91389)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90371) * (relationLc1758 rho) = ((1 : F) * rho 91391)

def relationLc1759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 64⟩], residual := [((1 : F), 91390)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90371) * (relationLc1759 rho) = ((1 : F) * rho 91392)

def relationRow2896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91383) * ((1 : F) * rho 91384) = ((1 : F) * rho 91393)

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91383) * ((1 : F) * rho 91383) = ((1 : F) * rho 91394)

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91384) * ((1 : F) * rho 91384) = ((1 : F) * rho 91395)

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91396) * ((-1 : F) * rho 91394 + (1 : F) * rho 91395) = ((2 : F) * rho 91393)

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91397) * ((2 : F) + (1 : F) * rho 91394 + (-1 : F) * rho 91395) = ((1 : F) * rho 91394 + (1 : F) * rho 91395)

def relationLc1760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 65⟩, ⟨(1 : F), 90560, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91396 + (1 : F) * rho 91397) * (relationLc1760 rho) = ((1 : F) * rho 91398)

def relationLc1761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91397) * (relationLc1761 rho) = ((1 : F) * rho 91399)

def relationLc1762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91396) * (relationLc1762 rho) = ((1 : F) * rho 91400)

def relationRow2904 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91399) * ((1 : F) * rho 91400) = ((1 : F) * rho 91401)

def relationRow2905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91402) * ((1 : F) + (1 : F) * rho 91401) = ((1 : F) * rho 91399 + (1 : F) * rho 91400)

def relationRow2906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91403) * ((1 : F) + (-1 : F) * rho 91401) = ((1 : F) * rho 91398 + (-1 : F) * rho 91399 + (-1 : F) * rho 91400)

def relationLc1763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 65⟩], residual := [((1 : F), 91402)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90372) * (relationLc1763 rho) = ((1 : F) * rho 91404)

def relationLc1764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 65⟩], residual := [((1 : F), 91403)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90372) * (relationLc1764 rho) = ((1 : F) * rho 91405)

def relationRow2909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91396) * ((1 : F) * rho 91397) = ((1 : F) * rho 91406)

def relationRow2910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91396) * ((1 : F) * rho 91396) = ((1 : F) * rho 91407)

def relationRow2911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91397) * ((1 : F) * rho 91397) = ((1 : F) * rho 91408)

def relationRow2912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91409) * ((-1 : F) * rho 91407 + (1 : F) * rho 91408) = ((2 : F) * rho 91406)

def relationRow2913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91410) * ((2 : F) + (1 : F) * rho 91407 + (-1 : F) * rho 91408) = ((1 : F) * rho 91407 + (1 : F) * rho 91408)

def relationLc1765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 66⟩, ⟨(1 : F), 90560, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91409 + (1 : F) * rho 91410) * (relationLc1765 rho) = ((1 : F) * rho 91411)

def relationLc1766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91410) * (relationLc1766 rho) = ((1 : F) * rho 91412)

def relationLc1767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91409) * (relationLc1767 rho) = ((1 : F) * rho 91413)

def relationRow2917 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91412) * ((1 : F) * rho 91413) = ((1 : F) * rho 91414)

def relationRow2918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91415) * ((1 : F) + (1 : F) * rho 91414) = ((1 : F) * rho 91412 + (1 : F) * rho 91413)

def relationRow2919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91416) * ((1 : F) + (-1 : F) * rho 91414) = ((1 : F) * rho 91411 + (-1 : F) * rho 91412 + (-1 : F) * rho 91413)

def relationLc1768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 66⟩], residual := [((1 : F), 91415)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90373) * (relationLc1768 rho) = ((1 : F) * rho 91417)

def relationLc1769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 66⟩], residual := [((1 : F), 91416)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90373) * (relationLc1769 rho) = ((1 : F) * rho 91418)

def relationRow2922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91409) * ((1 : F) * rho 91410) = ((1 : F) * rho 91419)

def relationRow2923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91409) * ((1 : F) * rho 91409) = ((1 : F) * rho 91420)

def relationRow2924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91410) * ((1 : F) * rho 91410) = ((1 : F) * rho 91421)

def relationRow2925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91422) * ((-1 : F) * rho 91420 + (1 : F) * rho 91421) = ((2 : F) * rho 91419)

def relationRow2926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91423) * ((2 : F) + (1 : F) * rho 91420 + (-1 : F) * rho 91421) = ((1 : F) * rho 91420 + (1 : F) * rho 91421)

def relationLc1770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 67⟩, ⟨(1 : F), 90560, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91422 + (1 : F) * rho 91423) * (relationLc1770 rho) = ((1 : F) * rho 91424)

def relationLc1771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91423) * (relationLc1771 rho) = ((1 : F) * rho 91425)

def relationLc1772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91422) * (relationLc1772 rho) = ((1 : F) * rho 91426)

def relationRow2930 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91425) * ((1 : F) * rho 91426) = ((1 : F) * rho 91427)

def relationRow2931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91428) * ((1 : F) + (1 : F) * rho 91427) = ((1 : F) * rho 91425 + (1 : F) * rho 91426)

def relationRow2932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91429) * ((1 : F) + (-1 : F) * rho 91427) = ((1 : F) * rho 91424 + (-1 : F) * rho 91425 + (-1 : F) * rho 91426)

def relationLc1773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 67⟩], residual := [((1 : F), 91428)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90374) * (relationLc1773 rho) = ((1 : F) * rho 91430)

def relationLc1774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 67⟩], residual := [((1 : F), 91429)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90374) * (relationLc1774 rho) = ((1 : F) * rho 91431)

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91422) * ((1 : F) * rho 91423) = ((1 : F) * rho 91432)

def relationRow2936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91422) * ((1 : F) * rho 91422) = ((1 : F) * rho 91433)

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91423) * ((1 : F) * rho 91423) = ((1 : F) * rho 91434)

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91435) * ((-1 : F) * rho 91433 + (1 : F) * rho 91434) = ((2 : F) * rho 91432)

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91436) * ((2 : F) + (1 : F) * rho 91433 + (-1 : F) * rho 91434) = ((1 : F) * rho 91433 + (1 : F) * rho 91434)

def relationLc1775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 68⟩, ⟨(1 : F), 90560, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91435 + (1 : F) * rho 91436) * (relationLc1775 rho) = ((1 : F) * rho 91437)

def relationLc1776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91436) * (relationLc1776 rho) = ((1 : F) * rho 91438)

def relationLc1777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91435) * (relationLc1777 rho) = ((1 : F) * rho 91439)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91438) * ((1 : F) * rho 91439) = ((1 : F) * rho 91440)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91441) * ((1 : F) + (1 : F) * rho 91440) = ((1 : F) * rho 91438 + (1 : F) * rho 91439)

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91442) * ((1 : F) + (-1 : F) * rho 91440) = ((1 : F) * rho 91437 + (-1 : F) * rho 91438 + (-1 : F) * rho 91439)

def relationLc1778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 68⟩], residual := [((1 : F), 91441)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90375) * (relationLc1778 rho) = ((1 : F) * rho 91443)

def relationLc1779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 68⟩], residual := [((1 : F), 91442)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90375) * (relationLc1779 rho) = ((1 : F) * rho 91444)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91435) * ((1 : F) * rho 91436) = ((1 : F) * rho 91445)

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91435) * ((1 : F) * rho 91435) = ((1 : F) * rho 91446)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91436) * ((1 : F) * rho 91436) = ((1 : F) * rho 91447)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91448) * ((-1 : F) * rho 91446 + (1 : F) * rho 91447) = ((2 : F) * rho 91445)

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91449) * ((2 : F) + (1 : F) * rho 91446 + (-1 : F) * rho 91447) = ((1 : F) * rho 91446 + (1 : F) * rho 91447)

def relationLc1780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 69⟩, ⟨(1 : F), 90560, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91448 + (1 : F) * rho 91449) * (relationLc1780 rho) = ((1 : F) * rho 91450)

def relationLc1781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91449) * (relationLc1781 rho) = ((1 : F) * rho 91451)

def relationLc1782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91448) * (relationLc1782 rho) = ((1 : F) * rho 91452)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91451) * ((1 : F) * rho 91452) = ((1 : F) * rho 91453)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91454) * ((1 : F) + (1 : F) * rho 91453) = ((1 : F) * rho 91451 + (1 : F) * rho 91452)

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91455) * ((1 : F) + (-1 : F) * rho 91453) = ((1 : F) * rho 91450 + (-1 : F) * rho 91451 + (-1 : F) * rho 91452)

def relationLc1783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 69⟩], residual := [((1 : F), 91454)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90376) * (relationLc1783 rho) = ((1 : F) * rho 91456)

def relationLc1784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 69⟩], residual := [((1 : F), 91455)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90376) * (relationLc1784 rho) = ((1 : F) * rho 91457)

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91448) * ((1 : F) * rho 91449) = ((1 : F) * rho 91458)

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91448) * ((1 : F) * rho 91448) = ((1 : F) * rho 91459)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91449) * ((1 : F) * rho 91449) = ((1 : F) * rho 91460)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91461) * ((-1 : F) * rho 91459 + (1 : F) * rho 91460) = ((2 : F) * rho 91458)

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91462) * ((2 : F) + (1 : F) * rho 91459 + (-1 : F) * rho 91460) = ((1 : F) * rho 91459 + (1 : F) * rho 91460)

def relationLc1785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 70⟩, ⟨(1 : F), 90560, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91461 + (1 : F) * rho 91462) * (relationLc1785 rho) = ((1 : F) * rho 91463)

def relationLc1786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91462) * (relationLc1786 rho) = ((1 : F) * rho 91464)

def relationLc1787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91461) * (relationLc1787 rho) = ((1 : F) * rho 91465)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91464) * ((1 : F) * rho 91465) = ((1 : F) * rho 91466)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91467) * ((1 : F) + (1 : F) * rho 91466) = ((1 : F) * rho 91464 + (1 : F) * rho 91465)

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91468) * ((1 : F) + (-1 : F) * rho 91466) = ((1 : F) * rho 91463 + (-1 : F) * rho 91464 + (-1 : F) * rho 91465)

def relationLc1788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 70⟩], residual := [((1 : F), 91467)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90377) * (relationLc1788 rho) = ((1 : F) * rho 91469)

def relationLc1789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 70⟩], residual := [((1 : F), 91468)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90377) * (relationLc1789 rho) = ((1 : F) * rho 91470)

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91461) * ((1 : F) * rho 91462) = ((1 : F) * rho 91471)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91461) * ((1 : F) * rho 91461) = ((1 : F) * rho 91472)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91462) * ((1 : F) * rho 91462) = ((1 : F) * rho 91473)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91474) * ((-1 : F) * rho 91472 + (1 : F) * rho 91473) = ((2 : F) * rho 91471)

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91475) * ((2 : F) + (1 : F) * rho 91472 + (-1 : F) * rho 91473) = ((1 : F) * rho 91472 + (1 : F) * rho 91473)

def relationLc1790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 71⟩, ⟨(1 : F), 90560, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91474 + (1 : F) * rho 91475) * (relationLc1790 rho) = ((1 : F) * rho 91476)

def relationLc1791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91475) * (relationLc1791 rho) = ((1 : F) * rho 91477)

def relationLc1792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91474) * (relationLc1792 rho) = ((1 : F) * rho 91478)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91477) * ((1 : F) * rho 91478) = ((1 : F) * rho 91479)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91480) * ((1 : F) + (1 : F) * rho 91479) = ((1 : F) * rho 91477 + (1 : F) * rho 91478)

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91481) * ((1 : F) + (-1 : F) * rho 91479) = ((1 : F) * rho 91476 + (-1 : F) * rho 91477 + (-1 : F) * rho 91478)

def relationLc1793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 71⟩], residual := [((1 : F), 91480)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90378) * (relationLc1793 rho) = ((1 : F) * rho 91482)

def relationLc1794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 71⟩], residual := [((1 : F), 91481)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90378) * (relationLc1794 rho) = ((1 : F) * rho 91483)

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91474) * ((1 : F) * rho 91475) = ((1 : F) * rho 91484)

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91474) * ((1 : F) * rho 91474) = ((1 : F) * rho 91485)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91475) * ((1 : F) * rho 91475) = ((1 : F) * rho 91486)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91487) * ((-1 : F) * rho 91485 + (1 : F) * rho 91486) = ((2 : F) * rho 91484)

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91488) * ((2 : F) + (1 : F) * rho 91485 + (-1 : F) * rho 91486) = ((1 : F) * rho 91485 + (1 : F) * rho 91486)

def relationLc1795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 72⟩, ⟨(1 : F), 90560, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91487 + (1 : F) * rho 91488) * (relationLc1795 rho) = ((1 : F) * rho 91489)

def relationLc1796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91488) * (relationLc1796 rho) = ((1 : F) * rho 91490)

def relationLc1797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91487) * (relationLc1797 rho) = ((1 : F) * rho 91491)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91490) * ((1 : F) * rho 91491) = ((1 : F) * rho 91492)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91493) * ((1 : F) + (1 : F) * rho 91492) = ((1 : F) * rho 91490 + (1 : F) * rho 91491)

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91494) * ((1 : F) + (-1 : F) * rho 91492) = ((1 : F) * rho 91489 + (-1 : F) * rho 91490 + (-1 : F) * rho 91491)

def relationLc1798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 72⟩], residual := [((1 : F), 91493)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90379) * (relationLc1798 rho) = ((1 : F) * rho 91495)

def relationLc1799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 72⟩], residual := [((1 : F), 91494)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90379) * (relationLc1799 rho) = ((1 : F) * rho 91496)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91487) * ((1 : F) * rho 91488) = ((1 : F) * rho 91497)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91487) * ((1 : F) * rho 91487) = ((1 : F) * rho 91498)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91488) * ((1 : F) * rho 91488) = ((1 : F) * rho 91499)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91500) * ((-1 : F) * rho 91498 + (1 : F) * rho 91499) = ((2 : F) * rho 91497)

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91501) * ((2 : F) + (1 : F) * rho 91498 + (-1 : F) * rho 91499) = ((1 : F) * rho 91498 + (1 : F) * rho 91499)

def relationLc1800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 73⟩, ⟨(1 : F), 90560, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91500 + (1 : F) * rho 91501) * (relationLc1800 rho) = ((1 : F) * rho 91502)

def relationLc1801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91501) * (relationLc1801 rho) = ((1 : F) * rho 91503)

def relationLc1802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91500) * (relationLc1802 rho) = ((1 : F) * rho 91504)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91503) * ((1 : F) * rho 91504) = ((1 : F) * rho 91505)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91506) * ((1 : F) + (1 : F) * rho 91505) = ((1 : F) * rho 91503 + (1 : F) * rho 91504)

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91507) * ((1 : F) + (-1 : F) * rho 91505) = ((1 : F) * rho 91502 + (-1 : F) * rho 91503 + (-1 : F) * rho 91504)

def relationLc1803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 73⟩], residual := [((1 : F), 91506)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90380) * (relationLc1803 rho) = ((1 : F) * rho 91508)

def relationLc1804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 73⟩], residual := [((1 : F), 91507)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90380) * (relationLc1804 rho) = ((1 : F) * rho 91509)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91500) * ((1 : F) * rho 91501) = ((1 : F) * rho 91510)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91500) * ((1 : F) * rho 91500) = ((1 : F) * rho 91511)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91501) * ((1 : F) * rho 91501) = ((1 : F) * rho 91512)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91513) * ((-1 : F) * rho 91511 + (1 : F) * rho 91512) = ((2 : F) * rho 91510)

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91514) * ((2 : F) + (1 : F) * rho 91511 + (-1 : F) * rho 91512) = ((1 : F) * rho 91511 + (1 : F) * rho 91512)

def relationLc1805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 74⟩, ⟨(1 : F), 90560, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91513 + (1 : F) * rho 91514) * (relationLc1805 rho) = ((1 : F) * rho 91515)

def relationLc1806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91514) * (relationLc1806 rho) = ((1 : F) * rho 91516)

def relationLc1807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91513) * (relationLc1807 rho) = ((1 : F) * rho 91517)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91516) * ((1 : F) * rho 91517) = ((1 : F) * rho 91518)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91519) * ((1 : F) + (1 : F) * rho 91518) = ((1 : F) * rho 91516 + (1 : F) * rho 91517)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91520) * ((1 : F) + (-1 : F) * rho 91518) = ((1 : F) * rho 91515 + (-1 : F) * rho 91516 + (-1 : F) * rho 91517)

def relationLc1808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 74⟩], residual := [((1 : F), 91519)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90381) * (relationLc1808 rho) = ((1 : F) * rho 91521)

def relationLc1809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 74⟩], residual := [((1 : F), 91520)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90381) * (relationLc1809 rho) = ((1 : F) * rho 91522)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91513) * ((1 : F) * rho 91514) = ((1 : F) * rho 91523)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91513) * ((1 : F) * rho 91513) = ((1 : F) * rho 91524)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91514) * ((1 : F) * rho 91514) = ((1 : F) * rho 91525)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91526) * ((-1 : F) * rho 91524 + (1 : F) * rho 91525) = ((2 : F) * rho 91523)

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91527) * ((2 : F) + (1 : F) * rho 91524 + (-1 : F) * rho 91525) = ((1 : F) * rho 91524 + (1 : F) * rho 91525)

def relationLc1810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 75⟩, ⟨(1 : F), 90560, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91526 + (1 : F) * rho 91527) * (relationLc1810 rho) = ((1 : F) * rho 91528)

def relationLc1811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91527) * (relationLc1811 rho) = ((1 : F) * rho 91529)

def relationLc1812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91526) * (relationLc1812 rho) = ((1 : F) * rho 91530)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91529) * ((1 : F) * rho 91530) = ((1 : F) * rho 91531)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91532) * ((1 : F) + (1 : F) * rho 91531) = ((1 : F) * rho 91529 + (1 : F) * rho 91530)

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91533) * ((1 : F) + (-1 : F) * rho 91531) = ((1 : F) * rho 91528 + (-1 : F) * rho 91529 + (-1 : F) * rho 91530)

def relationLc1813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 75⟩], residual := [((1 : F), 91532)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90382) * (relationLc1813 rho) = ((1 : F) * rho 91534)

def relationLc1814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 75⟩], residual := [((1 : F), 91533)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90382) * (relationLc1814 rho) = ((1 : F) * rho 91535)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91526) * ((1 : F) * rho 91527) = ((1 : F) * rho 91536)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91526) * ((1 : F) * rho 91526) = ((1 : F) * rho 91537)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91527) * ((1 : F) * rho 91527) = ((1 : F) * rho 91538)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91539) * ((-1 : F) * rho 91537 + (1 : F) * rho 91538) = ((2 : F) * rho 91536)

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91540) * ((2 : F) + (1 : F) * rho 91537 + (-1 : F) * rho 91538) = ((1 : F) * rho 91537 + (1 : F) * rho 91538)

def relationLc1815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 76⟩, ⟨(1 : F), 90560, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91539 + (1 : F) * rho 91540) * (relationLc1815 rho) = ((1 : F) * rho 91541)

def relationLc1816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91540) * (relationLc1816 rho) = ((1 : F) * rho 91542)

def relationLc1817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91539) * (relationLc1817 rho) = ((1 : F) * rho 91543)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91542) * ((1 : F) * rho 91543) = ((1 : F) * rho 91544)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91545) * ((1 : F) + (1 : F) * rho 91544) = ((1 : F) * rho 91542 + (1 : F) * rho 91543)

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91546) * ((1 : F) + (-1 : F) * rho 91544) = ((1 : F) * rho 91541 + (-1 : F) * rho 91542 + (-1 : F) * rho 91543)

def relationLc1818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 76⟩], residual := [((1 : F), 91545)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90383) * (relationLc1818 rho) = ((1 : F) * rho 91547)

def relationLc1819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 76⟩], residual := [((1 : F), 91546)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90383) * (relationLc1819 rho) = ((1 : F) * rho 91548)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91539) * ((1 : F) * rho 91540) = ((1 : F) * rho 91549)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91539) * ((1 : F) * rho 91539) = ((1 : F) * rho 91550)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91540) * ((1 : F) * rho 91540) = ((1 : F) * rho 91551)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91552) * ((-1 : F) * rho 91550 + (1 : F) * rho 91551) = ((2 : F) * rho 91549)

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91553) * ((2 : F) + (1 : F) * rho 91550 + (-1 : F) * rho 91551) = ((1 : F) * rho 91550 + (1 : F) * rho 91551)

def relationLc1820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 77⟩, ⟨(1 : F), 90560, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91552 + (1 : F) * rho 91553) * (relationLc1820 rho) = ((1 : F) * rho 91554)

def relationLc1821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91553) * (relationLc1821 rho) = ((1 : F) * rho 91555)

def relationLc1822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91552) * (relationLc1822 rho) = ((1 : F) * rho 91556)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91555) * ((1 : F) * rho 91556) = ((1 : F) * rho 91557)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91558) * ((1 : F) + (1 : F) * rho 91557) = ((1 : F) * rho 91555 + (1 : F) * rho 91556)

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91559) * ((1 : F) + (-1 : F) * rho 91557) = ((1 : F) * rho 91554 + (-1 : F) * rho 91555 + (-1 : F) * rho 91556)

def relationLc1823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 77⟩], residual := [((1 : F), 91558)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90384) * (relationLc1823 rho) = ((1 : F) * rho 91560)

def relationLc1824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 77⟩], residual := [((1 : F), 91559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90384) * (relationLc1824 rho) = ((1 : F) * rho 91561)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91552) * ((1 : F) * rho 91553) = ((1 : F) * rho 91562)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91552) * ((1 : F) * rho 91552) = ((1 : F) * rho 91563)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91553) * ((1 : F) * rho 91553) = ((1 : F) * rho 91564)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91565) * ((-1 : F) * rho 91563 + (1 : F) * rho 91564) = ((2 : F) * rho 91562)

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91566) * ((2 : F) + (1 : F) * rho 91563 + (-1 : F) * rho 91564) = ((1 : F) * rho 91563 + (1 : F) * rho 91564)

def relationLc1825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 78⟩, ⟨(1 : F), 90560, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91565 + (1 : F) * rho 91566) * (relationLc1825 rho) = ((1 : F) * rho 91567)

def relationLc1826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91566) * (relationLc1826 rho) = ((1 : F) * rho 91568)

def relationLc1827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91565) * (relationLc1827 rho) = ((1 : F) * rho 91569)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91568) * ((1 : F) * rho 91569) = ((1 : F) * rho 91570)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91571) * ((1 : F) + (1 : F) * rho 91570) = ((1 : F) * rho 91568 + (1 : F) * rho 91569)

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91572) * ((1 : F) + (-1 : F) * rho 91570) = ((1 : F) * rho 91567 + (-1 : F) * rho 91568 + (-1 : F) * rho 91569)

def relationLc1828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 78⟩], residual := [((1 : F), 91571)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90385) * (relationLc1828 rho) = ((1 : F) * rho 91573)

def relationLc1829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 78⟩], residual := [((1 : F), 91572)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90385) * (relationLc1829 rho) = ((1 : F) * rho 91574)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91565) * ((1 : F) * rho 91566) = ((1 : F) * rho 91575)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91565) * ((1 : F) * rho 91565) = ((1 : F) * rho 91576)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91566) * ((1 : F) * rho 91566) = ((1 : F) * rho 91577)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91578) * ((-1 : F) * rho 91576 + (1 : F) * rho 91577) = ((2 : F) * rho 91575)

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91579) * ((2 : F) + (1 : F) * rho 91576 + (-1 : F) * rho 91577) = ((1 : F) * rho 91576 + (1 : F) * rho 91577)

def relationLc1830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 79⟩, ⟨(1 : F), 90560, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91578 + (1 : F) * rho 91579) * (relationLc1830 rho) = ((1 : F) * rho 91580)

def relationLc1831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91579) * (relationLc1831 rho) = ((1 : F) * rho 91581)

def relationLc1832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91578) * (relationLc1832 rho) = ((1 : F) * rho 91582)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91581) * ((1 : F) * rho 91582) = ((1 : F) * rho 91583)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91584) * ((1 : F) + (1 : F) * rho 91583) = ((1 : F) * rho 91581 + (1 : F) * rho 91582)

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91585) * ((1 : F) + (-1 : F) * rho 91583) = ((1 : F) * rho 91580 + (-1 : F) * rho 91581 + (-1 : F) * rho 91582)

def relationLc1833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 79⟩], residual := [((1 : F), 91584)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90386) * (relationLc1833 rho) = ((1 : F) * rho 91586)

def relationLc1834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 79⟩], residual := [((1 : F), 91585)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90386) * (relationLc1834 rho) = ((1 : F) * rho 91587)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91578) * ((1 : F) * rho 91579) = ((1 : F) * rho 91588)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91578) * ((1 : F) * rho 91578) = ((1 : F) * rho 91589)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91579) * ((1 : F) * rho 91579) = ((1 : F) * rho 91590)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91591) * ((-1 : F) * rho 91589 + (1 : F) * rho 91590) = ((2 : F) * rho 91588)

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91592) * ((2 : F) + (1 : F) * rho 91589 + (-1 : F) * rho 91590) = ((1 : F) * rho 91589 + (1 : F) * rho 91590)

def relationLc1835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 80⟩, ⟨(1 : F), 90560, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91591 + (1 : F) * rho 91592) * (relationLc1835 rho) = ((1 : F) * rho 91593)

def relationLc1836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91592) * (relationLc1836 rho) = ((1 : F) * rho 91594)

def relationLc1837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91591) * (relationLc1837 rho) = ((1 : F) * rho 91595)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91594) * ((1 : F) * rho 91595) = ((1 : F) * rho 91596)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91597) * ((1 : F) + (1 : F) * rho 91596) = ((1 : F) * rho 91594 + (1 : F) * rho 91595)

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91598) * ((1 : F) + (-1 : F) * rho 91596) = ((1 : F) * rho 91593 + (-1 : F) * rho 91594 + (-1 : F) * rho 91595)

def relationLc1838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 80⟩], residual := [((1 : F), 91597)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90387) * (relationLc1838 rho) = ((1 : F) * rho 91599)

def relationLc1839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 80⟩], residual := [((1 : F), 91598)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90387) * (relationLc1839 rho) = ((1 : F) * rho 91600)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91591) * ((1 : F) * rho 91592) = ((1 : F) * rho 91601)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91591) * ((1 : F) * rho 91591) = ((1 : F) * rho 91602)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91592) * ((1 : F) * rho 91592) = ((1 : F) * rho 91603)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91604) * ((-1 : F) * rho 91602 + (1 : F) * rho 91603) = ((2 : F) * rho 91601)

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91605) * ((2 : F) + (1 : F) * rho 91602 + (-1 : F) * rho 91603) = ((1 : F) * rho 91602 + (1 : F) * rho 91603)

def relationLc1840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 81⟩, ⟨(1 : F), 90560, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91604 + (1 : F) * rho 91605) * (relationLc1840 rho) = ((1 : F) * rho 91606)

def relationLc1841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91605) * (relationLc1841 rho) = ((1 : F) * rho 91607)

def relationLc1842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91604) * (relationLc1842 rho) = ((1 : F) * rho 91608)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91607) * ((1 : F) * rho 91608) = ((1 : F) * rho 91609)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91610) * ((1 : F) + (1 : F) * rho 91609) = ((1 : F) * rho 91607 + (1 : F) * rho 91608)

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91611) * ((1 : F) + (-1 : F) * rho 91609) = ((1 : F) * rho 91606 + (-1 : F) * rho 91607 + (-1 : F) * rho 91608)

def relationLc1843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 81⟩], residual := [((1 : F), 91610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90388) * (relationLc1843 rho) = ((1 : F) * rho 91612)

def relationLc1844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 81⟩], residual := [((1 : F), 91611)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90388) * (relationLc1844 rho) = ((1 : F) * rho 91613)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91604) * ((1 : F) * rho 91605) = ((1 : F) * rho 91614)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91604) * ((1 : F) * rho 91604) = ((1 : F) * rho 91615)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91605) * ((1 : F) * rho 91605) = ((1 : F) * rho 91616)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91617) * ((-1 : F) * rho 91615 + (1 : F) * rho 91616) = ((2 : F) * rho 91614)

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91618) * ((2 : F) + (1 : F) * rho 91615 + (-1 : F) * rho 91616) = ((1 : F) * rho 91615 + (1 : F) * rho 91616)

def relationLc1845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 82⟩, ⟨(1 : F), 90560, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91617 + (1 : F) * rho 91618) * (relationLc1845 rho) = ((1 : F) * rho 91619)

def relationLc1846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91618) * (relationLc1846 rho) = ((1 : F) * rho 91620)

def relationLc1847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91617) * (relationLc1847 rho) = ((1 : F) * rho 91621)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91620) * ((1 : F) * rho 91621) = ((1 : F) * rho 91622)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91623) * ((1 : F) + (1 : F) * rho 91622) = ((1 : F) * rho 91620 + (1 : F) * rho 91621)

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91624) * ((1 : F) + (-1 : F) * rho 91622) = ((1 : F) * rho 91619 + (-1 : F) * rho 91620 + (-1 : F) * rho 91621)

def relationLc1848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 82⟩], residual := [((1 : F), 91623)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90389) * (relationLc1848 rho) = ((1 : F) * rho 91625)

def relationLc1849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 82⟩], residual := [((1 : F), 91624)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90389) * (relationLc1849 rho) = ((1 : F) * rho 91626)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91617) * ((1 : F) * rho 91618) = ((1 : F) * rho 91627)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91617) * ((1 : F) * rho 91617) = ((1 : F) * rho 91628)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91618) * ((1 : F) * rho 91618) = ((1 : F) * rho 91629)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91630) * ((-1 : F) * rho 91628 + (1 : F) * rho 91629) = ((2 : F) * rho 91627)

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91631) * ((2 : F) + (1 : F) * rho 91628 + (-1 : F) * rho 91629) = ((1 : F) * rho 91628 + (1 : F) * rho 91629)

def relationLc1850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 83⟩, ⟨(1 : F), 90560, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91630 + (1 : F) * rho 91631) * (relationLc1850 rho) = ((1 : F) * rho 91632)

def relationLc1851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91631) * (relationLc1851 rho) = ((1 : F) * rho 91633)

def relationLc1852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91630) * (relationLc1852 rho) = ((1 : F) * rho 91634)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91633) * ((1 : F) * rho 91634) = ((1 : F) * rho 91635)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91636) * ((1 : F) + (1 : F) * rho 91635) = ((1 : F) * rho 91633 + (1 : F) * rho 91634)

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91637) * ((1 : F) + (-1 : F) * rho 91635) = ((1 : F) * rho 91632 + (-1 : F) * rho 91633 + (-1 : F) * rho 91634)

def relationLc1853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 83⟩], residual := [((1 : F), 91636)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90390) * (relationLc1853 rho) = ((1 : F) * rho 91638)

def relationLc1854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 83⟩], residual := [((1 : F), 91637)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90390) * (relationLc1854 rho) = ((1 : F) * rho 91639)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91630) * ((1 : F) * rho 91631) = ((1 : F) * rho 91640)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91630) * ((1 : F) * rho 91630) = ((1 : F) * rho 91641)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91631) * ((1 : F) * rho 91631) = ((1 : F) * rho 91642)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91643) * ((-1 : F) * rho 91641 + (1 : F) * rho 91642) = ((2 : F) * rho 91640)

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91644) * ((2 : F) + (1 : F) * rho 91641 + (-1 : F) * rho 91642) = ((1 : F) * rho 91641 + (1 : F) * rho 91642)

def relationLc1855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 84⟩, ⟨(1 : F), 90560, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91643 + (1 : F) * rho 91644) * (relationLc1855 rho) = ((1 : F) * rho 91645)

def relationLc1856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91644) * (relationLc1856 rho) = ((1 : F) * rho 91646)

def relationLc1857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91643) * (relationLc1857 rho) = ((1 : F) * rho 91647)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91646) * ((1 : F) * rho 91647) = ((1 : F) * rho 91648)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91649) * ((1 : F) + (1 : F) * rho 91648) = ((1 : F) * rho 91646 + (1 : F) * rho 91647)

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91650) * ((1 : F) + (-1 : F) * rho 91648) = ((1 : F) * rho 91645 + (-1 : F) * rho 91646 + (-1 : F) * rho 91647)

def relationLc1858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 84⟩], residual := [((1 : F), 91649)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90391) * (relationLc1858 rho) = ((1 : F) * rho 91651)

def relationLc1859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 84⟩], residual := [((1 : F), 91650)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90391) * (relationLc1859 rho) = ((1 : F) * rho 91652)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91643) * ((1 : F) * rho 91644) = ((1 : F) * rho 91653)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91643) * ((1 : F) * rho 91643) = ((1 : F) * rho 91654)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91644) * ((1 : F) * rho 91644) = ((1 : F) * rho 91655)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91656) * ((-1 : F) * rho 91654 + (1 : F) * rho 91655) = ((2 : F) * rho 91653)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91657) * ((2 : F) + (1 : F) * rho 91654 + (-1 : F) * rho 91655) = ((1 : F) * rho 91654 + (1 : F) * rho 91655)

def relationLc1860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 85⟩, ⟨(1 : F), 90560, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91656 + (1 : F) * rho 91657) * (relationLc1860 rho) = ((1 : F) * rho 91658)

def relationLc1861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91657) * (relationLc1861 rho) = ((1 : F) * rho 91659)

def relationLc1862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91656) * (relationLc1862 rho) = ((1 : F) * rho 91660)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91659) * ((1 : F) * rho 91660) = ((1 : F) * rho 91661)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91662) * ((1 : F) + (1 : F) * rho 91661) = ((1 : F) * rho 91659 + (1 : F) * rho 91660)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91663) * ((1 : F) + (-1 : F) * rho 91661) = ((1 : F) * rho 91658 + (-1 : F) * rho 91659 + (-1 : F) * rho 91660)

def relationLc1863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 85⟩], residual := [((1 : F), 91662)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90392) * (relationLc1863 rho) = ((1 : F) * rho 91664)

def relationLc1864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 85⟩], residual := [((1 : F), 91663)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90392) * (relationLc1864 rho) = ((1 : F) * rho 91665)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91656) * ((1 : F) * rho 91657) = ((1 : F) * rho 91666)

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91656) * ((1 : F) * rho 91656) = ((1 : F) * rho 91667)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91657) * ((1 : F) * rho 91657) = ((1 : F) * rho 91668)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91669) * ((-1 : F) * rho 91667 + (1 : F) * rho 91668) = ((2 : F) * rho 91666)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91670) * ((2 : F) + (1 : F) * rho 91667 + (-1 : F) * rho 91668) = ((1 : F) * rho 91667 + (1 : F) * rho 91668)

def relationLc1865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 86⟩, ⟨(1 : F), 90560, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91669 + (1 : F) * rho 91670) * (relationLc1865 rho) = ((1 : F) * rho 91671)

def relationLc1866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91670) * (relationLc1866 rho) = ((1 : F) * rho 91672)

def relationLc1867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91669) * (relationLc1867 rho) = ((1 : F) * rho 91673)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91672) * ((1 : F) * rho 91673) = ((1 : F) * rho 91674)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91675) * ((1 : F) + (1 : F) * rho 91674) = ((1 : F) * rho 91672 + (1 : F) * rho 91673)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91676) * ((1 : F) + (-1 : F) * rho 91674) = ((1 : F) * rho 91671 + (-1 : F) * rho 91672 + (-1 : F) * rho 91673)

def relationLc1868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 86⟩], residual := [((1 : F), 91675)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90393) * (relationLc1868 rho) = ((1 : F) * rho 91677)

def relationLc1869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 86⟩], residual := [((1 : F), 91676)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90393) * (relationLc1869 rho) = ((1 : F) * rho 91678)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91669) * ((1 : F) * rho 91670) = ((1 : F) * rho 91679)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91669) * ((1 : F) * rho 91669) = ((1 : F) * rho 91680)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91670) * ((1 : F) * rho 91670) = ((1 : F) * rho 91681)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91682) * ((-1 : F) * rho 91680 + (1 : F) * rho 91681) = ((2 : F) * rho 91679)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91683) * ((2 : F) + (1 : F) * rho 91680 + (-1 : F) * rho 91681) = ((1 : F) * rho 91680 + (1 : F) * rho 91681)

def relationLc1870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 87⟩, ⟨(1 : F), 90560, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91682 + (1 : F) * rho 91683) * (relationLc1870 rho) = ((1 : F) * rho 91684)

def relationLc1871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91683) * (relationLc1871 rho) = ((1 : F) * rho 91685)

def relationLc1872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91682) * (relationLc1872 rho) = ((1 : F) * rho 91686)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91685) * ((1 : F) * rho 91686) = ((1 : F) * rho 91687)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91688) * ((1 : F) + (1 : F) * rho 91687) = ((1 : F) * rho 91685 + (1 : F) * rho 91686)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91689) * ((1 : F) + (-1 : F) * rho 91687) = ((1 : F) * rho 91684 + (-1 : F) * rho 91685 + (-1 : F) * rho 91686)

def relationLc1873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 87⟩], residual := [((1 : F), 91688)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90394) * (relationLc1873 rho) = ((1 : F) * rho 91690)

def relationLc1874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 87⟩], residual := [((1 : F), 91689)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90394) * (relationLc1874 rho) = ((1 : F) * rho 91691)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91682) * ((1 : F) * rho 91683) = ((1 : F) * rho 91692)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91682) * ((1 : F) * rho 91682) = ((1 : F) * rho 91693)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91683) * ((1 : F) * rho 91683) = ((1 : F) * rho 91694)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91695) * ((-1 : F) * rho 91693 + (1 : F) * rho 91694) = ((2 : F) * rho 91692)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91696) * ((2 : F) + (1 : F) * rho 91693 + (-1 : F) * rho 91694) = ((1 : F) * rho 91693 + (1 : F) * rho 91694)

def relationLc1875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 88⟩, ⟨(1 : F), 90560, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91695 + (1 : F) * rho 91696) * (relationLc1875 rho) = ((1 : F) * rho 91697)

def relationLc1876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91696) * (relationLc1876 rho) = ((1 : F) * rho 91698)

def relationLc1877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91695) * (relationLc1877 rho) = ((1 : F) * rho 91699)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91698) * ((1 : F) * rho 91699) = ((1 : F) * rho 91700)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91701) * ((1 : F) + (1 : F) * rho 91700) = ((1 : F) * rho 91698 + (1 : F) * rho 91699)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91702) * ((1 : F) + (-1 : F) * rho 91700) = ((1 : F) * rho 91697 + (-1 : F) * rho 91698 + (-1 : F) * rho 91699)

def relationLc1878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 88⟩], residual := [((1 : F), 91701)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90395) * (relationLc1878 rho) = ((1 : F) * rho 91703)

def relationLc1879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 88⟩], residual := [((1 : F), 91702)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90395) * (relationLc1879 rho) = ((1 : F) * rho 91704)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91695) * ((1 : F) * rho 91696) = ((1 : F) * rho 91705)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91695) * ((1 : F) * rho 91695) = ((1 : F) * rho 91706)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91696) * ((1 : F) * rho 91696) = ((1 : F) * rho 91707)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91708) * ((-1 : F) * rho 91706 + (1 : F) * rho 91707) = ((2 : F) * rho 91705)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91709) * ((2 : F) + (1 : F) * rho 91706 + (-1 : F) * rho 91707) = ((1 : F) * rho 91706 + (1 : F) * rho 91707)

def relationLc1880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 89⟩, ⟨(1 : F), 90560, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91708 + (1 : F) * rho 91709) * (relationLc1880 rho) = ((1 : F) * rho 91710)

def relationLc1881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91709) * (relationLc1881 rho) = ((1 : F) * rho 91711)

def relationLc1882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91708) * (relationLc1882 rho) = ((1 : F) * rho 91712)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91711) * ((1 : F) * rho 91712) = ((1 : F) * rho 91713)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91714) * ((1 : F) + (1 : F) * rho 91713) = ((1 : F) * rho 91711 + (1 : F) * rho 91712)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91715) * ((1 : F) + (-1 : F) * rho 91713) = ((1 : F) * rho 91710 + (-1 : F) * rho 91711 + (-1 : F) * rho 91712)

def relationLc1883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 89⟩], residual := [((1 : F), 91714)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90396) * (relationLc1883 rho) = ((1 : F) * rho 91716)

def relationLc1884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 89⟩], residual := [((1 : F), 91715)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90396) * (relationLc1884 rho) = ((1 : F) * rho 91717)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91708) * ((1 : F) * rho 91709) = ((1 : F) * rho 91718)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91708) * ((1 : F) * rho 91708) = ((1 : F) * rho 91719)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91709) * ((1 : F) * rho 91709) = ((1 : F) * rho 91720)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91721) * ((-1 : F) * rho 91719 + (1 : F) * rho 91720) = ((2 : F) * rho 91718)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91722) * ((2 : F) + (1 : F) * rho 91719 + (-1 : F) * rho 91720) = ((1 : F) * rho 91719 + (1 : F) * rho 91720)

def relationLc1885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 90⟩, ⟨(1 : F), 90560, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91721 + (1 : F) * rho 91722) * (relationLc1885 rho) = ((1 : F) * rho 91723)

def relationLc1886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91722) * (relationLc1886 rho) = ((1 : F) * rho 91724)

def relationLc1887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91721) * (relationLc1887 rho) = ((1 : F) * rho 91725)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91724) * ((1 : F) * rho 91725) = ((1 : F) * rho 91726)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91727) * ((1 : F) + (1 : F) * rho 91726) = ((1 : F) * rho 91724 + (1 : F) * rho 91725)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91728) * ((1 : F) + (-1 : F) * rho 91726) = ((1 : F) * rho 91723 + (-1 : F) * rho 91724 + (-1 : F) * rho 91725)

def relationLc1888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 90⟩], residual := [((1 : F), 91727)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90397) * (relationLc1888 rho) = ((1 : F) * rho 91729)

def relationLc1889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 90⟩], residual := [((1 : F), 91728)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90397) * (relationLc1889 rho) = ((1 : F) * rho 91730)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91721) * ((1 : F) * rho 91722) = ((1 : F) * rho 91731)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91721) * ((1 : F) * rho 91721) = ((1 : F) * rho 91732)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91722) * ((1 : F) * rho 91722) = ((1 : F) * rho 91733)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91734) * ((-1 : F) * rho 91732 + (1 : F) * rho 91733) = ((2 : F) * rho 91731)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91735) * ((2 : F) + (1 : F) * rho 91732 + (-1 : F) * rho 91733) = ((1 : F) * rho 91732 + (1 : F) * rho 91733)

def relationLc1890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 91⟩, ⟨(1 : F), 90560, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91734 + (1 : F) * rho 91735) * (relationLc1890 rho) = ((1 : F) * rho 91736)

def relationLc1891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91735) * (relationLc1891 rho) = ((1 : F) * rho 91737)

def relationLc1892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91734) * (relationLc1892 rho) = ((1 : F) * rho 91738)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91737) * ((1 : F) * rho 91738) = ((1 : F) * rho 91739)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91740) * ((1 : F) + (1 : F) * rho 91739) = ((1 : F) * rho 91737 + (1 : F) * rho 91738)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91741) * ((1 : F) + (-1 : F) * rho 91739) = ((1 : F) * rho 91736 + (-1 : F) * rho 91737 + (-1 : F) * rho 91738)

def relationLc1893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 91⟩], residual := [((1 : F), 91740)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90398) * (relationLc1893 rho) = ((1 : F) * rho 91742)

def relationLc1894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 91⟩], residual := [((1 : F), 91741)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90398) * (relationLc1894 rho) = ((1 : F) * rho 91743)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91734) * ((1 : F) * rho 91735) = ((1 : F) * rho 91744)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91734) * ((1 : F) * rho 91734) = ((1 : F) * rho 91745)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91735) * ((1 : F) * rho 91735) = ((1 : F) * rho 91746)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91747) * ((-1 : F) * rho 91745 + (1 : F) * rho 91746) = ((2 : F) * rho 91744)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91748) * ((2 : F) + (1 : F) * rho 91745 + (-1 : F) * rho 91746) = ((1 : F) * rho 91745 + (1 : F) * rho 91746)

def relationLc1895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 92⟩, ⟨(1 : F), 90560, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91747 + (1 : F) * rho 91748) * (relationLc1895 rho) = ((1 : F) * rho 91749)

def relationLc1896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91748) * (relationLc1896 rho) = ((1 : F) * rho 91750)

def relationLc1897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91747) * (relationLc1897 rho) = ((1 : F) * rho 91751)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91750) * ((1 : F) * rho 91751) = ((1 : F) * rho 91752)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91753) * ((1 : F) + (1 : F) * rho 91752) = ((1 : F) * rho 91750 + (1 : F) * rho 91751)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91754) * ((1 : F) + (-1 : F) * rho 91752) = ((1 : F) * rho 91749 + (-1 : F) * rho 91750 + (-1 : F) * rho 91751)

def relationLc1898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 92⟩], residual := [((1 : F), 91753)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90399) * (relationLc1898 rho) = ((1 : F) * rho 91755)

def relationLc1899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 92⟩], residual := [((1 : F), 91754)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90399) * (relationLc1899 rho) = ((1 : F) * rho 91756)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91747) * ((1 : F) * rho 91748) = ((1 : F) * rho 91757)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91747) * ((1 : F) * rho 91747) = ((1 : F) * rho 91758)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91748) * ((1 : F) * rho 91748) = ((1 : F) * rho 91759)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91760) * ((-1 : F) * rho 91758 + (1 : F) * rho 91759) = ((2 : F) * rho 91757)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91761) * ((2 : F) + (1 : F) * rho 91758 + (-1 : F) * rho 91759) = ((1 : F) * rho 91758 + (1 : F) * rho 91759)

def relationLc1900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 93⟩, ⟨(1 : F), 90560, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91760 + (1 : F) * rho 91761) * (relationLc1900 rho) = ((1 : F) * rho 91762)

def relationLc1901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91761) * (relationLc1901 rho) = ((1 : F) * rho 91763)

def relationLc1902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91760) * (relationLc1902 rho) = ((1 : F) * rho 91764)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91763) * ((1 : F) * rho 91764) = ((1 : F) * rho 91765)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91766) * ((1 : F) + (1 : F) * rho 91765) = ((1 : F) * rho 91763 + (1 : F) * rho 91764)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91767) * ((1 : F) + (-1 : F) * rho 91765) = ((1 : F) * rho 91762 + (-1 : F) * rho 91763 + (-1 : F) * rho 91764)

def relationLc1903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 93⟩], residual := [((1 : F), 91766)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90400) * (relationLc1903 rho) = ((1 : F) * rho 91768)

def relationLc1904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 93⟩], residual := [((1 : F), 91767)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90400) * (relationLc1904 rho) = ((1 : F) * rho 91769)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91760) * ((1 : F) * rho 91761) = ((1 : F) * rho 91770)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91760) * ((1 : F) * rho 91760) = ((1 : F) * rho 91771)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91761) * ((1 : F) * rho 91761) = ((1 : F) * rho 91772)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91773) * ((-1 : F) * rho 91771 + (1 : F) * rho 91772) = ((2 : F) * rho 91770)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91774) * ((2 : F) + (1 : F) * rho 91771 + (-1 : F) * rho 91772) = ((1 : F) * rho 91771 + (1 : F) * rho 91772)

def relationLc1905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 94⟩, ⟨(1 : F), 90560, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91773 + (1 : F) * rho 91774) * (relationLc1905 rho) = ((1 : F) * rho 91775)

def relationLc1906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91774) * (relationLc1906 rho) = ((1 : F) * rho 91776)

def relationLc1907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91773) * (relationLc1907 rho) = ((1 : F) * rho 91777)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91776) * ((1 : F) * rho 91777) = ((1 : F) * rho 91778)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91779) * ((1 : F) + (1 : F) * rho 91778) = ((1 : F) * rho 91776 + (1 : F) * rho 91777)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91780) * ((1 : F) + (-1 : F) * rho 91778) = ((1 : F) * rho 91775 + (-1 : F) * rho 91776 + (-1 : F) * rho 91777)

def relationLc1908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 94⟩], residual := [((1 : F), 91779)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90401) * (relationLc1908 rho) = ((1 : F) * rho 91781)

def relationLc1909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 94⟩], residual := [((1 : F), 91780)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90401) * (relationLc1909 rho) = ((1 : F) * rho 91782)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91773) * ((1 : F) * rho 91774) = ((1 : F) * rho 91783)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91773) * ((1 : F) * rho 91773) = ((1 : F) * rho 91784)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91774) * ((1 : F) * rho 91774) = ((1 : F) * rho 91785)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91786) * ((-1 : F) * rho 91784 + (1 : F) * rho 91785) = ((2 : F) * rho 91783)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91787) * ((2 : F) + (1 : F) * rho 91784 + (-1 : F) * rho 91785) = ((1 : F) * rho 91784 + (1 : F) * rho 91785)

def relationLc1910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 95⟩, ⟨(1 : F), 90560, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91786 + (1 : F) * rho 91787) * (relationLc1910 rho) = ((1 : F) * rho 91788)

def relationLc1911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91787) * (relationLc1911 rho) = ((1 : F) * rho 91789)

def relationLc1912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91786) * (relationLc1912 rho) = ((1 : F) * rho 91790)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91789) * ((1 : F) * rho 91790) = ((1 : F) * rho 91791)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91792) * ((1 : F) + (1 : F) * rho 91791) = ((1 : F) * rho 91789 + (1 : F) * rho 91790)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91793) * ((1 : F) + (-1 : F) * rho 91791) = ((1 : F) * rho 91788 + (-1 : F) * rho 91789 + (-1 : F) * rho 91790)

def relationLc1913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 95⟩], residual := [((1 : F), 91792)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90402) * (relationLc1913 rho) = ((1 : F) * rho 91794)

def relationLc1914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 95⟩], residual := [((1 : F), 91793)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90402) * (relationLc1914 rho) = ((1 : F) * rho 91795)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91786) * ((1 : F) * rho 91787) = ((1 : F) * rho 91796)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91786) * ((1 : F) * rho 91786) = ((1 : F) * rho 91797)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91787) * ((1 : F) * rho 91787) = ((1 : F) * rho 91798)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91799) * ((-1 : F) * rho 91797 + (1 : F) * rho 91798) = ((2 : F) * rho 91796)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91800) * ((2 : F) + (1 : F) * rho 91797 + (-1 : F) * rho 91798) = ((1 : F) * rho 91797 + (1 : F) * rho 91798)

def relationLc1915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 96⟩, ⟨(1 : F), 90560, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91799 + (1 : F) * rho 91800) * (relationLc1915 rho) = ((1 : F) * rho 91801)

def relationLc1916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91800) * (relationLc1916 rho) = ((1 : F) * rho 91802)

def relationLc1917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91799) * (relationLc1917 rho) = ((1 : F) * rho 91803)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91802) * ((1 : F) * rho 91803) = ((1 : F) * rho 91804)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91805) * ((1 : F) + (1 : F) * rho 91804) = ((1 : F) * rho 91802 + (1 : F) * rho 91803)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91806) * ((1 : F) + (-1 : F) * rho 91804) = ((1 : F) * rho 91801 + (-1 : F) * rho 91802 + (-1 : F) * rho 91803)

def relationLc1918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 96⟩], residual := [((1 : F), 91805)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90403) * (relationLc1918 rho) = ((1 : F) * rho 91807)

def relationLc1919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 96⟩], residual := [((1 : F), 91806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90403) * (relationLc1919 rho) = ((1 : F) * rho 91808)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91799) * ((1 : F) * rho 91800) = ((1 : F) * rho 91809)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91799) * ((1 : F) * rho 91799) = ((1 : F) * rho 91810)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91800) * ((1 : F) * rho 91800) = ((1 : F) * rho 91811)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91812) * ((-1 : F) * rho 91810 + (1 : F) * rho 91811) = ((2 : F) * rho 91809)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91813) * ((2 : F) + (1 : F) * rho 91810 + (-1 : F) * rho 91811) = ((1 : F) * rho 91810 + (1 : F) * rho 91811)

def relationLc1920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 97⟩, ⟨(1 : F), 90560, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91812 + (1 : F) * rho 91813) * (relationLc1920 rho) = ((1 : F) * rho 91814)

def relationLc1921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91813) * (relationLc1921 rho) = ((1 : F) * rho 91815)

def relationLc1922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91812) * (relationLc1922 rho) = ((1 : F) * rho 91816)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91815) * ((1 : F) * rho 91816) = ((1 : F) * rho 91817)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91818) * ((1 : F) + (1 : F) * rho 91817) = ((1 : F) * rho 91815 + (1 : F) * rho 91816)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91819) * ((1 : F) + (-1 : F) * rho 91817) = ((1 : F) * rho 91814 + (-1 : F) * rho 91815 + (-1 : F) * rho 91816)

def relationLc1923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 97⟩], residual := [((1 : F), 91818)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90404) * (relationLc1923 rho) = ((1 : F) * rho 91820)

def relationLc1924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 97⟩], residual := [((1 : F), 91819)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90404) * (relationLc1924 rho) = ((1 : F) * rho 91821)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91812) * ((1 : F) * rho 91813) = ((1 : F) * rho 91822)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91812) * ((1 : F) * rho 91812) = ((1 : F) * rho 91823)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91813) * ((1 : F) * rho 91813) = ((1 : F) * rho 91824)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91825) * ((-1 : F) * rho 91823 + (1 : F) * rho 91824) = ((2 : F) * rho 91822)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91826) * ((2 : F) + (1 : F) * rho 91823 + (-1 : F) * rho 91824) = ((1 : F) * rho 91823 + (1 : F) * rho 91824)

def relationLc1925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 98⟩, ⟨(1 : F), 90560, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91825 + (1 : F) * rho 91826) * (relationLc1925 rho) = ((1 : F) * rho 91827)

def relationLc1926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91826) * (relationLc1926 rho) = ((1 : F) * rho 91828)

def relationLc1927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91825) * (relationLc1927 rho) = ((1 : F) * rho 91829)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91828) * ((1 : F) * rho 91829) = ((1 : F) * rho 91830)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91831) * ((1 : F) + (1 : F) * rho 91830) = ((1 : F) * rho 91828 + (1 : F) * rho 91829)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91832) * ((1 : F) + (-1 : F) * rho 91830) = ((1 : F) * rho 91827 + (-1 : F) * rho 91828 + (-1 : F) * rho 91829)

def relationLc1928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 98⟩], residual := [((1 : F), 91831)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90405) * (relationLc1928 rho) = ((1 : F) * rho 91833)

def relationLc1929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 98⟩], residual := [((1 : F), 91832)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90405) * (relationLc1929 rho) = ((1 : F) * rho 91834)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91825) * ((1 : F) * rho 91826) = ((1 : F) * rho 91835)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91825) * ((1 : F) * rho 91825) = ((1 : F) * rho 91836)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91826) * ((1 : F) * rho 91826) = ((1 : F) * rho 91837)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91838) * ((-1 : F) * rho 91836 + (1 : F) * rho 91837) = ((2 : F) * rho 91835)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91839) * ((2 : F) + (1 : F) * rho 91836 + (-1 : F) * rho 91837) = ((1 : F) * rho 91836 + (1 : F) * rho 91837)

def relationLc1930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 99⟩, ⟨(1 : F), 90560, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91838 + (1 : F) * rho 91839) * (relationLc1930 rho) = ((1 : F) * rho 91840)

def relationLc1931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91839) * (relationLc1931 rho) = ((1 : F) * rho 91841)

def relationLc1932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91838) * (relationLc1932 rho) = ((1 : F) * rho 91842)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91841) * ((1 : F) * rho 91842) = ((1 : F) * rho 91843)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91844) * ((1 : F) + (1 : F) * rho 91843) = ((1 : F) * rho 91841 + (1 : F) * rho 91842)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91845) * ((1 : F) + (-1 : F) * rho 91843) = ((1 : F) * rho 91840 + (-1 : F) * rho 91841 + (-1 : F) * rho 91842)

def relationLc1933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 99⟩], residual := [((1 : F), 91844)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90406) * (relationLc1933 rho) = ((1 : F) * rho 91846)

def relationLc1934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 99⟩], residual := [((1 : F), 91845)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90406) * (relationLc1934 rho) = ((1 : F) * rho 91847)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91838) * ((1 : F) * rho 91839) = ((1 : F) * rho 91848)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91838) * ((1 : F) * rho 91838) = ((1 : F) * rho 91849)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91839) * ((1 : F) * rho 91839) = ((1 : F) * rho 91850)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91851) * ((-1 : F) * rho 91849 + (1 : F) * rho 91850) = ((2 : F) * rho 91848)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91852) * ((2 : F) + (1 : F) * rho 91849 + (-1 : F) * rho 91850) = ((1 : F) * rho 91849 + (1 : F) * rho 91850)

def relationLc1935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 100⟩, ⟨(1 : F), 90560, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91851 + (1 : F) * rho 91852) * (relationLc1935 rho) = ((1 : F) * rho 91853)

def relationLc1936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91852) * (relationLc1936 rho) = ((1 : F) * rho 91854)

def relationLc1937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91851) * (relationLc1937 rho) = ((1 : F) * rho 91855)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91854) * ((1 : F) * rho 91855) = ((1 : F) * rho 91856)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91857) * ((1 : F) + (1 : F) * rho 91856) = ((1 : F) * rho 91854 + (1 : F) * rho 91855)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91858) * ((1 : F) + (-1 : F) * rho 91856) = ((1 : F) * rho 91853 + (-1 : F) * rho 91854 + (-1 : F) * rho 91855)

def relationLc1938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 100⟩], residual := [((1 : F), 91857)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90407) * (relationLc1938 rho) = ((1 : F) * rho 91859)

def relationLc1939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 100⟩], residual := [((1 : F), 91858)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90407) * (relationLc1939 rho) = ((1 : F) * rho 91860)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91851) * ((1 : F) * rho 91852) = ((1 : F) * rho 91861)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91851) * ((1 : F) * rho 91851) = ((1 : F) * rho 91862)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91852) * ((1 : F) * rho 91852) = ((1 : F) * rho 91863)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91864) * ((-1 : F) * rho 91862 + (1 : F) * rho 91863) = ((2 : F) * rho 91861)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
