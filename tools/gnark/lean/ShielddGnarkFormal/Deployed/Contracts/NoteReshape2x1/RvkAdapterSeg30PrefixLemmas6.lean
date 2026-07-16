import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_prefix_61_v2 (rho : Nat -> Seg30.F)
    (r552 : Seg30.relationRow552 rho) :
    (2192973411531826120347442314194415155367589721663284732414709266599801162341*rho 28317 + 5615196394253809742051837972053350097436945599023299075757788719623911014164*seg30AccX60 rho)*(3507914811193807346915656364043313414030314410218757094075792397566336246847 + 3632481104554618013980636857969656708838921269583913130983900467527162348250*rho 28317 + 3507914811193807346915656364043313414030314410218757094075792397566336246847*seg30AccY60 rho) = rho 28868 := by
  rw [seg30AccX60_sum, seg30AccY60_sum]
  unfold Seg30.relationRow552 at r552
  simp only [Seg30.relationLc205, Seg30.relationLc205Part0, Seg30.relationLc205Part1] at r552
  simp only [Seg30.relationLc206, Seg30.relationLc206Part0, Seg30.relationLc206Part1] at r552
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r552 ⊢
  exact r552

theorem seg30_prefix_61_addX (rho : Nat -> Seg30.F)
    (r553 : Seg30.relationRow553 rho) :
    rho 28869*(1 + rho 28868) = 3507914811193807346915656364043313414030314410218757094075792397566336246847 + 147525517621269423143848623495511025465740574047516471366945349929542513784*rho 28317 + 6333108592800235955202131851808095413327987070414755997798431501612895014049*seg30AccX60 rho + 3507914811193807346915656364043313414030314410218757094075792397566336246847*seg30AccY60 rho := by
  rw [add_assoc, seg30AccWeighted60]
  unfold Seg30.relationRow553 at r553
  simp only [Seg30.relationLc207, Seg30.relationLc207Part0, Seg30.relationLc207Part1, Seg30.relationLc207Part2, Seg30.relationLc207Part3] at r553
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r553 ⊢
  exact r553

theorem seg30_prefix_61_addY (rho : Nat -> Seg30.F)
    (r554 : Seg30.relationRow554 rho) :
    rho 28870*(1 + (-1)*rho 28868) = 6333108592800235955202131851808095413327987070414755997798431501612895014049 + 7835467099238429573137548256885374856751082605880225412215512677951913505295*rho 28317 + 3507914811193807346915656364043313414030314410218757094075792397566336246847*seg30AccX60 rho + 6333108592800235955202131851808095413327987070414755997798431501612895014049*seg30AccY60 rho := by
  rw [add_assoc, seg30AccWeighted60]
  unfold Seg30.relationRow554 at r554
  simp only [Seg30.relationLc208, Seg30.relationLc208Part0, Seg30.relationLc208Part1, Seg30.relationLc208Part2, Seg30.relationLc208Part3] at r554
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r554 ⊢
  exact r554

theorem seg30_prefix_61_selX (rho : Nat -> Seg30.F)
    (r555 : Seg30.relationRow555 rho) :
    (1*rho 28378)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX60 rho + rho 28869) = rho 28871 := by
  rw [seg30AccX60_sum]
  unfold Seg30.relationRow555 at r555
  simp only [Seg30.relationLc209, Seg30.relationLc209Part0, Seg30.relationLc209Part1] at r555
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r555 ⊢
  exact r555

theorem seg30_prefix_61_selY (rho : Nat -> Seg30.F)
    (r556 : Seg30.relationRow556 rho) :
    (1*rho 28378)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY60 rho + rho 28870) = rho 28872 := by
  rw [seg30AccY60_sum]
  unfold Seg30.relationRow556 at r556
  simp only [Seg30.relationLc210, Seg30.relationLc210Part0, Seg30.relationLc210Part1] at r556
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r556 ⊢
  exact r556

theorem seg30_prefix_62_v2 (rho : Nat -> Seg30.F)
    (r557 : Seg30.relationRow557 rho) :
    (4467762641089011012460139430937330739726033190653514206239072531933157555187*rho 28317 + 6158233270979310956638021131007359831823461191922592329001496000280905611254*seg30AccX61 rho)*(1387440957520290860982515516339530368664827045823571475477226279658438710741 + 4238644719121606010764621135185413098022294640887365526575084778074895914597*rho 28317 + 1387440957520290860982515516339530368664827045823571475477226279658438710741*seg30AccY61 rho) = rho 28873 := by
  rw [seg30AccX61_sum, seg30AccY61_sum]
  unfold Seg30.relationRow557 at r557
  simp only [Seg30.relationLc211, Seg30.relationLc211Part0, Seg30.relationLc211Part1] at r557
  simp only [Seg30.relationLc212, Seg30.relationLc212Part0, Seg30.relationLc212Part1] at r557
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r557 ⊢
  exact r557

