import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs96

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc2145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 2062, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 2061, 5, 122⟩], residual := [((3470715581700390670579194589750936934452275881645434479556238430066672333721 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2669) * ((1 : F) + (1 : F) * rho 2668) = (relationLc2145 rho)

def relationLc2146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 2061, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 2062, 5, 122⟩], residual := [((6149125308177821096193566087895360010904466580282475588586340879964222902869 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2670) * ((1 : F) + (-1 : F) * rho 2668) = (relationLc2146 rho)

def relationLc2147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 122⟩], residual := [((1 : F), 2669), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1929) * (relationLc2147 rho) = ((1 : F) * rho 2671)

def relationLc2148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 122⟩], residual := [((1 : F), 2670), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1929) * (relationLc2148 rho) = ((1 : F) * rho 2672)

def relationLc2149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2462219390816186265215831286673879522624662491951844612399314437338650625929 : F), 2061, 5, 123⟩], residual := [((6076628209815230809031554704004686574711116934705931390450359393626223046622 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 2062, 5, 123⟩], residual := [((6455242912317044762230268225216983487772561477201860534153268897702230187998 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2672 (rho : Nat -> F) : Prop :=
    (relationLc2149 rho) * (relationLc2150 rho) = ((1 : F) * rho 2673)

def relationLc2151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 2061, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 2062, 5, 123⟩], residual := [((2692047497464280865952831734705649991847826195004635097265381077203347691493 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * ((1 : F) + (1 : F) * rho 2673) = (relationLc2151 rho)

def relationLc2152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 2062, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 2061, 5, 123⟩], residual := [((4260741226520128065720441172132567930766211831973469596976018488234910145224 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2675) * ((1 : F) + (-1 : F) * rho 2673) = (relationLc2152 rho)

def relationLc2153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 123⟩], residual := [((1 : F), 2674), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * (relationLc2153 rho) = ((1 : F) * rho 2676)

def relationLc2154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 123⟩], residual := [((1 : F), 2675), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * (relationLc2154 rho) = ((1 : F) * rho 2677)

def relationLc2155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(675150215867084420868198222910915221167546600958782523865631274068456193699 : F), 2061, 5, 124⟩], residual := [((632767730836458282723837747081184692850391276120378771202560323022367560874 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 2062, 5, 124⟩], residual := [((6937508972884827012117303727642640631932551818643813059565600955408050267583 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2677 (rho : Nat -> F) : Prop :=
    (relationLc2155 rho) * (relationLc2156 rho) = ((1 : F) * rho 2678)

def relationLc2157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 2062, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 2061, 5, 124⟩], residual := [((606468557550691774566537541415192201322303025910336001802575064203181165012 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2679) * ((1 : F) + (1 : F) * rho 2678) = (relationLc2157 rho)

def relationLc2158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 2061, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 2062, 5, 124⟩], residual := [((4709527915986490099127502690641102829893842187429096977916810943086408037942 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2680) * ((1 : F) + (-1 : F) * rho 2678) = (relationLc2158 rho)

def relationLc2159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 124⟩], residual := [((1 : F), 2679), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * (relationLc2159 rho) = ((1 : F) * rho 2681)

def relationLc2160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 124⟩], residual := [((1 : F), 2680), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * (relationLc2160 rho) = ((1 : F) * rho 2682)

def relationLc2161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7162205350687989139896174159214506576215373902099509992231534261371144592675 : F), 2061, 5, 125⟩], residual := [((6625488961952055722052971184060402004083105963192283512447859675251721723441 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 2062, 5, 125⟩], residual := [((1896739124773425039683958892973582931283960987480377914539375397426739081550 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2682 (rho : Nat -> F) : Prop :=
    (relationLc2161 rho) * (relationLc2162 rho) = ((1 : F) * rho 2683)

def relationLc2163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 2061, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 2062, 5, 125⟩], residual := [((5401385288625030533661393722327220205636190372753874855921465890620967978684 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2684) * ((1 : F) + (1 : F) * rho 2683) = (relationLc2163 rho)

def relationLc2164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 2062, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 2061, 5, 125⟩], residual := [((5295799265031769676934984260143085052791333859535372983832220458023281012382 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2685) * ((1 : F) + (-1 : F) * rho 2683) = (relationLc2164 rho)

def relationLc2165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 125⟩], residual := [((1 : F), 2684), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * (relationLc2165 rho) = ((1 : F) * rho 2686)

def relationLc2166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 125⟩], residual := [((1 : F), 2685), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * (relationLc2166 rho) = ((1 : F) * rho 2687)

def relationLc2167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6597939320542329487400565091411727244209447665886985587245580121252031929444 : F), 2061, 5, 126⟩], residual := [((334919001789655310560687819351358127988687736081256952747606665059184566897 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 2062, 5, 126⟩], residual := [((2576346892624037738027985730475149611626561668089352371540795449013921429872 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2687 (rho : Nat -> F) : Prop :=
    (relationLc2167 rho) * (relationLc2168 rho) = ((1 : F) * rho 2688)

def relationLc2169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 2062, 5, 126⟩, ⟨(3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), 2061, 5, 126⟩], residual := [((860171919056599874678691515118473606285014662446017736188433404899975687335 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2689) * ((1 : F) + (1 : F) * rho 2688) = (relationLc2169 rho)

def relationLc2170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 2061, 5, 126⟩, ⟨(3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), 2062, 5, 126⟩], residual := [((369835453671308253501701535082988302428925497488405681490395052401809343463 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2690) * ((1 : F) + (-1 : F) * rho 2688) = (relationLc2170 rho)

def relationLc2171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 126⟩], residual := [((1 : F), 2689), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * (relationLc2171 rho) = ((1 : F) * rho 2691)

def relationLc2172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 126⟩], residual := [((1 : F), 2690), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * (relationLc2172 rho) = ((1 : F) * rho 2692)

def relationLc2173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3662549041251064738439678582694000555264902823767717478987881813558759373397 : F), 2061, 5, 127⟩], residual := [((3627157378103929501736907787229659891786383051031026833110981404511932764334 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 2062, 5, 127⟩], residual := [((5077128519854369438435180807649926164157042074234900107924177009357349807768 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2692 (rho : Nat -> F) : Prop :=
    (relationLc2173 rho) * (relationLc2174 rho) = ((1 : F) * rho 2693)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
