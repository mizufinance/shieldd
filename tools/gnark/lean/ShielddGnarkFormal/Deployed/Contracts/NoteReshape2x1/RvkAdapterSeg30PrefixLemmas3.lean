import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_prefix_31_v2 (rho : Nat -> Seg30.F)
    (r402 : Seg30.relationRow402 rho) :
    (4581169201032225273346815198674222137244651689521475375102896469810765099874*rho 28317 + 6239473800542177955912286854217196612304894561077124215846141335882663981489*seg30AccX30 rho)*(7014478899807931017630156883840563490129767664606627483381858286107267060760 + 3705126959081868329560129378476674408048362276472695522288315318682167365101*rho 28317 + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg30AccY30 rho) = rho 28718 := by
  rw [seg30AccX30_sum, seg30AccY30_sum]
  unfold Seg30.relationRow402 at r402
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r402 ⊢
  exact r402

theorem seg30_prefix_31_addX (rho : Nat -> Seg30.F)
    (r403 : Seg30.relationRow403 rho) :
    rho 28719*(1 + rho 28718) = 7014478899807931017630156883840563490129767664606627483381858286107267060760 + 4036483349559716702726202916369721979329262896544758086694624634891391150373*rho 28317 + 2917515087207657242782997913936898453769403476043285566617773795384885965012*seg30AccX30 rho + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg30AccY30 rho := by
  rw [add_assoc, seg30AccWeighted30]
  unfold Seg30.relationRow403 at r403
  simp only [Seg30.relationLc29, Seg30.relationLc29Part0, Seg30.relationLc29Part1] at r403
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r403 ⊢
  exact r403

theorem seg30_prefix_31_addY (rho : Nat -> Seg30.F)
    (r404 : Seg30.relationRow404 rho) :
    rho 28720*(1 + (-1)*rho 28718) = 2917515087207657242782997913936898453769403476043285566617773795384885965012 + 4721939043766132390365156950830445930758152113648870963101837212571466540881*rho 28317 + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg30AccX30 rho + 2917515087207657242782997913936898453769403476043285566617773795384885965012*seg30AccY30 rho := by
  rw [add_assoc, seg30AccWeighted30]
  unfold Seg30.relationRow404 at r404
  simp only [Seg30.relationLc30, Seg30.relationLc30Part0, Seg30.relationLc30Part1] at r404
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r404 ⊢
  exact r404

theorem seg30_prefix_31_selX (rho : Nat -> Seg30.F)
    (r405 : Seg30.relationRow405 rho) :
    (1*rho 28348)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX30 rho + rho 28719) = rho 28721 := by
  rw [seg30AccX30_sum]
  unfold Seg30.relationRow405 at r405
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r405 ⊢
  exact r405

theorem seg30_prefix_31_selY (rho : Nat -> Seg30.F)
    (r406 : Seg30.relationRow406 rho) :
    (1*rho 28348)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY30 rho + rho 28720) = rho 28722 := by
  rw [seg30AccY30_sum]
  unfold Seg30.relationRow406 at r406
  simp only [Seg30.relationLc31, Seg30.relationLc31Part0, Seg30.relationLc31Part1] at r406
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r406 ⊢
  exact r406

theorem seg30_prefix_32_v2 (rho : Nat -> Seg30.F)
    (r407 : Seg30.relationRow407 rho) :
    (7203414340787563976155236541638779635986213038456604732762385849135341147546*rho 28317 + 136614437469717025728540285685024726697946417222084284029518632750850413301*seg30AccX31 rho)*(4648071162727660542848380498583304381460872648196428650654098166653683272040 + 2540880036486131943961124182899818153723310999553178717815323475067300526429*rho 28317 + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg30AccY31 rho) = rho 28723 := by
  rw [seg30AccX31_sum, seg30AccY31_sum]
  unfold Seg30.relationRow407 at r407
  simp only [Seg30.relationLc32, Seg30.relationLc32Part0, Seg30.relationLc32Part1] at r407
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r407 ⊢
  exact r407

