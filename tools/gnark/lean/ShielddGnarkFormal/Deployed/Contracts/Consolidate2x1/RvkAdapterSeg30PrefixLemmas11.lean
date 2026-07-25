import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_prefix_111_v2 (rho : Nat -> Seg30.F)
    (r802 : Seg30.relationRow802 rho) :
    (1584370194938709372334615152442198386778091293051099268892628669364464823643*rho 28317 + 4844898403553568028259035569409623674492133411001005402900268525269019383147*seg30AccX110 rho)*(5013280838734082258864536620020876856738515857218859590790551016956583521435 + 5822744375078125061629763314676319349385425802373362430870652483474328191553*rho 28317 + 5013280838734082258864536620020876856738515857218859590790551016956583521435*seg30AccY110 rho) = rho 29118 := by
  rw [seg30AccX110_sum, seg30AccY110_sum]
  unfold Seg30.relationRow802 at r802
  simp only [Seg30.relationLc505, Seg30.relationLc505Part0, Seg30.relationLc505Part1, Seg30.relationLc505Part2, Seg30.relationLc505Part3] at r802
  simp only [Seg30.relationLc506, Seg30.relationLc506Part0, Seg30.relationLc506Part1, Seg30.relationLc506Part2, Seg30.relationLc506Part3] at r802
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r802 ⊢
  exact r802

theorem seg30_prefix_111_addX (rho : Nat -> Seg30.F)
    (r803 : Seg30.relationRow803 rho) :
    rho 29119*(1 + rho 29118) = 5013280838734082258864536620020876856738515857218859590790551016956583521435 + 5848426111569284956760704737914146597703585744547952855802896683994891299125*rho 28317 + 6232224474637335731108536850087215108279169729053098072780713552388339693216*seg30AccX110 rho + 5013280838734082258864536620020876856738515857218859590790551016956583521435*seg30AccY110 rho := by
  rw [add_assoc, seg30AccWeighted110]
  unfold Seg30.relationRow803 at r803
  simp only [Seg30.relationLc507, Seg30.relationLc507Part0, Seg30.relationLc507Part1, Seg30.relationLc507Part2, Seg30.relationLc507Part3, Seg30.relationLc507Part4, Seg30.relationLc507Part5, Seg30.relationLc507Part6] at r803
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r803 ⊢
  exact r803

theorem seg30_prefix_111_addY (rho : Nat -> Seg30.F)
    (r804 : Seg30.relationRow804 rho) :
    rho 29120*(1 + (-1)*rho 29118) = 6232224474637335731108536850087215108279169729053098072780713552388339693216 + 2975589111667990585410595177746922024926505695906607372137355479945806617660*rho 28317 + 5013280838734082258864536620020876856738515857218859590790551016956583521435*seg30AccX110 rho + 6232224474637335731108536850087215108279169729053098072780713552388339693216*seg30AccY110 rho := by
  rw [add_assoc, seg30AccWeighted110]
  unfold Seg30.relationRow804 at r804
  simp only [Seg30.relationLc508, Seg30.relationLc508Part0, Seg30.relationLc508Part1, Seg30.relationLc508Part2, Seg30.relationLc508Part3, Seg30.relationLc508Part4, Seg30.relationLc508Part5, Seg30.relationLc508Part6] at r804
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r804 ⊢
  exact r804

theorem seg30_prefix_111_selX (rho : Nat -> Seg30.F)
    (r805 : Seg30.relationRow805 rho) :
    (1*rho 28428)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX110 rho + rho 29119) = rho 29121 := by
  rw [seg30AccX110_sum]
  unfold Seg30.relationRow805 at r805
  simp only [Seg30.relationLc509, Seg30.relationLc509Part0, Seg30.relationLc509Part1, Seg30.relationLc509Part2, Seg30.relationLc509Part3] at r805
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r805 ⊢
  exact r805

theorem seg30_prefix_111_selY (rho : Nat -> Seg30.F)
    (r806 : Seg30.relationRow806 rho) :
    (1*rho 28428)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY110 rho + rho 29120) = rho 29122 := by
  rw [seg30AccY110_sum]
  unfold Seg30.relationRow806 at r806
  simp only [Seg30.relationLc510, Seg30.relationLc510Part0, Seg30.relationLc510Part1, Seg30.relationLc510Part2, Seg30.relationLc510Part3] at r806
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r806 ⊢
  exact r806

theorem seg30_prefix_112_v2 (rho : Nat -> Seg30.F)
    (r807 : Seg30.relationRow807 rho) :
    (1290682852539617687465308244549146097528654648960453990058143318687428377628*rho 28317 + 5473513454910718385916379960564670405200796488660792199065102502565012311891*seg30AccX111 rho)*(4211737791003456215988561120811297185727381853372271991257172356128917154219 + 4560315553206082171239657153972697214142086945910781475321943315739135166866*rho 28317 + 4211737791003456215988561120811297185727381853372271991257172356128917154219*seg30AccY111 rho) = rho 29123 := by
  rw [seg30AccX111_sum, seg30AccY111_sum]
  unfold Seg30.relationRow807 at r807
  simp only [Seg30.relationLc511, Seg30.relationLc511Part0, Seg30.relationLc511Part1, Seg30.relationLc511Part2, Seg30.relationLc511Part3] at r807
  simp only [Seg30.relationLc512, Seg30.relationLc512Part0, Seg30.relationLc512Part1, Seg30.relationLc512Part2, Seg30.relationLc512Part3] at r807
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r807 ⊢
  exact r807

