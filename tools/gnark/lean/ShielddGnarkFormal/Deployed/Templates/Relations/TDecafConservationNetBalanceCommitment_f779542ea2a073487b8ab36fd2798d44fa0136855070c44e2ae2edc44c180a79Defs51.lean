import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs50

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 21⟩], residual := [((1 : F), 1816), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 817) * (relationLc957 rho) = ((1 : F) * rho 1818)

def relationLc958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 22⟩, ⟨(1 : F), 1650, 8, 22⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1819 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc958 rho) = ((1 : F) * rho 1819)

def relationLc959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4109344957650684209641652373467078246637936756406747145698087831051865324874 : F), 901, 5, 149⟩, ⟨(4109344957650684209641652373467078246637936756406747145698087831051865324874 : F), 1649, 8, 22⟩], residual := [((8185075041605189891702230811232664311135334879558914454024211833472237572350 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), runs := [⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 902, 5, 149⟩, ⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 1650, 8, 22⟩], residual := [((5633231909779173705243818096630389247657880760377004305002706642023381431345 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1820 (rho : Nat -> F) : Prop :=
    (relationLc959 rho) * (relationLc960 rho) = ((1 : F) * rho 1820)

def relationLc961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), runs := [⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 902, 5, 149⟩, ⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 1650, 8, 22⟩, ⟨(1368239371210898318989512428810871675633714899585151922875215904592739153663 : F), 901, 5, 149⟩, ⟨(1368239371210898318989512428810871675633714899585151922875215904592739153663 : F), 1649, 8, 22⟩], residual := [((8294227672357123213139327778057891205833854147537240523082955310812169390266 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc961 rho) = ((1 : F) * rho 1821)

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1822) * ((1 : F) + (1 : F) * rho 1820) = ((1 : F) * rho 1821)

def relationLc962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), runs := [⟨(7076222378217472105259312509970674855742184435568911905060017551324670085378 : F), 901, 5, 149⟩, ⟨(7076222378217472105259312509970674855742184435568911905060017551324670085378 : F), 1649, 8, 22⟩, ⟨(7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), 902, 5, 149⟩, ⟨(7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), 1650, 8, 22⟩], residual := [((150234077071247211109497160723655325542045187616823304852278145105239848775 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc962 rho) = ((1 : F) * rho 1823)

def relationRow1824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1824) * ((1 : F) + (-1 : F) * rho 1820) = ((2557966410468316092136476320616339769911641258366434575134271639927644982353 : F) * rho 1819 + (1 : F) * rho 1823)

def relationLc963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 22⟩], residual := [((1 : F), 1822), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 818) * (relationLc963 rho) = ((1 : F) * rho 1825)

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 22⟩], residual := [((1 : F), 1824), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 818) * (relationLc964 rho) = ((1 : F) * rho 1826)

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 23⟩, ⟨(1 : F), 1650, 8, 23⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1827 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc965 rho) = ((1 : F) * rho 1827)

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(903397544208968998393395433447921661139237367914173012153575293703941683324 : F), 901, 5, 149⟩, ⟨(903397544208968998393395433447921661139237367914173012153575293703941683324 : F), 1649, 8, 23⟩], residual := [((5261268698174490817639752183640085875124473451973826038092695836296690717596 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (492187389477685739719883284483824738295496446159253906695099275432548304139 : F), runs := [⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 902, 5, 149⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 1650, 8, 23⟩], residual := [((3277399131366304628572171477952357502603016755363655206256944844257262755626 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1828 (rho : Nat -> F) : Prop :=
    (relationLc966 rho) * (relationLc967 rho) = ((1 : F) * rho 1828)

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (492187389477685739719883284483824738295496446159253906695099275432548304139 : F), runs := [⟨(2812324368576348763916819359102179322153357818117478445519694946026685745170 : F), 901, 5, 149⟩, ⟨(2812324368576348763916819359102179322153357818117478445519694946026685745170 : F), 1649, 8, 23⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 902, 5, 149⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 1650, 8, 23⟩], residual := [((1574035874678740422026609259987080012280549320410988834524935671045305474892 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1829 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc968 rho) = ((1 : F) * rho 1829)

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1830) * ((1 : F) + (1 : F) * rho 1828) = ((1 : F) * rho 1829)

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), runs := [⟨(5632137380852021660332005579679367209222541517036585382415538509890723493871 : F), 901, 5, 149⟩, ⟨(5632137380852021660332005579679367209222541517036585382415538509890723493871 : F), 1649, 8, 23⟩, ⟨(7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), 902, 5, 149⟩, ⟨(7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), 1650, 8, 23⟩], residual := [((6870425874749630002222215678794466519095350014743074993410297784872103764149 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc969 rho) = ((1 : F) * rho 1831)

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1832) * ((1 : F) + (-1 : F) * rho 1828) = ((3304511758054034503636702643586004060448854264276732352214794221459234049309 : F) * rho 1827 + (1 : F) * rho 1831)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 23⟩], residual := [((1 : F), 1830), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 819) * (relationLc970 rho) = ((1 : F) * rho 1833)

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 23⟩], residual := [((1 : F), 1832), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 819) * (relationLc971 rho) = ((1 : F) * rho 1834)

def relationLc972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 24⟩, ⟨(1 : F), 1650, 8, 24⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1835 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc972 rho) = ((1 : F) * rho 1835)

def relationLc973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6472705013002580163032637925723972745706876893200818912036439654879840650803 : F), 901, 5, 149⟩, ⟨(6472705013002580163032637925723972745706876893200818912036439654879840650803 : F), 1649, 8, 24⟩], residual := [((523168191152816093959112074180680068973676207798847251742382807098758110759 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), runs := [⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 902, 5, 149⟩, ⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 1650, 8, 24⟩], residual := [((7347986451293227228044865939853207470134533378182586591732454424103537980357 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1836 (rho : Nat -> F) : Prop :=
    (relationLc973 rho) * (relationLc974 rho) = ((1 : F) * rho 1836)

def relationLc975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), runs := [⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 902, 5, 149⟩, ⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 1650, 8, 24⟩, ⟨(6789018812520716971280761201352968868231178570886219064263086153797533754731 : F), 901, 5, 149⟩, ⟨(6789018812520716971280761201352968868231178570886219064263086153797533754731 : F), 1649, 8, 24⟩], residual := [((765336914149016856309671097497576420375755073621175976857998149400327123081 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1837 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc975 rho) = ((1 : F) * rho 1837)

def relationRow1838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1838) * ((1 : F) + (1 : F) * rho 1836) = ((1 : F) * rho 1837)

def relationLc976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), runs := [⟨(1655442936907653452968063737428577663144720764267844763672147302119875484310 : F), 901, 5, 149⟩, ⟨(1655442936907653452968063737428577663144720764267844763672147302119875484310 : F), 1649, 8, 24⟩, ⟨(6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), 902, 5, 149⟩, ⟨(6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), 1650, 8, 24⟩], residual := [((7679124835279353567939153841283970111000144261532887851077235306517082115960 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1839 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc976 rho) = ((1 : F) * rho 1839)

def relationRow1840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1840) * ((1 : F) + (-1 : F) * rho 1836) = ((11732916534614292780282572121872012958317171281329813362008375464944675845 : F) * rho 1835 + (1 : F) * rho 1839)

def relationLc977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 24⟩], residual := [((1 : F), 1838), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 820) * (relationLc977 rho) = ((1 : F) * rho 1841)

def relationLc978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 24⟩], residual := [((1 : F), 1840), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 820) * (relationLc978 rho) = ((1 : F) * rho 1842)

def relationLc979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 25⟩, ⟨(1 : F), 1650, 8, 25⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1843 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc979 rho) = ((1 : F) * rho 1843)

def relationLc980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5112084256065563833644576982904061764533374503329625350607465679187417885788 : F), 901, 5, 149⟩, ⟨(5112084256065563833644576982904061764533374503329625350607465679187417885788 : F), 1649, 8, 25⟩], residual := [((7527861843569188002123817210029680959433138097825591352209755200104846047280 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), runs := [⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 902, 5, 149⟩, ⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 1650, 8, 25⟩], residual := [((1800696480843674362533975346651308872086511601015124632617255324139971244405 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1844 (rho : Nat -> F) : Prop :=
    (relationLc980 rho) * (relationLc981 rho) = ((1 : F) * rho 1844)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
