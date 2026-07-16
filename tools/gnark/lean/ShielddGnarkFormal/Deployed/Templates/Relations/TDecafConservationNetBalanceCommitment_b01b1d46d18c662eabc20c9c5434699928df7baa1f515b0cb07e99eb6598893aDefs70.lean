import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs69

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow2709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1380) * (relationLc1289 rho) = ((1 : F) * rho 2709)

def relationLc1290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 68⟩], residual := [((1 : F), 2708), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1380) * (relationLc1290 rho) = ((1 : F) * rho 2710)

def relationLc1291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 69⟩, ⟨(1 : F), 2166, 8, 69⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2711 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1291 rho) = ((1 : F) * rho 2711)

def relationLc1292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8228461578915015317578888180979204971312384976318017379598812884182739062679 : F), 1417, 5, 149⟩, ⟨(8228461578915015317578888180979204971312384976318017379598812884182739062679 : F), 2165, 8, 69⟩], residual := [((5969432451953231280221404556913607896031692218874454843943230165830559924308 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5196049551051558169273089982213715624228923171939443945976500797894583833713 : F), runs := [⟨(5196049551051558169273089982213715624228923171939443945976500797894583833713 : F), 1418, 5, 149⟩, ⟨(5196049551051558169273089982213715624228923171939443945976500797894583833713 : F), 2166, 8, 69⟩], residual := [((4204416184951078491647837449034783675960136896610714187858881882252448178393 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2712 (rho : Nat -> F) : Prop :=
    (relationLc1292 rho) * (relationLc1293 rho) = ((1 : F) * rho 2712)

def relationLc1294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5196049551051558169273089982213715624228923171939443945976500797894583833713 : F), runs := [⟨(4033479743215698499531408291924518140753180809754544209620061389049019153181 : F), 1417, 5, 149⟩, ⟨(4033479743215698499531408291924518140753180809754544209620061389049019153181 : F), 2165, 8, 69⟩, ⟨(5196049551051558169273089982213715624228923171939443945976500797894583833713 : F), 1418, 5, 149⟩, ⟨(5196049551051558169273089982213715624228923171939443945976500797894583833713 : F), 2166, 8, 69⟩], residual := [((843701834699381573709699416331279250488711802942569755498026994035694535678 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2713 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1294 rho) = ((1 : F) * rho 2713)

def relationRow2714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2714) * ((1 : F) + (1 : F) * rho 2712) = ((1 : F) * rho 2713)

def relationLc1295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3248412198376812254975734956567830907146976163214619881958732658022825405328 : F), runs := [⟨(3248412198376812254975734956567830907146976163214619881958732658022825405328 : F), 1418, 5, 149⟩, ⟨(3248412198376812254975734956567830907146976163214619881958732658022825405328 : F), 2166, 8, 69⟩, ⟨(4410982006212671924717416646857028390622718525399519618315172066868390085860 : F), 1417, 5, 149⟩, ⟨(4410982006212671924717416646857028390622718525399519618315172066868390085860 : F), 2165, 8, 69⟩], residual := [((7600759914728988850539125522450267280887187532211494072437206461881714703363 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2715 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1295 rho) = ((1 : F) * rho 2715)

def relationRow2716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2716) * ((1 : F) + (-1 : F) * rho 2712) = ((785067544838886244555673335356687233606204646539924327661328731026193747853 : F) * rho 2711 + (1 : F) * rho 2715)

def relationLc1296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 69⟩], residual := [((1 : F), 2714), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1381) * (relationLc1296 rho) = ((1 : F) * rho 2717)

def relationLc1297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 69⟩], residual := [((1 : F), 2716), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1381) * (relationLc1297 rho) = ((1 : F) * rho 2718)

def relationLc1298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 70⟩, ⟨(1 : F), 2166, 8, 70⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2719 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1298 rho) = ((1 : F) * rho 2719)

def relationLc1299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8132816414244171841396146336788502467076645652554925731338504232889496465072 : F), 1417, 5, 149⟩, ⟨(8132816414244171841396146336788502467076645652554925731338504232889496465072 : F), 2165, 8, 70⟩], residual := [((7288377787750598665321219882333043328894517518308081570821341189087614339729 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5747457526016758175835998194484556719913156173541495496847991769269239392427 : F), runs := [⟨(5747457526016758175835998194484556719913156173541495496847991769269239392427 : F), 1418, 5, 149⟩, ⟨(5747457526016758175835998194484556719913156173541495496847991769269239392427 : F), 2166, 8, 70⟩], residual := [((1998872065006281131425930001775492856146442517740113555049321825775753763071 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2720 (rho : Nat -> F) : Prop :=
    (relationLc1299 rho) * (relationLc1300 rho) = ((1 : F) * rho 2720)

def relationLc1301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5747457526016758175835998194484556719913156173541495496847991769269239392427 : F), runs := [⟨(5540089884816897048089479758379024224138607490431233157521031440054709433633 : F), 1417, 5, 149⟩, ⟨(5540089884816897048089479758379024224138607490431233157521031440054709433633 : F), 2165, 8, 70⟩, ⟨(5747457526016758175835998194484556719913156173541495496847991769269239392427 : F), 1418, 5, 149⟩, ⟨(5747457526016758175835998194484556719913156173541495496847991769269239392427 : F), 2166, 8, 70⟩], residual := [((2171795118466354350407889465909225852420134797436474354478276007172658621701 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2721 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1301 rho) = ((1 : F) * rho 2721)

def relationRow2722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2722) * ((1 : F) + (1 : F) * rho 2720) = ((1 : F) * rho 2721)

def relationLc1302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2697004223411612248412826744296989811462743161612568331087241686648169846614 : F), runs := [⟨(2697004223411612248412826744296989811462743161612568331087241686648169846614 : F), 1418, 5, 149⟩, ⟨(2697004223411612248412826744296989811462743161612568331087241686648169846614 : F), 2166, 8, 70⟩, ⟨(2904371864611473376159345180402522307237291844722830670414202015862699805408 : F), 1417, 5, 149⟩, ⟨(2904371864611473376159345180402522307237291844722830670414202015862699805408 : F), 2165, 8, 70⟩], residual := [((6272666630962016073840935472872320678955764537717589473456957448744750617340 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2723 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1302 rho) = ((1 : F) * rho 2723)

def relationRow2724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2724) * ((1 : F) + (-1 : F) * rho 2720) = ((2843085661405284799676653014082034412675864328818664826433789753406539587019 : F) * rho 2719 + (1 : F) * rho 2723)

def relationLc1303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 70⟩], residual := [((1 : F), 2722), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1382) * (relationLc1303 rho) = ((1 : F) * rho 2725)

def relationLc1304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 70⟩], residual := [((1 : F), 2724), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1382) * (relationLc1304 rho) = ((1 : F) * rho 2726)

def relationLc1305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 71⟩, ⟨(1 : F), 2166, 8, 71⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2727 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1305 rho) = ((1 : F) * rho 2727)

def relationLc1306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4185009705009278583157337959757827265049367783660213600747228776622166843885 : F), 1417, 5, 149⟩, ⟨(4185009705009278583157337959757827265049367783660213600747228776622166843885 : F), 2165, 8, 71⟩], residual := [((383082562966876509052088454560345866870394795901995490069381434441366547319 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), runs := [⟨(3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), 1418, 5, 149⟩, ⟨(3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), 2166, 8, 71⟩], residual := [((7058699996902104145726176427107042444173523936118927654194633626935732919530 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2728 (rho : Nat -> F) : Prop :=
    (relationLc1306 rho) * (relationLc1307 rho) = ((1 : F) * rho 2728)

def relationLc1308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), runs := [⟨(3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), 1418, 5, 149⟩, ⟨(3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), 2166, 8, 71⟩, ⟨(8356398933712813133618965600787090502994906481482673616451228079613955108354 : F), 1417, 5, 149⟩, ⟨(8356398933712813133618965600787090502994906481482673616451228079613955108354 : F), 2165, 8, 71⟩], residual := [((6728986854277284273646630166159785858660288012003642140720191996229406231791 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2729 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1308 rho) = ((1 : F) * rho 2729)

def relationRow2730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2730) * ((1 : F) + (1 : F) * rho 2728) = ((1 : F) * rho 2729)

def relationLc1309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), runs := [⟨(4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), 1418, 5, 149⟩, ⟨(4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), 2166, 8, 71⟩, ⟨(88062815715557290629859337994456028380992853671390211484005376303454130687 : F), 1417, 5, 149⟩, ⟨(88062815715557290629859337994456028380992853671390211484005376303454130687 : F), 2165, 8, 71⟩], residual := [((1715474895151086150602194772621760672715611323150421687215041459688003007250 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2731 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1309 rho) = ((1 : F) * rho 2731)

def relationRow2732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2732) * ((1 : F) + (-1 : F) * rho 2728) = ((3494394417138460200049868210812163760818358563801608988623721355142936632008 : F) * rho 2727 + (1 : F) * rho 2731)

def relationLc1310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 71⟩], residual := [((1 : F), 2730), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1383) * (relationLc1310 rho) = ((1 : F) * rho 2733)

def relationLc1311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 71⟩], residual := [((1 : F), 2732), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1383) * (relationLc1311 rho) = ((1 : F) * rho 2734)

def relationLc1312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 72⟩, ⟨(1 : F), 2166, 8, 72⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2735 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1312 rho) = ((1 : F) * rho 2735)

def relationLc1313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1041016696261873307340336047327981763298628938291660533116945156646556318662 : F), 1417, 5, 149⟩, ⟨(1041016696261873307340336047327981763298628938291660533116945156646556318662 : F), 2165, 8, 72⟩], residual := [((1950914135566194575319471229970379663738043476462169302070774594291170094184 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (587431020291212425077570287060209112092291997683260210283999568885891829628 : F), runs := [⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 1418, 5, 149⟩, ⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 2166, 8, 72⟩], residual := [((3892941673995227343189094966822599319633698296099933602780283735295161868150 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2736 (rho : Nat -> F) : Prop :=
    (relationLc1313 rho) * (relationLc1314 rho) = ((1 : F) * rho 2736)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
