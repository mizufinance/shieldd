import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_prefix_51_v2 (rho : Nat -> Seg31.F)
    (r502 : Seg31.relationRow502 rho) :
    (7951490232008115975286127579907409914560856182774254771782297894440063486475*rho 29271 + 5107748505877890801883930202609992877975194663178272094077896319286077365369*seg31AccX50 rho)*(823083494539051004312126362108186731208135674306211154180233814990883104587 + 269469382135806435828200452609097401317921355988942707487639244015825367612*rho 29271 + 823083494539051004312126362108186731208135674306211154180233814990883104587*seg31AccY50 rho) = rho 29772 := by
  rw [seg31AccX50_sum, seg31AccY50_sum]
  unfold Seg31.relationRow502 at r502
  simp only [Seg31.relationLc145, Seg31.relationLc145Part0, Seg31.relationLc145Part1] at r502
  simp only [Seg31.relationLc146, Seg31.relationLc146Part0, Seg31.relationLc146Part1] at r502
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r502 ⊢
  exact r502

theorem seg31_prefix_51_addX (rho : Nat -> Seg31.F)
    (r503 : Seg31.relationRow503 rho) :
    rho 29773*(1 + rho 29772) = 823083494539051004312126362108186731208135674306211154180233814990883104587 + 3483848078039548816972585087577619206834461969121942903803218700733317350116*rho 29271 + 10076509021570010617222907983765187842470338519907468910256073050989177452*seg31AccX50 rho + 823083494539051004312126362108186731208135674306211154180233814990883104587*seg31AccY50 rho := by
  rw [add_assoc, seg31AccWeighted50]
  unfold Seg31.relationRow503 at r503
  simp only [Seg31.relationLc147, Seg31.relationLc147Part0, Seg31.relationLc147Part1, Seg31.relationLc147Part2, Seg31.relationLc147Part3] at r503
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r503 ⊢
  exact r503

theorem seg31_prefix_51_addY (rho : Nat -> Seg31.F)
    (r504 : Seg31.relationRow504 rho) :
    rho 29774*(1 + (-1)*rho 29772) = 10076509021570010617222907983765187842470338519907468910256073050989177452 + 784226967580008301639074108881556619633174470864297411870558003367441031934*rho 29271 + 823083494539051004312126362108186731208135674306211154180233814990883104587*seg31AccX50 rho + 10076509021570010617222907983765187842470338519907468910256073050989177452*seg31AccY50 rho := by
  rw [add_assoc, seg31AccWeighted50]
  unfold Seg31.relationRow504 at r504
  simp only [Seg31.relationLc148, Seg31.relationLc148Part0, Seg31.relationLc148Part1, Seg31.relationLc148Part2, Seg31.relationLc148Part3] at r504
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r504 ⊢
  exact r504

theorem seg31_prefix_51_selX (rho : Nat -> Seg31.F)
    (r505 : Seg31.relationRow505 rho) :
    (1*rho 29322)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX50 rho + rho 29773) = rho 29775 := by
  rw [seg31AccX50_sum]
  unfold Seg31.relationRow505 at r505
  simp only [Seg31.relationLc149, Seg31.relationLc149Part0, Seg31.relationLc149Part1] at r505
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r505 ⊢
  exact r505

theorem seg31_prefix_51_selY (rho : Nat -> Seg31.F)
    (r506 : Seg31.relationRow506 rho) :
    (1*rho 29322)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY50 rho + rho 29774) = rho 29776 := by
  rw [seg31AccY50_sum]
  unfold Seg31.relationRow506 at r506
  simp only [Seg31.relationLc150, Seg31.relationLc150Part0, Seg31.relationLc150Part1] at r506
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r506 ⊢
  exact r506

theorem seg31_prefix_52_v2 (rho : Nat -> Seg31.F)
    (r507 : Seg31.relationRow507 rho) :
    (8215797647988851489209436139152836975875997321450035911852191941941828385271*rho 29271 + 6178153492810837321873108985276510456890801263430899812036496871227230386120*seg31AccX51 rho)*(7694370084810280788335886711964790438240845401652182560056549234120635838838 + 2917334971477552096792936140409115364710338386293267745427394798241615520212*rho 29271 + 7694370084810280788335886711964790438240845401652182560056549234120635838838*seg31AccY51 rho) = rho 29777 := by
  rw [seg31AccX51_sum, seg31AccY51_sum]
  unfold Seg31.relationRow507 at r507
  simp only [Seg31.relationLc151, Seg31.relationLc151Part0, Seg31.relationLc151Part1] at r507
  simp only [Seg31.relationLc152, Seg31.relationLc152Part0, Seg31.relationLc152Part1] at r507
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r507 ⊢
  exact r507

