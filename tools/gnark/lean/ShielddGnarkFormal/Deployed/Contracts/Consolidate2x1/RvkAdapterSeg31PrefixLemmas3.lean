import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_prefix_31_v2 (rho : Nat -> Seg31.F)
    (r402 : Seg31.relationRow402 rho) :
    (4581169201032225273346815198674222137244651689521475375102896469810765099874*rho 29271 + 6239473800542177955912286854217196612304894561077124215846141335882663981489*seg31AccX30 rho)*(7014478899807931017630156883840563490129767664606627483381858286107267060760 + 3705126959081868329560129378476674408048362276472695522288315318682167365101*rho 29271 + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg31AccY30 rho) = rho 29672 := by
  rw [seg31AccX30_sum, seg31AccY30_sum]
  unfold Seg31.relationRow402 at r402
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r402 ⊢
  exact r402

theorem seg31_prefix_31_addX (rho : Nat -> Seg31.F)
    (r403 : Seg31.relationRow403 rho) :
    rho 29673*(1 + rho 29672) = 7014478899807931017630156883840563490129767664606627483381858286107267060760 + 4036483349559716702726202916369721979329262896544758086694624634891391150373*rho 29271 + 2917515087207657242782997913936898453769403476043285566617773795384885965012*seg31AccX30 rho + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg31AccY30 rho := by
  rw [add_assoc, seg31AccWeighted30]
  unfold Seg31.relationRow403 at r403
  simp only [Seg31.relationLc29, Seg31.relationLc29Part0, Seg31.relationLc29Part1] at r403
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r403 ⊢
  exact r403

theorem seg31_prefix_31_addY (rho : Nat -> Seg31.F)
    (r404 : Seg31.relationRow404 rho) :
    rho 29674*(1 + (-1)*rho 29672) = 2917515087207657242782997913936898453769403476043285566617773795384885965012 + 4721939043766132390365156950830445930758152113648870963101837212571466540881*rho 29271 + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg31AccX30 rho + 2917515087207657242782997913936898453769403476043285566617773795384885965012*seg31AccY30 rho := by
  rw [add_assoc, seg31AccWeighted30]
  unfold Seg31.relationRow404 at r404
  simp only [Seg31.relationLc30, Seg31.relationLc30Part0, Seg31.relationLc30Part1] at r404
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r404 ⊢
  exact r404

theorem seg31_prefix_31_selX (rho : Nat -> Seg31.F)
    (r405 : Seg31.relationRow405 rho) :
    (1*rho 29302)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX30 rho + rho 29673) = rho 29675 := by
  rw [seg31AccX30_sum]
  unfold Seg31.relationRow405 at r405
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r405 ⊢
  exact r405

theorem seg31_prefix_31_selY (rho : Nat -> Seg31.F)
    (r406 : Seg31.relationRow406 rho) :
    (1*rho 29302)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY30 rho + rho 29674) = rho 29676 := by
  rw [seg31AccY30_sum]
  unfold Seg31.relationRow406 at r406
  simp only [Seg31.relationLc31, Seg31.relationLc31Part0, Seg31.relationLc31Part1] at r406
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r406 ⊢
  exact r406

theorem seg31_prefix_32_v2 (rho : Nat -> Seg31.F)
    (r407 : Seg31.relationRow407 rho) :
    (7203414340787563976155236541638779635986213038456604732762385849135341147546*rho 29271 + 136614437469717025728540285685024726697946417222084284029518632750850413301*seg31AccX31 rho)*(4648071162727660542848380498583304381460872648196428650654098166653683272040 + 2540880036486131943961124182899818153723310999553178717815323475067300526429*rho 29271 + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg31AccY31 rho) = rho 29677 := by
  rw [seg31AccX31_sum, seg31AccY31_sum]
  unfold Seg31.relationRow407 at r407
  simp only [Seg31.relationLc32, Seg31.relationLc32Part0, Seg31.relationLc32Part1] at r407
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r407 ⊢
  exact r407