theorem seg30_prefix_112_addX (rho : Nat -> Seg30.F)
    (r808 : Seg30.relationRow808 rho) :
    rho 29124*(1 + rho 29123) = 4211737791003456215988561120811297185727381853372271991257172356128917154219 + 8096738855383979623858733239971772192059346566440027154344825958921594655699*rho 28317 + 2436477887191996477294486230267888678991595206027093805471914413309046163362*seg30AccX111 rho + 4211737791003456215988561120811297185727381853372271991257172356128917154219*seg30AccY111 rho := by
  rw [add_assoc, seg30AccWeighted111]
  unfold Seg30.relationRow808 at r808
  simp only [Seg30.relationLc513, Seg30.relationLc513Part0, Seg30.relationLc513Part1, Seg30.relationLc513Part2, Seg30.relationLc513Part3, Seg30.relationLc513Part4, Seg30.relationLc513Part5, Seg30.relationLc513Part6] at r808
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r808 ⊢
  exact r808

theorem seg30_prefix_112_addY (rho : Nat -> Seg30.F)
    (r809 : Seg30.relationRow809 rho) :
    rho 29125*(1 + (-1)*rho 29123) = 2436477887191996477294486230267888678991595206027093805471914413309046163362 + 1278272657742027434275494546315655160302569862150581501574320349530171965278*rho 28317 + 4211737791003456215988561120811297185727381853372271991257172356128917154219*seg30AccX111 rho + 2436477887191996477294486230267888678991595206027093805471914413309046163362*seg30AccY111 rho := by
  rw [add_assoc, seg30AccWeighted111]
  unfold Seg30.relationRow809 at r809
  simp only [Seg30.relationLc514, Seg30.relationLc514Part0, Seg30.relationLc514Part1, Seg30.relationLc514Part2, Seg30.relationLc514Part3, Seg30.relationLc514Part4, Seg30.relationLc514Part5, Seg30.relationLc514Part6] at r809
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r809 ⊢
  exact r809

theorem seg30_prefix_112_selX (rho : Nat -> Seg30.F)
    (r810 : Seg30.relationRow810 rho) :
    (1*rho 28429)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX111 rho + rho 29124) = rho 29126 := by
  rw [seg30AccX111_sum]
  unfold Seg30.relationRow810 at r810
  simp only [Seg30.relationLc515, Seg30.relationLc515Part0, Seg30.relationLc515Part1, Seg30.relationLc515Part2, Seg30.relationLc515Part3] at r810
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r810 ⊢
  exact r810

theorem seg30_prefix_112_selY (rho : Nat -> Seg30.F)
    (r811 : Seg30.relationRow811 rho) :
    (1*rho 28429)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY111 rho + rho 29125) = rho 29127 := by
  rw [seg30AccY111_sum]
  unfold Seg30.relationRow811 at r811
  simp only [Seg30.relationLc516, Seg30.relationLc516Part0, Seg30.relationLc516Part1, Seg30.relationLc516Part2, Seg30.relationLc516Part3] at r811
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r811 ⊢
  exact r811

theorem seg30_prefix_113_v2 (rho : Nat -> Seg30.F)
    (r812 : Seg30.relationRow812 rho) :
    (2505911588988824428755289285606906412415086920291455482382843872981685118529*rho 28317 + 6494117757873971508758146756812052405656400213213392704742067070974595246434*seg30AccX112 rho)*(3211543191507721442380920952251537121684563966279963155303907443022683903872 + 8174319716053133462684811146498463582214521739980076836226226865024436960466*rho 28317 + 3211543191507721442380920952251537121684563966279963155303907443022683903872*seg30AccY112 rho) = rho 29128 := by
  rw [seg30AccX112_sum, seg30AccY112_sum]
  unfold Seg30.relationRow812 at r812
  simp only [Seg30.relationLc517, Seg30.relationLc517Part0, Seg30.relationLc517Part1, Seg30.relationLc517Part2, Seg30.relationLc517Part3] at r812
  simp only [Seg30.relationLc518, Seg30.relationLc518Part0, Seg30.relationLc518Part1, Seg30.relationLc518Part2, Seg30.relationLc518Part3] at r812
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r812 ⊢
  exact r812

theorem seg30_prefix_113_addX (rho : Nat -> Seg30.F)
    (r813 : Seg30.relationRow813 rho) :
    rho 29129*(1 + rho 29128) = 3211543191507721442380920952251537121684563966279963155303907443022683903872 + 630759189698223515442565790495223866302195616623397982828407515918807747936*rho 28317 + 5424942042915892947550969390265810103699073522148989479940117501340863462094*seg30AccX112 rho + 3211543191507721442380920952251537121684563966279963155303907443022683903872*seg30AccY112 rho := by
  rw [add_assoc, seg30AccWeighted112]
  unfold Seg30.relationRow813 at r813
  simp only [Seg30.relationLc519, Seg30.relationLc519Part0, Seg30.relationLc519Part1, Seg30.relationLc519Part2, Seg30.relationLc519Part3, Seg30.relationLc519Part4, Seg30.relationLc519Part5, Seg30.relationLc519Part6, Seg30.relationLc519Part7] at r813
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r813 ⊢
  exact r813

