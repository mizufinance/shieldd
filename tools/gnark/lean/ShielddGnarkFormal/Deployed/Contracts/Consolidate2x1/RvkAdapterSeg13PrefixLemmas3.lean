import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_prefix_31_v2 (rho : Nat -> Seg13.F)
    (r402 : Seg13.relationRow402 rho) :
    (4581169201032225273346815198674222137244651689521475375102896469810765099874*rho 10571 + 6239473800542177955912286854217196612304894561077124215846141335882663981489*seg13AccX30 rho)*(7014478899807931017630156883840563490129767664606627483381858286107267060760 + 3705126959081868329560129378476674408048362276472695522288315318682167365101*rho 10571 + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg13AccY30 rho) = rho 10972 := by
  rw [seg13AccX30_sum, seg13AccY30_sum]
  unfold Seg13.relationRow402 at r402
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r402 ⊢
  exact r402

theorem seg13_prefix_31_addX (rho : Nat -> Seg13.F)
    (r403 : Seg13.relationRow403 rho) :
    rho 10973*(1 + rho 10972) = 7014478899807931017630156883840563490129767664606627483381858286107267060760 + 4036483349559716702726202916369721979329262896544758086694624634891391150373*rho 10571 + 2917515087207657242782997913936898453769403476043285566617773795384885965012*seg13AccX30 rho + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg13AccY30 rho := by
  rw [add_assoc, seg13AccWeighted30]
  unfold Seg13.relationRow403 at r403
  simp only [Seg13.relationLc29, Seg13.relationLc29Part0, Seg13.relationLc29Part1] at r403
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r403 ⊢
  exact r403

theorem seg13_prefix_31_addY (rho : Nat -> Seg13.F)
    (r404 : Seg13.relationRow404 rho) :
    rho 10974*(1 + (-1)*rho 10972) = 2917515087207657242782997913936898453769403476043285566617773795384885965012 + 4721939043766132390365156950830445930758152113648870963101837212571466540881*rho 10571 + 7014478899807931017630156883840563490129767664606627483381858286107267060760*seg13AccX30 rho + 2917515087207657242782997913936898453769403476043285566617773795384885965012*seg13AccY30 rho := by
  rw [add_assoc, seg13AccWeighted30]
  unfold Seg13.relationRow404 at r404
  simp only [Seg13.relationLc30, Seg13.relationLc30Part0, Seg13.relationLc30Part1] at r404
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r404 ⊢
  exact r404

theorem seg13_prefix_31_selX (rho : Nat -> Seg13.F)
    (r405 : Seg13.relationRow405 rho) :
    (1*rho 10602)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX30 rho + rho 10973) = rho 10975 := by
  rw [seg13AccX30_sum]
  unfold Seg13.relationRow405 at r405
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r405 ⊢
  exact r405

theorem seg13_prefix_31_selY (rho : Nat -> Seg13.F)
    (r406 : Seg13.relationRow406 rho) :
    (1*rho 10602)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY30 rho + rho 10974) = rho 10976 := by
  rw [seg13AccY30_sum]
  unfold Seg13.relationRow406 at r406
  simp only [Seg13.relationLc31, Seg13.relationLc31Part0, Seg13.relationLc31Part1] at r406
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r406 ⊢
  exact r406

theorem seg13_prefix_32_v2 (rho : Nat -> Seg13.F)
    (r407 : Seg13.relationRow407 rho) :
    (7203414340787563976155236541638779635986213038456604732762385849135341147546*rho 10571 + 136614437469717025728540285685024726697946417222084284029518632750850413301*seg13AccX31 rho)*(4648071162727660542848380498583304381460872648196428650654098166653683272040 + 2540880036486131943961124182899818153723310999553178717815323475067300526429*rho 10571 + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg13AccY31 rho) = rho 10977 := by
  rw [seg13AccX31_sum, seg13AccY31_sum]
  unfold Seg13.relationRow407 at r407
  simp only [Seg13.relationLc32, Seg13.relationLc32Part0, Seg13.relationLc32Part1] at r407
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r407 ⊢
  exact r407

