import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs45

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2150) * ((1 : F) + (1 : F) * rho 2149) = (relationLc798 rho)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 1418, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 1417, 5, 147⟩], residual := [((3467479019004453162730986798774003415771318403164721714371641933457751375709 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2151) * ((1 : F) + (-1 : F) * rho 2149) = (relationLc799 rho)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 147⟩], residual := [((1 : F), 2150), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1310) * (relationLc800 rho) = ((1 : F) * rho 2152)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 147⟩], residual := [((1 : F), 2151), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1310) * (relationLc801 rho) = ((1 : F) * rho 2153)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1887173869757452217127354553994110507380693968538107207946756764433871159920 : F), 1417, 5, 148⟩], residual := [((6797392141279192384516404029143892662891923559703983278897604030892503623828 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 1418, 5, 148⟩], residual := [((6343317400306385386895877175675774260633137368150663240692422291625258108993 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2154 (rho : Nat -> F) : Prop :=
    (relationLc802 rho) * (relationLc803 rho) = ((1 : F) * rho 2154)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 1418, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 1417, 5, 148⟩], residual := [((215575849708855711956070261833077256116601347484275292535166626350188278608 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2155) * ((1 : F) + (1 : F) * rho 2154) = (relationLc804 rho)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), runs := [⟨(4336613438010093499737197778360509428706027344924455620929905557371720268254 : F), 1417, 5, 148⟩, ⟨(7187222221665043963244242393962711103169420021400078188953800718943427019111 : F), 1418, 5, 148⟩], residual := [((4191003316144029093348197336174585539878859078918694914011898855701778772137 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2156) * ((1 : F) + (-1 : F) * rho 2154) = (relationLc805 rho)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 148⟩], residual := [((1 : F), 2155), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1311) * (relationLc806 rho) = ((1 : F) * rho 2157)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 148⟩], residual := [((1 : F), 2156), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1311) * (relationLc807 rho) = ((1 : F) * rho 2158)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc808 rho) = ((1 : F) * rho 2159)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2645171301799192586536245358319910734839252795234711927900341247861170030750 : F), 1417, 5, 149⟩], residual := [((4189255197022180768636901000763825229828366975462594921711874705377393462042 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 1418, 5, 149⟩], residual := [((5342522809091263807831683907005673064454098137889293612326091254709019033459 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2160 (rho : Nat -> F) : Prop :=
    (relationLc809 rho) * (relationLc810 rho) = ((1 : F) * rho 2160)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), runs := [⟨(2189559325092424109491349279187113818206609874948979374114924904743857200993 : F), 1417, 5, 149⟩, ⟨(7868758121497751340208737127760862170304367533794900100080662008177780307253 : F), 1418, 5, 149⟩], residual := [((4343208657784301069959309717305894900600161165029415341727249247918865073143 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc811 rho) = ((1 : F) * rho 2161)

def relationRow2162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2162) * ((1 : F) + (1 : F) * rho 2160) = ((1 : F) * rho 2161)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (575703627930619084040087811020684361071531801359163727854571447739628931788 : F), runs := [⟨(575703627930619084040087811020684361071531801359163727854571447739628931788 : F), 1418, 5, 149⟩, ⟨(6254902424335946314757475659594432713169289460205084453820308551173552038048 : F), 1417, 5, 149⟩], residual := [((4101253091644069354289515221475651630775738170124648486207984207998544165898 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2163 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc812 rho) = ((1 : F) * rho 2163)

def relationRow2164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2164) * ((1 : F) + (-1 : F) * rho 2160) = ((1613855697161805025451261468166429457135078073589815646260353457004228269205 : F) * rho 2159 + (1 : F) * rho 2163)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩], residual := [((1 : F), 2162), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1312) * (relationLc813 rho) = ((1 : F) * rho 2165)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩], residual := [((1 : F), 2164), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1312) * (relationLc814 rho) = ((1 : F) * rho 2166)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩], residual := [((1 : F), 2165), ((1 : F), 2166), ((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2167 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc815 rho) = ((1 : F) * rho 2167)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3857892491519779135344199565860547810935464320097447898939552183113158129847 : F), 1417, 5, 149⟩], residual := [((3791555781740349848523116392869666912510788963065689978530698909597937955826 : F), 1162), ((3857892491519779135344199565860547810935464320097447898939552183113158129847 : F), 2165)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), runs := [⟨(7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 1418, 5, 149⟩], residual := [((2222663926872630171207868096685297004356390653210761896632018977249448862921 : F), 1162), ((7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 2166)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2168 (rho : Nat -> F) : Prop :=
    (relationLc816 rho) * (relationLc817 rho) = ((1 : F) * rho 2168)

def relationLc818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), runs := [⟨(1074654486683884151620951001674271570956398811327129413381684607499304305171 : F), 1417, 5, 149⟩, ⟨(7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 1418, 5, 149⟩], residual := [((1074654486683884151620951001674271570956398811327129413381684607499304305171 : F), 2165), ((7217505745159762701548223158489870661170246483945651316552729469734220794956 : F), 2166), ((829087343892485685325166829535637271736707442592154759868976674835284919748 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2169 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc818 rho) = ((1 : F) * rho 2169)

def relationRow2170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2170) * ((1 : F) + (1 : F) * rho 2168) = ((1 : F) * rho 2169)

def relationLc819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), runs := [⟨(1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), 1418, 5, 149⟩, ⟨(7369807262744486272627873937107274960419500523826934414553548848418104933870 : F), 1417, 5, 149⟩], residual := [((1226956004268607722700601780291675870205652851208412511382503986183188444085 : F), 2166), ((7369807262744486272627873937107274960419500523826934414553548848418104933870 : F), 2165), ((7615374405535884738923658109245909259639191892561909068066256781082124319293 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2171 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc819 rho) = ((1 : F) * rho 2171)

def relationRow2172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2172) * ((1 : F) + (-1 : F) * rho 2168) = ((8292160231843646853169174160164142232126645295272780729934414077233525100127 : F) * rho 2167 + (1 : F) * rho 2171)

def relationLc820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩], residual := [((-1 : F), 2165), ((1 : F), 2170), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1313) * (relationLc820 rho) = ((1 : F) * rho 2173)

def relationLc821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩], residual := [((-1 : F), 2166), ((1 : F), 2172), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1313) * (relationLc821 rho) = ((1 : F) * rho 2174)

def relationLc822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩], residual := [((1 : F), 2165), ((1 : F), 2166), ((1 : F), 2173), ((1 : F), 2174), ((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2175 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc822 rho) = ((1 : F) * rho 2175)

def relationLc823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2697203927696304349705697386038062090820108262677006965850459294869434750778 : F), 1417, 5, 149⟩], residual := [((2697203927696304349705697386038062090820108262677006965850459294869434750778 : F), 2165), ((2697203927696304349705697386038062090820108262677006965850459294869434750778 : F), 2173), ((4028920331174628317027597966406648616666335012509183425577571528369043530747 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), runs := [⟨(8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 1418, 5, 149⟩], residual := [((2704683006927187740067547926043000158693614424332161260817582052933126947922 : F), 1162), ((8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 2166), ((8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 2174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2176 (rho : Nat -> F) : Prop :=
    (relationLc823 rho) * (relationLc824 rho) = ((1 : F) * rho 2176)

def relationLc825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), runs := [⟨(4766800558326073445115508844094198907013150769513523943593321251782208602223 : F), 1417, 5, 149⟩, ⟨(8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 1418, 5, 149⟩], residual := [((4766800558326073445115508844094198907013150769513523943593321251782208602223 : F), 2165), ((4766800558326073445115508844094198907013150769513523943593321251782208602223 : F), 2173), ((5280445400689089027406242188401229554262588149154869625251189330135478140470 : F), 1162), ((8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 2166), ((8290330328115117660172148332915612272253375214659374914357172012503586879123 : F), 2174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2177 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc825 rho) = ((1 : F) * rho 2177)

def relationRow2178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2178) * ((1 : F) + (1 : F) * rho 2176) = ((1 : F) * rho 2177)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