theorem seg31_prefix_52_addX (rho : Nat -> Seg31.F)
    (r508 : Seg31.relationRow508 rho) :
    rho 29778*(1 + rho 29777) = 7694370084810280788335886711964790438240845401652182560056549234120635838838 + 3604891716349428828150159426122664433615658258664732715224145671674818794608*rho 29271 + 7848322503852448400591964485979833705405177171479936466344335255753523655867*seg31AccX51 rho + 7694370084810280788335886711964790438240845401652182560056549234120635838838*seg31AccY51 rho := by
  rw [add_assoc, seg31AccWeighted51]
  unfold Seg31.relationRow508 at r508
  simp only [Seg31.relationLc153, Seg31.relationLc153Part0, Seg31.relationLc153Part1, Seg31.relationLc153Part2, Seg31.relationLc153Part3] at r508
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r508 ⊢
  exact r508

theorem seg31_prefix_52_addY (rho : Nat -> Seg31.F)
    (r509 : Seg31.relationRow509 rho) :
    rho 29779*(1 + (-1)*rho 29777) = 7848322503852448400591964485979833705405177171479936466344335255753523655867 + 5087843415398648340158033115839661935992070534691455337732849271367643704829*rho 29271 + 7694370084810280788335886711964790438240845401652182560056549234120635838838*seg31AccX51 rho + 7848322503852448400591964485979833705405177171479936466344335255753523655867*seg31AccY51 rho := by
  rw [add_assoc, seg31AccWeighted51]
  unfold Seg31.relationRow509 at r509
  simp only [Seg31.relationLc154, Seg31.relationLc154Part0, Seg31.relationLc154Part1, Seg31.relationLc154Part2, Seg31.relationLc154Part3] at r509
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r509 ⊢
  exact r509

theorem seg31_prefix_52_selX (rho : Nat -> Seg31.F)
    (r510 : Seg31.relationRow510 rho) :
    (1*rho 29323)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX51 rho + rho 29778) = rho 29780 := by
  rw [seg31AccX51_sum]
  unfold Seg31.relationRow510 at r510
  simp only [Seg31.relationLc155, Seg31.relationLc155Part0, Seg31.relationLc155Part1] at r510
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r510 ⊢
  exact r510

theorem seg31_prefix_52_selY (rho : Nat -> Seg31.F)
    (r511 : Seg31.relationRow511 rho) :
    (1*rho 29323)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY51 rho + rho 29779) = rho 29781 := by
  rw [seg31AccY51_sum]
  unfold Seg31.relationRow511 at r511
  simp only [Seg31.relationLc156, Seg31.relationLc156Part0, Seg31.relationLc156Part1] at r511
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r511 ⊢
  exact r511

theorem seg31_prefix_53_v2 (rho : Nat -> Seg31.F)
    (r512 : Seg31.relationRow512 rho) :
    (8442565229902995211953908369690446822943561671847732130643978236599649982557*rho 29271 + 2118582982988257504473440225491591734796304383057197015068125790043029382166*seg31AccX52 rho)*(2299844063002285963520542651454450250906626902268201289215890373981759450185 + 1513218976093308884816939156906656843199549780839367688545811288964805344056*rho 29271 + 2299844063002285963520542651454450250906626902268201289215890373981759450185*seg31AccY52 rho) = rho 29782 := by
  rw [seg31AccX52_sum, seg31AccY52_sum]
  unfold Seg31.relationRow512 at r512
  simp only [Seg31.relationLc157, Seg31.relationLc157Part0, Seg31.relationLc157Part1] at r512
  simp only [Seg31.relationLc158, Seg31.relationLc158Part0, Seg31.relationLc158Part1] at r512
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r512 ⊢
  exact r512

theorem seg31_prefix_53_addX (rho : Nat -> Seg31.F)
    (r513 : Seg31.relationRow513 rho) :
    rho 29783*(1 + rho 29782) = 2299844063002285963520542651454450250906626902268201289215890373981759450185 + 2128174185743992803427480888109188831678287124788585732388399870587616424272*rho 29271 + 1800844736714617282595404402780803561052921375776985866337424187818885991170*seg31AccX52 rho + 2299844063002285963520542651454450250906626902268201289215890373981759450185*seg31AccY52 rho := by
  rw [add_assoc, seg31AccWeighted52]
  unfold Seg31.relationRow513 at r513
  simp only [Seg31.relationLc159, Seg31.relationLc159Part0, Seg31.relationLc159Part1, Seg31.relationLc159Part2, Seg31.relationLc159Part3] at r513
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r513 ⊢
  exact r513

