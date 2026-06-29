import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_prefix_121_v2 (rho : Nat -> Seg31.F)
    (r852 : Seg31.relationRow852 rho) :
    (3946958459661543686929747477451679320619934793290430451765914523801407412779*rho 29271 + 3986668860635778338789526978466339028865773963962702698271938929340967177465*seg31AccX120 rho)*(4076629403287037118543777894905296194563685872420255886902192452988113504041 + 2271613138381064962232656709377804353171427636280369025590495735246060493453*rho 29271 + 4076629403287037118543777894905296194563685872420255886902192452988113504041*seg31AccY120 rho) = rho 30122 := by
  rw [seg31AccX120_sum, seg31AccY120_sum]
  unfold Seg31.relationRow852 at r852
  simp only [Seg31.relationLc565, Seg31.relationLc565Part0, Seg31.relationLc565Part1, Seg31.relationLc565Part2, Seg31.relationLc565Part3] at r852
  simp only [Seg31.relationLc566, Seg31.relationLc566Part0, Seg31.relationLc566Part1, Seg31.relationLc566Part2, Seg31.relationLc566Part3] at r852
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r852 ⊢
  exact r852

theorem seg31_prefix_121_addX (rho : Nat -> Seg31.F)
    (r853 : Seg31.relationRow853 rho) :
    rho 30123*(1 + rho 30122) = 4076629403287037118543777894905296194563685872420255886902192452988113504041 + 531476524202245620749674852580898755777662210590964413094009628489110957369*rho 29271 + 518441606257823338902622357051655891206026862286482790753488953417431869050*seg31AccX120 rho + 4076629403287037118543777894905296194563685872420255886902192452988113504041*seg31AccY120 rho := by
  rw [add_assoc, seg31AccWeighted120]
  unfold Seg31.relationRow853 at r853
  simp only [Seg31.relationLc567, Seg31.relationLc567Part0, Seg31.relationLc567Part1, Seg31.relationLc567Part2, Seg31.relationLc567Part3, Seg31.relationLc567Part4, Seg31.relationLc567Part5, Seg31.relationLc567Part6, Seg31.relationLc567Part7] at r853
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r853 ⊢
  exact r853

theorem seg31_prefix_121_addY (rho : Nat -> Seg31.F)
    (r854 : Seg31.relationRow854 rho) :
    rho 30124*(1 + (-1)*rho 30122) = 518441606257823338902622357051655891206026862286482790753488953417431869050 + 6521749992220261155171628057732085595952514169941349494307767142773096886607*rho 29271 + 4076629403287037118543777894905296194563685872420255886902192452988113504041*seg31AccX120 rho + 518441606257823338902622357051655891206026862286482790753488953417431869050*seg31AccY120 rho := by
  rw [add_assoc, seg31AccWeighted120]
  unfold Seg31.relationRow854 at r854
  simp only [Seg31.relationLc568, Seg31.relationLc568Part0, Seg31.relationLc568Part1, Seg31.relationLc568Part2, Seg31.relationLc568Part3, Seg31.relationLc568Part4, Seg31.relationLc568Part5, Seg31.relationLc568Part6, Seg31.relationLc568Part7] at r854
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r854 ⊢
  exact r854

theorem seg31_prefix_121_selX (rho : Nat -> Seg31.F)
    (r855 : Seg31.relationRow855 rho) :
    (1*rho 29392)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX120 rho + rho 30123) = rho 30125 := by
  rw [seg31AccX120_sum]
  unfold Seg31.relationRow855 at r855
  simp only [Seg31.relationLc569, Seg31.relationLc569Part0, Seg31.relationLc569Part1, Seg31.relationLc569Part2, Seg31.relationLc569Part3] at r855
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r855 ⊢
  exact r855

theorem seg31_prefix_121_selY (rho : Nat -> Seg31.F)
    (r856 : Seg31.relationRow856 rho) :
    (1*rho 29392)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY120 rho + rho 30124) = rho 30126 := by
  rw [seg31AccY120_sum]
  unfold Seg31.relationRow856 at r856
  simp only [Seg31.relationLc570, Seg31.relationLc570Part0, Seg31.relationLc570Part1, Seg31.relationLc570Part2, Seg31.relationLc570Part3] at r856
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r856 ⊢
  exact r856

theorem seg31_prefix_122_v2 (rho : Nat -> Seg31.F)
    (r857 : Seg31.relationRow857 rho) :
    (925682298642025695569127838357638138953071366428001762630642884454986281998*rho 29271 + 5855145417203940550976487192596039675670168246738064866068981280365576908554*seg31AccX121 rho)*(2369094817551258812723538222613453499210094384112562673974854815926291253522 + 4431042670275116120931628545963771550361798060725958195462347720202910125040*rho 29271 + 2369094817551258812723538222613453499210094384112562673974854815926291253522*seg31AccY121 rho) = rho 30127 := by
  rw [seg31AccX121_sum, seg31AccY121_sum]
  unfold Seg31.relationRow857 at r857
  simp only [Seg31.relationLc571, Seg31.relationLc571Part0, Seg31.relationLc571Part1, Seg31.relationLc571Part2, Seg31.relationLc571Part3] at r857
  simp only [Seg31.relationLc572, Seg31.relationLc572Part0, Seg31.relationLc572Part1, Seg31.relationLc572Part2, Seg31.relationLc572Part3] at r857
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r857 ⊢
  exact r857