theorem seg31_prefix_32_addX (rho : Nat -> Seg31.F)
    (r408 : Seg31.relationRow408 rho) :
    rho 29678*(1 + rho 29677) = 4648071162727660542848380498583304381460872648196428650654098166653683272040 + 3365069102581043717779498816644741510181603160285966327926452578638586080029*rho 29271 + 5199217301679655314838974818410910815321373952268712613122662610605472371741*seg31AccX31 rho + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg31AccY31 rho := by
  rw [add_assoc, seg31AccWeighted31]
  unfold Seg31.relationRow408 at r408
  simp only [Seg31.relationLc33, Seg31.relationLc33Part0, Seg31.relationLc33Part1] at r408
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r408 ⊢
  exact r408

theorem seg31_prefix_32_addY (rho : Nat -> Seg31.F)
    (r409 : Seg31.relationRow409 rho) :
    rho 29679*(1 + (-1)*rho 29677) = 5199217301679655314838974818410910815321373952268712613122662610605472371741 + 2917606646628830688575648961145231231134156944394659783256745266509429338581*rho 29271 + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg31AccX31 rho + 5199217301679655314838974818410910815321373952268712613122662610605472371741*seg31AccY31 rho := by
  rw [add_assoc, seg31AccWeighted31]
  unfold Seg31.relationRow409 at r409
  simp only [Seg31.relationLc34, Seg31.relationLc34Part0, Seg31.relationLc34Part1] at r409
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r409 ⊢
  exact r409

theorem seg31_prefix_32_selX (rho : Nat -> Seg31.F)
    (r410 : Seg31.relationRow410 rho) :
    (1*rho 29303)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX31 rho + rho 29678) = rho 29680 := by
  rw [seg31AccX31_sum]
  unfold Seg31.relationRow410 at r410
  simp only [Seg31.relationLc35, Seg31.relationLc35Part0, Seg31.relationLc35Part1] at r410
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r410 ⊢
  exact r410

theorem seg31_prefix_32_selY (rho : Nat -> Seg31.F)
    (r411 : Seg31.relationRow411 rho) :
    (1*rho 29303)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY31 rho + rho 29679) = rho 29681 := by
  rw [seg31AccY31_sum]
  unfold Seg31.relationRow411 at r411
  simp only [Seg31.relationLc36, Seg31.relationLc36Part0, Seg31.relationLc36Part1] at r411
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r411 ⊢
  exact r411

theorem seg31_prefix_33_v2 (rho : Nat -> Seg31.F)
    (r412 : Seg31.relationRow412 rho) :
    (3360975926604625167541495984214134574008106726344771564779072438371774310356*rho 29271 + 1543965350493936645240803205024551544750903601537073662569060821766604821295*seg31AccX32 rho)*(6040898278084703606807003137529967990516096655680683589984074628992017998216 + 7137487175674098003771138708922956629581657025759195104399955519750233128346*rho 29271 + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg31AccY32 rho) = rho 29682 := by
  rw [seg31AccX32_sum, seg31AccY32_sum]
  unfold Seg31.relationRow412 at r412
  simp only [Seg31.relationLc37, Seg31.relationLc37Part0, Seg31.relationLc37Part1] at r412
  simp only [Seg31.relationLc38, Seg31.relationLc38Part0, Seg31.relationLc38Part1] at r412
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r412 ⊢
  exact r412

theorem seg31_prefix_33_addX (rho : Nat -> Seg31.F)
    (r413 : Seg31.relationRow413 rho) :
    rho 29683*(1 + rho 29682) = 6040898278084703606807003137529967990516096655680683589984074628992017998216 + 4449565551369732653569275718150486047453352804080325646965690206226838254580*rho 29271 + 5305902802305707051264319939428136335020260788389258596187898762049986541053*seg31AccX32 rho + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg31AccY32 rho := by
  rw [add_assoc, seg31AccWeighted32]
  unfold Seg31.relationRow413 at r413
  simp only [Seg31.relationLc39, Seg31.relationLc39Part0, Seg31.relationLc39Part1, Seg31.relationLc39Part2] at r413
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r413 ⊢
  exact r413

