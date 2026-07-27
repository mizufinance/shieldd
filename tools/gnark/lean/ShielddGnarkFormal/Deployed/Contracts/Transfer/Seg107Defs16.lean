import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg107Defs15

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107

def relationRow6227 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103751) * ((1 : F) * rho 103752) = ((1 : F) * rho 103753)

def relationRow6228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103754) * ((1 : F) + (1 : F) * rho 103753) = ((1 : F) * rho 103751 + (1 : F) * rho 103752)

def relationRow6229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103755) * ((1 : F) + (-1 : F) * rho 103753) = ((1 : F) * rho 103750 + (-1 : F) * rho 103751 + (-1 : F) * rho 103752)

def relationLc2827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 43⟩], residual := [((1 : F), 103754)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102989) * (relationLc2827 rho) = ((1 : F) * rho 103756)

def relationLc2828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 43⟩], residual := [((1 : F), 103755)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102989) * (relationLc2828 rho) = ((1 : F) * rho 103757)

def relationRow6232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103748) * ((1 : F) * rho 103749) = ((1 : F) * rho 103758)

def relationRow6233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103748) * ((1 : F) * rho 103748) = ((1 : F) * rho 103759)

def relationRow6234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103749) * ((1 : F) * rho 103749) = ((1 : F) * rho 103760)

def relationRow6235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103761) * ((-1 : F) * rho 103759 + (1 : F) * rho 103760) = ((2 : F) * rho 103758)

def relationRow6236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103762) * ((2 : F) + (1 : F) * rho 103759 + (-1 : F) * rho 103760) = ((1 : F) * rho 103759 + (1 : F) * rho 103760)

def relationLc2829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 44⟩, ⟨(1 : F), 103198, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103761 + (1 : F) * rho 103762) * (relationLc2829 rho) = ((1 : F) * rho 103763)

def relationLc2830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103762) * (relationLc2830 rho) = ((1 : F) * rho 103764)

def relationLc2831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103761) * (relationLc2831 rho) = ((1 : F) * rho 103765)

def relationRow6240 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103764) * ((1 : F) * rho 103765) = ((1 : F) * rho 103766)

def relationRow6241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103767) * ((1 : F) + (1 : F) * rho 103766) = ((1 : F) * rho 103764 + (1 : F) * rho 103765)

def relationRow6242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103768) * ((1 : F) + (-1 : F) * rho 103766) = ((1 : F) * rho 103763 + (-1 : F) * rho 103764 + (-1 : F) * rho 103765)

def relationLc2832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 44⟩], residual := [((1 : F), 103767)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102990) * (relationLc2832 rho) = ((1 : F) * rho 103769)

def relationLc2833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 44⟩], residual := [((1 : F), 103768)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102990) * (relationLc2833 rho) = ((1 : F) * rho 103770)

def relationRow6245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103761) * ((1 : F) * rho 103762) = ((1 : F) * rho 103771)

def relationRow6246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103761) * ((1 : F) * rho 103761) = ((1 : F) * rho 103772)

def relationRow6247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103762) * ((1 : F) * rho 103762) = ((1 : F) * rho 103773)

def relationRow6248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103774) * ((-1 : F) * rho 103772 + (1 : F) * rho 103773) = ((2 : F) * rho 103771)

def relationRow6249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103775) * ((2 : F) + (1 : F) * rho 103772 + (-1 : F) * rho 103773) = ((1 : F) * rho 103772 + (1 : F) * rho 103773)

def relationLc2834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 45⟩, ⟨(1 : F), 103198, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103774 + (1 : F) * rho 103775) * (relationLc2834 rho) = ((1 : F) * rho 103776)

def relationLc2835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103775) * (relationLc2835 rho) = ((1 : F) * rho 103777)

def relationLc2836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103774) * (relationLc2836 rho) = ((1 : F) * rho 103778)

def relationRow6253 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103777) * ((1 : F) * rho 103778) = ((1 : F) * rho 103779)

def relationRow6254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103780) * ((1 : F) + (1 : F) * rho 103779) = ((1 : F) * rho 103777 + (1 : F) * rho 103778)

def relationRow6255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103781) * ((1 : F) + (-1 : F) * rho 103779) = ((1 : F) * rho 103776 + (-1 : F) * rho 103777 + (-1 : F) * rho 103778)

def relationLc2837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 45⟩], residual := [((1 : F), 103780)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102991) * (relationLc2837 rho) = ((1 : F) * rho 103782)

def relationLc2838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 45⟩], residual := [((1 : F), 103781)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102991) * (relationLc2838 rho) = ((1 : F) * rho 103783)

def relationRow6258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103774) * ((1 : F) * rho 103775) = ((1 : F) * rho 103784)

def relationRow6259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103774) * ((1 : F) * rho 103774) = ((1 : F) * rho 103785)

def relationRow6260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103775) * ((1 : F) * rho 103775) = ((1 : F) * rho 103786)

def relationRow6261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103787) * ((-1 : F) * rho 103785 + (1 : F) * rho 103786) = ((2 : F) * rho 103784)

def relationRow6262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103788) * ((2 : F) + (1 : F) * rho 103785 + (-1 : F) * rho 103786) = ((1 : F) * rho 103785 + (1 : F) * rho 103786)

def relationLc2839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 46⟩, ⟨(1 : F), 103198, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103787 + (1 : F) * rho 103788) * (relationLc2839 rho) = ((1 : F) * rho 103789)

def relationLc2840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103788) * (relationLc2840 rho) = ((1 : F) * rho 103790)

def relationLc2841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103787) * (relationLc2841 rho) = ((1 : F) * rho 103791)

def relationRow6266 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103790) * ((1 : F) * rho 103791) = ((1 : F) * rho 103792)

def relationRow6267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103793) * ((1 : F) + (1 : F) * rho 103792) = ((1 : F) * rho 103790 + (1 : F) * rho 103791)

def relationRow6268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103794) * ((1 : F) + (-1 : F) * rho 103792) = ((1 : F) * rho 103789 + (-1 : F) * rho 103790 + (-1 : F) * rho 103791)

def relationLc2842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 46⟩], residual := [((1 : F), 103793)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102992) * (relationLc2842 rho) = ((1 : F) * rho 103795)

def relationLc2843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 46⟩], residual := [((1 : F), 103794)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102992) * (relationLc2843 rho) = ((1 : F) * rho 103796)

def relationRow6271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103787) * ((1 : F) * rho 103788) = ((1 : F) * rho 103797)

def relationRow6272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103787) * ((1 : F) * rho 103787) = ((1 : F) * rho 103798)

def relationRow6273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103788) * ((1 : F) * rho 103788) = ((1 : F) * rho 103799)

def relationRow6274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103800) * ((-1 : F) * rho 103798 + (1 : F) * rho 103799) = ((2 : F) * rho 103797)

def relationRow6275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103801) * ((2 : F) + (1 : F) * rho 103798 + (-1 : F) * rho 103799) = ((1 : F) * rho 103798 + (1 : F) * rho 103799)

def relationLc2844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 47⟩, ⟨(1 : F), 103198, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103800 + (1 : F) * rho 103801) * (relationLc2844 rho) = ((1 : F) * rho 103802)

def relationLc2845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103801) * (relationLc2845 rho) = ((1 : F) * rho 103803)

def relationLc2846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103800) * (relationLc2846 rho) = ((1 : F) * rho 103804)

def relationRow6279 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103803) * ((1 : F) * rho 103804) = ((1 : F) * rho 103805)

def relationRow6280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103806) * ((1 : F) + (1 : F) * rho 103805) = ((1 : F) * rho 103803 + (1 : F) * rho 103804)

def relationRow6281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103807) * ((1 : F) + (-1 : F) * rho 103805) = ((1 : F) * rho 103802 + (-1 : F) * rho 103803 + (-1 : F) * rho 103804)

def relationLc2847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 47⟩], residual := [((1 : F), 103806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102993) * (relationLc2847 rho) = ((1 : F) * rho 103808)

def relationLc2848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 47⟩], residual := [((1 : F), 103807)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102993) * (relationLc2848 rho) = ((1 : F) * rho 103809)

def relationRow6284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103800) * ((1 : F) * rho 103801) = ((1 : F) * rho 103810)

def relationRow6285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103800) * ((1 : F) * rho 103800) = ((1 : F) * rho 103811)

def relationRow6286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103801) * ((1 : F) * rho 103801) = ((1 : F) * rho 103812)

def relationRow6287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103813) * ((-1 : F) * rho 103811 + (1 : F) * rho 103812) = ((2 : F) * rho 103810)

def relationRow6288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103814) * ((2 : F) + (1 : F) * rho 103811 + (-1 : F) * rho 103812) = ((1 : F) * rho 103811 + (1 : F) * rho 103812)

def relationLc2849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 48⟩, ⟨(1 : F), 103198, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103813 + (1 : F) * rho 103814) * (relationLc2849 rho) = ((1 : F) * rho 103815)

def relationLc2850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103814) * (relationLc2850 rho) = ((1 : F) * rho 103816)

def relationLc2851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103813) * (relationLc2851 rho) = ((1 : F) * rho 103817)

def relationRow6292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103816) * ((1 : F) * rho 103817) = ((1 : F) * rho 103818)

def relationRow6293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103819) * ((1 : F) + (1 : F) * rho 103818) = ((1 : F) * rho 103816 + (1 : F) * rho 103817)

def relationRow6294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103820) * ((1 : F) + (-1 : F) * rho 103818) = ((1 : F) * rho 103815 + (-1 : F) * rho 103816 + (-1 : F) * rho 103817)

def relationLc2852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 48⟩], residual := [((1 : F), 103819)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102994) * (relationLc2852 rho) = ((1 : F) * rho 103821)

def relationLc2853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 48⟩], residual := [((1 : F), 103820)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102994) * (relationLc2853 rho) = ((1 : F) * rho 103822)

def relationRow6297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103813) * ((1 : F) * rho 103814) = ((1 : F) * rho 103823)

def relationRow6298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103813) * ((1 : F) * rho 103813) = ((1 : F) * rho 103824)

