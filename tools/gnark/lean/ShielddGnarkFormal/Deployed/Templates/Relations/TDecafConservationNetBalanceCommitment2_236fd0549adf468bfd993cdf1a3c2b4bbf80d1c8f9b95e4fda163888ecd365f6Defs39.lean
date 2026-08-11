import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs38

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 773, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 772, 5, 146⟩], residual := [((3568703348387618865037818114798549685267027754823348245285753842434728604050 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1501) * ((1 : F) + (-1 : F) * rho 1499) = (relationLc788 rho)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 146⟩], residual := [((1 : F), 1500), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 664) * (relationLc789 rho) = ((1 : F) * rho 1502)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 146⟩], residual := [((1 : F), 1501), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 664) * (relationLc790 rho) = ((1 : F) * rho 1503)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2719012481549545869324764786358786154111901976412339216924475349808954699287 : F), 772, 5, 147⟩], residual := [((7069867608569530454272722591226468214154025324532012652884181240601038076182 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 773, 5, 147⟩], residual := [((2514506040517189860011682643505832214683020728103087183572227706463071033086 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1504 (rho : Nat -> F) : Prop :=
    (relationLc791 rho) * (relationLc792 rho) = ((1 : F) * rho 1504)

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 772, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 773, 5, 147⟩], residual := [((4957102854439578774551072545573861539444793036912762699772275037895212477561 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1505) * ((1 : F) + (1 : F) * rho 1504) = (relationLc793 rho)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 773, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 772, 5, 147⟩], residual := [((3467479019004453162730986798774003415771318403164721714371641933457751375709 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1506) * ((1 : F) + (-1 : F) * rho 1504) = (relationLc794 rho)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 147⟩], residual := [((1 : F), 1505), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 665) * (relationLc795 rho) = ((1 : F) * rho 1507)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 147⟩], residual := [((1 : F), 1506), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 665) * (relationLc796 rho) = ((1 : F) * rho 1508)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1887173869757452217127354553994110507380693968538107207946756764433871159920 : F), 772, 5, 148⟩], residual := [((6797392141279192384516404029143892662891923559703983278897604030892503623828 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 773, 5, 148⟩], residual := [((6343317400306385386895877175675774260633137368150663240692422291625258108993 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1509 (rho : Nat -> F) : Prop :=
    (relationLc797 rho) * (relationLc798 rho) = ((1 : F) * rho 1509)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 773, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 772, 5, 148⟩], residual := [((215575849708855711956070261833077256116601347484275292535166626350188278608 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1510) * ((1 : F) + (1 : F) * rho 1509) = (relationLc799 rho)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 772, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 773, 5, 148⟩], residual := [((4191003316144029093348197336174585539878859078918694914011898855701778772137 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1511) * ((1 : F) + (-1 : F) * rho 1509) = (relationLc800 rho)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 148⟩], residual := [((1 : F), 1510), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 666) * (relationLc801 rho) = ((1 : F) * rho 1512)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 148⟩], residual := [((1 : F), 1511), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 666) * (relationLc802 rho) = ((1 : F) * rho 1513)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1514 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc803 rho) = ((1 : F) * rho 1514)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2645171301799192586536245358319910734839252795234711927900341247861170030750 : F), 772, 5, 149⟩], residual := [((4189255197022180768636901000763825229828366975462594921711874705377393462042 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 773, 5, 149⟩], residual := [((5342522809091263807831683907005673064454098137889293612326091254709019033459 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1515 (rho : Nat -> F) : Prop :=
    (relationLc804 rho) * (relationLc805 rho) = ((1 : F) * rho 1515)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(2189559325092424109491349279187113818206609874948979374114924904743857200993 : F), 772, 5, 149⟩, ⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 773, 5, 149⟩], residual := [((4343208657784301069959309717305894900600161165029415341727249247918865073143 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc806 rho) = ((1 : F) * rho 1516)

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1517) * ((1 : F) + (1 : F) * rho 1515) = ((1 : F) * rho 1516)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (575703627930619084040087811020684361071531801359163727854571447739628931788 : F), runs := [⟨(575703627930619084040087811020684361071531801359163727854571447739628931788 : F), 773, 5, 149⟩, ⟨(6254902424335946314757475659594432713169289460205084453820308551173552038048 : F), 772, 5, 149⟩], residual := [((4101253091644069354289515221475651630775738170124648486207984207998544165898 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1518 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc807 rho) = ((1 : F) * rho 1518)

def relationRow1519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1519) * ((1 : F) + (-1 : F) * rho 1515) = ((1613855697161805025451261468166429457135078073589815646260353457004228269205 : F) * rho 1514 + (1 : F) * rho 1518)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩], residual := [((1 : F), 1517), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 667) * (relationLc808 rho) = ((1 : F) * rho 1520)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩], residual := [((1 : F), 1519), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 667) * (relationLc809 rho) = ((1 : F) * rho 1521)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩], residual := [((1 : F), 1520), ((1 : F), 1521), ((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1522 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc810 rho) = ((1 : F) * rho 1522)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3857892491519779135344199565860547810935464320097447898939552183113158129847 : F), 772, 5, 149⟩], residual := [((3791555781740349848523116392869666912510788963065689978530698909597937955826 : F), 517), ((3857892491519779135344199565860547810935464320097447898939552183113158129847 : F), 1520)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), runs := [⟨(7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 773, 5, 149⟩], residual := [((2222663926872630171207868096685297004356390653210761896632018977249448862921 : F), 517), ((7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 1521)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1523 (rho : Nat -> F) : Prop :=
    (relationLc811 rho) * (relationLc812 rho) = ((1 : F) * rho 1523)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), runs := [⟨(1074654486683884151620951001674271570956398811327129413381684607499304305171 : F), 772, 5, 149⟩, ⟨(7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 773, 5, 149⟩], residual := [((1074654486683884151620951001674271570956398811327129413381684607499304305171 : F), 1520), ((7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 1521), ((829087343892485685325166829535637271736707442592154759868976674835284919748 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1524 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc813 rho) = ((1 : F) * rho 1524)

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1525) * ((1 : F) + (1 : F) * rho 1523) = ((1 : F) * rho 1524)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), runs := [⟨(1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), 773, 5, 149⟩, ⟨(7369807262744486272627873937107274960419500523826934414553548848418104933870 : F), 772, 5, 149⟩], residual := [((1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), 1521), ((7369807262744486272627873937107274960419500523826934414553548848418104933870 : F), 1520), ((7615374405535884738923658109245909259639191892561909068066256781082124319293 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1526 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc814 rho) = ((1 : F) * rho 1526)

def relationRow1527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1527) * ((1 : F) + (-1 : F) * rho 1523) = ((8292160231843646853169174160164142232126645295272780729934414077233525100127 : F) * rho 1522 + (1 : F) * rho 1526)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩], residual := [((-1 : F), 1520), ((1 : F), 1525), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 668) * (relationLc815 rho) = ((1 : F) * rho 1528)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩], residual := [((-1 : F), 1521), ((1 : F), 1527), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 668) * (relationLc816 rho) = ((1 : F) * rho 1529)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
