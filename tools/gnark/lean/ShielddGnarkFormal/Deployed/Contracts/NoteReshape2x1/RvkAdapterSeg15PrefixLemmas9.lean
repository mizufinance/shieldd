import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_prefix_91_v2 (rho : Nat -> Seg15.F)
    (r702 : Seg15.relationRow702 rho) :
    (5389722288278426713369559430097372389797259323563071839234918205001124245927*rho 16130 + 416901722813894028244973649619309201824033459802693192096545298596434456705*seg15AccX90 rho)*(1449991609318362953712346164545945825366334479912445709966929472464401371389 + 2844526279434391185474169943104742618961444464907013672005077469127649057606*rho 16130 + 1449991609318362953712346164545945825366334479912445709966929472464401371389*seg15AccY90 rho) = rho 16831 := by
  rw [seg15AccX90_sum, seg15AccY90_sum]
  unfold Seg15.relationRow702 at r702
  simp only [Seg15.relationLc385, Seg15.relationLc385Part0, Seg15.relationLc385Part1, Seg15.relationLc385Part2] at r702
  simp only [Seg15.relationLc386, Seg15.relationLc386Part0, Seg15.relationLc386Part1, Seg15.relationLc386Part2] at r702
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r702 ⊢
  exact r702

theorem seg15_prefix_91_addX (rho : Nat -> Seg15.F)
    (r703 : Seg15.relationRow703 rho) :
    rho 16832*(1 + rho 16831) = 1449991609318362953712346164545945825366334479912445709966929472464401371389 + 5116056455807815618179703014842813839043214580586809401936439430203431059045*rho 16130 + 28090539297284871986340027486737760514923213111997130576447825176355685815*seg15AccX90 rho + 1449991609318362953712346164545945825366334479912445709966929472464401371389*seg15AccY90 rho := by
  rw [add_assoc, seg15AccWeighted90]
  unfold Seg15.relationRow703 at r703
  simp only [Seg15.relationLc387, Seg15.relationLc387Part0, Seg15.relationLc387Part1, Seg15.relationLc387Part2, Seg15.relationLc387Part3, Seg15.relationLc387Part4, Seg15.relationLc387Part5] at r703
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r703 ⊢
  exact r703

theorem seg15_prefix_91_addY (rho : Nat -> Seg15.F)
    (r704 : Seg15.relationRow704 rho) :
    rho 16833*(1 + (-1)*rho 16831) = 28090539297284871986340027486737760514923213111997130576447825176355685815 + 4458287442263740785262441721229653695101228679984538103063021122821012133541*rho 16130 + 1449991609318362953712346164545945825366334479912445709966929472464401371389*seg15AccX90 rho + 28090539297284871986340027486737760514923213111997130576447825176355685815*seg15AccY90 rho := by
  rw [add_assoc, seg15AccWeighted90]
  unfold Seg15.relationRow704 at r704
  simp only [Seg15.relationLc388, Seg15.relationLc388Part0, Seg15.relationLc388Part1, Seg15.relationLc388Part2, Seg15.relationLc388Part3, Seg15.relationLc388Part4, Seg15.relationLc388Part5] at r704
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r704 ⊢
  exact r704

theorem seg15_prefix_91_selX (rho : Nat -> Seg15.F)
    (r705 : Seg15.relationRow705 rho) :
    (1*rho 16221)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX90 rho + rho 16832) = rho 16834 := by
  rw [seg15AccX90_sum]
  unfold Seg15.relationRow705 at r705
  simp only [Seg15.relationLc389, Seg15.relationLc389Part0, Seg15.relationLc389Part1, Seg15.relationLc389Part2] at r705
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r705 ⊢
  exact r705

theorem seg15_prefix_91_selY (rho : Nat -> Seg15.F)
    (r706 : Seg15.relationRow706 rho) :
    (1*rho 16221)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY90 rho + rho 16833) = rho 16835 := by
  rw [seg15AccY90_sum]
  unfold Seg15.relationRow706 at r706
  simp only [Seg15.relationLc390, Seg15.relationLc390Part0, Seg15.relationLc390Part1, Seg15.relationLc390Part2] at r706
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r706 ⊢
  exact r706

theorem seg15_prefix_92_v2 (rho : Nat -> Seg15.F)
    (r707 : Seg15.relationRow707 rho) :
    (6326468848790444497198581113203078955764617576924413867089125979139173942337*rho 16130 + 8339597046261833337760335063215216078969421923029246720831548189814301480772*seg15AccX91 rho)*(7505485781713047266390917837680540679918032585767223269060010742956126290425 + 3270113702474803028094885201150201488877397205225361062087494797364316023631*rho 16130 + 7505485781713047266390917837680540679918032585767223269060010742956126290425*seg15AccY91 rho) = rho 16836 := by
  rw [seg15AccX91_sum, seg15AccY91_sum]
  unfold Seg15.relationRow707 at r707
  simp only [Seg15.relationLc391, Seg15.relationLc391Part0, Seg15.relationLc391Part1, Seg15.relationLc391Part2] at r707
  simp only [Seg15.relationLc392, Seg15.relationLc392Part0, Seg15.relationLc392Part1, Seg15.relationLc392Part2] at r707
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r707 ⊢
  exact r707