theorem seg31_prefix_122_addX (rho : Nat -> Seg31.F)
    (r858 : Seg31.relationRow858 rho) :
    rho 30128*(1 + rho 30127) = 2369094817551258812723538222613453499210094384112562673974854815926291253522 + 4067966091285693370366657306571767773155603475421886598021450763438657157548*rho 29271 + 3540729467127944686411780489801401505593366013423297871907340131238598369260*seg31AccX121 rho + 2369094817551258812723538222613453499210094384112562673974854815926291253522*seg31AccY121 rho := by
  rw [add_assoc, seg31AccWeighted121]
  unfold Seg31.relationRow858 at r858
  simp only [Seg31.relationLc573, Seg31.relationLc573Part0, Seg31.relationLc573Part1, Seg31.relationLc573Part2, Seg31.relationLc573Part3, Seg31.relationLc573Part4, Seg31.relationLc573Part5, Seg31.relationLc573Part6, Seg31.relationLc573Part7] at r858
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r858 ⊢
  exact r858

theorem seg31_prefix_122_addY (rho : Nat -> Seg31.F)
    (r859 : Seg31.relationRow859 rho) :
    rho 30129*(1 + (-1)*rho 30127) = 3540729467127944686411780489801401505593366013423297871907340131238598369260 + 6678015243706744213506802687278324384968843272394413227264100865185272284296*rho 29271 + 2369094817551258812723538222613453499210094384112562673974854815926291253522*seg31AccX121 rho + 3540729467127944686411780489801401505593366013423297871907340131238598369260*seg31AccY121 rho := by
  rw [add_assoc, seg31AccWeighted121]
  unfold Seg31.relationRow859 at r859
  simp only [Seg31.relationLc574, Seg31.relationLc574Part0, Seg31.relationLc574Part1, Seg31.relationLc574Part2, Seg31.relationLc574Part3, Seg31.relationLc574Part4, Seg31.relationLc574Part5, Seg31.relationLc574Part6, Seg31.relationLc574Part7] at r859
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r859 ⊢
  exact r859

theorem seg31_prefix_122_selX (rho : Nat -> Seg31.F)
    (r860 : Seg31.relationRow860 rho) :
    (1*rho 29393)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX121 rho + rho 30128) = rho 30130 := by
  rw [seg31AccX121_sum]
  unfold Seg31.relationRow860 at r860
  simp only [Seg31.relationLc575, Seg31.relationLc575Part0, Seg31.relationLc575Part1, Seg31.relationLc575Part2, Seg31.relationLc575Part3] at r860
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r860 ⊢
  exact r860

theorem seg31_prefix_122_selY (rho : Nat -> Seg31.F)
    (r861 : Seg31.relationRow861 rho) :
    (1*rho 29393)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY121 rho + rho 30129) = rho 30131 := by
  rw [seg31AccY121_sum]
  unfold Seg31.relationRow861 at r861
  simp only [Seg31.relationLc576, Seg31.relationLc576Part0, Seg31.relationLc576Part1, Seg31.relationLc576Part2, Seg31.relationLc576Part3] at r861
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r861 ⊢
  exact r861

theorem seg31_prefix_123_v2 (rho : Nat -> Seg31.F)
    (r862 : Seg31.relationRow862 rho) :
    (5800326694329768429758990205268420212840756619354697203033693061349602045852*rho 29271 + 4605714326718740686632657117795621638911193650541587203844342302667521971341*seg31AccX122 rho)*(5693046099821280996920724757629771309454586302160024449729771825415757278215 + 1914634463071955144491109301380262226852858209694089168223890368315123462833*rho 29271 + 5693046099821280996920724757629771309454586302160024449729771825415757278215*seg31AccY122 rho) = rho 30132 := by
  rw [seg31AccX122_sum, seg31AccY122_sum]
  unfold Seg31.relationRow862 at r862
  simp only [Seg31.relationLc577, Seg31.relationLc577Part0, Seg31.relationLc577Part1, Seg31.relationLc577Part2, Seg31.relationLc577Part3] at r862
  simp only [Seg31.relationLc578, Seg31.relationLc578Part0, Seg31.relationLc578Part1, Seg31.relationLc578Part2, Seg31.relationLc578Part3] at r862
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r862 ⊢
  exact r862

theorem seg31_prefix_123_addX (rho : Nat -> Seg31.F)
    (r863 : Seg31.relationRow863 rho) :
    rho 30133*(1 + rho 30132) = 5693046099821280996920724757629771309454586302160024449729771825415757278215 + 3470715581700390670579194589750936934452275881645434479556238430066672333721*rho 29271 + 6539623219543090752401401585212788135891141919422673578531729690729390179440*seg31AccX122 rho + 5693046099821280996920724757629771309454586302160024449729771825415757278215*seg31AccY122 rho := by
  rw [add_assoc, seg31AccWeighted122]
  unfold Seg31.relationRow863 at r863
  simp only [Seg31.relationLc579, Seg31.relationLc579Part0, Seg31.relationLc579Part1, Seg31.relationLc579Part2, Seg31.relationLc579Part3, Seg31.relationLc579Part4, Seg31.relationLc579Part5, Seg31.relationLc579Part6, Seg31.relationLc579Part7] at r863
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r863 ⊢
  exact r863

