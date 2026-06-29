import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_prefix_91_v2 (rho : Nat -> Seg13.F)
    (r702 : Seg13.relationRow702 rho) :
    (5389722288278426713369559430097372389797259323563071839234918205001124245927*rho 10571 + 416901722813894028244973649619309201824033459802693192096545298596434456705*seg13AccX90 rho)*(1449991609318362953712346164545945825366334479912445709966929472464401371389 + 2844526279434391185474169943104742618961444464907013672005077469127649057606*rho 10571 + 1449991609318362953712346164545945825366334479912445709966929472464401371389*seg13AccY90 rho) = rho 11272 := by
  rw [seg13AccX90_sum, seg13AccY90_sum]
  unfold Seg13.relationRow702 at r702
  simp only [Seg13.relationLc385, Seg13.relationLc385Part0, Seg13.relationLc385Part1, Seg13.relationLc385Part2] at r702
  simp only [Seg13.relationLc386, Seg13.relationLc386Part0, Seg13.relationLc386Part1, Seg13.relationLc386Part2] at r702
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r702 ⊢
  exact r702

theorem seg13_prefix_91_addX (rho : Nat -> Seg13.F)
    (r703 : Seg13.relationRow703 rho) :
    rho 11273*(1 + rho 11272) = 1449991609318362953712346164545945825366334479912445709966929472464401371389 + 5116056455807815618179703014842813839043214580586809401936439430203431059045*rho 10571 + 28090539297284871986340027486737760514923213111997130576447825176355685815*seg13AccX90 rho + 1449991609318362953712346164545945825366334479912445709966929472464401371389*seg13AccY90 rho := by
  rw [add_assoc, seg13AccWeighted90]
  unfold Seg13.relationRow703 at r703
  simp only [Seg13.relationLc387, Seg13.relationLc387Part0, Seg13.relationLc387Part1, Seg13.relationLc387Part2, Seg13.relationLc387Part3, Seg13.relationLc387Part4, Seg13.relationLc387Part5] at r703
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r703 ⊢
  exact r703

theorem seg13_prefix_91_addY (rho : Nat -> Seg13.F)
    (r704 : Seg13.relationRow704 rho) :
    rho 11274*(1 + (-1)*rho 11272) = 28090539297284871986340027486737760514923213111997130576447825176355685815 + 4458287442263740785262441721229653695101228679984538103063021122821012133541*rho 10571 + 1449991609318362953712346164545945825366334479912445709966929472464401371389*seg13AccX90 rho + 28090539297284871986340027486737760514923213111997130576447825176355685815*seg13AccY90 rho := by
  rw [add_assoc, seg13AccWeighted90]
  unfold Seg13.relationRow704 at r704
  simp only [Seg13.relationLc388, Seg13.relationLc388Part0, Seg13.relationLc388Part1, Seg13.relationLc388Part2, Seg13.relationLc388Part3, Seg13.relationLc388Part4, Seg13.relationLc388Part5] at r704
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r704 ⊢
  exact r704

theorem seg13_prefix_91_selX (rho : Nat -> Seg13.F)
    (r705 : Seg13.relationRow705 rho) :
    (1*rho 10662)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX90 rho + rho 11273) = rho 11275 := by
  rw [seg13AccX90_sum]
  unfold Seg13.relationRow705 at r705
  simp only [Seg13.relationLc389, Seg13.relationLc389Part0, Seg13.relationLc389Part1, Seg13.relationLc389Part2] at r705
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r705 ⊢
  exact r705

theorem seg13_prefix_91_selY (rho : Nat -> Seg13.F)
    (r706 : Seg13.relationRow706 rho) :
    (1*rho 10662)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY90 rho + rho 11274) = rho 11276 := by
  rw [seg13AccY90_sum]
  unfold Seg13.relationRow706 at r706
  simp only [Seg13.relationLc390, Seg13.relationLc390Part0, Seg13.relationLc390Part1, Seg13.relationLc390Part2] at r706
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r706 ⊢
  exact r706

theorem seg13_prefix_92_v2 (rho : Nat -> Seg13.F)
    (r707 : Seg13.relationRow707 rho) :
    (6326468848790444497198581113203078955764617576924413867089125979139173942337*rho 10571 + 8339597046261833337760335063215216078969421923029246720831548189814301480772*seg13AccX91 rho)*(7505485781713047266390917837680540679918032585767223269060010742956126290425 + 3270113702474803028094885201150201488877397205225361062087494797364316023631*rho 10571 + 7505485781713047266390917837680540679918032585767223269060010742956126290425*seg13AccY91 rho) = rho 11277 := by
  rw [seg13AccX91_sum, seg13AccY91_sum]
  unfold Seg13.relationRow707 at r707
  simp only [Seg13.relationLc391, Seg13.relationLc391Part0, Seg13.relationLc391Part1, Seg13.relationLc391Part2] at r707
  simp only [Seg13.relationLc392, Seg13.relationLc392Part0, Seg13.relationLc392Part1, Seg13.relationLc392Part2] at r707
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r707 ⊢
  exact r707

