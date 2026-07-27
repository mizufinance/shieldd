import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs15

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationLc2802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 38⟩], residual := [((1 : F), 112718)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112013) * (relationLc2802 rho) = ((1 : F) * rho 112720)

def relationLc2803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 38⟩], residual := [((1 : F), 112719)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112013) * (relationLc2803 rho) = ((1 : F) * rho 112721)

def relationRow6167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112712) * ((1 : F) * rho 112713) = ((1 : F) * rho 112722)

def relationRow6168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112712) * ((1 : F) * rho 112712) = ((1 : F) * rho 112723)

def relationRow6169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112713) * ((1 : F) * rho 112713) = ((1 : F) * rho 112724)

def relationRow6170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112725) * ((-1 : F) * rho 112723 + (1 : F) * rho 112724) = ((2 : F) * rho 112722)

def relationRow6171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112726) * ((2 : F) + (1 : F) * rho 112723 + (-1 : F) * rho 112724) = ((1 : F) * rho 112723 + (1 : F) * rho 112724)

def relationLc2804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 39⟩, ⟨(1 : F), 112227, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112725 + (1 : F) * rho 112726) * (relationLc2804 rho) = ((1 : F) * rho 112727)

def relationLc2805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112726) * (relationLc2805 rho) = ((1 : F) * rho 112728)

def relationLc2806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112725) * (relationLc2806 rho) = ((1 : F) * rho 112729)

def relationRow6175 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112728) * ((1 : F) * rho 112729) = ((1 : F) * rho 112730)

def relationRow6176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112731) * ((1 : F) + (1 : F) * rho 112730) = ((1 : F) * rho 112728 + (1 : F) * rho 112729)

def relationRow6177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112732) * ((1 : F) + (-1 : F) * rho 112730) = ((1 : F) * rho 112727 + (-1 : F) * rho 112728 + (-1 : F) * rho 112729)

def relationLc2807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 39⟩], residual := [((1 : F), 112731)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112014) * (relationLc2807 rho) = ((1 : F) * rho 112733)

def relationLc2808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 39⟩], residual := [((1 : F), 112732)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112014) * (relationLc2808 rho) = ((1 : F) * rho 112734)

def relationRow6180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112725) * ((1 : F) * rho 112726) = ((1 : F) * rho 112735)

def relationRow6181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112725) * ((1 : F) * rho 112725) = ((1 : F) * rho 112736)

def relationRow6182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112726) * ((1 : F) * rho 112726) = ((1 : F) * rho 112737)

def relationRow6183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112738) * ((-1 : F) * rho 112736 + (1 : F) * rho 112737) = ((2 : F) * rho 112735)

def relationRow6184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112739) * ((2 : F) + (1 : F) * rho 112736 + (-1 : F) * rho 112737) = ((1 : F) * rho 112736 + (1 : F) * rho 112737)

def relationLc2809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 40⟩, ⟨(1 : F), 112227, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112738 + (1 : F) * rho 112739) * (relationLc2809 rho) = ((1 : F) * rho 112740)

def relationLc2810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112739) * (relationLc2810 rho) = ((1 : F) * rho 112741)

def relationLc2811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112738) * (relationLc2811 rho) = ((1 : F) * rho 112742)

def relationRow6188 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112741) * ((1 : F) * rho 112742) = ((1 : F) * rho 112743)

def relationRow6189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112744) * ((1 : F) + (1 : F) * rho 112743) = ((1 : F) * rho 112741 + (1 : F) * rho 112742)

def relationRow6190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112745) * ((1 : F) + (-1 : F) * rho 112743) = ((1 : F) * rho 112740 + (-1 : F) * rho 112741 + (-1 : F) * rho 112742)

def relationLc2812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 40⟩], residual := [((1 : F), 112744)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112015) * (relationLc2812 rho) = ((1 : F) * rho 112746)

def relationLc2813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 40⟩], residual := [((1 : F), 112745)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112015) * (relationLc2813 rho) = ((1 : F) * rho 112747)

def relationRow6193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112738) * ((1 : F) * rho 112739) = ((1 : F) * rho 112748)

def relationRow6194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112738) * ((1 : F) * rho 112738) = ((1 : F) * rho 112749)

def relationRow6195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112739) * ((1 : F) * rho 112739) = ((1 : F) * rho 112750)

def relationRow6196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112751) * ((-1 : F) * rho 112749 + (1 : F) * rho 112750) = ((2 : F) * rho 112748)

def relationRow6197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112752) * ((2 : F) + (1 : F) * rho 112749 + (-1 : F) * rho 112750) = ((1 : F) * rho 112749 + (1 : F) * rho 112750)

def relationLc2814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 41⟩, ⟨(1 : F), 112227, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112751 + (1 : F) * rho 112752) * (relationLc2814 rho) = ((1 : F) * rho 112753)

def relationLc2815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112752) * (relationLc2815 rho) = ((1 : F) * rho 112754)

def relationLc2816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112751) * (relationLc2816 rho) = ((1 : F) * rho 112755)

def relationRow6201 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112754) * ((1 : F) * rho 112755) = ((1 : F) * rho 112756)

def relationRow6202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112757) * ((1 : F) + (1 : F) * rho 112756) = ((1 : F) * rho 112754 + (1 : F) * rho 112755)

def relationRow6203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112758) * ((1 : F) + (-1 : F) * rho 112756) = ((1 : F) * rho 112753 + (-1 : F) * rho 112754 + (-1 : F) * rho 112755)

def relationLc2817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 41⟩], residual := [((1 : F), 112757)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112016) * (relationLc2817 rho) = ((1 : F) * rho 112759)

def relationLc2818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 41⟩], residual := [((1 : F), 112758)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112016) * (relationLc2818 rho) = ((1 : F) * rho 112760)

def relationRow6206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112751) * ((1 : F) * rho 112752) = ((1 : F) * rho 112761)

def relationRow6207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112751) * ((1 : F) * rho 112751) = ((1 : F) * rho 112762)

def relationRow6208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112752) * ((1 : F) * rho 112752) = ((1 : F) * rho 112763)

def relationRow6209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112764) * ((-1 : F) * rho 112762 + (1 : F) * rho 112763) = ((2 : F) * rho 112761)

def relationRow6210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112765) * ((2 : F) + (1 : F) * rho 112762 + (-1 : F) * rho 112763) = ((1 : F) * rho 112762 + (1 : F) * rho 112763)

def relationLc2819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 42⟩, ⟨(1 : F), 112227, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112764 + (1 : F) * rho 112765) * (relationLc2819 rho) = ((1 : F) * rho 112766)

def relationLc2820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112765) * (relationLc2820 rho) = ((1 : F) * rho 112767)

def relationLc2821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112764) * (relationLc2821 rho) = ((1 : F) * rho 112768)

def relationRow6214 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112767) * ((1 : F) * rho 112768) = ((1 : F) * rho 112769)

def relationRow6215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112770) * ((1 : F) + (1 : F) * rho 112769) = ((1 : F) * rho 112767 + (1 : F) * rho 112768)

def relationRow6216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112771) * ((1 : F) + (-1 : F) * rho 112769) = ((1 : F) * rho 112766 + (-1 : F) * rho 112767 + (-1 : F) * rho 112768)

def relationLc2822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 42⟩], residual := [((1 : F), 112770)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112017) * (relationLc2822 rho) = ((1 : F) * rho 112772)

def relationLc2823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 42⟩], residual := [((1 : F), 112771)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112017) * (relationLc2823 rho) = ((1 : F) * rho 112773)

def relationRow6219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112764) * ((1 : F) * rho 112765) = ((1 : F) * rho 112774)

def relationRow6220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112764) * ((1 : F) * rho 112764) = ((1 : F) * rho 112775)

def relationRow6221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112765) * ((1 : F) * rho 112765) = ((1 : F) * rho 112776)

def relationRow6222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112777) * ((-1 : F) * rho 112775 + (1 : F) * rho 112776) = ((2 : F) * rho 112774)

def relationRow6223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112778) * ((2 : F) + (1 : F) * rho 112775 + (-1 : F) * rho 112776) = ((1 : F) * rho 112775 + (1 : F) * rho 112776)

def relationLc2824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 43⟩, ⟨(1 : F), 112227, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112777 + (1 : F) * rho 112778) * (relationLc2824 rho) = ((1 : F) * rho 112779)

def relationLc2825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112778) * (relationLc2825 rho) = ((1 : F) * rho 112780)

def relationLc2826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112777) * (relationLc2826 rho) = ((1 : F) * rho 112781)

def relationRow6227 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112780) * ((1 : F) * rho 112781) = ((1 : F) * rho 112782)

def relationRow6228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112783) * ((1 : F) + (1 : F) * rho 112782) = ((1 : F) * rho 112780 + (1 : F) * rho 112781)

def relationRow6229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112784) * ((1 : F) + (-1 : F) * rho 112782) = ((1 : F) * rho 112779 + (-1 : F) * rho 112780 + (-1 : F) * rho 112781)

def relationLc2827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 43⟩], residual := [((1 : F), 112783)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112018) * (relationLc2827 rho) = ((1 : F) * rho 112785)

def relationLc2828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 43⟩], residual := [((1 : F), 112784)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112018) * (relationLc2828 rho) = ((1 : F) * rho 112786)

def relationRow6232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112777) * ((1 : F) * rho 112778) = ((1 : F) * rho 112787)

def relationRow6233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112777) * ((1 : F) * rho 112777) = ((1 : F) * rho 112788)

def relationRow6234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112778) * ((1 : F) * rho 112778) = ((1 : F) * rho 112789)

def relationRow6235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112790) * ((-1 : F) * rho 112788 + (1 : F) * rho 112789) = ((2 : F) * rho 112787)

def relationRow6236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112791) * ((2 : F) + (1 : F) * rho 112788 + (-1 : F) * rho 112789) = ((1 : F) * rho 112788 + (1 : F) * rho 112789)

