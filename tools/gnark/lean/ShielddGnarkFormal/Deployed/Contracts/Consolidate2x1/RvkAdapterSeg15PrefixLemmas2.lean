import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_prefix_21_v2 (rho : Nat -> Seg15.F)
    (r352 : Seg15.relationRow352 rho) :
    (3859030896250291175109147461089968864885390873142426417620530283286390990479*rho 16136 + 2221768204210492498020933308195187315476565815756952625735581012389492030511*seg15AccX20 rho)*(1807286812265560548462668857956257804112937058639905309261959101975576893659 + 8373778597553758246218115803666110330487320618829657481734343292439764354698*rho 16136 + 1807286812265560548462668857956257804112937058639905309261959101975576893659*seg15AccY20 rho) = rho 16487 := by
  rw [seg15AccX20_sum, seg15AccY20_sum]
  unfold Seg15.relationRow352 at r352
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r352 ⊢
  exact r352

theorem seg15_prefix_21_addX (rho : Nat -> Seg15.F)
    (r353 : Seg15.relationRow353 rho) :
    rho 16488*(1 + rho 16487) = 1807286812265560548462668857956257804112937058639905309261959101975576893659 + 3502928614648296691007724303886187908996652909362464225966885039086319166794*rho 16136 + 2290048308833514025143266652820351471867705435718945788713899960744371949290*seg15AccX20 rho + 1807286812265560548462668857956257804112937058639905309261959101975576893659*seg15AccY20 rho := by
  rw [add_assoc, seg15AccWeighted20]
  unfold Seg15.relationRow353 at r353
  simp only [Seg15.relationLc9, Seg15.relationLc9Part0, Seg15.relationLc9Part1] at r353
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r353 ⊢
  exact r353

theorem seg15_prefix_21_addY (rho : Nat -> Seg15.F)
    (r354 : Seg15.relationRow354 rho) :
    rho 16489*(1 + (-1)*rho 16487) = 2290048308833514025143266652820351471867705435718945788713899960744371949290 + 77001094337513284289421777759057518406237692400016935885954782956546695152*rho 16136 + 1807286812265560548462668857956257804112937058639905309261959101975576893659*seg15AccX20 rho + 2290048308833514025143266652820351471867705435718945788713899960744371949290*seg15AccY20 rho := by
  rw [add_assoc, seg15AccWeighted20]
  unfold Seg15.relationRow354 at r354
  simp only [Seg15.relationLc10, Seg15.relationLc10Part0, Seg15.relationLc10Part1] at r354
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r354 ⊢
  exact r354

theorem seg15_prefix_21_selX (rho : Nat -> Seg15.F)
    (r355 : Seg15.relationRow355 rho) :
    (1*rho 16157)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX20 rho + rho 16488) = rho 16490 := by
  rw [seg15AccX20_sum]
  unfold Seg15.relationRow355 at r355
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r355 ⊢
  exact r355

theorem seg15_prefix_21_selY (rho : Nat -> Seg15.F)
    (r356 : Seg15.relationRow356 rho) :
    (1*rho 16157)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY20 rho + rho 16489) = rho 16491 := by
  rw [seg15AccY20_sum]
  unfold Seg15.relationRow356 at r356
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r356 ⊢
  exact r356

theorem seg15_prefix_22_v2 (rho : Nat -> Seg15.F)
    (r357 : Seg15.relationRow357 rho) :
    (3794550865036835053360616874229700906540341768858835895454352617313486757936*rho 16136 + 1947879467774202825890220935283645743249202955426461317518953481162964368709*seg15AccX21 rho)*(5093487347277176555558710368066104965831187730741424114456331013559654475770 + 4613681404561041414491686275647308176147390102568119351747506750787165972295*rho 16136 + 5093487347277176555558710368066104965831187730741424114456331013559654475770*seg15AccY21 rho) = rho 16492 := by
  rw [seg15AccX21_sum, seg15AccY21_sum]
  unfold Seg15.relationRow357 at r357
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r357 ⊢
  exact r357