theorem seg13_prefix_92_addX (rho : Nat -> Seg13.F)
    (r708 : Seg13.relationRow708 rho) :
    rho 11278*(1 + rho 11277) = 7505485781713047266390917837680540679918032585767223269060010742956126290425 + 5589473271864048154278094223117465690620656114996841805955550957885557808837*rho 10571 + 4589772038350949255057955001523910319121754462400148291414283233813400484193*seg13AccX91 rho + 7505485781713047266390917837680540679918032585767223269060010742956126290425*seg13AccY91 rho := by
  rw [add_assoc, seg13AccWeighted91]
  unfold Seg13.relationRow708 at r708
  simp only [Seg13.relationLc393, Seg13.relationLc393Part0, Seg13.relationLc393Part1, Seg13.relationLc393Part2, Seg13.relationLc393Part3, Seg13.relationLc393Part4, Seg13.relationLc393Part5] at r708
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r708 ⊢
  exact r708

theorem seg13_prefix_92_addY (rho : Nat -> Seg13.F)
    (r709 : Seg13.relationRow709 rho) :
    rho 11279*(1 + (-1)*rho 11277) = 4589772038350949255057955001523910319121754462400148291414283233813400484193 + 5866324979306886411374123066060365086744916503349938728262095692376973547345*rho 10571 + 7505485781713047266390917837680540679918032585767223269060010742956126290425*seg13AccX91 rho + 4589772038350949255057955001523910319121754462400148291414283233813400484193*seg13AccY91 rho := by
  rw [add_assoc, seg13AccWeighted91]
  unfold Seg13.relationRow709 at r709
  simp only [Seg13.relationLc394, Seg13.relationLc394Part0, Seg13.relationLc394Part1, Seg13.relationLc394Part2, Seg13.relationLc394Part3, Seg13.relationLc394Part4, Seg13.relationLc394Part5] at r709
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r709 ⊢
  exact r709

theorem seg13_prefix_92_selX (rho : Nat -> Seg13.F)
    (r710 : Seg13.relationRow710 rho) :
    (1*rho 10663)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX91 rho + rho 11278) = rho 11280 := by
  rw [seg13AccX91_sum]
  unfold Seg13.relationRow710 at r710
  simp only [Seg13.relationLc395, Seg13.relationLc395Part0, Seg13.relationLc395Part1, Seg13.relationLc395Part2] at r710
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r710 ⊢
  exact r710

theorem seg13_prefix_92_selY (rho : Nat -> Seg13.F)
    (r711 : Seg13.relationRow711 rho) :
    (1*rho 10663)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY91 rho + rho 11279) = rho 11281 := by
  rw [seg13AccY91_sum]
  unfold Seg13.relationRow711 at r711
  simp only [Seg13.relationLc396, Seg13.relationLc396Part0, Seg13.relationLc396Part1, Seg13.relationLc396Part2] at r711
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r711 ⊢
  exact r711

theorem seg13_prefix_93_v2 (rho : Nat -> Seg13.F)
    (r712 : Seg13.relationRow712 rho) :
    (171856542169036465662660088707309910549636242610598401756383291275222624429*rho 10571 + 906651443227238370999930576736507201843788420062155760822097063588325148631*seg13AccX92 rho)*(7808822311738477151074558236427627895815556469789956034561255418958260727017 + 239656307825519749788656889954205843971214536386488825615388180129073822859*rho 10571 + 7808822311738477151074558236427627895815556469789956034561255418958260727017*seg13AccY92 rho) = rho 11282 := by
  rw [seg13AccX92_sum, seg13AccY92_sum]
  unfold Seg13.relationRow712 at r712
  simp only [Seg13.relationLc397, Seg13.relationLc397Part0, Seg13.relationLc397Part1, Seg13.relationLc397Part2] at r712
  simp only [Seg13.relationLc398, Seg13.relationLc398Part0, Seg13.relationLc398Part1, Seg13.relationLc398Part2] at r712
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r712 ⊢
  exact r712

theorem seg13_prefix_93_addX (rho : Nat -> Seg13.F)
    (r713 : Seg13.relationRow713 rho) :
    rho 11283*(1 + rho 11282) = 7808822311738477151074558236427627895815556469789956034561255418958260727017 + 7613592736668356630170670411501517018972926579544062799959943704790245883506*rho 10571 + 1048520293769899419882260603316721766457400211553404863037581808352405425286*seg13AccX92 rho + 7808822311738477151074558236427627895815556469789956034561255418958260727017*seg13AccY92 rho := by
  rw [add_assoc, seg13AccWeighted92]
  unfold Seg13.relationRow713 at r713
  simp only [Seg13.relationLc399, Seg13.relationLc399Part0, Seg13.relationLc399Part1, Seg13.relationLc399Part2, Seg13.relationLc399Part3, Seg13.relationLc399Part4, Seg13.relationLc399Part5] at r713
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r713 ⊢
  exact r713

