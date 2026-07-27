import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg109Defs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109

def relationLc3026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122326) * (relationLc3026 rho) = ((1 : F) * rho 122330)

def relationRow6747 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122329) * ((1 : F) * rho 122330) = ((1 : F) * rho 122331)

def relationRow6748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122332) * ((1 : F) + (1 : F) * rho 122331) = ((1 : F) * rho 122329 + (1 : F) * rho 122330)

def relationRow6749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122333) * ((1 : F) + (-1 : F) * rho 122331) = ((1 : F) * rho 122328 + (-1 : F) * rho 122329 + (-1 : F) * rho 122330)

def relationLc3027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 83⟩], residual := [((1 : F), 122332)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121087) * (relationLc3027 rho) = ((1 : F) * rho 122334)

def relationLc3028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 83⟩], residual := [((1 : F), 122333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121087) * (relationLc3028 rho) = ((1 : F) * rho 122335)

def relationRow6752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122326) * ((1 : F) * rho 122327) = ((1 : F) * rho 122336)

def relationRow6753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122326) * ((1 : F) * rho 122326) = ((1 : F) * rho 122337)

def relationRow6754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122327) * ((1 : F) * rho 122327) = ((1 : F) * rho 122338)

def relationRow6755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122339) * ((-1 : F) * rho 122337 + (1 : F) * rho 122338) = ((2 : F) * rho 122336)

def relationRow6756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122340) * ((2 : F) + (1 : F) * rho 122337 + (-1 : F) * rho 122338) = ((1 : F) * rho 122337 + (1 : F) * rho 122338)

def relationLc3029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 84⟩, ⟨(1 : F), 121256, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122339 + (1 : F) * rho 122340) * (relationLc3029 rho) = ((1 : F) * rho 122341)

def relationLc3030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122340) * (relationLc3030 rho) = ((1 : F) * rho 122342)

def relationLc3031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122339) * (relationLc3031 rho) = ((1 : F) * rho 122343)

def relationRow6760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122342) * ((1 : F) * rho 122343) = ((1 : F) * rho 122344)

def relationRow6761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122345) * ((1 : F) + (1 : F) * rho 122344) = ((1 : F) * rho 122342 + (1 : F) * rho 122343)

def relationRow6762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122346) * ((1 : F) + (-1 : F) * rho 122344) = ((1 : F) * rho 122341 + (-1 : F) * rho 122342 + (-1 : F) * rho 122343)

def relationLc3032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 84⟩], residual := [((1 : F), 122345)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121088) * (relationLc3032 rho) = ((1 : F) * rho 122347)

def relationLc3033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 84⟩], residual := [((1 : F), 122346)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121088) * (relationLc3033 rho) = ((1 : F) * rho 122348)

def relationRow6765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122339) * ((1 : F) * rho 122340) = ((1 : F) * rho 122349)

def relationRow6766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122339) * ((1 : F) * rho 122339) = ((1 : F) * rho 122350)

def relationRow6767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122340) * ((1 : F) * rho 122340) = ((1 : F) * rho 122351)

def relationRow6768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122352) * ((-1 : F) * rho 122350 + (1 : F) * rho 122351) = ((2 : F) * rho 122349)

def relationRow6769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122353) * ((2 : F) + (1 : F) * rho 122350 + (-1 : F) * rho 122351) = ((1 : F) * rho 122350 + (1 : F) * rho 122351)

def relationLc3034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 85⟩, ⟨(1 : F), 121256, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122352 + (1 : F) * rho 122353) * (relationLc3034 rho) = ((1 : F) * rho 122354)

def relationLc3035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122353) * (relationLc3035 rho) = ((1 : F) * rho 122355)

def relationLc3036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122352) * (relationLc3036 rho) = ((1 : F) * rho 122356)

def relationRow6773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122355) * ((1 : F) * rho 122356) = ((1 : F) * rho 122357)

def relationRow6774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122358) * ((1 : F) + (1 : F) * rho 122357) = ((1 : F) * rho 122355 + (1 : F) * rho 122356)

def relationRow6775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122359) * ((1 : F) + (-1 : F) * rho 122357) = ((1 : F) * rho 122354 + (-1 : F) * rho 122355 + (-1 : F) * rho 122356)

def relationLc3037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 85⟩], residual := [((1 : F), 122358)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121089) * (relationLc3037 rho) = ((1 : F) * rho 122360)

def relationLc3038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 85⟩], residual := [((1 : F), 122359)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121089) * (relationLc3038 rho) = ((1 : F) * rho 122361)

def relationRow6778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122352) * ((1 : F) * rho 122353) = ((1 : F) * rho 122362)

def relationRow6779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122352) * ((1 : F) * rho 122352) = ((1 : F) * rho 122363)

def relationRow6780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122353) * ((1 : F) * rho 122353) = ((1 : F) * rho 122364)

def relationRow6781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122365) * ((-1 : F) * rho 122363 + (1 : F) * rho 122364) = ((2 : F) * rho 122362)

def relationRow6782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122366) * ((2 : F) + (1 : F) * rho 122363 + (-1 : F) * rho 122364) = ((1 : F) * rho 122363 + (1 : F) * rho 122364)

def relationLc3039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 86⟩, ⟨(1 : F), 121256, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122365 + (1 : F) * rho 122366) * (relationLc3039 rho) = ((1 : F) * rho 122367)

def relationLc3040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122366) * (relationLc3040 rho) = ((1 : F) * rho 122368)

def relationLc3041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122365) * (relationLc3041 rho) = ((1 : F) * rho 122369)

def relationRow6786 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122368) * ((1 : F) * rho 122369) = ((1 : F) * rho 122370)

def relationRow6787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122371) * ((1 : F) + (1 : F) * rho 122370) = ((1 : F) * rho 122368 + (1 : F) * rho 122369)

def relationRow6788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122372) * ((1 : F) + (-1 : F) * rho 122370) = ((1 : F) * rho 122367 + (-1 : F) * rho 122368 + (-1 : F) * rho 122369)

def relationLc3042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 86⟩], residual := [((1 : F), 122371)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121090) * (relationLc3042 rho) = ((1 : F) * rho 122373)

def relationLc3043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 86⟩], residual := [((1 : F), 122372)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121090) * (relationLc3043 rho) = ((1 : F) * rho 122374)

def relationRow6791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122365) * ((1 : F) * rho 122366) = ((1 : F) * rho 122375)

def relationRow6792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122365) * ((1 : F) * rho 122365) = ((1 : F) * rho 122376)

def relationRow6793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122366) * ((1 : F) * rho 122366) = ((1 : F) * rho 122377)

def relationRow6794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122378) * ((-1 : F) * rho 122376 + (1 : F) * rho 122377) = ((2 : F) * rho 122375)

def relationRow6795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122379) * ((2 : F) + (1 : F) * rho 122376 + (-1 : F) * rho 122377) = ((1 : F) * rho 122376 + (1 : F) * rho 122377)

def relationLc3044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 87⟩, ⟨(1 : F), 121256, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122378 + (1 : F) * rho 122379) * (relationLc3044 rho) = ((1 : F) * rho 122380)

def relationLc3045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122379) * (relationLc3045 rho) = ((1 : F) * rho 122381)

def relationLc3046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122378) * (relationLc3046 rho) = ((1 : F) * rho 122382)

def relationRow6799 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122381) * ((1 : F) * rho 122382) = ((1 : F) * rho 122383)

def relationRow6800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122384) * ((1 : F) + (1 : F) * rho 122383) = ((1 : F) * rho 122381 + (1 : F) * rho 122382)

def relationRow6801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122385) * ((1 : F) + (-1 : F) * rho 122383) = ((1 : F) * rho 122380 + (-1 : F) * rho 122381 + (-1 : F) * rho 122382)

def relationLc3047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 87⟩], residual := [((1 : F), 122384)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121091) * (relationLc3047 rho) = ((1 : F) * rho 122386)

def relationLc3048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 87⟩], residual := [((1 : F), 122385)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121091) * (relationLc3048 rho) = ((1 : F) * rho 122387)

def relationRow6804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122378) * ((1 : F) * rho 122379) = ((1 : F) * rho 122388)

def relationRow6805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122378) * ((1 : F) * rho 122378) = ((1 : F) * rho 122389)

def relationRow6806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122379) * ((1 : F) * rho 122379) = ((1 : F) * rho 122390)

def relationRow6807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122391) * ((-1 : F) * rho 122389 + (1 : F) * rho 122390) = ((2 : F) * rho 122388)

def relationRow6808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122392) * ((2 : F) + (1 : F) * rho 122389 + (-1 : F) * rho 122390) = ((1 : F) * rho 122389 + (1 : F) * rho 122390)

def relationLc3049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 88⟩, ⟨(1 : F), 121256, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122391 + (1 : F) * rho 122392) * (relationLc3049 rho) = ((1 : F) * rho 122393)

def relationLc3050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122392) * (relationLc3050 rho) = ((1 : F) * rho 122394)

def relationLc3051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122391) * (relationLc3051 rho) = ((1 : F) * rho 122395)

def relationRow6812 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122394) * ((1 : F) * rho 122395) = ((1 : F) * rho 122396)

def relationRow6813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122397) * ((1 : F) + (1 : F) * rho 122396) = ((1 : F) * rho 122394 + (1 : F) * rho 122395)

def relationRow6814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122398) * ((1 : F) + (-1 : F) * rho 122396) = ((1 : F) * rho 122393 + (-1 : F) * rho 122394 + (-1 : F) * rho 122395)

def relationLc3052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 88⟩], residual := [((1 : F), 122397)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121092) * (relationLc3052 rho) = ((1 : F) * rho 122399)

def relationLc3053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 88⟩], residual := [((1 : F), 122398)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121092) * (relationLc3053 rho) = ((1 : F) * rho 122400)

def relationRow6817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122391) * ((1 : F) * rho 122392) = ((1 : F) * rho 122401)

def relationRow6818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122391) * ((1 : F) * rho 122391) = ((1 : F) * rho 122402)