theorem seg30_prefix_62_addX (rho : Nat -> Seg30.F)
    (r558 : Seg30.relationRow558 rho) :
    rho 28874*(1 + rho 28873) = 1387440957520290860982515516339530368664827045823571475477226279658438710741 + 4047251108373685273174184597169858851108951039121401643780880198158852193995*rho 28317 + 6031400935712669419417859455174711429331227516424772680961701443367802924271*seg30AccX61 rho + 1387440957520290860982515516339530368664827045823571475477226279658438710741*seg30AccY61 rho := by
  rw [add_assoc, seg30AccWeighted61]
  unfold Seg30.relationRow558 at r558
  simp only [Seg30.relationLc213, Seg30.relationLc213Part0, Seg30.relationLc213Part1, Seg30.relationLc213Part2, Seg30.relationLc213Part3] at r558
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r558 ⊢
  exact r558

theorem seg30_prefix_62_addY (rho : Nat -> Seg30.F)
    (r559 : Seg30.relationRow559 rho) :
    rho 28875*(1 + (-1)*rho 28873) = 6031400935712669419417859455174711429331227516424772680961701443367802924271 + 2519224524602260538067412646708043802373803742617841216289952063342850795165*rho 28317 + 1387440957520290860982515516339530368664827045823571475477226279658438710741*seg30AccX61 rho + 6031400935712669419417859455174711429331227516424772680961701443367802924271*seg30AccY61 rho := by
  rw [add_assoc, seg30AccWeighted61]
  unfold Seg30.relationRow559 at r559
  simp only [Seg30.relationLc214, Seg30.relationLc214Part0, Seg30.relationLc214Part1, Seg30.relationLc214Part2, Seg30.relationLc214Part3] at r559
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r559 ⊢
  exact r559

theorem seg30_prefix_62_selX (rho : Nat -> Seg30.F)
    (r560 : Seg30.relationRow560 rho) :
    (1*rho 28379)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX61 rho + rho 28874) = rho 28876 := by
  rw [seg30AccX61_sum]
  unfold Seg30.relationRow560 at r560
  simp only [Seg30.relationLc215, Seg30.relationLc215Part0, Seg30.relationLc215Part1] at r560
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r560 ⊢
  exact r560

theorem seg30_prefix_62_selY (rho : Nat -> Seg30.F)
    (r561 : Seg30.relationRow561 rho) :
    (1*rho 28379)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY61 rho + rho 28875) = rho 28877 := by
  rw [seg30AccY61_sum]
  unfold Seg30.relationRow561 at r561
  simp only [Seg30.relationLc216, Seg30.relationLc216Part0, Seg30.relationLc216Part1] at r561
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r561 ⊢
  exact r561

theorem seg30_prefix_63_v2 (rho : Nat -> Seg30.F)
    (r562 : Seg30.relationRow562 rho) :
    (7860504369378455773331695889377182530776402391681277877526940376923990757318*rho 28317 + 8104899636678543604657262777441996492681450007842513561438126999479804123625*seg30AccX62 rho)*(1028480744701591242868080233785885321991862844063663292220732330864851754947 + 4094745204734227454523259541864877269488153888968154424022635492436875126558*rho 28317 + 1028480744701591242868080233785885321991862844063663292220732330864851754947*seg30AccY62 rho) = rho 28878 := by
  rw [seg30AccX62_sum, seg30AccY62_sum]
  unfold Seg30.relationRow562 at r562
  simp only [Seg30.relationLc217, Seg30.relationLc217Part0, Seg30.relationLc217Part1] at r562
  simp only [Seg30.relationLc218, Seg30.relationLc218Part0, Seg30.relationLc218Part1] at r562
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r562 ⊢
  exact r562

theorem seg30_prefix_63_addX (rho : Nat -> Seg30.F)
    (r563 : Seg30.relationRow563 rho) :
    rho 28879*(1 + rho 28878) = 1028480744701591242868080233785885321991862844063663292220732330864851754947 + 882805281704354057597467756459580570199339644335419526886590628508342642566*rho 28317 + 8424782572215941288270892685642582487761756420664361743505559923759892036198*seg30AccX62 rho + 1028480744701591242868080233785885321991862844063663292220732330864851754947*seg30AccY62 rho := by
  rw [add_assoc, seg30AccWeighted62]
  unfold Seg30.relationRow563 at r563
  simp only [Seg30.relationLc219, Seg30.relationLc219Part0, Seg30.relationLc219Part1, Seg30.relationLc219Part2, Seg30.relationLc219Part3] at r563
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r563 ⊢
  exact r563