theorem seg13_prefix_93_addY (rho : Nat -> Seg13.F)
    (r714 : Seg13.relationRow714 rho) :
    rho 11284*(1 + (-1)*rho 11282) = 1048520293769899419882260603316721766457400211553404863037581808352405425286 + 282282767984487211898132991613997864338075755356622244673057499008739425679*rho 10571 + 7808822311738477151074558236427627895815556469789956034561255418958260727017*seg13AccX92 rho + 1048520293769899419882260603316721766457400211553404863037581808352405425286*seg13AccY92 rho := by
  rw [add_assoc, seg13AccWeighted92]
  unfold Seg13.relationRow714 at r714
  simp only [Seg13.relationLc400, Seg13.relationLc400Part0, Seg13.relationLc400Part1, Seg13.relationLc400Part2, Seg13.relationLc400Part3, Seg13.relationLc400Part4, Seg13.relationLc400Part5] at r714
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r714 ⊢
  exact r714

theorem seg13_prefix_93_selX (rho : Nat -> Seg13.F)
    (r715 : Seg13.relationRow715 rho) :
    (1*rho 10664)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX92 rho + rho 11283) = rho 11285 := by
  rw [seg13AccX92_sum]
  unfold Seg13.relationRow715 at r715
  simp only [Seg13.relationLc401, Seg13.relationLc401Part0, Seg13.relationLc401Part1, Seg13.relationLc401Part2] at r715
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r715 ⊢
  exact r715

theorem seg13_prefix_93_selY (rho : Nat -> Seg13.F)
    (r716 : Seg13.relationRow716 rho) :
    (1*rho 10664)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY92 rho + rho 11284) = rho 11286 := by
  rw [seg13AccY92_sum]
  unfold Seg13.relationRow716 at r716
  simp only [Seg13.relationLc402, Seg13.relationLc402Part0, Seg13.relationLc402Part1, Seg13.relationLc402Part2] at r716
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r716 ⊢
  exact r716

theorem seg13_prefix_94_v2 (rho : Nat -> Seg13.F)
    (r717 : Seg13.relationRow717 rho) :
    (67165515290697416187595235537827856610906086241323537994573544540646218256*rho 10571 + 8179997532971249348010168698851349345970456620578852397081600124288614754658*seg13AccX93 rho)*(7705538143980860949729484521763178905391750505479346044595006067774729862042 + 7300898220308033915871176265277384593103237625616658863561297474360981627294*rho 10571 + 7705538143980860949729484521763178905391750505479346044595006067774729862042*seg13AccY93 rho) = rho 11287 := by
  rw [seg13AccX93_sum, seg13AccY93_sum]
  unfold Seg13.relationRow717 at r717
  simp only [Seg13.relationLc403, Seg13.relationLc403Part0, Seg13.relationLc403Part1, Seg13.relationLc403Part2] at r717
  simp only [Seg13.relationLc404, Seg13.relationLc404Part0, Seg13.relationLc404Part1, Seg13.relationLc404Part2] at r717
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r717 ⊢
  exact r717

theorem seg13_prefix_94_addX (rho : Nat -> Seg13.F)
    (r718 : Seg13.relationRow718 rho) :
    rho 11288*(1 + rho 11287) = 7705538143980860949729484521763178905391750505479346044595006067774729862042 + 4863459133917352581038740730228734891844325571936386657529675825895096089318*rho 10571 + 5375185527949122543778302449863284933019016543789039897281893512875719686260*seg13AccX93 rho + 7705538143980860949729484521763178905391750505479346044595006067774729862042*seg13AccY93 rho := by
  rw [add_assoc, seg13AccWeighted93]
  unfold Seg13.relationRow718 at r718
  simp only [Seg13.relationLc405, Seg13.relationLc405Part0, Seg13.relationLc405Part1, Seg13.relationLc405Part2, Seg13.relationLc405Part3, Seg13.relationLc405Part4, Seg13.relationLc405Part5] at r718
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r718 ⊢
  exact r718

theorem seg13_prefix_94_addY (rho : Nat -> Seg13.F)
    (r719 : Seg13.relationRow719 rho) :
    rho 11289*(1 + (-1)*rho 11287) = 5375185527949122543778302449863284933019016543789039897281893512875719686260 + 3999197093751402518624046588967473794431069856960421232165216655853348727802*rho 10571 + 7705538143980860949729484521763178905391750505479346044595006067774729862042*seg13AccX93 rho + 5375185527949122543778302449863284933019016543789039897281893512875719686260*seg13AccY93 rho := by
  rw [add_assoc, seg13AccWeighted93]
  unfold Seg13.relationRow719 at r719
  simp only [Seg13.relationLc406, Seg13.relationLc406Part0, Seg13.relationLc406Part1, Seg13.relationLc406Part2, Seg13.relationLc406Part3, Seg13.relationLc406Part4, Seg13.relationLc406Part5] at r719
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r719 ⊢
  exact r719

theorem seg13_prefix_94_selX (rho : Nat -> Seg13.F)
    (r720 : Seg13.relationRow720 rho) :
    (1*rho 10665)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX93 rho + rho 11288) = rho 11290 := by
  rw [seg13AccX93_sum]
  unfold Seg13.relationRow720 at r720
  simp only [Seg13.relationLc407, Seg13.relationLc407Part0, Seg13.relationLc407Part1, Seg13.relationLc407Part2] at r720
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r720 ⊢
  exact r720

