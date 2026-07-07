import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_prefix_71_v2 (rho : Nat -> Seg31.F)
    (r602 : Seg31.relationRow602 rho) :
    (1138038450385463163308468001875449085299714829408678439768163290155722660408*rho 29271 + 8185666225749794430846144650787739023696221861934424385315707228887955883205*seg31AccX70 rho)*(40778110472536828791940508259785450323905289024226405636143699226233867360 + 5429798299015515662944100111838631597125674244426331474003761181336372146151*rho 29271 + 40778110472536828791940508259785450323905289024226405636143699226233867360*seg31AccY70 rho) = rho 29872 := by
  rw [seg31AccX70_sum, seg31AccY70_sum]
  unfold Seg31.relationRow602 at r602
  simp only [Seg31.relationLc265, Seg31.relationLc265Part0, Seg31.relationLc265Part1, Seg31.relationLc265Part2] at r602
  simp only [Seg31.relationLc266, Seg31.relationLc266Part0, Seg31.relationLc266Part1, Seg31.relationLc266Part2] at r602
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r602 ⊢
  exact r602

theorem seg31_prefix_71_addX (rho : Nat -> Seg31.F)
    (r603 : Seg31.relationRow603 rho) :
    rho 29873*(1 + rho 29872) = 40778110472536828791940508259785450323905289024226405636143699226233867360 + 5922139678144869737035825254912920785674981757771754814671212108688778550895*rho 29271 + 2283636694392353545388244718535759585775051333779427510089528701508604400841*seg31AccX70 rho + 40778110472536828791940508259785450323905289024226405636143699226233867360*seg31AccY70 rho := by
  rw [add_assoc, seg31AccWeighted70]
  unfold Seg31.relationRow603 at r603
  simp only [Seg31.relationLc267, Seg31.relationLc267Part0, Seg31.relationLc267Part1, Seg31.relationLc267Part2, Seg31.relationLc267Part3, Seg31.relationLc267Part4] at r603
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r603 ⊢
  exact r603

theorem seg31_prefix_71_addY (rho : Nat -> Seg31.F)
    (r604 : Seg31.relationRow604 rho) :
    rho 29874*(1 + (-1)*rho 29872) = 2283636694392353545388244718535759585775051333779427510089528701508604400841 + 1093760832205737787781881875496000658544674873716306113692117833674308804177*rho 29271 + 40778110472536828791940508259785450323905289024226405636143699226233867360*seg31AccX70 rho + 2283636694392353545388244718535759585775051333779427510089528701508604400841*seg31AccY70 rho := by
  rw [add_assoc, seg31AccWeighted70]
  unfold Seg31.relationRow604 at r604
  simp only [Seg31.relationLc268, Seg31.relationLc268Part0, Seg31.relationLc268Part1, Seg31.relationLc268Part2, Seg31.relationLc268Part3, Seg31.relationLc268Part4] at r604
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r604 ⊢
  exact r604

theorem seg31_prefix_71_selX (rho : Nat -> Seg31.F)
    (r605 : Seg31.relationRow605 rho) :
    (1*rho 29342)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX70 rho + rho 29873) = rho 29875 := by
  rw [seg31AccX70_sum]
  unfold Seg31.relationRow605 at r605
  simp only [Seg31.relationLc269, Seg31.relationLc269Part0, Seg31.relationLc269Part1, Seg31.relationLc269Part2] at r605
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r605 ⊢
  exact r605

theorem seg31_prefix_71_selY (rho : Nat -> Seg31.F)
    (r606 : Seg31.relationRow606 rho) :
    (1*rho 29342)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY70 rho + rho 29874) = rho 29876 := by
  rw [seg31AccY70_sum]
  unfold Seg31.relationRow606 at r606
  simp only [Seg31.relationLc270, Seg31.relationLc270Part0, Seg31.relationLc270Part1, Seg31.relationLc270Part2] at r606
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r606 ⊢
  exact r606

theorem seg31_prefix_72_v2 (rho : Nat -> Seg31.F)
    (r607 : Seg31.relationRow607 rho) :
    (5177285811817626865424623719269477408051499024395637386483226684730555701671*rho 29271 + 1253370348878293429528158011004145692447964637774466349806330659661798099713*seg31AccX71 rho)*(3423201212938797518776818704278837478402171383041133652638194147869573620175 + 3367592843284670476747272752673000272108909791114671692752080632518020760681*rho 29271 + 3423201212938797518776818704278837478402171383041133652638194147869573620175*seg31AccY71 rho) = rho 29877 := by
  rw [seg31AccX71_sum, seg31AccY71_sum]
  unfold Seg31.relationRow607 at r607
  simp only [Seg31.relationLc271, Seg31.relationLc271Part0, Seg31.relationLc271Part1, Seg31.relationLc271Part2] at r607
  simp only [Seg31.relationLc272, Seg31.relationLc272Part0, Seg31.relationLc272Part1, Seg31.relationLc272Part2] at r607
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r607 ⊢
  exact r607

