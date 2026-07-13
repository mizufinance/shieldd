import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_prefix_41_v2 (rho : Nat -> Seg30.F)
    (r452 : Seg30.relationRow452 rho) :
    (6161244127489140545768233816104021805474783469828701794839528005338549570673*rho 28317 + 545707636957347222268502606761207076859744384564549177379106755736850705158*seg30AccX40 rho)*(6576811098948278595984782395563495218759085106770148970496927939778558634586 + 3020553269023021818113491928875860238436312797103974636333990918838877679899*rho 28317 + 6576811098948278595984782395563495218759085106770148970496927939778558634586*seg30AccY40 rho) = rho 28768 := by
  rw [seg30AccX40_sum, seg30AccY40_sum]
  unfold Seg30.relationRow452 at r452
  simp only [Seg30.relationLc85, Seg30.relationLc85Part0, Seg30.relationLc85Part1] at r452
  simp only [Seg30.relationLc86, Seg30.relationLc86Part0, Seg30.relationLc86Part1] at r452
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r452 ⊢
  exact r452

theorem seg30_prefix_41_addX (rho : Nat -> Seg30.F)
    (r453 : Seg30.relationRow453 rho) :
    rho 28769*(1 + rho 28768) = 6576811098948278595984782395563495218759085106770148970496927939778558634586 + 730484619435542636604631215209933679706500592086926097071477874864386774092*rho 28317 + 44904698983055701426762562604192635411742513653435806164959563737310625134*seg30AccX40 rho + 6576811098948278595984782395563495218759085106770148970496927939778558634586*seg30AccY40 rho := by
  rw [add_assoc, seg30AccWeighted40]
  unfold Seg30.relationRow453 at r453
  simp only [Seg30.relationLc87, Seg30.relationLc87Part0, Seg30.relationLc87Part1, Seg30.relationLc87Part2] at r453
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r453 ⊢
  exact r453

theorem seg30_prefix_41_addY (rho : Nat -> Seg30.F)
    (r454 : Seg30.relationRow454 rho) :
    rho 28770*(1 + (-1)*rho 28768) = 44904698983055701426762562604192635411742513653435806164959563737310625134 + 7860310894553269756280238549700692882381083328300356953251934111449264246407*rho 28317 + 6576811098948278595984782395563495218759085106770148970496927939778558634586*seg30AccX40 rho + 44904698983055701426762562604192635411742513653435806164959563737310625134*seg30AccY40 rho := by
  rw [add_assoc, seg30AccWeighted40]
  unfold Seg30.relationRow454 at r454
  simp only [Seg30.relationLc88, Seg30.relationLc88Part0, Seg30.relationLc88Part1, Seg30.relationLc88Part2] at r454
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r454 ⊢
  exact r454

theorem seg30_prefix_41_selX (rho : Nat -> Seg30.F)
    (r455 : Seg30.relationRow455 rho) :
    (1*rho 28358)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX40 rho + rho 28769) = rho 28771 := by
  rw [seg30AccX40_sum]
  unfold Seg30.relationRow455 at r455
  simp only [Seg30.relationLc89, Seg30.relationLc89Part0, Seg30.relationLc89Part1] at r455
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r455 ⊢
  exact r455

theorem seg30_prefix_41_selY (rho : Nat -> Seg30.F)
    (r456 : Seg30.relationRow456 rho) :
    (1*rho 28358)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY40 rho + rho 28770) = rho 28772 := by
  rw [seg30AccY40_sum]
  unfold Seg30.relationRow456 at r456
  simp only [Seg30.relationLc90, Seg30.relationLc90Part0, Seg30.relationLc90Part1] at r456
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r456 ⊢
  exact r456

theorem seg30_prefix_42_v2 (rho : Nat -> Seg30.F)
    (r457 : Seg30.relationRow457 rho) :
    (5185411658465475973318981105133659618627589062199339752884966290682921774597*rho 28317 + 2276932546380933870225228921511621554726597530816646260591385143214032842447*seg30AccX41 rho)*(1462656451100821597405370173853097694625881251276553512944466206343611444975 + 5846162809411592435527463114932061406630928699960866773281871945282257768489*rho 28317 + 1462656451100821597405370173853097694625881251276553512944466206343611444975*seg30AccY41 rho) = rho 28773 := by
  rw [seg30AccX41_sum, seg30AccY41_sum]
  unfold Seg30.relationRow457 at r457
  simp only [Seg30.relationLc91, Seg30.relationLc91Part0, Seg30.relationLc91Part1] at r457
  simp only [Seg30.relationLc92, Seg30.relationLc92Part0, Seg30.relationLc92Part1] at r457
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r457 ⊢
  exact r457