theorem seg13_prefix_32_addX (rho : Nat -> Seg13.F)
    (r408 : Seg13.relationRow408 rho) :
    rho 10978*(1 + rho 10977) = 4648071162727660542848380498583304381460872648196428650654098166653683272040 + 3365069102581043717779498816644741510181603160285966327926452578638586080029*rho 10571 + 5199217301679655314838974818410910815321373952268712613122662610605472371741*seg13AccX31 rho + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg13AccY31 rho := by
  rw [add_assoc, seg13AccWeighted31]
  unfold Seg13.relationRow408 at r408
  simp only [Seg13.relationLc33, Seg13.relationLc33Part0, Seg13.relationLc33Part1] at r408
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r408 ⊢
  exact r408

theorem seg13_prefix_32_addY (rho : Nat -> Seg13.F)
    (r409 : Seg13.relationRow409 rho) :
    rho 10979*(1 + (-1)*rho 10977) = 5199217301679655314838974818410910815321373952268712613122662610605472371741 + 2917606646628830688575648961145231231134156944394659783256745266509429338581*rho 10571 + 4648071162727660542848380498583304381460872648196428650654098166653683272040*seg13AccX31 rho + 5199217301679655314838974818410910815321373952268712613122662610605472371741*seg13AccY31 rho := by
  rw [add_assoc, seg13AccWeighted31]
  unfold Seg13.relationRow409 at r409
  simp only [Seg13.relationLc34, Seg13.relationLc34Part0, Seg13.relationLc34Part1] at r409
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r409 ⊢
  exact r409

theorem seg13_prefix_32_selX (rho : Nat -> Seg13.F)
    (r410 : Seg13.relationRow410 rho) :
    (1*rho 10603)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX31 rho + rho 10978) = rho 10980 := by
  rw [seg13AccX31_sum]
  unfold Seg13.relationRow410 at r410
  simp only [Seg13.relationLc35, Seg13.relationLc35Part0, Seg13.relationLc35Part1] at r410
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r410 ⊢
  exact r410

theorem seg13_prefix_32_selY (rho : Nat -> Seg13.F)
    (r411 : Seg13.relationRow411 rho) :
    (1*rho 10603)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY31 rho + rho 10979) = rho 10981 := by
  rw [seg13AccY31_sum]
  unfold Seg13.relationRow411 at r411
  simp only [Seg13.relationLc36, Seg13.relationLc36Part0, Seg13.relationLc36Part1] at r411
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r411 ⊢
  exact r411

theorem seg13_prefix_33_v2 (rho : Nat -> Seg13.F)
    (r412 : Seg13.relationRow412 rho) :
    (3360975926604625167541495984214134574008106726344771564779072438371774310356*rho 10571 + 1543965350493936645240803205024551544750903601537073662569060821766604821295*seg13AccX32 rho)*(6040898278084703606807003137529967990516096655680683589984074628992017998216 + 7137487175674098003771138708922956629581657025759195104399955519750233128346*rho 10571 + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg13AccY32 rho) = rho 10982 := by
  rw [seg13AccX32_sum, seg13AccY32_sum]
  unfold Seg13.relationRow412 at r412
  simp only [Seg13.relationLc37, Seg13.relationLc37Part0, Seg13.relationLc37Part1] at r412
  simp only [Seg13.relationLc38, Seg13.relationLc38Part0, Seg13.relationLc38Part1] at r412
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r412 ⊢
  exact r412

theorem seg13_prefix_33_addX (rho : Nat -> Seg13.F)
    (r413 : Seg13.relationRow413 rho) :
    rho 10983*(1 + rho 10982) = 6040898278084703606807003137529967990516096655680683589984074628992017998216 + 4449565551369732653569275718150486047453352804080325646965690206226838254580*rho 10571 + 5305902802305707051264319939428136335020260788389258596187898762049986541053*seg13AccX32 rho + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg13AccY32 rho := by
  rw [add_assoc, seg13AccWeighted32]
  unfold Seg13.relationRow413 at r413
  simp only [Seg13.relationLc39, Seg13.relationLc39Part0, Seg13.relationLc39Part1, Seg13.relationLc39Part2] at r413
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r413 ⊢
  exact r413