def relationRow6299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103814) * ((1 : F) * rho 103814) = ((1 : F) * rho 103825)

def relationRow6300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103826) * ((-1 : F) * rho 103824 + (1 : F) * rho 103825) = ((2 : F) * rho 103823)

def relationRow6301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103827) * ((2 : F) + (1 : F) * rho 103824 + (-1 : F) * rho 103825) = ((1 : F) * rho 103824 + (1 : F) * rho 103825)

def relationLc2854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 49⟩, ⟨(1 : F), 103198, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103826 + (1 : F) * rho 103827) * (relationLc2854 rho) = ((1 : F) * rho 103828)

def relationLc2855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103827) * (relationLc2855 rho) = ((1 : F) * rho 103829)

def relationLc2856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103826) * (relationLc2856 rho) = ((1 : F) * rho 103830)

def relationRow6305 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103829) * ((1 : F) * rho 103830) = ((1 : F) * rho 103831)

def relationRow6306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103832) * ((1 : F) + (1 : F) * rho 103831) = ((1 : F) * rho 103829 + (1 : F) * rho 103830)

def relationRow6307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103833) * ((1 : F) + (-1 : F) * rho 103831) = ((1 : F) * rho 103828 + (-1 : F) * rho 103829 + (-1 : F) * rho 103830)

def relationLc2857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 49⟩], residual := [((1 : F), 103832)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102995) * (relationLc2857 rho) = ((1 : F) * rho 103834)

def relationLc2858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 49⟩], residual := [((1 : F), 103833)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102995) * (relationLc2858 rho) = ((1 : F) * rho 103835)

def relationRow6310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103826) * ((1 : F) * rho 103827) = ((1 : F) * rho 103836)

def relationRow6311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103826) * ((1 : F) * rho 103826) = ((1 : F) * rho 103837)

def relationRow6312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103827) * ((1 : F) * rho 103827) = ((1 : F) * rho 103838)

def relationRow6313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103839) * ((-1 : F) * rho 103837 + (1 : F) * rho 103838) = ((2 : F) * rho 103836)

def relationRow6314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103840) * ((2 : F) + (1 : F) * rho 103837 + (-1 : F) * rho 103838) = ((1 : F) * rho 103837 + (1 : F) * rho 103838)

def relationLc2859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 50⟩, ⟨(1 : F), 103198, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103839 + (1 : F) * rho 103840) * (relationLc2859 rho) = ((1 : F) * rho 103841)

def relationLc2860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103840) * (relationLc2860 rho) = ((1 : F) * rho 103842)

def relationLc2861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103839) * (relationLc2861 rho) = ((1 : F) * rho 103843)

def relationRow6318 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103842) * ((1 : F) * rho 103843) = ((1 : F) * rho 103844)

def relationRow6319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103845) * ((1 : F) + (1 : F) * rho 103844) = ((1 : F) * rho 103842 + (1 : F) * rho 103843)

def relationRow6320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103846) * ((1 : F) + (-1 : F) * rho 103844) = ((1 : F) * rho 103841 + (-1 : F) * rho 103842 + (-1 : F) * rho 103843)

def relationLc2862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 50⟩], residual := [((1 : F), 103845)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102996) * (relationLc2862 rho) = ((1 : F) * rho 103847)

def relationLc2863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 50⟩], residual := [((1 : F), 103846)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102996) * (relationLc2863 rho) = ((1 : F) * rho 103848)

def relationRow6323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103839) * ((1 : F) * rho 103840) = ((1 : F) * rho 103849)

def relationRow6324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103839) * ((1 : F) * rho 103839) = ((1 : F) * rho 103850)

def relationRow6325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103840) * ((1 : F) * rho 103840) = ((1 : F) * rho 103851)

def relationRow6326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103852) * ((-1 : F) * rho 103850 + (1 : F) * rho 103851) = ((2 : F) * rho 103849)

def relationRow6327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103853) * ((2 : F) + (1 : F) * rho 103850 + (-1 : F) * rho 103851) = ((1 : F) * rho 103850 + (1 : F) * rho 103851)

def relationLc2864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 51⟩, ⟨(1 : F), 103198, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103852 + (1 : F) * rho 103853) * (relationLc2864 rho) = ((1 : F) * rho 103854)

def relationLc2865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103853) * (relationLc2865 rho) = ((1 : F) * rho 103855)

def relationLc2866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103852) * (relationLc2866 rho) = ((1 : F) * rho 103856)

def relationRow6331 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103855) * ((1 : F) * rho 103856) = ((1 : F) * rho 103857)

def relationRow6332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103858) * ((1 : F) + (1 : F) * rho 103857) = ((1 : F) * rho 103855 + (1 : F) * rho 103856)

def relationRow6333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103859) * ((1 : F) + (-1 : F) * rho 103857) = ((1 : F) * rho 103854 + (-1 : F) * rho 103855 + (-1 : F) * rho 103856)

def relationLc2867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 51⟩], residual := [((1 : F), 103858)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102997) * (relationLc2867 rho) = ((1 : F) * rho 103860)

def relationLc2868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 51⟩], residual := [((1 : F), 103859)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102997) * (relationLc2868 rho) = ((1 : F) * rho 103861)

def relationRow6336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103852) * ((1 : F) * rho 103853) = ((1 : F) * rho 103862)

def relationRow6337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103852) * ((1 : F) * rho 103852) = ((1 : F) * rho 103863)

def relationRow6338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103853) * ((1 : F) * rho 103853) = ((1 : F) * rho 103864)

def relationRow6339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103865) * ((-1 : F) * rho 103863 + (1 : F) * rho 103864) = ((2 : F) * rho 103862)

def relationRow6340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103866) * ((2 : F) + (1 : F) * rho 103863 + (-1 : F) * rho 103864) = ((1 : F) * rho 103863 + (1 : F) * rho 103864)

def relationLc2869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 52⟩, ⟨(1 : F), 103198, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103865 + (1 : F) * rho 103866) * (relationLc2869 rho) = ((1 : F) * rho 103867)

def relationLc2870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103866) * (relationLc2870 rho) = ((1 : F) * rho 103868)

def relationLc2871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103865) * (relationLc2871 rho) = ((1 : F) * rho 103869)

def relationRow6344 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103868) * ((1 : F) * rho 103869) = ((1 : F) * rho 103870)

def relationRow6345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103871) * ((1 : F) + (1 : F) * rho 103870) = ((1 : F) * rho 103868 + (1 : F) * rho 103869)

def relationRow6346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103872) * ((1 : F) + (-1 : F) * rho 103870) = ((1 : F) * rho 103867 + (-1 : F) * rho 103868 + (-1 : F) * rho 103869)

def relationLc2872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 52⟩], residual := [((1 : F), 103871)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102998) * (relationLc2872 rho) = ((1 : F) * rho 103873)

def relationLc2873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 52⟩], residual := [((1 : F), 103872)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102998) * (relationLc2873 rho) = ((1 : F) * rho 103874)

def relationRow6349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103865) * ((1 : F) * rho 103866) = ((1 : F) * rho 103875)

def relationRow6350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103865) * ((1 : F) * rho 103865) = ((1 : F) * rho 103876)

def relationRow6351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103866) * ((1 : F) * rho 103866) = ((1 : F) * rho 103877)

def relationRow6352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103878) * ((-1 : F) * rho 103876 + (1 : F) * rho 103877) = ((2 : F) * rho 103875)

def relationRow6353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103879) * ((2 : F) + (1 : F) * rho 103876 + (-1 : F) * rho 103877) = ((1 : F) * rho 103876 + (1 : F) * rho 103877)

def relationLc2874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 53⟩, ⟨(1 : F), 103198, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103878 + (1 : F) * rho 103879) * (relationLc2874 rho) = ((1 : F) * rho 103880)

def relationLc2875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103879) * (relationLc2875 rho) = ((1 : F) * rho 103881)

def relationLc2876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103878) * (relationLc2876 rho) = ((1 : F) * rho 103882)

def relationRow6357 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103881) * ((1 : F) * rho 103882) = ((1 : F) * rho 103883)

def relationRow6358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103884) * ((1 : F) + (1 : F) * rho 103883) = ((1 : F) * rho 103881 + (1 : F) * rho 103882)

def relationRow6359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103885) * ((1 : F) + (-1 : F) * rho 103883) = ((1 : F) * rho 103880 + (-1 : F) * rho 103881 + (-1 : F) * rho 103882)

def relationLc2877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 53⟩], residual := [((1 : F), 103884)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102999) * (relationLc2877 rho) = ((1 : F) * rho 103886)

def relationLc2878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 53⟩], residual := [((1 : F), 103885)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102999) * (relationLc2878 rho) = ((1 : F) * rho 103887)

def relationRow6362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103878) * ((1 : F) * rho 103879) = ((1 : F) * rho 103888)

def relationRow6363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103878) * ((1 : F) * rho 103878) = ((1 : F) * rho 103889)

def relationRow6364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103879) * ((1 : F) * rho 103879) = ((1 : F) * rho 103890)

def relationRow6365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103891) * ((-1 : F) * rho 103889 + (1 : F) * rho 103890) = ((2 : F) * rho 103888)

def relationRow6366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103892) * ((2 : F) + (1 : F) * rho 103889 + (-1 : F) * rho 103890) = ((1 : F) * rho 103889 + (1 : F) * rho 103890)

def relationLc2879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 54⟩, ⟨(1 : F), 103198, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103891 + (1 : F) * rho 103892) * (relationLc2879 rho) = ((1 : F) * rho 103893)

def relationLc2880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103892) * (relationLc2880 rho) = ((1 : F) * rho 103894)

def relationLc2881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103891) * (relationLc2881 rho) = ((1 : F) * rho 103895)

def relationRow6370 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103894) * ((1 : F) * rho 103895) = ((1 : F) * rho 103896)

def relationRow6371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103897) * ((1 : F) + (1 : F) * rho 103896) = ((1 : F) * rho 103894 + (1 : F) * rho 103895)