def relationRow6819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122392) * ((1 : F) * rho 122392) = ((1 : F) * rho 122403)

def relationRow6820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122404) * ((-1 : F) * rho 122402 + (1 : F) * rho 122403) = ((2 : F) * rho 122401)

def relationRow6821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122405) * ((2 : F) + (1 : F) * rho 122402 + (-1 : F) * rho 122403) = ((1 : F) * rho 122402 + (1 : F) * rho 122403)

def relationLc3054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 89⟩, ⟨(1 : F), 121256, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122404 + (1 : F) * rho 122405) * (relationLc3054 rho) = ((1 : F) * rho 122406)

def relationLc3055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122405) * (relationLc3055 rho) = ((1 : F) * rho 122407)

def relationLc3056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122404) * (relationLc3056 rho) = ((1 : F) * rho 122408)

def relationRow6825 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122407) * ((1 : F) * rho 122408) = ((1 : F) * rho 122409)

def relationRow6826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122410) * ((1 : F) + (1 : F) * rho 122409) = ((1 : F) * rho 122407 + (1 : F) * rho 122408)

def relationRow6827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122411) * ((1 : F) + (-1 : F) * rho 122409) = ((1 : F) * rho 122406 + (-1 : F) * rho 122407 + (-1 : F) * rho 122408)

def relationLc3057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 89⟩], residual := [((1 : F), 122410)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121093) * (relationLc3057 rho) = ((1 : F) * rho 122412)

def relationLc3058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 89⟩], residual := [((1 : F), 122411)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121093) * (relationLc3058 rho) = ((1 : F) * rho 122413)

def relationRow6830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122404) * ((1 : F) * rho 122405) = ((1 : F) * rho 122414)

def relationRow6831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122404) * ((1 : F) * rho 122404) = ((1 : F) * rho 122415)

def relationRow6832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122405) * ((1 : F) * rho 122405) = ((1 : F) * rho 122416)

def relationRow6833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122417) * ((-1 : F) * rho 122415 + (1 : F) * rho 122416) = ((2 : F) * rho 122414)

def relationRow6834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122418) * ((2 : F) + (1 : F) * rho 122415 + (-1 : F) * rho 122416) = ((1 : F) * rho 122415 + (1 : F) * rho 122416)

def relationLc3059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 90⟩, ⟨(1 : F), 121256, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122417 + (1 : F) * rho 122418) * (relationLc3059 rho) = ((1 : F) * rho 122419)

def relationLc3060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122418) * (relationLc3060 rho) = ((1 : F) * rho 122420)

def relationLc3061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122417) * (relationLc3061 rho) = ((1 : F) * rho 122421)

def relationRow6838 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122420) * ((1 : F) * rho 122421) = ((1 : F) * rho 122422)

def relationRow6839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122423) * ((1 : F) + (1 : F) * rho 122422) = ((1 : F) * rho 122420 + (1 : F) * rho 122421)

def relationRow6840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122424) * ((1 : F) + (-1 : F) * rho 122422) = ((1 : F) * rho 122419 + (-1 : F) * rho 122420 + (-1 : F) * rho 122421)

def relationLc3062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 90⟩], residual := [((1 : F), 122423)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121094) * (relationLc3062 rho) = ((1 : F) * rho 122425)

def relationLc3063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 90⟩], residual := [((1 : F), 122424)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121094) * (relationLc3063 rho) = ((1 : F) * rho 122426)

def relationRow6843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122417) * ((1 : F) * rho 122418) = ((1 : F) * rho 122427)

def relationRow6844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122417) * ((1 : F) * rho 122417) = ((1 : F) * rho 122428)

def relationRow6845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122418) * ((1 : F) * rho 122418) = ((1 : F) * rho 122429)

def relationRow6846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122430) * ((-1 : F) * rho 122428 + (1 : F) * rho 122429) = ((2 : F) * rho 122427)

def relationRow6847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122431) * ((2 : F) + (1 : F) * rho 122428 + (-1 : F) * rho 122429) = ((1 : F) * rho 122428 + (1 : F) * rho 122429)

def relationLc3064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 91⟩, ⟨(1 : F), 121256, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122430 + (1 : F) * rho 122431) * (relationLc3064 rho) = ((1 : F) * rho 122432)

def relationLc3065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122431) * (relationLc3065 rho) = ((1 : F) * rho 122433)

def relationLc3066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122430) * (relationLc3066 rho) = ((1 : F) * rho 122434)

def relationRow6851 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122433) * ((1 : F) * rho 122434) = ((1 : F) * rho 122435)

def relationRow6852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122436) * ((1 : F) + (1 : F) * rho 122435) = ((1 : F) * rho 122433 + (1 : F) * rho 122434)

def relationRow6853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122437) * ((1 : F) + (-1 : F) * rho 122435) = ((1 : F) * rho 122432 + (-1 : F) * rho 122433 + (-1 : F) * rho 122434)

def relationLc3067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 91⟩], residual := [((1 : F), 122436)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121095) * (relationLc3067 rho) = ((1 : F) * rho 122438)

def relationLc3068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 91⟩], residual := [((1 : F), 122437)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121095) * (relationLc3068 rho) = ((1 : F) * rho 122439)

def relationRow6856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122430) * ((1 : F) * rho 122431) = ((1 : F) * rho 122440)

def relationRow6857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122430) * ((1 : F) * rho 122430) = ((1 : F) * rho 122441)

def relationRow6858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122431) * ((1 : F) * rho 122431) = ((1 : F) * rho 122442)

def relationRow6859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122443) * ((-1 : F) * rho 122441 + (1 : F) * rho 122442) = ((2 : F) * rho 122440)

def relationRow6860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122444) * ((2 : F) + (1 : F) * rho 122441 + (-1 : F) * rho 122442) = ((1 : F) * rho 122441 + (1 : F) * rho 122442)

def relationLc3069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 92⟩, ⟨(1 : F), 121256, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122443 + (1 : F) * rho 122444) * (relationLc3069 rho) = ((1 : F) * rho 122445)

def relationLc3070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122444) * (relationLc3070 rho) = ((1 : F) * rho 122446)

def relationLc3071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122443) * (relationLc3071 rho) = ((1 : F) * rho 122447)

def relationRow6864 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122446) * ((1 : F) * rho 122447) = ((1 : F) * rho 122448)

def relationRow6865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122449) * ((1 : F) + (1 : F) * rho 122448) = ((1 : F) * rho 122446 + (1 : F) * rho 122447)

def relationRow6866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122450) * ((1 : F) + (-1 : F) * rho 122448) = ((1 : F) * rho 122445 + (-1 : F) * rho 122446 + (-1 : F) * rho 122447)

def relationLc3072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 92⟩], residual := [((1 : F), 122449)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121096) * (relationLc3072 rho) = ((1 : F) * rho 122451)

def relationLc3073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 92⟩], residual := [((1 : F), 122450)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121096) * (relationLc3073 rho) = ((1 : F) * rho 122452)

def relationRow6869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122443) * ((1 : F) * rho 122444) = ((1 : F) * rho 122453)

def relationRow6870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122443) * ((1 : F) * rho 122443) = ((1 : F) * rho 122454)

def relationRow6871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122444) * ((1 : F) * rho 122444) = ((1 : F) * rho 122455)

def relationRow6872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122456) * ((-1 : F) * rho 122454 + (1 : F) * rho 122455) = ((2 : F) * rho 122453)

def relationRow6873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122457) * ((2 : F) + (1 : F) * rho 122454 + (-1 : F) * rho 122455) = ((1 : F) * rho 122454 + (1 : F) * rho 122455)

def relationLc3074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 93⟩, ⟨(1 : F), 121256, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122456 + (1 : F) * rho 122457) * (relationLc3074 rho) = ((1 : F) * rho 122458)

def relationLc3075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122457) * (relationLc3075 rho) = ((1 : F) * rho 122459)

def relationLc3076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122456) * (relationLc3076 rho) = ((1 : F) * rho 122460)

def relationRow6877 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122459) * ((1 : F) * rho 122460) = ((1 : F) * rho 122461)

def relationRow6878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122462) * ((1 : F) + (1 : F) * rho 122461) = ((1 : F) * rho 122459 + (1 : F) * rho 122460)

def relationRow6879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122463) * ((1 : F) + (-1 : F) * rho 122461) = ((1 : F) * rho 122458 + (-1 : F) * rho 122459 + (-1 : F) * rho 122460)

def relationLc3077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 93⟩], residual := [((1 : F), 122462)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121097) * (relationLc3077 rho) = ((1 : F) * rho 122464)

def relationLc3078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 93⟩], residual := [((1 : F), 122463)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121097) * (relationLc3078 rho) = ((1 : F) * rho 122465)

def relationRow6882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122456) * ((1 : F) * rho 122457) = ((1 : F) * rho 122466)

def relationRow6883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122456) * ((1 : F) * rho 122456) = ((1 : F) * rho 122467)

def relationRow6884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122457) * ((1 : F) * rho 122457) = ((1 : F) * rho 122468)

def relationRow6885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122469) * ((-1 : F) * rho 122467 + (1 : F) * rho 122468) = ((2 : F) * rho 122466)

def relationRow6886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122470) * ((2 : F) + (1 : F) * rho 122467 + (-1 : F) * rho 122468) = ((1 : F) * rho 122467 + (1 : F) * rho 122468)

def relationLc3079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 94⟩, ⟨(1 : F), 121256, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122469 + (1 : F) * rho 122470) * (relationLc3079 rho) = ((1 : F) * rho 122471)

def relationLc3080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122470) * (relationLc3080 rho) = ((1 : F) * rho 122472)

def relationLc3081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122469) * (relationLc3081 rho) = ((1 : F) * rho 122473)

def relationRow6890 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122472) * ((1 : F) * rho 122473) = ((1 : F) * rho 122474)

def relationRow6891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122475) * ((1 : F) + (1 : F) * rho 122474) = ((1 : F) * rho 122472 + (1 : F) * rho 122473)

