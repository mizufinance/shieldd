import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_prefix_51_v2 (rho : Nat -> Seg30.F)
    (r502 : Seg30.relationRow502 rho) :
    (7951490232008115975286127579907409914560856182774254771782297894440063486475*rho 28317 + 5107748505877890801883930202609992877975194663178272094077896319286077365369*seg30AccX50 rho)*(823083494539051004312126362108186731208135674306211154180233814990883104587 + 269469382135806435828200452609097401317921355988942707487639244015825367612*rho 28317 + 823083494539051004312126362108186731208135674306211154180233814990883104587*seg30AccY50 rho) = rho 28818 := by
  rw [seg30AccX50_sum, seg30AccY50_sum]
  unfold Seg30.relationRow502 at r502
  simp only [Seg30.relationLc145, Seg30.relationLc145Part0, Seg30.relationLc145Part1] at r502
  simp only [Seg30.relationLc146, Seg30.relationLc146Part0, Seg30.relationLc146Part1] at r502
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r502 ⊢
  exact r502

theorem seg30_prefix_51_addX (rho : Nat -> Seg30.F)
    (r503 : Seg30.relationRow503 rho) :
    rho 28819*(1 + rho 28818) = 823083494539051004312126362108186731208135674306211154180233814990883104587 + 3483848078039548816972585087577619206834461969121942903803218700733317350116*rho 28317 + 10076509021570010617222907983765187842470338519907468910256073050989177452*seg30AccX50 rho + 823083494539051004312126362108186731208135674306211154180233814990883104587*seg30AccY50 rho := by
  rw [add_assoc, seg30AccWeighted50]
  unfold Seg30.relationRow503 at r503
  simp only [Seg30.relationLc147, Seg30.relationLc147Part0, Seg30.relationLc147Part1, Seg30.relationLc147Part2, Seg30.relationLc147Part3] at r503
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r503 ⊢
  exact r503

theorem seg30_prefix_51_addY (rho : Nat -> Seg30.F)
    (r504 : Seg30.relationRow504 rho) :
    rho 28820*(1 + (-1)*rho 28818) = 10076509021570010617222907983765187842470338519907468910256073050989177452 + 784226967580008301639074108881556619633174470864297411870558003367441031934*rho 28317 + 823083494539051004312126362108186731208135674306211154180233814990883104587*seg30AccX50 rho + 10076509021570010617222907983765187842470338519907468910256073050989177452*seg30AccY50 rho := by
  rw [add_assoc, seg30AccWeighted50]
  unfold Seg30.relationRow504 at r504
  simp only [Seg30.relationLc148, Seg30.relationLc148Part0, Seg30.relationLc148Part1, Seg30.relationLc148Part2, Seg30.relationLc148Part3] at r504
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r504 ⊢
  exact r504

theorem seg30_prefix_51_selX (rho : Nat -> Seg30.F)
    (r505 : Seg30.relationRow505 rho) :
    (1*rho 28368)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX50 rho + rho 28819) = rho 28821 := by
  rw [seg30AccX50_sum]
  unfold Seg30.relationRow505 at r505
  simp only [Seg30.relationLc149, Seg30.relationLc149Part0, Seg30.relationLc149Part1] at r505
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r505 ⊢
  exact r505

theorem seg30_prefix_51_selY (rho : Nat -> Seg30.F)
    (r506 : Seg30.relationRow506 rho) :
    (1*rho 28368)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY50 rho + rho 28820) = rho 28822 := by
  rw [seg30AccY50_sum]
  unfold Seg30.relationRow506 at r506
  simp only [Seg30.relationLc150, Seg30.relationLc150Part0, Seg30.relationLc150Part1] at r506
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r506 ⊢
  exact r506

theorem seg30_prefix_52_v2 (rho : Nat -> Seg30.F)
    (r507 : Seg30.relationRow507 rho) :
    (8215797647988851489209436139152836975875997321450035911852191941941828385271*rho 28317 + 6178153492810837321873108985276510456890801263430899812036496871227230386120*seg30AccX51 rho)*(7694370084810280788335886711964790438240845401652182560056549234120635838838 + 2917334971477552096792936140409115364710338386293267745427394798241615520212*rho 28317 + 7694370084810280788335886711964790438240845401652182560056549234120635838838*seg30AccY51 rho) = rho 28823 := by
  rw [seg30AccX51_sum, seg30AccY51_sum]
  unfold Seg30.relationRow507 at r507
  simp only [Seg30.relationLc151, Seg30.relationLc151Part0, Seg30.relationLc151Part1] at r507
  simp only [Seg30.relationLc152, Seg30.relationLc152Part0, Seg30.relationLc152Part1] at r507
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r507 ⊢
  exact r507