theorem seg31_prefix_72_addX (rho : Nat -> Seg31.F)
    (r608 : Seg31.relationRow608 rho) :
    rho 29878*(1 + rho 29877) = 3423201212938797518776818704278837478402171383041133652638194147869573620175 + 8311315338750137718368374081863680094975722609246674501482956493738381598260*rho 29271 + 61910469657829342192321187244024551268691741149011542722403663253838067315*seg31AccX71 rho + 3423201212938797518776818704278837478402171383041133652638194147869573620175*seg31AccY71 rho := by
  rw [add_assoc, seg31AccWeighted71]
  unfold Seg31.relationRow608 at r608
  simp only [Seg31.relationLc273, Seg31.relationLc273Part0, Seg31.relationLc273Part1, Seg31.relationLc273Part2, Seg31.relationLc273Part3, Seg31.relationLc273Part4] at r608
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r608 ⊢
  exact r608

theorem seg31_prefix_72_addY (rho : Nat -> Seg31.F)
    (r609 : Seg31.relationRow609 rho) :
    rho 29879*(1 + (-1)*rho 29877) = 61910469657829342192321187244024551268691741149011542722403663253838067315 + 4705419314553287616991508755795092976095130005674868138925901345366955008146*rho 29271 + 3423201212938797518776818704278837478402171383041133652638194147869573620175*seg31AccX71 rho + 61910469657829342192321187244024551268691741149011542722403663253838067315*seg31AccY71 rho := by
  rw [add_assoc, seg31AccWeighted71]
  unfold Seg31.relationRow609 at r609
  simp only [Seg31.relationLc274, Seg31.relationLc274Part0, Seg31.relationLc274Part1, Seg31.relationLc274Part2, Seg31.relationLc274Part3, Seg31.relationLc274Part4] at r609
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r609 ⊢
  exact r609

theorem seg31_prefix_72_selX (rho : Nat -> Seg31.F)
    (r610 : Seg31.relationRow610 rho) :
    (1*rho 29343)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX71 rho + rho 29878) = rho 29880 := by
  rw [seg31AccX71_sum]
  unfold Seg31.relationRow610 at r610
  simp only [Seg31.relationLc275, Seg31.relationLc275Part0, Seg31.relationLc275Part1, Seg31.relationLc275Part2] at r610
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r610 ⊢
  exact r610

theorem seg31_prefix_72_selY (rho : Nat -> Seg31.F)
    (r611 : Seg31.relationRow611 rho) :
    (1*rho 29343)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY71 rho + rho 29879) = rho 29881 := by
  rw [seg31AccY71_sum]
  unfold Seg31.relationRow611 at r611
  simp only [Seg31.relationLc276, Seg31.relationLc276Part0, Seg31.relationLc276Part1, Seg31.relationLc276Part2] at r611
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r611 ⊢
  exact r611

theorem seg31_prefix_73_v2 (rho : Nat -> Seg31.F)
    (r612 : Seg31.relationRow612 rho) :
    (4944622807462013599979574477380851123515144290853061497859212195669938643605*rho 29271 + 3225038647207066965249142518288305004231848817992616889755291892327653920728*seg31AccX72 rho)*(5800975776574563181778315819153109590300297498045686348443755407820703208197 + 522070924770264662150994421644969496201813472832552067666639466908629057618*rho 29271 + 5800975776574563181778315819153109590300297498045686348443755407820703208197*seg31AccY72 rho) = rho 29882 := by
  rw [seg31AccX72_sum, seg31AccY72_sum]
  unfold Seg31.relationRow612 at r612
  simp only [Seg31.relationLc277, Seg31.relationLc277Part0, Seg31.relationLc277Part1, Seg31.relationLc277Part2] at r612
  simp only [Seg31.relationLc278, Seg31.relationLc278Part0, Seg31.relationLc278Part1, Seg31.relationLc278Part2] at r612
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r612 ⊢
  exact r612

theorem seg31_prefix_73_addX (rho : Nat -> Seg31.F)
    (r613 : Seg31.relationRow613 rho) :
    rho 29883*(1 + rho 29882) = 5800975776574563181778315819153109590300297498045686348443755407820703208197 + 7662785896914428871727783057237637716081840631480129716804158652148196464157*rho 29271 + 8300176091592200879364452295849288300780958945677063264491712486763030680117*seg31AccX72 rho + 5800975776574563181778315819153109590300297498045686348443755407820703208197*seg31AccY72 rho := by
  rw [add_assoc, seg31AccWeighted72]
  unfold Seg31.relationRow613 at r613
  simp only [Seg31.relationLc279, Seg31.relationLc279Part0, Seg31.relationLc279Part1, Seg31.relationLc279Part2, Seg31.relationLc279Part3, Seg31.relationLc279Part4] at r613
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r613 ⊢
  exact r613

