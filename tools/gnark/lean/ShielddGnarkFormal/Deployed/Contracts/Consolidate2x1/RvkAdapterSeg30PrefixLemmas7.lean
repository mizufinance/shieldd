import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_prefix_71_v2 (rho : Nat -> Seg30.F)
    (r602 : Seg30.relationRow602 rho) :
    (1138038450385463163308468001875449085299714829408678439768163290155722660408*rho 28317 + 8185666225749794430846144650787739023696221861934424385315707228887955883205*seg30AccX70 rho)*(40778110472536828791940508259785450323905289024226405636143699226233867360 + 5429798299015515662944100111838631597125674244426331474003761181336372146151*rho 28317 + 40778110472536828791940508259785450323905289024226405636143699226233867360*seg30AccY70 rho) = rho 28918 := by
  rw [seg30AccX70_sum, seg30AccY70_sum]
  unfold Seg30.relationRow602 at r602
  simp only [Seg30.relationLc265, Seg30.relationLc265Part0, Seg30.relationLc265Part1, Seg30.relationLc265Part2] at r602
  simp only [Seg30.relationLc266, Seg30.relationLc266Part0, Seg30.relationLc266Part1, Seg30.relationLc266Part2] at r602
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r602 ⊢
  exact r602

theorem seg30_prefix_71_addX (rho : Nat -> Seg30.F)
    (r603 : Seg30.relationRow603 rho) :
    rho 28919*(1 + rho 28918) = 40778110472536828791940508259785450323905289024226405636143699226233867360 + 5922139678144869737035825254912920785674981757771754814671212108688778550895*rho 28317 + 2283636694392353545388244718535759585775051333779427510089528701508604400841*seg30AccX70 rho + 40778110472536828791940508259785450323905289024226405636143699226233867360*seg30AccY70 rho := by
  rw [add_assoc, seg30AccWeighted70]
  unfold Seg30.relationRow603 at r603
  simp only [Seg30.relationLc267, Seg30.relationLc267Part0, Seg30.relationLc267Part1, Seg30.relationLc267Part2, Seg30.relationLc267Part3, Seg30.relationLc267Part4] at r603
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r603 ⊢
  exact r603

theorem seg30_prefix_71_addY (rho : Nat -> Seg30.F)
    (r604 : Seg30.relationRow604 rho) :
    rho 28920*(1 + (-1)*rho 28918) = 2283636694392353545388244718535759585775051333779427510089528701508604400841 + 1093760832205737787781881875496000658544674873716306113692117833674308804177*rho 28317 + 40778110472536828791940508259785450323905289024226405636143699226233867360*seg30AccX70 rho + 2283636694392353545388244718535759585775051333779427510089528701508604400841*seg30AccY70 rho := by
  rw [add_assoc, seg30AccWeighted70]
  unfold Seg30.relationRow604 at r604
  simp only [Seg30.relationLc268, Seg30.relationLc268Part0, Seg30.relationLc268Part1, Seg30.relationLc268Part2, Seg30.relationLc268Part3, Seg30.relationLc268Part4] at r604
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r604 ⊢
  exact r604

theorem seg30_prefix_71_selX (rho : Nat -> Seg30.F)
    (r605 : Seg30.relationRow605 rho) :
    (1*rho 28388)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX70 rho + rho 28919) = rho 28921 := by
  rw [seg30AccX70_sum]
  unfold Seg30.relationRow605 at r605
  simp only [Seg30.relationLc269, Seg30.relationLc269Part0, Seg30.relationLc269Part1, Seg30.relationLc269Part2] at r605
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r605 ⊢
  exact r605

theorem seg30_prefix_71_selY (rho : Nat -> Seg30.F)
    (r606 : Seg30.relationRow606 rho) :
    (1*rho 28388)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY70 rho + rho 28920) = rho 28922 := by
  rw [seg30AccY70_sum]
  unfold Seg30.relationRow606 at r606
  simp only [Seg30.relationLc270, Seg30.relationLc270Part0, Seg30.relationLc270Part1, Seg30.relationLc270Part2] at r606
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r606 ⊢
  exact r606

theorem seg30_prefix_72_v2 (rho : Nat -> Seg30.F)
    (r607 : Seg30.relationRow607 rho) :
    (5177285811817626865424623719269477408051499024395637386483226684730555701671*rho 28317 + 1253370348878293429528158011004145692447964637774466349806330659661798099713*seg30AccX71 rho)*(3423201212938797518776818704278837478402171383041133652638194147869573620175 + 3367592843284670476747272752673000272108909791114671692752080632518020760681*rho 28317 + 3423201212938797518776818704278837478402171383041133652638194147869573620175*seg30AccY71 rho) = rho 28923 := by
  rw [seg30AccX71_sum, seg30AccY71_sum]
  unfold Seg30.relationRow607 at r607
  simp only [Seg30.relationLc271, Seg30.relationLc271Part0, Seg30.relationLc271Part1, Seg30.relationLc271Part2] at r607
  simp only [Seg30.relationLc272, Seg30.relationLc272Part0, Seg30.relationLc272Part1, Seg30.relationLc272Part2] at r607
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r607 ⊢
  exact r607