theorem seg30_prefix_52_addX (rho : Nat -> Seg30.F)
    (r508 : Seg30.relationRow508 rho) :
    rho 28824*(1 + rho 28823) = 7694370084810280788335886711964790438240845401652182560056549234120635838838 + 3604891716349428828150159426122664433615658258664732715224145671674818794608*rho 28317 + 7848322503852448400591964485979833705405177171479936466344335255753523655867*seg30AccX51 rho + 7694370084810280788335886711964790438240845401652182560056549234120635838838*seg30AccY51 rho := by
  rw [add_assoc, seg30AccWeighted51]
  unfold Seg30.relationRow508 at r508
  simp only [Seg30.relationLc153, Seg30.relationLc153Part0, Seg30.relationLc153Part1, Seg30.relationLc153Part2, Seg30.relationLc153Part3] at r508
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r508 ⊢
  exact r508

theorem seg30_prefix_52_addY (rho : Nat -> Seg30.F)
    (r509 : Seg30.relationRow509 rho) :
    rho 28825*(1 + (-1)*rho 28823) = 7848322503852448400591964485979833705405177171479936466344335255753523655867 + 5087843415398648340158033115839661935992070534691455337732849271367643704829*rho 28317 + 7694370084810280788335886711964790438240845401652182560056549234120635838838*seg30AccX51 rho + 7848322503852448400591964485979833705405177171479936466344335255753523655867*seg30AccY51 rho := by
  rw [add_assoc, seg30AccWeighted51]
  unfold Seg30.relationRow509 at r509
  simp only [Seg30.relationLc154, Seg30.relationLc154Part0, Seg30.relationLc154Part1, Seg30.relationLc154Part2, Seg30.relationLc154Part3] at r509
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r509 ⊢
  exact r509

theorem seg30_prefix_52_selX (rho : Nat -> Seg30.F)
    (r510 : Seg30.relationRow510 rho) :
    (1*rho 28369)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX51 rho + rho 28824) = rho 28826 := by
  rw [seg30AccX51_sum]
  unfold Seg30.relationRow510 at r510
  simp only [Seg30.relationLc155, Seg30.relationLc155Part0, Seg30.relationLc155Part1] at r510
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r510 ⊢
  exact r510

theorem seg30_prefix_52_selY (rho : Nat -> Seg30.F)
    (r511 : Seg30.relationRow511 rho) :
    (1*rho 28369)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY51 rho + rho 28825) = rho 28827 := by
  rw [seg30AccY51_sum]
  unfold Seg30.relationRow511 at r511
  simp only [Seg30.relationLc156, Seg30.relationLc156Part0, Seg30.relationLc156Part1] at r511
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r511 ⊢
  exact r511

theorem seg30_prefix_53_v2 (rho : Nat -> Seg30.F)
    (r512 : Seg30.relationRow512 rho) :
    (8442565229902995211953908369690446822943561671847732130643978236599649982557*rho 28317 + 2118582982988257504473440225491591734796304383057197015068125790043029382166*seg30AccX52 rho)*(2299844063002285963520542651454450250906626902268201289215890373981759450185 + 1513218976093308884816939156906656843199549780839367688545811288964805344056*rho 28317 + 2299844063002285963520542651454450250906626902268201289215890373981759450185*seg30AccY52 rho) = rho 28828 := by
  rw [seg30AccX52_sum, seg30AccY52_sum]
  unfold Seg30.relationRow512 at r512
  simp only [Seg30.relationLc157, Seg30.relationLc157Part0, Seg30.relationLc157Part1] at r512
  simp only [Seg30.relationLc158, Seg30.relationLc158Part0, Seg30.relationLc158Part1] at r512
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r512 ⊢
  exact r512

theorem seg30_prefix_53_addX (rho : Nat -> Seg30.F)
    (r513 : Seg30.relationRow513 rho) :
    rho 28829*(1 + rho 28828) = 2299844063002285963520542651454450250906626902268201289215890373981759450185 + 2128174185743992803427480888109188831678287124788585732388399870587616424272*rho 28317 + 1800844736714617282595404402780803561052921375776985866337424187818885991170*seg30AccX52 rho + 2299844063002285963520542651454450250906626902268201289215890373981759450185*seg30AccY52 rho := by
  rw [add_assoc, seg30AccWeighted52]
  unfold Seg30.relationRow513 at r513
  simp only [Seg30.relationLc159, Seg30.relationLc159Part0, Seg30.relationLc159Part1, Seg30.relationLc159Part2, Seg30.relationLc159Part3] at r513
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r513 ⊢
  exact r513