theorem seg31_prefix_73_addY (rho : Nat -> Seg31.F)
    (r614 : Seg31.relationRow614 rho) :
    rho 29884*(1 + (-1)*rho 29882) = 8300176091592200879364452295849288300780958945677063264491712486763030680117 + 4485325941707069071562287047850445223888634056987251509239894560844401571231*rho 29271 + 5800975776574563181778315819153109590300297498045686348443755407820703208197*seg31AccX72 rho + 8300176091592200879364452295849288300780958945677063264491712486763030680117*seg31AccY72 rho := by
  rw [add_assoc, seg31AccWeighted72]
  unfold Seg31.relationRow614 at r614
  simp only [Seg31.relationLc280, Seg31.relationLc280Part0, Seg31.relationLc280Part1, Seg31.relationLc280Part2, Seg31.relationLc280Part3, Seg31.relationLc280Part4] at r614
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r614 ⊢
  exact r614

theorem seg31_prefix_73_selX (rho : Nat -> Seg31.F)
    (r615 : Seg31.relationRow615 rho) :
    (1*rho 29344)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX72 rho + rho 29883) = rho 29885 := by
  rw [seg31AccX72_sum]
  unfold Seg31.relationRow615 at r615
  simp only [Seg31.relationLc281, Seg31.relationLc281Part0, Seg31.relationLc281Part1, Seg31.relationLc281Part2] at r615
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r615 ⊢
  exact r615

theorem seg31_prefix_73_selY (rho : Nat -> Seg31.F)
    (r616 : Seg31.relationRow616 rho) :
    (1*rho 29344)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY72 rho + rho 29884) = rho 29886 := by
  rw [seg31AccY72_sum]
  unfold Seg31.relationRow616 at r616
  simp only [Seg31.relationLc282, Seg31.relationLc282Part0, Seg31.relationLc282Part1, Seg31.relationLc282Part2] at r616
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r616 ⊢
  exact r616

theorem seg31_prefix_74_v2 (rho : Nat -> Seg31.F)
    (r617 : Seg31.relationRow617 rho) :
    (2222557722432484492449536154567798044442158058598341703639917393362435335170*rho 29271 + 7082044748100286856446498151604694946338813897682899219296387993480553190970*seg31AccX73 rho)*(3927614533486198788686347335588378941202407903962207473666179655316548101725 + 3488455227260224643982284464778928384077632489165373676849410455541685060493*rho 29271 + 3927614533486198788686347335588378941202407903962207473666179655316548101725*seg31AccY73 rho) = rho 29887 := by
  rw [seg31AccX73_sum, seg31AccY73_sum]
  unfold Seg31.relationRow617 at r617
  simp only [Seg31.relationLc283, Seg31.relationLc283Part0, Seg31.relationLc283Part1, Seg31.relationLc283Part2] at r617
  simp only [Seg31.relationLc284, Seg31.relationLc284Part0, Seg31.relationLc284Part1, Seg31.relationLc284Part2] at r617
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r617 ⊢
  exact r617

theorem seg31_prefix_74_addX (rho : Nat -> Seg31.F)
    (r618 : Seg31.relationRow618 rho) :
    rho 29888*(1 + rho 29887) = 3927614533486198788686347335588378941202407903962207473666179655316548101725 + 4562568391610746566327202807263761772390372476837587795230995879065567080727*rho 29271 + 7381814320833829264109018317290595014160447884377494672283453396761152249010*seg31AccX73 rho + 3927614533486198788686347335588378941202407903962207473666179655316548101725*seg31AccY73 rho := by
  rw [add_assoc, seg31AccWeighted73]
  unfold Seg31.relationRow618 at r618
  simp only [Seg31.relationLc285, Seg31.relationLc285Part0, Seg31.relationLc285Part1, Seg31.relationLc285Part2, Seg31.relationLc285Part3, Seg31.relationLc285Part4] at r618
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r618 ⊢
  exact r618

theorem seg31_prefix_74_addY (rho : Nat -> Seg31.F)
    (r619 : Seg31.relationRow619 rho) :
    rho 29889*(1 + (-1)*rho 29887) = 7381814320833829264109018317290595014160447884377494672283453396761152249010 + 5645150321476377598825970278298423837635391407433943536163340744350743001087*rho 29271 + 3927614533486198788686347335588378941202407903962207473666179655316548101725*seg31AccX73 rho + 7381814320833829264109018317290595014160447884377494672283453396761152249010*seg31AccY73 rho := by
  rw [add_assoc, seg31AccWeighted73]
  unfold Seg31.relationRow619 at r619
  simp only [Seg31.relationLc286, Seg31.relationLc286Part0, Seg31.relationLc286Part1, Seg31.relationLc286Part2, Seg31.relationLc286Part3, Seg31.relationLc286Part4] at r619
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r619 ⊢
  exact r619

