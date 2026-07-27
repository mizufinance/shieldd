import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationLc3026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113297) * (relationLc3026 rho) = ((1 : F) * rho 113301)

def relationRow6747 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113300) * ((1 : F) * rho 113301) = ((1 : F) * rho 113302)

def relationRow6748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113303) * ((1 : F) + (1 : F) * rho 113302) = ((1 : F) * rho 113300 + (1 : F) * rho 113301)

def relationRow6749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113304) * ((1 : F) + (-1 : F) * rho 113302) = ((1 : F) * rho 113299 + (-1 : F) * rho 113300 + (-1 : F) * rho 113301)

def relationLc3027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 83⟩], residual := [((1 : F), 113303)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112058) * (relationLc3027 rho) = ((1 : F) * rho 113305)

def relationLc3028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 83⟩], residual := [((1 : F), 113304)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112058) * (relationLc3028 rho) = ((1 : F) * rho 113306)

def relationRow6752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113297) * ((1 : F) * rho 113298) = ((1 : F) * rho 113307)

def relationRow6753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113297) * ((1 : F) * rho 113297) = ((1 : F) * rho 113308)

def relationRow6754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113298) * ((1 : F) * rho 113298) = ((1 : F) * rho 113309)

def relationRow6755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113310) * ((-1 : F) * rho 113308 + (1 : F) * rho 113309) = ((2 : F) * rho 113307)

def relationRow6756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113311) * ((2 : F) + (1 : F) * rho 113308 + (-1 : F) * rho 113309) = ((1 : F) * rho 113308 + (1 : F) * rho 113309)

def relationLc3029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 84⟩, ⟨(1 : F), 112227, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113310 + (1 : F) * rho 113311) * (relationLc3029 rho) = ((1 : F) * rho 113312)

def relationLc3030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113311) * (relationLc3030 rho) = ((1 : F) * rho 113313)

def relationLc3031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113310) * (relationLc3031 rho) = ((1 : F) * rho 113314)

def relationRow6760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113313) * ((1 : F) * rho 113314) = ((1 : F) * rho 113315)

def relationRow6761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113316) * ((1 : F) + (1 : F) * rho 113315) = ((1 : F) * rho 113313 + (1 : F) * rho 113314)

def relationRow6762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113317) * ((1 : F) + (-1 : F) * rho 113315) = ((1 : F) * rho 113312 + (-1 : F) * rho 113313 + (-1 : F) * rho 113314)

def relationLc3032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 84⟩], residual := [((1 : F), 113316)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112059) * (relationLc3032 rho) = ((1 : F) * rho 113318)

def relationLc3033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 84⟩], residual := [((1 : F), 113317)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112059) * (relationLc3033 rho) = ((1 : F) * rho 113319)

def relationRow6765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113310) * ((1 : F) * rho 113311) = ((1 : F) * rho 113320)

def relationRow6766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113310) * ((1 : F) * rho 113310) = ((1 : F) * rho 113321)

def relationRow6767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113311) * ((1 : F) * rho 113311) = ((1 : F) * rho 113322)

def relationRow6768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113323) * ((-1 : F) * rho 113321 + (1 : F) * rho 113322) = ((2 : F) * rho 113320)

def relationRow6769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113324) * ((2 : F) + (1 : F) * rho 113321 + (-1 : F) * rho 113322) = ((1 : F) * rho 113321 + (1 : F) * rho 113322)

def relationLc3034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 85⟩, ⟨(1 : F), 112227, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113323 + (1 : F) * rho 113324) * (relationLc3034 rho) = ((1 : F) * rho 113325)

def relationLc3035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113324) * (relationLc3035 rho) = ((1 : F) * rho 113326)

def relationLc3036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113323) * (relationLc3036 rho) = ((1 : F) * rho 113327)

def relationRow6773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113326) * ((1 : F) * rho 113327) = ((1 : F) * rho 113328)

def relationRow6774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113329) * ((1 : F) + (1 : F) * rho 113328) = ((1 : F) * rho 113326 + (1 : F) * rho 113327)

def relationRow6775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113330) * ((1 : F) + (-1 : F) * rho 113328) = ((1 : F) * rho 113325 + (-1 : F) * rho 113326 + (-1 : F) * rho 113327)

def relationLc3037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 85⟩], residual := [((1 : F), 113329)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112060) * (relationLc3037 rho) = ((1 : F) * rho 113331)

def relationLc3038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 85⟩], residual := [((1 : F), 113330)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112060) * (relationLc3038 rho) = ((1 : F) * rho 113332)

def relationRow6778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113323) * ((1 : F) * rho 113324) = ((1 : F) * rho 113333)

def relationRow6779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113323) * ((1 : F) * rho 113323) = ((1 : F) * rho 113334)

def relationRow6780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113324) * ((1 : F) * rho 113324) = ((1 : F) * rho 113335)

def relationRow6781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113336) * ((-1 : F) * rho 113334 + (1 : F) * rho 113335) = ((2 : F) * rho 113333)

def relationRow6782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113337) * ((2 : F) + (1 : F) * rho 113334 + (-1 : F) * rho 113335) = ((1 : F) * rho 113334 + (1 : F) * rho 113335)

def relationLc3039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 86⟩, ⟨(1 : F), 112227, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113336 + (1 : F) * rho 113337) * (relationLc3039 rho) = ((1 : F) * rho 113338)

def relationLc3040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113337) * (relationLc3040 rho) = ((1 : F) * rho 113339)

def relationLc3041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113336) * (relationLc3041 rho) = ((1 : F) * rho 113340)

def relationRow6786 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113339) * ((1 : F) * rho 113340) = ((1 : F) * rho 113341)

def relationRow6787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113342) * ((1 : F) + (1 : F) * rho 113341) = ((1 : F) * rho 113339 + (1 : F) * rho 113340)

def relationRow6788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113343) * ((1 : F) + (-1 : F) * rho 113341) = ((1 : F) * rho 113338 + (-1 : F) * rho 113339 + (-1 : F) * rho 113340)

def relationLc3042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 86⟩], residual := [((1 : F), 113342)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112061) * (relationLc3042 rho) = ((1 : F) * rho 113344)

def relationLc3043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 86⟩], residual := [((1 : F), 113343)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112061) * (relationLc3043 rho) = ((1 : F) * rho 113345)

def relationRow6791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113336) * ((1 : F) * rho 113337) = ((1 : F) * rho 113346)

def relationRow6792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113336) * ((1 : F) * rho 113336) = ((1 : F) * rho 113347)

def relationRow6793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113337) * ((1 : F) * rho 113337) = ((1 : F) * rho 113348)

def relationRow6794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113349) * ((-1 : F) * rho 113347 + (1 : F) * rho 113348) = ((2 : F) * rho 113346)

def relationRow6795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113350) * ((2 : F) + (1 : F) * rho 113347 + (-1 : F) * rho 113348) = ((1 : F) * rho 113347 + (1 : F) * rho 113348)

def relationLc3044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 87⟩, ⟨(1 : F), 112227, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113349 + (1 : F) * rho 113350) * (relationLc3044 rho) = ((1 : F) * rho 113351)

def relationLc3045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113350) * (relationLc3045 rho) = ((1 : F) * rho 113352)

def relationLc3046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113349) * (relationLc3046 rho) = ((1 : F) * rho 113353)

def relationRow6799 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113352) * ((1 : F) * rho 113353) = ((1 : F) * rho 113354)

def relationRow6800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113355) * ((1 : F) + (1 : F) * rho 113354) = ((1 : F) * rho 113352 + (1 : F) * rho 113353)

def relationRow6801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113356) * ((1 : F) + (-1 : F) * rho 113354) = ((1 : F) * rho 113351 + (-1 : F) * rho 113352 + (-1 : F) * rho 113353)

def relationLc3047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 87⟩], residual := [((1 : F), 113355)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112062) * (relationLc3047 rho) = ((1 : F) * rho 113357)

def relationLc3048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 87⟩], residual := [((1 : F), 113356)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112062) * (relationLc3048 rho) = ((1 : F) * rho 113358)

def relationRow6804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113349) * ((1 : F) * rho 113350) = ((1 : F) * rho 113359)

def relationRow6805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113349) * ((1 : F) * rho 113349) = ((1 : F) * rho 113360)

def relationRow6806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113350) * ((1 : F) * rho 113350) = ((1 : F) * rho 113361)

def relationRow6807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113362) * ((-1 : F) * rho 113360 + (1 : F) * rho 113361) = ((2 : F) * rho 113359)

def relationRow6808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113363) * ((2 : F) + (1 : F) * rho 113360 + (-1 : F) * rho 113361) = ((1 : F) * rho 113360 + (1 : F) * rho 113361)

def relationLc3049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 88⟩, ⟨(1 : F), 112227, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113362 + (1 : F) * rho 113363) * (relationLc3049 rho) = ((1 : F) * rho 113364)

def relationLc3050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113363) * (relationLc3050 rho) = ((1 : F) * rho 113365)

def relationLc3051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113362) * (relationLc3051 rho) = ((1 : F) * rho 113366)

def relationRow6812 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113365) * ((1 : F) * rho 113366) = ((1 : F) * rho 113367)

def relationRow6813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113368) * ((1 : F) + (1 : F) * rho 113367) = ((1 : F) * rho 113365 + (1 : F) * rho 113366)

def relationRow6814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113369) * ((1 : F) + (-1 : F) * rho 113367) = ((1 : F) * rho 113364 + (-1 : F) * rho 113365 + (-1 : F) * rho 113366)

def relationLc3052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 88⟩], residual := [((1 : F), 113368)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112063) * (relationLc3052 rho) = ((1 : F) * rho 113370)

def relationLc3053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 88⟩], residual := [((1 : F), 113369)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112063) * (relationLc3053 rho) = ((1 : F) * rho 113371)

def relationRow6817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113362) * ((1 : F) * rho 113363) = ((1 : F) * rho 113372)

def relationRow6818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113362) * ((1 : F) * rho 113362) = ((1 : F) * rho 113373)

