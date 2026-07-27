import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg109Defs15

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109

def relationLc2802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 38⟩], residual := [((1 : F), 121747)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121042) * (relationLc2802 rho) = ((1 : F) * rho 121749)

def relationLc2803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 38⟩], residual := [((1 : F), 121748)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121042) * (relationLc2803 rho) = ((1 : F) * rho 121750)

def relationRow6167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121741) * ((1 : F) * rho 121742) = ((1 : F) * rho 121751)

def relationRow6168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121741) * ((1 : F) * rho 121741) = ((1 : F) * rho 121752)

def relationRow6169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121742) * ((1 : F) * rho 121742) = ((1 : F) * rho 121753)

def relationRow6170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121754) * ((-1 : F) * rho 121752 + (1 : F) * rho 121753) = ((2 : F) * rho 121751)

def relationRow6171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121755) * ((2 : F) + (1 : F) * rho 121752 + (-1 : F) * rho 121753) = ((1 : F) * rho 121752 + (1 : F) * rho 121753)

def relationLc2804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 39⟩, ⟨(1 : F), 121256, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121754 + (1 : F) * rho 121755) * (relationLc2804 rho) = ((1 : F) * rho 121756)

def relationLc2805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121755) * (relationLc2805 rho) = ((1 : F) * rho 121757)

def relationLc2806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121754) * (relationLc2806 rho) = ((1 : F) * rho 121758)

def relationRow6175 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121757) * ((1 : F) * rho 121758) = ((1 : F) * rho 121759)

def relationRow6176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121760) * ((1 : F) + (1 : F) * rho 121759) = ((1 : F) * rho 121757 + (1 : F) * rho 121758)

def relationRow6177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121761) * ((1 : F) + (-1 : F) * rho 121759) = ((1 : F) * rho 121756 + (-1 : F) * rho 121757 + (-1 : F) * rho 121758)

def relationLc2807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 39⟩], residual := [((1 : F), 121760)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121043) * (relationLc2807 rho) = ((1 : F) * rho 121762)

def relationLc2808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 39⟩], residual := [((1 : F), 121761)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121043) * (relationLc2808 rho) = ((1 : F) * rho 121763)

def relationRow6180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121754) * ((1 : F) * rho 121755) = ((1 : F) * rho 121764)

def relationRow6181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121754) * ((1 : F) * rho 121754) = ((1 : F) * rho 121765)

def relationRow6182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121755) * ((1 : F) * rho 121755) = ((1 : F) * rho 121766)

def relationRow6183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121767) * ((-1 : F) * rho 121765 + (1 : F) * rho 121766) = ((2 : F) * rho 121764)

def relationRow6184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121768) * ((2 : F) + (1 : F) * rho 121765 + (-1 : F) * rho 121766) = ((1 : F) * rho 121765 + (1 : F) * rho 121766)

def relationLc2809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 40⟩, ⟨(1 : F), 121256, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121767 + (1 : F) * rho 121768) * (relationLc2809 rho) = ((1 : F) * rho 121769)

def relationLc2810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121768) * (relationLc2810 rho) = ((1 : F) * rho 121770)

def relationLc2811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121767) * (relationLc2811 rho) = ((1 : F) * rho 121771)

def relationRow6188 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121770) * ((1 : F) * rho 121771) = ((1 : F) * rho 121772)

def relationRow6189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121773) * ((1 : F) + (1 : F) * rho 121772) = ((1 : F) * rho 121770 + (1 : F) * rho 121771)

def relationRow6190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121774) * ((1 : F) + (-1 : F) * rho 121772) = ((1 : F) * rho 121769 + (-1 : F) * rho 121770 + (-1 : F) * rho 121771)

def relationLc2812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 40⟩], residual := [((1 : F), 121773)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121044) * (relationLc2812 rho) = ((1 : F) * rho 121775)

def relationLc2813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 40⟩], residual := [((1 : F), 121774)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121044) * (relationLc2813 rho) = ((1 : F) * rho 121776)

def relationRow6193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121767) * ((1 : F) * rho 121768) = ((1 : F) * rho 121777)

def relationRow6194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121767) * ((1 : F) * rho 121767) = ((1 : F) * rho 121778)

def relationRow6195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121768) * ((1 : F) * rho 121768) = ((1 : F) * rho 121779)

def relationRow6196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121780) * ((-1 : F) * rho 121778 + (1 : F) * rho 121779) = ((2 : F) * rho 121777)

def relationRow6197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121781) * ((2 : F) + (1 : F) * rho 121778 + (-1 : F) * rho 121779) = ((1 : F) * rho 121778 + (1 : F) * rho 121779)

def relationLc2814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 41⟩, ⟨(1 : F), 121256, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121780 + (1 : F) * rho 121781) * (relationLc2814 rho) = ((1 : F) * rho 121782)

def relationLc2815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121781) * (relationLc2815 rho) = ((1 : F) * rho 121783)

def relationLc2816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121780) * (relationLc2816 rho) = ((1 : F) * rho 121784)

def relationRow6201 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121783) * ((1 : F) * rho 121784) = ((1 : F) * rho 121785)

def relationRow6202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121786) * ((1 : F) + (1 : F) * rho 121785) = ((1 : F) * rho 121783 + (1 : F) * rho 121784)

def relationRow6203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121787) * ((1 : F) + (-1 : F) * rho 121785) = ((1 : F) * rho 121782 + (-1 : F) * rho 121783 + (-1 : F) * rho 121784)

def relationLc2817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 41⟩], residual := [((1 : F), 121786)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121045) * (relationLc2817 rho) = ((1 : F) * rho 121788)

def relationLc2818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 41⟩], residual := [((1 : F), 121787)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121045) * (relationLc2818 rho) = ((1 : F) * rho 121789)

def relationRow6206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121780) * ((1 : F) * rho 121781) = ((1 : F) * rho 121790)

def relationRow6207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121780) * ((1 : F) * rho 121780) = ((1 : F) * rho 121791)

def relationRow6208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121781) * ((1 : F) * rho 121781) = ((1 : F) * rho 121792)

def relationRow6209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121793) * ((-1 : F) * rho 121791 + (1 : F) * rho 121792) = ((2 : F) * rho 121790)

def relationRow6210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121794) * ((2 : F) + (1 : F) * rho 121791 + (-1 : F) * rho 121792) = ((1 : F) * rho 121791 + (1 : F) * rho 121792)

def relationLc2819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 42⟩, ⟨(1 : F), 121256, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121793 + (1 : F) * rho 121794) * (relationLc2819 rho) = ((1 : F) * rho 121795)

def relationLc2820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121794) * (relationLc2820 rho) = ((1 : F) * rho 121796)

def relationLc2821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121793) * (relationLc2821 rho) = ((1 : F) * rho 121797)

def relationRow6214 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121796) * ((1 : F) * rho 121797) = ((1 : F) * rho 121798)

def relationRow6215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121799) * ((1 : F) + (1 : F) * rho 121798) = ((1 : F) * rho 121796 + (1 : F) * rho 121797)

def relationRow6216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121800) * ((1 : F) + (-1 : F) * rho 121798) = ((1 : F) * rho 121795 + (-1 : F) * rho 121796 + (-1 : F) * rho 121797)

def relationLc2822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 42⟩], residual := [((1 : F), 121799)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121046) * (relationLc2822 rho) = ((1 : F) * rho 121801)

def relationLc2823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 42⟩], residual := [((1 : F), 121800)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121046) * (relationLc2823 rho) = ((1 : F) * rho 121802)

def relationRow6219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121793) * ((1 : F) * rho 121794) = ((1 : F) * rho 121803)

def relationRow6220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121793) * ((1 : F) * rho 121793) = ((1 : F) * rho 121804)

def relationRow6221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121794) * ((1 : F) * rho 121794) = ((1 : F) * rho 121805)

def relationRow6222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121806) * ((-1 : F) * rho 121804 + (1 : F) * rho 121805) = ((2 : F) * rho 121803)

def relationRow6223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121807) * ((2 : F) + (1 : F) * rho 121804 + (-1 : F) * rho 121805) = ((1 : F) * rho 121804 + (1 : F) * rho 121805)

def relationLc2824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 43⟩, ⟨(1 : F), 121256, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121806 + (1 : F) * rho 121807) * (relationLc2824 rho) = ((1 : F) * rho 121808)

def relationLc2825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121807) * (relationLc2825 rho) = ((1 : F) * rho 121809)

def relationLc2826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121806) * (relationLc2826 rho) = ((1 : F) * rho 121810)

def relationRow6227 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121809) * ((1 : F) * rho 121810) = ((1 : F) * rho 121811)

def relationRow6228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121812) * ((1 : F) + (1 : F) * rho 121811) = ((1 : F) * rho 121809 + (1 : F) * rho 121810)

def relationRow6229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121813) * ((1 : F) + (-1 : F) * rho 121811) = ((1 : F) * rho 121808 + (-1 : F) * rho 121809 + (-1 : F) * rho 121810)

def relationLc2827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 43⟩], residual := [((1 : F), 121812)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121047) * (relationLc2827 rho) = ((1 : F) * rho 121814)

def relationLc2828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 43⟩], residual := [((1 : F), 121813)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121047) * (relationLc2828 rho) = ((1 : F) * rho 121815)

def relationRow6232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121806) * ((1 : F) * rho 121807) = ((1 : F) * rho 121816)

def relationRow6233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121806) * ((1 : F) * rho 121806) = ((1 : F) * rho 121817)

def relationRow6234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121807) * ((1 : F) * rho 121807) = ((1 : F) * rho 121818)

def relationRow6235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121819) * ((-1 : F) * rho 121817 + (1 : F) * rho 121818) = ((2 : F) * rho 121816)

def relationRow6236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121820) * ((2 : F) + (1 : F) * rho 121817 + (-1 : F) * rho 121818) = ((1 : F) * rho 121817 + (1 : F) * rho 121818)

