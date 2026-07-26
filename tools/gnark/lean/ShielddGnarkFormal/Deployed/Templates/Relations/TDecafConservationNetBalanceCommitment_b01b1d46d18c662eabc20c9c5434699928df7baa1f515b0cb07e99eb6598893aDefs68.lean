import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs67

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow2653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1373) * (relationLc1240 rho) = ((1 : F) * rho 2653)

def relationLc1241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 61⟩], residual := [((1 : F), 2652), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1373) * (relationLc1241 rho) = ((1 : F) * rho 2654)

def relationLc1242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 62⟩, ⟨(1 : F), 2166, 8, 62⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2655 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1242 rho) = ((1 : F) * rho 2655)

def relationLc1243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2837729429168183365821813808664056269128234350919573610021128857067124470391 : F), 1417, 5, 149⟩, ⟨(2837729429168183365821813808664056269128234350919573610021128857067124470391 : F), 2165, 8, 62⟩], residual := [((3157723186260032143823963446973739579877072376899281825095772845969261506130 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3739632739089117939069446857547051358477682486351816434724250294787084895236 : F), runs := [⟨(3739632739089117939069446857547051358477682486351816434724250294787084895236 : F), 1418, 5, 149⟩, ⟨(3739632739089117939069446857547051358477682486351816434724250294787084895236 : F), 2166, 8, 62⟩], residual := [((4806844747205417157608727923015087857542443673724285003669831375590022914970 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2656 (rho : Nat -> F) : Prop :=
    (relationLc1243 rho) * (relationLc1244 rho) = ((1 : F) * rho 2656)

def relationLc1245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3739632739089117939069446857547051358477682486351816434724250294787084895236 : F), runs := [⟨(3739632739089117939069446857547051358477682486351816434724250294787084895236 : F), 1418, 5, 149⟩, ⟨(3739632739089117939069446857547051358477682486351816434724250294787084895236 : F), 2166, 8, 62⟩, ⟨(546013826735418873252016774866291171760155115758345587572787703661357804066 : F), 1417, 5, 149⟩, ⟨(546013826735418873252016774866291171760155115758345587572787703661357804066 : F), 2165, 8, 62⟩], residual := [((3108375690447327390710528121845870197331695668627703896235363924960491118932 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2657 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1245 rho) = ((1 : F) * rho 2657)

def relationRow2658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2658) * ((1 : F) + (1 : F) * rho 2656) = ((1 : F) * rho 2657)

def relationLc1246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4704829010339252485179378081234495172898216848802247393210983161130324343805 : F), runs := [⟨(4704829010339252485179378081234495172898216848802247393210983161130324343805 : F), 1418, 5, 149⟩, ⟨(4704829010339252485179378081234495172898216848802247393210983161130324343805 : F), 2166, 8, 62⟩, ⟨(7898447922692951550996808163915255359615744219395718240362445752256051434975 : F), 1417, 5, 149⟩, ⟨(7898447922692951550996808163915255359615744219395718240362445752256051434975 : F), 2165, 8, 62⟩], residual := [((5336086058981043033538296816935676334044203666526359931699869530956918120109 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2659 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1246 rho) = ((1 : F) * rho 2659)

def relationRow2660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2660) * ((1 : F) + (-1 : F) * rho 2656) = ((4285646565824536812321463632413342530237837602110162022297037998448442699302 : F) * rho 2655 + (1 : F) * rho 2659)

def relationLc1247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 62⟩], residual := [((1 : F), 2658), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1374) * (relationLc1247 rho) = ((1 : F) * rho 2661)

def relationLc1248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 62⟩], residual := [((1 : F), 2660), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1374) * (relationLc1248 rho) = ((1 : F) * rho 2662)

def relationLc1249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 63⟩, ⟨(1 : F), 2166, 8, 63⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2663 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1249 rho) = ((1 : F) * rho 2663)

def relationLc1250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2586469818924823454887685248736220462575497719111012568833522605742026276421 : F), 1417, 5, 149⟩, ⟨(2586469818924823454887685248736220462575497719111012568833522605742026276421 : F), 2165, 8, 63⟩], residual := [((1223079788514069685123698545792301459336818710372046044529245059208797479587 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3805711175492090543188314150909428653142552635908459800414467119734417207008 : F), runs := [⟨(3805711175492090543188314150909428653142552635908459800414467119734417207008 : F), 1418, 5, 149⟩, ⟨(3805711175492090543188314150909428653142552635908459800414467119734417207008 : F), 2166, 8, 63⟩], residual := [((615792064455068526792965686539625562780320821830408171915025156311598660413 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2664 (rho : Nat -> F) : Prop :=
    (relationLc1250 rho) * (relationLc1251 rho) = ((1 : F) * rho 2664)

def relationLc1252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3805711175492090543188314150909428653142552635908459800414467119734417207008 : F), runs := [⟨(3805711175492090543188314150909428653142552635908459800414467119734417207008 : F), 1418, 5, 149⟩, ⟨(3805711175492090543188314150909428653142552635908459800414467119734417207008 : F), 2166, 8, 63⟩, ⟨(8067958649013307470320091512271525822579748751729142409794742560868383015607 : F), 1417, 5, 149⟩, ⟨(8067958649013307470320091512271525822579748751729142409794742560868383015607 : F), 2165, 8, 63⟩], residual := [((7011737632969012783782848228240377222908554683976343320660587351676789370908 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2665 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1252 rho) = ((1 : F) * rho 2665)

def relationRow2666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2666) * ((1 : F) + (1 : F) * rho 2664) = ((1 : F) * rho 2665)

def relationLc1253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4638750573936279881060510787872117878233346699245604027520766336182992032033 : F), runs := [⟨(376503100415062953928733426510020708796150583424921418140490895049026223434 : F), 1417, 5, 149⟩, ⟨(376503100415062953928733426510020708796150583424921418140490895049026223434 : F), 2165, 8, 63⟩, ⟨(4638750573936279881060510787872117878233346699245604027520766336182992032033 : F), 1418, 5, 149⟩, ⟨(4638750573936279881060510787872117878233346699245604027520766336182992032033 : F), 2166, 8, 63⟩], residual := [((1432724116459357640465976710541169308467344651177720507274646104240619868133 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2667 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1253 rho) = ((1 : F) * rho 2667)

def relationRow2668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2668) * ((1 : F) + (-1 : F) * rho 2664) = ((3429208075077027589259580724399407944346402052483538382273976224685390983574 : F) * rho 2663 + (1 : F) * rho 2667)

def relationLc1254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 63⟩], residual := [((1 : F), 2666), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1375) * (relationLc1254 rho) = ((1 : F) * rho 2669)

def relationLc1255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 63⟩], residual := [((1 : F), 2668), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1375) * (relationLc1255 rho) = ((1 : F) * rho 2670)

def relationLc1256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 64⟩, ⟨(1 : F), 2166, 8, 64⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2671 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1256 rho) = ((1 : F) * rho 2671)

def relationLc1257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(427870354883302746539286970356984492783584904477385604274508508746579111977 : F), 1417, 5, 149⟩, ⟨(427870354883302746539286970356984492783584904477385604274508508746579111977 : F), 2165, 8, 64⟩], residual := [((7684909229183172772809243730529769896730912256138259583235399444557459599888 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), runs := [⟨(3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), 1418, 5, 149⟩, ⟨(3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), 2166, 8, 64⟩], residual := [((5079759746100250841722809672260757649290299822485304154344672621301032296151 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2672 (rho : Nat -> F) : Prop :=
    (relationLc1257 rho) * (relationLc1258 rho) = ((1 : F) * rho 2672)

def relationLc1259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), runs := [⟨(3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), 1418, 5, 149⟩, ⟨(3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), 2166, 8, 64⟩, ⟨(8142715970354096772122928279920887795561330138433719071956176618866653324210 : F), 1417, 5, 149⟩, ⟨(8142715970354096772122928279920887795561330138433719071956176618866653324210 : F), 2165, 8, 64⟩], residual := [((5227656773640621061793563773732843114211940894211272237309210039093903113771 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2673 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1259 rho) = ((1 : F) * rho 2673)

def relationRow2674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2674) * ((1 : F) + (1 : F) * rho 2672) = ((1 : F) * rho 2673)

def relationLc1260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), runs := [⟨(301745779074273652125896658860658735814569196720344755979056837050755914831 : F), 1417, 5, 149⟩, ⟨(301745779074273652125896658860658735814569196720344755979056837050755914831 : F), 2165, 8, 64⟩, ⟨(4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), 1418, 5, 149⟩, ⟨(4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), 2166, 8, 64⟩], residual := [((3216804975787749362455261165048703417163958440942791590626023416823506125270 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2675 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1260 rho) = ((1 : F) * rho 2675)

def relationRow2676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2676) * ((1 : F) + (-1 : F) * rho 2672) = ((3217954906852998665598293187294674144458284639129810936652294416225472541752 : F) * rho 2671 + (1 : F) * rho 2675)

def relationLc1261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 64⟩], residual := [((1 : F), 2674), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1376) * (relationLc1261 rho) = ((1 : F) * rho 2677)

def relationLc1262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 64⟩], residual := [((1 : F), 2676), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1376) * (relationLc1262 rho) = ((1 : F) * rho 2678)

def relationLc1263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 65⟩, ⟨(1 : F), 2166, 8, 65⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2679 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1263 rho) = ((1 : F) * rho 2679)

def relationLc1264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(934262429588865376316763202666333572876159624379441072857832507528287283612 : F), 1417, 5, 149⟩, ⟨(934262429588865376316763202666333572876159624379441072857832507528287283612 : F), 2165, 8, 65⟩], residual := [((620727456495781485108528089440261790333141839184177284132127399822216471535 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), runs := [⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 1418, 5, 149⟩, ⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 2166, 8, 65⟩], residual := [((3734213338409769056441767094129838517498634193117154240157192061073862909754 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2680 (rho : Nat -> F) : Prop :=
    (relationLc1264 rho) * (relationLc1265 rho) = ((1 : F) * rho 2680)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
