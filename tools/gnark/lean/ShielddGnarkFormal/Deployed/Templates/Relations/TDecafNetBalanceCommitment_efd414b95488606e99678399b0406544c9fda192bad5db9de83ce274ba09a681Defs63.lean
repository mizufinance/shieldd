import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs62

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5696749081378441678673487169765165875373895044398392558023849940368320961891 : F), 4471, 5, 32⟩], residual := [((8365977717055296012019020164002729121299875480122366489177625225283647354120 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 4472, 5, 32⟩], residual := [((3676967602326024059104950309563659173128084948457071522762327656388302960094 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4802 (rho : Nat -> F) : Prop :=
    (relationLc107 rho) * (relationLc108 rho) = ((1 : F) * rho 4628)

def relationLc109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 4471, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 4472, 5, 32⟩], residual := [((7721673880839919765651067450127088174614629243098878428317946723744098195780 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4629) * ((1 : F) + (1 : F) * rho 4628) = (relationLc109 rho)

def relationLc110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 4472, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 4471, 5, 32⟩], residual := [((8064814161003935457601060357488656896246886392854407536488728629478904615158 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4630) * ((1 : F) + (-1 : F) * rho 4628) = (relationLc110 rho)

def relationLc111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 32⟩], residual := [((1 : F), 4629), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4249) * (relationLc111 rho) = ((1 : F) * rho 4631)

def relationLc112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 32⟩], residual := [((1 : F), 4630), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4249) * (relationLc112 rho) = ((1 : F) * rho 4632)

def relationLc113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7560996790981468804918395352170094555299255498925096103653018348315165366039 : F), 4471, 5, 33⟩], residual := [((8046378523089116857309843008334526117145412174402479488366697077706459332836 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 4472, 5, 33⟩], residual := [((7528285930045693591802066547213342612415944427431185294200752681317640805422 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4807 (rho : Nat -> F) : Prop :=
    (relationLc113 rho) * (relationLc114 rho) = ((1 : F) * rho 4633)

def relationLc115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 4471, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 4472, 5, 33⟩], residual := [((1423319844650824257102836938398597612436071989451302148040501637258775288053 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4634) * ((1 : F) + (1 : F) * rho 4633) = (relationLc115 rho)

def relationLc116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 4472, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 4471, 5, 33⟩], residual := [((4449112694819004586452537747118526661176354755183068383426237526201849477490 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4635) * ((1 : F) + (-1 : F) * rho 4633) = (relationLc116 rho)

def relationLc117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 33⟩], residual := [((1 : F), 4634), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4250) * (relationLc117 rho) = ((1 : F) * rho 4636)

def relationLc118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 33⟩], residual := [((1 : F), 4635), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4250) * (relationLc118 rho) = ((1 : F) * rho 4637)

def relationLc119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6253847450756812552945282776934054358888311281748073539183721235356460452140 : F), 4471, 5, 34⟩], residual := [((3572009771805449118123084261970282454927930356466962379386149911037514883200 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 4472, 5, 34⟩], residual := [((3511373497299515526507532125805982843843578790847072845085611595042362971083 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4812 (rho : Nat -> F) : Prop :=
    (relationLc119 rho) * (relationLc120 rho) = ((1 : F) * rho 4638)

def relationLc121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 4471, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 4472, 5, 34⟩], residual := [((6251904620838611344078525679022760693298497453146791320344107105373411818863 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4639) * ((1 : F) + (1 : F) * rho 4638) = (relationLc121 rho)

def relationLc122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 4472, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 4471, 5, 34⟩], residual := [((5103372395917695594031749430338616733651220144604465912275033633361885722791 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4640) * ((1 : F) + (-1 : F) * rho 4638) = (relationLc122 rho)

def relationLc123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 34⟩], residual := [((1 : F), 4639), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4251) * (relationLc123 rho) = ((1 : F) * rho 4641)

def relationLc124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 34⟩], residual := [((1 : F), 4640), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4251) * (relationLc124 rho) = ((1 : F) * rho 4642)

def relationLc125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1813651800887372888218358633389516585503338776851411898639872893961477726628 : F), 4471, 5, 35⟩], residual := [((4332762156669531321806060827757180658939967006014081096227484419036691077454 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 4472, 5, 35⟩], residual := [((5671572536088846828891526459958780343902232611472008807875123991451218823074 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4817 (rho : Nat -> F) : Prop :=
    (relationLc125 rho) * (relationLc126 rho) = ((1 : F) * rho 4643)

def relationLc127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 4471, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 4472, 5, 35⟩], residual := [((2025200533160229194888576945135158681278396575268751868332173916789457033643 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4644) * ((1 : F) + (1 : F) * rho 4643) = (relationLc127 rho)

def relationLc128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 4472, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 4471, 5, 35⟩], residual := [((8442471382521831375849723291797816047621811132164284989974006577570527177745 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * ((1 : F) + (-1 : F) * rho 4643) = (relationLc128 rho)

def relationLc129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 35⟩], residual := [((1 : F), 4644), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4252) * (relationLc129 rho) = ((1 : F) * rho 4646)

def relationLc130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 35⟩], residual := [((1 : F), 4645), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4252) * (relationLc130 rho) = ((1 : F) * rho 4647)

def relationLc131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2973762887053711588659812065778661673574928332706196579314191743156428716572 : F), 4471, 5, 36⟩], residual := [((6682407300359382609503400332527035533248579499388577723582363208963416928412 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 4472, 5, 36⟩], residual := [((6946009667070038871805755411793140145562511406907617621055044504248216768387 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4822 (rho : Nat -> F) : Prop :=
    (relationLc131 rho) * (relationLc132 rho) = ((1 : F) * rho 4648)

def relationLc133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 4472, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 4471, 5, 36⟩], residual := [((7954513022612764040736268612155233421573293379815545974507631861858025024919 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4649) * ((1 : F) + (1 : F) * rho 4648) = (relationLc133 rho)

def relationLc134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 4471, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 4472, 5, 36⟩], residual := [((1468266587366020547962196980067709992417674251428878356814024974633442009707 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4650) * ((1 : F) + (-1 : F) * rho 4648) = (relationLc134 rho)

def relationLc135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 36⟩], residual := [((1 : F), 4649), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4253) * (relationLc135 rho) = ((1 : F) * rho 4651)

def relationLc136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 36⟩], residual := [((1 : F), 4650), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4253) * (relationLc136 rho) = ((1 : F) * rho 4652)

def relationLc137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6283895545862393095119965201646467110329652983511832728991419956531422149476 : F), 4471, 5, 37⟩], residual := [((3039369665499206513300262959978301119607022780697997916752288188525709772530 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