theorem seg30_prefix_72_addX (rho : Nat -> Seg30.F)
    (r608 : Seg30.relationRow608 rho) :
    rho 28924*(1 + rho 28923) = 3423201212938797518776818704278837478402171383041133652638194147869573620175 + 8311315338750137718368374081863680094975722609246674501482956493738381598260*rho 28317 + 61910469657829342192321187244024551268691741149011542722403663253838067315*seg30AccX71 rho + 3423201212938797518776818704278837478402171383041133652638194147869573620175*seg30AccY71 rho := by
  rw [add_assoc, seg30AccWeighted71]
  unfold Seg30.relationRow608 at r608
  simp only [Seg30.relationLc273, Seg30.relationLc273Part0, Seg30.relationLc273Part1, Seg30.relationLc273Part2, Seg30.relationLc273Part3, Seg30.relationLc273Part4] at r608
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r608 ⊢
  exact r608

theorem seg30_prefix_72_addY (rho : Nat -> Seg30.F)
    (r609 : Seg30.relationRow609 rho) :
    rho 28925*(1 + (-1)*rho 28923) = 61910469657829342192321187244024551268691741149011542722403663253838067315 + 4705419314553287616991508755795092976095130005674868138925901345366955008146*rho 28317 + 3423201212938797518776818704278837478402171383041133652638194147869573620175*seg30AccX71 rho + 61910469657829342192321187244024551268691741149011542722403663253838067315*seg30AccY71 rho := by
  rw [add_assoc, seg30AccWeighted71]
  unfold Seg30.relationRow609 at r609
  simp only [Seg30.relationLc274, Seg30.relationLc274Part0, Seg30.relationLc274Part1, Seg30.relationLc274Part2, Seg30.relationLc274Part3, Seg30.relationLc274Part4] at r609
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r609 ⊢
  exact r609

theorem seg30_prefix_72_selX (rho : Nat -> Seg30.F)
    (r610 : Seg30.relationRow610 rho) :
    (1*rho 28389)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX71 rho + rho 28924) = rho 28926 := by
  rw [seg30AccX71_sum]
  unfold Seg30.relationRow610 at r610
  simp only [Seg30.relationLc275, Seg30.relationLc275Part0, Seg30.relationLc275Part1, Seg30.relationLc275Part2] at r610
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r610 ⊢
  exact r610

theorem seg30_prefix_72_selY (rho : Nat -> Seg30.F)
    (r611 : Seg30.relationRow611 rho) :
    (1*rho 28389)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY71 rho + rho 28925) = rho 28927 := by
  rw [seg30AccY71_sum]
  unfold Seg30.relationRow611 at r611
  simp only [Seg30.relationLc276, Seg30.relationLc276Part0, Seg30.relationLc276Part1, Seg30.relationLc276Part2] at r611
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r611 ⊢
  exact r611

theorem seg30_prefix_73_v2 (rho : Nat -> Seg30.F)
    (r612 : Seg30.relationRow612 rho) :
    (4944622807462013599979574477380851123515144290853061497859212195669938643605*rho 28317 + 3225038647207066965249142518288305004231848817992616889755291892327653920728*seg30AccX72 rho)*(5800975776574563181778315819153109590300297498045686348443755407820703208197 + 522070924770264662150994421644969496201813472832552067666639466908629057618*rho 28317 + 5800975776574563181778315819153109590300297498045686348443755407820703208197*seg30AccY72 rho) = rho 28928 := by
  rw [seg30AccX72_sum, seg30AccY72_sum]
  unfold Seg30.relationRow612 at r612
  simp only [Seg30.relationLc277, Seg30.relationLc277Part0, Seg30.relationLc277Part1, Seg30.relationLc277Part2] at r612
  simp only [Seg30.relationLc278, Seg30.relationLc278Part0, Seg30.relationLc278Part1, Seg30.relationLc278Part2] at r612
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r612 ⊢
  exact r612

theorem seg30_prefix_73_addX (rho : Nat -> Seg30.F)
    (r613 : Seg30.relationRow613 rho) :
    rho 28929*(1 + rho 28928) = 5800975776574563181778315819153109590300297498045686348443755407820703208197 + 7662785896914428871727783057237637716081840631480129716804158652148196464157*rho 28317 + 8300176091592200879364452295849288300780958945677063264491712486763030680117*seg30AccX72 rho + 5800975776574563181778315819153109590300297498045686348443755407820703208197*seg30AccY72 rho := by
  rw [add_assoc, seg30AccWeighted72]
  unfold Seg30.relationRow613 at r613
  simp only [Seg30.relationLc279, Seg30.relationLc279Part0, Seg30.relationLc279Part1, Seg30.relationLc279Part2, Seg30.relationLc279Part3, Seg30.relationLc279Part4] at r613
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r613 ⊢
  exact r613