theorem seg15_prefix_92_addX (rho : Nat -> Seg15.F)
    (r708 : Seg15.relationRow708 rho) :
    rho 16837*(1 + rho 16836) = 7505485781713047266390917837680540679918032585767223269060010742956126290425 + 5589473271864048154278094223117465690620656114996841805955550957885557808837*rho 16130 + 4589772038350949255057955001523910319121754462400148291414283233813400484193*seg15AccX91 rho + 7505485781713047266390917837680540679918032585767223269060010742956126290425*seg15AccY91 rho := by
  rw [add_assoc, seg15AccWeighted91]
  unfold Seg15.relationRow708 at r708
  simp only [Seg15.relationLc393, Seg15.relationLc393Part0, Seg15.relationLc393Part1, Seg15.relationLc393Part2, Seg15.relationLc393Part3, Seg15.relationLc393Part4, Seg15.relationLc393Part5] at r708
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r708 ⊢
  exact r708

theorem seg15_prefix_92_addY (rho : Nat -> Seg15.F)
    (r709 : Seg15.relationRow709 rho) :
    rho 16838*(1 + (-1)*rho 16836) = 4589772038350949255057955001523910319121754462400148291414283233813400484193 + 5866324979306886411374123066060365086744916503349938728262095692376973547345*rho 16130 + 7505485781713047266390917837680540679918032585767223269060010742956126290425*seg15AccX91 rho + 4589772038350949255057955001523910319121754462400148291414283233813400484193*seg15AccY91 rho := by
  rw [add_assoc, seg15AccWeighted91]
  unfold Seg15.relationRow709 at r709
  simp only [Seg15.relationLc394, Seg15.relationLc394Part0, Seg15.relationLc394Part1, Seg15.relationLc394Part2, Seg15.relationLc394Part3, Seg15.relationLc394Part4, Seg15.relationLc394Part5] at r709
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r709 ⊢
  exact r709

theorem seg15_prefix_92_selX (rho : Nat -> Seg15.F)
    (r710 : Seg15.relationRow710 rho) :
    (1*rho 16222)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX91 rho + rho 16837) = rho 16839 := by
  rw [seg15AccX91_sum]
  unfold Seg15.relationRow710 at r710
  simp only [Seg15.relationLc395, Seg15.relationLc395Part0, Seg15.relationLc395Part1, Seg15.relationLc395Part2] at r710
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r710 ⊢
  exact r710

theorem seg15_prefix_92_selY (rho : Nat -> Seg15.F)
    (r711 : Seg15.relationRow711 rho) :
    (1*rho 16222)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY91 rho + rho 16838) = rho 16840 := by
  rw [seg15AccY91_sum]
  unfold Seg15.relationRow711 at r711
  simp only [Seg15.relationLc396, Seg15.relationLc396Part0, Seg15.relationLc396Part1, Seg15.relationLc396Part2] at r711
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r711 ⊢
  exact r711

theorem seg15_prefix_93_v2 (rho : Nat -> Seg15.F)
    (r712 : Seg15.relationRow712 rho) :
    (171856542169036465662660088707309910549636242610598401756383291275222624429*rho 16130 + 906651443227238370999930576736507201843788420062155760822097063588325148631*seg15AccX92 rho)*(7808822311738477151074558236427627895815556469789956034561255418958260727017 + 239656307825519749788656889954205843971214536386488825615388180129073822859*rho 16130 + 7808822311738477151074558236427627895815556469789956034561255418958260727017*seg15AccY92 rho) = rho 16841 := by
  rw [seg15AccX92_sum, seg15AccY92_sum]
  unfold Seg15.relationRow712 at r712
  simp only [Seg15.relationLc397, Seg15.relationLc397Part0, Seg15.relationLc397Part1, Seg15.relationLc397Part2] at r712
  simp only [Seg15.relationLc398, Seg15.relationLc398Part0, Seg15.relationLc398Part1, Seg15.relationLc398Part2] at r712
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r712 ⊢
  exact r712

theorem seg15_prefix_93_addX (rho : Nat -> Seg15.F)
    (r713 : Seg15.relationRow713 rho) :
    rho 16842*(1 + rho 16841) = 7808822311738477151074558236427627895815556469789956034561255418958260727017 + 7613592736668356630170670411501517018972926579544062799959943704790245883506*rho 16130 + 1048520293769899419882260603316721766457400211553404863037581808352405425286*seg15AccX92 rho + 7808822311738477151074558236427627895815556469789956034561255418958260727017*seg15AccY92 rho := by
  rw [add_assoc, seg15AccWeighted92]
  unfold Seg15.relationRow713 at r713
  simp only [Seg15.relationLc399, Seg15.relationLc399Part0, Seg15.relationLc399Part1, Seg15.relationLc399Part2, Seg15.relationLc399Part3, Seg15.relationLc399Part4, Seg15.relationLc399Part5] at r713
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r713 ⊢
  exact r713