theorem seg15_prefix_22_addX (rho : Nat -> Seg15.F)
    (r358 : Seg15.relationRow358 rho) :
    rho 16493*(1 + rho 16492) = 5093487347277176555558710368066104965831187730741424114456331013559654475770 + 2593968960346650490400809144278612896015567898811903094977655894775589211928*rho 16136 + 7424838889754891112092277146090391007308056218842972521785335654550745416505*seg15AccX21 rho + 5093487347277176555558710368066104965831187730741424114456331013559654475770*seg15AccY21 rho := by
  rw [add_assoc, seg15AccWeighted21]
  unfold Seg15.relationRow358 at r358
  simp only [Seg15.relationLc11, Seg15.relationLc11Part0, Seg15.relationLc11Part1] at r358
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r358 ⊢
  exact r358

theorem seg15_prefix_22_addY (rho : Nat -> Seg15.F)
    (r359 : Seg15.relationRow359 rho) :
    rho 16494*(1 + (-1)*rho 16492) = 7424838889754891112092277146090391007308056218842972521785335654550745416505 + 4042513875459441486946433019879151653837647891745054679547516776865583323229*rho 16136 + 5093487347277176555558710368066104965831187730741424114456331013559654475770*seg15AccX21 rho + 7424838889754891112092277146090391007308056218842972521785335654550745416505*seg15AccY21 rho := by
  rw [add_assoc, seg15AccWeighted21]
  unfold Seg15.relationRow359 at r359
  simp only [Seg15.relationLc12, Seg15.relationLc12Part0, Seg15.relationLc12Part1] at r359
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r359 ⊢
  exact r359

theorem seg15_prefix_22_selX (rho : Nat -> Seg15.F)
    (r360 : Seg15.relationRow360 rho) :
    (1*rho 16158)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX21 rho + rho 16493) = rho 16495 := by
  rw [seg15AccX21_sum]
  unfold Seg15.relationRow360 at r360
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r360 ⊢
  exact r360

theorem seg15_prefix_22_selY (rho : Nat -> Seg15.F)
    (r361 : Seg15.relationRow361 rho) :
    (1*rho 16158)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY21 rho + rho 16494) = rho 16496 := by
  rw [seg15AccY21_sum]
  unfold Seg15.relationRow361 at r361
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r361 ⊢
  exact r361

theorem seg15_prefix_23_v2 (rho : Nat -> Seg15.F)
    (r362 : Seg15.relationRow362 rho) :
    (3794014873575794920651820584378408566178653587646231018843184137808113802147*rho 16136 + 366653356134228893884451650551569358790369043609706051437573096230856149808*seg15AccX22 rho)*(6971869847316631555946269356928124873336607269769416978032128120736419456575 + 3864890959518274530276501341500014850868021279626352307800892084975932123580*rho 16136 + 6971869847316631555946269356928124873336607269769416978032128120736419456575*seg15AccY22 rho) = rho 16497 := by
  rw [seg15AccX22_sum, seg15AccY22_sum]
  unfold Seg15.relationRow362 at r362
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r362 ⊢
  exact r362

theorem seg15_prefix_23_addX (rho : Nat -> Seg15.F)
    (r363 : Seg15.relationRow363 rho) :
    rho 16498*(1 + rho 16497) = 6971869847316631555946269356928124873336607269769416978032128120736419456575 + 8173632955791923857879312017185794928132648730490324035661546815100571564548*rho 16136 + 4145482763243431833185995311441107274210277750108270891386755639927755298791*seg15AccX22 rho + 6971869847316631555946269356928124873336607269769416978032128120736419456575*seg15AccY22 rho := by
  rw [add_assoc, seg15AccWeighted22]
  unfold Seg15.relationRow363 at r363
  simp only [Seg15.relationLc13, Seg15.relationLc13Part0, Seg15.relationLc13Part1] at r363
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r363 ⊢
  exact r363