theorem seg30_prefix_73_addY (rho : Nat -> Seg30.F)
    (r614 : Seg30.relationRow614 rho) :
    rho 28930*(1 + (-1)*rho 28928) = 8300176091592200879364452295849288300780958945677063264491712486763030680117 + 4485325941707069071562287047850445223888634056987251509239894560844401571231*rho 28317 + 5800975776574563181778315819153109590300297498045686348443755407820703208197*seg30AccX72 rho + 8300176091592200879364452295849288300780958945677063264491712486763030680117*seg30AccY72 rho := by
  rw [add_assoc, seg30AccWeighted72]
  unfold Seg30.relationRow614 at r614
  simp only [Seg30.relationLc280, Seg30.relationLc280Part0, Seg30.relationLc280Part1, Seg30.relationLc280Part2, Seg30.relationLc280Part3, Seg30.relationLc280Part4] at r614
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r614 ⊢
  exact r614

theorem seg30_prefix_73_selX (rho : Nat -> Seg30.F)
    (r615 : Seg30.relationRow615 rho) :
    (1*rho 28390)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX72 rho + rho 28929) = rho 28931 := by
  rw [seg30AccX72_sum]
  unfold Seg30.relationRow615 at r615
  simp only [Seg30.relationLc281, Seg30.relationLc281Part0, Seg30.relationLc281Part1, Seg30.relationLc281Part2] at r615
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r615 ⊢
  exact r615

theorem seg30_prefix_73_selY (rho : Nat -> Seg30.F)
    (r616 : Seg30.relationRow616 rho) :
    (1*rho 28390)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY72 rho + rho 28930) = rho 28932 := by
  rw [seg30AccY72_sum]
  unfold Seg30.relationRow616 at r616
  simp only [Seg30.relationLc282, Seg30.relationLc282Part0, Seg30.relationLc282Part1, Seg30.relationLc282Part2] at r616
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r616 ⊢
  exact r616

theorem seg30_prefix_74_v2 (rho : Nat -> Seg30.F)
    (r617 : Seg30.relationRow617 rho) :
    (2222557722432484492449536154567798044442158058598341703639917393362435335170*rho 28317 + 7082044748100286856446498151604694946338813897682899219296387993480553190970*seg30AccX73 rho)*(3927614533486198788686347335588378941202407903962207473666179655316548101725 + 3488455227260224643982284464778928384077632489165373676849410455541685060493*rho 28317 + 3927614533486198788686347335588378941202407903962207473666179655316548101725*seg30AccY73 rho) = rho 28933 := by
  rw [seg30AccX73_sum, seg30AccY73_sum]
  unfold Seg30.relationRow617 at r617
  simp only [Seg30.relationLc283, Seg30.relationLc283Part0, Seg30.relationLc283Part1, Seg30.relationLc283Part2] at r617
  simp only [Seg30.relationLc284, Seg30.relationLc284Part0, Seg30.relationLc284Part1, Seg30.relationLc284Part2] at r617
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r617 ⊢
  exact r617

theorem seg30_prefix_74_addX (rho : Nat -> Seg30.F)
    (r618 : Seg30.relationRow618 rho) :
    rho 28934*(1 + rho 28933) = 3927614533486198788686347335588378941202407903962207473666179655316548101725 + 4562568391610746566327202807263761772390372476837587795230995879065567080727*rho 28317 + 7381814320833829264109018317290595014160447884377494672283453396761152249010*seg30AccX73 rho + 3927614533486198788686347335588378941202407903962207473666179655316548101725*seg30AccY73 rho := by
  rw [add_assoc, seg30AccWeighted73]
  unfold Seg30.relationRow618 at r618
  simp only [Seg30.relationLc285, Seg30.relationLc285Part0, Seg30.relationLc285Part1, Seg30.relationLc285Part2, Seg30.relationLc285Part3, Seg30.relationLc285Part4] at r618
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r618 ⊢
  exact r618

theorem seg30_prefix_74_addY (rho : Nat -> Seg30.F)
    (r619 : Seg30.relationRow619 rho) :
    rho 28935*(1 + (-1)*rho 28933) = 7381814320833829264109018317290595014160447884377494672283453396761152249010 + 5645150321476377598825970278298423837635391407433943536163340744350743001087*rho 28317 + 3927614533486198788686347335588378941202407903962207473666179655316548101725*seg30AccX73 rho + 7381814320833829264109018317290595014160447884377494672283453396761152249010*seg30AccY73 rho := by
  rw [add_assoc, seg30AccWeighted73]
  unfold Seg30.relationRow619 at r619
  simp only [Seg30.relationLc286, Seg30.relationLc286Part0, Seg30.relationLc286Part1, Seg30.relationLc286Part2, Seg30.relationLc286Part3, Seg30.relationLc286Part4] at r619
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r619 ⊢
  exact r619