def relationLc2829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 44⟩, ⟨(1 : F), 121256, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121819 + (1 : F) * rho 121820) * (relationLc2829 rho) = ((1 : F) * rho 121821)

def relationLc2830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121820) * (relationLc2830 rho) = ((1 : F) * rho 121822)

def relationLc2831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121819) * (relationLc2831 rho) = ((1 : F) * rho 121823)

def relationRow6240 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121822) * ((1 : F) * rho 121823) = ((1 : F) * rho 121824)

def relationRow6241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121825) * ((1 : F) + (1 : F) * rho 121824) = ((1 : F) * rho 121822 + (1 : F) * rho 121823)

def relationRow6242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121826) * ((1 : F) + (-1 : F) * rho 121824) = ((1 : F) * rho 121821 + (-1 : F) * rho 121822 + (-1 : F) * rho 121823)

def relationLc2832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 44⟩], residual := [((1 : F), 121825)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121048) * (relationLc2832 rho) = ((1 : F) * rho 121827)

def relationLc2833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 44⟩], residual := [((1 : F), 121826)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121048) * (relationLc2833 rho) = ((1 : F) * rho 121828)

def relationRow6245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121819) * ((1 : F) * rho 121820) = ((1 : F) * rho 121829)

def relationRow6246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121819) * ((1 : F) * rho 121819) = ((1 : F) * rho 121830)

def relationRow6247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121820) * ((1 : F) * rho 121820) = ((1 : F) * rho 121831)

def relationRow6248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121832) * ((-1 : F) * rho 121830 + (1 : F) * rho 121831) = ((2 : F) * rho 121829)

def relationRow6249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121833) * ((2 : F) + (1 : F) * rho 121830 + (-1 : F) * rho 121831) = ((1 : F) * rho 121830 + (1 : F) * rho 121831)

def relationLc2834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 45⟩, ⟨(1 : F), 121256, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121832 + (1 : F) * rho 121833) * (relationLc2834 rho) = ((1 : F) * rho 121834)

def relationLc2835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121833) * (relationLc2835 rho) = ((1 : F) * rho 121835)

def relationLc2836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121832) * (relationLc2836 rho) = ((1 : F) * rho 121836)

def relationRow6253 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121835) * ((1 : F) * rho 121836) = ((1 : F) * rho 121837)

def relationRow6254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121838) * ((1 : F) + (1 : F) * rho 121837) = ((1 : F) * rho 121835 + (1 : F) * rho 121836)

def relationRow6255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121839) * ((1 : F) + (-1 : F) * rho 121837) = ((1 : F) * rho 121834 + (-1 : F) * rho 121835 + (-1 : F) * rho 121836)

def relationLc2837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 45⟩], residual := [((1 : F), 121838)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121049) * (relationLc2837 rho) = ((1 : F) * rho 121840)

def relationLc2838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 45⟩], residual := [((1 : F), 121839)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121049) * (relationLc2838 rho) = ((1 : F) * rho 121841)

def relationRow6258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121832) * ((1 : F) * rho 121833) = ((1 : F) * rho 121842)

def relationRow6259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121832) * ((1 : F) * rho 121832) = ((1 : F) * rho 121843)

def relationRow6260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121833) * ((1 : F) * rho 121833) = ((1 : F) * rho 121844)

def relationRow6261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121845) * ((-1 : F) * rho 121843 + (1 : F) * rho 121844) = ((2 : F) * rho 121842)

def relationRow6262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121846) * ((2 : F) + (1 : F) * rho 121843 + (-1 : F) * rho 121844) = ((1 : F) * rho 121843 + (1 : F) * rho 121844)

def relationLc2839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 46⟩, ⟨(1 : F), 121256, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121845 + (1 : F) * rho 121846) * (relationLc2839 rho) = ((1 : F) * rho 121847)

def relationLc2840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121846) * (relationLc2840 rho) = ((1 : F) * rho 121848)

def relationLc2841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121845) * (relationLc2841 rho) = ((1 : F) * rho 121849)

def relationRow6266 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121848) * ((1 : F) * rho 121849) = ((1 : F) * rho 121850)

def relationRow6267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121851) * ((1 : F) + (1 : F) * rho 121850) = ((1 : F) * rho 121848 + (1 : F) * rho 121849)

def relationRow6268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121852) * ((1 : F) + (-1 : F) * rho 121850) = ((1 : F) * rho 121847 + (-1 : F) * rho 121848 + (-1 : F) * rho 121849)

def relationLc2842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 46⟩], residual := [((1 : F), 121851)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121050) * (relationLc2842 rho) = ((1 : F) * rho 121853)

def relationLc2843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 46⟩], residual := [((1 : F), 121852)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121050) * (relationLc2843 rho) = ((1 : F) * rho 121854)

def relationRow6271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121845) * ((1 : F) * rho 121846) = ((1 : F) * rho 121855)

def relationRow6272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121845) * ((1 : F) * rho 121845) = ((1 : F) * rho 121856)

def relationRow6273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121846) * ((1 : F) * rho 121846) = ((1 : F) * rho 121857)

def relationRow6274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121858) * ((-1 : F) * rho 121856 + (1 : F) * rho 121857) = ((2 : F) * rho 121855)

def relationRow6275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121859) * ((2 : F) + (1 : F) * rho 121856 + (-1 : F) * rho 121857) = ((1 : F) * rho 121856 + (1 : F) * rho 121857)

def relationLc2844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 47⟩, ⟨(1 : F), 121256, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121858 + (1 : F) * rho 121859) * (relationLc2844 rho) = ((1 : F) * rho 121860)

def relationLc2845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121859) * (relationLc2845 rho) = ((1 : F) * rho 121861)

def relationLc2846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121858) * (relationLc2846 rho) = ((1 : F) * rho 121862)

def relationRow6279 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121861) * ((1 : F) * rho 121862) = ((1 : F) * rho 121863)

def relationRow6280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121864) * ((1 : F) + (1 : F) * rho 121863) = ((1 : F) * rho 121861 + (1 : F) * rho 121862)

def relationRow6281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121865) * ((1 : F) + (-1 : F) * rho 121863) = ((1 : F) * rho 121860 + (-1 : F) * rho 121861 + (-1 : F) * rho 121862)

def relationLc2847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 47⟩], residual := [((1 : F), 121864)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121051) * (relationLc2847 rho) = ((1 : F) * rho 121866)

def relationLc2848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 47⟩], residual := [((1 : F), 121865)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121051) * (relationLc2848 rho) = ((1 : F) * rho 121867)

def relationRow6284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121858) * ((1 : F) * rho 121859) = ((1 : F) * rho 121868)

def relationRow6285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121858) * ((1 : F) * rho 121858) = ((1 : F) * rho 121869)

def relationRow6286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121859) * ((1 : F) * rho 121859) = ((1 : F) * rho 121870)

def relationRow6287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121871) * ((-1 : F) * rho 121869 + (1 : F) * rho 121870) = ((2 : F) * rho 121868)

def relationRow6288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121872) * ((2 : F) + (1 : F) * rho 121869 + (-1 : F) * rho 121870) = ((1 : F) * rho 121869 + (1 : F) * rho 121870)

def relationLc2849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 48⟩, ⟨(1 : F), 121256, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121871 + (1 : F) * rho 121872) * (relationLc2849 rho) = ((1 : F) * rho 121873)

def relationLc2850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121872) * (relationLc2850 rho) = ((1 : F) * rho 121874)

def relationLc2851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121871) * (relationLc2851 rho) = ((1 : F) * rho 121875)

def relationRow6292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121874) * ((1 : F) * rho 121875) = ((1 : F) * rho 121876)

def relationRow6293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121877) * ((1 : F) + (1 : F) * rho 121876) = ((1 : F) * rho 121874 + (1 : F) * rho 121875)

def relationRow6294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121878) * ((1 : F) + (-1 : F) * rho 121876) = ((1 : F) * rho 121873 + (-1 : F) * rho 121874 + (-1 : F) * rho 121875)

def relationLc2852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 48⟩], residual := [((1 : F), 121877)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121052) * (relationLc2852 rho) = ((1 : F) * rho 121879)

def relationLc2853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 48⟩], residual := [((1 : F), 121878)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121052) * (relationLc2853 rho) = ((1 : F) * rho 121880)

def relationRow6297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121871) * ((1 : F) * rho 121872) = ((1 : F) * rho 121881)

def relationRow6298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121871) * ((1 : F) * rho 121871) = ((1 : F) * rho 121882)

def relationRow6299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121872) * ((1 : F) * rho 121872) = ((1 : F) * rho 121883)

def relationRow6300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121884) * ((-1 : F) * rho 121882 + (1 : F) * rho 121883) = ((2 : F) * rho 121881)

def relationRow6301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121885) * ((2 : F) + (1 : F) * rho 121882 + (-1 : F) * rho 121883) = ((1 : F) * rho 121882 + (1 : F) * rho 121883)

def relationLc2854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 49⟩, ⟨(1 : F), 121256, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121884 + (1 : F) * rho 121885) * (relationLc2854 rho) = ((1 : F) * rho 121886)

def relationLc2855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121885) * (relationLc2855 rho) = ((1 : F) * rho 121887)

def relationLc2856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121884) * (relationLc2856 rho) = ((1 : F) * rho 121888)

def relationRow6305 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121887) * ((1 : F) * rho 121888) = ((1 : F) * rho 121889)

def relationRow6306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121890) * ((1 : F) + (1 : F) * rho 121889) = ((1 : F) * rho 121887 + (1 : F) * rho 121888)

def relationRow6307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121891) * ((1 : F) + (-1 : F) * rho 121889) = ((1 : F) * rho 121886 + (-1 : F) * rho 121887 + (-1 : F) * rho 121888)

def relationLc2857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 49⟩], residual := [((1 : F), 121890)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121053) * (relationLc2857 rho) = ((1 : F) * rho 121892)

def relationLc2858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 49⟩], residual := [((1 : F), 121891)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121053) * (relationLc2858 rho) = ((1 : F) * rho 121893)