theorem seg31_prefix_123_addY (rho : Nat -> Seg31.F)
    (r864 : Seg31.relationRow864 rho) :
    rho 30134*(1 + (-1)*rho 30132) = 6539623219543090752401401585212788135891141919422673578531729690729390179440 + 6149125308177821096193566087895360010904466580282475588586340879964222902869*rho 29271 + 5693046099821280996920724757629771309454586302160024449729771825415757278215*seg31AccX122 rho + 6539623219543090752401401585212788135891141919422673578531729690729390179440*seg31AccY122 rho := by
  rw [add_assoc, seg31AccWeighted122]
  unfold Seg31.relationRow864 at r864
  simp only [Seg31.relationLc580, Seg31.relationLc580Part0, Seg31.relationLc580Part1, Seg31.relationLc580Part2, Seg31.relationLc580Part3, Seg31.relationLc580Part4, Seg31.relationLc580Part5, Seg31.relationLc580Part6, Seg31.relationLc580Part7] at r864
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r864 ⊢
  exact r864

theorem seg31_prefix_123_selX (rho : Nat -> Seg31.F)
    (r865 : Seg31.relationRow865 rho) :
    (1*rho 29394)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX122 rho + rho 30133) = rho 30135 := by
  rw [seg31AccX122_sum]
  unfold Seg31.relationRow865 at r865
  simp only [Seg31.relationLc581, Seg31.relationLc581Part0, Seg31.relationLc581Part1, Seg31.relationLc581Part2, Seg31.relationLc581Part3] at r865
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r865 ⊢
  exact r865

theorem seg31_prefix_123_selY (rho : Nat -> Seg31.F)
    (r866 : Seg31.relationRow866 rho) :
    (1*rho 29394)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY122 rho + rho 30134) = rho 30136 := by
  rw [seg31AccY122_sum]
  unfold Seg31.relationRow866 at r866
  simp only [Seg31.relationLc582, Seg31.relationLc582Part0, Seg31.relationLc582Part1, Seg31.relationLc582Part2, Seg31.relationLc582Part3] at r866
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r866 ⊢
  exact r866

theorem seg31_prefix_124_v2 (rho : Nat -> Seg31.F)
    (r867 : Seg31.relationRow867 rho) :
    (6076628209815230809031554704004686574711116934705931390450359393626223046622*rho 29271 + 2462219390816186265215831286673879522624662491951844612399314437338650625929*seg31AccX123 rho)*(4258793080796698069402972208671845358882371272781352762940455540151758633068 + 6455242912317044762230268225216983487772561477201860534153268897702230187998*rho 29271 + 4258793080796698069402972208671845358882371272781352762940455540151758633068*seg31AccY123 rho) = rho 30137 := by
  rw [seg31AccX123_sum, seg31AccY123_sum]
  unfold Seg31.relationRow867 at r867
  simp only [Seg31.relationLc583, Seg31.relationLc583Part0, Seg31.relationLc583Part1, Seg31.relationLc583Part2, Seg31.relationLc583Part3] at r867
  simp only [Seg31.relationLc584, Seg31.relationLc584Part0, Seg31.relationLc584Part1, Seg31.relationLc584Part2, Seg31.relationLc584Part3] at r867
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r867 ⊢
  exact r867

theorem seg31_prefix_124_addX (rho : Nat -> Seg31.F)
    (r868 : Seg31.relationRow868 rho) :
    rho 30138*(1 + rho 30137) = 4258793080796698069402972208671845358882371272781352762940455540151758633068 + 2692047497464280865952831734705649991847826195004635097265381077203347691493*rho 29271 + 2678668181179475356734720331889902501350789879367608405089160200333074048867*seg31AccX123 rho + 4258793080796698069402972208671845358882371272781352762940455540151758633068*seg31AccY123 rho := by
  rw [add_assoc, seg31AccWeighted123]
  unfold Seg31.relationRow868 at r868
  simp only [Seg31.relationLc585, Seg31.relationLc585Part0, Seg31.relationLc585Part1, Seg31.relationLc585Part2, Seg31.relationLc585Part3, Seg31.relationLc585Part4, Seg31.relationLc585Part5, Seg31.relationLc585Part6, Seg31.relationLc585Part7] at r868
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r868 ⊢
  exact r868

theorem seg31_prefix_124_addY (rho : Nat -> Seg31.F)
    (r869 : Seg31.relationRow869 rho) :
    rho 30139*(1 + (-1)*rho 30137) = 2678668181179475356734720331889902501350789879367608405089160200333074048867 + 4260741226520128065720441172132567930766211831973469596976018488234910145224*rho 29271 + 4258793080796698069402972208671845358882371272781352762940455540151758633068*seg31AccX123 rho + 2678668181179475356734720331889902501350789879367608405089160200333074048867*seg31AccY123 rho := by
  rw [add_assoc, seg31AccWeighted123]
  unfold Seg31.relationRow869 at r869
  simp only [Seg31.relationLc586, Seg31.relationLc586Part0, Seg31.relationLc586Part1, Seg31.relationLc586Part2, Seg31.relationLc586Part3, Seg31.relationLc586Part4, Seg31.relationLc586Part5, Seg31.relationLc586Part6, Seg31.relationLc586Part7] at r869
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r869 ⊢
  exact r869

