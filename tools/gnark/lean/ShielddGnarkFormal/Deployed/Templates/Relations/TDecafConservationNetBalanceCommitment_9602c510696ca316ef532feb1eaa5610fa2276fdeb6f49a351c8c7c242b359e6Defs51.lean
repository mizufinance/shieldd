import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs50

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), runs := [⟨(2361317364908876632352500034710067737797276405368033397227939374695256483717 : F), 643, 5, 149⟩, ⟨(2361317364908876632352500034710067737797276405368033397227939374695256483717 : F), 1391, 8, 30⟩, ⟨(6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), 644, 5, 149⟩, ⟨(6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), 1392, 8, 30⟩], residual := [((3541908925656413548507316902388301153508525357027828010205105856555218006682 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1629 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1016 rho) = ((1 : F) * rho 1629)

def relationRow1630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1630) * ((1 : F) + (-1 : F) * rho 1626) = ((7686423614582255436268024427089613636785173679939363390885207048027867045143 : F) * rho 1625 + (1 : F) * rho 1629)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 30⟩], residual := [((1 : F), 1628), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 568) * (relationLc1017 rho) = ((1 : F) * rho 1631)

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 30⟩], residual := [((1 : F), 1630), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 568) * (relationLc1018 rho) = ((1 : F) * rho 1632)

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 31⟩, ⟨(1 : F), 1392, 8, 31⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1633 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1019 rho) = ((1 : F) * rho 1633)

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(930106514699292104098886691997863737420803130699452871113229389318586867854 : F), 643, 5, 149⟩, ⟨(930106514699292104098886691997863737420803130699452871113229389318586867854 : F), 1391, 8, 31⟩], residual := [((1253059424289635349379570659365335954028514234507196113617158335561908180886 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), runs := [⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 644, 5, 149⟩, ⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 1392, 8, 31⟩], residual := [((1575016505422756477411102303246794318989971918617923936142043927069825021556 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1634 (rho : Nat -> F) : Prop :=
    (relationLc1020 rho) * (relationLc1021 rho) = ((1 : F) * rho 1634)

def relationLc1022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), runs := [⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 644, 5, 149⟩, ⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 1392, 8, 31⟩, ⟨(7863356838019432405003655557591687605593454363760040053244927156863618264247 : F), 643, 5, 149⟩, ⟨(7863356838019432405003655557591687605593454363760040053244927156863618264247 : F), 1391, 8, 31⟩], residual := [((6673974231467654620138423143695952282970001346474765915045547065742091277826 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1022 rho) = ((1 : F) * rho 1635)

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1636) * ((1 : F) + (1 : F) * rho 1634) = ((1 : F) * rho 1635)

def relationLc1023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), runs := [⟨(2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), 644, 5, 149⟩, ⟨(2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), 1392, 8, 31⟩, ⟨(581104911408938019245169381189858925782444971394023774690306299053790974794 : F), 643, 5, 149⟩, ⟨(581104911408938019245169381189858925782444971394023774690306299053790974794 : F), 1391, 8, 31⟩], residual := [((1770487517960715804110401795085594248405897988679297912889686390175317961215 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1023 rho) = ((1 : F) * rho 1637)

def relationRow1638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1638) * ((1 : F) + (-1 : F) * rho 1634) = ((4869257656597027975892546339553743434167906512224945345279395190554089752560 : F) * rho 1633 + (1 : F) * rho 1637)

def relationLc1024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 31⟩], residual := [((1 : F), 1636), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 569) * (relationLc1024 rho) = ((1 : F) * rho 1639)

def relationLc1025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 31⟩], residual := [((1 : F), 1638), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 569) * (relationLc1025 rho) = ((1 : F) * rho 1640)

def relationLc1026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 32⟩, ⟨(1 : F), 1392, 8, 32⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1026 rho) = ((1 : F) * rho 1641)

def relationLc1027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1280360060523824470092106696621627832627530184276510703344518048220712403801 : F), 643, 5, 149⟩, ⟨(1280360060523824470092106696621627832627530184276510703344518048220712403801 : F), 1391, 8, 32⟩], residual := [((8287987664941402397117653789786020645287437279613880328591813012593442627238 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), runs := [⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 644, 5, 149⟩, ⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 1392, 8, 32⟩], residual := [((121575702908755372201135340724619640361875339229139199078923729978452142890 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1642 (rho : Nat -> F) : Prop :=
    (relationLc1027 rho) * (relationLc1028 rho) = ((1 : F) * rho 1642)

def relationLc1029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), runs := [⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 644, 5, 149⟩, ⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 1392, 8, 32⟩, ⟨(5205186407645200117319233413673572085155429358570388400635137111210339859483 : F), 643, 5, 149⟩, ⟨(5205186407645200117319233413673572085155429358570388400635137111210339859483 : F), 1391, 8, 32⟩], residual := [((1133405785400838498831702522680900447535654583608560225961813862583145349749 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1643 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1029 rho) = ((1 : F) * rho 1643)

def relationRow1644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1644) * ((1 : F) + (1 : F) * rho 1642) = ((1 : F) * rho 1643)

def relationLc1030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4717834868700406088109506277128872987396802149377802944897712755707370244765 : F), runs := [⟨(3239275341783170306929591525107974446220469976583675427300096344707069379558 : F), 643, 5, 149⟩, ⟨(3239275341783170306929591525107974446220469976583675427300096344707069379558 : F), 1391, 8, 32⟩, ⟨(4717834868700406088109506277128872987396802149377802944897712755707370244765 : F), 644, 5, 149⟩, ⟨(4717834868700406088109506277128872987396802149377802944897712755707370244765 : F), 1392, 8, 32⟩], residual := [((7311055964027531925417122416100646083840244751545503601973419593334263889292 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1030 rho) = ((1 : F) * rho 1645)

def relationRow1646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1646) * ((1 : F) + (-1 : F) * rho 1642) = ((487351538944794029209727136544699097758627209192585455737424355502969614718 : F) * rho 1641 + (1 : F) * rho 1645)

def relationLc1031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 32⟩], residual := [((1 : F), 1644), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 570) * (relationLc1031 rho) = ((1 : F) * rho 1647)

def relationLc1032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 32⟩], residual := [((1 : F), 1646), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 570) * (relationLc1032 rho) = ((1 : F) * rho 1648)

def relationLc1033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 33⟩, ⟨(1 : F), 1392, 8, 33⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1649 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1033 rho) = ((1 : F) * rho 1649)

def relationLc1034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5785242367034416013186451122908346386574802522145504365944482396300506510102 : F), 643, 5, 149⟩, ⟨(5785242367034416013186451122908346386574802522145504365944482396300506510102 : F), 1391, 8, 33⟩], residual := [((6008574523412711309216712713621102379598344939600408516050135086888331613703 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8353955466520487973218678342737144999196589440312072258568627139248891123780 : F), runs := [⟨(8353955466520487973218678342737144999196589440312072258568627139248891123780 : F), 644, 5, 149⟩, ⟨(8353955466520487973218678342737144999196589440312072258568627139248891123780 : F), 1392, 8, 33⟩], residual := [((5874654758371365497412123582816759422899513431348348189538620132589470139504 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1650 (rho : Nat -> F) : Prop :=
    (relationLc1034 rho) * (relationLc1035 rho) = ((1 : F) * rho 1650)

def relationLc1036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8353955466520487973218678342737144999196589440312072258568627139248891123780 : F), runs := [⟨(7062726124271134759240555526807379968434987263529066777136823631924421133508 : F), 643, 5, 149⟩, ⟨(7062726124271134759240555526807379968434987263529066777136823631924421133508 : F), 1391, 8, 33⟩, ⟨(8353955466520487973218678342737144999196589440312072258568627139248891123780 : F), 644, 5, 149⟩, ⟨(8353955466520487973218678342737144999196589440312072258568627139248891123780 : F), 1392, 8, 33⟩], residual := [((6695653059300172265242021768773930636429052276147997679807098629004792628300 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1651 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1036 rho) = ((1 : F) * rho 1651)

def relationRow1652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1652) * ((1 : F) + (1 : F) * rho 1650) = ((1 : F) * rho 1651)

def relationLc1037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (90506282907882451030146596044401532179309894841991569366606316668518115261 : F), runs := [⟨(1381735625157235665008269411974166562940912071624997050798409823992988105533 : F), 643, 5, 149⟩, ⟨(1381735625157235665008269411974166562940912071624997050798409823992988105533 : F), 1391, 8, 33⟩, ⟨(90506282907882451030146596044401532179309894841991569366606316668518115261 : F), 644, 5, 149⟩, ⟨(90506282907882451030146596044401532179309894841991569366606316668518115261 : F), 1392, 8, 33⟩], residual := [((1748808690128198159006803170007615894946847059006066148128134826912616610741 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1653 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1037 rho) = ((1 : F) * rho 1653)

def relationRow1654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1654) * ((1 : F) + (-1 : F) * rho 1650) = ((6972219841363252308210408930762978436255677368687075207770217315255903018247 : F) * rho 1649 + (1 : F) * rho 1653)

def relationLc1038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 33⟩], residual := [((1 : F), 1652), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 571) * (relationLc1038 rho) = ((1 : F) * rho 1655)

def relationLc1039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 33⟩], residual := [((1 : F), 1654), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 571) * (relationLc1039 rho) = ((1 : F) * rho 1656)

def relationLc1040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 34⟩, ⟨(1 : F), 1392, 8, 34⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1657 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1040 rho) = ((1 : F) * rho 1657)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