theorem seg30_prefix_32_addX (rho : Nat -> Seg30.F)
    (r408 : Seg30.relationRow408 rho) :
    rho 28724*(1 + rho 28723) = 4648071162727660542848380498583304381460872648196428650654098166653683272040 + 3365069102581043717779498816644741510181603160285966327926452578638586080029*rho 28317 + 5199217301679655314838974818410910815321373952268712613122662610605472371741*seg30AccX31 rho + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg30AccY31 rho := by
  rw [add_assoc, seg30AccWeighted31]
  unfold Seg30.relationRow408 at r408
  simp only [Seg30.relationLc33, Seg30.relationLc33Part0, Seg30.relationLc33Part1] at r408
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r408 ⊢
  exact r408

theorem seg30_prefix_32_addY (rho : Nat -> Seg30.F)
    (r409 : Seg30.relationRow409 rho) :
    rho 28725*(1 + (-1)*rho 28723) = 5199217301679655314838974818410910815321373952268712613122662610605472371741 + 2917606646628830688575648961145231231134156944394659783256745266509429338581*rho 28317 + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg30AccX31 rho + 5199217301679655314838974818410910815321373952268712613122662610605472371741*seg30AccY31 rho := by
  rw [add_assoc, seg30AccWeighted31]
  unfold Seg30.relationRow409 at r409
  simp only [Seg30.relationLc34, Seg30.relationLc34Part0, Seg30.relationLc34Part1] at r409
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r409 ⊢
  exact r409

theorem seg30_prefix_32_selX (rho : Nat -> Seg30.F)
    (r410 : Seg30.relationRow410 rho) :
    (1*rho 28349)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX31 rho + rho 28724) = rho 28726 := by
  rw [seg30AccX31_sum]
  unfold Seg30.relationRow410 at r410
  simp only [Seg30.relationLc35, Seg30.relationLc35Part0, Seg30.relationLc35Part1] at r410
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r410 ⊢
  exact r410

theorem seg30_prefix_32_selY (rho : Nat -> Seg30.F)
    (r411 : Seg30.relationRow411 rho) :
    (1*rho 28349)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY31 rho + rho 28725) = rho 28727 := by
  rw [seg30AccY31_sum]
  unfold Seg30.relationRow411 at r411
  simp only [Seg30.relationLc36, Seg30.relationLc36Part0, Seg30.relationLc36Part1] at r411
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r411 ⊢
  exact r411

theorem seg30_prefix_33_v2 (rho : Nat -> Seg30.F)
    (r412 : Seg30.relationRow412 rho) :
    (3360975926604625167541495984214134574008106726344771564779072438371774310356*rho 28317 + 1543965350493936645240803205024551544750903601537073662569060821766604821295*seg30AccX32 rho)*(6040898278084703606807003137529967990516096655680683589984074628992017998216 + 7137487175674098003771138708922956629581657025759195104399955519750233128346*rho 28317 + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg30AccY32 rho) = rho 28728 := by
  rw [seg30AccX32_sum, seg30AccY32_sum]
  unfold Seg30.relationRow412 at r412
  simp only [Seg30.relationLc37, Seg30.relationLc37Part0, Seg30.relationLc37Part1] at r412
  simp only [Seg30.relationLc38, Seg30.relationLc38Part0, Seg30.relationLc38Part1] at r412
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r412 ⊢
  exact r412

theorem seg30_prefix_33_addX (rho : Nat -> Seg30.F)
    (r413 : Seg30.relationRow413 rho) :
    rho 28729*(1 + rho 28728) = 6040898278084703606807003137529967990516096655680683589984074628992017998216 + 4449565551369732653569275718150486047453352804080325646965690206226838254580*rho 28317 + 5305902802305707051264319939428136335020260788389258596187898762049986541053*seg30AccX32 rho + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg30AccY32 rho := by
  rw [add_assoc, seg30AccWeighted32]
  unfold Seg30.relationRow413 at r413
  simp only [Seg30.relationLc39, Seg30.relationLc39Part0, Seg30.relationLc39Part1, Seg30.relationLc39Part2] at r413
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r413 ⊢
  exact r413

