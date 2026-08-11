import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs55

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (64956745500965497128803982381475242205053630181722383311535884961306763420 : F), runs := [⟨(221824775386178968154898822039513984069937222309183512835675449538994092200 : F), 772, 5, 149⟩, ⟨(221824775386178968154898822039513984069937222309183512835675449538994092200 : F), 1520, 8, 43⟩, ⟨(64956745500965497128803982381475242205053630181722383311535884961306763420 : F), 773, 5, 149⟩, ⟨(64956745500965497128803982381475242205053630181722383311535884961306763420 : F), 1521, 8, 43⟩], residual := [((3018838013441098757076214039149483421350714789592901210638074660817621593809 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1108 rho) = ((1 : F) * rho 1862)

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1863) * ((1 : F) + (-1 : F) * rho 1859) = ((8157680228541225958965122134360557305100908482663157931788022121417108383421 : F) * rho 1858 + (1 : F) * rho 1862)

def relationLc1109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 43⟩], residual := [((1 : F), 1861), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 710) * (relationLc1109 rho) = ((1 : F) * rho 1864)

def relationLc1110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 43⟩], residual := [((1 : F), 1863), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 710) * (relationLc1110 rho) = ((1 : F) * rho 1865)

def relationLc1111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 44⟩, ⟨(1 : F), 1521, 8, 44⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1866 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1111 rho) = ((1 : F) * rho 1866)