theorem seg13_prefix_33_addY (rho : Nat -> Seg13.F)
    (r414 : Seg13.relationRow414 rho) :
    rho 10984*(1 + (-1)*rho 10982) = 5305902802305707051264319939428136335020260788389258596187898762049986541053 + 2814877368443726696118547384849669017277674374461576406649511044998605996800*rho 10571 + 6040898278084703606807003137529967990516096655680683589984074628992017998216*seg13AccX32 rho + 5305902802305707051264319939428136335020260788389258596187898762049986541053*seg13AccY32 rho := by
  rw [add_assoc, seg13AccWeighted32]
  unfold Seg13.relationRow414 at r414
  simp only [Seg13.relationLc40, Seg13.relationLc40Part0, Seg13.relationLc40Part1, Seg13.relationLc40Part2] at r414
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r414 ⊢
  exact r414

theorem seg13_prefix_33_selX (rho : Nat -> Seg13.F)
    (r415 : Seg13.relationRow415 rho) :
    (1*rho 10604)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX32 rho + rho 10983) = rho 10985 := by
  rw [seg13AccX32_sum]
  unfold Seg13.relationRow415 at r415
  simp only [Seg13.relationLc41, Seg13.relationLc41Part0, Seg13.relationLc41Part1] at r415
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r415 ⊢
  exact r415

theorem seg13_prefix_33_selY (rho : Nat -> Seg13.F)
    (r416 : Seg13.relationRow416 rho) :
    (1*rho 10604)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY32 rho + rho 10984) = rho 10986 := by
  rw [seg13AccY32_sum]
  unfold Seg13.relationRow416 at r416
  simp only [Seg13.relationLc42, Seg13.relationLc42Part0, Seg13.relationLc42Part1] at r416
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r416 ⊢
  exact r416

theorem seg13_prefix_34_v2 (rho : Nat -> Seg13.F)
    (r417 : Seg13.relationRow417 rho) :
    (7435118643412649766237088463347060288844193205328919495557364512525268642612*rho 10571 + 2390951901919080636374557696001749605335611760845118841000002691622039366119*seg13AccX33 rho)*(4339327889298312009382154954915201834845694584936220011692515152447487397113 + 5952647242997322099106275843266454433107326250844550093282472843230506741173*rho 10571 + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg13AccY33 rho) = rho 10987 := by
  rw [seg13AccX33_sum, seg13AccY33_sum]
  unfold Seg13.relationRow417 at r417
  simp only [Seg13.relationLc43, Seg13.relationLc43Part0, Seg13.relationLc43Part1] at r417
  simp only [Seg13.relationLc44, Seg13.relationLc44Part0, Seg13.relationLc44Part1] at r417
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r417 ⊢
  exact r417

theorem seg13_prefix_34_addX (rho : Nat -> Seg13.F)
    (r418 : Seg13.relationRow418 rho) :
    rho 10988*(1 + rho 10987) = 4339327889298312009382154954915201834845694584936220011692515152447487397113 + 932037297588725938030836807673242895009462327618292635717409236553558997408*rho 10571 + 5518622457885972293314649118454410659563509069630906029521731494429853650193*seg13AccX33 rho + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg13AccY33 rho := by
  rw [add_assoc, seg13AccWeighted33]
  unfold Seg13.relationRow418 at r418
  simp only [Seg13.relationLc45, Seg13.relationLc45Part0, Seg13.relationLc45Part1, Seg13.relationLc45Part2] at r418
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r418 ⊢
  exact r418

theorem seg13_prefix_34_addY (rho : Nat -> Seg13.F)
    (r419 : Seg13.relationRow419 rho) :
    rho 10989*(1 + (-1)*rho 10987) = 5518622457885972293314649118454410659563509069630906029521731494429853650193 + 6253181600698670761975383693459860083874249503681351330263538576416174709777*rho 10571 + 4339327889298312009382154954915201834845694584936220011692515152447487397113*seg13AccX33 rho + 5518622457885972293314649118454410659563509069630906029521731494429853650193*seg13AccY33 rho := by
  rw [add_assoc, seg13AccWeighted33]
  unfold Seg13.relationRow419 at r419
  simp only [Seg13.relationLc46, Seg13.relationLc46Part0, Seg13.relationLc46Part1, Seg13.relationLc46Part2] at r419
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r419 ⊢
  exact r419

theorem seg13_prefix_34_selX (rho : Nat -> Seg13.F)
    (r420 : Seg13.relationRow420 rho) :
    (1*rho 10605)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX33 rho + rho 10988) = rho 10990 := by
  rw [seg13AccX33_sum]
  unfold Seg13.relationRow420 at r420
  simp only [Seg13.relationLc47, Seg13.relationLc47Part0, Seg13.relationLc47Part1] at r420
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r420 ⊢
  exact r420