def relationRow6892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122476) * ((1 : F) + (-1 : F) * rho 122474) = ((1 : F) * rho 122471 + (-1 : F) * rho 122472 + (-1 : F) * rho 122473)

def relationLc3082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 94⟩], residual := [((1 : F), 122475)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121098) * (relationLc3082 rho) = ((1 : F) * rho 122477)

def relationLc3083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 94⟩], residual := [((1 : F), 122476)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121098) * (relationLc3083 rho) = ((1 : F) * rho 122478)

def relationRow6895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122469) * ((1 : F) * rho 122470) = ((1 : F) * rho 122479)

def relationRow6896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122469) * ((1 : F) * rho 122469) = ((1 : F) * rho 122480)

def relationRow6897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122470) * ((1 : F) * rho 122470) = ((1 : F) * rho 122481)

def relationRow6898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122482) * ((-1 : F) * rho 122480 + (1 : F) * rho 122481) = ((2 : F) * rho 122479)

def relationRow6899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122483) * ((2 : F) + (1 : F) * rho 122480 + (-1 : F) * rho 122481) = ((1 : F) * rho 122480 + (1 : F) * rho 122481)

def relationLc3084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 95⟩, ⟨(1 : F), 121256, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122482 + (1 : F) * rho 122483) * (relationLc3084 rho) = ((1 : F) * rho 122484)

def relationLc3085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122483) * (relationLc3085 rho) = ((1 : F) * rho 122485)

def relationLc3086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122482) * (relationLc3086 rho) = ((1 : F) * rho 122486)

def relationRow6903 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122485) * ((1 : F) * rho 122486) = ((1 : F) * rho 122487)

def relationRow6904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122488) * ((1 : F) + (1 : F) * rho 122487) = ((1 : F) * rho 122485 + (1 : F) * rho 122486)

def relationRow6905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122489) * ((1 : F) + (-1 : F) * rho 122487) = ((1 : F) * rho 122484 + (-1 : F) * rho 122485 + (-1 : F) * rho 122486)

def relationLc3087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 95⟩], residual := [((1 : F), 122488)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121099) * (relationLc3087 rho) = ((1 : F) * rho 122490)

def relationLc3088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 95⟩], residual := [((1 : F), 122489)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121099) * (relationLc3088 rho) = ((1 : F) * rho 122491)

def relationRow6908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122482) * ((1 : F) * rho 122483) = ((1 : F) * rho 122492)

def relationRow6909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122482) * ((1 : F) * rho 122482) = ((1 : F) * rho 122493)

def relationRow6910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122483) * ((1 : F) * rho 122483) = ((1 : F) * rho 122494)

def relationRow6911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122495) * ((-1 : F) * rho 122493 + (1 : F) * rho 122494) = ((2 : F) * rho 122492)

def relationRow6912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122496) * ((2 : F) + (1 : F) * rho 122493 + (-1 : F) * rho 122494) = ((1 : F) * rho 122493 + (1 : F) * rho 122494)

def relationLc3089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 96⟩, ⟨(1 : F), 121256, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122495 + (1 : F) * rho 122496) * (relationLc3089 rho) = ((1 : F) * rho 122497)

def relationLc3090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122496) * (relationLc3090 rho) = ((1 : F) * rho 122498)

def relationLc3091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122495) * (relationLc3091 rho) = ((1 : F) * rho 122499)

def relationRow6916 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122498) * ((1 : F) * rho 122499) = ((1 : F) * rho 122500)

def relationRow6917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122501) * ((1 : F) + (1 : F) * rho 122500) = ((1 : F) * rho 122498 + (1 : F) * rho 122499)

def relationRow6918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122502) * ((1 : F) + (-1 : F) * rho 122500) = ((1 : F) * rho 122497 + (-1 : F) * rho 122498 + (-1 : F) * rho 122499)

def relationLc3092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 96⟩], residual := [((1 : F), 122501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121100) * (relationLc3092 rho) = ((1 : F) * rho 122503)

def relationLc3093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 96⟩], residual := [((1 : F), 122502)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121100) * (relationLc3093 rho) = ((1 : F) * rho 122504)

def relationRow6921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122495) * ((1 : F) * rho 122496) = ((1 : F) * rho 122505)

def relationRow6922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122495) * ((1 : F) * rho 122495) = ((1 : F) * rho 122506)

def relationRow6923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122496) * ((1 : F) * rho 122496) = ((1 : F) * rho 122507)

def relationRow6924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122508) * ((-1 : F) * rho 122506 + (1 : F) * rho 122507) = ((2 : F) * rho 122505)

def relationRow6925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122509) * ((2 : F) + (1 : F) * rho 122506 + (-1 : F) * rho 122507) = ((1 : F) * rho 122506 + (1 : F) * rho 122507)

def relationLc3094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 97⟩, ⟨(1 : F), 121256, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122508 + (1 : F) * rho 122509) * (relationLc3094 rho) = ((1 : F) * rho 122510)

def relationLc3095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122509) * (relationLc3095 rho) = ((1 : F) * rho 122511)

def relationLc3096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122508) * (relationLc3096 rho) = ((1 : F) * rho 122512)

def relationRow6929 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122511) * ((1 : F) * rho 122512) = ((1 : F) * rho 122513)

def relationRow6930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122514) * ((1 : F) + (1 : F) * rho 122513) = ((1 : F) * rho 122511 + (1 : F) * rho 122512)

def relationRow6931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122515) * ((1 : F) + (-1 : F) * rho 122513) = ((1 : F) * rho 122510 + (-1 : F) * rho 122511 + (-1 : F) * rho 122512)

def relationLc3097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 97⟩], residual := [((1 : F), 122514)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121101) * (relationLc3097 rho) = ((1 : F) * rho 122516)

def relationLc3098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 97⟩], residual := [((1 : F), 122515)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121101) * (relationLc3098 rho) = ((1 : F) * rho 122517)

def relationRow6934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122508) * ((1 : F) * rho 122509) = ((1 : F) * rho 122518)

def relationRow6935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122508) * ((1 : F) * rho 122508) = ((1 : F) * rho 122519)

def relationRow6936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122509) * ((1 : F) * rho 122509) = ((1 : F) * rho 122520)

def relationRow6937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122521) * ((-1 : F) * rho 122519 + (1 : F) * rho 122520) = ((2 : F) * rho 122518)

def relationRow6938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122522) * ((2 : F) + (1 : F) * rho 122519 + (-1 : F) * rho 122520) = ((1 : F) * rho 122519 + (1 : F) * rho 122520)

def relationLc3099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 98⟩, ⟨(1 : F), 121256, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122521 + (1 : F) * rho 122522) * (relationLc3099 rho) = ((1 : F) * rho 122523)

def relationLc3100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122522) * (relationLc3100 rho) = ((1 : F) * rho 122524)

def relationLc3101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122521) * (relationLc3101 rho) = ((1 : F) * rho 122525)

def relationRow6942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122524) * ((1 : F) * rho 122525) = ((1 : F) * rho 122526)

def relationRow6943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122527) * ((1 : F) + (1 : F) * rho 122526) = ((1 : F) * rho 122524 + (1 : F) * rho 122525)

def relationRow6944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122528) * ((1 : F) + (-1 : F) * rho 122526) = ((1 : F) * rho 122523 + (-1 : F) * rho 122524 + (-1 : F) * rho 122525)

def relationLc3102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 98⟩], residual := [((1 : F), 122527)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121102) * (relationLc3102 rho) = ((1 : F) * rho 122529)

def relationLc3103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 98⟩], residual := [((1 : F), 122528)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121102) * (relationLc3103 rho) = ((1 : F) * rho 122530)

def relationRow6947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122521) * ((1 : F) * rho 122522) = ((1 : F) * rho 122531)

def relationRow6948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122521) * ((1 : F) * rho 122521) = ((1 : F) * rho 122532)

def relationRow6949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122522) * ((1 : F) * rho 122522) = ((1 : F) * rho 122533)

def relationRow6950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122534) * ((-1 : F) * rho 122532 + (1 : F) * rho 122533) = ((2 : F) * rho 122531)

def relationRow6951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122535) * ((2 : F) + (1 : F) * rho 122532 + (-1 : F) * rho 122533) = ((1 : F) * rho 122532 + (1 : F) * rho 122533)

def relationLc3104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 99⟩, ⟨(1 : F), 121256, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122534 + (1 : F) * rho 122535) * (relationLc3104 rho) = ((1 : F) * rho 122536)

def relationLc3105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122535) * (relationLc3105 rho) = ((1 : F) * rho 122537)

def relationLc3106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122534) * (relationLc3106 rho) = ((1 : F) * rho 122538)

def relationRow6955 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122537) * ((1 : F) * rho 122538) = ((1 : F) * rho 122539)

def relationRow6956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122540) * ((1 : F) + (1 : F) * rho 122539) = ((1 : F) * rho 122537 + (1 : F) * rho 122538)

def relationRow6957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122541) * ((1 : F) + (-1 : F) * rho 122539) = ((1 : F) * rho 122536 + (-1 : F) * rho 122537 + (-1 : F) * rho 122538)

def relationLc3107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 99⟩], residual := [((1 : F), 122540)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121103) * (relationLc3107 rho) = ((1 : F) * rho 122542)

def relationLc3108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 99⟩], residual := [((1 : F), 122541)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121103) * (relationLc3108 rho) = ((1 : F) * rho 122543)

def relationRow6960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122534) * ((1 : F) * rho 122535) = ((1 : F) * rho 122544)

def relationRow6961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122534) * ((1 : F) * rho 122534) = ((1 : F) * rho 122545)

def relationRow6962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122535) * ((1 : F) * rho 122535) = ((1 : F) * rho 122546)

def relationRow6963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122547) * ((-1 : F) * rho 122545 + (1 : F) * rho 122546) = ((2 : F) * rho 122544)

