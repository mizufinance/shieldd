import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_prefix_11_v2 (rho : Nat -> Seg30.F)
    (r302 : Seg30.relationRow302 rho) :
    (8298331348720756663882355575114982170931079394891959395449028587745364227316*rho 28317 + 7436513624196780151145143382197103725994396724594713063111808851360322240388*seg30AccX10 rho)*(4793656284491333933633189842805096486523828232784622516856254870594131961786 + 739624094024724903522699602604904924155550084449718938645942504369886836093*rho 28317 + 4793656284491333933633189842805096486523828232784622516856254870594131961786*seg30AccY10 rho) = rho 28618 := by
  rw [seg30AccX10_sum, seg30AccY10_sum]
  unfold Seg30.relationRow302 at r302
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r302 ⊢
  exact r302

theorem seg30_prefix_11_addX (rho : Nat -> Seg30.F)
    (r303 : Seg30.relationRow303 rho) :
    rho 28619*(1 + rho 28618) = 4793656284491333933633189842805096486523828232784622516856254870594131961786 + 7467751634730908285649993597402493781044442795398268931829530959690983159615*rho 28317 + 6230287087504338326837976533262986685081594874362081735088650098853144027416*seg30AccX10 rho + 4793656284491333933633189842805096486523828232784622516856254870594131961786*seg30AccY10 rho := by
  rw [add_assoc, seg30AccWeighted10]
  unfold Seg30.relationRow303 at r303
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r303 ⊢
  exact r303

theorem seg30_prefix_11_addY (rho : Nat -> Seg30.F)
    (r304 : Seg30.relationRow304 rho) :
    rho 28620*(1 + (-1)*rho 28618) = 6230287087504338326837976533262986685081594874362081735088650098853144027416 + 1345942772000032582548491900742163557204647272175128966889858475183040684286*rho 28317 + 4793656284491333933633189842805096486523828232784622516856254870594131961786*seg30AccX10 rho + 6230287087504338326837976533262986685081594874362081735088650098853144027416*seg30AccY10 rho := by
  rw [add_assoc, seg30AccWeighted10]
  unfold Seg30.relationRow304 at r304
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r304 ⊢
  exact r304

theorem seg30_prefix_11_selX (rho : Nat -> Seg30.F)
    (r305 : Seg30.relationRow305 rho) :
    (1*rho 28328)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX10 rho + rho 28619) = rho 28621 := by
  rw [seg30AccX10_sum]
  unfold Seg30.relationRow305 at r305
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r305 ⊢
  exact r305

theorem seg30_prefix_11_selY (rho : Nat -> Seg30.F)
    (r306 : Seg30.relationRow306 rho) :
    (1*rho 28328)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY10 rho + rho 28620) = rho 28622 := by
  rw [seg30AccY10_sum]
  unfold Seg30.relationRow306 at r306
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r306 ⊢
  exact r306

theorem seg30_prefix_12_v2 (rho : Nat -> Seg30.F)
    (r307 : Seg30.relationRow307 rho) :
    (4328607763429889518549586819673284505749414943234360646809969879301408014412*rho 28317 + 1956145867708643475270858009794921954207452165111348566040018876064876731095*seg30AccX11 rho)*(494772453846730246931269190597991306768479400733920168680734403086759869202 + 4082445054664856202533014286782356950822908277969521053589710610935807585161*rho 28317 + 494772453846730246931269190597991306768479400733920168680734403086759869202*seg30AccY11 rho) = rho 28623 := by
  rw [seg30AccX11_sum, seg30AccY11_sum]
  unfold Seg30.relationRow307 at r307
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r307 ⊢
  exact r307

theorem seg30_prefix_12_addX (rho : Nat -> Seg30.F)
    (r308 : Seg30.relationRow308 rho) :
    rho 28624*(1 + rho 28623) = 494772453846730246931269190597991306768479400733920168680734403086759869202 + 3670180330682079329553776781280868833597524733891544527311125843773783368225*rho 28317 + 5845523225396369149480160147302882727262897372384064486189544248659174973706*seg30AccX11 rho + 494772453846730246931269190597991306768479400733920168680734403086759869202*seg30AccY11 rho := by
  rw [add_assoc, seg30AccWeighted11]
  unfold Seg30.relationRow308 at r308
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r308 ⊢
  exact r308