def relationRow6372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103898) * ((1 : F) + (-1 : F) * rho 103896) = ((1 : F) * rho 103893 + (-1 : F) * rho 103894 + (-1 : F) * rho 103895)

def relationLc2882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 54⟩], residual := [((1 : F), 103897)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103000) * (relationLc2882 rho) = ((1 : F) * rho 103899)

def relationLc2883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 54⟩], residual := [((1 : F), 103898)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103000) * (relationLc2883 rho) = ((1 : F) * rho 103900)

def relationRow6375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103891) * ((1 : F) * rho 103892) = ((1 : F) * rho 103901)

def relationRow6376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103891) * ((1 : F) * rho 103891) = ((1 : F) * rho 103902)

def relationRow6377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103892) * ((1 : F) * rho 103892) = ((1 : F) * rho 103903)

def relationRow6378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103904) * ((-1 : F) * rho 103902 + (1 : F) * rho 103903) = ((2 : F) * rho 103901)

def relationRow6379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103905) * ((2 : F) + (1 : F) * rho 103902 + (-1 : F) * rho 103903) = ((1 : F) * rho 103902 + (1 : F) * rho 103903)

def relationLc2884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 55⟩, ⟨(1 : F), 103198, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103904 + (1 : F) * rho 103905) * (relationLc2884 rho) = ((1 : F) * rho 103906)

def relationLc2885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103905) * (relationLc2885 rho) = ((1 : F) * rho 103907)

def relationLc2886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103904) * (relationLc2886 rho) = ((1 : F) * rho 103908)

def relationRow6383 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103907) * ((1 : F) * rho 103908) = ((1 : F) * rho 103909)

def relationRow6384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103910) * ((1 : F) + (1 : F) * rho 103909) = ((1 : F) * rho 103907 + (1 : F) * rho 103908)

def relationRow6385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103911) * ((1 : F) + (-1 : F) * rho 103909) = ((1 : F) * rho 103906 + (-1 : F) * rho 103907 + (-1 : F) * rho 103908)

def relationLc2887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 55⟩], residual := [((1 : F), 103910)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103001) * (relationLc2887 rho) = ((1 : F) * rho 103912)

def relationLc2888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 55⟩], residual := [((1 : F), 103911)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103001) * (relationLc2888 rho) = ((1 : F) * rho 103913)

def relationRow6388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103904) * ((1 : F) * rho 103905) = ((1 : F) * rho 103914)

def relationRow6389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103904) * ((1 : F) * rho 103904) = ((1 : F) * rho 103915)

def relationRow6390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103905) * ((1 : F) * rho 103905) = ((1 : F) * rho 103916)

def relationRow6391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103917) * ((-1 : F) * rho 103915 + (1 : F) * rho 103916) = ((2 : F) * rho 103914)

def relationRow6392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103918) * ((2 : F) + (1 : F) * rho 103915 + (-1 : F) * rho 103916) = ((1 : F) * rho 103915 + (1 : F) * rho 103916)

def relationLc2889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 56⟩, ⟨(1 : F), 103198, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103917 + (1 : F) * rho 103918) * (relationLc2889 rho) = ((1 : F) * rho 103919)

def relationLc2890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103918) * (relationLc2890 rho) = ((1 : F) * rho 103920)

def relationLc2891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103917) * (relationLc2891 rho) = ((1 : F) * rho 103921)

def relationRow6396 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103920) * ((1 : F) * rho 103921) = ((1 : F) * rho 103922)

def relationRow6397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103923) * ((1 : F) + (1 : F) * rho 103922) = ((1 : F) * rho 103920 + (1 : F) * rho 103921)

def relationRow6398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103924) * ((1 : F) + (-1 : F) * rho 103922) = ((1 : F) * rho 103919 + (-1 : F) * rho 103920 + (-1 : F) * rho 103921)

def relationLc2892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 56⟩], residual := [((1 : F), 103923)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103002) * (relationLc2892 rho) = ((1 : F) * rho 103925)

def relationLc2893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 56⟩], residual := [((1 : F), 103924)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103002) * (relationLc2893 rho) = ((1 : F) * rho 103926)

def relationRow6401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103917) * ((1 : F) * rho 103918) = ((1 : F) * rho 103927)

def relationRow6402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103917) * ((1 : F) * rho 103917) = ((1 : F) * rho 103928)

def relationRow6403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103918) * ((1 : F) * rho 103918) = ((1 : F) * rho 103929)

def relationRow6404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103930) * ((-1 : F) * rho 103928 + (1 : F) * rho 103929) = ((2 : F) * rho 103927)

def relationRow6405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103931) * ((2 : F) + (1 : F) * rho 103928 + (-1 : F) * rho 103929) = ((1 : F) * rho 103928 + (1 : F) * rho 103929)

def relationLc2894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 57⟩, ⟨(1 : F), 103198, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103930 + (1 : F) * rho 103931) * (relationLc2894 rho) = ((1 : F) * rho 103932)

def relationLc2895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103931) * (relationLc2895 rho) = ((1 : F) * rho 103933)

def relationLc2896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103930) * (relationLc2896 rho) = ((1 : F) * rho 103934)

def relationRow6409 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103933) * ((1 : F) * rho 103934) = ((1 : F) * rho 103935)

def relationRow6410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103936) * ((1 : F) + (1 : F) * rho 103935) = ((1 : F) * rho 103933 + (1 : F) * rho 103934)

def relationRow6411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103937) * ((1 : F) + (-1 : F) * rho 103935) = ((1 : F) * rho 103932 + (-1 : F) * rho 103933 + (-1 : F) * rho 103934)

def relationLc2897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 57⟩], residual := [((1 : F), 103936)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103003) * (relationLc2897 rho) = ((1 : F) * rho 103938)

def relationLc2898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 57⟩], residual := [((1 : F), 103937)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103003) * (relationLc2898 rho) = ((1 : F) * rho 103939)

def relationRow6414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103930) * ((1 : F) * rho 103931) = ((1 : F) * rho 103940)

def relationRow6415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103930) * ((1 : F) * rho 103930) = ((1 : F) * rho 103941)

def relationRow6416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103931) * ((1 : F) * rho 103931) = ((1 : F) * rho 103942)

def relationRow6417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103943) * ((-1 : F) * rho 103941 + (1 : F) * rho 103942) = ((2 : F) * rho 103940)

def relationRow6418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103944) * ((2 : F) + (1 : F) * rho 103941 + (-1 : F) * rho 103942) = ((1 : F) * rho 103941 + (1 : F) * rho 103942)

def relationLc2899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 58⟩, ⟨(1 : F), 103198, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103943 + (1 : F) * rho 103944) * (relationLc2899 rho) = ((1 : F) * rho 103945)

def relationLc2900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103944) * (relationLc2900 rho) = ((1 : F) * rho 103946)

def relationLc2901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103943) * (relationLc2901 rho) = ((1 : F) * rho 103947)

def relationRow6422 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103946) * ((1 : F) * rho 103947) = ((1 : F) * rho 103948)

def relationRow6423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103949) * ((1 : F) + (1 : F) * rho 103948) = ((1 : F) * rho 103946 + (1 : F) * rho 103947)

def relationRow6424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103950) * ((1 : F) + (-1 : F) * rho 103948) = ((1 : F) * rho 103945 + (-1 : F) * rho 103946 + (-1 : F) * rho 103947)

def relationLc2902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 58⟩], residual := [((1 : F), 103949)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103004) * (relationLc2902 rho) = ((1 : F) * rho 103951)

def relationLc2903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 58⟩], residual := [((1 : F), 103950)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103004) * (relationLc2903 rho) = ((1 : F) * rho 103952)

def relationRow6427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103943) * ((1 : F) * rho 103944) = ((1 : F) * rho 103953)

def relationRow6428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103943) * ((1 : F) * rho 103943) = ((1 : F) * rho 103954)

def relationRow6429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103944) * ((1 : F) * rho 103944) = ((1 : F) * rho 103955)

def relationRow6430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103956) * ((-1 : F) * rho 103954 + (1 : F) * rho 103955) = ((2 : F) * rho 103953)

def relationRow6431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103957) * ((2 : F) + (1 : F) * rho 103954 + (-1 : F) * rho 103955) = ((1 : F) * rho 103954 + (1 : F) * rho 103955)

def relationLc2904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 59⟩, ⟨(1 : F), 103198, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103956 + (1 : F) * rho 103957) * (relationLc2904 rho) = ((1 : F) * rho 103958)

def relationLc2905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103957) * (relationLc2905 rho) = ((1 : F) * rho 103959)

def relationLc2906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103956) * (relationLc2906 rho) = ((1 : F) * rho 103960)

def relationRow6435 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103959) * ((1 : F) * rho 103960) = ((1 : F) * rho 103961)

def relationRow6436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103962) * ((1 : F) + (1 : F) * rho 103961) = ((1 : F) * rho 103959 + (1 : F) * rho 103960)

def relationRow6437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103963) * ((1 : F) + (-1 : F) * rho 103961) = ((1 : F) * rho 103958 + (-1 : F) * rho 103959 + (-1 : F) * rho 103960)

def relationLc2907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 59⟩], residual := [((1 : F), 103962)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103005) * (relationLc2907 rho) = ((1 : F) * rho 103964)

def relationLc2908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 59⟩], residual := [((1 : F), 103963)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103005) * (relationLc2908 rho) = ((1 : F) * rho 103965)

def relationRow6440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103956) * ((1 : F) * rho 103957) = ((1 : F) * rho 103966)

def relationRow6441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103956) * ((1 : F) * rho 103956) = ((1 : F) * rho 103967)

def relationRow6442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103957) * ((1 : F) * rho 103957) = ((1 : F) * rho 103968)

def relationRow6443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103969) * ((-1 : F) * rho 103967 + (1 : F) * rho 103968) = ((2 : F) * rho 103966)

def relationRow6444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103970) * ((2 : F) + (1 : F) * rho 103967 + (-1 : F) * rho 103968) = ((1 : F) * rho 103967 + (1 : F) * rho 103968)