theorem seg30_prefix_42_addX (rho : Nat -> Seg30.F)
    (r458 : Seg30.relationRow458 rho) :
    rho 28774*(1 + rho 28773) = 1462656451100821597405370173853097694625881251276553512944466206343611444975 + 1386654189607152276266355660052811289299810609976197283168747936889837303830*rho 28317 + 2253728269641061733139615402045494248872459934347895429187815144194851333833*seg30AccX41 rho + 1462656451100821597405370173853097694625881251276553512944466206343611444975*seg30AccY41 rho := by
  rw [add_assoc, seg30AccWeighted41]
  unfold Seg30.relationRow458 at r458
  simp only [Seg30.relationLc93, Seg30.relationLc93Part0, Seg30.relationLc93Part1, Seg30.relationLc93Part2] at r458
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r458 ⊢
  exact r458

theorem seg30_prefix_42_addY (rho : Nat -> Seg30.F)
    (r459 : Seg30.relationRow459 rho) :
    rho 28775*(1 + (-1)*rho 28773) = 2253728269641061733139615402045494248872459934347895429187815144194851333833 + 7097948268939892520401588775257677409780701028932676067280934208059187180420*rho 28317 + 1462656451100821597405370173853097694625881251276553512944466206343611444975*seg30AccX41 rho + 2253728269641061733139615402045494248872459934347895429187815144194851333833*seg30AccY41 rho := by
  rw [add_assoc, seg30AccWeighted41]
  unfold Seg30.relationRow459 at r459
  simp only [Seg30.relationLc94, Seg30.relationLc94Part0, Seg30.relationLc94Part1, Seg30.relationLc94Part2] at r459
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r459 ⊢
  exact r459

theorem seg30_prefix_42_selX (rho : Nat -> Seg30.F)
    (r460 : Seg30.relationRow460 rho) :
    (1*rho 28359)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX41 rho + rho 28774) = rho 28776 := by
  rw [seg30AccX41_sum]
  unfold Seg30.relationRow460 at r460
  simp only [Seg30.relationLc95, Seg30.relationLc95Part0, Seg30.relationLc95Part1] at r460
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r460 ⊢
  exact r460

theorem seg30_prefix_42_selY (rho : Nat -> Seg30.F)
    (r461 : Seg30.relationRow461 rho) :
    (1*rho 28359)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY41 rho + rho 28775) = rho 28777 := by
  rw [seg30AccY41_sum]
  unfold Seg30.relationRow461 at r461
  simp only [Seg30.relationLc96, Seg30.relationLc96Part0, Seg30.relationLc96Part1] at r461
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r461 ⊢
  exact r461

theorem seg30_prefix_43_v2 (rho : Nat -> Seg30.F)
    (r462 : Seg30.relationRow462 rho) :
    (949690325413438538305997154209657878966567982879223149845296457864483296248*rho 28317 + 482825218398770967544548674690245367257088234990090761451761925117301640544*seg30AccX42 rho)*(2309031058061759310903122759335686122157542386344445331826806079031620559629 + 4417333435990880862685875555964743816569557333763586801868360197118446857184*rho 28317 + 2309031058061759310903122759335686122157542386344445331826806079031620559629*seg30AccY42 rho) = rho 28778 := by
  rw [seg30AccX42_sum, seg30AccY42_sum]
  unfold Seg30.relationRow462 at r462
  simp only [Seg30.relationLc97, Seg30.relationLc97Part0, Seg30.relationLc97Part1] at r462
  simp only [Seg30.relationLc98, Seg30.relationLc98Part0, Seg30.relationLc98Part1] at r462
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r462 ⊢
  exact r462

theorem seg30_prefix_43_addX (rho : Nat -> Seg30.F)
    (r463 : Seg30.relationRow463 rho) :
    rho 28779*(1 + rho 28778) = 2309031058061759310903122759335686122157542386344445331826806079031620559629 + 1359640134584318861497557619561962536382113671176474387233702764375718878298*rho 28317 + 6761878780895606364523486287847484708628122336965465240164442731476110642463*seg30AccX42 rho + 2309031058061759310903122759335686122157542386344445331826806079031620559629*seg30AccY42 rho := by
  rw [add_assoc, seg30AccWeighted42]
  unfold Seg30.relationRow463 at r463
  simp only [Seg30.relationLc99, Seg30.relationLc99Part0, Seg30.relationLc99Part1, Seg30.relationLc99Part2] at r463
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r463 ⊢
  exact r463