theorem seg31_prefix_74_selX (rho : Nat -> Seg31.F)
    (r620 : Seg31.relationRow620 rho) :
    (1*rho 29345)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX73 rho + rho 29888) = rho 29890 := by
  rw [seg31AccX73_sum]
  unfold Seg31.relationRow620 at r620
  simp only [Seg31.relationLc287, Seg31.relationLc287Part0, Seg31.relationLc287Part1, Seg31.relationLc287Part2] at r620
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r620 ⊢
  exact r620

theorem seg31_prefix_74_selY (rho : Nat -> Seg31.F)
    (r621 : Seg31.relationRow621 rho) :
    (1*rho 29345)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY73 rho + rho 29889) = rho 29891 := by
  rw [seg31AccY73_sum]
  unfold Seg31.relationRow621 at r621
  simp only [Seg31.relationLc288, Seg31.relationLc288Part0, Seg31.relationLc288Part1, Seg31.relationLc288Part2] at r621
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r621 ⊢
  exact r621

theorem seg31_prefix_75_v2 (rho : Nat -> Seg31.F)
    (r622 : Seg31.relationRow622 rho) :
    (3308180320148395003367060148951043770841781088811203563984909743407139154718*rho 29271 + 4918521206950981825770953658416051531484273050008271601171788979158884211260*seg31AccX74 rho)*(3592132186427180186189109591515535823183716823436051741229810430902757201439 + 4861157098069046986977954560327357125608545616175092050901033138595367913567*rho 29271 + 3592132186427180186189109591515535823183716823436051741229810430902757201439*seg31AccY74 rho) = rho 29892 := by
  rw [seg31AccX74_sum, seg31AccY74_sum]
  unfold Seg31.relationRow622 at r622
  simp only [Seg31.relationLc289, Seg31.relationLc289Part0, Seg31.relationLc289Part1, Seg31.relationLc289Part2] at r622
  simp only [Seg31.relationLc290, Seg31.relationLc290Part0, Seg31.relationLc290Part1, Seg31.relationLc290Part2] at r622
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r622 ⊢
  exact r622

theorem seg31_prefix_75_addX (rho : Nat -> Seg31.F)
    (r623 : Seg31.relationRow623 rho) :
    rho 29893*(1 + rho 29892) = 3592132186427180186189109591515535823183716823436051741229810430902757201439 + 1147359850578098327983144469797160403851601413814635373058616603285593090816*rho 29271 + 5650836053227966769027688234007256402331074753193105351823329560869991048101*seg31AccX74 rho + 3592132186427180186189109591515535823183716823436051741229810430902757201439*seg31AccY74 rho := by
  rw [add_assoc, seg31AccWeighted74]
  unfold Seg31.relationRow623 at r623
  simp only [Seg31.relationLc291, Seg31.relationLc291Part0, Seg31.relationLc291Part1, Seg31.relationLc291Part2, Seg31.relationLc291Part3, Seg31.relationLc291Part4] at r623
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r623 ⊢
  exact r623

theorem seg31_prefix_75_addY (rho : Nat -> Seg31.F)
    (r624 : Seg31.relationRow624 rho) :
    rho 29894*(1 + (-1)*rho 29892) = 5650836053227966769027688234007256402331074753193105351823329560869991048101 + 5166411239745686018772196721073052671964494181791787460721779345450459005469*rho 29271 + 3592132186427180186189109591515535823183716823436051741229810430902757201439*seg31AccX74 rho + 5650836053227966769027688234007256402331074753193105351823329560869991048101*seg31AccY74 rho := by
  rw [add_assoc, seg31AccWeighted74]
  unfold Seg31.relationRow624 at r624
  simp only [Seg31.relationLc292, Seg31.relationLc292Part0, Seg31.relationLc292Part1, Seg31.relationLc292Part2, Seg31.relationLc292Part3, Seg31.relationLc292Part4] at r624
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r624 ⊢
  exact r624

theorem seg31_prefix_75_selX (rho : Nat -> Seg31.F)
    (r625 : Seg31.relationRow625 rho) :
    (1*rho 29346)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX74 rho + rho 29893) = rho 29895 := by
  rw [seg31AccX74_sum]
  unfold Seg31.relationRow625 at r625
  simp only [Seg31.relationLc293, Seg31.relationLc293Part0, Seg31.relationLc293Part1, Seg31.relationLc293Part2] at r625
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r625 ⊢
  exact r625

theorem seg31_prefix_75_selY (rho : Nat -> Seg31.F)
    (r626 : Seg31.relationRow626 rho) :
    (1*rho 29346)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY74 rho + rho 29894) = rho 29896 := by
  rw [seg31AccY74_sum]
  unfold Seg31.relationRow626 at r626
  simp only [Seg31.relationLc294, Seg31.relationLc294Part0, Seg31.relationLc294Part1, Seg31.relationLc294Part2] at r626
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r626 ⊢
  exact r626