def relationRow6310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121884) * ((1 : F) * rho 121885) = ((1 : F) * rho 121894)

def relationRow6311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121884) * ((1 : F) * rho 121884) = ((1 : F) * rho 121895)

def relationRow6312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121885) * ((1 : F) * rho 121885) = ((1 : F) * rho 121896)

def relationRow6313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121897) * ((-1 : F) * rho 121895 + (1 : F) * rho 121896) = ((2 : F) * rho 121894)

def relationRow6314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121898) * ((2 : F) + (1 : F) * rho 121895 + (-1 : F) * rho 121896) = ((1 : F) * rho 121895 + (1 : F) * rho 121896)

def relationLc2859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 50⟩, ⟨(1 : F), 121256, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121897 + (1 : F) * rho 121898) * (relationLc2859 rho) = ((1 : F) * rho 121899)

def relationLc2860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121898) * (relationLc2860 rho) = ((1 : F) * rho 121900)

def relationLc2861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121897) * (relationLc2861 rho) = ((1 : F) * rho 121901)

def relationRow6318 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121900) * ((1 : F) * rho 121901) = ((1 : F) * rho 121902)

def relationRow6319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121903) * ((1 : F) + (1 : F) * rho 121902) = ((1 : F) * rho 121900 + (1 : F) * rho 121901)

def relationRow6320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121904) * ((1 : F) + (-1 : F) * rho 121902) = ((1 : F) * rho 121899 + (-1 : F) * rho 121900 + (-1 : F) * rho 121901)

def relationLc2862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 50⟩], residual := [((1 : F), 121903)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121054) * (relationLc2862 rho) = ((1 : F) * rho 121905)

def relationLc2863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 50⟩], residual := [((1 : F), 121904)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121054) * (relationLc2863 rho) = ((1 : F) * rho 121906)

def relationRow6323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121897) * ((1 : F) * rho 121898) = ((1 : F) * rho 121907)

def relationRow6324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121897) * ((1 : F) * rho 121897) = ((1 : F) * rho 121908)

def relationRow6325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121898) * ((1 : F) * rho 121898) = ((1 : F) * rho 121909)

def relationRow6326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121910) * ((-1 : F) * rho 121908 + (1 : F) * rho 121909) = ((2 : F) * rho 121907)

def relationRow6327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121911) * ((2 : F) + (1 : F) * rho 121908 + (-1 : F) * rho 121909) = ((1 : F) * rho 121908 + (1 : F) * rho 121909)

def relationLc2864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 51⟩, ⟨(1 : F), 121256, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121910 + (1 : F) * rho 121911) * (relationLc2864 rho) = ((1 : F) * rho 121912)

def relationLc2865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121911) * (relationLc2865 rho) = ((1 : F) * rho 121913)

def relationLc2866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121910) * (relationLc2866 rho) = ((1 : F) * rho 121914)

def relationRow6331 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121913) * ((1 : F) * rho 121914) = ((1 : F) * rho 121915)

def relationRow6332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121916) * ((1 : F) + (1 : F) * rho 121915) = ((1 : F) * rho 121913 + (1 : F) * rho 121914)

def relationRow6333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121917) * ((1 : F) + (-1 : F) * rho 121915) = ((1 : F) * rho 121912 + (-1 : F) * rho 121913 + (-1 : F) * rho 121914)

def relationLc2867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 51⟩], residual := [((1 : F), 121916)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121055) * (relationLc2867 rho) = ((1 : F) * rho 121918)

def relationLc2868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 51⟩], residual := [((1 : F), 121917)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121055) * (relationLc2868 rho) = ((1 : F) * rho 121919)

def relationRow6336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121910) * ((1 : F) * rho 121911) = ((1 : F) * rho 121920)

def relationRow6337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121910) * ((1 : F) * rho 121910) = ((1 : F) * rho 121921)

def relationRow6338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121911) * ((1 : F) * rho 121911) = ((1 : F) * rho 121922)

def relationRow6339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121923) * ((-1 : F) * rho 121921 + (1 : F) * rho 121922) = ((2 : F) * rho 121920)

def relationRow6340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121924) * ((2 : F) + (1 : F) * rho 121921 + (-1 : F) * rho 121922) = ((1 : F) * rho 121921 + (1 : F) * rho 121922)

def relationLc2869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 52⟩, ⟨(1 : F), 121256, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121923 + (1 : F) * rho 121924) * (relationLc2869 rho) = ((1 : F) * rho 121925)

def relationLc2870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121924) * (relationLc2870 rho) = ((1 : F) * rho 121926)

def relationLc2871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121923) * (relationLc2871 rho) = ((1 : F) * rho 121927)

def relationRow6344 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121926) * ((1 : F) * rho 121927) = ((1 : F) * rho 121928)

def relationRow6345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121929) * ((1 : F) + (1 : F) * rho 121928) = ((1 : F) * rho 121926 + (1 : F) * rho 121927)

def relationRow6346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121930) * ((1 : F) + (-1 : F) * rho 121928) = ((1 : F) * rho 121925 + (-1 : F) * rho 121926 + (-1 : F) * rho 121927)

def relationLc2872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 52⟩], residual := [((1 : F), 121929)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121056) * (relationLc2872 rho) = ((1 : F) * rho 121931)

def relationLc2873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 52⟩], residual := [((1 : F), 121930)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121056) * (relationLc2873 rho) = ((1 : F) * rho 121932)

def relationRow6349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121923) * ((1 : F) * rho 121924) = ((1 : F) * rho 121933)

def relationRow6350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121923) * ((1 : F) * rho 121923) = ((1 : F) * rho 121934)

def relationRow6351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121924) * ((1 : F) * rho 121924) = ((1 : F) * rho 121935)

def relationRow6352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121936) * ((-1 : F) * rho 121934 + (1 : F) * rho 121935) = ((2 : F) * rho 121933)

def relationRow6353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121937) * ((2 : F) + (1 : F) * rho 121934 + (-1 : F) * rho 121935) = ((1 : F) * rho 121934 + (1 : F) * rho 121935)

def relationLc2874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 53⟩, ⟨(1 : F), 121256, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121936 + (1 : F) * rho 121937) * (relationLc2874 rho) = ((1 : F) * rho 121938)

def relationLc2875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121937) * (relationLc2875 rho) = ((1 : F) * rho 121939)

def relationLc2876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121936) * (relationLc2876 rho) = ((1 : F) * rho 121940)

def relationRow6357 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121939) * ((1 : F) * rho 121940) = ((1 : F) * rho 121941)

def relationRow6358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121942) * ((1 : F) + (1 : F) * rho 121941) = ((1 : F) * rho 121939 + (1 : F) * rho 121940)

def relationRow6359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121943) * ((1 : F) + (-1 : F) * rho 121941) = ((1 : F) * rho 121938 + (-1 : F) * rho 121939 + (-1 : F) * rho 121940)

def relationLc2877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 53⟩], residual := [((1 : F), 121942)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121057) * (relationLc2877 rho) = ((1 : F) * rho 121944)

def relationLc2878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 53⟩], residual := [((1 : F), 121943)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121057) * (relationLc2878 rho) = ((1 : F) * rho 121945)

def relationRow6362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121936) * ((1 : F) * rho 121937) = ((1 : F) * rho 121946)

def relationRow6363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121936) * ((1 : F) * rho 121936) = ((1 : F) * rho 121947)

def relationRow6364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121937) * ((1 : F) * rho 121937) = ((1 : F) * rho 121948)

def relationRow6365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121949) * ((-1 : F) * rho 121947 + (1 : F) * rho 121948) = ((2 : F) * rho 121946)

def relationRow6366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121950) * ((2 : F) + (1 : F) * rho 121947 + (-1 : F) * rho 121948) = ((1 : F) * rho 121947 + (1 : F) * rho 121948)

def relationLc2879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 54⟩, ⟨(1 : F), 121256, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121949 + (1 : F) * rho 121950) * (relationLc2879 rho) = ((1 : F) * rho 121951)

def relationLc2880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121950) * (relationLc2880 rho) = ((1 : F) * rho 121952)

def relationLc2881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121949) * (relationLc2881 rho) = ((1 : F) * rho 121953)

def relationRow6370 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121952) * ((1 : F) * rho 121953) = ((1 : F) * rho 121954)

def relationRow6371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121955) * ((1 : F) + (1 : F) * rho 121954) = ((1 : F) * rho 121952 + (1 : F) * rho 121953)

def relationRow6372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121956) * ((1 : F) + (-1 : F) * rho 121954) = ((1 : F) * rho 121951 + (-1 : F) * rho 121952 + (-1 : F) * rho 121953)

def relationLc2882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 54⟩], residual := [((1 : F), 121955)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121058) * (relationLc2882 rho) = ((1 : F) * rho 121957)

def relationLc2883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 54⟩], residual := [((1 : F), 121956)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121058) * (relationLc2883 rho) = ((1 : F) * rho 121958)

def relationRow6375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121949) * ((1 : F) * rho 121950) = ((1 : F) * rho 121959)

def relationRow6376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121949) * ((1 : F) * rho 121949) = ((1 : F) * rho 121960)

def relationRow6377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121950) * ((1 : F) * rho 121950) = ((1 : F) * rho 121961)

def relationRow6378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121962) * ((-1 : F) * rho 121960 + (1 : F) * rho 121961) = ((2 : F) * rho 121959)

def relationRow6379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121963) * ((2 : F) + (1 : F) * rho 121960 + (-1 : F) * rho 121961) = ((1 : F) * rho 121960 + (1 : F) * rho 121961)

def relationLc2884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 55⟩, ⟨(1 : F), 121256, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121962 + (1 : F) * rho 121963) * (relationLc2884 rho) = ((1 : F) * rho 121964)

def relationLc2885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121963) * (relationLc2885 rho) = ((1 : F) * rho 121965)

def relationLc2886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121962) * (relationLc2886 rho) = ((1 : F) * rho 121966)

