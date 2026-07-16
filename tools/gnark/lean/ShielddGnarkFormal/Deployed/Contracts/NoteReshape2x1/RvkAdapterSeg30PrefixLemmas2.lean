import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_prefix_21_v2 (rho : Nat -> Seg30.F)
    (r352 : Seg30.relationRow352 rho) :
    (3859030896250291175109147461089968864885390873142426417620530283286390990479*rho 28317 + 2221768204210492498020933308195187315476565815756952625735581012389492030511*seg30AccX20 rho)*(1807286812265560548462668857956257804112937058639905309261959101975576893659 + 8373778597553758246218115803666110330487320618829657481734343292439764354698*rho 28317 + 1807286812265560548462668857956257804112937058639905309261959101975576893659*seg30AccY20 rho) = rho 28668 := by
  rw [seg30AccX20_sum, seg30AccY20_sum]
  unfold Seg30.relationRow352 at r352
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r352 ⊢
  exact r352

theorem seg30_prefix_21_addX (rho : Nat -> Seg30.F)
    (r353 : Seg30.relationRow353 rho) :
    rho 28669*(1 + rho 28668) = 1807286812265560548462668857956257804112937058639905309261959101975576893659 + 3502928614648296691007724303886187908996652909362464225966885039086319166794*rho 28317 + 2290048308833514025143266652820351471867705435718945788713899960744371949290*seg30AccX20 rho + 1807286812265560548462668857956257804112937058639905309261959101975576893659*seg30AccY20 rho := by
  rw [add_assoc, seg30AccWeighted20]
  unfold Seg30.relationRow353 at r353
  simp only [Seg30.relationLc9, Seg30.relationLc9Part0, Seg30.relationLc9Part1] at r353
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r353 ⊢
  exact r353

theorem seg30_prefix_21_addY (rho : Nat -> Seg30.F)
    (r354 : Seg30.relationRow354 rho) :
    rho 28670*(1 + (-1)*rho 28668) = 2290048308833514025143266652820351471867705435718945788713899960744371949290 + 77001094337513284289421777759057518406237692400016935885954782956546695152*rho 28317 + 1807286812265560548462668857956257804112937058639905309261959101975576893659*seg30AccX20 rho + 2290048308833514025143266652820351471867705435718945788713899960744371949290*seg30AccY20 rho := by
  rw [add_assoc, seg30AccWeighted20]
  unfold Seg30.relationRow354 at r354
  simp only [Seg30.relationLc10, Seg30.relationLc10Part0, Seg30.relationLc10Part1] at r354
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r354 ⊢
  exact r354

theorem seg30_prefix_21_selX (rho : Nat -> Seg30.F)
    (r355 : Seg30.relationRow355 rho) :
    (1*rho 28338)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX20 rho + rho 28669) = rho 28671 := by
  rw [seg30AccX20_sum]
  unfold Seg30.relationRow355 at r355
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r355 ⊢
  exact r355

theorem seg30_prefix_21_selY (rho : Nat -> Seg30.F)
    (r356 : Seg30.relationRow356 rho) :
    (1*rho 28338)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY20 rho + rho 28670) = rho 28672 := by
  rw [seg30AccY20_sum]
  unfold Seg30.relationRow356 at r356
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r356 ⊢
  exact r356

theorem seg30_prefix_22_v2 (rho : Nat -> Seg30.F)
    (r357 : Seg30.relationRow357 rho) :
    (3794550865036835053360616874229700906540341768858835895454352617313486757936*rho 28317 + 1947879467774202825890220935283645743249202955426461317518953481162964368709*seg30AccX21 rho)*(5093487347277176555558710368066104965831187730741424114456331013559654475770 + 4613681404561041414491686275647308176147390102568119351747506750787165972295*rho 28317 + 5093487347277176555558710368066104965831187730741424114456331013559654475770*seg30AccY21 rho) = rho 28673 := by
  rw [seg30AccX21_sum, seg30AccY21_sum]
  unfold Seg30.relationRow357 at r357
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r357 ⊢
  exact r357