theorem seg30_prefix_63_addY (rho : Nat -> Seg30.F)
    (r564 : Seg30.relationRow564 rho) :
    rho 28880*(1 + (-1)*rho 28878) = 8424782572215941288270892685642582487761756420664361743505559923759892036198 + 1365556802616877375954001694639792525481792047346366026008002783409929961333*rho 28317 + 1028480744701591242868080233785885321991862844063663292220732330864851754947*seg30AccX62 rho + 8424782572215941288270892685642582487761756420664361743505559923759892036198*seg30AccY62 rho := by
  rw [add_assoc, seg30AccWeighted62]
  unfold Seg30.relationRow564 at r564
  simp only [Seg30.relationLc220, Seg30.relationLc220Part0, Seg30.relationLc220Part1, Seg30.relationLc220Part2, Seg30.relationLc220Part3] at r564
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r564 ⊢
  exact r564

theorem seg30_prefix_63_selX (rho : Nat -> Seg30.F)
    (r565 : Seg30.relationRow565 rho) :
    (1*rho 28380)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX62 rho + rho 28879) = rho 28881 := by
  rw [seg30AccX62_sum]
  unfold Seg30.relationRow565 at r565
  simp only [Seg30.relationLc221, Seg30.relationLc221Part0, Seg30.relationLc221Part1] at r565
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r565 ⊢
  exact r565

theorem seg30_prefix_63_selY (rho : Nat -> Seg30.F)
    (r566 : Seg30.relationRow566 rho) :
    (1*rho 28380)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY62 rho + rho 28880) = rho 28882 := by
  rw [seg30AccY62_sum]
  unfold Seg30.relationRow566 at r566
  simp only [Seg30.relationLc222, Seg30.relationLc222Part0, Seg30.relationLc222Part1, Seg30.relationLc222Part2] at r566
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r566 ⊢
  exact r566

theorem seg30_prefix_64_v2 (rho : Nat -> Seg30.F)
    (r567 : Seg30.relationRow567 rho) :
    (2896601315595281826483492482886891517188844246350138873647231071697040228255*rho 28317 + 6011334678039591808234449784869804372031718158751584830130446658022560656768*seg30AccX63 rho)*(6600375457234436849944300469372244054307777929361595040456815854899281040183 + 3632840430158228762076042235044308132661818045554303185557551945106229637474*rho 28317 + 6600375457234436849944300469372244054307777929361595040456815854899281040183*seg30AccY63 rho) = rho 28883 := by
  rw [seg30AccX63_sum, seg30AccY63_sum]
  unfold Seg30.relationRow567 at r567
  simp only [Seg30.relationLc223, Seg30.relationLc223Part0, Seg30.relationLc223Part1] at r567
  simp only [Seg30.relationLc224, Seg30.relationLc224Part0, Seg30.relationLc224Part1, Seg30.relationLc224Part2] at r567
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r567 ⊢
  exact r567

theorem seg30_prefix_64_addX (rho : Nat -> Seg30.F)
    (r568 : Seg30.relationRow568 rho) :
    rho 28884*(1 + rho 28883) = 6600375457234436849944300469372244054307777929361595040456815854899281040183 + 422052628510561653292389020156155178992927118097941318816758827007121337100*rho 28317 + 7364688375594957725680118946883635672961320942388134957832351992566858158322*seg30AccX63 rho + 6600375457234436849944300469372244054307777929361595040456815854899281040183*seg30AccY63 rho := by
  rw [add_assoc, seg30AccWeighted63]
  unfold Seg30.relationRow568 at r568
  simp only [Seg30.relationLc225, Seg30.relationLc225Part0, Seg30.relationLc225Part1, Seg30.relationLc225Part2, Seg30.relationLc225Part3] at r568
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r568 ⊢
  exact r568

theorem seg30_prefix_64_addY (rho : Nat -> Seg30.F)
    (r569 : Seg30.relationRow569 rho) :
    rho 28885*(1 + (-1)*rho 28883) = 7364688375594957725680118946883635672961320942388134957832351992566858158322 + 2598290662687356450350434728849758433307111346405199677646573938046939128067*rho 28317 + 6600375457234436849944300469372244054307777929361595040456815854899281040183*seg30AccX63 rho + 7364688375594957725680118946883635672961320942388134957832351992566858158322*seg30AccY63 rho := by
  rw [add_assoc, seg30AccWeighted63]
  unfold Seg30.relationRow569 at r569
  simp only [Seg30.relationLc226, Seg30.relationLc226Part0, Seg30.relationLc226Part1, Seg30.relationLc226Part2, Seg30.relationLc226Part3] at r569
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r569 ⊢
  exact r569

theorem seg30_prefix_64_selX (rho : Nat -> Seg30.F)
    (r570 : Seg30.relationRow570 rho) :
    (1*rho 28381)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX63 rho + rho 28884) = rho 28886 := by
  rw [seg30AccX63_sum]
  unfold Seg30.relationRow570 at r570
  simp only [Seg30.relationLc227, Seg30.relationLc227Part0, Seg30.relationLc227Part1, Seg30.relationLc227Part2] at r570
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r570 ⊢
  exact r570

