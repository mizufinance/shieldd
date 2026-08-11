import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs54

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationLc1209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7183198159204444928071777019700418892574169328708792589478528034792332693640 : F), runs := [⟨(5005527134009861368133930939323201340837285544488036868858847359127424633297 : F), 256, 5, 149⟩, ⟨(5005527134009861368133930939323201340837285544488036868858847359127424633297 : F), 1004, 8, 58⟩, ⟨(7183198159204444928071777019700418892574169328708792589478528034792332693640 : F), 257, 5, 149⟩, ⟨(7183198159204444928071777019700418892574169328708792589478528034792332693640 : F), 1005, 8, 58⟩], residual := [((1551461299427550802485034771555774694507137359673016478154036506165064206484 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1209 rho) = ((1 : F) * rho 1466)

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1467) * ((1 : F) + (-1 : F) * rho 1463) = ((4700198205642434552291941918539472829340343797111298197533091517915061151145 : F) * rho 1462 + (1 : F) * rho 1466)

def relationLc1210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 58⟩], residual := [((1 : F), 1465), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * (relationLc1210 rho) = ((1 : F) * rho 1468)

def relationLc1211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 58⟩], residual := [((1 : F), 1467), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * (relationLc1211 rho) = ((1 : F) * rho 1469)

def relationLc1212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 59⟩, ⟨(1 : F), 1005, 8, 59⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1469 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1212 rho) = ((1 : F) * rho 1470)