theorem seg30_prefix_113_addY (rho : Nat -> Seg30.F)
    (r814 : Seg30.relationRow814 rho) :
    rho 29130*(1 + (-1)*rho 29128) = 5424942042915892947550969390265810103699073522148989479940117501340863462094 + 701540351068285311102719158292584549968653608918762726070947020463010759916*rho 28317 + 3211543191507721442380920952251537121684563966279963155303907443022683903872*seg30AccX112 rho + 5424942042915892947550969390265810103699073522148989479940117501340863462094*seg30AccY112 rho := by
  rw [add_assoc, seg30AccWeighted112]
  unfold Seg30.relationRow814 at r814
  simp only [Seg30.relationLc520, Seg30.relationLc520Part0, Seg30.relationLc520Part1, Seg30.relationLc520Part2, Seg30.relationLc520Part3, Seg30.relationLc520Part4, Seg30.relationLc520Part5, Seg30.relationLc520Part6, Seg30.relationLc520Part7] at r814
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r814 ⊢
  exact r814

theorem seg30_prefix_113_selX (rho : Nat -> Seg30.F)
    (r815 : Seg30.relationRow815 rho) :
    (1*rho 28430)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX112 rho + rho 29129) = rho 29131 := by
  rw [seg30AccX112_sum]
  unfold Seg30.relationRow815 at r815
  simp only [Seg30.relationLc521, Seg30.relationLc521Part0, Seg30.relationLc521Part1, Seg30.relationLc521Part2, Seg30.relationLc521Part3] at r815
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r815 ⊢
  exact r815

theorem seg30_prefix_113_selY (rho : Nat -> Seg30.F)
    (r816 : Seg30.relationRow816 rho) :
    (1*rho 28430)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY112 rho + rho 29130) = rho 29132 := by
  rw [seg30AccY112_sum]
  unfold Seg30.relationRow816 at r816
  simp only [Seg30.relationLc522, Seg30.relationLc522Part0, Seg30.relationLc522Part1, Seg30.relationLc522Part2, Seg30.relationLc522Part3] at r816
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r816 ⊢
  exact r816

theorem seg30_prefix_114_v2 (rho : Nat -> Seg30.F)
    (r817 : Seg30.relationRow817 rho) :
    (6205455160059383968858176403410616736538441215431948543782337451811884962308*rho 28317 + 7232751867622564713554023932001496092539510221064441963614171743180987607316*seg30AccX113 rho)*(1947902921501713494103716120380880084569071691708274654879772882964119421042 + 6679184061030008664832695535977507076813478068613182374938323825246753435358*rho 28317 + 1947902921501713494103716120380880084569071691708274654879772882964119421042*seg30AccY113 rho) = rho 29133 := by
  rw [seg30AccX113_sum, seg30AccY113_sum]
  unfold Seg30.relationRow817 at r817
  simp only [Seg30.relationLc523, Seg30.relationLc523Part0, Seg30.relationLc523Part1, Seg30.relationLc523Part2, Seg30.relationLc523Part3] at r817
  simp only [Seg30.relationLc524, Seg30.relationLc524Part0, Seg30.relationLc524Part1, Seg30.relationLc524Part2, Seg30.relationLc524Part3] at r817
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r817 ⊢
  exact r817

theorem seg30_prefix_114_addX (rho : Nat -> Seg30.F)
    (r818 : Seg30.relationRow818 rho) :
    rho 29134*(1 + rho 29133) = 1947902921501713494103716120380880084569071691708274654879772882964119421042 + 4400311061237393344667788891276305040114969158891141946255315496025702771970*rho 28317 + 6861946999326330217087113678815596386656403998242018230955536932328534677330*seg30AccX113 rho + 1947902921501713494103716120380880084569071691708274654879772882964119421042*seg30AccY113 rho := by
  rw [add_assoc, seg30AccWeighted113]
  unfold Seg30.relationRow818 at r818
  simp only [Seg30.relationLc525, Seg30.relationLc525Part0, Seg30.relationLc525Part1, Seg30.relationLc525Part2, Seg30.relationLc525Part3, Seg30.relationLc525Part4, Seg30.relationLc525Part5, Seg30.relationLc525Part6, Seg30.relationLc525Part7] at r818
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r818 ⊢
  exact r818

theorem seg30_prefix_114_addY (rho : Nat -> Seg30.F)
    (r819 : Seg30.relationRow819 rho) :
    rho 29135*(1 + (-1)*rho 29133) = 6861946999326330217087113678815596386656403998242018230955536932328534677330 + 2087357790150026556797310710018782693490980500605381290006250342379967365568*rho 28317 + 1947902921501713494103716120380880084569071691708274654879772882964119421042*seg30AccX113 rho + 6861946999326330217087113678815596386656403998242018230955536932328534677330*seg30AccY113 rho := by
  rw [add_assoc, seg30AccWeighted113]
  unfold Seg30.relationRow819 at r819
  simp only [Seg30.relationLc526, Seg30.relationLc526Part0, Seg30.relationLc526Part1, Seg30.relationLc526Part2, Seg30.relationLc526Part3, Seg30.relationLc526Part4, Seg30.relationLc526Part5, Seg30.relationLc526Part6, Seg30.relationLc526Part7] at r819
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r819 ⊢
  exact r819