theorem seg30_prefix_22_addX (rho : Nat -> Seg30.F)
    (r358 : Seg30.relationRow358 rho) :
    rho 28674*(1 + rho 28673) = 5093487347277176555558710368066104965831187730741424114456331013559654475770 + 2593968960346650490400809144278612896015567898811903094977655894775589211928*rho 28317 + 7424838889754891112092277146090391007308056218842972521785335654550745416505*seg30AccX21 rho + 5093487347277176555558710368066104965831187730741424114456331013559654475770*seg30AccY21 rho := by
  rw [add_assoc, seg30AccWeighted21]
  unfold Seg30.relationRow358 at r358
  simp only [Seg30.relationLc11, Seg30.relationLc11Part0, Seg30.relationLc11Part1] at r358
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r358 ⊢
  exact r358

theorem seg30_prefix_22_addY (rho : Nat -> Seg30.F)
    (r359 : Seg30.relationRow359 rho) :
    rho 28675*(1 + (-1)*rho 28673) = 7424838889754891112092277146090391007308056218842972521785335654550745416505 + 4042513875459441486946433019879151653837647891745054679547516776865583323229*rho 28317 + 5093487347277176555558710368066104965831187730741424114456331013559654475770*seg30AccX21 rho + 7424838889754891112092277146090391007308056218842972521785335654550745416505*seg30AccY21 rho := by
  rw [add_assoc, seg30AccWeighted21]
  unfold Seg30.relationRow359 at r359
  simp only [Seg30.relationLc12, Seg30.relationLc12Part0, Seg30.relationLc12Part1] at r359
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r359 ⊢
  exact r359

theorem seg30_prefix_22_selX (rho : Nat -> Seg30.F)
    (r360 : Seg30.relationRow360 rho) :
    (1*rho 28339)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX21 rho + rho 28674) = rho 28676 := by
  rw [seg30AccX21_sum]
  unfold Seg30.relationRow360 at r360
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r360 ⊢
  exact r360

theorem seg30_prefix_22_selY (rho : Nat -> Seg30.F)
    (r361 : Seg30.relationRow361 rho) :
    (1*rho 28339)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY21 rho + rho 28675) = rho 28677 := by
  rw [seg30AccY21_sum]
  unfold Seg30.relationRow361 at r361
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r361 ⊢
  exact r361

theorem seg30_prefix_23_v2 (rho : Nat -> Seg30.F)
    (r362 : Seg30.relationRow362 rho) :
    (3794014873575794920651820584378408566178653587646231018843184137808113802147*rho 28317 + 366653356134228893884451650551569358790369043609706051437573096230856149808*seg30AccX22 rho)*(6971869847316631555946269356928124873336607269769416978032128120736419456575 + 3864890959518274530276501341500014850868021279626352307800892084975932123580*rho 28317 + 6971869847316631555946269356928124873336607269769416978032128120736419456575*seg30AccY22 rho) = rho 28678 := by
  rw [seg30AccX22_sum, seg30AccY22_sum]
  unfold Seg30.relationRow362 at r362
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r362 ⊢
  exact r362

theorem seg30_prefix_23_addX (rho : Nat -> Seg30.F)
    (r363 : Seg30.relationRow363 rho) :
    rho 28679*(1 + rho 28678) = 6971869847316631555946269356928124873336607269769416978032128120736419456575 + 8173632955791923857879312017185794928132648730490324035661546815100571564548*rho 28317 + 4145482763243431833185995311441107274210277750108270891386755639927755298791*seg30AccX22 rho + 6971869847316631555946269356928124873336607269769416978032128120736419456575*seg30AccY22 rho := by
  rw [add_assoc, seg30AccWeighted22]
  unfold Seg30.relationRow363 at r363
  simp only [Seg30.relationLc13, Seg30.relationLc13Part0, Seg30.relationLc13Part1] at r363
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r363 ⊢
  exact r363