def relationLc2829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 44⟩, ⟨(1 : F), 112227, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112790 + (1 : F) * rho 112791) * (relationLc2829 rho) = ((1 : F) * rho 112792)

def relationLc2830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112791) * (relationLc2830 rho) = ((1 : F) * rho 112793)

def relationLc2831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112790) * (relationLc2831 rho) = ((1 : F) * rho 112794)

def relationRow6240 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112793) * ((1 : F) * rho 112794) = ((1 : F) * rho 112795)

def relationRow6241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112796) * ((1 : F) + (1 : F) * rho 112795) = ((1 : F) * rho 112793 + (1 : F) * rho 112794)

def relationRow6242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112797) * ((1 : F) + (-1 : F) * rho 112795) = ((1 : F) * rho 112792 + (-1 : F) * rho 112793 + (-1 : F) * rho 112794)

def relationLc2832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 44⟩], residual := [((1 : F), 112796)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112019) * (relationLc2832 rho) = ((1 : F) * rho 112798)

def relationLc2833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 44⟩], residual := [((1 : F), 112797)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112019) * (relationLc2833 rho) = ((1 : F) * rho 112799)

def relationRow6245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112790) * ((1 : F) * rho 112791) = ((1 : F) * rho 112800)

def relationRow6246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112790) * ((1 : F) * rho 112790) = ((1 : F) * rho 112801)

def relationRow6247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112791) * ((1 : F) * rho 112791) = ((1 : F) * rho 112802)

def relationRow6248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112803) * ((-1 : F) * rho 112801 + (1 : F) * rho 112802) = ((2 : F) * rho 112800)

def relationRow6249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112804) * ((2 : F) + (1 : F) * rho 112801 + (-1 : F) * rho 112802) = ((1 : F) * rho 112801 + (1 : F) * rho 112802)

def relationLc2834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 45⟩, ⟨(1 : F), 112227, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112803 + (1 : F) * rho 112804) * (relationLc2834 rho) = ((1 : F) * rho 112805)

def relationLc2835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112804) * (relationLc2835 rho) = ((1 : F) * rho 112806)

def relationLc2836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112803) * (relationLc2836 rho) = ((1 : F) * rho 112807)

def relationRow6253 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112806) * ((1 : F) * rho 112807) = ((1 : F) * rho 112808)

def relationRow6254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112809) * ((1 : F) + (1 : F) * rho 112808) = ((1 : F) * rho 112806 + (1 : F) * rho 112807)

def relationRow6255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112810) * ((1 : F) + (-1 : F) * rho 112808) = ((1 : F) * rho 112805 + (-1 : F) * rho 112806 + (-1 : F) * rho 112807)

def relationLc2837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 45⟩], residual := [((1 : F), 112809)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112020) * (relationLc2837 rho) = ((1 : F) * rho 112811)

def relationLc2838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 45⟩], residual := [((1 : F), 112810)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112020) * (relationLc2838 rho) = ((1 : F) * rho 112812)

def relationRow6258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112803) * ((1 : F) * rho 112804) = ((1 : F) * rho 112813)

def relationRow6259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112803) * ((1 : F) * rho 112803) = ((1 : F) * rho 112814)

def relationRow6260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112804) * ((1 : F) * rho 112804) = ((1 : F) * rho 112815)

def relationRow6261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112816) * ((-1 : F) * rho 112814 + (1 : F) * rho 112815) = ((2 : F) * rho 112813)

def relationRow6262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112817) * ((2 : F) + (1 : F) * rho 112814 + (-1 : F) * rho 112815) = ((1 : F) * rho 112814 + (1 : F) * rho 112815)

def relationLc2839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 46⟩, ⟨(1 : F), 112227, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112816 + (1 : F) * rho 112817) * (relationLc2839 rho) = ((1 : F) * rho 112818)

def relationLc2840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112817) * (relationLc2840 rho) = ((1 : F) * rho 112819)

def relationLc2841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112816) * (relationLc2841 rho) = ((1 : F) * rho 112820)

def relationRow6266 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112819) * ((1 : F) * rho 112820) = ((1 : F) * rho 112821)

def relationRow6267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112822) * ((1 : F) + (1 : F) * rho 112821) = ((1 : F) * rho 112819 + (1 : F) * rho 112820)

def relationRow6268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112823) * ((1 : F) + (-1 : F) * rho 112821) = ((1 : F) * rho 112818 + (-1 : F) * rho 112819 + (-1 : F) * rho 112820)

def relationLc2842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 46⟩], residual := [((1 : F), 112822)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112021) * (relationLc2842 rho) = ((1 : F) * rho 112824)

def relationLc2843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 46⟩], residual := [((1 : F), 112823)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112021) * (relationLc2843 rho) = ((1 : F) * rho 112825)

def relationRow6271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112816) * ((1 : F) * rho 112817) = ((1 : F) * rho 112826)

def relationRow6272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112816) * ((1 : F) * rho 112816) = ((1 : F) * rho 112827)

def relationRow6273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112817) * ((1 : F) * rho 112817) = ((1 : F) * rho 112828)

def relationRow6274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112829) * ((-1 : F) * rho 112827 + (1 : F) * rho 112828) = ((2 : F) * rho 112826)

def relationRow6275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112830) * ((2 : F) + (1 : F) * rho 112827 + (-1 : F) * rho 112828) = ((1 : F) * rho 112827 + (1 : F) * rho 112828)

def relationLc2844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 47⟩, ⟨(1 : F), 112227, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112829 + (1 : F) * rho 112830) * (relationLc2844 rho) = ((1 : F) * rho 112831)

def relationLc2845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112830) * (relationLc2845 rho) = ((1 : F) * rho 112832)

def relationLc2846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112829) * (relationLc2846 rho) = ((1 : F) * rho 112833)

def relationRow6279 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112832) * ((1 : F) * rho 112833) = ((1 : F) * rho 112834)

def relationRow6280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112835) * ((1 : F) + (1 : F) * rho 112834) = ((1 : F) * rho 112832 + (1 : F) * rho 112833)

def relationRow6281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112836) * ((1 : F) + (-1 : F) * rho 112834) = ((1 : F) * rho 112831 + (-1 : F) * rho 112832 + (-1 : F) * rho 112833)

def relationLc2847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 47⟩], residual := [((1 : F), 112835)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112022) * (relationLc2847 rho) = ((1 : F) * rho 112837)

def relationLc2848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 47⟩], residual := [((1 : F), 112836)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112022) * (relationLc2848 rho) = ((1 : F) * rho 112838)

def relationRow6284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112829) * ((1 : F) * rho 112830) = ((1 : F) * rho 112839)

def relationRow6285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112829) * ((1 : F) * rho 112829) = ((1 : F) * rho 112840)

def relationRow6286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112830) * ((1 : F) * rho 112830) = ((1 : F) * rho 112841)

def relationRow6287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112842) * ((-1 : F) * rho 112840 + (1 : F) * rho 112841) = ((2 : F) * rho 112839)

def relationRow6288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112843) * ((2 : F) + (1 : F) * rho 112840 + (-1 : F) * rho 112841) = ((1 : F) * rho 112840 + (1 : F) * rho 112841)

def relationLc2849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 48⟩, ⟨(1 : F), 112227, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112842 + (1 : F) * rho 112843) * (relationLc2849 rho) = ((1 : F) * rho 112844)

def relationLc2850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112843) * (relationLc2850 rho) = ((1 : F) * rho 112845)

def relationLc2851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112842) * (relationLc2851 rho) = ((1 : F) * rho 112846)

def relationRow6292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112845) * ((1 : F) * rho 112846) = ((1 : F) * rho 112847)

def relationRow6293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112848) * ((1 : F) + (1 : F) * rho 112847) = ((1 : F) * rho 112845 + (1 : F) * rho 112846)

def relationRow6294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112849) * ((1 : F) + (-1 : F) * rho 112847) = ((1 : F) * rho 112844 + (-1 : F) * rho 112845 + (-1 : F) * rho 112846)

def relationLc2852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 48⟩], residual := [((1 : F), 112848)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112023) * (relationLc2852 rho) = ((1 : F) * rho 112850)

def relationLc2853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 48⟩], residual := [((1 : F), 112849)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112023) * (relationLc2853 rho) = ((1 : F) * rho 112851)

def relationRow6297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112842) * ((1 : F) * rho 112843) = ((1 : F) * rho 112852)

def relationRow6298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112842) * ((1 : F) * rho 112842) = ((1 : F) * rho 112853)

def relationRow6299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112843) * ((1 : F) * rho 112843) = ((1 : F) * rho 112854)

def relationRow6300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112855) * ((-1 : F) * rho 112853 + (1 : F) * rho 112854) = ((2 : F) * rho 112852)

def relationRow6301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112856) * ((2 : F) + (1 : F) * rho 112853 + (-1 : F) * rho 112854) = ((1 : F) * rho 112853 + (1 : F) * rho 112854)

def relationLc2854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 49⟩, ⟨(1 : F), 112227, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112855 + (1 : F) * rho 112856) * (relationLc2854 rho) = ((1 : F) * rho 112857)

def relationLc2855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112856) * (relationLc2855 rho) = ((1 : F) * rho 112858)

def relationLc2856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112855) * (relationLc2856 rho) = ((1 : F) * rho 112859)

def relationRow6305 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112858) * ((1 : F) * rho 112859) = ((1 : F) * rho 112860)

def relationRow6306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112861) * ((1 : F) + (1 : F) * rho 112860) = ((1 : F) * rho 112858 + (1 : F) * rho 112859)

def relationRow6307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112862) * ((1 : F) + (-1 : F) * rho 112860) = ((1 : F) * rho 112857 + (-1 : F) * rho 112858 + (-1 : F) * rho 112859)

def relationLc2857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 49⟩], residual := [((1 : F), 112861)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112024) * (relationLc2857 rho) = ((1 : F) * rho 112863)

def relationLc2858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 49⟩], residual := [((1 : F), 112862)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112024) * (relationLc2858 rho) = ((1 : F) * rho 112864)