def relationRow6819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113363) * ((1 : F) * rho 113363) = ((1 : F) * rho 113374)

def relationRow6820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113375) * ((-1 : F) * rho 113373 + (1 : F) * rho 113374) = ((2 : F) * rho 113372)

def relationRow6821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113376) * ((2 : F) + (1 : F) * rho 113373 + (-1 : F) * rho 113374) = ((1 : F) * rho 113373 + (1 : F) * rho 113374)

def relationLc3054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 89⟩, ⟨(1 : F), 112227, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113375 + (1 : F) * rho 113376) * (relationLc3054 rho) = ((1 : F) * rho 113377)

def relationLc3055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113376) * (relationLc3055 rho) = ((1 : F) * rho 113378)

def relationLc3056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113375) * (relationLc3056 rho) = ((1 : F) * rho 113379)

def relationRow6825 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113378) * ((1 : F) * rho 113379) = ((1 : F) * rho 113380)

def relationRow6826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113381) * ((1 : F) + (1 : F) * rho 113380) = ((1 : F) * rho 113378 + (1 : F) * rho 113379)

def relationRow6827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113382) * ((1 : F) + (-1 : F) * rho 113380) = ((1 : F) * rho 113377 + (-1 : F) * rho 113378 + (-1 : F) * rho 113379)

def relationLc3057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 89⟩], residual := [((1 : F), 113381)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112064) * (relationLc3057 rho) = ((1 : F) * rho 113383)

def relationLc3058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 89⟩], residual := [((1 : F), 113382)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112064) * (relationLc3058 rho) = ((1 : F) * rho 113384)

def relationRow6830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113375) * ((1 : F) * rho 113376) = ((1 : F) * rho 113385)

def relationRow6831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113375) * ((1 : F) * rho 113375) = ((1 : F) * rho 113386)

def relationRow6832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113376) * ((1 : F) * rho 113376) = ((1 : F) * rho 113387)

def relationRow6833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113388) * ((-1 : F) * rho 113386 + (1 : F) * rho 113387) = ((2 : F) * rho 113385)

def relationRow6834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113389) * ((2 : F) + (1 : F) * rho 113386 + (-1 : F) * rho 113387) = ((1 : F) * rho 113386 + (1 : F) * rho 113387)

def relationLc3059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 90⟩, ⟨(1 : F), 112227, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113388 + (1 : F) * rho 113389) * (relationLc3059 rho) = ((1 : F) * rho 113390)

def relationLc3060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113389) * (relationLc3060 rho) = ((1 : F) * rho 113391)

def relationLc3061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113388) * (relationLc3061 rho) = ((1 : F) * rho 113392)

def relationRow6838 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113391) * ((1 : F) * rho 113392) = ((1 : F) * rho 113393)

def relationRow6839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113394) * ((1 : F) + (1 : F) * rho 113393) = ((1 : F) * rho 113391 + (1 : F) * rho 113392)

def relationRow6840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113395) * ((1 : F) + (-1 : F) * rho 113393) = ((1 : F) * rho 113390 + (-1 : F) * rho 113391 + (-1 : F) * rho 113392)

def relationLc3062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 90⟩], residual := [((1 : F), 113394)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112065) * (relationLc3062 rho) = ((1 : F) * rho 113396)

def relationLc3063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 90⟩], residual := [((1 : F), 113395)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112065) * (relationLc3063 rho) = ((1 : F) * rho 113397)

def relationRow6843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113388) * ((1 : F) * rho 113389) = ((1 : F) * rho 113398)

def relationRow6844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113388) * ((1 : F) * rho 113388) = ((1 : F) * rho 113399)

def relationRow6845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113389) * ((1 : F) * rho 113389) = ((1 : F) * rho 113400)

def relationRow6846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113401) * ((-1 : F) * rho 113399 + (1 : F) * rho 113400) = ((2 : F) * rho 113398)

def relationRow6847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113402) * ((2 : F) + (1 : F) * rho 113399 + (-1 : F) * rho 113400) = ((1 : F) * rho 113399 + (1 : F) * rho 113400)

def relationLc3064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 91⟩, ⟨(1 : F), 112227, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113401 + (1 : F) * rho 113402) * (relationLc3064 rho) = ((1 : F) * rho 113403)

def relationLc3065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113402) * (relationLc3065 rho) = ((1 : F) * rho 113404)

def relationLc3066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113401) * (relationLc3066 rho) = ((1 : F) * rho 113405)

def relationRow6851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113404) * ((1 : F) * rho 113405) = ((1 : F) * rho 113406)

def relationRow6852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113407) * ((1 : F) + (1 : F) * rho 113406) = ((1 : F) * rho 113404 + (1 : F) * rho 113405)

def relationRow6853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113408) * ((1 : F) + (-1 : F) * rho 113406) = ((1 : F) * rho 113403 + (-1 : F) * rho 113404 + (-1 : F) * rho 113405)

def relationLc3067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 91⟩], residual := [((1 : F), 113407)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112066) * (relationLc3067 rho) = ((1 : F) * rho 113409)

def relationLc3068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 91⟩], residual := [((1 : F), 113408)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112066) * (relationLc3068 rho) = ((1 : F) * rho 113410)

def relationRow6856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113401) * ((1 : F) * rho 113402) = ((1 : F) * rho 113411)

def relationRow6857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113401) * ((1 : F) * rho 113401) = ((1 : F) * rho 113412)

def relationRow6858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113402) * ((1 : F) * rho 113402) = ((1 : F) * rho 113413)

def relationRow6859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113414) * ((-1 : F) * rho 113412 + (1 : F) * rho 113413) = ((2 : F) * rho 113411)

def relationRow6860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113415) * ((2 : F) + (1 : F) * rho 113412 + (-1 : F) * rho 113413) = ((1 : F) * rho 113412 + (1 : F) * rho 113413)

def relationLc3069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 92⟩, ⟨(1 : F), 112227, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113414 + (1 : F) * rho 113415) * (relationLc3069 rho) = ((1 : F) * rho 113416)

def relationLc3070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113415) * (relationLc3070 rho) = ((1 : F) * rho 113417)

def relationLc3071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113414) * (relationLc3071 rho) = ((1 : F) * rho 113418)

def relationRow6864 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113417) * ((1 : F) * rho 113418) = ((1 : F) * rho 113419)

def relationRow6865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113420) * ((1 : F) + (1 : F) * rho 113419) = ((1 : F) * rho 113417 + (1 : F) * rho 113418)

def relationRow6866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113421) * ((1 : F) + (-1 : F) * rho 113419) = ((1 : F) * rho 113416 + (-1 : F) * rho 113417 + (-1 : F) * rho 113418)

def relationLc3072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 92⟩], residual := [((1 : F), 113420)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112067) * (relationLc3072 rho) = ((1 : F) * rho 113422)

def relationLc3073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 92⟩], residual := [((1 : F), 113421)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112067) * (relationLc3073 rho) = ((1 : F) * rho 113423)

def relationRow6869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113414) * ((1 : F) * rho 113415) = ((1 : F) * rho 113424)

def relationRow6870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113414) * ((1 : F) * rho 113414) = ((1 : F) * rho 113425)

def relationRow6871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113415) * ((1 : F) * rho 113415) = ((1 : F) * rho 113426)

def relationRow6872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113427) * ((-1 : F) * rho 113425 + (1 : F) * rho 113426) = ((2 : F) * rho 113424)

def relationRow6873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113428) * ((2 : F) + (1 : F) * rho 113425 + (-1 : F) * rho 113426) = ((1 : F) * rho 113425 + (1 : F) * rho 113426)

def relationLc3074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 93⟩, ⟨(1 : F), 112227, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113427 + (1 : F) * rho 113428) * (relationLc3074 rho) = ((1 : F) * rho 113429)

def relationLc3075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113428) * (relationLc3075 rho) = ((1 : F) * rho 113430)

def relationLc3076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113427) * (relationLc3076 rho) = ((1 : F) * rho 113431)

def relationRow6877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113430) * ((1 : F) * rho 113431) = ((1 : F) * rho 113432)

def relationRow6878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113433) * ((1 : F) + (1 : F) * rho 113432) = ((1 : F) * rho 113430 + (1 : F) * rho 113431)

def relationRow6879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113434) * ((1 : F) + (-1 : F) * rho 113432) = ((1 : F) * rho 113429 + (-1 : F) * rho 113430 + (-1 : F) * rho 113431)

def relationLc3077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 93⟩], residual := [((1 : F), 113433)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112068) * (relationLc3077 rho) = ((1 : F) * rho 113435)

def relationLc3078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 93⟩], residual := [((1 : F), 113434)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112068) * (relationLc3078 rho) = ((1 : F) * rho 113436)

def relationRow6882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113427) * ((1 : F) * rho 113428) = ((1 : F) * rho 113437)

def relationRow6883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113427) * ((1 : F) * rho 113427) = ((1 : F) * rho 113438)

def relationRow6884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113428) * ((1 : F) * rho 113428) = ((1 : F) * rho 113439)

def relationRow6885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113440) * ((-1 : F) * rho 113438 + (1 : F) * rho 113439) = ((2 : F) * rho 113437)

def relationRow6886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113441) * ((2 : F) + (1 : F) * rho 113438 + (-1 : F) * rho 113439) = ((1 : F) * rho 113438 + (1 : F) * rho 113439)

def relationLc3079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 94⟩, ⟨(1 : F), 112227, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113440 + (1 : F) * rho 113441) * (relationLc3079 rho) = ((1 : F) * rho 113442)

def relationLc3080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113441) * (relationLc3080 rho) = ((1 : F) * rho 113443)

def relationLc3081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113440) * (relationLc3081 rho) = ((1 : F) * rho 113444)

def relationRow6890 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113443) * ((1 : F) * rho 113444) = ((1 : F) * rho 113445)

def relationRow6891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113446) * ((1 : F) + (1 : F) * rho 113445) = ((1 : F) * rho 113443 + (1 : F) * rho 113444)