theorem seg31_prefix_124_selX (rho : Nat -> Seg31.F)
    (r870 : Seg31.relationRow870 rho) :
    (1*rho 29395)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX123 rho + rho 30138) = rho 30140 := by
  rw [seg31AccX123_sum]
  unfold Seg31.relationRow870 at r870
  simp only [Seg31.relationLc587, Seg31.relationLc587Part0, Seg31.relationLc587Part1, Seg31.relationLc587Part2, Seg31.relationLc587Part3] at r870
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r870 ⊢
  exact r870

theorem seg31_prefix_124_selY (rho : Nat -> Seg31.F)
    (r871 : Seg31.relationRow871 rho) :
    (1*rho 29395)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY123 rho + rho 30139) = rho 30141 := by
  rw [seg31AccY123_sum]
  unfold Seg31.relationRow871 at r871
  simp only [Seg31.relationLc588, Seg31.relationLc588Part0, Seg31.relationLc588Part1, Seg31.relationLc588Part2, Seg31.relationLc588Part3] at r871
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r871 ⊢
  exact r871

theorem seg31_prefix_125_v2 (rho : Nat -> Seg31.F)
    (r872 : Seg31.relationRow872 rho) :
    (632767730836458282723837747081184692850391276120378771202560323022367560874*rho 29271 + 675150215867084420868198222910915221167546600958782523865631274068456193699*seg31AccX124 rho)*(5218883308149451934436220477427164614349895341904656828577451196512437458438 + 6937508972884827012117303727642640631932551818643813059565600955408050267583*rho 29271 + 5218883308149451934436220477427164614349895341904656828577451196512437458438*seg31AccY124 rho) = rho 30142 := by
  rw [seg31AccX124_sum, seg31AccY124_sum]
  unfold Seg31.relationRow872 at r872
  simp only [Seg31.relationLc589, Seg31.relationLc589Part0, Seg31.relationLc589Part1, Seg31.relationLc589Part2, Seg31.relationLc589Part3] at r872
  simp only [Seg31.relationLc590, Seg31.relationLc590Part0, Seg31.relationLc590Part1, Seg31.relationLc590Part2, Seg31.relationLc590Part3] at r872
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r872 ⊢
  exact r872

theorem seg31_prefix_125_addX (rho : Nat -> Seg31.F)
    (r873 : Seg31.relationRow873 rho) :
    rho 30143*(1 + rho 30142) = 5218883308149451934436220477427164614349895341904656828577451196512437458438 + 606468557550691774566537541415192201322303025910336001802575064203181165012*rho 29271 + 5400653839825050891780734187338251841721087408844293312841687079810163226091*seg31AccX124 rho + 5218883308149451934436220477427164614349895341904656828577451196512437458438*seg31AccY124 rho := by
  rw [add_assoc, seg31AccWeighted124]
  unfold Seg31.relationRow873 at r873
  simp only [Seg31.relationLc591, Seg31.relationLc591Part0, Seg31.relationLc591Part1, Seg31.relationLc591Part2, Seg31.relationLc591Part3, Seg31.relationLc591Part4, Seg31.relationLc591Part5, Seg31.relationLc591Part6, Seg31.relationLc591Part7] at r873
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r873 ⊢
  exact r873

theorem seg31_prefix_125_addY (rho : Nat -> Seg31.F)
    (r874 : Seg31.relationRow874 rho) :
    rho 30144*(1 + (-1)*rho 30142) = 5400653839825050891780734187338251841721087408844293312841687079810163226091 + 4709527915986490099127502690641102829893842187429096977916810943086408037942*rho 29271 + 5218883308149451934436220477427164614349895341904656828577451196512437458438*seg31AccX124 rho + 5400653839825050891780734187338251841721087408844293312841687079810163226091*seg31AccY124 rho := by
  rw [add_assoc, seg31AccWeighted124]
  unfold Seg31.relationRow874 at r874
  simp only [Seg31.relationLc592, Seg31.relationLc592Part0, Seg31.relationLc592Part1, Seg31.relationLc592Part2, Seg31.relationLc592Part3, Seg31.relationLc592Part4, Seg31.relationLc592Part5, Seg31.relationLc592Part6, Seg31.relationLc592Part7] at r874
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r874 ⊢
  exact r874

theorem seg31_prefix_125_selX (rho : Nat -> Seg31.F)
    (r875 : Seg31.relationRow875 rho) :
    (1*rho 29396)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX124 rho + rho 30143) = rho 30145 := by
  rw [seg31AccX124_sum]
  unfold Seg31.relationRow875 at r875
  simp only [Seg31.relationLc593, Seg31.relationLc593Part0, Seg31.relationLc593Part1, Seg31.relationLc593Part2, Seg31.relationLc593Part3] at r875
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r875 ⊢
  exact r875

theorem seg31_prefix_125_selY (rho : Nat -> Seg31.F)
    (r876 : Seg31.relationRow876 rho) :
    (1*rho 29396)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY124 rho + rho 30144) = rho 30146 := by
  rw [seg31AccY124_sum]
  unfold Seg31.relationRow876 at r876
  simp only [Seg31.relationLc594, Seg31.relationLc594Part0, Seg31.relationLc594Part1, Seg31.relationLc594Part2, Seg31.relationLc594Part3] at r876
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r876 ⊢
  exact r876