theorem seg30_prefix_53_addY (rho : Nat -> Seg30.F)
    (r514 : Seg30.relationRow514 rho) :
    rho 28830*(1 + (-1)*rho 28828) = 1800844736714617282595404402780803561052921375776985866337424187818885991170 + 4584281417295305356797355705327174107158956341988320145094872581481604524700*rho 28317 + 2299844063002285963520542651454450250906626902268201289215890373981759450185*seg30AccX52 rho + 1800844736714617282595404402780803561052921375776985866337424187818885991170*seg30AccY52 rho := by
  rw [add_assoc, seg30AccWeighted52]
  unfold Seg30.relationRow514 at r514
  simp only [Seg30.relationLc160, Seg30.relationLc160Part0, Seg30.relationLc160Part1, Seg30.relationLc160Part2, Seg30.relationLc160Part3] at r514
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r514 ⊢
  exact r514

theorem seg30_prefix_53_selX (rho : Nat -> Seg30.F)
    (r515 : Seg30.relationRow515 rho) :
    (1*rho 28370)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX52 rho + rho 28829) = rho 28831 := by
  rw [seg30AccX52_sum]
  unfold Seg30.relationRow515 at r515
  simp only [Seg30.relationLc161, Seg30.relationLc161Part0, Seg30.relationLc161Part1] at r515
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r515 ⊢
  exact r515

theorem seg30_prefix_53_selY (rho : Nat -> Seg30.F)
    (r516 : Seg30.relationRow516 rho) :
    (1*rho 28370)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY52 rho + rho 28830) = rho 28832 := by
  rw [seg30AccY52_sum]
  unfold Seg30.relationRow516 at r516
  simp only [Seg30.relationLc162, Seg30.relationLc162Part0, Seg30.relationLc162Part1] at r516
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r516 ⊢
  exact r516

theorem seg30_prefix_54_v2 (rho : Nat -> Seg30.F)
    (r517 : Seg30.relationRow517 rho) :
    (5485200669001964675903116690389524045452503466510717669914562100715921570316*rho 28317 + 5846523051446967967440159082631275298002440439864756615500920460162638843764*seg30AccX53 rho)*(5614987881341147618896054931299865755361696243168752487448507931180818023786 + 7291182270810181618096149122593319263114027650082957086263435969101109264147*rho 28317 + 5614987881341147618896054931299865755361696243168752487448507931180818023786*seg30AccY53 rho) = rho 28833 := by
  rw [seg30AccX53_sum, seg30AccY53_sum]
  unfold Seg30.relationRow517 at r517
  simp only [Seg30.relationLc163, Seg30.relationLc163Part0, Seg30.relationLc163Part1] at r517
  simp only [Seg30.relationLc164, Seg30.relationLc164Part0, Seg30.relationLc164Part1] at r517
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r517 ⊢
  exact r517

theorem seg30_prefix_54_addX (rho : Nat -> Seg30.F)
    (r518 : Seg30.relationRow518 rho) :
    rho 28834*(1 + rho 28833) = 5614987881341147618896054931299865755361696243168752487448507931180818023786 + 3265037226037828153459719589295133553856424724399244653828892159807408240682*rho 28317 + 3714032348987859282148255437863133091348956225595650950054118156212671998772*seg30AccX53 rho + 5614987881341147618896054931299865755361696243168752487448507931180818023786*seg30AccY53 rho := by
  rw [add_assoc, seg30AccWeighted53]
  unfold Seg30.relationRow518 at r518
  simp only [Seg30.relationLc165, Seg30.relationLc165Part0, Seg30.relationLc165Part1, Seg30.relationLc165Part2, Seg30.relationLc165Part3] at r518
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r518 ⊢
  exact r518

theorem seg30_prefix_54_addY (rho : Nat -> Seg30.F)
    (r519 : Seg30.relationRow519 rho) :
    rho 28835*(1 + (-1)*rho 28833) = 3714032348987859282148255437863133091348956225595650950054118156212671998772 + 8364348212655621776185922730037361598719148012242692402802574383202708885440*rho 28317 + 5614987881341147618896054931299865755361696243168752487448507931180818023786*seg30AccX53 rho + 3714032348987859282148255437863133091348956225595650950054118156212671998772*seg30AccY53 rho := by
  rw [add_assoc, seg30AccWeighted53]
  unfold Seg30.relationRow519 at r519
  simp only [Seg30.relationLc166, Seg30.relationLc166Part0, Seg30.relationLc166Part1, Seg30.relationLc166Part2, Seg30.relationLc166Part3] at r519
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r519 ⊢
  exact r519

