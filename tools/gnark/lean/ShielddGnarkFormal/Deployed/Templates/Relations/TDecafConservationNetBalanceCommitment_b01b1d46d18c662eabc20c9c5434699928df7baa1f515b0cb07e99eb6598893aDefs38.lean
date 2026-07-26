import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs37

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 1417, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 1418, 5, 106⟩], residual := [((7393395407854023411091582679568674789999292340810752758585856224541780859240 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * ((1 : F) + (1 : F) * rho 1944) = (relationLc552 rho)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 1418, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 1417, 5, 106⟩], residual := [((5026433861106741348064021267558229747633023398503418350298356857583390965788 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * ((1 : F) + (-1 : F) * rho 1944) = (relationLc553 rho)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 106⟩], residual := [((1 : F), 1945), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1269) * (relationLc554 rho) = ((1 : F) * rho 1947)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 106⟩], residual := [((1 : F), 1946), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1269) * (relationLc555 rho) = ((1 : F) * rho 1948)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(802582390533381949833150380230236228225956897101666263149282361578301616566 : F), 1417, 5, 107⟩], residual := [((301177235079165349316100773274654351297626884263148844712974855155222594888 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 1418, 5, 107⟩], residual := [((7231027462758172055494906444410861491254239427148220797738845800669850299482 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1949 (rho : Nat -> F) : Prop :=
    (relationLc556 rho) * (relationLc557 rho) = ((1 : F) * rho 1949)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 1417, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 1418, 5, 107⟩], residual := [((4855161421785303569807324485724651660960225257006979121174716220175099345960 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * ((1 : F) + (1 : F) * rho 1949) = (relationLc558 rho)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 1418, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 1417, 5, 107⟩], residual := [((1979505228092697509473422246330153137094423318560622343963421556056542786252 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * ((1 : F) + (-1 : F) * rho 1949) = (relationLc559 rho)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 107⟩], residual := [((1 : F), 1950), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1270) * (relationLc560 rho) = ((1 : F) * rho 1952)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 107⟩], residual := [((1 : F), 1951), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1270) * (relationLc561 rho) = ((1 : F) * rho 1953)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7624065903200243638354300770793445598122083197862726896881685444818578659288 : F), 1417, 5, 108⟩], residual := [((2473281285945615650691691557769240725948841087680849542550863992393045657832 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 1418, 5, 108⟩], residual := [((3879334020592600288572858919104859690562216137460805342262589189264534393246 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1954 (rho : Nat -> F) : Prop :=
    (relationLc562 rho) * (relationLc563 rho) = ((1 : F) * rho 1954)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 1417, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 1418, 5, 108⟩], residual := [((1316904976256330820388323739593138760888018570678747851142411031342034814781 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * ((1 : F) + (1 : F) * rho 1954) = (relationLc564 rho)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 1418, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 1417, 5, 108⟩], residual := [((7317039261451264127133351821947730106715782680475838190118540373161436087981 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * ((1 : F) + (-1 : F) * rho 1954) = (relationLc565 rho)

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 108⟩], residual := [((1 : F), 1955), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1271) * (relationLc566 rho) = ((1 : F) * rho 1957)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 108⟩], residual := [((1 : F), 1956), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1271) * (relationLc567 rho) = ((1 : F) * rho 1958)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5697226797425408696682955818762580396708522097437636922536503052789060670599 : F), 1417, 5, 109⟩], residual := [((2057964420300062478676558685521731441678344679088738649894578146609593047726 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 1418, 5, 109⟩], residual := [((4074135452690516428383827978533676491907187469793374165982961018377576480445 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1959 (rho : Nat -> F) : Prop :=
    (relationLc568 rho) * (relationLc569 rho) = ((1 : F) * rho 1959)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 1418, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 1417, 5, 109⟩], residual := [((2529041317300384425030327934687045078332479099167386559826625525833479255638 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1960) * ((1 : F) + (1 : F) * rho 1959) = (relationLc570 rho)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 1417, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 1418, 5, 109⟩], residual := [((4335383369444680411786970470778343211130396716702192189122563460842784900121 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1961) * ((1 : F) + (-1 : F) * rho 1959) = (relationLc571 rho)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 109⟩], residual := [((1 : F), 1960), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1272) * (relationLc572 rho) = ((1 : F) * rho 1962)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 109⟩], residual := [((1 : F), 1961), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1272) * (relationLc573 rho) = ((1 : F) * rho 1963)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5402322627373244180631129875510279080115884451807288805962250842451085778032 : F), 1417, 5, 110⟩], residual := [((5382338166221662979551210145488477632563286750859103168636009902012140799819 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 1418, 5, 110⟩], residual := [((3998177705207051022712752916424830620235393043808391092204319844709748698871 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1964 (rho : Nat -> F) : Prop :=
    (relationLc574 rho) * (relationLc575 rho) = ((1 : F) * rho 1964)

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 1417, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 1418, 5, 110⟩], residual := [((4332594549413670600159016199397519304401660937762112607825944734202030671809 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1965) * ((1 : F) + (1 : F) * rho 1964) = (relationLc576 rho)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 1418, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 1417, 5, 110⟩], residual := [((7451282694866355354124022492943248855024682548386834887629620181335647140225 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1966) * ((1 : F) + (-1 : F) * rho 1964) = (relationLc577 rho)

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 110⟩], residual := [((1 : F), 1965), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1273) * (relationLc578 rho) = ((1 : F) * rho 1967)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 110⟩], residual := [((1 : F), 1966), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1273) * (relationLc579 rho) = ((1 : F) * rho 1968)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4076796992849454695604223152151807086878870730009422656206504928886351303313 : F), 1417, 5, 111⟩], residual := [((7060019607658056404279381543908401957828167589500287571281604509717256983524 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 1418, 5, 111⟩], residual := [((2899321955750633510701645526217427031615014654410571442905455528023539407590 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1969 (rho : Nat -> F) : Prop :=
    (relationLc580 rho) * (relationLc581 rho) = ((1 : F) * rho 1969)

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 1418, 5, 111⟩, ⟨(3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), 1417, 5, 111⟩], residual := [((6406907210100462894485924193802984049921272825172801276669793283147719626968 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