theorem seg13_prefix_94_selY (rho : Nat -> Seg13.F)
    (r721 : Seg13.relationRow721 rho) :
    (1*rho 10665)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY93 rho + rho 11289) = rho 11291 := by
  rw [seg13AccY93_sum]
  unfold Seg13.relationRow721 at r721
  simp only [Seg13.relationLc408, Seg13.relationLc408Part0, Seg13.relationLc408Part1, Seg13.relationLc408Part2] at r721
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r721 ⊢
  exact r721

theorem seg13_prefix_95_v2 (rho : Nat -> Seg13.F)
    (r722 : Seg13.relationRow722 rho) :
    (3657714537796633005479171841637416164237211678381198199859328213321907096082*rho 10571 + 1431114787603952086392307633768073599645790269787901765432457889890133132379*seg13AccX94 rho)*(1584487778553096956420447196026146224324899522184429611594281856034868684180 + 3486160377226881502651479614353021425755810132699530527842901563735863159498*rho 10571 + 1584487778553096956420447196026146224324899522184429611594281856034868684180*seg13AccY94 rho) = rho 11292 := by
  rw [seg13AccX94_sum, seg13AccY94_sum]
  unfold Seg13.relationRow722 at r722
  simp only [Seg13.relationLc409, Seg13.relationLc409Part0, Seg13.relationLc409Part1, Seg13.relationLc409Part2] at r722
  simp only [Seg13.relationLc410, Seg13.relationLc410Part0, Seg13.relationLc410Part1, Seg13.relationLc410Part2] at r722
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r722 ⊢
  exact r722

theorem seg13_prefix_95_addX (rho : Nat -> Seg13.F)
    (r723 : Seg13.relationRow723 rho) :
    rho 11293*(1 + rho 11292) = 1584487778553096956420447196026146224324899522184429611594281856034868684180 + 529992612792118418954102052820668293007890806345800527261763639820835993722*rho 10571 + 3195448823033509217809599209752093928819033012363748049352997119498010226202*seg13AccX94 rho + 1584487778553096956420447196026146224324899522184429611594281856034868684180*seg13AccY94 rho := by
  rw [add_assoc, seg13AccWeighted94]
  unfold Seg13.relationRow723 at r723
  simp only [Seg13.relationLc411, Seg13.relationLc411Part0, Seg13.relationLc411Part1, Seg13.relationLc411Part2, Seg13.relationLc411Part3, Seg13.relationLc411Part4, Seg13.relationLc411Part5] at r723
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r723 ⊢
  exact r723

theorem seg13_prefix_95_addY (rho : Nat -> Seg13.F)
    (r724 : Seg13.relationRow724 rho) :
    rho 11294*(1 + (-1)*rho 11292) = 3195448823033509217809599209752093928819033012363748049352997119498010226202 + 1313059727422419163286129086112246131100286747774995266260829771678302990122*rho 10571 + 1584487778553096956420447196026146224324899522184429611594281856034868684180*seg13AccX94 rho + 3195448823033509217809599209752093928819033012363748049352997119498010226202*seg13AccY94 rho := by
  rw [add_assoc, seg13AccWeighted94]
  unfold Seg13.relationRow724 at r724
  simp only [Seg13.relationLc412, Seg13.relationLc412Part0, Seg13.relationLc412Part1, Seg13.relationLc412Part2, Seg13.relationLc412Part3, Seg13.relationLc412Part4, Seg13.relationLc412Part5] at r724
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r724 ⊢
  exact r724

theorem seg13_prefix_95_selX (rho : Nat -> Seg13.F)
    (r725 : Seg13.relationRow725 rho) :
    (1*rho 10666)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX94 rho + rho 11293) = rho 11295 := by
  rw [seg13AccX94_sum]
  unfold Seg13.relationRow725 at r725
  simp only [Seg13.relationLc413, Seg13.relationLc413Part0, Seg13.relationLc413Part1, Seg13.relationLc413Part2] at r725
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r725 ⊢
  exact r725

theorem seg13_prefix_95_selY (rho : Nat -> Seg13.F)
    (r726 : Seg13.relationRow726 rho) :
    (1*rho 10666)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY94 rho + rho 11294) = rho 11296 := by
  rw [seg13AccY94_sum]
  unfold Seg13.relationRow726 at r726
  simp only [Seg13.relationLc414, Seg13.relationLc414Part0, Seg13.relationLc414Part1, Seg13.relationLc414Part2, Seg13.relationLc414Part3] at r726
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r726 ⊢
  exact r726

