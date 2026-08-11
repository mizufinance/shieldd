import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs67

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), runs := [⟨(4530484418944456384259630422061652428604285454998869584731309929964392149026 : F), 772, 5, 149⟩, ⟨(4530484418944456384259630422061652428604285454998869584731309929964392149026 : F), 1520, 8, 85⟩, ⟨(4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), 773, 5, 149⟩, ⟨(4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), 1521, 8, 85⟩], residual := [((6894163812252466823301347786349519123432270711403332948622331177288890627262 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2198 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1402 rho) = ((1 : F) * rho 2198)

def relationRow2199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2199) * ((1 : F) + (-1 : F) * rho 2195) = ((7551669405691849558464848305560208146558140515912629817762901314458954317011 : F) * rho 2194 + (1 : F) * rho 2198)

def relationLc1403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 85⟩], residual := [((1 : F), 2197), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 752) * (relationLc1403 rho) = ((1 : F) * rho 2200)

def relationLc1404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 85⟩], residual := [((1 : F), 2199), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 752) * (relationLc1404 rho) = ((1 : F) * rho 2201)

def relationLc1405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 86⟩, ⟨(1 : F), 1521, 8, 86⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2202 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1405 rho) = ((1 : F) * rho 2202)

def relationLc1406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3196730064982544033124799297648481003122603156129822480465634308557218599801 : F), 772, 5, 149⟩, ⟨(3196730064982544033124799297648481003122603156129822480465634308557218599801 : F), 1520, 8, 86⟩], residual := [((2458248034789353238519479193172323700487176766405978146033853497356239147455 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), runs := [⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 773, 5, 149⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 1521, 8, 86⟩], residual := [((3187808541585373978812239057781774646112788788225209033943529774632173249982 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2203 (rho : Nat -> F) : Prop :=
    (relationLc1406 rho) * (relationLc1407 rho) = ((1 : F) * rho 2203)

def relationLc1408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), runs := [⟨(1474156925525896642705149136721457630929566882748203065144764536768299201448 : F), 772, 5, 149⟩, ⟨(1474156925525896642705149136721457630929566882748203065144764536768299201448 : F), 1520, 8, 86⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 773, 5, 149⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 1521, 8, 86⟩], residual := [((340258632736410023475915610769122017257590428160467205899845882516157435538 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2204 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1408 rho) = ((1 : F) * rho 2204)

def relationRow2205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2205) * ((1 : F) + (1 : F) * rho 2203) = ((1 : F) * rho 2204)

def relationLc1409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (479375895765995803047959024831515103337937965404779322041708852513676265408 : F), runs := [⟨(479375895765995803047959024831515103337937965404779322041708852513676265408 : F), 773, 5, 149⟩, ⟨(479375895765995803047959024831515103337937965404779322041708852513676265408 : F), 1521, 8, 86⟩, ⟨(6970304823902473781543675802060088900446332452405860762790468919149110037593 : F), 772, 5, 149⟩, ⟨(6970304823902473781543675802060088900446332452405860762790468919149110037593 : F), 1520, 8, 86⟩], residual := [((8104203116691960400772909328012424514118308906993596622035387573401251803503 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2206 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1409 rho) = ((1 : F) * rho 2206)

def relationRow2207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2207) * ((1 : F) + (-1 : F) * rho 2203) = ((994781029759900839657190111889942527591628917343423743103055684254622936040 : F) * rho 2202 + (1 : F) * rho 2206)

def relationLc1410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 86⟩], residual := [((1 : F), 2205), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 753) * (relationLc1410 rho) = ((1 : F) * rho 2208)

def relationLc1411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 86⟩], residual := [((1 : F), 2207), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 753) * (relationLc1411 rho) = ((1 : F) * rho 2209)

def relationLc1412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 87⟩, ⟨(1 : F), 1521, 8, 87⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2210 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1412 rho) = ((1 : F) * rho 2210)

def relationLc1413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7484672257564621342969169117937734368918301089472089009153369084064807912895 : F), 772, 5, 149⟩, ⟨(7484672257564621342969169117937734368918301089472089009153369084064807912895 : F), 1520, 8, 87⟩], residual := [((2243051054702272080098422278286580301370479718239376175558435749547655338533 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), runs := [⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 773, 5, 149⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 1521, 8, 87⟩], residual := [((5412226340998192128754120448899200289331961398841384281591755682960184101952 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2211 (rho : Nat -> F) : Prop :=
    (relationLc1413 rho) * (relationLc1414 rho) = ((1 : F) * rho 2211)

def relationLc1415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), runs := [⟨(1369356659294285918173003827931848390669226440244888878142827715666229038664 : F), 772, 5, 149⟩, ⟨(1369356659294285918173003827931848390669226440244888878142827715666229038664 : F), 1520, 8, 87⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 773, 5, 149⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 1521, 8, 87⟩], residual := [((3187946797307268399650523550854902222905663685811130911561670480987092377709 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2212 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1415 rho) = ((1 : F) * rho 2212)

def relationRow2213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2213) * ((1 : F) + (1 : F) * rho 2211) = ((1 : F) * rho 2212)

def relationLc1416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), runs := [⟨(3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), 773, 5, 149⟩, ⟨(3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), 1521, 8, 87⟩, ⟨(7075105090134084506075821110849698140706672894909174949792405740251180200377 : F), 772, 5, 149⟩, ⟨(7075105090134084506075821110849698140706672894909174949792405740251180200377 : F), 1520, 8, 87⟩], residual := [((5256514952121102024598301387926644308470235649342932916373562974930316861332 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2214 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1416 rho) = ((1 : F) * rho 2214)

def relationRow2215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2215) * ((1 : F) + (-1 : F) * rho 2211) = ((6593060814099912706997594702560024238148890466583197963018489458833631944854 : F) * rho 2210 + (1 : F) * rho 2214)

def relationLc1417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 87⟩], residual := [((1 : F), 2213), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 754) * (relationLc1417 rho) = ((1 : F) * rho 2216)

def relationLc1418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 87⟩], residual := [((1 : F), 2215), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 754) * (relationLc1418 rho) = ((1 : F) * rho 2217)

def relationLc1419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 88⟩, ⟨(1 : F), 1521, 8, 88⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2218 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1419 rho) = ((1 : F) * rho 2218)

def relationLc1420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5826895706475092757243459512385933230547216745435924787067233253579232099562 : F), 772, 5, 149⟩, ⟨(5826895706475092757243459512385933230547216745435924787067233253579232099562 : F), 1520, 8, 88⟩], residual := [((5432031083734210952568685556973047110028320066777387046666414780905740162675 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), runs := [⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 773, 5, 149⟩, ⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 1521, 8, 88⟩], residual := [((7139782703415344306931719791673397024107800243006857408208968492790013069723 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2219 (rho : Nat -> F) : Prop :=
    (relationLc1420 rho) * (relationLc1421 rho) = ((1 : F) * rho 2219)

def relationLc1422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), runs := [⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 773, 5, 149⟩, ⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 1521, 8, 88⟩, ⟨(8214384480478989539622737878071026031914246760485956786249845457377996549620 : F), 772, 5, 149⟩, ⟨(8214384480478989539622737878071026031914246760485956786249845457377996549620 : F), 1520, 8, 88⟩], residual := [((2848070947030623101803078143076415089290404328167445076973664893482421262042 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2220 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1422 rho) = ((1 : F) * rho 2220)

def relationRow2221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2221) * ((1 : F) + (1 : F) * rho 2219) = ((1 : F) * rho 2220)

def relationLc1423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5028834895407809310911671557629764275412122850415380245622641904845355467044 : F), runs := [⟨(230077268949380884626087060710520499461652574668107041685387998539412689421 : F), 772, 5, 149⟩, ⟨(230077268949380884626087060710520499461652574668107041685387998539412689421 : F), 1520, 8, 88⟩, ⟨(5028834895407809310911671557629764275412122850415380245622641904845355467044 : F), 773, 5, 149⟩, ⟨(5028834895407809310911671557629764275412122850415380245622641904845355467044 : F), 1521, 8, 88⟩], residual := [((5596390802397747322445746795705131442085495006986618750961568562434987976999 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2222 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1423 rho) = ((1 : F) * rho 2222)

def relationRow2223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2223) * ((1 : F) + (-1 : F) * rho 2219) = ((3185549585071180228711066320441261756502123910070576540627203552532641082576 : F) * rho 2218 + (1 : F) * rho 2222)

def relationLc1424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 88⟩], residual := [((1 : F), 2221), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 755) * (relationLc1424 rho) = ((1 : F) * rho 2224)

def relationLc1425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 88⟩], residual := [((1 : F), 2223), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 755) * (relationLc1425 rho) = ((1 : F) * rho 2225)

def relationLc1426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 89⟩, ⟨(1 : F), 1521, 8, 89⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2226 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1426 rho) = ((1 : F) * rho 2226)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