theorem seg15_prefix_23_addY (rho : Nat -> Seg15.F)
    (r364 : Seg15.relationRow364 rho) :
    rho 16499*(1 + (-1)*rho 16497) = 4145482763243431833185995311441107274210277750108270891386755639927755298791 + 3016766427198289168164936169171255022675347485263062160990907667127278435084*rho 16136 + 6971869847316631555946269356928124873336607269769416978032128120736419456575*seg15AccX22 rho + 4145482763243431833185995311441107274210277750108270891386755639927755298791*seg15AccY22 rho := by
  rw [add_assoc, seg15AccWeighted22]
  unfold Seg15.relationRow364 at r364
  simp only [Seg15.relationLc14, Seg15.relationLc14Part0, Seg15.relationLc14Part1] at r364
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r364 ⊢
  exact r364

theorem seg15_prefix_23_selX (rho : Nat -> Seg15.F)
    (r365 : Seg15.relationRow365 rho) :
    (1*rho 16159)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX22 rho + rho 16498) = rho 16500 := by
  rw [seg15AccX22_sum]
  unfold Seg15.relationRow365 at r365
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r365 ⊢
  exact r365

theorem seg15_prefix_23_selY (rho : Nat -> Seg15.F)
    (r366 : Seg15.relationRow366 rho) :
    (1*rho 16159)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY22 rho + rho 16499) = rho 16501 := by
  rw [seg15AccY22_sum]
  unfold Seg15.relationRow366 at r366
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r366 ⊢
  exact r366

theorem seg15_prefix_24_v2 (rho : Nat -> Seg15.F)
    (r367 : Seg15.relationRow367 rho) :
    (613254355233494454694824345050167882855780969268338428712171464921401776251*rho 16136 + 224205272964481342216886934734197252310330975741562383175585311846170893212*seg15AccX23 rho)*(698332092399450389416901304074919166827933635593005989524634246935338237515 + 7098153646342492011616147110488161240205223740082633386383934714859952227897*rho 16136 + 698332092399450389416901304074919166827933635593005989524634246935338237515*seg15AccY23 rho) = rho 16502 := by
  rw [seg15AccX23_sum, seg15AccY23_sum]
  unfold Seg15.relationRow367 at r367
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r367 ⊢
  exact r367

theorem seg15_prefix_24_addX (rho : Nat -> Seg15.F)
    (r368 : Seg15.relationRow368 rho) :
    rho 16503*(1 + rho 16502) = 698332092399450389416901304074919166827933635593005989524634246935338237515 + 6653911288247861954350053651063727036098665576123603988762951613891416422789*rho 16136 + 3860319722354698456547449231179096311513547604377194210116429324042962042373*seg15AccX23 rho + 698332092399450389416901304074919166827933635593005989524634246935338237515*seg15AccY23 rho := by
  rw [add_assoc, seg15AccWeighted23]
  unfold Seg15.relationRow368 at r368
  simp only [Seg15.relationLc15, Seg15.relationLc15Part0, Seg15.relationLc15Part1] at r368
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r368 ⊢
  exact r368

theorem seg15_prefix_24_addY (rho : Nat -> Seg15.F)
    (r369 : Seg15.relationRow369 rho) :
    rho 16504*(1 + (-1)*rho 16502) = 3860319722354698456547449231179096311513547604377194210116429324042962042373 + 7577817630127451382183922625957816194436849239543951783993455713375576444765*rho 16136 + 698332092399450389416901304074919166827933635593005989524634246935338237515*seg15AccX23 rho + 3860319722354698456547449231179096311513547604377194210116429324042962042373*seg15AccY23 rho := by
  rw [add_assoc, seg15AccWeighted23]
  unfold Seg15.relationRow369 at r369
  simp only [Seg15.relationLc16, Seg15.relationLc16Part0, Seg15.relationLc16Part1] at r369
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r369 ⊢
  exact r369