theorem seg31_prefix_126_v2 (rho : Nat -> Seg31.F)
    (r877 : Seg31.relationRow877 rho) :
    (6625488961952055722052971184060402004083105963192283512447859675251721723441*rho 29271 + 7162205350687989139896174159214506576215373902099509992231534261371144592675*seg31AccX125 rho)*(4659131040069477752464202981172024515454414328233636904227116932229460753269 + 1896739124773425039683958892973582931283960987480377914539375397426739081550*rho 29271 + 4659131040069477752464202981172024515454414328233636904227116932229460753269*seg31AccY125 rho) = rho 30147 := by
  rw [seg31AccX125_sum, seg31AccY125_sum]
  unfold Seg31.relationRow877 at r877
  simp only [Seg31.relationLc595, Seg31.relationLc595Part0, Seg31.relationLc595Part1, Seg31.relationLc595Part2, Seg31.relationLc595Part3] at r877
  simp only [Seg31.relationLc596, Seg31.relationLc596Part0, Seg31.relationLc596Part1, Seg31.relationLc596Part2, Seg31.relationLc596Part3] at r877
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r877 ⊢
  exact r877

theorem seg31_prefix_126_addX (rho : Nat -> Seg31.F)
    (r878 : Seg31.relationRow878 rho) :
    rho 30148*(1 + rho 30147) = 4659131040069477752464202981172024515454414328233636904227116932229460753269 + 5401385288625030533661393722327220205636190372753874855921465890620967978684*rho 29271 + 4144936947369590518992603354330839611411882882687991427670389776872218350497*seg31AccX125 rho + 4659131040069477752464202981172024515454414328233636904227116932229460753269*seg31AccY125 rho := by
  rw [add_assoc, seg31AccWeighted125]
  unfold Seg31.relationRow878 at r878
  simp only [Seg31.relationLc597, Seg31.relationLc597Part0, Seg31.relationLc597Part1, Seg31.relationLc597Part2, Seg31.relationLc597Part3, Seg31.relationLc597Part4, Seg31.relationLc597Part5, Seg31.relationLc597Part6, Seg31.relationLc597Part7] at r878
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r878 ⊢
  exact r878

theorem seg31_prefix_126_addY (rho : Nat -> Seg31.F)
    (r879 : Seg31.relationRow879 rho) :
    rho 30149*(1 + (-1)*rho 30147) = 4144936947369590518992603354330839611411882882687991427670389776872218350497 + 5295799265031769676934984260143085052791333859535372983832220458023281012382*rho 29271 + 4659131040069477752464202981172024515454414328233636904227116932229460753269*seg31AccX125 rho + 4144936947369590518992603354330839611411882882687991427670389776872218350497*seg31AccY125 rho := by
  rw [add_assoc, seg31AccWeighted125]
  unfold Seg31.relationRow879 at r879
  simp only [Seg31.relationLc598, Seg31.relationLc598Part0, Seg31.relationLc598Part1, Seg31.relationLc598Part2, Seg31.relationLc598Part3, Seg31.relationLc598Part4, Seg31.relationLc598Part5, Seg31.relationLc598Part6, Seg31.relationLc598Part7] at r879
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r879 ⊢
  exact r879

theorem seg31_prefix_126_selX (rho : Nat -> Seg31.F)
    (r880 : Seg31.relationRow880 rho) :
    (1*rho 29397)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX125 rho + rho 30148) = rho 30150 := by
  rw [seg31AccX125_sum]
  unfold Seg31.relationRow880 at r880
  simp only [Seg31.relationLc599, Seg31.relationLc599Part0, Seg31.relationLc599Part1, Seg31.relationLc599Part2, Seg31.relationLc599Part3] at r880
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r880 ⊢
  exact r880

theorem seg31_prefix_126_selY (rho : Nat -> Seg31.F)
    (r881 : Seg31.relationRow881 rho) :
    (1*rho 29397)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY125 rho + rho 30149) = rho 30151 := by
  rw [seg31AccY125_sum]
  unfold Seg31.relationRow881 at r881
  simp only [Seg31.relationLc600, Seg31.relationLc600Part0, Seg31.relationLc600Part1, Seg31.relationLc600Part2, Seg31.relationLc600Part3] at r881
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r881 ⊢
  exact r881

theorem seg31_prefix_127_v2 (rho : Nat -> Seg31.F)
    (r882 : Seg31.relationRow882 rho) :
    (334919001789655310560687819351358127988687736081256952747606665059184566897*rho 29271 + 6597939320542329487400565091411727244209447665886985587245580121252031929444*seg31AccX126 rho)*(2689361199948485506916696468368523586682774808580948914130535602137252909086 + 2576346892624037738027985730475149611626561668089352371540795449013921429872*rho 29271 + 2689361199948485506916696468368523586682774808580948914130535602137252909086*seg31AccY126 rho) = rho 30152 := by
  rw [seg31AccX126_sum, seg31AccY126_sum]
  unfold Seg31.relationRow882 at r882
  simp only [Seg31.relationLc601, Seg31.relationLc601Part0, Seg31.relationLc601Part1, Seg31.relationLc601Part2, Seg31.relationLc601Part3] at r882
  simp only [Seg31.relationLc602, Seg31.relationLc602Part0, Seg31.relationLc602Part1, Seg31.relationLc602Part2, Seg31.relationLc602Part3] at r882
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r882 ⊢
  exact r882