theorem seg30_prefix_114_selX (rho : Nat -> Seg30.F)
    (r820 : Seg30.relationRow820 rho) :
    (1*rho 28431)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX113 rho + rho 29134) = rho 29136 := by
  rw [seg30AccX113_sum]
  unfold Seg30.relationRow820 at r820
  simp only [Seg30.relationLc527, Seg30.relationLc527Part0, Seg30.relationLc527Part1, Seg30.relationLc527Part2, Seg30.relationLc527Part3] at r820
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r820 ⊢
  exact r820

theorem seg30_prefix_114_selY (rho : Nat -> Seg30.F)
    (r821 : Seg30.relationRow821 rho) :
    (1*rho 28431)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY113 rho + rho 29135) = rho 29137 := by
  rw [seg30AccY113_sum]
  unfold Seg30.relationRow821 at r821
  simp only [Seg30.relationLc528, Seg30.relationLc528Part0, Seg30.relationLc528Part1, Seg30.relationLc528Part2, Seg30.relationLc528Part3] at r821
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r821 ⊢
  exact r821

theorem seg30_prefix_115_v2 (rho : Nat -> Seg30.F)
    (r822 : Seg30.relationRow822 rho) :
    (8069732616500346997440461803908541944572596023366705295276766397849410487234*rho 28317 + 947717101564819091542378284888608902327013081715595233096761950147907007800*seg30AccX114 rho)*(7656315330328664586430890033205107891880486608577188553281730603396254529588 + 6309456410749148524989712616328028351341432761943017574693998999570185170928*rho 28317 + 7656315330328664586430890033205107891880486608577188553281730603396254529588*seg30AccY114 rho) = rho 29138 := by
  rw [seg30AccX114_sum, seg30AccY114_sum]
  unfold Seg30.relationRow822 at r822
  simp only [Seg30.relationLc529, Seg30.relationLc529Part0, Seg30.relationLc529Part1, Seg30.relationLc529Part2, Seg30.relationLc529Part3] at r822
  simp only [Seg30.relationLc530, Seg30.relationLc530Part0, Seg30.relationLc530Part1, Seg30.relationLc530Part2, Seg30.relationLc530Part3] at r822
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r822 ⊢
  exact r822

theorem seg30_prefix_115_addX (rho : Nat -> Seg30.F)
    (r823 : Seg30.relationRow823 rho) :
    rho 29139*(1 + rho 29138) = 7656315330328664586430890033205107891880486608577188553281730603396254529588 + 3477740263346345723536264080703870906498470388615359840092525991327085681388*rho 28317 + 4816536018327258212536334904933960040537239843612104459041874878019147310783*seg30AccX114 rho + 7656315330328664586430890033205107891880486608577188553281730603396254529588*seg30AccY114 rho := by
  rw [add_assoc, seg30AccWeighted114]
  unfold Seg30.relationRow823 at r823
  simp only [Seg30.relationLc531, Seg30.relationLc531Part0, Seg30.relationLc531Part1, Seg30.relationLc531Part2, Seg30.relationLc531Part3, Seg30.relationLc531Part4, Seg30.relationLc531Part5, Seg30.relationLc531Part6, Seg30.relationLc531Part7] at r823
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r823 ⊢
  exact r823

theorem seg30_prefix_115_addY (rho : Nat -> Seg30.F)
    (r824 : Seg30.relationRow824 rho) :
    rho 29140*(1 + (-1)*rho 29138) = 4816536018327258212536334904933960040537239843612104459041874878019147310783 + 7299614783841155772686659764745278288658731154961458264984903098491417870829*rho 28317 + 7656315330328664586430890033205107891880486608577188553281730603396254529588*seg30AccX114 rho + 4816536018327258212536334904933960040537239843612104459041874878019147310783*seg30AccY114 rho := by
  rw [add_assoc, seg30AccWeighted114]
  unfold Seg30.relationRow824 at r824
  simp only [Seg30.relationLc532, Seg30.relationLc532Part0, Seg30.relationLc532Part1, Seg30.relationLc532Part2, Seg30.relationLc532Part3, Seg30.relationLc532Part4, Seg30.relationLc532Part5, Seg30.relationLc532Part6, Seg30.relationLc532Part7] at r824
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r824 ⊢
  exact r824

theorem seg30_prefix_115_selX (rho : Nat -> Seg30.F)
    (r825 : Seg30.relationRow825 rho) :
    (1*rho 28432)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX114 rho + rho 29139) = rho 29141 := by
  rw [seg30AccX114_sum]
  unfold Seg30.relationRow825 at r825
  simp only [Seg30.relationLc533, Seg30.relationLc533Part0, Seg30.relationLc533Part1, Seg30.relationLc533Part2, Seg30.relationLc533Part3] at r825
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r825 ⊢
  exact r825

theorem seg30_prefix_115_selY (rho : Nat -> Seg30.F)
    (r826 : Seg30.relationRow826 rho) :
    (1*rho 28432)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY114 rho + rho 29140) = rho 29142 := by
  rw [seg30AccY114_sum]
  unfold Seg30.relationRow826 at r826
  simp only [Seg30.relationLc534, Seg30.relationLc534Part0, Seg30.relationLc534Part1, Seg30.relationLc534Part2, Seg30.relationLc534Part3] at r826
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r826 ⊢
  exact r826