theorem seg30_prefix_12_addY (rho : Nat -> Seg30.F)
    (r309 : Seg30.relationRow309 rho) :
    rho 28625*(1 + (-1)*rho 28623) = 5845523225396369149480160147302882727262897372384064486189544248659174973706 + 2082461988606531288774866924556877817331232692425085108297256770904380168490*rho 28317 + 494772453846730246931269190597991306768479400733920168680734403086759869202*seg30AccX11 rho + 5845523225396369149480160147302882727262897372384064486189544248659174973706*seg30AccY11 rho := by
  rw [add_assoc, seg30AccWeighted11]
  unfold Seg30.relationRow309 at r309
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r309 ⊢
  exact r309

theorem seg30_prefix_12_selX (rho : Nat -> Seg30.F)
    (r310 : Seg30.relationRow310 rho) :
    (1*rho 28329)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX11 rho + rho 28624) = rho 28626 := by
  rw [seg30AccX11_sum]
  unfold Seg30.relationRow310 at r310
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r310 ⊢
  exact r310

theorem seg30_prefix_12_selY (rho : Nat -> Seg30.F)
    (r311 : Seg30.relationRow311 rho) :
    (1*rho 28329)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY11 rho + rho 28625) = rho 28627 := by
  rw [seg30AccY11_sum]
  unfold Seg30.relationRow311 at r311
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r311 ⊢
  exact r311

theorem seg30_prefix_13_v2 (rho : Nat -> Seg30.F)
    (r312 : Seg30.relationRow312 rho) :
    (6365258573991241174697130941626496417579456953277881746179878783360931147021*rho 28317 + 1853516191212418601923176409711849924541567377271919075960283931253075558048*seg30AccX12 rho)*(5238161505909734467545466330312054908335919150190674809026639727377038723562 + 6308081791843239106558827474230829281890992551262166724382057215427105827277*rho 28317 + 5238161505909734467545466330312054908335919150190674809026639727377038723562*seg30AccY12 rho) = rho 28628 := by
  rw [seg30AccX12_sum, seg30AccY12_sum]
  unfold Seg30.relationRow312 at r312
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r312 ⊢
  exact r312

theorem seg30_prefix_13_addX (rho : Nat -> Seg30.F)
    (r313 : Seg30.relationRow313 rho) :
    rho 28629*(1 + rho 28628) = 5238161505909734467545466330312054908335919150190674809026639727377038723562 + 157835167573840873325803124903931758176734034307245637477300857369887421457*rho 28317 + 5216557146846922088795177263216179304029119406413358166833202884036126685074*seg30AccX12 rho + 5238161505909734467545466330312054908335919150190674809026639727377038723562*seg30AccY12 rho := by
  rw [add_assoc, seg30AccWeighted12]
  unfold Seg30.relationRow313 at r313
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r313 ⊢
  exact r313

theorem seg30_prefix_13_addY (rho : Nat -> Seg30.F)
    (r314 : Seg30.relationRow314 rho) :
    rho 28630*(1 + (-1)*rho 28628) = 5216557146846922088795177263216179304029119406413358166833202884036126685074 + 2109510694087870351614875689124547954491801048323887005509713422227348274902*rho 28317 + 5238161505909734467545466330312054908335919150190674809026639727377038723562*seg30AccX12 rho + 5216557146846922088795177263216179304029119406413358166833202884036126685074*seg30AccY12 rho := by
  rw [add_assoc, seg30AccWeighted12]
  unfold Seg30.relationRow314 at r314
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r314 ⊢
  exact r314

theorem seg30_prefix_13_selX (rho : Nat -> Seg30.F)
    (r315 : Seg30.relationRow315 rho) :
    (1*rho 28330)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX12 rho + rho 28629) = rho 28631 := by
  rw [seg30AccX12_sum]
  unfold Seg30.relationRow315 at r315
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r315 ⊢
  exact r315

theorem seg30_prefix_13_selY (rho : Nat -> Seg30.F)
    (r316 : Seg30.relationRow316 rho) :
    (1*rho 28330)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY12 rho + rho 28630) = rho 28632 := by
  rw [seg30AccY12_sum]
  unfold Seg30.relationRow316 at r316
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r316 ⊢
  exact r316