theorem seg30_prefix_33_addY (rho : Nat -> Seg30.F)
    (r414 : Seg30.relationRow414 rho) :
    rho 28730*(1 + (-1)*rho 28728) = 5305902802305707051264319939428136335020260788389258596187898762049986541053 + 2814877368443726696118547384849669017277674374461576406649511044998605996800*rho 28317 + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg30AccX32 rho + 5305902802305707051264319939428136335020260788389258596187898762049986541053*seg30AccY32 rho := by
  rw [add_assoc, seg30AccWeighted32]
  unfold Seg30.relationRow414 at r414
  simp only [Seg30.relationLc40, Seg30.relationLc40Part0, Seg30.relationLc40Part1, Seg30.relationLc40Part2] at r414
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r414 ⊢
  exact r414

theorem seg30_prefix_33_selX (rho : Nat -> Seg30.F)
    (r415 : Seg30.relationRow415 rho) :
    (1*rho 28350)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX32 rho + rho 28729) = rho 28731 := by
  rw [seg30AccX32_sum]
  unfold Seg30.relationRow415 at r415
  simp only [Seg30.relationLc41, Seg30.relationLc41Part0, Seg30.relationLc41Part1] at r415
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r415 ⊢
  exact r415

theorem seg30_prefix_33_selY (rho : Nat -> Seg30.F)
    (r416 : Seg30.relationRow416 rho) :
    (1*rho 28350)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY32 rho + rho 28730) = rho 28732 := by
  rw [seg30AccY32_sum]
  unfold Seg30.relationRow416 at r416
  simp only [Seg30.relationLc42, Seg30.relationLc42Part0, Seg30.relationLc42Part1] at r416
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r416 ⊢
  exact r416

theorem seg30_prefix_34_v2 (rho : Nat -> Seg30.F)
    (r417 : Seg30.relationRow417 rho) :
    (7435118643412649766237088463347060288844193205328919495557364512525268642612*rho 28317 + 2390951901919080636374557696001749605335611760845118841000002691622039366119*seg30AccX33 rho)*(4339327889298312009382154954915201834845694584936220011692515152447487397113 + 5952647242997322099106275843266454433107326250844550093282472843230506741173*rho 28317 + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg30AccY33 rho) = rho 28733 := by
  rw [seg30AccX33_sum, seg30AccY33_sum]
  unfold Seg30.relationRow417 at r417
  simp only [Seg30.relationLc43, Seg30.relationLc43Part0, Seg30.relationLc43Part1] at r417
  simp only [Seg30.relationLc44, Seg30.relationLc44Part0, Seg30.relationLc44Part1] at r417
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r417 ⊢
  exact r417

theorem seg30_prefix_34_addX (rho : Nat -> Seg30.F)
    (r418 : Seg30.relationRow418 rho) :
    rho 28734*(1 + rho 28733) = 4339327889298312009382154954915201834845694584936220011692515152447487397113 + 932037297588725938030836807673242895009462327618292635717409236553558997408*rho 28317 + 5518622457885972293314649118454410659563509069630906029521731494429853650193*seg30AccX33 rho + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg30AccY33 rho := by
  rw [add_assoc, seg30AccWeighted33]
  unfold Seg30.relationRow418 at r418
  simp only [Seg30.relationLc45, Seg30.relationLc45Part0, Seg30.relationLc45Part1, Seg30.relationLc45Part2] at r418
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r418 ⊢
  exact r418

theorem seg30_prefix_34_addY (rho : Nat -> Seg30.F)
    (r419 : Seg30.relationRow419 rho) :
    rho 28735*(1 + (-1)*rho 28733) = 5518622457885972293314649118454410659563509069630906029521731494429853650193 + 6253181600698670761975383693459860083874249503681351330263538576416174709777*rho 28317 + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg30AccX33 rho + 5518622457885972293314649118454410659563509069630906029521731494429853650193*seg30AccY33 rho := by
  rw [add_assoc, seg30AccWeighted33]
  unfold Seg30.relationRow419 at r419
  simp only [Seg30.relationLc46, Seg30.relationLc46Part0, Seg30.relationLc46Part1, Seg30.relationLc46Part2] at r419
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r419 ⊢
  exact r419

theorem seg30_prefix_34_selX (rho : Nat -> Seg30.F)
    (r420 : Seg30.relationRow420 rho) :
    (1*rho 28351)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX33 rho + rho 28734) = rho 28736 := by
  rw [seg30AccX33_sum]
  unfold Seg30.relationRow420 at r420
  simp only [Seg30.relationLc47, Seg30.relationLc47Part0, Seg30.relationLc47Part1] at r420
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r420 ⊢
  exact r420