theorem seg30_prefix_43_addY (rho : Nat -> Seg30.F)
    (r464 : Seg30.relationRow464 rho) :
    rho 28780*(1 + (-1)*rho 28778) = 6761878780895606364523486287847484708628122336965465240164442731476110642463 + 5391288324706657434524820133139641588046669216494177533991455354458955462869*rho 28317 + 2309031058061759310903122759335686122157542386344445331826806079031620559629*seg30AccX42 rho + 6761878780895606364523486287847484708628122336965465240164442731476110642463*seg30AccY42 rho := by
  rw [add_assoc, seg30AccWeighted42]
  unfold Seg30.relationRow464 at r464
  simp only [Seg30.relationLc100, Seg30.relationLc100Part0, Seg30.relationLc100Part1, Seg30.relationLc100Part2] at r464
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r464 ⊢
  exact r464

theorem seg30_prefix_43_selX (rho : Nat -> Seg30.F)
    (r465 : Seg30.relationRow465 rho) :
    (1*rho 28360)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX42 rho + rho 28779) = rho 28781 := by
  rw [seg30AccX42_sum]
  unfold Seg30.relationRow465 at r465
  simp only [Seg30.relationLc101, Seg30.relationLc101Part0, Seg30.relationLc101Part1] at r465
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r465 ⊢
  exact r465

theorem seg30_prefix_43_selY (rho : Nat -> Seg30.F)
    (r466 : Seg30.relationRow466 rho) :
    (1*rho 28360)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY42 rho + rho 28780) = rho 28782 := by
  rw [seg30AccY42_sum]
  unfold Seg30.relationRow466 at r466
  simp only [Seg30.relationLc102, Seg30.relationLc102Part0, Seg30.relationLc102Part1] at r466
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r466 ⊢
  exact r466

theorem seg30_prefix_44_v2 (rho : Nat -> Seg30.F)
    (r467 : Seg30.relationRow467 rho) :
    (5565364441469160997639354677560474059820633437251138032940141926493929785286*rho 28317 + 253089603964650935448206421407193034317991595603061543628178986213350722919*seg30AccX43 rho)*(5776415041600723616987865468613667215653188335306682971288130904195616148297 + 7168001934527135594203266092691074200102188849944056533311839492900430642746*rho 28317 + 5776415041600723616987865468613667215653188335306682971288130904195616148297*seg30AccY43 rho) = rho 28783 := by
  rw [seg30AccX43_sum, seg30AccY43_sum]
  unfold Seg30.relationRow467 at r467
  simp only [Seg30.relationLc103, Seg30.relationLc103Part0, Seg30.relationLc103Part1] at r467
  simp only [Seg30.relationLc104, Seg30.relationLc104Part0, Seg30.relationLc104Part1] at r467
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r467 ⊢
  exact r467

theorem seg30_prefix_44_addX (rho : Nat -> Seg30.F)
    (r468 : Seg30.relationRow468 rho) :
    rho 28784*(1 + rho 28783) = 5776415041600723616987865468613667215653188335306682971288130904195616148297 + 5663202358724281407618533458687203592239961405981531122777529433048398318993*rho 28317 + 2230696314348826299068523835673313910980564601472540879257181223703510732697*seg30AccX43 rho + 5776415041600723616987865468613667215653188335306682971288130904195616148297*seg30AccY43 rho := by
  rw [add_assoc, seg30AccWeighted43]
  unfold Seg30.relationRow468 at r468
  simp only [Seg30.relationLc105, Seg30.relationLc105Part0, Seg30.relationLc105Part1, Seg30.relationLc105Part2] at r468
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r468 ⊢
  exact r468

theorem seg30_prefix_44_addY (rho : Nat -> Seg30.F)
    (r469 : Seg30.relationRow469 rho) :
    rho 28785*(1 + (-1)*rho 28783) = 2230696314348826299068523835673313910980564601472540879257181223703510732697 + 4759701143005603929059858651671846902254791926688977767922809708738066053159*rho 28317 + 5776415041600723616987865468613667215653188335306682971288130904195616148297*seg30AccX43 rho + 2230696314348826299068523835673313910980564601472540879257181223703510732697*seg30AccY43 rho := by
  rw [add_assoc, seg30AccWeighted43]
  unfold Seg30.relationRow469 at r469
  simp only [Seg30.relationLc106, Seg30.relationLc106Part0, Seg30.relationLc106Part1, Seg30.relationLc106Part2] at r469
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r469 ⊢
  exact r469