theorem seg31_prefix_33_addY (rho : Nat -> Seg31.F)
    (r414 : Seg31.relationRow414 rho) :
    rho 29684*(1 + (-1)*rho 29682) = 5305902802305707051264319939428136335020260788389258596187898762049986541053 + 2814877368443726696118547384849669017277674374461576406649511044998605996800*rho 29271 + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg31AccX32 rho + 5305902802305707051264319939428136335020260788389258596187898762049986541053*seg31AccY32 rho := by
  rw [add_assoc, seg31AccWeighted32]
  unfold Seg31.relationRow414 at r414
  simp only [Seg31.relationLc40, Seg31.relationLc40Part0, Seg31.relationLc40Part1, Seg31.relationLc40Part2] at r414
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r414 ⊢
  exact r414

theorem seg31_prefix_33_selX (rho : Nat -> Seg31.F)
    (r415 : Seg31.relationRow415 rho) :
    (1*rho 29304)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX32 rho + rho 29683) = rho 29685 := by
  rw [seg31AccX32_sum]
  unfold Seg31.relationRow415 at r415
  simp only [Seg31.relationLc41, Seg31.relationLc41Part0, Seg31.relationLc41Part1] at r415
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r415 ⊢
  exact r415

theorem seg31_prefix_33_selY (rho : Nat -> Seg31.F)
    (r416 : Seg31.relationRow416 rho) :
    (1*rho 29304)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY32 rho + rho 29684) = rho 29686 := by
  rw [seg31AccY32_sum]
  unfold Seg31.relationRow416 at r416
  simp only [Seg31.relationLc42, Seg31.relationLc42Part0, Seg31.relationLc42Part1] at r416
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r416 ⊢
  exact r416

theorem seg31_prefix_34_v2 (rho : Nat -> Seg31.F)
    (r417 : Seg31.relationRow417 rho) :
    (7435118643412649766237088463347060288844193205328919495557364512525268642612*rho 29271 + 2390951901919080636374557696001749605335611760845118841000002691622039366119*seg31AccX33 rho)*(4339327889298312009382154954915201834845694584936220011692515152447487397113 + 5952647242997322099106275843266454433107326250844550093282472843230506741173*rho 29271 + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg31AccY33 rho) = rho 29687 := by
  rw [seg31AccX33_sum, seg31AccY33_sum]
  unfold Seg31.relationRow417 at r417
  simp only [Seg31.relationLc43, Seg31.relationLc43Part0, Seg31.relationLc43Part1] at r417
  simp only [Seg31.relationLc44, Seg31.relationLc44Part0, Seg31.relationLc44Part1] at r417
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r417 ⊢
  exact r417

theorem seg31_prefix_34_addX (rho : Nat -> Seg31.F)
    (r418 : Seg31.relationRow418 rho) :
    rho 29688*(1 + rho 29687) = 4339327889298312009382154954915201834845694584936220011692515152447487397113 + 932037297588725938030836807673242895009462327618292635717409236553558997408*rho 29271 + 5518622457885972293314649118454410659563509069630906029521731494429853650193*seg31AccX33 rho + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg31AccY33 rho := by
  rw [add_assoc, seg31AccWeighted33]
  unfold Seg31.relationRow418 at r418
  simp only [Seg31.relationLc45, Seg31.relationLc45Part0, Seg31.relationLc45Part1, Seg31.relationLc45Part2] at r418
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r418 ⊢
  exact r418

theorem seg31_prefix_34_addY (rho : Nat -> Seg31.F)
    (r419 : Seg31.relationRow419 rho) :
    rho 29689*(1 + (-1)*rho 29687) = 5518622457885972293314649118454410659563509069630906029521731494429853650193 + 6253181600698670761975383693459860083874249503681351330263538576416174709777*rho 29271 + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg31AccX33 rho + 5518622457885972293314649118454410659563509069630906029521731494429853650193*seg31AccY33 rho := by
  rw [add_assoc, seg31AccWeighted33]
  unfold Seg31.relationRow419 at r419
  simp only [Seg31.relationLc46, Seg31.relationLc46Part0, Seg31.relationLc46Part1, Seg31.relationLc46Part2] at r419
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r419 ⊢
  exact r419

theorem seg31_prefix_34_selX (rho : Nat -> Seg31.F)
    (r420 : Seg31.relationRow420 rho) :
    (1*rho 29305)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX33 rho + rho 29688) = rho 29690 := by
  rw [seg31AccX33_sum]
  unfold Seg31.relationRow420 at r420
  simp only [Seg31.relationLc47, Seg31.relationLc47Part0, Seg31.relationLc47Part1] at r420
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r420 ⊢
  exact r420