theorem seg13_prefix_34_selY (rho : Nat -> Seg13.F)
    (r421 : Seg13.relationRow421 rho) :
    (1*rho 10605)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY33 rho + rho 10989) = rho 10991 := by
  rw [seg13AccY33_sum]
  unfold Seg13.relationRow421 at r421
  simp only [Seg13.relationLc48, Seg13.relationLc48Part0, Seg13.relationLc48Part1] at r421
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r421 ⊢
  exact r421

theorem seg13_prefix_35_v2 (rho : Nat -> Seg13.F)
    (r422 : Seg13.relationRow422 rho) :
    (3651366216281786421926547364596016781057486484064302133377103200620687596976*rho 10571 + 2511669022247206812161869629466276987337945639304938005698123059390861064989*seg13AccX34 rho)*(2259012951295629764024579298461801285536326622251485130033474515142356155111 + 348095528643503982719379745132160814341763278282712383821836934807805599487*rho 10571 + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg13AccY34 rho) = rho 10992 := by
  rw [seg13AccX34_sum, seg13AccY34_sum]
  unfold Seg13.relationRow422 at r422
  simp only [Seg13.relationLc49, Seg13.relationLc49Part0, Seg13.relationLc49Part1] at r422
  simp only [Seg13.relationLc50, Seg13.relationLc50Part0, Seg13.relationLc50Part1] at r422
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r422 ⊢
  exact r422

theorem seg13_prefix_35_addX (rho : Nat -> Seg13.F)
    (r423 : Seg13.relationRow423 rho) :
    rho 10993*(1 + rho 10992) = 2259012951295629764024579298461801285536326622251485130033474515142356155111 + 7563854264655058385701221424827548968682131921287248312995691503799349437144*rho 10571 + 615787240614527871614334113260975343889452432761734187405312639311890398429*seg13AccX34 rho + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg13AccY34 rho := by
  rw [add_assoc, seg13AccWeighted34]
  unfold Seg13.relationRow423 at r423
  simp only [Seg13.relationLc51, Seg13.relationLc51Part0, Seg13.relationLc51Part1, Seg13.relationLc51Part2] at r423
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r423 ⊢
  exact r423

theorem seg13_prefix_35_addY (rho : Nat -> Seg13.F)
    (r424 : Seg13.relationRow424 rho) :
    rho 10994*(1 + (-1)*rho 10992) = 615787240614527871614334113260975343889452432761734187405312639311890398429 + 6825036008606936403574758059084895642046160173684766887406037028034446940920*rho 10571 + 2259012951295629764024579298461801285536326622251485130033474515142356155111*seg13AccX34 rho + 615787240614527871614334113260975343889452432761734187405312639311890398429*seg13AccY34 rho := by
  rw [add_assoc, seg13AccWeighted34]
  unfold Seg13.relationRow424 at r424
  simp only [Seg13.relationLc52, Seg13.relationLc52Part0, Seg13.relationLc52Part1, Seg13.relationLc52Part2] at r424
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r424 ⊢
  exact r424

theorem seg13_prefix_35_selX (rho : Nat -> Seg13.F)
    (r425 : Seg13.relationRow425 rho) :
    (1*rho 10606)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX34 rho + rho 10993) = rho 10995 := by
  rw [seg13AccX34_sum]
  unfold Seg13.relationRow425 at r425
  simp only [Seg13.relationLc53, Seg13.relationLc53Part0, Seg13.relationLc53Part1] at r425
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r425 ⊢
  exact r425

theorem seg13_prefix_35_selY (rho : Nat -> Seg13.F)
    (r426 : Seg13.relationRow426 rho) :
    (1*rho 10606)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY34 rho + rho 10994) = rho 10996 := by
  rw [seg13AccY34_sum]
  unfold Seg13.relationRow426 at r426
  simp only [Seg13.relationLc54, Seg13.relationLc54Part0, Seg13.relationLc54Part1] at r426
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r426 ⊢
  exact r426