theorem seg31_prefix_127_addX (rho : Nat -> Seg31.F)
    (r883 : Seg31.relationRow883 rho) :
    rho 30153*(1 + rho 30152) = 2689361199948485506916696468368523586682774808580948914130535602137252909086 + 860171919056599874678691515118473606285014662446017736188433404899975687335*rho 29271 + 3062986943046874526328985062249985163555385375590727201978260911734794819159*seg31AccX126 rho + 2689361199948485506916696468368523586682774808580948914130535602137252909086*seg31AccY126 rho := by
  rw [add_assoc, seg31AccWeighted126]
  unfold Seg31.relationRow883 at r883
  simp only [Seg31.relationLc603, Seg31.relationLc603Part0, Seg31.relationLc603Part1, Seg31.relationLc603Part2, Seg31.relationLc603Part3, Seg31.relationLc603Part4, Seg31.relationLc603Part5, Seg31.relationLc603Part6, Seg31.relationLc603Part7] at r883
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r883 ⊢
  exact r883

theorem seg31_prefix_127_addY (rho : Nat -> Seg31.F)
    (r884 : Seg31.relationRow884 rho) :
    rho 30154*(1 + (-1)*rho 30152) = 3062986943046874526328985062249985163555385375590727201978260911734794819159 + 369835453671308253501701535082988302428925497488405681490395052401809343463*rho 29271 + 2689361199948485506916696468368523586682774808580948914130535602137252909086*seg31AccX126 rho + 3062986943046874526328985062249985163555385375590727201978260911734794819159*seg31AccY126 rho := by
  rw [add_assoc, seg31AccWeighted126]
  unfold Seg31.relationRow884 at r884
  simp only [Seg31.relationLc604, Seg31.relationLc604Part0, Seg31.relationLc604Part1, Seg31.relationLc604Part2, Seg31.relationLc604Part3, Seg31.relationLc604Part4, Seg31.relationLc604Part5, Seg31.relationLc604Part6, Seg31.relationLc604Part7] at r884
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r884 ⊢
  exact r884

theorem seg31_prefix_127_selX (rho : Nat -> Seg31.F)
    (r885 : Seg31.relationRow885 rho) :
    (1*rho 29398)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX126 rho + rho 30153) = rho 30155 := by
  rw [seg31AccX126_sum]
  unfold Seg31.relationRow885 at r885
  simp only [Seg31.relationLc605, Seg31.relationLc605Part0, Seg31.relationLc605Part1, Seg31.relationLc605Part2, Seg31.relationLc605Part3] at r885
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r885 ⊢
  exact r885

theorem seg31_prefix_127_selY (rho : Nat -> Seg31.F)
    (r886 : Seg31.relationRow886 rho) :
    (1*rho 29398)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY126 rho + rho 30154) = rho 30156 := by
  rw [seg31AccY126_sum]
  unfold Seg31.relationRow886 at r886
  simp only [Seg31.relationLc606, Seg31.relationLc606Part0, Seg31.relationLc606Part1, Seg31.relationLc606Part2, Seg31.relationLc606Part3, Seg31.relationLc606Part4] at r886
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r886 ⊢
  exact r886

theorem seg31_prefix_128_v2 (rho : Nat -> Seg31.F)
    (r887 : Seg31.relationRow887 rho) :
    (3627157378103929501736907787229659891786383051031026833110981404511932764334*rho 29271 + 3662549041251064738439678582694000555264902823767717478987881813558759373397*seg31AccX127 rho)*(5010362288343936951376400532748131648628395373088991695083030624676428156364 + 5077128519854369438435180807649926164157042074234900107924177009357349807768*rho 29271 + 5010362288343936951376400532748131648628395373088991695083030624676428156364*seg31AccY127 rho) = rho 30157 := by
  rw [seg31AccX127_sum, seg31AccY127_sum]
  unfold Seg31.relationRow887 at r887
  simp only [Seg31.relationLc607, Seg31.relationLc607Part0, Seg31.relationLc607Part1, Seg31.relationLc607Part2, Seg31.relationLc607Part3] at r887
  simp only [Seg31.relationLc608, Seg31.relationLc608Part0, Seg31.relationLc608Part1, Seg31.relationLc608Part2, Seg31.relationLc608Part3, Seg31.relationLc608Part4] at r887
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r887 ⊢
  exact r887

theorem seg31_prefix_128_addX (rho : Nat -> Seg31.F)
    (r888 : Seg31.relationRow888 rho) :
    rho 30158*(1 + rho 30157) = 5010362288343936951376400532748131648628395373088991695083030624676428156364 + 1791110691337434751439192320321270400831563346962424757106989467896124606726*rho 29271 + 5549791169035606208828982847422728853140160570375565844399346670575841144942*seg31AccX127 rho + 5010362288343936951376400532748131648628395373088991695083030624676428156364*seg31AccY127 rho := by
  rw [add_assoc, seg31AccWeighted127]
  unfold Seg31.relationRow888 at r888
  simp only [Seg31.relationLc609, Seg31.relationLc609Part0, Seg31.relationLc609Part1, Seg31.relationLc609Part2, Seg31.relationLc609Part3, Seg31.relationLc609Part4, Seg31.relationLc609Part5, Seg31.relationLc609Part6, Seg31.relationLc609Part7] at r888
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r888 ⊢
  exact r888