def relationRow6383 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121965) * ((1 : F) * rho 121966) = ((1 : F) * rho 121967)

def relationRow6384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121968) * ((1 : F) + (1 : F) * rho 121967) = ((1 : F) * rho 121965 + (1 : F) * rho 121966)

def relationRow6385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121969) * ((1 : F) + (-1 : F) * rho 121967) = ((1 : F) * rho 121964 + (-1 : F) * rho 121965 + (-1 : F) * rho 121966)

def relationLc2887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 55⟩], residual := [((1 : F), 121968)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121059) * (relationLc2887 rho) = ((1 : F) * rho 121970)

def relationLc2888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 55⟩], residual := [((1 : F), 121969)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121059) * (relationLc2888 rho) = ((1 : F) * rho 121971)

def relationRow6388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121962) * ((1 : F) * rho 121963) = ((1 : F) * rho 121972)

def relationRow6389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121962) * ((1 : F) * rho 121962) = ((1 : F) * rho 121973)

def relationRow6390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121963) * ((1 : F) * rho 121963) = ((1 : F) * rho 121974)

def relationRow6391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121975) * ((-1 : F) * rho 121973 + (1 : F) * rho 121974) = ((2 : F) * rho 121972)

def relationRow6392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121976) * ((2 : F) + (1 : F) * rho 121973 + (-1 : F) * rho 121974) = ((1 : F) * rho 121973 + (1 : F) * rho 121974)

def relationLc2889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 56⟩, ⟨(1 : F), 121256, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121975 + (1 : F) * rho 121976) * (relationLc2889 rho) = ((1 : F) * rho 121977)

def relationLc2890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121976) * (relationLc2890 rho) = ((1 : F) * rho 121978)

def relationLc2891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121975) * (relationLc2891 rho) = ((1 : F) * rho 121979)

def relationRow6396 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121978) * ((1 : F) * rho 121979) = ((1 : F) * rho 121980)

def relationRow6397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121981) * ((1 : F) + (1 : F) * rho 121980) = ((1 : F) * rho 121978 + (1 : F) * rho 121979)

def relationRow6398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121982) * ((1 : F) + (-1 : F) * rho 121980) = ((1 : F) * rho 121977 + (-1 : F) * rho 121978 + (-1 : F) * rho 121979)

def relationLc2892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 56⟩], residual := [((1 : F), 121981)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121060) * (relationLc2892 rho) = ((1 : F) * rho 121983)

def relationLc2893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 56⟩], residual := [((1 : F), 121982)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121060) * (relationLc2893 rho) = ((1 : F) * rho 121984)

def relationRow6401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121975) * ((1 : F) * rho 121976) = ((1 : F) * rho 121985)

def relationRow6402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121975) * ((1 : F) * rho 121975) = ((1 : F) * rho 121986)

def relationRow6403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121976) * ((1 : F) * rho 121976) = ((1 : F) * rho 121987)

def relationRow6404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121988) * ((-1 : F) * rho 121986 + (1 : F) * rho 121987) = ((2 : F) * rho 121985)

def relationRow6405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121989) * ((2 : F) + (1 : F) * rho 121986 + (-1 : F) * rho 121987) = ((1 : F) * rho 121986 + (1 : F) * rho 121987)

def relationLc2894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 57⟩, ⟨(1 : F), 121256, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121988 + (1 : F) * rho 121989) * (relationLc2894 rho) = ((1 : F) * rho 121990)

def relationLc2895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121989) * (relationLc2895 rho) = ((1 : F) * rho 121991)

def relationLc2896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121988) * (relationLc2896 rho) = ((1 : F) * rho 121992)

def relationRow6409 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 121991) * ((1 : F) * rho 121992) = ((1 : F) * rho 121993)

def relationRow6410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121994) * ((1 : F) + (1 : F) * rho 121993) = ((1 : F) * rho 121991 + (1 : F) * rho 121992)

def relationRow6411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121995) * ((1 : F) + (-1 : F) * rho 121993) = ((1 : F) * rho 121990 + (-1 : F) * rho 121991 + (-1 : F) * rho 121992)

def relationLc2897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 57⟩], residual := [((1 : F), 121994)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121061) * (relationLc2897 rho) = ((1 : F) * rho 121996)

def relationLc2898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 57⟩], residual := [((1 : F), 121995)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121061) * (relationLc2898 rho) = ((1 : F) * rho 121997)

def relationRow6414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121988) * ((1 : F) * rho 121989) = ((1 : F) * rho 121998)

def relationRow6415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121988) * ((1 : F) * rho 121988) = ((1 : F) * rho 121999)

def relationRow6416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121989) * ((1 : F) * rho 121989) = ((1 : F) * rho 122000)

def relationRow6417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122001) * ((-1 : F) * rho 121999 + (1 : F) * rho 122000) = ((2 : F) * rho 121998)

def relationRow6418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122002) * ((2 : F) + (1 : F) * rho 121999 + (-1 : F) * rho 122000) = ((1 : F) * rho 121999 + (1 : F) * rho 122000)

def relationLc2899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 58⟩, ⟨(1 : F), 121256, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122001 + (1 : F) * rho 122002) * (relationLc2899 rho) = ((1 : F) * rho 122003)

def relationLc2900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122002) * (relationLc2900 rho) = ((1 : F) * rho 122004)

def relationLc2901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122001) * (relationLc2901 rho) = ((1 : F) * rho 122005)

def relationRow6422 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122004) * ((1 : F) * rho 122005) = ((1 : F) * rho 122006)

def relationRow6423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122007) * ((1 : F) + (1 : F) * rho 122006) = ((1 : F) * rho 122004 + (1 : F) * rho 122005)

def relationRow6424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122008) * ((1 : F) + (-1 : F) * rho 122006) = ((1 : F) * rho 122003 + (-1 : F) * rho 122004 + (-1 : F) * rho 122005)

def relationLc2902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 58⟩], residual := [((1 : F), 122007)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121062) * (relationLc2902 rho) = ((1 : F) * rho 122009)

def relationLc2903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 58⟩], residual := [((1 : F), 122008)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121062) * (relationLc2903 rho) = ((1 : F) * rho 122010)

def relationRow6427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122001) * ((1 : F) * rho 122002) = ((1 : F) * rho 122011)

def relationRow6428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122001) * ((1 : F) * rho 122001) = ((1 : F) * rho 122012)

def relationRow6429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122002) * ((1 : F) * rho 122002) = ((1 : F) * rho 122013)

def relationRow6430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122014) * ((-1 : F) * rho 122012 + (1 : F) * rho 122013) = ((2 : F) * rho 122011)

def relationRow6431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122015) * ((2 : F) + (1 : F) * rho 122012 + (-1 : F) * rho 122013) = ((1 : F) * rho 122012 + (1 : F) * rho 122013)

def relationLc2904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 59⟩, ⟨(1 : F), 121256, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122014 + (1 : F) * rho 122015) * (relationLc2904 rho) = ((1 : F) * rho 122016)

def relationLc2905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122015) * (relationLc2905 rho) = ((1 : F) * rho 122017)

def relationLc2906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122014) * (relationLc2906 rho) = ((1 : F) * rho 122018)

def relationRow6435 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122017) * ((1 : F) * rho 122018) = ((1 : F) * rho 122019)

def relationRow6436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122020) * ((1 : F) + (1 : F) * rho 122019) = ((1 : F) * rho 122017 + (1 : F) * rho 122018)

def relationRow6437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122021) * ((1 : F) + (-1 : F) * rho 122019) = ((1 : F) * rho 122016 + (-1 : F) * rho 122017 + (-1 : F) * rho 122018)

def relationLc2907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 59⟩], residual := [((1 : F), 122020)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121063) * (relationLc2907 rho) = ((1 : F) * rho 122022)

def relationLc2908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 59⟩], residual := [((1 : F), 122021)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121063) * (relationLc2908 rho) = ((1 : F) * rho 122023)

def relationRow6440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122014) * ((1 : F) * rho 122015) = ((1 : F) * rho 122024)

def relationRow6441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122014) * ((1 : F) * rho 122014) = ((1 : F) * rho 122025)

def relationRow6442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122015) * ((1 : F) * rho 122015) = ((1 : F) * rho 122026)

def relationRow6443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122027) * ((-1 : F) * rho 122025 + (1 : F) * rho 122026) = ((2 : F) * rho 122024)

def relationRow6444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122028) * ((2 : F) + (1 : F) * rho 122025 + (-1 : F) * rho 122026) = ((1 : F) * rho 122025 + (1 : F) * rho 122026)

def relationLc2909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 60⟩, ⟨(1 : F), 121256, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122027 + (1 : F) * rho 122028) * (relationLc2909 rho) = ((1 : F) * rho 122029)

def relationLc2910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122028) * (relationLc2910 rho) = ((1 : F) * rho 122030)

def relationLc2911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122027) * (relationLc2911 rho) = ((1 : F) * rho 122031)

def relationRow6448 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122030) * ((1 : F) * rho 122031) = ((1 : F) * rho 122032)

def relationRow6449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122033) * ((1 : F) + (1 : F) * rho 122032) = ((1 : F) * rho 122030 + (1 : F) * rho 122031)

def relationRow6450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122034) * ((1 : F) + (-1 : F) * rho 122032) = ((1 : F) * rho 122029 + (-1 : F) * rho 122030 + (-1 : F) * rho 122031)

def relationLc2912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 60⟩], residual := [((1 : F), 122033)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121064) * (relationLc2912 rho) = ((1 : F) * rho 122035)

def relationLc2913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 60⟩], residual := [((1 : F), 122034)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121064) * (relationLc2913 rho) = ((1 : F) * rho 122036)

def relationRow6453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122027) * ((1 : F) * rho 122028) = ((1 : F) * rho 122037)

def relationRow6454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122027) * ((1 : F) * rho 122027) = ((1 : F) * rho 122038)

def relationRow6455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122028) * ((1 : F) * rho 122028) = ((1 : F) * rho 122039)