theorem seg30_prefix_54_selX (rho : Nat -> Seg30.F)
    (r520 : Seg30.relationRow520 rho) :
    (1*rho 28371)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX53 rho + rho 28834) = rho 28836 := by
  rw [seg30AccX53_sum]
  unfold Seg30.relationRow520 at r520
  simp only [Seg30.relationLc167, Seg30.relationLc167Part0, Seg30.relationLc167Part1] at r520
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r520 ⊢
  exact r520

theorem seg30_prefix_54_selY (rho : Nat -> Seg30.F)
    (r521 : Seg30.relationRow521 rho) :
    (1*rho 28371)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY53 rho + rho 28835) = rho 28837 := by
  rw [seg30AccY53_sum]
  unfold Seg30.relationRow521 at r521
  simp only [Seg30.relationLc168, Seg30.relationLc168Part0, Seg30.relationLc168Part1] at r521
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r521 ⊢
  exact r521

theorem seg30_prefix_55_v2 (rho : Nat -> Seg30.F)
    (r522 : Seg30.relationRow522 rho) :
    (1313990169365511817090899843224152567995448967037380651344274914537076948048*rho 28317 + 3270625457551667644453406806086445794893819027444377513267150979927668756102*seg30AccX54 rho)*(1799753964916820815760635111213817112793132412296537109379119345177096523901 + 4242920238461437888072824133392194042958901485991965180008883918058321798559*rho 28317 + 1799753964916820815760635111213817112793132412296537109379119345177096523901*seg30AccY54 rho) = rho 28838 := by
  rw [seg30AccX54_sum, seg30AccY54_sum]
  unfold Seg30.relationRow522 at r522
  simp only [Seg30.relationLc169, Seg30.relationLc169Part0, Seg30.relationLc169Part1] at r522
  simp only [Seg30.relationLc170, Seg30.relationLc170Part0, Seg30.relationLc170Part1] at r522
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r522 ⊢
  exact r522

theorem seg30_prefix_55_addX (rho : Nat -> Seg30.F)
    (r523 : Seg30.relationRow523 rho) :
    rho 28839*(1 + rho 28838) = 1799753964916820815760635111213817112793132412296537109379119345177096523901 + 254528008648488836902356643224023653119307675234662398872758838058452249680*rho 28317 + 6732053796120843313219339245081777720406507586255686883542306955587239032230*seg30AccX54 rho + 1799753964916820815760635111213817112793132412296537109379119345177096523901*seg30AccY54 rho := by
  rw [add_assoc, seg30AccWeighted54]
  unfold Seg30.relationRow523 at r523
  simp only [Seg30.relationLc171, Seg30.relationLc171Part0, Seg30.relationLc171Part1, Seg30.relationLc171Part2, Seg30.relationLc171Part3] at r523
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r523 ⊢
  exact r523

theorem seg30_prefix_55_addY (rho : Nat -> Seg30.F)
    (r524 : Seg30.relationRow524 rho) :
    rho 28840*(1 + (-1)*rho 28838) = 6732053796120843313219339245081777720406507586255686883542306955587239032230 + 2289707880837953908755208871389624432709260619033607367296000191999872925118*rho 28317 + 1799753964916820815760635111213817112793132412296537109379119345177096523901*seg30AccX54 rho + 6732053796120843313219339245081777720406507586255686883542306955587239032230*seg30AccY54 rho := by
  rw [add_assoc, seg30AccWeighted54]
  unfold Seg30.relationRow524 at r524
  simp only [Seg30.relationLc172, Seg30.relationLc172Part0, Seg30.relationLc172Part1, Seg30.relationLc172Part2, Seg30.relationLc172Part3] at r524
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r524 ⊢
  exact r524

theorem seg30_prefix_55_selX (rho : Nat -> Seg30.F)
    (r525 : Seg30.relationRow525 rho) :
    (1*rho 28372)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX54 rho + rho 28839) = rho 28841 := by
  rw [seg30AccX54_sum]
  unfold Seg30.relationRow525 at r525
  simp only [Seg30.relationLc173, Seg30.relationLc173Part0, Seg30.relationLc173Part1] at r525
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r525 ⊢
  exact r525

theorem seg30_prefix_55_selY (rho : Nat -> Seg30.F)
    (r526 : Seg30.relationRow526 rho) :
    (1*rho 28372)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY54 rho + rho 28840) = rho 28842 := by
  rw [seg30AccY54_sum]
  unfold Seg30.relationRow526 at r526
  simp only [Seg30.relationLc174, Seg30.relationLc174Part0, Seg30.relationLc174Part1] at r526
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r526 ⊢
  exact r526

