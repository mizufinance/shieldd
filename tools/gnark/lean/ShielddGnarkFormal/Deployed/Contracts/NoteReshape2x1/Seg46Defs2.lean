import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg46Defs1

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg46

def relationRow807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32079) * ((1 : F) + (-1 : F) * rho 32077) = (relationLc109 rho)

def relationLc110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 33⟩], residual := [((1 : F), 32078), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31695) * (relationLc110 rho) = ((1 : F) * rho 32080)

def relationLc111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 33⟩], residual := [((1 : F), 32079), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31695) * (relationLc111 rho) = ((1 : F) * rho 32081)

def relationLc112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6253847450756812552945282776934054358888311281748073539183721235356460452140 : F), 31915, 5, 34⟩], residual := [((3572009771805449118123084261970282454927930356466962379386149911037514883200 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 31916, 5, 34⟩], residual := [((3511373497299515526507532125805982843843578790847072845085611595042362971083 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow810 (rho : Nat -> F) : Prop :=
    (relationLc112 rho) * (relationLc113 rho) = ((1 : F) * rho 32082)

def relationLc114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 31915, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 31916, 5, 34⟩], residual := [((6251904620838611344078525679022760693298497453146791320344107105373411818863 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32083) * ((1 : F) + (1 : F) * rho 32082) = (relationLc114 rho)

def relationLc115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 31916, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 31915, 5, 34⟩], residual := [((5103372395917695594031749430338616733651220144604465912275033633361885722791 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32084) * ((1 : F) + (-1 : F) * rho 32082) = (relationLc115 rho)

def relationLc116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 34⟩], residual := [((1 : F), 32083), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31696) * (relationLc116 rho) = ((1 : F) * rho 32085)

def relationLc117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 34⟩], residual := [((1 : F), 32084), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31696) * (relationLc117 rho) = ((1 : F) * rho 32086)

def relationLc118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1813651800887372888218358633389516585503338776851411898639872893961477726628 : F), 31915, 5, 35⟩], residual := [((4332762156669531321806060827757180658939967006014081096227484419036691077454 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 31916, 5, 35⟩], residual := [((5671572536088846828891526459958780343902232611472008807875123991451218823074 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow815 (rho : Nat -> F) : Prop :=
    (relationLc118 rho) * (relationLc119 rho) = ((1 : F) * rho 32087)

def relationLc120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 31915, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 31916, 5, 35⟩], residual := [((2025200533160229194888576945135158681278396575268751868332173916789457033643 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32088) * ((1 : F) + (1 : F) * rho 32087) = (relationLc120 rho)

def relationLc121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 31916, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 31915, 5, 35⟩], residual := [((8442471382521831375849723291797816047621811132164284989974006577570527177745 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32089) * ((1 : F) + (-1 : F) * rho 32087) = (relationLc121 rho)

def relationLc122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 35⟩], residual := [((1 : F), 32088), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31697) * (relationLc122 rho) = ((1 : F) * rho 32090)

def relationLc123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 35⟩], residual := [((1 : F), 32089), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31697) * (relationLc123 rho) = ((1 : F) * rho 32091)

def relationLc124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2973762887053711588659812065778661673574928332706196579314191743156428716572 : F), 31915, 5, 36⟩], residual := [((6682407300359382609503400332527035533248579499388577723582363208963416928412 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 31916, 5, 36⟩], residual := [((6946009667070038871805755411793140145562511406907617621055044504248216768387 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow820 (rho : Nat -> F) : Prop :=
    (relationLc124 rho) * (relationLc125 rho) = ((1 : F) * rho 32092)

def relationLc126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 31916, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 31915, 5, 36⟩], residual := [((7954513022612764040736268612155233421573293379815545974507631861858025024919 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32093) * ((1 : F) + (1 : F) * rho 32092) = (relationLc126 rho)

def relationLc127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 31915, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 31916, 5, 36⟩], residual := [((1468266587366020547962196980067709992417674251428878356814024974633442009707 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32094) * ((1 : F) + (-1 : F) * rho 32092) = (relationLc127 rho)

def relationLc128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 36⟩], residual := [((1 : F), 32093), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31698) * (relationLc128 rho) = ((1 : F) * rho 32095)

def relationLc129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 36⟩], residual := [((1 : F), 32094), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31698) * (relationLc129 rho) = ((1 : F) * rho 32096)

def relationLc130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6283895545862393095119965201646467110329652983511832728991419956531422149476 : F), 31915, 5, 37⟩], residual := [((3039369665499206513300262959978301119607022780697997916752288188525709772530 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 31916, 5, 37⟩], residual := [((2969546671238196845433085713839439493723105804139421825031325348217664786501 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow825 (rho : Nat -> F) : Prop :=
    (relationLc130 rho) * (relationLc131 rho) = ((1 : F) * rho 32097)

def relationLc132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 31915, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 31916, 5, 37⟩], residual := [((664468361535149379861427219455196664439587125317374602214438452175514203106 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32098) * ((1 : F) + (1 : F) * rho 32097) = (relationLc132 rho)

def relationLc133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 31916, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 31915, 5, 37⟩], residual := [((2774290533394242825295743553548727573359930681222589540563055996855396108663 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32099) * ((1 : F) + (-1 : F) * rho 32097) = (relationLc133 rho)

def relationLc134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 37⟩], residual := [((1 : F), 32098), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31699) * (relationLc134 rho) = ((1 : F) * rho 32100)

def relationLc135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 37⟩], residual := [((1 : F), 32099), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31699) * (relationLc135 rho) = ((1 : F) * rho 32101)

def relationLc136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2737678186161388677269696828163781497179972610597210243682127578480079744698 : F), 31915, 5, 38⟩], residual := [((4132867600766331403468103911488601771844507652049295357377441988694180895684 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 31916, 5, 38⟩], residual := [((7498517742460767153649827542380903921917650101548680978290247340174508338531 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow830 (rho : Nat -> F) : Prop :=
    (relationLc136 rho) * (relationLc137 rho) = ((1 : F) * rho 32102)

def relationLc138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 31915, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 31916, 5, 38⟩], residual := [((7279060737957597695817259165600945770905782660361947530077898448738301404076 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32103) * ((1 : F) + (1 : F) * rho 32102) = (relationLc138 rho)

def relationLc139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 31916, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 31915, 5, 38⟩], residual := [((3082099749828277877997320958604797045431260535131321563258860151504806457122 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32104) * ((1 : F) + (-1 : F) * rho 32102) = (relationLc139 rho)

def relationLc140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 38⟩], residual := [((1 : F), 32103), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31700) * (relationLc140 rho) = ((1 : F) * rho 32105)

def relationLc141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 38⟩], residual := [((1 : F), 32104), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31700) * (relationLc141 rho) = ((1 : F) * rho 32106)

def relationLc142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6851041951327243387512226029580676563206460261303054980106520016312838818068 : F), 31915, 5, 39⟩], residual := [((5625948356277050937605767324990821790138621231524871348249025852390193352441 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 31916, 5, 39⟩], residual := [((5506536983148588278035547452639438713624475135322671880361231065871551612347 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow835 (rho : Nat -> F) : Prop :=
    (relationLc142 rho) * (relationLc143 rho) = ((1 : F) * rho 32107)

def relationLc144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 31916, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 31915, 5, 39⟩], residual := [((4524469923419190946556573400628146572858444700121511471197062528754524846776 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32108) * ((1 : F) + (1 : F) * rho 32107) = (relationLc144 rho)

def relationLc145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 31915, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 31916, 5, 39⟩], residual := [((1217206436292017981022552716809883346826035226885696400175337118509822877645 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32109) * ((1 : F) + (-1 : F) * rho 32107) = (relationLc145 rho)

def relationLc146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 39⟩], residual := [((1 : F), 32108), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31701) * (relationLc146 rho) = ((1 : F) * rho 32110)

def relationLc147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 39⟩], residual := [((1 : F), 32109), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31701) * (relationLc147 rho) = ((1 : F) * rho 32111)

def relationLc148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7098743746914528074372261743870963273231762366595081045297142840325502699424 : F), 31915, 5, 40⟩], residual := [((4285892835685150526560730799514924118621251315106145650608058537384751369697 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 31916, 5, 40⟩], residual := [((3653590084692112383855665984351148017836001900964783012750892421676001135841 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow840 (rho : Nat -> F) : Prop :=
    (relationLc148 rho) * (relationLc149 rho) = ((1 : F) * rho 32112)

def relationLc150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 31916, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 31915, 5, 40⟩], residual := [((1765417211544845499954426352501823115124486939280227897877138777961077635602 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32113) * ((1 : F) + (1 : F) * rho 32112) = (relationLc150 rho)

def relationLc151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 31915, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 31916, 5, 40⟩], residual := [((1976268427830012793256453488918289467450833971776894407169893678514394063294 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32114) * ((1 : F) + (-1 : F) * rho 32112) = (relationLc151 rho)

def relationLc152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 40⟩], residual := [((1 : F), 32113), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31702) * (relationLc152 rho) = ((1 : F) * rho 32115)

def relationLc153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 40⟩], residual := [((1 : F), 32114), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31702) * (relationLc153 rho) = ((1 : F) * rho 32116)

def relationLc154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6294769094120738928003751614839576318705476028069096523080255637125544872849 : F), 31915, 5, 41⟩], residual := [((8140898060858675308002895340480692227414214491757160020149746006694194474231 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 31916, 5, 41⟩], residual := [((5580396712216061392885586432199552188834379574657718001005757087374630662271 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow845 (rho : Nat -> F) : Prop :=
    (relationLc154 rho) * (relationLc155 rho) = ((1 : F) * rho 32117)

def relationLc156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 31915, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 31916, 5, 41⟩], residual := [((1678121913841160761515971885977327822033744964688015913086071092038673524745 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32118) * ((1 : F) + (1 : F) * rho 32117) = (relationLc156 rho)

def relationLc157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 31916, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 31915, 5, 41⟩], residual := [((3855292725907336398959314862944560581261754556515518386048510705009842166777 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32119) * ((1 : F) + (-1 : F) * rho 32117) = (relationLc157 rho)

def relationLc158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 41⟩], residual := [((1 : F), 32118), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31703) * (relationLc158 rho) = ((1 : F) * rho 32120)

def relationLc159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 41⟩], residual := [((1 : F), 32119), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31703) * (relationLc159 rho) = ((1 : F) * rho 32121)

def relationLc160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6620513463604564345073214666075664367426910284512917265234041975043402793122 : F), 31915, 5, 42⟩], residual := [((7436751760925585561427031009792801331603819545045592089676057923928892304817 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 31916, 5, 42⟩], residual := [((2939932435192350759588327226030855504706999133093673382039325191886460435704 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow850 (rho : Nat -> F) : Prop :=
    (relationLc160 rho) * (relationLc161 rho) = ((1 : F) * rho 32122)

def relationLc162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 31916, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 31915, 5, 42⟩], residual := [((1561538740238133810228018557130394999851623280057903127517534636011163755207 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32123) * ((1 : F) + (1 : F) * rho 32122) = (relationLc162 rho)

def relationLc163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 31915, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 31916, 5, 42⟩], residual := [((4318398590547212567492043087642932115135287577929445735669465112623843421085 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32124) * ((1 : F) + (-1 : F) * rho 32122) = (relationLc163 rho)

def relationLc164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 42⟩], residual := [((1 : F), 32123), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31704) * (relationLc164 rho) = ((1 : F) * rho 32125)

def relationLc165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 42⟩], residual := [((1 : F), 32124), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31704) * (relationLc165 rho) = ((1 : F) * rho 32126)

def relationLc166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3310904423929894049077323221082868180583670879235524239193955991098358373090 : F), 31915, 5, 43⟩], residual := [((3232926487688007175090435311618900017574627868136506147532084414887399693165 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 31916, 5, 43⟩], residual := [((115865106503725756394155385793040437931618580738367618357081553739839235807 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow855 (rho : Nat -> F) : Prop :=
    (relationLc166 rho) * (relationLc167 rho) = ((1 : F) * rho 32127)

def relationLc168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 31915, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 31916, 5, 43⟩], residual := [((4927567058590423375496213695940230269283984480661664657093946453458061248413 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32128) * ((1 : F) + (1 : F) * rho 32127) = (relationLc168 rho)

def relationLc169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (780971775079260258991889930864327822057086920022250689252937467789492067549 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 31916, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 31915, 5, 43⟩], residual := [((7088496348690373749644021251488578224873131914528074940621077929673412345621 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32129) * ((1 : F) + (-1 : F) * rho 32127) = (relationLc169 rho)

def relationLc170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 43⟩], residual := [((1 : F), 32128), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31705) * (relationLc170 rho) = ((1 : F) * rho 32130)

def relationLc171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 43⟩], residual := [((1 : F), 32129), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31705) * (relationLc171 rho) = ((1 : F) * rho 32131)

def relationLc172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(650753434257975203573851883248475753622073845092733683578003776733255293675 : F), 31915, 5, 44⟩], residual := [((5458092192354468882986918341267721405332821468551780284642132588836982445492 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 31916, 5, 44⟩], residual := [((5657095955849052796901570215817145103839611337387645134473223189811350446069 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow860 (rho : Nat -> F) : Prop :=
    (relationLc172 rho) * (relationLc173 rho) = ((1 : F) * rho 32132)

def relationLc174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 31916, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 31915, 5, 44⟩], residual := [((8319984296679295469118673247946009724586115471295364612950212392930254973713 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32133) * ((1 : F) + (1 : F) * rho 32132) = (relationLc174 rho)

def relationLc175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (947806450344414283026787655124194885763009582410566160659921266247181392694 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 31915, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 31916, 5, 44⟩], residual := [((6186649214413368721256092011966490478850666957118308608502157493701336786112 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32134) * ((1 : F) + (-1 : F) * rho 32132) = (relationLc175 rho)

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 44⟩], residual := [((1 : F), 32133), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31706) * (relationLc176 rho) = ((1 : F) * rho 32135)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 44⟩], residual := [((1 : F), 32134), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31706) * (relationLc177 rho) = ((1 : F) * rho 32136)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2057635338970283122697898952596552282311371524562689697330610978402084947093 : F), 31915, 5, 45⟩], residual := [((5811604622770988646009091154975302759524564188199289169616851017352166570032 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 31916, 5, 45⟩], residual := [((936907189017551919103499582257824092225456461839283512242233913549161766276 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow865 (rho : Nat -> F) : Prop :=
    (relationLc178 rho) * (relationLc179 rho) = ((1 : F) * rho 32137)

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 31916, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 31915, 5, 45⟩], residual := [((6451071430823416687479763028279732421465045357275236229176327665977656697080 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32138) * ((1 : F) + (1 : F) * rho 32137) = (relationLc180 rho)

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 31915, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 31916, 5, 45⟩], residual := [((2267584900114084988385442070637320926901141013709329276205797153967793145035 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32139) * ((1 : F) + (-1 : F) * rho 32137) = (relationLc181 rho)

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 45⟩], residual := [((1 : F), 32138), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31707) * (relationLc182 rho) = ((1 : F) * rho 32140)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 45⟩], residual := [((1 : F), 32139), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31707) * (relationLc183 rho) = ((1 : F) * rho 32141)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2225799389081791229203403109952070040943025291505858518612223595038924057522 : F), 31915, 5, 46⟩], residual := [((1386971928224597730182866825030604307560335084271762632057626946098192879595 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 31916, 5, 46⟩], residual := [((277375323725687460796625669859700615560380786871750109852910136860391727795 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow870 (rho : Nat -> F) : Prop :=
    (relationLc184 rho) * (relationLc185 rho) = ((1 : F) * rho 32142)

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 31915, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 31916, 5, 46⟩], residual := [((4098946387412151203821559982385157322842212871029273120584297677802197958397 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32143) * ((1 : F) + (1 : F) * rho 32142) = (relationLc186 rho)

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 31916, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 31915, 5, 46⟩], residual := [((6449889758465453347943548690121075950366107966096385954799870047244937447245 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32144) * ((1 : F) + (-1 : F) * rho 32142) = (relationLc187 rho)

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 46⟩], residual := [((1 : F), 32143), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31708) * (relationLc188 rho) = ((1 : F) * rho 32145)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 46⟩], residual := [((1 : F), 32144), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31708) * (relationLc189 rho) = ((1 : F) * rho 32146)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2480989182328915217035704968501799091032845993637498297759959989969155961506 : F), 31915, 5, 47⟩], residual := [((1780397906965267592988397799526375960157674145853336668821056037594506777478 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 31916, 5, 47⟩], residual := [((8435697469551685066140325303601063758918697694011257672330999321131850527330 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow875 (rho : Nat -> F) : Prop :=
    (relationLc190 rho) * (relationLc191 rho) = ((1 : F) * rho 32147)

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 31915, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 31916, 5, 47⟩], residual := [((3312586582827011871815562736574566434836650091498332925579439616180173391155 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32148) * ((1 : F) + (1 : F) * rho 32147) = (relationLc192 rho)

def relationLc193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 31916, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 31915, 5, 47⟩], residual := [((2883401531657732217592893021422844596260970559296055680507138270037163853218 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32149) * ((1 : F) + (-1 : F) * rho 32147) = (relationLc193 rho)

def relationLc194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 47⟩], residual := [((1 : F), 32148), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31709) * (relationLc194 rho) = ((1 : F) * rho 32150)

def relationLc195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 47⟩], residual := [((1 : F), 32149), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31709) * (relationLc195 rho) = ((1 : F) * rho 32151)

def relationLc196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1412097513793676318203100151344914588183404196444076823819806863703019000664 : F), 31915, 5, 48⟩], residual := [((4872488369303941282325628720923833771829695005190436383842572619654463739799 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 31916, 5, 48⟩], residual := [((7287857562926121443816573787936730396829003411351210866894309378384291143414 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow880 (rho : Nat -> F) : Prop :=
    (relationLc196 rho) * (relationLc197 rho) = ((1 : F) * rho 32152)

def relationLc198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 31915, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 31916, 5, 48⟩], residual := [((3222376147153537853614748346954861356981236500512424890971792958079697969278 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32153) * ((1 : F) + (1 : F) * rho 32152) = (relationLc198 rho)

def relationLc199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 31916, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 31915, 5, 48⟩], residual := [((2708429738389344634294083352646360197070514966334369279197444176046827701509 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32154) * ((1 : F) + (-1 : F) * rho 32152) = (relationLc199 rho)

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 48⟩], residual := [((1 : F), 32153), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31710) * (relationLc200 rho) = ((1 : F) * rho 32155)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 48⟩], residual := [((1 : F), 32154), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31710) * (relationLc201 rho) = ((1 : F) * rho 32156)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7344226933985106720397624283801745162220212964763380091438677820147717632228 : F), 31915, 5, 49⟩], residual := [((5775045164857509487204045692487468553206963145763395969644819158887632895215 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 31916, 5, 49⟩], residual := [((3393463198481809430162510204448349475209266561020452875584574238411104712871 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow885 (rho : Nat -> F) : Prop :=
    (relationLc202 rho) * (relationLc203 rho) = ((1 : F) * rho 32157)

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 31915, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 31916, 5, 49⟩], residual := [((415634274375293255795729886987693687756932324632346737018101532403467964800 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32158) * ((1 : F) + (1 : F) * rho 32157) = (relationLc204 rho)

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 31916, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 31915, 5, 49⟩], residual := [((7521791217715781001002811817629990340703048586333210237163267357148081515314 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32159) * ((1 : F) + (-1 : F) * rho 32157) = (relationLc205 rho)

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 49⟩], residual := [((1 : F), 32158), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31711) * (relationLc206 rho) = ((1 : F) * rho 32160)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 49⟩], residual := [((1 : F), 32159), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31711) * (relationLc207 rho) = ((1 : F) * rho 32161)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5601767322033036842450681038439125168843804208008726864318603631516789761067 : F), 31915, 5, 50⟩], residual := [((6311788928598180271216842731236434068004852943231893048645681373185077594943 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 31916, 5, 50⟩], residual := [((5776210584316626084378821198891211680461121350376665222094336951161481942128 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow890 (rho : Nat -> F) : Prop :=
    (relationLc208 rho) * (relationLc209 rho) = ((1 : F) * rho 32162)

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 31916, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 31915, 5, 50⟩], residual := [((1157745346687861393543968242560639028261069464224253565514298811056121996898 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32163) * ((1 : F) + (1 : F) * rho 32162) = (relationLc210 rho)

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 31915, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 31916, 5, 50⟩], residual := [((5910130369398495494281038639617173443450469194918661981091537875579752637214 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32164) * ((1 : F) + (-1 : F) * rho 32162) = (relationLc211 rho)

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 50⟩], residual := [((1 : F), 32163), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31712) * (relationLc212 rho) = ((1 : F) * rho 32165)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 50⟩], residual := [((1 : F), 32164), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31712) * (relationLc213 rho) = ((1 : F) * rho 32166)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1333102673704202479983628037793327450661200121331252063792862506537783381171 : F), 31915, 5, 51⟩], residual := [((6542948149158298460747498832587140544674969639001712105089973628230443487984 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 31916, 5, 51⟩], residual := [((6661341177813801652607121555462531553845081652612412404845568315122575203231 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow895 (rho : Nat -> F) : Prop :=
    (relationLc214 rho) * (relationLc215 rho) = ((1 : F) * rho 32167)

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 31916, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 31915, 5, 51⟩], residual := [((1338548498399075614959566438101969156716179546081631246251880873912898223130 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32168) * ((1 : F) + (1 : F) * rho 32167) = (relationLc216 rho)

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (967599095655716772350240667612117983219702869938641951846866480719616478017 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 31915, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 31916, 5, 51⟩], residual := [((1265016784022045165451335721675091384371256245608682438229946484243848922585 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32169) * ((1 : F) + (-1 : F) * rho 32167) = (relationLc217 rho)

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 51⟩], residual := [((1 : F), 32168), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31713) * (relationLc218 rho) = ((1 : F) * rho 32170)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 51⟩], residual := [((1 : F), 32169), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31713) * (relationLc219 rho) = ((1 : F) * rho 32171)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7713320707972508225329248135647716996895554908115238849198413492473991592551 : F), 31915, 5, 52⟩], residual := [((3072104556603535932538718282940668171823186000398821652487902741697432579237 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 31916, 5, 52⟩], residual := [((5572009951431654188340934136256813584982401531129506005583899357712942012612 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow900 (rho : Nat -> F) : Prop :=
    (relationLc220 rho) * (relationLc221 rho) = ((1 : F) * rho 32172)

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 31915, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 31916, 5, 52⟩], residual := [((4767993771597570392825832228250807384100430057271852393934492097679007412061 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32173) * ((1 : F) + (1 : F) * rho 32172) = (relationLc222 rho)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 31916, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 31915, 5, 52⟩], residual := [((4938485631131422214938309135964768397685392831276407084547853850081122344138 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32174) * ((1 : F) + (-1 : F) * rho 32172) = (relationLc223 rho)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 52⟩], residual := [((1 : F), 32173), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31714) * (relationLc224 rho) = ((1 : F) * rho 32175)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 52⟩], residual := [((1 : F), 32174), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31714) * (relationLc225 rho) = ((1 : F) * rho 32176)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182152564360992442182523465102481580891280668041367136936940070343748519558 : F), 31915, 5, 53⟩], residual := [((6943198048346289648638720780388980245276877908595231600890699249506039923644 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 31916, 5, 53⟩], residual := [((6044152122593110290241844700340929891609350526117907361008262393599543854423 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow905 (rho : Nat -> F) : Prop :=
    (relationLc226 rho) * (relationLc227 rho) = ((1 : F) * rho 32177)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 31916, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 31915, 5, 53⟩], residual := [((8223953149025763997669343325991778527222426481097586590919694886618136319546 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32178) * ((1 : F) + (1 : F) * rho 32177) = (relationLc228 rho)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 31915, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 31916, 5, 53⟩], residual := [((1074059193230622658889366552226265592333420991687941796125194643194991218718 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32179) * ((1 : F) + (-1 : F) * rho 32177) = (relationLc229 rho)

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 53⟩], residual := [((1 : F), 32178), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31715) * (relationLc230 rho) = ((1 : F) * rho 32180)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 53⟩], residual := [((1 : F), 32179), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31715) * (relationLc231 rho) = ((1 : F) * rho 32181)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6808413011903766006549998320796877852702539675193861145516941276399506816018 : F), 31915, 5, 54⟩], residual := [((2078653876375085330570755506944820726864424017494070193222947648354260047450 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 31916, 5, 54⟩], residual := [((1117535352919708467003298856946705594138171996205812450165122401498781921758 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow910 (rho : Nat -> F) : Prop :=
    (relationLc232 rho) * (relationLc233 rho) = ((1 : F) * rho 32182)

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 31915, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 31916, 5, 54⟩], residual := [((8251711135249260406100806966604915315686718678539696911960534095358292891000 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32183) * ((1 : F) + (1 : F) * rho 32182) = (relationLc234 rho)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 31916, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 31915, 5, 54⟩], residual := [((406499423158076462587989054239116175684150879768157699007514725388541219767 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32184) * ((1 : F) + (-1 : F) * rho 32182) = (relationLc235 rho)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 54⟩], residual := [((1 : F), 32183), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31716) * (relationLc236 rho) = ((1 : F) * rho 32185)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 54⟩], residual := [((1 : F), 32184), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31716) * (relationLc237 rho) = ((1 : F) * rho 32186)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4241778507285906304023890710920622738002391730067850306316792979327606586491 : F), 31915, 5, 55⟩], residual := [((3953639604614696422056258534890758165879158985720327736734975290798201422962 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 31916, 5, 55⟩], residual := [((4202674077261019797308417742231528315489508168641450167521454218641536928405 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow915 (rho : Nat -> F) : Prop :=
    (relationLc238 rho) * (relationLc239 rho) = ((1 : F) * rho 32187)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 31915, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 31916, 5, 55⟩], residual := [((6289242135744362741006424912991516554672659463911444190486174223078870756193 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32188) * ((1 : F) + (1 : F) * rho 32187) = (relationLc240 rho)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 31916, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 31915, 5, 55⟩], residual := [((4081541994201287081235435125178318159947695735171393640538024644859002142361 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32189) * ((1 : F) + (-1 : F) * rho 32187) = (relationLc241 rho)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 55⟩], residual := [((1 : F), 32188), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31717) * (relationLc242 rho) = ((1 : F) * rho 32190)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 55⟩], residual := [((1 : F), 32189), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31717) * (relationLc243 rho) = ((1 : F) * rho 32191)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3232437706463025522731683893995780646681337076003310984171596667323596088177 : F), 31915, 5, 56⟩], residual := [((7299609171731105528884008602233487209149691230266976954925861013709464027904 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 31916, 5, 56⟩], residual := [((4697385226601772918115674698571921054625633824234234862310773431324806444969 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow920 (rho : Nat -> F) : Prop :=
    (relationLc244 rho) * (relationLc245 rho) = ((1 : F) * rho 32192)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 31916, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 31915, 5, 56⟩], residual := [((7634818012457953007817809817513614978873844348279926353964835327957374854443 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32193) * ((1 : F) + (1 : F) * rho 32192) = (relationLc246 rho)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 31915, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 31916, 5, 56⟩], residual := [((179401080578215799959902965619016143436365227580858363150386525578722092540 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32194) * ((1 : F) + (-1 : F) * rho 32192) = (relationLc247 rho)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 56⟩], residual := [((1 : F), 32193), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31718) * (relationLc248 rho) = ((1 : F) * rho 32195)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 56⟩], residual := [((1 : F), 32194), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31718) * (relationLc249 rho) = ((1 : F) * rho 32196)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3774969144446435742048391589032906612972572029665734957465671351061396606799 : F), 31915, 5, 57⟩], residual := [((299072739935496587008989843645288387599676387176706396165424043784897918067 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 31916, 5, 57⟩], residual := [((4136643693283417658736498790494317123120899309936738689803160435184168331615 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow925 (rho : Nat -> F) : Prop :=
    (relationLc250 rho) * (relationLc251 rho) = ((1 : F) * rho 32197)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 31916, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 31915, 5, 57⟩], residual := [((5718856345688711653013838712769722824923732378485026287620938508700566387628 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32198) * ((1 : F) + (1 : F) * rho 32197) = (relationLc252 rho)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 31915, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 31916, 5, 57⟩], residual := [((7231343637356623423257634274124949318490642965113035378722724702300279934775 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32199) * ((1 : F) + (-1 : F) * rho 32197) = (relationLc253 rho)

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 57⟩], residual := [((1 : F), 32198), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31719) * (relationLc254 rho) = ((1 : F) * rho 32200)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 57⟩], residual := [((1 : F), 32199), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31719) * (relationLc255 rho) = ((1 : F) * rho 32201)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(524084180428675886543672397609681556426554336728723959300764695871597247972 : F), 31915, 5, 58⟩], residual := [((8159177784869593785714851414914275323374421837278981124961573647596725706590 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 31916, 5, 58⟩], residual := [((4818410470106440592993602454217503026604201031466413301386018723731681557347 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow930 (rho : Nat -> F) : Prop :=
    (relationLc256 rho) * (relationLc257 rho) = ((1 : F) * rho 32202)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 31915, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 31916, 5, 58⟩], residual := [((1106218981458497958090929997340389135549849560237524904762065168860234965828 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32203) * ((1 : F) + (1 : F) * rho 32202) = (relationLc258 rho)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 31916, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 31915, 5, 58⟩], residual := [((1206691177940826882980288408464481501706253944345262571883675572741777720385 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32204) * ((1 : F) + (-1 : F) * rho 32202) = (relationLc259 rho)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 58⟩], residual := [((1 : F), 32203), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31720) * (relationLc260 rho) = ((1 : F) * rho 32205)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 58⟩], residual := [((1 : F), 32204), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31720) * (relationLc261 rho) = ((1 : F) * rho 32206)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131890576141875281224600973972880248638014316522915565049001974436008999143 : F), 31915, 5, 59⟩], residual := [((1415657727944817558036321498320359183668439809908660451453215273345976868294 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 31916, 5, 59⟩], residual := [((6957761489966147102463536657848674738682109125387707163228989845400547908696 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow935 (rho : Nat -> F) : Prop :=
    (relationLc262 rho) * (relationLc263 rho) = ((1 : F) * rho 32207)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 31916, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 31915, 5, 59⟩], residual := [((204896899138276156608811490487570448506503579567677521441478817852347066374 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32208) * ((1 : F) + (1 : F) * rho 32207) = (relationLc264 rho)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 31915, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 31916, 5, 59⟩], residual := [((7751618227805779890321832146482603076959555595875374224837302954543320988612 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32209) * ((1 : F) + (-1 : F) * rho 32207) = (relationLc265 rho)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 59⟩], residual := [((1 : F), 32208), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31721) * (relationLc266 rho) = ((1 : F) * rho 32210)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 59⟩], residual := [((1 : F), 32209), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31721) * (relationLc267 rho) = ((1 : F) * rho 32211)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3152886168502799097382579060289725839662660937575510139529968929225933523775 : F), 31915, 5, 60⟩], residual := [((2011869137363505194314221533266384645990498645936606538812070893317621034740 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 31916, 5, 60⟩], residual := [((919991228339379009134395501819788718201060015650546947921200011276441841381 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow940 (rho : Nat -> F) : Prop :=
    (relationLc268 rho) * (relationLc269 rho) = ((1 : F) * rho 32212)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 31915, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 31916, 5, 60⟩], residual := [((635541301393225325559729522931191776276415449765152077378140844904294167979 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32213) * ((1 : F) + (1 : F) * rho 32212) = (relationLc270 rho)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 31916, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 31915, 5, 60⟩], residual := [((2000379572386245103083883272590658199662225213700833632060373500285939930960 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32214) * ((1 : F) + (-1 : F) * rho 32212) = (relationLc271 rho)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 60⟩], residual := [((1 : F), 32213), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31722) * (relationLc272 rho) = ((1 : F) * rho 32215)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 60⟩], residual := [((1 : F), 32214), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31722) * (relationLc273 rho) = ((1 : F) * rho 32216)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5423475569768402893668164852510319504991268952664783955492332957848289511011 : F), 31915, 5, 61⟩], residual := [((3500172626273557012639355643290277641076954327519743788821693876196605139451 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 31916, 5, 61⟩], residual := [((3431689668434187993890584244318630711849599341807225101580858371388157883389 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow945 (rho : Nat -> F) : Prop :=
    (relationLc274 rho) * (relationLc275 rho) = ((1 : F) * rho 32217)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 31916, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 31915, 5, 61⟩], residual := [((3234385262084257261315600061925317396362471934171204317736244044511646976129 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32218) * ((1 : F) + (1 : F) * rho 32217) = (relationLc276 rho)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 31915, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 31916, 5, 61⟩], residual := [((2023421265549764478714181553218950611586386789275601891859598215504517996158 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32219) * ((1 : F) + (-1 : F) * rho 32217) = (relationLc277 rho)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 61⟩], residual := [((1 : F), 32218), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31723) * (relationLc278 rho) = ((1 : F) * rho 32220)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 61⟩], residual := [((1 : F), 32219), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31723) * (relationLc279 rho) = ((1 : F) * rho 32221)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5015437509650216957144418681816872631395086564863943718944470166433907001455 : F), 31915, 5, 62⟩], residual := [((6493761841058930305538695811595629686051379129441002851272601847272817015518 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 31916, 5, 62⟩], residual := [((7931948794061577444869100559841351758240427914944493816920738967949939539835 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow950 (rho : Nat -> F) : Prop :=
    (relationLc280 rho) * (relationLc281 rho) = ((1 : F) * rho 32222)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 31915, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 31916, 5, 62⟩], residual := [((7967641380236420005410816744904898328271067494934990264715010865771284037645 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32223) * ((1 : F) + (1 : F) * rho 32222) = (relationLc282 rho)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (303547602266770679502157402207952299907312881417246884189324622113708740423 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 31916, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 31915, 5, 62⟩], residual := [((5561764102716542035099189445452256030373191946152764886360758616094121892723 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32224) * ((1 : F) + (-1 : F) * rho 32222) = (relationLc283 rho)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 62⟩], residual := [((1 : F), 32223), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31724) * (relationLc284 rho) = ((1 : F) * rho 32225)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 62⟩], residual := [((1 : F), 32224), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31724) * (relationLc285 rho) = ((1 : F) * rho 32226)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3085616442776849438476212581616932439034899615310675205518179401870911711973 : F), 31915, 5, 63⟩], residual := [((1026790005384380925460007667604107280893568745904825431692257267135526443711 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 31916, 5, 63⟩], residual := [((4964692616665768239957833217040709313911948806214555943848258053209201399789 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow955 (rho : Nat -> F) : Prop :=
    (relationLc286 rho) * (relationLc287 rho) = ((1 : F) * rho 32227)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 31916, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 31915, 5, 63⟩], residual := [((7069858617104347290068665784591225250822556475237036873297752607851023539293 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32228) * ((1 : F) + (1 : F) * rho 32227) = (relationLc288 rho)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 31915, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 31916, 5, 63⟩], residual := [((6740979775409447315102366221095070768823522715493011568131450176110930966632 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32229) * ((1 : F) + (-1 : F) * rho 32227) = (relationLc289 rho)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 63⟩], residual := [((1 : F), 32228), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31725) * (relationLc290 rho) = ((1 : F) * rho 32230)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 63⟩], residual := [((1 : F), 32229), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31725) * (relationLc291 rho) = ((1 : F) * rho 32231)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4275544026045521543387764973435775239930499568673885139700103275620778568799 : F), 31915, 5, 64⟩], residual := [((6918465407683071827013143227809273434111339304474541289264328778110766408084 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 31916, 5, 64⟩], residual := [((2687488818437579694147825883036614690556389511567113641914435677747780662044 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow960 (rho : Nat -> F) : Prop :=
    (relationLc292 rho) * (relationLc293 rho) = ((1 : F) * rho 32232)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 31916, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 31915, 5, 64⟩], residual := [((8305443839956705564436770750709549564759730492576378379289857174509179512637 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32233) * ((1 : F) + (1 : F) * rho 32232) = (relationLc294 rho)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 31915, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 31916, 5, 64⟩], residual := [((8222691234440270234943567991332315348480785560285671531960820207978794062238 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32234) * ((1 : F) + (-1 : F) * rho 32232) = (relationLc295 rho)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 64⟩], residual := [((1 : F), 32233), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31726) * (relationLc296 rho) = ((1 : F) * rho 32235)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 64⟩], residual := [((1 : F), 32234), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31726) * (relationLc297 rho) = ((1 : F) * rho 32236)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3224247449589776035172626644635962173546611304319642440654303000898713426573 : F), 31915, 5, 65⟩], residual := [((6922933048605870567158033117124161753294641474213475748005056560195059560257 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 31916, 5, 65⟩], residual := [((1683532850189794660324898745003693499391356307190748335872042551061169835560 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow965 (rho : Nat -> F) : Prop :=
    (relationLc298 rho) * (relationLc299 rho) = ((1 : F) * rho 32237)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 31915, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 31916, 5, 65⟩], residual := [((7312670365796519431784694387136886921904755844807214393926206736205804015550 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32238) * ((1 : F) + (1 : F) * rho 32237) = (relationLc300 rho)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 31916, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 31915, 5, 65⟩], residual := [((1436455174440920619391968622946117002395595731172664636618509227741715273384 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32239) * ((1 : F) + (-1 : F) * rho 32237) = (relationLc301 rho)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 65⟩], residual := [((1 : F), 32238), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31727) * (relationLc302 rho) = ((1 : F) * rho 32240)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 65⟩], residual := [((1 : F), 32239), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31727) * (relationLc303 rho) = ((1 : F) * rho 32241)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4537829826710099817775550958527656895937789094984491383153961637795690912504 : F), 31915, 5, 66⟩], residual := [((2749188575728518267592553371769543385629672150729245544383062864247726015738 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 31916, 5, 66⟩], residual := [((5712732582707052683841463147070624757472068170351593864520728831317292745745 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow970 (rho : Nat -> F) : Prop :=
    (relationLc304 rho) * (relationLc305 rho) = ((1 : F) * rho 32242)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 31916, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 31915, 5, 66⟩], residual := [((16915351075377607260359978628048694063113131327014971509268149326087084325 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32243) * ((1 : F) + (1 : F) * rho 32242) = (relationLc306 rho)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 31915, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 31916, 5, 66⟩], residual := [((7256193909769812682555148545617782317236443165268330186660581126231576938624 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32244) * ((1 : F) + (-1 : F) * rho 32242) = (relationLc307 rho)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 66⟩], residual := [((1 : F), 32243), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31728) * (relationLc308 rho) = ((1 : F) * rho 32245)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 66⟩], residual := [((1 : F), 32244), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31728) * (relationLc309 rho) = ((1 : F) * rho 32246)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6109128832021984750706140245240785402459174032478405879250343070124721293892 : F), 31915, 5, 67⟩], residual := [((4158886918380229616288312813886586603084732557022387434087401602587801645499 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 31916, 5, 67⟩], residual := [((1403880340404152944062409321333488212033396586256041904966389272209822471960 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow975 (rho : Nat -> F) : Prop :=
    (relationLc310 rho) * (relationLc311 rho) = ((1 : F) * rho 32247)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 31915, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 31916, 5, 67⟩], residual := [((5880458343632620762281097517229927332634488796828262552420343646432384535300 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32248) * ((1 : F) + (1 : F) * rho 32247) = (relationLc312 rho)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 31916, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 31915, 5, 67⟩], residual := [((6302563214434145603166502561364369844950138898125530835850620533193703076781 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32249) * ((1 : F) + (-1 : F) * rho 32247) = (relationLc313 rho)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 67⟩], residual := [((1 : F), 32248), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31729) * (relationLc314 rho) = ((1 : F) * rho 32250)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 67⟩], residual := [((1 : F), 32249), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31729) * (relationLc315 rho) = ((1 : F) * rho 32251)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1179533789199475365297714400141375462651628937246367333767425774001091757699 : F), 31915, 5, 68⟩], residual := [((3650148473261483737321698221438519843744737995291324808363332260644300992770 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 31916, 5, 68⟩], residual := [((2869640595059133405401105760735484166625600533531038730335777921468494281318 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow980 (rho : Nat -> F) : Prop :=
    (relationLc316 rho) * (relationLc317 rho) = ((1 : F) * rho 32252)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 31915, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 31916, 5, 68⟩], residual := [((290829590011425885426149216454143905580843715142455616010767280107645414505 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32253) * ((1 : F) + (1 : F) * rho 32252) = (relationLc318 rho)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 31916, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 31915, 5, 68⟩], residual := [((3269211464373257727069870559604670208906748515964307695166848470740751744619 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32254) * ((1 : F) + (-1 : F) * rho 32252) = (relationLc319 rho)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 68⟩], residual := [((1 : F), 32253), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31730) * (relationLc320 rho) = ((1 : F) * rho 32255)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 68⟩], residual := [((1 : F), 32254), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31730) * (relationLc321 rho) = ((1 : F) * rho 32256)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8020470969744535628948961867453278796912375307773752546739275694995204105556 : F), 31915, 5, 69⟩], residual := [((1155591149101033702468941577713967034096349749420500774035493296064670211394 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 31916, 5, 69⟩], residual := [((6516296044727182879445314890382344061985183553314241005759015699751637830506 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow985 (rho : Nat -> F) : Prop :=
    (relationLc322 rho) * (relationLc323 rho) = ((1 : F) * rho 32257)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 31916, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 31915, 5, 69⟩], residual := [((7402774020800633544188560983454659261415920540733393185245776540142860405477 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32258) * ((1 : F) + (1 : F) * rho 32257) = (relationLc324 rho)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (94898281595789725133783576579690272867367445669598761624826871810748000329 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 31915, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 31916, 5, 69⟩], residual := [((7930424913899644060330437450338886918483378046101948759604036965886786960745 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32259) * ((1 : F) + (-1 : F) * rho 32257) = (relationLc325 rho)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 69⟩], residual := [((1 : F), 32258), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31731) * (relationLc326 rho) = ((1 : F) * rho 32260)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 69⟩], residual := [((1 : F), 32259), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31731) * (relationLc327 rho) = ((1 : F) * rho 32261)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6243965871058553016662718872284436312489594295673912111659521004288054905871 : F), 31915, 5, 70⟩], residual := [((8097035089899596317674829087795996067355516584207036979388909984789096168556 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 31916, 5, 70⟩], residual := [((8152481399280699976037864206409819856258464140367291640444612544612617889236 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow990 (rho : Nat -> F) : Prop :=
    (relationLc328 rho) * (relationLc329 rho) = ((1 : F) * rho 32262)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 31916, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 31915, 5, 70⟩], residual := [((946202082271144289900808698952086487059162959043847888287850488066371834513 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32263) * ((1 : F) + (1 : F) * rho 32262) = (relationLc330 rho)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (890957564445309615335249602583520765736519557389826616813989990064887187329 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 31915, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 31916, 5, 70⟩], residual := [((4335790016456525302353676189745248435386653945957487679257606811467105634208 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32264) * ((1 : F) + (-1 : F) * rho 32262) = (relationLc331 rho)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 70⟩], residual := [((1 : F), 32263), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31732) * (relationLc332 rho) = ((1 : F) * rho 32265)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 70⟩], residual := [((1 : F), 32264), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31732) * (relationLc333 rho) = ((1 : F) * rho 32266)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1987785455165667403478408768327056179798479167734353698427786135116125554860 : F), 31915, 5, 71⟩], residual := [((7821914167782499180620654951422779353975727845430137656040815973888425734727 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 31916, 5, 71⟩], residual := [((1097564547200276120230480787848358308568252957864993652527665060118848681137 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow995 (rho : Nat -> F) : Prop :=
    (relationLc334 rho) * (relationLc335 rho) = ((1 : F) * rho 32267)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 31916, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 31915, 5, 71⟩], residual := [((306301646614418887093755985576747439466372890556710306126617233072620346760 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32268) * ((1 : F) + (1 : F) * rho 32267) = (relationLc336 rho)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 31915, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 31916, 5, 71⟩], residual := [((8181626747822779416252867083787740891747474116092964266976805209581318554994 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32269) * ((1 : F) + (-1 : F) * rho 32267) = (relationLc337 rho)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 71⟩], residual := [((1 : F), 32268), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31733) * (relationLc338 rho) = ((1 : F) * rho 32270)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 71⟩], residual := [((1 : F), 32269), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31733) * (relationLc339 rho) = ((1 : F) * rho 32271)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5906282420730200729219547836776917049119331455532752804245301219830904456945 : F), 31915, 5, 72⟩], residual := [((7125368184004558136207273332685448448086759513894762010576501787206500426713 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 31916, 5, 72⟩], residual := [((853705323836438218659889131819209372621827479297190955966732585862140613693 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1000 (rho : Nat -> F) : Prop :=
    (relationLc340 rho) * (relationLc341 rho) = ((1 : F) * rho 32272)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 31916, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 31915, 5, 72⟩], residual := [((3668089265613646164681248006942321341841371170352762943028441079221995031072 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32273) * ((1 : F) + (1 : F) * rho 32272) = (relationLc342 rho)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 31915, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 31916, 5, 72⟩], residual := [((4602370274756503558828870034767643896157617843616217244583004512030183601593 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32274) * ((1 : F) + (-1 : F) * rho 32272) = (relationLc343 rho)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 72⟩], residual := [((1 : F), 32273), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31734) * (relationLc344 rho) = ((1 : F) * rho 32275)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 72⟩], residual := [((1 : F), 32274), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31734) * (relationLc345 rho) = ((1 : F) * rho 32276)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8007989290322952964580282096633098651683917914141964677476285041725790891813 : F), 31915, 5, 73⟩], residual := [((2904879038920373626759952960327022534321970667148207608417077592528813201390 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 31916, 5, 73⟩], residual := [((6773916005749358031994496606457031539973922789689421584856127361866838763353 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1005 (rho : Nat -> F) : Prop :=
    (relationLc346 rho) * (relationLc347 rho) = ((1 : F) * rho 32277)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 31916, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 31915, 5, 73⟩], residual := [((4899262263668088193846796645860510288726353612853529952636291356793004673252 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32278) * ((1 : F) + (1 : F) * rho 32277) = (relationLc348 rho)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 31915, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 31916, 5, 73⟩], residual := [((7803497122239555848708020479765301947600485471286960728898808320056849607543 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32279) * ((1 : F) + (-1 : F) * rho 32277) = (relationLc349 rho)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 73⟩], residual := [((1 : F), 32278), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31735) * (relationLc350 rho) = ((1 : F) * rho 32280)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 73⟩], residual := [((1 : F), 32279), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31735) * (relationLc351 rho) = ((1 : F) * rho 32281)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3907588607902144195434749636024380116580419455601458851330786713184793306799 : F), 31915, 5, 74⟩], residual := [((7310336273222929023160253185102680675368687000562120482542043788957220361700 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 31916, 5, 74⟩], residual := [((8025959025556563078755771057585518905175732075509521885122129402111728427797 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1010 (rho : Nat -> F) : Prop :=
    (relationLc352 rho) * (relationLc353 rho) = ((1 : F) * rho 32282)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 31916, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 31915, 5, 74⟩], residual := [((1459532420166477819582789146644925833988047616518628844683447979530810026147 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32283) * ((1 : F) + (1 : F) * rho 32282) = (relationLc354 rho)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 31915, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 31916, 5, 74⟩], residual := [((7496986025375963379992993904161590865044308211264125435993746368497481505754 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 32284) * ((1 : F) + (-1 : F) * rho 32282) = (relationLc355 rho)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 31915, 5, 74⟩], residual := [((1 : F), 32283), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31736) * (relationLc356 rho) = ((1 : F) * rho 32285)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 31916, 5, 74⟩], residual := [((1 : F), 32284), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 31661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31736) * (relationLc357 rho) = ((1 : F) * rho 32286)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg46