theorem seg15_prefix_93_addY (rho : Nat -> Seg15.F)
    (r714 : Seg15.relationRow714 rho) :
    rho 16843*(1 + (-1)*rho 16841) = 1048520293769899419882260603316721766457400211553404863037581808352405425286 + 282282767984487211898132991613997864338075755356622244673057499008739425679*rho 16130 + 7808822311738477151074558236427627895815556469789956034561255418958260727017*seg15AccX92 rho + 1048520293769899419882260603316721766457400211553404863037581808352405425286*seg15AccY92 rho := by
  rw [add_assoc, seg15AccWeighted92]
  unfold Seg15.relationRow714 at r714
  simp only [Seg15.relationLc400, Seg15.relationLc400Part0, Seg15.relationLc400Part1, Seg15.relationLc400Part2, Seg15.relationLc400Part3, Seg15.relationLc400Part4, Seg15.relationLc400Part5] at r714
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r714 ⊢
  exact r714

theorem seg15_prefix_93_selX (rho : Nat -> Seg15.F)
    (r715 : Seg15.relationRow715 rho) :
    (1*rho 16223)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX92 rho + rho 16842) = rho 16844 := by
  rw [seg15AccX92_sum]
  unfold Seg15.relationRow715 at r715
  simp only [Seg15.relationLc401, Seg15.relationLc401Part0, Seg15.relationLc401Part1, Seg15.relationLc401Part2] at r715
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r715 ⊢
  exact r715

theorem seg15_prefix_93_selY (rho : Nat -> Seg15.F)
    (r716 : Seg15.relationRow716 rho) :
    (1*rho 16223)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY92 rho + rho 16843) = rho 16845 := by
  rw [seg15AccY92_sum]
  unfold Seg15.relationRow716 at r716
  simp only [Seg15.relationLc402, Seg15.relationLc402Part0, Seg15.relationLc402Part1, Seg15.relationLc402Part2] at r716
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r716 ⊢
  exact r716

theorem seg15_prefix_94_v2 (rho : Nat -> Seg15.F)
    (r717 : Seg15.relationRow717 rho) :
    (67165515290697416187595235537827856610906086241323537994573544540646218256*rho 16130 + 8179997532971249348010168698851349345970456620578852397081600124288614754658*seg15AccX93 rho)*(7705538143980860949729484521763178905391750505479346044595006067774729862042 + 7300898220308033915871176265277384593103237625616658863561297474360981627294*rho 16130 + 7705538143980860949729484521763178905391750505479346044595006067774729862042*seg15AccY93 rho) = rho 16846 := by
  rw [seg15AccX93_sum, seg15AccY93_sum]
  unfold Seg15.relationRow717 at r717
  simp only [Seg15.relationLc403, Seg15.relationLc403Part0, Seg15.relationLc403Part1, Seg15.relationLc403Part2] at r717
  simp only [Seg15.relationLc404, Seg15.relationLc404Part0, Seg15.relationLc404Part1, Seg15.relationLc404Part2] at r717
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r717 ⊢
  exact r717

theorem seg15_prefix_94_addX (rho : Nat -> Seg15.F)
    (r718 : Seg15.relationRow718 rho) :
    rho 16847*(1 + rho 16846) = 7705538143980860949729484521763178905391750505479346044595006067774729862042 + 4863459133917352581038740730228734891844325571936386657529675825895096089318*rho 16130 + 5375185527949122543778302449863284933019016543789039897281893512875719686260*seg15AccX93 rho + 7705538143980860949729484521763178905391750505479346044595006067774729862042*seg15AccY93 rho := by
  rw [add_assoc, seg15AccWeighted93]
  unfold Seg15.relationRow718 at r718
  simp only [Seg15.relationLc405, Seg15.relationLc405Part0, Seg15.relationLc405Part1, Seg15.relationLc405Part2, Seg15.relationLc405Part3, Seg15.relationLc405Part4, Seg15.relationLc405Part5] at r718
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r718 ⊢
  exact r718

theorem seg15_prefix_94_addY (rho : Nat -> Seg15.F)
    (r719 : Seg15.relationRow719 rho) :
    rho 16848*(1 + (-1)*rho 16846) = 5375185527949122543778302449863284933019016543789039897281893512875719686260 + 3999197093751402518624046588967473794431069856960421232165216655853348727802*rho 16130 + 7705538143980860949729484521763178905391750505479346044595006067774729862042*seg15AccX93 rho + 5375185527949122543778302449863284933019016543789039897281893512875719686260*seg15AccY93 rho := by
  rw [add_assoc, seg15AccWeighted93]
  unfold Seg15.relationRow719 at r719
  simp only [Seg15.relationLc406, Seg15.relationLc406Part0, Seg15.relationLc406Part1, Seg15.relationLc406Part2, Seg15.relationLc406Part3, Seg15.relationLc406Part4, Seg15.relationLc406Part5] at r719
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r719 ⊢
  exact r719

theorem seg15_prefix_94_selX (rho : Nat -> Seg15.F)
    (r720 : Seg15.relationRow720 rho) :
    (1*rho 16224)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX93 rho + rho 16847) = rho 16849 := by
  rw [seg15AccX93_sum]
  unfold Seg15.relationRow720 at r720
  simp only [Seg15.relationLc407, Seg15.relationLc407Part0, Seg15.relationLc407Part1, Seg15.relationLc407Part2] at r720
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r720 ⊢
  exact r720