theorem seg13_prefix_36_v2 (rho : Nat -> Seg13.F)
    (r427 : Seg13.relationRow427 rho) :
    (2833339980642050130105468187124395222836116796601658345597697387732210172573*rho 10571 + 7315983903096487915754023566782326847467569909030484887817389720623755155896*seg13AccX35 rho)*(6295691546556716754436912436379714908434430701210537280485031833028397410397 + 2549556922254275764026477534121736154314477242231135576491077161890810328114*rho 10571 + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg13AccY35 rho) = rho 10997 := by
  rw [seg13AccX35_sum, seg13AccY35_sum]
  unfold Seg13.relationRow427 at r427
  simp only [Seg13.relationLc55, Seg13.relationLc55Part0, Seg13.relationLc55Part1] at r427
  simp only [Seg13.relationLc56, Seg13.relationLc56Part0, Seg13.relationLc56Part1] at r427
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r427 ⊢
  exact r427

theorem seg13_prefix_36_addX (rho : Nat -> Seg13.F)
    (r428 : Seg13.relationRow428 rho) :
    rho 10998*(1 + rho 10997) = 6295691546556716754436912436379714908434430701210537280485031833028397410397 + 6916681249492857906630506008985655411921888986126285976219786978352487071429*rho 10571 + 6554496631765374631696458020546417542665533138533649817136049192449861308000*seg13AccX35 rho + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg13AccY35 rho := by
  rw [add_assoc, seg13AccWeighted35]
  unfold Seg13.relationRow428 at r428
  simp only [Seg13.relationLc57, Seg13.relationLc57Part0, Seg13.relationLc57Part1, Seg13.relationLc57Part2] at r428
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r428 ⊢
  exact r428

theorem seg13_prefix_36_addY (rho : Nat -> Seg13.F)
    (r429 : Seg13.relationRow429 rho) :
    rho 10999*(1 + (-1)*rho 10997) = 6554496631765374631696458020546417542665533138533649817136049192449861308000 + 1487571320597799729156916433138675965370975271164905067793436153547633830944*rho 10571 + 6295691546556716754436912436379714908434430701210537280485031833028397410397*seg13AccX35 rho + 6554496631765374631696458020546417542665533138533649817136049192449861308000*seg13AccY35 rho := by
  rw [add_assoc, seg13AccWeighted35]
  unfold Seg13.relationRow429 at r429
  simp only [Seg13.relationLc58, Seg13.relationLc58Part0, Seg13.relationLc58Part1, Seg13.relationLc58Part2] at r429
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r429 ⊢
  exact r429

theorem seg13_prefix_36_selX (rho : Nat -> Seg13.F)
    (r430 : Seg13.relationRow430 rho) :
    (1*rho 10607)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX35 rho + rho 10998) = rho 11000 := by
  rw [seg13AccX35_sum]
  unfold Seg13.relationRow430 at r430
  simp only [Seg13.relationLc59, Seg13.relationLc59Part0, Seg13.relationLc59Part1] at r430
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r430 ⊢
  exact r430

theorem seg13_prefix_36_selY (rho : Nat -> Seg13.F)
    (r431 : Seg13.relationRow431 rho) :
    (1*rho 10607)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY35 rho + rho 10999) = rho 11001 := by
  rw [seg13AccY35_sum]
  unfold Seg13.relationRow431 at r431
  simp only [Seg13.relationLc60, Seg13.relationLc60Part0, Seg13.relationLc60Part1] at r431
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r431 ⊢
  exact r431

theorem seg13_prefix_37_v2 (rho : Nat -> Seg13.F)
    (r432 : Seg13.relationRow432 rho) :
    (803980581825681997882472852881647133048328936003838712435095075808245989086*rho 10571 + 6334345927168293860617691197907754261420091566533206876213950776912116811895*seg13AccX36 rho)*(3322832884971658379020786549972206387369304268355604981071819235682279886563 + 3742391049692554707688247834471216841214819134200172501298175408335104860001*rho 10571 + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg13AccY36 rho) = rho 11002 := by
  rw [seg13AccX36_sum, seg13AccY36_sum]
  unfold Seg13.relationRow432 at r432
  simp only [Seg13.relationLc61, Seg13.relationLc61Part0, Seg13.relationLc61Part1] at r432
  simp only [Seg13.relationLc62, Seg13.relationLc62Part0, Seg13.relationLc62Part1] at r432
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r432 ⊢
  exact r432