theorem seg30_prefix_116_v2 (rho : Nat -> Seg30.F)
    (r827 : Seg30.relationRow827 rho) :
    (4354532474989950694177441537286028288137849845366388990794655904030294839452*rho 28317 + 1854067315940902596236180059194743311052989737966486961600317653694884857500*seg30AccX115 rho)*(1761474383487328414379451883122601276536990799918597689697615342065633936486 + 3780104624363262583803818749820133136665135515081578486963505739174187955054*rho 28317 + 1761474383487328414379451883122601276536990799918597689697615342065633936486*seg30AccY115 rho) = rho 29143 := by
  rw [seg30AccX115_sum, seg30AccY115_sum]
  unfold Seg30.relationRow827 at r827
  simp only [Seg30.relationLc535, Seg30.relationLc535Part0, Seg30.relationLc535Part1, Seg30.relationLc535Part2, Seg30.relationLc535Part3] at r827
  simp only [Seg30.relationLc536, Seg30.relationLc536Part0, Seg30.relationLc536Part1, Seg30.relationLc536Part2, Seg30.relationLc536Part3] at r827
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r827 ⊢
  exact r827

theorem seg30_prefix_116_addX (rho : Nat -> Seg30.F)
    (r828 : Seg30.relationRow828 rho) :
    rho 29144*(1 + rho 29143) = 1761474383487328414379451883122601276536990799918597689697615342065633936486 + 2604744192706740240899291157072782901173207090634542908489510827212188949825*rho 28317 + 3044645121629737270639922720421151577616487045918815622503498692865856850769*seg30AccX115 rho + 1761474383487328414379451883122601276536990799918597689697615342065633936486*seg30AccY115 rho := by
  rw [add_assoc, seg30AccWeighted115]
  unfold Seg30.relationRow828 at r828
  simp only [Seg30.relationLc537, Seg30.relationLc537Part0, Seg30.relationLc537Part1, Seg30.relationLc537Part2, Seg30.relationLc537Part3, Seg30.relationLc537Part4, Seg30.relationLc537Part5, Seg30.relationLc537Part6, Seg30.relationLc537Part7] at r828
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r828 ⊢
  exact r828

theorem seg30_prefix_116_addY (rho : Nat -> Seg30.F)
    (r829 : Seg30.relationRow829 rho) :
    rho 29145*(1 + (-1)*rho 29143) = 3044645121629737270639922720421151577616487045918815622503498692865856850769 + 7841490394353810698294471924772146887196817649440922315850551546178009358557*rho 28317 + 1761474383487328414379451883122601276536990799918597689697615342065633936486*seg30AccX115 rho + 3044645121629737270639922720421151577616487045918815622503498692865856850769*seg30AccY115 rho := by
  rw [add_assoc, seg30AccWeighted115]
  unfold Seg30.relationRow829 at r829
  simp only [Seg30.relationLc538, Seg30.relationLc538Part0, Seg30.relationLc538Part1, Seg30.relationLc538Part2, Seg30.relationLc538Part3, Seg30.relationLc538Part4, Seg30.relationLc538Part5, Seg30.relationLc538Part6, Seg30.relationLc538Part7] at r829
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r829 ⊢
  exact r829

theorem seg30_prefix_116_selX (rho : Nat -> Seg30.F)
    (r830 : Seg30.relationRow830 rho) :
    (1*rho 28433)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX115 rho + rho 29144) = rho 29146 := by
  rw [seg30AccX115_sum]
  unfold Seg30.relationRow830 at r830
  simp only [Seg30.relationLc539, Seg30.relationLc539Part0, Seg30.relationLc539Part1, Seg30.relationLc539Part2, Seg30.relationLc539Part3] at r830
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r830 ⊢
  exact r830

theorem seg30_prefix_116_selY (rho : Nat -> Seg30.F)
    (r831 : Seg30.relationRow831 rho) :
    (1*rho 28433)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY115 rho + rho 29145) = rho 29147 := by
  rw [seg30AccY115_sum]
  unfold Seg30.relationRow831 at r831
  simp only [Seg30.relationLc540, Seg30.relationLc540Part0, Seg30.relationLc540Part1, Seg30.relationLc540Part2, Seg30.relationLc540Part3] at r831
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r831 ⊢
  exact r831

theorem seg30_prefix_117_v2 (rho : Nat -> Seg30.F)
    (r832 : Seg30.relationRow832 rho) :
    (7963949792456045923152496392139227737431459647154118764599999983306311745035*rho 28317 + 5058688986614166632160103004447210200422193522182557622358194344375224847289*seg30AccX116 rho)*(1000807978500512596306657126135250154376733979117759404414376430836879304434 + 7165195893732640723561096527477694394750848606553482293832288734522661702959*rho 28317 + 1000807978500512596306657126135250154376733979117759404414376430836879304434*seg30AccY116 rho) = rho 29148 := by
  rw [seg30AccX116_sum, seg30AccY116_sum]
  unfold Seg30.relationRow832 at r832
  simp only [Seg30.relationLc541, Seg30.relationLc541Part0, Seg30.relationLc541Part1, Seg30.relationLc541Part2, Seg30.relationLc541Part3] at r832
  simp only [Seg30.relationLc542, Seg30.relationLc542Part0, Seg30.relationLc542Part1, Seg30.relationLc542Part2, Seg30.relationLc542Part3] at r832
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r832 ⊢
  exact r832

