import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs113

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow6065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * (relationLc1402 rho) = ((1 : F) * rho 5891)

def relationLc1403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 84⟩], residual := [((1 : F), 5890), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4450) * (relationLc1403 rho) = ((1 : F) * rho 5892)

def relationLc1404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 85⟩, ⟨(1 : F), 5220, 8, 85⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6067 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1404 rho) = ((1 : F) * rho 5893)

def relationLc1405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1879066192185720859001720716634940546786462733152449609726133619691694277915 : F), 4471, 5, 149⟩, ⟨(1879066192185720859001720716634940546786462733152449609726133619691694277915 : F), 5219, 8, 85⟩], residual := [((6678797658785789629961131819769428830156350543947805026451029553071902326858 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), runs := [⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 4472, 5, 149⟩, ⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 5220, 8, 85⟩], residual := [((6492891130515857752177602999795412507306028350114051338297005871466924782430 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6068 (rho : Nat -> F) : Prop :=
    (relationLc1405 rho) * (relationLc1406 rho) = ((1 : F) * rho 5894)

def relationLc1407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), runs := [⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 4472, 5, 149⟩, ⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 5220, 8, 85⟩, ⟨(3913977330483914039989194516719894102771613880155194243203923525953017090015 : F), 4471, 5, 149⟩, ⟨(3913977330483914039989194516719894102771613880155194243203923525953017090015 : F), 5219, 8, 85⟩], residual := [((1550297937175903600947477152432027407943628623750730879312902278628518611779 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6069 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1407 rho) = ((1 : F) * rho 5895)

def relationRow6070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5896) * ((1 : F) + (1 : F) * rho 5894) = ((1 : F) * rho 5895)

def relationLc1408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), runs := [⟨(4530484418944456384259630422061652428604285454998869584731309929964392149026 : F), 4471, 5, 149⟩, ⟨(4530484418944456384259630422061652428604285454998869584731309929964392149026 : F), 5219, 8, 85⟩, ⟨(4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), 4472, 5, 149⟩, ⟨(4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), 5220, 8, 85⟩], residual := [((6894163812252466823301347786349519123432270711403332948622331177288890627262 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6071 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1408 rho) = ((1 : F) * rho 5897)

def relationRow6072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5898) * ((1 : F) + (-1 : F) * rho 5894) = ((7551669405691849558464848305560208146558140515912629817762901314458954317011 : F) * rho 5893 + (1 : F) * rho 5897)

def relationLc1409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 85⟩], residual := [((1 : F), 5896), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4451) * (relationLc1409 rho) = ((1 : F) * rho 5899)

def relationLc1410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 85⟩], residual := [((1 : F), 5898), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4451) * (relationLc1410 rho) = ((1 : F) * rho 5900)

def relationLc1411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 86⟩, ⟨(1 : F), 5220, 8, 86⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6075 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1411 rho) = ((1 : F) * rho 5901)

def relationLc1412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3196730064982544033124799297648481003122603156129822480465634308557218599801 : F), 4471, 5, 149⟩, ⟨(3196730064982544033124799297648481003122603156129822480465634308557218599801 : F), 5219, 8, 86⟩], residual := [((2458248034789353238519479193172323700487176766405978146033853497356239147455 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), runs := [⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 4472, 5, 149⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 5220, 8, 86⟩], residual := [((3187808541585373978812239057781774646112788788225209033943529774632173249982 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6076 (rho : Nat -> F) : Prop :=
    (relationLc1412 rho) * (relationLc1413 rho) = ((1 : F) * rho 5902)

def relationLc1414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), runs := [⟨(1474156925525896642705149136721457630929566882748203065144764536768299201448 : F), 4471, 5, 149⟩, ⟨(1474156925525896642705149136721457630929566882748203065144764536768299201448 : F), 5219, 8, 86⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 4472, 5, 149⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 5220, 8, 86⟩], residual := [((340258632736410023475915610769122017257590428160467205899845882516157435538 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6077 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1414 rho) = ((1 : F) * rho 5903)

def relationRow6078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5904) * ((1 : F) + (1 : F) * rho 5902) = ((1 : F) * rho 5903)

def relationLc1415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (479375895765995803047959024831515103337937965404779322041708852513676265408 : F), runs := [⟨(479375895765995803047959024831515103337937965404779322041708852513676265408 : F), 4472, 5, 149⟩, ⟨(479375895765995803047959024831515103337937965404779322041708852513676265408 : F), 5220, 8, 86⟩, ⟨(6970304823902473781543675802060088900446332452405860762790468919149110037593 : F), 4471, 5, 149⟩, ⟨(6970304823902473781543675802060088900446332452405860762790468919149110037593 : F), 5219, 8, 86⟩], residual := [((8104203116691960400772909328012424514118308906993596622035387573401251803503 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6079 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1415 rho) = ((1 : F) * rho 5905)

def relationRow6080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5906) * ((1 : F) + (-1 : F) * rho 5902) = ((994781029759900839657190111889942527591628917343423743103055684254622936040 : F) * rho 5901 + (1 : F) * rho 5905)

def relationLc1416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 86⟩], residual := [((1 : F), 5904), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4452) * (relationLc1416 rho) = ((1 : F) * rho 5907)

def relationLc1417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 86⟩], residual := [((1 : F), 5906), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4452) * (relationLc1417 rho) = ((1 : F) * rho 5908)

def relationLc1418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 87⟩, ⟨(1 : F), 5220, 8, 87⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6083 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1418 rho) = ((1 : F) * rho 5909)

def relationLc1419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7484672257564621342969169117937734368918301089472089009153369084064807912895 : F), 4471, 5, 149⟩, ⟨(7484672257564621342969169117937734368918301089472089009153369084064807912895 : F), 5219, 8, 87⟩], residual := [((2243051054702272080098422278286580301370479718239376175558435749547655338533 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), runs := [⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 4472, 5, 149⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 5220, 8, 87⟩], residual := [((5412226340998192128754120448899200289331961398841384281591755682960184101952 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6084 (rho : Nat -> F) : Prop :=
    (relationLc1419 rho) * (relationLc1420 rho) = ((1 : F) * rho 5910)

def relationLc1421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), runs := [⟨(1369356659294285918173003827931848390669226440244888878142827715666229038664 : F), 4471, 5, 149⟩, ⟨(1369356659294285918173003827931848390669226440244888878142827715666229038664 : F), 5219, 8, 87⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 4472, 5, 149⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 5220, 8, 87⟩], residual := [((3187946797307268399650523550854902222905663685811130911561670480987092377709 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6085 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1421 rho) = ((1 : F) * rho 5911)

def relationRow6086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5912) * ((1 : F) + (1 : F) * rho 5910) = ((1 : F) * rho 5911)

def relationLc1422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), runs := [⟨(3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), 4472, 5, 149⟩, ⟨(3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), 5220, 8, 87⟩, ⟨(7075105090134084506075821110849698140706672894909174949792405740251180200377 : F), 4471, 5, 149⟩, ⟨(7075105090134084506075821110849698140706672894909174949792405740251180200377 : F), 5219, 8, 87⟩], residual := [((5256514952121102024598301387926644308470235649342932916373562974930316861332 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6087 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1422 rho) = ((1 : F) * rho 5913)

def relationRow6088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5914) * ((1 : F) + (-1 : F) * rho 5910) = ((6593060814099912706997594702560024238148890466583197963018489458833631944854 : F) * rho 5909 + (1 : F) * rho 5913)

def relationLc1423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 87⟩], residual := [((1 : F), 5912), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4453) * (relationLc1423 rho) = ((1 : F) * rho 5915)

def relationLc1424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 87⟩], residual := [((1 : F), 5914), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4453) * (relationLc1424 rho) = ((1 : F) * rho 5916)

def relationLc1425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 88⟩, ⟨(1 : F), 5220, 8, 88⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6091 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1425 rho) = ((1 : F) * rho 5917)

def relationLc1426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5826895706475092757243459512385933230547216745435924787067233253579232099562 : F), 4471, 5, 149⟩, ⟨(5826895706475092757243459512385933230547216745435924787067233253579232099562 : F), 5219, 8, 88⟩], residual := [((5432031083734210952568685556973047110028320066777387046666414780905740162675 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), runs := [⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 4472, 5, 149⟩, ⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 5220, 8, 88⟩], residual := [((7139782703415344306931719791673397024107800243006857408208968492790013069723 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6092 (rho : Nat -> F) : Prop :=
    (relationLc1426 rho) * (relationLc1427 rho) = ((1 : F) * rho 5918)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