theorem seg13_prefix_37_addX (rho : Nat -> Seg13.F)
    (r433 : Seg13.relationRow433 rho) :
    rho 11003*(1 + rho 11002) = 3322832884971658379020786549972206387369304268355604981071819235682279886563 + 2129795733956591764029297315827035874160583587213118217946240747961540846450*rho 10571 + 5821815196371080939141566108487615899565058757814397251452290634226070225917*seg13AccX36 rho + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg13AccY36 rho := by
  rw [add_assoc, seg13AccWeighted36]
  unfold Seg13.relationRow433 at r433
  simp only [Seg13.relationLc63, Seg13.relationLc63Part0, Seg13.relationLc63Part1, Seg13.relationLc63Part2] at r433
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r433 ⊢
  exact r433

theorem seg13_prefix_37_addY (rho : Nat -> Seg13.F)
    (r434 : Seg13.relationRow434 rho) :
    rho 11004*(1 + (-1)*rho 11002) = 5821815196371080939141566108487615899565058757814397251452290634226070225917 + 1342632423321852336261692036393510600183999016189562550954932080238708326577*rho 10571 + 3322832884971658379020786549972206387369304268355604981071819235682279886563*seg13AccX36 rho + 5821815196371080939141566108487615899565058757814397251452290634226070225917*seg13AccY36 rho := by
  rw [add_assoc, seg13AccWeighted36]
  unfold Seg13.relationRow434 at r434
  simp only [Seg13.relationLc64, Seg13.relationLc64Part0, Seg13.relationLc64Part1, Seg13.relationLc64Part2] at r434
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r434 ⊢
  exact r434

theorem seg13_prefix_37_selX (rho : Nat -> Seg13.F)
    (r435 : Seg13.relationRow435 rho) :
    (1*rho 10608)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX36 rho + rho 11003) = rho 11005 := by
  rw [seg13AccX36_sum]
  unfold Seg13.relationRow435 at r435
  simp only [Seg13.relationLc65, Seg13.relationLc65Part0, Seg13.relationLc65Part1] at r435
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r435 ⊢
  exact r435

theorem seg13_prefix_37_selY (rho : Nat -> Seg13.F)
    (r436 : Seg13.relationRow436 rho) :
    (1*rho 10608)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY36 rho + rho 11004) = rho 11006 := by
  rw [seg13AccY36_sum]
  unfold Seg13.relationRow436 at r436
  simp only [Seg13.relationLc66, Seg13.relationLc66Part0, Seg13.relationLc66Part1] at r436
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r436 ⊢
  exact r436

theorem seg13_prefix_38_v2 (rho : Nat -> Seg13.F)
    (r437 : Seg13.relationRow437 rho) :
    (1009916982077206128033609777361685216350669515822433705706665175388118018829*rho 10571 + 6051250210517190749663141116441450966628119241944618079453095600811208772222*seg13AccX37 rho)*(3150268533740900499578316159152134076751680532834121341659634171961029431792 + 2898409259390194651556282054766198193763430239886953805590234007251608670059*rho 10571 + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg13AccY37 rho) = rho 11007 := by
  rw [seg13AccX37_sum, seg13AccY37_sum]
  unfold Seg13.relationRow437 at r437
  simp only [Seg13.relationLc67, Seg13.relationLc67Part0, Seg13.relationLc67Part1] at r437
  simp only [Seg13.relationLc68, Seg13.relationLc68Part0, Seg13.relationLc68Part1] at r437
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r437 ⊢
  exact r437

theorem seg13_prefix_38_addX (rho : Nat -> Seg13.F)
    (r438 : Seg13.relationRow438 rho) :
    rho 11008*(1 + rho 11007) = 3150268533740900499578316159152134076751680532834121341659634171961029431792 + 2758980867967042941829566517804359186364408625440783412445230694566907463858*rho 10571 + 5299009025282118220688906454851861015532590982905956826222019362649553696377*seg13AccX37 rho + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg13AccY37 rho := by
  rw [add_assoc, seg13AccWeighted37]
  unfold Seg13.relationRow438 at r438
  simp only [Seg13.relationLc69, Seg13.relationLc69Part0, Seg13.relationLc69Part1, Seg13.relationLc69Part2] at r438
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r438 ⊢
  exact r438