theorem seg30_prefix_23_addY (rho : Nat -> Seg30.F)
    (r364 : Seg30.relationRow364 rho) :
    rho 28680*(1 + (-1)*rho 28678) = 4145482763243431833185995311441107274210277750108270891386755639927755298791 + 3016766427198289168164936169171255022675347485263062160990907667127278435084*rho 28317 + 6971869847316631555946269356928124873336607269769416978032128120736419456575*seg30AccX22 rho + 4145482763243431833185995311441107274210277750108270891386755639927755298791*seg30AccY22 rho := by
  rw [add_assoc, seg30AccWeighted22]
  unfold Seg30.relationRow364 at r364
  simp only [Seg30.relationLc14, Seg30.relationLc14Part0, Seg30.relationLc14Part1] at r364
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r364 ⊢
  exact r364

theorem seg30_prefix_23_selX (rho : Nat -> Seg30.F)
    (r365 : Seg30.relationRow365 rho) :
    (1*rho 28340)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX22 rho + rho 28679) = rho 28681 := by
  rw [seg30AccX22_sum]
  unfold Seg30.relationRow365 at r365
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r365 ⊢
  exact r365

theorem seg30_prefix_23_selY (rho : Nat -> Seg30.F)
    (r366 : Seg30.relationRow366 rho) :
    (1*rho 28340)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY22 rho + rho 28680) = rho 28682 := by
  rw [seg30AccY22_sum]
  unfold Seg30.relationRow366 at r366
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r366 ⊢
  exact r366

theorem seg30_prefix_24_v2 (rho : Nat -> Seg30.F)
    (r367 : Seg30.relationRow367 rho) :
    (613254355233494454694824345050167882855780969268338428712171464921401776251*rho 28317 + 224205272964481342216886934734197252310330975741562383175585311846170893212*seg30AccX23 rho)*(698332092399450389416901304074919166827933635593005989524634246935338237515 + 7098153646342492011616147110488161240205223740082633386383934714859952227897*rho 28317 + 698332092399450389416901304074919166827933635593005989524634246935338237515*seg30AccY23 rho) = rho 28683 := by
  rw [seg30AccX23_sum, seg30AccY23_sum]
  unfold Seg30.relationRow367 at r367
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r367 ⊢
  exact r367

theorem seg30_prefix_24_addX (rho : Nat -> Seg30.F)
    (r368 : Seg30.relationRow368 rho) :
    rho 28684*(1 + rho 28683) = 698332092399450389416901304074919166827933635593005989524634246935338237515 + 6653911288247861954350053651063727036098665576123603988762951613891416422789*rho 28317 + 3860319722354698456547449231179096311513547604377194210116429324042962042373*seg30AccX23 rho + 698332092399450389416901304074919166827933635593005989524634246935338237515*seg30AccY23 rho := by
  rw [add_assoc, seg30AccWeighted23]
  unfold Seg30.relationRow368 at r368
  simp only [Seg30.relationLc15, Seg30.relationLc15Part0, Seg30.relationLc15Part1] at r368
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r368 ⊢
  exact r368

theorem seg30_prefix_24_addY (rho : Nat -> Seg30.F)
    (r369 : Seg30.relationRow369 rho) :
    rho 28685*(1 + (-1)*rho 28683) = 3860319722354698456547449231179096311513547604377194210116429324042962042373 + 7577817630127451382183922625957816194436849239543951783993455713375576444765*rho 28317 + 698332092399450389416901304074919166827933635593005989524634246935338237515*seg30AccX23 rho + 3860319722354698456547449231179096311513547604377194210116429324042962042373*seg30AccY23 rho := by
  rw [add_assoc, seg30AccWeighted23]
  unfold Seg30.relationRow369 at r369
  simp only [Seg30.relationLc16, Seg30.relationLc16Part0, Seg30.relationLc16Part1] at r369
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r369 ⊢
  exact r369

