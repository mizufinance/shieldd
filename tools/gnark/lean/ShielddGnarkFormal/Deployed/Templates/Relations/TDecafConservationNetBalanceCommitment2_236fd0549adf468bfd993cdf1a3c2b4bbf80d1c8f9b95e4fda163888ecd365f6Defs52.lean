import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs51

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), runs := [⟨(3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), 773, 5, 149⟩, ⟨(3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), 1521, 8, 29⟩, ⟨(6830240370147261198375145659669196612661062855326655595600142719026580520289 : F), 772, 5, 149⟩, ⟨(6830240370147261198375145659669196612661062855326655595600142719026580520289 : F), 1520, 8, 29⟩], residual := [((2322372698986678385170800771555486105813643275938233593010400589592673385206 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1750 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1010 rho) = ((1 : F) * rho 1750)

def relationRow1751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1751) * ((1 : F) + (-1 : F) * rho 1747) = ((6409374326668287048524850472784877527334496763268196648541433676811571450528 : F) * rho 1746 + (1 : F) * rho 1750)

def relationLc1011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 29⟩], residual := [((1 : F), 1749), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 696) * (relationLc1011 rho) = ((1 : F) * rho 1752)

def relationLc1012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 29⟩], residual := [((1 : F), 1751), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 696) * (relationLc1012 rho) = ((1 : F) * rho 1753)

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 30⟩, ⟨(1 : F), 1521, 8, 30⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1754 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1013 rho) = ((1 : F) * rho 1754)

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2030418877256702153354468411292183127062917588355041579667419295840969680588 : F), 772, 5, 149⟩, ⟨(2030418877256702153354468411292183127062917588355041579667419295840969680588 : F), 1520, 8, 30⟩], residual := [((1747355640068679147516328884857115463749624824253420006611042383112582562104 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), runs := [⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 773, 5, 149⟩, ⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 1521, 8, 30⟩], residual := [((7305892694301029992493071465213924921567977686636080727368555182846421408795 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1755 (rho : Nat -> F) : Prop :=
    (relationLc1014 rho) * (relationLc1015 rho) = ((1 : F) * rho 1755)

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), runs := [⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 773, 5, 149⟩, ⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 1521, 8, 30⟩, ⟨(6083144384519493791896324904071478793578622929786030430707294081222152755324 : F), 772, 5, 149⟩, ⟨(6083144384519493791896324904071478793578622929786030430707294081222152755324 : F), 1520, 8, 30⟩], residual := [((4902552823771956875741508036393245377867373978126235817730127599362191232359 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1756 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1016 rho) = ((1 : F) * rho 1756)

def relationRow1757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1757) * ((1 : F) + (1 : F) * rho 1755) = ((1 : F) * rho 1756)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), runs := [⟨(2361317364908876632352500034710067737797276405368033397227939374695256483717 : F), 772, 5, 149⟩, ⟨(2361317364908876632352500034710067737797276405368033397227939374695256483717 : F), 1520, 8, 30⟩, ⟨(6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), 773, 5, 149⟩, ⟨(6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), 1521, 8, 30⟩], residual := [((3541908925656413548507316902388301153508525357027828010205105856555218006682 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1758 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1017 rho) = ((1 : F) * rho 1758)

def relationRow1759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1759) * ((1 : F) + (-1 : F) * rho 1755) = ((7686423614582255436268024427089613636785173679939363390885207048027867045143 : F) * rho 1754 + (1 : F) * rho 1758)

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 30⟩], residual := [((1 : F), 1757), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 697) * (relationLc1018 rho) = ((1 : F) * rho 1760)

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 30⟩], residual := [((1 : F), 1759), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 697) * (relationLc1019 rho) = ((1 : F) * rho 1761)

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 31⟩, ⟨(1 : F), 1521, 8, 31⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1762 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1020 rho) = ((1 : F) * rho 1762)

def relationLc1021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(930106514699292104098886691997863737420803130699452871113229389318586867854 : F), 772, 5, 149⟩, ⟨(930106514699292104098886691997863737420803130699452871113229389318586867854 : F), 1520, 8, 31⟩], residual := [((1253059424289635349379570659365335954028514234507196113617158335561908180886 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), runs := [⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 773, 5, 149⟩, ⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 1521, 8, 31⟩], residual := [((1575016505422756477411102303246794318989971918617923936142043927069825021556 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1763 (rho : Nat -> F) : Prop :=
    (relationLc1021 rho) * (relationLc1022 rho) = ((1 : F) * rho 1763)

def relationLc1023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), runs := [⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 773, 5, 149⟩, ⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 1521, 8, 31⟩, ⟨(7863356838019432405003655557591687605593454363760040053244927156863618264247 : F), 772, 5, 149⟩, ⟨(7863356838019432405003655557591687605593454363760040053244927156863618264247 : F), 1520, 8, 31⟩], residual := [((6673974231467654620138423143695952282970001346474765915045547065742091277826 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1764 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1023 rho) = ((1 : F) * rho 1764)

def relationRow1765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1765) * ((1 : F) + (1 : F) * rho 1763) = ((1 : F) * rho 1764)

def relationLc1024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), runs := [⟨(2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), 773, 5, 149⟩, ⟨(2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), 1521, 8, 31⟩, ⟨(581104911408938019245169381189858925782444971394023774690306299053790974794 : F), 772, 5, 149⟩, ⟨(581104911408938019245169381189858925782444971394023774690306299053790974794 : F), 1520, 8, 31⟩], residual := [((1770487517960715804110401795085594248405897988679297912889686390175317961215 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1766 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1024 rho) = ((1 : F) * rho 1766)

def relationRow1767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1767) * ((1 : F) + (-1 : F) * rho 1763) = ((4869257656597027975892546339553743434167906512224945345279395190554089752560 : F) * rho 1762 + (1 : F) * rho 1766)

def relationLc1025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 31⟩], residual := [((1 : F), 1765), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 698) * (relationLc1025 rho) = ((1 : F) * rho 1768)

def relationLc1026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 31⟩], residual := [((1 : F), 1767), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 698) * (relationLc1026 rho) = ((1 : F) * rho 1769)

def relationLc1027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 32⟩, ⟨(1 : F), 1521, 8, 32⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1770 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1027 rho) = ((1 : F) * rho 1770)

def relationLc1028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1280360060523824470092106696621627832627530184276510703344518048220712403801 : F), 772, 5, 149⟩, ⟨(1280360060523824470092106696621627832627530184276510703344518048220712403801 : F), 1520, 8, 32⟩], residual := [((8287987664941402397117653789786020645287437279613880328591813012593442627238 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), runs := [⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 773, 5, 149⟩, ⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 1521, 8, 32⟩], residual := [((121575702908755372201135340724619640361875339229139199078923729978452142890 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1771 (rho : Nat -> F) : Prop :=
    (relationLc1028 rho) * (relationLc1029 rho) = ((1 : F) * rho 1771)

def relationLc1030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), runs := [⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 773, 5, 149⟩, ⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 1521, 8, 32⟩, ⟨(5205186407645200117319233413673572085155429358570388400635137111210339859483 : F), 772, 5, 149⟩, ⟨(5205186407645200117319233413673572085155429358570388400635137111210339859483 : F), 1520, 8, 32⟩], residual := [((1133405785400838498831702522680900447535654583608560225961813862583145349749 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1772 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1030 rho) = ((1 : F) * rho 1772)

def relationRow1773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1773) * ((1 : F) + (1 : F) * rho 1771) = ((1 : F) * rho 1772)

def relationLc1031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4717834868700406088109506277128872987396802149377802944897712755707370244765 : F), runs := [⟨(3239275341783170306929591525107974446220469976583675427300096344707069379558 : F), 772, 5, 149⟩, ⟨(3239275341783170306929591525107974446220469976583675427300096344707069379558 : F), 1520, 8, 32⟩, ⟨(4717834868700406088109506277128872987396802149377802944897712755707370244765 : F), 773, 5, 149⟩, ⟨(4717834868700406088109506277128872987396802149377802944897712755707370244765 : F), 1521, 8, 32⟩], residual := [((7311055964027531925417122416100646083840244751545503601973419593334263889292 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1774 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1031 rho) = ((1 : F) * rho 1774)

def relationRow1775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1775) * ((1 : F) + (-1 : F) * rho 1771) = ((487351538944794029209727136544699097758627209192585455737424355502969614718 : F) * rho 1770 + (1 : F) * rho 1774)

def relationLc1032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 32⟩], residual := [((1 : F), 1773), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 699) * (relationLc1032 rho) = ((1 : F) * rho 1776)

def relationLc1033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 32⟩], residual := [((1 : F), 1775), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 699) * (relationLc1033 rho) = ((1 : F) * rho 1777)

def relationLc1034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 33⟩, ⟨(1 : F), 1521, 8, 33⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1778 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1034 rho) = ((1 : F) * rho 1778)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