theorem seg30_prefix_56_v2 (rho : Nat -> Seg30.F)
    (r527 : Seg30.relationRow527 rho) :
    (8427363959673275445356636965346819445583959661557314661313584705058592663131*rho 28317 + 3233995703196325388481299497442317849571724715469973779048454502475618732286*seg30AccX55 rho)*(4715490755243117384424520177060293576182160841530650796913740284578135200683 + 3675494411708184879950187669845890975019109332169909707887469082384047256779*rho 28317 + 4715490755243117384424520177060293576182160841530650796913740284578135200683*seg30AccY55 rho) = rho 28843 := by
  rw [seg30AccX55_sum, seg30AccY55_sum]
  unfold Seg30.relationRow527 at r527
  simp only [Seg30.relationLc175, Seg30.relationLc175Part0, Seg30.relationLc175Part1] at r527
  simp only [Seg30.relationLc176, Seg30.relationLc176Part0, Seg30.relationLc176Part1] at r527
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r527 ⊢
  exact r527

theorem seg30_prefix_56_addX (rho : Nat -> Seg30.F)
    (r528 : Seg30.relationRow528 rho) :
    rho 28844*(1 + rho 28843) = 4715490755243117384424520177060293576182160841530650796913740284578135200683 + 1411333168799633030026175624699751478991214462541181323314757811929244112059*rho 28317 + 470673144524052484826972488981377734233936714009054186319817171498378143294*seg30AccX55 rho + 4715490755243117384424520177060293576182160841530650796913740284578135200683*seg30AccY55 rho := by
  rw [add_assoc, seg30AccWeighted55]
  unfold Seg30.relationRow528 at r528
  simp only [Seg30.relationLc177, Seg30.relationLc177Part0, Seg30.relationLc177Part1, Seg30.relationLc177Part2, Seg30.relationLc177Part3] at r528
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r528 ⊢
  exact r528

theorem seg30_prefix_56_addY (rho : Nat -> Seg30.F)
    (r529 : Seg30.relationRow529 rho) :
    rho 28845*(1 + (-1)*rho 28843) = 470673144524052484826972488981377734233936714009054186319817171498378143294 + 2267358468243705539888602275044934994867174603928525323102004785228563668611*rho 28317 + 4715490755243117384424520177060293576182160841530650796913740284578135200683*seg30AccX55 rho + 470673144524052484826972488981377734233936714009054186319817171498378143294*seg30AccY55 rho := by
  rw [add_assoc, seg30AccWeighted55]
  unfold Seg30.relationRow529 at r529
  simp only [Seg30.relationLc178, Seg30.relationLc178Part0, Seg30.relationLc178Part1, Seg30.relationLc178Part2, Seg30.relationLc178Part3] at r529
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r529 ⊢
  exact r529

theorem seg30_prefix_56_selX (rho : Nat -> Seg30.F)
    (r530 : Seg30.relationRow530 rho) :
    (1*rho 28373)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX55 rho + rho 28844) = rho 28846 := by
  rw [seg30AccX55_sum]
  unfold Seg30.relationRow530 at r530
  simp only [Seg30.relationLc179, Seg30.relationLc179Part0, Seg30.relationLc179Part1] at r530
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r530 ⊢
  exact r530

theorem seg30_prefix_56_selY (rho : Nat -> Seg30.F)
    (r531 : Seg30.relationRow531 rho) :
    (1*rho 28373)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY55 rho + rho 28845) = rho 28847 := by
  rw [seg30AccY55_sum]
  unfold Seg30.relationRow531 at r531
  simp only [Seg30.relationLc180, Seg30.relationLc180Part0, Seg30.relationLc180Part1] at r531
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r531 ⊢
  exact r531

theorem seg30_prefix_57_v2 (rho : Nat -> Seg30.F)
    (r532 : Seg30.relationRow532 rho) :
    (6268515690606711675820373018132505629153826392182024131345248525914402666900*rho 28317 + 6984451028592461867390374761534058577866431087611019337585209388902324145485*seg30AccX56 rho)*(4975400829955112541666816223878227353942785518989585224086588081315469982209 + 7115815826549671405340392110243331685100108865524818480158285579730834185347*rho 28317 + 4975400829955112541666816223878227353942785518989585224086588081315469982209*seg30AccY56 rho) = rho 28848 := by
  rw [seg30AccX56_sum, seg30AccY56_sum]
  unfold Seg30.relationRow532 at r532
  simp only [Seg30.relationLc181, Seg30.relationLc181Part0, Seg30.relationLc181Part1] at r532
  simp only [Seg30.relationLc182, Seg30.relationLc182Part0, Seg30.relationLc182Part1] at r532
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r532 ⊢
  exact r532