theorem seg31_prefix_128_addY (rho : Nat -> Seg31.F)
    (r889 : Seg31.relationRow889 rho) :
    rho 30159*(1 + (-1)*rho 30157) = 5549791169035606208828982847422728853140160570375565844399346670575841144942 + 3935246727056329354590544589123741495402236291810130050885612457341162195522*rho 29271 + 5010362288343936951376400532748131648628395373088991695083030624676428156364*seg31AccX127 rho + 5549791169035606208828982847422728853140160570375565844399346670575841144942*seg31AccY127 rho := by
  rw [add_assoc, seg31AccWeighted127]
  unfold Seg31.relationRow889 at r889
  simp only [Seg31.relationLc610, Seg31.relationLc610Part0, Seg31.relationLc610Part1, Seg31.relationLc610Part2, Seg31.relationLc610Part3, Seg31.relationLc610Part4, Seg31.relationLc610Part5, Seg31.relationLc610Part6, Seg31.relationLc610Part7] at r889
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r889 ⊢
  exact r889

theorem seg31_prefix_128_selX (rho : Nat -> Seg31.F)
    (r890 : Seg31.relationRow890 rho) :
    (1*rho 29399)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX127 rho + rho 30158) = rho 30160 := by
  rw [seg31AccX127_sum]
  unfold Seg31.relationRow890 at r890
  simp only [Seg31.relationLc611, Seg31.relationLc611Part0, Seg31.relationLc611Part1, Seg31.relationLc611Part2, Seg31.relationLc611Part3, Seg31.relationLc611Part4] at r890
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r890 ⊢
  exact r890

theorem seg31_prefix_128_selY (rho : Nat -> Seg31.F)
    (r891 : Seg31.relationRow891 rho) :
    (1*rho 29399)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY127 rho + rho 30159) = rho 30161 := by
  rw [seg31AccY127_sum]
  unfold Seg31.relationRow891 at r891
  simp only [Seg31.relationLc612, Seg31.relationLc612Part0, Seg31.relationLc612Part1, Seg31.relationLc612Part2, Seg31.relationLc612Part3, Seg31.relationLc612Part4] at r891
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r891 ⊢
  exact r891

theorem seg31_prefix_129_v2 (rho : Nat -> Seg31.F)
    (r892 : Seg31.relationRow892 rho) :
    (4473001459817228232150010665768690072105958119767506549923947413300614717103*rho 29271 + 8248720859594048260171359378554269093421481617324763432726109518875895345970*seg31AccX128 rho)*(3433687381349699292050937701384647388599307985533979205457853324984751148615 + 628858195515421657429651630870506053729338922447461237621201443220761506096*rho 29271 + 3433687381349699292050937701384647388599307985533979205457853324984751148615*seg31AccY128 rho) = rho 30162 := by
  rw [seg31AccX128_sum, seg31AccY128_sum]
  unfold Seg31.relationRow892 at r892
  simp only [Seg31.relationLc613, Seg31.relationLc613Part0, Seg31.relationLc613Part1, Seg31.relationLc613Part2, Seg31.relationLc613Part3, Seg31.relationLc613Part4] at r892
  simp only [Seg31.relationLc614, Seg31.relationLc614Part0, Seg31.relationLc614Part1, Seg31.relationLc614Part2, Seg31.relationLc614Part3, Seg31.relationLc614Part4] at r892
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r892 ⊢
  exact r892

theorem seg31_prefix_129_addX (rho : Nat -> Seg31.F)
    (r893 : Seg31.relationRow893 rho) :
    rho 30163*(1 + rho 30162) = 3433687381349699292050937701384647388599307985533979205457853324984751148615 + 3260672663463754592699527260813969799540933504539398201751283743595333736700*rho 29271 + 192807719238902097685895880574544665086720501955577988656842762171883390798*seg31AccX128 rho + 3433687381349699292050937701384647388599307985533979205457853324984751148615*seg31AccY128 rho := by
  rw [add_assoc, seg31AccWeighted128]
  unfold Seg31.relationRow893 at r893
  simp only [Seg31.relationLc615, Seg31.relationLc615Part0, Seg31.relationLc615Part1, Seg31.relationLc615Part2, Seg31.relationLc615Part3, Seg31.relationLc615Part4, Seg31.relationLc615Part5, Seg31.relationLc615Part6, Seg31.relationLc615Part7, Seg31.relationLc615Part8] at r893
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r893 ⊢
  exact r893

theorem seg31_prefix_129_addY (rho : Nat -> Seg31.F)
    (r894 : Seg31.relationRow894 rho) :
    rho 30164*(1 + (-1)*rho 30162) = 192807719238902097685895880574544665086720501955577988656842762171883390798 + 183627881588738771781489470048673345598670070548584390770980837587120717671*rho 29271 + 3433687381349699292050937701384647388599307985533979205457853324984751148615*seg31AccX128 rho + 192807719238902097685895880574544665086720501955577988656842762171883390798*seg31AccY128 rho := by
  rw [add_assoc, seg31AccWeighted128]
  unfold Seg31.relationRow894 at r894
  simp only [Seg31.relationLc616, Seg31.relationLc616Part0, Seg31.relationLc616Part1, Seg31.relationLc616Part2, Seg31.relationLc616Part3, Seg31.relationLc616Part4, Seg31.relationLc616Part5, Seg31.relationLc616Part6, Seg31.relationLc616Part7, Seg31.relationLc616Part8] at r894
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r894 ⊢
  exact r894