theorem seg13_prefix_96_v2 (rho : Nat -> Seg13.F)
    (r727 : Seg13.relationRow727 rho) :
    (4505918629229567963271693135892301758844544991052967519848637676869612517925*rho 10571 + 4952436348997321659786425300399468127622333560955486928171929060103938040593*seg13AccX95 rho)*(8367591097536771522803547933668946562203633433425267831944482993688769681122 + 44225839855303871186047897097373652214192502872374967535753773639635171164*rho 10571 + 8367591097536771522803547933668946562203633433425267831944482993688769681122*seg13AccY95 rho) = rho 11297 := by
  rw [seg13AccX95_sum, seg13AccY95_sum]
  unfold Seg13.relationRow727 at r727
  simp only [Seg13.relationLc415, Seg13.relationLc415Part0, Seg13.relationLc415Part1, Seg13.relationLc415Part2] at r727
  simp only [Seg13.relationLc416, Seg13.relationLc416Part0, Seg13.relationLc416Part1, Seg13.relationLc416Part2, Seg13.relationLc416Part3] at r727
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r727 ⊢
  exact r727

theorem seg13_prefix_96_addX (rho : Nat -> Seg13.F)
    (r728 : Seg13.relationRow728 rho) :
    rho 11298*(1 + rho 11297) = 8367591097536771522803547933668946562203633433425267831944482993688769681122 + 803231153567425007543116169704355251605689776893495214106524016681835606880*rho 10571 + 3344762889329800843780662380696169850927903984907386900079017259959392713649*seg13AccX95 rho + 8367591097536771522803547933668946562203633433425267831944482993688769681122*seg13AccY95 rho := by
  rw [add_assoc, seg13AccWeighted95]
  unfold Seg13.relationRow728 at r728
  simp only [Seg13.relationLc417, Seg13.relationLc417Part0, Seg13.relationLc417Part1, Seg13.relationLc417Part2, Seg13.relationLc417Part3, Seg13.relationLc417Part4, Seg13.relationLc417Part5] at r728
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r728 ⊢
  exact r728

theorem seg13_prefix_96_addY (rho : Nat -> Seg13.F)
    (r729 : Seg13.relationRow729 rho) :
    rho 11299*(1 + (-1)*rho 11297) = 3344762889329800843780662380696169850927903984907386900079017259959392713649 + 7533067527415250847591342602806768426570296117971204426577192619325307001694*rho 10571 + 8367591097536771522803547933668946562203633433425267831944482993688769681122*seg13AccX95 rho + 3344762889329800843780662380696169850927903984907386900079017259959392713649*seg13AccY95 rho := by
  rw [add_assoc, seg13AccWeighted95]
  unfold Seg13.relationRow729 at r729
  simp only [Seg13.relationLc418, Seg13.relationLc418Part0, Seg13.relationLc418Part1, Seg13.relationLc418Part2, Seg13.relationLc418Part3, Seg13.relationLc418Part4, Seg13.relationLc418Part5] at r729
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r729 ⊢
  exact r729

theorem seg13_prefix_96_selX (rho : Nat -> Seg13.F)
    (r730 : Seg13.relationRow730 rho) :
    (1*rho 10667)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX95 rho + rho 11298) = rho 11300 := by
  rw [seg13AccX95_sum]
  unfold Seg13.relationRow730 at r730
  simp only [Seg13.relationLc419, Seg13.relationLc419Part0, Seg13.relationLc419Part1, Seg13.relationLc419Part2, Seg13.relationLc419Part3] at r730
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r730 ⊢
  exact r730

theorem seg13_prefix_96_selY (rho : Nat -> Seg13.F)
    (r731 : Seg13.relationRow731 rho) :
    (1*rho 10667)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY95 rho + rho 11299) = rho 11301 := by
  rw [seg13AccY95_sum]
  unfold Seg13.relationRow731 at r731
  simp only [Seg13.relationLc420, Seg13.relationLc420Part0, Seg13.relationLc420Part1, Seg13.relationLc420Part2, Seg13.relationLc420Part3] at r731
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r731 ⊢
  exact r731

theorem seg13_prefix_97_v2 (rho : Nat -> Seg13.F)
    (r732 : Seg13.relationRow732 rho) :
    (6904476889112867866868551260992636603494931668028457971296293017135984609338*rho 10571 + 1313680653438832956044863578229212917132366813282912157302259158748316782495*seg13AccX96 rho)*(622192490317937799212022705405542800287596127361715414949933002491330820432 + 8287385886539225868272247925295480985868053107575376610560771126184903401054*rho 10571 + 622192490317937799212022705405542800287596127361715414949933002491330820432*seg13AccY96 rho) = rho 11302 := by
  rw [seg13AccX96_sum, seg13AccY96_sum]
  unfold Seg13.relationRow732 at r732
  simp only [Seg13.relationLc421, Seg13.relationLc421Part0, Seg13.relationLc421Part1, Seg13.relationLc421Part2, Seg13.relationLc421Part3] at r732
  simp only [Seg13.relationLc422, Seg13.relationLc422Part0, Seg13.relationLc422Part1, Seg13.relationLc422Part2, Seg13.relationLc422Part3] at r732
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r732 ⊢
  exact r732