theorem seg31_prefix_76_v2 (rho : Nat -> Seg31.F)
    (r627 : Seg31.relationRow627 rho) :
    (7289856983649835644629295581964117196732447368103852467141767418370340514806*rho 29271 + 1907361968556614937174139049099394714103623578024562286894512067867392714475*seg31AccX75 rho)*(1860689148370638388771608578221990110388307111969463647559037365848775488052 + 4222272296493463434832385019891670295293017199428378413167607751933780996762*rho 29271 + 1860689148370638388771608578221990110388307111969463647559037365848775488052*seg31AccY75 rho) = rho 29897 := by
  rw [seg31AccX75_sum, seg31AccY75_sum]
  unfold Seg31.relationRow627 at r627
  simp only [Seg31.relationLc295, Seg31.relationLc295Part0, Seg31.relationLc295Part1, Seg31.relationLc295Part2] at r627
  simp only [Seg31.relationLc296, Seg31.relationLc296Part0, Seg31.relationLc296Part1, Seg31.relationLc296Part2] at r627
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r627 ⊢
  exact r627

theorem seg31_prefix_76_addX (rho : Nat -> Seg31.F)
    (r628 : Seg31.relationRow628 rho) :
    rho 29898*(1 + rho 29897) = 1860689148370638388771608578221990110388307111969463647559037365848775488052 + 7061867970989804320716922129605418672169306597822777167825470620247101327163*rho 29271 + 5180236671188125458811733449391362170590415455683053570159179776856281599688*seg31AccX75 rho + 1860689148370638388771608578221990110388307111969463647559037365848775488052*seg31AccY75 rho := by
  rw [add_assoc, seg31AccWeighted75]
  unfold Seg31.relationRow628 at r628
  simp only [Seg31.relationLc297, Seg31.relationLc297Part0, Seg31.relationLc297Part1, Seg31.relationLc297Part2, Seg31.relationLc297Part3, Seg31.relationLc297Part4] at r628
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r628 ⊢
  exact r628

theorem seg31_prefix_76_addY (rho : Nat -> Seg31.F)
    (r629 : Seg31.relationRow629 rho) :
    rho 29899*(1 + (-1)*rho 29897) = 5180236671188125458811733449391362170590415455683053570159179776856281599688 + 1409662585539875679999185781335179769950752419417490626659213358189333655745*rho 29271 + 1860689148370638388771608578221990110388307111969463647559037365848775488052*seg31AccX75 rho + 5180236671188125458811733449391362170590415455683053570159179776856281599688*seg31AccY75 rho := by
  rw [add_assoc, seg31AccWeighted75]
  unfold Seg31.relationRow629 at r629
  simp only [Seg31.relationLc298, Seg31.relationLc298Part0, Seg31.relationLc298Part1, Seg31.relationLc298Part2, Seg31.relationLc298Part3, Seg31.relationLc298Part4] at r629
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r629 ⊢
  exact r629

theorem seg31_prefix_76_selX (rho : Nat -> Seg31.F)
    (r630 : Seg31.relationRow630 rho) :
    (1*rho 29347)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX75 rho + rho 29898) = rho 29900 := by
  rw [seg31AccX75_sum]
  unfold Seg31.relationRow630 at r630
  simp only [Seg31.relationLc299, Seg31.relationLc299Part0, Seg31.relationLc299Part1, Seg31.relationLc299Part2] at r630
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r630 ⊢
  exact r630

theorem seg31_prefix_76_selY (rho : Nat -> Seg31.F)
    (r631 : Seg31.relationRow631 rho) :
    (1*rho 29347)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY75 rho + rho 29899) = rho 29901 := by
  rw [seg31AccY75_sum]
  unfold Seg31.relationRow631 at r631
  simp only [Seg31.relationLc300, Seg31.relationLc300Part0, Seg31.relationLc300Part1, Seg31.relationLc300Part2] at r631
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r631 ⊢
  exact r631

theorem seg31_prefix_77_v2 (rho : Nat -> Seg31.F)
    (r632 : Seg31.relationRow632 rho) :
    (4556647832234439029301725765286109558286714328354525395674184535529452263012*rho 29271 + 5280468971504914988808723380835196575529785503777731781354790395125657121753*seg31AccX76 rho)*(7865384328237766971312513165828874914869032229208936773290604428377426164264 + 3600144711730309239972511100011485673137307178139337070672969143704325140384*rho 29271 + 7865384328237766971312513165828874914869032229208936773290604428377426164264*seg31AccY76 rho) = rho 29902 := by
  rw [seg31AccX76_sum, seg31AccY76_sum]
  unfold Seg31.relationRow632 at r632
  simp only [Seg31.relationLc301, Seg31.relationLc301Part0, Seg31.relationLc301Part1, Seg31.relationLc301Part2] at r632
  simp only [Seg31.relationLc302, Seg31.relationLc302Part0, Seg31.relationLc302Part1, Seg31.relationLc302Part2] at r632
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r632 ⊢
  exact r632