def relationRow6310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112855) * ((1 : F) * rho 112856) = ((1 : F) * rho 112865)

def relationRow6311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112855) * ((1 : F) * rho 112855) = ((1 : F) * rho 112866)

def relationRow6312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112856) * ((1 : F) * rho 112856) = ((1 : F) * rho 112867)

def relationRow6313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112868) * ((-1 : F) * rho 112866 + (1 : F) * rho 112867) = ((2 : F) * rho 112865)

def relationRow6314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112869) * ((2 : F) + (1 : F) * rho 112866 + (-1 : F) * rho 112867) = ((1 : F) * rho 112866 + (1 : F) * rho 112867)

def relationLc2859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 50⟩, ⟨(1 : F), 112227, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112868 + (1 : F) * rho 112869) * (relationLc2859 rho) = ((1 : F) * rho 112870)

def relationLc2860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112869) * (relationLc2860 rho) = ((1 : F) * rho 112871)

def relationLc2861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112868) * (relationLc2861 rho) = ((1 : F) * rho 112872)

def relationRow6318 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112871) * ((1 : F) * rho 112872) = ((1 : F) * rho 112873)

def relationRow6319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112874) * ((1 : F) + (1 : F) * rho 112873) = ((1 : F) * rho 112871 + (1 : F) * rho 112872)

def relationRow6320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112875) * ((1 : F) + (-1 : F) * rho 112873) = ((1 : F) * rho 112870 + (-1 : F) * rho 112871 + (-1 : F) * rho 112872)

def relationLc2862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 50⟩], residual := [((1 : F), 112874)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112025) * (relationLc2862 rho) = ((1 : F) * rho 112876)

def relationLc2863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 50⟩], residual := [((1 : F), 112875)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112025) * (relationLc2863 rho) = ((1 : F) * rho 112877)

def relationRow6323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112868) * ((1 : F) * rho 112869) = ((1 : F) * rho 112878)

def relationRow6324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112868) * ((1 : F) * rho 112868) = ((1 : F) * rho 112879)

def relationRow6325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112869) * ((1 : F) * rho 112869) = ((1 : F) * rho 112880)

def relationRow6326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112881) * ((-1 : F) * rho 112879 + (1 : F) * rho 112880) = ((2 : F) * rho 112878)

def relationRow6327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112882) * ((2 : F) + (1 : F) * rho 112879 + (-1 : F) * rho 112880) = ((1 : F) * rho 112879 + (1 : F) * rho 112880)

def relationLc2864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 51⟩, ⟨(1 : F), 112227, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112881 + (1 : F) * rho 112882) * (relationLc2864 rho) = ((1 : F) * rho 112883)

def relationLc2865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112882) * (relationLc2865 rho) = ((1 : F) * rho 112884)

def relationLc2866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112881) * (relationLc2866 rho) = ((1 : F) * rho 112885)

def relationRow6331 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112884) * ((1 : F) * rho 112885) = ((1 : F) * rho 112886)

def relationRow6332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112887) * ((1 : F) + (1 : F) * rho 112886) = ((1 : F) * rho 112884 + (1 : F) * rho 112885)

def relationRow6333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112888) * ((1 : F) + (-1 : F) * rho 112886) = ((1 : F) * rho 112883 + (-1 : F) * rho 112884 + (-1 : F) * rho 112885)

def relationLc2867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 51⟩], residual := [((1 : F), 112887)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112026) * (relationLc2867 rho) = ((1 : F) * rho 112889)

def relationLc2868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 51⟩], residual := [((1 : F), 112888)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112026) * (relationLc2868 rho) = ((1 : F) * rho 112890)

def relationRow6336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112881) * ((1 : F) * rho 112882) = ((1 : F) * rho 112891)

def relationRow6337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112881) * ((1 : F) * rho 112881) = ((1 : F) * rho 112892)

def relationRow6338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112882) * ((1 : F) * rho 112882) = ((1 : F) * rho 112893)

def relationRow6339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112894) * ((-1 : F) * rho 112892 + (1 : F) * rho 112893) = ((2 : F) * rho 112891)

def relationRow6340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112895) * ((2 : F) + (1 : F) * rho 112892 + (-1 : F) * rho 112893) = ((1 : F) * rho 112892 + (1 : F) * rho 112893)

def relationLc2869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 52⟩, ⟨(1 : F), 112227, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112894 + (1 : F) * rho 112895) * (relationLc2869 rho) = ((1 : F) * rho 112896)

def relationLc2870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112895) * (relationLc2870 rho) = ((1 : F) * rho 112897)

def relationLc2871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112894) * (relationLc2871 rho) = ((1 : F) * rho 112898)

def relationRow6344 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112897) * ((1 : F) * rho 112898) = ((1 : F) * rho 112899)

def relationRow6345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112900) * ((1 : F) + (1 : F) * rho 112899) = ((1 : F) * rho 112897 + (1 : F) * rho 112898)

def relationRow6346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112901) * ((1 : F) + (-1 : F) * rho 112899) = ((1 : F) * rho 112896 + (-1 : F) * rho 112897 + (-1 : F) * rho 112898)

def relationLc2872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 52⟩], residual := [((1 : F), 112900)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112027) * (relationLc2872 rho) = ((1 : F) * rho 112902)

def relationLc2873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 52⟩], residual := [((1 : F), 112901)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112027) * (relationLc2873 rho) = ((1 : F) * rho 112903)

def relationRow6349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112894) * ((1 : F) * rho 112895) = ((1 : F) * rho 112904)

def relationRow6350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112894) * ((1 : F) * rho 112894) = ((1 : F) * rho 112905)

def relationRow6351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112895) * ((1 : F) * rho 112895) = ((1 : F) * rho 112906)

def relationRow6352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112907) * ((-1 : F) * rho 112905 + (1 : F) * rho 112906) = ((2 : F) * rho 112904)

def relationRow6353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112908) * ((2 : F) + (1 : F) * rho 112905 + (-1 : F) * rho 112906) = ((1 : F) * rho 112905 + (1 : F) * rho 112906)

def relationLc2874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 53⟩, ⟨(1 : F), 112227, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112907 + (1 : F) * rho 112908) * (relationLc2874 rho) = ((1 : F) * rho 112909)

def relationLc2875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112908) * (relationLc2875 rho) = ((1 : F) * rho 112910)

def relationLc2876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112907) * (relationLc2876 rho) = ((1 : F) * rho 112911)

def relationRow6357 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112910) * ((1 : F) * rho 112911) = ((1 : F) * rho 112912)

def relationRow6358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112913) * ((1 : F) + (1 : F) * rho 112912) = ((1 : F) * rho 112910 + (1 : F) * rho 112911)

def relationRow6359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112914) * ((1 : F) + (-1 : F) * rho 112912) = ((1 : F) * rho 112909 + (-1 : F) * rho 112910 + (-1 : F) * rho 112911)

def relationLc2877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 53⟩], residual := [((1 : F), 112913)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112028) * (relationLc2877 rho) = ((1 : F) * rho 112915)

def relationLc2878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 53⟩], residual := [((1 : F), 112914)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112028) * (relationLc2878 rho) = ((1 : F) * rho 112916)

def relationRow6362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112907) * ((1 : F) * rho 112908) = ((1 : F) * rho 112917)

def relationRow6363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112907) * ((1 : F) * rho 112907) = ((1 : F) * rho 112918)

def relationRow6364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112908) * ((1 : F) * rho 112908) = ((1 : F) * rho 112919)

def relationRow6365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112920) * ((-1 : F) * rho 112918 + (1 : F) * rho 112919) = ((2 : F) * rho 112917)

def relationRow6366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112921) * ((2 : F) + (1 : F) * rho 112918 + (-1 : F) * rho 112919) = ((1 : F) * rho 112918 + (1 : F) * rho 112919)

def relationLc2879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 54⟩, ⟨(1 : F), 112227, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112920 + (1 : F) * rho 112921) * (relationLc2879 rho) = ((1 : F) * rho 112922)

def relationLc2880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112921) * (relationLc2880 rho) = ((1 : F) * rho 112923)

def relationLc2881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112920) * (relationLc2881 rho) = ((1 : F) * rho 112924)

def relationRow6370 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112923) * ((1 : F) * rho 112924) = ((1 : F) * rho 112925)

def relationRow6371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112926) * ((1 : F) + (1 : F) * rho 112925) = ((1 : F) * rho 112923 + (1 : F) * rho 112924)

def relationRow6372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112927) * ((1 : F) + (-1 : F) * rho 112925) = ((1 : F) * rho 112922 + (-1 : F) * rho 112923 + (-1 : F) * rho 112924)

def relationLc2882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 54⟩], residual := [((1 : F), 112926)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112029) * (relationLc2882 rho) = ((1 : F) * rho 112928)

def relationLc2883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 54⟩], residual := [((1 : F), 112927)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112029) * (relationLc2883 rho) = ((1 : F) * rho 112929)

def relationRow6375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112920) * ((1 : F) * rho 112921) = ((1 : F) * rho 112930)

def relationRow6376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112920) * ((1 : F) * rho 112920) = ((1 : F) * rho 112931)

def relationRow6377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112921) * ((1 : F) * rho 112921) = ((1 : F) * rho 112932)

def relationRow6378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112933) * ((-1 : F) * rho 112931 + (1 : F) * rho 112932) = ((2 : F) * rho 112930)

def relationRow6379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112934) * ((2 : F) + (1 : F) * rho 112931 + (-1 : F) * rho 112932) = ((1 : F) * rho 112931 + (1 : F) * rho 112932)

def relationLc2884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 55⟩, ⟨(1 : F), 112227, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112933 + (1 : F) * rho 112934) * (relationLc2884 rho) = ((1 : F) * rho 112935)

def relationLc2885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112934) * (relationLc2885 rho) = ((1 : F) * rho 112936)

def relationLc2886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112933) * (relationLc2886 rho) = ((1 : F) * rho 112937)

