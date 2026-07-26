import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs119

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2003) * (relationLc2639 rho) = ((1 : F) * rho 3185)

def relationLc2640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 47⟩], residual := [((1 : F), 3184), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2003) * (relationLc2640 rho) = ((1 : F) * rho 3186)

def relationLc2641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 48⟩, ⟨(1 : F), 2810, 8, 48⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2641 rho) = ((1 : F) * rho 3187)

def relationLc2642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4650229456266980847280092519007379057609683464313568847213917527113962390902 : F), 2061, 5, 149⟩, ⟨(4650229456266980847280092519007379057609683464313568847213917527113962390902 : F), 2809, 8, 48⟩], residual := [((8201724621582765653030734371596669718643778063996307403175296213974527753626 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7930667003114803381391199940435962325856755079631497576389101972968987952268 : F), runs := [⟨(7930667003114803381391199940435962325856755079631497576389101972968987952268 : F), 2062, 5, 149⟩, ⟨(7930667003114803381391199940435962325856755079631497576389101972968987952268 : F), 2810, 8, 48⟩], residual := [((8241996517340196507168575437887209602961606946337645162989804468942467556775 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3187 (rho : Nat -> F) : Prop :=
    (relationLc2642 rho) * (relationLc2643 rho) = ((1 : F) * rho 3188)

def relationLc2644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7930667003114803381391199940435962325856755079631497576389101972968987952268 : F), runs := [⟨(4132924427378814454778895515404876912423432274353531912126941067650792723500 : F), 2061, 5, 149⟩, ⟨(4132924427378814454778895515404876912423432274353531912126941067650792723500 : F), 2809, 8, 48⟩, ⟨(7930667003114803381391199940435962325856755079631497576389101972968987952268 : F), 2062, 5, 149⟩, ⟨(7930667003114803381391199940435962325856755079631497576389101972968987952268 : F), 2810, 8, 48⟩], residual := [((5851974162858534038613804364326995382127735363144039625317052220663312382705 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2644 rho) = ((1 : F) * rho 3189)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3190) * ((1 : F) + (1 : F) * rho 3188) = ((1 : F) * rho 3189)

def relationLc2645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513794746313567042857624998345584205519144255522566251546131482948421286773 : F), runs := [⟨(4311537322049555969469929423376669618952467060800531915808292388266616515541 : F), 2061, 5, 149⟩, ⟨(4311537322049555969469929423376669618952467060800531915808292388266616515541 : F), 2809, 8, 48⟩, ⟨(513794746313567042857624998345584205519144255522566251546131482948421286773 : F), 2062, 5, 149⟩, ⟨(513794746313567042857624998345584205519144255522566251546131482948421286773 : F), 2810, 8, 48⟩], residual := [((2592487586569836385635020574454551149248163972010024202618181235254096856336 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2645 rho) = ((1 : F) * rho 3191)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3192) * ((1 : F) + (-1 : F) * rho 3188) = ((3619129681065247411921270517059292706904288018830965660580809584702371436727 : F) * rho 3187 + (1 : F) * rho 3191)

def relationLc2646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 48⟩], residual := [((1 : F), 3190), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2004) * (relationLc2646 rho) = ((1 : F) * rho 3193)

def relationLc2647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 48⟩], residual := [((1 : F), 3192), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2004) * (relationLc2647 rho) = ((1 : F) * rho 3194)

def relationLc2648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 49⟩, ⟨(1 : F), 2810, 8, 49⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2648 rho) = ((1 : F) * rho 3195)

def relationLc2649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5395489779347166496441878133437943551276689582318615283329753273729667076491 : F), 2061, 5, 149⟩, ⟨(5395489779347166496441878133437943551276689582318615283329753273729667076491 : F), 2809, 8, 49⟩], residual := [((3455123595394709068728375359700453623954053059499181797974481778307175545740 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), runs := [⟨(5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), 2062, 5, 149⟩, ⟨(5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), 2810, 8, 49⟩], residual := [((7921956495604143909729635272667358866033647565741482052006931585555957659688 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3195 (rho : Nat -> F) : Prop :=
    (relationLc2649 rho) * (relationLc2650 rho) = ((1 : F) * rho 3196)

def relationLc2651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), runs := [⟨(5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), 2062, 5, 149⟩, ⟨(5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), 2810, 8, 49⟩, ⟨(6861338835775097049852055040683003353706631465756501572008074364149305508005 : F), 2061, 5, 149⟩, ⟨(6861338835775097049852055040683003353706631465756501572008074364149305508005 : F), 2809, 8, 49⟩], residual := [((3900729970005987560366732024886178791546403245904607286498548116080007736009 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2651 rho) = ((1 : F) * rho 3197)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3198) * ((1 : F) + (1 : F) * rho 3196) = ((1 : F) * rho 3197)

def relationLc2652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2577551997374796983527733417487353524785914064793178647194838546763885691284 : F), runs := [⟨(1583122913653273374396769898098543177669267869397562255927159091768103731036 : F), 2061, 5, 149⟩, ⟨(1583122913653273374396769898098543177669267869397562255927159091768103731036 : F), 2809, 8, 49⟩, ⟨(2577551997374796983527733417487353524785914064793178647194838546763885691284 : F), 2062, 5, 149⟩, ⟨(2577551997374796983527733417487353524785914064793178647194838546763885691284 : F), 2810, 8, 49⟩], residual := [((4543731779422382863882092913895367739829496089249456541436685339837401503032 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2652 rho) = ((1 : F) * rho 3199)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3200) * ((1 : F) + (-1 : F) * rho 3196) = ((4283786838400300066324321623195649828920717400963322924813235817385419816721 : F) * rho 3195 + (1 : F) * rho 3199)

def relationLc2653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 49⟩], residual := [((1 : F), 3198), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2005) * (relationLc2653 rho) = ((1 : F) * rho 3201)

def relationLc2654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 49⟩], residual := [((1 : F), 3200), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2005) * (relationLc2654 rho) = ((1 : F) * rho 3202)

def relationLc2655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 50⟩, ⟨(1 : F), 2810, 8, 50⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2655 rho) = ((1 : F) * rho 3203)

def relationLc2656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3100448320433834111918975386863796058846185529823286084341039373912753248800 : F), 2061, 5, 149⟩, ⟨(3100448320433834111918975386863796058846185529823286084341039373912753248800 : F), 2809, 8, 50⟩], residual := [((3903952192111930461238178835992593518359008067511423121083754618642940815645 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), runs := [⟨(1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), 2062, 5, 149⟩, ⟨(1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), 2810, 8, 50⟩], residual := [((5094008693542661590663718289535533802753982210673550470075594113034958991626 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3203 (rho : Nat -> F) : Prop :=
    (relationLc2656 rho) * (relationLc2657 rho) = ((1 : F) * rho 3204)

def relationLc2658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), runs := [⟨(1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), 2062, 5, 149⟩, ⟨(1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), 2810, 8, 50⟩, ⟨(993341399989243738735601399753165446771694951840289952003094642907842778255 : F), 2061, 5, 149⟩, ⟨(993341399989243738735601399753165446771694951840289952003094642907842778255 : F), 2809, 8, 50⟩], residual := [((5645965964919523856151390150434559708149351683395451164290862151907641070708 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2658 rho) = ((1 : F) * rho 3205)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3206) * ((1 : F) + (1 : F) * rho 3204) = ((1 : F) * rho 3205)

def relationLc2659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7126142768598852485385892672128900619926292402687511083376692546846811346886 : F), runs := [⟨(7126142768598852485385892672128900619926292402687511083376692546846811346886 : F), 2062, 5, 149⟩, ⟨(7126142768598852485385892672128900619926292402687511083376692546846811346886 : F), 2810, 8, 50⟩, ⟨(7451120349439126685513223539028381084604204383313773875932138813009566460786 : F), 2061, 5, 149⟩, ⟨(7451120349439126685513223539028381084604204383313773875932138813009566460786 : F), 2809, 8, 50⟩], residual := [((2798495784508846568097434788346986823226547651758612663644371304009768168333 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2659 rho) = ((1 : F) * rho 3207)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3208) * ((1 : F) + (-1 : F) * rho 3204) = ((2311660380818761677598533666405811358221301884306842696561635551978440670410 : F) * rho 3203 + (1 : F) * rho 3207)

def relationLc2660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 50⟩], residual := [((1 : F), 3206), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2006) * (relationLc2660 rho) = ((1 : F) * rho 3209)

def relationLc2661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 50⟩], residual := [((1 : F), 3208), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2006) * (relationLc2661 rho) = ((1 : F) * rho 3210)

def relationLc2662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 51⟩, ⟨(1 : F), 2810, 8, 51⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2662 rho) = ((1 : F) * rho 3211)

def relationLc2663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1746227751459114646722528869200681138402567811675572997694830651943215246450 : F), 2061, 5, 149⟩, ⟨(1746227751459114646722528869200681138402567811675572997694830651943215246450 : F), 2809, 8, 51⟩], residual := [((5052115677828846873756212072743373167809060123087419825114718750182894204087 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), runs := [⟨(2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), 2062, 5, 149⟩, ⟨(2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), 2810, 8, 51⟩], residual := [((4158914102388540119305092671029422258422421911007114277230171451075976427611 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3211 (rho : Nat -> F) : Prop :=
    (relationLc2663 rho) * (relationLc2664 rho) = ((1 : F) * rho 3212)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