def relationLc1213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1287783588031834503867680794883494161905915226350935837697378655588185476782 : F), 256, 5, 149⟩, ⟨(1287783588031834503867680794883494161905915226350935837697378655588185476782 : F), 1004, 8, 59⟩], residual := [((7313171147760440668576192520514480090443359023526454996653178547585418396775 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3784676001296899466897935170773209098273264336542008530461130934325590249494 : F), runs := [⟨(3784676001296899466897935170773209098273264336542008530461130934325590249494 : F), 257, 5, 149⟩, ⟨(3784676001296899466897935170773209098273264336542008530461130934325590249494 : F), 1005, 8, 59⟩], residual := [((2997961533863059133012034044481114141522043634312603237040104578955774474167 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1470 (rho : Nat -> F) : Prop :=
    (relationLc1213 rho) * (relationLc1214 rho) = ((1 : F) * rho 1471)

def relationLc1215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3784676001296899466897935170773209098273264336542008530461130934325590249494 : F), runs := [⟨(3784676001296899466897935170773209098273264336542008530461130934325590249494 : F), 257, 5, 149⟩, ⟨(3784676001296899466897935170773209098273264336542008530461130934325590249494 : F), 1005, 8, 59⟩, ⟨(3849490768802018506684706925354873574268957067108075745416919512563343498059 : F), 256, 5, 149⟩, ⟨(3849490768802018506684706925354873574268957067108075745416919512563343498059 : F), 1004, 8, 59⟩], residual := [((277805104602724027897906504642414425709503881443840670534886370575777393588 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1471 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1215 rho) = ((1 : F) * rho 1472)

def relationRow1472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1473) * ((1 : F) + (1 : F) * rho 1471) = ((1 : F) * rho 1472)

def relationLc1216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659785748131470957350889768008337433102634998612055297474102521591818989547 : F), runs := [⟨(4594970980626351917564118013426672957106942268045988082518313943354065740982 : F), 256, 5, 149⟩, ⟨(4594970980626351917564118013426672957106942268045988082518313943354065740982 : F), 1004, 8, 59⟩, ⟨(4659785748131470957350889768008337433102634998612055297474102521591818989547 : F), 257, 5, 149⟩, ⟨(4659785748131470957350889768008337433102634998612055297474102521591818989547 : F), 1005, 8, 59⟩], residual := [((8166656644825646396350918434139132105666395453710223157400347085341631845453 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1473 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1216 rho) = ((1 : F) * rho 1474)

def relationRow1474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1475) * ((1 : F) + (-1 : F) * rho 1471) = ((7634166770098917973582642096128082672542221403650084275878050446888933747553 : F) * rho 1470 + (1 : F) * rho 1474)

def relationLc1217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 59⟩], residual := [((1 : F), 1473), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 210) * (relationLc1217 rho) = ((1 : F) * rho 1476)

def relationLc1218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 59⟩], residual := [((1 : F), 1475), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 210) * (relationLc1218 rho) = ((1 : F) * rho 1477)

def relationLc1219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 60⟩, ⟨(1 : F), 1005, 8, 60⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1477 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1219 rho) = ((1 : F) * rho 1478)

def relationLc1220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6473138200877952229647344942848384561493038639920753725556359415039909781089 : F), 256, 5, 149⟩, ⟨(6473138200877952229647344942848384561493038639920753725556359415039909781089 : F), 1004, 8, 60⟩], residual := [((1572966202733867531866893324526713710621158187380404321611807179386972464120 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6676673304779201579792702677689318888868515796427600730605787578664193959720 : F), runs := [⟨(6676673304779201579792702677689318888868515796427600730605787578664193959720 : F), 257, 5, 149⟩, ⟨(6676673304779201579792702677689318888868515796427600730605787578664193959720 : F), 1005, 8, 60⟩], residual := [((7617743523713161405130236323424275117965454145619594398246121523625471376046 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1478 (rho : Nat -> F) : Prop :=
    (relationLc1220 rho) * (relationLc1221 rho) = ((1 : F) * rho 1479)

def relationLc1222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6676673304779201579792702677689318888868515796427600730605787578664193959720 : F), runs := [⟨(2928773449140146238470098330303584112185388825735261695323980730804557227096 : F), 256, 5, 149⟩, ⟨(2928773449140146238470098330303584112185388825735261695323980730804557227096 : F), 1004, 8, 60⟩, ⟨(6676673304779201579792702677689318888868515796427600730605787578664193959720 : F), 257, 5, 149⟩, ⟨(6676673304779201579792702677689318888868515796427600730605787578664193959720 : F), 1005, 8, 60⟩], residual := [((6069693592239946129558577229494963610295269745259458365027151802540116279732 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1479 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1222 rho) = ((1 : F) * rho 1480)

def relationRow1480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1481) * ((1 : F) + (1 : F) * rho 1479) = ((1 : F) * rho 1480)

def relationLc1223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1767788444649168844456122261092227642507383538726463097329445877253215279321 : F), runs := [⟨(1767788444649168844456122261092227642507383538726463097329445877253215279321 : F), 257, 5, 149⟩, ⟨(1767788444649168844456122261092227642507383538726463097329445877253215279321 : F), 1005, 8, 60⟩, ⟨(5515688300288224185778726608477962419190510509418802132611252725112852011945 : F), 256, 5, 149⟩, ⟨(5515688300288224185778726608477962419190510509418802132611252725112852011945 : F), 1004, 8, 60⟩], residual := [((2374768157188424294690247709286582921080629589894605462908081653377292959309 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1481 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1223 rho) = ((1 : F) * rho 1482)

def relationRow1482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1483) * ((1 : F) + (-1 : F) * rho 1479) = ((1160985004490977394013976069211356469678005287008798597994534853551341947775 : F) * rho 1478 + (1 : F) * rho 1482)

def relationLc1224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 60⟩], residual := [((1 : F), 1481), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 211) * (relationLc1224 rho) = ((1 : F) * rho 1484)

def relationLc1225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 60⟩], residual := [((1 : F), 1483), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 211) * (relationLc1225 rho) = ((1 : F) * rho 1485)

def relationLc1226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 61⟩, ⟨(1 : F), 1005, 8, 61⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1485 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1226 rho) = ((1 : F) * rho 1486)

def relationLc1227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8095440306743994308430258663445334264066866745488327351433206910921384811391 : F), 256, 5, 149⟩, ⟨(8095440306743994308430258663445334264066866745488327351433206910921384811391 : F), 1004, 8, 61⟩], residual := [((6522515985008123781222867578839581425126788722572172180395613184190032290736 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1495163088112256875227847031071427603812208236326293085371820305107097154764 : F), runs := [⟨(1495163088112256875227847031071427603812208236326293085371820305107097154764 : F), 257, 5, 149⟩, ⟨(1495163088112256875227847031071427603812208236326293085371820305107097154764 : F), 1005, 8, 61⟩], residual := [((3327300495797576422479104324765937395508648898935736306963926657954934588870 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1486 (rho : Nat -> F) : Prop :=
    (relationLc1227 rho) * (relationLc1228 rho) = ((1 : F) * rho 1487)

def relationLc1229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1495163088112256875227847031071427603812208236326293085371820305107097154764 : F), runs := [⟨(1495163088112256875227847031071427603812208236326293085371820305107097154764 : F), 257, 5, 149⟩, ⟨(1495163088112256875227847031071427603812208236326293085371820305107097154764 : F), 1005, 8, 61⟩, ⟨(8402417410572326090425736246177422264498061691123287034192919477637449900076 : F), 256, 5, 149⟩, ⟨(8402417410572326090425736246177422264498061691123287034192919477637449900076 : F), 1004, 8, 61⟩], residual := [((6286838081656637671282970479287524886942223306521162226240945065616241774304 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1487 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1229 rho) = ((1 : F) * rho 1488)

def relationRow1488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1489) * ((1 : F) + (1 : F) * rho 1487) = ((1 : F) * rho 1488)

def relationLc1230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6949298661316113549020977907710118927563691098827770742563413150810312084277 : F), runs := [⟨(42044338856044333823088692604124266877837644030776793742313978279959338965 : F), 256, 5, 149⟩, ⟨(42044338856044333823088692604124266877837644030776793742313978279959338965 : F), 1004, 8, 61⟩, ⟨(6949298661316113549020977907710118927563691098827770742563413150810312084277 : F), 257, 5, 149⟩, ⟨(6949298661316113549020977907710118927563691098827770742563413150810312084277 : F), 1005, 8, 61⟩], residual := [((2157623667771732752965854459494021644433676028632901601694288390301167464737 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1489 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1230 rho) = ((1 : F) * rho 1490)

def relationRow1490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1491) * ((1 : F) + (-1 : F) * rho 1487) = ((1453118749256212541404758338467303336934370592295516291629506326827137815799 : F) * rho 1486 + (1 : F) * rho 1490)

def relationLc1231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 61⟩], residual := [((1 : F), 1489), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 212) * (relationLc1231 rho) = ((1 : F) * rho 1492)

def relationLc1232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 61⟩], residual := [((1 : F), 1491), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 212) * (relationLc1232 rho) = ((1 : F) * rho 1493)

def relationLc1233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 62⟩, ⟨(1 : F), 1005, 8, 62⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1493 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1233 rho) = ((1 : F) * rho 1494)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