theorem seg30_prefix_34_selY (rho : Nat -> Seg30.F)
    (r421 : Seg30.relationRow421 rho) :
    (1*rho 28351)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY33 rho + rho 28735) = rho 28737 := by
  rw [seg30AccY33_sum]
  unfold Seg30.relationRow421 at r421
  simp only [Seg30.relationLc48, Seg30.relationLc48Part0, Seg30.relationLc48Part1] at r421
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r421 ⊢
  exact r421

theorem seg30_prefix_35_v2 (rho : Nat -> Seg30.F)
    (r422 : Seg30.relationRow422 rho) :
    (3651366216281786421926547364596016781057486484064302133377103200620687596976*rho 28317 + 2511669022247206812161869629466276987337945639304938005698123059390861064989*seg30AccX34 rho)*(2259012951295629764024579298461801285536326622251485130033474515142356155111 + 348095528643503982719379745132160814341763278282712383821836934807805599487*rho 28317 + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg30AccY34 rho) = rho 28738 := by
  rw [seg30AccX34_sum, seg30AccY34_sum]
  unfold Seg30.relationRow422 at r422
  simp only [Seg30.relationLc49, Seg30.relationLc49Part0, Seg30.relationLc49Part1] at r422
  simp only [Seg30.relationLc50, Seg30.relationLc50Part0, Seg30.relationLc50Part1] at r422
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r422 ⊢
  exact r422

theorem seg30_prefix_35_addX (rho : Nat -> Seg30.F)
    (r423 : Seg30.relationRow423 rho) :
    rho 28739*(1 + rho 28738) = 2259012951295629764024579298461801285536326622251485130033474515142356155111 + 7563854264655058385701221424827548968682131921287248312995691503799349437144*rho 28317 + 615787240614527871614334113260975343889452432761734187405312639311890398429*seg30AccX34 rho + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg30AccY34 rho := by
  rw [add_assoc, seg30AccWeighted34]
  unfold Seg30.relationRow423 at r423
  simp only [Seg30.relationLc51, Seg30.relationLc51Part0, Seg30.relationLc51Part1, Seg30.relationLc51Part2] at r423
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r423 ⊢
  exact r423

theorem seg30_prefix_35_addY (rho : Nat -> Seg30.F)
    (r424 : Seg30.relationRow424 rho) :
    rho 28740*(1 + (-1)*rho 28738) = 615787240614527871614334113260975343889452432761734187405312639311890398429 + 6825036008606936403574758059084895642046160173684766887406037028034446940920*rho 28317 + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg30AccX34 rho + 615787240614527871614334113260975343889452432761734187405312639311890398429*seg30AccY34 rho := by
  rw [add_assoc, seg30AccWeighted34]
  unfold Seg30.relationRow424 at r424
  simp only [Seg30.relationLc52, Seg30.relationLc52Part0, Seg30.relationLc52Part1, Seg30.relationLc52Part2] at r424
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r424 ⊢
  exact r424

theorem seg30_prefix_35_selX (rho : Nat -> Seg30.F)
    (r425 : Seg30.relationRow425 rho) :
    (1*rho 28352)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX34 rho + rho 28739) = rho 28741 := by
  rw [seg30AccX34_sum]
  unfold Seg30.relationRow425 at r425
  simp only [Seg30.relationLc53, Seg30.relationLc53Part0, Seg30.relationLc53Part1] at r425
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r425 ⊢
  exact r425

theorem seg30_prefix_35_selY (rho : Nat -> Seg30.F)
    (r426 : Seg30.relationRow426 rho) :
    (1*rho 28352)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY34 rho + rho 28740) = rho 28742 := by
  rw [seg30AccY34_sum]
  unfold Seg30.relationRow426 at r426
  simp only [Seg30.relationLc54, Seg30.relationLc54Part0, Seg30.relationLc54Part1] at r426
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r426 ⊢
  exact r426