def relationRow6383 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112936) * ((1 : F) * rho 112937) = ((1 : F) * rho 112938)

def relationRow6384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112939) * ((1 : F) + (1 : F) * rho 112938) = ((1 : F) * rho 112936 + (1 : F) * rho 112937)

def relationRow6385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112940) * ((1 : F) + (-1 : F) * rho 112938) = ((1 : F) * rho 112935 + (-1 : F) * rho 112936 + (-1 : F) * rho 112937)

def relationLc2887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 55⟩], residual := [((1 : F), 112939)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112030) * (relationLc2887 rho) = ((1 : F) * rho 112941)

def relationLc2888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 55⟩], residual := [((1 : F), 112940)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112030) * (relationLc2888 rho) = ((1 : F) * rho 112942)

def relationRow6388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112933) * ((1 : F) * rho 112934) = ((1 : F) * rho 112943)

def relationRow6389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112933) * ((1 : F) * rho 112933) = ((1 : F) * rho 112944)

def relationRow6390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112934) * ((1 : F) * rho 112934) = ((1 : F) * rho 112945)

def relationRow6391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112946) * ((-1 : F) * rho 112944 + (1 : F) * rho 112945) = ((2 : F) * rho 112943)

def relationRow6392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112947) * ((2 : F) + (1 : F) * rho 112944 + (-1 : F) * rho 112945) = ((1 : F) * rho 112944 + (1 : F) * rho 112945)

def relationLc2889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 56⟩, ⟨(1 : F), 112227, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112946 + (1 : F) * rho 112947) * (relationLc2889 rho) = ((1 : F) * rho 112948)

def relationLc2890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112947) * (relationLc2890 rho) = ((1 : F) * rho 112949)

def relationLc2891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112946) * (relationLc2891 rho) = ((1 : F) * rho 112950)

def relationRow6396 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112949) * ((1 : F) * rho 112950) = ((1 : F) * rho 112951)

def relationRow6397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112952) * ((1 : F) + (1 : F) * rho 112951) = ((1 : F) * rho 112949 + (1 : F) * rho 112950)

def relationRow6398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112953) * ((1 : F) + (-1 : F) * rho 112951) = ((1 : F) * rho 112948 + (-1 : F) * rho 112949 + (-1 : F) * rho 112950)

def relationLc2892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 56⟩], residual := [((1 : F), 112952)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112031) * (relationLc2892 rho) = ((1 : F) * rho 112954)

def relationLc2893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 56⟩], residual := [((1 : F), 112953)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112031) * (relationLc2893 rho) = ((1 : F) * rho 112955)

def relationRow6401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112946) * ((1 : F) * rho 112947) = ((1 : F) * rho 112956)

def relationRow6402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112946) * ((1 : F) * rho 112946) = ((1 : F) * rho 112957)

def relationRow6403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112947) * ((1 : F) * rho 112947) = ((1 : F) * rho 112958)

def relationRow6404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112959) * ((-1 : F) * rho 112957 + (1 : F) * rho 112958) = ((2 : F) * rho 112956)

def relationRow6405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112960) * ((2 : F) + (1 : F) * rho 112957 + (-1 : F) * rho 112958) = ((1 : F) * rho 112957 + (1 : F) * rho 112958)

def relationLc2894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 57⟩, ⟨(1 : F), 112227, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112959 + (1 : F) * rho 112960) * (relationLc2894 rho) = ((1 : F) * rho 112961)

def relationLc2895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112960) * (relationLc2895 rho) = ((1 : F) * rho 112962)

def relationLc2896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112959) * (relationLc2896 rho) = ((1 : F) * rho 112963)

def relationRow6409 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112962) * ((1 : F) * rho 112963) = ((1 : F) * rho 112964)

def relationRow6410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112965) * ((1 : F) + (1 : F) * rho 112964) = ((1 : F) * rho 112962 + (1 : F) * rho 112963)

def relationRow6411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112966) * ((1 : F) + (-1 : F) * rho 112964) = ((1 : F) * rho 112961 + (-1 : F) * rho 112962 + (-1 : F) * rho 112963)

def relationLc2897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 57⟩], residual := [((1 : F), 112965)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112032) * (relationLc2897 rho) = ((1 : F) * rho 112967)

def relationLc2898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 57⟩], residual := [((1 : F), 112966)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112032) * (relationLc2898 rho) = ((1 : F) * rho 112968)

def relationRow6414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112959) * ((1 : F) * rho 112960) = ((1 : F) * rho 112969)

def relationRow6415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112959) * ((1 : F) * rho 112959) = ((1 : F) * rho 112970)

def relationRow6416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112960) * ((1 : F) * rho 112960) = ((1 : F) * rho 112971)

def relationRow6417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112972) * ((-1 : F) * rho 112970 + (1 : F) * rho 112971) = ((2 : F) * rho 112969)

def relationRow6418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112973) * ((2 : F) + (1 : F) * rho 112970 + (-1 : F) * rho 112971) = ((1 : F) * rho 112970 + (1 : F) * rho 112971)

def relationLc2899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 58⟩, ⟨(1 : F), 112227, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112972 + (1 : F) * rho 112973) * (relationLc2899 rho) = ((1 : F) * rho 112974)

def relationLc2900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112973) * (relationLc2900 rho) = ((1 : F) * rho 112975)

def relationLc2901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112972) * (relationLc2901 rho) = ((1 : F) * rho 112976)

def relationRow6422 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112975) * ((1 : F) * rho 112976) = ((1 : F) * rho 112977)

def relationRow6423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112978) * ((1 : F) + (1 : F) * rho 112977) = ((1 : F) * rho 112975 + (1 : F) * rho 112976)

def relationRow6424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112979) * ((1 : F) + (-1 : F) * rho 112977) = ((1 : F) * rho 112974 + (-1 : F) * rho 112975 + (-1 : F) * rho 112976)

def relationLc2902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 58⟩], residual := [((1 : F), 112978)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112033) * (relationLc2902 rho) = ((1 : F) * rho 112980)

def relationLc2903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 58⟩], residual := [((1 : F), 112979)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112033) * (relationLc2903 rho) = ((1 : F) * rho 112981)

def relationRow6427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112972) * ((1 : F) * rho 112973) = ((1 : F) * rho 112982)

def relationRow6428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112972) * ((1 : F) * rho 112972) = ((1 : F) * rho 112983)

def relationRow6429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112973) * ((1 : F) * rho 112973) = ((1 : F) * rho 112984)

def relationRow6430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112985) * ((-1 : F) * rho 112983 + (1 : F) * rho 112984) = ((2 : F) * rho 112982)

def relationRow6431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112986) * ((2 : F) + (1 : F) * rho 112983 + (-1 : F) * rho 112984) = ((1 : F) * rho 112983 + (1 : F) * rho 112984)

def relationLc2904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 59⟩, ⟨(1 : F), 112227, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112985 + (1 : F) * rho 112986) * (relationLc2904 rho) = ((1 : F) * rho 112987)

def relationLc2905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112986) * (relationLc2905 rho) = ((1 : F) * rho 112988)

def relationLc2906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112985) * (relationLc2906 rho) = ((1 : F) * rho 112989)

def relationRow6435 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 112988) * ((1 : F) * rho 112989) = ((1 : F) * rho 112990)

def relationRow6436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112991) * ((1 : F) + (1 : F) * rho 112990) = ((1 : F) * rho 112988 + (1 : F) * rho 112989)

def relationRow6437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112992) * ((1 : F) + (-1 : F) * rho 112990) = ((1 : F) * rho 112987 + (-1 : F) * rho 112988 + (-1 : F) * rho 112989)

def relationLc2907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 59⟩], residual := [((1 : F), 112991)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112034) * (relationLc2907 rho) = ((1 : F) * rho 112993)

def relationLc2908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 59⟩], residual := [((1 : F), 112992)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112034) * (relationLc2908 rho) = ((1 : F) * rho 112994)

def relationRow6440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112985) * ((1 : F) * rho 112986) = ((1 : F) * rho 112995)

def relationRow6441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112985) * ((1 : F) * rho 112985) = ((1 : F) * rho 112996)

def relationRow6442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112986) * ((1 : F) * rho 112986) = ((1 : F) * rho 112997)

def relationRow6443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112998) * ((-1 : F) * rho 112996 + (1 : F) * rho 112997) = ((2 : F) * rho 112995)

def relationRow6444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112999) * ((2 : F) + (1 : F) * rho 112996 + (-1 : F) * rho 112997) = ((1 : F) * rho 112996 + (1 : F) * rho 112997)

def relationLc2909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 60⟩, ⟨(1 : F), 112227, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112998 + (1 : F) * rho 112999) * (relationLc2909 rho) = ((1 : F) * rho 113000)

def relationLc2910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112999) * (relationLc2910 rho) = ((1 : F) * rho 113001)

def relationLc2911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112998) * (relationLc2911 rho) = ((1 : F) * rho 113002)

def relationRow6448 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113001) * ((1 : F) * rho 113002) = ((1 : F) * rho 113003)

def relationRow6449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113004) * ((1 : F) + (1 : F) * rho 113003) = ((1 : F) * rho 113001 + (1 : F) * rho 113002)

def relationRow6450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113005) * ((1 : F) + (-1 : F) * rho 113003) = ((1 : F) * rho 113000 + (-1 : F) * rho 113001 + (-1 : F) * rho 113002)

def relationLc2912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 60⟩], residual := [((1 : F), 113004)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112035) * (relationLc2912 rho) = ((1 : F) * rho 113006)

def relationLc2913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 60⟩], residual := [((1 : F), 113005)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112035) * (relationLc2913 rho) = ((1 : F) * rho 113007)

def relationRow6453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112998) * ((1 : F) * rho 112999) = ((1 : F) * rho 113008)

def relationRow6454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112998) * ((1 : F) * rho 112998) = ((1 : F) * rho 113009)

def relationRow6455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112999) * ((1 : F) * rho 112999) = ((1 : F) * rho 113010)

