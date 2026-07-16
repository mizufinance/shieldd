import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs25

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122) * (relationLc678 rho) = ((1 : F) * rho 857)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5855145417203940550976487192596039675670168246738064866068981280365576908554 : F), 256, 5, 121⟩], residual := [((925682298642025695569127838357638138953071366428001762630642884454986281998 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 257, 5, 121⟩], residual := [((4431042670275116120931628545963771550361798060725958195462347720202910125040 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow857 (rho : Nat -> F) : Prop :=
    (relationLc679 rho) * (relationLc680 rho) = ((1 : F) * rho 858)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 257, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 256, 5, 121⟩], residual := [((4067966091285693370366657306571767773155603475421886598021450763438657157548 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 859) * ((1 : F) + (1 : F) * rho 858) = (relationLc681 rho)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 256, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 257, 5, 121⟩], residual := [((6678015243706744213506802687278324384968843272394413227264100865185272284296 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 860) * ((1 : F) + (-1 : F) * rho 858) = (relationLc682 rho)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 121⟩], residual := [((1 : F), 859), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123) * (relationLc683 rho) = ((1 : F) * rho 861)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 121⟩], residual := [((1 : F), 860), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123) * (relationLc684 rho) = ((1 : F) * rho 862)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4605714326718740686632657117795621638911193650541587203844342302667521971341 : F), 256, 5, 122⟩], residual := [((5800326694329768429758990205268420212840756619354697203033693061349602045852 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 257, 5, 122⟩], residual := [((1914634463071955144491109301380262226852858209694089168223890368315123462833 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow862 (rho : Nat -> F) : Prop :=
    (relationLc685 rho) * (relationLc686 rho) = ((1 : F) * rho 863)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 257, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 256, 5, 122⟩], residual := [((3470715581700390670579194589750936934452275881645434479556238430066672333721 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 864) * ((1 : F) + (1 : F) * rho 863) = (relationLc687 rho)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 256, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 257, 5, 122⟩], residual := [((6149125308177821096193566087895360010904466580282475588586340879964222902869 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 865) * ((1 : F) + (-1 : F) * rho 863) = (relationLc688 rho)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 122⟩], residual := [((1 : F), 864), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124) * (relationLc689 rho) = ((1 : F) * rho 866)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 122⟩], residual := [((1 : F), 865), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 124) * (relationLc690 rho) = ((1 : F) * rho 867)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2462219390816186265215831286673879522624662491951844612399314437338650625929 : F), 256, 5, 123⟩], residual := [((6076628209815230809031554704004686574711116934705931390450359393626223046622 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 257, 5, 123⟩], residual := [((6455242912317044762230268225216983487772561477201860534153268897702230187998 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow867 (rho : Nat -> F) : Prop :=
    (relationLc691 rho) * (relationLc692 rho) = ((1 : F) * rho 868)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 256, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 257, 5, 123⟩], residual := [((2692047497464280865952831734705649991847826195004635097265381077203347691493 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 869) * ((1 : F) + (1 : F) * rho 868) = (relationLc693 rho)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 257, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 256, 5, 123⟩], residual := [((4260741226520128065720441172132567930766211831973469596976018488234910145224 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 870) * ((1 : F) + (-1 : F) * rho 868) = (relationLc694 rho)

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 123⟩], residual := [((1 : F), 869), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 125) * (relationLc695 rho) = ((1 : F) * rho 871)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 123⟩], residual := [((1 : F), 870), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 125) * (relationLc696 rho) = ((1 : F) * rho 872)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(675150215867084420868198222910915221167546600958782523865631274068456193699 : F), 256, 5, 124⟩], residual := [((632767730836458282723837747081184692850391276120378771202560323022367560874 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 257, 5, 124⟩], residual := [((6937508972884827012117303727642640631932551818643813059565600955408050267583 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow872 (rho : Nat -> F) : Prop :=
    (relationLc697 rho) * (relationLc698 rho) = ((1 : F) * rho 873)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 257, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 256, 5, 124⟩], residual := [((606468557550691774566537541415192201322303025910336001802575064203181165012 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 874) * ((1 : F) + (1 : F) * rho 873) = (relationLc699 rho)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 256, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 257, 5, 124⟩], residual := [((4709527915986490099127502690641102829893842187429096977916810943086408037942 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 875) * ((1 : F) + (-1 : F) * rho 873) = (relationLc700 rho)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 124⟩], residual := [((1 : F), 874), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 126) * (relationLc701 rho) = ((1 : F) * rho 876)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 124⟩], residual := [((1 : F), 875), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 126) * (relationLc702 rho) = ((1 : F) * rho 877)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7162205350687989139896174159214506576215373902099509992231534261371144592675 : F), 256, 5, 125⟩], residual := [((6625488961952055722052971184060402004083105963192283512447859675251721723441 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 257, 5, 125⟩], residual := [((1896739124773425039683958892973582931283960987480377914539375397426739081550 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow877 (rho : Nat -> F) : Prop :=
    (relationLc703 rho) * (relationLc704 rho) = ((1 : F) * rho 878)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 256, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 257, 5, 125⟩], residual := [((5401385288625030533661393722327220205636190372753874855921465890620967978684 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 879) * ((1 : F) + (1 : F) * rho 878) = (relationLc705 rho)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 257, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 256, 5, 125⟩], residual := [((5295799265031769676934984260143085052791333859535372983832220458023281012382 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 880) * ((1 : F) + (-1 : F) * rho 878) = (relationLc706 rho)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 125⟩], residual := [((1 : F), 879), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 127) * (relationLc707 rho) = ((1 : F) * rho 881)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 125⟩], residual := [((1 : F), 880), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 127) * (relationLc708 rho) = ((1 : F) * rho 882)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6597939320542329487400565091411727244209447665886985587245580121252031929444 : F), 256, 5, 126⟩], residual := [((334919001789655310560687819351358127988687736081256952747606665059184566897 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