theorem seg30_prefix_64_selY (rho : Nat -> Seg30.F)
    (r571 : Seg30.relationRow571 rho) :
    (1*rho 28381)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY63 rho + rho 28885) = rho 28887 := by
  rw [seg30AccY63_sum]
  unfold Seg30.relationRow571 at r571
  simp only [Seg30.relationLc228, Seg30.relationLc228Part0, Seg30.relationLc228Part1, Seg30.relationLc228Part2] at r571
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r571 ⊢
  exact r571

theorem seg30_prefix_65_v2 (rho : Nat -> Seg30.F)
    (r572 : Seg30.relationRow572 rho) :
    (2441858149594684419669229541998122896554895397549907271029031954323754410683*rho 28317 + 1468539582095666279378991410533170917245967249536948894488180590741816634177*seg30AccX64 rho)*(3361663168443076789974960768385016590956919252010830399554025150454016092109 + 5734647455186279297627215050346085835678696177385387464145726860498976860026*rho 28317 + 3361663168443076789974960768385016590956919252010830399554025150454016092109*seg30AccY64 rho) = rho 28888 := by
  rw [seg30AccX64_sum, seg30AccY64_sum]
  unfold Seg30.relationRow572 at r572
  simp only [Seg30.relationLc229, Seg30.relationLc229Part0, Seg30.relationLc229Part1, Seg30.relationLc229Part2] at r572
  simp only [Seg30.relationLc230, Seg30.relationLc230Part0, Seg30.relationLc230Part1, Seg30.relationLc230Part2] at r572
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r572 ⊢
  exact r572

theorem seg30_prefix_65_addX (rho : Nat -> Seg30.F)
    (r573 : Seg30.relationRow573 rho) :
    rho 28889*(1 + rho 28888) = 3361663168443076789974960768385016590956919252010830399554025150454016092109 + 3806730623357089986699700989367181835760518207885634357888102877503714158759*rho 28317 + 730047353916881942074916352344427942934907545092600995692017250110951879518*seg30AccX64 rho + 3361663168443076789974960768385016590956919252010830399554025150454016092109*seg30AccY64 rho := by
  rw [add_assoc, seg30AccWeighted64]
  unfold Seg30.relationRow573 at r573
  simp only [Seg30.relationLc231, Seg30.relationLc231Part0, Seg30.relationLc231Part1, Seg30.relationLc231Part2, Seg30.relationLc231Part3, Seg30.relationLc231Part4] at r573
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r573 ⊢
  exact r573

theorem seg30_prefix_65_addY (rho : Nat -> Seg30.F)
    (r574 : Seg30.relationRow574 rho) :
    rho 28890*(1 + (-1)*rho 28888) = 730047353916881942074916352344427942934907545092600995692017250110951879518 + 1796660262071968910246623980526058329156247328003921086141166780672068447878*rho 28317 + 3361663168443076789974960768385016590956919252010830399554025150454016092109*seg30AccX64 rho + 730047353916881942074916352344427942934907545092600995692017250110951879518*seg30AccY64 rho := by
  rw [add_assoc, seg30AccWeighted64]
  unfold Seg30.relationRow574 at r574
  simp only [Seg30.relationLc232, Seg30.relationLc232Part0, Seg30.relationLc232Part1, Seg30.relationLc232Part2, Seg30.relationLc232Part3, Seg30.relationLc232Part4] at r574
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r574 ⊢
  exact r574

theorem seg30_prefix_65_selX (rho : Nat -> Seg30.F)
    (r575 : Seg30.relationRow575 rho) :
    (1*rho 28382)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX64 rho + rho 28889) = rho 28891 := by
  rw [seg30AccX64_sum]
  unfold Seg30.relationRow575 at r575
  simp only [Seg30.relationLc233, Seg30.relationLc233Part0, Seg30.relationLc233Part1, Seg30.relationLc233Part2] at r575
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r575 ⊢
  exact r575

theorem seg30_prefix_65_selY (rho : Nat -> Seg30.F)
    (r576 : Seg30.relationRow576 rho) :
    (1*rho 28382)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY64 rho + rho 28890) = rho 28892 := by
  rw [seg30AccY64_sum]
  unfold Seg30.relationRow576 at r576
  simp only [Seg30.relationLc234, Seg30.relationLc234Part0, Seg30.relationLc234Part1, Seg30.relationLc234Part2] at r576
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r576 ⊢
  exact r576