theorem seg30_prefix_74_selX (rho : Nat -> Seg30.F)
    (r620 : Seg30.relationRow620 rho) :
    (1*rho 28391)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX73 rho + rho 28934) = rho 28936 := by
  rw [seg30AccX73_sum]
  unfold Seg30.relationRow620 at r620
  simp only [Seg30.relationLc287, Seg30.relationLc287Part0, Seg30.relationLc287Part1, Seg30.relationLc287Part2] at r620
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r620 ⊢
  exact r620

theorem seg30_prefix_74_selY (rho : Nat -> Seg30.F)
    (r621 : Seg30.relationRow621 rho) :
    (1*rho 28391)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY73 rho + rho 28935) = rho 28937 := by
  rw [seg30AccY73_sum]
  unfold Seg30.relationRow621 at r621
  simp only [Seg30.relationLc288, Seg30.relationLc288Part0, Seg30.relationLc288Part1, Seg30.relationLc288Part2] at r621
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r621 ⊢
  exact r621

theorem seg30_prefix_75_v2 (rho : Nat -> Seg30.F)
    (r622 : Seg30.relationRow622 rho) :
    (3308180320148395003367060148951043770841781088811203563984909743407139154718*rho 28317 + 4918521206950981825770953658416051531484273050008271601171788979158884211260*seg30AccX74 rho)*(3592132186427180186189109591515535823183716823436051741229810430902757201439 + 4861157098069046986977954560327357125608545616175092050901033138595367913567*rho 28317 + 3592132186427180186189109591515535823183716823436051741229810430902757201439*seg30AccY74 rho) = rho 28938 := by
  rw [seg30AccX74_sum, seg30AccY74_sum]
  unfold Seg30.relationRow622 at r622
  simp only [Seg30.relationLc289, Seg30.relationLc289Part0, Seg30.relationLc289Part1, Seg30.relationLc289Part2] at r622
  simp only [Seg30.relationLc290, Seg30.relationLc290Part0, Seg30.relationLc290Part1, Seg30.relationLc290Part2] at r622
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r622 ⊢
  exact r622

theorem seg30_prefix_75_addX (rho : Nat -> Seg30.F)
    (r623 : Seg30.relationRow623 rho) :
    rho 28939*(1 + rho 28938) = 3592132186427180186189109591515535823183716823436051741229810430902757201439 + 1147359850578098327983144469797160403851601413814635373058616603285593090816*rho 28317 + 5650836053227966769027688234007256402331074753193105351823329560869991048101*seg30AccX74 rho + 3592132186427180186189109591515535823183716823436051741229810430902757201439*seg30AccY74 rho := by
  rw [add_assoc, seg30AccWeighted74]
  unfold Seg30.relationRow623 at r623
  simp only [Seg30.relationLc291, Seg30.relationLc291Part0, Seg30.relationLc291Part1, Seg30.relationLc291Part2, Seg30.relationLc291Part3, Seg30.relationLc291Part4] at r623
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r623 ⊢
  exact r623

theorem seg30_prefix_75_addY (rho : Nat -> Seg30.F)
    (r624 : Seg30.relationRow624 rho) :
    rho 28940*(1 + (-1)*rho 28938) = 5650836053227966769027688234007256402331074753193105351823329560869991048101 + 5166411239745686018772196721073052671964494181791787460721779345450459005469*rho 28317 + 3592132186427180186189109591515535823183716823436051741229810430902757201439*seg30AccX74 rho + 5650836053227966769027688234007256402331074753193105351823329560869991048101*seg30AccY74 rho := by
  rw [add_assoc, seg30AccWeighted74]
  unfold Seg30.relationRow624 at r624
  simp only [Seg30.relationLc292, Seg30.relationLc292Part0, Seg30.relationLc292Part1, Seg30.relationLc292Part2, Seg30.relationLc292Part3, Seg30.relationLc292Part4] at r624
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r624 ⊢
  exact r624

theorem seg30_prefix_75_selX (rho : Nat -> Seg30.F)
    (r625 : Seg30.relationRow625 rho) :
    (1*rho 28392)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX74 rho + rho 28939) = rho 28941 := by
  rw [seg30AccX74_sum]
  unfold Seg30.relationRow625 at r625
  simp only [Seg30.relationLc293, Seg30.relationLc293Part0, Seg30.relationLc293Part1, Seg30.relationLc293Part2] at r625
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r625 ⊢
  exact r625

theorem seg30_prefix_75_selY (rho : Nat -> Seg30.F)
    (r626 : Seg30.relationRow626 rho) :
    (1*rho 28392)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY74 rho + rho 28940) = rho 28942 := by
  rw [seg30AccY74_sum]
  unfold Seg30.relationRow626 at r626
  simp only [Seg30.relationLc294, Seg30.relationLc294Part0, Seg30.relationLc294Part1, Seg30.relationLc294Part2] at r626
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r626 ⊢
  exact r626