theorem seg30_prefix_44_selX (rho : Nat -> Seg30.F)
    (r470 : Seg30.relationRow470 rho) :
    (1*rho 28361)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX43 rho + rho 28784) = rho 28786 := by
  rw [seg30AccX43_sum]
  unfold Seg30.relationRow470 at r470
  simp only [Seg30.relationLc107, Seg30.relationLc107Part0, Seg30.relationLc107Part1] at r470
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r470 ⊢
  exact r470

theorem seg30_prefix_44_selY (rho : Nat -> Seg30.F)
    (r471 : Seg30.relationRow471 rho) :
    (1*rho 28361)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY43 rho + rho 28785) = rho 28787 := by
  rw [seg30AccY43_sum]
  unfold Seg30.relationRow471 at r471
  simp only [Seg30.relationLc108, Seg30.relationLc108Part0, Seg30.relationLc108Part1] at r471
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r471 ⊢
  exact r471

theorem seg30_prefix_45_v2 (rho : Nat -> Seg30.F)
    (r472 : Seg30.relationRow472 rho) :
    (5869792174701010066534460370998374031738396009957497491190853942678029269047*rho 28317 + 6971088294453342499407001133603161768056707092278706015455281787411030167211*seg30AccX44 rho)*(5591127919911936148301669060372646140553395998192005828700726987510335923070 + 3614041244887921594902320472204306523496704967327648395438467763982255265225*rho 28317 + 5591127919911936148301669060372646140553395998192005828700726987510335923070*seg30AccY44 rho) = rho 28788 := by
  rw [seg30AccX44_sum, seg30AccY44_sum]
  unfold Seg30.relationRow472 at r472
  simp only [Seg30.relationLc109, Seg30.relationLc109Part0, Seg30.relationLc109Part1] at r472
  simp only [Seg30.relationLc110, Seg30.relationLc110Part0, Seg30.relationLc110Part1] at r472
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r472 ⊢
  exact r472

theorem seg30_prefix_45_addX (rho : Nat -> Seg30.F)
    (r473 : Seg30.relationRow473 rho) :
    rho 28789*(1 + rho 28788) = 5591127919911936148301669060372646140553395998192005828700726987510335923070 + 71602414665984260284321279220525448437816532714806476758995679188942823704*rho 28317 + 6031670003909780982325098442265938109879467584581130216111139968951096576888*seg30AccX44 rho + 5591127919911936148301669060372646140553395998192005828700726987510335923070*seg30AccY44 rho := by
  rw [add_assoc, seg30AccWeighted44]
  unfold Seg30.relationRow473 at r473
  simp only [Seg30.relationLc111, Seg30.relationLc111Part0, Seg30.relationLc111Part1, Seg30.relationLc111Part2] at r473
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r473 ⊢
  exact r473

theorem seg30_prefix_45_addY (rho : Nat -> Seg30.F)
    (r474 : Seg30.relationRow474 rho) :
    rho 28790*(1 + (-1)*rho 28788) = 6031670003909780982325098442265938109879467584581130216111139968951096576888 + 7428878532806775174158131155894163114944477458452568001406209860826617970898*rho 28317 + 5591127919911936148301669060372646140553395998192005828700726987510335923070*seg30AccX44 rho + 6031670003909780982325098442265938109879467584581130216111139968951096576888*seg30AccY44 rho := by
  rw [add_assoc, seg30AccWeighted44]
  unfold Seg30.relationRow474 at r474
  simp only [Seg30.relationLc112, Seg30.relationLc112Part0, Seg30.relationLc112Part1, Seg30.relationLc112Part2] at r474
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r474 ⊢
  exact r474

theorem seg30_prefix_45_selX (rho : Nat -> Seg30.F)
    (r475 : Seg30.relationRow475 rho) :
    (1*rho 28362)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX44 rho + rho 28789) = rho 28791 := by
  rw [seg30AccX44_sum]
  unfold Seg30.relationRow475 at r475
  simp only [Seg30.relationLc113, Seg30.relationLc113Part0, Seg30.relationLc113Part1] at r475
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r475 ⊢
  exact r475

theorem seg30_prefix_45_selY (rho : Nat -> Seg30.F)
    (r476 : Seg30.relationRow476 rho) :
    (1*rho 28362)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY44 rho + rho 28790) = rho 28792 := by
  rw [seg30AccY44_sum]
  unfold Seg30.relationRow476 at r476
  simp only [Seg30.relationLc114, Seg30.relationLc114Part0, Seg30.relationLc114Part1] at r476
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r476 ⊢
  exact r476