theorem seg31_prefix_53_addY (rho : Nat -> Seg31.F)
    (r514 : Seg31.relationRow514 rho) :
    rho 29784*(1 + (-1)*rho 29782) = 1800844736714617282595404402780803561052921375776985866337424187818885991170 + 4584281417295305356797355705327174107158956341988320145094872581481604524700*rho 29271 + 2299844063002285963520542651454450250906626902268201289215890373981759450185*seg31AccX52 rho + 1800844736714617282595404402780803561052921375776985866337424187818885991170*seg31AccY52 rho := by
  rw [add_assoc, seg31AccWeighted52]
  unfold Seg31.relationRow514 at r514
  simp only [Seg31.relationLc160, Seg31.relationLc160Part0, Seg31.relationLc160Part1, Seg31.relationLc160Part2, Seg31.relationLc160Part3] at r514
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r514 ⊢
  exact r514

theorem seg31_prefix_53_selX (rho : Nat -> Seg31.F)
    (r515 : Seg31.relationRow515 rho) :
    (1*rho 29324)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX52 rho + rho 29783) = rho 29785 := by
  rw [seg31AccX52_sum]
  unfold Seg31.relationRow515 at r515
  simp only [Seg31.relationLc161, Seg31.relationLc161Part0, Seg31.relationLc161Part1] at r515
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r515 ⊢
  exact r515

theorem seg31_prefix_53_selY (rho : Nat -> Seg31.F)
    (r516 : Seg31.relationRow516 rho) :
    (1*rho 29324)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY52 rho + rho 29784) = rho 29786 := by
  rw [seg31AccY52_sum]
  unfold Seg31.relationRow516 at r516
  simp only [Seg31.relationLc162, Seg31.relationLc162Part0, Seg31.relationLc162Part1] at r516
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r516 ⊢
  exact r516

theorem seg31_prefix_54_v2 (rho : Nat -> Seg31.F)
    (r517 : Seg31.relationRow517 rho) :
    (5485200669001964675903116690389524045452503466510717669914562100715921570316*rho 29271 + 5846523051446967967440159082631275298002440439864756615500920460162638843764*seg31AccX53 rho)*(5614987881341147618896054931299865755361696243168752487448507931180818023786 + 7291182270810181618096149122593319263114027650082957086263435969101109264147*rho 29271 + 5614987881341147618896054931299865755361696243168752487448507931180818023786*seg31AccY53 rho) = rho 29787 := by
  rw [seg31AccX53_sum, seg31AccY53_sum]
  unfold Seg31.relationRow517 at r517
  simp only [Seg31.relationLc163, Seg31.relationLc163Part0, Seg31.relationLc163Part1] at r517
  simp only [Seg31.relationLc164, Seg31.relationLc164Part0, Seg31.relationLc164Part1] at r517
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r517 ⊢
  exact r517

theorem seg31_prefix_54_addX (rho : Nat -> Seg31.F)
    (r518 : Seg31.relationRow518 rho) :
    rho 29788*(1 + rho 29787) = 5614987881341147618896054931299865755361696243168752487448507931180818023786 + 3265037226037828153459719589295133553856424724399244653828892159807408240682*rho 29271 + 3714032348987859282148255437863133091348956225595650950054118156212671998772*seg31AccX53 rho + 5614987881341147618896054931299865755361696243168752487448507931180818023786*seg31AccY53 rho := by
  rw [add_assoc, seg31AccWeighted53]
  unfold Seg31.relationRow518 at r518
  simp only [Seg31.relationLc165, Seg31.relationLc165Part0, Seg31.relationLc165Part1, Seg31.relationLc165Part2, Seg31.relationLc165Part3] at r518
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r518 ⊢
  exact r518

theorem seg31_prefix_54_addY (rho : Nat -> Seg31.F)
    (r519 : Seg31.relationRow519 rho) :
    rho 29789*(1 + (-1)*rho 29787) = 3714032348987859282148255437863133091348956225595650950054118156212671998772 + 8364348212655621776185922730037361598719148012242692402802574383202708885440*rho 29271 + 5614987881341147618896054931299865755361696243168752487448507931180818023786*seg31AccX53 rho + 3714032348987859282148255437863133091348956225595650950054118156212671998772*seg31AccY53 rho := by
  rw [add_assoc, seg31AccWeighted53]
  unfold Seg31.relationRow519 at r519
  simp only [Seg31.relationLc166, Seg31.relationLc166Part0, Seg31.relationLc166Part1, Seg31.relationLc166Part2, Seg31.relationLc166Part3] at r519
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r519 ⊢
  exact r519