def relationRow6964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122548) * ((2 : F) + (1 : F) * rho 122545 + (-1 : F) * rho 122546) = ((1 : F) * rho 122545 + (1 : F) * rho 122546)

def relationLc3109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 100⟩, ⟨(1 : F), 121256, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122547 + (1 : F) * rho 122548) * (relationLc3109 rho) = ((1 : F) * rho 122549)

def relationLc3110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122548) * (relationLc3110 rho) = ((1 : F) * rho 122550)

def relationLc3111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122547) * (relationLc3111 rho) = ((1 : F) * rho 122551)

def relationRow6968 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122550) * ((1 : F) * rho 122551) = ((1 : F) * rho 122552)

def relationRow6969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122553) * ((1 : F) + (1 : F) * rho 122552) = ((1 : F) * rho 122550 + (1 : F) * rho 122551)

def relationRow6970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122554) * ((1 : F) + (-1 : F) * rho 122552) = ((1 : F) * rho 122549 + (-1 : F) * rho 122550 + (-1 : F) * rho 122551)

def relationLc3112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 100⟩], residual := [((1 : F), 122553)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121104) * (relationLc3112 rho) = ((1 : F) * rho 122555)

def relationLc3113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 100⟩], residual := [((1 : F), 122554)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121104) * (relationLc3113 rho) = ((1 : F) * rho 122556)

def relationRow6973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122547) * ((1 : F) * rho 122548) = ((1 : F) * rho 122557)

def relationRow6974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122547) * ((1 : F) * rho 122547) = ((1 : F) * rho 122558)

def relationRow6975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122548) * ((1 : F) * rho 122548) = ((1 : F) * rho 122559)

def relationRow6976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122560) * ((-1 : F) * rho 122558 + (1 : F) * rho 122559) = ((2 : F) * rho 122557)

def relationRow6977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122561) * ((2 : F) + (1 : F) * rho 122558 + (-1 : F) * rho 122559) = ((1 : F) * rho 122558 + (1 : F) * rho 122559)

def relationLc3114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 101⟩, ⟨(1 : F), 121256, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122560 + (1 : F) * rho 122561) * (relationLc3114 rho) = ((1 : F) * rho 122562)

def relationLc3115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122561) * (relationLc3115 rho) = ((1 : F) * rho 122563)

def relationLc3116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122560) * (relationLc3116 rho) = ((1 : F) * rho 122564)

def relationRow6981 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122563) * ((1 : F) * rho 122564) = ((1 : F) * rho 122565)

def relationRow6982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122566) * ((1 : F) + (1 : F) * rho 122565) = ((1 : F) * rho 122563 + (1 : F) * rho 122564)

def relationRow6983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122567) * ((1 : F) + (-1 : F) * rho 122565) = ((1 : F) * rho 122562 + (-1 : F) * rho 122563 + (-1 : F) * rho 122564)

def relationLc3117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 101⟩], residual := [((1 : F), 122566)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121105) * (relationLc3117 rho) = ((1 : F) * rho 122568)

def relationLc3118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 101⟩], residual := [((1 : F), 122567)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121105) * (relationLc3118 rho) = ((1 : F) * rho 122569)

def relationRow6986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122560) * ((1 : F) * rho 122561) = ((1 : F) * rho 122570)

def relationRow6987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122560) * ((1 : F) * rho 122560) = ((1 : F) * rho 122571)

def relationRow6988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122561) * ((1 : F) * rho 122561) = ((1 : F) * rho 122572)

def relationRow6989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122573) * ((-1 : F) * rho 122571 + (1 : F) * rho 122572) = ((2 : F) * rho 122570)

def relationRow6990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122574) * ((2 : F) + (1 : F) * rho 122571 + (-1 : F) * rho 122572) = ((1 : F) * rho 122571 + (1 : F) * rho 122572)

def relationLc3119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 102⟩, ⟨(1 : F), 121256, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122573 + (1 : F) * rho 122574) * (relationLc3119 rho) = ((1 : F) * rho 122575)

def relationLc3120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122574) * (relationLc3120 rho) = ((1 : F) * rho 122576)

def relationLc3121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122573) * (relationLc3121 rho) = ((1 : F) * rho 122577)

def relationRow6994 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122576) * ((1 : F) * rho 122577) = ((1 : F) * rho 122578)

def relationRow6995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122579) * ((1 : F) + (1 : F) * rho 122578) = ((1 : F) * rho 122576 + (1 : F) * rho 122577)

def relationRow6996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122580) * ((1 : F) + (-1 : F) * rho 122578) = ((1 : F) * rho 122575 + (-1 : F) * rho 122576 + (-1 : F) * rho 122577)

def relationLc3122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 102⟩], residual := [((1 : F), 122579)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121106) * (relationLc3122 rho) = ((1 : F) * rho 122581)

def relationLc3123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 102⟩], residual := [((1 : F), 122580)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121106) * (relationLc3123 rho) = ((1 : F) * rho 122582)

def relationRow6999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122573) * ((1 : F) * rho 122574) = ((1 : F) * rho 122583)

def relationRow7000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122573) * ((1 : F) * rho 122573) = ((1 : F) * rho 122584)

def relationRow7001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122574) * ((1 : F) * rho 122574) = ((1 : F) * rho 122585)

def relationRow7002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122586) * ((-1 : F) * rho 122584 + (1 : F) * rho 122585) = ((2 : F) * rho 122583)

def relationRow7003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122587) * ((2 : F) + (1 : F) * rho 122584 + (-1 : F) * rho 122585) = ((1 : F) * rho 122584 + (1 : F) * rho 122585)

def relationLc3124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 103⟩, ⟨(1 : F), 121256, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122586 + (1 : F) * rho 122587) * (relationLc3124 rho) = ((1 : F) * rho 122588)

def relationLc3125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122587) * (relationLc3125 rho) = ((1 : F) * rho 122589)

def relationLc3126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122586) * (relationLc3126 rho) = ((1 : F) * rho 122590)

def relationRow7007 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122589) * ((1 : F) * rho 122590) = ((1 : F) * rho 122591)

def relationRow7008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122592) * ((1 : F) + (1 : F) * rho 122591) = ((1 : F) * rho 122589 + (1 : F) * rho 122590)

def relationRow7009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122593) * ((1 : F) + (-1 : F) * rho 122591) = ((1 : F) * rho 122588 + (-1 : F) * rho 122589 + (-1 : F) * rho 122590)

def relationLc3127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 103⟩], residual := [((1 : F), 122592)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121107) * (relationLc3127 rho) = ((1 : F) * rho 122594)

def relationLc3128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 103⟩], residual := [((1 : F), 122593)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121107) * (relationLc3128 rho) = ((1 : F) * rho 122595)

def relationRow7012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122586) * ((1 : F) * rho 122587) = ((1 : F) * rho 122596)

def relationRow7013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122586) * ((1 : F) * rho 122586) = ((1 : F) * rho 122597)

def relationRow7014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122587) * ((1 : F) * rho 122587) = ((1 : F) * rho 122598)

def relationRow7015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122599) * ((-1 : F) * rho 122597 + (1 : F) * rho 122598) = ((2 : F) * rho 122596)

def relationRow7016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122600) * ((2 : F) + (1 : F) * rho 122597 + (-1 : F) * rho 122598) = ((1 : F) * rho 122597 + (1 : F) * rho 122598)

def relationLc3129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 104⟩, ⟨(1 : F), 121256, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122599 + (1 : F) * rho 122600) * (relationLc3129 rho) = ((1 : F) * rho 122601)

def relationLc3130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122600) * (relationLc3130 rho) = ((1 : F) * rho 122602)

def relationLc3131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122599) * (relationLc3131 rho) = ((1 : F) * rho 122603)

def relationRow7020 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122602) * ((1 : F) * rho 122603) = ((1 : F) * rho 122604)

def relationRow7021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122605) * ((1 : F) + (1 : F) * rho 122604) = ((1 : F) * rho 122602 + (1 : F) * rho 122603)

def relationRow7022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122606) * ((1 : F) + (-1 : F) * rho 122604) = ((1 : F) * rho 122601 + (-1 : F) * rho 122602 + (-1 : F) * rho 122603)

def relationLc3132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 104⟩], residual := [((1 : F), 122605)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121108) * (relationLc3132 rho) = ((1 : F) * rho 122607)

def relationLc3133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 104⟩], residual := [((1 : F), 122606)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121108) * (relationLc3133 rho) = ((1 : F) * rho 122608)

def relationRow7025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122599) * ((1 : F) * rho 122600) = ((1 : F) * rho 122609)

def relationRow7026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122599) * ((1 : F) * rho 122599) = ((1 : F) * rho 122610)

def relationRow7027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122600) * ((1 : F) * rho 122600) = ((1 : F) * rho 122611)

def relationRow7028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122612) * ((-1 : F) * rho 122610 + (1 : F) * rho 122611) = ((2 : F) * rho 122609)

def relationRow7029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122613) * ((2 : F) + (1 : F) * rho 122610 + (-1 : F) * rho 122611) = ((1 : F) * rho 122610 + (1 : F) * rho 122611)

def relationLc3134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 105⟩, ⟨(1 : F), 121256, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122612 + (1 : F) * rho 122613) * (relationLc3134 rho) = ((1 : F) * rho 122614)

def relationLc3135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122613) * (relationLc3135 rho) = ((1 : F) * rho 122615)

def relationLc3136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122612) * (relationLc3136 rho) = ((1 : F) * rho 122616)

def relationRow7033 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122615) * ((1 : F) * rho 122616) = ((1 : F) * rho 122617)

def relationRow7034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122618) * ((1 : F) + (1 : F) * rho 122617) = ((1 : F) * rho 122615 + (1 : F) * rho 122616)

def relationRow7035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122619) * ((1 : F) + (-1 : F) * rho 122617) = ((1 : F) * rho 122614 + (-1 : F) * rho 122615 + (-1 : F) * rho 122616)

def relationLc3137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 105⟩], residual := [((1 : F), 122618)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121109) * (relationLc3137 rho) = ((1 : F) * rho 122620)