theorem seg30_prefix_117_addX (rho : Nat -> Seg30.F)
    (r833 : Seg30.relationRow833 rho) :
    rho 29149*(1 + rho 29148) = 1000807978500512596306657126135250154376733979117759404414376430836879304434 + 1219531990061301360145556317833539548332284447149081861167086220716325870806*rho 28317 + 2827676106474245834342178787193840037544341748216796123027103349313762318940*seg30AccX116 rho + 1000807978500512596306657126135250154376733979117759404414376430836879304434*seg30AccY116 rho := by
  rw [add_assoc, seg30AccWeighted116]
  unfold Seg30.relationRow833 at r833
  simp only [Seg30.relationLc543, Seg30.relationLc543Part0, Seg30.relationLc543Part1, Seg30.relationLc543Part2, Seg30.relationLc543Part3, Seg30.relationLc543Part4, Seg30.relationLc543Part5, Seg30.relationLc543Part6, Seg30.relationLc543Part7] at r833
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r833 ⊢
  exact r833

theorem seg30_prefix_117_addY (rho : Nat -> Seg30.F)
    (r834 : Seg30.relationRow834 rho) :
    rho 29150*(1 + (-1)*rho 29148) = 2827676106474245834342178787193840037544341748216796123027103349313762318940 + 7015591765500128281549976814712607452749588499518551798977318918702616301457*rho 28317 + 1000807978500512596306657126135250154376733979117759404414376430836879304434*seg30AccX116 rho + 2827676106474245834342178787193840037544341748216796123027103349313762318940*seg30AccY116 rho := by
  rw [add_assoc, seg30AccWeighted116]
  unfold Seg30.relationRow834 at r834
  simp only [Seg30.relationLc544, Seg30.relationLc544Part0, Seg30.relationLc544Part1, Seg30.relationLc544Part2, Seg30.relationLc544Part3, Seg30.relationLc544Part4, Seg30.relationLc544Part5, Seg30.relationLc544Part6, Seg30.relationLc544Part7] at r834
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r834 ⊢
  exact r834

theorem seg30_prefix_117_selX (rho : Nat -> Seg30.F)
    (r835 : Seg30.relationRow835 rho) :
    (1*rho 28434)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX116 rho + rho 29149) = rho 29151 := by
  rw [seg30AccX116_sum]
  unfold Seg30.relationRow835 at r835
  simp only [Seg30.relationLc545, Seg30.relationLc545Part0, Seg30.relationLc545Part1, Seg30.relationLc545Part2, Seg30.relationLc545Part3] at r835
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r835 ⊢
  exact r835

theorem seg30_prefix_117_selY (rho : Nat -> Seg30.F)
    (r836 : Seg30.relationRow836 rho) :
    (1*rho 28434)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY116 rho + rho 29150) = rho 29152 := by
  rw [seg30AccY116_sum]
  unfold Seg30.relationRow836 at r836
  simp only [Seg30.relationLc546, Seg30.relationLc546Part0, Seg30.relationLc546Part1, Seg30.relationLc546Part2, Seg30.relationLc546Part3] at r836
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r836 ⊢
  exact r836

theorem seg30_prefix_118_v2 (rho : Nat -> Seg30.F)
    (r837 : Seg30.relationRow837 rho) :
    (1872614935516469004704786918895811090880792337026629918254087619510321198958*rho 28317 + 2126598159510820021254829562976983677454766925005966503301667636085195673024*seg30AccX117 rho)*(2220347505511572727384220613898333383183238585915327966518800422393436414609 + 3238821507913782672875285228055567261226513652148746145790112441631656539344*rho 28317 + 2220347505511572727384220613898333383183238585915327966518800422393436414609*seg30AccY117 rho) = rho 29153 := by
  rw [seg30AccX117_sum, seg30AccY117_sum]
  unfold Seg30.relationRow837 at r837
  simp only [Seg30.relationLc547, Seg30.relationLc547Part0, Seg30.relationLc547Part1, Seg30.relationLc547Part2, Seg30.relationLc547Part3] at r837
  simp only [Seg30.relationLc548, Seg30.relationLc548Part0, Seg30.relationLc548Part1, Seg30.relationLc548Part2, Seg30.relationLc548Part3] at r837
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r837 ⊢
  exact r837

theorem seg30_prefix_118_addX (rho : Nat -> Seg30.F)
    (r838 : Seg30.relationRow838 rho) :
    rho 29154*(1 + rho 29153) = 2220347505511572727384220613898333383183238585915327966518800422393436414609 + 2990663785052608062231974856445947324052871067411346261391574973919925622073*rho 28317 + 4671573049140787090016895498929805110098173636533414969540905916078807028835*seg30AccX117 rho + 2220347505511572727384220613898333383183238585915327966518800422393436414609*seg30AccY117 rho := by
  rw [add_assoc, seg30AccWeighted117]
  unfold Seg30.relationRow838 at r838
  simp only [Seg30.relationLc549, Seg30.relationLc549Part0, Seg30.relationLc549Part1, Seg30.relationLc549Part2, Seg30.relationLc549Part3, Seg30.relationLc549Part4, Seg30.relationLc549Part5, Seg30.relationLc549Part6, Seg30.relationLc549Part7] at r838
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r838 ⊢
  exact r838