theorem seg13_prefix_97_addX (rho : Nat -> Seg13.F)
    (r733 : Seg13.relationRow733 rho) :
    rho 11303*(1 + rho 11302) = 622192490317937799212022705405542800287596127361715414949933002491330820432 + 2240742143118543733148915050001778881500641247394851729501337526188830044988*rho 10571 + 7975293959540741361581576436253552289616872946046947041792957070139396516308*seg13AccX96 rho + 622192490317937799212022705405542800287596127361715414949933002491330820432*seg13AccY96 rho := by
  rw [add_assoc, seg13AccWeighted96]
  unfold Seg13.relationRow733 at r733
  simp only [Seg13.relationLc423, Seg13.relationLc423Part0, Seg13.relationLc423Part1, Seg13.relationLc423Part2, Seg13.relationLc423Part3, Seg13.relationLc423Part4, Seg13.relationLc423Part5, Seg13.relationLc423Part6] at r733
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r733 ⊢
  exact r733

theorem seg13_prefix_97_addY (rho : Nat -> Seg13.F)
    (r734 : Seg13.relationRow734 rho) :
    rho 11304*(1 + (-1)*rho 11302) = 7975293959540741361581576436253552289616872946046947041792957070139396516308 + 4585508775355717324810305694678792540096093119719576907514717865292569636336*rho 10571 + 622192490317937799212022705405542800287596127361715414949933002491330820432*seg13AccX96 rho + 7975293959540741361581576436253552289616872946046947041792957070139396516308*seg13AccY96 rho := by
  rw [add_assoc, seg13AccWeighted96]
  unfold Seg13.relationRow734 at r734
  simp only [Seg13.relationLc424, Seg13.relationLc424Part0, Seg13.relationLc424Part1, Seg13.relationLc424Part2, Seg13.relationLc424Part3, Seg13.relationLc424Part4, Seg13.relationLc424Part5, Seg13.relationLc424Part6] at r734
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r734 ⊢
  exact r734

theorem seg13_prefix_97_selX (rho : Nat -> Seg13.F)
    (r735 : Seg13.relationRow735 rho) :
    (1*rho 10668)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX96 rho + rho 11303) = rho 11305 := by
  rw [seg13AccX96_sum]
  unfold Seg13.relationRow735 at r735
  simp only [Seg13.relationLc425, Seg13.relationLc425Part0, Seg13.relationLc425Part1, Seg13.relationLc425Part2, Seg13.relationLc425Part3] at r735
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r735 ⊢
  exact r735

theorem seg13_prefix_97_selY (rho : Nat -> Seg13.F)
    (r736 : Seg13.relationRow736 rho) :
    (1*rho 10668)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY96 rho + rho 11304) = rho 11306 := by
  rw [seg13AccY96_sum]
  unfold Seg13.relationRow736 at r736
  simp only [Seg13.relationLc426, Seg13.relationLc426Part0, Seg13.relationLc426Part1, Seg13.relationLc426Part2, Seg13.relationLc426Part3] at r736
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r736 ⊢
  exact r736

theorem seg13_prefix_98_v2 (rho : Nat -> Seg13.F)
    (r737 : Seg13.relationRow737 rho) :
    (2043310958269952088101219604455223461164948471131630801005615574797184382063*rho 10571 + 926703710579707228865824304912950811249908438520396538221574221148333812108*seg13AccX97 rho)*(4736261520567388396505551058111050993560848256806285330687945998057644510929 + 5299849100471461308167828109136819050294565181767251255316058889648273585615*rho 10571 + 4736261520567388396505551058111050993560848256806285330687945998057644510929*seg13AccY97 rho) = rho 11307 := by
  rw [seg13AccX97_sum, seg13AccY97_sum]
  unfold Seg13.relationRow737 at r737
  simp only [Seg13.relationLc427, Seg13.relationLc427Part0, Seg13.relationLc427Part1, Seg13.relationLc427Part2, Seg13.relationLc427Part3] at r737
  simp only [Seg13.relationLc428, Seg13.relationLc428Part0, Seg13.relationLc428Part1, Seg13.relationLc428Part2, Seg13.relationLc428Part3] at r737
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r737 ⊢
  exact r737

theorem seg13_prefix_98_addX (rho : Nat -> Seg13.F)
    (r738 : Seg13.relationRow738 rho) :
    rho 11308*(1 + rho 11307) = 4736261520567388396505551058111050993560848256806285330687945998057644510929 + 4501082880882502688754699107850136797890612099548472498616796674217097863012*rho 10571 + 506247692935158806361437649197078077785596719000796408273584518286064020549*seg13AccX97 rho + 4736261520567388396505551058111050993560848256806285330687945998057644510929*seg13AccY97 rho := by
  rw [add_assoc, seg13AccWeighted97]
  unfold Seg13.relationRow738 at r738
  simp only [Seg13.relationLc429, Seg13.relationLc429Part0, Seg13.relationLc429Part1, Seg13.relationLc429Part2, Seg13.relationLc429Part3, Seg13.relationLc429Part4, Seg13.relationLc429Part5, Seg13.relationLc429Part6] at r738
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r738 ⊢
  exact r738