theorem seg30_prefix_14_v2 (rho : Nat -> Seg30.F)
    (r317 : Seg30.relationRow317 rho) :
    (6392897488810401941497707224445347980247610074382856459069433032993945525945*rho 28317 + 3855803401469065688708113530808008529379689296709597100941472437302433750795*seg30AccX13 rho)*(1133339956106993676287697933760165738395123288272105264851263043265143770306 + 6325190948235679932022903635625454392268619003506054476754941683181366095871*rho 28317 + 1133339956106993676287697933760165738395123288272105264851263043265143770306*seg30AccY13 rho) = rho 28633 := by
  rw [seg30AccX13_sum, seg30AccY13_sum]
  unfold Seg30.relationRow317 at r317
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r317 ⊢
  exact r317

theorem seg30_prefix_14_addX (rho : Nat -> Seg30.F)
    (r318 : Seg30.relationRow318 rho) :
    rho 28634*(1 + rho 28633) = 1133339956106993676287697933760165738395123288272105264851263043265143770306 + 5670422456469093818895801300839218679957103368389595640903994834751178334981*rho 28317 + 7855939529723664335593481029959269699336529897742346558622624125642245082905*seg30AccX13 rho + 1133339956106993676287697933760165738395123288272105264851263043265143770306*seg30AccY13 rho := by
  rw [add_assoc, seg30AccWeighted13]
  unfold Seg30.relationRow318 at r318
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r318 ⊢
  exact r318

theorem seg30_prefix_14_addY (rho : Nat -> Seg30.F)
    (r319 : Seg30.relationRow319 rho) :
    rho 28635*(1 + (-1)*rho 28633) = 7855939529723664335593481029959269699336529897742346558622624125642245082905 + 1502253031822665056264899359881289147076629940416050932903827151708815196662*rho 28317 + 1133339956106993676287697933760165738395123288272105264851263043265143770306*seg30AccX13 rho + 7855939529723664335593481029959269699336529897742346558622624125642245082905*seg30AccY13 rho := by
  rw [add_assoc, seg30AccWeighted13]
  unfold Seg30.relationRow319 at r319
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r319 ⊢
  exact r319

theorem seg30_prefix_14_selX (rho : Nat -> Seg30.F)
    (r320 : Seg30.relationRow320 rho) :
    (1*rho 28331)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX13 rho + rho 28634) = rho 28636 := by
  rw [seg30AccX13_sum]
  unfold Seg30.relationRow320 at r320
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r320 ⊢
  exact r320

theorem seg30_prefix_14_selY (rho : Nat -> Seg30.F)
    (r321 : Seg30.relationRow321 rho) :
    (1*rho 28331)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY13 rho + rho 28635) = rho 28637 := by
  rw [seg30AccY13_sum]
  unfold Seg30.relationRow321 at r321
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r321 ⊢
  exact r321

theorem seg30_prefix_15_v2 (rho : Nat -> Seg30.F)
    (r322 : Seg30.relationRow322 rho) :
    (1154270589750196804295977235212672773267637464955366047864403821541484639623*rho 28317 + 205069286912058446724553664414720879157620857762407089747478771633946928445*seg30AccX14 rho)*(5633009114402396467627853566573332566500787514248685719750612346780592270240 + 6541486584943148672220258704046195232837410062746476396592408480617432697871*rho 28317 + 5633009114402396467627853566573332566500787514248685719750612346780592270240*seg30AccY14 rho) = rho 28638 := by
  rw [seg30AccX14_sum, seg30AccY14_sum]
  unfold Seg30.relationRow322 at r322
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r322 ⊢
  exact r322

theorem seg30_prefix_15_addX (rho : Nat -> Seg30.F)
    (r323 : Seg30.relationRow323 rho) :
    rho 28639*(1 + rho 28638) = 5633009114402396467627853566573332566500787514248685719750612346780592270240 + 8065281991771421455411223804632476441832157753949362908433708261251835054679*rho 28317 + 6666748209756231552558812324613837536647029968619730101527732297628154578630*seg30AccX14 rho + 5633009114402396467627853566573332566500787514248685719750612346780592270240*seg30AccY14 rho := by
  rw [add_assoc, seg30AccWeighted14]
  unfold Seg30.relationRow323 at r323
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r323 ⊢
  exact r323