theorem seg15_prefix_94_selY (rho : Nat -> Seg15.F)
    (r721 : Seg15.relationRow721 rho) :
    (1*rho 16224)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY93 rho + rho 16848) = rho 16850 := by
  rw [seg15AccY93_sum]
  unfold Seg15.relationRow721 at r721
  simp only [Seg15.relationLc408, Seg15.relationLc408Part0, Seg15.relationLc408Part1, Seg15.relationLc408Part2] at r721
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r721 ⊢
  exact r721

theorem seg15_prefix_95_v2 (rho : Nat -> Seg15.F)
    (r722 : Seg15.relationRow722 rho) :
    (3657714537796633005479171841637416164237211678381198199859328213321907096082*rho 16130 + 1431114787603952086392307633768073599645790269787901765432457889890133132379*seg15AccX94 rho)*(1584487778553096956420447196026146224324899522184429611594281856034868684180 + 3486160377226881502651479614353021425755810132699530527842901563735863159498*rho 16130 + 1584487778553096956420447196026146224324899522184429611594281856034868684180*seg15AccY94 rho) = rho 16851 := by
  rw [seg15AccX94_sum, seg15AccY94_sum]
  unfold Seg15.relationRow722 at r722
  simp only [Seg15.relationLc409, Seg15.relationLc409Part0, Seg15.relationLc409Part1, Seg15.relationLc409Part2] at r722
  simp only [Seg15.relationLc410, Seg15.relationLc410Part0, Seg15.relationLc410Part1, Seg15.relationLc410Part2] at r722
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r722 ⊢
  exact r722

theorem seg15_prefix_95_addX (rho : Nat -> Seg15.F)
    (r723 : Seg15.relationRow723 rho) :
    rho 16852*(1 + rho 16851) = 1584487778553096956420447196026146224324899522184429611594281856034868684180 + 529992612792118418954102052820668293007890806345800527261763639820835993722*rho 16130 + 3195448823033509217809599209752093928819033012363748049352997119498010226202*seg15AccX94 rho + 1584487778553096956420447196026146224324899522184429611594281856034868684180*seg15AccY94 rho := by
  rw [add_assoc, seg15AccWeighted94]
  unfold Seg15.relationRow723 at r723
  simp only [Seg15.relationLc411, Seg15.relationLc411Part0, Seg15.relationLc411Part1, Seg15.relationLc411Part2, Seg15.relationLc411Part3, Seg15.relationLc411Part4, Seg15.relationLc411Part5] at r723
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r723 ⊢
  exact r723

theorem seg15_prefix_95_addY (rho : Nat -> Seg15.F)
    (r724 : Seg15.relationRow724 rho) :
    rho 16853*(1 + (-1)*rho 16851) = 3195448823033509217809599209752093928819033012363748049352997119498010226202 + 1313059727422419163286129086112246131100286747774995266260829771678302990122*rho 16130 + 1584487778553096956420447196026146224324899522184429611594281856034868684180*seg15AccX94 rho + 3195448823033509217809599209752093928819033012363748049352997119498010226202*seg15AccY94 rho := by
  rw [add_assoc, seg15AccWeighted94]
  unfold Seg15.relationRow724 at r724
  simp only [Seg15.relationLc412, Seg15.relationLc412Part0, Seg15.relationLc412Part1, Seg15.relationLc412Part2, Seg15.relationLc412Part3, Seg15.relationLc412Part4, Seg15.relationLc412Part5] at r724
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r724 ⊢
  exact r724

theorem seg15_prefix_95_selX (rho : Nat -> Seg15.F)
    (r725 : Seg15.relationRow725 rho) :
    (1*rho 16225)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX94 rho + rho 16852) = rho 16854 := by
  rw [seg15AccX94_sum]
  unfold Seg15.relationRow725 at r725
  simp only [Seg15.relationLc413, Seg15.relationLc413Part0, Seg15.relationLc413Part1, Seg15.relationLc413Part2] at r725
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r725 ⊢
  exact r725

theorem seg15_prefix_95_selY (rho : Nat -> Seg15.F)
    (r726 : Seg15.relationRow726 rho) :
    (1*rho 16225)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY94 rho + rho 16853) = rho 16855 := by
  rw [seg15AccY94_sum]
  unfold Seg15.relationRow726 at r726
  simp only [Seg15.relationLc414, Seg15.relationLc414Part0, Seg15.relationLc414Part1, Seg15.relationLc414Part2, Seg15.relationLc414Part3] at r726
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r726 ⊢
  exact r726