theorem seg30_prefix_36_v2 (rho : Nat -> Seg30.F)
    (r427 : Seg30.relationRow427 rho) :
    (2833339980642050130105468187124395222836116796601658345597697387732210172573*rho 28317 + 7315983903096487915754023566782326847467569909030484887817389720623755155896*seg30AccX35 rho)*(6295691546556716754436912436379714908434430701210537280485031833028397410397 + 2549556922254275764026477534121736154314477242231135576491077161890810328114*rho 28317 + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg30AccY35 rho) = rho 28743 := by
  rw [seg30AccX35_sum, seg30AccY35_sum]
  unfold Seg30.relationRow427 at r427
  simp only [Seg30.relationLc55, Seg30.relationLc55Part0, Seg30.relationLc55Part1] at r427
  simp only [Seg30.relationLc56, Seg30.relationLc56Part0, Seg30.relationLc56Part1] at r427
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r427 ⊢
  exact r427

theorem seg30_prefix_36_addX (rho : Nat -> Seg30.F)
    (r428 : Seg30.relationRow428 rho) :
    rho 28744*(1 + rho 28743) = 6295691546556716754436912436379714908434430701210537280485031833028397410397 + 6916681249492857906630506008985655411921888986126285976219786978352487071429*rho 28317 + 6554496631765374631696458020546417542665533138533649817136049192449861308000*seg30AccX35 rho + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg30AccY35 rho := by
  rw [add_assoc, seg30AccWeighted35]
  unfold Seg30.relationRow428 at r428
  simp only [Seg30.relationLc57, Seg30.relationLc57Part0, Seg30.relationLc57Part1, Seg30.relationLc57Part2] at r428
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r428 ⊢
  exact r428

theorem seg30_prefix_36_addY (rho : Nat -> Seg30.F)
    (r429 : Seg30.relationRow429 rho) :
    rho 28745*(1 + (-1)*rho 28743) = 6554496631765374631696458020546417542665533138533649817136049192449861308000 + 1487571320597799729156916433138675965370975271164905067793436153547633830944*rho 28317 + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg30AccX35 rho + 6554496631765374631696458020546417542665533138533649817136049192449861308000*seg30AccY35 rho := by
  rw [add_assoc, seg30AccWeighted35]
  unfold Seg30.relationRow429 at r429
  simp only [Seg30.relationLc58, Seg30.relationLc58Part0, Seg30.relationLc58Part1, Seg30.relationLc58Part2] at r429
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r429 ⊢
  exact r429

theorem seg30_prefix_36_selX (rho : Nat -> Seg30.F)
    (r430 : Seg30.relationRow430 rho) :
    (1*rho 28353)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX35 rho + rho 28744) = rho 28746 := by
  rw [seg30AccX35_sum]
  unfold Seg30.relationRow430 at r430
  simp only [Seg30.relationLc59, Seg30.relationLc59Part0, Seg30.relationLc59Part1] at r430
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r430 ⊢
  exact r430

theorem seg30_prefix_36_selY (rho : Nat -> Seg30.F)
    (r431 : Seg30.relationRow431 rho) :
    (1*rho 28353)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY35 rho + rho 28745) = rho 28747 := by
  rw [seg30AccY35_sum]
  unfold Seg30.relationRow431 at r431
  simp only [Seg30.relationLc60, Seg30.relationLc60Part0, Seg30.relationLc60Part1] at r431
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r431 ⊢
  exact r431

theorem seg30_prefix_37_v2 (rho : Nat -> Seg30.F)
    (r432 : Seg30.relationRow432 rho) :
    (803980581825681997882472852881647133048328936003838712435095075808245989086*rho 28317 + 6334345927168293860617691197907754261420091566533206876213950776912116811895*seg30AccX36 rho)*(3322832884971658379020786549972206387369304268355604981071819235682279886563 + 3742391049692554707688247834471216841214819134200172501298175408335104860001*rho 28317 + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg30AccY36 rho) = rho 28748 := by
  rw [seg30AccX36_sum, seg30AccY36_sum]
  unfold Seg30.relationRow432 at r432
  simp only [Seg30.relationLc61, Seg30.relationLc61Part0, Seg30.relationLc61Part1] at r432
  simp only [Seg30.relationLc62, Seg30.relationLc62Part0, Seg30.relationLc62Part1] at r432
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r432 ⊢
  exact r432