theorem seg31_prefix_54_selX (rho : Nat -> Seg31.F)
    (r520 : Seg31.relationRow520 rho) :
    (1*rho 29325)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX53 rho + rho 29788) = rho 29790 := by
  rw [seg31AccX53_sum]
  unfold Seg31.relationRow520 at r520
  simp only [Seg31.relationLc167, Seg31.relationLc167Part0, Seg31.relationLc167Part1] at r520
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r520 ⊢
  exact r520

theorem seg31_prefix_54_selY (rho : Nat -> Seg31.F)
    (r521 : Seg31.relationRow521 rho) :
    (1*rho 29325)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY53 rho + rho 29789) = rho 29791 := by
  rw [seg31AccY53_sum]
  unfold Seg31.relationRow521 at r521
  simp only [Seg31.relationLc168, Seg31.relationLc168Part0, Seg31.relationLc168Part1] at r521
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r521 ⊢
  exact r521

theorem seg31_prefix_55_v2 (rho : Nat -> Seg31.F)
    (r522 : Seg31.relationRow522 rho) :
    (1313990169365511817090899843224152567995448967037380651344274914537076948048*rho 29271 + 3270625457551667644453406806086445794893819027444377513267150979927668756102*seg31AccX54 rho)*(1799753964916820815760635111213817112793132412296537109379119345177096523901 + 4242920238461437888072824133392194042958901485991965180008883918058321798559*rho 29271 + 1799753964916820815760635111213817112793132412296537109379119345177096523901*seg31AccY54 rho) = rho 29792 := by
  rw [seg31AccX54_sum, seg31AccY54_sum]
  unfold Seg31.relationRow522 at r522
  simp only [Seg31.relationLc169, Seg31.relationLc169Part0, Seg31.relationLc169Part1] at r522
  simp only [Seg31.relationLc170, Seg31.relationLc170Part0, Seg31.relationLc170Part1] at r522
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r522 ⊢
  exact r522

theorem seg31_prefix_55_addX (rho : Nat -> Seg31.F)
    (r523 : Seg31.relationRow523 rho) :
    rho 29793*(1 + rho 29792) = 1799753964916820815760635111213817112793132412296537109379119345177096523901 + 254528008648488836902356643224023653119307675234662398872758838058452249680*rho 29271 + 6732053796120843313219339245081777720406507586255686883542306955587239032230*seg31AccX54 rho + 1799753964916820815760635111213817112793132412296537109379119345177096523901*seg31AccY54 rho := by
  rw [add_assoc, seg31AccWeighted54]
  unfold Seg31.relationRow523 at r523
  simp only [Seg31.relationLc171, Seg31.relationLc171Part0, Seg31.relationLc171Part1, Seg31.relationLc171Part2, Seg31.relationLc171Part3] at r523
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r523 ⊢
  exact r523

theorem seg31_prefix_55_addY (rho : Nat -> Seg31.F)
    (r524 : Seg31.relationRow524 rho) :
    rho 29794*(1 + (-1)*rho 29792) = 6732053796120843313219339245081777720406507586255686883542306955587239032230 + 2289707880837953908755208871389624432709260619033607367296000191999872925118*rho 29271 + 1799753964916820815760635111213817112793132412296537109379119345177096523901*seg31AccX54 rho + 6732053796120843313219339245081777720406507586255686883542306955587239032230*seg31AccY54 rho := by
  rw [add_assoc, seg31AccWeighted54]
  unfold Seg31.relationRow524 at r524
  simp only [Seg31.relationLc172, Seg31.relationLc172Part0, Seg31.relationLc172Part1, Seg31.relationLc172Part2, Seg31.relationLc172Part3] at r524
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r524 ⊢
  exact r524

theorem seg31_prefix_55_selX (rho : Nat -> Seg31.F)
    (r525 : Seg31.relationRow525 rho) :
    (1*rho 29326)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX54 rho + rho 29793) = rho 29795 := by
  rw [seg31AccX54_sum]
  unfold Seg31.relationRow525 at r525
  simp only [Seg31.relationLc173, Seg31.relationLc173Part0, Seg31.relationLc173Part1] at r525
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r525 ⊢
  exact r525

theorem seg31_prefix_55_selY (rho : Nat -> Seg31.F)
    (r526 : Seg31.relationRow526 rho) :
    (1*rho 29326)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY54 rho + rho 29794) = rho 29796 := by
  rw [seg31AccY54_sum]
  unfold Seg31.relationRow526 at r526
  simp only [Seg31.relationLc174, Seg31.relationLc174Part0, Seg31.relationLc174Part1] at r526
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r526 ⊢
  exact r526