theorem seg15_prefix_24_selX (rho : Nat -> Seg15.F)
    (r370 : Seg15.relationRow370 rho) :
    (1*rho 16160)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX23 rho + rho 16503) = rho 16505 := by
  rw [seg15AccX23_sum]
  unfold Seg15.relationRow370 at r370
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r370 ⊢
  exact r370

theorem seg15_prefix_24_selY (rho : Nat -> Seg15.F)
    (r371 : Seg15.relationRow371 rho) :
    (1*rho 16160)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY23 rho + rho 16504) = rho 16506 := by
  rw [seg15AccY23_sum]
  unfold Seg15.relationRow371 at r371
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r371 ⊢
  exact r371

theorem seg15_prefix_25_v2 (rho : Nat -> Seg15.F)
    (r372 : Seg15.relationRow372 rho) :
    (4904364982033510618908166838756101712951906426882430087867630809757628845898*rho 16136 + 744659538135431695640052302004022517269629365141333120367383144383183361999*seg15AccX24 rho)*(4422303164723061947314828228297415934576038778891527859445088569956345713070 + 4730818462444899340376522439439081382488617158581323273235571344276354859762*rho 16136 + 4422303164723061947314828228297415934576038778891527859445088569956345713070*seg15AccY24 rho) = rho 16507 := by
  rw [seg15AccX24_sum, seg15AccY24_sum]
  unfold Seg15.relationRow372 at r372
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r372 ⊢
  exact r372

theorem seg15_prefix_25_addX (rho : Nat -> Seg15.F)
    (r373 : Seg15.relationRow373 rho) :
    rho 16508*(1 + rho 16507) = 4422303164723061947314828228297415934576038778891527859445088569956345713070 + 6633214475219916023298769750001877722458350178883092830694633370371553771180*rho 16136 + 4120450605162381144335785505483615892011037818398620130915889274136591989973*seg15AccX24 rho + 4422303164723061947314828228297415934576038778891527859445088569956345713070*seg15AccY24 rho := by
  rw [add_assoc, seg15AccWeighted24]
  unfold Seg15.relationRow373 at r373
  simp only [Seg15.relationLc17, Seg15.relationLc17Part0, Seg15.relationLc17Part1] at r373
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r373 ⊢
  exact r373

theorem seg15_prefix_25_addY (rho : Nat -> Seg15.F)
    (r374 : Seg15.relationRow374 rho) :
    rho 16509*(1 + (-1)*rho 16507) = 4120450605162381144335785505483615892011037818398620130915889274136591989973 + 5582238607082076851740208724543319935652510014722270641306989023073106136612*rho 16136 + 4422303164723061947314828228297415934576038778891527859445088569956345713070*seg15AccX24 rho + 4120450605162381144335785505483615892011037818398620130915889274136591989973*seg15AccY24 rho := by
  rw [add_assoc, seg15AccWeighted24]
  unfold Seg15.relationRow374 at r374
  simp only [Seg15.relationLc18, Seg15.relationLc18Part0, Seg15.relationLc18Part1] at r374
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r374 ⊢
  exact r374

theorem seg15_prefix_25_selX (rho : Nat -> Seg15.F)
    (r375 : Seg15.relationRow375 rho) :
    (1*rho 16161)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX24 rho + rho 16508) = rho 16510 := by
  rw [seg15AccX24_sum]
  unfold Seg15.relationRow375 at r375
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r375 ⊢
  exact r375

theorem seg15_prefix_25_selY (rho : Nat -> Seg15.F)
    (r376 : Seg15.relationRow376 rho) :
    (1*rho 16161)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY24 rho + rho 16509) = rho 16511 := by
  rw [seg15AccY24_sum]
  unfold Seg15.relationRow376 at r376
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r376 ⊢
  exact r376