theorem seg30_prefix_15_addY (rho : Nat -> Seg30.F)
    (r324 : Seg30.relationRow324 rho) :
    rho 28640*(1 + (-1)*rho 28638) = 6666748209756231552558812324613837536647029968619730101527732297628154578630 + 691803258808965640515239055672572434133645482820593363403832718027550731690*rho 28317 + 5633009114402396467627853566573332566500787514248685719750612346780592270240*seg30AccX14 rho + 6666748209756231552558812324613837536647029968619730101527732297628154578630*seg30AccY14 rho := by
  rw [add_assoc, seg30AccWeighted14]
  unfold Seg30.relationRow324 at r324
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r324 ⊢
  exact r324

theorem seg30_prefix_15_selX (rho : Nat -> Seg30.F)
    (r325 : Seg30.relationRow325 rho) :
    (1*rho 28332)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX14 rho + rho 28639) = rho 28641 := by
  rw [seg30AccX14_sum]
  unfold Seg30.relationRow325 at r325
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r325 ⊢
  exact r325

theorem seg30_prefix_15_selY (rho : Nat -> Seg30.F)
    (r326 : Seg30.relationRow326 rho) :
    (1*rho 28332)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY14 rho + rho 28640) = rho 28642 := by
  rw [seg30AccY14_sum]
  unfold Seg30.relationRow326 at r326
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r326 ⊢
  exact r326

theorem seg30_prefix_16_v2 (rho : Nat -> Seg30.F)
    (r327 : Seg30.relationRow327 rho) :
    (2565281417372355034333129407812678403954687984916372104077808620259675622067*rho 28317 + 5204791339935273446264298158279131872547233604358525528326239196577831483873*seg30AccX15 rho)*(8062172124520854321514530176867275534144014208257083085567902155914134552645 + 6999993505829475899445060808880833349600248300838318578913879398558778432397*rho 28317 + 8062172124520854321514530176867275534144014208257083085567902155914134552645*seg30AccY15 rho) = rho 28643 := by
  rw [seg30AccX15_sum, seg30AccY15_sum]
  unfold Seg30.relationRow327 at r327
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r327 ⊢
  exact r327

theorem seg30_prefix_16_addX (rho : Nat -> Seg30.F)
    (r328 : Seg30.relationRow328 rho) :
    rho 28644*(1 + rho 28643) = 8062172124520854321514530176867275534144014208257083085567902155914134552645 + 4974283645876415256430805611526047332770201187299166012495817019571733737699*rho 28317 + 4809559417529537372775320487541389992002348258877639294795408071292460020733*seg30AccX15 rho + 8062172124520854321514530176867275534144014208257083085567902155914134552645*seg30AccY15 rho := by
  rw [add_assoc, seg30AccWeighted15]
  unfold Seg30.relationRow328 at r328
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r328 ⊢
  exact r328

theorem seg30_prefix_16_addY (rho : Nat -> Seg30.F)
    (r329 : Seg30.relationRow329 rho) :
    rho 28645*(1 + (-1)*rho 28643) = 4809559417529537372775320487541389992002348258877639294795408071292460020733 + 1104332342598121262041694088063331042238518395485732405549340757413365139397*rho 28317 + 8062172124520854321514530176867275534144014208257083085567902155914134552645*seg30AccX15 rho + 4809559417529537372775320487541389992002348258877639294795408071292460020733*seg30AccY15 rho := by
  rw [add_assoc, seg30AccWeighted15]
  unfold Seg30.relationRow329 at r329
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r329 ⊢
  exact r329

theorem seg30_prefix_16_selX (rho : Nat -> Seg30.F)
    (r330 : Seg30.relationRow330 rho) :
    (1*rho 28333)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX15 rho + rho 28644) = rho 28646 := by
  rw [seg30AccX15_sum]
  unfold Seg30.relationRow330 at r330
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r330 ⊢
  exact r330