def relationRow6892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113447) * ((1 : F) + (-1 : F) * rho 113445) = ((1 : F) * rho 113442 + (-1 : F) * rho 113443 + (-1 : F) * rho 113444)

def relationLc3082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 94⟩], residual := [((1 : F), 113446)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112069) * (relationLc3082 rho) = ((1 : F) * rho 113448)

def relationLc3083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 94⟩], residual := [((1 : F), 113447)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112069) * (relationLc3083 rho) = ((1 : F) * rho 113449)

def relationRow6895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113440) * ((1 : F) * rho 113441) = ((1 : F) * rho 113450)

def relationRow6896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113440) * ((1 : F) * rho 113440) = ((1 : F) * rho 113451)

def relationRow6897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113441) * ((1 : F) * rho 113441) = ((1 : F) * rho 113452)

def relationRow6898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113453) * ((-1 : F) * rho 113451 + (1 : F) * rho 113452) = ((2 : F) * rho 113450)

def relationRow6899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113454) * ((2 : F) + (1 : F) * rho 113451 + (-1 : F) * rho 113452) = ((1 : F) * rho 113451 + (1 : F) * rho 113452)

def relationLc3084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 95⟩, ⟨(1 : F), 112227, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113453 + (1 : F) * rho 113454) * (relationLc3084 rho) = ((1 : F) * rho 113455)

def relationLc3085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113454) * (relationLc3085 rho) = ((1 : F) * rho 113456)

def relationLc3086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113453) * (relationLc3086 rho) = ((1 : F) * rho 113457)

def relationRow6903 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113456) * ((1 : F) * rho 113457) = ((1 : F) * rho 113458)

def relationRow6904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113459) * ((1 : F) + (1 : F) * rho 113458) = ((1 : F) * rho 113456 + (1 : F) * rho 113457)

def relationRow6905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113460) * ((1 : F) + (-1 : F) * rho 113458) = ((1 : F) * rho 113455 + (-1 : F) * rho 113456 + (-1 : F) * rho 113457)

def relationLc3087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 95⟩], residual := [((1 : F), 113459)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112070) * (relationLc3087 rho) = ((1 : F) * rho 113461)

def relationLc3088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 95⟩], residual := [((1 : F), 113460)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112070) * (relationLc3088 rho) = ((1 : F) * rho 113462)

def relationRow6908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113453) * ((1 : F) * rho 113454) = ((1 : F) * rho 113463)

def relationRow6909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113453) * ((1 : F) * rho 113453) = ((1 : F) * rho 113464)

def relationRow6910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113454) * ((1 : F) * rho 113454) = ((1 : F) * rho 113465)

def relationRow6911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113466) * ((-1 : F) * rho 113464 + (1 : F) * rho 113465) = ((2 : F) * rho 113463)

def relationRow6912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113467) * ((2 : F) + (1 : F) * rho 113464 + (-1 : F) * rho 113465) = ((1 : F) * rho 113464 + (1 : F) * rho 113465)

def relationLc3089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 96⟩, ⟨(1 : F), 112227, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113466 + (1 : F) * rho 113467) * (relationLc3089 rho) = ((1 : F) * rho 113468)

def relationLc3090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113467) * (relationLc3090 rho) = ((1 : F) * rho 113469)

def relationLc3091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113466) * (relationLc3091 rho) = ((1 : F) * rho 113470)

def relationRow6916 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113469) * ((1 : F) * rho 113470) = ((1 : F) * rho 113471)

def relationRow6917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113472) * ((1 : F) + (1 : F) * rho 113471) = ((1 : F) * rho 113469 + (1 : F) * rho 113470)

def relationRow6918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113473) * ((1 : F) + (-1 : F) * rho 113471) = ((1 : F) * rho 113468 + (-1 : F) * rho 113469 + (-1 : F) * rho 113470)

def relationLc3092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 96⟩], residual := [((1 : F), 113472)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112071) * (relationLc3092 rho) = ((1 : F) * rho 113474)

def relationLc3093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 96⟩], residual := [((1 : F), 113473)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112071) * (relationLc3093 rho) = ((1 : F) * rho 113475)

def relationRow6921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113466) * ((1 : F) * rho 113467) = ((1 : F) * rho 113476)

def relationRow6922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113466) * ((1 : F) * rho 113466) = ((1 : F) * rho 113477)

def relationRow6923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113467) * ((1 : F) * rho 113467) = ((1 : F) * rho 113478)

def relationRow6924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113479) * ((-1 : F) * rho 113477 + (1 : F) * rho 113478) = ((2 : F) * rho 113476)

def relationRow6925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113480) * ((2 : F) + (1 : F) * rho 113477 + (-1 : F) * rho 113478) = ((1 : F) * rho 113477 + (1 : F) * rho 113478)

def relationLc3094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 97⟩, ⟨(1 : F), 112227, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113479 + (1 : F) * rho 113480) * (relationLc3094 rho) = ((1 : F) * rho 113481)

def relationLc3095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113480) * (relationLc3095 rho) = ((1 : F) * rho 113482)

def relationLc3096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113479) * (relationLc3096 rho) = ((1 : F) * rho 113483)

def relationRow6929 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113482) * ((1 : F) * rho 113483) = ((1 : F) * rho 113484)

def relationRow6930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113485) * ((1 : F) + (1 : F) * rho 113484) = ((1 : F) * rho 113482 + (1 : F) * rho 113483)

def relationRow6931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113486) * ((1 : F) + (-1 : F) * rho 113484) = ((1 : F) * rho 113481 + (-1 : F) * rho 113482 + (-1 : F) * rho 113483)

def relationLc3097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 97⟩], residual := [((1 : F), 113485)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112072) * (relationLc3097 rho) = ((1 : F) * rho 113487)

def relationLc3098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 97⟩], residual := [((1 : F), 113486)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112072) * (relationLc3098 rho) = ((1 : F) * rho 113488)

def relationRow6934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113479) * ((1 : F) * rho 113480) = ((1 : F) * rho 113489)

def relationRow6935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113479) * ((1 : F) * rho 113479) = ((1 : F) * rho 113490)

def relationRow6936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113480) * ((1 : F) * rho 113480) = ((1 : F) * rho 113491)

def relationRow6937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113492) * ((-1 : F) * rho 113490 + (1 : F) * rho 113491) = ((2 : F) * rho 113489)

def relationRow6938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113493) * ((2 : F) + (1 : F) * rho 113490 + (-1 : F) * rho 113491) = ((1 : F) * rho 113490 + (1 : F) * rho 113491)

def relationLc3099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 98⟩, ⟨(1 : F), 112227, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113492 + (1 : F) * rho 113493) * (relationLc3099 rho) = ((1 : F) * rho 113494)

def relationLc3100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113493) * (relationLc3100 rho) = ((1 : F) * rho 113495)

def relationLc3101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113492) * (relationLc3101 rho) = ((1 : F) * rho 113496)

def relationRow6942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113495) * ((1 : F) * rho 113496) = ((1 : F) * rho 113497)

def relationRow6943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113498) * ((1 : F) + (1 : F) * rho 113497) = ((1 : F) * rho 113495 + (1 : F) * rho 113496)

def relationRow6944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113499) * ((1 : F) + (-1 : F) * rho 113497) = ((1 : F) * rho 113494 + (-1 : F) * rho 113495 + (-1 : F) * rho 113496)

def relationLc3102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 98⟩], residual := [((1 : F), 113498)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112073) * (relationLc3102 rho) = ((1 : F) * rho 113500)

def relationLc3103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 98⟩], residual := [((1 : F), 113499)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112073) * (relationLc3103 rho) = ((1 : F) * rho 113501)

def relationRow6947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113492) * ((1 : F) * rho 113493) = ((1 : F) * rho 113502)

def relationRow6948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113492) * ((1 : F) * rho 113492) = ((1 : F) * rho 113503)

def relationRow6949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113493) * ((1 : F) * rho 113493) = ((1 : F) * rho 113504)

def relationRow6950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113505) * ((-1 : F) * rho 113503 + (1 : F) * rho 113504) = ((2 : F) * rho 113502)

def relationRow6951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113506) * ((2 : F) + (1 : F) * rho 113503 + (-1 : F) * rho 113504) = ((1 : F) * rho 113503 + (1 : F) * rho 113504)

def relationLc3104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 99⟩, ⟨(1 : F), 112227, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113505 + (1 : F) * rho 113506) * (relationLc3104 rho) = ((1 : F) * rho 113507)

def relationLc3105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113506) * (relationLc3105 rho) = ((1 : F) * rho 113508)

def relationLc3106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113505) * (relationLc3106 rho) = ((1 : F) * rho 113509)

def relationRow6955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113508) * ((1 : F) * rho 113509) = ((1 : F) * rho 113510)

def relationRow6956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113511) * ((1 : F) + (1 : F) * rho 113510) = ((1 : F) * rho 113508 + (1 : F) * rho 113509)

def relationRow6957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113512) * ((1 : F) + (-1 : F) * rho 113510) = ((1 : F) * rho 113507 + (-1 : F) * rho 113508 + (-1 : F) * rho 113509)

def relationLc3107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 99⟩], residual := [((1 : F), 113511)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112074) * (relationLc3107 rho) = ((1 : F) * rho 113513)

def relationLc3108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 99⟩], residual := [((1 : F), 113512)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112074) * (relationLc3108 rho) = ((1 : F) * rho 113514)

def relationRow6960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113505) * ((1 : F) * rho 113506) = ((1 : F) * rho 113515)

def relationRow6961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113505) * ((1 : F) * rho 113505) = ((1 : F) * rho 113516)

def relationRow6962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113506) * ((1 : F) * rho 113506) = ((1 : F) * rho 113517)

def relationRow6963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113518) * ((-1 : F) * rho 113516 + (1 : F) * rho 113517) = ((2 : F) * rho 113515)