def relationLc3138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 105⟩], residual := [((1 : F), 122619)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121109) * (relationLc3138 rho) = ((1 : F) * rho 122621)

def relationRow7038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122612) * ((1 : F) * rho 122613) = ((1 : F) * rho 122622)

def relationRow7039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122612) * ((1 : F) * rho 122612) = ((1 : F) * rho 122623)

def relationRow7040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122613) * ((1 : F) * rho 122613) = ((1 : F) * rho 122624)

def relationRow7041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122625) * ((-1 : F) * rho 122623 + (1 : F) * rho 122624) = ((2 : F) * rho 122622)

def relationRow7042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122626) * ((2 : F) + (1 : F) * rho 122623 + (-1 : F) * rho 122624) = ((1 : F) * rho 122623 + (1 : F) * rho 122624)

def relationLc3139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 106⟩, ⟨(1 : F), 121256, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122625 + (1 : F) * rho 122626) * (relationLc3139 rho) = ((1 : F) * rho 122627)

def relationLc3140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122626) * (relationLc3140 rho) = ((1 : F) * rho 122628)

def relationLc3141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122625) * (relationLc3141 rho) = ((1 : F) * rho 122629)

def relationRow7046 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122628) * ((1 : F) * rho 122629) = ((1 : F) * rho 122630)

def relationRow7047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122631) * ((1 : F) + (1 : F) * rho 122630) = ((1 : F) * rho 122628 + (1 : F) * rho 122629)

def relationRow7048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122632) * ((1 : F) + (-1 : F) * rho 122630) = ((1 : F) * rho 122627 + (-1 : F) * rho 122628 + (-1 : F) * rho 122629)

def relationLc3142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 106⟩], residual := [((1 : F), 122631)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121110) * (relationLc3142 rho) = ((1 : F) * rho 122633)

def relationLc3143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 106⟩], residual := [((1 : F), 122632)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121110) * (relationLc3143 rho) = ((1 : F) * rho 122634)

def relationRow7051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122625) * ((1 : F) * rho 122626) = ((1 : F) * rho 122635)

def relationRow7052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122625) * ((1 : F) * rho 122625) = ((1 : F) * rho 122636)

def relationRow7053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122626) * ((1 : F) * rho 122626) = ((1 : F) * rho 122637)

def relationRow7054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122638) * ((-1 : F) * rho 122636 + (1 : F) * rho 122637) = ((2 : F) * rho 122635)

def relationRow7055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122639) * ((2 : F) + (1 : F) * rho 122636 + (-1 : F) * rho 122637) = ((1 : F) * rho 122636 + (1 : F) * rho 122637)

def relationLc3144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 107⟩, ⟨(1 : F), 121256, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122638 + (1 : F) * rho 122639) * (relationLc3144 rho) = ((1 : F) * rho 122640)

def relationLc3145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122639) * (relationLc3145 rho) = ((1 : F) * rho 122641)

def relationLc3146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122638) * (relationLc3146 rho) = ((1 : F) * rho 122642)

def relationRow7059 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122641) * ((1 : F) * rho 122642) = ((1 : F) * rho 122643)

def relationRow7060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122644) * ((1 : F) + (1 : F) * rho 122643) = ((1 : F) * rho 122641 + (1 : F) * rho 122642)

def relationRow7061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122645) * ((1 : F) + (-1 : F) * rho 122643) = ((1 : F) * rho 122640 + (-1 : F) * rho 122641 + (-1 : F) * rho 122642)

def relationLc3147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 107⟩], residual := [((1 : F), 122644)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121111) * (relationLc3147 rho) = ((1 : F) * rho 122646)

def relationLc3148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 107⟩], residual := [((1 : F), 122645)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121111) * (relationLc3148 rho) = ((1 : F) * rho 122647)

def relationRow7064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122638) * ((1 : F) * rho 122639) = ((1 : F) * rho 122648)

def relationRow7065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122638) * ((1 : F) * rho 122638) = ((1 : F) * rho 122649)

def relationRow7066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122639) * ((1 : F) * rho 122639) = ((1 : F) * rho 122650)

def relationRow7067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122651) * ((-1 : F) * rho 122649 + (1 : F) * rho 122650) = ((2 : F) * rho 122648)

def relationRow7068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122652) * ((2 : F) + (1 : F) * rho 122649 + (-1 : F) * rho 122650) = ((1 : F) * rho 122649 + (1 : F) * rho 122650)

def relationLc3149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 108⟩, ⟨(1 : F), 121256, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122651 + (1 : F) * rho 122652) * (relationLc3149 rho) = ((1 : F) * rho 122653)

def relationLc3150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122652) * (relationLc3150 rho) = ((1 : F) * rho 122654)

def relationLc3151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122651) * (relationLc3151 rho) = ((1 : F) * rho 122655)

def relationRow7072 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122654) * ((1 : F) * rho 122655) = ((1 : F) * rho 122656)

def relationRow7073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122657) * ((1 : F) + (1 : F) * rho 122656) = ((1 : F) * rho 122654 + (1 : F) * rho 122655)

def relationRow7074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122658) * ((1 : F) + (-1 : F) * rho 122656) = ((1 : F) * rho 122653 + (-1 : F) * rho 122654 + (-1 : F) * rho 122655)

def relationLc3152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 108⟩], residual := [((1 : F), 122657)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121112) * (relationLc3152 rho) = ((1 : F) * rho 122659)

def relationLc3153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 108⟩], residual := [((1 : F), 122658)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121112) * (relationLc3153 rho) = ((1 : F) * rho 122660)

def relationRow7077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122651) * ((1 : F) * rho 122652) = ((1 : F) * rho 122661)

def relationRow7078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122651) * ((1 : F) * rho 122651) = ((1 : F) * rho 122662)

def relationRow7079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122652) * ((1 : F) * rho 122652) = ((1 : F) * rho 122663)

def relationRow7080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122664) * ((-1 : F) * rho 122662 + (1 : F) * rho 122663) = ((2 : F) * rho 122661)

def relationRow7081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122665) * ((2 : F) + (1 : F) * rho 122662 + (-1 : F) * rho 122663) = ((1 : F) * rho 122662 + (1 : F) * rho 122663)

def relationLc3154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 109⟩, ⟨(1 : F), 121256, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122664 + (1 : F) * rho 122665) * (relationLc3154 rho) = ((1 : F) * rho 122666)

def relationLc3155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122665) * (relationLc3155 rho) = ((1 : F) * rho 122667)

def relationLc3156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122664) * (relationLc3156 rho) = ((1 : F) * rho 122668)

def relationRow7085 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122667) * ((1 : F) * rho 122668) = ((1 : F) * rho 122669)

def relationRow7086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122670) * ((1 : F) + (1 : F) * rho 122669) = ((1 : F) * rho 122667 + (1 : F) * rho 122668)

def relationRow7087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122671) * ((1 : F) + (-1 : F) * rho 122669) = ((1 : F) * rho 122666 + (-1 : F) * rho 122667 + (-1 : F) * rho 122668)

def relationLc3157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 109⟩], residual := [((1 : F), 122670)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121113) * (relationLc3157 rho) = ((1 : F) * rho 122672)

def relationLc3158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 109⟩], residual := [((1 : F), 122671)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121113) * (relationLc3158 rho) = ((1 : F) * rho 122673)

def relationRow7090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122664) * ((1 : F) * rho 122665) = ((1 : F) * rho 122674)

def relationRow7091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122664) * ((1 : F) * rho 122664) = ((1 : F) * rho 122675)

def relationRow7092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122665) * ((1 : F) * rho 122665) = ((1 : F) * rho 122676)

def relationRow7093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122677) * ((-1 : F) * rho 122675 + (1 : F) * rho 122676) = ((2 : F) * rho 122674)

def relationRow7094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122678) * ((2 : F) + (1 : F) * rho 122675 + (-1 : F) * rho 122676) = ((1 : F) * rho 122675 + (1 : F) * rho 122676)

def relationLc3159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 110⟩, ⟨(1 : F), 121256, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122677 + (1 : F) * rho 122678) * (relationLc3159 rho) = ((1 : F) * rho 122679)

def relationLc3160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122678) * (relationLc3160 rho) = ((1 : F) * rho 122680)

def relationLc3161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122677) * (relationLc3161 rho) = ((1 : F) * rho 122681)

def relationRow7098 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122680) * ((1 : F) * rho 122681) = ((1 : F) * rho 122682)

def relationRow7099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122683) * ((1 : F) + (1 : F) * rho 122682) = ((1 : F) * rho 122680 + (1 : F) * rho 122681)

def relationRow7100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122684) * ((1 : F) + (-1 : F) * rho 122682) = ((1 : F) * rho 122679 + (-1 : F) * rho 122680 + (-1 : F) * rho 122681)

def relationLc3162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 110⟩], residual := [((1 : F), 122683)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121114) * (relationLc3162 rho) = ((1 : F) * rho 122685)

def relationLc3163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 110⟩], residual := [((1 : F), 122684)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121114) * (relationLc3163 rho) = ((1 : F) * rho 122686)

def relationRow7103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122677) * ((1 : F) * rho 122678) = ((1 : F) * rho 122687)

def relationRow7104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122677) * ((1 : F) * rho 122677) = ((1 : F) * rho 122688)

def relationRow7105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122678) * ((1 : F) * rho 122678) = ((1 : F) * rho 122689)

def relationRow7106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122690) * ((-1 : F) * rho 122688 + (1 : F) * rho 122689) = ((2 : F) * rho 122687)

def relationRow7107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122691) * ((2 : F) + (1 : F) * rho 122688 + (-1 : F) * rho 122689) = ((1 : F) * rho 122688 + (1 : F) * rho 122689)

def relationLc3164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 111⟩, ⟨(1 : F), 121256, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122690 + (1 : F) * rho 122691) * (relationLc3164 rho) = ((1 : F) * rho 122692)