theorem seg13_prefix_98_addY (rho : Nat -> Seg13.F)
    (r739 : Seg13.relationRow739 rho) :
    rho 11309*(1 + (-1)*rho 11307) = 506247692935158806361437649197078077785596719000796408273584518286064020549 + 8009172866906155394067222367701899166975213429311644532871245873517816277565*rho 10571 + 4736261520567388396505551058111050993560848256806285330687945998057644510929*seg13AccX97 rho + 506247692935158806361437649197078077785596719000796408273584518286064020549*seg13AccY97 rho := by
  rw [add_assoc, seg13AccWeighted97]
  unfold Seg13.relationRow739 at r739
  simp only [Seg13.relationLc430, Seg13.relationLc430Part0, Seg13.relationLc430Part1, Seg13.relationLc430Part2, Seg13.relationLc430Part3, Seg13.relationLc430Part4, Seg13.relationLc430Part5, Seg13.relationLc430Part6] at r739
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r739 ⊢
  exact r739

theorem seg13_prefix_98_selX (rho : Nat -> Seg13.F)
    (r740 : Seg13.relationRow740 rho) :
    (1*rho 10669)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX97 rho + rho 11308) = rho 11310 := by
  rw [seg13AccX97_sum]
  unfold Seg13.relationRow740 at r740
  simp only [Seg13.relationLc431, Seg13.relationLc431Part0, Seg13.relationLc431Part1, Seg13.relationLc431Part2, Seg13.relationLc431Part3] at r740
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r740 ⊢
  exact r740

theorem seg13_prefix_98_selY (rho : Nat -> Seg13.F)
    (r741 : Seg13.relationRow741 rho) :
    (1*rho 10669)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY97 rho + rho 11309) = rho 11311 := by
  rw [seg13AccY97_sum]
  unfold Seg13.relationRow741 at r741
  simp only [Seg13.relationLc432, Seg13.relationLc432Part0, Seg13.relationLc432Part1, Seg13.relationLc432Part2, Seg13.relationLc432Part3] at r741
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r741 ⊢
  exact r741

theorem seg13_prefix_99_v2 (rho : Nat -> Seg13.F)
    (r742 : Seg13.relationRow742 rho) :
    (3145267284228186583907498244091499234687362298660748907774300413058490871568*rho 10571 + 4504433567208256174361875541452814826170309619331428831509159035417010671283*seg13AccX98 rho)*(1319152065543215698221911102492755603226353495163345466324257288924155557325 + 541743037391823123499014009910894028304821752418566791495963198628705495845*rho 10571 + 1319152065543215698221911102492755603226353495163345466324257288924155557325*seg13AccY98 rho) = rho 11312 := by
  rw [seg13AccX98_sum, seg13AccY98_sum]
  unfold Seg13.relationRow742 at r742
  simp only [Seg13.relationLc433, Seg13.relationLc433Part0, Seg13.relationLc433Part1, Seg13.relationLc433Part2, Seg13.relationLc433Part3] at r742
  simp only [Seg13.relationLc434, Seg13.relationLc434Part0, Seg13.relationLc434Part1, Seg13.relationLc434Part2, Seg13.relationLc434Part3] at r742
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r742 ⊢
  exact r742

theorem seg13_prefix_99_addX (rho : Nat -> Seg13.F)
    (r743 : Seg13.relationRow743 rho) :
    rho 11313*(1 + rho 11312) = 1319152065543215698221911102492755603226353495163345466324257288924155557325 + 6208763637648537799611650768982157291573155189908122610142931922745768395020*rho 10571 + 7769501368827755599192931605566160418907578471371226351096829835494835248582*seg13AccX98 rho + 1319152065543215698221911102492755603226353495163345466324257288924155557325*seg13AccY98 rho := by
  rw [add_assoc, seg13AccWeighted98]
  unfold Seg13.relationRow743 at r743
  simp only [Seg13.relationLc435, Seg13.relationLc435Part0, Seg13.relationLc435Part1, Seg13.relationLc435Part2, Seg13.relationLc435Part3, Seg13.relationLc435Part4, Seg13.relationLc435Part5, Seg13.relationLc435Part6] at r743
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r743 ⊢
  exact r743

theorem seg13_prefix_99_addY (rho : Nat -> Seg13.F)
    (r744 : Seg13.relationRow744 rho) :
    rho 11314*(1 + (-1)*rho 11312) = 7769501368827755599192931605566160418907578471371226351096829835494835248582 + 5429822735258159657611012395482246677205948276429884023146116194473219133688*rho 10571 + 1319152065543215698221911102492755603226353495163345466324257288924155557325*seg13AccX98 rho + 7769501368827755599192931605566160418907578471371226351096829835494835248582*seg13AccY98 rho := by
  rw [add_assoc, seg13AccWeighted98]
  unfold Seg13.relationRow744 at r744
  simp only [Seg13.relationLc436, Seg13.relationLc436Part0, Seg13.relationLc436Part1, Seg13.relationLc436Part2, Seg13.relationLc436Part3, Seg13.relationLc436Part4, Seg13.relationLc436Part5, Seg13.relationLc436Part6] at r744
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r744 ⊢
  exact r744