def relationRow6964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113519) * ((2 : F) + (1 : F) * rho 113516 + (-1 : F) * rho 113517) = ((1 : F) * rho 113516 + (1 : F) * rho 113517)

def relationLc3109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 100⟩, ⟨(1 : F), 112227, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113518 + (1 : F) * rho 113519) * (relationLc3109 rho) = ((1 : F) * rho 113520)

def relationLc3110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113519) * (relationLc3110 rho) = ((1 : F) * rho 113521)

def relationLc3111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113518) * (relationLc3111 rho) = ((1 : F) * rho 113522)

def relationRow6968 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113521) * ((1 : F) * rho 113522) = ((1 : F) * rho 113523)

def relationRow6969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113524) * ((1 : F) + (1 : F) * rho 113523) = ((1 : F) * rho 113521 + (1 : F) * rho 113522)

def relationRow6970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113525) * ((1 : F) + (-1 : F) * rho 113523) = ((1 : F) * rho 113520 + (-1 : F) * rho 113521 + (-1 : F) * rho 113522)

def relationLc3112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 100⟩], residual := [((1 : F), 113524)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112075) * (relationLc3112 rho) = ((1 : F) * rho 113526)

def relationLc3113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 100⟩], residual := [((1 : F), 113525)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112075) * (relationLc3113 rho) = ((1 : F) * rho 113527)

def relationRow6973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113518) * ((1 : F) * rho 113519) = ((1 : F) * rho 113528)

def relationRow6974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113518) * ((1 : F) * rho 113518) = ((1 : F) * rho 113529)

def relationRow6975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113519) * ((1 : F) * rho 113519) = ((1 : F) * rho 113530)

def relationRow6976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113531) * ((-1 : F) * rho 113529 + (1 : F) * rho 113530) = ((2 : F) * rho 113528)

def relationRow6977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113532) * ((2 : F) + (1 : F) * rho 113529 + (-1 : F) * rho 113530) = ((1 : F) * rho 113529 + (1 : F) * rho 113530)

def relationLc3114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 101⟩, ⟨(1 : F), 112227, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113531 + (1 : F) * rho 113532) * (relationLc3114 rho) = ((1 : F) * rho 113533)

def relationLc3115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113532) * (relationLc3115 rho) = ((1 : F) * rho 113534)

def relationLc3116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113531) * (relationLc3116 rho) = ((1 : F) * rho 113535)

def relationRow6981 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113534) * ((1 : F) * rho 113535) = ((1 : F) * rho 113536)

def relationRow6982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113537) * ((1 : F) + (1 : F) * rho 113536) = ((1 : F) * rho 113534 + (1 : F) * rho 113535)

def relationRow6983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113538) * ((1 : F) + (-1 : F) * rho 113536) = ((1 : F) * rho 113533 + (-1 : F) * rho 113534 + (-1 : F) * rho 113535)

def relationLc3117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 101⟩], residual := [((1 : F), 113537)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112076) * (relationLc3117 rho) = ((1 : F) * rho 113539)

def relationLc3118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 101⟩], residual := [((1 : F), 113538)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112076) * (relationLc3118 rho) = ((1 : F) * rho 113540)

def relationRow6986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113531) * ((1 : F) * rho 113532) = ((1 : F) * rho 113541)

def relationRow6987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113531) * ((1 : F) * rho 113531) = ((1 : F) * rho 113542)

def relationRow6988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113532) * ((1 : F) * rho 113532) = ((1 : F) * rho 113543)

def relationRow6989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113544) * ((-1 : F) * rho 113542 + (1 : F) * rho 113543) = ((2 : F) * rho 113541)

def relationRow6990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113545) * ((2 : F) + (1 : F) * rho 113542 + (-1 : F) * rho 113543) = ((1 : F) * rho 113542 + (1 : F) * rho 113543)

def relationLc3119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 102⟩, ⟨(1 : F), 112227, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113544 + (1 : F) * rho 113545) * (relationLc3119 rho) = ((1 : F) * rho 113546)

def relationLc3120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113545) * (relationLc3120 rho) = ((1 : F) * rho 113547)

def relationLc3121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113544) * (relationLc3121 rho) = ((1 : F) * rho 113548)

def relationRow6994 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113547) * ((1 : F) * rho 113548) = ((1 : F) * rho 113549)

def relationRow6995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113550) * ((1 : F) + (1 : F) * rho 113549) = ((1 : F) * rho 113547 + (1 : F) * rho 113548)

def relationRow6996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113551) * ((1 : F) + (-1 : F) * rho 113549) = ((1 : F) * rho 113546 + (-1 : F) * rho 113547 + (-1 : F) * rho 113548)

def relationLc3122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 102⟩], residual := [((1 : F), 113550)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112077) * (relationLc3122 rho) = ((1 : F) * rho 113552)

def relationLc3123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 102⟩], residual := [((1 : F), 113551)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112077) * (relationLc3123 rho) = ((1 : F) * rho 113553)

def relationRow6999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113544) * ((1 : F) * rho 113545) = ((1 : F) * rho 113554)

def relationRow7000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113544) * ((1 : F) * rho 113544) = ((1 : F) * rho 113555)

def relationRow7001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113545) * ((1 : F) * rho 113545) = ((1 : F) * rho 113556)

def relationRow7002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113557) * ((-1 : F) * rho 113555 + (1 : F) * rho 113556) = ((2 : F) * rho 113554)

def relationRow7003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113558) * ((2 : F) + (1 : F) * rho 113555 + (-1 : F) * rho 113556) = ((1 : F) * rho 113555 + (1 : F) * rho 113556)

def relationLc3124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 103⟩, ⟨(1 : F), 112227, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113557 + (1 : F) * rho 113558) * (relationLc3124 rho) = ((1 : F) * rho 113559)

def relationLc3125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113558) * (relationLc3125 rho) = ((1 : F) * rho 113560)

def relationLc3126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113557) * (relationLc3126 rho) = ((1 : F) * rho 113561)

def relationRow7007 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113560) * ((1 : F) * rho 113561) = ((1 : F) * rho 113562)

def relationRow7008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113563) * ((1 : F) + (1 : F) * rho 113562) = ((1 : F) * rho 113560 + (1 : F) * rho 113561)

def relationRow7009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113564) * ((1 : F) + (-1 : F) * rho 113562) = ((1 : F) * rho 113559 + (-1 : F) * rho 113560 + (-1 : F) * rho 113561)

def relationLc3127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 103⟩], residual := [((1 : F), 113563)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112078) * (relationLc3127 rho) = ((1 : F) * rho 113565)

def relationLc3128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 103⟩], residual := [((1 : F), 113564)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112078) * (relationLc3128 rho) = ((1 : F) * rho 113566)

def relationRow7012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113557) * ((1 : F) * rho 113558) = ((1 : F) * rho 113567)

def relationRow7013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113557) * ((1 : F) * rho 113557) = ((1 : F) * rho 113568)

def relationRow7014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113558) * ((1 : F) * rho 113558) = ((1 : F) * rho 113569)

def relationRow7015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113570) * ((-1 : F) * rho 113568 + (1 : F) * rho 113569) = ((2 : F) * rho 113567)

def relationRow7016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113571) * ((2 : F) + (1 : F) * rho 113568 + (-1 : F) * rho 113569) = ((1 : F) * rho 113568 + (1 : F) * rho 113569)

def relationLc3129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 104⟩, ⟨(1 : F), 112227, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113570 + (1 : F) * rho 113571) * (relationLc3129 rho) = ((1 : F) * rho 113572)

def relationLc3130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113571) * (relationLc3130 rho) = ((1 : F) * rho 113573)

def relationLc3131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113570) * (relationLc3131 rho) = ((1 : F) * rho 113574)

def relationRow7020 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113573) * ((1 : F) * rho 113574) = ((1 : F) * rho 113575)

def relationRow7021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113576) * ((1 : F) + (1 : F) * rho 113575) = ((1 : F) * rho 113573 + (1 : F) * rho 113574)

def relationRow7022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113577) * ((1 : F) + (-1 : F) * rho 113575) = ((1 : F) * rho 113572 + (-1 : F) * rho 113573 + (-1 : F) * rho 113574)

def relationLc3132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 104⟩], residual := [((1 : F), 113576)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112079) * (relationLc3132 rho) = ((1 : F) * rho 113578)

def relationLc3133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 104⟩], residual := [((1 : F), 113577)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112079) * (relationLc3133 rho) = ((1 : F) * rho 113579)

def relationRow7025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113570) * ((1 : F) * rho 113571) = ((1 : F) * rho 113580)

def relationRow7026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113570) * ((1 : F) * rho 113570) = ((1 : F) * rho 113581)

def relationRow7027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113571) * ((1 : F) * rho 113571) = ((1 : F) * rho 113582)

def relationRow7028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113583) * ((-1 : F) * rho 113581 + (1 : F) * rho 113582) = ((2 : F) * rho 113580)

def relationRow7029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113584) * ((2 : F) + (1 : F) * rho 113581 + (-1 : F) * rho 113582) = ((1 : F) * rho 113581 + (1 : F) * rho 113582)

def relationLc3134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 105⟩, ⟨(1 : F), 112227, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113583 + (1 : F) * rho 113584) * (relationLc3134 rho) = ((1 : F) * rho 113585)

def relationLc3135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113584) * (relationLc3135 rho) = ((1 : F) * rho 113586)

def relationLc3136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113583) * (relationLc3136 rho) = ((1 : F) * rho 113587)

def relationRow7033 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113586) * ((1 : F) * rho 113587) = ((1 : F) * rho 113588)

def relationRow7034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113589) * ((1 : F) + (1 : F) * rho 113588) = ((1 : F) * rho 113586 + (1 : F) * rho 113587)

def relationRow7035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113590) * ((1 : F) + (-1 : F) * rho 113588) = ((1 : F) * rho 113585 + (-1 : F) * rho 113586 + (-1 : F) * rho 113587)

def relationLc3137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 105⟩], residual := [((1 : F), 113589)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112080) * (relationLc3137 rho) = ((1 : F) * rho 113591)