theorem seg30_prefix_24_selX (rho : Nat -> Seg30.F)
    (r370 : Seg30.relationRow370 rho) :
    (1*rho 28341)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX23 rho + rho 28684) = rho 28686 := by
  rw [seg30AccX23_sum]
  unfold Seg30.relationRow370 at r370
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r370 ⊢
  exact r370

theorem seg30_prefix_24_selY (rho : Nat -> Seg30.F)
    (r371 : Seg30.relationRow371 rho) :
    (1*rho 28341)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY23 rho + rho 28685) = rho 28687 := by
  rw [seg30AccY23_sum]
  unfold Seg30.relationRow371 at r371
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r371 ⊢
  exact r371

theorem seg30_prefix_25_v2 (rho : Nat -> Seg30.F)
    (r372 : Seg30.relationRow372 rho) :
    (4904364982033510618908166838756101712951906426882430087867630809757628845898*rho 28317 + 744659538135431695640052302004022517269629365141333120367383144383183361999*seg30AccX24 rho)*(4422303164723061947314828228297415934576038778891527859445088569956345713070 + 4730818462444899340376522439439081382488617158581323273235571344276354859762*rho 28317 + 4422303164723061947314828228297415934576038778891527859445088569956345713070*seg30AccY24 rho) = rho 28688 := by
  rw [seg30AccX24_sum, seg30AccY24_sum]
  unfold Seg30.relationRow372 at r372
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r372 ⊢
  exact r372

theorem seg30_prefix_25_addX (rho : Nat -> Seg30.F)
    (r373 : Seg30.relationRow373 rho) :
    rho 28689*(1 + rho 28688) = 4422303164723061947314828228297415934576038778891527859445088569956345713070 + 6633214475219916023298769750001877722458350178883092830694633370371553771180*rho 28317 + 4120450605162381144335785505483615892011037818398620130915889274136591989973*seg30AccX24 rho + 4422303164723061947314828228297415934576038778891527859445088569956345713070*seg30AccY24 rho := by
  rw [add_assoc, seg30AccWeighted24]
  unfold Seg30.relationRow373 at r373
  simp only [Seg30.relationLc17, Seg30.relationLc17Part0, Seg30.relationLc17Part1] at r373
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r373 ⊢
  exact r373

theorem seg30_prefix_25_addY (rho : Nat -> Seg30.F)
    (r374 : Seg30.relationRow374 rho) :
    rho 28690*(1 + (-1)*rho 28688) = 4120450605162381144335785505483615892011037818398620130915889274136591989973 + 5582238607082076851740208724543319935652510014722270641306989023073106136612*rho 28317 + 4422303164723061947314828228297415934576038778891527859445088569956345713070*seg30AccX24 rho + 4120450605162381144335785505483615892011037818398620130915889274136591989973*seg30AccY24 rho := by
  rw [add_assoc, seg30AccWeighted24]
  unfold Seg30.relationRow374 at r374
  simp only [Seg30.relationLc18, Seg30.relationLc18Part0, Seg30.relationLc18Part1] at r374
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r374 ⊢
  exact r374

theorem seg30_prefix_25_selX (rho : Nat -> Seg30.F)
    (r375 : Seg30.relationRow375 rho) :
    (1*rho 28342)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX24 rho + rho 28689) = rho 28691 := by
  rw [seg30AccX24_sum]
  unfold Seg30.relationRow375 at r375
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r375 ⊢
  exact r375

theorem seg30_prefix_25_selY (rho : Nat -> Seg30.F)
    (r376 : Seg30.relationRow376 rho) :
    (1*rho 28342)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY24 rho + rho 28690) = rho 28692 := by
  rw [seg30AccY24_sum]
  unfold Seg30.relationRow376 at r376
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r376 ⊢
  exact r376

