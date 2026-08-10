import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs19

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationRow623 (rho : Nat -> F) : Prop :=
    (relationLc349 rho) * (relationLc350 rho) = ((1 : F) * rho 624)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 258, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 257, 5, 74⟩], residual := [((1147359850578098327983144469797160403851601413814635373058616603285593090816 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 625) * ((1 : F) + (1 : F) * rho 624) = (relationLc351 rho)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 257, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 258, 5, 74⟩], residual := [((5166411239745686018772196721073052671964494181791787460721779345450459005469 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 626) * ((1 : F) + (-1 : F) * rho 624) = (relationLc352 rho)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 74⟩], residual := [((1 : F), 625), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77) * (relationLc353 rho) = ((1 : F) * rho 627)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 74⟩], residual := [((1 : F), 626), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77) * (relationLc354 rho) = ((1 : F) * rho 628)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1907361968556614937174139049099394714103623578024562286894512067867392714475 : F), 257, 5, 75⟩], residual := [((7289856983649835644629295581964117196732447368103852467141767418370340514806 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 258, 5, 75⟩], residual := [((4222272296493463434832385019891670295293017199428378413167607751933780996762 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow628 (rho : Nat -> F) : Prop :=
    (relationLc355 rho) * (relationLc356 rho) = ((1 : F) * rho 629)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 258, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 257, 5, 75⟩], residual := [((7061867970989804320716922129605418672169306597822777167825470620247101327163 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 630) * ((1 : F) + (1 : F) * rho 629) = (relationLc357 rho)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 257, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 258, 5, 75⟩], residual := [((1409662585539875679999185781335179769950752419417490626659213358189333655745 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 631) * ((1 : F) + (-1 : F) * rho 629) = (relationLc358 rho)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 75⟩], residual := [((1 : F), 630), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78) * (relationLc359 rho) = ((1 : F) * rho 632)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 75⟩], residual := [((1 : F), 631), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78) * (relationLc360 rho) = ((1 : F) * rho 633)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5280468971504914988808723380835196575529785503777731781354790395125657121753 : F), 257, 5, 76⟩], residual := [((4556647832234439029301725765286109558286714328354525395674184535529452263012 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 258, 5, 76⟩], residual := [((3600144711730309239972511100011485673137307178139337070672969143704325140384 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow633 (rho : Nat -> F) : Prop :=
    (relationLc361 rho) * (relationLc362 rho) = ((1 : F) * rho 634)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 257, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 258, 5, 76⟩], residual := [((3411575777228854506500277280060522728888623152829134550016258885357137329728 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 635) * ((1 : F) + (1 : F) * rho 634) = (relationLc363 rho)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (742490179599478013046920666056916592979193349658922425085796642242052004458 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 258, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 257, 5, 76⟩], residual := [((5126820015755109312404685105978555226239595498435133393189054043085659429469 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 636) * ((1 : F) + (-1 : F) * rho 634) = (relationLc364 rho)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 76⟩], residual := [((1 : F), 635), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79) * (relationLc365 rho) = ((1 : F) * rho 637)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 76⟩], residual := [((1 : F), 636), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79) * (relationLc366 rho) = ((1 : F) * rho 638)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4195623733406376273792904174350645917923395446527071264275902358499815355703 : F), 257, 5, 77⟩], residual := [((6306593912445370681793633410212297214903176766492704290603546068880324800889 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 258, 5, 77⟩], residual := [((5474128706966524990545732930483669184775460332410376694904291933835612399336 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow638 (rho : Nat -> F) : Prop :=
    (relationLc367 rho) * (relationLc368 rho) = ((1 : F) * rho 639)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 258, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 257, 5, 77⟩], residual := [((1889905658107155945981201727886346476221876859972054554238849703490310933302 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 640) * ((1 : F) + (1 : F) * rho 639) = (relationLc369 rho)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 257, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 258, 5, 77⟩], residual := [((2096538376241753716798571118297109287092753035399130962288541335804405738151 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 641) * ((1 : F) + (-1 : F) * rho 639) = (relationLc370 rho)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 77⟩], residual := [((1 : F), 640), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80) * (relationLc371 rho) = ((1 : F) * rho 642)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 77⟩], residual := [((1 : F), 641), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80) * (relationLc372 rho) = ((1 : F) * rho 643)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1413911105099657135291792788556059165546956689872882273894997138390302031093 : F), 257, 5, 78⟩], residual := [((8353451365575389895420713276252437744296542059476952895769368578101377270479 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 258, 5, 78⟩], residual := [((1627794521326751861359370178242313064265856034398423533990142366307677810046 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow643 (rho : Nat -> F) : Prop :=
    (relationLc373 rho) * (relationLc374 rho) = ((1 : F) * rho 644)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 258, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 257, 5, 78⟩], residual := [((1963194852193203854203140744608170884516775783800214513275167904153514644444 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 645) * ((1 : F) + (1 : F) * rho 644) = (relationLc375 rho)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 257, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 258, 5, 78⟩], residual := [((4713702755110331543474491408240107297403414201301135916108963537789741442495 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 646) * ((1 : F) + (-1 : F) * rho 644) = (relationLc376 rho)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 78⟩], residual := [((1 : F), 645), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81) * (relationLc377 rho) = ((1 : F) * rho 647)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 78⟩], residual := [((1 : F), 646), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81) * (relationLc378 rho) = ((1 : F) * rho 648)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(435443019248027373572209328981659234170213225482121712799853667443266468176 : F), 257, 5, 79⟩], residual := [((3240388181392711470302623400092573262502763043986311877675923455854650277543 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 258, 5, 79⟩], residual := [((8359927174140099073163808715029987177202746736101787838973659665157973465362 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow648 (rho : Nat -> F) : Prop :=
    (relationLc379 rho) * (relationLc380 rho) = ((1 : F) * rho 649)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 257, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 258, 5, 79⟩], residual := [((1255464619070411914285884063926842950292772109515344959551717420376047071663 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 650) * ((1 : F) + (1 : F) * rho 649) = (relationLc381 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
