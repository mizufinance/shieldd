import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 73⟩], residual := [((1 : F), 619), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75) * (relationLc395 rho) = ((1 : F) * rho 621)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 73⟩], residual := [((1 : F), 620), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75) * (relationLc396 rho) = ((1 : F) * rho 622)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4918521206950981825770953658416051531484273050008271601171788979158884211260 : F), 256, 5, 74⟩], residual := [((3308180320148395003367060148951043770841781088811203563984909743407139154718 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 257, 5, 74⟩], residual := [((4861157098069046986977954560327357125608545616175092050901033138595367913567 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow622 (rho : Nat -> F) : Prop :=
    (relationLc397 rho) * (relationLc398 rho) = ((1 : F) * rho 623)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 257, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 256, 5, 74⟩], residual := [((1147359850578098327983144469797160403851601413814635373058616603285593090816 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 624) * ((1 : F) + (1 : F) * rho 623) = (relationLc399 rho)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), runs := [⟨(3592132186427180186189109591515535823183716823436051741229810430902757201439 : F), 256, 5, 74⟩, ⟨(5650836053227966769027688234007256402331074753193105351823329560869991048101 : F), 257, 5, 74⟩], residual := [((5166411239745686018772196721073052671964494181791787460721779345450459005469 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 625) * ((1 : F) + (-1 : F) * rho 623) = (relationLc400 rho)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 74⟩], residual := [((1 : F), 624), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 76) * (relationLc401 rho) = ((1 : F) * rho 626)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 74⟩], residual := [((1 : F), 625), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 76) * (relationLc402 rho) = ((1 : F) * rho 627)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1907361968556614937174139049099394714103623578024562286894512067867392714475 : F), 256, 5, 75⟩], residual := [((7289856983649835644629295581964117196732447368103852467141767418370340514806 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 257, 5, 75⟩], residual := [((4222272296493463434832385019891670295293017199428378413167607751933780996762 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow627 (rho : Nat -> F) : Prop :=
    (relationLc403 rho) * (relationLc404 rho) = ((1 : F) * rho 628)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 257, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 256, 5, 75⟩], residual := [((7061867970989804320716922129605418672169306597822777167825470620247101327163 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 629) * ((1 : F) + (1 : F) * rho 628) = (relationLc405 rho)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), runs := [⟨(1860689148370638388771608578221990110388307111969463647559037365848775488052 : F), 256, 5, 75⟩, ⟨(5180236671188125458811733449391362170590415455683053570159179776856281599688 : F), 257, 5, 75⟩], residual := [((1409662585539875679999185781335179769950752419417490626659213358189333655745 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 630) * ((1 : F) + (-1 : F) * rho 628) = (relationLc406 rho)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 75⟩], residual := [((1 : F), 629), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77) * (relationLc407 rho) = ((1 : F) * rho 631)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 75⟩], residual := [((1 : F), 630), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77) * (relationLc408 rho) = ((1 : F) * rho 632)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5280468971504914988808723380835196575529785503777731781354790395125657121753 : F), 256, 5, 76⟩], residual := [((4556647832234439029301725765286109558286714328354525395674184535529452263012 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 257, 5, 76⟩], residual := [((3600144711730309239972511100011485673137307178139337070672969143704325140384 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow632 (rho : Nat -> F) : Prop :=
    (relationLc409 rho) * (relationLc410 rho) = ((1 : F) * rho 633)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 256, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 257, 5, 76⟩], residual := [((3411575777228854506500277280060522728888623152829134550016258885357137329728 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 634) * ((1 : F) + (1 : F) * rho 633) = (relationLc411 rho)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (742490179599478013046920666056916592979193349658922425085796642242052004458 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 257, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 256, 5, 76⟩], residual := [((5126820015755109312404685105978555226239595498435133393189054043085659429469 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 635) * ((1 : F) + (-1 : F) * rho 633) = (relationLc412 rho)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 76⟩], residual := [((1 : F), 634), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78) * (relationLc413 rho) = ((1 : F) * rho 636)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 76⟩], residual := [((1 : F), 635), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78) * (relationLc414 rho) = ((1 : F) * rho 637)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4195623733406376273792904174350645917923395446527071264275902358499815355703 : F), 256, 5, 77⟩], residual := [((6306593912445370681793633410212297214903176766492704290603546068880324800889 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 257, 5, 77⟩], residual := [((5474128706966524990545732930483669184775460332410376694904291933835612399336 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow637 (rho : Nat -> F) : Prop :=
    (relationLc415 rho) * (relationLc416 rho) = ((1 : F) * rho 638)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 257, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 256, 5, 77⟩], residual := [((1889905658107155945981201727886346476221876859972054554238849703490310933302 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 639) * ((1 : F) + (1 : F) * rho 638) = (relationLc417 rho)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 256, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 257, 5, 77⟩], residual := [((2096538376241753716798571118297109287092753035399130962288541335804405738151 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 640) * ((1 : F) + (-1 : F) * rho 638) = (relationLc418 rho)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 77⟩], residual := [((1 : F), 639), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79) * (relationLc419 rho) = ((1 : F) * rho 641)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 77⟩], residual := [((1 : F), 640), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79) * (relationLc420 rho) = ((1 : F) * rho 642)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1413911105099657135291792788556059165546956689872882273894997138390302031093 : F), 256, 5, 78⟩], residual := [((8353451365575389895420713276252437744296542059476952895769368578101377270479 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 257, 5, 78⟩], residual := [((1627794521326751861359370178242313064265856034398423533990142366307677810046 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow642 (rho : Nat -> F) : Prop :=
    (relationLc421 rho) * (relationLc422 rho) = ((1 : F) * rho 643)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 257, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 256, 5, 78⟩], residual := [((1963194852193203854203140744608170884516775783800214513275167904153514644444 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 644) * ((1 : F) + (1 : F) * rho 643) = (relationLc423 rho)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 256, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 257, 5, 78⟩], residual := [((4713702755110331543474491408240107297403414201301135916108963537789741442495 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 645) * ((1 : F) + (-1 : F) * rho 643) = (relationLc424 rho)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 78⟩], residual := [((1 : F), 644), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80) * (relationLc425 rho) = ((1 : F) * rho 646)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 78⟩], residual := [((1 : F), 645), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80) * (relationLc426 rho) = ((1 : F) * rho 647)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
