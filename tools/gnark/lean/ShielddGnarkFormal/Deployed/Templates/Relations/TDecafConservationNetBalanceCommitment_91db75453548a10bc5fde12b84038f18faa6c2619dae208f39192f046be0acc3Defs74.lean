import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs73

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1394) * (relationLc1387 rho) = ((1 : F) * rho 2821)

def relationLc1388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 82⟩], residual := [((1 : F), 2820), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1394) * (relationLc1388 rho) = ((1 : F) * rho 2822)

def relationLc1389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 83⟩, ⟨(1 : F), 2166, 8, 83⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1389 rho) = ((1 : F) * rho 2823)

def relationLc1390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7361467416040925199206621726280188030839373159528018936900941726388400177229 : F), 1417, 5, 149⟩, ⟨(7361467416040925199206621726280188030839373159528018936900941726388400177229 : F), 2165, 8, 83⟩], residual := [((7445931393784576276737378554667587721373140734981652732523856263225507371632 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3700573855116872232848760793370485896571534565608097032382980139794775125480 : F), runs := [⟨(3700573855116872232848760793370485896571534565608097032382980139794775125480 : F), 1418, 5, 149⟩, ⟨(3700573855116872232848760793370485896571534565608097032382980139794775125480 : F), 2166, 8, 83⟩], residual := [((3545910700039114919128064864039007229187020896529801884530346241695575088004 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2824 (rho : Nat -> F) : Prop :=
    (relationLc1390 rho) * (relationLc1391 rho) = ((1 : F) * rho 2824)

def relationLc1392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3700573855116872232848760793370485896571534565608097032382980139794775125480 : F), runs := [⟨(3700573855116872232848760793370485896571534565608097032382980139794775125480 : F), 1418, 5, 149⟩, ⟨(3700573855116872232848760793370485896571534565608097032382980139794775125480 : F), 2166, 8, 83⟩, ⟨(7949343336988049666116721589765712339203085462761513234609986645779405119752 : F), 1417, 5, 149⟩, ⟨(7949343336988049666116721589765712339203085462761513234609986645779405119752 : F), 2165, 8, 83⟩], residual := [((1345715424582057217032289732226630175561454681578984061398787119881707834448 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1392 rho) = ((1 : F) * rho 2825)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2826) * ((1 : F) + (1 : F) * rho 2824) = ((1 : F) * rho 2825)

def relationLc1393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4743887894311498191400064145411060634804364769545966795552253316122634113561 : F), runs := [⟨(4743887894311498191400064145411060634804364769545966795552253316122634113561 : F), 1418, 5, 149⟩, ⟨(4743887894311498191400064145411060634804364769545966795552253316122634113561 : F), 2166, 8, 83⟩, ⟨(495118412440320758132103349015834192172813872392550593325246810138004119289 : F), 1417, 5, 149⟩, ⟨(495118412440320758132103349015834192172813872392550593325246810138004119289 : F), 2165, 8, 83⟩], residual := [((7098746324846313207216535206554916355814444653575079766536446336035701404593 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1393 rho) = ((1 : F) * rho 2827)

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2828) * ((1 : F) + (-1 : F) * rho 2824) = ((3205455442676551474716657444354651704398720693215546439057733329656771006191 : F) * rho 2823 + (1 : F) * rho 2827)

def relationLc1394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 83⟩], residual := [((1 : F), 2826), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1395) * (relationLc1394 rho) = ((1 : F) * rho 2829)

def relationLc1395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 83⟩], residual := [((1 : F), 2828), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1395) * (relationLc1395 rho) = ((1 : F) * rho 2830)

def relationLc1396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 84⟩, ⟨(1 : F), 2166, 8, 84⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1396 rho) = ((1 : F) * rho 2831)

def relationLc1397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1509320015177435081520392255514085602042159127863271211433004782555115362928 : F), 1417, 5, 149⟩, ⟨(1509320015177435081520392255514085602042159127863271211433004782555115362928 : F), 2165, 8, 84⟩], residual := [((1954941239221989708870588011686156971598519976277569547495030964321718007090 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (742412909762870309151653278555509004656301434452011403419679029574579381010 : F), runs := [⟨(742412909762870309151653278555509004656301434452011403419679029574579381010 : F), 1418, 5, 149⟩, ⟨(742412909762870309151653278555509004656301434452011403419679029574579381010 : F), 2166, 8, 84⟩], residual := [((5768279013075187644924733978688735647347600761707644232655850030390902986330 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2832 (rho : Nat -> F) : Prop :=
    (relationLc1397 rho) * (relationLc1398 rho) = ((1 : F) * rho 2832)

def relationLc1399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (742412909762870309151653278555509004656301434452011403419679029574579381010 : F), runs := [⟨(358292096637540168614819591002830864487969968231573466132784802098637371056 : F), 1417, 5, 149⟩, ⟨(358292096637540168614819591002830864487969968231573466132784802098637371056 : F), 2165, 8, 84⟩, ⟨(742412909762870309151653278555509004656301434452011403419679029574579381010 : F), 1418, 5, 149⟩, ⟨(742412909762870309151653278555509004656301434452011403419679029574579381010 : F), 2166, 8, 84⟩], residual := [((5836012221690051226484099217530987641298153593227000439679332530856424184524 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1399 rho) = ((1 : F) * rho 2833)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2834) * ((1 : F) + (1 : F) * rho 2832) = ((1 : F) * rho 2833)

def relationLc1400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7702048839665500115097171660226037526719597900702052424515554426342829858031 : F), runs := [⟨(7702048839665500115097171660226037526719597900702052424515554426342829858031 : F), 1418, 5, 149⟩, ⟨(7702048839665500115097171660226037526719597900702052424515554426342829858031 : F), 2166, 8, 84⟩, ⟨(8086169652790830255634005347778715666887929366922490361802448653818771867985 : F), 1417, 5, 149⟩, ⟨(8086169652790830255634005347778715666887929366922490361802448653818771867985 : F), 2165, 8, 84⟩], residual := [((2608449527738319197764725721250558890077745741927063388255900925060985054517 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1400 rho) = ((1 : F) * rho 2835)

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2836) * ((1 : F) + (-1 : F) * rho 2832) = ((1100705006400410477766472869558339869144271402683584869552463831673216752066 : F) * rho 2831 + (1 : F) * rho 2835)

def relationLc1401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 84⟩], residual := [((1 : F), 2834), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1396) * (relationLc1401 rho) = ((1 : F) * rho 2837)

def relationLc1402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 84⟩], residual := [((1 : F), 2836), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1396) * (relationLc1402 rho) = ((1 : F) * rho 2838)

def relationLc1403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 85⟩, ⟨(1 : F), 2166, 8, 85⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1403 rho) = ((1 : F) * rho 2839)

def relationLc1404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1879066192185720859001720716634940546786462733152449609726133619691694277915 : F), 1417, 5, 149⟩, ⟨(1879066192185720859001720716634940546786462733152449609726133619691694277915 : F), 2165, 8, 85⟩], residual := [((6678797658785789629961131819769428830156350543947805026451029553071902326858 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), runs := [⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 1418, 5, 149⟩, ⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 2166, 8, 85⟩], residual := [((6492891130515857752177602999795412507306028350114051338297005871466924782430 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2840 (rho : Nat -> F) : Prop :=
    (relationLc1404 rho) * (relationLc1405 rho) = ((1 : F) * rho 2840)

def relationLc1406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), runs := [⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 1418, 5, 149⟩, ⟨(3637692075207935518475653788840314043786526635757435574558977788505937226996 : F), 2166, 8, 85⟩, ⟨(3913977330483914039989194516719894102771613880155194243203923525953017090015 : F), 1417, 5, 149⟩, ⟨(3913977330483914039989194516719894102771613880155194243203923525953017090015 : F), 2165, 8, 85⟩], residual := [((1550297937175903600947477152432027407943628623750730879312902278628518611779 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1406 rho) = ((1 : F) * rho 2841)

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2842) * ((1 : F) + (1 : F) * rho 2840) = ((1 : F) * rho 2841)

def relationLc1407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), runs := [⟨(4530484418944456384259630422061652428604285454998869584731309929964392149026 : F), 1417, 5, 149⟩, ⟨(4530484418944456384259630422061652428604285454998869584731309929964392149026 : F), 2165, 8, 85⟩, ⟨(4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), 1418, 5, 149⟩, ⟨(4806769674220434905773171149941232487589372699396628253376255667411472012045 : F), 2166, 8, 85⟩], residual := [((6894163812252466823301347786349519123432270711403332948622331177288890627262 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1407 rho) = ((1 : F) * rho 2843)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2844) * ((1 : F) + (-1 : F) * rho 2840) = ((7551669405691849558464848305560208146558140515912629817762901314458954317011 : F) * rho 2839 + (1 : F) * rho 2843)

def relationLc1408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 85⟩], residual := [((1 : F), 2842), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1397) * (relationLc1408 rho) = ((1 : F) * rho 2845)

def relationLc1409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 85⟩], residual := [((1 : F), 2844), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1397) * (relationLc1409 rho) = ((1 : F) * rho 2846)

def relationLc1410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 86⟩, ⟨(1 : F), 2166, 8, 86⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1410 rho) = ((1 : F) * rho 2847)

def relationLc1411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3196730064982544033124799297648481003122603156129822480465634308557218599801 : F), 1417, 5, 149⟩, ⟨(3196730064982544033124799297648481003122603156129822480465634308557218599801 : F), 2165, 8, 86⟩], residual := [((2458248034789353238519479193172323700487176766405978146033853497356239147455 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), runs := [⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 1418, 5, 149⟩, ⟨(7965085853662374621200865913950031428037961369749284505893524603403732973633 : F), 2166, 8, 86⟩], residual := [((3187808541585373978812239057781774646112788788225209033943529774632173249982 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2848 (rho : Nat -> F) : Prop :=
    (relationLc1411 rho) * (relationLc1412 rho) = ((1 : F) * rho 2848)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