theorem seg30_prefix_37_addX (rho : Nat -> Seg30.F)
    (r433 : Seg30.relationRow433 rho) :
    rho 28749*(1 + rho 28748) = 3322832884971658379020786549972206387369304268355604981071819235682279886563 + 2129795733956591764029297315827035874160583587213118217946240747961540846450*rho 28317 + 5821815196371080939141566108487615899565058757814397251452290634226070225917*seg30AccX36 rho + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg30AccY36 rho := by
  rw [add_assoc, seg30AccWeighted36]
  unfold Seg30.relationRow433 at r433
  simp only [Seg30.relationLc63, Seg30.relationLc63Part0, Seg30.relationLc63Part1, Seg30.relationLc63Part2] at r433
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r433 ⊢
  exact r433

theorem seg30_prefix_37_addY (rho : Nat -> Seg30.F)
    (r434 : Seg30.relationRow434 rho) :
    rho 28750*(1 + (-1)*rho 28748) = 5821815196371080939141566108487615899565058757814397251452290634226070225917 + 1342632423321852336261692036393510600183999016189562550954932080238708326577*rho 28317 + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg30AccX36 rho + 5821815196371080939141566108487615899565058757814397251452290634226070225917*seg30AccY36 rho := by
  rw [add_assoc, seg30AccWeighted36]
  unfold Seg30.relationRow434 at r434
  simp only [Seg30.relationLc64, Seg30.relationLc64Part0, Seg30.relationLc64Part1, Seg30.relationLc64Part2] at r434
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r434 ⊢
  exact r434

theorem seg30_prefix_37_selX (rho : Nat -> Seg30.F)
    (r435 : Seg30.relationRow435 rho) :
    (1*rho 28354)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX36 rho + rho 28749) = rho 28751 := by
  rw [seg30AccX36_sum]
  unfold Seg30.relationRow435 at r435
  simp only [Seg30.relationLc65, Seg30.relationLc65Part0, Seg30.relationLc65Part1] at r435
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r435 ⊢
  exact r435

theorem seg30_prefix_37_selY (rho : Nat -> Seg30.F)
    (r436 : Seg30.relationRow436 rho) :
    (1*rho 28354)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY36 rho + rho 28750) = rho 28752 := by
  rw [seg30AccY36_sum]
  unfold Seg30.relationRow436 at r436
  simp only [Seg30.relationLc66, Seg30.relationLc66Part0, Seg30.relationLc66Part1] at r436
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r436 ⊢
  exact r436

theorem seg30_prefix_38_v2 (rho : Nat -> Seg30.F)
    (r437 : Seg30.relationRow437 rho) :
    (1009916982077206128033609777361685216350669515822433705706665175388118018829*rho 28317 + 6051250210517190749663141116441450966628119241944618079453095600811208772222*seg30AccX37 rho)*(3150268533740900499578316159152134076751680532834121341659634171961029431792 + 2898409259390194651556282054766198193763430239886953805590234007251608670059*rho 28317 + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg30AccY37 rho) = rho 28753 := by
  rw [seg30AccX37_sum, seg30AccY37_sum]
  unfold Seg30.relationRow437 at r437
  simp only [Seg30.relationLc67, Seg30.relationLc67Part0, Seg30.relationLc67Part1] at r437
  simp only [Seg30.relationLc68, Seg30.relationLc68Part0, Seg30.relationLc68Part1] at r437
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r437 ⊢
  exact r437

theorem seg30_prefix_38_addX (rho : Nat -> Seg30.F)
    (r438 : Seg30.relationRow438 rho) :
    rho 28754*(1 + rho 28753) = 3150268533740900499578316159152134076751680532834121341659634171961029431792 + 2758980867967042941829566517804359186364408625440783412445230694566907463858*rho 28317 + 5299009025282118220688906454851861015532590982905956826222019362649553696377*seg30AccX37 rho + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg30AccY37 rho := by
  rw [add_assoc, seg30AccWeighted37]
  unfold Seg30.relationRow438 at r438
  simp only [Seg30.relationLc69, Seg30.relationLc69Part0, Seg30.relationLc69Part1, Seg30.relationLc69Part2] at r438
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r438 ⊢
  exact r438

