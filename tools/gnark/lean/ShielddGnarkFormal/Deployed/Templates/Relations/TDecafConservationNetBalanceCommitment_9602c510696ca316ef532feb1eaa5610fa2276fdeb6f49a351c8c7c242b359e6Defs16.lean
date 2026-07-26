import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs15

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 644, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 643, 5, 33⟩], residual := [((4449112694819004586452537747118526661176354755183068383426237526201849477490 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 807) * ((1 : F) + (-1 : F) * rho 805) = (relationLc109 rho)

def relationLc110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 33⟩], residual := [((1 : F), 806), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 422) * (relationLc110 rho) = ((1 : F) * rho 808)

def relationLc111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 33⟩], residual := [((1 : F), 807), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 422) * (relationLc111 rho) = ((1 : F) * rho 809)

def relationLc112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6253847450756812552945282776934054358888311281748073539183721235356460452140 : F), 643, 5, 34⟩], residual := [((3572009771805449118123084261970282454927930356466962379386149911037514883200 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 644, 5, 34⟩], residual := [((3511373497299515526507532125805982843843578790847072845085611595042362971083 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow810 (rho : Nat -> F) : Prop :=
    (relationLc112 rho) * (relationLc113 rho) = ((1 : F) * rho 810)

def relationLc114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 643, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 644, 5, 34⟩], residual := [((6251904620838611344078525679022760693298497453146791320344107105373411818863 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 811) * ((1 : F) + (1 : F) * rho 810) = (relationLc114 rho)

def relationLc115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 644, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 643, 5, 34⟩], residual := [((5103372395917695594031749430338616733651220144604465912275033633361885722791 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 812) * ((1 : F) + (-1 : F) * rho 810) = (relationLc115 rho)

def relationLc116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 34⟩], residual := [((1 : F), 811), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 423) * (relationLc116 rho) = ((1 : F) * rho 813)

def relationLc117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 34⟩], residual := [((1 : F), 812), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 423) * (relationLc117 rho) = ((1 : F) * rho 814)

def relationLc118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1813651800887372888218358633389516585503338776851411898639872893961477726628 : F), 643, 5, 35⟩], residual := [((4332762156669531321806060827757180658939967006014081096227484419036691077454 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 644, 5, 35⟩], residual := [((5671572536088846828891526459958780343902232611472008807875123991451218823074 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow815 (rho : Nat -> F) : Prop :=
    (relationLc118 rho) * (relationLc119 rho) = ((1 : F) * rho 815)

def relationLc120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 643, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 644, 5, 35⟩], residual := [((2025200533160229194888576945135158681278396575268751868332173916789457033643 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 816) * ((1 : F) + (1 : F) * rho 815) = (relationLc120 rho)

def relationLc121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 644, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 643, 5, 35⟩], residual := [((8442471382521831375849723291797816047621811132164284989974006577570527177745 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 817) * ((1 : F) + (-1 : F) * rho 815) = (relationLc121 rho)

def relationLc122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 35⟩], residual := [((1 : F), 816), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 424) * (relationLc122 rho) = ((1 : F) * rho 818)

def relationLc123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 35⟩], residual := [((1 : F), 817), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 424) * (relationLc123 rho) = ((1 : F) * rho 819)

def relationLc124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2973762887053711588659812065778661673574928332706196579314191743156428716572 : F), 643, 5, 36⟩], residual := [((6682407300359382609503400332527035533248579499388577723582363208963416928412 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 644, 5, 36⟩], residual := [((6946009667070038871805755411793140145562511406907617621055044504248216768387 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow820 (rho : Nat -> F) : Prop :=
    (relationLc124 rho) * (relationLc125 rho) = ((1 : F) * rho 820)

def relationLc126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 644, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 643, 5, 36⟩], residual := [((7954513022612764040736268612155233421573293379815545974507631861858025024919 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 821) * ((1 : F) + (1 : F) * rho 820) = (relationLc126 rho)

def relationLc127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 643, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 644, 5, 36⟩], residual := [((1468266587366020547962196980067709992417674251428878356814024974633442009707 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 822) * ((1 : F) + (-1 : F) * rho 820) = (relationLc127 rho)

def relationLc128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 36⟩], residual := [((1 : F), 821), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 425) * (relationLc128 rho) = ((1 : F) * rho 823)

def relationLc129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 36⟩], residual := [((1 : F), 822), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 425) * (relationLc129 rho) = ((1 : F) * rho 824)

def relationLc130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6283895545862393095119965201646467110329652983511832728991419956531422149476 : F), 643, 5, 37⟩], residual := [((3039369665499206513300262959978301119607022780697997916752288188525709772530 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 644, 5, 37⟩], residual := [((2969546671238196845433085713839439493723105804139421825031325348217664786501 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow825 (rho : Nat -> F) : Prop :=
    (relationLc130 rho) * (relationLc131 rho) = ((1 : F) * rho 825)

def relationLc132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 643, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 644, 5, 37⟩], residual := [((664468361535149379861427219455196664439587125317374602214438452175514203106 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 826) * ((1 : F) + (1 : F) * rho 825) = (relationLc132 rho)

def relationLc133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 644, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 643, 5, 37⟩], residual := [((2774290533394242825295743553548727573359930681222589540563055996855396108663 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 827) * ((1 : F) + (-1 : F) * rho 825) = (relationLc133 rho)

def relationLc134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 37⟩], residual := [((1 : F), 826), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 426) * (relationLc134 rho) = ((1 : F) * rho 828)

def relationLc135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 37⟩], residual := [((1 : F), 827), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 426) * (relationLc135 rho) = ((1 : F) * rho 829)

def relationLc136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2737678186161388677269696828163781497179972610597210243682127578480079744698 : F), 643, 5, 38⟩], residual := [((4132867600766331403468103911488601771844507652049295357377441988694180895684 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 644, 5, 38⟩], residual := [((7498517742460767153649827542380903921917650101548680978290247340174508338531 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow830 (rho : Nat -> F) : Prop :=
    (relationLc136 rho) * (relationLc137 rho) = ((1 : F) * rho 830)

def relationLc138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 643, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 644, 5, 38⟩], residual := [((7279060737957597695817259165600945770905782660361947530077898448738301404076 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 831) * ((1 : F) + (1 : F) * rho 830) = (relationLc138 rho)

def relationLc139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 644, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 643, 5, 38⟩], residual := [((3082099749828277877997320958604797045431260535131321563258860151504806457122 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 832) * ((1 : F) + (-1 : F) * rho 830) = (relationLc139 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