theorem seg30_prefix_66_v2 (rho : Nat -> Seg30.F)
    (r577 : Seg30.relationRow577 rho) :
    (7317429427889679080864790959675717489239037886684290610301339332825622009038*rho 28317 + 6021026344076416619121288468750741828046873078691119012171314382658426450457*seg30AccX65 rho)*(7277760502297569220153875681908740059217069917760434284809666512920814541227 + 5623423306062474044567382328107422310706576126000140678799979011964140812863*rho 28317 + 7277760502297569220153875681908740059217069917760434284809666512920814541227*seg30AccY65 rho) = rho 28893 := by
  rw [seg30AccX65_sum, seg30AccY65_sum]
  unfold Seg30.relationRow577 at r577
  simp only [Seg30.relationLc235, Seg30.relationLc235Part0, Seg30.relationLc235Part1, Seg30.relationLc235Part2] at r577
  simp only [Seg30.relationLc236, Seg30.relationLc236Part0, Seg30.relationLc236Part1, Seg30.relationLc236Part2] at r577
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r577 ⊢
  exact r577

theorem seg30_prefix_66_addX (rho : Nat -> Seg30.F)
    (r578 : Seg30.relationRow578 rho) :
    rho 28894*(1 + rho 28893) = 7277760502297569220153875681908740059217069917760434284809666512920814541227 + 7462327244759041091178551734177979010012502938672402918311316224764724557338*rho 28317 + 3842671787507003435795103195747962818913781052492676206089103635489301132371*seg30AccX65 rho + 7277760502297569220153875681908740059217069917760434284809666512920814541227*seg30AccY65 rho := by
  rw [add_assoc, seg30AccWeighted65]
  unfold Seg30.relationRow578 at r578
  simp only [Seg30.relationLc237, Seg30.relationLc237Part0, Seg30.relationLc237Part1, Seg30.relationLc237Part2, Seg30.relationLc237Part3, Seg30.relationLc237Part4] at r578
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r578 ⊢
  exact r578

theorem seg30_prefix_66_addY (rho : Nat -> Seg30.F)
    (r579 : Seg30.relationRow579 rho) :
    rho 28895*(1 + (-1)*rho 28893) = 3842671787507003435795103195747962818913781052492676206089103635489301132371 + 6347859754536564095544343687702155263140218853768682012754218406582542057158*rho 28317 + 7277760502297569220153875681908740059217069917760434284809666512920814541227*seg30AccX65 rho + 3842671787507003435795103195747962818913781052492676206089103635489301132371*seg30AccY65 rho := by
  rw [add_assoc, seg30AccWeighted65]
  unfold Seg30.relationRow579 at r579
  simp only [Seg30.relationLc238, Seg30.relationLc238Part0, Seg30.relationLc238Part1, Seg30.relationLc238Part2, Seg30.relationLc238Part3, Seg30.relationLc238Part4] at r579
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r579 ⊢
  exact r579

theorem seg30_prefix_66_selX (rho : Nat -> Seg30.F)
    (r580 : Seg30.relationRow580 rho) :
    (1*rho 28383)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX65 rho + rho 28894) = rho 28896 := by
  rw [seg30AccX65_sum]
  unfold Seg30.relationRow580 at r580
  simp only [Seg30.relationLc239, Seg30.relationLc239Part0, Seg30.relationLc239Part1, Seg30.relationLc239Part2] at r580
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r580 ⊢
  exact r580

theorem seg30_prefix_66_selY (rho : Nat -> Seg30.F)
    (r581 : Seg30.relationRow581 rho) :
    (1*rho 28383)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY65 rho + rho 28895) = rho 28897 := by
  rw [seg30AccY65_sum]
  unfold Seg30.relationRow581 at r581
  simp only [Seg30.relationLc240, Seg30.relationLc240Part0, Seg30.relationLc240Part1, Seg30.relationLc240Part2] at r581
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r581 ⊢
  exact r581

theorem seg30_prefix_67_v2 (rho : Nat -> Seg30.F)
    (r582 : Seg30.relationRow582 rho) :
    (6495894566211403996232269137026018932501953391940325354720954163848318066143*rho 28317 + 283579253166981189097466647978536705612250233144289388837895438594313409125*seg30AccX66 rho)*(8410551147435598511653533510091582122033647167464408049473261077157483733861 + 4408468101015441774814258326413622957135574875933813938428914074908842070788*rho 28317 + 8410551147435598511653533510091582122033647167464408049473261077157483733861*seg30AccY66 rho) = rho 28898 := by
  rw [seg30AccX66_sum, seg30AccY66_sum]
  unfold Seg30.relationRow582 at r582
  simp only [Seg30.relationLc241, Seg30.relationLc241Part0, Seg30.relationLc241Part1, Seg30.relationLc241Part2] at r582
  simp only [Seg30.relationLc242, Seg30.relationLc242Part0, Seg30.relationLc242Part1, Seg30.relationLc242Part2] at r582
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r582 ⊢
  exact r582