theorem seg13_prefix_38_addY (rho : Nat -> Seg13.F)
    (r439 : Seg13.relationRow439 rho) :
    rho 11009*(1 + (-1)*rho 11007) = 5299009025282118220688906454851861015532590982905956826222019362649553696377 + 6343037318141234726453880135613100257806210245726646240133126189191628366975*rho 10571 + 3150268533740900499578316159152134076751680532834121341659634171961029431792*seg13AccX37 rho + 5299009025282118220688906454851861015532590982905956826222019362649553696377*seg13AccY37 rho := by
  rw [add_assoc, seg13AccWeighted37]
  unfold Seg13.relationRow439 at r439
  simp only [Seg13.relationLc70, Seg13.relationLc70Part0, Seg13.relationLc70Part1, Seg13.relationLc70Part2] at r439
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r439 ⊢
  exact r439

theorem seg13_prefix_38_selX (rho : Nat -> Seg13.F)
    (r440 : Seg13.relationRow440 rho) :
    (1*rho 10609)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX37 rho + rho 11008) = rho 11010 := by
  rw [seg13AccX37_sum]
  unfold Seg13.relationRow440 at r440
  simp only [Seg13.relationLc71, Seg13.relationLc71Part0, Seg13.relationLc71Part1] at r440
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r440 ⊢
  exact r440

theorem seg13_prefix_38_selY (rho : Nat -> Seg13.F)
    (r441 : Seg13.relationRow441 rho) :
    (1*rho 10609)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY37 rho + rho 11009) = rho 11011 := by
  rw [seg13AccY37_sum]
  unfold Seg13.relationRow441 at r441
  simp only [Seg13.relationLc72, Seg13.relationLc72Part0, Seg13.relationLc72Part1] at r441
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r441 ⊢
  exact r441

theorem seg13_prefix_39_v2 (rho : Nat -> Seg13.F)
    (r442 : Seg13.relationRow442 rho) :
    (4055808561599814462885459923885954734183140044469009082707959598090942531216*rho 10571 + 919177287557471400886151427262146296905684745211404392707875994351732261419*seg13AccX38 rho)*(2459406165588571115311174697897461555967218978176849787735079515445045239877 + 3561836517110067914917388337528013887729344884646458938509273390102621545248*rho 10571 + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg13AccY38 rho) = rho 11012 := by
  rw [seg13AccX38_sum, seg13AccY38_sum]
  unfold Seg13.relationRow442 at r442
  simp only [Seg13.relationLc73, Seg13.relationLc73Part0, Seg13.relationLc73Part1] at r442
  simp only [Seg13.relationLc74, Seg13.relationLc74Part0, Seg13.relationLc74Part1] at r442
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r442 ⊢
  exact r442

theorem seg13_prefix_39_addX (rho : Nat -> Seg13.F)
    (r443 : Seg13.relationRow443 rho) :
    rho 11013*(1 + rho 11012) = 2459406165588571115311174697897461555967218978176849787735079515445045239877 + 5366117760719104240009535820294641980238990105175700970320241128819874078089*rho 10571 + 5034556368092701954807355136104875024596127238450076252401212621682093933060*seg13AccX38 rho + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg13AccY38 rho := by
  rw [add_assoc, seg13AccWeighted38]
  unfold Seg13.relationRow443 at r443
  simp only [Seg13.relationLc75, Seg13.relationLc75Part0, Seg13.relationLc75Part1, Seg13.relationLc75Part2] at r443
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r443 ⊢
  exact r443

theorem seg13_prefix_39_addY (rho : Nat -> Seg13.F)
    (r444 : Seg13.relationRow444 rho) :
    rho 11014*(1 + (-1)*rho 11012) = 5034556368092701954807355136104875024596127238450076252401212621682093933060 + 2776352286685200723773157721639124171677345230423218268294247495348690302387*rho 10571 + 2459406165588571115311174697897461555967218978176849787735079515445045239877*seg13AccX38 rho + 5034556368092701954807355136104875024596127238450076252401212621682093933060*seg13AccY38 rho := by
  rw [add_assoc, seg13AccWeighted38]
  unfold Seg13.relationRow444 at r444
  simp only [Seg13.relationLc76, Seg13.relationLc76Part0, Seg13.relationLc76Part1, Seg13.relationLc76Part2] at r444
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r444 ⊢
  exact r444