theorem seg30_prefix_26_v2 (rho : Nat -> Seg30.F)
    (r377 : Seg30.relationRow377 rho) :
    (3181154236042176302739631238677614333633729020480263984298601966094552420095*rho 28317 + 4890907553779944807975903433943833282279984360614217206940673761332356401398*seg30AccX25 rho)*(5009073828216417788897901053664247942048164297341996689155967268504146970488 + 2273277479857444792629862347610339458674584985123334673990832939068658499065*rho 28317 + 5009073828216417788897901053664247942048164297341996689155967268504146970488*seg30AccY25 rho) = rho 28693 := by
  rw [seg30AccX25_sum, seg30AccY25_sum]
  unfold Seg30.relationRow377 at r377
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r377 ⊢
  exact r377

theorem seg30_prefix_26_addX (rho : Nat -> Seg30.F)
    (r378 : Seg30.relationRow378 rho) :
    rho 28694*(1 + rho 28693) = 5009073828216417788897901053664247942048164297341996689155967268504146970488 + 3968254300244612834138477886882201362794885788209677919178866727963741104586*rho 28317 + 1242711659814623109293099694224743625691221214554458310761398321148183402362*seg30AccX25 rho + 5009073828216417788897901053664247942048164297341996689155967268504146970488*seg30AccY25 rho := by
  rw [add_assoc, seg30AccWeighted25]
  unfold Seg30.relationRow378 at r378
  simp only [Seg30.relationLc19, Seg30.relationLc19Part0, Seg30.relationLc19Part1] at r378
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r378 ⊢
  exact r378

theorem seg30_prefix_26_addY (rho : Nat -> Seg30.F)
    (r379 : Seg30.relationRow379 rho) :
    rho 28695*(1 + (-1)*rho 28693) = 1242711659814623109293099694224743625691221214554458310761398321148183402362 + 1277533753130263419990014577813148196003567629970333625767474906860595977965*rho 28317 + 5009073828216417788897901053664247942048164297341996689155967268504146970488*seg30AccX25 rho + 1242711659814623109293099694224743625691221214554458310761398321148183402362*seg30AccY25 rho := by
  rw [add_assoc, seg30AccWeighted25]
  unfold Seg30.relationRow379 at r379
  simp only [Seg30.relationLc20, Seg30.relationLc20Part0, Seg30.relationLc20Part1] at r379
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r379 ⊢
  exact r379

theorem seg30_prefix_26_selX (rho : Nat -> Seg30.F)
    (r380 : Seg30.relationRow380 rho) :
    (1*rho 28343)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX25 rho + rho 28694) = rho 28696 := by
  rw [seg30AccX25_sum]
  unfold Seg30.relationRow380 at r380
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r380 ⊢
  exact r380

theorem seg30_prefix_26_selY (rho : Nat -> Seg30.F)
    (r381 : Seg30.relationRow381 rho) :
    (1*rho 28343)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY25 rho + rho 28695) = rho 28697 := by
  rw [seg30AccY25_sum]
  unfold Seg30.relationRow381 at r381
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r381 ⊢
  exact r381

theorem seg30_prefix_27_v2 (rho : Nat -> Seg30.F)
    (r382 : Seg30.relationRow382 rho) :
    (2990996184029959469754256850927685604426134109320164096964810921611337490383*rho 28317 + 5639654883578048587855815085709177653534889323307110513317475998985015187139*seg30AccX26 rho)*(8185232629601049131891743339013796454202168853641452678982161646728702859559 + 5725940096275979895123831451837528871125802679170251880960374703431973559897*rho 28317 + 8185232629601049131891743339013796454202168853641452678982161646728702859559*seg30AccY26 rho) = rho 28698 := by
  rw [seg30AccX26_sum, seg30AccY26_sum]
  unfold Seg30.relationRow382 at r382
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r382 ⊢
  exact r382