theorem seg15_prefix_96_v2 (rho : Nat -> Seg15.F)
    (r727 : Seg15.relationRow727 rho) :
    (4505918629229567963271693135892301758844544991052967519848637676869612517925*rho 16130 + 4952436348997321659786425300399468127622333560955486928171929060103938040593*seg15AccX95 rho)*(8367591097536771522803547933668946562203633433425267831944482993688769681122 + 44225839855303871186047897097373652214192502872374967535753773639635171164*rho 16130 + 8367591097536771522803547933668946562203633433425267831944482993688769681122*seg15AccY95 rho) = rho 16856 := by
  rw [seg15AccX95_sum, seg15AccY95_sum]
  unfold Seg15.relationRow727 at r727
  simp only [Seg15.relationLc415, Seg15.relationLc415Part0, Seg15.relationLc415Part1, Seg15.relationLc415Part2] at r727
  simp only [Seg15.relationLc416, Seg15.relationLc416Part0, Seg15.relationLc416Part1, Seg15.relationLc416Part2, Seg15.relationLc416Part3] at r727
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r727 ⊢
  exact r727

theorem seg15_prefix_96_addX (rho : Nat -> Seg15.F)
    (r728 : Seg15.relationRow728 rho) :
    rho 16857*(1 + rho 16856) = 8367591097536771522803547933668946562203633433425267831944482993688769681122 + 803231153567425007543116169704355251605689776893495214106524016681835606880*rho 16130 + 3344762889329800843780662380696169850927903984907386900079017259959392713649*seg15AccX95 rho + 8367591097536771522803547933668946562203633433425267831944482993688769681122*seg15AccY95 rho := by
  rw [add_assoc, seg15AccWeighted95]
  unfold Seg15.relationRow728 at r728
  simp only [Seg15.relationLc417, Seg15.relationLc417Part0, Seg15.relationLc417Part1, Seg15.relationLc417Part2, Seg15.relationLc417Part3, Seg15.relationLc417Part4, Seg15.relationLc417Part5] at r728
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r728 ⊢
  exact r728

theorem seg15_prefix_96_addY (rho : Nat -> Seg15.F)
    (r729 : Seg15.relationRow729 rho) :
    rho 16858*(1 + (-1)*rho 16856) = 3344762889329800843780662380696169850927903984907386900079017259959392713649 + 7533067527415250847591342602806768426570296117971204426577192619325307001694*rho 16130 + 8367591097536771522803547933668946562203633433425267831944482993688769681122*seg15AccX95 rho + 3344762889329800843780662380696169850927903984907386900079017259959392713649*seg15AccY95 rho := by
  rw [add_assoc, seg15AccWeighted95]
  unfold Seg15.relationRow729 at r729
  simp only [Seg15.relationLc418, Seg15.relationLc418Part0, Seg15.relationLc418Part1, Seg15.relationLc418Part2, Seg15.relationLc418Part3, Seg15.relationLc418Part4, Seg15.relationLc418Part5] at r729
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r729 ⊢
  exact r729

theorem seg15_prefix_96_selX (rho : Nat -> Seg15.F)
    (r730 : Seg15.relationRow730 rho) :
    (1*rho 16226)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX95 rho + rho 16857) = rho 16859 := by
  rw [seg15AccX95_sum]
  unfold Seg15.relationRow730 at r730
  simp only [Seg15.relationLc419, Seg15.relationLc419Part0, Seg15.relationLc419Part1, Seg15.relationLc419Part2, Seg15.relationLc419Part3] at r730
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r730 ⊢
  exact r730

theorem seg15_prefix_96_selY (rho : Nat -> Seg15.F)
    (r731 : Seg15.relationRow731 rho) :
    (1*rho 16226)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY95 rho + rho 16858) = rho 16860 := by
  rw [seg15AccY95_sum]
  unfold Seg15.relationRow731 at r731
  simp only [Seg15.relationLc420, Seg15.relationLc420Part0, Seg15.relationLc420Part1, Seg15.relationLc420Part2, Seg15.relationLc420Part3] at r731
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r731 ⊢
  exact r731

theorem seg15_prefix_97_v2 (rho : Nat -> Seg15.F)
    (r732 : Seg15.relationRow732 rho) :
    (6904476889112867866868551260992636603494931668028457971296293017135984609338*rho 16130 + 1313680653438832956044863578229212917132366813282912157302259158748316782495*seg15AccX96 rho)*(622192490317937799212022705405542800287596127361715414949933002491330820432 + 8287385886539225868272247925295480985868053107575376610560771126184903401054*rho 16130 + 622192490317937799212022705405542800287596127361715414949933002491330820432*seg15AccY96 rho) = rho 16861 := by
  rw [seg15AccX96_sum, seg15AccY96_sum]
  unfold Seg15.relationRow732 at r732
  simp only [Seg15.relationLc421, Seg15.relationLc421Part0, Seg15.relationLc421Part1, Seg15.relationLc421Part2, Seg15.relationLc421Part3] at r732
  simp only [Seg15.relationLc422, Seg15.relationLc422Part0, Seg15.relationLc422Part1, Seg15.relationLc422Part2, Seg15.relationLc422Part3] at r732
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r732 ⊢
  exact r732

