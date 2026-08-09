import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs84

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 4472, 5, 145⟩], residual := [((4242845817114224427945064867609693310190584888653730496427512569643691008850 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5367 (rho : Nat -> F) : Prop :=
    (relationLc785 rho) * (relationLc786 rho) = ((1 : F) * rho 5193)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 4471, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 4472, 5, 145⟩], residual := [((2672846260254954467962306853056572416460509804968088057604107868376042645620 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5194) * ((1 : F) + (1 : F) * rho 5193) = (relationLc787 rho)

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 4472, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 4471, 5, 145⟩], residual := [((3156917330037967942116929786651494679451482823360775864727015008418724551159 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5195) * ((1 : F) + (-1 : F) * rho 5193) = (relationLc788 rho)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 145⟩], residual := [((1 : F), 5194), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4362) * (relationLc789 rho) = ((1 : F) * rho 5196)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 145⟩], residual := [((1 : F), 5195), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4362) * (relationLc790 rho) = ((1 : F) * rho 5197)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4969710126479417040242673845284668082827372776959296050209878365457438797350 : F), 4471, 5, 146⟩], residual := [((2271931576910216759912135799054106294509899499123123665253121747066940025690 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 4472, 5, 146⟩], residual := [((7173440006072889427306769788914478402450473304064369961075503691215984571384 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5372 (rho : Nat -> F) : Prop :=
    (relationLc791 rho) * (relationLc792 rho) = ((1 : F) * rho 5198)

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 4471, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 4472, 5, 146⟩], residual := [((7845052965834464772748554006427429502690369278885984804627211453932715838314 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5199) * ((1 : F) + (1 : F) * rho 5198) = (relationLc793 rho)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 4472, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 4471, 5, 146⟩], residual := [((3568703348387618865037818114798549685267027754823348245285753842434728604050 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5200) * ((1 : F) + (-1 : F) * rho 5198) = (relationLc794 rho)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 146⟩], residual := [((1 : F), 5199), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4363) * (relationLc795 rho) = ((1 : F) * rho 5201)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 146⟩], residual := [((1 : F), 5200), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4363) * (relationLc796 rho) = ((1 : F) * rho 5202)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2719012481549545869324764786358786154111901976412339216924475349808954699287 : F), 4471, 5, 147⟩], residual := [((7069867608569530454272722591226468214154025324532012652884181240601038076182 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 4472, 5, 147⟩], residual := [((2514506040517189860011682643505832214683020728103087183572227706463071033086 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5377 (rho : Nat -> F) : Prop :=
    (relationLc797 rho) * (relationLc798 rho) = ((1 : F) * rho 5203)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 4471, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 4472, 5, 147⟩], residual := [((4957102854439578774551072545573861539444793036912762699772275037895212477561 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5204) * ((1 : F) + (1 : F) * rho 5203) = (relationLc799 rho)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 4472, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 4471, 5, 147⟩], residual := [((3467479019004453162730986798774003415771318403164721714371641933457751375709 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5205) * ((1 : F) + (-1 : F) * rho 5203) = (relationLc800 rho)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 147⟩], residual := [((1 : F), 5204), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4364) * (relationLc801 rho) = ((1 : F) * rho 5206)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 147⟩], residual := [((1 : F), 5205), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4364) * (relationLc802 rho) = ((1 : F) * rho 5207)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1887173869757452217127354553994110507380693968538107207946756764433871159920 : F), 4471, 5, 148⟩], residual := [((6797392141279192384516404029143892662891923559703983278897604030892503623828 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 4472, 5, 148⟩], residual := [((6343317400306385386895877175675774260633137368150663240692422291625258108993 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5382 (rho : Nat -> F) : Prop :=
    (relationLc803 rho) * (relationLc804 rho) = ((1 : F) * rho 5208)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 4472, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 4471, 5, 148⟩], residual := [((215575849708855711956070261833077256116601347484275292535166626350188278608 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5209) * ((1 : F) + (1 : F) * rho 5208) = (relationLc805 rho)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 4471, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 4472, 5, 148⟩], residual := [((4191003316144029093348197336174585539878859078918694914011898855701778772137 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5210) * ((1 : F) + (-1 : F) * rho 5208) = (relationLc806 rho)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 148⟩], residual := [((1 : F), 5209), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * (relationLc807 rho) = ((1 : F) * rho 5211)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 148⟩], residual := [((1 : F), 5210), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4365) * (relationLc808 rho) = ((1 : F) * rho 5212)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5387 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc809 rho) = ((1 : F) * rho 5213)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2645171301799192586536245358319910734839252795234711927900341247861170030750 : F), 4471, 5, 149⟩], residual := [((4189255197022180768636901000763825229828366975462594921711874705377393462042 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 4472, 5, 149⟩], residual := [((5342522809091263807831683907005673064454098137889293612326091254709019033459 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5388 (rho : Nat -> F) : Prop :=
    (relationLc810 rho) * (relationLc811 rho) = ((1 : F) * rho 5214)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(2189559325092424109491349279187113818206609874948979374114924904743857200993 : F), 4471, 5, 149⟩, ⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 4472, 5, 149⟩], residual := [((4343208657784301069959309717305894900600161165029415341727249247918865073143 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5389 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc812 rho) = ((1 : F) * rho 5215)

def relationRow5390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5216) * ((1 : F) + (1 : F) * rho 5214) = ((1 : F) * rho 5215)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (575703627930619084040087811020684361071531801359163727854571447739628931788 : F), runs := [⟨(575703627930619084040087811020684361071531801359163727854571447739628931788 : F), 4472, 5, 149⟩, ⟨(6254902424335946314757475659594432713169289460205084453820308551173552038048 : F), 4471, 5, 149⟩], residual := [((4101253091644069354289515221475651630775738170124648486207984207998544165898 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5391 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc813 rho) = ((1 : F) * rho 5217)

def relationRow5392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5218) * ((1 : F) + (-1 : F) * rho 5214) = ((1613855697161805025451261468166429457135078073589815646260353457004228269205 : F) * rho 5213 + (1 : F) * rho 5217)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩], residual := [((1 : F), 5216), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * (relationLc814 rho) = ((1 : F) * rho 5219)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩], residual := [((1 : F), 5218), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4366) * (relationLc815 rho) = ((1 : F) * rho 5220)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