theorem seg30_prefix_46_v2 (rho : Nat -> Seg30.F)
    (r477 : Seg30.relationRow477 rho) :
    (4458658022404426310591096814393615713405161516003240642232664938122910999835*rho 28317 + 1971851832335678008122963964257464482273943743281012573309109172950046803432*seg30AccX45 rho)*(5295429543189611642323085798747987418252628832516403932838817415870149721893 + 3924399849183403800635904052424757915833669252134527332175691182188838126604*rho 28317 + 5295429543189611642323085798747987418252628832516403932838817415870149721893*seg30AccY45 rho) = rho 28793 := by
  rw [seg30AccX45_sum, seg30AccY45_sum]
  unfold Seg30.relationRow477 at r477
  simp only [Seg30.relationLc115, Seg30.relationLc115Part0, Seg30.relationLc115Part1] at r477
  simp only [Seg30.relationLc116, Seg30.relationLc116Part0, Seg30.relationLc116Part1] at r477
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r477 ⊢
  exact r477

theorem seg30_prefix_46_addX (rho : Nat -> Seg30.F)
    (r478 : Seg30.relationRow478 rho) :
    rho 28794*(1 + rho 28793) = 5295429543189611642323085798747987418252628832516403932838817415870149721893 + 2265494976247936205239276804221565256474556692198906453939578634066753327865*rho 28317 + 8115274515201223111420874465821611070859486830087894175792549431215223127355*seg30AccX45 rho + 5295429543189611642323085798747987418252628832516403932838817415870149721893*seg30AccY45 rho := by
  rw [add_assoc, seg30AccWeighted45]
  unfold Seg30.relationRow478 at r478
  simp only [Seg30.relationLc117, Seg30.relationLc117Part0, Seg30.relationLc117Part1, Seg30.relationLc117Part2] at r478
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r478 ⊢
  exact r478

theorem seg30_prefix_46_addY (rho : Nat -> Seg30.F)
    (r479 : Seg30.relationRow479 rho) :
    rho 28795*(1 + (-1)*rho 28793) = 8115274515201223111420874465821611070859486830087894175792549431215223127355 + 6558436434314105277867274208453340390424657597047880838203572116993711254360*rho 28317 + 5295429543189611642323085798747987418252628832516403932838817415870149721893*seg30AccX45 rho + 8115274515201223111420874465821611070859486830087894175792549431215223127355*seg30AccY45 rho := by
  rw [add_assoc, seg30AccWeighted45]
  unfold Seg30.relationRow479 at r479
  simp only [Seg30.relationLc118, Seg30.relationLc118Part0, Seg30.relationLc118Part1, Seg30.relationLc118Part2] at r479
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r479 ⊢
  exact r479

theorem seg30_prefix_46_selX (rho : Nat -> Seg30.F)
    (r480 : Seg30.relationRow480 rho) :
    (1*rho 28363)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX45 rho + rho 28794) = rho 28796 := by
  rw [seg30AccX45_sum]
  unfold Seg30.relationRow480 at r480
  simp only [Seg30.relationLc119, Seg30.relationLc119Part0, Seg30.relationLc119Part1] at r480
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r480 ⊢
  exact r480

theorem seg30_prefix_46_selY (rho : Nat -> Seg30.F)
    (r481 : Seg30.relationRow481 rho) :
    (1*rho 28363)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY45 rho + rho 28795) = rho 28797 := by
  rw [seg30AccY45_sum]
  unfold Seg30.relationRow481 at r481
  simp only [Seg30.relationLc120, Seg30.relationLc120Part0, Seg30.relationLc120Part1] at r481
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r481 ⊢
  exact r481

theorem seg30_prefix_47_v2 (rho : Nat -> Seg30.F)
    (r482 : Seg30.relationRow482 rho) :
    (6428693841809995416207046926203669269885730368447761649130921761657402840377*rho 28317 + 3714855261533166382040088455134618451429590638829032915074360568190070575219*seg30AccX46 rho)*(7737473502847796137662188758983025773166559853165714458430886678788360801100 + 7072166311046371974940295729410239865239300401239924761117325870390291740566*rho 28317 + 7737473502847796137662188758983025773166559853165714458430886678788360801100*seg30AccY46 rho) = rho 28798 := by
  rw [seg30AccX46_sum, seg30AccY46_sum]
  unfold Seg30.relationRow482 at r482
  simp only [Seg30.relationLc121, Seg30.relationLc121Part0, Seg30.relationLc121Part1] at r482
  simp only [Seg30.relationLc122, Seg30.relationLc122Part0, Seg30.relationLc122Part1] at r482
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r482 ⊢
  exact r482