def relationRow6456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113011) * ((-1 : F) * rho 113009 + (1 : F) * rho 113010) = ((2 : F) * rho 113008)

def relationRow6457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113012) * ((2 : F) + (1 : F) * rho 113009 + (-1 : F) * rho 113010) = ((1 : F) * rho 113009 + (1 : F) * rho 113010)

def relationLc2914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 61⟩, ⟨(1 : F), 112227, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113011 + (1 : F) * rho 113012) * (relationLc2914 rho) = ((1 : F) * rho 113013)

def relationLc2915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113012) * (relationLc2915 rho) = ((1 : F) * rho 113014)

def relationLc2916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113011) * (relationLc2916 rho) = ((1 : F) * rho 113015)

def relationRow6461 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113014) * ((1 : F) * rho 113015) = ((1 : F) * rho 113016)

def relationRow6462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113017) * ((1 : F) + (1 : F) * rho 113016) = ((1 : F) * rho 113014 + (1 : F) * rho 113015)

def relationRow6463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113018) * ((1 : F) + (-1 : F) * rho 113016) = ((1 : F) * rho 113013 + (-1 : F) * rho 113014 + (-1 : F) * rho 113015)

def relationLc2917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 61⟩], residual := [((1 : F), 113017)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112036) * (relationLc2917 rho) = ((1 : F) * rho 113019)

def relationLc2918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 61⟩], residual := [((1 : F), 113018)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112036) * (relationLc2918 rho) = ((1 : F) * rho 113020)

def relationRow6466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113011) * ((1 : F) * rho 113012) = ((1 : F) * rho 113021)

def relationRow6467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113011) * ((1 : F) * rho 113011) = ((1 : F) * rho 113022)

def relationRow6468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113012) * ((1 : F) * rho 113012) = ((1 : F) * rho 113023)

def relationRow6469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113024) * ((-1 : F) * rho 113022 + (1 : F) * rho 113023) = ((2 : F) * rho 113021)

def relationRow6470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113025) * ((2 : F) + (1 : F) * rho 113022 + (-1 : F) * rho 113023) = ((1 : F) * rho 113022 + (1 : F) * rho 113023)

def relationLc2919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 62⟩, ⟨(1 : F), 112227, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113024 + (1 : F) * rho 113025) * (relationLc2919 rho) = ((1 : F) * rho 113026)

def relationLc2920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113025) * (relationLc2920 rho) = ((1 : F) * rho 113027)

def relationLc2921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113024) * (relationLc2921 rho) = ((1 : F) * rho 113028)

def relationRow6474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113027) * ((1 : F) * rho 113028) = ((1 : F) * rho 113029)

def relationRow6475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113030) * ((1 : F) + (1 : F) * rho 113029) = ((1 : F) * rho 113027 + (1 : F) * rho 113028)

def relationRow6476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113031) * ((1 : F) + (-1 : F) * rho 113029) = ((1 : F) * rho 113026 + (-1 : F) * rho 113027 + (-1 : F) * rho 113028)

def relationLc2922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 62⟩], residual := [((1 : F), 113030)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112037) * (relationLc2922 rho) = ((1 : F) * rho 113032)

def relationLc2923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 62⟩], residual := [((1 : F), 113031)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112037) * (relationLc2923 rho) = ((1 : F) * rho 113033)

def relationRow6479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113024) * ((1 : F) * rho 113025) = ((1 : F) * rho 113034)

def relationRow6480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113024) * ((1 : F) * rho 113024) = ((1 : F) * rho 113035)

def relationRow6481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113025) * ((1 : F) * rho 113025) = ((1 : F) * rho 113036)

def relationRow6482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113037) * ((-1 : F) * rho 113035 + (1 : F) * rho 113036) = ((2 : F) * rho 113034)

def relationRow6483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113038) * ((2 : F) + (1 : F) * rho 113035 + (-1 : F) * rho 113036) = ((1 : F) * rho 113035 + (1 : F) * rho 113036)

def relationLc2924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 63⟩, ⟨(1 : F), 112227, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113037 + (1 : F) * rho 113038) * (relationLc2924 rho) = ((1 : F) * rho 113039)

def relationLc2925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113038) * (relationLc2925 rho) = ((1 : F) * rho 113040)

def relationLc2926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113037) * (relationLc2926 rho) = ((1 : F) * rho 113041)

def relationRow6487 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113040) * ((1 : F) * rho 113041) = ((1 : F) * rho 113042)

def relationRow6488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113043) * ((1 : F) + (1 : F) * rho 113042) = ((1 : F) * rho 113040 + (1 : F) * rho 113041)

def relationRow6489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113044) * ((1 : F) + (-1 : F) * rho 113042) = ((1 : F) * rho 113039 + (-1 : F) * rho 113040 + (-1 : F) * rho 113041)

def relationLc2927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 63⟩], residual := [((1 : F), 113043)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112038) * (relationLc2927 rho) = ((1 : F) * rho 113045)

def relationLc2928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 63⟩], residual := [((1 : F), 113044)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112038) * (relationLc2928 rho) = ((1 : F) * rho 113046)

def relationRow6492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113037) * ((1 : F) * rho 113038) = ((1 : F) * rho 113047)

def relationRow6493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113037) * ((1 : F) * rho 113037) = ((1 : F) * rho 113048)

def relationRow6494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113038) * ((1 : F) * rho 113038) = ((1 : F) * rho 113049)

def relationRow6495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113050) * ((-1 : F) * rho 113048 + (1 : F) * rho 113049) = ((2 : F) * rho 113047)

def relationRow6496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113051) * ((2 : F) + (1 : F) * rho 113048 + (-1 : F) * rho 113049) = ((1 : F) * rho 113048 + (1 : F) * rho 113049)

def relationLc2929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 64⟩, ⟨(1 : F), 112227, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113050 + (1 : F) * rho 113051) * (relationLc2929 rho) = ((1 : F) * rho 113052)

def relationLc2930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113051) * (relationLc2930 rho) = ((1 : F) * rho 113053)

def relationLc2931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113050) * (relationLc2931 rho) = ((1 : F) * rho 113054)

def relationRow6500 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113053) * ((1 : F) * rho 113054) = ((1 : F) * rho 113055)

def relationRow6501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113056) * ((1 : F) + (1 : F) * rho 113055) = ((1 : F) * rho 113053 + (1 : F) * rho 113054)

def relationRow6502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113057) * ((1 : F) + (-1 : F) * rho 113055) = ((1 : F) * rho 113052 + (-1 : F) * rho 113053 + (-1 : F) * rho 113054)

def relationLc2932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 64⟩], residual := [((1 : F), 113056)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112039) * (relationLc2932 rho) = ((1 : F) * rho 113058)

def relationLc2933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 64⟩], residual := [((1 : F), 113057)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112039) * (relationLc2933 rho) = ((1 : F) * rho 113059)

def relationRow6505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113050) * ((1 : F) * rho 113051) = ((1 : F) * rho 113060)

def relationRow6506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113050) * ((1 : F) * rho 113050) = ((1 : F) * rho 113061)

def relationRow6507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113051) * ((1 : F) * rho 113051) = ((1 : F) * rho 113062)

def relationRow6508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113063) * ((-1 : F) * rho 113061 + (1 : F) * rho 113062) = ((2 : F) * rho 113060)

def relationRow6509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113064) * ((2 : F) + (1 : F) * rho 113061 + (-1 : F) * rho 113062) = ((1 : F) * rho 113061 + (1 : F) * rho 113062)

def relationLc2934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 65⟩, ⟨(1 : F), 112227, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113063 + (1 : F) * rho 113064) * (relationLc2934 rho) = ((1 : F) * rho 113065)

def relationLc2935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113064) * (relationLc2935 rho) = ((1 : F) * rho 113066)

def relationLc2936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113063) * (relationLc2936 rho) = ((1 : F) * rho 113067)

def relationRow6513 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113066) * ((1 : F) * rho 113067) = ((1 : F) * rho 113068)

def relationRow6514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113069) * ((1 : F) + (1 : F) * rho 113068) = ((1 : F) * rho 113066 + (1 : F) * rho 113067)

def relationRow6515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113070) * ((1 : F) + (-1 : F) * rho 113068) = ((1 : F) * rho 113065 + (-1 : F) * rho 113066 + (-1 : F) * rho 113067)

def relationLc2937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 65⟩], residual := [((1 : F), 113069)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112040) * (relationLc2937 rho) = ((1 : F) * rho 113071)

def relationLc2938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 65⟩], residual := [((1 : F), 113070)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112040) * (relationLc2938 rho) = ((1 : F) * rho 113072)

def relationRow6518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113063) * ((1 : F) * rho 113064) = ((1 : F) * rho 113073)

def relationRow6519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113063) * ((1 : F) * rho 113063) = ((1 : F) * rho 113074)

def relationRow6520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113064) * ((1 : F) * rho 113064) = ((1 : F) * rho 113075)

def relationRow6521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113076) * ((-1 : F) * rho 113074 + (1 : F) * rho 113075) = ((2 : F) * rho 113073)

def relationRow6522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113077) * ((2 : F) + (1 : F) * rho 113074 + (-1 : F) * rho 113075) = ((1 : F) * rho 113074 + (1 : F) * rho 113075)

def relationLc2939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 66⟩, ⟨(1 : F), 112227, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113076 + (1 : F) * rho 113077) * (relationLc2939 rho) = ((1 : F) * rho 113078)

def relationLc2940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113077) * (relationLc2940 rho) = ((1 : F) * rho 113079)

def relationLc2941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113076) * (relationLc2941 rho) = ((1 : F) * rho 113080)

def relationRow6526 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113079) * ((1 : F) * rho 113080) = ((1 : F) * rho 113081)

def relationRow6527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113082) * ((1 : F) + (1 : F) * rho 113081) = ((1 : F) * rho 113079 + (1 : F) * rho 113080)