theorem seg31_prefix_34_selY (rho : Nat -> Seg31.F)
    (r421 : Seg31.relationRow421 rho) :
    (1*rho 29305)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY33 rho + rho 29689) = rho 29691 := by
  rw [seg31AccY33_sum]
  unfold Seg31.relationRow421 at r421
  simp only [Seg31.relationLc48, Seg31.relationLc48Part0, Seg31.relationLc48Part1] at r421
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r421 ⊢
  exact r421

theorem seg31_prefix_35_v2 (rho : Nat -> Seg31.F)
    (r422 : Seg31.relationRow422 rho) :
    (3651366216281786421926547364596016781057486484064302133377103200620687596976*rho 29271 + 2511669022247206812161869629466276987337945639304938005698123059390861064989*seg31AccX34 rho)*(2259012951295629764024579298461801285536326622251485130033474515142356155111 + 348095528643503982719379745132160814341763278282712383821836934807805599487*rho 29271 + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg31AccY34 rho) = rho 29692 := by
  rw [seg31AccX34_sum, seg31AccY34_sum]
  unfold Seg31.relationRow422 at r422
  simp only [Seg31.relationLc49, Seg31.relationLc49Part0, Seg31.relationLc49Part1] at r422
  simp only [Seg31.relationLc50, Seg31.relationLc50Part0, Seg31.relationLc50Part1] at r422
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r422 ⊢
  exact r422

theorem seg31_prefix_35_addX (rho : Nat -> Seg31.F)
    (r423 : Seg31.relationRow423 rho) :
    rho 29693*(1 + rho 29692) = 2259012951295629764024579298461801285536326622251485130033474515142356155111 + 7563854264655058385701221424827548968682131921287248312995691503799349437144*rho 29271 + 615787240614527871614334113260975343889452432761734187405312639311890398429*seg31AccX34 rho + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg31AccY34 rho := by
  rw [add_assoc, seg31AccWeighted34]
  unfold Seg31.relationRow423 at r423
  simp only [Seg31.relationLc51, Seg31.relationLc51Part0, Seg31.relationLc51Part1, Seg31.relationLc51Part2] at r423
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r423 ⊢
  exact r423

theorem seg31_prefix_35_addY (rho : Nat -> Seg31.F)
    (r424 : Seg31.relationRow424 rho) :
    rho 29694*(1 + (-1)*rho 29692) = 615787240614527871614334113260975343889452432761734187405312639311890398429 + 6825036008606936403574758059084895642046160173684766887406037028034446940920*rho 29271 + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg31AccX34 rho + 615787240614527871614334113260975343889452432761734187405312639311890398429*seg31AccY34 rho := by
  rw [add_assoc, seg31AccWeighted34]
  unfold Seg31.relationRow424 at r424
  simp only [Seg31.relationLc52, Seg31.relationLc52Part0, Seg31.relationLc52Part1, Seg31.relationLc52Part2] at r424
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r424 ⊢
  exact r424

theorem seg31_prefix_35_selX (rho : Nat -> Seg31.F)
    (r425 : Seg31.relationRow425 rho) :
    (1*rho 29306)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX34 rho + rho 29693) = rho 29695 := by
  rw [seg31AccX34_sum]
  unfold Seg31.relationRow425 at r425
  simp only [Seg31.relationLc53, Seg31.relationLc53Part0, Seg31.relationLc53Part1] at r425
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r425 ⊢
  exact r425

theorem seg31_prefix_35_selY (rho : Nat -> Seg31.F)
    (r426 : Seg31.relationRow426 rho) :
    (1*rho 29306)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY34 rho + rho 29694) = rho 29696 := by
  rw [seg31AccY34_sum]
  unfold Seg31.relationRow426 at r426
  simp only [Seg31.relationLc54, Seg31.relationLc54Part0, Seg31.relationLc54Part1] at r426
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r426 ⊢
  exact r426

