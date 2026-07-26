import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs131

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (relationLc2933 rho) = ((1 : F) * rho 3521)

def relationLc2934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 89⟩], residual := [((1 : F), 3520), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (relationLc2934 rho) = ((1 : F) * rho 3522)

def relationLc2935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 90⟩, ⟨(1 : F), 2810, 8, 90⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2935 rho) = ((1 : F) * rho 3523)

def relationLc2936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6772296389239986671378956859861500069359331596161656606912733376557475308717 : F), 2061, 5, 149⟩, ⟨(6772296389239986671378956859861500069359331596161656606912733376557475308717 : F), 2809, 8, 90⟩], residual := [((7796826063199595450469893030090568295522849956465905175758695894368515095753 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2038095029705799791750551460424790418921850671190595035485614575563709137534 : F), runs := [⟨(2038095029705799791750551460424790418921850671190595035485614575563709137534 : F), 2062, 5, 149⟩, ⟨(2038095029705799791750551460424790418921850671190595035485614575563709137534 : F), 2810, 8, 90⟩], residual := [((1527594709452849466540517727286313016362911606278171072498883692955816107282 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3523 (rho : Nat -> F) : Prop :=
    (relationLc2936 rho) * (relationLc2937 rho) = ((1 : F) * rho 3524)

def relationLc2938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2038095029705799791750551460424790418921850671190595035485614575563709137534 : F), runs := [⟨(2038095029705799791750551460424790418921850671190595035485614575563709137534 : F), 2062, 5, 149⟩, ⟨(2038095029705799791750551460424790418921850671190595035485614575563709137534 : F), 2810, 8, 90⟩, ⟨(2587851510960106795465588224175038742665364520560632471846078675968275743602 : F), 2061, 5, 149⟩, ⟨(2587851510960106795465588224175038742665364520560632471846078675968275743602 : F), 2809, 8, 90⟩], residual := [((6365964670583031667600079805115563618009991612823353570845031516402187010505 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2938 rho) = ((1 : F) * rho 3525)

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3526) * ((1 : F) + (1 : F) * rho 3524) = ((1 : F) * rho 3525)

def relationLc2939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6406366719722570632498273478356756112454048663963468792449618880353700101507 : F), runs := [⟨(5856610238468263628783236714606507788710534814593431356089154779949133495439 : F), 2061, 5, 149⟩, ⟨(5856610238468263628783236714606507788710534814593431356089154779949133495439 : F), 2809, 8, 90⟩, ⟨(6406366719722570632498273478356756112454048663963468792449618880353700101507 : F), 2062, 5, 149⟩, ⟨(6406366719722570632498273478356756112454048663963468792449618880353700101507 : F), 2810, 8, 90⟩], residual := [((2078497078845338756648745133665982913365907722330710257090201939515222228536 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2939 rho) = ((1 : F) * rho 3527)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3528) * ((1 : F) + (-1 : F) * rho 3524) = ((4625946540665906587216139684599829161587215191751227507331693251531984881136 : F) * rho 3523 + (1 : F) * rho 3527)

def relationLc2940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 90⟩], residual := [((1 : F), 3526), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * (relationLc2940 rho) = ((1 : F) * rho 3529)

def relationLc2941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 90⟩], residual := [((1 : F), 3528), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * (relationLc2941 rho) = ((1 : F) * rho 3530)

def relationLc2942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 91⟩, ⟨(1 : F), 2810, 8, 91⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2942 rho) = ((1 : F) * rho 3531)

def relationLc2943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1956560981182669050740635602451336507209547751643045548588066977890755308424 : F), 2061, 5, 149⟩, ⟨(1956560981182669050740635602451336507209547751643045548588066977890755308424 : F), 2809, 8, 91⟩], residual := [((5802932167050963573457850833071607981893881027396067795802331758442319830161 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), runs := [⟨(1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), 2062, 5, 149⟩, ⟨(1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), 2810, 8, 91⟩], residual := [((5084973934258372237038475226326269953298064121184732937443940636904285701209 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3531 (rho : Nat -> F) : Prop :=
    (relationLc2943 rho) * (relationLc2944 rho) = ((1 : F) * rho 3532)

def relationLc2945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), runs := [⟨(1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), 2062, 5, 149⟩, ⟨(1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), 2810, 8, 91⟩, ⟨(1429022348539913921165802773690771802065638566042823456346736962248158515875 : F), 2061, 5, 149⟩, ⟨(1429022348539913921165802773690771802065638566042823456346736962248158515875 : F), 2809, 8, 91⟩], residual := [((3247617794252805611556095564331835656818935395099338057938617471649332718932 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2945 rho) = ((1 : F) * rho 3533)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3534) * ((1 : F) + (1 : F) * rho 3532) = ((1 : F) * rho 3533)

def relationLc2946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7402294158217157799193124423861045517837113300167523480514342449062628779198 : F), runs := [⟨(7015439400888456503083022165090774729310260769111240371588496493669250723166 : F), 2061, 5, 149⟩, ⟨(7015439400888456503083022165090774729310260769111240371588496493669250723166 : F), 2809, 8, 91⟩, ⟨(7402294158217157799193124423861045517837113300167523480514342449062628779198 : F), 2062, 5, 149⟩, ⟨(7402294158217157799193124423861045517837113300167523480514342449062628779198 : F), 2810, 8, 91⟩], residual := [((5196843955175564812692729374449710874556963940054725769996615984268076520109 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2946 rho) = ((1 : F) * rho 3535)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3536) * ((1 : F) + (-1 : F) * rho 3532) = ((2471189939751126546221503288611272815604424601029363803767627969102938975718 : F) * rho 3531 + (1 : F) * rho 3535)

def relationLc2947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 91⟩], residual := [((1 : F), 3534), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * (relationLc2947 rho) = ((1 : F) * rho 3537)

def relationLc2948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 91⟩], residual := [((1 : F), 3536), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * (relationLc2948 rho) = ((1 : F) * rho 3538)

def relationLc2949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 92⟩, ⟨(1 : F), 2810, 8, 92⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2949 rho) = ((1 : F) * rho 3539)

def relationLc2950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4577919756531272352425690818081278835207495153207440076621707172903191132847 : F), 2061, 5, 149⟩, ⟨(4577919756531272352425690818081278835207495153207440076621707172903191132847 : F), 2809, 8, 92⟩], residual := [((8220088989769612254898518930562028505285603666816911535389190907107422041386 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), runs := [⟨(1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), 2062, 5, 149⟩, ⟨(1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), 2810, 8, 92⟩], residual := [((8252697770305461570771050865159685789044519724630267641297089757715806104875 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3539 (rho : Nat -> F) : Prop :=
    (relationLc2950 rho) * (relationLc2951 rho) = ((1 : F) * rho 3540)

def relationLc2952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), runs := [⟨(1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), 2062, 5, 149⟩, ⟨(1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), 2810, 8, 92⟩, ⟨(5910681912627641956045826418868676149011538791681197739931051053618770712501 : F), 2061, 5, 149⟩, ⟨(5910681912627641956045826418868676149011538791681197739931051053618770712501 : F), 2809, 8, 92⟩], residual := [((3936751622050889345279645366488077923281368824548767574225078338157616812496 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2952 rho) = ((1 : F) * rho 3541)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3542) * ((1 : F) + (1 : F) * rho 3540) = ((1 : F) * rho 3541)

def relationLc2953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6611683189708199993770285573508985944996705178969336833025065509705786523719 : F), runs := [⟨(2533779836800728468202998519912870382364360543472866088004182402298638526540 : F), 2061, 5, 149⟩, ⟨(2533779836800728468202998519912870382364360543472866088004182402298638526540 : F), 2809, 8, 92⟩, ⟨(6611683189708199993770285573508985944996705178969336833025065509705786523719 : F), 2062, 5, 149⟩, ⟨(6611683189708199993770285573508985944996705178969336833025065509705786523719 : F), 2810, 8, 92⟩], residual := [((4507710127377481078969179572293468608094530510605296253710155117759792426545 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2953 rho) = ((1 : F) * rho 3543)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3544) * ((1 : F) + (-1 : F) * rho 3540) = ((7743460472347812386524365784141236735390732947865924734841218999830393427823 : F) * rho 3539 + (1 : F) * rho 3543)

def relationLc2954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 92⟩], residual := [((1 : F), 3542), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (relationLc2954 rho) = ((1 : F) * rho 3545)

def relationLc2955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 92⟩], residual := [((1 : F), 3544), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (relationLc2955 rho) = ((1 : F) * rho 3546)

def relationLc2956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 93⟩, ⟨(1 : F), 2810, 8, 93⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2956 rho) = ((1 : F) * rho 3547)

def relationLc2957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5101607293481150265259843140857517366059282301462055240221117720675950563116 : F), 2061, 5, 149⟩, ⟨(5101607293481150265259843140857517366059282301462055240221117720675950563116 : F), 2809, 8, 93⟩], residual := [((6746698226507997162075746128145595460723895925172237235437716251178243576708 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), runs := [⟨(7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), 2062, 5, 149⟩, ⟨(7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), 2810, 8, 93⟩], residual := [((3390762984871091373183635872182357731676485092669673645809438422516163918512 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3547 (rho : Nat -> F) : Prop :=
    (relationLc2957 rho) * (relationLc2958 rho) = ((1 : F) * rho 3548)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
