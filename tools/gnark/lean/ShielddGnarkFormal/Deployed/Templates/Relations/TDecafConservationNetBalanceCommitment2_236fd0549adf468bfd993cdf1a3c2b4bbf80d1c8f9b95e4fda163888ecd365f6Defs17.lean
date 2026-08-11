import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationRow929 (rho : Nat -> F) : Prop :=
    (relationLc101 rho) * (relationLc102 rho) = ((1 : F) * rho 929)

def relationLc103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 772, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 773, 5, 32⟩], residual := [((7721673880839919765651067450127088174614629243098878428317946723744098195780 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 930) * ((1 : F) + (1 : F) * rho 929) = (relationLc103 rho)

def relationLc104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 773, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 772, 5, 32⟩], residual := [((8064814161003935457601060357488656896246886392854407536488728629478904615158 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 931) * ((1 : F) + (-1 : F) * rho 929) = (relationLc104 rho)

def relationLc105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 32⟩], residual := [((1 : F), 930), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 550) * (relationLc105 rho) = ((1 : F) * rho 932)

def relationLc106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 32⟩], residual := [((1 : F), 931), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 550) * (relationLc106 rho) = ((1 : F) * rho 933)

def relationLc107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7560996790981468804918395352170094555299255498925096103653018348315165366039 : F), 772, 5, 33⟩], residual := [((8046378523089116857309843008334526117145412174402479488366697077706459332836 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 773, 5, 33⟩], residual := [((7528285930045693591802066547213342612415944427431185294200752681317640805422 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow934 (rho : Nat -> F) : Prop :=
    (relationLc107 rho) * (relationLc108 rho) = ((1 : F) * rho 934)

def relationLc109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 772, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 773, 5, 33⟩], residual := [((1423319844650824257102836938398597612436071989451302148040501637258775288053 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 935) * ((1 : F) + (1 : F) * rho 934) = (relationLc109 rho)

def relationLc110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 773, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 772, 5, 33⟩], residual := [((4449112694819004586452537747118526661176354755183068383426237526201849477490 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 936) * ((1 : F) + (-1 : F) * rho 934) = (relationLc110 rho)

def relationLc111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 33⟩], residual := [((1 : F), 935), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 551) * (relationLc111 rho) = ((1 : F) * rho 937)

def relationLc112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 33⟩], residual := [((1 : F), 936), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 551) * (relationLc112 rho) = ((1 : F) * rho 938)

def relationLc113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6253847450756812552945282776934054358888311281748073539183721235356460452140 : F), 772, 5, 34⟩], residual := [((3572009771805449118123084261970282454927930356466962379386149911037514883200 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 773, 5, 34⟩], residual := [((3511373497299515526507532125805982843843578790847072845085611595042362971083 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow939 (rho : Nat -> F) : Prop :=
    (relationLc113 rho) * (relationLc114 rho) = ((1 : F) * rho 939)

def relationLc115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 772, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 773, 5, 34⟩], residual := [((6251904620838611344078525679022760693298497453146791320344107105373411818863 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 940) * ((1 : F) + (1 : F) * rho 939) = (relationLc115 rho)

def relationLc116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 773, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 772, 5, 34⟩], residual := [((5103372395917695594031749430338616733651220144604465912275033633361885722791 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 941) * ((1 : F) + (-1 : F) * rho 939) = (relationLc116 rho)

def relationLc117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 34⟩], residual := [((1 : F), 940), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 552) * (relationLc117 rho) = ((1 : F) * rho 942)

def relationLc118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 34⟩], residual := [((1 : F), 941), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 552) * (relationLc118 rho) = ((1 : F) * rho 943)

def relationLc119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1813651800887372888218358633389516585503338776851411898639872893961477726628 : F), 772, 5, 35⟩], residual := [((4332762156669531321806060827757180658939967006014081096227484419036691077454 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 773, 5, 35⟩], residual := [((5671572536088846828891526459958780343902232611472008807875123991451218823074 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow944 (rho : Nat -> F) : Prop :=
    (relationLc119 rho) * (relationLc120 rho) = ((1 : F) * rho 944)

def relationLc121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 772, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 773, 5, 35⟩], residual := [((2025200533160229194888576945135158681278396575268751868332173916789457033643 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 945) * ((1 : F) + (1 : F) * rho 944) = (relationLc121 rho)

def relationLc122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 773, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 772, 5, 35⟩], residual := [((8442471382521831375849723291797816047621811132164284989974006577570527177745 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 946) * ((1 : F) + (-1 : F) * rho 944) = (relationLc122 rho)

def relationLc123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 35⟩], residual := [((1 : F), 945), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 553) * (relationLc123 rho) = ((1 : F) * rho 947)

def relationLc124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 35⟩], residual := [((1 : F), 946), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 553) * (relationLc124 rho) = ((1 : F) * rho 948)

def relationLc125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2973762887053711588659812065778661673574928332706196579314191743156428716572 : F), 772, 5, 36⟩], residual := [((6682407300359382609503400332527035533248579499388577723582363208963416928412 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 773, 5, 36⟩], residual := [((6946009667070038871805755411793140145562511406907617621055044504248216768387 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow949 (rho : Nat -> F) : Prop :=
    (relationLc125 rho) * (relationLc126 rho) = ((1 : F) * rho 949)

def relationLc127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 773, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 772, 5, 36⟩], residual := [((7954513022612764040736268612155233421573293379815545974507631861858025024919 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 950) * ((1 : F) + (1 : F) * rho 949) = (relationLc127 rho)

def relationLc128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 772, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 773, 5, 36⟩], residual := [((1468266587366020547962196980067709992417674251428878356814024974633442009707 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 951) * ((1 : F) + (-1 : F) * rho 949) = (relationLc128 rho)

def relationLc129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 36⟩], residual := [((1 : F), 950), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 554) * (relationLc129 rho) = ((1 : F) * rho 952)

def relationLc130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 36⟩], residual := [((1 : F), 951), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 554) * (relationLc130 rho) = ((1 : F) * rho 953)

def relationLc131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6283895545862393095119965201646467110329652983511832728991419956531422149476 : F), 772, 5, 37⟩], residual := [((3039369665499206513300262959978301119607022780697997916752288188525709772530 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 773, 5, 37⟩], residual := [((2969546671238196845433085713839439493723105804139421825031325348217664786501 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow954 (rho : Nat -> F) : Prop :=
    (relationLc131 rho) * (relationLc132 rho) = ((1 : F) * rho 954)

def relationLc133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 772, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 773, 5, 37⟩], residual := [((664468361535149379861427219455196664439587125317374602214438452175514203106 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 955) * ((1 : F) + (1 : F) * rho 954) = (relationLc133 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