theorem seg31_prefix_77_addX (rho : Nat -> Seg31.F)
    (r633 : Seg31.relationRow633 rho) :
    rho 29903*(1 + rho 29902) = 7865384328237766971312513165828874914869032229208936773290604428377426164264 + 3411575777228854506500277280060522728888623152829134550016258885357137329728*rho 29271 + 742490179599478013046920666056916592979193349658922425085796642242052004458*seg31AccX76 rho + 7865384328237766971312513165828874914869032229208936773290604428377426164264*seg31AccY76 rho := by
  rw [add_assoc, seg31AccWeighted76]
  unfold Seg31.relationRow633 at r633
  simp only [Seg31.relationLc303, Seg31.relationLc303Part0, Seg31.relationLc303Part1, Seg31.relationLc303Part2, Seg31.relationLc303Part3, Seg31.relationLc303Part4] at r633
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r633 ⊢
  exact r633

theorem seg31_prefix_77_addY (rho : Nat -> Seg31.F)
    (r634 : Seg31.relationRow634 rho) :
    rho 29904*(1 + (-1)*rho 29902) = 742490179599478013046920666056916592979193349658922425085796642242052004458 + 5126820015755109312404685105978555226239595498435133393189054043085659429469*rho 29271 + 7865384328237766971312513165828874914869032229208936773290604428377426164264*seg31AccX76 rho + 742490179599478013046920666056916592979193349658922425085796642242052004458*seg31AccY76 rho := by
  rw [add_assoc, seg31AccWeighted76]
  unfold Seg31.relationRow634 at r634
  simp only [Seg31.relationLc304, Seg31.relationLc304Part0, Seg31.relationLc304Part1, Seg31.relationLc304Part2, Seg31.relationLc304Part3, Seg31.relationLc304Part4] at r634
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r634 ⊢
  exact r634

theorem seg31_prefix_77_selX (rho : Nat -> Seg31.F)
    (r635 : Seg31.relationRow635 rho) :
    (1*rho 29348)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX76 rho + rho 29903) = rho 29905 := by
  rw [seg31AccX76_sum]
  unfold Seg31.relationRow635 at r635
  simp only [Seg31.relationLc305, Seg31.relationLc305Part0, Seg31.relationLc305Part1, Seg31.relationLc305Part2] at r635
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r635 ⊢
  exact r635

theorem seg31_prefix_77_selY (rho : Nat -> Seg31.F)
    (r636 : Seg31.relationRow636 rho) :
    (1*rho 29348)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY76 rho + rho 29904) = rho 29906 := by
  rw [seg31AccY76_sum]
  unfold Seg31.relationRow636 at r636
  simp only [Seg31.relationLc306, Seg31.relationLc306Part0, Seg31.relationLc306Part1, Seg31.relationLc306Part2] at r636
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r636 ⊢
  exact r636

theorem seg31_prefix_78_v2 (rho : Nat -> Seg31.F)
    (r637 : Seg31.relationRow637 rho) :
    (6306593912445370681793633410212297214903176766492704290603546068880324800889*rho 29271 + 4195623733406376273792904174350645917923395446527071264275902358499815355703*seg31AccX77 rho)*(362577996003105924235076455902846944420072260336336196539692441441546031850 + 5474128706966524990545732930483669184775460332410376694904291933835612399336*rho 29271 + 362577996003105924235076455902846944420072260336336196539692441441546031850*seg31AccY77 rho) = rho 29907 := by
  rw [seg31AccX77_sum, seg31AccY77_sum]
  unfold Seg31.relationRow637 at r637
  simp only [Seg31.relationLc307, Seg31.relationLc307Part0, Seg31.relationLc307Part1, Seg31.relationLc307Part2] at r637
  simp only [Seg31.relationLc308, Seg31.relationLc308Part0, Seg31.relationLc308Part1, Seg31.relationLc308Part2] at r637
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r637 ⊢
  exact r637

theorem seg31_prefix_78_addX (rho : Nat -> Seg31.F)
    (r638 : Seg31.relationRow638 rho) :
    rho 29908*(1 + rho 29907) = 362577996003105924235076455902846944420072260336336196539692441441546031850 + 1889905658107155945981201727886346476221876859972054554238849703490310933302*rho 29271 + 6723974224133941491755119788793104949975823004466087579426849508056891438348*seg31AccX77 rho + 362577996003105924235076455902846944420072260336336196539692441441546031850*seg31AccY77 rho := by
  rw [add_assoc, seg31AccWeighted77]
  unfold Seg31.relationRow638 at r638
  simp only [Seg31.relationLc309, Seg31.relationLc309Part0, Seg31.relationLc309Part1, Seg31.relationLc309Part2, Seg31.relationLc309Part3, Seg31.relationLc309Part4] at r638
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r638 ⊢
  exact r638

