import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs127

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * (relationLc2835 rho) = ((1 : F) * rho 3409)

def relationLc2836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 75⟩], residual := [((1 : F), 3408), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * (relationLc2836 rho) = ((1 : F) * rho 3410)

def relationLc2837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 76⟩, ⟨(1 : F), 2810, 8, 76⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2837 rho) = ((1 : F) * rho 3411)

def relationLc2838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(230866951924261299928005816650156310418793511476899823886516576488765052397 : F), 2061, 5, 149⟩, ⟨(230866951924261299928005816650156310418793511476899823886516576488765052397 : F), 2809, 8, 76⟩], residual := [((7313516269647177659283131405818770766015456623013382751654818648438686782681 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1256597705043208047069837330755860793551934832130546170224321504783783074734 : F), runs := [⟨(1256597705043208047069837330755860793551934832130546170224321504783783074734 : F), 2062, 5, 149⟩, ⟨(1256597705043208047069837330755860793551934832130546170224321504783783074734 : F), 2810, 8, 76⟩], residual := [((3265115896146439185665706020631741552756968807676274568772232573261777764377 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3411 (rho : Nat -> F) : Prop :=
    (relationLc2838 rho) * (relationLc2839 rho) = ((1 : F) * rho 3412)

def relationLc2840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1256597705043208047069837330755860793551934832130546170224321504783783074734 : F), runs := [⟨(1256597705043208047069837330755860793551934832130546170224321504783783074734 : F), 2062, 5, 149⟩, ⟨(1256597705043208047069837330755860793551934832130546170224321504783783074734 : F), 2810, 8, 76⟩, ⟨(4785550937429094481169783615031664289316768770372470762412779276102976955409 : F), 2061, 5, 149⟩, ⟨(4785550937429094481169783615031664289316768770372470762412779276102976955409 : F), 2809, 8, 76⟩], residual := [((173190824862904302519672893910340281831081648658553524491316116111121246391 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2840 rho) = ((1 : F) * rho 3413)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3414) * ((1 : F) + (1 : F) * rho 3412) = ((1 : F) * rho 3413)

def relationLc2841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7187864044385162377178987608025685737823964503023517657710911951133626164307 : F), runs := [⟨(3658910811999275943079041323749882242059130564781593065522454179814432283632 : F), 2061, 5, 149⟩, ⟨(3658910811999275943079041323749882242059130564781593065522454179814432283632 : F), 2809, 8, 76⟩, ⟨(7187864044385162377178987608025685737823964503023517657710911951133626164307 : F), 2062, 5, 149⟩, ⟨(7187864044385162377178987608025685737823964503023517657710911951133626164307 : F), 2810, 8, 76⟩], residual := [((8271270924565466121729152044871206249544817686495510303443917339806287992650 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2841 rho) = ((1 : F) * rho 3415)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3416) * ((1 : F) + (-1 : F) * rho 3412) = ((6042148642472302528239620945787525082868703602503016932637100780886760030143 : F) * rho 3411 + (1 : F) * rho 3415)

def relationLc2842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 76⟩], residual := [((1 : F), 3414), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2032) * (relationLc2842 rho) = ((1 : F) * rho 3417)

def relationLc2843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 76⟩], residual := [((1 : F), 3416), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2032) * (relationLc2843 rho) = ((1 : F) * rho 3418)

def relationLc2844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 77⟩, ⟨(1 : F), 2810, 8, 77⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2844 rho) = ((1 : F) * rho 3419)

def relationLc2845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6835153613359202620753536692428562756593607850803641642315853655957739349557 : F), 2061, 5, 149⟩, ⟨(6835153613359202620753536692428562756593607850803641642315853655957739349557 : F), 2809, 8, 77⟩], residual := [((2017182082067414761062071606460734901159165964626278109605283782069263953972 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), runs := [⟨(4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), 2062, 5, 149⟩, ⟨(4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), 2810, 8, 77⟩], residual := [((702028760441283555932115401866662986118340125936855939554033690217644916028 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3419 (rho : Nat -> F) : Prop :=
    (relationLc2845 rho) * (relationLc2846 rho) = ((1 : F) * rho 3420)

def relationLc2847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), runs := [⟨(4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), 2062, 5, 149⟩, ⟨(4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), 2810, 8, 77⟩, ⟨(670328206463667571670381561423772983699249767941947996199548708911028979636 : F), 2061, 5, 149⟩, ⟨(670328206463667571670381561423772983699249767941947996199548708911028979636 : F), 2809, 8, 77⟩], residual := [((5759310616382359197185735522973011350951230249491416595907705522570065497749 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2847 rho) = ((1 : F) * rho 3421)

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3422) * ((1 : F) + (1 : F) * rho 3420) = ((1 : F) * rho 3421)

def relationLc2848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4320003985013124927992911380505465009442482149680560717229276766668840394965 : F), runs := [⟨(4320003985013124927992911380505465009442482149680560717229276766668840394965 : F), 2062, 5, 149⟩, ⟨(4320003985013124927992911380505465009442482149680560717229276766668840394965 : F), 2810, 8, 77⟩, ⟨(7774133542964702852578443377357773547676649567212115831735684747006380259405 : F), 2061, 5, 149⟩, ⟨(7774133542964702852578443377357773547676649567212115831735684747006380259405 : F), 2809, 8, 77⟩], residual := [((2685151133046011227063089415808535180424669085662647232027527933347343741292 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2848 rho) = ((1 : F) * rho 3423)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3424) * ((1 : F) + (-1 : F) * rho 3420) = ((4794785970878913067926295119699854505632666953415451106905505398159597823712 : F) * rho 3419 + (1 : F) * rho 3423)

def relationLc2849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 77⟩], residual := [((1 : F), 3422), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2033) * (relationLc2849 rho) = ((1 : F) * rho 3425)

def relationLc2850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 77⟩], residual := [((1 : F), 3424), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2033) * (relationLc2850 rho) = ((1 : F) * rho 3426)

def relationLc2851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 78⟩, ⟨(1 : F), 2810, 8, 78⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2851 rho) = ((1 : F) * rho 3427)

def relationLc2852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4524962738914307807798123734612000272059917171761359026606240250240415183856 : F), 2061, 5, 149⟩, ⟨(4524962738914307807798123734612000272059917171761359026606240250240415183856 : F), 2809, 8, 78⟩], residual := [((995428320130555585130336813757345081731043089115607568591490337949712775920 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), runs := [⟨(6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), 2062, 5, 149⟩, ⟨(6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), 2810, 8, 78⟩], residual := [((5046918817069920361234594595240506121883550357632552607367130359059160801262 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3427 (rho : Nat -> F) : Prop :=
    (relationLc2852 rho) * (relationLc2853 rho) = ((1 : F) * rho 3428)

def relationLc2854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), runs := [⟨(3168520398821998675432544448650812386733185655048432861991799320028025515729 : F), 2061, 5, 149⟩, ⟨(3168520398821998675432544448650812386733185655048432861991799320028025515729 : F), 2809, 8, 78⟩, ⟨(6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), 2062, 5, 149⟩, ⟨(6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), 2810, 8, 78⟩], residual := [((4242215223718301650013630925741887103030677810318664896385086087306011463934 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2854 rho) = ((1 : F) * rho 3429)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3430) * ((1 : F) + (1 : F) * rho 3428) = ((1 : F) * rho 3429)

def relationLc2855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1604479472230169430343625741887392763171115848363254801073221171713260186315 : F), runs := [⟨(1604479472230169430343625741887392763171115848363254801073221171713260186315 : F), 2062, 5, 149⟩, ⟨(1604479472230169430343625741887392763171115848363254801073221171713260186315 : F), 2810, 8, 78⟩, ⟨(5275941350606371748816280490130734144642713680105630965943434135889383723312 : F), 2061, 5, 149⟩, ⟨(5275941350606371748816280490130734144642713680105630965943434135889383723312 : F), 2809, 8, 78⟩], residual := [((4202246525710068774235194013039659428345221524835398931550147368611397775107 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2855 rho) = ((1 : F) * rho 3431)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3432) * ((1 : F) + (-1 : F) * rho 3428) = ((1564040926591829245088918706763419623562069806685178060918578148314765329414 : F) * rho 3427 + (1 : F) * rho 3431)

def relationLc2856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 78⟩], residual := [((1 : F), 3430), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2034) * (relationLc2856 rho) = ((1 : F) * rho 3433)

def relationLc2857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 78⟩], residual := [((1 : F), 3432), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2034) * (relationLc2857 rho) = ((1 : F) * rho 3434)

def relationLc2858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 79⟩, ⟨(1 : F), 2810, 8, 79⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2858 rho) = ((1 : F) * rho 3435)

def relationLc2859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8005795343449612145036117745829407939494616795117852748437620276172049747902 : F), 2061, 5, 149⟩, ⟨(8005795343449612145036117745829407939494616795117852748437620276172049747902 : F), 2809, 8, 79⟩], residual := [((4802774979772271385970034729279180096321539640809073194439602886238651987693 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (615972545279460132803560543708205878635144221637755246156538630440780593542 : F), runs := [⟨(615972545279460132803560543708205878635144221637755246156538630440780593542 : F), 2062, 5, 149⟩, ⟨(615972545279460132803560543708205878635144221637755246156538630440780593542 : F), 2810, 8, 79⟩], residual := [((6474623323290704998664558489372220939430902356818200455473100300981788630784 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    (relationLc2859 rho) * (relationLc2860 rho) = ((1 : F) * rho 3436)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