def relationRow6456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122040) * ((-1 : F) * rho 122038 + (1 : F) * rho 122039) = ((2 : F) * rho 122037)

def relationRow6457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122041) * ((2 : F) + (1 : F) * rho 122038 + (-1 : F) * rho 122039) = ((1 : F) * rho 122038 + (1 : F) * rho 122039)

def relationLc2914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 61⟩, ⟨(1 : F), 121256, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122040 + (1 : F) * rho 122041) * (relationLc2914 rho) = ((1 : F) * rho 122042)

def relationLc2915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122041) * (relationLc2915 rho) = ((1 : F) * rho 122043)

def relationLc2916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122040) * (relationLc2916 rho) = ((1 : F) * rho 122044)

def relationRow6461 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122043) * ((1 : F) * rho 122044) = ((1 : F) * rho 122045)

def relationRow6462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122046) * ((1 : F) + (1 : F) * rho 122045) = ((1 : F) * rho 122043 + (1 : F) * rho 122044)

def relationRow6463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122047) * ((1 : F) + (-1 : F) * rho 122045) = ((1 : F) * rho 122042 + (-1 : F) * rho 122043 + (-1 : F) * rho 122044)

def relationLc2917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 61⟩], residual := [((1 : F), 122046)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121065) * (relationLc2917 rho) = ((1 : F) * rho 122048)

def relationLc2918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 61⟩], residual := [((1 : F), 122047)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121065) * (relationLc2918 rho) = ((1 : F) * rho 122049)

def relationRow6466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122040) * ((1 : F) * rho 122041) = ((1 : F) * rho 122050)

def relationRow6467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122040) * ((1 : F) * rho 122040) = ((1 : F) * rho 122051)

def relationRow6468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122041) * ((1 : F) * rho 122041) = ((1 : F) * rho 122052)

def relationRow6469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122053) * ((-1 : F) * rho 122051 + (1 : F) * rho 122052) = ((2 : F) * rho 122050)

def relationRow6470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122054) * ((2 : F) + (1 : F) * rho 122051 + (-1 : F) * rho 122052) = ((1 : F) * rho 122051 + (1 : F) * rho 122052)

def relationLc2919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 62⟩, ⟨(1 : F), 121256, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122053 + (1 : F) * rho 122054) * (relationLc2919 rho) = ((1 : F) * rho 122055)

def relationLc2920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122054) * (relationLc2920 rho) = ((1 : F) * rho 122056)

def relationLc2921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122053) * (relationLc2921 rho) = ((1 : F) * rho 122057)

def relationRow6474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122056) * ((1 : F) * rho 122057) = ((1 : F) * rho 122058)

def relationRow6475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122059) * ((1 : F) + (1 : F) * rho 122058) = ((1 : F) * rho 122056 + (1 : F) * rho 122057)

def relationRow6476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122060) * ((1 : F) + (-1 : F) * rho 122058) = ((1 : F) * rho 122055 + (-1 : F) * rho 122056 + (-1 : F) * rho 122057)

def relationLc2922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 62⟩], residual := [((1 : F), 122059)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121066) * (relationLc2922 rho) = ((1 : F) * rho 122061)

def relationLc2923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 62⟩], residual := [((1 : F), 122060)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121066) * (relationLc2923 rho) = ((1 : F) * rho 122062)

def relationRow6479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122053) * ((1 : F) * rho 122054) = ((1 : F) * rho 122063)

def relationRow6480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122053) * ((1 : F) * rho 122053) = ((1 : F) * rho 122064)

def relationRow6481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122054) * ((1 : F) * rho 122054) = ((1 : F) * rho 122065)

def relationRow6482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122066) * ((-1 : F) * rho 122064 + (1 : F) * rho 122065) = ((2 : F) * rho 122063)

def relationRow6483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122067) * ((2 : F) + (1 : F) * rho 122064 + (-1 : F) * rho 122065) = ((1 : F) * rho 122064 + (1 : F) * rho 122065)

def relationLc2924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 63⟩, ⟨(1 : F), 121256, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122066 + (1 : F) * rho 122067) * (relationLc2924 rho) = ((1 : F) * rho 122068)

def relationLc2925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122067) * (relationLc2925 rho) = ((1 : F) * rho 122069)

def relationLc2926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122066) * (relationLc2926 rho) = ((1 : F) * rho 122070)

def relationRow6487 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122069) * ((1 : F) * rho 122070) = ((1 : F) * rho 122071)

def relationRow6488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122072) * ((1 : F) + (1 : F) * rho 122071) = ((1 : F) * rho 122069 + (1 : F) * rho 122070)

def relationRow6489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122073) * ((1 : F) + (-1 : F) * rho 122071) = ((1 : F) * rho 122068 + (-1 : F) * rho 122069 + (-1 : F) * rho 122070)

def relationLc2927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 63⟩], residual := [((1 : F), 122072)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121067) * (relationLc2927 rho) = ((1 : F) * rho 122074)

def relationLc2928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 63⟩], residual := [((1 : F), 122073)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121067) * (relationLc2928 rho) = ((1 : F) * rho 122075)

def relationRow6492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122066) * ((1 : F) * rho 122067) = ((1 : F) * rho 122076)

def relationRow6493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122066) * ((1 : F) * rho 122066) = ((1 : F) * rho 122077)

def relationRow6494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122067) * ((1 : F) * rho 122067) = ((1 : F) * rho 122078)

def relationRow6495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122079) * ((-1 : F) * rho 122077 + (1 : F) * rho 122078) = ((2 : F) * rho 122076)

def relationRow6496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122080) * ((2 : F) + (1 : F) * rho 122077 + (-1 : F) * rho 122078) = ((1 : F) * rho 122077 + (1 : F) * rho 122078)

def relationLc2929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 64⟩, ⟨(1 : F), 121256, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122079 + (1 : F) * rho 122080) * (relationLc2929 rho) = ((1 : F) * rho 122081)

def relationLc2930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122080) * (relationLc2930 rho) = ((1 : F) * rho 122082)

def relationLc2931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122079) * (relationLc2931 rho) = ((1 : F) * rho 122083)

def relationRow6500 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122082) * ((1 : F) * rho 122083) = ((1 : F) * rho 122084)

def relationRow6501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122085) * ((1 : F) + (1 : F) * rho 122084) = ((1 : F) * rho 122082 + (1 : F) * rho 122083)

def relationRow6502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122086) * ((1 : F) + (-1 : F) * rho 122084) = ((1 : F) * rho 122081 + (-1 : F) * rho 122082 + (-1 : F) * rho 122083)

def relationLc2932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 64⟩], residual := [((1 : F), 122085)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121068) * (relationLc2932 rho) = ((1 : F) * rho 122087)

def relationLc2933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 64⟩], residual := [((1 : F), 122086)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121068) * (relationLc2933 rho) = ((1 : F) * rho 122088)

def relationRow6505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122079) * ((1 : F) * rho 122080) = ((1 : F) * rho 122089)

def relationRow6506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122079) * ((1 : F) * rho 122079) = ((1 : F) * rho 122090)

def relationRow6507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122080) * ((1 : F) * rho 122080) = ((1 : F) * rho 122091)

def relationRow6508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122092) * ((-1 : F) * rho 122090 + (1 : F) * rho 122091) = ((2 : F) * rho 122089)

def relationRow6509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122093) * ((2 : F) + (1 : F) * rho 122090 + (-1 : F) * rho 122091) = ((1 : F) * rho 122090 + (1 : F) * rho 122091)

def relationLc2934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 65⟩, ⟨(1 : F), 121256, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122092 + (1 : F) * rho 122093) * (relationLc2934 rho) = ((1 : F) * rho 122094)

def relationLc2935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122093) * (relationLc2935 rho) = ((1 : F) * rho 122095)

def relationLc2936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122092) * (relationLc2936 rho) = ((1 : F) * rho 122096)

def relationRow6513 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122095) * ((1 : F) * rho 122096) = ((1 : F) * rho 122097)

def relationRow6514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122098) * ((1 : F) + (1 : F) * rho 122097) = ((1 : F) * rho 122095 + (1 : F) * rho 122096)

def relationRow6515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122099) * ((1 : F) + (-1 : F) * rho 122097) = ((1 : F) * rho 122094 + (-1 : F) * rho 122095 + (-1 : F) * rho 122096)

def relationLc2937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 65⟩], residual := [((1 : F), 122098)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121069) * (relationLc2937 rho) = ((1 : F) * rho 122100)

def relationLc2938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 65⟩], residual := [((1 : F), 122099)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121069) * (relationLc2938 rho) = ((1 : F) * rho 122101)

def relationRow6518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122092) * ((1 : F) * rho 122093) = ((1 : F) * rho 122102)

def relationRow6519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122092) * ((1 : F) * rho 122092) = ((1 : F) * rho 122103)

def relationRow6520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122093) * ((1 : F) * rho 122093) = ((1 : F) * rho 122104)

def relationRow6521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122105) * ((-1 : F) * rho 122103 + (1 : F) * rho 122104) = ((2 : F) * rho 122102)

def relationRow6522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122106) * ((2 : F) + (1 : F) * rho 122103 + (-1 : F) * rho 122104) = ((1 : F) * rho 122103 + (1 : F) * rho 122104)

def relationLc2939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 66⟩, ⟨(1 : F), 121256, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122105 + (1 : F) * rho 122106) * (relationLc2939 rho) = ((1 : F) * rho 122107)

def relationLc2940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122106) * (relationLc2940 rho) = ((1 : F) * rho 122108)

def relationLc2941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122105) * (relationLc2941 rho) = ((1 : F) * rho 122109)

def relationRow6526 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122108) * ((1 : F) * rho 122109) = ((1 : F) * rho 122110)

def relationRow6527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122111) * ((1 : F) + (1 : F) * rho 122110) = ((1 : F) * rho 122108 + (1 : F) * rho 122109)