theorem seg30_prefix_76_v2 (rho : Nat -> Seg30.F)
    (r627 : Seg30.relationRow627 rho) :
    (7289856983649835644629295581964117196732447368103852467141767418370340514806*rho 28317 + 1907361968556614937174139049099394714103623578024562286894512067867392714475*seg30AccX75 rho)*(1860689148370638388771608578221990110388307111969463647559037365848775488052 + 4222272296493463434832385019891670295293017199428378413167607751933780996762*rho 28317 + 1860689148370638388771608578221990110388307111969463647559037365848775488052*seg30AccY75 rho) = rho 28943 := by
  rw [seg30AccX75_sum, seg30AccY75_sum]
  unfold Seg30.relationRow627 at r627
  simp only [Seg30.relationLc295, Seg30.relationLc295Part0, Seg30.relationLc295Part1, Seg30.relationLc295Part2] at r627
  simp only [Seg30.relationLc296, Seg30.relationLc296Part0, Seg30.relationLc296Part1, Seg30.relationLc296Part2] at r627
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r627 ⊢
  exact r627

theorem seg30_prefix_76_addX (rho : Nat -> Seg30.F)
    (r628 : Seg30.relationRow628 rho) :
    rho 28944*(1 + rho 28943) = 1860689148370638388771608578221990110388307111969463647559037365848775488052 + 7061867970989804320716922129605418672169306597822777167825470620247101327163*rho 28317 + 5180236671188125458811733449391362170590415455683053570159179776856281599688*seg30AccX75 rho + 1860689148370638388771608578221990110388307111969463647559037365848775488052*seg30AccY75 rho := by
  rw [add_assoc, seg30AccWeighted75]
  unfold Seg30.relationRow628 at r628
  simp only [Seg30.relationLc297, Seg30.relationLc297Part0, Seg30.relationLc297Part1, Seg30.relationLc297Part2, Seg30.relationLc297Part3, Seg30.relationLc297Part4] at r628
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r628 ⊢
  exact r628

theorem seg30_prefix_76_addY (rho : Nat -> Seg30.F)
    (r629 : Seg30.relationRow629 rho) :
    rho 28945*(1 + (-1)*rho 28943) = 5180236671188125458811733449391362170590415455683053570159179776856281599688 + 1409662585539875679999185781335179769950752419417490626659213358189333655745*rho 28317 + 1860689148370638388771608578221990110388307111969463647559037365848775488052*seg30AccX75 rho + 5180236671188125458811733449391362170590415455683053570159179776856281599688*seg30AccY75 rho := by
  rw [add_assoc, seg30AccWeighted75]
  unfold Seg30.relationRow629 at r629
  simp only [Seg30.relationLc298, Seg30.relationLc298Part0, Seg30.relationLc298Part1, Seg30.relationLc298Part2, Seg30.relationLc298Part3, Seg30.relationLc298Part4] at r629
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r629 ⊢
  exact r629

theorem seg30_prefix_76_selX (rho : Nat -> Seg30.F)
    (r630 : Seg30.relationRow630 rho) :
    (1*rho 28393)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX75 rho + rho 28944) = rho 28946 := by
  rw [seg30AccX75_sum]
  unfold Seg30.relationRow630 at r630
  simp only [Seg30.relationLc299, Seg30.relationLc299Part0, Seg30.relationLc299Part1, Seg30.relationLc299Part2] at r630
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r630 ⊢
  exact r630

theorem seg30_prefix_76_selY (rho : Nat -> Seg30.F)
    (r631 : Seg30.relationRow631 rho) :
    (1*rho 28393)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY75 rho + rho 28945) = rho 28947 := by
  rw [seg30AccY75_sum]
  unfold Seg30.relationRow631 at r631
  simp only [Seg30.relationLc300, Seg30.relationLc300Part0, Seg30.relationLc300Part1, Seg30.relationLc300Part2] at r631
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r631 ⊢
  exact r631

theorem seg30_prefix_77_v2 (rho : Nat -> Seg30.F)
    (r632 : Seg30.relationRow632 rho) :
    (4556647832234439029301725765286109558286714328354525395674184535529452263012*rho 28317 + 5280468971504914988808723380835196575529785503777731781354790395125657121753*seg30AccX76 rho)*(7865384328237766971312513165828874914869032229208936773290604428377426164264 + 3600144711730309239972511100011485673137307178139337070672969143704325140384*rho 28317 + 7865384328237766971312513165828874914869032229208936773290604428377426164264*seg30AccY76 rho) = rho 28948 := by
  rw [seg30AccX76_sum, seg30AccY76_sum]
  unfold Seg30.relationRow632 at r632
  simp only [Seg30.relationLc301, Seg30.relationLc301Part0, Seg30.relationLc301Part1, Seg30.relationLc301Part2] at r632
  simp only [Seg30.relationLc302, Seg30.relationLc302Part0, Seg30.relationLc302Part1, Seg30.relationLc302Part2] at r632
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r632 ⊢
  exact r632