theorem seg31_prefix_56_v2 (rho : Nat -> Seg31.F)
    (r527 : Seg31.relationRow527 rho) :
    (8427363959673275445356636965346819445583959661557314661313584705058592663131*rho 29271 + 3233995703196325388481299497442317849571724715469973779048454502475618732286*seg31AccX55 rho)*(4715490755243117384424520177060293576182160841530650796913740284578135200683 + 3675494411708184879950187669845890975019109332169909707887469082384047256779*rho 29271 + 4715490755243117384424520177060293576182160841530650796913740284578135200683*seg31AccY55 rho) = rho 29797 := by
  rw [seg31AccX55_sum, seg31AccY55_sum]
  unfold Seg31.relationRow527 at r527
  simp only [Seg31.relationLc175, Seg31.relationLc175Part0, Seg31.relationLc175Part1] at r527
  simp only [Seg31.relationLc176, Seg31.relationLc176Part0, Seg31.relationLc176Part1] at r527
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r527 ⊢
  exact r527

theorem seg31_prefix_56_addX (rho : Nat -> Seg31.F)
    (r528 : Seg31.relationRow528 rho) :
    rho 29798*(1 + rho 29797) = 4715490755243117384424520177060293576182160841530650796913740284578135200683 + 1411333168799633030026175624699751478991214462541181323314757811929244112059*rho 29271 + 470673144524052484826972488981377734233936714009054186319817171498378143294*seg31AccX55 rho + 4715490755243117384424520177060293576182160841530650796913740284578135200683*seg31AccY55 rho := by
  rw [add_assoc, seg31AccWeighted55]
  unfold Seg31.relationRow528 at r528
  simp only [Seg31.relationLc177, Seg31.relationLc177Part0, Seg31.relationLc177Part1, Seg31.relationLc177Part2, Seg31.relationLc177Part3] at r528
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r528 ⊢
  exact r528

theorem seg31_prefix_56_addY (rho : Nat -> Seg31.F)
    (r529 : Seg31.relationRow529 rho) :
    rho 29799*(1 + (-1)*rho 29797) = 470673144524052484826972488981377734233936714009054186319817171498378143294 + 2267358468243705539888602275044934994867174603928525323102004785228563668611*rho 29271 + 4715490755243117384424520177060293576182160841530650796913740284578135200683*seg31AccX55 rho + 470673144524052484826972488981377734233936714009054186319817171498378143294*seg31AccY55 rho := by
  rw [add_assoc, seg31AccWeighted55]
  unfold Seg31.relationRow529 at r529
  simp only [Seg31.relationLc178, Seg31.relationLc178Part0, Seg31.relationLc178Part1, Seg31.relationLc178Part2, Seg31.relationLc178Part3] at r529
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r529 ⊢
  exact r529

theorem seg31_prefix_56_selX (rho : Nat -> Seg31.F)
    (r530 : Seg31.relationRow530 rho) :
    (1*rho 29327)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX55 rho + rho 29798) = rho 29800 := by
  rw [seg31AccX55_sum]
  unfold Seg31.relationRow530 at r530
  simp only [Seg31.relationLc179, Seg31.relationLc179Part0, Seg31.relationLc179Part1] at r530
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r530 ⊢
  exact r530

theorem seg31_prefix_56_selY (rho : Nat -> Seg31.F)
    (r531 : Seg31.relationRow531 rho) :
    (1*rho 29327)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY55 rho + rho 29799) = rho 29801 := by
  rw [seg31AccY55_sum]
  unfold Seg31.relationRow531 at r531
  simp only [Seg31.relationLc180, Seg31.relationLc180Part0, Seg31.relationLc180Part1] at r531
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r531 ⊢
  exact r531

theorem seg31_prefix_57_v2 (rho : Nat -> Seg31.F)
    (r532 : Seg31.relationRow532 rho) :
    (6268515690606711675820373018132505629153826392182024131345248525914402666900*rho 29271 + 6984451028592461867390374761534058577866431087611019337585209388902324145485*seg31AccX56 rho)*(4975400829955112541666816223878227353942785518989585224086588081315469982209 + 7115815826549671405340392110243331685100108865524818480158285579730834185347*rho 29271 + 4975400829955112541666816223878227353942785518989585224086588081315469982209*seg31AccY56 rho) = rho 29802 := by
  rw [seg31AccX56_sum, seg31AccY56_sum]
  unfold Seg31.relationRow532 at r532
  simp only [Seg31.relationLc181, Seg31.relationLc181Part0, Seg31.relationLc181Part1] at r532
  simp only [Seg31.relationLc182, Seg31.relationLc182Part0, Seg31.relationLc182Part1] at r532
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r532 ⊢
  exact r532