theorem seg30_prefix_67_addX (rho : Nat -> Seg30.F)
    (r583 : Seg30.relationRow583 rho) :
    rho 28899*(1 + rho 28898) = 8410551147435598511653533510091582122033647167464408049473261077157483733861 + 178604084442008667129224003944826058899689526701337172411296564781364656077*rho 28317 + 3460618081776064073621033677874721331528955851424652535045566671255990384423*seg30AccX66 rho + 8410551147435598511653533510091582122033647167464408049473261077157483733861*seg30AccY66 rho := by
  rw [add_assoc, seg30AccWeighted66]
  unfold Seg30.relationRow583 at r583
  simp only [Seg30.relationLc243, Seg30.relationLc243Part0, Seg30.relationLc243Part1, Seg30.relationLc243Part2, Seg30.relationLc243Part3, Seg30.relationLc243Part4] at r583
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r583 ⊢
  exact r583

theorem seg30_prefix_67_addY (rho : Nat -> Seg30.F)
    (r584 : Seg30.relationRow584 rho) :
    rho 28900*(1 + (-1)*rho 28898) = 3460618081776064073621033677874721331528955851424652535045566671255990384423 + 4120489983777216601665037330618917811763519217508859746155615907430572528784*rho 28317 + 8410551147435598511653533510091582122033647167464408049473261077157483733861*seg30AccX66 rho + 3460618081776064073621033677874721331528955851424652535045566671255990384423*seg30AccY66 rho := by
  rw [add_assoc, seg30AccWeighted66]
  unfold Seg30.relationRow584 at r584
  simp only [Seg30.relationLc244, Seg30.relationLc244Part0, Seg30.relationLc244Part1, Seg30.relationLc244Part2, Seg30.relationLc244Part3, Seg30.relationLc244Part4] at r584
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r584 ⊢
  exact r584

theorem seg30_prefix_67_selX (rho : Nat -> Seg30.F)
    (r585 : Seg30.relationRow585 rho) :
    (1*rho 28384)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX66 rho + rho 28899) = rho 28901 := by
  rw [seg30AccX66_sum]
  unfold Seg30.relationRow585 at r585
  simp only [Seg30.relationLc245, Seg30.relationLc245Part0, Seg30.relationLc245Part1, Seg30.relationLc245Part2] at r585
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r585 ⊢
  exact r585

theorem seg30_prefix_67_selY (rho : Nat -> Seg30.F)
    (r586 : Seg30.relationRow586 rho) :
    (1*rho 28384)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY66 rho + rho 28900) = rho 28902 := by
  rw [seg30AccY66_sum]
  unfold Seg30.relationRow586 at r586
  simp only [Seg30.relationLc246, Seg30.relationLc246Part0, Seg30.relationLc246Part1, Seg30.relationLc246Part2] at r586
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r586 ⊢
  exact r586

theorem seg30_prefix_68_v2 (rho : Nat -> Seg30.F)
    (r587 : Seg30.relationRow587 rho) :
    (631761650035118282494441602095374805998255137796949998403698007072857970444*rho 28317 + 8068015689772184792989167365226394865601744563867089166204480917047383290178*seg30AccX67 rho)*(1966946882166026213006591837610371977279420560347105456512166436556292446412 + 2133162629518657432416682639600108610216712170376817295401199551129982949223*rho 28317 + 1966946882166026213006591837610371977279420560347105456512166436556292446412*seg30AccY67 rho) = rho 28903 := by
  rw [seg30AccX67_sum, seg30AccY67_sum]
  unfold Seg30.relationRow587 at r587
  simp only [Seg30.relationLc247, Seg30.relationLc247Part0, Seg30.relationLc247Part1, Seg30.relationLc247Part2] at r587
  simp only [Seg30.relationLc248, Seg30.relationLc248Part0, Seg30.relationLc248Part1, Seg30.relationLc248Part2] at r587
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r587 ⊢
  exact r587

theorem seg30_prefix_68_addX (rho : Nat -> Seg30.F)
    (r588 : Seg30.relationRow588 rho) :
    rho 28904*(1 + rho 28903) = 1966946882166026213006591837610371977279420560347105456512166436556292446412 + 2228410382292771868930073731794967252015050082502946100481703237163834247501*rho 28317 + 4902750566844655921384038161221210680028981555474657722455037646190091287431*seg30AccX67 rho + 1966946882166026213006591837610371977279420560347105456512166436556292446412*seg30AccY67 rho := by
  rw [add_assoc, seg30AccWeighted67]
  unfold Seg30.relationRow588 at r588
  simp only [Seg30.relationLc249, Seg30.relationLc249Part0, Seg30.relationLc249Part1, Seg30.relationLc249Part2, Seg30.relationLc249Part3, Seg30.relationLc249Part4] at r588
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r588 ⊢
  exact r588