theorem seg31_prefix_36_v2 (rho : Nat -> Seg31.F)
    (r427 : Seg31.relationRow427 rho) :
    (2833339980642050130105468187124395222836116796601658345597697387732210172573*rho 29271 + 7315983903096487915754023566782326847467569909030484887817389720623755155896*seg31AccX35 rho)*(6295691546556716754436912436379714908434430701210537280485031833028397410397 + 2549556922254275764026477534121736154314477242231135576491077161890810328114*rho 29271 + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg31AccY35 rho) = rho 29697 := by
  rw [seg31AccX35_sum, seg31AccY35_sum]
  unfold Seg31.relationRow427 at r427
  simp only [Seg31.relationLc55, Seg31.relationLc55Part0, Seg31.relationLc55Part1] at r427
  simp only [Seg31.relationLc56, Seg31.relationLc56Part0, Seg31.relationLc56Part1] at r427
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r427 ⊢
  exact r427

theorem seg31_prefix_36_addX (rho : Nat -> Seg31.F)
    (r428 : Seg31.relationRow428 rho) :
    rho 29698*(1 + rho 29697) = 6295691546556716754436912436379714908434430701210537280485031833028397410397 + 6916681249492857906630506008985655411921888986126285976219786978352487071429*rho 29271 + 6554496631765374631696458020546417542665533138533649817136049192449861308000*seg31AccX35 rho + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg31AccY35 rho := by
  rw [add_assoc, seg31AccWeighted35]
  unfold Seg31.relationRow428 at r428
  simp only [Seg31.relationLc57, Seg31.relationLc57Part0, Seg31.relationLc57Part1, Seg31.relationLc57Part2] at r428
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r428 ⊢
  exact r428

theorem seg31_prefix_36_addY (rho : Nat -> Seg31.F)
    (r429 : Seg31.relationRow429 rho) :
    rho 29699*(1 + (-1)*rho 29697) = 6554496631765374631696458020546417542665533138533649817136049192449861308000 + 1487571320597799729156916433138675965370975271164905067793436153547633830944*rho 29271 + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg31AccX35 rho + 6554496631765374631696458020546417542665533138533649817136049192449861308000*seg31AccY35 rho := by
  rw [add_assoc, seg31AccWeighted35]
  unfold Seg31.relationRow429 at r429
  simp only [Seg31.relationLc58, Seg31.relationLc58Part0, Seg31.relationLc58Part1, Seg31.relationLc58Part2] at r429
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r429 ⊢
  exact r429

theorem seg31_prefix_36_selX (rho : Nat -> Seg31.F)
    (r430 : Seg31.relationRow430 rho) :
    (1*rho 29307)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX35 rho + rho 29698) = rho 29700 := by
  rw [seg31AccX35_sum]
  unfold Seg31.relationRow430 at r430
  simp only [Seg31.relationLc59, Seg31.relationLc59Part0, Seg31.relationLc59Part1] at r430
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r430 ⊢
  exact r430

theorem seg31_prefix_36_selY (rho : Nat -> Seg31.F)
    (r431 : Seg31.relationRow431 rho) :
    (1*rho 29307)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY35 rho + rho 29699) = rho 29701 := by
  rw [seg31AccY35_sum]
  unfold Seg31.relationRow431 at r431
  simp only [Seg31.relationLc60, Seg31.relationLc60Part0, Seg31.relationLc60Part1] at r431
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r431 ⊢
  exact r431

theorem seg31_prefix_37_v2 (rho : Nat -> Seg31.F)
    (r432 : Seg31.relationRow432 rho) :
    (803980581825681997882472852881647133048328936003838712435095075808245989086*rho 29271 + 6334345927168293860617691197907754261420091566533206876213950776912116811895*seg31AccX36 rho)*(3322832884971658379020786549972206387369304268355604981071819235682279886563 + 3742391049692554707688247834471216841214819134200172501298175408335104860001*rho 29271 + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg31AccY36 rho) = rho 29702 := by
  rw [seg31AccX36_sum, seg31AccY36_sum]
  unfold Seg31.relationRow432 at r432
  simp only [Seg31.relationLc61, Seg31.relationLc61Part0, Seg31.relationLc61Part1] at r432
  simp only [Seg31.relationLc62, Seg31.relationLc62Part0, Seg31.relationLc62Part1] at r432
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r432 ⊢
  exact r432