theorem seg30_prefix_57_addX (rho : Nat -> Seg30.F)
    (r533 : Seg30.relationRow533 rho) :
    rho 28849*(1 + rho 28848) = 4975400829955112541666816223878227353942785518989585224086588081315469982209 + 7710484613894729744174080048025463552124552587949460504538826705576714741899*rho 28317 + 1880722524543018002966766214373629039279202510530003942969236044940549928097*seg30AccX56 rho + 4975400829955112541666816223878227353942785518989585224086588081315469982209*seg30AccY56 rho := by
  rw [add_assoc, seg30AccWeighted56]
  unfold Seg30.relationRow533 at r533
  simp only [Seg30.relationLc183, Seg30.relationLc183Part0, Seg30.relationLc183Part1, Seg30.relationLc183Part2, Seg30.relationLc183Part3] at r533
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r533 ⊢
  exact r533

theorem seg30_prefix_57_addY (rho : Nat -> Seg30.F)
    (r534 : Seg30.relationRow534 rho) :
    rho 28850*(1 + (-1)*rho 28848) = 1880722524543018002966766214373629039279202510530003942969236044940549928097 + 5561583927891243347137693310954441770830459976203518871196116942379669336356*rho 28317 + 4975400829955112541666816223878227353942785518989585224086588081315469982209*seg30AccX56 rho + 1880722524543018002966766214373629039279202510530003942969236044940549928097*seg30AccY56 rho := by
  rw [add_assoc, seg30AccWeighted56]
  unfold Seg30.relationRow534 at r534
  simp only [Seg30.relationLc184, Seg30.relationLc184Part0, Seg30.relationLc184Part1, Seg30.relationLc184Part2, Seg30.relationLc184Part3] at r534
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r534 ⊢
  exact r534

theorem seg30_prefix_57_selX (rho : Nat -> Seg30.F)
    (r535 : Seg30.relationRow535 rho) :
    (1*rho 28374)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX56 rho + rho 28849) = rho 28851 := by
  rw [seg30AccX56_sum]
  unfold Seg30.relationRow535 at r535
  simp only [Seg30.relationLc185, Seg30.relationLc185Part0, Seg30.relationLc185Part1] at r535
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r535 ⊢
  exact r535

theorem seg30_prefix_57_selY (rho : Nat -> Seg30.F)
    (r536 : Seg30.relationRow536 rho) :
    (1*rho 28374)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY56 rho + rho 28850) = rho 28852 := by
  rw [seg30AccY56_sum]
  unfold Seg30.relationRow536 at r536
  simp only [Seg30.relationLc186, Seg30.relationLc186Part0, Seg30.relationLc186Part1] at r536
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r536 ⊢
  exact r536

theorem seg30_prefix_58_v2 (rho : Nat -> Seg30.F)
    (r537 : Seg30.relationRow537 rho) :
    (2280674101688118451702959074318755416748900744787404058007147376446815225484*rho 28317 + 1575422911388496626730629818346833710771077486342176306515899025137426598458*seg30AccX57 rho)*(988052079333455640877413860174613124063210718178946984167561073405951962416 + 7612865992649868553776640700840008593526902917162252084467998826231105017371*rho 28317 + 988052079333455640877413860174613124063210718178946984167561073405951962416*seg30AccY57 rho) = rho 28853 := by
  rw [seg30AccX57_sum, seg30AccY57_sum]
  unfold Seg30.relationRow537 at r537
  simp only [Seg30.relationLc187, Seg30.relationLc187Part0, Seg30.relationLc187Part1] at r537
  simp only [Seg30.relationLc188, Seg30.relationLc188Part0, Seg30.relationLc188Part1] at r537
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r537 ⊢
  exact r537

theorem seg30_prefix_58_addX (rho : Nat -> Seg30.F)
    (r538 : Seg30.relationRow538 rho) :
    rho 28854*(1 + rho 28853) = 988052079333455640877413860174613124063210718178946984167561073405951962416 + 3689084588447371381584106025244188476136961253537121925460034369186551638891*rho 28317 + 7005427529618962191259280346376995180846995965369886173158626593695519688724*seg30AccX57 rho + 988052079333455640877413860174613124063210718178946984167561073405951962416*seg30AccY57 rho := by
  rw [add_assoc, seg30AccWeighted57]
  unfold Seg30.relationRow538 at r538
  simp only [Seg30.relationLc189, Seg30.relationLc189Part0, Seg30.relationLc189Part1, Seg30.relationLc189Part2, Seg30.relationLc189Part3] at r538
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r538 ⊢
  exact r538

