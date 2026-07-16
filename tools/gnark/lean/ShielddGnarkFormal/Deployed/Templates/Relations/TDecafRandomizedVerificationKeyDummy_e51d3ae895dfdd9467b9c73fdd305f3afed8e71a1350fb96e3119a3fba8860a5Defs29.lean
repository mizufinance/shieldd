import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs28

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 257, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 256, 5, 121⟩], residual := [((4067966091285693370366657306571767773155603475421886598021450763438657157548 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 859) * ((1 : F) + (1 : F) * rho 858) = (relationLc633 rho)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 256, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 257, 5, 121⟩], residual := [((6678015243706744213506802687278324384968843272394413227264100865185272284296 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 860) * ((1 : F) + (-1 : F) * rho 858) = (relationLc634 rho)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 121⟩], residual := [((1 : F), 859), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123) * (relationLc635 rho) = ((1 : F) * rho 861)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 121⟩], residual := [((1 : F), 860), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123) * (relationLc636 rho) = ((1 : F) * rho 862)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4605714326718740686632657117795621638911193650541587203844342302667521971341 : F), 256, 5, 122⟩], residual := [((5800326694329768429758990205268420212840756619354697203033693061349602045852 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 257, 5, 122⟩], residual := [((1914634463071955144491109301380262226852858209694089168223890368315123462833 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow862 (rho : Nat -> F) : Prop :=
    (relationLc637 rho) * (relationLc638 rho) = ((1 : F) * rho 863)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 257, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 256, 5, 122⟩], residual := [((3470715581700390670579194589750936934452275881645434479556238430066672333721 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 864) * ((1 : F) + (1 : F) * rho 863) = (relationLc639 rho)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 256, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 257, 5, 122⟩], residual := [((6149125308177821096193566087895360010904466580282475588586340879964222902869 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 865) * ((1 : F) + (-1 : F) * rho 863) = (relationLc640 rho)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 122⟩], residual := [((1 : F), 864), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124) * (relationLc641 rho) = ((1 : F) * rho 866)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 122⟩], residual := [((1 : F), 865), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124) * (relationLc642 rho) = ((1 : F) * rho 867)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2462219390816186265215831286673879522624662491951844612399314437338650625929 : F), 256, 5, 123⟩], residual := [((6076628209815230809031554704004686574711116934705931390450359393626223046622 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 257, 5, 123⟩], residual := [((6455242912317044762230268225216983487772561477201860534153268897702230187998 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow867 (rho : Nat -> F) : Prop :=
    (relationLc643 rho) * (relationLc644 rho) = ((1 : F) * rho 868)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 256, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 257, 5, 123⟩], residual := [((2692047497464280865952831734705649991847826195004635097265381077203347691493 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 869) * ((1 : F) + (1 : F) * rho 868) = (relationLc645 rho)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 257, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 256, 5, 123⟩], residual := [((4260741226520128065720441172132567930766211831973469596976018488234910145224 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 870) * ((1 : F) + (-1 : F) * rho 868) = (relationLc646 rho)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 123⟩], residual := [((1 : F), 869), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 125) * (relationLc647 rho) = ((1 : F) * rho 871)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 123⟩], residual := [((1 : F), 870), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 125) * (relationLc648 rho) = ((1 : F) * rho 872)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(675150215867084420868198222910915221167546600958782523865631274068456193699 : F), 256, 5, 124⟩], residual := [((632767730836458282723837747081184692850391276120378771202560323022367560874 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 257, 5, 124⟩], residual := [((6937508972884827012117303727642640631932551818643813059565600955408050267583 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow872 (rho : Nat -> F) : Prop :=
    (relationLc649 rho) * (relationLc650 rho) = ((1 : F) * rho 873)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 257, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 256, 5, 124⟩], residual := [((606468557550691774566537541415192201322303025910336001802575064203181165012 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 874) * ((1 : F) + (1 : F) * rho 873) = (relationLc651 rho)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 256, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 257, 5, 124⟩], residual := [((4709527915986490099127502690641102829893842187429096977916810943086408037942 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 875) * ((1 : F) + (-1 : F) * rho 873) = (relationLc652 rho)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 124⟩], residual := [((1 : F), 874), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 126) * (relationLc653 rho) = ((1 : F) * rho 876)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 124⟩], residual := [((1 : F), 875), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 126) * (relationLc654 rho) = ((1 : F) * rho 877)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7162205350687989139896174159214506576215373902099509992231534261371144592675 : F), 256, 5, 125⟩], residual := [((6625488961952055722052971184060402004083105963192283512447859675251721723441 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 257, 5, 125⟩], residual := [((1896739124773425039683958892973582931283960987480377914539375397426739081550 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow877 (rho : Nat -> F) : Prop :=
    (relationLc655 rho) * (relationLc656 rho) = ((1 : F) * rho 878)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 256, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 257, 5, 125⟩], residual := [((5401385288625030533661393722327220205636190372753874855921465890620967978684 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 879) * ((1 : F) + (1 : F) * rho 878) = (relationLc657 rho)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 257, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 256, 5, 125⟩], residual := [((5295799265031769676934984260143085052791333859535372983832220458023281012382 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 880) * ((1 : F) + (-1 : F) * rho 878) = (relationLc658 rho)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 125⟩], residual := [((1 : F), 879), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 127) * (relationLc659 rho) = ((1 : F) * rho 881)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 125⟩], residual := [((1 : F), 880), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 127) * (relationLc660 rho) = ((1 : F) * rho 882)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6597939320542329487400565091411727244209447665886985587245580121252031929444 : F), 256, 5, 126⟩], residual := [((334919001789655310560687819351358127988687736081256952747606665059184566897 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 257, 5, 126⟩], residual := [((2576346892624037738027985730475149611626561668089352371540795449013921429872 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow882 (rho : Nat -> F) : Prop :=
    (relationLc661 rho) * (relationLc662 rho) = ((1 : F) * rho 883)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 257, 5, 126⟩, ⟨(3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), 256, 5, 126⟩], residual := [((860171919056599874678691515118473606285014662446017736188433404899975687335 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 884) * ((1 : F) + (1 : F) * rho 883) = (relationLc663 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