def relationLc3165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122691) * (relationLc3165 rho) = ((1 : F) * rho 122693)

def relationLc3166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122690) * (relationLc3166 rho) = ((1 : F) * rho 122694)

def relationRow7111 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122693) * ((1 : F) * rho 122694) = ((1 : F) * rho 122695)

def relationRow7112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122696) * ((1 : F) + (1 : F) * rho 122695) = ((1 : F) * rho 122693 + (1 : F) * rho 122694)

def relationRow7113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122697) * ((1 : F) + (-1 : F) * rho 122695) = ((1 : F) * rho 122692 + (-1 : F) * rho 122693 + (-1 : F) * rho 122694)

def relationLc3167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 111⟩], residual := [((1 : F), 122696)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121115) * (relationLc3167 rho) = ((1 : F) * rho 122698)

def relationLc3168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 111⟩], residual := [((1 : F), 122697)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121115) * (relationLc3168 rho) = ((1 : F) * rho 122699)

def relationRow7116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122690) * ((1 : F) * rho 122691) = ((1 : F) * rho 122700)

def relationRow7117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122690) * ((1 : F) * rho 122690) = ((1 : F) * rho 122701)

def relationRow7118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122691) * ((1 : F) * rho 122691) = ((1 : F) * rho 122702)

def relationRow7119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122703) * ((-1 : F) * rho 122701 + (1 : F) * rho 122702) = ((2 : F) * rho 122700)

def relationRow7120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122704) * ((2 : F) + (1 : F) * rho 122701 + (-1 : F) * rho 122702) = ((1 : F) * rho 122701 + (1 : F) * rho 122702)

def relationLc3169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 112⟩, ⟨(1 : F), 121256, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122703 + (1 : F) * rho 122704) * (relationLc3169 rho) = ((1 : F) * rho 122705)

def relationLc3170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122704) * (relationLc3170 rho) = ((1 : F) * rho 122706)

def relationLc3171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122703) * (relationLc3171 rho) = ((1 : F) * rho 122707)

def relationRow7124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122706) * ((1 : F) * rho 122707) = ((1 : F) * rho 122708)

def relationRow7125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122709) * ((1 : F) + (1 : F) * rho 122708) = ((1 : F) * rho 122706 + (1 : F) * rho 122707)

def relationRow7126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122710) * ((1 : F) + (-1 : F) * rho 122708) = ((1 : F) * rho 122705 + (-1 : F) * rho 122706 + (-1 : F) * rho 122707)

def relationLc3172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 112⟩], residual := [((1 : F), 122709)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121116) * (relationLc3172 rho) = ((1 : F) * rho 122711)

def relationLc3173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 112⟩], residual := [((1 : F), 122710)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121116) * (relationLc3173 rho) = ((1 : F) * rho 122712)

def relationRow7129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122703) * ((1 : F) * rho 122704) = ((1 : F) * rho 122713)

def relationRow7130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122703) * ((1 : F) * rho 122703) = ((1 : F) * rho 122714)

def relationRow7131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122704) * ((1 : F) * rho 122704) = ((1 : F) * rho 122715)

def relationRow7132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122716) * ((-1 : F) * rho 122714 + (1 : F) * rho 122715) = ((2 : F) * rho 122713)

def relationRow7133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122717) * ((2 : F) + (1 : F) * rho 122714 + (-1 : F) * rho 122715) = ((1 : F) * rho 122714 + (1 : F) * rho 122715)

def relationLc3174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 113⟩, ⟨(1 : F), 121256, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122716 + (1 : F) * rho 122717) * (relationLc3174 rho) = ((1 : F) * rho 122718)

def relationLc3175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122717) * (relationLc3175 rho) = ((1 : F) * rho 122719)

def relationLc3176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122716) * (relationLc3176 rho) = ((1 : F) * rho 122720)

def relationRow7137 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122719) * ((1 : F) * rho 122720) = ((1 : F) * rho 122721)

def relationRow7138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122722) * ((1 : F) + (1 : F) * rho 122721) = ((1 : F) * rho 122719 + (1 : F) * rho 122720)

def relationRow7139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122723) * ((1 : F) + (-1 : F) * rho 122721) = ((1 : F) * rho 122718 + (-1 : F) * rho 122719 + (-1 : F) * rho 122720)

def relationLc3177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 113⟩], residual := [((1 : F), 122722)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121117) * (relationLc3177 rho) = ((1 : F) * rho 122724)

def relationLc3178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 113⟩], residual := [((1 : F), 122723)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121117) * (relationLc3178 rho) = ((1 : F) * rho 122725)

def relationRow7142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122716) * ((1 : F) * rho 122717) = ((1 : F) * rho 122726)

def relationRow7143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122716) * ((1 : F) * rho 122716) = ((1 : F) * rho 122727)

def relationRow7144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122717) * ((1 : F) * rho 122717) = ((1 : F) * rho 122728)

def relationRow7145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122729) * ((-1 : F) * rho 122727 + (1 : F) * rho 122728) = ((2 : F) * rho 122726)

def relationRow7146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122730) * ((2 : F) + (1 : F) * rho 122727 + (-1 : F) * rho 122728) = ((1 : F) * rho 122727 + (1 : F) * rho 122728)

def relationLc3179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 114⟩, ⟨(1 : F), 121256, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122729 + (1 : F) * rho 122730) * (relationLc3179 rho) = ((1 : F) * rho 122731)

def relationLc3180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122730) * (relationLc3180 rho) = ((1 : F) * rho 122732)

def relationLc3181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122729) * (relationLc3181 rho) = ((1 : F) * rho 122733)

def relationRow7150 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122732) * ((1 : F) * rho 122733) = ((1 : F) * rho 122734)

def relationRow7151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122735) * ((1 : F) + (1 : F) * rho 122734) = ((1 : F) * rho 122732 + (1 : F) * rho 122733)

def relationRow7152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122736) * ((1 : F) + (-1 : F) * rho 122734) = ((1 : F) * rho 122731 + (-1 : F) * rho 122732 + (-1 : F) * rho 122733)

def relationLc3182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 114⟩], residual := [((1 : F), 122735)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121118) * (relationLc3182 rho) = ((1 : F) * rho 122737)

def relationLc3183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 114⟩], residual := [((1 : F), 122736)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121118) * (relationLc3183 rho) = ((1 : F) * rho 122738)

def relationRow7155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122729) * ((1 : F) * rho 122730) = ((1 : F) * rho 122739)

def relationRow7156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122729) * ((1 : F) * rho 122729) = ((1 : F) * rho 122740)

def relationRow7157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122730) * ((1 : F) * rho 122730) = ((1 : F) * rho 122741)

def relationRow7158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122742) * ((-1 : F) * rho 122740 + (1 : F) * rho 122741) = ((2 : F) * rho 122739)

def relationRow7159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122743) * ((2 : F) + (1 : F) * rho 122740 + (-1 : F) * rho 122741) = ((1 : F) * rho 122740 + (1 : F) * rho 122741)

def relationLc3184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 115⟩, ⟨(1 : F), 121256, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122742 + (1 : F) * rho 122743) * (relationLc3184 rho) = ((1 : F) * rho 122744)

def relationLc3185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122743) * (relationLc3185 rho) = ((1 : F) * rho 122745)

def relationLc3186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122742) * (relationLc3186 rho) = ((1 : F) * rho 122746)

def relationRow7163 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122745) * ((1 : F) * rho 122746) = ((1 : F) * rho 122747)

def relationRow7164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122748) * ((1 : F) + (1 : F) * rho 122747) = ((1 : F) * rho 122745 + (1 : F) * rho 122746)

def relationRow7165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122749) * ((1 : F) + (-1 : F) * rho 122747) = ((1 : F) * rho 122744 + (-1 : F) * rho 122745 + (-1 : F) * rho 122746)

def relationLc3187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 115⟩], residual := [((1 : F), 122748)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121119) * (relationLc3187 rho) = ((1 : F) * rho 122750)

def relationLc3188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 115⟩], residual := [((1 : F), 122749)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121119) * (relationLc3188 rho) = ((1 : F) * rho 122751)

def relationRow7168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122742) * ((1 : F) * rho 122743) = ((1 : F) * rho 122752)

def relationRow7169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122742) * ((1 : F) * rho 122742) = ((1 : F) * rho 122753)

def relationRow7170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122743) * ((1 : F) * rho 122743) = ((1 : F) * rho 122754)

def relationRow7171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122755) * ((-1 : F) * rho 122753 + (1 : F) * rho 122754) = ((2 : F) * rho 122752)

def relationRow7172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122756) * ((2 : F) + (1 : F) * rho 122753 + (-1 : F) * rho 122754) = ((1 : F) * rho 122753 + (1 : F) * rho 122754)

def relationLc3189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 116⟩, ⟨(1 : F), 121256, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122755 + (1 : F) * rho 122756) * (relationLc3189 rho) = ((1 : F) * rho 122757)

def relationLc3190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122756) * (relationLc3190 rho) = ((1 : F) * rho 122758)

def relationLc3191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122755) * (relationLc3191 rho) = ((1 : F) * rho 122759)

def relationRow7176 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122758) * ((1 : F) * rho 122759) = ((1 : F) * rho 122760)

def relationRow7177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122761) * ((1 : F) + (1 : F) * rho 122760) = ((1 : F) * rho 122758 + (1 : F) * rho 122759)

def relationRow7178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122762) * ((1 : F) + (-1 : F) * rho 122760) = ((1 : F) * rho 122757 + (-1 : F) * rho 122758 + (-1 : F) * rho 122759)

def relationLc3192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 116⟩], residual := [((1 : F), 122761)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121120) * (relationLc3192 rho) = ((1 : F) * rho 122763)

def relationLc3193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 116⟩], residual := [((1 : F), 122762)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121120) * (relationLc3193 rho) = ((1 : F) * rho 122764)

def relationRow7181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122755) * ((1 : F) * rho 122756) = ((1 : F) * rho 122765)