theorem seg30_prefix_118_addY (rho : Nat -> Seg30.F)
    (r839 : Seg30.relationRow839 rho) :
    rho 29155*(1 + (-1)*rho 29153) = 4671573049140787090016895498929805110098173636533414969540905916078807028835 + 7172988848799631013344220002171542030874312246551264557875723659804867424013*rho 28317 + 2220347505511572727384220613898333383183238585915327966518800422393436414609*seg30AccX117 rho + 4671573049140787090016895498929805110098173636533414969540905916078807028835*seg30AccY117 rho := by
  rw [add_assoc, seg30AccWeighted117]
  unfold Seg30.relationRow839 at r839
  simp only [Seg30.relationLc550, Seg30.relationLc550Part0, Seg30.relationLc550Part1, Seg30.relationLc550Part2, Seg30.relationLc550Part3, Seg30.relationLc550Part4, Seg30.relationLc550Part5, Seg30.relationLc550Part6, Seg30.relationLc550Part7] at r839
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r839 ⊢
  exact r839

theorem seg30_prefix_118_selX (rho : Nat -> Seg30.F)
    (r840 : Seg30.relationRow840 rho) :
    (1*rho 28435)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX117 rho + rho 29154) = rho 29156 := by
  rw [seg30AccX117_sum]
  unfold Seg30.relationRow840 at r840
  simp only [Seg30.relationLc551, Seg30.relationLc551Part0, Seg30.relationLc551Part1, Seg30.relationLc551Part2, Seg30.relationLc551Part3] at r840
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r840 ⊢
  exact r840

theorem seg30_prefix_118_selY (rho : Nat -> Seg30.F)
    (r841 : Seg30.relationRow841 rho) :
    (1*rho 28435)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY117 rho + rho 29155) = rho 29157 := by
  rw [seg30AccY117_sum]
  unfold Seg30.relationRow841 at r841
  simp only [Seg30.relationLc552, Seg30.relationLc552Part0, Seg30.relationLc552Part1, Seg30.relationLc552Part2, Seg30.relationLc552Part3] at r841
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r841 ⊢
  exact r841

theorem seg30_prefix_119_v2 (rho : Nat -> Seg30.F)
    (r842 : Seg30.relationRow842 rho) :
    (1691399493890240984781845757328749935483621953555455768353456418081471202157*rho 28317 + 3367912820253366001216961945321133635042119018370843707781355082706130612868*seg30AccX118 rho)*(2442799860589911281946982784576947894968376621422175574069845981874629279962 + 7148355880814354094015135364292496029766550086632406855091613901944786716636*rho 28317 + 2442799860589911281946982784576947894968376621422175574069845981874629279962*seg30AccY118 rho) = rho 29158 := by
  rw [seg30AccX118_sum, seg30AccY118_sum]
  unfold Seg30.relationRow842 at r842
  simp only [Seg30.relationLc553, Seg30.relationLc553Part0, Seg30.relationLc553Part1, Seg30.relationLc553Part2, Seg30.relationLc553Part3] at r842
  simp only [Seg30.relationLc554, Seg30.relationLc554Part0, Seg30.relationLc554Part1, Seg30.relationLc554Part2, Seg30.relationLc554Part3] at r842
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r842 ⊢
  exact r842

theorem seg30_prefix_119_addX (rho : Nat -> Seg30.F)
    (r843 : Seg30.relationRow843 rho) :
    rho 29159*(1 + rho 29158) = 2442799860589911281946982784576947894968376621422175574069845981874629279962 + 2581471041664381557690144267234661444419732512422481387008920088455556254739*rho 28317 + 5843195289349734376921966595166750540950238904167614777918708797732569162598*seg30AccX118 rho + 2442799860589911281946982784576947894968376621422175574069845981874629279962*seg30AccY118 rho := by
  rw [add_assoc, seg30AccWeighted118]
  unfold Seg30.relationRow843 at r843
  simp only [Seg30.relationLc555, Seg30.relationLc555Part0, Seg30.relationLc555Part1, Seg30.relationLc555Part2, Seg30.relationLc555Part3, Seg30.relationLc555Part4, Seg30.relationLc555Part5, Seg30.relationLc555Part6, Seg30.relationLc555Part7] at r843
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r843 ⊢
  exact r843

theorem seg30_prefix_119_addY (rho : Nat -> Seg30.F)
    (r844 : Seg30.relationRow844 rho) :
    rho 29160*(1 + (-1)*rho 29158) = 5843195289349734376921966595166750540950238904167614777918708797732569162598 + 6619964280680378555219129946295155890115709779695071405095337864393796333509*rho 28317 + 2442799860589911281946982784576947894968376621422175574069845981874629279962*seg30AccX118 rho + 5843195289349734376921966595166750540950238904167614777918708797732569162598*seg30AccY118 rho := by
  rw [add_assoc, seg30AccWeighted118]
  unfold Seg30.relationRow844 at r844
  simp only [Seg30.relationLc556, Seg30.relationLc556Part0, Seg30.relationLc556Part1, Seg30.relationLc556Part2, Seg30.relationLc556Part3, Seg30.relationLc556Part4, Seg30.relationLc556Part5, Seg30.relationLc556Part6, Seg30.relationLc556Part7] at r844
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r844 ⊢
  exact r844