def relationLc3138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 105⟩], residual := [((1 : F), 113590)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112080) * (relationLc3138 rho) = ((1 : F) * rho 113592)

def relationRow7038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113583) * ((1 : F) * rho 113584) = ((1 : F) * rho 113593)

def relationRow7039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113583) * ((1 : F) * rho 113583) = ((1 : F) * rho 113594)

def relationRow7040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113584) * ((1 : F) * rho 113584) = ((1 : F) * rho 113595)

def relationRow7041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113596) * ((-1 : F) * rho 113594 + (1 : F) * rho 113595) = ((2 : F) * rho 113593)

def relationRow7042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113597) * ((2 : F) + (1 : F) * rho 113594 + (-1 : F) * rho 113595) = ((1 : F) * rho 113594 + (1 : F) * rho 113595)

def relationLc3139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 106⟩, ⟨(1 : F), 112227, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113596 + (1 : F) * rho 113597) * (relationLc3139 rho) = ((1 : F) * rho 113598)

def relationLc3140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113597) * (relationLc3140 rho) = ((1 : F) * rho 113599)

def relationLc3141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113596) * (relationLc3141 rho) = ((1 : F) * rho 113600)

def relationRow7046 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113599) * ((1 : F) * rho 113600) = ((1 : F) * rho 113601)

def relationRow7047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113602) * ((1 : F) + (1 : F) * rho 113601) = ((1 : F) * rho 113599 + (1 : F) * rho 113600)

def relationRow7048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113603) * ((1 : F) + (-1 : F) * rho 113601) = ((1 : F) * rho 113598 + (-1 : F) * rho 113599 + (-1 : F) * rho 113600)

def relationLc3142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 106⟩], residual := [((1 : F), 113602)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112081) * (relationLc3142 rho) = ((1 : F) * rho 113604)

def relationLc3143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 106⟩], residual := [((1 : F), 113603)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112081) * (relationLc3143 rho) = ((1 : F) * rho 113605)

def relationRow7051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113596) * ((1 : F) * rho 113597) = ((1 : F) * rho 113606)

def relationRow7052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113596) * ((1 : F) * rho 113596) = ((1 : F) * rho 113607)

def relationRow7053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113597) * ((1 : F) * rho 113597) = ((1 : F) * rho 113608)

def relationRow7054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113609) * ((-1 : F) * rho 113607 + (1 : F) * rho 113608) = ((2 : F) * rho 113606)

def relationRow7055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113610) * ((2 : F) + (1 : F) * rho 113607 + (-1 : F) * rho 113608) = ((1 : F) * rho 113607 + (1 : F) * rho 113608)

def relationLc3144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 107⟩, ⟨(1 : F), 112227, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113609 + (1 : F) * rho 113610) * (relationLc3144 rho) = ((1 : F) * rho 113611)

def relationLc3145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113610) * (relationLc3145 rho) = ((1 : F) * rho 113612)

def relationLc3146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113609) * (relationLc3146 rho) = ((1 : F) * rho 113613)

def relationRow7059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113612) * ((1 : F) * rho 113613) = ((1 : F) * rho 113614)

def relationRow7060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113615) * ((1 : F) + (1 : F) * rho 113614) = ((1 : F) * rho 113612 + (1 : F) * rho 113613)

def relationRow7061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113616) * ((1 : F) + (-1 : F) * rho 113614) = ((1 : F) * rho 113611 + (-1 : F) * rho 113612 + (-1 : F) * rho 113613)

def relationLc3147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 107⟩], residual := [((1 : F), 113615)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112082) * (relationLc3147 rho) = ((1 : F) * rho 113617)

def relationLc3148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 107⟩], residual := [((1 : F), 113616)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112082) * (relationLc3148 rho) = ((1 : F) * rho 113618)

def relationRow7064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113609) * ((1 : F) * rho 113610) = ((1 : F) * rho 113619)

def relationRow7065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113609) * ((1 : F) * rho 113609) = ((1 : F) * rho 113620)

def relationRow7066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113610) * ((1 : F) * rho 113610) = ((1 : F) * rho 113621)

def relationRow7067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113622) * ((-1 : F) * rho 113620 + (1 : F) * rho 113621) = ((2 : F) * rho 113619)

def relationRow7068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113623) * ((2 : F) + (1 : F) * rho 113620 + (-1 : F) * rho 113621) = ((1 : F) * rho 113620 + (1 : F) * rho 113621)

def relationLc3149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 108⟩, ⟨(1 : F), 112227, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113622 + (1 : F) * rho 113623) * (relationLc3149 rho) = ((1 : F) * rho 113624)

def relationLc3150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113623) * (relationLc3150 rho) = ((1 : F) * rho 113625)

def relationLc3151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113622) * (relationLc3151 rho) = ((1 : F) * rho 113626)

def relationRow7072 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113625) * ((1 : F) * rho 113626) = ((1 : F) * rho 113627)

def relationRow7073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113628) * ((1 : F) + (1 : F) * rho 113627) = ((1 : F) * rho 113625 + (1 : F) * rho 113626)

def relationRow7074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113629) * ((1 : F) + (-1 : F) * rho 113627) = ((1 : F) * rho 113624 + (-1 : F) * rho 113625 + (-1 : F) * rho 113626)

def relationLc3152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 108⟩], residual := [((1 : F), 113628)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112083) * (relationLc3152 rho) = ((1 : F) * rho 113630)

def relationLc3153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 108⟩], residual := [((1 : F), 113629)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112083) * (relationLc3153 rho) = ((1 : F) * rho 113631)

def relationRow7077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113622) * ((1 : F) * rho 113623) = ((1 : F) * rho 113632)

def relationRow7078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113622) * ((1 : F) * rho 113622) = ((1 : F) * rho 113633)

def relationRow7079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113623) * ((1 : F) * rho 113623) = ((1 : F) * rho 113634)

def relationRow7080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113635) * ((-1 : F) * rho 113633 + (1 : F) * rho 113634) = ((2 : F) * rho 113632)

def relationRow7081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113636) * ((2 : F) + (1 : F) * rho 113633 + (-1 : F) * rho 113634) = ((1 : F) * rho 113633 + (1 : F) * rho 113634)

def relationLc3154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 109⟩, ⟨(1 : F), 112227, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113635 + (1 : F) * rho 113636) * (relationLc3154 rho) = ((1 : F) * rho 113637)

def relationLc3155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113636) * (relationLc3155 rho) = ((1 : F) * rho 113638)

def relationLc3156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113635) * (relationLc3156 rho) = ((1 : F) * rho 113639)

def relationRow7085 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113638) * ((1 : F) * rho 113639) = ((1 : F) * rho 113640)

def relationRow7086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113641) * ((1 : F) + (1 : F) * rho 113640) = ((1 : F) * rho 113638 + (1 : F) * rho 113639)

def relationRow7087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113642) * ((1 : F) + (-1 : F) * rho 113640) = ((1 : F) * rho 113637 + (-1 : F) * rho 113638 + (-1 : F) * rho 113639)

def relationLc3157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 109⟩], residual := [((1 : F), 113641)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112084) * (relationLc3157 rho) = ((1 : F) * rho 113643)

def relationLc3158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 109⟩], residual := [((1 : F), 113642)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112084) * (relationLc3158 rho) = ((1 : F) * rho 113644)

def relationRow7090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113635) * ((1 : F) * rho 113636) = ((1 : F) * rho 113645)

def relationRow7091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113635) * ((1 : F) * rho 113635) = ((1 : F) * rho 113646)

def relationRow7092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113636) * ((1 : F) * rho 113636) = ((1 : F) * rho 113647)

def relationRow7093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113648) * ((-1 : F) * rho 113646 + (1 : F) * rho 113647) = ((2 : F) * rho 113645)

def relationRow7094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113649) * ((2 : F) + (1 : F) * rho 113646 + (-1 : F) * rho 113647) = ((1 : F) * rho 113646 + (1 : F) * rho 113647)

def relationLc3159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 110⟩, ⟨(1 : F), 112227, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113648 + (1 : F) * rho 113649) * (relationLc3159 rho) = ((1 : F) * rho 113650)

def relationLc3160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113649) * (relationLc3160 rho) = ((1 : F) * rho 113651)

def relationLc3161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113648) * (relationLc3161 rho) = ((1 : F) * rho 113652)

def relationRow7098 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113651) * ((1 : F) * rho 113652) = ((1 : F) * rho 113653)

def relationRow7099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113654) * ((1 : F) + (1 : F) * rho 113653) = ((1 : F) * rho 113651 + (1 : F) * rho 113652)

def relationRow7100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113655) * ((1 : F) + (-1 : F) * rho 113653) = ((1 : F) * rho 113650 + (-1 : F) * rho 113651 + (-1 : F) * rho 113652)

def relationLc3162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 110⟩], residual := [((1 : F), 113654)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112085) * (relationLc3162 rho) = ((1 : F) * rho 113656)

def relationLc3163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 110⟩], residual := [((1 : F), 113655)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112085) * (relationLc3163 rho) = ((1 : F) * rho 113657)

def relationRow7103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113648) * ((1 : F) * rho 113649) = ((1 : F) * rho 113658)

def relationRow7104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113648) * ((1 : F) * rho 113648) = ((1 : F) * rho 113659)

def relationRow7105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113649) * ((1 : F) * rho 113649) = ((1 : F) * rho 113660)

def relationRow7106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113661) * ((-1 : F) * rho 113659 + (1 : F) * rho 113660) = ((2 : F) * rho 113658)

def relationRow7107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113662) * ((2 : F) + (1 : F) * rho 113659 + (-1 : F) * rho 113660) = ((1 : F) * rho 113659 + (1 : F) * rho 113660)

def relationLc3164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 111⟩, ⟨(1 : F), 112227, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113661 + (1 : F) * rho 113662) * (relationLc3164 rho) = ((1 : F) * rho 113663)