theorem seg30_prefix_47_addX (rho : Nat -> Seg30.F)
    (r483 : Seg30.relationRow483 rho) :
    rho 28799*(1 + rho 28798) = 7737473502847796137662188758983025773166559853165714458430886678788360801100 + 6244103932450405069748076609949162192101678298567859486291892763920310561766*rho 28317 + 3260495615721619689194362782877993337979387029271257019625142856725550891525*seg30AccX46 rho + 7737473502847796137662188758983025773166559853165714458430886678788360801100*seg30AccY46 rho := by
  rw [add_assoc, seg30AccWeighted46]
  unfold Seg30.relationRow483 at r483
  simp only [Seg30.relationLc123, Seg30.relationLc123Part0, Seg30.relationLc123Part1, Seg30.relationLc123Part2] at r483
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r483 ⊢
  exact r483

theorem seg30_prefix_47_addY (rho : Nat -> Seg30.F)
    (r484 : Seg30.relationRow484 rho) :
    rho 28800*(1 + (-1)*rho 28798) = 3260495615721619689194362782877993337979387029271257019625142856725550891525 + 5886078833584473605719416950822767817067481112901899389994814173454995030912*rho 28317 + 7737473502847796137662188758983025773166559853165714458430886678788360801100*seg30AccX46 rho + 3260495615721619689194362782877993337979387029271257019625142856725550891525*seg30AccY46 rho := by
  rw [add_assoc, seg30AccWeighted46]
  unfold Seg30.relationRow484 at r484
  simp only [Seg30.relationLc124, Seg30.relationLc124Part0, Seg30.relationLc124Part1, Seg30.relationLc124Part2] at r484
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r484 ⊢
  exact r484

theorem seg30_prefix_47_selX (rho : Nat -> Seg30.F)
    (r485 : Seg30.relationRow485 rho) :
    (1*rho 28364)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX46 rho + rho 28799) = rho 28801 := by
  rw [seg30AccX46_sum]
  unfold Seg30.relationRow485 at r485
  simp only [Seg30.relationLc125, Seg30.relationLc125Part0, Seg30.relationLc125Part1] at r485
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r485 ⊢
  exact r485

theorem seg30_prefix_47_selY (rho : Nat -> Seg30.F)
    (r486 : Seg30.relationRow486 rho) :
    (1*rho 28364)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY46 rho + rho 28800) = rho 28802 := by
  rw [seg30AccY46_sum]
  unfold Seg30.relationRow486 at r486
  simp only [Seg30.relationLc126, Seg30.relationLc126Part0, Seg30.relationLc126Part1] at r486
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r486 ⊢
  exact r486

theorem seg30_prefix_48_v2 (rho : Nat -> Seg30.F)
    (r487 : Seg30.relationRow487 rho) :
    (3511421809349194497240159582276503343772566217816153827660309415506614430722*rho 28317 + 2007142405865741212583418405001667830225331770762763980966094406287848002234*seg30AccX47 rho)*(3553871732159176106131237839496950048487401019092119754128431311280642137912 + 6068222480634586193480125141746175465742028006835934070153620006128481423330*rho 28317 + 3553871732159176106131237839496950048487401019092119754128431311280642137912*seg30AccY47 rho) = rho 28803 := by
  rw [seg30AccX47_sum, seg30AccY47_sum]
  unfold Seg30.relationRow487 at r487
  simp only [Seg30.relationLc127, Seg30.relationLc127Part0, Seg30.relationLc127Part1] at r487
  simp only [Seg30.relationLc128, Seg30.relationLc128Part0, Seg30.relationLc128Part1] at r487
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r487 ⊢
  exact r487

theorem seg30_prefix_48_addX (rho : Nat -> Seg30.F)
    (r488 : Seg30.relationRow488 rho) :
    rho 28804*(1 + rho 28803) = 3553871732159176106131237839496950048487401019092119754128431311280642137912 + 780764616315113287759656216028727755043772801310057668754811204678553695480*rho 28317 + 763768685865544808683387165406277348856618950767236739161630197905243485687*seg30AccX47 rho + 3553871732159176106131237839496950048487401019092119754128431311280642137912*seg30AccY47 rho := by
  rw [add_assoc, seg30AccWeighted47]
  unfold Seg30.relationRow488 at r488
  simp only [Seg30.relationLc129, Seg30.relationLc129Part0, Seg30.relationLc129Part1, Seg30.relationLc129Part2] at r488
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r488 ⊢
  exact r488