theorem seg30_prefix_119_selX (rho : Nat -> Seg30.F)
    (r845 : Seg30.relationRow845 rho) :
    (1*rho 28436)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX118 rho + rho 29159) = rho 29161 := by
  rw [seg30AccX118_sum]
  unfold Seg30.relationRow845 at r845
  simp only [Seg30.relationLc557, Seg30.relationLc557Part0, Seg30.relationLc557Part1, Seg30.relationLc557Part2, Seg30.relationLc557Part3] at r845
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r845 ⊢
  exact r845

theorem seg30_prefix_119_selY (rho : Nat -> Seg30.F)
    (r846 : Seg30.relationRow846 rho) :
    (1*rho 28436)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY118 rho + rho 29160) = rho 29162 := by
  rw [seg30AccY118_sum]
  unfold Seg30.relationRow846 at r846
  simp only [Seg30.relationLc558, Seg30.relationLc558Part0, Seg30.relationLc558Part1, Seg30.relationLc558Part2, Seg30.relationLc558Part3] at r846
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r846 ⊢
  exact r846

theorem seg30_prefix_120_v2 (rho : Nat -> Seg30.F)
    (r847 : Seg30.relationRow847 rho) :
    (7127797571030210124345768641519536854686265690026118826828166574414757839431*rho 28317 + 2017692046407117271774974818426083152699470227008509506383363299947661421324*seg30AccX119 rho)*(8235182039777681632574425548791168984093363629789555229274299810296150947985 + 2430083545376283142446969529024895585487534495302192570610260792855878618882*rho 28317 + 8235182039777681632574425548791168984093363629789555229274299810296150947985*seg30AccY119 rho) = rho 29163 := by
  rw [seg30AccX119_sum, seg30AccY119_sum]
  unfold Seg30.relationRow847 at r847
  simp only [Seg30.relationLc559, Seg30.relationLc559Part0, Seg30.relationLc559Part1, Seg30.relationLc559Part2, Seg30.relationLc559Part3] at r847
  simp only [Seg30.relationLc560, Seg30.relationLc560Part0, Seg30.relationLc560Part1, Seg30.relationLc560Part2, Seg30.relationLc560Part3] at r847
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r847 ⊢
  exact r847

theorem seg30_prefix_120_addX (rho : Nat -> Seg30.F)
    (r848 : Seg30.relationRow848 rho) :
    rho 29164*(1 + rho 29163) = 8235182039777681632574425548791168984093363629789555229274299810296150947985 + 2024335906235100794940851464668528072503027697141826069434585215898074252427*rho 28317 + 5292083344493317553914200789120123689853451476886346023100887221235221234997*seg30AccX119 rho + 8235182039777681632574425548791168984093363629789555229274299810296150947985*seg30AccY119 rho := by
  rw [add_assoc, seg30AccWeighted119]
  unfold Seg30.relationRow848 at r848
  simp only [Seg30.relationLc561, Seg30.relationLc561Part0, Seg30.relationLc561Part1, Seg30.relationLc561Part2, Seg30.relationLc561Part3, Seg30.relationLc561Part4, Seg30.relationLc561Part5, Seg30.relationLc561Part6, Seg30.relationLc561Part7] at r848
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r848 ⊢
  exact r848

theorem seg30_prefix_120_addY (rho : Nat -> Seg30.F)
    (r849 : Seg30.relationRow849 rho) :
    rho 29165*(1 + (-1)*rho 29163) = 5292083344493317553914200789120123689853451476886346023100887221235221234997 + 768630642295931472468064850845617638711953339610270448700590788007616351667*rho 28317 + 8235182039777681632574425548791168984093363629789555229274299810296150947985*seg30AccX119 rho + 5292083344493317553914200789120123689853451476886346023100887221235221234997*seg30AccY119 rho := by
  rw [add_assoc, seg30AccWeighted119]
  unfold Seg30.relationRow849 at r849
  simp only [Seg30.relationLc562, Seg30.relationLc562Part0, Seg30.relationLc562Part1, Seg30.relationLc562Part2, Seg30.relationLc562Part3, Seg30.relationLc562Part4, Seg30.relationLc562Part5, Seg30.relationLc562Part6, Seg30.relationLc562Part7] at r849
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r849 ⊢
  exact r849

theorem seg30_prefix_120_selX (rho : Nat -> Seg30.F)
    (r850 : Seg30.relationRow850 rho) :
    (1*rho 28437)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX119 rho + rho 29164) = rho 29166 := by
  rw [seg30AccX119_sum]
  unfold Seg30.relationRow850 at r850
  simp only [Seg30.relationLc563, Seg30.relationLc563Part0, Seg30.relationLc563Part1, Seg30.relationLc563Part2, Seg30.relationLc563Part3] at r850
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r850 ⊢
  exact r850

theorem seg30_prefix_120_selY (rho : Nat -> Seg30.F)
    (r851 : Seg30.relationRow851 rho) :
    (1*rho 28437)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY119 rho + rho 29165) = rho 29167 := by
  rw [seg30AccY119_sum]
  unfold Seg30.relationRow851 at r851
  simp only [Seg30.relationLc564, Seg30.relationLc564Part0, Seg30.relationLc564Part1, Seg30.relationLc564Part2, Seg30.relationLc564Part3] at r851
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r851 ⊢
  exact r851


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