theorem seg15_prefix_97_addX (rho : Nat -> Seg15.F)
    (r733 : Seg15.relationRow733 rho) :
    rho 16862*(1 + rho 16861) = 622192490317937799212022705405542800287596127361715414949933002491330820432 + 2240742143118543733148915050001778881500641247394851729501337526188830044988*rho 16130 + 7975293959540741361581576436253552289616872946046947041792957070139396516308*seg15AccX96 rho + 622192490317937799212022705405542800287596127361715414949933002491330820432*seg15AccY96 rho := by
  rw [add_assoc, seg15AccWeighted96]
  unfold Seg15.relationRow733 at r733
  simp only [Seg15.relationLc423, Seg15.relationLc423Part0, Seg15.relationLc423Part1, Seg15.relationLc423Part2, Seg15.relationLc423Part3, Seg15.relationLc423Part4, Seg15.relationLc423Part5, Seg15.relationLc423Part6] at r733
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r733 ⊢
  exact r733

theorem seg15_prefix_97_addY (rho : Nat -> Seg15.F)
    (r734 : Seg15.relationRow734 rho) :
    rho 16863*(1 + (-1)*rho 16861) = 7975293959540741361581576436253552289616872946046947041792957070139396516308 + 4585508775355717324810305694678792540096093119719576907514717865292569636336*rho 16130 + 622192490317937799212022705405542800287596127361715414949933002491330820432*seg15AccX96 rho + 7975293959540741361581576436253552289616872946046947041792957070139396516308*seg15AccY96 rho := by
  rw [add_assoc, seg15AccWeighted96]
  unfold Seg15.relationRow734 at r734
  simp only [Seg15.relationLc424, Seg15.relationLc424Part0, Seg15.relationLc424Part1, Seg15.relationLc424Part2, Seg15.relationLc424Part3, Seg15.relationLc424Part4, Seg15.relationLc424Part5, Seg15.relationLc424Part6] at r734
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r734 ⊢
  exact r734

theorem seg15_prefix_97_selX (rho : Nat -> Seg15.F)
    (r735 : Seg15.relationRow735 rho) :
    (1*rho 16227)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX96 rho + rho 16862) = rho 16864 := by
  rw [seg15AccX96_sum]
  unfold Seg15.relationRow735 at r735
  simp only [Seg15.relationLc425, Seg15.relationLc425Part0, Seg15.relationLc425Part1, Seg15.relationLc425Part2, Seg15.relationLc425Part3] at r735
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r735 ⊢
  exact r735

theorem seg15_prefix_97_selY (rho : Nat -> Seg15.F)
    (r736 : Seg15.relationRow736 rho) :
    (1*rho 16227)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY96 rho + rho 16863) = rho 16865 := by
  rw [seg15AccY96_sum]
  unfold Seg15.relationRow736 at r736
  simp only [Seg15.relationLc426, Seg15.relationLc426Part0, Seg15.relationLc426Part1, Seg15.relationLc426Part2, Seg15.relationLc426Part3] at r736
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r736 ⊢
  exact r736

theorem seg15_prefix_98_v2 (rho : Nat -> Seg15.F)
    (r737 : Seg15.relationRow737 rho) :
    (2043310958269952088101219604455223461164948471131630801005615574797184382063*rho 16130 + 926703710579707228865824304912950811249908438520396538221574221148333812108*seg15AccX97 rho)*(4736261520567388396505551058111050993560848256806285330687945998057644510929 + 5299849100471461308167828109136819050294565181767251255316058889648273585615*rho 16130 + 4736261520567388396505551058111050993560848256806285330687945998057644510929*seg15AccY97 rho) = rho 16866 := by
  rw [seg15AccX97_sum, seg15AccY97_sum]
  unfold Seg15.relationRow737 at r737
  simp only [Seg15.relationLc427, Seg15.relationLc427Part0, Seg15.relationLc427Part1, Seg15.relationLc427Part2, Seg15.relationLc427Part3] at r737
  simp only [Seg15.relationLc428, Seg15.relationLc428Part0, Seg15.relationLc428Part1, Seg15.relationLc428Part2, Seg15.relationLc428Part3] at r737
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r737 ⊢
  exact r737

theorem seg15_prefix_98_addX (rho : Nat -> Seg15.F)
    (r738 : Seg15.relationRow738 rho) :
    rho 16867*(1 + rho 16866) = 4736261520567388396505551058111050993560848256806285330687945998057644510929 + 4501082880882502688754699107850136797890612099548472498616796674217097863012*rho 16130 + 506247692935158806361437649197078077785596719000796408273584518286064020549*seg15AccX97 rho + 4736261520567388396505551058111050993560848256806285330687945998057644510929*seg15AccY97 rho := by
  rw [add_assoc, seg15AccWeighted97]
  unfold Seg15.relationRow738 at r738
  simp only [Seg15.relationLc429, Seg15.relationLc429Part0, Seg15.relationLc429Part1, Seg15.relationLc429Part2, Seg15.relationLc429Part3, Seg15.relationLc429Part4, Seg15.relationLc429Part5, Seg15.relationLc429Part6] at r738
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r738 ⊢
  exact r738