def relationRow6528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113083) * ((1 : F) + (-1 : F) * rho 113081) = ((1 : F) * rho 113078 + (-1 : F) * rho 113079 + (-1 : F) * rho 113080)

def relationLc2942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 66⟩], residual := [((1 : F), 113082)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112041) * (relationLc2942 rho) = ((1 : F) * rho 113084)

def relationLc2943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 66⟩], residual := [((1 : F), 113083)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112041) * (relationLc2943 rho) = ((1 : F) * rho 113085)

def relationRow6531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113076) * ((1 : F) * rho 113077) = ((1 : F) * rho 113086)

def relationRow6532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113076) * ((1 : F) * rho 113076) = ((1 : F) * rho 113087)

def relationRow6533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113077) * ((1 : F) * rho 113077) = ((1 : F) * rho 113088)

def relationRow6534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113089) * ((-1 : F) * rho 113087 + (1 : F) * rho 113088) = ((2 : F) * rho 113086)

def relationRow6535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113090) * ((2 : F) + (1 : F) * rho 113087 + (-1 : F) * rho 113088) = ((1 : F) * rho 113087 + (1 : F) * rho 113088)

def relationLc2944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 67⟩, ⟨(1 : F), 112227, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113089 + (1 : F) * rho 113090) * (relationLc2944 rho) = ((1 : F) * rho 113091)

def relationLc2945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113090) * (relationLc2945 rho) = ((1 : F) * rho 113092)

def relationLc2946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113089) * (relationLc2946 rho) = ((1 : F) * rho 113093)

def relationRow6539 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113092) * ((1 : F) * rho 113093) = ((1 : F) * rho 113094)

def relationRow6540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113095) * ((1 : F) + (1 : F) * rho 113094) = ((1 : F) * rho 113092 + (1 : F) * rho 113093)

def relationRow6541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113096) * ((1 : F) + (-1 : F) * rho 113094) = ((1 : F) * rho 113091 + (-1 : F) * rho 113092 + (-1 : F) * rho 113093)

def relationLc2947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 67⟩], residual := [((1 : F), 113095)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112042) * (relationLc2947 rho) = ((1 : F) * rho 113097)

def relationLc2948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 67⟩], residual := [((1 : F), 113096)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112042) * (relationLc2948 rho) = ((1 : F) * rho 113098)

def relationRow6544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113089) * ((1 : F) * rho 113090) = ((1 : F) * rho 113099)

def relationRow6545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113089) * ((1 : F) * rho 113089) = ((1 : F) * rho 113100)

def relationRow6546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113090) * ((1 : F) * rho 113090) = ((1 : F) * rho 113101)

def relationRow6547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113102) * ((-1 : F) * rho 113100 + (1 : F) * rho 113101) = ((2 : F) * rho 113099)

def relationRow6548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113103) * ((2 : F) + (1 : F) * rho 113100 + (-1 : F) * rho 113101) = ((1 : F) * rho 113100 + (1 : F) * rho 113101)

def relationLc2949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 68⟩, ⟨(1 : F), 112227, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113102 + (1 : F) * rho 113103) * (relationLc2949 rho) = ((1 : F) * rho 113104)

def relationLc2950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113103) * (relationLc2950 rho) = ((1 : F) * rho 113105)

def relationLc2951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113102) * (relationLc2951 rho) = ((1 : F) * rho 113106)

def relationRow6552 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113105) * ((1 : F) * rho 113106) = ((1 : F) * rho 113107)

def relationRow6553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113108) * ((1 : F) + (1 : F) * rho 113107) = ((1 : F) * rho 113105 + (1 : F) * rho 113106)

def relationRow6554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113109) * ((1 : F) + (-1 : F) * rho 113107) = ((1 : F) * rho 113104 + (-1 : F) * rho 113105 + (-1 : F) * rho 113106)

def relationLc2952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 68⟩], residual := [((1 : F), 113108)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112043) * (relationLc2952 rho) = ((1 : F) * rho 113110)

def relationLc2953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 68⟩], residual := [((1 : F), 113109)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112043) * (relationLc2953 rho) = ((1 : F) * rho 113111)

def relationRow6557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113102) * ((1 : F) * rho 113103) = ((1 : F) * rho 113112)

def relationRow6558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113102) * ((1 : F) * rho 113102) = ((1 : F) * rho 113113)

def relationRow6559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113103) * ((1 : F) * rho 113103) = ((1 : F) * rho 113114)

def relationRow6560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113115) * ((-1 : F) * rho 113113 + (1 : F) * rho 113114) = ((2 : F) * rho 113112)

def relationRow6561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113116) * ((2 : F) + (1 : F) * rho 113113 + (-1 : F) * rho 113114) = ((1 : F) * rho 113113 + (1 : F) * rho 113114)

def relationLc2954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 69⟩, ⟨(1 : F), 112227, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113115 + (1 : F) * rho 113116) * (relationLc2954 rho) = ((1 : F) * rho 113117)

def relationLc2955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113116) * (relationLc2955 rho) = ((1 : F) * rho 113118)

def relationLc2956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113115) * (relationLc2956 rho) = ((1 : F) * rho 113119)

def relationRow6565 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113118) * ((1 : F) * rho 113119) = ((1 : F) * rho 113120)

def relationRow6566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113121) * ((1 : F) + (1 : F) * rho 113120) = ((1 : F) * rho 113118 + (1 : F) * rho 113119)

def relationRow6567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113122) * ((1 : F) + (-1 : F) * rho 113120) = ((1 : F) * rho 113117 + (-1 : F) * rho 113118 + (-1 : F) * rho 113119)

def relationLc2957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 69⟩], residual := [((1 : F), 113121)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112044) * (relationLc2957 rho) = ((1 : F) * rho 113123)

def relationLc2958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 69⟩], residual := [((1 : F), 113122)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112044) * (relationLc2958 rho) = ((1 : F) * rho 113124)

def relationRow6570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113115) * ((1 : F) * rho 113116) = ((1 : F) * rho 113125)

def relationRow6571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113115) * ((1 : F) * rho 113115) = ((1 : F) * rho 113126)

def relationRow6572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113116) * ((1 : F) * rho 113116) = ((1 : F) * rho 113127)

def relationRow6573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113128) * ((-1 : F) * rho 113126 + (1 : F) * rho 113127) = ((2 : F) * rho 113125)

def relationRow6574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113129) * ((2 : F) + (1 : F) * rho 113126 + (-1 : F) * rho 113127) = ((1 : F) * rho 113126 + (1 : F) * rho 113127)

def relationLc2959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 70⟩, ⟨(1 : F), 112227, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113128 + (1 : F) * rho 113129) * (relationLc2959 rho) = ((1 : F) * rho 113130)

def relationLc2960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113129) * (relationLc2960 rho) = ((1 : F) * rho 113131)

def relationLc2961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113128) * (relationLc2961 rho) = ((1 : F) * rho 113132)

def relationRow6578 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113131) * ((1 : F) * rho 113132) = ((1 : F) * rho 113133)

def relationRow6579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113134) * ((1 : F) + (1 : F) * rho 113133) = ((1 : F) * rho 113131 + (1 : F) * rho 113132)

def relationRow6580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113135) * ((1 : F) + (-1 : F) * rho 113133) = ((1 : F) * rho 113130 + (-1 : F) * rho 113131 + (-1 : F) * rho 113132)

def relationLc2962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 70⟩], residual := [((1 : F), 113134)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112045) * (relationLc2962 rho) = ((1 : F) * rho 113136)

def relationLc2963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 70⟩], residual := [((1 : F), 113135)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112045) * (relationLc2963 rho) = ((1 : F) * rho 113137)

def relationRow6583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113128) * ((1 : F) * rho 113129) = ((1 : F) * rho 113138)

def relationRow6584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113128) * ((1 : F) * rho 113128) = ((1 : F) * rho 113139)

def relationRow6585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113129) * ((1 : F) * rho 113129) = ((1 : F) * rho 113140)

def relationRow6586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113141) * ((-1 : F) * rho 113139 + (1 : F) * rho 113140) = ((2 : F) * rho 113138)

def relationRow6587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113142) * ((2 : F) + (1 : F) * rho 113139 + (-1 : F) * rho 113140) = ((1 : F) * rho 113139 + (1 : F) * rho 113140)

def relationLc2964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 71⟩, ⟨(1 : F), 112227, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113141 + (1 : F) * rho 113142) * (relationLc2964 rho) = ((1 : F) * rho 113143)

def relationLc2965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113142) * (relationLc2965 rho) = ((1 : F) * rho 113144)

def relationLc2966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113141) * (relationLc2966 rho) = ((1 : F) * rho 113145)

def relationRow6591 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113144) * ((1 : F) * rho 113145) = ((1 : F) * rho 113146)

def relationRow6592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113147) * ((1 : F) + (1 : F) * rho 113146) = ((1 : F) * rho 113144 + (1 : F) * rho 113145)

def relationRow6593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113148) * ((1 : F) + (-1 : F) * rho 113146) = ((1 : F) * rho 113143 + (-1 : F) * rho 113144 + (-1 : F) * rho 113145)

def relationLc2967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 71⟩], residual := [((1 : F), 113147)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112046) * (relationLc2967 rho) = ((1 : F) * rho 113149)

def relationLc2968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 71⟩], residual := [((1 : F), 113148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112046) * (relationLc2968 rho) = ((1 : F) * rho 113150)

def relationRow6596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113141) * ((1 : F) * rho 113142) = ((1 : F) * rho 113151)

def relationRow6597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113141) * ((1 : F) * rho 113141) = ((1 : F) * rho 113152)

def relationRow6598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113142) * ((1 : F) * rho 113142) = ((1 : F) * rho 113153)

def relationRow6599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113154) * ((-1 : F) * rho 113152 + (1 : F) * rho 113153) = ((2 : F) * rho 113151)

def relationRow6600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113155) * ((2 : F) + (1 : F) * rho 113152 + (-1 : F) * rho 113153) = ((1 : F) * rho 113152 + (1 : F) * rho 113153)