theorem seg15_prefix_26_v2 (rho : Nat -> Seg15.F)
    (r377 : Seg15.relationRow377 rho) :
    (3181154236042176302739631238677614333633729020480263984298601966094552420095*rho 16136 + 4890907553779944807975903433943833282279984360614217206940673761332356401398*seg15AccX25 rho)*(5009073828216417788897901053664247942048164297341996689155967268504146970488 + 2273277479857444792629862347610339458674584985123334673990832939068658499065*rho 16136 + 5009073828216417788897901053664247942048164297341996689155967268504146970488*seg15AccY25 rho) = rho 16512 := by
  rw [seg15AccX25_sum, seg15AccY25_sum]
  unfold Seg15.relationRow377 at r377
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r377 ⊢
  exact r377

theorem seg15_prefix_26_addX (rho : Nat -> Seg15.F)
    (r378 : Seg15.relationRow378 rho) :
    rho 16513*(1 + rho 16512) = 5009073828216417788897901053664247942048164297341996689155967268504146970488 + 3968254300244612834138477886882201362794885788209677919178866727963741104586*rho 16136 + 1242711659814623109293099694224743625691221214554458310761398321148183402362*seg15AccX25 rho + 5009073828216417788897901053664247942048164297341996689155967268504146970488*seg15AccY25 rho := by
  rw [add_assoc, seg15AccWeighted25]
  unfold Seg15.relationRow378 at r378
  simp only [Seg15.relationLc19, Seg15.relationLc19Part0, Seg15.relationLc19Part1] at r378
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r378 ⊢
  exact r378

theorem seg15_prefix_26_addY (rho : Nat -> Seg15.F)
    (r379 : Seg15.relationRow379 rho) :
    rho 16514*(1 + (-1)*rho 16512) = 1242711659814623109293099694224743625691221214554458310761398321148183402362 + 1277533753130263419990014577813148196003567629970333625767474906860595977965*rho 16136 + 5009073828216417788897901053664247942048164297341996689155967268504146970488*seg15AccX25 rho + 1242711659814623109293099694224743625691221214554458310761398321148183402362*seg15AccY25 rho := by
  rw [add_assoc, seg15AccWeighted25]
  unfold Seg15.relationRow379 at r379
  simp only [Seg15.relationLc20, Seg15.relationLc20Part0, Seg15.relationLc20Part1] at r379
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r379 ⊢
  exact r379

theorem seg15_prefix_26_selX (rho : Nat -> Seg15.F)
    (r380 : Seg15.relationRow380 rho) :
    (1*rho 16162)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX25 rho + rho 16513) = rho 16515 := by
  rw [seg15AccX25_sum]
  unfold Seg15.relationRow380 at r380
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r380 ⊢
  exact r380

theorem seg15_prefix_26_selY (rho : Nat -> Seg15.F)
    (r381 : Seg15.relationRow381 rho) :
    (1*rho 16162)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY25 rho + rho 16514) = rho 16516 := by
  rw [seg15AccY25_sum]
  unfold Seg15.relationRow381 at r381
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r381 ⊢
  exact r381

theorem seg15_prefix_27_v2 (rho : Nat -> Seg15.F)
    (r382 : Seg15.relationRow382 rho) :
    (2990996184029959469754256850927685604426134109320164096964810921611337490383*rho 16136 + 5639654883578048587855815085709177653534889323307110513317475998985015187139*seg15AccX26 rho)*(8185232629601049131891743339013796454202168853641452678982161646728702859559 + 5725940096275979895123831451837528871125802679170251880960374703431973559897*rho 16136 + 8185232629601049131891743339013796454202168853641452678982161646728702859559*seg15AccY26 rho) = rho 16517 := by
  rw [seg15AccX26_sum, seg15AccY26_sum]
  unfold Seg15.relationRow382 at r382
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r382 ⊢
  exact r382