theorem seg31_prefix_78_addY (rho : Nat -> Seg31.F)
    (r639 : Seg31.relationRow639 rho) :
    rho 29909*(1 + (-1)*rho 29907) = 6723974224133941491755119788793104949975823004466087579426849508056891438348 + 2096538376241753716798571118297109287092753035399130962288541335804405738151*rho 29271 + 362577996003105924235076455902846944420072260336336196539692441441546031850*seg31AccX77 rho + 6723974224133941491755119788793104949975823004466087579426849508056891438348*seg31AccY77 rho := by
  rw [add_assoc, seg31AccWeighted77]
  unfold Seg31.relationRow639 at r639
  simp only [Seg31.relationLc310, Seg31.relationLc310Part0, Seg31.relationLc310Part1, Seg31.relationLc310Part2, Seg31.relationLc310Part3, Seg31.relationLc310Part4] at r639
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r639 ⊢
  exact r639

theorem seg31_prefix_78_selX (rho : Nat -> Seg31.F)
    (r640 : Seg31.relationRow640 rho) :
    (1*rho 29349)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX77 rho + rho 29908) = rho 29910 := by
  rw [seg31AccX77_sum]
  unfold Seg31.relationRow640 at r640
  simp only [Seg31.relationLc311, Seg31.relationLc311Part0, Seg31.relationLc311Part1, Seg31.relationLc311Part2] at r640
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r640 ⊢
  exact r640

theorem seg31_prefix_78_selY (rho : Nat -> Seg31.F)
    (r641 : Seg31.relationRow641 rho) :
    (1*rho 29349)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY77 rho + rho 29909) = rho 29911 := by
  rw [seg31AccY77_sum]
  unfold Seg31.relationRow641 at r641
  simp only [Seg31.relationLc312, Seg31.relationLc312Part0, Seg31.relationLc312Part1, Seg31.relationLc312Part2] at r641
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r641 ⊢
  exact r641

theorem seg31_prefix_79_v2 (rho : Nat -> Seg31.F)
    (r642 : Seg31.relationRow642 rho) :
    (8353451365575389895420713276252437744296542059476952895769368578101377270479*rho 29271 + 1413911105099657135291792788556059165546956689872882273894997138390302031093*seg31AccX78 rho)*(2374684346225205188650120977020710657336063338698619375553401752431435740416 + 1627794521326751861359370178242313064265856034398423533990142366307677810046*rho 29271 + 2374684346225205188650120977020710657336063338698619375553401752431435740416*seg31AccY78 rho) = rho 29912 := by
  rw [seg31AccX78_sum, seg31AccY78_sum]
  unfold Seg31.relationRow642 at r642
  simp only [Seg31.relationLc313, Seg31.relationLc313Part0, Seg31.relationLc313Part1, Seg31.relationLc313Part2] at r642
  simp only [Seg31.relationLc314, Seg31.relationLc314Part0, Seg31.relationLc314Part1, Seg31.relationLc314Part2] at r642
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r642 ⊢
  exact r642

theorem seg31_prefix_79_addX (rho : Nat -> Seg31.F)
    (r643 : Seg31.relationRow643 rho) :
    rho 29913*(1 + rho 29912) = 2374684346225205188650120977020710657336063338698619375553401752431435740416 + 1963194852193203854203140744608170884516775783800214513275167904153514644444*rho 29271 + 8179380665320262005457581451063674680559890238778769825492349582639102858479*seg31AccX78 rho + 2374684346225205188650120977020710657336063338698619375553401752431435740416*seg31AccY78 rho := by
  rw [add_assoc, seg31AccWeighted78]
  unfold Seg31.relationRow643 at r643
  simp only [Seg31.relationLc315, Seg31.relationLc315Part0, Seg31.relationLc315Part1, Seg31.relationLc315Part2, Seg31.relationLc315Part3, Seg31.relationLc315Part4] at r643
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r643 ⊢
  exact r643

theorem seg31_prefix_79_addY (rho : Nat -> Seg31.F)
    (r644 : Seg31.relationRow644 rho) :
    rho 29914*(1 + (-1)*rho 29912) = 8179380665320262005457581451063674680559890238778769825492349582639102858479 + 4713702755110331543474491408240107297403414201301135916108963537789741442495*rho 29271 + 2374684346225205188650120977020710657336063338698619375553401752431435740416*seg31AccX78 rho + 8179380665320262005457581451063674680559890238778769825492349582639102858479*seg31AccY78 rho := by
  rw [add_assoc, seg31AccWeighted78]
  unfold Seg31.relationRow644 at r644
  simp only [Seg31.relationLc316, Seg31.relationLc316Part0, Seg31.relationLc316Part1, Seg31.relationLc316Part2, Seg31.relationLc316Part3, Seg31.relationLc316Part4] at r644
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r644 ⊢
  exact r644