theorem seg30_prefix_77_addX (rho : Nat -> Seg30.F)
    (r633 : Seg30.relationRow633 rho) :
    rho 28949*(1 + rho 28948) = 7865384328237766971312513165828874914869032229208936773290604428377426164264 + 3411575777228854506500277280060522728888623152829134550016258885357137329728*rho 28317 + 742490179599478013046920666056916592979193349658922425085796642242052004458*seg30AccX76 rho + 7865384328237766971312513165828874914869032229208936773290604428377426164264*seg30AccY76 rho := by
  rw [add_assoc, seg30AccWeighted76]
  unfold Seg30.relationRow633 at r633
  simp only [Seg30.relationLc303, Seg30.relationLc303Part0, Seg30.relationLc303Part1, Seg30.relationLc303Part2, Seg30.relationLc303Part3, Seg30.relationLc303Part4] at r633
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r633 ⊢
  exact r633

theorem seg30_prefix_77_addY (rho : Nat -> Seg30.F)
    (r634 : Seg30.relationRow634 rho) :
    rho 28950*(1 + (-1)*rho 28948) = 742490179599478013046920666056916592979193349658922425085796642242052004458 + 5126820015755109312404685105978555226239595498435133393189054043085659429469*rho 28317 + 7865384328237766971312513165828874914869032229208936773290604428377426164264*seg30AccX76 rho + 742490179599478013046920666056916592979193349658922425085796642242052004458*seg30AccY76 rho := by
  rw [add_assoc, seg30AccWeighted76]
  unfold Seg30.relationRow634 at r634
  simp only [Seg30.relationLc304, Seg30.relationLc304Part0, Seg30.relationLc304Part1, Seg30.relationLc304Part2, Seg30.relationLc304Part3, Seg30.relationLc304Part4] at r634
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r634 ⊢
  exact r634

theorem seg30_prefix_77_selX (rho : Nat -> Seg30.F)
    (r635 : Seg30.relationRow635 rho) :
    (1*rho 28394)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX76 rho + rho 28949) = rho 28951 := by
  rw [seg30AccX76_sum]
  unfold Seg30.relationRow635 at r635
  simp only [Seg30.relationLc305, Seg30.relationLc305Part0, Seg30.relationLc305Part1, Seg30.relationLc305Part2] at r635
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r635 ⊢
  exact r635

theorem seg30_prefix_77_selY (rho : Nat -> Seg30.F)
    (r636 : Seg30.relationRow636 rho) :
    (1*rho 28394)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY76 rho + rho 28950) = rho 28952 := by
  rw [seg30AccY76_sum]
  unfold Seg30.relationRow636 at r636
  simp only [Seg30.relationLc306, Seg30.relationLc306Part0, Seg30.relationLc306Part1, Seg30.relationLc306Part2] at r636
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r636 ⊢
  exact r636

theorem seg30_prefix_78_v2 (rho : Nat -> Seg30.F)
    (r637 : Seg30.relationRow637 rho) :
    (6306593912445370681793633410212297214903176766492704290603546068880324800889*rho 28317 + 4195623733406376273792904174350645917923395446527071264275902358499815355703*seg30AccX77 rho)*(362577996003105924235076455902846944420072260336336196539692441441546031850 + 5474128706966524990545732930483669184775460332410376694904291933835612399336*rho 28317 + 362577996003105924235076455902846944420072260336336196539692441441546031850*seg30AccY77 rho) = rho 28953 := by
  rw [seg30AccX77_sum, seg30AccY77_sum]
  unfold Seg30.relationRow637 at r637
  simp only [Seg30.relationLc307, Seg30.relationLc307Part0, Seg30.relationLc307Part1, Seg30.relationLc307Part2] at r637
  simp only [Seg30.relationLc308, Seg30.relationLc308Part0, Seg30.relationLc308Part1, Seg30.relationLc308Part2] at r637
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r637 ⊢
  exact r637

theorem seg30_prefix_78_addX (rho : Nat -> Seg30.F)
    (r638 : Seg30.relationRow638 rho) :
    rho 28954*(1 + rho 28953) = 362577996003105924235076455902846944420072260336336196539692441441546031850 + 1889905658107155945981201727886346476221876859972054554238849703490310933302*rho 28317 + 6723974224133941491755119788793104949975823004466087579426849508056891438348*seg30AccX77 rho + 362577996003105924235076455902846944420072260336336196539692441441546031850*seg30AccY77 rho := by
  rw [add_assoc, seg30AccWeighted77]
  unfold Seg30.relationRow638 at r638
  simp only [Seg30.relationLc309, Seg30.relationLc309Part0, Seg30.relationLc309Part1, Seg30.relationLc309Part2, Seg30.relationLc309Part3, Seg30.relationLc309Part4] at r638
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r638 ⊢
  exact r638