theorem seg30_prefix_16_selY (rho : Nat -> Seg30.F)
    (r331 : Seg30.relationRow331 rho) :
    (1*rho 28333)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY15 rho + rho 28645) = rho 28647 := by
  rw [seg30AccY15_sum]
  unfold Seg30.relationRow331 at r331
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r331 ⊢
  exact r331

theorem seg30_prefix_17_v2 (rho : Nat -> Seg30.F)
    (r332 : Seg30.relationRow332 rho) :
    (6791698752667339510952296595555870991643831317666830443332139919776260595394*rho 28317 + 5979975440407286069589528792777250779484024110408852462628728707560934706920*seg30AccX16 rho)*(3726745087124593525911004095107247886843387872684749432940666162562970397141 + 763284116831443282993557116557673346460566117731661487911542239630748918043*rho 28317 + 3726745087124593525911004095107247886843387872684749432940666162562970397141*seg30AccY16 rho) = rho 28648 := by
  rw [seg30AccX16_sum, seg30AccY16_sum]
  unfold Seg30.relationRow332 at r332
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r332 ⊢
  exact r332

theorem seg30_prefix_17_addX (rho : Nat -> Seg30.F)
    (r333 : Seg30.relationRow333 rho) :
    rho 28649*(1 + rho 28648) = 3726745087124593525911004095107247886843387872684749432940666162562970397141 + 1606903675034226082467191212277236860838516972150410260719167996052766939078*rho 28317 + 7761604035701278908899148480254998484567686388115885481234967494979903668416*seg30AccX16 rho + 3726745087124593525911004095107247886843387872684749432940666162562970397141*seg30AccY16 rho := by
  rw [add_assoc, seg30AccWeighted16]
  unfold Seg30.relationRow333 at r333
  simp only [Seg30.relationLc1, Seg30.relationLc1Part0, Seg30.relationLc1Part1] at r333
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r333 ⊢
  exact r333

theorem seg30_prefix_17_addY (rho : Nat -> Seg30.F)
    (r334 : Seg30.relationRow334 rho) :
    rho 28650*(1 + (-1)*rho 28648) = 7761604035701278908899148480254998484567686388115885481234967494979903668416 + 4989764476136359323643015539428853238256611734537667367151373880363577085209*rho 28317 + 3726745087124593525911004095107247886843387872684749432940666162562970397141*seg30AccX16 rho + 7761604035701278908899148480254998484567686388115885481234967494979903668416*seg30AccY16 rho := by
  rw [add_assoc, seg30AccWeighted16]
  unfold Seg30.relationRow334 at r334
  simp only [Seg30.relationLc2, Seg30.relationLc2Part0, Seg30.relationLc2Part1] at r334
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r334 ⊢
  exact r334

theorem seg30_prefix_17_selX (rho : Nat -> Seg30.F)
    (r335 : Seg30.relationRow335 rho) :
    (1*rho 28334)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX16 rho + rho 28649) = rho 28651 := by
  rw [seg30AccX16_sum]
  unfold Seg30.relationRow335 at r335
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r335 ⊢
  exact r335

theorem seg30_prefix_17_selY (rho : Nat -> Seg30.F)
    (r336 : Seg30.relationRow336 rho) :
    (1*rho 28334)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY16 rho + rho 28650) = rho 28652 := by
  rw [seg30AccY16_sum]
  unfold Seg30.relationRow336 at r336
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r336 ⊢
  exact r336

theorem seg30_prefix_18_v2 (rho : Nat -> Seg30.F)
    (r337 : Seg30.relationRow337 rho) :
    (1035256098324900012504832895605271619171000926193114334504037188551361788563*rho 28317 + 2784804284256257170464390736314249556257102062927289168087730753011907964254*seg30AccX17 rho)*(6193662063878718738684460956845089958082415637995041370921760294626310638943 + 5072169898700297741154591405073783913386016341873794892229721658094037331710*rho 28317 + 6193662063878718738684460956845089958082415637995041370921760294626310638943*seg30AccY17 rho) = rho 28653 := by
  rw [seg30AccX17_sum, seg30AccY17_sum]
  unfold Seg30.relationRow337 at r337
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r337 ⊢
  exact r337

