import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs23

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationLc120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 1417, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 1418, 5, 34⟩], residual := [((6251904620838611344078525679022760693298497453146791320344107105373411818863 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1585) * ((1 : F) + (1 : F) * rho 1584) = (relationLc120 rho)

def relationLc121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), runs := [⟨(3680624134292781294559549454555924955196812921663189695829841426422597490576 : F), 1418, 5, 34⟩, ⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 1417, 5, 34⟩], residual := [((5103372395917695594031749430338616733651220144604465912275033633361885722791 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1586) * ((1 : F) + (-1 : F) * rho 1584) = (relationLc121 rho)

def relationLc122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 34⟩], residual := [((1 : F), 1585), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * (relationLc122 rho) = ((1 : F) * rho 1587)

def relationLc123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 34⟩], residual := [((1 : F), 1586), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * (relationLc123 rho) = ((1 : F) * rho 1588)

def relationLc124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1813651800887372888218358633389516585503338776851411898639872893961477726628 : F), 1417, 5, 35⟩], residual := [((4332762156669531321806060827757180658939967006014081096227484419036691077454 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 1418, 5, 35⟩], residual := [((5671572536088846828891526459958780343902232611472008807875123991451218823074 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1589 (rho : Nat -> F) : Prop :=
    (relationLc124 rho) * (relationLc125 rho) = ((1 : F) * rho 1589)

def relationLc126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 1417, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 1418, 5, 35⟩], residual := [((2025200533160229194888576945135158681278396575268751868332173916789457033643 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1590) * ((1 : F) + (1 : F) * rho 1589) = (relationLc126 rho)

def relationLc127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), runs := [⟨(3804940778805991234786782224533291739751109676902195392823069383117363605449 : F), 1418, 5, 35⟩, ⟨(5767311065825837211905866107008270824856997870090546296644056636631611477624 : F), 1417, 5, 35⟩], residual := [((8442471382521831375849723291797816047621811132164284989974006577570527177745 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1591) * ((1 : F) + (-1 : F) * rho 1589) = (relationLc127 rho)

def relationLc128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 35⟩], residual := [((1 : F), 1590), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1198) * (relationLc128 rho) = ((1 : F) * rho 1592)

def relationLc129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 35⟩], residual := [((1 : F), 1591), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1198) * (relationLc129 rho) = ((1 : F) * rho 1593)

def relationLc130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2973762887053711588659812065778661673574928332706196579314191743156428716572 : F), 1417, 5, 36⟩], residual := [((6682407300359382609503400332527035533248579499388577723582363208963416928412 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 1418, 5, 36⟩], residual := [((6946009667070038871805755411793140145562511406907617621055044504248216768387 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1594 (rho : Nat -> F) : Prop :=
    (relationLc130 rho) * (relationLc131 rho) = ((1 : F) * rho 1594)

def relationLc132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 1418, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 1417, 5, 36⟩], residual := [((7954513022612764040736268612155233421573293379815545974507631861858025024919 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1595) * ((1 : F) + (1 : F) * rho 1594) = (relationLc132 rho)

def relationLc133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 1417, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 1418, 5, 36⟩], residual := [((1468266587366020547962196980067709992417674251428878356814024974633442009707 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1596) * ((1 : F) + (-1 : F) * rho 1594) = (relationLc133 rho)

def relationLc134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 36⟩], residual := [((1 : F), 1595), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * (relationLc134 rho) = ((1 : F) * rho 1597)

def relationLc135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 36⟩], residual := [((1 : F), 1596), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * (relationLc135 rho) = ((1 : F) * rho 1598)

def relationLc136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6283895545862393095119965201646467110329652983511832728991419956531422149476 : F), 1417, 5, 37⟩], residual := [((3039369665499206513300262959978301119607022780697997916752288188525709772530 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 1418, 5, 37⟩], residual := [((2969546671238196845433085713839439493723105804139421825031325348217664786501 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1599 (rho : Nat -> F) : Prop :=
    (relationLc136 rho) * (relationLc137 rho) = ((1 : F) * rho 1599)

def relationLc138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 1417, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 1418, 5, 37⟩], residual := [((664468361535149379861427219455196664439587125317374602214438452175514203106 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1600) * ((1 : F) + (1 : F) * rho 1599) = (relationLc138 rho)

def relationLc139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 1418, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 1417, 5, 37⟩], residual := [((2774290533394242825295743553548727573359930681222589540563055996855396108663 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1601) * ((1 : F) + (-1 : F) * rho 1599) = (relationLc139 rho)

def relationLc140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 37⟩], residual := [((1 : F), 1600), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * (relationLc140 rho) = ((1 : F) * rho 1602)

def relationLc141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 37⟩], residual := [((1 : F), 1601), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * (relationLc141 rho) = ((1 : F) * rho 1603)

def relationLc142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2737678186161388677269696828163781497179972610597210243682127578480079744698 : F), 1417, 5, 38⟩], residual := [((4132867600766331403468103911488601771844507652049295357377441988694180895684 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 1418, 5, 38⟩], residual := [((7498517742460767153649827542380903921917650101548680978290247340174508338531 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1604 (rho : Nat -> F) : Prop :=
    (relationLc142 rho) * (relationLc143 rho) = ((1 : F) * rho 1604)

def relationLc144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 1417, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 1418, 5, 38⟩], residual := [((7279060737957597695817259165600945770905782660361947530077898448738301404076 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1605) * ((1 : F) + (1 : F) * rho 1604) = (relationLc144 rho)

def relationLc145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 1418, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 1417, 5, 38⟩], residual := [((3082099749828277877997320958604797045431260535131321563258860151504806457122 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1606) * ((1 : F) + (-1 : F) * rho 1604) = (relationLc145 rho)

def relationLc146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 38⟩], residual := [((1 : F), 1605), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * (relationLc146 rho) = ((1 : F) * rho 1607)

def relationLc147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 38⟩], residual := [((1 : F), 1606), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * (relationLc147 rho) = ((1 : F) * rho 1608)

def relationLc148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6851041951327243387512226029580676563206460261303054980106520016312838818068 : F), 1417, 5, 39⟩], residual := [((5625948356277050937605767324990821790138621231524871348249025852390193352441 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 1418, 5, 39⟩], residual := [((5506536983148588278035547452639438713624475135322671880361231065871551612347 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1609 (rho : Nat -> F) : Prop :=
    (relationLc148 rho) * (relationLc149 rho) = ((1 : F) * rho 1609)

def relationLc150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 1418, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 1417, 5, 39⟩], residual := [((4524469923419190946556573400628146572858444700121511471197062528754524846776 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