theorem seg30_prefix_58_addY (rho : Nat -> Seg30.F)
    (r539 : Seg30.relationRow539 rho) :
    rho 28855*(1 + (-1)*rho 28853) = 7005427529618962191259280346376995180846995965369886173158626593695519688724 + 8103381537400898634954171877401300506786451891081291608583421318233370836558*rho 28317 + 988052079333455640877413860174613124063210718178946984167561073405951962416*seg30AccX57 rho + 7005427529618962191259280346376995180846995965369886173158626593695519688724*seg30AccY57 rho := by
  rw [add_assoc, seg30AccWeighted57]
  unfold Seg30.relationRow539 at r539
  simp only [Seg30.relationLc190, Seg30.relationLc190Part0, Seg30.relationLc190Part1, Seg30.relationLc190Part2, Seg30.relationLc190Part3] at r539
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r539 ⊢
  exact r539

theorem seg30_prefix_58_selX (rho : Nat -> Seg30.F)
    (r540 : Seg30.relationRow540 rho) :
    (1*rho 28375)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX57 rho + rho 28854) = rho 28856 := by
  rw [seg30AccX57_sum]
  unfold Seg30.relationRow540 at r540
  simp only [Seg30.relationLc191, Seg30.relationLc191Part0, Seg30.relationLc191Part1] at r540
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r540 ⊢
  exact r540

theorem seg30_prefix_58_selY (rho : Nat -> Seg30.F)
    (r541 : Seg30.relationRow541 rho) :
    (1*rho 28375)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY57 rho + rho 28855) = rho 28857 := by
  rw [seg30AccY57_sum]
  unfold Seg30.relationRow541 at r541
  simp only [Seg30.relationLc192, Seg30.relationLc192Part0, Seg30.relationLc192Part1] at r541
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r541 ⊢
  exact r541

theorem seg30_prefix_59_v2 (rho : Nat -> Seg30.F)
    (r542 : Seg30.relationRow542 rho) :
    (5216000986918399100658725928726594776545297115515760187025219720411965230869*rho 28317 + 2156487065597549056324983678614439370425622070883240801164137263655924233376*seg30AccX58 rho)*(1078307067592655929764445926254891981587989510030717658004669851199004362799 + 2766414637686983554196240388590361588031805575494008592258454326579377809996*rho 28317 + 1078307067592655929764445926254891981587989510030717658004669851199004362799*seg30AccY58 rho) = rho 28858 := by
  rw [seg30AccX58_sum, seg30AccY58_sum]
  unfold Seg30.relationRow542 at r542
  simp only [Seg30.relationLc193, Seg30.relationLc193Part0, Seg30.relationLc193Part1] at r542
  simp only [Seg30.relationLc194, Seg30.relationLc194Part0, Seg30.relationLc194Part1] at r542
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r542 ⊢
  exact r542

theorem seg30_prefix_59_addX (rho : Nat -> Seg30.F)
    (r543 : Seg30.relationRow543 rho) :
    rho 28859*(1 + rho 28858) = 1078307067592655929764445926254891981587989510030717658004669851199004362799 + 1549410558983292357284016308027624847580515667181643127580289292796001953329*rho 28317 + 2153059263199418330264124523846542624471985471744294070940514365547852048426*seg30AccX58 rho + 1078307067592655929764445926254891981587989510030717658004669851199004362799*seg30AccY58 rho := by
  rw [add_assoc, seg30AccWeighted58]
  unfold Seg30.relationRow543 at r543
  simp only [Seg30.relationLc195, Seg30.relationLc195Part0, Seg30.relationLc195Part1, Seg30.relationLc195Part2, Seg30.relationLc195Part3] at r543
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r543 ⊢
  exact r543

theorem seg30_prefix_59_addY (rho : Nat -> Seg30.F)
    (r544 : Seg30.relationRow544 rho) :
    rho 28860*(1 + (-1)*rho 28858) = 2153059263199418330264124523846542624471985471744294070940514365547852048426 + 8037383549421691466757036345025357349622246770121874476649744840456289462477*rho 28317 + 1078307067592655929764445926254891981587989510030717658004669851199004362799*seg30AccX58 rho + 2153059263199418330264124523846542624471985471744294070940514365547852048426*seg30AccY58 rho := by
  rw [add_assoc, seg30AccWeighted58]
  unfold Seg30.relationRow544 at r544
  simp only [Seg30.relationLc196, Seg30.relationLc196Part0, Seg30.relationLc196Part1, Seg30.relationLc196Part2, Seg30.relationLc196Part3] at r544
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r544 ⊢
  exact r544