theorem seg30_prefix_48_addY (rho : Nat -> Seg30.F)
    (r489 : Seg30.relationRow489 rho) :
    rho 28805*(1 + (-1)*rho 28803) = 763768685865544808683387165406277348856618950767236739161630197905243485687 + 107088271911004464855019895567003286826177788836370390458748736964608633495*rho 28317 + 3553871732159176106131237839496950048487401019092119754128431311280642137912*seg30AccX47 rho + 763768685865544808683387165406277348856618950767236739161630197905243485687*seg30AccY47 rho := by
  rw [add_assoc, seg30AccWeighted47]
  unfold Seg30.relationRow489 at r489
  simp only [Seg30.relationLc130, Seg30.relationLc130Part0, Seg30.relationLc130Part1, Seg30.relationLc130Part2] at r489
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r489 ⊢
  exact r489

theorem seg30_prefix_48_selX (rho : Nat -> Seg30.F)
    (r490 : Seg30.relationRow490 rho) :
    (1*rho 28365)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX47 rho + rho 28804) = rho 28806 := by
  rw [seg30AccX47_sum]
  unfold Seg30.relationRow490 at r490
  simp only [Seg30.relationLc131, Seg30.relationLc131Part0, Seg30.relationLc131Part1] at r490
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r490 ⊢
  exact r490

theorem seg30_prefix_48_selY (rho : Nat -> Seg30.F)
    (r491 : Seg30.relationRow491 rho) :
    (1*rho 28365)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY47 rho + rho 28805) = rho 28807 := by
  rw [seg30AccY47_sum]
  unfold Seg30.relationRow491 at r491
  simp only [Seg30.relationLc132, Seg30.relationLc132Part0, Seg30.relationLc132Part1] at r491
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r491 ⊢
  exact r491

theorem seg30_prefix_49_v2 (rho : Nat -> Seg30.F)
    (r492 : Seg30.relationRow492 rho) :
    (199289372013081093119932530062502091506822441066130532790911115384456320001*rho 28317 + 7131980987787590468573539042986597887856792265009045865825068848096274401597*seg30AccX48 rho)*(6413150907754487484553184556397225887436800208469961830346758525473488342650 + 1215377124295615599958014940754530322716279139256294403912972852801120695446*rho 28317 + 6413150907754487484553184556397225887436800208469961830346758525473488342650*seg30AccY48 rho) = rho 28808 := by
  rw [seg30AccX48_sum, seg30AccY48_sum]
  unfold Seg30.relationRow492 at r492
  simp only [Seg30.relationLc133, Seg30.relationLc133Part0, Seg30.relationLc133Part1] at r492
  simp only [Seg30.relationLc134, Seg30.relationLc134Part0, Seg30.relationLc134Part1] at r492
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r492 ⊢
  exact r492

theorem seg30_prefix_49_addX (rho : Nat -> Seg30.F)
    (r493 : Seg30.relationRow493 rho) :
    rho 28809*(1 + rho 28808) = 6413150907754487484553184556397225887436800208469961830346758525473488342650 + 3949201315064552824720832127996640554353861519998346887942581999111154026165*rho 28317 + 6652269607043323677509608761471130683889811754583424989249832989233900315816*seg30AccX48 rho + 6413150907754487484553184556397225887436800208469961830346758525473488342650*seg30AccY48 rho := by
  rw [add_assoc, seg30AccWeighted48]
  unfold Seg30.relationRow493 at r493
  simp only [Seg30.relationLc135, Seg30.relationLc135Part0, Seg30.relationLc135Part1, Seg30.relationLc135Part2, Seg30.relationLc135Part3] at r493
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r493 ⊢
  exact r493

theorem seg30_prefix_49_addY (rho : Nat -> Seg30.F)
    (r494 : Seg30.relationRow494 rho) :
    rho 28810*(1 + (-1)*rho 28808) = 6652269607043323677509608761471130683889811754583424989249832989233900315816 + 4831331157148550733639228106541538266651135708129441846890548289973548468579*rho 28317 + 6413150907754487484553184556397225887436800208469961830346758525473488342650*seg30AccX48 rho + 6652269607043323677509608761471130683889811754583424989249832989233900315816*seg30AccY48 rho := by
  rw [add_assoc, seg30AccWeighted48]
  unfold Seg30.relationRow494 at r494
  simp only [Seg30.relationLc136, Seg30.relationLc136Part0, Seg30.relationLc136Part1, Seg30.relationLc136Part2, Seg30.relationLc136Part3] at r494
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r494 ⊢
  exact r494

