import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs49

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), runs := [⟨(7076222378217472105259312509970674855742184435568911905060017551324670085378 : F), 772, 5, 149⟩, ⟨(7076222378217472105259312509970674855742184435568911905060017551324670085378 : F), 1520, 8, 22⟩, ⟨(7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), 773, 5, 149⟩, ⟨(7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), 1521, 8, 22⟩], residual := [((150234077071247211109497160723655325542045187616823304852278145105239848775 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1694 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc961 rho) = ((1 : F) * rho 1694)

def relationRow1695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1695) * ((1 : F) + (-1 : F) * rho 1691) = ((2557966410468316092136476320616339769911641258366434575134271639927644982353 : F) * rho 1690 + (1 : F) * rho 1694)

def relationLc962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 22⟩], residual := [((1 : F), 1693), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 689) * (relationLc962 rho) = ((1 : F) * rho 1696)

def relationLc963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 22⟩], residual := [((1 : F), 1695), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 689) * (relationLc963 rho) = ((1 : F) * rho 1697)

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 23⟩, ⟨(1 : F), 1521, 8, 23⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1698 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc964 rho) = ((1 : F) * rho 1698)

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(903397544208968998393395433447921661139237367914173012153575293703941683324 : F), 772, 5, 149⟩, ⟨(903397544208968998393395433447921661139237367914173012153575293703941683324 : F), 1520, 8, 23⟩], residual := [((5261268698174490817639752183640085875124473451973826038092695836296690717596 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (492187389477685739719883284483824738295496446159253906695099275432548304139 : F), runs := [⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 773, 5, 149⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 1521, 8, 23⟩], residual := [((3277399131366304628572171477952357502603016755363655206256944844257262755626 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1699 (rho : Nat -> F) : Prop :=
    (relationLc965 rho) * (relationLc966 rho) = ((1 : F) * rho 1699)

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (492187389477685739719883284483824738295496446159253906695099275432548304139 : F), runs := [⟨(2812324368576348763916819359102179322153357818117478445519694946026685745170 : F), 772, 5, 149⟩, ⟨(2812324368576348763916819359102179322153357818117478445519694946026685745170 : F), 1520, 8, 23⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 773, 5, 149⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 1521, 8, 23⟩], residual := [((1574035874678740422026609259987080012280549320410988834524935671045305474892 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1700 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc967 rho) = ((1 : F) * rho 1700)

def relationRow1701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1701) * ((1 : F) + (1 : F) * rho 1699) = ((1 : F) * rho 1700)

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), runs := [⟨(5632137380852021660332005579679367209222541517036585382415538509890723493871 : F), 772, 5, 149⟩, ⟨(5632137380852021660332005579679367209222541517036585382415538509890723493871 : F), 1520, 8, 23⟩, ⟨(7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), 773, 5, 149⟩, ⟨(7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), 1521, 8, 23⟩], residual := [((6870425874749630002222215678794466519095350014743074993410297784872103764149 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1702 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc968 rho) = ((1 : F) * rho 1702)

def relationRow1703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1703) * ((1 : F) + (-1 : F) * rho 1699) = ((3304511758054034503636702643586004060448854264276732352214794221459234049309 : F) * rho 1698 + (1 : F) * rho 1702)

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 23⟩], residual := [((1 : F), 1701), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 690) * (relationLc969 rho) = ((1 : F) * rho 1704)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 23⟩], residual := [((1 : F), 1703), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 690) * (relationLc970 rho) = ((1 : F) * rho 1705)

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 24⟩, ⟨(1 : F), 1521, 8, 24⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1706 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc971 rho) = ((1 : F) * rho 1706)

def relationLc972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6472705013002580163032637925723972745706876893200818912036439654879840650803 : F), 772, 5, 149⟩, ⟨(6472705013002580163032637925723972745706876893200818912036439654879840650803 : F), 1520, 8, 24⟩], residual := [((523168191152816093959112074180680068973676207798847251742382807098758110759 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), runs := [⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 773, 5, 149⟩, ⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 1521, 8, 24⟩], residual := [((7347986451293227228044865939853207470134533378182586591732454424103537980357 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1707 (rho : Nat -> F) : Prop :=
    (relationLc972 rho) * (relationLc973 rho) = ((1 : F) * rho 1707)

def relationLc974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), runs := [⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 773, 5, 149⟩, ⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 1521, 8, 24⟩, ⟨(6789018812520716971280761201352968868231178570886219064263086153797533754731 : F), 772, 5, 149⟩, ⟨(6789018812520716971280761201352968868231178570886219064263086153797533754731 : F), 1520, 8, 24⟩], residual := [((765336914149016856309671097497576420375755073621175976857998149400327123081 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1708 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc974 rho) = ((1 : F) * rho 1708)

def relationRow1709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1709) * ((1 : F) + (1 : F) * rho 1707) = ((1 : F) * rho 1708)

def relationLc975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), runs := [⟨(1655442936907653452968063737428577663144720764267844763672147302119875484310 : F), 772, 5, 149⟩, ⟨(1655442936907653452968063737428577663144720764267844763672147302119875484310 : F), 1520, 8, 24⟩, ⟨(6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), 773, 5, 149⟩, ⟨(6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), 1521, 8, 24⟩], residual := [((7679124835279353567939153841283970111000144261532887851077235306517082115960 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1710 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc975 rho) = ((1 : F) * rho 1710)

def relationRow1711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1711) * ((1 : F) + (-1 : F) * rho 1707) = ((11732916534614292780282572121872012958317171281329813362008375464944675845 : F) * rho 1706 + (1 : F) * rho 1710)

def relationLc976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 24⟩], residual := [((1 : F), 1709), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 691) * (relationLc976 rho) = ((1 : F) * rho 1712)

def relationLc977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 24⟩], residual := [((1 : F), 1711), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 691) * (relationLc977 rho) = ((1 : F) * rho 1713)

def relationLc978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 25⟩, ⟨(1 : F), 1521, 8, 25⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1714 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc978 rho) = ((1 : F) * rho 1714)

def relationLc979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5112084256065563833644576982904061764533374503329625350607465679187417885788 : F), 772, 5, 149⟩, ⟨(5112084256065563833644576982904061764533374503329625350607465679187417885788 : F), 1520, 8, 25⟩], residual := [((7527861843569188002123817210029680959433138097825591352209755200104846047280 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), runs := [⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 773, 5, 149⟩, ⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 1521, 8, 25⟩], residual := [((1800696480843674362533975346651308872086511601015124632617255324139971244405 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1715 (rho : Nat -> F) : Prop :=
    (relationLc979 rho) * (relationLc980 rho) = ((1 : F) * rho 1715)

def relationLc981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), runs := [⟨(2181990151873616184954560751152767413517952616988910761714693664778141881608 : F), 772, 5, 149⟩, ⟨(2181990151873616184954560751152767413517952616988910761714693664778141881608 : F), 1520, 8, 25⟩, ⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 773, 5, 149⟩, ⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 1521, 8, 25⟩], residual := [((6868188222587393792107293653927770969343235445237894989310685571515823739337 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1716 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc981 rho) = ((1 : F) * rho 1716)

def relationRow1717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1717) * ((1 : F) + (1 : F) * rho 1715) = ((1 : F) * rho 1716)

def relationLc982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1944166140853146020671099531526533021601159603458214446471162182313730214903 : F), runs := [⟨(1944166140853146020671099531526533021601159603458214446471162182313730214903 : F), 773, 5, 149⟩, ⟨(1944166140853146020671099531526533021601159603458214446471162182313730214903 : F), 1521, 8, 25⟩, ⟨(6262471597554754239294264187628779117857946718165153066220539791139267357433 : F), 772, 5, 149⟩, ⟨(6262471597554754239294264187628779117857946718165153066220539791139267357433 : F), 1520, 8, 25⟩], residual := [((1576273526840976632141531284853775562032663889916168838624547884401585499704 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1718 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc982 rho) = ((1 : F) * rho 1718)

def relationRow1719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1719) * ((1 : F) + (-1 : F) * rho 1715) = ((237824011020470164283461219626234391916793013530696315243531482464411666705 : F) * rho 1714 + (1 : F) * rho 1718)

def relationLc983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 25⟩], residual := [((1 : F), 1717), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 692) * (relationLc983 rho) = ((1 : F) * rho 1720)

def relationLc984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 25⟩], residual := [((1 : F), 1719), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 692) * (relationLc984 rho) = ((1 : F) * rho 1721)

def relationLc985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 26⟩, ⟨(1 : F), 1521, 8, 26⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1722 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc985 rho) = ((1 : F) * rho 1722)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
