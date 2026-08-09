import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs95

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4387) * (relationLc961 rho) = ((1 : F) * rho 5387)

def relationLc962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 21⟩], residual := [((1 : F), 5386), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4387) * (relationLc962 rho) = ((1 : F) * rho 5388)

def relationLc963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 22⟩, ⟨(1 : F), 5220, 8, 22⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5563 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc963 rho) = ((1 : F) * rho 5389)

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4109344957650684209641652373467078246637936756406747145698087831051865324874 : F), 4471, 5, 149⟩, ⟨(4109344957650684209641652373467078246637936756406747145698087831051865324874 : F), 5219, 8, 22⟩], residual := [((8185075041605189891702230811232664311135334879558914454024211833472237572350 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), runs := [⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 4472, 5, 149⟩, ⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 5220, 8, 22⟩], residual := [((5633231909779173705243818096630389247657880760377004305002706642023381431345 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5564 (rho : Nat -> F) : Prop :=
    (relationLc964 rho) * (relationLc965 rho) = ((1 : F) * rho 5390)

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), runs := [⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 4472, 5, 149⟩, ⟨(1189727039257417773146963891805468094277926358781282652259055735334905828690 : F), 5220, 8, 22⟩, ⟨(1368239371210898318989512428810871675633714899585151922875215904592739153663 : F), 4471, 5, 149⟩, ⟨(1368239371210898318989512428810871675633714899585151922875215904592739153663 : F), 5219, 8, 22⟩], residual := [((8294227672357123213139327778057891205833854147537240523082955310812169390266 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5565 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc966 rho) = ((1 : F) * rho 5391)

def relationRow5566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5392) * ((1 : F) + (1 : F) * rho 5390) = ((1 : F) * rho 5391)

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), runs := [⟨(7076222378217472105259312509970674855742184435568911905060017551324670085378 : F), 4471, 5, 149⟩, ⟨(7076222378217472105259312509970674855742184435568911905060017551324670085378 : F), 5219, 8, 22⟩, ⟨(7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), 4472, 5, 149⟩, ⟨(7254734710170952651101861046976078437097972976372781175676177720582503410351 : F), 5220, 8, 22⟩], residual := [((150234077071247211109497160723655325542045187616823304852278145105239848775 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5567 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc967 rho) = ((1 : F) * rho 5393)

def relationRow5568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5394) * ((1 : F) + (-1 : F) * rho 5390) = ((2557966410468316092136476320616339769911641258366434575134271639927644982353 : F) * rho 5389 + (1 : F) * rho 5393)

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 22⟩], residual := [((1 : F), 5392), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4388) * (relationLc968 rho) = ((1 : F) * rho 5395)

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 22⟩], residual := [((1 : F), 5394), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4388) * (relationLc969 rho) = ((1 : F) * rho 5396)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 23⟩, ⟨(1 : F), 5220, 8, 23⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5571 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc970 rho) = ((1 : F) * rho 5397)

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(903397544208968998393395433447921661139237367914173012153575293703941683324 : F), 4471, 5, 149⟩, ⟨(903397544208968998393395433447921661139237367914173012153575293703941683324 : F), 5219, 8, 23⟩], residual := [((5261268698174490817639752183640085875124473451973826038092695836296690717596 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (492187389477685739719883284483824738295496446159253906695099275432548304139 : F), runs := [⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 4472, 5, 149⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 5220, 8, 23⟩], residual := [((3277399131366304628572171477952357502603016755363655206256944844257262755626 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5572 (rho : Nat -> F) : Prop :=
    (relationLc971 rho) * (relationLc972 rho) = ((1 : F) * rho 5398)

def relationLc973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (492187389477685739719883284483824738295496446159253906695099275432548304139 : F), runs := [⟨(2812324368576348763916819359102179322153357818117478445519694946026685745170 : F), 4471, 5, 149⟩, ⟨(2812324368576348763916819359102179322153357818117478445519694946026685745170 : F), 5219, 8, 23⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 4472, 5, 149⟩, ⟨(492187389477685739719883284483824738295496446159253906695099275432548304139 : F), 5220, 8, 23⟩], residual := [((1574035874678740422026609259987080012280549320410988834524935671045305474892 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5573 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc973 rho) = ((1 : F) * rho 5399)

def relationRow5574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5400) * ((1 : F) + (1 : F) * rho 5398) = ((1 : F) * rho 5399)

def relationLc974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), runs := [⟨(5632137380852021660332005579679367209222541517036585382415538509890723493871 : F), 4471, 5, 149⟩, ⟨(5632137380852021660332005579679367209222541517036585382415538509890723493871 : F), 5219, 8, 23⟩, ⟨(7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), 4472, 5, 149⟩, ⟨(7952274359950684684528941654297721793080402888994809921240134180484860934902 : F), 5220, 8, 23⟩], residual := [((6870425874749630002222215678794466519095350014743074993410297784872103764149 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5575 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc974 rho) = ((1 : F) * rho 5401)

def relationRow5576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5402) * ((1 : F) + (-1 : F) * rho 5398) = ((3304511758054034503636702643586004060448854264276732352214794221459234049309 : F) * rho 5397 + (1 : F) * rho 5401)

def relationLc975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 23⟩], residual := [((1 : F), 5400), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4389) * (relationLc975 rho) = ((1 : F) * rho 5403)

def relationLc976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 23⟩], residual := [((1 : F), 5402), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4389) * (relationLc976 rho) = ((1 : F) * rho 5404)

def relationLc977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 24⟩, ⟨(1 : F), 5220, 8, 24⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5579 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc977 rho) = ((1 : F) * rho 5405)

def relationLc978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6472705013002580163032637925723972745706876893200818912036439654879840650803 : F), 4471, 5, 149⟩, ⟨(6472705013002580163032637925723972745706876893200818912036439654879840650803 : F), 5219, 8, 24⟩], residual := [((523168191152816093959112074180680068973676207798847251742382807098758110759 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), runs := [⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 4472, 5, 149⟩, ⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 5220, 8, 24⟩], residual := [((7347986451293227228044865939853207470134533378182586591732454424103537980357 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5580 (rho : Nat -> F) : Prop :=
    (relationLc978 rho) * (relationLc979 rho) = ((1 : F) * rho 5406)

def relationLc980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), runs := [⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 4472, 5, 149⟩, ⟨(1667175853442267745748346309550449676103037935549174577034155677584820160155 : F), 5220, 8, 24⟩, ⟨(6789018812520716971280761201352968868231178570886219064263086153797533754731 : F), 4471, 5, 149⟩, ⟨(6789018812520716971280761201352968868231178570886219064263086153797533754731 : F), 5219, 8, 24⟩], residual := [((765336914149016856309671097497576420375755073621175976857998149400327123081 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5581 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc980 rho) = ((1 : F) * rho 5407)

def relationRow5582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5408) * ((1 : F) + (1 : F) * rho 5406) = ((1 : F) * rho 5407)

def relationLc981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), runs := [⟨(1655442936907653452968063737428577663144720764267844763672147302119875484310 : F), 4471, 5, 149⟩, ⟨(1655442936907653452968063737428577663144720764267844763672147302119875484310 : F), 5219, 8, 24⟩, ⟨(6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), 4472, 5, 149⟩, ⟨(6777285895986102678500478629231096855272861399604889250901077778332589078886 : F), 5220, 8, 24⟩], residual := [((7679124835279353567939153841283970111000144261532887851077235306517082115960 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5583 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc981 rho) = ((1 : F) * rho 5409)

def relationRow5584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5410) * ((1 : F) + (-1 : F) * rho 5406) = ((11732916534614292780282572121872012958317171281329813362008375464944675845 : F) * rho 5405 + (1 : F) * rho 5409)

def relationLc982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 24⟩], residual := [((1 : F), 5408), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4390) * (relationLc982 rho) = ((1 : F) * rho 5411)

def relationLc983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 24⟩], residual := [((1 : F), 5410), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4390) * (relationLc983 rho) = ((1 : F) * rho 5412)

def relationLc984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 25⟩, ⟨(1 : F), 5220, 8, 25⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5587 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc984 rho) = ((1 : F) * rho 5413)

def relationLc985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5112084256065563833644576982904061764533374503329625350607465679187417885788 : F), 4471, 5, 149⟩, ⟨(5112084256065563833644576982904061764533374503329625350607465679187417885788 : F), 5219, 8, 25⟩], residual := [((7527861843569188002123817210029680959433138097825591352209755200104846047280 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), runs := [⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 4472, 5, 149⟩, ⟨(6500295608575224403577725407255013509774739731695849381464071273603679024138 : F), 5220, 8, 25⟩], residual := [((1800696480843674362533975346651308872086511601015124632617255324139971244405 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5588 (rho : Nat -> F) : Prop :=
    (relationLc985 rho) * (relationLc986 rho) = ((1 : F) * rho 5414)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