def relationRow6528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122112) * ((1 : F) + (-1 : F) * rho 122110) = ((1 : F) * rho 122107 + (-1 : F) * rho 122108 + (-1 : F) * rho 122109)

def relationLc2942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 66⟩], residual := [((1 : F), 122111)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121070) * (relationLc2942 rho) = ((1 : F) * rho 122113)

def relationLc2943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 66⟩], residual := [((1 : F), 122112)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121070) * (relationLc2943 rho) = ((1 : F) * rho 122114)

def relationRow6531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122105) * ((1 : F) * rho 122106) = ((1 : F) * rho 122115)

def relationRow6532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122105) * ((1 : F) * rho 122105) = ((1 : F) * rho 122116)

def relationRow6533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122106) * ((1 : F) * rho 122106) = ((1 : F) * rho 122117)

def relationRow6534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122118) * ((-1 : F) * rho 122116 + (1 : F) * rho 122117) = ((2 : F) * rho 122115)

def relationRow6535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122119) * ((2 : F) + (1 : F) * rho 122116 + (-1 : F) * rho 122117) = ((1 : F) * rho 122116 + (1 : F) * rho 122117)

def relationLc2944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 67⟩, ⟨(1 : F), 121256, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122118 + (1 : F) * rho 122119) * (relationLc2944 rho) = ((1 : F) * rho 122120)

def relationLc2945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122119) * (relationLc2945 rho) = ((1 : F) * rho 122121)

def relationLc2946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122118) * (relationLc2946 rho) = ((1 : F) * rho 122122)

def relationRow6539 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122121) * ((1 : F) * rho 122122) = ((1 : F) * rho 122123)

def relationRow6540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122124) * ((1 : F) + (1 : F) * rho 122123) = ((1 : F) * rho 122121 + (1 : F) * rho 122122)

def relationRow6541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122125) * ((1 : F) + (-1 : F) * rho 122123) = ((1 : F) * rho 122120 + (-1 : F) * rho 122121 + (-1 : F) * rho 122122)

def relationLc2947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 67⟩], residual := [((1 : F), 122124)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121071) * (relationLc2947 rho) = ((1 : F) * rho 122126)

def relationLc2948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 67⟩], residual := [((1 : F), 122125)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121071) * (relationLc2948 rho) = ((1 : F) * rho 122127)

def relationRow6544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122118) * ((1 : F) * rho 122119) = ((1 : F) * rho 122128)

def relationRow6545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122118) * ((1 : F) * rho 122118) = ((1 : F) * rho 122129)

def relationRow6546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122119) * ((1 : F) * rho 122119) = ((1 : F) * rho 122130)

def relationRow6547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122131) * ((-1 : F) * rho 122129 + (1 : F) * rho 122130) = ((2 : F) * rho 122128)

def relationRow6548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122132) * ((2 : F) + (1 : F) * rho 122129 + (-1 : F) * rho 122130) = ((1 : F) * rho 122129 + (1 : F) * rho 122130)

def relationLc2949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 68⟩, ⟨(1 : F), 121256, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122131 + (1 : F) * rho 122132) * (relationLc2949 rho) = ((1 : F) * rho 122133)

def relationLc2950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122132) * (relationLc2950 rho) = ((1 : F) * rho 122134)

def relationLc2951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122131) * (relationLc2951 rho) = ((1 : F) * rho 122135)

def relationRow6552 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122134) * ((1 : F) * rho 122135) = ((1 : F) * rho 122136)

def relationRow6553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122137) * ((1 : F) + (1 : F) * rho 122136) = ((1 : F) * rho 122134 + (1 : F) * rho 122135)

def relationRow6554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122138) * ((1 : F) + (-1 : F) * rho 122136) = ((1 : F) * rho 122133 + (-1 : F) * rho 122134 + (-1 : F) * rho 122135)

def relationLc2952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 68⟩], residual := [((1 : F), 122137)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121072) * (relationLc2952 rho) = ((1 : F) * rho 122139)

def relationLc2953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 68⟩], residual := [((1 : F), 122138)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121072) * (relationLc2953 rho) = ((1 : F) * rho 122140)

def relationRow6557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122131) * ((1 : F) * rho 122132) = ((1 : F) * rho 122141)

def relationRow6558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122131) * ((1 : F) * rho 122131) = ((1 : F) * rho 122142)

def relationRow6559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122132) * ((1 : F) * rho 122132) = ((1 : F) * rho 122143)

def relationRow6560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122144) * ((-1 : F) * rho 122142 + (1 : F) * rho 122143) = ((2 : F) * rho 122141)

def relationRow6561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122145) * ((2 : F) + (1 : F) * rho 122142 + (-1 : F) * rho 122143) = ((1 : F) * rho 122142 + (1 : F) * rho 122143)

def relationLc2954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 69⟩, ⟨(1 : F), 121256, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122144 + (1 : F) * rho 122145) * (relationLc2954 rho) = ((1 : F) * rho 122146)

def relationLc2955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122145) * (relationLc2955 rho) = ((1 : F) * rho 122147)

def relationLc2956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122144) * (relationLc2956 rho) = ((1 : F) * rho 122148)

def relationRow6565 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122147) * ((1 : F) * rho 122148) = ((1 : F) * rho 122149)

def relationRow6566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122150) * ((1 : F) + (1 : F) * rho 122149) = ((1 : F) * rho 122147 + (1 : F) * rho 122148)

def relationRow6567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122151) * ((1 : F) + (-1 : F) * rho 122149) = ((1 : F) * rho 122146 + (-1 : F) * rho 122147 + (-1 : F) * rho 122148)

def relationLc2957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 69⟩], residual := [((1 : F), 122150)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121073) * (relationLc2957 rho) = ((1 : F) * rho 122152)

def relationLc2958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 69⟩], residual := [((1 : F), 122151)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121073) * (relationLc2958 rho) = ((1 : F) * rho 122153)

def relationRow6570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122144) * ((1 : F) * rho 122145) = ((1 : F) * rho 122154)

def relationRow6571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122144) * ((1 : F) * rho 122144) = ((1 : F) * rho 122155)

def relationRow6572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122145) * ((1 : F) * rho 122145) = ((1 : F) * rho 122156)

def relationRow6573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122157) * ((-1 : F) * rho 122155 + (1 : F) * rho 122156) = ((2 : F) * rho 122154)

def relationRow6574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122158) * ((2 : F) + (1 : F) * rho 122155 + (-1 : F) * rho 122156) = ((1 : F) * rho 122155 + (1 : F) * rho 122156)

def relationLc2959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 70⟩, ⟨(1 : F), 121256, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122157 + (1 : F) * rho 122158) * (relationLc2959 rho) = ((1 : F) * rho 122159)

def relationLc2960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122158) * (relationLc2960 rho) = ((1 : F) * rho 122160)

def relationLc2961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122157) * (relationLc2961 rho) = ((1 : F) * rho 122161)

def relationRow6578 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122160) * ((1 : F) * rho 122161) = ((1 : F) * rho 122162)

def relationRow6579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122163) * ((1 : F) + (1 : F) * rho 122162) = ((1 : F) * rho 122160 + (1 : F) * rho 122161)

def relationRow6580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122164) * ((1 : F) + (-1 : F) * rho 122162) = ((1 : F) * rho 122159 + (-1 : F) * rho 122160 + (-1 : F) * rho 122161)

def relationLc2962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 70⟩], residual := [((1 : F), 122163)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121074) * (relationLc2962 rho) = ((1 : F) * rho 122165)

def relationLc2963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 70⟩], residual := [((1 : F), 122164)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121074) * (relationLc2963 rho) = ((1 : F) * rho 122166)

def relationRow6583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122157) * ((1 : F) * rho 122158) = ((1 : F) * rho 122167)

def relationRow6584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122157) * ((1 : F) * rho 122157) = ((1 : F) * rho 122168)

def relationRow6585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122158) * ((1 : F) * rho 122158) = ((1 : F) * rho 122169)

def relationRow6586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122170) * ((-1 : F) * rho 122168 + (1 : F) * rho 122169) = ((2 : F) * rho 122167)

def relationRow6587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122171) * ((2 : F) + (1 : F) * rho 122168 + (-1 : F) * rho 122169) = ((1 : F) * rho 122168 + (1 : F) * rho 122169)

def relationLc2964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 71⟩, ⟨(1 : F), 121256, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122170 + (1 : F) * rho 122171) * (relationLc2964 rho) = ((1 : F) * rho 122172)

def relationLc2965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122171) * (relationLc2965 rho) = ((1 : F) * rho 122173)

def relationLc2966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122170) * (relationLc2966 rho) = ((1 : F) * rho 122174)

def relationRow6591 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122173) * ((1 : F) * rho 122174) = ((1 : F) * rho 122175)

def relationRow6592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122176) * ((1 : F) + (1 : F) * rho 122175) = ((1 : F) * rho 122173 + (1 : F) * rho 122174)

def relationRow6593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122177) * ((1 : F) + (-1 : F) * rho 122175) = ((1 : F) * rho 122172 + (-1 : F) * rho 122173 + (-1 : F) * rho 122174)

def relationLc2967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 71⟩], residual := [((1 : F), 122176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121075) * (relationLc2967 rho) = ((1 : F) * rho 122178)

def relationLc2968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 71⟩], residual := [((1 : F), 122177)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121075) * (relationLc2968 rho) = ((1 : F) * rho 122179)

def relationRow6596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122170) * ((1 : F) * rho 122171) = ((1 : F) * rho 122180)

def relationRow6597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122170) * ((1 : F) * rho 122170) = ((1 : F) * rho 122181)

def relationRow6598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122171) * ((1 : F) * rho 122171) = ((1 : F) * rho 122182)

def relationRow6599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122183) * ((-1 : F) * rho 122181 + (1 : F) * rho 122182) = ((2 : F) * rho 122180)

def relationRow6600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122184) * ((2 : F) + (1 : F) * rho 122181 + (-1 : F) * rho 122182) = ((1 : F) * rho 122181 + (1 : F) * rho 122182)