theorem seg31_prefix_57_addX (rho : Nat -> Seg31.F)
    (r533 : Seg31.relationRow533 rho) :
    rho 29803*(1 + rho 29802) = 4975400829955112541666816223878227353942785518989585224086588081315469982209 + 7710484613894729744174080048025463552124552587949460504538826705576714741899*rho 29271 + 1880722524543018002966766214373629039279202510530003942969236044940549928097*seg31AccX56 rho + 4975400829955112541666816223878227353942785518989585224086588081315469982209*seg31AccY56 rho := by
  rw [add_assoc, seg31AccWeighted56]
  unfold Seg31.relationRow533 at r533
  simp only [Seg31.relationLc183, Seg31.relationLc183Part0, Seg31.relationLc183Part1, Seg31.relationLc183Part2, Seg31.relationLc183Part3] at r533
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r533 ⊢
  exact r533

theorem seg31_prefix_57_addY (rho : Nat -> Seg31.F)
    (r534 : Seg31.relationRow534 rho) :
    rho 29804*(1 + (-1)*rho 29802) = 1880722524543018002966766214373629039279202510530003942969236044940549928097 + 5561583927891243347137693310954441770830459976203518871196116942379669336356*rho 29271 + 4975400829955112541666816223878227353942785518989585224086588081315469982209*seg31AccX56 rho + 1880722524543018002966766214373629039279202510530003942969236044940549928097*seg31AccY56 rho := by
  rw [add_assoc, seg31AccWeighted56]
  unfold Seg31.relationRow534 at r534
  simp only [Seg31.relationLc184, Seg31.relationLc184Part0, Seg31.relationLc184Part1, Seg31.relationLc184Part2, Seg31.relationLc184Part3] at r534
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r534 ⊢
  exact r534

theorem seg31_prefix_57_selX (rho : Nat -> Seg31.F)
    (r535 : Seg31.relationRow535 rho) :
    (1*rho 29328)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX56 rho + rho 29803) = rho 29805 := by
  rw [seg31AccX56_sum]
  unfold Seg31.relationRow535 at r535
  simp only [Seg31.relationLc185, Seg31.relationLc185Part0, Seg31.relationLc185Part1] at r535
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r535 ⊢
  exact r535

theorem seg31_prefix_57_selY (rho : Nat -> Seg31.F)
    (r536 : Seg31.relationRow536 rho) :
    (1*rho 29328)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY56 rho + rho 29804) = rho 29806 := by
  rw [seg31AccY56_sum]
  unfold Seg31.relationRow536 at r536
  simp only [Seg31.relationLc186, Seg31.relationLc186Part0, Seg31.relationLc186Part1] at r536
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r536 ⊢
  exact r536

theorem seg31_prefix_58_v2 (rho : Nat -> Seg31.F)
    (r537 : Seg31.relationRow537 rho) :
    (2280674101688118451702959074318755416748900744787404058007147376446815225484*rho 29271 + 1575422911388496626730629818346833710771077486342176306515899025137426598458*seg31AccX57 rho)*(988052079333455640877413860174613124063210718178946984167561073405951962416 + 7612865992649868553776640700840008593526902917162252084467998826231105017371*rho 29271 + 988052079333455640877413860174613124063210718178946984167561073405951962416*seg31AccY57 rho) = rho 29807 := by
  rw [seg31AccX57_sum, seg31AccY57_sum]
  unfold Seg31.relationRow537 at r537
  simp only [Seg31.relationLc187, Seg31.relationLc187Part0, Seg31.relationLc187Part1] at r537
  simp only [Seg31.relationLc188, Seg31.relationLc188Part0, Seg31.relationLc188Part1] at r537
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r537 ⊢
  exact r537

theorem seg31_prefix_58_addX (rho : Nat -> Seg31.F)
    (r538 : Seg31.relationRow538 rho) :
    rho 29808*(1 + rho 29807) = 988052079333455640877413860174613124063210718178946984167561073405951962416 + 3689084588447371381584106025244188476136961253537121925460034369186551638891*rho 29271 + 7005427529618962191259280346376995180846995965369886173158626593695519688724*seg31AccX57 rho + 988052079333455640877413860174613124063210718178946984167561073405951962416*seg31AccY57 rho := by
  rw [add_assoc, seg31AccWeighted57]
  unfold Seg31.relationRow538 at r538
  simp only [Seg31.relationLc189, Seg31.relationLc189Part0, Seg31.relationLc189Part1, Seg31.relationLc189Part2, Seg31.relationLc189Part3] at r538
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r538 ⊢
  exact r538