def relationRow7182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122755) * ((1 : F) * rho 122755) = ((1 : F) * rho 122766)

def relationRow7183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122756) * ((1 : F) * rho 122756) = ((1 : F) * rho 122767)

def relationRow7184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122768) * ((-1 : F) * rho 122766 + (1 : F) * rho 122767) = ((2 : F) * rho 122765)

def relationRow7185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122769) * ((2 : F) + (1 : F) * rho 122766 + (-1 : F) * rho 122767) = ((1 : F) * rho 122766 + (1 : F) * rho 122767)

def relationLc3194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 117⟩, ⟨(1 : F), 121256, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122768 + (1 : F) * rho 122769) * (relationLc3194 rho) = ((1 : F) * rho 122770)

def relationLc3195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122769) * (relationLc3195 rho) = ((1 : F) * rho 122771)

def relationLc3196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122768) * (relationLc3196 rho) = ((1 : F) * rho 122772)

def relationRow7189 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122771) * ((1 : F) * rho 122772) = ((1 : F) * rho 122773)

def relationRow7190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122774) * ((1 : F) + (1 : F) * rho 122773) = ((1 : F) * rho 122771 + (1 : F) * rho 122772)

def relationRow7191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122775) * ((1 : F) + (-1 : F) * rho 122773) = ((1 : F) * rho 122770 + (-1 : F) * rho 122771 + (-1 : F) * rho 122772)

def relationLc3197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 117⟩], residual := [((1 : F), 122774)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121121) * (relationLc3197 rho) = ((1 : F) * rho 122776)

def relationLc3198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 117⟩], residual := [((1 : F), 122775)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121121) * (relationLc3198 rho) = ((1 : F) * rho 122777)

def relationRow7194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122768) * ((1 : F) * rho 122769) = ((1 : F) * rho 122778)

def relationRow7195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122768) * ((1 : F) * rho 122768) = ((1 : F) * rho 122779)

def relationRow7196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122769) * ((1 : F) * rho 122769) = ((1 : F) * rho 122780)

def relationRow7197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122781) * ((-1 : F) * rho 122779 + (1 : F) * rho 122780) = ((2 : F) * rho 122778)

def relationRow7198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122782) * ((2 : F) + (1 : F) * rho 122779 + (-1 : F) * rho 122780) = ((1 : F) * rho 122779 + (1 : F) * rho 122780)

def relationLc3199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 118⟩, ⟨(1 : F), 121256, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122781 + (1 : F) * rho 122782) * (relationLc3199 rho) = ((1 : F) * rho 122783)

def relationLc3200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122782) * (relationLc3200 rho) = ((1 : F) * rho 122784)

def relationLc3201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122781) * (relationLc3201 rho) = ((1 : F) * rho 122785)

def relationRow7202 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122784) * ((1 : F) * rho 122785) = ((1 : F) * rho 122786)

def relationRow7203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122787) * ((1 : F) + (1 : F) * rho 122786) = ((1 : F) * rho 122784 + (1 : F) * rho 122785)

def relationRow7204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122788) * ((1 : F) + (-1 : F) * rho 122786) = ((1 : F) * rho 122783 + (-1 : F) * rho 122784 + (-1 : F) * rho 122785)

def relationLc3202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 118⟩], residual := [((1 : F), 122787)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121122) * (relationLc3202 rho) = ((1 : F) * rho 122789)

def relationLc3203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 118⟩], residual := [((1 : F), 122788)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121122) * (relationLc3203 rho) = ((1 : F) * rho 122790)

def relationRow7207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122781) * ((1 : F) * rho 122782) = ((1 : F) * rho 122791)

def relationRow7208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122781) * ((1 : F) * rho 122781) = ((1 : F) * rho 122792)

def relationRow7209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122782) * ((1 : F) * rho 122782) = ((1 : F) * rho 122793)

def relationRow7210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122794) * ((-1 : F) * rho 122792 + (1 : F) * rho 122793) = ((2 : F) * rho 122791)

def relationRow7211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122795) * ((2 : F) + (1 : F) * rho 122792 + (-1 : F) * rho 122793) = ((1 : F) * rho 122792 + (1 : F) * rho 122793)

def relationLc3204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 119⟩, ⟨(1 : F), 121256, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122794 + (1 : F) * rho 122795) * (relationLc3204 rho) = ((1 : F) * rho 122796)

def relationLc3205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122795) * (relationLc3205 rho) = ((1 : F) * rho 122797)

def relationLc3206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122794) * (relationLc3206 rho) = ((1 : F) * rho 122798)

def relationRow7215 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122797) * ((1 : F) * rho 122798) = ((1 : F) * rho 122799)

def relationRow7216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122800) * ((1 : F) + (1 : F) * rho 122799) = ((1 : F) * rho 122797 + (1 : F) * rho 122798)

def relationRow7217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122801) * ((1 : F) + (-1 : F) * rho 122799) = ((1 : F) * rho 122796 + (-1 : F) * rho 122797 + (-1 : F) * rho 122798)

def relationLc3207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 119⟩], residual := [((1 : F), 122800)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121123) * (relationLc3207 rho) = ((1 : F) * rho 122802)

def relationLc3208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 119⟩], residual := [((1 : F), 122801)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121123) * (relationLc3208 rho) = ((1 : F) * rho 122803)

def relationRow7220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122794) * ((1 : F) * rho 122795) = ((1 : F) * rho 122804)

def relationRow7221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122794) * ((1 : F) * rho 122794) = ((1 : F) * rho 122805)

def relationRow7222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122795) * ((1 : F) * rho 122795) = ((1 : F) * rho 122806)

def relationRow7223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122807) * ((-1 : F) * rho 122805 + (1 : F) * rho 122806) = ((2 : F) * rho 122804)

def relationRow7224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122808) * ((2 : F) + (1 : F) * rho 122805 + (-1 : F) * rho 122806) = ((1 : F) * rho 122805 + (1 : F) * rho 122806)

def relationLc3209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 120⟩, ⟨(1 : F), 121256, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122807 + (1 : F) * rho 122808) * (relationLc3209 rho) = ((1 : F) * rho 122809)

def relationLc3210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122808) * (relationLc3210 rho) = ((1 : F) * rho 122810)

def relationLc3211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122807) * (relationLc3211 rho) = ((1 : F) * rho 122811)

def relationRow7228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122810) * ((1 : F) * rho 122811) = ((1 : F) * rho 122812)

def relationRow7229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122813) * ((1 : F) + (1 : F) * rho 122812) = ((1 : F) * rho 122810 + (1 : F) * rho 122811)

def relationRow7230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122814) * ((1 : F) + (-1 : F) * rho 122812) = ((1 : F) * rho 122809 + (-1 : F) * rho 122810 + (-1 : F) * rho 122811)

def relationLc3212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 120⟩], residual := [((1 : F), 122813)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121124) * (relationLc3212 rho) = ((1 : F) * rho 122815)

def relationLc3213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 120⟩], residual := [((1 : F), 122814)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121124) * (relationLc3213 rho) = ((1 : F) * rho 122816)

def relationRow7233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122807) * ((1 : F) * rho 122808) = ((1 : F) * rho 122817)

def relationRow7234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122807) * ((1 : F) * rho 122807) = ((1 : F) * rho 122818)

def relationRow7235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122808) * ((1 : F) * rho 122808) = ((1 : F) * rho 122819)

def relationRow7236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122820) * ((-1 : F) * rho 122818 + (1 : F) * rho 122819) = ((2 : F) * rho 122817)

def relationRow7237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122821) * ((2 : F) + (1 : F) * rho 122818 + (-1 : F) * rho 122819) = ((1 : F) * rho 122818 + (1 : F) * rho 122819)

def relationLc3214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 121⟩, ⟨(1 : F), 121256, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122820 + (1 : F) * rho 122821) * (relationLc3214 rho) = ((1 : F) * rho 122822)

def relationLc3215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122821) * (relationLc3215 rho) = ((1 : F) * rho 122823)

def relationLc3216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122820) * (relationLc3216 rho) = ((1 : F) * rho 122824)

def relationRow7241 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122823) * ((1 : F) * rho 122824) = ((1 : F) * rho 122825)

def relationRow7242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122826) * ((1 : F) + (1 : F) * rho 122825) = ((1 : F) * rho 122823 + (1 : F) * rho 122824)

def relationRow7243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122827) * ((1 : F) + (-1 : F) * rho 122825) = ((1 : F) * rho 122822 + (-1 : F) * rho 122823 + (-1 : F) * rho 122824)

def relationLc3217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 121⟩], residual := [((1 : F), 122826)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121125) * (relationLc3217 rho) = ((1 : F) * rho 122828)

def relationLc3218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 121⟩], residual := [((1 : F), 122827)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121125) * (relationLc3218 rho) = ((1 : F) * rho 122829)

def relationRow7246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122820) * ((1 : F) * rho 122821) = ((1 : F) * rho 122830)

def relationRow7247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122820) * ((1 : F) * rho 122820) = ((1 : F) * rho 122831)

def relationRow7248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122821) * ((1 : F) * rho 122821) = ((1 : F) * rho 122832)

def relationRow7249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122833) * ((-1 : F) * rho 122831 + (1 : F) * rho 122832) = ((2 : F) * rho 122830)

def relationRow7250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122834) * ((2 : F) + (1 : F) * rho 122831 + (-1 : F) * rho 122832) = ((1 : F) * rho 122831 + (1 : F) * rho 122832)

def relationLc3219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 122⟩, ⟨(1 : F), 121256, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122833 + (1 : F) * rho 122834) * (relationLc3219 rho) = ((1 : F) * rho 122835)

def relationLc3220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122834) * (relationLc3220 rho) = ((1 : F) * rho 122836)

def relationLc3221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122833) * (relationLc3221 rho) = ((1 : F) * rho 122837)

def relationRow7254 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122836) * ((1 : F) * rho 122837) = ((1 : F) * rho 122838)