def relationLc2969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 72⟩, ⟨(1 : F), 112227, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113154 + (1 : F) * rho 113155) * (relationLc2969 rho) = ((1 : F) * rho 113156)

def relationLc2970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113155) * (relationLc2970 rho) = ((1 : F) * rho 113157)

def relationLc2971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113154) * (relationLc2971 rho) = ((1 : F) * rho 113158)

def relationRow6604 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113157) * ((1 : F) * rho 113158) = ((1 : F) * rho 113159)

def relationRow6605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113160) * ((1 : F) + (1 : F) * rho 113159) = ((1 : F) * rho 113157 + (1 : F) * rho 113158)

def relationRow6606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113161) * ((1 : F) + (-1 : F) * rho 113159) = ((1 : F) * rho 113156 + (-1 : F) * rho 113157 + (-1 : F) * rho 113158)

def relationLc2972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 72⟩], residual := [((1 : F), 113160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112047) * (relationLc2972 rho) = ((1 : F) * rho 113162)

def relationLc2973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 72⟩], residual := [((1 : F), 113161)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112047) * (relationLc2973 rho) = ((1 : F) * rho 113163)

def relationRow6609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113154) * ((1 : F) * rho 113155) = ((1 : F) * rho 113164)

def relationRow6610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113154) * ((1 : F) * rho 113154) = ((1 : F) * rho 113165)

def relationRow6611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113155) * ((1 : F) * rho 113155) = ((1 : F) * rho 113166)

def relationRow6612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113167) * ((-1 : F) * rho 113165 + (1 : F) * rho 113166) = ((2 : F) * rho 113164)

def relationRow6613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113168) * ((2 : F) + (1 : F) * rho 113165 + (-1 : F) * rho 113166) = ((1 : F) * rho 113165 + (1 : F) * rho 113166)

def relationLc2974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 73⟩, ⟨(1 : F), 112227, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113167 + (1 : F) * rho 113168) * (relationLc2974 rho) = ((1 : F) * rho 113169)

def relationLc2975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113168) * (relationLc2975 rho) = ((1 : F) * rho 113170)

def relationLc2976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113167) * (relationLc2976 rho) = ((1 : F) * rho 113171)

def relationRow6617 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113170) * ((1 : F) * rho 113171) = ((1 : F) * rho 113172)

def relationRow6618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113173) * ((1 : F) + (1 : F) * rho 113172) = ((1 : F) * rho 113170 + (1 : F) * rho 113171)

def relationRow6619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113174) * ((1 : F) + (-1 : F) * rho 113172) = ((1 : F) * rho 113169 + (-1 : F) * rho 113170 + (-1 : F) * rho 113171)

def relationLc2977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 73⟩], residual := [((1 : F), 113173)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112048) * (relationLc2977 rho) = ((1 : F) * rho 113175)

def relationLc2978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 73⟩], residual := [((1 : F), 113174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112048) * (relationLc2978 rho) = ((1 : F) * rho 113176)

def relationRow6622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113167) * ((1 : F) * rho 113168) = ((1 : F) * rho 113177)

def relationRow6623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113167) * ((1 : F) * rho 113167) = ((1 : F) * rho 113178)

def relationRow6624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113168) * ((1 : F) * rho 113168) = ((1 : F) * rho 113179)

def relationRow6625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113180) * ((-1 : F) * rho 113178 + (1 : F) * rho 113179) = ((2 : F) * rho 113177)

def relationRow6626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113181) * ((2 : F) + (1 : F) * rho 113178 + (-1 : F) * rho 113179) = ((1 : F) * rho 113178 + (1 : F) * rho 113179)

def relationLc2979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 74⟩, ⟨(1 : F), 112227, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113180 + (1 : F) * rho 113181) * (relationLc2979 rho) = ((1 : F) * rho 113182)

def relationLc2980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113181) * (relationLc2980 rho) = ((1 : F) * rho 113183)

def relationLc2981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113180) * (relationLc2981 rho) = ((1 : F) * rho 113184)

def relationRow6630 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113183) * ((1 : F) * rho 113184) = ((1 : F) * rho 113185)

def relationRow6631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113186) * ((1 : F) + (1 : F) * rho 113185) = ((1 : F) * rho 113183 + (1 : F) * rho 113184)

def relationRow6632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113187) * ((1 : F) + (-1 : F) * rho 113185) = ((1 : F) * rho 113182 + (-1 : F) * rho 113183 + (-1 : F) * rho 113184)

def relationLc2982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 74⟩], residual := [((1 : F), 113186)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112049) * (relationLc2982 rho) = ((1 : F) * rho 113188)

def relationLc2983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 74⟩], residual := [((1 : F), 113187)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112049) * (relationLc2983 rho) = ((1 : F) * rho 113189)

def relationRow6635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113180) * ((1 : F) * rho 113181) = ((1 : F) * rho 113190)

def relationRow6636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113180) * ((1 : F) * rho 113180) = ((1 : F) * rho 113191)

def relationRow6637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113181) * ((1 : F) * rho 113181) = ((1 : F) * rho 113192)

def relationRow6638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113193) * ((-1 : F) * rho 113191 + (1 : F) * rho 113192) = ((2 : F) * rho 113190)

def relationRow6639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113194) * ((2 : F) + (1 : F) * rho 113191 + (-1 : F) * rho 113192) = ((1 : F) * rho 113191 + (1 : F) * rho 113192)

def relationLc2984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 75⟩, ⟨(1 : F), 112227, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113193 + (1 : F) * rho 113194) * (relationLc2984 rho) = ((1 : F) * rho 113195)

def relationLc2985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113194) * (relationLc2985 rho) = ((1 : F) * rho 113196)

def relationLc2986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113193) * (relationLc2986 rho) = ((1 : F) * rho 113197)

def relationRow6643 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113196) * ((1 : F) * rho 113197) = ((1 : F) * rho 113198)

def relationRow6644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113199) * ((1 : F) + (1 : F) * rho 113198) = ((1 : F) * rho 113196 + (1 : F) * rho 113197)

def relationRow6645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113200) * ((1 : F) + (-1 : F) * rho 113198) = ((1 : F) * rho 113195 + (-1 : F) * rho 113196 + (-1 : F) * rho 113197)

def relationLc2987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 75⟩], residual := [((1 : F), 113199)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112050) * (relationLc2987 rho) = ((1 : F) * rho 113201)

def relationLc2988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 75⟩], residual := [((1 : F), 113200)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112050) * (relationLc2988 rho) = ((1 : F) * rho 113202)

def relationRow6648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113193) * ((1 : F) * rho 113194) = ((1 : F) * rho 113203)

def relationRow6649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113193) * ((1 : F) * rho 113193) = ((1 : F) * rho 113204)

def relationRow6650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113194) * ((1 : F) * rho 113194) = ((1 : F) * rho 113205)

def relationRow6651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113206) * ((-1 : F) * rho 113204 + (1 : F) * rho 113205) = ((2 : F) * rho 113203)

def relationRow6652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113207) * ((2 : F) + (1 : F) * rho 113204 + (-1 : F) * rho 113205) = ((1 : F) * rho 113204 + (1 : F) * rho 113205)

def relationLc2989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 76⟩, ⟨(1 : F), 112227, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113206 + (1 : F) * rho 113207) * (relationLc2989 rho) = ((1 : F) * rho 113208)

def relationLc2990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113207) * (relationLc2990 rho) = ((1 : F) * rho 113209)

def relationLc2991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113206) * (relationLc2991 rho) = ((1 : F) * rho 113210)

def relationRow6656 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113209) * ((1 : F) * rho 113210) = ((1 : F) * rho 113211)

def relationRow6657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113212) * ((1 : F) + (1 : F) * rho 113211) = ((1 : F) * rho 113209 + (1 : F) * rho 113210)

def relationRow6658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113213) * ((1 : F) + (-1 : F) * rho 113211) = ((1 : F) * rho 113208 + (-1 : F) * rho 113209 + (-1 : F) * rho 113210)

def relationLc2992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 76⟩], residual := [((1 : F), 113212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112051) * (relationLc2992 rho) = ((1 : F) * rho 113214)

def relationLc2993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 76⟩], residual := [((1 : F), 113213)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112051) * (relationLc2993 rho) = ((1 : F) * rho 113215)

def relationRow6661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113206) * ((1 : F) * rho 113207) = ((1 : F) * rho 113216)

def relationRow6662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113206) * ((1 : F) * rho 113206) = ((1 : F) * rho 113217)

def relationRow6663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113207) * ((1 : F) * rho 113207) = ((1 : F) * rho 113218)

def relationRow6664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113219) * ((-1 : F) * rho 113217 + (1 : F) * rho 113218) = ((2 : F) * rho 113216)

def relationRow6665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113220) * ((2 : F) + (1 : F) * rho 113217 + (-1 : F) * rho 113218) = ((1 : F) * rho 113217 + (1 : F) * rho 113218)

def relationLc2994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 77⟩, ⟨(1 : F), 112227, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113219 + (1 : F) * rho 113220) * (relationLc2994 rho) = ((1 : F) * rho 113221)

def relationLc2995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113220) * (relationLc2995 rho) = ((1 : F) * rho 113222)

def relationLc2996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113219) * (relationLc2996 rho) = ((1 : F) * rho 113223)

def relationRow6669 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113222) * ((1 : F) * rho 113223) = ((1 : F) * rho 113224)

def relationRow6670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113225) * ((1 : F) + (1 : F) * rho 113224) = ((1 : F) * rho 113222 + (1 : F) * rho 113223)

def relationRow6671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113226) * ((1 : F) + (-1 : F) * rho 113224) = ((1 : F) * rho 113221 + (-1 : F) * rho 113222 + (-1 : F) * rho 113223)

def relationLc2997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 77⟩], residual := [((1 : F), 113225)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112052) * (relationLc2997 rho) = ((1 : F) * rho 113227)