theorem seg31_prefix_58_addY (rho : Nat -> Seg31.F)
    (r539 : Seg31.relationRow539 rho) :
    rho 29809*(1 + (-1)*rho 29807) = 7005427529618962191259280346376995180846995965369886173158626593695519688724 + 8103381537400898634954171877401300506786451891081291608583421318233370836558*rho 29271 + 988052079333455640877413860174613124063210718178946984167561073405951962416*seg31AccX57 rho + 7005427529618962191259280346376995180846995965369886173158626593695519688724*seg31AccY57 rho := by
  rw [add_assoc, seg31AccWeighted57]
  unfold Seg31.relationRow539 at r539
  simp only [Seg31.relationLc190, Seg31.relationLc190Part0, Seg31.relationLc190Part1, Seg31.relationLc190Part2, Seg31.relationLc190Part3] at r539
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r539 ⊢
  exact r539

theorem seg31_prefix_58_selX (rho : Nat -> Seg31.F)
    (r540 : Seg31.relationRow540 rho) :
    (1*rho 29329)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX57 rho + rho 29808) = rho 29810 := by
  rw [seg31AccX57_sum]
  unfold Seg31.relationRow540 at r540
  simp only [Seg31.relationLc191, Seg31.relationLc191Part0, Seg31.relationLc191Part1] at r540
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r540 ⊢
  exact r540

theorem seg31_prefix_58_selY (rho : Nat -> Seg31.F)
    (r541 : Seg31.relationRow541 rho) :
    (1*rho 29329)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY57 rho + rho 29809) = rho 29811 := by
  rw [seg31AccY57_sum]
  unfold Seg31.relationRow541 at r541
  simp only [Seg31.relationLc192, Seg31.relationLc192Part0, Seg31.relationLc192Part1] at r541
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r541 ⊢
  exact r541

theorem seg31_prefix_59_v2 (rho : Nat -> Seg31.F)
    (r542 : Seg31.relationRow542 rho) :
    (5216000986918399100658725928726594776545297115515760187025219720411965230869*rho 29271 + 2156487065597549056324983678614439370425622070883240801164137263655924233376*seg31AccX58 rho)*(1078307067592655929764445926254891981587989510030717658004669851199004362799 + 2766414637686983554196240388590361588031805575494008592258454326579377809996*rho 29271 + 1078307067592655929764445926254891981587989510030717658004669851199004362799*seg31AccY58 rho) = rho 29812 := by
  rw [seg31AccX58_sum, seg31AccY58_sum]
  unfold Seg31.relationRow542 at r542
  simp only [Seg31.relationLc193, Seg31.relationLc193Part0, Seg31.relationLc193Part1] at r542
  simp only [Seg31.relationLc194, Seg31.relationLc194Part0, Seg31.relationLc194Part1] at r542
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r542 ⊢
  exact r542

theorem seg31_prefix_59_addX (rho : Nat -> Seg31.F)
    (r543 : Seg31.relationRow543 rho) :
    rho 29813*(1 + rho 29812) = 1078307067592655929764445926254891981587989510030717658004669851199004362799 + 1549410558983292357284016308027624847580515667181643127580289292796001953329*rho 29271 + 2153059263199418330264124523846542624471985471744294070940514365547852048426*seg31AccX58 rho + 1078307067592655929764445926254891981587989510030717658004669851199004362799*seg31AccY58 rho := by
  rw [add_assoc, seg31AccWeighted58]
  unfold Seg31.relationRow543 at r543
  simp only [Seg31.relationLc195, Seg31.relationLc195Part0, Seg31.relationLc195Part1, Seg31.relationLc195Part2, Seg31.relationLc195Part3] at r543
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r543 ⊢
  exact r543

theorem seg31_prefix_59_addY (rho : Nat -> Seg31.F)
    (r544 : Seg31.relationRow544 rho) :
    rho 29814*(1 + (-1)*rho 29812) = 2153059263199418330264124523846542624471985471744294070940514365547852048426 + 8037383549421691466757036345025357349622246770121874476649744840456289462477*rho 29271 + 1078307067592655929764445926254891981587989510030717658004669851199004362799*seg31AccX58 rho + 2153059263199418330264124523846542624471985471744294070940514365547852048426*seg31AccY58 rho := by
  rw [add_assoc, seg31AccWeighted58]
  unfold Seg31.relationRow544 at r544
  simp only [Seg31.relationLc196, Seg31.relationLc196Part0, Seg31.relationLc196Part1, Seg31.relationLc196Part2, Seg31.relationLc196Part3] at r544
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r544 ⊢
  exact r544

