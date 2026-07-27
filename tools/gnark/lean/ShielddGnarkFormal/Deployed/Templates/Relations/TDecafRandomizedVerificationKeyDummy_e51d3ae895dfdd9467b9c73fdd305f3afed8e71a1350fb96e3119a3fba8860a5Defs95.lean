import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs94

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc2085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 2062, 5, 112⟩, ⟨(5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), 2061, 5, 112⟩], residual := [((630759189698223515442565790495223866302195616623397982828407515918807747936 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2619) * ((1 : F) + (1 : F) * rho 2618) = (relationLc2085 rho)

def relationLc2086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 2061, 5, 112⟩, ⟨(5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), 2062, 5, 112⟩], residual := [((701540351068285311102719158292584549968653608918762726070947020463010759916 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2620) * ((1 : F) + (-1 : F) * rho 2618) = (relationLc2086 rho)

def relationLc2087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 112⟩], residual := [((1 : F), 2619), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1919) * (relationLc2087 rho) = ((1 : F) * rho 2621)

def relationLc2088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 112⟩], residual := [((1 : F), 2620), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1919) * (relationLc2088 rho) = ((1 : F) * rho 2622)

def relationLc2089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7232751867622564713554023932001496092539510221064441963614171743180987607316 : F), 2061, 5, 113⟩], residual := [((6205455160059383968858176403410616736538441215431948543782337451811884962308 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 2062, 5, 113⟩], residual := [((6679184061030008664832695535977507076813478068613182374938323825246753435358 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2622 (rho : Nat -> F) : Prop :=
    (relationLc2089 rho) * (relationLc2090 rho) = ((1 : F) * rho 2623)

def relationLc2091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 2062, 5, 113⟩, ⟨(6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), 2061, 5, 113⟩], residual := [((4400311061237393344667788891276305040114969158891141946255315496025702771970 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2624) * ((1 : F) + (1 : F) * rho 2623) = (relationLc2091 rho)

def relationLc2092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 2061, 5, 113⟩, ⟨(6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), 2062, 5, 113⟩], residual := [((2087357790150026556797310710018782693490980500605381290006250342379967365568 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2625) * ((1 : F) + (-1 : F) * rho 2623) = (relationLc2092 rho)

def relationLc2093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 113⟩], residual := [((1 : F), 2624), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1920) * (relationLc2093 rho) = ((1 : F) * rho 2626)

def relationLc2094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 113⟩], residual := [((1 : F), 2625), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1920) * (relationLc2094 rho) = ((1 : F) * rho 2627)

def relationLc2095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(947717101564819091542378284888608902327013081715595233096761950147907007800 : F), 2061, 5, 114⟩], residual := [((8069732616500346997440461803908541944572596023366705295276766397849410487234 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), runs := [⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 2062, 5, 114⟩], residual := [((6309456410749148524989712616328028351341432761943017574693998999570185170928 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2627 (rho : Nat -> F) : Prop :=
    (relationLc2095 rho) * (relationLc2096 rho) = ((1 : F) * rho 2628)

def relationLc2097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), runs := [⟨(4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), 2061, 5, 114⟩, ⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 2062, 5, 114⟩], residual := [((3477740263346345723536264080703870906498470388615359840092525991327085681388 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2629) * ((1 : F) + (1 : F) * rho 2628) = (relationLc2097 rho)

def relationLc2098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), runs := [⟨(4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), 2062, 5, 114⟩, ⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 2061, 5, 114⟩], residual := [((7299614783841155772686659764745278288658731154961458264984903098491417870829 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2630) * ((1 : F) + (-1 : F) * rho 2628) = (relationLc2098 rho)

def relationLc2099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 114⟩], residual := [((1 : F), 2629), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1921) * (relationLc2099 rho) = ((1 : F) * rho 2631)

def relationLc2100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 114⟩], residual := [((1 : F), 2630), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1921) * (relationLc2100 rho) = ((1 : F) * rho 2632)

def relationLc2101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1854067315940902596236180059194743311052989737966486961600317653694884857500 : F), 2061, 5, 115⟩], residual := [((4354532474989950694177441537286028288137849845366388990794655904030294839452 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 2062, 5, 115⟩], residual := [((3780104624363262583803818749820133136665135515081578486963505739174187955054 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2632 (rho : Nat -> F) : Prop :=
    (relationLc2101 rho) * (relationLc2102 rho) = ((1 : F) * rho 2633)

def relationLc2103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 2062, 5, 115⟩, ⟨(3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), 2061, 5, 115⟩], residual := [((2604744192706740240899291157072782901173207090634542908489510827212188949825 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2634) * ((1 : F) + (1 : F) * rho 2633) = (relationLc2103 rho)

def relationLc2104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 2061, 5, 115⟩, ⟨(3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), 2062, 5, 115⟩], residual := [((7841490394353810698294471924772146887196817649440922315850551546178009358557 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2635) * ((1 : F) + (-1 : F) * rho 2633) = (relationLc2104 rho)

def relationLc2105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 115⟩], residual := [((1 : F), 2634), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1922) * (relationLc2105 rho) = ((1 : F) * rho 2636)

def relationLc2106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 115⟩], residual := [((1 : F), 2635), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1922) * (relationLc2106 rho) = ((1 : F) * rho 2637)

def relationLc2107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5058688986614166632160103004447210200422193522182557622358194344375224847289 : F), 2061, 5, 116⟩], residual := [((7963949792456045923152496392139227737431459647154118764599999983306311745035 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 2062, 5, 116⟩], residual := [((7165195893732640723561096527477694394750848606553482293832288734522661702959 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2637 (rho : Nat -> F) : Prop :=
    (relationLc2107 rho) * (relationLc2108 rho) = ((1 : F) * rho 2638)

def relationLc2109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 2062, 5, 116⟩, ⟨(2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), 2061, 5, 116⟩], residual := [((1219531990061301360145556317833539548332284447149081861167086220716325870806 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2639) * ((1 : F) + (1 : F) * rho 2638) = (relationLc2109 rho)

def relationLc2110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 2061, 5, 116⟩, ⟨(2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), 2062, 5, 116⟩], residual := [((7015591765500128281549976814712607452749588499518551798977318918702616301457 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2640) * ((1 : F) + (-1 : F) * rho 2638) = (relationLc2110 rho)

def relationLc2111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 116⟩], residual := [((1 : F), 2639), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1923) * (relationLc2111 rho) = ((1 : F) * rho 2641)

def relationLc2112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 116⟩], residual := [((1 : F), 2640), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1923) * (relationLc2112 rho) = ((1 : F) * rho 2642)

def relationLc2113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2126598159510820021254829562976983677454766925005966503301667636085195673024 : F), 2061, 5, 117⟩], residual := [((1872614935516469004704786918895811090880792337026629918254087619510321198958 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 2062, 5, 117⟩], residual := [((3238821507913782672875285228055567261226513652148746145790112441631656539344 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2642 (rho : Nat -> F) : Prop :=
    (relationLc2113 rho) * (relationLc2114 rho) = ((1 : F) * rho 2643)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
