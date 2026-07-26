import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs115

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1989) * (relationLc2541 rho) = ((1 : F) * rho 3073)

def relationLc2542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 33⟩], residual := [((1 : F), 3072), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1989) * (relationLc2542 rho) = ((1 : F) * rho 3074)

def relationLc2543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 34⟩, ⟨(1 : F), 2810, 8, 34⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2543 rho) = ((1 : F) * rho 3075)

def relationLc2544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5558663237932515679092437247609335659523465777026143470603988709834183187212 : F), 2061, 5, 149⟩, ⟨(5558663237932515679092437247609335659523465777026143470603988709834183187212 : F), 2809, 8, 34⟩], residual := [((2341370113921811444658541306732284640097614745268182407182900276322865519012 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (401307078671424362360248205069763579650906351959967677236019312795256990532 : F), runs := [⟨(401307078671424362360248205069763579650906351959967677236019312795256990532 : F), 2062, 5, 149⟩, ⟨(401307078671424362360248205069763579650906351959967677236019312795256990532 : F), 2810, 8, 34⟩], residual := [((1645662026143048911676805444065887126400713304721187996347281522360788761077 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3075 (rho : Nat -> F) : Prop :=
    (relationLc2544 rho) * (relationLc2545 rho) = ((1 : F) * rho 3076)

def relationLc2546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (401307078671424362360248205069763579650906351959967677236019312795256990532 : F), runs := [⟨(401307078671424362360248205069763579650906351959967677236019312795256990532 : F), 2062, 5, 149⟩, ⟨(401307078671424362360248205069763579650906351959967677236019312795256990532 : F), 2810, 8, 34⟩, ⟨(5843920463271508342389651294042052825632291650529301404784919533789215323662 : F), 2061, 5, 149⟩, ⟨(5843920463271508342389651294042052825632291650529301404784919533789215323662 : F), 2809, 8, 34⟩], residual := [((5120937539103454819914457857244369292286294399835974332173391448207085533552 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2546 rho) = ((1 : F) * rho 3077)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3078) * ((1 : F) + (1 : F) * rho 3076) = ((1 : F) * rho 3077)

def relationLc2547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8043154670756946061888576733711782951724992983194096150699214143122152248509 : F), runs := [⟨(2600541286156862081859173644739493705743607684624762423150313922128193915379 : F), 2061, 5, 149⟩, ⟨(2600541286156862081859173644739493705743607684624762423150313922128193915379 : F), 2809, 8, 34⟩, ⟨(8043154670756946061888576733711782951724992983194096150699214143122152248509 : F), 2062, 5, 149⟩, ⟨(8043154670756946061888576733711782951724992983194096150699214143122152248509 : F), 2810, 8, 34⟩], residual := [((3323524210324915604334367081537177239089604935318089495761842007710323705489 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2547 rho) = ((1 : F) * rho 3079)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3080) * ((1 : F) + (-1 : F) * rho 3076) = ((6245227541942932704749899499111816405283198002489269082020938846584472314194 : F) * rho 3075 + (1 : F) * rho 3079)

def relationLc2548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 34⟩], residual := [((1 : F), 3078), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1990) * (relationLc2548 rho) = ((1 : F) * rho 3081)

def relationLc2549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 34⟩], residual := [((1 : F), 3080), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1990) * (relationLc2549 rho) = ((1 : F) * rho 3082)

def relationLc2550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 35⟩, ⟨(1 : F), 2810, 8, 35⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2550 rho) = ((1 : F) * rho 3083)

def relationLc2551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4879528627294238275690539772499781527567752672854439573014061782846610701472 : F), 2061, 5, 149⟩, ⟨(4879528627294238275690539772499781527567752672854439573014061782846610701472 : F), 2809, 8, 35⟩], residual := [((101145388215490346530787508378078744010713501363009604938529302121084462966 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), runs := [⟨(1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), 2062, 5, 149⟩, ⟨(1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), 2810, 8, 35⟩], residual := [((8046156656394868331008900513631503273645476196898276693087825440198814241392 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3083 (rho : Nat -> F) : Prop :=
    (relationLc2551 rho) * (relationLc2552 rho) = ((1 : F) * rho 3084)

def relationLc2553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), runs := [⟨(1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), 2062, 5, 149⟩, ⟨(1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), 2810, 8, 35⟩, ⟨(6984159211750865130105678661651374715956492648754619623222518118061746074090 : F), 2061, 5, 149⟩, ⟨(6984159211750865130105678661651374715956492648754619623222518118061746074090 : F), 2809, 8, 35⟩], residual := [((4663933031297181233029904357253716704886513111153472250123014466230610304028 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2553 rho) = ((1 : F) * rho 3085)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3086) * ((1 : F) + (1 : F) * rho 3084) = ((1 : F) * rho 3085)

def relationLc2554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7064001542620658859610161642161102018356425559694456089494606947633735564316 : F), runs := [⟨(1460302537677505294143146277130171815419406686399444204712715337855663164951 : F), 2061, 5, 149⟩, ⟨(1460302537677505294143146277130171815419406686399444204712715337855663164951 : F), 2809, 8, 35⟩, ⟨(7064001542620658859610161642161102018356425559694456089494606947633735564316 : F), 2062, 5, 149⟩, ⟨(7064001542620658859610161642161102018356425559694456089494606947633735564316 : F), 2810, 8, 35⟩], residual := [((3780528718131189191218920581527829826489386224000591577812218989686798935013 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2554 rho) = ((1 : F) * rho 3087)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3088) * ((1 : F) + (-1 : F) * rho 3084) = ((8364619418558576694744341958271819228975966424214227361663144626345419748815 : F) * rho 3083 + (1 : F) * rho 3087)

def relationLc2555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 35⟩], residual := [((1 : F), 3086), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1991) * (relationLc2555 rho) = ((1 : F) * rho 3089)

def relationLc2556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 35⟩], residual := [((1 : F), 3088), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1991) * (relationLc2556 rho) = ((1 : F) * rho 3090)

def relationLc2557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 36⟩, ⟨(1 : F), 2810, 8, 36⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2557 rho) = ((1 : F) * rho 3091)

def relationLc2558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4768430774787137461239983348768506902191005184144761558215255335008363303521 : F), 2061, 5, 149⟩, ⟨(4768430774787137461239983348768506902191005184144761558215255335008363303521 : F), 2809, 8, 36⟩], residual := [((4418611128244402514898585934103632442583042684605626918124376504577736114022 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), runs := [⟨(6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), 2062, 5, 149⟩, ⟨(6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), 2810, 8, 36⟩], residual := [((4543518876404653285116166354042357871768585069803000069050705909111993022531 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3091 (rho : Nat -> F) : Prop :=
    (relationLc2558 rho) * (relationLc2559 rho) = ((1 : F) * rho 3092)

def relationLc2560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), runs := [⟨(3632613122569427447388435477929823717695956385815714556122503646001894394180 : F), 2061, 5, 149⟩, ⟨(3632613122569427447388435477929823717695956385815714556122503646001894394180 : F), 2809, 8, 36⟩, ⟨(6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), 2062, 5, 149⟩, ⟨(6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), 2810, 8, 36⟩], residual := [((2012481559670505916081231958609727112091662939725219135190660515349465702287 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2560 rho) = ((1 : F) * rho 3093)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3094) * ((1 : F) + (1 : F) * rho 3092) = ((1 : F) * rho 3093)

def relationLc2561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1815234435112406822632973213847402026476973721085889672995782293389490138580 : F), runs := [⟨(1815234435112406822632973213847402026476973721085889672995782293389490138580 : F), 2062, 5, 149⟩, ⟨(1815234435112406822632973213847402026476973721085889672995782293389490138580 : F), 2810, 8, 36⟩, ⟨(4811848626858942976860389460851722813679942949338349271812729809915514844861 : F), 2061, 5, 149⟩, ⟨(4811848626858942976860389460851722813679942949338349271812729809915514844861 : F), 2809, 8, 36⟩], residual := [((6431980189757864508167592980171819419284236395428844692744572940567943536754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2561 rho) = ((1 : F) * rho 3095)

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3096) * ((1 : F) + (-1 : F) * rho 3092) = ((1817378687457020624755462264082421691218982664729824883126721352612404255600 : F) * rho 3091 + (1 : F) * rho 3095)

def relationLc2562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 36⟩], residual := [((1 : F), 3094), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1992) * (relationLc2562 rho) = ((1 : F) * rho 3097)

def relationLc2563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 36⟩], residual := [((1 : F), 3096), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1992) * (relationLc2563 rho) = ((1 : F) * rho 3098)

def relationLc2564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 37⟩, ⟨(1 : F), 2810, 8, 37⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2564 rho) = ((1 : F) * rho 3099)

def relationLc2565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5232456591901524675171898312727688831066952335643208979409582199111200888071 : F), 2061, 5, 149⟩, ⟨(5232456591901524675171898312727688831066952335643208979409582199111200888071 : F), 2809, 8, 37⟩], residual := [((5909232206328692192169621804612071292019481376635366714888083991012077534906 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (519459684926506647045678163036511550506178357734185422711253957475149940396 : F), runs := [⟨(519459684926506647045678163036511550506178357734185422711253957475149940396 : F), 2062, 5, 149⟩, ⟨(519459684926506647045678163036511550506178357734185422711253957475149940396 : F), 2810, 8, 37⟩], residual := [((5035188772786492644344439440090719894418338524917818077608061157396210162411 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3099 (rho : Nat -> F) : Prop :=
    (relationLc2565 rho) * (relationLc2566 rho) = ((1 : F) * rho 3100)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