theorem seg31_prefix_59_selX (rho : Nat -> Seg31.F)
    (r545 : Seg31.relationRow545 rho) :
    (1*rho 29330)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX58 rho + rho 29813) = rho 29815 := by
  rw [seg31AccX58_sum]
  unfold Seg31.relationRow545 at r545
  simp only [Seg31.relationLc197, Seg31.relationLc197Part0, Seg31.relationLc197Part1] at r545
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r545 ⊢
  exact r545

theorem seg31_prefix_59_selY (rho : Nat -> Seg31.F)
    (r546 : Seg31.relationRow546 rho) :
    (1*rho 29330)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY58 rho + rho 29814) = rho 29816 := by
  rw [seg31AccY58_sum]
  unfold Seg31.relationRow546 at r546
  simp only [Seg31.relationLc198, Seg31.relationLc198Part0, Seg31.relationLc198Part1] at r546
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r546 ⊢
  exact r546

theorem seg31_prefix_60_v2 (rho : Nat -> Seg31.F)
    (r547 : Seg31.relationRow547 rho) :
    (5344909994604615257630325697143396666051053670561830463561362977461125484596*rho 29271 + 2176686707172346089764861149147128588707699343836468076549025280019693811766*seg31AccX59 rho)*(1429573434618572468265763344440075896510596019609218436100922545328956343063 + 2214981955855980363476769290924158600072872287107850573391034021018292460131*rho 29271 + 1429573434618572468265763344440075896510596019609218436100922545328956343063*seg31AccY59 rho) = rho 29817 := by
  rw [seg31AccX59_sum, seg31AccY59_sum]
  unfold Seg31.relationRow547 at r547
  simp only [Seg31.relationLc199, Seg31.relationLc199Part0, Seg31.relationLc199Part1] at r547
  simp only [Seg31.relationLc200, Seg31.relationLc200Part0, Seg31.relationLc200Part1] at r547
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r547 ⊢
  exact r547

theorem seg31_prefix_60_addX (rho : Nat -> Seg31.F)
    (r548 : Seg31.relationRow548 rho) :
    rho 29818*(1 + rho 29817) = 1429573434618572468265763344440075896510596019609218436100922545328956343063 + 6487899024085425786684261787499910502293469850095593492804671254920729548095*rho 29271 + 2175427980060392100680354406991456580602170599832405867663078667323324753984*seg31AccX59 rho + 1429573434618572468265763344440075896510596019609218436100922545328956343063*seg31AccY59 rho := by
  rw [add_assoc, seg31AccWeighted59]
  unfold Seg31.relationRow548 at r548
  simp only [Seg31.relationLc201, Seg31.relationLc201Part0, Seg31.relationLc201Part1, Seg31.relationLc201Part2, Seg31.relationLc201Part3] at r548
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r548 ⊢
  exact r548

theorem seg31_prefix_60_addY (rho : Nat -> Seg31.F)
    (r549 : Seg31.relationRow549 rho) :
    rho 29819*(1 + (-1)*rho 29817) = 2175427980060392100680354406991456580602170599832405867663078667323324753984 + 1140136143485807931745155331023219576130803482552960585340507993082385214402*rho 29271 + 1429573434618572468265763344440075896510596019609218436100922545328956343063*seg31AccX59 rho + 2175427980060392100680354406991456580602170599832405867663078667323324753984*seg31AccY59 rho := by
  rw [add_assoc, seg31AccWeighted59]
  unfold Seg31.relationRow549 at r549
  simp only [Seg31.relationLc202, Seg31.relationLc202Part0, Seg31.relationLc202Part1, Seg31.relationLc202Part2, Seg31.relationLc202Part3] at r549
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r549 ⊢
  exact r549

theorem seg31_prefix_60_selX (rho : Nat -> Seg31.F)
    (r550 : Seg31.relationRow550 rho) :
    (1*rho 29331)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX59 rho + rho 29818) = rho 29820 := by
  rw [seg31AccX59_sum]
  unfold Seg31.relationRow550 at r550
  simp only [Seg31.relationLc203, Seg31.relationLc203Part0, Seg31.relationLc203Part1] at r550
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r550 ⊢
  exact r550

theorem seg31_prefix_60_selY (rho : Nat -> Seg31.F)
    (r551 : Seg31.relationRow551 rho) :
    (1*rho 29331)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY59 rho + rho 29819) = rho 29821 := by
  rw [seg31AccY59_sum]
  unfold Seg31.relationRow551 at r551
  simp only [Seg31.relationLc204, Seg31.relationLc204Part0, Seg31.relationLc204Part1] at r551
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r551 ⊢
  exact r551


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

