import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs37

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 644, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 643, 5, 147⟩], residual := [((3467479019004453162730986798774003415771318403164721714371641933457751375709 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1377) * ((1 : F) + (-1 : F) * rho 1375) = (relationLc793 rho)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 147⟩], residual := [((1 : F), 1376), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 536) * (relationLc794 rho) = ((1 : F) * rho 1378)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 147⟩], residual := [((1 : F), 1377), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 536) * (relationLc795 rho) = ((1 : F) * rho 1379)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1887173869757452217127354553994110507380693968538107207946756764433871159920 : F), 643, 5, 148⟩], residual := [((6797392141279192384516404029143892662891923559703983278897604030892503623828 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 644, 5, 148⟩], residual := [((6343317400306385386895877175675774260633137368150663240692422291625258108993 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1380 (rho : Nat -> F) : Prop :=
    (relationLc796 rho) * (relationLc797 rho) = ((1 : F) * rho 1380)

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 644, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 643, 5, 148⟩], residual := [((215575849708855711956070261833077256116601347484275292535166626350188278608 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1381) * ((1 : F) + (1 : F) * rho 1380) = (relationLc798 rho)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 643, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 644, 5, 148⟩], residual := [((4191003316144029093348197336174585539878859078918694914011898855701778772137 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1382) * ((1 : F) + (-1 : F) * rho 1380) = (relationLc799 rho)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 148⟩], residual := [((1 : F), 1381), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 537) * (relationLc800 rho) = ((1 : F) * rho 1383)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 148⟩], residual := [((1 : F), 1382), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 537) * (relationLc801 rho) = ((1 : F) * rho 1384)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc802 rho) = ((1 : F) * rho 1385)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2645171301799192586536245358319910734839252795234711927900341247861170030750 : F), 643, 5, 149⟩], residual := [((4189255197022180768636901000763825229828366975462594921711874705377393462042 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 644, 5, 149⟩], residual := [((5342522809091263807831683907005673064454098137889293612326091254709019033459 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1386 (rho : Nat -> F) : Prop :=
    (relationLc803 rho) * (relationLc804 rho) = ((1 : F) * rho 1386)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(2189559325092424109491349279187113818206609874948979374114924904743857200993 : F), 643, 5, 149⟩, ⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 644, 5, 149⟩], residual := [((4343208657784301069959309717305894900600161165029415341727249247918865073143 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc805 rho) = ((1 : F) * rho 1387)

def relationRow1388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1388) * ((1 : F) + (1 : F) * rho 1386) = ((1 : F) * rho 1387)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (575703627930619084040087811020684361071531801359163727854571447739628931788 : F), runs := [⟨(575703627930619084040087811020684361071531801359163727854571447739628931788 : F), 644, 5, 149⟩, ⟨(6254902424335946314757475659594432713169289460205084453820308551173552038048 : F), 643, 5, 149⟩], residual := [((4101253091644069354289515221475651630775738170124648486207984207998544165898 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1389 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc806 rho) = ((1 : F) * rho 1389)

def relationRow1390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1390) * ((1 : F) + (-1 : F) * rho 1386) = ((1613855697161805025451261468166429457135078073589815646260353457004228269205 : F) * rho 1385 + (1 : F) * rho 1389)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩], residual := [((1 : F), 1388), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 538) * (relationLc807 rho) = ((1 : F) * rho 1391)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩], residual := [((1 : F), 1390), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 538) * (relationLc808 rho) = ((1 : F) * rho 1392)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩], residual := [((1 : F), 1391), ((1 : F), 1392), ((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1393 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc809 rho) = ((1 : F) * rho 1393)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3857892491519779135344199565860547810935464320097447898939552183113158129847 : F), 643, 5, 149⟩], residual := [((3791555781740349848523116392869666912510788963065689978530698909597937955826 : F), 388), ((3857892491519779135344199565860547810935464320097447898939552183113158129847 : F), 1391)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), runs := [⟨(7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 644, 5, 149⟩], residual := [((2222663926872630171207868096685297004356390653210761896632018977249448862921 : F), 388), ((7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 1392)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1394 (rho : Nat -> F) : Prop :=
    (relationLc810 rho) * (relationLc811 rho) = ((1 : F) * rho 1394)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), runs := [⟨(1074654486683884151620951001674271570956398811327129413381684607499304305171 : F), 643, 5, 149⟩, ⟨(7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 644, 5, 149⟩], residual := [((1074654486683884151620951001674271570956398811327129413381684607499304305171 : F), 1391), ((7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 1392), ((829087343892485685325166829535637271736707442592154759868976674835284919748 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc812 rho) = ((1 : F) * rho 1395)

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1396) * ((1 : F) + (1 : F) * rho 1394) = ((1 : F) * rho 1395)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), runs := [⟨(1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), 644, 5, 149⟩, ⟨(7369807262744486272627873937107274960419500523826934414553548848418104933870 : F), 643, 5, 149⟩], residual := [((1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), 1392), ((7369807262744486272627873937107274960419500523826934414553548848418104933870 : F), 1391), ((7615374405535884738923658109245909259639191892561909068066256781082124319293 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc813 rho) = ((1 : F) * rho 1397)

def relationRow1398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1398) * ((1 : F) + (-1 : F) * rho 1394) = ((8292160231843646853169174160164142232126645295272780729934414077233525100127 : F) * rho 1393 + (1 : F) * rho 1397)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩], residual := [((-1 : F), 1391), ((1 : F), 1396), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 539) * (relationLc814 rho) = ((1 : F) * rho 1399)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩], residual := [((-1 : F), 1392), ((1 : F), 1398), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 539) * (relationLc815 rho) = ((1 : F) * rho 1400)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩], residual := [((1 : F), 1391), ((1 : F), 1392), ((1 : F), 1399), ((1 : F), 1400), ((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc816 rho) = ((1 : F) * rho 1401)

def relationLc817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2697203927696304349705697386038062090820108262677006965850459294869434750778 : F), 643, 5, 149⟩], residual := [((2697203927696304349705697386038062090820108262677006965850459294869434750778 : F), 1391), ((2697203927696304349705697386038062090820108262677006965850459294869434750778 : F), 1399), ((4028920331174628317027597966406648616666335012509183425577571528369043530747 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), runs := [⟨(8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 644, 5, 149⟩], residual := [((2704683006927187740067547926043000158693614424332161260817582052933126947922 : F), 388), ((8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 1392), ((8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 1400)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1402 (rho : Nat -> F) : Prop :=
    (relationLc817 rho) * (relationLc818 rho) = ((1 : F) * rho 1402)

def relationLc819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), runs := [⟨(4766800558326073445115508844094198907013150769513523943593321251782208602223 : F), 643, 5, 149⟩, ⟨(8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 644, 5, 149⟩], residual := [((4766800558326073445115508844094198907013150769513523943593321251782208602223 : F), 1391), ((4766800558326073445115508844094198907013150769513523943593321251782208602223 : F), 1399), ((5280445400689089027406242188401229554262588149154869625251189330135478140470 : F), 388), ((8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 1392), ((8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 1400)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1403 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc819 rho) = ((1 : F) * rho 1403)

def relationRow1404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1404) * ((1 : F) + (1 : F) * rho 1402) = ((1 : F) * rho 1403)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