theorem seg15_prefix_98_addY (rho : Nat -> Seg15.F)
    (r739 : Seg15.relationRow739 rho) :
    rho 16868*(1 + (-1)*rho 16866) = 506247692935158806361437649197078077785596719000796408273584518286064020549 + 8009172866906155394067222367701899166975213429311644532871245873517816277565*rho 16130 + 4736261520567388396505551058111050993560848256806285330687945998057644510929*seg15AccX97 rho + 506247692935158806361437649197078077785596719000796408273584518286064020549*seg15AccY97 rho := by
  rw [add_assoc, seg15AccWeighted97]
  unfold Seg15.relationRow739 at r739
  simp only [Seg15.relationLc430, Seg15.relationLc430Part0, Seg15.relationLc430Part1, Seg15.relationLc430Part2, Seg15.relationLc430Part3, Seg15.relationLc430Part4, Seg15.relationLc430Part5, Seg15.relationLc430Part6] at r739
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r739 ⊢
  exact r739

theorem seg15_prefix_98_selX (rho : Nat -> Seg15.F)
    (r740 : Seg15.relationRow740 rho) :
    (1*rho 16228)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX97 rho + rho 16867) = rho 16869 := by
  rw [seg15AccX97_sum]
  unfold Seg15.relationRow740 at r740
  simp only [Seg15.relationLc431, Seg15.relationLc431Part0, Seg15.relationLc431Part1, Seg15.relationLc431Part2, Seg15.relationLc431Part3] at r740
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r740 ⊢
  exact r740

theorem seg15_prefix_98_selY (rho : Nat -> Seg15.F)
    (r741 : Seg15.relationRow741 rho) :
    (1*rho 16228)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY97 rho + rho 16868) = rho 16870 := by
  rw [seg15AccY97_sum]
  unfold Seg15.relationRow741 at r741
  simp only [Seg15.relationLc432, Seg15.relationLc432Part0, Seg15.relationLc432Part1, Seg15.relationLc432Part2, Seg15.relationLc432Part3] at r741
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r741 ⊢
  exact r741

theorem seg15_prefix_99_v2 (rho : Nat -> Seg15.F)
    (r742 : Seg15.relationRow742 rho) :
    (3145267284228186583907498244091499234687362298660748907774300413058490871568*rho 16130 + 4504433567208256174361875541452814826170309619331428831509159035417010671283*seg15AccX98 rho)*(1319152065543215698221911102492755603226353495163345466324257288924155557325 + 541743037391823123499014009910894028304821752418566791495963198628705495845*rho 16130 + 1319152065543215698221911102492755603226353495163345466324257288924155557325*seg15AccY98 rho) = rho 16871 := by
  rw [seg15AccX98_sum, seg15AccY98_sum]
  unfold Seg15.relationRow742 at r742
  simp only [Seg15.relationLc433, Seg15.relationLc433Part0, Seg15.relationLc433Part1, Seg15.relationLc433Part2, Seg15.relationLc433Part3] at r742
  simp only [Seg15.relationLc434, Seg15.relationLc434Part0, Seg15.relationLc434Part1, Seg15.relationLc434Part2, Seg15.relationLc434Part3] at r742
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r742 ⊢
  exact r742

theorem seg15_prefix_99_addX (rho : Nat -> Seg15.F)
    (r743 : Seg15.relationRow743 rho) :
    rho 16872*(1 + rho 16871) = 1319152065543215698221911102492755603226353495163345466324257288924155557325 + 6208763637648537799611650768982157291573155189908122610142931922745768395020*rho 16130 + 7769501368827755599192931605566160418907578471371226351096829835494835248582*seg15AccX98 rho + 1319152065543215698221911102492755603226353495163345466324257288924155557325*seg15AccY98 rho := by
  rw [add_assoc, seg15AccWeighted98]
  unfold Seg15.relationRow743 at r743
  simp only [Seg15.relationLc435, Seg15.relationLc435Part0, Seg15.relationLc435Part1, Seg15.relationLc435Part2, Seg15.relationLc435Part3, Seg15.relationLc435Part4, Seg15.relationLc435Part5, Seg15.relationLc435Part6] at r743
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r743 ⊢
  exact r743

theorem seg15_prefix_99_addY (rho : Nat -> Seg15.F)
    (r744 : Seg15.relationRow744 rho) :
    rho 16873*(1 + (-1)*rho 16871) = 7769501368827755599192931605566160418907578471371226351096829835494835248582 + 5429822735258159657611012395482246677205948276429884023146116194473219133688*rho 16130 + 1319152065543215698221911102492755603226353495163345466324257288924155557325*seg15AccX98 rho + 7769501368827755599192931605566160418907578471371226351096829835494835248582*seg15AccY98 rho := by
  rw [add_assoc, seg15AccWeighted98]
  unfold Seg15.relationRow744 at r744
  simp only [Seg15.relationLc436, Seg15.relationLc436Part0, Seg15.relationLc436Part1, Seg15.relationLc436Part2, Seg15.relationLc436Part3, Seg15.relationLc436Part4, Seg15.relationLc436Part5, Seg15.relationLc436Part6] at r744
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r744 ⊢
  exact r744

