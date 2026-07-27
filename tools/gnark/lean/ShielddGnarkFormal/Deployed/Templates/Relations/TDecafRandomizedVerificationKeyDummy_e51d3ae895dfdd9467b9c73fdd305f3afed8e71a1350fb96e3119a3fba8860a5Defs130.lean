import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs129

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * (relationLc2884 rho) = ((1 : F) * rho 3465)

def relationLc2885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 82⟩], residual := [((1 : F), 3464), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * (relationLc2885 rho) = ((1 : F) * rho 3466)

def relationLc2886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 83⟩, ⟨(1 : F), 2810, 8, 83⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2886 rho) = ((1 : F) * rho 3467)

def relationLc2887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3222337823151825026837966724671427176770153243677937432187190383381467283493 : F), 2061, 5, 149⟩, ⟨(3222337823151825026837966724671427176770153243677937432187190383381467283493 : F), 2809, 8, 83⟩], residual := [((3202800750990824004731067945534977160523087748504363744810507262593949216434 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (311399174984249285727356043299846010815117751051619267223118429205494289868 : F), runs := [⟨(311399174984249285727356043299846010815117751051619267223118429205494289868 : F), 2062, 5, 149⟩, ⟨(311399174984249285727356043299846010815117751051619267223118429205494289868 : F), 2810, 8, 83⟩], residual := [((7016040529850333745453736546212323347249913967845743269665879261850771674172 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3467 (rho : Nat -> F) : Prop :=
    (relationLc2887 rho) * (relationLc2888 rho) = ((1 : F) * rho 3468)

def relationLc2889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (311399174984249285727356043299846010815117751051619267223118429205494289868 : F), runs := [⟨(311399174984249285727356043299846010815117751051619267223118429205494289868 : F), 2062, 5, 149⟩, ⟨(311399174984249285727356043299846010815117751051619267223118429205494289868 : F), 2810, 8, 83⟩, ⟨(9452407504613351969408951188684563644785783266845458098640480222156138696 : F), 2061, 5, 149⟩, ⟨(9452407504613351969408951188684563644785783266845458098640480222156138696 : F), 2809, 8, 83⟩], residual := [((713803375196250831625080747136900490218424423647163472165336085475014016171 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2889 rho) = ((1 : F) * rho 3469)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3470) * ((1 : F) + (1 : F) * rho 3468) = ((1 : F) * rho 3469)

def relationLc2890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8133062574444121138521468895481700520560781584102444560712115026711914949173 : F), runs := [⟨(8133062574444121138521468895481700520560781584102444560712115026711914949173 : F), 2062, 5, 149⟩, ⟨(8133062574444121138521468895481700520560781584102444560712115026711914949173 : F), 2810, 8, 83⟩, ⟨(8435009341923757072279415987592861967731113551887218369836592975695253100345 : F), 2061, 5, 149⟩, ⟨(8435009341923757072279415987592861967731113551887218369836592975695253100345 : F), 2809, 8, 83⟩], residual := [((7730658374232119592623744191644646041157474911506900355769897370442395222870 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2890 rho) = ((1 : F) * rho 3471)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3472) * ((1 : F) + (-1 : F) * rho 3468) = ((320851582488862637696764994488530574459903534318464725321758909427650428564 : F) * rho 3467 + (1 : F) * rho 3471)

def relationLc2891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 83⟩], residual := [((1 : F), 3470), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (relationLc2891 rho) = ((1 : F) * rho 3473)

def relationLc2892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 83⟩], residual := [((1 : F), 3472), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (relationLc2892 rho) = ((1 : F) * rho 3474)

def relationLc2893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 84⟩, ⟨(1 : F), 2810, 8, 84⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2893 rho) = ((1 : F) * rho 3475)

def relationLc2894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5087188169684227801562250753370009099099816197018021756764974898315399945223 : F), 2061, 5, 149⟩, ⟨(5087188169684227801562250753370009099099816197018021756764974898315399945223 : F), 2809, 8, 84⟩], residual := [((7152477452365709395280634271259004537953723793054248778598096973805561633905 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), runs := [⟨(6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), 2062, 5, 149⟩, ⟨(6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), 2810, 8, 84⟩], residual := [((3623911247177762772873015558312128719028580682713025867927504034680464909656 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3475 (rho : Nat -> F) : Prop :=
    (relationLc2894 rho) * (relationLc2895 rho) = ((1 : F) * rho 3476)

def relationLc2896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), runs := [⟨(1049904119233804414728524198211337291746131104561334643241468891382768574838 : F), 2061, 5, 149⟩, ⟨(1049904119233804414728524198211337291746131104561334643241468891382768574838 : F), 2809, 8, 84⟩, ⟨(6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), 2062, 5, 149⟩, ⟨(6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), 2810, 8, 84⟩], residual := [((8316714720528696662738890725987300544313821599026025984463061742725224348499 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2896 rho) = ((1 : F) * rho 3477)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3478) * ((1 : F) + (1 : F) * rho 3476) = ((1 : F) * rho 3477)

def relationLc2897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1952369577960295759208742452510677810590264475550450903924866345728317160511 : F), runs := [⟨(1952369577960295759208742452510677810590264475550450903924866345728317160511 : F), 2062, 5, 149⟩, ⟨(1952369577960295759208742452510677810590264475550450903924866345728317160511 : F), 2810, 8, 84⟩, ⟨(7394557630194566009520300740570209239629768230592729184693764564534640664203 : F), 2061, 5, 149⟩, ⟨(7394557630194566009520300740570209239629768230592729184693764564534640664203 : F), 2809, 8, 84⟩], residual := [((127747028899673761509934212794245987062077736128037843472171713192184890542 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2897 rho) = ((1 : F) * rho 3479)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((1 : F) + (-1 : F) * rho 3476) = ((7541996290701879079768606684482206012531765964164947567251836001571860653368 : F) * rho 3475 + (1 : F) * rho 3479)

def relationLc2898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 84⟩], residual := [((1 : F), 3478), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * (relationLc2898 rho) = ((1 : F) * rho 3481)

def relationLc2899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 84⟩], residual := [((1 : F), 3480), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * (relationLc2899 rho) = ((1 : F) * rho 3482)

def relationLc2900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 85⟩, ⟨(1 : F), 2810, 8, 85⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2900 rho) = ((1 : F) * rho 3483)

def relationLc2901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6702953404390736707495812053445034260304431226855294397131934185910875232896 : F), 2061, 5, 149⟩, ⟨(6702953404390736707495812053445034260304431226855294397131934185910875232896 : F), 2809, 8, 85⟩], residual := [((2452873964476630092567945718208053877901301266033194735109226827918502899745 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), runs := [⟨(3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), 2062, 5, 149⟩, ⟨(3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), 2810, 8, 85⟩], residual := [((337404684653093188052153735361213699914087648575031015260095925233825252916 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3483 (rho : Nat -> F) : Prop :=
    (relationLc2901 rho) * (relationLc2902 rho) = ((1 : F) * rho 3484)

def relationLc2903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), runs := [⟨(2733181755245252777622839383397224758495384998898502368185983124997424595093 : F), 2061, 5, 149⟩, ⟨(2733181755245252777622839383397224758495384998898502368185983124997424595093 : F), 2809, 8, 85⟩, ⟨(3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), 2062, 5, 149⟩, ⟨(3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), 2810, 8, 85⟩], residual := [((3530396472740374106484701244731201847120038771386012175881461643037731195943 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2903 rho) = ((1 : F) * rho 3485)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3486) * ((1 : F) + (1 : F) * rho 3484) = ((1 : F) * rho 3485)

def relationLc2904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4585732060798607446920108143657828728200354002929168105811648219507354729510 : F), runs := [⟨(4585732060798607446920108143657828728200354002929168105811648219507354729510 : F), 2062, 5, 149⟩, ⟨(4585732060798607446920108143657828728200354002929168105811648219507354729510 : F), 2810, 8, 85⟩, ⟨(5711279994183117646625985555384321772880514336255561459749250330919984643948 : F), 2061, 5, 149⟩, ⟨(5711279994183117646625985555384321772880514336255561459749250330919984643948 : F), 2809, 8, 85⟩], residual := [((4914065276687996317764123694050344684255860563768051652053771812879678043098 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2904 rho) = ((1 : F) * rho 3487)

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3488) * ((1 : F) + (-1 : F) * rho 3484) = ((6591911443875015754951556178520942561670930331123398090309568361407479104624 : F) * rho 3483 + (1 : F) * rho 3487)

def relationLc2905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 85⟩], residual := [((1 : F), 3486), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * (relationLc2905 rho) = ((1 : F) * rho 3489)

def relationLc2906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 85⟩], residual := [((1 : F), 3488), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * (relationLc2906 rho) = ((1 : F) * rho 3490)

def relationLc2907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 86⟩, ⟨(1 : F), 2810, 8, 86⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2907 rho) = ((1 : F) * rho 3491)

def relationLc2908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8091864853146751529371715125668286512450304465019627868544043469098480805528 : F), 2061, 5, 149⟩, ⟨(8091864853146751529371715125668286512450304465019627868544043469098480805528 : F), 2809, 8, 86⟩], residual := [((5183033282837840927610938169579538547541169724730244457330125573237530254282 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), runs := [⟨(1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), 2062, 5, 149⟩, ⟨(1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), 2810, 8, 86⟩], residual := [((2046459351451249908923190100053112941830275410540864722482341418481537589236 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3491 (rho : Nat -> F) : Prop :=
    (relationLc2908 rho) * (relationLc2909 rho) = ((1 : F) * rho 3492)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
