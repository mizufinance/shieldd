import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs111

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1975) * (relationLc2443 rho) = ((1 : F) * rho 2961)

def relationLc2444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 19⟩], residual := [((1 : F), 2960), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1975) * (relationLc2444 rho) = ((1 : F) * rho 2962)

def relationLc2445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 20⟩, ⟨(1 : F), 2810, 8, 20⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2445 rho) = ((1 : F) * rho 2963)

def relationLc2446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7321381047978916657381227325493198811539079499194854071404395739434491179601 : F), 2061, 5, 149⟩, ⟨(7321381047978916657381227325493198811539079499194854071404395739434491179601 : F), 2809, 8, 20⟩], residual := [((1491578523302326890287634702565833052377336688757681437395404834396561461943 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8184062698146943358494781358089637684750315020587119053955285774853199597574 : F), runs := [⟨(8184062698146943358494781358089637684750315020587119053955285774853199597574 : F), 2062, 5, 149⟩, ⟨(8184062698146943358494781358089637684750315020587119053955285774853199597574 : F), 2810, 8, 20⟩], residual := [((1496499589516708972553470574944181141820166792175120230999873448120688628571 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2963 (rho : Nat -> F) : Prop :=
    (relationLc2446 rho) * (relationLc2447 rho) = ((1 : F) * rho 2964)

def relationLc2448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8184062698146943358494781358089637684750315020587119053955285774853199597574 : F), runs := [⟨(7571970803872891766144720013752373785427830016251704634266804566158152502649 : F), 2061, 5, 149⟩, ⟨(7571970803872891766144720013752373785427830016251704634266804566158152502649 : F), 2809, 8, 20⟩, ⟨(8184062698146943358494781358089637684750315020587119053955285774853199597574 : F), 2062, 5, 149⟩, ⟨(8184062698146943358494781358089637684750315020587119053955285774853199597574 : F), 2810, 8, 20⟩], residual := [((1986162742338048645222729760309734427501451042536165862024719942533116029529 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2448 rho) = ((1 : F) * rho 2965)

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2966) * ((1 : F) + (1 : F) * rho 2964) = ((1 : F) * rho 2965)

def relationLc2449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (260399051281427065754043580691908846625584314566944773979947681064209641467 : F), runs := [⟨(260399051281427065754043580691908846625584314566944773979947681064209641467 : F), 2062, 5, 149⟩, ⟨(260399051281427065754043580691908846625584314566944773979947681064209641467 : F), 2810, 8, 20⟩, ⟨(872490945555478658104104925029172745948069318902359193668428889759256736392 : F), 2061, 5, 149⟩, ⟨(872490945555478658104104925029172745948069318902359193668428889759256736392 : F), 2809, 8, 20⟩], residual := [((6458299007090321779026095178471812103874448292617897965910513513384293209512 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2449 rho) = ((1 : F) * rho 2967)

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2968) * ((1 : F) + (-1 : F) * rho 2964) = ((7311571752591464700390676433060464938802245701684759860286856885093942861182 : F) * rho 2963 + (1 : F) * rho 2967)

def relationLc2450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 20⟩], residual := [((1 : F), 2966), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1976) * (relationLc2450 rho) = ((1 : F) * rho 2969)

def relationLc2451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 20⟩], residual := [((1 : F), 2968), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1976) * (relationLc2451 rho) = ((1 : F) * rho 2970)

def relationLc2452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 21⟩, ⟨(1 : F), 2810, 8, 21⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2452 rho) = ((1 : F) * rho 2971)

def relationLc2453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4493477507397166489633705024878414293948320914222600880869178529064453280296 : F), 2061, 5, 149⟩, ⟨(4493477507397166489633705024878414293948320914222600880869178529064453280296 : F), 2809, 8, 21⟩], residual := [((7303261112629090045929153821352107980531881325192768366127188115202627453569 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), runs := [⟨(6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), 2062, 5, 149⟩, ⟨(6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), 2810, 8, 21⟩], residual := [((8266985018218747902737876725127409567723927972908008121147414056726396810144 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2971 (rho : Nat -> F) : Prop :=
    (relationLc2453 rho) * (relationLc2454 rho) = ((1 : F) * rho 2972)

def relationLc2455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), runs := [⟨(1141950966989133498703460536262081893113311899919589752624443703589330494144 : F), 2061, 5, 149⟩, ⟨(1141950966989133498703460536262081893113311899919589752624443703589330494144 : F), 2809, 8, 21⟩, ⟨(6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), 2062, 5, 149⟩, ⟨(6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), 2810, 8, 21⟩], residual := [((6234457744974383593301526046010688691569964770436321362335523037927101444845 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2455 rho) = ((1 : F) * rho 2973)

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2974) * ((1 : F) + (1 : F) * rho 2972) = ((1 : F) * rho 2973)

def relationLc2456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1802157501576363107780587177932366085339647787615629304107955687175699046021 : F), runs := [⟨(1802157501576363107780587177932366085339647787615629304107955687175699046021 : F), 2062, 5, 149⟩, ⟨(1802157501576363107780587177932366085339647787615629304107955687175699046021 : F), 2810, 8, 21⟩, ⟨(7302510782439236925545364402519464638262587435234474075310789752328078744897 : F), 2061, 5, 149⟩, ⟨(7302510782439236925545364402519464638262587435234474075310789752328078744897 : F), 2809, 8, 21⟩], residual := [((2210004004453986830947298892770857839805934564717742465599710417990307794196 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2456 rho) = ((1 : F) * rho 2975)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2976) * ((1 : F) + (-1 : F) * rho 2972) = ((7784255214841140815171698297111262339149563447458024276451721472331040687164 : F) * rho 2971 + (1 : F) * rho 2975)

def relationLc2457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 21⟩], residual := [((1 : F), 2974), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1977) * (relationLc2457 rho) = ((1 : F) * rho 2977)

def relationLc2458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 21⟩], residual := [((1 : F), 2976), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1977) * (relationLc2458 rho) = ((1 : F) * rho 2978)

def relationLc2459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 22⟩, ⟨(1 : F), 2810, 8, 22⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2459 rho) = ((1 : F) * rho 2979)

def relationLc2460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3365942066523477375214627643615779220768672575053196459320072238144942379339 : F), 2061, 5, 149⟩, ⟨(3365942066523477375214627643615779220768672575053196459320072238144942379339 : F), 2809, 8, 22⟩], residual := [((1423821851998518400139618756530695611128436944393141932155203380004394904671 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), runs := [⟨(1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), 2062, 5, 149⟩, ⟨(1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), 2810, 8, 22⟩], residual := [((637151713021132173793552022640666717427664671317187890220840102765594785537 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2979 (rho : Nat -> F) : Prop :=
    (relationLc2460 rho) * (relationLc2461 rho) = ((1 : F) * rho 2980)

def relationLc2462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), runs := [⟨(1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), 2062, 5, 149⟩, ⟨(1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), 2810, 8, 22⟩, ⟨(3115026921856910999665145848873306393635723446519920655670033148669360752953 : F), 2061, 5, 149⟩, ⟨(3115026921856910999665145848873306393635723446519920655670033148669360752953 : F), 2809, 8, 22⟩], residual := [((2124698046204810288358435996883736379891453775337828439176053410255851690560 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2462 rho) = ((1 : F) * rho 2981)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2982) * ((1 : F) + (1 : F) * rho 2980) = ((1 : F) * rho 2981)

def relationLc2463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6965283476204833718402150415282514062509309438043771043753639743268553278587 : F), runs := [⟨(5329434827571459424583679089908240137740175888634143172265200307248048486088 : F), 2061, 5, 149⟩, ⟨(5329434827571459424583679089908240137740175888634143172265200307248048486088 : F), 2809, 8, 22⟩, ⟨(6965283476204833718402150415282514062509309438043771043753639743268553278587 : F), 2062, 5, 149⟩, ⟨(6965283476204833718402150415282514062509309438043771043753639743268553278587 : F), 2810, 8, 22⟩], residual := [((6319763703223560135890388941897810151484445559816235388759180045661557548481 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2463 rho) = ((1 : F) * rho 2983)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2984) * ((1 : F) + (-1 : F) * rho 2980) = ((4594205195080447705511820372372338862502313343630213439851626861318216713407 : F) * rho 2979 + (1 : F) * rho 2983)

def relationLc2464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 22⟩], residual := [((1 : F), 2982), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1978) * (relationLc2464 rho) = ((1 : F) * rho 2985)

def relationLc2465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 22⟩], residual := [((1 : F), 2984), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1978) * (relationLc2465 rho) = ((1 : F) * rho 2986)

def relationLc2466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 23⟩, ⟨(1 : F), 2810, 8, 23⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2466 rho) = ((1 : F) * rho 2987)

def relationLc2467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1939637175554028343952877222903386474419120937240795293453235189596207815568 : F), 2061, 5, 149⟩, ⟨(1939637175554028343952877222903386474419120937240795293453235189596207815568 : F), 2809, 8, 23⟩], residual := [((3260487844049681244059064487609986020441575339499381944237059900510287835620 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), runs := [⟨(3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), 2062, 5, 149⟩, ⟨(3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), 2810, 8, 23⟩], residual := [((4774531341859335617455251261646898000864070238664000687762939088765552617430 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2987 (rho : Nat -> F) : Prop :=
    (relationLc2467 rho) * (relationLc2468 rho) = ((1 : F) * rho 2988)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