def relationLc2909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 60⟩, ⟨(1 : F), 103198, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103969 + (1 : F) * rho 103970) * (relationLc2909 rho) = ((1 : F) * rho 103971)

def relationLc2910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103970) * (relationLc2910 rho) = ((1 : F) * rho 103972)

def relationLc2911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103969) * (relationLc2911 rho) = ((1 : F) * rho 103973)

def relationRow6448 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103972) * ((1 : F) * rho 103973) = ((1 : F) * rho 103974)

def relationRow6449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103975) * ((1 : F) + (1 : F) * rho 103974) = ((1 : F) * rho 103972 + (1 : F) * rho 103973)

def relationRow6450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103976) * ((1 : F) + (-1 : F) * rho 103974) = ((1 : F) * rho 103971 + (-1 : F) * rho 103972 + (-1 : F) * rho 103973)

def relationLc2912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 60⟩], residual := [((1 : F), 103975)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103006) * (relationLc2912 rho) = ((1 : F) * rho 103977)

def relationLc2913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 60⟩], residual := [((1 : F), 103976)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103006) * (relationLc2913 rho) = ((1 : F) * rho 103978)

def relationRow6453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103969) * ((1 : F) * rho 103970) = ((1 : F) * rho 103979)

def relationRow6454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103969) * ((1 : F) * rho 103969) = ((1 : F) * rho 103980)

def relationRow6455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103970) * ((1 : F) * rho 103970) = ((1 : F) * rho 103981)

def relationRow6456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103982) * ((-1 : F) * rho 103980 + (1 : F) * rho 103981) = ((2 : F) * rho 103979)

def relationRow6457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103983) * ((2 : F) + (1 : F) * rho 103980 + (-1 : F) * rho 103981) = ((1 : F) * rho 103980 + (1 : F) * rho 103981)

def relationLc2914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 61⟩, ⟨(1 : F), 103198, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103982 + (1 : F) * rho 103983) * (relationLc2914 rho) = ((1 : F) * rho 103984)

def relationLc2915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103983) * (relationLc2915 rho) = ((1 : F) * rho 103985)

def relationLc2916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103982) * (relationLc2916 rho) = ((1 : F) * rho 103986)

def relationRow6461 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103985) * ((1 : F) * rho 103986) = ((1 : F) * rho 103987)

def relationRow6462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103988) * ((1 : F) + (1 : F) * rho 103987) = ((1 : F) * rho 103985 + (1 : F) * rho 103986)

def relationRow6463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103989) * ((1 : F) + (-1 : F) * rho 103987) = ((1 : F) * rho 103984 + (-1 : F) * rho 103985 + (-1 : F) * rho 103986)

def relationLc2917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 61⟩], residual := [((1 : F), 103988)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103007) * (relationLc2917 rho) = ((1 : F) * rho 103990)

def relationLc2918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 61⟩], residual := [((1 : F), 103989)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103007) * (relationLc2918 rho) = ((1 : F) * rho 103991)

def relationRow6466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103982) * ((1 : F) * rho 103983) = ((1 : F) * rho 103992)

def relationRow6467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103982) * ((1 : F) * rho 103982) = ((1 : F) * rho 103993)

def relationRow6468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103983) * ((1 : F) * rho 103983) = ((1 : F) * rho 103994)

def relationRow6469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103995) * ((-1 : F) * rho 103993 + (1 : F) * rho 103994) = ((2 : F) * rho 103992)

def relationRow6470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103996) * ((2 : F) + (1 : F) * rho 103993 + (-1 : F) * rho 103994) = ((1 : F) * rho 103993 + (1 : F) * rho 103994)

def relationLc2919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 62⟩, ⟨(1 : F), 103198, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103995 + (1 : F) * rho 103996) * (relationLc2919 rho) = ((1 : F) * rho 103997)

def relationLc2920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103996) * (relationLc2920 rho) = ((1 : F) * rho 103998)

def relationLc2921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103995) * (relationLc2921 rho) = ((1 : F) * rho 103999)

def relationRow6474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 103998) * ((1 : F) * rho 103999) = ((1 : F) * rho 104000)

def relationRow6475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104001) * ((1 : F) + (1 : F) * rho 104000) = ((1 : F) * rho 103998 + (1 : F) * rho 103999)

def relationRow6476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104002) * ((1 : F) + (-1 : F) * rho 104000) = ((1 : F) * rho 103997 + (-1 : F) * rho 103998 + (-1 : F) * rho 103999)

def relationLc2922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 62⟩], residual := [((1 : F), 104001)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103008) * (relationLc2922 rho) = ((1 : F) * rho 104003)

def relationLc2923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 62⟩], residual := [((1 : F), 104002)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103008) * (relationLc2923 rho) = ((1 : F) * rho 104004)

def relationRow6479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103995) * ((1 : F) * rho 103996) = ((1 : F) * rho 104005)

def relationRow6480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103995) * ((1 : F) * rho 103995) = ((1 : F) * rho 104006)

def relationRow6481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103996) * ((1 : F) * rho 103996) = ((1 : F) * rho 104007)

def relationRow6482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104008) * ((-1 : F) * rho 104006 + (1 : F) * rho 104007) = ((2 : F) * rho 104005)

def relationRow6483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104009) * ((2 : F) + (1 : F) * rho 104006 + (-1 : F) * rho 104007) = ((1 : F) * rho 104006 + (1 : F) * rho 104007)

def relationLc2924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 63⟩, ⟨(1 : F), 103198, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104008 + (1 : F) * rho 104009) * (relationLc2924 rho) = ((1 : F) * rho 104010)

def relationLc2925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104009) * (relationLc2925 rho) = ((1 : F) * rho 104011)

def relationLc2926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104008) * (relationLc2926 rho) = ((1 : F) * rho 104012)

def relationRow6487 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104011) * ((1 : F) * rho 104012) = ((1 : F) * rho 104013)

def relationRow6488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104014) * ((1 : F) + (1 : F) * rho 104013) = ((1 : F) * rho 104011 + (1 : F) * rho 104012)

def relationRow6489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104015) * ((1 : F) + (-1 : F) * rho 104013) = ((1 : F) * rho 104010 + (-1 : F) * rho 104011 + (-1 : F) * rho 104012)

def relationLc2927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 63⟩], residual := [((1 : F), 104014)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103009) * (relationLc2927 rho) = ((1 : F) * rho 104016)

def relationLc2928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 63⟩], residual := [((1 : F), 104015)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103009) * (relationLc2928 rho) = ((1 : F) * rho 104017)

def relationRow6492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104008) * ((1 : F) * rho 104009) = ((1 : F) * rho 104018)

def relationRow6493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104008) * ((1 : F) * rho 104008) = ((1 : F) * rho 104019)

def relationRow6494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104009) * ((1 : F) * rho 104009) = ((1 : F) * rho 104020)

def relationRow6495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104021) * ((-1 : F) * rho 104019 + (1 : F) * rho 104020) = ((2 : F) * rho 104018)

def relationRow6496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104022) * ((2 : F) + (1 : F) * rho 104019 + (-1 : F) * rho 104020) = ((1 : F) * rho 104019 + (1 : F) * rho 104020)

def relationLc2929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 64⟩, ⟨(1 : F), 103198, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104021 + (1 : F) * rho 104022) * (relationLc2929 rho) = ((1 : F) * rho 104023)

def relationLc2930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104022) * (relationLc2930 rho) = ((1 : F) * rho 104024)

def relationLc2931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104021) * (relationLc2931 rho) = ((1 : F) * rho 104025)

def relationRow6500 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104024) * ((1 : F) * rho 104025) = ((1 : F) * rho 104026)

def relationRow6501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104027) * ((1 : F) + (1 : F) * rho 104026) = ((1 : F) * rho 104024 + (1 : F) * rho 104025)

def relationRow6502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104028) * ((1 : F) + (-1 : F) * rho 104026) = ((1 : F) * rho 104023 + (-1 : F) * rho 104024 + (-1 : F) * rho 104025)

def relationLc2932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 64⟩], residual := [((1 : F), 104027)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103010) * (relationLc2932 rho) = ((1 : F) * rho 104029)

def relationLc2933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 64⟩], residual := [((1 : F), 104028)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103010) * (relationLc2933 rho) = ((1 : F) * rho 104030)

def relationRow6505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104021) * ((1 : F) * rho 104022) = ((1 : F) * rho 104031)

def relationRow6506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104021) * ((1 : F) * rho 104021) = ((1 : F) * rho 104032)

def relationRow6507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104022) * ((1 : F) * rho 104022) = ((1 : F) * rho 104033)

def relationRow6508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104034) * ((-1 : F) * rho 104032 + (1 : F) * rho 104033) = ((2 : F) * rho 104031)

def relationRow6509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104035) * ((2 : F) + (1 : F) * rho 104032 + (-1 : F) * rho 104033) = ((1 : F) * rho 104032 + (1 : F) * rho 104033)

def relationLc2934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 65⟩, ⟨(1 : F), 103198, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104034 + (1 : F) * rho 104035) * (relationLc2934 rho) = ((1 : F) * rho 104036)

def relationLc2935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104035) * (relationLc2935 rho) = ((1 : F) * rho 104037)

def relationLc2936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104034) * (relationLc2936 rho) = ((1 : F) * rho 104038)

def relationRow6513 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104037) * ((1 : F) * rho 104038) = ((1 : F) * rho 104039)

def relationRow6514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104040) * ((1 : F) + (1 : F) * rho 104039) = ((1 : F) * rho 104037 + (1 : F) * rho 104038)

def relationRow6515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104041) * ((1 : F) + (-1 : F) * rho 104039) = ((1 : F) * rho 104036 + (-1 : F) * rho 104037 + (-1 : F) * rho 104038)

def relationLc2937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 65⟩], residual := [((1 : F), 104040)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103011) * (relationLc2937 rho) = ((1 : F) * rho 104042)

def relationLc2938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 65⟩], residual := [((1 : F), 104041)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103011) * (relationLc2938 rho) = ((1 : F) * rho 104043)