def relationLc2969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 72⟩, ⟨(1 : F), 121256, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122183 + (1 : F) * rho 122184) * (relationLc2969 rho) = ((1 : F) * rho 122185)

def relationLc2970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122184) * (relationLc2970 rho) = ((1 : F) * rho 122186)

def relationLc2971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122183) * (relationLc2971 rho) = ((1 : F) * rho 122187)

def relationRow6604 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122186) * ((1 : F) * rho 122187) = ((1 : F) * rho 122188)

def relationRow6605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122189) * ((1 : F) + (1 : F) * rho 122188) = ((1 : F) * rho 122186 + (1 : F) * rho 122187)

def relationRow6606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122190) * ((1 : F) + (-1 : F) * rho 122188) = ((1 : F) * rho 122185 + (-1 : F) * rho 122186 + (-1 : F) * rho 122187)

def relationLc2972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 72⟩], residual := [((1 : F), 122189)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121076) * (relationLc2972 rho) = ((1 : F) * rho 122191)

def relationLc2973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 72⟩], residual := [((1 : F), 122190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121076) * (relationLc2973 rho) = ((1 : F) * rho 122192)

def relationRow6609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122183) * ((1 : F) * rho 122184) = ((1 : F) * rho 122193)

def relationRow6610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122183) * ((1 : F) * rho 122183) = ((1 : F) * rho 122194)

def relationRow6611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122184) * ((1 : F) * rho 122184) = ((1 : F) * rho 122195)

def relationRow6612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122196) * ((-1 : F) * rho 122194 + (1 : F) * rho 122195) = ((2 : F) * rho 122193)

def relationRow6613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122197) * ((2 : F) + (1 : F) * rho 122194 + (-1 : F) * rho 122195) = ((1 : F) * rho 122194 + (1 : F) * rho 122195)

def relationLc2974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 73⟩, ⟨(1 : F), 121256, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122196 + (1 : F) * rho 122197) * (relationLc2974 rho) = ((1 : F) * rho 122198)

def relationLc2975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122197) * (relationLc2975 rho) = ((1 : F) * rho 122199)

def relationLc2976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122196) * (relationLc2976 rho) = ((1 : F) * rho 122200)

def relationRow6617 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122199) * ((1 : F) * rho 122200) = ((1 : F) * rho 122201)

def relationRow6618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122202) * ((1 : F) + (1 : F) * rho 122201) = ((1 : F) * rho 122199 + (1 : F) * rho 122200)

def relationRow6619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122203) * ((1 : F) + (-1 : F) * rho 122201) = ((1 : F) * rho 122198 + (-1 : F) * rho 122199 + (-1 : F) * rho 122200)

def relationLc2977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 73⟩], residual := [((1 : F), 122202)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121077) * (relationLc2977 rho) = ((1 : F) * rho 122204)

def relationLc2978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 73⟩], residual := [((1 : F), 122203)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121077) * (relationLc2978 rho) = ((1 : F) * rho 122205)

def relationRow6622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122196) * ((1 : F) * rho 122197) = ((1 : F) * rho 122206)

def relationRow6623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122196) * ((1 : F) * rho 122196) = ((1 : F) * rho 122207)

def relationRow6624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122197) * ((1 : F) * rho 122197) = ((1 : F) * rho 122208)

def relationRow6625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122209) * ((-1 : F) * rho 122207 + (1 : F) * rho 122208) = ((2 : F) * rho 122206)

def relationRow6626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122210) * ((2 : F) + (1 : F) * rho 122207 + (-1 : F) * rho 122208) = ((1 : F) * rho 122207 + (1 : F) * rho 122208)

def relationLc2979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 74⟩, ⟨(1 : F), 121256, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122209 + (1 : F) * rho 122210) * (relationLc2979 rho) = ((1 : F) * rho 122211)

def relationLc2980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122210) * (relationLc2980 rho) = ((1 : F) * rho 122212)

def relationLc2981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122209) * (relationLc2981 rho) = ((1 : F) * rho 122213)

def relationRow6630 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122212) * ((1 : F) * rho 122213) = ((1 : F) * rho 122214)

def relationRow6631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122215) * ((1 : F) + (1 : F) * rho 122214) = ((1 : F) * rho 122212 + (1 : F) * rho 122213)

def relationRow6632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122216) * ((1 : F) + (-1 : F) * rho 122214) = ((1 : F) * rho 122211 + (-1 : F) * rho 122212 + (-1 : F) * rho 122213)

def relationLc2982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 74⟩], residual := [((1 : F), 122215)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121078) * (relationLc2982 rho) = ((1 : F) * rho 122217)

def relationLc2983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 74⟩], residual := [((1 : F), 122216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121078) * (relationLc2983 rho) = ((1 : F) * rho 122218)

def relationRow6635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122209) * ((1 : F) * rho 122210) = ((1 : F) * rho 122219)

def relationRow6636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122209) * ((1 : F) * rho 122209) = ((1 : F) * rho 122220)

def relationRow6637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122210) * ((1 : F) * rho 122210) = ((1 : F) * rho 122221)

def relationRow6638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122222) * ((-1 : F) * rho 122220 + (1 : F) * rho 122221) = ((2 : F) * rho 122219)

def relationRow6639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122223) * ((2 : F) + (1 : F) * rho 122220 + (-1 : F) * rho 122221) = ((1 : F) * rho 122220 + (1 : F) * rho 122221)

def relationLc2984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 75⟩, ⟨(1 : F), 121256, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122222 + (1 : F) * rho 122223) * (relationLc2984 rho) = ((1 : F) * rho 122224)

def relationLc2985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122223) * (relationLc2985 rho) = ((1 : F) * rho 122225)

def relationLc2986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122222) * (relationLc2986 rho) = ((1 : F) * rho 122226)

def relationRow6643 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122225) * ((1 : F) * rho 122226) = ((1 : F) * rho 122227)

def relationRow6644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122228) * ((1 : F) + (1 : F) * rho 122227) = ((1 : F) * rho 122225 + (1 : F) * rho 122226)

def relationRow6645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122229) * ((1 : F) + (-1 : F) * rho 122227) = ((1 : F) * rho 122224 + (-1 : F) * rho 122225 + (-1 : F) * rho 122226)

def relationLc2987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 75⟩], residual := [((1 : F), 122228)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121079) * (relationLc2987 rho) = ((1 : F) * rho 122230)

def relationLc2988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 75⟩], residual := [((1 : F), 122229)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121079) * (relationLc2988 rho) = ((1 : F) * rho 122231)

def relationRow6648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122222) * ((1 : F) * rho 122223) = ((1 : F) * rho 122232)

def relationRow6649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122222) * ((1 : F) * rho 122222) = ((1 : F) * rho 122233)

def relationRow6650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122223) * ((1 : F) * rho 122223) = ((1 : F) * rho 122234)

def relationRow6651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122235) * ((-1 : F) * rho 122233 + (1 : F) * rho 122234) = ((2 : F) * rho 122232)

def relationRow6652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122236) * ((2 : F) + (1 : F) * rho 122233 + (-1 : F) * rho 122234) = ((1 : F) * rho 122233 + (1 : F) * rho 122234)

def relationLc2989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 76⟩, ⟨(1 : F), 121256, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122235 + (1 : F) * rho 122236) * (relationLc2989 rho) = ((1 : F) * rho 122237)

def relationLc2990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122236) * (relationLc2990 rho) = ((1 : F) * rho 122238)

def relationLc2991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122235) * (relationLc2991 rho) = ((1 : F) * rho 122239)

def relationRow6656 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122238) * ((1 : F) * rho 122239) = ((1 : F) * rho 122240)

def relationRow6657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122241) * ((1 : F) + (1 : F) * rho 122240) = ((1 : F) * rho 122238 + (1 : F) * rho 122239)

def relationRow6658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122242) * ((1 : F) + (-1 : F) * rho 122240) = ((1 : F) * rho 122237 + (-1 : F) * rho 122238 + (-1 : F) * rho 122239)

def relationLc2992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 76⟩], residual := [((1 : F), 122241)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121080) * (relationLc2992 rho) = ((1 : F) * rho 122243)

def relationLc2993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 76⟩], residual := [((1 : F), 122242)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121080) * (relationLc2993 rho) = ((1 : F) * rho 122244)

def relationRow6661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122235) * ((1 : F) * rho 122236) = ((1 : F) * rho 122245)

def relationRow6662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122235) * ((1 : F) * rho 122235) = ((1 : F) * rho 122246)

def relationRow6663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122236) * ((1 : F) * rho 122236) = ((1 : F) * rho 122247)

def relationRow6664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122248) * ((-1 : F) * rho 122246 + (1 : F) * rho 122247) = ((2 : F) * rho 122245)

def relationRow6665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122249) * ((2 : F) + (1 : F) * rho 122246 + (-1 : F) * rho 122247) = ((1 : F) * rho 122246 + (1 : F) * rho 122247)

def relationLc2994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 77⟩, ⟨(1 : F), 121256, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122248 + (1 : F) * rho 122249) * (relationLc2994 rho) = ((1 : F) * rho 122250)

def relationLc2995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122249) * (relationLc2995 rho) = ((1 : F) * rho 122251)

def relationLc2996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122248) * (relationLc2996 rho) = ((1 : F) * rho 122252)

def relationRow6669 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122251) * ((1 : F) * rho 122252) = ((1 : F) * rho 122253)

def relationRow6670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122254) * ((1 : F) + (1 : F) * rho 122253) = ((1 : F) * rho 122251 + (1 : F) * rho 122252)

def relationRow6671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122255) * ((1 : F) + (-1 : F) * rho 122253) = ((1 : F) * rho 122250 + (-1 : F) * rho 122251 + (-1 : F) * rho 122252)

def relationLc2997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 77⟩], residual := [((1 : F), 122254)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121081) * (relationLc2997 rho) = ((1 : F) * rho 122256)