theorem seg30_prefix_78_addY (rho : Nat -> Seg30.F)
    (r639 : Seg30.relationRow639 rho) :
    rho 28955*(1 + (-1)*rho 28953) = 6723974224133941491755119788793104949975823004466087579426849508056891438348 + 2096538376241753716798571118297109287092753035399130962288541335804405738151*rho 28317 + 362577996003105924235076455902846944420072260336336196539692441441546031850*seg30AccX77 rho + 6723974224133941491755119788793104949975823004466087579426849508056891438348*seg30AccY77 rho := by
  rw [add_assoc, seg30AccWeighted77]
  unfold Seg30.relationRow639 at r639
  simp only [Seg30.relationLc310, Seg30.relationLc310Part0, Seg30.relationLc310Part1, Seg30.relationLc310Part2, Seg30.relationLc310Part3, Seg30.relationLc310Part4] at r639
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r639 ⊢
  exact r639

theorem seg30_prefix_78_selX (rho : Nat -> Seg30.F)
    (r640 : Seg30.relationRow640 rho) :
    (1*rho 28395)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX77 rho + rho 28954) = rho 28956 := by
  rw [seg30AccX77_sum]
  unfold Seg30.relationRow640 at r640
  simp only [Seg30.relationLc311, Seg30.relationLc311Part0, Seg30.relationLc311Part1, Seg30.relationLc311Part2] at r640
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r640 ⊢
  exact r640

theorem seg30_prefix_78_selY (rho : Nat -> Seg30.F)
    (r641 : Seg30.relationRow641 rho) :
    (1*rho 28395)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY77 rho + rho 28955) = rho 28957 := by
  rw [seg30AccY77_sum]
  unfold Seg30.relationRow641 at r641
  simp only [Seg30.relationLc312, Seg30.relationLc312Part0, Seg30.relationLc312Part1, Seg30.relationLc312Part2] at r641
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r641 ⊢
  exact r641

theorem seg30_prefix_79_v2 (rho : Nat -> Seg30.F)
    (r642 : Seg30.relationRow642 rho) :
    (8353451365575389895420713276252437744296542059476952895769368578101377270479*rho 28317 + 1413911105099657135291792788556059165546956689872882273894997138390302031093*seg30AccX78 rho)*(2374684346225205188650120977020710657336063338698619375553401752431435740416 + 1627794521326751861359370178242313064265856034398423533990142366307677810046*rho 28317 + 2374684346225205188650120977020710657336063338698619375553401752431435740416*seg30AccY78 rho) = rho 28958 := by
  rw [seg30AccX78_sum, seg30AccY78_sum]
  unfold Seg30.relationRow642 at r642
  simp only [Seg30.relationLc313, Seg30.relationLc313Part0, Seg30.relationLc313Part1, Seg30.relationLc313Part2] at r642
  simp only [Seg30.relationLc314, Seg30.relationLc314Part0, Seg30.relationLc314Part1, Seg30.relationLc314Part2] at r642
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r642 ⊢
  exact r642

theorem seg30_prefix_79_addX (rho : Nat -> Seg30.F)
    (r643 : Seg30.relationRow643 rho) :
    rho 28959*(1 + rho 28958) = 2374684346225205188650120977020710657336063338698619375553401752431435740416 + 1963194852193203854203140744608170884516775783800214513275167904153514644444*rho 28317 + 8179380665320262005457581451063674680559890238778769825492349582639102858479*seg30AccX78 rho + 2374684346225205188650120977020710657336063338698619375553401752431435740416*seg30AccY78 rho := by
  rw [add_assoc, seg30AccWeighted78]
  unfold Seg30.relationRow643 at r643
  simp only [Seg30.relationLc315, Seg30.relationLc315Part0, Seg30.relationLc315Part1, Seg30.relationLc315Part2, Seg30.relationLc315Part3, Seg30.relationLc315Part4] at r643
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r643 ⊢
  exact r643

theorem seg30_prefix_79_addY (rho : Nat -> Seg30.F)
    (r644 : Seg30.relationRow644 rho) :
    rho 28960*(1 + (-1)*rho 28958) = 8179380665320262005457581451063674680559890238778769825492349582639102858479 + 4713702755110331543474491408240107297403414201301135916108963537789741442495*rho 28317 + 2374684346225205188650120977020710657336063338698619375553401752431435740416*seg30AccX78 rho + 8179380665320262005457581451063674680559890238778769825492349582639102858479*seg30AccY78 rho := by
  rw [add_assoc, seg30AccWeighted78]
  unfold Seg30.relationRow644 at r644
  simp only [Seg30.relationLc316, Seg30.relationLc316Part0, Seg30.relationLc316Part1, Seg30.relationLc316Part2, Seg30.relationLc316Part3, Seg30.relationLc316Part4] at r644
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r644 ⊢
  exact r644