def relationRow6518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104034) * ((1 : F) * rho 104035) = ((1 : F) * rho 104044)

def relationRow6519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104034) * ((1 : F) * rho 104034) = ((1 : F) * rho 104045)

def relationRow6520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104035) * ((1 : F) * rho 104035) = ((1 : F) * rho 104046)

def relationRow6521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104047) * ((-1 : F) * rho 104045 + (1 : F) * rho 104046) = ((2 : F) * rho 104044)

def relationRow6522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104048) * ((2 : F) + (1 : F) * rho 104045 + (-1 : F) * rho 104046) = ((1 : F) * rho 104045 + (1 : F) * rho 104046)

def relationLc2939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 66⟩, ⟨(1 : F), 103198, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104047 + (1 : F) * rho 104048) * (relationLc2939 rho) = ((1 : F) * rho 104049)

def relationLc2940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104048) * (relationLc2940 rho) = ((1 : F) * rho 104050)

def relationLc2941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104047) * (relationLc2941 rho) = ((1 : F) * rho 104051)

def relationRow6526 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104050) * ((1 : F) * rho 104051) = ((1 : F) * rho 104052)

def relationRow6527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104053) * ((1 : F) + (1 : F) * rho 104052) = ((1 : F) * rho 104050 + (1 : F) * rho 104051)

def relationRow6528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104054) * ((1 : F) + (-1 : F) * rho 104052) = ((1 : F) * rho 104049 + (-1 : F) * rho 104050 + (-1 : F) * rho 104051)

def relationLc2942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 66⟩], residual := [((1 : F), 104053)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103012) * (relationLc2942 rho) = ((1 : F) * rho 104055)

def relationLc2943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 66⟩], residual := [((1 : F), 104054)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103012) * (relationLc2943 rho) = ((1 : F) * rho 104056)

def relationRow6531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104047) * ((1 : F) * rho 104048) = ((1 : F) * rho 104057)

def relationRow6532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104047) * ((1 : F) * rho 104047) = ((1 : F) * rho 104058)

def relationRow6533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104048) * ((1 : F) * rho 104048) = ((1 : F) * rho 104059)

def relationRow6534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104060) * ((-1 : F) * rho 104058 + (1 : F) * rho 104059) = ((2 : F) * rho 104057)

def relationRow6535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104061) * ((2 : F) + (1 : F) * rho 104058 + (-1 : F) * rho 104059) = ((1 : F) * rho 104058 + (1 : F) * rho 104059)

def relationLc2944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 67⟩, ⟨(1 : F), 103198, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104060 + (1 : F) * rho 104061) * (relationLc2944 rho) = ((1 : F) * rho 104062)

def relationLc2945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104061) * (relationLc2945 rho) = ((1 : F) * rho 104063)

def relationLc2946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104060) * (relationLc2946 rho) = ((1 : F) * rho 104064)

def relationRow6539 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104063) * ((1 : F) * rho 104064) = ((1 : F) * rho 104065)

def relationRow6540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104066) * ((1 : F) + (1 : F) * rho 104065) = ((1 : F) * rho 104063 + (1 : F) * rho 104064)

def relationRow6541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104067) * ((1 : F) + (-1 : F) * rho 104065) = ((1 : F) * rho 104062 + (-1 : F) * rho 104063 + (-1 : F) * rho 104064)

def relationLc2947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 67⟩], residual := [((1 : F), 104066)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103013) * (relationLc2947 rho) = ((1 : F) * rho 104068)

def relationLc2948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 67⟩], residual := [((1 : F), 104067)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103013) * (relationLc2948 rho) = ((1 : F) * rho 104069)

def relationRow6544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104060) * ((1 : F) * rho 104061) = ((1 : F) * rho 104070)

def relationRow6545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104060) * ((1 : F) * rho 104060) = ((1 : F) * rho 104071)

def relationRow6546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104061) * ((1 : F) * rho 104061) = ((1 : F) * rho 104072)

def relationRow6547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104073) * ((-1 : F) * rho 104071 + (1 : F) * rho 104072) = ((2 : F) * rho 104070)

def relationRow6548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104074) * ((2 : F) + (1 : F) * rho 104071 + (-1 : F) * rho 104072) = ((1 : F) * rho 104071 + (1 : F) * rho 104072)

def relationLc2949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 68⟩, ⟨(1 : F), 103198, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104073 + (1 : F) * rho 104074) * (relationLc2949 rho) = ((1 : F) * rho 104075)

def relationLc2950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104074) * (relationLc2950 rho) = ((1 : F) * rho 104076)

def relationLc2951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104073) * (relationLc2951 rho) = ((1 : F) * rho 104077)

def relationRow6552 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104076) * ((1 : F) * rho 104077) = ((1 : F) * rho 104078)

def relationRow6553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104079) * ((1 : F) + (1 : F) * rho 104078) = ((1 : F) * rho 104076 + (1 : F) * rho 104077)

def relationRow6554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104080) * ((1 : F) + (-1 : F) * rho 104078) = ((1 : F) * rho 104075 + (-1 : F) * rho 104076 + (-1 : F) * rho 104077)

def relationLc2952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 68⟩], residual := [((1 : F), 104079)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103014) * (relationLc2952 rho) = ((1 : F) * rho 104081)

def relationLc2953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 68⟩], residual := [((1 : F), 104080)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103014) * (relationLc2953 rho) = ((1 : F) * rho 104082)

def relationRow6557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104073) * ((1 : F) * rho 104074) = ((1 : F) * rho 104083)

def relationRow6558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104073) * ((1 : F) * rho 104073) = ((1 : F) * rho 104084)

def relationRow6559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104074) * ((1 : F) * rho 104074) = ((1 : F) * rho 104085)

def relationRow6560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104086) * ((-1 : F) * rho 104084 + (1 : F) * rho 104085) = ((2 : F) * rho 104083)

def relationRow6561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104087) * ((2 : F) + (1 : F) * rho 104084 + (-1 : F) * rho 104085) = ((1 : F) * rho 104084 + (1 : F) * rho 104085)

def relationLc2954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 69⟩, ⟨(1 : F), 103198, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104086 + (1 : F) * rho 104087) * (relationLc2954 rho) = ((1 : F) * rho 104088)

def relationLc2955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104087) * (relationLc2955 rho) = ((1 : F) * rho 104089)

def relationLc2956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104086) * (relationLc2956 rho) = ((1 : F) * rho 104090)

def relationRow6565 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104089) * ((1 : F) * rho 104090) = ((1 : F) * rho 104091)

def relationRow6566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104092) * ((1 : F) + (1 : F) * rho 104091) = ((1 : F) * rho 104089 + (1 : F) * rho 104090)

def relationRow6567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104093) * ((1 : F) + (-1 : F) * rho 104091) = ((1 : F) * rho 104088 + (-1 : F) * rho 104089 + (-1 : F) * rho 104090)

def relationLc2957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 69⟩], residual := [((1 : F), 104092)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103015) * (relationLc2957 rho) = ((1 : F) * rho 104094)

def relationLc2958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 69⟩], residual := [((1 : F), 104093)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103015) * (relationLc2958 rho) = ((1 : F) * rho 104095)

def relationRow6570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104086) * ((1 : F) * rho 104087) = ((1 : F) * rho 104096)

def relationRow6571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104086) * ((1 : F) * rho 104086) = ((1 : F) * rho 104097)

def relationRow6572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104087) * ((1 : F) * rho 104087) = ((1 : F) * rho 104098)

def relationRow6573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104099) * ((-1 : F) * rho 104097 + (1 : F) * rho 104098) = ((2 : F) * rho 104096)

def relationRow6574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104100) * ((2 : F) + (1 : F) * rho 104097 + (-1 : F) * rho 104098) = ((1 : F) * rho 104097 + (1 : F) * rho 104098)

def relationLc2959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 70⟩, ⟨(1 : F), 103198, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104099 + (1 : F) * rho 104100) * (relationLc2959 rho) = ((1 : F) * rho 104101)

def relationLc2960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104100) * (relationLc2960 rho) = ((1 : F) * rho 104102)

def relationLc2961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104099) * (relationLc2961 rho) = ((1 : F) * rho 104103)

def relationRow6578 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104102) * ((1 : F) * rho 104103) = ((1 : F) * rho 104104)

def relationRow6579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104105) * ((1 : F) + (1 : F) * rho 104104) = ((1 : F) * rho 104102 + (1 : F) * rho 104103)

def relationRow6580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104106) * ((1 : F) + (-1 : F) * rho 104104) = ((1 : F) * rho 104101 + (-1 : F) * rho 104102 + (-1 : F) * rho 104103)

def relationLc2962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 70⟩], residual := [((1 : F), 104105)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103016) * (relationLc2962 rho) = ((1 : F) * rho 104107)

def relationLc2963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 70⟩], residual := [((1 : F), 104106)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103016) * (relationLc2963 rho) = ((1 : F) * rho 104108)

def relationRow6583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104099) * ((1 : F) * rho 104100) = ((1 : F) * rho 104109)

def relationRow6584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104099) * ((1 : F) * rho 104099) = ((1 : F) * rho 104110)

def relationRow6585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104100) * ((1 : F) * rho 104100) = ((1 : F) * rho 104111)

def relationRow6586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104112) * ((-1 : F) * rho 104110 + (1 : F) * rho 104111) = ((2 : F) * rho 104109)

def relationRow6587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104113) * ((2 : F) + (1 : F) * rho 104110 + (-1 : F) * rho 104111) = ((1 : F) * rho 104110 + (1 : F) * rho 104111)

def relationLc2964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 71⟩, ⟨(1 : F), 103198, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104112 + (1 : F) * rho 104113) * (relationLc2964 rho) = ((1 : F) * rho 104114)

def relationLc2965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104113) * (relationLc2965 rho) = ((1 : F) * rho 104115)

def relationLc2966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104112) * (relationLc2966 rho) = ((1 : F) * rho 104116)

def relationRow6591 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104115) * ((1 : F) * rho 104116) = ((1 : F) * rho 104117)

