import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs39

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 902, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 901, 5, 145⟩], residual := [((3156917330037967942116929786651494679451482823360775864727015008418724551159 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1625) * ((1 : F) + (-1 : F) * rho 1623) = (relationLc783 rho)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 145⟩], residual := [((1 : F), 1624), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 792) * (relationLc784 rho) = ((1 : F) * rho 1626)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 145⟩], residual := [((1 : F), 1625), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 792) * (relationLc785 rho) = ((1 : F) * rho 1627)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4969710126479417040242673845284668082827372776959296050209878365457438797350 : F), 901, 5, 146⟩], residual := [((2271931576910216759912135799054106294509899499123123665253121747066940025690 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 902, 5, 146⟩], residual := [((7173440006072889427306769788914478402450473304064369961075503691215984571384 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1628 (rho : Nat -> F) : Prop :=
    (relationLc786 rho) * (relationLc787 rho) = ((1 : F) * rho 1628)

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 901, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 902, 5, 146⟩], residual := [((7845052965834464772748554006427429502690369278885984804627211453932715838314 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1629) * ((1 : F) + (1 : F) * rho 1628) = (relationLc788 rho)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 902, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 901, 5, 146⟩], residual := [((3568703348387618865037818114798549685267027754823348245285753842434728604050 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1630) * ((1 : F) + (-1 : F) * rho 1628) = (relationLc789 rho)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 146⟩], residual := [((1 : F), 1629), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 793) * (relationLc790 rho) = ((1 : F) * rho 1631)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 146⟩], residual := [((1 : F), 1630), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 793) * (relationLc791 rho) = ((1 : F) * rho 1632)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2719012481549545869324764786358786154111901976412339216924475349808954699287 : F), 901, 5, 147⟩], residual := [((7069867608569530454272722591226468214154025324532012652884181240601038076182 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 902, 5, 147⟩], residual := [((2514506040517189860011682643505832214683020728103087183572227706463071033086 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1633 (rho : Nat -> F) : Prop :=
    (relationLc792 rho) * (relationLc793 rho) = ((1 : F) * rho 1633)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 901, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 902, 5, 147⟩], residual := [((4957102854439578774551072545573861539444793036912762699772275037895212477561 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1634) * ((1 : F) + (1 : F) * rho 1633) = (relationLc794 rho)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 902, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 901, 5, 147⟩], residual := [((3467479019004453162730986798774003415771318403164721714371641933457751375709 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1635) * ((1 : F) + (-1 : F) * rho 1633) = (relationLc795 rho)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 147⟩], residual := [((1 : F), 1634), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 794) * (relationLc796 rho) = ((1 : F) * rho 1636)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 147⟩], residual := [((1 : F), 1635), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 794) * (relationLc797 rho) = ((1 : F) * rho 1637)

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1887173869757452217127354553994110507380693968538107207946756764433871159920 : F), 901, 5, 148⟩], residual := [((6797392141279192384516404029143892662891923559703983278897604030892503623828 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 902, 5, 148⟩], residual := [((6343317400306385386895877175675774260633137368150663240692422291625258108993 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1638 (rho : Nat -> F) : Prop :=
    (relationLc798 rho) * (relationLc799 rho) = ((1 : F) * rho 1638)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 902, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 901, 5, 148⟩], residual := [((215575849708855711956070261833077256116601347484275292535166626350188278608 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1639) * ((1 : F) + (1 : F) * rho 1638) = (relationLc800 rho)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 901, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 902, 5, 148⟩], residual := [((4191003316144029093348197336174585539878859078918694914011898855701778772137 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1640) * ((1 : F) + (-1 : F) * rho 1638) = (relationLc801 rho)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 148⟩], residual := [((1 : F), 1639), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 795) * (relationLc802 rho) = ((1 : F) * rho 1641)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 148⟩], residual := [((1 : F), 1640), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 795) * (relationLc803 rho) = ((1 : F) * rho 1642)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1643 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc804 rho) = ((1 : F) * rho 1643)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2645171301799192586536245358319910734839252795234711927900341247861170030750 : F), 901, 5, 149⟩], residual := [((4189255197022180768636901000763825229828366975462594921711874705377393462042 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 902, 5, 149⟩], residual := [((5342522809091263807831683907005673064454098137889293612326091254709019033459 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1644 (rho : Nat -> F) : Prop :=
    (relationLc805 rho) * (relationLc806 rho) = ((1 : F) * rho 1644)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(2189559325092424109491349279187113818206609874948979374114924904743857200993 : F), 901, 5, 149⟩, ⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 902, 5, 149⟩], residual := [((4343208657784301069959309717305894900600161165029415341727249247918865073143 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc807 rho) = ((1 : F) * rho 1645)

def relationRow1646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1646) * ((1 : F) + (1 : F) * rho 1644) = ((1 : F) * rho 1645)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (575703627930619084040087811020684361071531801359163727854571447739628931788 : F), runs := [⟨(575703627930619084040087811020684361071531801359163727854571447739628931788 : F), 902, 5, 149⟩, ⟨(6254902424335946314757475659594432713169289460205084453820308551173552038048 : F), 901, 5, 149⟩], residual := [((4101253091644069354289515221475651630775738170124648486207984207998544165898 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc808 rho) = ((1 : F) * rho 1647)

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1648) * ((1 : F) + (-1 : F) * rho 1644) = ((1613855697161805025451261468166429457135078073589815646260353457004228269205 : F) * rho 1643 + (1 : F) * rho 1647)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩], residual := [((1 : F), 1646), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 796) * (relationLc809 rho) = ((1 : F) * rho 1649)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩], residual := [((1 : F), 1648), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 796) * (relationLc810 rho) = ((1 : F) * rho 1650)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩], residual := [((1 : F), 1649), ((1 : F), 1650), ((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1651 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc811 rho) = ((1 : F) * rho 1651)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3857892491519779135344199565860547810935464320097447898939552183113158129847 : F), 901, 5, 149⟩], residual := [((3791555781740349848523116392869666912510788963065689978530698909597937955826 : F), 646), ((3857892491519779135344199565860547810935464320097447898939552183113158129847 : F), 1649)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), runs := [⟨(7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 902, 5, 149⟩], residual := [((2222663926872630171207868096685297004356390653210761896632018977249448862921 : F), 646), ((7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 1650)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