theorem seg13_prefix_99_selX (rho : Nat -> Seg13.F)
    (r745 : Seg13.relationRow745 rho) :
    (1*rho 10670)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX98 rho + rho 11313) = rho 11315 := by
  rw [seg13AccX98_sum]
  unfold Seg13.relationRow745 at r745
  simp only [Seg13.relationLc437, Seg13.relationLc437Part0, Seg13.relationLc437Part1, Seg13.relationLc437Part2, Seg13.relationLc437Part3] at r745
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r745 ⊢
  exact r745

theorem seg13_prefix_99_selY (rho : Nat -> Seg13.F)
    (r746 : Seg13.relationRow746 rho) :
    (1*rho 10670)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY98 rho + rho 11314) = rho 11316 := by
  rw [seg13AccY98_sum]
  unfold Seg13.relationRow746 at r746
  simp only [Seg13.relationLc438, Seg13.relationLc438Part0, Seg13.relationLc438Part1, Seg13.relationLc438Part2, Seg13.relationLc438Part3] at r746
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r746 ⊢
  exact r746

theorem seg13_prefix_100_v2 (rho : Nat -> Seg13.F)
    (r747 : Seg13.relationRow747 rho) :
    (7149025083245982877647105497978783864457366615031117417226442875835582438302*rho 10571 + 6684118451110970419290924974182417975624703710825488459903719182056707260230*seg13AccX99 rho)*(8439094283497540590506542871793239202425083326345208197600762658428382920754 + 1495666039841775673238320805849590006324700676455078833136047015772515435385*rho 10571 + 8439094283497540590506542871793239202425083326345208197600762658428382920754*seg13AccY99 rho) = rho 11317 := by
  rw [seg13AccX99_sum, seg13AccY99_sum]
  unfold Seg13.relationRow747 at r747
  simp only [Seg13.relationLc439, Seg13.relationLc439Part0, Seg13.relationLc439Part1, Seg13.relationLc439Part2, Seg13.relationLc439Part3] at r747
  simp only [Seg13.relationLc440, Seg13.relationLc440Part0, Seg13.relationLc440Part1, Seg13.relationLc440Part2, Seg13.relationLc440Part3] at r747
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r747 ⊢
  exact r747

theorem seg13_prefix_100_addX (rho : Nat -> Seg13.F)
    (r748 : Seg13.relationRow748 rho) :
    rho 11318*(1 + rho 11317) = 8439094283497540590506542871793239202425083326345208197600762658428382920754 + 3815297888686318892232006002720785259014233253567872620218316124621031768256*rho 10571 + 4060921078656439863101153504165835147809808188796599194512367658779918875322*seg13AccX99 rho + 8439094283497540590506542871793239202425083326345208197600762658428382920754*seg13AccY99 rho := by
  rw [add_assoc, seg13AccWeighted99]
  unfold Seg13.relationRow748 at r748
  simp only [Seg13.relationLc441, Seg13.relationLc441Part0, Seg13.relationLc441Part1, Seg13.relationLc441Part2, Seg13.relationLc441Part3, Seg13.relationLc441Part4, Seg13.relationLc441Part5, Seg13.relationLc441Part6] at r748
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r748 ⊢
  exact r748

theorem seg13_prefix_100_addY (rho : Nat -> Seg13.F)
    (r749 : Seg13.relationRow749 rho) :
    rho 11319*(1 + (-1)*rho 11317) = 4060921078656439863101153504165835147809808188796599194512367658779918875322 + 138932227217050329235698880910945792762860556806639135837756187935196649593*rho 10571 + 8439094283497540590506542871793239202425083326345208197600762658428382920754*seg13AccX99 rho + 4060921078656439863101153504165835147809808188796599194512367658779918875322*seg13AccY99 rho := by
  rw [add_assoc, seg13AccWeighted99]
  unfold Seg13.relationRow749 at r749
  simp only [Seg13.relationLc442, Seg13.relationLc442Part0, Seg13.relationLc442Part1, Seg13.relationLc442Part2, Seg13.relationLc442Part3, Seg13.relationLc442Part4, Seg13.relationLc442Part5, Seg13.relationLc442Part6] at r749
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r749 ⊢
  exact r749

theorem seg13_prefix_100_selX (rho : Nat -> Seg13.F)
    (r750 : Seg13.relationRow750 rho) :
    (1*rho 10671)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX99 rho + rho 11318) = rho 11320 := by
  rw [seg13AccX99_sum]
  unfold Seg13.relationRow750 at r750
  simp only [Seg13.relationLc443, Seg13.relationLc443Part0, Seg13.relationLc443Part1, Seg13.relationLc443Part2, Seg13.relationLc443Part3] at r750
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r750 ⊢
  exact r750

theorem seg13_prefix_100_selY (rho : Nat -> Seg13.F)
    (r751 : Seg13.relationRow751 rho) :
    (1*rho 10671)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY99 rho + rho 11319) = rho 11321 := by
  rw [seg13AccY99_sum]
  unfold Seg13.relationRow751 at r751
  simp only [Seg13.relationLc444, Seg13.relationLc444Part0, Seg13.relationLc444Part1, Seg13.relationLc444Part2, Seg13.relationLc444Part3] at r751
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r751 ⊢
  exact r751


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