theorem seg30_prefix_59_selX (rho : Nat -> Seg30.F)
    (r545 : Seg30.relationRow545 rho) :
    (1*rho 28376)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX58 rho + rho 28859) = rho 28861 := by
  rw [seg30AccX58_sum]
  unfold Seg30.relationRow545 at r545
  simp only [Seg30.relationLc197, Seg30.relationLc197Part0, Seg30.relationLc197Part1] at r545
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r545 ⊢
  exact r545

theorem seg30_prefix_59_selY (rho : Nat -> Seg30.F)
    (r546 : Seg30.relationRow546 rho) :
    (1*rho 28376)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY58 rho + rho 28860) = rho 28862 := by
  rw [seg30AccY58_sum]
  unfold Seg30.relationRow546 at r546
  simp only [Seg30.relationLc198, Seg30.relationLc198Part0, Seg30.relationLc198Part1] at r546
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r546 ⊢
  exact r546

theorem seg30_prefix_60_v2 (rho : Nat -> Seg30.F)
    (r547 : Seg30.relationRow547 rho) :
    (5344909994604615257630325697143396666051053670561830463561362977461125484596*rho 28317 + 2176686707172346089764861149147128588707699343836468076549025280019693811766*seg30AccX59 rho)*(1429573434618572468265763344440075896510596019609218436100922545328956343063 + 2214981955855980363476769290924158600072872287107850573391034021018292460131*rho 28317 + 1429573434618572468265763344440075896510596019609218436100922545328956343063*seg30AccY59 rho) = rho 28863 := by
  rw [seg30AccX59_sum, seg30AccY59_sum]
  unfold Seg30.relationRow547 at r547
  simp only [Seg30.relationLc199, Seg30.relationLc199Part0, Seg30.relationLc199Part1] at r547
  simp only [Seg30.relationLc200, Seg30.relationLc200Part0, Seg30.relationLc200Part1] at r547
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r547 ⊢
  exact r547

theorem seg30_prefix_60_addX (rho : Nat -> Seg30.F)
    (r548 : Seg30.relationRow548 rho) :
    rho 28864*(1 + rho 28863) = 1429573434618572468265763344440075896510596019609218436100922545328956343063 + 6487899024085425786684261787499910502293469850095593492804671254920729548095*rho 28317 + 2175427980060392100680354406991456580602170599832405867663078667323324753984*seg30AccX59 rho + 1429573434618572468265763344440075896510596019609218436100922545328956343063*seg30AccY59 rho := by
  rw [add_assoc, seg30AccWeighted59]
  unfold Seg30.relationRow548 at r548
  simp only [Seg30.relationLc201, Seg30.relationLc201Part0, Seg30.relationLc201Part1, Seg30.relationLc201Part2, Seg30.relationLc201Part3] at r548
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r548 ⊢
  exact r548

theorem seg30_prefix_60_addY (rho : Nat -> Seg30.F)
    (r549 : Seg30.relationRow549 rho) :
    rho 28865*(1 + (-1)*rho 28863) = 2175427980060392100680354406991456580602170599832405867663078667323324753984 + 1140136143485807931745155331023219576130803482552960585340507993082385214402*rho 28317 + 1429573434618572468265763344440075896510596019609218436100922545328956343063*seg30AccX59 rho + 2175427980060392100680354406991456580602170599832405867663078667323324753984*seg30AccY59 rho := by
  rw [add_assoc, seg30AccWeighted59]
  unfold Seg30.relationRow549 at r549
  simp only [Seg30.relationLc202, Seg30.relationLc202Part0, Seg30.relationLc202Part1, Seg30.relationLc202Part2, Seg30.relationLc202Part3] at r549
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r549 ⊢
  exact r549

theorem seg30_prefix_60_selX (rho : Nat -> Seg30.F)
    (r550 : Seg30.relationRow550 rho) :
    (1*rho 28377)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX59 rho + rho 28864) = rho 28866 := by
  rw [seg30AccX59_sum]
  unfold Seg30.relationRow550 at r550
  simp only [Seg30.relationLc203, Seg30.relationLc203Part0, Seg30.relationLc203Part1] at r550
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r550 ⊢
  exact r550

theorem seg30_prefix_60_selY (rho : Nat -> Seg30.F)
    (r551 : Seg30.relationRow551 rho) :
    (1*rho 28377)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY59 rho + rho 28865) = rho 28867 := by
  rw [seg30AccY59_sum]
  unfold Seg30.relationRow551 at r551
  simp only [Seg30.relationLc204, Seg30.relationLc204Part0, Seg30.relationLc204Part1] at r551
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r551 ⊢
  exact r551


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