theorem seg30_prefix_18_addX (rho : Nat -> Seg30.F)
    (r338 : Seg30.relationRow338 rho) :
    rho 28654*(1 + rho 28653) = 6193662063878718738684460956845089958082415637995041370921760294626310638943 + 1410730098749009970299425619933691002269413518925886749144434736523943077703*rho 28317 + 1222447728826366809853426312142949382246780904179163582249514978811294189151*seg30AccX17 rho + 6193662063878718738684460956845089958082415637995041370921760294626310638943*seg30AccY17 rho := by
  rw [add_assoc, seg30AccWeighted17]
  unfold Seg30.relationRow338 at r338
  simp only [Seg30.relationLc3, Seg30.relationLc3Part0, Seg30.relationLc3Part1] at r338
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r338 ⊢
  exact r338

theorem seg30_prefix_18_addY (rho : Nat -> Seg30.F)
    (r339 : Seg30.relationRow339 rho) :
    rho 28655*(1 + (-1)*rho 28653) = 1222447728826366809853426312142949382246780904179163582249514978811294189151 + 2995070794936950531871641020434249128412571282127239252884716346409366848276*rho 28317 + 6193662063878718738684460956845089958082415637995041370921760294626310638943*seg30AccX17 rho + 1222447728826366809853426312142949382246780904179163582249514978811294189151*seg30AccY17 rho := by
  rw [add_assoc, seg30AccWeighted17]
  unfold Seg30.relationRow339 at r339
  simp only [Seg30.relationLc4, Seg30.relationLc4Part0, Seg30.relationLc4Part1] at r339
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r339 ⊢
  exact r339

theorem seg30_prefix_18_selX (rho : Nat -> Seg30.F)
    (r340 : Seg30.relationRow340 rho) :
    (1*rho 28335)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX17 rho + rho 28654) = rho 28656 := by
  rw [seg30AccX17_sum]
  unfold Seg30.relationRow340 at r340
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r340 ⊢
  exact r340

theorem seg30_prefix_18_selY (rho : Nat -> Seg30.F)
    (r341 : Seg30.relationRow341 rho) :
    (1*rho 28335)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY17 rho + rho 28655) = rho 28657 := by
  rw [seg30AccY17_sum]
  unfold Seg30.relationRow341 at r341
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r341 ⊢
  exact r341

theorem seg30_prefix_19_v2 (rho : Nat -> Seg30.F)
    (r342 : Seg30.relationRow342 rho) :
    (4546888810253427862563751215304350507451643161519748281461054251858758583289*rho 28317 + 2680000823858780700261740378019139547137909680954021722339230432104823098462*seg30AccX18 rho)*(1364136956584929250201922665879955690733936032481550305410722252206655464920 + 3790065893014975294040975367143594764489481636140049342475276949258862854067*rho 28317 + 1364136956584929250201922665879955690733936032481550305410722252206655464920*seg30AccY18 rho) = rho 28658 := by
  rw [seg30AccX18_sum, seg30AccY18_sum]
  unfold Seg30.relationRow342 at r342
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r342 ⊢
  exact r342

theorem seg30_prefix_19_addX (rho : Nat -> Seg30.F)
    (r343 : Seg30.relationRow343 rho) :
    rho 28659*(1 + rho 28658) = 1364136956584929250201922665879955690733936032481550305410722252206655464920 + 8294724869227937287198016322983507314159797912900961813539534530104544761607*rho 28317 + 5485175092089480818628419818029597296956852831927582672006377779193002896424*seg30AccX18 rho + 1364136956584929250201922665879955690733936032481550305410722252206655464920*seg30AccY18 rho := by
  rw [add_assoc, seg30AccWeighted18]
  unfold Seg30.relationRow343 at r343
  simp only [Seg30.relationLc5, Seg30.relationLc5Part0, Seg30.relationLc5Part1] at r343
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r343 ⊢
  exact r343

