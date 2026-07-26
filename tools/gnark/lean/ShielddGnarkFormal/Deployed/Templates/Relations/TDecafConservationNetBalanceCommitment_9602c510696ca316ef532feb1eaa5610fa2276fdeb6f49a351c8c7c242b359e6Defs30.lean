import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs29

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 644, 5, 106⟩], residual := [((391322330339802460333800737188691082541887248304729356954627494111230659300 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1170 (rho : Nat -> F) : Prop :=
    (relationLc544 rho) * (relationLc545 rho) = ((1 : F) * rho 1170)

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 643, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 644, 5, 106⟩], residual := [((7393395407854023411091582679568674789999292340810752758585856224541780859240 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1171) * ((1 : F) + (1 : F) * rho 1170) = (relationLc546 rho)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 644, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 643, 5, 106⟩], residual := [((5026433861106741348064021267558229747633023398503418350298356857583390965788 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1172) * ((1 : F) + (-1 : F) * rho 1170) = (relationLc547 rho)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 106⟩], residual := [((1 : F), 1171), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 495) * (relationLc548 rho) = ((1 : F) * rho 1173)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 106⟩], residual := [((1 : F), 1172), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 495) * (relationLc549 rho) = ((1 : F) * rho 1174)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(802582390533381949833150380230236228225956897101666263149282361578301616566 : F), 643, 5, 107⟩], residual := [((301177235079165349316100773274654351297626884263148844712974855155222594888 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 644, 5, 107⟩], residual := [((7231027462758172055494906444410861491254239427148220797738845800669850299482 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1175 (rho : Nat -> F) : Prop :=
    (relationLc550 rho) * (relationLc551 rho) = ((1 : F) * rho 1175)

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 643, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 644, 5, 107⟩], residual := [((4855161421785303569807324485724651660960225257006979121174716220175099345960 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1176) * ((1 : F) + (1 : F) * rho 1175) = (relationLc552 rho)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 644, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 643, 5, 107⟩], residual := [((1979505228092697509473422246330153137094423318560622343963421556056542786252 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1177) * ((1 : F) + (-1 : F) * rho 1175) = (relationLc553 rho)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 107⟩], residual := [((1 : F), 1176), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 496) * (relationLc554 rho) = ((1 : F) * rho 1178)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 107⟩], residual := [((1 : F), 1177), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 496) * (relationLc555 rho) = ((1 : F) * rho 1179)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7624065903200243638354300770793445598122083197862726896881685444818578659288 : F), 643, 5, 108⟩], residual := [((2473281285945615650691691557769240725948841087680849542550863992393045657832 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 644, 5, 108⟩], residual := [((3879334020592600288572858919104859690562216137460805342262589189264534393246 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1180 (rho : Nat -> F) : Prop :=
    (relationLc556 rho) * (relationLc557 rho) = ((1 : F) * rho 1180)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 643, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 644, 5, 108⟩], residual := [((1316904976256330820388323739593138760888018570678747851142411031342034814781 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1181) * ((1 : F) + (1 : F) * rho 1180) = (relationLc558 rho)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 644, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 643, 5, 108⟩], residual := [((7317039261451264127133351821947730106715782680475838190118540373161436087981 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1182) * ((1 : F) + (-1 : F) * rho 1180) = (relationLc559 rho)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 108⟩], residual := [((1 : F), 1181), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 497) * (relationLc560 rho) = ((1 : F) * rho 1183)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 108⟩], residual := [((1 : F), 1182), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 497) * (relationLc561 rho) = ((1 : F) * rho 1184)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5697226797425408696682955818762580396708522097437636922536503052789060670599 : F), 643, 5, 109⟩], residual := [((2057964420300062478676558685521731441678344679088738649894578146609593047726 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 644, 5, 109⟩], residual := [((4074135452690516428383827978533676491907187469793374165982961018377576480445 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1185 (rho : Nat -> F) : Prop :=
    (relationLc562 rho) * (relationLc563 rho) = ((1 : F) * rho 1185)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 644, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 643, 5, 109⟩], residual := [((2529041317300384425030327934687045078332479099167386559826625525833479255638 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1186) * ((1 : F) + (1 : F) * rho 1185) = (relationLc564 rho)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 643, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 644, 5, 109⟩], residual := [((4335383369444680411786970470778343211130396716702192189122563460842784900121 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * ((1 : F) + (-1 : F) * rho 1185) = (relationLc565 rho)

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 109⟩], residual := [((1 : F), 1186), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 498) * (relationLc566 rho) = ((1 : F) * rho 1188)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 109⟩], residual := [((1 : F), 1187), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 498) * (relationLc567 rho) = ((1 : F) * rho 1189)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5402322627373244180631129875510279080115884451807288805962250842451085778032 : F), 643, 5, 110⟩], residual := [((5382338166221662979551210145488477632563286750859103168636009902012140799819 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 644, 5, 110⟩], residual := [((3998177705207051022712752916424830620235393043808391092204319844709748698871 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1190 (rho : Nat -> F) : Prop :=
    (relationLc568 rho) * (relationLc569 rho) = ((1 : F) * rho 1190)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 643, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 644, 5, 110⟩], residual := [((4332594549413670600159016199397519304401660937762112607825944734202030671809 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * ((1 : F) + (1 : F) * rho 1190) = (relationLc570 rho)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 644, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 643, 5, 110⟩], residual := [((7451282694866355354124022492943248855024682548386834887629620181335647140225 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * ((1 : F) + (-1 : F) * rho 1190) = (relationLc571 rho)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 110⟩], residual := [((1 : F), 1191), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 499) * (relationLc572 rho) = ((1 : F) * rho 1193)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 110⟩], residual := [((1 : F), 1192), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 499) * (relationLc573 rho) = ((1 : F) * rho 1194)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4076796992849454695604223152151807086878870730009422656206504928886351303313 : F), 643, 5, 111⟩], residual := [((7060019607658056404279381543908401957828167589500287571281604509717256983524 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 644, 5, 111⟩], residual := [((2899321955750633510701645526217427031615014654410571442905455528023539407590 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1195 (rho : Nat -> F) : Prop :=
    (relationLc574 rho) * (relationLc575 rho) = ((1 : F) * rho 1195)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
