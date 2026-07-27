import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs17

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc98 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 902, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 901, 5, 31⟩], residual := [((2805889482383500289243038116479809314469355542086981977098039152883659526032 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1054) * ((1 : F) + (1 : F) * rho 1053) = (relationLc98 rho)

def relationLc99 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 901, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 902, 5, 31⟩], residual := [((2760425594778897678859094773586954370934517891587313686654579500820404314442 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1055) * ((1 : F) + (-1 : F) * rho 1053) = (relationLc99 rho)

def relationLc100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 31⟩], residual := [((1 : F), 1054), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 678) * (relationLc100 rho) = ((1 : F) * rho 1056)

def relationLc101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 31⟩], residual := [((1 : F), 1055), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 678) * (relationLc101 rho) = ((1 : F) * rho 1057)

def relationLc102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5696749081378441678673487169765165875373895044398392558023849940368320961891 : F), 901, 5, 32⟩], residual := [((8365977717055296012019020164002729121299875480122366489177625225283647354120 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 902, 5, 32⟩], residual := [((3676967602326024059104950309563659173128084948457071522762327656388302960094 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1058 (rho : Nat -> F) : Prop :=
    (relationLc102 rho) * (relationLc103 rho) = ((1 : F) * rho 1058)

def relationLc104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 901, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 902, 5, 32⟩], residual := [((7721673880839919765651067450127088174614629243098878428317946723744098195780 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1059) * ((1 : F) + (1 : F) * rho 1058) = (relationLc104 rho)

def relationLc105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 902, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 901, 5, 32⟩], residual := [((8064814161003935457601060357488656896246886392854407536488728629478904615158 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1060) * ((1 : F) + (-1 : F) * rho 1058) = (relationLc105 rho)

def relationLc106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 32⟩], residual := [((1 : F), 1059), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 679) * (relationLc106 rho) = ((1 : F) * rho 1061)

def relationLc107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 32⟩], residual := [((1 : F), 1060), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 679) * (relationLc107 rho) = ((1 : F) * rho 1062)

def relationLc108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7560996790981468804918395352170094555299255498925096103653018348315165366039 : F), 901, 5, 33⟩], residual := [((8046378523089116857309843008334526117145412174402479488366697077706459332836 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 902, 5, 33⟩], residual := [((7528285930045693591802066547213342612415944427431185294200752681317640805422 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1063 (rho : Nat -> F) : Prop :=
    (relationLc108 rho) * (relationLc109 rho) = ((1 : F) * rho 1063)

def relationLc110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 901, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 902, 5, 33⟩], residual := [((1423319844650824257102836938398597612436071989451302148040501637258775288053 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1064) * ((1 : F) + (1 : F) * rho 1063) = (relationLc110 rho)

def relationLc111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 902, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 901, 5, 33⟩], residual := [((4449112694819004586452537747118526661176354755183068383426237526201849477490 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1065) * ((1 : F) + (-1 : F) * rho 1063) = (relationLc111 rho)

def relationLc112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 33⟩], residual := [((1 : F), 1064), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 680) * (relationLc112 rho) = ((1 : F) * rho 1066)

def relationLc113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 33⟩], residual := [((1 : F), 1065), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 680) * (relationLc113 rho) = ((1 : F) * rho 1067)

def relationLc114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6253847450756812552945282776934054358888311281748073539183721235356460452140 : F), 901, 5, 34⟩], residual := [((3572009771805449118123084261970282454927930356466962379386149911037514883200 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 902, 5, 34⟩], residual := [((3511373497299515526507532125805982843843578790847072845085611595042362971083 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1068 (rho : Nat -> F) : Prop :=
    (relationLc114 rho) * (relationLc115 rho) = ((1 : F) * rho 1068)

def relationLc116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 901, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 902, 5, 34⟩], residual := [((6251904620838611344078525679022760693298497453146791320344107105373411818863 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1069) * ((1 : F) + (1 : F) * rho 1068) = (relationLc116 rho)

def relationLc117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 902, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 901, 5, 34⟩], residual := [((5103372395917695594031749430338616733651220144604465912275033633361885722791 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1070) * ((1 : F) + (-1 : F) * rho 1068) = (relationLc117 rho)

def relationLc118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 34⟩], residual := [((1 : F), 1069), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 681) * (relationLc118 rho) = ((1 : F) * rho 1071)

def relationLc119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 34⟩], residual := [((1 : F), 1070), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 681) * (relationLc119 rho) = ((1 : F) * rho 1072)

def relationLc120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1813651800887372888218358633389516585503338776851411898639872893961477726628 : F), 901, 5, 35⟩], residual := [((4332762156669531321806060827757180658939967006014081096227484419036691077454 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 902, 5, 35⟩], residual := [((5671572536088846828891526459958780343902232611472008807875123991451218823074 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1073 (rho : Nat -> F) : Prop :=
    (relationLc120 rho) * (relationLc121 rho) = ((1 : F) * rho 1073)

def relationLc122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 901, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 902, 5, 35⟩], residual := [((2025200533160229194888576945135158681278396575268751868332173916789457033643 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1074) * ((1 : F) + (1 : F) * rho 1073) = (relationLc122 rho)

def relationLc123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 902, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 901, 5, 35⟩], residual := [((8442471382521831375849723291797816047621811132164284989974006577570527177745 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1075) * ((1 : F) + (-1 : F) * rho 1073) = (relationLc123 rho)

def relationLc124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 35⟩], residual := [((1 : F), 1074), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 682) * (relationLc124 rho) = ((1 : F) * rho 1076)

def relationLc125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 35⟩], residual := [((1 : F), 1075), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 682) * (relationLc125 rho) = ((1 : F) * rho 1077)

def relationLc126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2973762887053711588659812065778661673574928332706196579314191743156428716572 : F), 901, 5, 36⟩], residual := [((6682407300359382609503400332527035533248579499388577723582363208963416928412 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 902, 5, 36⟩], residual := [((6946009667070038871805755411793140145562511406907617621055044504248216768387 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1078 (rho : Nat -> F) : Prop :=
    (relationLc126 rho) * (relationLc127 rho) = ((1 : F) * rho 1078)

def relationLc128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 902, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 901, 5, 36⟩], residual := [((7954513022612764040736268612155233421573293379815545974507631861858025024919 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1079) * ((1 : F) + (1 : F) * rho 1078) = (relationLc128 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