theorem seg30_prefix_68_addY (rho : Nat -> Seg30.F)
    (r589 : Seg30.relationRow589 rho) :
    rho 28905*(1 + (-1)*rho 28903) = 4902750566844655921384038161221210680028981555474657722455037646190091287431 + 1168696129252342408338407423711147118445105332484515454228740713687607975055*rho 28317 + 1966946882166026213006591837610371977279420560347105456512166436556292446412*seg30AccX67 rho + 4902750566844655921384038161221210680028981555474657722455037646190091287431*seg30AccY67 rho := by
  rw [add_assoc, seg30AccWeighted67]
  unfold Seg30.relationRow589 at r589
  simp only [Seg30.relationLc250, Seg30.relationLc250Part0, Seg30.relationLc250Part1, Seg30.relationLc250Part2, Seg30.relationLc250Part3, Seg30.relationLc250Part4] at r589
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r589 ⊢
  exact r589

theorem seg30_prefix_68_selX (rho : Nat -> Seg30.F)
    (r590 : Seg30.relationRow590 rho) :
    (1*rho 28385)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX67 rho + rho 28904) = rho 28906 := by
  rw [seg30AccX67_sum]
  unfold Seg30.relationRow590 at r590
  simp only [Seg30.relationLc251, Seg30.relationLc251Part0, Seg30.relationLc251Part1, Seg30.relationLc251Part2] at r590
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r590 ⊢
  exact r590

theorem seg30_prefix_68_selY (rho : Nat -> Seg30.F)
    (r591 : Seg30.relationRow591 rho) :
    (1*rho 28385)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY67 rho + rho 28905) = rho 28907 := by
  rw [seg30AccY67_sum]
  unfold Seg30.relationRow591 at r591
  simp only [Seg30.relationLc252, Seg30.relationLc252Part0, Seg30.relationLc252Part1, Seg30.relationLc252Part2] at r591
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r591 ⊢
  exact r591

theorem seg30_prefix_69_v2 (rho : Nat -> Seg30.F)
    (r592 : Seg30.relationRow592 rho) :
    (1879049417325825119536558889711291957517960724627912445191850677173291976161*rho 28317 + 517925809368660864558072751869487790437935273484529585746369323552734005467*seg30AccX68 rho)*(8178684086019600428776788963199416603730950926115269944421675582685466080269 + 718961184178561580886179684940049791723993716228098994336875608766544841653*rho 28317 + 8178684086019600428776788963199416603730950926115269944421675582685466080269*seg30AccY68 rho) = rho 28908 := by
  rw [seg30AccX68_sum, seg30AccY68_sum]
  unfold Seg30.relationRow592 at r592
  simp only [Seg30.relationLc253, Seg30.relationLc253Part0, Seg30.relationLc253Part1, Seg30.relationLc253Part2] at r592
  simp only [Seg30.relationLc254, Seg30.relationLc254Part0, Seg30.relationLc254Part1, Seg30.relationLc254Part2] at r592
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r592 ⊢
  exact r592

theorem seg30_prefix_69_addX (rho : Nat -> Seg30.F)
    (r593 : Seg30.relationRow593 rho) :
    rho 28909*(1 + rho 28908) = 8178684086019600428776788963199416603730950926115269944421675582685466080269 + 4593804955818762584900879428085013308587454305188099119448899912168962086700*rho 28317 + 6381735882076907758829733666994419139000865977302288066455440036141343272670*seg30AccX68 rho + 8178684086019600428776788963199416603730950926115269944421675582685466080269*seg30AccY68 rho := by
  rw [add_assoc, seg30AccWeighted68]
  unfold Seg30.relationRow593 at r593
  simp only [Seg30.relationLc255, Seg30.relationLc255Part0, Seg30.relationLc255Part1, Seg30.relationLc255Part2, Seg30.relationLc255Part3, Seg30.relationLc255Part4] at r593
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r593 ⊢
  exact r593

theorem seg30_prefix_69_addY (rho : Nat -> Seg30.F)
    (r594 : Seg30.relationRow594 rho) :
    rho 28910*(1 + (-1)*rho 28908) = 6381735882076907758829733666994419139000865977302288066455440036141343272670 + 4317293776341917983161643856627357891656090044601391905393571122349505951615*rho 28317 + 8178684086019600428776788963199416603730950926115269944421675582685466080269*seg30AccX68 rho + 6381735882076907758829733666994419139000865977302288066455440036141343272670*seg30AccY68 rho := by
  rw [add_assoc, seg30AccWeighted68]
  unfold Seg30.relationRow594 at r594
  simp only [Seg30.relationLc256, Seg30.relationLc256Part0, Seg30.relationLc256Part1, Seg30.relationLc256Part2, Seg30.relationLc256Part3, Seg30.relationLc256Part4] at r594
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r594 ⊢
  exact r594

