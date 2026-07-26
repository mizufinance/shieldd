import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs95

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc2115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 2062, 5, 117⟩, ⟨(4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), 2061, 5, 117⟩], residual := [((2990663785052608062231974856445947324052871067411346261391574973919925622073 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2644) * ((1 : F) + (1 : F) * rho 2643) = (relationLc2115 rho)

def relationLc2116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 2061, 5, 117⟩, ⟨(4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), 2062, 5, 117⟩], residual := [((7172988848799631013344220002171542030874312246551264557875723659804867424013 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2645) * ((1 : F) + (-1 : F) * rho 2643) = (relationLc2116 rho)

def relationLc2117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 117⟩], residual := [((1 : F), 2644), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * (relationLc2117 rho) = ((1 : F) * rho 2646)

def relationLc2118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 117⟩], residual := [((1 : F), 2645), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * (relationLc2118 rho) = ((1 : F) * rho 2647)

def relationLc2119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3367912820253366001216961945321133635042119018370843707781355082706130612868 : F), 2061, 5, 118⟩], residual := [((1691399493890240984781845757328749935483621953555455768353456418081471202157 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 2062, 5, 118⟩], residual := [((7148355880814354094015135364292496029766550086632406855091613901944786716636 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2647 (rho : Nat -> F) : Prop :=
    (relationLc2119 rho) * (relationLc2120 rho) = ((1 : F) * rho 2648)

def relationLc2121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 2062, 5, 118⟩, ⟨(5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), 2061, 5, 118⟩], residual := [((2581471041664381557690144267234661444419732512422481387008920088455556254739 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2649) * ((1 : F) + (1 : F) * rho 2648) = (relationLc2121 rho)

def relationLc2122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 2061, 5, 118⟩, ⟨(5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), 2062, 5, 118⟩], residual := [((6619964280680378555219129946295155890115709779695071405095337864393796333509 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2650) * ((1 : F) + (-1 : F) * rho 2648) = (relationLc2122 rho)

def relationLc2123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 118⟩], residual := [((1 : F), 2649), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * (relationLc2123 rho) = ((1 : F) * rho 2651)

def relationLc2124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 118⟩], residual := [((1 : F), 2650), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * (relationLc2124 rho) = ((1 : F) * rho 2652)

def relationLc2125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2017692046407117271774974818426083152699470227008509506383363299947661421324 : F), 2061, 5, 119⟩], residual := [((7127797571030210124345768641519536854686265690026118826828166574414757839431 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), runs := [⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 2062, 5, 119⟩], residual := [((2430083545376283142446969529024895585487534495302192570610260792855878618882 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2652 (rho : Nat -> F) : Prop :=
    (relationLc2125 rho) * (relationLc2126 rho) = ((1 : F) * rho 2653)

def relationLc2127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), runs := [⟨(5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), 2061, 5, 119⟩, ⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 2062, 5, 119⟩], residual := [((2024335906235100794940851464668528072503027697141826069434585215898074252427 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2654) * ((1 : F) + (1 : F) * rho 2653) = (relationLc2127 rho)

def relationLc2128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), runs := [⟨(5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), 2062, 5, 119⟩, ⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 2061, 5, 119⟩], residual := [((768630642295931472468064850845617638711953339610270448700590788007616351667 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2655) * ((1 : F) + (-1 : F) * rho 2653) = (relationLc2128 rho)

def relationLc2129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 119⟩], residual := [((1 : F), 2654), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * (relationLc2129 rho) = ((1 : F) * rho 2656)

def relationLc2130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 119⟩], residual := [((1 : F), 2655), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * (relationLc2130 rho) = ((1 : F) * rho 2657)

def relationLc2131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3986668860635778338789526978466339028865773963962702698271938929340967177465 : F), 2061, 5, 120⟩], residual := [((3946958459661543686929747477451679320619934793290430451765914523801407412779 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 2062, 5, 120⟩], residual := [((2271613138381064962232656709377804353171427636280369025590495735246060493453 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2657 (rho : Nat -> F) : Prop :=
    (relationLc2131 rho) * (relationLc2132 rho) = ((1 : F) * rho 2658)

def relationLc2133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 2062, 5, 120⟩, ⟨(518441606257823338902622357051655891206026862286482790753488953417431869050 : F), 2061, 5, 120⟩], residual := [((531476524202245620749674852580898755777662210590964413094009628489110957369 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2659) * ((1 : F) + (1 : F) * rho 2658) = (relationLc2133 rho)

def relationLc2134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (518441606257823338902622357051655891206026862286482790753488953417431869050 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 2061, 5, 120⟩, ⟨(518441606257823338902622357051655891206026862286482790753488953417431869050 : F), 2062, 5, 120⟩], residual := [((6521749992220261155171628057732085595952514169941349494307767142773096886607 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2660) * ((1 : F) + (-1 : F) * rho 2658) = (relationLc2134 rho)

def relationLc2135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 120⟩], residual := [((1 : F), 2659), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * (relationLc2135 rho) = ((1 : F) * rho 2661)

def relationLc2136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 120⟩], residual := [((1 : F), 2660), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * (relationLc2136 rho) = ((1 : F) * rho 2662)

def relationLc2137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5855145417203940550976487192596039675670168246738064866068981280365576908554 : F), 2061, 5, 121⟩], residual := [((925682298642025695569127838357638138953071366428001762630642884454986281998 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 2062, 5, 121⟩], residual := [((4431042670275116120931628545963771550361798060725958195462347720202910125040 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2662 (rho : Nat -> F) : Prop :=
    (relationLc2137 rho) * (relationLc2138 rho) = ((1 : F) * rho 2663)

def relationLc2139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 2062, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 2061, 5, 121⟩], residual := [((4067966091285693370366657306571767773155603475421886598021450763438657157548 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2664) * ((1 : F) + (1 : F) * rho 2663) = (relationLc2139 rho)

def relationLc2140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 2061, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 2062, 5, 121⟩], residual := [((6678015243706744213506802687278324384968843272394413227264100865185272284296 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2665) * ((1 : F) + (-1 : F) * rho 2663) = (relationLc2140 rho)

def relationLc2141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 121⟩], residual := [((1 : F), 2664), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1928) * (relationLc2141 rho) = ((1 : F) * rho 2666)

def relationLc2142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 121⟩], residual := [((1 : F), 2665), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1928) * (relationLc2142 rho) = ((1 : F) * rho 2667)

def relationLc2143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4605714326718740686632657117795621638911193650541587203844342302667521971341 : F), 2061, 5, 122⟩], residual := [((5800326694329768429758990205268420212840756619354697203033693061349602045852 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 2062, 5, 122⟩], residual := [((1914634463071955144491109301380262226852858209694089168223890368315123462833 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2667 (rho : Nat -> F) : Prop :=
    (relationLc2143 rho) * (relationLc2144 rho) = ((1 : F) * rho 2668)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
