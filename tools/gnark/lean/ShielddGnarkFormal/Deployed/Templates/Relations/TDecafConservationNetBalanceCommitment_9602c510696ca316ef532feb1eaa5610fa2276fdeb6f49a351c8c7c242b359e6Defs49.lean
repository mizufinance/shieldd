import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs48

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationRow1572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1572) * ((1 : F) + (1 : F) * rho 1570) = ((1 : F) * rho 1571)

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), runs := [⟨(5632137380852021660332005579679367209222541517036585382415538509890723493871 : F), 643, 5, 149⟩, ⟨(5632137380852021660332005579679367209222541517036585382415538509890723493871 : F), 1391, 8, 23⟩, ⟨(7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), 644, 5, 149⟩, ⟨(7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), 1392, 8, 23⟩], residual := [((6870425874749630002222215678794466519095350014743074993410297784872103764149 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1573 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc967 rho) = ((1 : F) * rho 1573)

def relationRow1574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1574) * ((1 : F) + (-1 : F) * rho 1570) = ((3304511758054034503636702643586004060448854264276732352214794221459234049309 : F) * rho 1569 + (1 : F) * rho 1573)

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 23⟩], residual := [((1 : F), 1572), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 561) * (relationLc968 rho) = ((1 : F) * rho 1575)

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 23⟩], residual := [((1 : F), 1574), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 561) * (relationLc969 rho) = ((1 : F) * rho 1576)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 24⟩, ⟨(1 : F), 1392, 8, 24⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc970 rho) = ((1 : F) * rho 1577)

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6472705013002580163032637925723972745706876893200818912036439654879840650803 : F), 643, 5, 149⟩, ⟨(6472705013002580163032637925723972745706876893200818912036439654879840650803 : F), 1391, 8, 24⟩], residual := [((523168191152816093959112074180680068973676207798847251742382807098758110759 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), runs := [⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 644, 5, 149⟩, ⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 1392, 8, 24⟩], residual := [((7347986451293227228044865939853207470134533378182586591732454424103537980357 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1578 (rho : Nat -> F) : Prop :=
    (relationLc971 rho) * (relationLc972 rho) = ((1 : F) * rho 1578)

def relationLc973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), runs := [⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 644, 5, 149⟩, ⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 1392, 8, 24⟩, ⟨(6789018812520716971280761201352968868231178570886219064263086153797533754731 : F), 643, 5, 149⟩, ⟨(6789018812520716971280761201352968868231178570886219064263086153797533754731 : F), 1391, 8, 24⟩], residual := [((765336914149016856309671097497576420375755073621175976857998149400327123081 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1579 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc973 rho) = ((1 : F) * rho 1579)

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1580) * ((1 : F) + (1 : F) * rho 1578) = ((1 : F) * rho 1579)

def relationLc974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), runs := [⟨(1655442936907653452968063737428577663144720764267844763672147302119875484310 : F), 643, 5, 149⟩, ⟨(1655442936907653452968063737428577663144720764267844763672147302119875484310 : F), 1391, 8, 24⟩, ⟨(6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), 644, 5, 149⟩, ⟨(6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), 1392, 8, 24⟩], residual := [((7679124835279353567939153841283970111000144261532887851077235306517082115960 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc974 rho) = ((1 : F) * rho 1581)

def relationRow1582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1582) * ((1 : F) + (-1 : F) * rho 1578) = ((11732916534614292780282572121872012958317171281329813362008375464944675845 : F) * rho 1577 + (1 : F) * rho 1581)

def relationLc975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 24⟩], residual := [((1 : F), 1580), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 562) * (relationLc975 rho) = ((1 : F) * rho 1583)

def relationLc976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 24⟩], residual := [((1 : F), 1582), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 562) * (relationLc976 rho) = ((1 : F) * rho 1584)

def relationLc977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 25⟩, ⟨(1 : F), 1392, 8, 25⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1585 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc977 rho) = ((1 : F) * rho 1585)

def relationLc978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5112084256065563833644576982904061764533374503329625350607465679187417885788 : F), 643, 5, 149⟩, ⟨(5112084256065563833644576982904061764533374503329625350607465679187417885788 : F), 1391, 8, 25⟩], residual := [((7527861843569188002123817210029680959433138097825591352209755200104846047280 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), runs := [⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 644, 5, 149⟩, ⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 1392, 8, 25⟩], residual := [((1800696480843674362533975346651308872086511601015124632617255324139971244405 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1586 (rho : Nat -> F) : Prop :=
    (relationLc978 rho) * (relationLc979 rho) = ((1 : F) * rho 1586)

def relationLc980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), runs := [⟨(2181990151873616184954560751152767413517952616988910761714693664778141881608 : F), 643, 5, 149⟩, ⟨(2181990151873616184954560751152767413517952616988910761714693664778141881608 : F), 1391, 8, 25⟩, ⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 644, 5, 149⟩, ⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 1392, 8, 25⟩], residual := [((6868188222587393792107293653927770969343235445237894989310685571515823739337 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1587 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc980 rho) = ((1 : F) * rho 1587)

def relationRow1588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1588) * ((1 : F) + (1 : F) * rho 1586) = ((1 : F) * rho 1587)

def relationLc981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1944166140853146020671099531526533021601159603458214446471162182313730214903 : F), runs := [⟨(1944166140853146020671099531526533021601159603458214446471162182313730214903 : F), 644, 5, 149⟩, ⟨(1944166140853146020671099531526533021601159603458214446471162182313730214903 : F), 1392, 8, 25⟩, ⟨(6262471597554754239294264187628779117857946718165153066220539791139267357433 : F), 643, 5, 149⟩, ⟨(6262471597554754239294264187628779117857946718165153066220539791139267357433 : F), 1391, 8, 25⟩], residual := [((1576273526840976632141531284853775562032663889916168838624547884401585499704 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1589 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc981 rho) = ((1 : F) * rho 1589)

def relationRow1590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1590) * ((1 : F) + (-1 : F) * rho 1586) = ((237824011020470164283461219626234391916793013530696315243531482464411666705 : F) * rho 1585 + (1 : F) * rho 1589)

def relationLc982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 25⟩], residual := [((1 : F), 1588), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 563) * (relationLc982 rho) = ((1 : F) * rho 1591)

def relationLc983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 25⟩], residual := [((1 : F), 1590), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 563) * (relationLc983 rho) = ((1 : F) * rho 1592)

def relationLc984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 26⟩, ⟨(1 : F), 1392, 8, 26⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1593 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc984 rho) = ((1 : F) * rho 1593)

def relationLc985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(295028883413367410717218583444741649751448401012889147284147081713795511179 : F), 643, 5, 149⟩, ⟨(295028883413367410717218583444741649751448401012889147284147081713795511179 : F), 1391, 8, 26⟩], residual := [((997393638517673454837835612460204460707872237746252290258743549367452952391 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3686694172161452137307136928011842724124112916089468706551246464119678174556 : F), runs := [⟨(3686694172161452137307136928011842724124112916089468706551246464119678174556 : F), 644, 5, 149⟩, ⟨(3686694172161452137307136928011842724124112916089468706551246464119678174556 : F), 1392, 8, 26⟩], residual := [((5447509693584985211681178921174715347732773873372327537382737402961313898781 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1594 (rho : Nat -> F) : Prop :=
    (relationLc985 rho) * (relationLc986 rho) = ((1 : F) * rho 1594)

def relationLc987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3686694172161452137307136928011842724124112916089468706551246464119678174556 : F), runs := [⟨(151041364896572449626002570432852781974197289804479422659975754287075105733 : F), 643, 5, 149⟩, ⟨(151041364896572449626002570432852781974197289804479422659975754287075105733 : F), 1391, 8, 26⟩, ⟨(3686694172161452137307136928011842724124112916089468706551246464119678174556 : F), 644, 5, 149⟩, ⟨(3686694172161452137307136928011842724124112916089468706551246464119678174556 : F), 1392, 8, 26⟩], residual := [((1447831649959205534870443849415717372910462030814327178069576088208435657101 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1595 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc987 rho) = ((1 : F) * rho 1595)

def relationRow1596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1596) * ((1 : F) + (1 : F) * rho 1594) = ((1 : F) * rho 1595)

def relationLc988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4757767577266918286941688010769703807251786419064595121383986991797731064485 : F), runs := [⟨(4757767577266918286941688010769703807251786419064595121383986991797731064485 : F), 644, 5, 149⟩, ⟨(4757767577266918286941688010769703807251786419064595121383986991797731064485 : F), 1392, 8, 26⟩, ⟨(8293420384531797974622822368348693749401702045349584405275257701630334133308 : F), 643, 5, 149⟩, ⟨(8293420384531797974622822368348693749401702045349584405275257701630334133308 : F), 1391, 8, 26⟩], residual := [((6996630099469164889378381089365829158465437304339736649865657367708973581940 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1597 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc988 rho) = ((1 : F) * rho 1597)

def relationRow1598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1598) * ((1 : F) + (-1 : F) * rho 1594) = ((3837735537058024586933139498444695506098310205893948129211222218406753280289 : F) * rho 1593 + (1 : F) * rho 1597)

def relationLc989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 26⟩], residual := [((1 : F), 1596), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 564) * (relationLc989 rho) = ((1 : F) * rho 1599)

def relationLc990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 26⟩], residual := [((1 : F), 1598), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 564) * (relationLc990 rho) = ((1 : F) * rho 1600)

def relationLc991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 27⟩, ⟨(1 : F), 1392, 8, 27⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