theorem seg30_prefix_38_addY (rho : Nat -> Seg30.F)
    (r439 : Seg30.relationRow439 rho) :
    rho 28755*(1 + (-1)*rho 28753) = 5299009025282118220688906454851861015532590982905956826222019362649553696377 + 6343037318141234726453880135613100257806210245726646240133126189191628366975*rho 28317 + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg30AccX37 rho + 5299009025282118220688906454851861015532590982905956826222019362649553696377*seg30AccY37 rho := by
  rw [add_assoc, seg30AccWeighted37]
  unfold Seg30.relationRow439 at r439
  simp only [Seg30.relationLc70, Seg30.relationLc70Part0, Seg30.relationLc70Part1, Seg30.relationLc70Part2] at r439
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r439 ⊢
  exact r439

theorem seg30_prefix_38_selX (rho : Nat -> Seg30.F)
    (r440 : Seg30.relationRow440 rho) :
    (1*rho 28355)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX37 rho + rho 28754) = rho 28756 := by
  rw [seg30AccX37_sum]
  unfold Seg30.relationRow440 at r440
  simp only [Seg30.relationLc71, Seg30.relationLc71Part0, Seg30.relationLc71Part1] at r440
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r440 ⊢
  exact r440

theorem seg30_prefix_38_selY (rho : Nat -> Seg30.F)
    (r441 : Seg30.relationRow441 rho) :
    (1*rho 28355)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY37 rho + rho 28755) = rho 28757 := by
  rw [seg30AccY37_sum]
  unfold Seg30.relationRow441 at r441
  simp only [Seg30.relationLc72, Seg30.relationLc72Part0, Seg30.relationLc72Part1] at r441
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r441 ⊢
  exact r441

theorem seg30_prefix_39_v2 (rho : Nat -> Seg30.F)
    (r442 : Seg30.relationRow442 rho) :
    (4055808561599814462885459923885954734183140044469009082707959598090942531216*rho 28317 + 919177287557471400886151427262146296905684745211404392707875994351732261419*seg30AccX38 rho)*(2459406165588571115311174697897461555967218978176849787735079515445045239877 + 3561836517110067914917388337528013887729344884646458938509273390102621545248*rho 28317 + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg30AccY38 rho) = rho 28758 := by
  rw [seg30AccX38_sum, seg30AccY38_sum]
  unfold Seg30.relationRow442 at r442
  simp only [Seg30.relationLc73, Seg30.relationLc73Part0, Seg30.relationLc73Part1] at r442
  simp only [Seg30.relationLc74, Seg30.relationLc74Part0, Seg30.relationLc74Part1] at r442
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r442 ⊢
  exact r442

theorem seg30_prefix_39_addX (rho : Nat -> Seg30.F)
    (r443 : Seg30.relationRow443 rho) :
    rho 28759*(1 + rho 28758) = 2459406165588571115311174697897461555967218978176849787735079515445045239877 + 5366117760719104240009535820294641980238990105175700970320241128819874078089*rho 28317 + 5034556368092701954807355136104875024596127238450076252401212621682093933060*seg30AccX38 rho + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg30AccY38 rho := by
  rw [add_assoc, seg30AccWeighted38]
  unfold Seg30.relationRow443 at r443
  simp only [Seg30.relationLc75, Seg30.relationLc75Part0, Seg30.relationLc75Part1, Seg30.relationLc75Part2] at r443
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r443 ⊢
  exact r443

theorem seg30_prefix_39_addY (rho : Nat -> Seg30.F)
    (r444 : Seg30.relationRow444 rho) :
    rho 28760*(1 + (-1)*rho 28758) = 5034556368092701954807355136104875024596127238450076252401212621682093933060 + 2776352286685200723773157721639124171677345230423218268294247495348690302387*rho 28317 + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg30AccX38 rho + 5034556368092701954807355136104875024596127238450076252401212621682093933060*seg30AccY38 rho := by
  rw [add_assoc, seg30AccWeighted38]
  unfold Seg30.relationRow444 at r444
  simp only [Seg30.relationLc76, Seg30.relationLc76Part0, Seg30.relationLc76Part1, Seg30.relationLc76Part2] at r444
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r444 ⊢
  exact r444