theorem seg13_prefix_39_selX (rho : Nat -> Seg13.F)
    (r445 : Seg13.relationRow445 rho) :
    (1*rho 10610)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX38 rho + rho 11013) = rho 11015 := by
  rw [seg13AccX38_sum]
  unfold Seg13.relationRow445 at r445
  simp only [Seg13.relationLc77, Seg13.relationLc77Part0, Seg13.relationLc77Part1] at r445
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r445 ⊢
  exact r445

theorem seg13_prefix_39_selY (rho : Nat -> Seg13.F)
    (r446 : Seg13.relationRow446 rho) :
    (1*rho 10610)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY38 rho + rho 11014) = rho 11016 := by
  rw [seg13AccY38_sum]
  unfold Seg13.relationRow446 at r446
  simp only [Seg13.relationLc78, Seg13.relationLc78Part0, Seg13.relationLc78Part1] at r446
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r446 ⊢
  exact r446

theorem seg13_prefix_40_v2 (rho : Nat -> Seg13.F)
    (r447 : Seg13.relationRow447 rho) :
    (1215279473610371209935227904049657825190163834384456189946283016107686137841*rho 10571 + 3131519962748260633613313507912172186478635528818138590775791988998556993852*seg13AccX39 rho)*(1214286283469246825825118534888634565400684580240643302545653368917068457758 + 8298128149157705628277342045212304693352092272731248112178849781241908597876*rho 10571 + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg13AccY39 rho) = rho 11017 := by
  rw [seg13AccX39_sum, seg13AccY39_sum]
  unfold Seg13.relationRow447 at r447
  simp only [Seg13.relationLc79, Seg13.relationLc79Part0, Seg13.relationLc79Part1] at r447
  simp only [Seg13.relationLc80, Seg13.relationLc80Part0, Seg13.relationLc80Part1] at r447
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r447 ⊢
  exact r447

theorem seg13_prefix_40_addX (rho : Nat -> Seg13.F)
    (r448 : Seg13.relationRow448 rho) :
    rho 11018*(1 + rho 11017) = 1214286283469246825825118534888634565400684580240643302545653368917068457758 + 8002233522886339559505266502144845482991067722684261581370776804310052360471*rho 10571 + 8026210262354054865492217713588127197539452375622686325254164529602078941503*seg13AccX39 rho + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg13AccY39 rho := by
  rw [add_assoc, seg13AccWeighted39]
  unfold Seg13.relationRow448 at r448
  simp only [Seg13.relationLc81, Seg13.relationLc81Part0, Seg13.relationLc81Part1, Seg13.relationLc81Part2] at r448
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r448 ⊢
  exact r448

theorem seg13_prefix_40_addY (rho : Nat -> Seg13.F)
    (r449 : Seg13.relationRow449 rho) :
    rho 11019*(1 + (-1)*rho 11017) = 8026210262354054865492217713588127197539452375622686325254164529602078941503 + 7728715752397633698641128843943213501411187652390824656893175053399511388425*rho 10571 + 1214286283469246825825118534888634565400684580240643302545653368917068457758*seg13AccX39 rho + 8026210262354054865492217713588127197539452375622686325254164529602078941503*seg13AccY39 rho := by
  rw [add_assoc, seg13AccWeighted39]
  unfold Seg13.relationRow449 at r449
  simp only [Seg13.relationLc82, Seg13.relationLc82Part0, Seg13.relationLc82Part1, Seg13.relationLc82Part2] at r449
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r449 ⊢
  exact r449

theorem seg13_prefix_40_selX (rho : Nat -> Seg13.F)
    (r450 : Seg13.relationRow450 rho) :
    (1*rho 10611)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX39 rho + rho 11018) = rho 11020 := by
  rw [seg13AccX39_sum]
  unfold Seg13.relationRow450 at r450
  simp only [Seg13.relationLc83, Seg13.relationLc83Part0, Seg13.relationLc83Part1] at r450
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r450 ⊢
  exact r450

theorem seg13_prefix_40_selY (rho : Nat -> Seg13.F)
    (r451 : Seg13.relationRow451 rho) :
    (1*rho 10611)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY39 rho + rho 11019) = rho 11021 := by
  rw [seg13AccY39_sum]
  unfold Seg13.relationRow451 at r451
  simp only [Seg13.relationLc84, Seg13.relationLc84Part0, Seg13.relationLc84Part1] at r451
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r451 ⊢
  exact r451


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