def relationRow6592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104118) * ((1 : F) + (1 : F) * rho 104117) = ((1 : F) * rho 104115 + (1 : F) * rho 104116)

def relationRow6593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104119) * ((1 : F) + (-1 : F) * rho 104117) = ((1 : F) * rho 104114 + (-1 : F) * rho 104115 + (-1 : F) * rho 104116)

def relationLc2967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 71⟩], residual := [((1 : F), 104118)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103017) * (relationLc2967 rho) = ((1 : F) * rho 104120)

def relationLc2968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 71⟩], residual := [((1 : F), 104119)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103017) * (relationLc2968 rho) = ((1 : F) * rho 104121)

def relationRow6596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104112) * ((1 : F) * rho 104113) = ((1 : F) * rho 104122)

def relationRow6597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104112) * ((1 : F) * rho 104112) = ((1 : F) * rho 104123)

def relationRow6598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104113) * ((1 : F) * rho 104113) = ((1 : F) * rho 104124)

def relationRow6599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104125) * ((-1 : F) * rho 104123 + (1 : F) * rho 104124) = ((2 : F) * rho 104122)

def relationRow6600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104126) * ((2 : F) + (1 : F) * rho 104123 + (-1 : F) * rho 104124) = ((1 : F) * rho 104123 + (1 : F) * rho 104124)

def relationLc2969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 72⟩, ⟨(1 : F), 103198, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104125 + (1 : F) * rho 104126) * (relationLc2969 rho) = ((1 : F) * rho 104127)

def relationLc2970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104126) * (relationLc2970 rho) = ((1 : F) * rho 104128)

def relationLc2971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104125) * (relationLc2971 rho) = ((1 : F) * rho 104129)

def relationRow6604 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104128) * ((1 : F) * rho 104129) = ((1 : F) * rho 104130)

def relationRow6605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104131) * ((1 : F) + (1 : F) * rho 104130) = ((1 : F) * rho 104128 + (1 : F) * rho 104129)

def relationRow6606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104132) * ((1 : F) + (-1 : F) * rho 104130) = ((1 : F) * rho 104127 + (-1 : F) * rho 104128 + (-1 : F) * rho 104129)

def relationLc2972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 72⟩], residual := [((1 : F), 104131)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103018) * (relationLc2972 rho) = ((1 : F) * rho 104133)

def relationLc2973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 72⟩], residual := [((1 : F), 104132)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103018) * (relationLc2973 rho) = ((1 : F) * rho 104134)

def relationRow6609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104125) * ((1 : F) * rho 104126) = ((1 : F) * rho 104135)

def relationRow6610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104125) * ((1 : F) * rho 104125) = ((1 : F) * rho 104136)

def relationRow6611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104126) * ((1 : F) * rho 104126) = ((1 : F) * rho 104137)

def relationRow6612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104138) * ((-1 : F) * rho 104136 + (1 : F) * rho 104137) = ((2 : F) * rho 104135)

def relationRow6613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104139) * ((2 : F) + (1 : F) * rho 104136 + (-1 : F) * rho 104137) = ((1 : F) * rho 104136 + (1 : F) * rho 104137)

def relationLc2974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 73⟩, ⟨(1 : F), 103198, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104138 + (1 : F) * rho 104139) * (relationLc2974 rho) = ((1 : F) * rho 104140)

def relationLc2975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104139) * (relationLc2975 rho) = ((1 : F) * rho 104141)

def relationLc2976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104138) * (relationLc2976 rho) = ((1 : F) * rho 104142)

def relationRow6617 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104141) * ((1 : F) * rho 104142) = ((1 : F) * rho 104143)

def relationRow6618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104144) * ((1 : F) + (1 : F) * rho 104143) = ((1 : F) * rho 104141 + (1 : F) * rho 104142)

def relationRow6619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104145) * ((1 : F) + (-1 : F) * rho 104143) = ((1 : F) * rho 104140 + (-1 : F) * rho 104141 + (-1 : F) * rho 104142)

def relationLc2977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 73⟩], residual := [((1 : F), 104144)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103019) * (relationLc2977 rho) = ((1 : F) * rho 104146)

def relationLc2978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 73⟩], residual := [((1 : F), 104145)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103019) * (relationLc2978 rho) = ((1 : F) * rho 104147)

def relationRow6622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104138) * ((1 : F) * rho 104139) = ((1 : F) * rho 104148)

def relationRow6623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104138) * ((1 : F) * rho 104138) = ((1 : F) * rho 104149)

def relationRow6624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104139) * ((1 : F) * rho 104139) = ((1 : F) * rho 104150)

def relationRow6625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104151) * ((-1 : F) * rho 104149 + (1 : F) * rho 104150) = ((2 : F) * rho 104148)

def relationRow6626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104152) * ((2 : F) + (1 : F) * rho 104149 + (-1 : F) * rho 104150) = ((1 : F) * rho 104149 + (1 : F) * rho 104150)

def relationLc2979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 74⟩, ⟨(1 : F), 103198, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104151 + (1 : F) * rho 104152) * (relationLc2979 rho) = ((1 : F) * rho 104153)

def relationLc2980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104152) * (relationLc2980 rho) = ((1 : F) * rho 104154)

def relationLc2981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104151) * (relationLc2981 rho) = ((1 : F) * rho 104155)

def relationRow6630 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104154) * ((1 : F) * rho 104155) = ((1 : F) * rho 104156)

def relationRow6631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104157) * ((1 : F) + (1 : F) * rho 104156) = ((1 : F) * rho 104154 + (1 : F) * rho 104155)

def relationRow6632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104158) * ((1 : F) + (-1 : F) * rho 104156) = ((1 : F) * rho 104153 + (-1 : F) * rho 104154 + (-1 : F) * rho 104155)

def relationLc2982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 74⟩], residual := [((1 : F), 104157)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103020) * (relationLc2982 rho) = ((1 : F) * rho 104159)

def relationLc2983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 74⟩], residual := [((1 : F), 104158)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103020) * (relationLc2983 rho) = ((1 : F) * rho 104160)

def relationRow6635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104151) * ((1 : F) * rho 104152) = ((1 : F) * rho 104161)

def relationRow6636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104151) * ((1 : F) * rho 104151) = ((1 : F) * rho 104162)

def relationRow6637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104152) * ((1 : F) * rho 104152) = ((1 : F) * rho 104163)

def relationRow6638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104164) * ((-1 : F) * rho 104162 + (1 : F) * rho 104163) = ((2 : F) * rho 104161)

def relationRow6639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104165) * ((2 : F) + (1 : F) * rho 104162 + (-1 : F) * rho 104163) = ((1 : F) * rho 104162 + (1 : F) * rho 104163)

def relationLc2984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 75⟩, ⟨(1 : F), 103198, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104164 + (1 : F) * rho 104165) * (relationLc2984 rho) = ((1 : F) * rho 104166)

def relationLc2985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104165) * (relationLc2985 rho) = ((1 : F) * rho 104167)

def relationLc2986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104164) * (relationLc2986 rho) = ((1 : F) * rho 104168)

def relationRow6643 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104167) * ((1 : F) * rho 104168) = ((1 : F) * rho 104169)

def relationRow6644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104170) * ((1 : F) + (1 : F) * rho 104169) = ((1 : F) * rho 104167 + (1 : F) * rho 104168)

def relationRow6645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104171) * ((1 : F) + (-1 : F) * rho 104169) = ((1 : F) * rho 104166 + (-1 : F) * rho 104167 + (-1 : F) * rho 104168)

def relationLc2987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 75⟩], residual := [((1 : F), 104170)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103021) * (relationLc2987 rho) = ((1 : F) * rho 104172)

def relationLc2988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 75⟩], residual := [((1 : F), 104171)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103021) * (relationLc2988 rho) = ((1 : F) * rho 104173)

def relationRow6648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104164) * ((1 : F) * rho 104165) = ((1 : F) * rho 104174)

def relationRow6649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104164) * ((1 : F) * rho 104164) = ((1 : F) * rho 104175)

def relationRow6650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104165) * ((1 : F) * rho 104165) = ((1 : F) * rho 104176)

def relationRow6651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104177) * ((-1 : F) * rho 104175 + (1 : F) * rho 104176) = ((2 : F) * rho 104174)

def relationRow6652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104178) * ((2 : F) + (1 : F) * rho 104175 + (-1 : F) * rho 104176) = ((1 : F) * rho 104175 + (1 : F) * rho 104176)

def relationLc2989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 76⟩, ⟨(1 : F), 103198, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104177 + (1 : F) * rho 104178) * (relationLc2989 rho) = ((1 : F) * rho 104179)

def relationLc2990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104178) * (relationLc2990 rho) = ((1 : F) * rho 104180)

def relationLc2991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104177) * (relationLc2991 rho) = ((1 : F) * rho 104181)

def relationRow6656 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104180) * ((1 : F) * rho 104181) = ((1 : F) * rho 104182)

def relationRow6657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104183) * ((1 : F) + (1 : F) * rho 104182) = ((1 : F) * rho 104180 + (1 : F) * rho 104181)

def relationRow6658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104184) * ((1 : F) + (-1 : F) * rho 104182) = ((1 : F) * rho 104179 + (-1 : F) * rho 104180 + (-1 : F) * rho 104181)

def relationLc2992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 76⟩], residual := [((1 : F), 104183)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103022) * (relationLc2992 rho) = ((1 : F) * rho 104185)

def relationLc2993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 76⟩], residual := [((1 : F), 104184)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103022) * (relationLc2993 rho) = ((1 : F) * rho 104186)

def relationRow6661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104177) * ((1 : F) * rho 104178) = ((1 : F) * rho 104187)

def relationRow6662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104177) * ((1 : F) * rho 104177) = ((1 : F) * rho 104188)

def relationRow6663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104178) * ((1 : F) * rho 104178) = ((1 : F) * rho 104189)

def relationRow6664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104190) * ((-1 : F) * rho 104188 + (1 : F) * rho 104189) = ((2 : F) * rho 104187)