theorem seg31_prefix_129_selX (rho : Nat -> Seg31.F)
    (r895 : Seg31.relationRow895 rho) :
    (1*rho 29400)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX128 rho + rho 30163) = rho 30165 := by
  rw [seg31AccX128_sum]
  unfold Seg31.relationRow895 at r895
  simp only [Seg31.relationLc617, Seg31.relationLc617Part0, Seg31.relationLc617Part1, Seg31.relationLc617Part2, Seg31.relationLc617Part3, Seg31.relationLc617Part4] at r895
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r895 ⊢
  exact r895

theorem seg31_prefix_129_selY (rho : Nat -> Seg31.F)
    (r896 : Seg31.relationRow896 rho) :
    (1*rho 29400)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY128 rho + rho 30164) = rho 30166 := by
  rw [seg31AccY128_sum]
  unfold Seg31.relationRow896 at r896
  simp only [Seg31.relationLc618, Seg31.relationLc618Part0, Seg31.relationLc618Part1, Seg31.relationLc618Part2, Seg31.relationLc618Part3, Seg31.relationLc618Part4] at r896
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r896 ⊢
  exact r896

theorem seg31_prefix_130_v2 (rho : Nat -> Seg31.F)
    (r897 : Seg31.relationRow897 rho) :
    (6410948368104357234255387490833527163067313919974901621602509328920866406335*rho 29271 + 618054908213477814381438129861473047761143154008145337991771976121154319619*seg31AccX129 rho)*(4807302064691190913542531684782250042361600866824626184345926611517624438244 + 6525623607059190063533361869152232303808632387596362439826165650534616212741*rho 29271 + 4807302064691190913542531684782250042361600866824626184345926611517624438244*seg31AccY129 rho) = rho 30167 := by
  rw [seg31AccX129_sum, seg31AccY129_sum]
  unfold Seg31.relationRow897 at r897
  simp only [Seg31.relationLc619, Seg31.relationLc619Part0, Seg31.relationLc619Part1, Seg31.relationLc619Part2, Seg31.relationLc619Part3, Seg31.relationLc619Part4] at r897
  simp only [Seg31.relationLc620, Seg31.relationLc620Part0, Seg31.relationLc620Part1, Seg31.relationLc620Part2, Seg31.relationLc620Part3, Seg31.relationLc620Part4] at r897
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r897 ⊢
  exact r897

theorem seg31_prefix_130_addX (rho : Nat -> Seg31.F)
    (r898 : Seg31.relationRow898 rho) :
    rho 30168*(1 + rho 30167) = 4807302064691190913542531684782250042361600866824626184345926611517624438244 + 464840228660636242625898808997865902156444918536716779061545042604811587427*rho 29271 + 8030968772266111124356589039142417960175676906008485111882130913878463388972*seg31AccX129 rho + 4807302064691190913542531684782250042361600866824626184345926611517624438244*seg31AccY129 rho := by
  rw [add_assoc, seg31AccWeighted129]
  unfold Seg31.relationRow898 at r898
  simp only [Seg31.relationLc621, Seg31.relationLc621Part0, Seg31.relationLc621Part1, Seg31.relationLc621Part2, Seg31.relationLc621Part3, Seg31.relationLc621Part4, Seg31.relationLc621Part5, Seg31.relationLc621Part6, Seg31.relationLc621Part7, Seg31.relationLc621Part8] at r898
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r898 ⊢
  exact r898

theorem seg31_prefix_130_addY (rho : Nat -> Seg31.F)
    (r899 : Seg31.relationRow899 rho) :
    rho 30169*(1 + (-1)*rho 30167) = 8030968772266111124356589039142417960175676906008485111882130913878463388972 + 3017483325411212357099490681509349029967373800989764072253376653537103478324*rho 29271 + 4807302064691190913542531684782250042361600866824626184345926611517624438244*seg31AccX129 rho + 8030968772266111124356589039142417960175676906008485111882130913878463388972*seg31AccY129 rho := by
  rw [add_assoc, seg31AccWeighted129]
  unfold Seg31.relationRow899 at r899
  simp only [Seg31.relationLc622, Seg31.relationLc622Part0, Seg31.relationLc622Part1, Seg31.relationLc622Part2, Seg31.relationLc622Part3, Seg31.relationLc622Part4, Seg31.relationLc622Part5, Seg31.relationLc622Part6, Seg31.relationLc622Part7, Seg31.relationLc622Part8] at r899
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r899 ⊢
  exact r899

theorem seg31_prefix_130_selX (rho : Nat -> Seg31.F)
    (r900 : Seg31.relationRow900 rho) :
    (1*rho 29401)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX129 rho + rho 30168) = rho 30170 := by
  rw [seg31AccX129_sum]
  unfold Seg31.relationRow900 at r900
  simp only [Seg31.relationLc623, Seg31.relationLc623Part0, Seg31.relationLc623Part1, Seg31.relationLc623Part2, Seg31.relationLc623Part3, Seg31.relationLc623Part4] at r900
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r900 ⊢
  exact r900

theorem seg31_prefix_130_selY (rho : Nat -> Seg31.F)
    (r901 : Seg31.relationRow901 rho) :
    (1*rho 29401)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY129 rho + rho 30169) = rho 30171 := by
  rw [seg31AccY129_sum]
  unfold Seg31.relationRow901 at r901
  simp only [Seg31.relationLc624, Seg31.relationLc624Part0, Seg31.relationLc624Part1, Seg31.relationLc624Part2, Seg31.relationLc624Part3, Seg31.relationLc624Part4] at r901
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r901 ⊢
  exact r901


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