def relationLc3165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113662) * (relationLc3165 rho) = ((1 : F) * rho 113664)

def relationLc3166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113661) * (relationLc3166 rho) = ((1 : F) * rho 113665)

def relationRow7111 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113664) * ((1 : F) * rho 113665) = ((1 : F) * rho 113666)

def relationRow7112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113667) * ((1 : F) + (1 : F) * rho 113666) = ((1 : F) * rho 113664 + (1 : F) * rho 113665)

def relationRow7113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113668) * ((1 : F) + (-1 : F) * rho 113666) = ((1 : F) * rho 113663 + (-1 : F) * rho 113664 + (-1 : F) * rho 113665)

def relationLc3167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 111⟩], residual := [((1 : F), 113667)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112086) * (relationLc3167 rho) = ((1 : F) * rho 113669)

def relationLc3168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 111⟩], residual := [((1 : F), 113668)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112086) * (relationLc3168 rho) = ((1 : F) * rho 113670)

def relationRow7116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113661) * ((1 : F) * rho 113662) = ((1 : F) * rho 113671)

def relationRow7117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113661) * ((1 : F) * rho 113661) = ((1 : F) * rho 113672)

def relationRow7118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113662) * ((1 : F) * rho 113662) = ((1 : F) * rho 113673)

def relationRow7119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113674) * ((-1 : F) * rho 113672 + (1 : F) * rho 113673) = ((2 : F) * rho 113671)

def relationRow7120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113675) * ((2 : F) + (1 : F) * rho 113672 + (-1 : F) * rho 113673) = ((1 : F) * rho 113672 + (1 : F) * rho 113673)

def relationLc3169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 112⟩, ⟨(1 : F), 112227, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113674 + (1 : F) * rho 113675) * (relationLc3169 rho) = ((1 : F) * rho 113676)

def relationLc3170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113675) * (relationLc3170 rho) = ((1 : F) * rho 113677)

def relationLc3171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113674) * (relationLc3171 rho) = ((1 : F) * rho 113678)

def relationRow7124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113677) * ((1 : F) * rho 113678) = ((1 : F) * rho 113679)

def relationRow7125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113680) * ((1 : F) + (1 : F) * rho 113679) = ((1 : F) * rho 113677 + (1 : F) * rho 113678)

def relationRow7126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113681) * ((1 : F) + (-1 : F) * rho 113679) = ((1 : F) * rho 113676 + (-1 : F) * rho 113677 + (-1 : F) * rho 113678)

def relationLc3172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 112⟩], residual := [((1 : F), 113680)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112087) * (relationLc3172 rho) = ((1 : F) * rho 113682)

def relationLc3173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 112⟩], residual := [((1 : F), 113681)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112087) * (relationLc3173 rho) = ((1 : F) * rho 113683)

def relationRow7129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113674) * ((1 : F) * rho 113675) = ((1 : F) * rho 113684)

def relationRow7130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113674) * ((1 : F) * rho 113674) = ((1 : F) * rho 113685)

def relationRow7131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113675) * ((1 : F) * rho 113675) = ((1 : F) * rho 113686)

def relationRow7132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113687) * ((-1 : F) * rho 113685 + (1 : F) * rho 113686) = ((2 : F) * rho 113684)

def relationRow7133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113688) * ((2 : F) + (1 : F) * rho 113685 + (-1 : F) * rho 113686) = ((1 : F) * rho 113685 + (1 : F) * rho 113686)

def relationLc3174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 113⟩, ⟨(1 : F), 112227, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113687 + (1 : F) * rho 113688) * (relationLc3174 rho) = ((1 : F) * rho 113689)

def relationLc3175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113688) * (relationLc3175 rho) = ((1 : F) * rho 113690)

def relationLc3176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113687) * (relationLc3176 rho) = ((1 : F) * rho 113691)

def relationRow7137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113690) * ((1 : F) * rho 113691) = ((1 : F) * rho 113692)

def relationRow7138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113693) * ((1 : F) + (1 : F) * rho 113692) = ((1 : F) * rho 113690 + (1 : F) * rho 113691)

def relationRow7139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113694) * ((1 : F) + (-1 : F) * rho 113692) = ((1 : F) * rho 113689 + (-1 : F) * rho 113690 + (-1 : F) * rho 113691)

def relationLc3177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 113⟩], residual := [((1 : F), 113693)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112088) * (relationLc3177 rho) = ((1 : F) * rho 113695)

def relationLc3178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 113⟩], residual := [((1 : F), 113694)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112088) * (relationLc3178 rho) = ((1 : F) * rho 113696)

def relationRow7142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113687) * ((1 : F) * rho 113688) = ((1 : F) * rho 113697)

def relationRow7143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113687) * ((1 : F) * rho 113687) = ((1 : F) * rho 113698)

def relationRow7144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113688) * ((1 : F) * rho 113688) = ((1 : F) * rho 113699)

def relationRow7145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113700) * ((-1 : F) * rho 113698 + (1 : F) * rho 113699) = ((2 : F) * rho 113697)

def relationRow7146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113701) * ((2 : F) + (1 : F) * rho 113698 + (-1 : F) * rho 113699) = ((1 : F) * rho 113698 + (1 : F) * rho 113699)

def relationLc3179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 114⟩, ⟨(1 : F), 112227, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113700 + (1 : F) * rho 113701) * (relationLc3179 rho) = ((1 : F) * rho 113702)

def relationLc3180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113701) * (relationLc3180 rho) = ((1 : F) * rho 113703)

def relationLc3181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113700) * (relationLc3181 rho) = ((1 : F) * rho 113704)

def relationRow7150 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113703) * ((1 : F) * rho 113704) = ((1 : F) * rho 113705)

def relationRow7151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113706) * ((1 : F) + (1 : F) * rho 113705) = ((1 : F) * rho 113703 + (1 : F) * rho 113704)

def relationRow7152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113707) * ((1 : F) + (-1 : F) * rho 113705) = ((1 : F) * rho 113702 + (-1 : F) * rho 113703 + (-1 : F) * rho 113704)

def relationLc3182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 114⟩], residual := [((1 : F), 113706)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112089) * (relationLc3182 rho) = ((1 : F) * rho 113708)

def relationLc3183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 114⟩], residual := [((1 : F), 113707)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112089) * (relationLc3183 rho) = ((1 : F) * rho 113709)

def relationRow7155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113700) * ((1 : F) * rho 113701) = ((1 : F) * rho 113710)

def relationRow7156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113700) * ((1 : F) * rho 113700) = ((1 : F) * rho 113711)

def relationRow7157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113701) * ((1 : F) * rho 113701) = ((1 : F) * rho 113712)

def relationRow7158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113713) * ((-1 : F) * rho 113711 + (1 : F) * rho 113712) = ((2 : F) * rho 113710)

def relationRow7159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113714) * ((2 : F) + (1 : F) * rho 113711 + (-1 : F) * rho 113712) = ((1 : F) * rho 113711 + (1 : F) * rho 113712)

def relationLc3184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 115⟩, ⟨(1 : F), 112227, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113713 + (1 : F) * rho 113714) * (relationLc3184 rho) = ((1 : F) * rho 113715)

def relationLc3185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113714) * (relationLc3185 rho) = ((1 : F) * rho 113716)

def relationLc3186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113713) * (relationLc3186 rho) = ((1 : F) * rho 113717)

def relationRow7163 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113716) * ((1 : F) * rho 113717) = ((1 : F) * rho 113718)

def relationRow7164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113719) * ((1 : F) + (1 : F) * rho 113718) = ((1 : F) * rho 113716 + (1 : F) * rho 113717)

def relationRow7165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113720) * ((1 : F) + (-1 : F) * rho 113718) = ((1 : F) * rho 113715 + (-1 : F) * rho 113716 + (-1 : F) * rho 113717)

def relationLc3187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 115⟩], residual := [((1 : F), 113719)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112090) * (relationLc3187 rho) = ((1 : F) * rho 113721)

def relationLc3188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 115⟩], residual := [((1 : F), 113720)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112090) * (relationLc3188 rho) = ((1 : F) * rho 113722)

def relationRow7168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113713) * ((1 : F) * rho 113714) = ((1 : F) * rho 113723)

def relationRow7169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113713) * ((1 : F) * rho 113713) = ((1 : F) * rho 113724)

def relationRow7170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113714) * ((1 : F) * rho 113714) = ((1 : F) * rho 113725)

def relationRow7171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113726) * ((-1 : F) * rho 113724 + (1 : F) * rho 113725) = ((2 : F) * rho 113723)

def relationRow7172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113727) * ((2 : F) + (1 : F) * rho 113724 + (-1 : F) * rho 113725) = ((1 : F) * rho 113724 + (1 : F) * rho 113725)

def relationLc3189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 116⟩, ⟨(1 : F), 112227, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113726 + (1 : F) * rho 113727) * (relationLc3189 rho) = ((1 : F) * rho 113728)

def relationLc3190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113727) * (relationLc3190 rho) = ((1 : F) * rho 113729)

def relationLc3191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113726) * (relationLc3191 rho) = ((1 : F) * rho 113730)

def relationRow7176 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113729) * ((1 : F) * rho 113730) = ((1 : F) * rho 113731)

def relationRow7177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113732) * ((1 : F) + (1 : F) * rho 113731) = ((1 : F) * rho 113729 + (1 : F) * rho 113730)

def relationRow7178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113733) * ((1 : F) + (-1 : F) * rho 113731) = ((1 : F) * rho 113728 + (-1 : F) * rho 113729 + (-1 : F) * rho 113730)

def relationLc3192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 116⟩], residual := [((1 : F), 113732)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112091) * (relationLc3192 rho) = ((1 : F) * rho 113734)

def relationLc3193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 116⟩], residual := [((1 : F), 113733)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112091) * (relationLc3193 rho) = ((1 : F) * rho 113735)

def relationRow7181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113726) * ((1 : F) * rho 113727) = ((1 : F) * rho 113736)

def relationRow7182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113726) * ((1 : F) * rho 113726) = ((1 : F) * rho 113737)