theorem seg15_prefix_27_addX (rho : Nat -> Seg15.F)
    (r383 : Seg15.relationRow383 rho) :
    rho 16518*(1 + rho 16517) = 8185232629601049131891743339013796454202168853641452678982161646728702859559 + 5332799377810117508381252815784145761122632976374024527222571622874958212259*rho 16136 + 4714664734994972056892212731503275944903442955442919140818312175662276395965*seg15AccX26 rho + 8185232629601049131891743339013796454202168853641452678982161646728702859559*seg15AccY26 rho := by
  rw [add_assoc, seg15AccWeighted26]
  unfold Seg15.relationRow383 at r383
  simp only [Seg15.relationLc21, Seg15.relationLc21Part0, Seg15.relationLc21Part1] at r383
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r383 ⊢
  exact r383

theorem seg15_prefix_27_addY (rho : Nat -> Seg15.F)
    (r384 : Seg15.relationRow384 rho) :
    rho 16519*(1 + (-1)*rho 16517) = 4714664734994972056892212731503275944903442955442919140818312175662276395965 + 6945482531101436755048336049615192206891233569969970194408248179185271119242*rho 16136 + 8185232629601049131891743339013796454202168853641452678982161646728702859559*seg15AccX26 rho + 4714664734994972056892212731503275944903442955442919140818312175662276395965*seg15AccY26 rho := by
  rw [add_assoc, seg15AccWeighted26]
  unfold Seg15.relationRow384 at r384
  simp only [Seg15.relationLc22, Seg15.relationLc22Part0, Seg15.relationLc22Part1] at r384
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r384 ⊢
  exact r384

theorem seg15_prefix_27_selX (rho : Nat -> Seg15.F)
    (r385 : Seg15.relationRow385 rho) :
    (1*rho 16163)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX26 rho + rho 16518) = rho 16520 := by
  rw [seg15AccX26_sum]
  unfold Seg15.relationRow385 at r385
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r385 ⊢
  exact r385

theorem seg15_prefix_27_selY (rho : Nat -> Seg15.F)
    (r386 : Seg15.relationRow386 rho) :
    (1*rho 16163)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY26 rho + rho 16519) = rho 16521 := by
  rw [seg15AccY26_sum]
  unfold Seg15.relationRow386 at r386
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r386 ⊢
  exact r386

theorem seg15_prefix_28_v2 (rho : Nat -> Seg15.F)
    (r387 : Seg15.relationRow387 rho) :
    (51775443479241098402096956665878702576057514874494739998865276011239223123*rho 16136 + 6657259362711039144743913495888109165349691744994353821451845158638640565674*seg15AccX27 rho)*(8018423678882544554730157100009757083911394055734846144581939446224183505653 + 15583042519391411716071670939216949319487308301399490898260719631782627533*rho 16136 + 8018423678882544554730157100009757083911394055734846144581939446224183505653*seg15AccY27 rho) = rho 16522 := by
  rw [seg15AccX27_sum, seg15AccY27_sum]
  unfold Seg15.relationRow387 at r387
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r387 ⊢
  exact r387

theorem seg15_prefix_28_addX (rho : Nat -> Seg15.F)
    (r388 : Seg15.relationRow388 rho) :
    rho 16523*(1 + rho 16522) = 8018423678882544554730157100009757083911394055734846144581939446224183505653 + 6757752362302479364177696248661082593934265611481299010169952861620793658248*rho 16136 + 1424987848335568217506585834934026909511976978926982072903173013644687170883*seg15AccX27 rho + 8018423678882544554730157100009757083911394055734846144581939446224183505653*seg15AccY27 rho := by
  rw [add_assoc, seg15AccWeighted27]
  unfold Seg15.relationRow388 at r388
  simp only [Seg15.relationLc23, Seg15.relationLc23Part0, Seg15.relationLc23Part1] at r388
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r388 ⊢
  exact r388