theorem seg30_prefix_79_selX (rho : Nat -> Seg30.F)
    (r645 : Seg30.relationRow645 rho) :
    (1*rho 28396)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX78 rho + rho 28959) = rho 28961 := by
  rw [seg30AccX78_sum]
  unfold Seg30.relationRow645 at r645
  simp only [Seg30.relationLc317, Seg30.relationLc317Part0, Seg30.relationLc317Part1, Seg30.relationLc317Part2] at r645
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r645 ⊢
  exact r645

theorem seg30_prefix_79_selY (rho : Nat -> Seg30.F)
    (r646 : Seg30.relationRow646 rho) :
    (1*rho 28396)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY78 rho + rho 28960) = rho 28962 := by
  rw [seg30AccY78_sum]
  unfold Seg30.relationRow646 at r646
  simp only [Seg30.relationLc318, Seg30.relationLc318Part0, Seg30.relationLc318Part1, Seg30.relationLc318Part2] at r646
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r646 ⊢
  exact r646

theorem seg30_prefix_80_v2 (rho : Nat -> Seg30.F)
    (r647 : Seg30.relationRow647 rho) :
    (3240388181392711470302623400092573262502763043986311877675923455854650277543*rho 28317 + 435443019248027373572209328981659234170213225482121712799853667443266468176*seg30AccX79 rho)*(5087434312801730417605866464522622496729984521401512386003450836701688677694 + 8359927174140099073163808715029987177202746736101787838973659665157973465362*rho 28317 + 5087434312801730417605866464522622496729984521401512386003450836701688677694*seg30AccY79 rho) = rho 28963 := by
  rw [seg30AccX79_sum, seg30AccY79_sum]
  unfold Seg30.relationRow647 at r647
  simp only [Seg30.relationLc319, Seg30.relationLc319Part0, Seg30.relationLc319Part1, Seg30.relationLc319Part2] at r647
  simp only [Seg30.relationLc320, Seg30.relationLc320Part0, Seg30.relationLc320Part1, Seg30.relationLc320Part2] at r647
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r647 ⊢
  exact r647

theorem seg30_prefix_80_addX (rho : Nat -> Seg30.F)
    (r648 : Seg30.relationRow648 rho) :
    rho 28964*(1 + rho 28963) = 5087434312801730417605866464522622496729984521401512386003450836701688677694 + 1255464619070411914285884063926842950292772109515344959551717420376047071663*rho 28317 + 4223772640319601369882008173395530773963308212063314321656053494061121690387*seg30AccX79 rho + 5087434312801730417605866464522622496729984521401512386003450836701688677694*seg30AccY79 rho := by
  rw [add_assoc, seg30AccWeighted79]
  unfold Seg30.relationRow648 at r648
  simp only [Seg30.relationLc321, Seg30.relationLc321Part0, Seg30.relationLc321Part1, Seg30.relationLc321Part2, Seg30.relationLc321Part3, Seg30.relationLc321Part4] at r648
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r648 ⊢
  exact r648

theorem seg30_prefix_80_addY (rho : Nat -> Seg30.F)
    (r649 : Seg30.relationRow649 rho) :
    rho 28965*(1 + (-1)*rho 28963) = 4223772640319601369882008173395530773963308212063314321656053494061121690387 + 5201334774209604017645676000956203413974006481900791533392360915641172360594*rho 28317 + 5087434312801730417605866464522622496729984521401512386003450836701688677694*seg30AccX79 rho + 4223772640319601369882008173395530773963308212063314321656053494061121690387*seg30AccY79 rho := by
  rw [add_assoc, seg30AccWeighted79]
  unfold Seg30.relationRow649 at r649
  simp only [Seg30.relationLc322, Seg30.relationLc322Part0, Seg30.relationLc322Part1, Seg30.relationLc322Part2, Seg30.relationLc322Part3, Seg30.relationLc322Part4] at r649
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r649 ⊢
  exact r649

theorem seg30_prefix_80_selX (rho : Nat -> Seg30.F)
    (r650 : Seg30.relationRow650 rho) :
    (1*rho 28397)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX79 rho + rho 28964) = rho 28966 := by
  rw [seg30AccX79_sum]
  unfold Seg30.relationRow650 at r650
  simp only [Seg30.relationLc323, Seg30.relationLc323Part0, Seg30.relationLc323Part1, Seg30.relationLc323Part2] at r650
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r650 ⊢
  exact r650

theorem seg30_prefix_80_selY (rho : Nat -> Seg30.F)
    (r651 : Seg30.relationRow651 rho) :
    (1*rho 28397)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY79 rho + rho 28965) = rho 28967 := by
  rw [seg30AccY79_sum]
  unfold Seg30.relationRow651 at r651
  simp only [Seg30.relationLc324, Seg30.relationLc324Part0, Seg30.relationLc324Part1, Seg30.relationLc324Part2] at r651
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r651 ⊢
  exact r651


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