def relationLc1112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1039943787173976848446334036992801681317072883333815334713679937305626686533 : F), 772, 5, 149⟩, ⟨(1039943787173976848446334036992801681317072883333815334713679937305626686533 : F), 1520, 8, 44⟩], residual := [((7763323733134130071288516841185356454533071645192017275536901946325694198167 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), runs := [⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 773, 5, 149⟩, ⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 1521, 8, 44⟩], residual := [((5978637330494813918645192268005069037660298137679939836064151660217248578339 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1867 (rho : Nat -> F) : Prop :=
    (relationLc1112 rho) * (relationLc1113 rho) = ((1 : F) * rho 1867)

def relationLc1114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), runs := [⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 773, 5, 149⟩, ⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 1521, 8, 44⟩, ⟨(8198823652717836620711767586720711280439202192284079120380256009977844066466 : F), 772, 5, 149⟩, ⟨(8198823652717836620711767586720711280439202192284079120380256009977844066466 : F), 1520, 8, 44⟩], residual := [((3745004071372151816914715129910381229435807440401535650340004072402749506166 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1114 rho) = ((1 : F) * rho 1868)

def relationRow1869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1869) * ((1 : F) + (1 : F) * rho 1867) = ((1 : F) * rho 1868)

def relationLc1115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), runs := [⟨(1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), 773, 5, 149⟩, ⟨(1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), 1521, 8, 44⟩, ⟨(245638096710533803537057352060835250936697142869984707554977445939565172575 : F), 772, 5, 149⟩, ⟨(245638096710533803537057352060835250936697142869984707554977445939565172575 : F), 1520, 8, 44⟩], residual := [((4699457678056218607334109808871165301940091894752528177595229383514659732875 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1115 rho) = ((1 : F) * rho 1870)

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1871) * ((1 : F) + (-1 : F) * rho 1867) = ((6198852601590323269944124592185958782533025355114411518729157692337358959395 : F) * rho 1866 + (1 : F) * rho 1870)

def relationLc1116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 44⟩], residual := [((1 : F), 1869), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 711) * (relationLc1116 rho) = ((1 : F) * rho 1872)

def relationLc1117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 44⟩], residual := [((1 : F), 1871), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 711) * (relationLc1117 rho) = ((1 : F) * rho 1873)

def relationLc1118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 45⟩, ⟨(1 : F), 1521, 8, 45⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1874 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1118 rho) = ((1 : F) * rho 1874)

def relationLc1119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4015764581459766636875627008318117948768454446883655766248935433332886612089 : F), 772, 5, 149⟩, ⟨(4015764581459766636875627008318117948768454446883655766248935433332886612089 : F), 1520, 8, 45⟩], residual := [((3157768499214601969918244417310321822715768325365981343453183964039078504438 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (534543527702324573819012140335261053705566569841713933263725786904339161184 : F), runs := [⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 773, 5, 149⟩, ⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 1521, 8, 45⟩], residual := [((6659275747808960082924259503299544426670642258395145597892705017474190829857 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1875 (rho : Nat -> F) : Prop :=
    (relationLc1119 rho) * (relationLc1120 rho) = ((1 : F) * rho 1875)

def relationLc1121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (534543527702324573819012140335261053705566569841713933263725786904339161184 : F), runs := [⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 773, 5, 149⟩, ⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 1521, 8, 45⟩, ⟨(6217973748861355706774664776848221649695057456414935984473422092483830200013 : F), 772, 5, 149⟩, ⟨(6217973748861355706774664776848221649695057456414935984473422092483830200013 : F), 1520, 8, 45⟩], residual := [((1704336021480828285432287185509947710912034594408787045894785211655744122702 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1121 rho) = ((1 : F) * rho 1876)

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1877) * ((1 : F) + (1 : F) * rho 1875) = ((1 : F) * rho 1876)

def relationLc1122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), runs := [⟨(2226488000567014717474160161933324881680841878739127843461811363433579039028 : F), 772, 5, 149⟩, ⟨(2226488000567014717474160161933324881680841878739127843461811363433579039028 : F), 1520, 8, 45⟩, ⟨(7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), 773, 5, 149⟩, ⟨(7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), 1521, 8, 45⟩], residual := [((6740125727947542138816537753271598820463864740745276782040448244261665116339 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1122 rho) = ((1 : F) * rho 1878)

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1879) * ((1 : F) + (-1 : F) * rho 1875) = ((6752517276563680280593676917183482703400624026256649917737147879388169361197 : F) * rho 1874 + (1 : F) * rho 1878)

def relationLc1123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 45⟩], residual := [((1 : F), 1877), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 712) * (relationLc1123 rho) = ((1 : F) * rho 1880)

def relationLc1124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 45⟩], residual := [((1 : F), 1879), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 712) * (relationLc1124 rho) = ((1 : F) * rho 1881)

def relationLc1125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 46⟩, ⟨(1 : F), 1521, 8, 46⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1125 rho) = ((1 : F) * rho 1882)

def relationLc1126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(159972499471161683226141830651939820625937330801826475157833509385490017356 : F), 772, 5, 149⟩, ⟨(159972499471161683226141830651939820625937330801826475157833509385490017356 : F), 1520, 8, 46⟩], residual := [((889344209890450458886721940910110142040239231044373030628454235548509460521 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), runs := [⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 773, 5, 149⟩, ⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 1521, 8, 46⟩], residual := [((1744946012703359804205378596564623655474306445177260178979160388767327552813 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1883 (rho : Nat -> F) : Prop :=
    (relationLc1126 rho) * (relationLc1127 rho) = ((1 : F) * rho 1883)

def relationLc1128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), runs := [⟨(2532552902178607999355399383107160906073217720946833384503303324915775657262 : F), 772, 5, 149⟩, ⟨(2532552902178607999355399383107160906073217720946833384503303324915775657262 : F), 1520, 8, 46⟩, ⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 773, 5, 149⟩, ⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 1521, 8, 46⟩], residual := [((4959782277533719432919392301145785066008674030300801316071562549820147524464 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1884 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1128 rho) = ((1 : F) * rho 1884)

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1885) * ((1 : F) + (1 : F) * rho 1883) = ((1 : F) * rho 1884)

def relationLc1129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1411235244013434614520371691081897277176915508685643211631691542059229848783 : F), runs := [⟨(1411235244013434614520371691081897277176915508685643211631691542059229848783 : F), 773, 5, 149⟩, ⟨(1411235244013434614520371691081897277176915508685643211631691542059229848783 : F), 1521, 8, 46⟩, ⟨(5911908847249762424893425555674385625302681614207230443431930131001633581779 : F), 772, 5, 149⟩, ⟨(5911908847249762424893425555674385625302681614207230443431930131001633581779 : F), 1520, 8, 46⟩], residual := [((3484679471894650991329432637635761465367225304853262511863670906097261714577 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1129 rho) = ((1 : F) * rho 1886)

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1887) * ((1 : F) + (-1 : F) * rho 1883) = ((1121317658165173384835027692025263628896302212261190172871611782856545808479 : F) * rho 1882 + (1 : F) * rho 1886)

def relationLc1130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 46⟩], residual := [((1 : F), 1885), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 713) * (relationLc1130 rho) = ((1 : F) * rho 1888)

def relationLc1131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 46⟩], residual := [((1 : F), 1887), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 713) * (relationLc1131 rho) = ((1 : F) * rho 1889)

def relationLc1132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 47⟩, ⟨(1 : F), 1521, 8, 47⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1132 rho) = ((1 : F) * rho 1890)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