def relationRow7255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122839) * ((1 : F) + (1 : F) * rho 122838) = ((1 : F) * rho 122836 + (1 : F) * rho 122837)

def relationRow7256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122840) * ((1 : F) + (-1 : F) * rho 122838) = ((1 : F) * rho 122835 + (-1 : F) * rho 122836 + (-1 : F) * rho 122837)

def relationLc3222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 122⟩], residual := [((1 : F), 122839)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121126) * (relationLc3222 rho) = ((1 : F) * rho 122841)

def relationLc3223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 122⟩], residual := [((1 : F), 122840)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121126) * (relationLc3223 rho) = ((1 : F) * rho 122842)

def relationRow7259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122833) * ((1 : F) * rho 122834) = ((1 : F) * rho 122843)

def relationRow7260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122833) * ((1 : F) * rho 122833) = ((1 : F) * rho 122844)

def relationRow7261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122834) * ((1 : F) * rho 122834) = ((1 : F) * rho 122845)

def relationRow7262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122846) * ((-1 : F) * rho 122844 + (1 : F) * rho 122845) = ((2 : F) * rho 122843)

def relationRow7263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122847) * ((2 : F) + (1 : F) * rho 122844 + (-1 : F) * rho 122845) = ((1 : F) * rho 122844 + (1 : F) * rho 122845)

def relationLc3224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 123⟩, ⟨(1 : F), 121256, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122846 + (1 : F) * rho 122847) * (relationLc3224 rho) = ((1 : F) * rho 122848)

def relationLc3225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122847) * (relationLc3225 rho) = ((1 : F) * rho 122849)

def relationLc3226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122846) * (relationLc3226 rho) = ((1 : F) * rho 122850)

def relationRow7267 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122849) * ((1 : F) * rho 122850) = ((1 : F) * rho 122851)

def relationRow7268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122852) * ((1 : F) + (1 : F) * rho 122851) = ((1 : F) * rho 122849 + (1 : F) * rho 122850)

def relationRow7269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122853) * ((1 : F) + (-1 : F) * rho 122851) = ((1 : F) * rho 122848 + (-1 : F) * rho 122849 + (-1 : F) * rho 122850)

def relationLc3227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 123⟩], residual := [((1 : F), 122852)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121127) * (relationLc3227 rho) = ((1 : F) * rho 122854)

def relationLc3228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 123⟩], residual := [((1 : F), 122853)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121127) * (relationLc3228 rho) = ((1 : F) * rho 122855)

def relationRow7272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122846) * ((1 : F) * rho 122847) = ((1 : F) * rho 122856)

def relationRow7273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122846) * ((1 : F) * rho 122846) = ((1 : F) * rho 122857)

def relationRow7274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122847) * ((1 : F) * rho 122847) = ((1 : F) * rho 122858)

def relationRow7275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122859) * ((-1 : F) * rho 122857 + (1 : F) * rho 122858) = ((2 : F) * rho 122856)

def relationRow7276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122860) * ((2 : F) + (1 : F) * rho 122857 + (-1 : F) * rho 122858) = ((1 : F) * rho 122857 + (1 : F) * rho 122858)

def relationLc3229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 124⟩, ⟨(1 : F), 121256, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122859 + (1 : F) * rho 122860) * (relationLc3229 rho) = ((1 : F) * rho 122861)

def relationLc3230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122860) * (relationLc3230 rho) = ((1 : F) * rho 122862)

def relationLc3231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122859) * (relationLc3231 rho) = ((1 : F) * rho 122863)

def relationRow7280 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122862) * ((1 : F) * rho 122863) = ((1 : F) * rho 122864)

def relationRow7281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122865) * ((1 : F) + (1 : F) * rho 122864) = ((1 : F) * rho 122862 + (1 : F) * rho 122863)

def relationRow7282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122866) * ((1 : F) + (-1 : F) * rho 122864) = ((1 : F) * rho 122861 + (-1 : F) * rho 122862 + (-1 : F) * rho 122863)

def relationLc3232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 124⟩], residual := [((1 : F), 122865)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121128) * (relationLc3232 rho) = ((1 : F) * rho 122867)

def relationLc3233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 124⟩], residual := [((1 : F), 122866)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121128) * (relationLc3233 rho) = ((1 : F) * rho 122868)

def relationRow7285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122859) * ((1 : F) * rho 122860) = ((1 : F) * rho 122869)

def relationRow7286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122859) * ((1 : F) * rho 122859) = ((1 : F) * rho 122870)

def relationRow7287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122860) * ((1 : F) * rho 122860) = ((1 : F) * rho 122871)

def relationRow7288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122872) * ((-1 : F) * rho 122870 + (1 : F) * rho 122871) = ((2 : F) * rho 122869)

def relationRow7289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122873) * ((2 : F) + (1 : F) * rho 122870 + (-1 : F) * rho 122871) = ((1 : F) * rho 122870 + (1 : F) * rho 122871)

def relationLc3234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 125⟩, ⟨(1 : F), 121256, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122872 + (1 : F) * rho 122873) * (relationLc3234 rho) = ((1 : F) * rho 122874)

def relationLc3235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122873) * (relationLc3235 rho) = ((1 : F) * rho 122875)

def relationLc3236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122872) * (relationLc3236 rho) = ((1 : F) * rho 122876)

def relationRow7293 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122875) * ((1 : F) * rho 122876) = ((1 : F) * rho 122877)

def relationRow7294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122878) * ((1 : F) + (1 : F) * rho 122877) = ((1 : F) * rho 122875 + (1 : F) * rho 122876)

def relationRow7295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122879) * ((1 : F) + (-1 : F) * rho 122877) = ((1 : F) * rho 122874 + (-1 : F) * rho 122875 + (-1 : F) * rho 122876)

def relationLc3237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 125⟩], residual := [((1 : F), 122878)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121129) * (relationLc3237 rho) = ((1 : F) * rho 122880)

def relationLc3238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 125⟩], residual := [((1 : F), 122879)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121129) * (relationLc3238 rho) = ((1 : F) * rho 122881)

def relationRow7298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122872) * ((1 : F) * rho 122873) = ((1 : F) * rho 122882)

def relationRow7299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122872) * ((1 : F) * rho 122872) = ((1 : F) * rho 122883)

def relationRow7300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122873) * ((1 : F) * rho 122873) = ((1 : F) * rho 122884)

def relationRow7301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122885) * ((-1 : F) * rho 122883 + (1 : F) * rho 122884) = ((2 : F) * rho 122882)

def relationRow7302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122886) * ((2 : F) + (1 : F) * rho 122883 + (-1 : F) * rho 122884) = ((1 : F) * rho 122883 + (1 : F) * rho 122884)

def relationLc3239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 126⟩, ⟨(1 : F), 121256, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122885 + (1 : F) * rho 122886) * (relationLc3239 rho) = ((1 : F) * rho 122887)

def relationLc3240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122886) * (relationLc3240 rho) = ((1 : F) * rho 122888)

def relationLc3241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122885) * (relationLc3241 rho) = ((1 : F) * rho 122889)

def relationRow7306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122888) * ((1 : F) * rho 122889) = ((1 : F) * rho 122890)

def relationRow7307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122891) * ((1 : F) + (1 : F) * rho 122890) = ((1 : F) * rho 122888 + (1 : F) * rho 122889)

def relationRow7308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122892) * ((1 : F) + (-1 : F) * rho 122890) = ((1 : F) * rho 122887 + (-1 : F) * rho 122888 + (-1 : F) * rho 122889)

def relationLc3242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 126⟩], residual := [((1 : F), 122891)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121130) * (relationLc3242 rho) = ((1 : F) * rho 122893)

def relationLc3243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 126⟩], residual := [((1 : F), 122892)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121130) * (relationLc3243 rho) = ((1 : F) * rho 122894)

def relationRow7311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122885) * ((1 : F) * rho 122886) = ((1 : F) * rho 122895)

def relationRow7312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122885) * ((1 : F) * rho 122885) = ((1 : F) * rho 122896)

def relationRow7313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122886) * ((1 : F) * rho 122886) = ((1 : F) * rho 122897)

def relationRow7314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122898) * ((-1 : F) * rho 122896 + (1 : F) * rho 122897) = ((2 : F) * rho 122895)

def relationRow7315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122899) * ((2 : F) + (1 : F) * rho 122896 + (-1 : F) * rho 122897) = ((1 : F) * rho 122896 + (1 : F) * rho 122897)

def relationLc3244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 127⟩, ⟨(1 : F), 121256, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122898 + (1 : F) * rho 122899) * (relationLc3244 rho) = ((1 : F) * rho 122900)

def relationLc3245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122899) * (relationLc3245 rho) = ((1 : F) * rho 122901)

def relationLc3246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122898) * (relationLc3246 rho) = ((1 : F) * rho 122902)

def relationRow7319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122901) * ((1 : F) * rho 122902) = ((1 : F) * rho 122903)

def relationRow7320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122904) * ((1 : F) + (1 : F) * rho 122903) = ((1 : F) * rho 122901 + (1 : F) * rho 122902)

def relationRow7321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122905) * ((1 : F) + (-1 : F) * rho 122903) = ((1 : F) * rho 122900 + (-1 : F) * rho 122901 + (-1 : F) * rho 122902)

def relationLc3247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 127⟩], residual := [((1 : F), 122904)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121131) * (relationLc3247 rho) = ((1 : F) * rho 122906)

def relationLc3248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 127⟩], residual := [((1 : F), 122905)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121131) * (relationLc3248 rho) = ((1 : F) * rho 122907)

def relationRow7324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122898) * ((1 : F) * rho 122899) = ((1 : F) * rho 122908)

def relationRow7325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122898) * ((1 : F) * rho 122898) = ((1 : F) * rho 122909)

def relationRow7326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122899) * ((1 : F) * rho 122899) = ((1 : F) * rho 122910)

def relationRow7327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122911) * ((-1 : F) * rho 122909 + (1 : F) * rho 122910) = ((2 : F) * rho 122908)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109