theorem seg31_prefix_37_addX (rho : Nat -> Seg31.F)
    (r433 : Seg31.relationRow433 rho) :
    rho 29703*(1 + rho 29702) = 3322832884971658379020786549972206387369304268355604981071819235682279886563 + 2129795733956591764029297315827035874160583587213118217946240747961540846450*rho 29271 + 5821815196371080939141566108487615899565058757814397251452290634226070225917*seg31AccX36 rho + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg31AccY36 rho := by
  rw [add_assoc, seg31AccWeighted36]
  unfold Seg31.relationRow433 at r433
  simp only [Seg31.relationLc63, Seg31.relationLc63Part0, Seg31.relationLc63Part1, Seg31.relationLc63Part2] at r433
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r433 ⊢
  exact r433

theorem seg31_prefix_37_addY (rho : Nat -> Seg31.F)
    (r434 : Seg31.relationRow434 rho) :
    rho 29704*(1 + (-1)*rho 29702) = 5821815196371080939141566108487615899565058757814397251452290634226070225917 + 1342632423321852336261692036393510600183999016189562550954932080238708326577*rho 29271 + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg31AccX36 rho + 5821815196371080939141566108487615899565058757814397251452290634226070225917*seg31AccY36 rho := by
  rw [add_assoc, seg31AccWeighted36]
  unfold Seg31.relationRow434 at r434
  simp only [Seg31.relationLc64, Seg31.relationLc64Part0, Seg31.relationLc64Part1, Seg31.relationLc64Part2] at r434
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r434 ⊢
  exact r434

theorem seg31_prefix_37_selX (rho : Nat -> Seg31.F)
    (r435 : Seg31.relationRow435 rho) :
    (1*rho 29308)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX36 rho + rho 29703) = rho 29705 := by
  rw [seg31AccX36_sum]
  unfold Seg31.relationRow435 at r435
  simp only [Seg31.relationLc65, Seg31.relationLc65Part0, Seg31.relationLc65Part1] at r435
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r435 ⊢
  exact r435

theorem seg31_prefix_37_selY (rho : Nat -> Seg31.F)
    (r436 : Seg31.relationRow436 rho) :
    (1*rho 29308)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY36 rho + rho 29704) = rho 29706 := by
  rw [seg31AccY36_sum]
  unfold Seg31.relationRow436 at r436
  simp only [Seg31.relationLc66, Seg31.relationLc66Part0, Seg31.relationLc66Part1] at r436
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r436 ⊢
  exact r436

theorem seg31_prefix_38_v2 (rho : Nat -> Seg31.F)
    (r437 : Seg31.relationRow437 rho) :
    (1009916982077206128033609777361685216350669515822433705706665175388118018829*rho 29271 + 6051250210517190749663141116441450966628119241944618079453095600811208772222*seg31AccX37 rho)*(3150268533740900499578316159152134076751680532834121341659634171961029431792 + 2898409259390194651556282054766198193763430239886953805590234007251608670059*rho 29271 + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg31AccY37 rho) = rho 29707 := by
  rw [seg31AccX37_sum, seg31AccY37_sum]
  unfold Seg31.relationRow437 at r437
  simp only [Seg31.relationLc67, Seg31.relationLc67Part0, Seg31.relationLc67Part1] at r437
  simp only [Seg31.relationLc68, Seg31.relationLc68Part0, Seg31.relationLc68Part1] at r437
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r437 ⊢
  exact r437

theorem seg31_prefix_38_addX (rho : Nat -> Seg31.F)
    (r438 : Seg31.relationRow438 rho) :
    rho 29708*(1 + rho 29707) = 3150268533740900499578316159152134076751680532834121341659634171961029431792 + 2758980867967042941829566517804359186364408625440783412445230694566907463858*rho 29271 + 5299009025282118220688906454851861015532590982905956826222019362649553696377*seg31AccX37 rho + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg31AccY37 rho := by
  rw [add_assoc, seg31AccWeighted37]
  unfold Seg31.relationRow438 at r438
  simp only [Seg31.relationLc69, Seg31.relationLc69Part0, Seg31.relationLc69Part1, Seg31.relationLc69Part2] at r438
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r438 ⊢
  exact r438

