import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs68

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 880) * (relationLc1397 rho) = ((1 : F) * rho 2321)

def relationLc1398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 84⟩], residual := [((1 : F), 2320), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 880) * (relationLc1398 rho) = ((1 : F) * rho 2322)

def relationLc1399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 85⟩, ⟨(1 : F), 1650, 8, 85⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1399 rho) = ((1 : F) * rho 2323)

def relationLc1400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1879066192185720859001720716634940546786462733152449609726133619691694277915 : F), 901, 5, 149⟩, ⟨(1879066192185720859001720716634940546786462733152449609726133619691694277915 : F), 1649, 8, 85⟩], residual := [((6678797658785789629961131819769428830156350543947805026451029553071902326858 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), runs := [⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 902, 5, 149⟩, ⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 1650, 8, 85⟩], residual := [((6492891130515857752177602999795412507306028350114051338297005871466924782430 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2324 (rho : Nat -> F) : Prop :=
    (relationLc1400 rho) * (relationLc1401 rho) = ((1 : F) * rho 2324)

def relationLc1402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), runs := [⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 902, 5, 149⟩, ⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 1650, 8, 85⟩, ⟨(3913977330483914039989194516719894102771613880155194243203923525953017090015 : F), 901, 5, 149⟩, ⟨(3913977330483914039989194516719894102771613880155194243203923525953017090015 : F), 1649, 8, 85⟩], residual := [((1550297937175903600947477152432027407943628623750730879312902278628518611779 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1402 rho) = ((1 : F) * rho 2325)

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2326) * ((1 : F) + (1 : F) * rho 2324) = ((1 : F) * rho 2325)

def relationLc1403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), runs := [⟨(4530484418944456384259630422061652428604285454998869584731309929964392149026 : F), 901, 5, 149⟩, ⟨(4530484418944456384259630422061652428604285454998869584731309929964392149026 : F), 1649, 8, 85⟩, ⟨(4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), 902, 5, 149⟩, ⟨(4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), 1650, 8, 85⟩], residual := [((6894163812252466823301347786349519123432270711403332948622331177288890627262 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1403 rho) = ((1 : F) * rho 2327)

def relationRow2328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2328) * ((1 : F) + (-1 : F) * rho 2324) = ((7551669405691849558464848305560208146558140515912629817762901314458954317011 : F) * rho 2323 + (1 : F) * rho 2327)

def relationLc1404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 85⟩], residual := [((1 : F), 2326), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 881) * (relationLc1404 rho) = ((1 : F) * rho 2329)

def relationLc1405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 85⟩], residual := [((1 : F), 2328), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 881) * (relationLc1405 rho) = ((1 : F) * rho 2330)

def relationLc1406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 86⟩, ⟨(1 : F), 1650, 8, 86⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1406 rho) = ((1 : F) * rho 2331)

def relationLc1407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3196730064982544033124799297648481003122603156129822480465634308557218599801 : F), 901, 5, 149⟩, ⟨(3196730064982544033124799297648481003122603156129822480465634308557218599801 : F), 1649, 8, 86⟩], residual := [((2458248034789353238519479193172323700487176766405978146033853497356239147455 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), runs := [⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 902, 5, 149⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 1650, 8, 86⟩], residual := [((3187808541585373978812239057781774646112788788225209033943529774632173249982 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2332 (rho : Nat -> F) : Prop :=
    (relationLc1407 rho) * (relationLc1408 rho) = ((1 : F) * rho 2332)

def relationLc1409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), runs := [⟨(1474156925525896642705149136721457630929566882748203065144764536768299201448 : F), 901, 5, 149⟩, ⟨(1474156925525896642705149136721457630929566882748203065144764536768299201448 : F), 1649, 8, 86⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 902, 5, 149⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 1650, 8, 86⟩], residual := [((340258632736410023475915610769122017257590428160467205899845882516157435538 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1409 rho) = ((1 : F) * rho 2333)

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2334) * ((1 : F) + (1 : F) * rho 2332) = ((1 : F) * rho 2333)

def relationLc1410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (479375895765995803047959024831515103337937965404779322041708852513676265408 : F), runs := [⟨(479375895765995803047959024831515103337937965404779322041708852513676265408 : F), 902, 5, 149⟩, ⟨(479375895765995803047959024831515103337937965404779322041708852513676265408 : F), 1650, 8, 86⟩, ⟨(6970304823902473781543675802060088900446332452405860762790468919149110037593 : F), 901, 5, 149⟩, ⟨(6970304823902473781543675802060088900446332452405860762790468919149110037593 : F), 1649, 8, 86⟩], residual := [((8104203116691960400772909328012424514118308906993596622035387573401251803503 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1410 rho) = ((1 : F) * rho 2335)

def relationRow2336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2336) * ((1 : F) + (-1 : F) * rho 2332) = ((994781029759900839657190111889942527591628917343423743103055684254622936040 : F) * rho 2331 + (1 : F) * rho 2335)

def relationLc1411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 86⟩], residual := [((1 : F), 2334), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 882) * (relationLc1411 rho) = ((1 : F) * rho 2337)

def relationLc1412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 86⟩], residual := [((1 : F), 2336), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 882) * (relationLc1412 rho) = ((1 : F) * rho 2338)

def relationLc1413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 87⟩, ⟨(1 : F), 1650, 8, 87⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1413 rho) = ((1 : F) * rho 2339)

def relationLc1414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7484672257564621342969169117937734368918301089472089009153369084064807912895 : F), 901, 5, 149⟩, ⟨(7484672257564621342969169117937734368918301089472089009153369084064807912895 : F), 1649, 8, 87⟩], residual := [((2243051054702272080098422278286580301370479718239376175558435749547655338533 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), runs := [⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 902, 5, 149⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 1650, 8, 87⟩], residual := [((5412226340998192128754120448899200289331961398841384281591755682960184101952 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2340 (rho : Nat -> F) : Prop :=
    (relationLc1414 rho) * (relationLc1415 rho) = ((1 : F) * rho 2340)

def relationLc1416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), runs := [⟨(1369356659294285918173003827931848390669226440244888878142827715666229038664 : F), 901, 5, 149⟩, ⟨(1369356659294285918173003827931848390669226440244888878142827715666229038664 : F), 1649, 8, 87⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 902, 5, 149⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 1650, 8, 87⟩], residual := [((3187946797307268399650523550854902222905663685811130911561670480987092377709 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2341 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1416 rho) = ((1 : F) * rho 2341)

def relationRow2342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2342) * ((1 : F) + (1 : F) * rho 2340) = ((1 : F) * rho 2341)

def relationLc1417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), runs := [⟨(3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), 902, 5, 149⟩, ⟨(3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), 1650, 8, 87⟩, ⟨(7075105090134084506075821110849698140706672894909174949792405740251180200377 : F), 901, 5, 149⟩, ⟨(7075105090134084506075821110849698140706672894909174949792405740251180200377 : F), 1649, 8, 87⟩], residual := [((5256514952121102024598301387926644308470235649342932916373562974930316861332 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2343 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1417 rho) = ((1 : F) * rho 2343)

def relationRow2344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2344) * ((1 : F) + (-1 : F) * rho 2340) = ((6593060814099912706997594702560024238148890466583197963018489458833631944854 : F) * rho 2339 + (1 : F) * rho 2343)

def relationLc1418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 87⟩], residual := [((1 : F), 2342), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 883) * (relationLc1418 rho) = ((1 : F) * rho 2345)

def relationLc1419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 87⟩], residual := [((1 : F), 2344), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 883) * (relationLc1419 rho) = ((1 : F) * rho 2346)

def relationLc1420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 88⟩, ⟨(1 : F), 1650, 8, 88⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2347 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1420 rho) = ((1 : F) * rho 2347)

def relationLc1421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5826895706475092757243459512385933230547216745435924787067233253579232099562 : F), 901, 5, 149⟩, ⟨(5826895706475092757243459512385933230547216745435924787067233253579232099562 : F), 1649, 8, 88⟩], residual := [((5432031083734210952568685556973047110028320066777387046666414780905740162675 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), runs := [⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 902, 5, 149⟩, ⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 1650, 8, 88⟩], residual := [((7139782703415344306931719791673397024107800243006857408208968492790013069723 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2348 (rho : Nat -> F) : Prop :=
    (relationLc1421 rho) * (relationLc1422 rho) = ((1 : F) * rho 2348)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