def relationRow7183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113727) * ((1 : F) * rho 113727) = ((1 : F) * rho 113738)

def relationRow7184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113739) * ((-1 : F) * rho 113737 + (1 : F) * rho 113738) = ((2 : F) * rho 113736)

def relationRow7185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113740) * ((2 : F) + (1 : F) * rho 113737 + (-1 : F) * rho 113738) = ((1 : F) * rho 113737 + (1 : F) * rho 113738)

def relationLc3194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 117⟩, ⟨(1 : F), 112227, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113739 + (1 : F) * rho 113740) * (relationLc3194 rho) = ((1 : F) * rho 113741)

def relationLc3195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113740) * (relationLc3195 rho) = ((1 : F) * rho 113742)

def relationLc3196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113739) * (relationLc3196 rho) = ((1 : F) * rho 113743)

def relationRow7189 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113742) * ((1 : F) * rho 113743) = ((1 : F) * rho 113744)

def relationRow7190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113745) * ((1 : F) + (1 : F) * rho 113744) = ((1 : F) * rho 113742 + (1 : F) * rho 113743)

def relationRow7191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113746) * ((1 : F) + (-1 : F) * rho 113744) = ((1 : F) * rho 113741 + (-1 : F) * rho 113742 + (-1 : F) * rho 113743)

def relationLc3197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 117⟩], residual := [((1 : F), 113745)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112092) * (relationLc3197 rho) = ((1 : F) * rho 113747)

def relationLc3198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 117⟩], residual := [((1 : F), 113746)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112092) * (relationLc3198 rho) = ((1 : F) * rho 113748)

def relationRow7194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113739) * ((1 : F) * rho 113740) = ((1 : F) * rho 113749)

def relationRow7195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113739) * ((1 : F) * rho 113739) = ((1 : F) * rho 113750)

def relationRow7196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113740) * ((1 : F) * rho 113740) = ((1 : F) * rho 113751)

def relationRow7197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113752) * ((-1 : F) * rho 113750 + (1 : F) * rho 113751) = ((2 : F) * rho 113749)

def relationRow7198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113753) * ((2 : F) + (1 : F) * rho 113750 + (-1 : F) * rho 113751) = ((1 : F) * rho 113750 + (1 : F) * rho 113751)

def relationLc3199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 118⟩, ⟨(1 : F), 112227, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113752 + (1 : F) * rho 113753) * (relationLc3199 rho) = ((1 : F) * rho 113754)

def relationLc3200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113753) * (relationLc3200 rho) = ((1 : F) * rho 113755)

def relationLc3201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113752) * (relationLc3201 rho) = ((1 : F) * rho 113756)

def relationRow7202 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113755) * ((1 : F) * rho 113756) = ((1 : F) * rho 113757)

def relationRow7203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113758) * ((1 : F) + (1 : F) * rho 113757) = ((1 : F) * rho 113755 + (1 : F) * rho 113756)

def relationRow7204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113759) * ((1 : F) + (-1 : F) * rho 113757) = ((1 : F) * rho 113754 + (-1 : F) * rho 113755 + (-1 : F) * rho 113756)

def relationLc3202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 118⟩], residual := [((1 : F), 113758)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112093) * (relationLc3202 rho) = ((1 : F) * rho 113760)

def relationLc3203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 118⟩], residual := [((1 : F), 113759)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112093) * (relationLc3203 rho) = ((1 : F) * rho 113761)

def relationRow7207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113752) * ((1 : F) * rho 113753) = ((1 : F) * rho 113762)

def relationRow7208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113752) * ((1 : F) * rho 113752) = ((1 : F) * rho 113763)

def relationRow7209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113753) * ((1 : F) * rho 113753) = ((1 : F) * rho 113764)

def relationRow7210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113765) * ((-1 : F) * rho 113763 + (1 : F) * rho 113764) = ((2 : F) * rho 113762)

def relationRow7211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113766) * ((2 : F) + (1 : F) * rho 113763 + (-1 : F) * rho 113764) = ((1 : F) * rho 113763 + (1 : F) * rho 113764)

def relationLc3204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 119⟩, ⟨(1 : F), 112227, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113765 + (1 : F) * rho 113766) * (relationLc3204 rho) = ((1 : F) * rho 113767)

def relationLc3205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113766) * (relationLc3205 rho) = ((1 : F) * rho 113768)

def relationLc3206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113765) * (relationLc3206 rho) = ((1 : F) * rho 113769)

def relationRow7215 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113768) * ((1 : F) * rho 113769) = ((1 : F) * rho 113770)

def relationRow7216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113771) * ((1 : F) + (1 : F) * rho 113770) = ((1 : F) * rho 113768 + (1 : F) * rho 113769)

def relationRow7217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113772) * ((1 : F) + (-1 : F) * rho 113770) = ((1 : F) * rho 113767 + (-1 : F) * rho 113768 + (-1 : F) * rho 113769)

def relationLc3207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 119⟩], residual := [((1 : F), 113771)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112094) * (relationLc3207 rho) = ((1 : F) * rho 113773)

def relationLc3208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 119⟩], residual := [((1 : F), 113772)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112094) * (relationLc3208 rho) = ((1 : F) * rho 113774)

def relationRow7220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113765) * ((1 : F) * rho 113766) = ((1 : F) * rho 113775)

def relationRow7221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113765) * ((1 : F) * rho 113765) = ((1 : F) * rho 113776)

def relationRow7222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113766) * ((1 : F) * rho 113766) = ((1 : F) * rho 113777)

def relationRow7223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113778) * ((-1 : F) * rho 113776 + (1 : F) * rho 113777) = ((2 : F) * rho 113775)

def relationRow7224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113779) * ((2 : F) + (1 : F) * rho 113776 + (-1 : F) * rho 113777) = ((1 : F) * rho 113776 + (1 : F) * rho 113777)

def relationLc3209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 120⟩, ⟨(1 : F), 112227, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113778 + (1 : F) * rho 113779) * (relationLc3209 rho) = ((1 : F) * rho 113780)

def relationLc3210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113779) * (relationLc3210 rho) = ((1 : F) * rho 113781)

def relationLc3211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113778) * (relationLc3211 rho) = ((1 : F) * rho 113782)

def relationRow7228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113781) * ((1 : F) * rho 113782) = ((1 : F) * rho 113783)

def relationRow7229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113784) * ((1 : F) + (1 : F) * rho 113783) = ((1 : F) * rho 113781 + (1 : F) * rho 113782)

def relationRow7230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113785) * ((1 : F) + (-1 : F) * rho 113783) = ((1 : F) * rho 113780 + (-1 : F) * rho 113781 + (-1 : F) * rho 113782)

def relationLc3212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 120⟩], residual := [((1 : F), 113784)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112095) * (relationLc3212 rho) = ((1 : F) * rho 113786)

def relationLc3213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 120⟩], residual := [((1 : F), 113785)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112095) * (relationLc3213 rho) = ((1 : F) * rho 113787)

def relationRow7233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113778) * ((1 : F) * rho 113779) = ((1 : F) * rho 113788)

def relationRow7234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113778) * ((1 : F) * rho 113778) = ((1 : F) * rho 113789)

def relationRow7235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113779) * ((1 : F) * rho 113779) = ((1 : F) * rho 113790)

def relationRow7236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113791) * ((-1 : F) * rho 113789 + (1 : F) * rho 113790) = ((2 : F) * rho 113788)

def relationRow7237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113792) * ((2 : F) + (1 : F) * rho 113789 + (-1 : F) * rho 113790) = ((1 : F) * rho 113789 + (1 : F) * rho 113790)

def relationLc3214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 121⟩, ⟨(1 : F), 112227, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113791 + (1 : F) * rho 113792) * (relationLc3214 rho) = ((1 : F) * rho 113793)

def relationLc3215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113792) * (relationLc3215 rho) = ((1 : F) * rho 113794)

def relationLc3216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113791) * (relationLc3216 rho) = ((1 : F) * rho 113795)

def relationRow7241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113794) * ((1 : F) * rho 113795) = ((1 : F) * rho 113796)

def relationRow7242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113797) * ((1 : F) + (1 : F) * rho 113796) = ((1 : F) * rho 113794 + (1 : F) * rho 113795)

def relationRow7243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113798) * ((1 : F) + (-1 : F) * rho 113796) = ((1 : F) * rho 113793 + (-1 : F) * rho 113794 + (-1 : F) * rho 113795)

def relationLc3217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 121⟩], residual := [((1 : F), 113797)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112096) * (relationLc3217 rho) = ((1 : F) * rho 113799)

def relationLc3218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 121⟩], residual := [((1 : F), 113798)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112096) * (relationLc3218 rho) = ((1 : F) * rho 113800)

def relationRow7246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113791) * ((1 : F) * rho 113792) = ((1 : F) * rho 113801)

def relationRow7247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113791) * ((1 : F) * rho 113791) = ((1 : F) * rho 113802)

def relationRow7248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113792) * ((1 : F) * rho 113792) = ((1 : F) * rho 113803)

def relationRow7249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113804) * ((-1 : F) * rho 113802 + (1 : F) * rho 113803) = ((2 : F) * rho 113801)

def relationRow7250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113805) * ((2 : F) + (1 : F) * rho 113802 + (-1 : F) * rho 113803) = ((1 : F) * rho 113802 + (1 : F) * rho 113803)

def relationLc3219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 122⟩, ⟨(1 : F), 112227, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113804 + (1 : F) * rho 113805) * (relationLc3219 rho) = ((1 : F) * rho 113806)

def relationLc3220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113805) * (relationLc3220 rho) = ((1 : F) * rho 113807)

def relationLc3221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113804) * (relationLc3221 rho) = ((1 : F) * rho 113808)

def relationRow7254 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113807) * ((1 : F) * rho 113808) = ((1 : F) * rho 113809)

def relationRow7255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113810) * ((1 : F) + (1 : F) * rho 113809) = ((1 : F) * rho 113807 + (1 : F) * rho 113808)