theorem seg15_prefix_28_addY (rho : Nat -> Seg15.F)
    (r389 : Seg15.relationRow389 rho) :
    rho 16524*(1 + (-1)*rho 16522) = 1424987848335568217506585834934026909511976978926982072903173013644687170883 + 952752598305257443954382774282681094589157431297876586238579574428526020928*rho 16136 + 8018423678882544554730157100009757083911394055734846144581939446224183505653*seg15AccX27 rho + 1424987848335568217506585834934026909511976978926982072903173013644687170883*seg15AccY27 rho := by
  rw [add_assoc, seg15AccWeighted27]
  unfold Seg15.relationRow389 at r389
  simp only [Seg15.relationLc24, Seg15.relationLc24Part0, Seg15.relationLc24Part1] at r389
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r389 ⊢
  exact r389

theorem seg15_prefix_28_selX (rho : Nat -> Seg15.F)
    (r390 : Seg15.relationRow390 rho) :
    (1*rho 16164)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX27 rho + rho 16523) = rho 16525 := by
  rw [seg15AccX27_sum]
  unfold Seg15.relationRow390 at r390
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r390 ⊢
  exact r390

theorem seg15_prefix_28_selY (rho : Nat -> Seg15.F)
    (r391 : Seg15.relationRow391 rho) :
    (1*rho 16164)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY27 rho + rho 16524) = rho 16526 := by
  rw [seg15AccY27_sum]
  unfold Seg15.relationRow391 at r391
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r391 ⊢
  exact r391

theorem seg15_prefix_29_v2 (rho : Nat -> Seg15.F)
    (r392 : Seg15.relationRow392 rho) :
    (8287900179260966111444378413809228467020578025432864718202026527358461568844*rho 16136 + 3255355479230520239245265985447735669454046199262866440804262736175046838601*seg15AccX28 rho)*(5110522837724527965219539961208608400431488223749802596080918536465326249033 + 4325764255755994515121180166218221802812203229701451380124336007235305163801*rho 16136 + 5110522837724527965219539961208608400431488223749802596080918536465326249033*seg15AccY28 rho) = rho 16527 := by
  rw [seg15AccX28_sum, seg15AccY28_sum]
  unfold Seg15.relationRow392 at r392
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r392 ⊢
  exact r392

theorem seg15_prefix_29_addX (rho : Nat -> Seg15.F)
    (r393 : Seg15.relationRow393 rho) :
    rho 16528*(1 + rho 16527) = 5110522837724527965219539961208608400431488223749802596080918536465326249033 + 8370444689338478659303651281707108102989816939287088308264868812195229765331*rho 16136 + 4129667447661348439872479212368683205068406939497456186792831538274143824198*seg15AccX28 rho + 5110522837724527965219539961208608400431488223749802596080918536465326249033*seg15AccY28 rho := by
  rw [add_assoc, seg15AccWeighted28]
  unfold Seg15.relationRow393 at r393
  simp only [Seg15.relationLc25, Seg15.relationLc25Part0, Seg15.relationLc25Part1] at r393
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r393 ⊢
  exact r393

theorem seg15_prefix_29_addY (rho : Nat -> Seg15.F)
    (r394 : Seg15.relationRow394 rho) :
    rho 16529*(1 + (-1)*rho 16527) = 4129667447661348439872479212368683205068406939497456186792831538274143824198 + 812275852709380879569251977185394380921504104105348386868355806098719545544*rho 16136 + 5110522837724527965219539961208608400431488223749802596080918536465326249033*seg15AccX28 rho + 4129667447661348439872479212368683205068406939497456186792831538274143824198*seg15AccY28 rho := by
  rw [add_assoc, seg15AccWeighted28]
  unfold Seg15.relationRow394 at r394
  simp only [Seg15.relationLc26, Seg15.relationLc26Part0, Seg15.relationLc26Part1] at r394
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r394 ⊢
  exact r394