theorem seg30_prefix_27_addX (rho : Nat -> Seg30.F)
    (r383 : Seg30.relationRow383 rho) :
    rho 28699*(1 + rho 28698) = 8185232629601049131891743339013796454202168853641452678982161646728702859559 + 5332799377810117508381252815784145761122632976374024527222571622874958212259*rho 28317 + 4714664734994972056892212731503275944903442955442919140818312175662276395965*seg30AccX26 rho + 8185232629601049131891743339013796454202168853641452678982161646728702859559*seg30AccY26 rho := by
  rw [add_assoc, seg30AccWeighted26]
  unfold Seg30.relationRow383 at r383
  simp only [Seg30.relationLc21, Seg30.relationLc21Part0, Seg30.relationLc21Part1] at r383
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r383 ⊢
  exact r383

theorem seg30_prefix_27_addY (rho : Nat -> Seg30.F)
    (r384 : Seg30.relationRow384 rho) :
    rho 28700*(1 + (-1)*rho 28698) = 4714664734994972056892212731503275944903442955442919140818312175662276395965 + 6945482531101436755048336049615192206891233569969970194408248179185271119242*rho 28317 + 8185232629601049131891743339013796454202168853641452678982161646728702859559*seg30AccX26 rho + 4714664734994972056892212731503275944903442955442919140818312175662276395965*seg30AccY26 rho := by
  rw [add_assoc, seg30AccWeighted26]
  unfold Seg30.relationRow384 at r384
  simp only [Seg30.relationLc22, Seg30.relationLc22Part0, Seg30.relationLc22Part1] at r384
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r384 ⊢
  exact r384

theorem seg30_prefix_27_selX (rho : Nat -> Seg30.F)
    (r385 : Seg30.relationRow385 rho) :
    (1*rho 28344)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX26 rho + rho 28699) = rho 28701 := by
  rw [seg30AccX26_sum]
  unfold Seg30.relationRow385 at r385
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r385 ⊢
  exact r385

theorem seg30_prefix_27_selY (rho : Nat -> Seg30.F)
    (r386 : Seg30.relationRow386 rho) :
    (1*rho 28344)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY26 rho + rho 28700) = rho 28702 := by
  rw [seg30AccY26_sum]
  unfold Seg30.relationRow386 at r386
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r386 ⊢
  exact r386

theorem seg30_prefix_28_v2 (rho : Nat -> Seg30.F)
    (r387 : Seg30.relationRow387 rho) :
    (51775443479241098402096956665878702576057514874494739998865276011239223123*rho 28317 + 6657259362711039144743913495888109165349691744994353821451845158638640565674*seg30AccX27 rho)*(8018423678882544554730157100009757083911394055734846144581939446224183505653 + 15583042519391411716071670939216949319487308301399490898260719631782627533*rho 28317 + 8018423678882544554730157100009757083911394055734846144581939446224183505653*seg30AccY27 rho) = rho 28703 := by
  rw [seg30AccX27_sum, seg30AccY27_sum]
  unfold Seg30.relationRow387 at r387
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r387 ⊢
  exact r387

theorem seg30_prefix_28_addX (rho : Nat -> Seg30.F)
    (r388 : Seg30.relationRow388 rho) :
    rho 28704*(1 + rho 28703) = 8018423678882544554730157100009757083911394055734846144581939446224183505653 + 6757752362302479364177696248661082593934265611481299010169952861620793658248*rho 28317 + 1424987848335568217506585834934026909511976978926982072903173013644687170883*seg30AccX27 rho + 8018423678882544554730157100009757083911394055734846144581939446224183505653*seg30AccY27 rho := by
  rw [add_assoc, seg30AccWeighted27]
  unfold Seg30.relationRow388 at r388
  simp only [Seg30.relationLc23, Seg30.relationLc23Part0, Seg30.relationLc23Part1] at r388
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r388 ⊢
  exact r388