theorem seg15_prefix_99_selX (rho : Nat -> Seg15.F)
    (r745 : Seg15.relationRow745 rho) :
    (1*rho 16229)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX98 rho + rho 16872) = rho 16874 := by
  rw [seg15AccX98_sum]
  unfold Seg15.relationRow745 at r745
  simp only [Seg15.relationLc437, Seg15.relationLc437Part0, Seg15.relationLc437Part1, Seg15.relationLc437Part2, Seg15.relationLc437Part3] at r745
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r745 ⊢
  exact r745

theorem seg15_prefix_99_selY (rho : Nat -> Seg15.F)
    (r746 : Seg15.relationRow746 rho) :
    (1*rho 16229)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY98 rho + rho 16873) = rho 16875 := by
  rw [seg15AccY98_sum]
  unfold Seg15.relationRow746 at r746
  simp only [Seg15.relationLc438, Seg15.relationLc438Part0, Seg15.relationLc438Part1, Seg15.relationLc438Part2, Seg15.relationLc438Part3] at r746
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r746 ⊢
  exact r746

theorem seg15_prefix_100_v2 (rho : Nat -> Seg15.F)
    (r747 : Seg15.relationRow747 rho) :
    (7149025083245982877647105497978783864457366615031117417226442875835582438302*rho 16130 + 6684118451110970419290924974182417975624703710825488459903719182056707260230*seg15AccX99 rho)*(8439094283497540590506542871793239202425083326345208197600762658428382920754 + 1495666039841775673238320805849590006324700676455078833136047015772515435385*rho 16130 + 8439094283497540590506542871793239202425083326345208197600762658428382920754*seg15AccY99 rho) = rho 16876 := by
  rw [seg15AccX99_sum, seg15AccY99_sum]
  unfold Seg15.relationRow747 at r747
  simp only [Seg15.relationLc439, Seg15.relationLc439Part0, Seg15.relationLc439Part1, Seg15.relationLc439Part2, Seg15.relationLc439Part3] at r747
  simp only [Seg15.relationLc440, Seg15.relationLc440Part0, Seg15.relationLc440Part1, Seg15.relationLc440Part2, Seg15.relationLc440Part3] at r747
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r747 ⊢
  exact r747

theorem seg15_prefix_100_addX (rho : Nat -> Seg15.F)
    (r748 : Seg15.relationRow748 rho) :
    rho 16877*(1 + rho 16876) = 8439094283497540590506542871793239202425083326345208197600762658428382920754 + 3815297888686318892232006002720785259014233253567872620218316124621031768256*rho 16130 + 4060921078656439863101153504165835147809808188796599194512367658779918875322*seg15AccX99 rho + 8439094283497540590506542871793239202425083326345208197600762658428382920754*seg15AccY99 rho := by
  rw [add_assoc, seg15AccWeighted99]
  unfold Seg15.relationRow748 at r748
  simp only [Seg15.relationLc441, Seg15.relationLc441Part0, Seg15.relationLc441Part1, Seg15.relationLc441Part2, Seg15.relationLc441Part3, Seg15.relationLc441Part4, Seg15.relationLc441Part5, Seg15.relationLc441Part6] at r748
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r748 ⊢
  exact r748

theorem seg15_prefix_100_addY (rho : Nat -> Seg15.F)
    (r749 : Seg15.relationRow749 rho) :
    rho 16878*(1 + (-1)*rho 16876) = 4060921078656439863101153504165835147809808188796599194512367658779918875322 + 138932227217050329235698880910945792762860556806639135837756187935196649593*rho 16130 + 8439094283497540590506542871793239202425083326345208197600762658428382920754*seg15AccX99 rho + 4060921078656439863101153504165835147809808188796599194512367658779918875322*seg15AccY99 rho := by
  rw [add_assoc, seg15AccWeighted99]
  unfold Seg15.relationRow749 at r749
  simp only [Seg15.relationLc442, Seg15.relationLc442Part0, Seg15.relationLc442Part1, Seg15.relationLc442Part2, Seg15.relationLc442Part3, Seg15.relationLc442Part4, Seg15.relationLc442Part5, Seg15.relationLc442Part6] at r749
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r749 ⊢
  exact r749

theorem seg15_prefix_100_selX (rho : Nat -> Seg15.F)
    (r750 : Seg15.relationRow750 rho) :
    (1*rho 16230)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX99 rho + rho 16877) = rho 16879 := by
  rw [seg15AccX99_sum]
  unfold Seg15.relationRow750 at r750
  simp only [Seg15.relationLc443, Seg15.relationLc443Part0, Seg15.relationLc443Part1, Seg15.relationLc443Part2, Seg15.relationLc443Part3] at r750
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r750 ⊢
  exact r750

theorem seg15_prefix_100_selY (rho : Nat -> Seg15.F)
    (r751 : Seg15.relationRow751 rho) :
    (1*rho 16230)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY99 rho + rho 16878) = rho 16880 := by
  rw [seg15AccY99_sum]
  unfold Seg15.relationRow751 at r751
  simp only [Seg15.relationLc444, Seg15.relationLc444Part0, Seg15.relationLc444Part1, Seg15.relationLc444Part2, Seg15.relationLc444Part3] at r751
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r751 ⊢
  exact r751


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