theorem seg31_prefix_38_addY (rho : Nat -> Seg31.F)
    (r439 : Seg31.relationRow439 rho) :
    rho 29709*(1 + (-1)*rho 29707) = 5299009025282118220688906454851861015532590982905956826222019362649553696377 + 6343037318141234726453880135613100257806210245726646240133126189191628366975*rho 29271 + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg31AccX37 rho + 5299009025282118220688906454851861015532590982905956826222019362649553696377*seg31AccY37 rho := by
  rw [add_assoc, seg31AccWeighted37]
  unfold Seg31.relationRow439 at r439
  simp only [Seg31.relationLc70, Seg31.relationLc70Part0, Seg31.relationLc70Part1, Seg31.relationLc70Part2] at r439
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r439 ⊢
  exact r439

theorem seg31_prefix_38_selX (rho : Nat -> Seg31.F)
    (r440 : Seg31.relationRow440 rho) :
    (1*rho 29309)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX37 rho + rho 29708) = rho 29710 := by
  rw [seg31AccX37_sum]
  unfold Seg31.relationRow440 at r440
  simp only [Seg31.relationLc71, Seg31.relationLc71Part0, Seg31.relationLc71Part1] at r440
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r440 ⊢
  exact r440

theorem seg31_prefix_38_selY (rho : Nat -> Seg31.F)
    (r441 : Seg31.relationRow441 rho) :
    (1*rho 29309)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY37 rho + rho 29709) = rho 29711 := by
  rw [seg31AccY37_sum]
  unfold Seg31.relationRow441 at r441
  simp only [Seg31.relationLc72, Seg31.relationLc72Part0, Seg31.relationLc72Part1] at r441
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r441 ⊢
  exact r441

theorem seg31_prefix_39_v2 (rho : Nat -> Seg31.F)
    (r442 : Seg31.relationRow442 rho) :
    (4055808561599814462885459923885954734183140044469009082707959598090942531216*rho 29271 + 919177287557471400886151427262146296905684745211404392707875994351732261419*seg31AccX38 rho)*(2459406165588571115311174697897461555967218978176849787735079515445045239877 + 3561836517110067914917388337528013887729344884646458938509273390102621545248*rho 29271 + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg31AccY38 rho) = rho 29712 := by
  rw [seg31AccX38_sum, seg31AccY38_sum]
  unfold Seg31.relationRow442 at r442
  simp only [Seg31.relationLc73, Seg31.relationLc73Part0, Seg31.relationLc73Part1] at r442
  simp only [Seg31.relationLc74, Seg31.relationLc74Part0, Seg31.relationLc74Part1] at r442
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r442 ⊢
  exact r442

theorem seg31_prefix_39_addX (rho : Nat -> Seg31.F)
    (r443 : Seg31.relationRow443 rho) :
    rho 29713*(1 + rho 29712) = 2459406165588571115311174697897461555967218978176849787735079515445045239877 + 5366117760719104240009535820294641980238990105175700970320241128819874078089*rho 29271 + 5034556368092701954807355136104875024596127238450076252401212621682093933060*seg31AccX38 rho + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg31AccY38 rho := by
  rw [add_assoc, seg31AccWeighted38]
  unfold Seg31.relationRow443 at r443
  simp only [Seg31.relationLc75, Seg31.relationLc75Part0, Seg31.relationLc75Part1, Seg31.relationLc75Part2] at r443
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r443 ⊢
  exact r443

theorem seg31_prefix_39_addY (rho : Nat -> Seg31.F)
    (r444 : Seg31.relationRow444 rho) :
    rho 29714*(1 + (-1)*rho 29712) = 5034556368092701954807355136104875024596127238450076252401212621682093933060 + 2776352286685200723773157721639124171677345230423218268294247495348690302387*rho 29271 + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg31AccX38 rho + 5034556368092701954807355136104875024596127238450076252401212621682093933060*seg31AccY38 rho := by
  rw [add_assoc, seg31AccWeighted38]
  unfold Seg31.relationRow444 at r444
  simp only [Seg31.relationLc76, Seg31.relationLc76Part0, Seg31.relationLc76Part1, Seg31.relationLc76Part2] at r444
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r444 ⊢
  exact r444