theorem seg30_prefix_28_addY (rho : Nat -> Seg30.F)
    (r389 : Seg30.relationRow389 rho) :
    rho 28705*(1 + (-1)*rho 28703) = 1424987848335568217506585834934026909511976978926982072903173013644687170883 + 952752598305257443954382774282681094589157431297876586238579574428526020928*rho 28317 + 8018423678882544554730157100009757083911394055734846144581939446224183505653*seg30AccX27 rho + 1424987848335568217506585834934026909511976978926982072903173013644687170883*seg30AccY27 rho := by
  rw [add_assoc, seg30AccWeighted27]
  unfold Seg30.relationRow389 at r389
  simp only [Seg30.relationLc24, Seg30.relationLc24Part0, Seg30.relationLc24Part1] at r389
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r389 ⊢
  exact r389

theorem seg30_prefix_28_selX (rho : Nat -> Seg30.F)
    (r390 : Seg30.relationRow390 rho) :
    (1*rho 28345)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX27 rho + rho 28704) = rho 28706 := by
  rw [seg30AccX27_sum]
  unfold Seg30.relationRow390 at r390
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r390 ⊢
  exact r390

theorem seg30_prefix_28_selY (rho : Nat -> Seg30.F)
    (r391 : Seg30.relationRow391 rho) :
    (1*rho 28345)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY27 rho + rho 28705) = rho 28707 := by
  rw [seg30AccY27_sum]
  unfold Seg30.relationRow391 at r391
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r391 ⊢
  exact r391

theorem seg30_prefix_29_v2 (rho : Nat -> Seg30.F)
    (r392 : Seg30.relationRow392 rho) :
    (8287900179260966111444378413809228467020578025432864718202026527358461568844*rho 28317 + 3255355479230520239245265985447735669454046199262866440804262736175046838601*seg30AccX28 rho)*(5110522837724527965219539961208608400431488223749802596080918536465326249033 + 4325764255755994515121180166218221802812203229701451380124336007235305163801*rho 28317 + 5110522837724527965219539961208608400431488223749802596080918536465326249033*seg30AccY28 rho) = rho 28708 := by
  rw [seg30AccX28_sum, seg30AccY28_sum]
  unfold Seg30.relationRow392 at r392
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r392 ⊢
  exact r392

theorem seg30_prefix_29_addX (rho : Nat -> Seg30.F)
    (r393 : Seg30.relationRow393 rho) :
    rho 28709*(1 + rho 28708) = 5110522837724527965219539961208608400431488223749802596080918536465326249033 + 8370444689338478659303651281707108102989816939287088308264868812195229765331*rho 28317 + 4129667447661348439872479212368683205068406939497456186792831538274143824198*seg30AccX28 rho + 5110522837724527965219539961208608400431488223749802596080918536465326249033*seg30AccY28 rho := by
  rw [add_assoc, seg30AccWeighted28]
  unfold Seg30.relationRow393 at r393
  simp only [Seg30.relationLc25, Seg30.relationLc25Part0, Seg30.relationLc25Part1] at r393
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r393 ⊢
  exact r393

theorem seg30_prefix_29_addY (rho : Nat -> Seg30.F)
    (r394 : Seg30.relationRow394 rho) :
    rho 28710*(1 + (-1)*rho 28708) = 4129667447661348439872479212368683205068406939497456186792831538274143824198 + 812275852709380879569251977185394380921504104105348386868355806098719545544*rho 28317 + 5110522837724527965219539961208608400431488223749802596080918536465326249033*seg30AccX28 rho + 4129667447661348439872479212368683205068406939497456186792831538274143824198*seg30AccY28 rho := by
  rw [add_assoc, seg30AccWeighted28]
  unfold Seg30.relationRow394 at r394
  simp only [Seg30.relationLc26, Seg30.relationLc26Part0, Seg30.relationLc26Part1] at r394
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r394 ⊢
  exact r394

