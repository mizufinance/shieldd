import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs117

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1996) * (relationLc2590 rho) = ((1 : F) * rho 3129)

def relationLc2591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 40⟩], residual := [((1 : F), 3128), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1996) * (relationLc2591 rho) = ((1 : F) * rho 3130)

def relationLc2592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 41⟩, ⟨(1 : F), 2810, 8, 41⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2592 rho) = ((1 : F) * rho 3131)

def relationLc2593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3074806479406243116681759056724828018775099874945181348407601938470416243855 : F), 2061, 5, 149⟩, ⟨(3074806479406243116681759056724828018775099874945181348407601938470416243855 : F), 2809, 8, 41⟩], residual := [((7261441290400037072825735736814214977494481938255887747644323433960601499060 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459776575051823876287356786403046195135262359226183039126648835687933207042 : F), runs := [⟨(5459776575051823876287356786403046195135262359226183039126648835687933207042 : F), 2062, 5, 149⟩, ⟨(5459776575051823876287356786403046195135262359226183039126648835687933207042 : F), 2810, 8, 41⟩], residual := [((1364466237063320993296490163865584146933087209969010022639352897183729935187 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3131 (rho : Nat -> F) : Prop :=
    (relationLc2593 rho) * (relationLc2594 rho) = ((1 : F) * rho 3132)

def relationLc2595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459776575051823876287356786403046195135262359226183039126648835687933207042 : F), runs := [⟨(5459776575051823876287356786403046195135262359226183039126648835687933207042 : F), 2062, 5, 149⟩, ⟨(5459776575051823876287356786403046195135262359226183039126648835687933207042 : F), 2810, 8, 41⟩, ⟨(7699146793911002446705708586713374371210857950641918888938113386142011075989 : F), 2061, 5, 149⟩, ⟨(7699146793911002446705708586713374371210857950641918888938113386142011075989 : F), 2809, 8, 41⟩], residual := [((3966455931952028219918215727852228466415735625603414275445513584849122584577 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2595 rho) = ((1 : F) * rho 3133)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3134) * ((1 : F) + (1 : F) * rho 3132) = ((1 : F) * rho 3133)

def relationLc2596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2984685174376546547961468152378500336240636975927880788808584620229476031999 : F), runs := [⟨(2984685174376546547961468152378500336240636975927880788808584620229476031999 : F), 2062, 5, 149⟩, ⟨(2984685174376546547961468152378500336240636975927880788808584620229476031999 : F), 2810, 8, 41⟩, ⟨(745314955517367977543116352068172160165041384512144938997120069775398163052 : F), 2061, 5, 149⟩, ⟨(745314955517367977543116352068172160165041384512144938997120069775398163052 : F), 2809, 8, 41⟩], residual := [((4478005817476342204330609210929318064960163709550649552489719871068286654464 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2596 rho) = ((1 : F) * rho 3135)

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3136) * ((1 : F) + (-1 : F) * rho 3132) = ((4714461619534455898744240434334874034970220974714038100129528765912535043990 : F) * rho 3131 + (1 : F) * rho 3135)

def relationLc2597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 41⟩], residual := [((1 : F), 3134), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1997) * (relationLc2597 rho) = ((1 : F) * rho 3137)

def relationLc2598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 41⟩], residual := [((1 : F), 3136), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1997) * (relationLc2598 rho) = ((1 : F) * rho 3138)

def relationLc2599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 42⟩, ⟨(1 : F), 2810, 8, 42⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2599 rho) = ((1 : F) * rho 3139)

def relationLc2600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(81458509301691225636504616085288741999117689499860004584895221008205595528 : F), 2061, 5, 149⟩, ⟨(81458509301691225636504616085288741999117689499860004584895221008205595528 : F), 2809, 8, 42⟩], residual := [((1051624727723807996568357550045837339349544629352932548414659430336634672760 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), runs := [⟨(2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), 2062, 5, 149⟩, ⟨(2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), 2810, 8, 42⟩], residual := [((3661380297082212951476710236660966730558731200824120496702917408345797680542 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3139 (rho : Nat -> F) : Prop :=
    (relationLc2600 rho) * (relationLc2601 rho) = ((1 : F) * rho 3140)

def relationLc2602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), runs := [⟨(2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), 2062, 5, 149⟩, ⟨(2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), 2810, 8, 42⟩, ⟨(6577259170775987189501198803564734947722439673388617029836540621315680948381 : F), 2061, 5, 149⟩, ⟨(6577259170775987189501198803564734947722439673388617029836540621315680948381 : F), 2809, 8, 42⟩], residual := [((8424840888195641290078685097049513942344193634366615596123656391567777812286 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2602 rho) = ((1 : F) * rho 3141)

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3142) * ((1 : F) + (1 : F) * rho 3140) = ((1 : F) * rho 3141)

def relationLc2603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075369301403859701185756894213838293211113098326466417731651883476583506883 : F), runs := [⟨(1867202578652383234747626135216811583653459661765446798098692834601728290660 : F), 2061, 5, 149⟩, ⟨(1867202578652383234747626135216811583653459661765446798098692834601728290660 : F), 2809, 8, 42⟩, ⟨(6075369301403859701185756894213838293211113098326466417731651883476583506883 : F), 2062, 5, 149⟩, ⟨(6075369301403859701185756894213838293211113098326466417731651883476583506883 : F), 2810, 8, 42⟩], residual := [((19620861232729134170139841732032589031705700787448231811577064349631426755 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2603 rho) = ((1 : F) * rho 3143)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3144) * ((1 : F) + (-1 : F) * rho 3140) = ((501889869372127488315441909350896654511326575062150612104888737839097441498 : F) * rho 3139 + (1 : F) * rho 3143)

def relationLc2604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 42⟩], residual := [((1 : F), 3142), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1998) * (relationLc2604 rho) = ((1 : F) * rho 3145)

def relationLc2605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 42⟩], residual := [((1 : F), 3144), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1998) * (relationLc2605 rho) = ((1 : F) * rho 3146)

def relationLc2606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 43⟩, ⟨(1 : F), 2810, 8, 43⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2606 rho) = ((1 : F) * rho 3147)

def relationLc2607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7882950453032646771230046134550116284898253460684190996110334416969682605090 : F), 2061, 5, 149⟩, ⟨(7882950453032646771230046134550116284898253460684190996110334416969682605090 : F), 2809, 8, 43⟩], residual := [((1348957722018839877246664846297409567079768698538167297787547392482862052295 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), runs := [⟨(4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), 2062, 5, 149⟩, ⟨(4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), 2810, 8, 43⟩], residual := [((6733657549797827815822559986917006574523566983426091644258847440846821914421 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3147 (rho : Nat -> F) : Prop :=
    (relationLc2607 rho) * (relationLc2608 rho) = ((1 : F) * rho 3148)

def relationLc2609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), runs := [⟨(234615450399068981126740323089512902479012875961096156476244525408180949833 : F), 2061, 5, 149⟩, ⟨(234615450399068981126740323089512902479012875961096156476244525408180949833 : F), 2809, 8, 43⟩, ⟨(4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), 2062, 5, 149⟩, ⟨(4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), 2810, 8, 43⟩], residual := [((2518861336485691516620315252446210560042343405566512006645956178307606333348 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2609 rho) = ((1 : F) * rho 3149)

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3150) * ((1 : F) + (1 : F) * rho 3148) = ((1 : F) * rho 3149)

def relationLc2610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3719520532783887328165980660767233954532103419340135509566303921573335035272 : F), runs := [⟨(3719520532783887328165980660767233954532103419340135509566303921573335035272 : F), 2062, 5, 149⟩, ⟨(3719520532783887328165980660767233954532103419340135509566303921573335035272 : F), 2810, 8, 43⟩, ⟨(8209846299029301443122084615692033628896886459192967671458988930509228289208 : F), 2061, 5, 149⟩, ⟨(8209846299029301443122084615692033628896886459192967671458988930509228289208 : F), 2809, 8, 43⟩], residual := [((5925600412942678907628509686335335971333555929587551821289277277609802905693 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2610 rho) = ((1 : F) * rho 3151)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3152) * ((1 : F) + (-1 : F) * rho 3148) = ((4959556667043552077209584601103825479322808791775024474845174059752255153602 : F) * rho 3147 + (1 : F) * rho 3151)

def relationLc2611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 43⟩], residual := [((1 : F), 3150), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1999) * (relationLc2611 rho) = ((1 : F) * rho 3153)

def relationLc2612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 43⟩], residual := [((1 : F), 3152), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1999) * (relationLc2612 rho) = ((1 : F) * rho 3154)

def relationLc2613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 44⟩, ⟨(1 : F), 2810, 8, 44⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2613 rho) = ((1 : F) * rho 3155)

def relationLc2614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(665401531204958410359485285224444089030571492870617266963020838851334996806 : F), 2061, 5, 149⟩, ⟨(665401531204958410359485285224444089030571492870617266963020838851334996806 : F), 2809, 8, 44⟩], residual := [((7203158281258429186792596937609427838114052691230851337540150899267240447593 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), runs := [⟨(7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), 2062, 5, 149⟩, ⟨(7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), 2810, 8, 44⟩], residual := [((129542748202106780674562906588490057102641958601250660787290847505537091807 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3155 (rho : Nat -> F) : Prop :=
    (relationLc2614 rho) * (relationLc2615 rho) = ((1 : F) * rho 3156)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