theorem seg31_prefix_39_selX (rho : Nat -> Seg31.F)
    (r445 : Seg31.relationRow445 rho) :
    (1*rho 29310)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX38 rho + rho 29713) = rho 29715 := by
  rw [seg31AccX38_sum]
  unfold Seg31.relationRow445 at r445
  simp only [Seg31.relationLc77, Seg31.relationLc77Part0, Seg31.relationLc77Part1] at r445
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r445 ⊢
  exact r445

theorem seg31_prefix_39_selY (rho : Nat -> Seg31.F)
    (r446 : Seg31.relationRow446 rho) :
    (1*rho 29310)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY38 rho + rho 29714) = rho 29716 := by
  rw [seg31AccY38_sum]
  unfold Seg31.relationRow446 at r446
  simp only [Seg31.relationLc78, Seg31.relationLc78Part0, Seg31.relationLc78Part1] at r446
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r446 ⊢
  exact r446

theorem seg31_prefix_40_v2 (rho : Nat -> Seg31.F)
    (r447 : Seg31.relationRow447 rho) :
    (1215279473610371209935227904049657825190163834384456189946283016107686137841*rho 29271 + 3131519962748260633613313507912172186478635528818138590775791988998556993852*seg31AccX39 rho)*(1214286283469246825825118534888634565400684580240643302545653368917068457758 + 8298128149157705628277342045212304693352092272731248112178849781241908597876*rho 29271 + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg31AccY39 rho) = rho 29717 := by
  rw [seg31AccX39_sum, seg31AccY39_sum]
  unfold Seg31.relationRow447 at r447
  simp only [Seg31.relationLc79, Seg31.relationLc79Part0, Seg31.relationLc79Part1] at r447
  simp only [Seg31.relationLc80, Seg31.relationLc80Part0, Seg31.relationLc80Part1] at r447
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r447 ⊢
  exact r447

theorem seg31_prefix_40_addX (rho : Nat -> Seg31.F)
    (r448 : Seg31.relationRow448 rho) :
    rho 29718*(1 + rho 29717) = 1214286283469246825825118534888634565400684580240643302545653368917068457758 + 8002233522886339559505266502144845482991067722684261581370776804310052360471*rho 29271 + 8026210262354054865492217713588127197539452375622686325254164529602078941503*seg31AccX39 rho + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg31AccY39 rho := by
  rw [add_assoc, seg31AccWeighted39]
  unfold Seg31.relationRow448 at r448
  simp only [Seg31.relationLc81, Seg31.relationLc81Part0, Seg31.relationLc81Part1, Seg31.relationLc81Part2] at r448
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r448 ⊢
  exact r448

theorem seg31_prefix_40_addY (rho : Nat -> Seg31.F)
    (r449 : Seg31.relationRow449 rho) :
    rho 29719*(1 + (-1)*rho 29717) = 8026210262354054865492217713588127197539452375622686325254164529602078941503 + 7728715752397633698641128843943213501411187652390824656893175053399511388425*rho 29271 + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg31AccX39 rho + 8026210262354054865492217713588127197539452375622686325254164529602078941503*seg31AccY39 rho := by
  rw [add_assoc, seg31AccWeighted39]
  unfold Seg31.relationRow449 at r449
  simp only [Seg31.relationLc82, Seg31.relationLc82Part0, Seg31.relationLc82Part1, Seg31.relationLc82Part2] at r449
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r449 ⊢
  exact r449

theorem seg31_prefix_40_selX (rho : Nat -> Seg31.F)
    (r450 : Seg31.relationRow450 rho) :
    (1*rho 29311)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX39 rho + rho 29718) = rho 29720 := by
  rw [seg31AccX39_sum]
  unfold Seg31.relationRow450 at r450
  simp only [Seg31.relationLc83, Seg31.relationLc83Part0, Seg31.relationLc83Part1] at r450
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r450 ⊢
  exact r450

theorem seg31_prefix_40_selY (rho : Nat -> Seg31.F)
    (r451 : Seg31.relationRow451 rho) :
    (1*rho 29311)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY39 rho + rho 29719) = rho 29721 := by
  rw [seg31AccY39_sum]
  unfold Seg31.relationRow451 at r451
  simp only [Seg31.relationLc84, Seg31.relationLc84Part0, Seg31.relationLc84Part1] at r451
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r451 ⊢
  exact r451


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