theorem seg15_prefix_29_selX (rho : Nat -> Seg15.F)
    (r395 : Seg15.relationRow395 rho) :
    (1*rho 16165)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX28 rho + rho 16528) = rho 16530 := by
  rw [seg15AccX28_sum]
  unfold Seg15.relationRow395 at r395
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r395 ⊢
  exact r395

theorem seg15_prefix_29_selY (rho : Nat -> Seg15.F)
    (r396 : Seg15.relationRow396 rho) :
    (1*rho 16165)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY28 rho + rho 16529) = rho 16531 := by
  rw [seg15AccY28_sum]
  unfold Seg15.relationRow396 at r396
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r396 ⊢
  exact r396

theorem seg15_prefix_30_v2 (rho : Nat -> Seg15.F)
    (r397 : Seg15.relationRow397 rho) :
    (3792710696943158094812238770333875087580948594544730296037051640413483001663*rho 16136 + 2482903988982329001690011278047306563612807287735381104470528168701567236474*seg15AccX29 rho)*(4989723386215557328560709349941277692369421468468569422839497865672353596284 + 5312731399566427291778421010003633059438986778264109638919940457273932823088*rho 16136 + 4989723386215557328560709349941277692369421468468569422839497865672353596284*seg15AccY29 rho) = rho 16532 := by
  rw [seg15AccX29_sum, seg15AccY29_sum]
  unfold Seg15.relationRow397 at r397
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r397 ⊢
  exact r397

theorem seg15_prefix_30_addX (rho : Nat -> Seg15.F)
    (r398 : Seg15.relationRow398 rho) :
    rho 16533*(1 + rho 16532) = 4989723386215557328560709349941277692369421468468569422839497865672353596284 + 2054720909948242334287749828325728597175922337285925695498409454970296381605*rho 16136 + 1745060256746867088292935045705968997729948358961890503057284410678968862098*seg15AccX29 rho + 4989723386215557328560709349941277692369421468468569422839497865672353596284*seg15AccY29 rho := by
  rw [add_assoc, seg15AccWeighted29]
  unfold Seg15.relationRow398 at r398
  simp only [Seg15.relationLc27, Seg15.relationLc27Part0, Seg15.relationLc27Part1] at r398
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r398 ⊢
  exact r398

theorem seg15_prefix_30_addY (rho : Nat -> Seg15.F)
    (r399 : Seg15.relationRow399 rho) :
    rho 16534*(1 + (-1)*rho 16532) = 1745060256746867088292935045705968997729948358961890503057284410678968862098 + 3927021965593039847225469137067229232210731564349263077539774261082516873640*rho 16136 + 4989723386215557328560709349941277692369421468468569422839497865672353596284*seg15AccX29 rho + 1745060256746867088292935045705968997729948358961890503057284410678968862098*seg15AccY29 rho := by
  rw [add_assoc, seg15AccWeighted29]
  unfold Seg15.relationRow399 at r399
  simp only [Seg15.relationLc28, Seg15.relationLc28Part0, Seg15.relationLc28Part1] at r399
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r399 ⊢
  exact r399

theorem seg15_prefix_30_selX (rho : Nat -> Seg15.F)
    (r400 : Seg15.relationRow400 rho) :
    (1*rho 16166)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX29 rho + rho 16533) = rho 16535 := by
  rw [seg15AccX29_sum]
  unfold Seg15.relationRow400 at r400
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r400 ⊢
  exact r400

theorem seg15_prefix_30_selY (rho : Nat -> Seg15.F)
    (r401 : Seg15.relationRow401 rho) :
    (1*rho 16166)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY29 rho + rho 16534) = rho 16536 := by
  rw [seg15AccY29_sum]
  unfold Seg15.relationRow401 at r401
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r401 ⊢
  exact r401


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