theorem seg30_prefix_29_selX (rho : Nat -> Seg30.F)
    (r395 : Seg30.relationRow395 rho) :
    (1*rho 28346)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX28 rho + rho 28709) = rho 28711 := by
  rw [seg30AccX28_sum]
  unfold Seg30.relationRow395 at r395
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r395 ⊢
  exact r395

theorem seg30_prefix_29_selY (rho : Nat -> Seg30.F)
    (r396 : Seg30.relationRow396 rho) :
    (1*rho 28346)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY28 rho + rho 28710) = rho 28712 := by
  rw [seg30AccY28_sum]
  unfold Seg30.relationRow396 at r396
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r396 ⊢
  exact r396

theorem seg30_prefix_30_v2 (rho : Nat -> Seg30.F)
    (r397 : Seg30.relationRow397 rho) :
    (3792710696943158094812238770333875087580948594544730296037051640413483001663*rho 28317 + 2482903988982329001690011278047306563612807287735381104470528168701567236474*seg30AccX29 rho)*(4989723386215557328560709349941277692369421468468569422839497865672353596284 + 5312731399566427291778421010003633059438986778264109638919940457273932823088*rho 28317 + 4989723386215557328560709349941277692369421468468569422839497865672353596284*seg30AccY29 rho) = rho 28713 := by
  rw [seg30AccX29_sum, seg30AccY29_sum]
  unfold Seg30.relationRow397 at r397
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r397 ⊢
  exact r397

theorem seg30_prefix_30_addX (rho : Nat -> Seg30.F)
    (r398 : Seg30.relationRow398 rho) :
    rho 28714*(1 + rho 28713) = 4989723386215557328560709349941277692369421468468569422839497865672353596284 + 2054720909948242334287749828325728597175922337285925695498409454970296381605*rho 28317 + 1745060256746867088292935045705968997729948358961890503057284410678968862098*seg30AccX29 rho + 4989723386215557328560709349941277692369421468468569422839497865672353596284*seg30AccY29 rho := by
  rw [add_assoc, seg30AccWeighted29]
  unfold Seg30.relationRow398 at r398
  simp only [Seg30.relationLc27, Seg30.relationLc27Part0, Seg30.relationLc27Part1] at r398
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r398 ⊢
  exact r398

theorem seg30_prefix_30_addY (rho : Nat -> Seg30.F)
    (r399 : Seg30.relationRow399 rho) :
    rho 28715*(1 + (-1)*rho 28713) = 1745060256746867088292935045705968997729948358961890503057284410678968862098 + 3927021965593039847225469137067229232210731564349263077539774261082516873640*rho 28317 + 4989723386215557328560709349941277692369421468468569422839497865672353596284*seg30AccX29 rho + 1745060256746867088292935045705968997729948358961890503057284410678968862098*seg30AccY29 rho := by
  rw [add_assoc, seg30AccWeighted29]
  unfold Seg30.relationRow399 at r399
  simp only [Seg30.relationLc28, Seg30.relationLc28Part0, Seg30.relationLc28Part1] at r399
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r399 ⊢
  exact r399

theorem seg30_prefix_30_selX (rho : Nat -> Seg30.F)
    (r400 : Seg30.relationRow400 rho) :
    (1*rho 28347)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX29 rho + rho 28714) = rho 28716 := by
  rw [seg30AccX29_sum]
  unfold Seg30.relationRow400 at r400
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r400 ⊢
  exact r400

theorem seg30_prefix_30_selY (rho : Nat -> Seg30.F)
    (r401 : Seg30.relationRow401 rho) :
    (1*rho 28347)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY29 rho + rho 28715) = rho 28717 := by
  rw [seg30AccY29_sum]
  unfold Seg30.relationRow401 at r401
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r401 ⊢
  exact r401


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