theorem seg30_prefix_39_selX (rho : Nat -> Seg30.F)
    (r445 : Seg30.relationRow445 rho) :
    (1*rho 28356)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX38 rho + rho 28759) = rho 28761 := by
  rw [seg30AccX38_sum]
  unfold Seg30.relationRow445 at r445
  simp only [Seg30.relationLc77, Seg30.relationLc77Part0, Seg30.relationLc77Part1] at r445
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r445 ⊢
  exact r445

theorem seg30_prefix_39_selY (rho : Nat -> Seg30.F)
    (r446 : Seg30.relationRow446 rho) :
    (1*rho 28356)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY38 rho + rho 28760) = rho 28762 := by
  rw [seg30AccY38_sum]
  unfold Seg30.relationRow446 at r446
  simp only [Seg30.relationLc78, Seg30.relationLc78Part0, Seg30.relationLc78Part1] at r446
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r446 ⊢
  exact r446

theorem seg30_prefix_40_v2 (rho : Nat -> Seg30.F)
    (r447 : Seg30.relationRow447 rho) :
    (1215279473610371209935227904049657825190163834384456189946283016107686137841*rho 28317 + 3131519962748260633613313507912172186478635528818138590775791988998556993852*seg30AccX39 rho)*(1214286283469246825825118534888634565400684580240643302545653368917068457758 + 8298128149157705628277342045212304693352092272731248112178849781241908597876*rho 28317 + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg30AccY39 rho) = rho 28763 := by
  rw [seg30AccX39_sum, seg30AccY39_sum]
  unfold Seg30.relationRow447 at r447
  simp only [Seg30.relationLc79, Seg30.relationLc79Part0, Seg30.relationLc79Part1] at r447
  simp only [Seg30.relationLc80, Seg30.relationLc80Part0, Seg30.relationLc80Part1] at r447
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r447 ⊢
  exact r447

theorem seg30_prefix_40_addX (rho : Nat -> Seg30.F)
    (r448 : Seg30.relationRow448 rho) :
    rho 28764*(1 + rho 28763) = 1214286283469246825825118534888634565400684580240643302545653368917068457758 + 8002233522886339559505266502144845482991067722684261581370776804310052360471*rho 28317 + 8026210262354054865492217713588127197539452375622686325254164529602078941503*seg30AccX39 rho + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg30AccY39 rho := by
  rw [add_assoc, seg30AccWeighted39]
  unfold Seg30.relationRow448 at r448
  simp only [Seg30.relationLc81, Seg30.relationLc81Part0, Seg30.relationLc81Part1, Seg30.relationLc81Part2] at r448
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r448 ⊢
  exact r448

theorem seg30_prefix_40_addY (rho : Nat -> Seg30.F)
    (r449 : Seg30.relationRow449 rho) :
    rho 28765*(1 + (-1)*rho 28763) = 8026210262354054865492217713588127197539452375622686325254164529602078941503 + 7728715752397633698641128843943213501411187652390824656893175053399511388425*rho 28317 + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg30AccX39 rho + 8026210262354054865492217713588127197539452375622686325254164529602078941503*seg30AccY39 rho := by
  rw [add_assoc, seg30AccWeighted39]
  unfold Seg30.relationRow449 at r449
  simp only [Seg30.relationLc82, Seg30.relationLc82Part0, Seg30.relationLc82Part1, Seg30.relationLc82Part2] at r449
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r449 ⊢
  exact r449

theorem seg30_prefix_40_selX (rho : Nat -> Seg30.F)
    (r450 : Seg30.relationRow450 rho) :
    (1*rho 28357)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX39 rho + rho 28764) = rho 28766 := by
  rw [seg30AccX39_sum]
  unfold Seg30.relationRow450 at r450
  simp only [Seg30.relationLc83, Seg30.relationLc83Part0, Seg30.relationLc83Part1] at r450
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r450 ⊢
  exact r450

theorem seg30_prefix_40_selY (rho : Nat -> Seg30.F)
    (r451 : Seg30.relationRow451 rho) :
    (1*rho 28357)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY39 rho + rho 28765) = rho 28767 := by
  rw [seg30AccY39_sum]
  unfold Seg30.relationRow451 at r451
  simp only [Seg30.relationLc84, Seg30.relationLc84Part0, Seg30.relationLc84Part1] at r451
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r451 ⊢
  exact r451


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