def relationRow6665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104191) * ((2 : F) + (1 : F) * rho 104188 + (-1 : F) * rho 104189) = ((1 : F) * rho 104188 + (1 : F) * rho 104189)

def relationLc2994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 77⟩, ⟨(1 : F), 103198, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104190 + (1 : F) * rho 104191) * (relationLc2994 rho) = ((1 : F) * rho 104192)

def relationLc2995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104191) * (relationLc2995 rho) = ((1 : F) * rho 104193)

def relationLc2996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104190) * (relationLc2996 rho) = ((1 : F) * rho 104194)

def relationRow6669 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104193) * ((1 : F) * rho 104194) = ((1 : F) * rho 104195)

def relationRow6670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104196) * ((1 : F) + (1 : F) * rho 104195) = ((1 : F) * rho 104193 + (1 : F) * rho 104194)

def relationRow6671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104197) * ((1 : F) + (-1 : F) * rho 104195) = ((1 : F) * rho 104192 + (-1 : F) * rho 104193 + (-1 : F) * rho 104194)

def relationLc2997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 77⟩], residual := [((1 : F), 104196)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103023) * (relationLc2997 rho) = ((1 : F) * rho 104198)

def relationLc2998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 77⟩], residual := [((1 : F), 104197)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103023) * (relationLc2998 rho) = ((1 : F) * rho 104199)

def relationRow6674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104190) * ((1 : F) * rho 104191) = ((1 : F) * rho 104200)

def relationRow6675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104190) * ((1 : F) * rho 104190) = ((1 : F) * rho 104201)

def relationRow6676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104191) * ((1 : F) * rho 104191) = ((1 : F) * rho 104202)

def relationRow6677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104203) * ((-1 : F) * rho 104201 + (1 : F) * rho 104202) = ((2 : F) * rho 104200)

def relationRow6678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104204) * ((2 : F) + (1 : F) * rho 104201 + (-1 : F) * rho 104202) = ((1 : F) * rho 104201 + (1 : F) * rho 104202)

def relationLc2999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 78⟩, ⟨(1 : F), 103198, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104203 + (1 : F) * rho 104204) * (relationLc2999 rho) = ((1 : F) * rho 104205)

def relationLc3000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104204) * (relationLc3000 rho) = ((1 : F) * rho 104206)

def relationLc3001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104203) * (relationLc3001 rho) = ((1 : F) * rho 104207)

def relationRow6682 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104206) * ((1 : F) * rho 104207) = ((1 : F) * rho 104208)

def relationRow6683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104209) * ((1 : F) + (1 : F) * rho 104208) = ((1 : F) * rho 104206 + (1 : F) * rho 104207)

def relationRow6684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104210) * ((1 : F) + (-1 : F) * rho 104208) = ((1 : F) * rho 104205 + (-1 : F) * rho 104206 + (-1 : F) * rho 104207)

def relationLc3002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 78⟩], residual := [((1 : F), 104209)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103024) * (relationLc3002 rho) = ((1 : F) * rho 104211)

def relationLc3003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 78⟩], residual := [((1 : F), 104210)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103024) * (relationLc3003 rho) = ((1 : F) * rho 104212)

def relationRow6687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104203) * ((1 : F) * rho 104204) = ((1 : F) * rho 104213)

def relationRow6688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104203) * ((1 : F) * rho 104203) = ((1 : F) * rho 104214)

def relationRow6689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104204) * ((1 : F) * rho 104204) = ((1 : F) * rho 104215)

def relationRow6690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104216) * ((-1 : F) * rho 104214 + (1 : F) * rho 104215) = ((2 : F) * rho 104213)

def relationRow6691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104217) * ((2 : F) + (1 : F) * rho 104214 + (-1 : F) * rho 104215) = ((1 : F) * rho 104214 + (1 : F) * rho 104215)

def relationLc3004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 79⟩, ⟨(1 : F), 103198, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104216 + (1 : F) * rho 104217) * (relationLc3004 rho) = ((1 : F) * rho 104218)

def relationLc3005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104217) * (relationLc3005 rho) = ((1 : F) * rho 104219)

def relationLc3006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104216) * (relationLc3006 rho) = ((1 : F) * rho 104220)

def relationRow6695 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104219) * ((1 : F) * rho 104220) = ((1 : F) * rho 104221)

def relationRow6696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104222) * ((1 : F) + (1 : F) * rho 104221) = ((1 : F) * rho 104219 + (1 : F) * rho 104220)

def relationRow6697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104223) * ((1 : F) + (-1 : F) * rho 104221) = ((1 : F) * rho 104218 + (-1 : F) * rho 104219 + (-1 : F) * rho 104220)

def relationLc3007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 79⟩], residual := [((1 : F), 104222)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103025) * (relationLc3007 rho) = ((1 : F) * rho 104224)

def relationLc3008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 79⟩], residual := [((1 : F), 104223)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103025) * (relationLc3008 rho) = ((1 : F) * rho 104225)

def relationRow6700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104216) * ((1 : F) * rho 104217) = ((1 : F) * rho 104226)

def relationRow6701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104216) * ((1 : F) * rho 104216) = ((1 : F) * rho 104227)

def relationRow6702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104217) * ((1 : F) * rho 104217) = ((1 : F) * rho 104228)

def relationRow6703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104229) * ((-1 : F) * rho 104227 + (1 : F) * rho 104228) = ((2 : F) * rho 104226)

def relationRow6704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104230) * ((2 : F) + (1 : F) * rho 104227 + (-1 : F) * rho 104228) = ((1 : F) * rho 104227 + (1 : F) * rho 104228)

def relationLc3009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 80⟩, ⟨(1 : F), 103198, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104229 + (1 : F) * rho 104230) * (relationLc3009 rho) = ((1 : F) * rho 104231)

def relationLc3010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104230) * (relationLc3010 rho) = ((1 : F) * rho 104232)

def relationLc3011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104229) * (relationLc3011 rho) = ((1 : F) * rho 104233)

def relationRow6708 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104232) * ((1 : F) * rho 104233) = ((1 : F) * rho 104234)

def relationRow6709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104235) * ((1 : F) + (1 : F) * rho 104234) = ((1 : F) * rho 104232 + (1 : F) * rho 104233)

def relationRow6710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104236) * ((1 : F) + (-1 : F) * rho 104234) = ((1 : F) * rho 104231 + (-1 : F) * rho 104232 + (-1 : F) * rho 104233)

def relationLc3012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 80⟩], residual := [((1 : F), 104235)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103026) * (relationLc3012 rho) = ((1 : F) * rho 104237)

def relationLc3013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 80⟩], residual := [((1 : F), 104236)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103026) * (relationLc3013 rho) = ((1 : F) * rho 104238)

def relationRow6713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104229) * ((1 : F) * rho 104230) = ((1 : F) * rho 104239)

def relationRow6714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104229) * ((1 : F) * rho 104229) = ((1 : F) * rho 104240)

def relationRow6715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104230) * ((1 : F) * rho 104230) = ((1 : F) * rho 104241)

def relationRow6716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104242) * ((-1 : F) * rho 104240 + (1 : F) * rho 104241) = ((2 : F) * rho 104239)

def relationRow6717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104243) * ((2 : F) + (1 : F) * rho 104240 + (-1 : F) * rho 104241) = ((1 : F) * rho 104240 + (1 : F) * rho 104241)

def relationLc3014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 81⟩, ⟨(1 : F), 103198, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104242 + (1 : F) * rho 104243) * (relationLc3014 rho) = ((1 : F) * rho 104244)

def relationLc3015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104243) * (relationLc3015 rho) = ((1 : F) * rho 104245)

def relationLc3016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104242) * (relationLc3016 rho) = ((1 : F) * rho 104246)

def relationRow6721 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104245) * ((1 : F) * rho 104246) = ((1 : F) * rho 104247)

def relationRow6722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104248) * ((1 : F) + (1 : F) * rho 104247) = ((1 : F) * rho 104245 + (1 : F) * rho 104246)

def relationRow6723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104249) * ((1 : F) + (-1 : F) * rho 104247) = ((1 : F) * rho 104244 + (-1 : F) * rho 104245 + (-1 : F) * rho 104246)

def relationLc3017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 81⟩], residual := [((1 : F), 104248)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103027) * (relationLc3017 rho) = ((1 : F) * rho 104250)

def relationLc3018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 81⟩], residual := [((1 : F), 104249)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103027) * (relationLc3018 rho) = ((1 : F) * rho 104251)

def relationRow6726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104242) * ((1 : F) * rho 104243) = ((1 : F) * rho 104252)

def relationRow6727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104242) * ((1 : F) * rho 104242) = ((1 : F) * rho 104253)

def relationRow6728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104243) * ((1 : F) * rho 104243) = ((1 : F) * rho 104254)

def relationRow6729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104255) * ((-1 : F) * rho 104253 + (1 : F) * rho 104254) = ((2 : F) * rho 104252)

def relationRow6730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104256) * ((2 : F) + (1 : F) * rho 104253 + (-1 : F) * rho 104254) = ((1 : F) * rho 104253 + (1 : F) * rho 104254)

def relationLc3019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 82⟩, ⟨(1 : F), 103198, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104255 + (1 : F) * rho 104256) * (relationLc3019 rho) = ((1 : F) * rho 104257)

def relationLc3020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104256) * (relationLc3020 rho) = ((1 : F) * rho 104258)

def relationLc3021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104255) * (relationLc3021 rho) = ((1 : F) * rho 104259)

def relationRow6734 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104258) * ((1 : F) * rho 104259) = ((1 : F) * rho 104260)

def relationRow6735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104261) * ((1 : F) + (1 : F) * rho 104260) = ((1 : F) * rho 104258 + (1 : F) * rho 104259)

def relationRow6736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104262) * ((1 : F) + (-1 : F) * rho 104260) = ((1 : F) * rho 104257 + (-1 : F) * rho 104258 + (-1 : F) * rho 104259)

def relationLc3022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 82⟩], residual := [((1 : F), 104261)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103028) * (relationLc3022 rho) = ((1 : F) * rho 104263)