def relationRow7256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113811) * ((1 : F) + (-1 : F) * rho 113809) = ((1 : F) * rho 113806 + (-1 : F) * rho 113807 + (-1 : F) * rho 113808)

def relationLc3222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 122⟩], residual := [((1 : F), 113810)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112097) * (relationLc3222 rho) = ((1 : F) * rho 113812)

def relationLc3223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 122⟩], residual := [((1 : F), 113811)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112097) * (relationLc3223 rho) = ((1 : F) * rho 113813)

def relationRow7259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113804) * ((1 : F) * rho 113805) = ((1 : F) * rho 113814)

def relationRow7260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113804) * ((1 : F) * rho 113804) = ((1 : F) * rho 113815)

def relationRow7261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113805) * ((1 : F) * rho 113805) = ((1 : F) * rho 113816)

def relationRow7262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113817) * ((-1 : F) * rho 113815 + (1 : F) * rho 113816) = ((2 : F) * rho 113814)

def relationRow7263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113818) * ((2 : F) + (1 : F) * rho 113815 + (-1 : F) * rho 113816) = ((1 : F) * rho 113815 + (1 : F) * rho 113816)

def relationLc3224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 123⟩, ⟨(1 : F), 112227, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113817 + (1 : F) * rho 113818) * (relationLc3224 rho) = ((1 : F) * rho 113819)

def relationLc3225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113818) * (relationLc3225 rho) = ((1 : F) * rho 113820)

def relationLc3226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113817) * (relationLc3226 rho) = ((1 : F) * rho 113821)

def relationRow7267 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113820) * ((1 : F) * rho 113821) = ((1 : F) * rho 113822)

def relationRow7268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113823) * ((1 : F) + (1 : F) * rho 113822) = ((1 : F) * rho 113820 + (1 : F) * rho 113821)

def relationRow7269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113824) * ((1 : F) + (-1 : F) * rho 113822) = ((1 : F) * rho 113819 + (-1 : F) * rho 113820 + (-1 : F) * rho 113821)

def relationLc3227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 123⟩], residual := [((1 : F), 113823)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112098) * (relationLc3227 rho) = ((1 : F) * rho 113825)

def relationLc3228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 123⟩], residual := [((1 : F), 113824)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112098) * (relationLc3228 rho) = ((1 : F) * rho 113826)

def relationRow7272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113817) * ((1 : F) * rho 113818) = ((1 : F) * rho 113827)

def relationRow7273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113817) * ((1 : F) * rho 113817) = ((1 : F) * rho 113828)

def relationRow7274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113818) * ((1 : F) * rho 113818) = ((1 : F) * rho 113829)

def relationRow7275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113830) * ((-1 : F) * rho 113828 + (1 : F) * rho 113829) = ((2 : F) * rho 113827)

def relationRow7276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113831) * ((2 : F) + (1 : F) * rho 113828 + (-1 : F) * rho 113829) = ((1 : F) * rho 113828 + (1 : F) * rho 113829)

def relationLc3229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 124⟩, ⟨(1 : F), 112227, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113830 + (1 : F) * rho 113831) * (relationLc3229 rho) = ((1 : F) * rho 113832)

def relationLc3230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113831) * (relationLc3230 rho) = ((1 : F) * rho 113833)

def relationLc3231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113830) * (relationLc3231 rho) = ((1 : F) * rho 113834)

def relationRow7280 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113833) * ((1 : F) * rho 113834) = ((1 : F) * rho 113835)

def relationRow7281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113836) * ((1 : F) + (1 : F) * rho 113835) = ((1 : F) * rho 113833 + (1 : F) * rho 113834)

def relationRow7282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113837) * ((1 : F) + (-1 : F) * rho 113835) = ((1 : F) * rho 113832 + (-1 : F) * rho 113833 + (-1 : F) * rho 113834)

def relationLc3232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 124⟩], residual := [((1 : F), 113836)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112099) * (relationLc3232 rho) = ((1 : F) * rho 113838)

def relationLc3233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 124⟩], residual := [((1 : F), 113837)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112099) * (relationLc3233 rho) = ((1 : F) * rho 113839)

def relationRow7285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113830) * ((1 : F) * rho 113831) = ((1 : F) * rho 113840)

def relationRow7286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113830) * ((1 : F) * rho 113830) = ((1 : F) * rho 113841)

def relationRow7287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113831) * ((1 : F) * rho 113831) = ((1 : F) * rho 113842)

def relationRow7288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113843) * ((-1 : F) * rho 113841 + (1 : F) * rho 113842) = ((2 : F) * rho 113840)

def relationRow7289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113844) * ((2 : F) + (1 : F) * rho 113841 + (-1 : F) * rho 113842) = ((1 : F) * rho 113841 + (1 : F) * rho 113842)

def relationLc3234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 125⟩, ⟨(1 : F), 112227, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113843 + (1 : F) * rho 113844) * (relationLc3234 rho) = ((1 : F) * rho 113845)

def relationLc3235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113844) * (relationLc3235 rho) = ((1 : F) * rho 113846)

def relationLc3236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113843) * (relationLc3236 rho) = ((1 : F) * rho 113847)

def relationRow7293 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113846) * ((1 : F) * rho 113847) = ((1 : F) * rho 113848)

def relationRow7294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113849) * ((1 : F) + (1 : F) * rho 113848) = ((1 : F) * rho 113846 + (1 : F) * rho 113847)

def relationRow7295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113850) * ((1 : F) + (-1 : F) * rho 113848) = ((1 : F) * rho 113845 + (-1 : F) * rho 113846 + (-1 : F) * rho 113847)

def relationLc3237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 125⟩], residual := [((1 : F), 113849)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112100) * (relationLc3237 rho) = ((1 : F) * rho 113851)

def relationLc3238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 125⟩], residual := [((1 : F), 113850)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112100) * (relationLc3238 rho) = ((1 : F) * rho 113852)

def relationRow7298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113843) * ((1 : F) * rho 113844) = ((1 : F) * rho 113853)

def relationRow7299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113843) * ((1 : F) * rho 113843) = ((1 : F) * rho 113854)

def relationRow7300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113844) * ((1 : F) * rho 113844) = ((1 : F) * rho 113855)

def relationRow7301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113856) * ((-1 : F) * rho 113854 + (1 : F) * rho 113855) = ((2 : F) * rho 113853)

def relationRow7302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113857) * ((2 : F) + (1 : F) * rho 113854 + (-1 : F) * rho 113855) = ((1 : F) * rho 113854 + (1 : F) * rho 113855)

def relationLc3239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 126⟩, ⟨(1 : F), 112227, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113856 + (1 : F) * rho 113857) * (relationLc3239 rho) = ((1 : F) * rho 113858)

def relationLc3240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113857) * (relationLc3240 rho) = ((1 : F) * rho 113859)

def relationLc3241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113856) * (relationLc3241 rho) = ((1 : F) * rho 113860)

def relationRow7306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113859) * ((1 : F) * rho 113860) = ((1 : F) * rho 113861)

def relationRow7307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113862) * ((1 : F) + (1 : F) * rho 113861) = ((1 : F) * rho 113859 + (1 : F) * rho 113860)

def relationRow7308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113863) * ((1 : F) + (-1 : F) * rho 113861) = ((1 : F) * rho 113858 + (-1 : F) * rho 113859 + (-1 : F) * rho 113860)

def relationLc3242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 126⟩], residual := [((1 : F), 113862)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112101) * (relationLc3242 rho) = ((1 : F) * rho 113864)

def relationLc3243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 126⟩], residual := [((1 : F), 113863)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112101) * (relationLc3243 rho) = ((1 : F) * rho 113865)

def relationRow7311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113856) * ((1 : F) * rho 113857) = ((1 : F) * rho 113866)

def relationRow7312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113856) * ((1 : F) * rho 113856) = ((1 : F) * rho 113867)

def relationRow7313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113857) * ((1 : F) * rho 113857) = ((1 : F) * rho 113868)

def relationRow7314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113869) * ((-1 : F) * rho 113867 + (1 : F) * rho 113868) = ((2 : F) * rho 113866)

def relationRow7315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113870) * ((2 : F) + (1 : F) * rho 113867 + (-1 : F) * rho 113868) = ((1 : F) * rho 113867 + (1 : F) * rho 113868)

def relationLc3244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112226, 13, 127⟩, ⟨(1 : F), 112227, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113869 + (1 : F) * rho 113870) * (relationLc3244 rho) = ((1 : F) * rho 113871)

def relationLc3245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 112226, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113870) * (relationLc3245 rho) = ((1 : F) * rho 113872)

def relationLc3246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 112227, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113869) * (relationLc3246 rho) = ((1 : F) * rho 113873)

def relationRow7319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 113872) * ((1 : F) * rho 113873) = ((1 : F) * rho 113874)

def relationRow7320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113875) * ((1 : F) + (1 : F) * rho 113874) = ((1 : F) * rho 113872 + (1 : F) * rho 113873)

def relationRow7321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113876) * ((1 : F) + (-1 : F) * rho 113874) = ((1 : F) * rho 113871 + (-1 : F) * rho 113872 + (-1 : F) * rho 113873)

def relationLc3247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 112226, 13, 127⟩], residual := [((1 : F), 113875)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112102) * (relationLc3247 rho) = ((1 : F) * rho 113877)

def relationLc3248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 112227, 13, 127⟩], residual := [((1 : F), 113876)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112102) * (relationLc3248 rho) = ((1 : F) * rho 113878)

def relationRow7324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113869) * ((1 : F) * rho 113870) = ((1 : F) * rho 113879)

def relationRow7325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113869) * ((1 : F) * rho 113869) = ((1 : F) * rho 113880)

def relationRow7326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113870) * ((1 : F) * rho 113870) = ((1 : F) * rho 113881)

def relationRow7327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113882) * ((-1 : F) * rho 113880 + (1 : F) * rho 113881) = ((2 : F) * rho 113879)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