theorem seg30_prefix_49_selX (rho : Nat -> Seg30.F)
    (r495 : Seg30.relationRow495 rho) :
    (1*rho 28366)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX48 rho + rho 28809) = rho 28811 := by
  rw [seg30AccX48_sum]
  unfold Seg30.relationRow495 at r495
  simp only [Seg30.relationLc137, Seg30.relationLc137Part0, Seg30.relationLc137Part1] at r495
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r495 ⊢
  exact r495

theorem seg30_prefix_49_selY (rho : Nat -> Seg30.F)
    (r496 : Seg30.relationRow496 rho) :
    (1*rho 28366)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY48 rho + rho 28810) = rho 28812 := by
  rw [seg30AccY48_sum]
  unfold Seg30.relationRow496 at r496
  simp only [Seg30.relationLc138, Seg30.relationLc138Part0, Seg30.relationLc138Part1] at r496
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r496 ⊢
  exact r496

theorem seg30_prefix_50_v2 (rho : Nat -> Seg30.F)
    (r497 : Seg30.relationRow497 rho) :
    (5950474546882210499012341232813126805028943304936432907267999291294648134291*rho 28317 + 320055141918587978338726536121412824693252616933599943700096885295036456032*seg30AccX49 rho)*(8155076340509630276151890452332611038410993615687632835162132366439369052755 + 1501841507962387672917297163067361290383322419628080489436301334333518676056*rho 28317 + 8155076340509630276151890452332611038410993615687632835162132366439369052755*seg30AccY49 rho) = rho 28813 := by
  rw [seg30AccX49_sum, seg30AccY49_sum]
  unfold Seg30.relationRow497 at r497
  simp only [Seg30.relationLc139, Seg30.relationLc139Part0, Seg30.relationLc139Part1] at r497
  simp only [Seg30.relationLc140, Seg30.relationLc140Part0, Seg30.relationLc140Part1] at r497
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r497 ⊢
  exact r497

theorem seg30_prefix_50_addX (rho : Nat -> Seg30.F)
    (r498 : Seg30.relationRow498 rho) :
    rho 28814*(1 + rho 28813) = 8155076340509630276151890452332611038410993615687632835162132366439369052755 + 2233372455048679262201625415386062638113921118661561817472833585669413565008*rho 28317 + 1341827770561912079317369975885886708998717290132699184823770988323618494272*seg30AccX49 rho + 8155076340509630276151890452332611038410993615687632835162132366439369052755*seg30AccY49 rho := by
  rw [add_assoc, seg30AccWeighted49]
  unfold Seg30.relationRow498 at r498
  simp only [Seg30.relationLc141, Seg30.relationLc141Part0, Seg30.relationLc141Part1, Seg30.relationLc141Part2, Seg30.relationLc141Part3] at r498
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r498 ⊢
  exact r498

theorem seg30_prefix_50_addY (rho : Nat -> Seg30.F)
    (r499 : Seg30.relationRow499 rho) :
    rho 28815*(1 + (-1)*rho 28813) = 1341827770561912079317369975885886708998717290132699184823770988323618494272 + 5451793768867332841443815958080869119356458762955377112331473906239847057792*rho 28317 + 8155076340509630276151890452332611038410993615687632835162132366439369052755*seg30AccX49 rho + 1341827770561912079317369975885886708998717290132699184823770988323618494272*seg30AccY49 rho := by
  rw [add_assoc, seg30AccWeighted49]
  unfold Seg30.relationRow499 at r499
  simp only [Seg30.relationLc142, Seg30.relationLc142Part0, Seg30.relationLc142Part1, Seg30.relationLc142Part2, Seg30.relationLc142Part3] at r499
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r499 ⊢
  exact r499

theorem seg30_prefix_50_selX (rho : Nat -> Seg30.F)
    (r500 : Seg30.relationRow500 rho) :
    (1*rho 28367)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX49 rho + rho 28814) = rho 28816 := by
  rw [seg30AccX49_sum]
  unfold Seg30.relationRow500 at r500
  simp only [Seg30.relationLc143, Seg30.relationLc143Part0, Seg30.relationLc143Part1] at r500
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r500 ⊢
  exact r500

theorem seg30_prefix_50_selY (rho : Nat -> Seg30.F)
    (r501 : Seg30.relationRow501 rho) :
    (1*rho 28367)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY49 rho + rho 28815) = rho 28817 := by
  rw [seg30AccY49_sum]
  unfold Seg30.relationRow501 at r501
  simp only [Seg30.relationLc144, Seg30.relationLc144Part0, Seg30.relationLc144Part1] at r501
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r501 ⊢
  exact r501


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