theorem seg30_prefix_69_selX (rho : Nat -> Seg30.F)
    (r595 : Seg30.relationRow595 rho) :
    (1*rho 28386)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX68 rho + rho 28909) = rho 28911 := by
  rw [seg30AccX68_sum]
  unfold Seg30.relationRow595 at r595
  simp only [Seg30.relationLc257, Seg30.relationLc257Part0, Seg30.relationLc257Part1, Seg30.relationLc257Part2] at r595
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r595 ⊢
  exact r595

theorem seg30_prefix_69_selY (rho : Nat -> Seg30.F)
    (r596 : Seg30.relationRow596 rho) :
    (1*rho 28386)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY68 rho + rho 28910) = rho 28912 := by
  rw [seg30AccY68_sum]
  unfold Seg30.relationRow596 at r596
  simp only [Seg30.relationLc258, Seg30.relationLc258Part0, Seg30.relationLc258Part1, Seg30.relationLc258Part2] at r596
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r596 ⊢
  exact r596

theorem seg30_prefix_70_v2 (rho : Nat -> Seg30.F)
    (r597 : Seg30.relationRow597 rho) :
    (7051893256125772232379071968189882766792145554365486350271113435452976189797*rho 28317 + 3372123005021887774424946087009289440204555678066507861318664216599352821638*seg30AccX69 rho)*(7687115706614567605450769945243056334713925514269138545816059769883858962023 + 5119128936249422117446661545040219479495504038648853251610860357079968667357*rho 28317 + 7687115706614567605450769945243056334713925514269138545816059769883858962023*seg30AccY69 rho) = rho 28913 := by
  rw [seg30AccX69_sum, seg30AccY69_sum]
  unfold Seg30.relationRow597 at r597
  simp only [Seg30.relationLc259, Seg30.relationLc259Part0, Seg30.relationLc259Part1, Seg30.relationLc259Part2] at r597
  simp only [Seg30.relationLc260, Seg30.relationLc260Part0, Seg30.relationLc260Part1, Seg30.relationLc260Part2] at r597
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r597 ⊢
  exact r597

theorem seg30_prefix_70_addX (rho : Nat -> Seg30.F)
    (r598 : Seg30.relationRow598 rho) :
    rho 28914*(1 + rho 28913) = 7687115706614567605450769945243056334713925514269138545816059769883858962023 + 2625301578095364184106104908706644117114873134730212565746612636888378639461*rho 28317 + 5597214348017417900404029286172679723685784516602615786622858670295681115320*seg30AccX69 rho + 7687115706614567605450769945243056334713925514269138545816059769883858962023*seg30AccY69 rho := by
  rw [add_assoc, seg30AccWeighted69]
  unfold Seg30.relationRow598 at r598
  simp only [Seg30.relationLc261, Seg30.relationLc261Part0, Seg30.relationLc261Part1, Seg30.relationLc261Part2, Seg30.relationLc261Part3, Seg30.relationLc261Part4] at r598
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r598 ⊢
  exact r598

theorem seg30_prefix_70_addY (rho : Nat -> Seg30.F)
    (r599 : Seg30.relationRow599 rho) :
    rho 28915*(1 + (-1)*rho 28913) = 5597214348017417900404029286172679723685784516602615786622858670295681115320 + 7079511155079999714398925576408017154871907527630316463077184212265726578920*rho 28317 + 7687115706614567605450769945243056334713925514269138545816059769883858962023*seg30AccX69 rho + 5597214348017417900404029286172679723685784516602615786622858670295681115320*seg30AccY69 rho := by
  rw [add_assoc, seg30AccWeighted69]
  unfold Seg30.relationRow599 at r599
  simp only [Seg30.relationLc262, Seg30.relationLc262Part0, Seg30.relationLc262Part1, Seg30.relationLc262Part2, Seg30.relationLc262Part3, Seg30.relationLc262Part4] at r599
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r599 ⊢
  exact r599

theorem seg30_prefix_70_selX (rho : Nat -> Seg30.F)
    (r600 : Seg30.relationRow600 rho) :
    (1*rho 28387)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX69 rho + rho 28914) = rho 28916 := by
  rw [seg30AccX69_sum]
  unfold Seg30.relationRow600 at r600
  simp only [Seg30.relationLc263, Seg30.relationLc263Part0, Seg30.relationLc263Part1, Seg30.relationLc263Part2] at r600
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r600 ⊢
  exact r600

theorem seg30_prefix_70_selY (rho : Nat -> Seg30.F)
    (r601 : Seg30.relationRow601 rho) :
    (1*rho 28387)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY69 rho + rho 28915) = rho 28917 := by
  rw [seg30AccY69_sum]
  unfold Seg30.relationRow601 at r601
  simp only [Seg30.relationLc264, Seg30.relationLc264Part0, Seg30.relationLc264Part1, Seg30.relationLc264Part2] at r601
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r601 ⊢
  exact r601


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