theorem seg30_prefix_19_addY (rho : Nat -> Seg30.F)
    (r344 : Seg30.relationRow344 rho) :
    rho 28660*(1 + (-1)*rho 28658) = 5485175092089480818628419818029597296956852831927582672006377779193002896424 + 3740414361898696094609007457966699212203883412663141727660824399823632458310*rho 28317 + 1364136956584929250201922665879955690733936032481550305410722252206655464920*seg30AccX18 rho + 5485175092089480818628419818029597296956852831927582672006377779193002896424*seg30AccY18 rho := by
  rw [add_assoc, seg30AccWeighted18]
  unfold Seg30.relationRow344 at r344
  simp only [Seg30.relationLc6, Seg30.relationLc6Part0, Seg30.relationLc6Part1] at r344
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r344 ⊢
  exact r344

theorem seg30_prefix_19_selX (rho : Nat -> Seg30.F)
    (r345 : Seg30.relationRow345 rho) :
    (1*rho 28336)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX18 rho + rho 28659) = rho 28661 := by
  rw [seg30AccX18_sum]
  unfold Seg30.relationRow345 at r345
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r345 ⊢
  exact r345

theorem seg30_prefix_19_selY (rho : Nat -> Seg30.F)
    (r346 : Seg30.relationRow346 rho) :
    (1*rho 28336)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY18 rho + rho 28660) = rho 28662 := by
  rw [seg30AccY18_sum]
  unfold Seg30.relationRow346 at r346
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r346 ⊢
  exact r346

theorem seg30_prefix_20_v2 (rho : Nat -> Seg30.F)
    (r347 : Seg30.relationRow347 rho) :
    (2628595992157913669545852482426131974280448347164390041202572980166040998915*rho 28317 + 4955490201717136320114201051988658439389552178006954900897479529446517812534*seg30AccX19 rho)*(6044178197021584126713478972629326105448674831777157394465638363379298339688 + 6974640620768894566711467391274204257714987313282173069117394778589234025575*rho 28317 + 6044178197021584126713478972629326105448674831777157394465638363379298339688*seg30AccY19 rho) = rho 28663 := by
  rw [seg30AccX19_sum, seg30AccY19_sum]
  unfold Seg30.relationRow347 at r347
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r347 ⊢
  exact r347

theorem seg30_prefix_20_addX (rho : Nat -> Seg30.F)
    (r348 : Seg30.relationRow348 rho) :
    rho 28664*(1 + rho 28663) = 6044178197021584126713478972629326105448674831777157394465638363379298339688 + 4132737607469823130832119787746098766011905825197261277336881752542282964633*rho 28317 + 1689973646758177051495003132762675525782996607286018373708632402152784408538*seg30AccX19 rho + 6044178197021584126713478972629326105448674831777157394465638363379298339688*seg30AccY19 rho := by
  rw [add_assoc, seg30AccWeighted19]
  unfold Seg30.relationRow348 at r348
  simp only [Seg30.relationLc7, Seg30.relationLc7Part0, Seg30.relationLc7Part1] at r348
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r348 ⊢
  exact r348

theorem seg30_prefix_20_addY (rho : Nat -> Seg30.F)
    (r349 : Seg30.relationRow349 rho) :
    rho 28665*(1 + (-1)*rho 28663) = 1689973646758177051495003132762675525782996607286018373708632402152784408538 + 2720699130896707130560031575642279219659987531043287574083495097531802883567*rho 28317 + 6044178197021584126713478972629326105448674831777157394465638363379298339688*seg30AccX19 rho + 1689973646758177051495003132762675525782996607286018373708632402152784408538*seg30AccY19 rho := by
  rw [add_assoc, seg30AccWeighted19]
  unfold Seg30.relationRow349 at r349
  simp only [Seg30.relationLc8, Seg30.relationLc8Part0, Seg30.relationLc8Part1] at r349
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r349 ⊢
  exact r349

theorem seg30_prefix_20_selX (rho : Nat -> Seg30.F)
    (r350 : Seg30.relationRow350 rho) :
    (1*rho 28337)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX19 rho + rho 28664) = rho 28666 := by
  rw [seg30AccX19_sum]
  unfold Seg30.relationRow350 at r350
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r350 ⊢
  exact r350

theorem seg30_prefix_20_selY (rho : Nat -> Seg30.F)
    (r351 : Seg30.relationRow351 rho) :
    (1*rho 28337)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY19 rho + rho 28665) = rho 28667 := by
  rw [seg30AccY19_sum]
  unfold Seg30.relationRow351 at r351
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r351 ⊢
  exact r351


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