def relationLc2998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 77⟩], residual := [((1 : F), 113226)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112052) * (relationLc2998 rho) = ((1 : F) * rho 113228)

def relationRow6674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113219) * ((1 : F) * rho 113220) = ((1 : F) * rho 113229)

def relationRow6675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113219) * ((1 : F) * rho 113219) = ((1 : F) * rho 113230)

def relationRow6676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113220) * ((1 : F) * rho 113220) = ((1 : F) * rho 113231)

def relationRow6677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113232) * ((-1 : F) * rho 113230 + (1 : F) * rho 113231) = ((2 : F) * rho 113229)

def relationRow6678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113233) * ((2 : F) + (1 : F) * rho 113230 + (-1 : F) * rho 113231) = ((1 : F) * rho 113230 + (1 : F) * rho 113231)

def relationLc2999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 78⟩, ⟨(1 : F), 112227, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113232 + (1 : F) * rho 113233) * (relationLc2999 rho) = ((1 : F) * rho 113234)

def relationLc3000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113233) * (relationLc3000 rho) = ((1 : F) * rho 113235)

def relationLc3001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113232) * (relationLc3001 rho) = ((1 : F) * rho 113236)

def relationRow6682 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113235) * ((1 : F) * rho 113236) = ((1 : F) * rho 113237)

def relationRow6683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113238) * ((1 : F) + (1 : F) * rho 113237) = ((1 : F) * rho 113235 + (1 : F) * rho 113236)

def relationRow6684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113239) * ((1 : F) + (-1 : F) * rho 113237) = ((1 : F) * rho 113234 + (-1 : F) * rho 113235 + (-1 : F) * rho 113236)

def relationLc3002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 78⟩], residual := [((1 : F), 113238)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112053) * (relationLc3002 rho) = ((1 : F) * rho 113240)

def relationLc3003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 78⟩], residual := [((1 : F), 113239)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112053) * (relationLc3003 rho) = ((1 : F) * rho 113241)

def relationRow6687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113232) * ((1 : F) * rho 113233) = ((1 : F) * rho 113242)

def relationRow6688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113232) * ((1 : F) * rho 113232) = ((1 : F) * rho 113243)

def relationRow6689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113233) * ((1 : F) * rho 113233) = ((1 : F) * rho 113244)

def relationRow6690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113245) * ((-1 : F) * rho 113243 + (1 : F) * rho 113244) = ((2 : F) * rho 113242)

def relationRow6691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113246) * ((2 : F) + (1 : F) * rho 113243 + (-1 : F) * rho 113244) = ((1 : F) * rho 113243 + (1 : F) * rho 113244)

def relationLc3004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 79⟩, ⟨(1 : F), 112227, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113245 + (1 : F) * rho 113246) * (relationLc3004 rho) = ((1 : F) * rho 113247)

def relationLc3005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113246) * (relationLc3005 rho) = ((1 : F) * rho 113248)

def relationLc3006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113245) * (relationLc3006 rho) = ((1 : F) * rho 113249)

def relationRow6695 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113248) * ((1 : F) * rho 113249) = ((1 : F) * rho 113250)

def relationRow6696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113251) * ((1 : F) + (1 : F) * rho 113250) = ((1 : F) * rho 113248 + (1 : F) * rho 113249)

def relationRow6697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113252) * ((1 : F) + (-1 : F) * rho 113250) = ((1 : F) * rho 113247 + (-1 : F) * rho 113248 + (-1 : F) * rho 113249)

def relationLc3007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 79⟩], residual := [((1 : F), 113251)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112054) * (relationLc3007 rho) = ((1 : F) * rho 113253)

def relationLc3008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 79⟩], residual := [((1 : F), 113252)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112054) * (relationLc3008 rho) = ((1 : F) * rho 113254)

def relationRow6700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113245) * ((1 : F) * rho 113246) = ((1 : F) * rho 113255)

def relationRow6701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113245) * ((1 : F) * rho 113245) = ((1 : F) * rho 113256)

def relationRow6702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113246) * ((1 : F) * rho 113246) = ((1 : F) * rho 113257)

def relationRow6703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113258) * ((-1 : F) * rho 113256 + (1 : F) * rho 113257) = ((2 : F) * rho 113255)

def relationRow6704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113259) * ((2 : F) + (1 : F) * rho 113256 + (-1 : F) * rho 113257) = ((1 : F) * rho 113256 + (1 : F) * rho 113257)

def relationLc3009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 80⟩, ⟨(1 : F), 112227, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113258 + (1 : F) * rho 113259) * (relationLc3009 rho) = ((1 : F) * rho 113260)

def relationLc3010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113259) * (relationLc3010 rho) = ((1 : F) * rho 113261)

def relationLc3011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113258) * (relationLc3011 rho) = ((1 : F) * rho 113262)

def relationRow6708 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113261) * ((1 : F) * rho 113262) = ((1 : F) * rho 113263)

def relationRow6709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113264) * ((1 : F) + (1 : F) * rho 113263) = ((1 : F) * rho 113261 + (1 : F) * rho 113262)

def relationRow6710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113265) * ((1 : F) + (-1 : F) * rho 113263) = ((1 : F) * rho 113260 + (-1 : F) * rho 113261 + (-1 : F) * rho 113262)

def relationLc3012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 80⟩], residual := [((1 : F), 113264)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112055) * (relationLc3012 rho) = ((1 : F) * rho 113266)

def relationLc3013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 80⟩], residual := [((1 : F), 113265)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112055) * (relationLc3013 rho) = ((1 : F) * rho 113267)

def relationRow6713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113258) * ((1 : F) * rho 113259) = ((1 : F) * rho 113268)

def relationRow6714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113258) * ((1 : F) * rho 113258) = ((1 : F) * rho 113269)

def relationRow6715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113259) * ((1 : F) * rho 113259) = ((1 : F) * rho 113270)

def relationRow6716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113271) * ((-1 : F) * rho 113269 + (1 : F) * rho 113270) = ((2 : F) * rho 113268)

def relationRow6717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113272) * ((2 : F) + (1 : F) * rho 113269 + (-1 : F) * rho 113270) = ((1 : F) * rho 113269 + (1 : F) * rho 113270)

def relationLc3014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 81⟩, ⟨(1 : F), 112227, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113271 + (1 : F) * rho 113272) * (relationLc3014 rho) = ((1 : F) * rho 113273)

def relationLc3015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113272) * (relationLc3015 rho) = ((1 : F) * rho 113274)

def relationLc3016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113271) * (relationLc3016 rho) = ((1 : F) * rho 113275)

def relationRow6721 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113274) * ((1 : F) * rho 113275) = ((1 : F) * rho 113276)

def relationRow6722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113277) * ((1 : F) + (1 : F) * rho 113276) = ((1 : F) * rho 113274 + (1 : F) * rho 113275)

def relationRow6723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113278) * ((1 : F) + (-1 : F) * rho 113276) = ((1 : F) * rho 113273 + (-1 : F) * rho 113274 + (-1 : F) * rho 113275)

def relationLc3017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 81⟩], residual := [((1 : F), 113277)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112056) * (relationLc3017 rho) = ((1 : F) * rho 113279)

def relationLc3018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 81⟩], residual := [((1 : F), 113278)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112056) * (relationLc3018 rho) = ((1 : F) * rho 113280)

def relationRow6726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113271) * ((1 : F) * rho 113272) = ((1 : F) * rho 113281)

def relationRow6727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113271) * ((1 : F) * rho 113271) = ((1 : F) * rho 113282)

def relationRow6728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113272) * ((1 : F) * rho 113272) = ((1 : F) * rho 113283)

def relationRow6729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113284) * ((-1 : F) * rho 113282 + (1 : F) * rho 113283) = ((2 : F) * rho 113281)

def relationRow6730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113285) * ((2 : F) + (1 : F) * rho 113282 + (-1 : F) * rho 113283) = ((1 : F) * rho 113282 + (1 : F) * rho 113283)

def relationLc3019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 82⟩, ⟨(1 : F), 112227, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113284 + (1 : F) * rho 113285) * (relationLc3019 rho) = ((1 : F) * rho 113286)

def relationLc3020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113285) * (relationLc3020 rho) = ((1 : F) * rho 113287)

def relationLc3021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113284) * (relationLc3021 rho) = ((1 : F) * rho 113288)

def relationRow6734 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113287) * ((1 : F) * rho 113288) = ((1 : F) * rho 113289)

def relationRow6735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113290) * ((1 : F) + (1 : F) * rho 113289) = ((1 : F) * rho 113287 + (1 : F) * rho 113288)

def relationRow6736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113291) * ((1 : F) + (-1 : F) * rho 113289) = ((1 : F) * rho 113286 + (-1 : F) * rho 113287 + (-1 : F) * rho 113288)

def relationLc3022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 82⟩], residual := [((1 : F), 113290)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112057) * (relationLc3022 rho) = ((1 : F) * rho 113292)

def relationLc3023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 82⟩], residual := [((1 : F), 113291)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112057) * (relationLc3023 rho) = ((1 : F) * rho 113293)

def relationRow6739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113284) * ((1 : F) * rho 113285) = ((1 : F) * rho 113294)

def relationRow6740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113284) * ((1 : F) * rho 113284) = ((1 : F) * rho 113295)

def relationRow6741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113285) * ((1 : F) * rho 113285) = ((1 : F) * rho 113296)

def relationRow6742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113297) * ((-1 : F) * rho 113295 + (1 : F) * rho 113296) = ((2 : F) * rho 113294)

def relationRow6743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113298) * ((2 : F) + (1 : F) * rho 113295 + (-1 : F) * rho 113296) = ((1 : F) * rho 113295 + (1 : F) * rho 113296)

def relationLc3024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 83⟩, ⟨(1 : F), 112227, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113297 + (1 : F) * rho 113298) * (relationLc3024 rho) = ((1 : F) * rho 113299)

def relationLc3025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113298) * (relationLc3025 rho) = ((1 : F) * rho 113300)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