def relationLc3023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 82⟩], residual := [((1 : F), 104262)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103028) * (relationLc3023 rho) = ((1 : F) * rho 104264)

def relationRow6739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104255) * ((1 : F) * rho 104256) = ((1 : F) * rho 104265)

def relationRow6740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104255) * ((1 : F) * rho 104255) = ((1 : F) * rho 104266)

def relationRow6741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104256) * ((1 : F) * rho 104256) = ((1 : F) * rho 104267)

def relationRow6742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104268) * ((-1 : F) * rho 104266 + (1 : F) * rho 104267) = ((2 : F) * rho 104265)

def relationRow6743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104269) * ((2 : F) + (1 : F) * rho 104266 + (-1 : F) * rho 104267) = ((1 : F) * rho 104266 + (1 : F) * rho 104267)

def relationLc3024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 83⟩, ⟨(1 : F), 103198, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104268 + (1 : F) * rho 104269) * (relationLc3024 rho) = ((1 : F) * rho 104270)

def relationLc3025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104269) * (relationLc3025 rho) = ((1 : F) * rho 104271)

def relationLc3026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104268) * (relationLc3026 rho) = ((1 : F) * rho 104272)

def relationRow6747 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104271) * ((1 : F) * rho 104272) = ((1 : F) * rho 104273)

def relationRow6748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104274) * ((1 : F) + (1 : F) * rho 104273) = ((1 : F) * rho 104271 + (1 : F) * rho 104272)

def relationRow6749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104275) * ((1 : F) + (-1 : F) * rho 104273) = ((1 : F) * rho 104270 + (-1 : F) * rho 104271 + (-1 : F) * rho 104272)

def relationLc3027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 83⟩], residual := [((1 : F), 104274)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103029) * (relationLc3027 rho) = ((1 : F) * rho 104276)

def relationLc3028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 83⟩], residual := [((1 : F), 104275)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103029) * (relationLc3028 rho) = ((1 : F) * rho 104277)

def relationRow6752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104268) * ((1 : F) * rho 104269) = ((1 : F) * rho 104278)

def relationRow6753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104268) * ((1 : F) * rho 104268) = ((1 : F) * rho 104279)

def relationRow6754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104269) * ((1 : F) * rho 104269) = ((1 : F) * rho 104280)

def relationRow6755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104281) * ((-1 : F) * rho 104279 + (1 : F) * rho 104280) = ((2 : F) * rho 104278)

def relationRow6756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104282) * ((2 : F) + (1 : F) * rho 104279 + (-1 : F) * rho 104280) = ((1 : F) * rho 104279 + (1 : F) * rho 104280)

def relationLc3029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 84⟩, ⟨(1 : F), 103198, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104281 + (1 : F) * rho 104282) * (relationLc3029 rho) = ((1 : F) * rho 104283)

def relationLc3030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104282) * (relationLc3030 rho) = ((1 : F) * rho 104284)

def relationLc3031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104281) * (relationLc3031 rho) = ((1 : F) * rho 104285)

def relationRow6760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104284) * ((1 : F) * rho 104285) = ((1 : F) * rho 104286)

def relationRow6761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104287) * ((1 : F) + (1 : F) * rho 104286) = ((1 : F) * rho 104284 + (1 : F) * rho 104285)

def relationRow6762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104288) * ((1 : F) + (-1 : F) * rho 104286) = ((1 : F) * rho 104283 + (-1 : F) * rho 104284 + (-1 : F) * rho 104285)

def relationLc3032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 84⟩], residual := [((1 : F), 104287)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103030) * (relationLc3032 rho) = ((1 : F) * rho 104289)

def relationLc3033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 84⟩], residual := [((1 : F), 104288)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103030) * (relationLc3033 rho) = ((1 : F) * rho 104290)

def relationRow6765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104281) * ((1 : F) * rho 104282) = ((1 : F) * rho 104291)

def relationRow6766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104281) * ((1 : F) * rho 104281) = ((1 : F) * rho 104292)

def relationRow6767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104282) * ((1 : F) * rho 104282) = ((1 : F) * rho 104293)

def relationRow6768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104294) * ((-1 : F) * rho 104292 + (1 : F) * rho 104293) = ((2 : F) * rho 104291)

def relationRow6769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104295) * ((2 : F) + (1 : F) * rho 104292 + (-1 : F) * rho 104293) = ((1 : F) * rho 104292 + (1 : F) * rho 104293)

def relationLc3034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 85⟩, ⟨(1 : F), 103198, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104294 + (1 : F) * rho 104295) * (relationLc3034 rho) = ((1 : F) * rho 104296)

def relationLc3035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104295) * (relationLc3035 rho) = ((1 : F) * rho 104297)

def relationLc3036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104294) * (relationLc3036 rho) = ((1 : F) * rho 104298)

def relationRow6773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104297) * ((1 : F) * rho 104298) = ((1 : F) * rho 104299)

def relationRow6774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104300) * ((1 : F) + (1 : F) * rho 104299) = ((1 : F) * rho 104297 + (1 : F) * rho 104298)

def relationRow6775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104301) * ((1 : F) + (-1 : F) * rho 104299) = ((1 : F) * rho 104296 + (-1 : F) * rho 104297 + (-1 : F) * rho 104298)

def relationLc3037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 85⟩], residual := [((1 : F), 104300)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103031) * (relationLc3037 rho) = ((1 : F) * rho 104302)

def relationLc3038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 85⟩], residual := [((1 : F), 104301)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103031) * (relationLc3038 rho) = ((1 : F) * rho 104303)

def relationRow6778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104294) * ((1 : F) * rho 104295) = ((1 : F) * rho 104304)

def relationRow6779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104294) * ((1 : F) * rho 104294) = ((1 : F) * rho 104305)

def relationRow6780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104295) * ((1 : F) * rho 104295) = ((1 : F) * rho 104306)

def relationRow6781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104307) * ((-1 : F) * rho 104305 + (1 : F) * rho 104306) = ((2 : F) * rho 104304)

def relationRow6782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104308) * ((2 : F) + (1 : F) * rho 104305 + (-1 : F) * rho 104306) = ((1 : F) * rho 104305 + (1 : F) * rho 104306)

def relationLc3039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 86⟩, ⟨(1 : F), 103198, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104307 + (1 : F) * rho 104308) * (relationLc3039 rho) = ((1 : F) * rho 104309)

def relationLc3040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104308) * (relationLc3040 rho) = ((1 : F) * rho 104310)

def relationLc3041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104307) * (relationLc3041 rho) = ((1 : F) * rho 104311)

def relationRow6786 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104310) * ((1 : F) * rho 104311) = ((1 : F) * rho 104312)

def relationRow6787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104313) * ((1 : F) + (1 : F) * rho 104312) = ((1 : F) * rho 104310 + (1 : F) * rho 104311)

def relationRow6788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104314) * ((1 : F) + (-1 : F) * rho 104312) = ((1 : F) * rho 104309 + (-1 : F) * rho 104310 + (-1 : F) * rho 104311)

def relationLc3042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 86⟩], residual := [((1 : F), 104313)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103032) * (relationLc3042 rho) = ((1 : F) * rho 104315)

def relationLc3043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 86⟩], residual := [((1 : F), 104314)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103032) * (relationLc3043 rho) = ((1 : F) * rho 104316)

def relationRow6791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104307) * ((1 : F) * rho 104308) = ((1 : F) * rho 104317)

def relationRow6792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104307) * ((1 : F) * rho 104307) = ((1 : F) * rho 104318)

def relationRow6793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104308) * ((1 : F) * rho 104308) = ((1 : F) * rho 104319)

def relationRow6794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104320) * ((-1 : F) * rho 104318 + (1 : F) * rho 104319) = ((2 : F) * rho 104317)

def relationRow6795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104321) * ((2 : F) + (1 : F) * rho 104318 + (-1 : F) * rho 104319) = ((1 : F) * rho 104318 + (1 : F) * rho 104319)

def relationLc3044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 87⟩, ⟨(1 : F), 103198, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104320 + (1 : F) * rho 104321) * (relationLc3044 rho) = ((1 : F) * rho 104322)

def relationLc3045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 103197, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104321) * (relationLc3045 rho) = ((1 : F) * rho 104323)

def relationLc3046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103198, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104320) * (relationLc3046 rho) = ((1 : F) * rho 104324)

def relationRow6799 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 104323) * ((1 : F) * rho 104324) = ((1 : F) * rho 104325)

def relationRow6800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104326) * ((1 : F) + (1 : F) * rho 104325) = ((1 : F) * rho 104323 + (1 : F) * rho 104324)

def relationRow6801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104327) * ((1 : F) + (-1 : F) * rho 104325) = ((1 : F) * rho 104322 + (-1 : F) * rho 104323 + (-1 : F) * rho 104324)

def relationLc3047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 103197, 13, 87⟩], residual := [((1 : F), 104326)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103033) * (relationLc3047 rho) = ((1 : F) * rho 104328)

def relationLc3048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 103198, 13, 87⟩], residual := [((1 : F), 104327)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103033) * (relationLc3048 rho) = ((1 : F) * rho 104329)

def relationRow6804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104320) * ((1 : F) * rho 104321) = ((1 : F) * rho 104330)

def relationRow6805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104320) * ((1 : F) * rho 104320) = ((1 : F) * rho 104331)

def relationRow6806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104321) * ((1 : F) * rho 104321) = ((1 : F) * rho 104332)

def relationRow6807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104333) * ((-1 : F) * rho 104331 + (1 : F) * rho 104332) = ((2 : F) * rho 104330)

def relationRow6808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104334) * ((2 : F) + (1 : F) * rho 104331 + (-1 : F) * rho 104332) = ((1 : F) * rho 104331 + (1 : F) * rho 104332)

def relationLc3049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 103197, 13, 88⟩, ⟨(1 : F), 103198, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104333 + (1 : F) * rho 104334) * (relationLc3049 rho) = ((1 : F) * rho 104335)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107