def relationLc2998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 77⟩], residual := [((1 : F), 122255)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121081) * (relationLc2998 rho) = ((1 : F) * rho 122257)

def relationRow6674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122248) * ((1 : F) * rho 122249) = ((1 : F) * rho 122258)

def relationRow6675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122248) * ((1 : F) * rho 122248) = ((1 : F) * rho 122259)

def relationRow6676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122249) * ((1 : F) * rho 122249) = ((1 : F) * rho 122260)

def relationRow6677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122261) * ((-1 : F) * rho 122259 + (1 : F) * rho 122260) = ((2 : F) * rho 122258)

def relationRow6678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122262) * ((2 : F) + (1 : F) * rho 122259 + (-1 : F) * rho 122260) = ((1 : F) * rho 122259 + (1 : F) * rho 122260)

def relationLc2999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 78⟩, ⟨(1 : F), 121256, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122261 + (1 : F) * rho 122262) * (relationLc2999 rho) = ((1 : F) * rho 122263)

def relationLc3000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122262) * (relationLc3000 rho) = ((1 : F) * rho 122264)

def relationLc3001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122261) * (relationLc3001 rho) = ((1 : F) * rho 122265)

def relationRow6682 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122264) * ((1 : F) * rho 122265) = ((1 : F) * rho 122266)

def relationRow6683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122267) * ((1 : F) + (1 : F) * rho 122266) = ((1 : F) * rho 122264 + (1 : F) * rho 122265)

def relationRow6684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122268) * ((1 : F) + (-1 : F) * rho 122266) = ((1 : F) * rho 122263 + (-1 : F) * rho 122264 + (-1 : F) * rho 122265)

def relationLc3002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 78⟩], residual := [((1 : F), 122267)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121082) * (relationLc3002 rho) = ((1 : F) * rho 122269)

def relationLc3003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 78⟩], residual := [((1 : F), 122268)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121082) * (relationLc3003 rho) = ((1 : F) * rho 122270)

def relationRow6687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122261) * ((1 : F) * rho 122262) = ((1 : F) * rho 122271)

def relationRow6688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122261) * ((1 : F) * rho 122261) = ((1 : F) * rho 122272)

def relationRow6689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122262) * ((1 : F) * rho 122262) = ((1 : F) * rho 122273)

def relationRow6690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122274) * ((-1 : F) * rho 122272 + (1 : F) * rho 122273) = ((2 : F) * rho 122271)

def relationRow6691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122275) * ((2 : F) + (1 : F) * rho 122272 + (-1 : F) * rho 122273) = ((1 : F) * rho 122272 + (1 : F) * rho 122273)

def relationLc3004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 79⟩, ⟨(1 : F), 121256, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122274 + (1 : F) * rho 122275) * (relationLc3004 rho) = ((1 : F) * rho 122276)

def relationLc3005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122275) * (relationLc3005 rho) = ((1 : F) * rho 122277)

def relationLc3006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122274) * (relationLc3006 rho) = ((1 : F) * rho 122278)

def relationRow6695 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122277) * ((1 : F) * rho 122278) = ((1 : F) * rho 122279)

def relationRow6696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122280) * ((1 : F) + (1 : F) * rho 122279) = ((1 : F) * rho 122277 + (1 : F) * rho 122278)

def relationRow6697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122281) * ((1 : F) + (-1 : F) * rho 122279) = ((1 : F) * rho 122276 + (-1 : F) * rho 122277 + (-1 : F) * rho 122278)

def relationLc3007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 79⟩], residual := [((1 : F), 122280)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121083) * (relationLc3007 rho) = ((1 : F) * rho 122282)

def relationLc3008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 79⟩], residual := [((1 : F), 122281)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121083) * (relationLc3008 rho) = ((1 : F) * rho 122283)

def relationRow6700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122274) * ((1 : F) * rho 122275) = ((1 : F) * rho 122284)

def relationRow6701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122274) * ((1 : F) * rho 122274) = ((1 : F) * rho 122285)

def relationRow6702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122275) * ((1 : F) * rho 122275) = ((1 : F) * rho 122286)

def relationRow6703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122287) * ((-1 : F) * rho 122285 + (1 : F) * rho 122286) = ((2 : F) * rho 122284)

def relationRow6704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122288) * ((2 : F) + (1 : F) * rho 122285 + (-1 : F) * rho 122286) = ((1 : F) * rho 122285 + (1 : F) * rho 122286)

def relationLc3009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 80⟩, ⟨(1 : F), 121256, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122287 + (1 : F) * rho 122288) * (relationLc3009 rho) = ((1 : F) * rho 122289)

def relationLc3010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122288) * (relationLc3010 rho) = ((1 : F) * rho 122290)

def relationLc3011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122287) * (relationLc3011 rho) = ((1 : F) * rho 122291)

def relationRow6708 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122290) * ((1 : F) * rho 122291) = ((1 : F) * rho 122292)

def relationRow6709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122293) * ((1 : F) + (1 : F) * rho 122292) = ((1 : F) * rho 122290 + (1 : F) * rho 122291)

def relationRow6710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122294) * ((1 : F) + (-1 : F) * rho 122292) = ((1 : F) * rho 122289 + (-1 : F) * rho 122290 + (-1 : F) * rho 122291)

def relationLc3012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 80⟩], residual := [((1 : F), 122293)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121084) * (relationLc3012 rho) = ((1 : F) * rho 122295)

def relationLc3013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 80⟩], residual := [((1 : F), 122294)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121084) * (relationLc3013 rho) = ((1 : F) * rho 122296)

def relationRow6713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122287) * ((1 : F) * rho 122288) = ((1 : F) * rho 122297)

def relationRow6714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122287) * ((1 : F) * rho 122287) = ((1 : F) * rho 122298)

def relationRow6715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122288) * ((1 : F) * rho 122288) = ((1 : F) * rho 122299)

def relationRow6716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122300) * ((-1 : F) * rho 122298 + (1 : F) * rho 122299) = ((2 : F) * rho 122297)

def relationRow6717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122301) * ((2 : F) + (1 : F) * rho 122298 + (-1 : F) * rho 122299) = ((1 : F) * rho 122298 + (1 : F) * rho 122299)

def relationLc3014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 81⟩, ⟨(1 : F), 121256, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122300 + (1 : F) * rho 122301) * (relationLc3014 rho) = ((1 : F) * rho 122302)

def relationLc3015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122301) * (relationLc3015 rho) = ((1 : F) * rho 122303)

def relationLc3016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122300) * (relationLc3016 rho) = ((1 : F) * rho 122304)

def relationRow6721 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122303) * ((1 : F) * rho 122304) = ((1 : F) * rho 122305)

def relationRow6722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122306) * ((1 : F) + (1 : F) * rho 122305) = ((1 : F) * rho 122303 + (1 : F) * rho 122304)

def relationRow6723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122307) * ((1 : F) + (-1 : F) * rho 122305) = ((1 : F) * rho 122302 + (-1 : F) * rho 122303 + (-1 : F) * rho 122304)

def relationLc3017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 81⟩], residual := [((1 : F), 122306)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121085) * (relationLc3017 rho) = ((1 : F) * rho 122308)

def relationLc3018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 81⟩], residual := [((1 : F), 122307)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121085) * (relationLc3018 rho) = ((1 : F) * rho 122309)

def relationRow6726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122300) * ((1 : F) * rho 122301) = ((1 : F) * rho 122310)

def relationRow6727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122300) * ((1 : F) * rho 122300) = ((1 : F) * rho 122311)

def relationRow6728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122301) * ((1 : F) * rho 122301) = ((1 : F) * rho 122312)

def relationRow6729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122313) * ((-1 : F) * rho 122311 + (1 : F) * rho 122312) = ((2 : F) * rho 122310)

def relationRow6730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122314) * ((2 : F) + (1 : F) * rho 122311 + (-1 : F) * rho 122312) = ((1 : F) * rho 122311 + (1 : F) * rho 122312)

def relationLc3019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 82⟩, ⟨(1 : F), 121256, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122313 + (1 : F) * rho 122314) * (relationLc3019 rho) = ((1 : F) * rho 122315)

def relationLc3020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122314) * (relationLc3020 rho) = ((1 : F) * rho 122316)

def relationLc3021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122313) * (relationLc3021 rho) = ((1 : F) * rho 122317)

def relationRow6734 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122316) * ((1 : F) * rho 122317) = ((1 : F) * rho 122318)

def relationRow6735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122319) * ((1 : F) + (1 : F) * rho 122318) = ((1 : F) * rho 122316 + (1 : F) * rho 122317)

def relationRow6736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122320) * ((1 : F) + (-1 : F) * rho 122318) = ((1 : F) * rho 122315 + (-1 : F) * rho 122316 + (-1 : F) * rho 122317)

def relationLc3022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 82⟩], residual := [((1 : F), 122319)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121086) * (relationLc3022 rho) = ((1 : F) * rho 122321)

def relationLc3023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 82⟩], residual := [((1 : F), 122320)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121086) * (relationLc3023 rho) = ((1 : F) * rho 122322)

def relationRow6739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122313) * ((1 : F) * rho 122314) = ((1 : F) * rho 122323)

def relationRow6740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122313) * ((1 : F) * rho 122313) = ((1 : F) * rho 122324)

def relationRow6741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122314) * ((1 : F) * rho 122314) = ((1 : F) * rho 122325)

def relationRow6742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122326) * ((-1 : F) * rho 122324 + (1 : F) * rho 122325) = ((2 : F) * rho 122323)

def relationRow6743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122327) * ((2 : F) + (1 : F) * rho 122324 + (-1 : F) * rho 122325) = ((1 : F) * rho 122324 + (1 : F) * rho 122325)

def relationLc3024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 83⟩, ⟨(1 : F), 121256, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122326 + (1 : F) * rho 122327) * (relationLc3024 rho) = ((1 : F) * rho 122328)

def relationLc3025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122327) * (relationLc3025 rho) = ((1 : F) * rho 122329)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109