theorem seg31_prefix_79_selX (rho : Nat -> Seg31.F)
    (r645 : Seg31.relationRow645 rho) :
    (1*rho 29350)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX78 rho + rho 29913) = rho 29915 := by
  rw [seg31AccX78_sum]
  unfold Seg31.relationRow645 at r645
  simp only [Seg31.relationLc317, Seg31.relationLc317Part0, Seg31.relationLc317Part1, Seg31.relationLc317Part2] at r645
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r645 ⊢
  exact r645

theorem seg31_prefix_79_selY (rho : Nat -> Seg31.F)
    (r646 : Seg31.relationRow646 rho) :
    (1*rho 29350)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY78 rho + rho 29914) = rho 29916 := by
  rw [seg31AccY78_sum]
  unfold Seg31.relationRow646 at r646
  simp only [Seg31.relationLc318, Seg31.relationLc318Part0, Seg31.relationLc318Part1, Seg31.relationLc318Part2] at r646
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r646 ⊢
  exact r646

theorem seg31_prefix_80_v2 (rho : Nat -> Seg31.F)
    (r647 : Seg31.relationRow647 rho) :
    (3240388181392711470302623400092573262502763043986311877675923455854650277543*rho 29271 + 435443019248027373572209328981659234170213225482121712799853667443266468176*seg31AccX79 rho)*(5087434312801730417605866464522622496729984521401512386003450836701688677694 + 8359927174140099073163808715029987177202746736101787838973659665157973465362*rho 29271 + 5087434312801730417605866464522622496729984521401512386003450836701688677694*seg31AccY79 rho) = rho 29917 := by
  rw [seg31AccX79_sum, seg31AccY79_sum]
  unfold Seg31.relationRow647 at r647
  simp only [Seg31.relationLc319, Seg31.relationLc319Part0, Seg31.relationLc319Part1, Seg31.relationLc319Part2] at r647
  simp only [Seg31.relationLc320, Seg31.relationLc320Part0, Seg31.relationLc320Part1, Seg31.relationLc320Part2] at r647
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r647 ⊢
  exact r647

theorem seg31_prefix_80_addX (rho : Nat -> Seg31.F)
    (r648 : Seg31.relationRow648 rho) :
    rho 29918*(1 + rho 29917) = 5087434312801730417605866464522622496729984521401512386003450836701688677694 + 1255464619070411914285884063926842950292772109515344959551717420376047071663*rho 29271 + 4223772640319601369882008173395530773963308212063314321656053494061121690387*seg31AccX79 rho + 5087434312801730417605866464522622496729984521401512386003450836701688677694*seg31AccY79 rho := by
  rw [add_assoc, seg31AccWeighted79]
  unfold Seg31.relationRow648 at r648
  simp only [Seg31.relationLc321, Seg31.relationLc321Part0, Seg31.relationLc321Part1, Seg31.relationLc321Part2, Seg31.relationLc321Part3, Seg31.relationLc321Part4] at r648
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r648 ⊢
  exact r648

theorem seg31_prefix_80_addY (rho : Nat -> Seg31.F)
    (r649 : Seg31.relationRow649 rho) :
    rho 29919*(1 + (-1)*rho 29917) = 4223772640319601369882008173395530773963308212063314321656053494061121690387 + 5201334774209604017645676000956203413974006481900791533392360915641172360594*rho 29271 + 5087434312801730417605866464522622496729984521401512386003450836701688677694*seg31AccX79 rho + 4223772640319601369882008173395530773963308212063314321656053494061121690387*seg31AccY79 rho := by
  rw [add_assoc, seg31AccWeighted79]
  unfold Seg31.relationRow649 at r649
  simp only [Seg31.relationLc322, Seg31.relationLc322Part0, Seg31.relationLc322Part1, Seg31.relationLc322Part2, Seg31.relationLc322Part3, Seg31.relationLc322Part4] at r649
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r649 ⊢
  exact r649

theorem seg31_prefix_80_selX (rho : Nat -> Seg31.F)
    (r650 : Seg31.relationRow650 rho) :
    (1*rho 29351)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX79 rho + rho 29918) = rho 29920 := by
  rw [seg31AccX79_sum]
  unfold Seg31.relationRow650 at r650
  simp only [Seg31.relationLc323, Seg31.relationLc323Part0, Seg31.relationLc323Part1, Seg31.relationLc323Part2] at r650
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r650 ⊢
  exact r650

theorem seg31_prefix_80_selY (rho : Nat -> Seg31.F)
    (r651 : Seg31.relationRow651 rho) :
    (1*rho 29351)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY79 rho + rho 29919) = rho 29921 := by
  rw [seg31AccY79_sum]
  unfold Seg31.relationRow651 at r651
  simp only [Seg31.relationLc324, Seg31.relationLc324Part0, Seg31.relationLc324Part1, Seg31.relationLc324Part2] at r651
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r651 ⊢
  exact r651


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

