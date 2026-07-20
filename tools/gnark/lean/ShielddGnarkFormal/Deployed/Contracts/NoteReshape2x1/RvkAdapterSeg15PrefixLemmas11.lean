import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_prefix_111_v2 (rho : Nat -> Seg15.F)
    (r802 : Seg15.relationRow802 rho) :
    (1584370194938709372334615152442198386778091293051099268892628669364464823643*rho 16130 + 4844898403553568028259035569409623674492133411001005402900268525269019383147*seg15AccX110 rho)*(5013280838734082258864536620020876856738515857218859590790551016956583521435 + 5822744375078125061629763314676319349385425802373362430870652483474328191553*rho 16130 + 5013280838734082258864536620020876856738515857218859590790551016956583521435*seg15AccY110 rho) = rho 16931 := by
  rw [seg15AccX110_sum, seg15AccY110_sum]
  unfold Seg15.relationRow802 at r802
  simp only [Seg15.relationLc505, Seg15.relationLc505Part0, Seg15.relationLc505Part1, Seg15.relationLc505Part2, Seg15.relationLc505Part3] at r802
  simp only [Seg15.relationLc506, Seg15.relationLc506Part0, Seg15.relationLc506Part1, Seg15.relationLc506Part2, Seg15.relationLc506Part3] at r802
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r802 ⊢
  exact r802

theorem seg15_prefix_111_addX (rho : Nat -> Seg15.F)
    (r803 : Seg15.relationRow803 rho) :
    rho 16932*(1 + rho 16931) = 5013280838734082258864536620020876856738515857218859590790551016956583521435 + 5848426111569284956760704737914146597703585744547952855802896683994891299125*rho 16130 + 6232224474637335731108536850087215108279169729053098072780713552388339693216*seg15AccX110 rho + 5013280838734082258864536620020876856738515857218859590790551016956583521435*seg15AccY110 rho := by
  rw [add_assoc, seg15AccWeighted110]
  unfold Seg15.relationRow803 at r803
  simp only [Seg15.relationLc507, Seg15.relationLc507Part0, Seg15.relationLc507Part1, Seg15.relationLc507Part2, Seg15.relationLc507Part3, Seg15.relationLc507Part4, Seg15.relationLc507Part5, Seg15.relationLc507Part6] at r803
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r803 ⊢
  exact r803

theorem seg15_prefix_111_addY (rho : Nat -> Seg15.F)
    (r804 : Seg15.relationRow804 rho) :
    rho 16933*(1 + (-1)*rho 16931) = 6232224474637335731108536850087215108279169729053098072780713552388339693216 + 2975589111667990585410595177746922024926505695906607372137355479945806617660*rho 16130 + 5013280838734082258864536620020876856738515857218859590790551016956583521435*seg15AccX110 rho + 6232224474637335731108536850087215108279169729053098072780713552388339693216*seg15AccY110 rho := by
  rw [add_assoc, seg15AccWeighted110]
  unfold Seg15.relationRow804 at r804
  simp only [Seg15.relationLc508, Seg15.relationLc508Part0, Seg15.relationLc508Part1, Seg15.relationLc508Part2, Seg15.relationLc508Part3, Seg15.relationLc508Part4, Seg15.relationLc508Part5, Seg15.relationLc508Part6] at r804
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r804 ⊢
  exact r804

theorem seg15_prefix_111_selX (rho : Nat -> Seg15.F)
    (r805 : Seg15.relationRow805 rho) :
    (1*rho 16241)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX110 rho + rho 16932) = rho 16934 := by
  rw [seg15AccX110_sum]
  unfold Seg15.relationRow805 at r805
  simp only [Seg15.relationLc509, Seg15.relationLc509Part0, Seg15.relationLc509Part1, Seg15.relationLc509Part2, Seg15.relationLc509Part3] at r805
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r805 ⊢
  exact r805

theorem seg15_prefix_111_selY (rho : Nat -> Seg15.F)
    (r806 : Seg15.relationRow806 rho) :
    (1*rho 16241)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY110 rho + rho 16933) = rho 16935 := by
  rw [seg15AccY110_sum]
  unfold Seg15.relationRow806 at r806
  simp only [Seg15.relationLc510, Seg15.relationLc510Part0, Seg15.relationLc510Part1, Seg15.relationLc510Part2, Seg15.relationLc510Part3] at r806
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r806 ⊢
  exact r806

theorem seg15_prefix_112_v2 (rho : Nat -> Seg15.F)
    (r807 : Seg15.relationRow807 rho) :
    (1290682852539617687465308244549146097528654648960453990058143318687428377628*rho 16130 + 5473513454910718385916379960564670405200796488660792199065102502565012311891*seg15AccX111 rho)*(4211737791003456215988561120811297185727381853372271991257172356128917154219 + 4560315553206082171239657153972697214142086945910781475321943315739135166866*rho 16130 + 4211737791003456215988561120811297185727381853372271991257172356128917154219*seg15AccY111 rho) = rho 16936 := by
  rw [seg15AccX111_sum, seg15AccY111_sum]
  unfold Seg15.relationRow807 at r807
  simp only [Seg15.relationLc511, Seg15.relationLc511Part0, Seg15.relationLc511Part1, Seg15.relationLc511Part2, Seg15.relationLc511Part3] at r807
  simp only [Seg15.relationLc512, Seg15.relationLc512Part0, Seg15.relationLc512Part1, Seg15.relationLc512Part2, Seg15.relationLc512Part3] at r807
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r807 ⊢
  exact r807

theorem seg15_prefix_112_addX (rho : Nat -> Seg15.F)
    (r808 : Seg15.relationRow808 rho) :
    rho 16937*(1 + rho 16936) = 4211737791003456215988561120811297185727381853372271991257172356128917154219 + 8096738855383979623858733239971772192059346566440027154344825958921594655699*rho 16130 + 2436477887191996477294486230267888678991595206027093805471914413309046163362*seg15AccX111 rho + 4211737791003456215988561120811297185727381853372271991257172356128917154219*seg15AccY111 rho := by
  rw [add_assoc, seg15AccWeighted111]
  unfold Seg15.relationRow808 at r808
  simp only [Seg15.relationLc513, Seg15.relationLc513Part0, Seg15.relationLc513Part1, Seg15.relationLc513Part2, Seg15.relationLc513Part3, Seg15.relationLc513Part4, Seg15.relationLc513Part5, Seg15.relationLc513Part6] at r808
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r808 ⊢
  exact r808

theorem seg15_prefix_112_addY (rho : Nat -> Seg15.F)
    (r809 : Seg15.relationRow809 rho) :
    rho 16938*(1 + (-1)*rho 16936) = 2436477887191996477294486230267888678991595206027093805471914413309046163362 + 1278272657742027434275494546315655160302569862150581501574320349530171965278*rho 16130 + 4211737791003456215988561120811297185727381853372271991257172356128917154219*seg15AccX111 rho + 2436477887191996477294486230267888678991595206027093805471914413309046163362*seg15AccY111 rho := by
  rw [add_assoc, seg15AccWeighted111]
  unfold Seg15.relationRow809 at r809
  simp only [Seg15.relationLc514, Seg15.relationLc514Part0, Seg15.relationLc514Part1, Seg15.relationLc514Part2, Seg15.relationLc514Part3, Seg15.relationLc514Part4, Seg15.relationLc514Part5, Seg15.relationLc514Part6] at r809
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r809 ⊢
  exact r809

theorem seg15_prefix_112_selX (rho : Nat -> Seg15.F)
    (r810 : Seg15.relationRow810 rho) :
    (1*rho 16242)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX111 rho + rho 16937) = rho 16939 := by
  rw [seg15AccX111_sum]
  unfold Seg15.relationRow810 at r810
  simp only [Seg15.relationLc515, Seg15.relationLc515Part0, Seg15.relationLc515Part1, Seg15.relationLc515Part2, Seg15.relationLc515Part3] at r810
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r810 ⊢
  exact r810

theorem seg15_prefix_112_selY (rho : Nat -> Seg15.F)
    (r811 : Seg15.relationRow811 rho) :
    (1*rho 16242)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY111 rho + rho 16938) = rho 16940 := by
  rw [seg15AccY111_sum]
  unfold Seg15.relationRow811 at r811
  simp only [Seg15.relationLc516, Seg15.relationLc516Part0, Seg15.relationLc516Part1, Seg15.relationLc516Part2, Seg15.relationLc516Part3] at r811
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r811 ⊢
  exact r811

theorem seg15_prefix_113_v2 (rho : Nat -> Seg15.F)
    (r812 : Seg15.relationRow812 rho) :
    (2505911588988824428755289285606906412415086920291455482382843872981685118529*rho 16130 + 6494117757873971508758146756812052405656400213213392704742067070974595246434*seg15AccX112 rho)*(3211543191507721442380920952251537121684563966279963155303907443022683903872 + 8174319716053133462684811146498463582214521739980076836226226865024436960466*rho 16130 + 3211543191507721442380920952251537121684563966279963155303907443022683903872*seg15AccY112 rho) = rho 16941 := by
  rw [seg15AccX112_sum, seg15AccY112_sum]
  unfold Seg15.relationRow812 at r812
  simp only [Seg15.relationLc517, Seg15.relationLc517Part0, Seg15.relationLc517Part1, Seg15.relationLc517Part2, Seg15.relationLc517Part3] at r812
  simp only [Seg15.relationLc518, Seg15.relationLc518Part0, Seg15.relationLc518Part1, Seg15.relationLc518Part2, Seg15.relationLc518Part3] at r812
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r812 ⊢
  exact r812

theorem seg15_prefix_113_addX (rho : Nat -> Seg15.F)
    (r813 : Seg15.relationRow813 rho) :
    rho 16942*(1 + rho 16941) = 3211543191507721442380920952251537121684563966279963155303907443022683903872 + 630759189698223515442565790495223866302195616623397982828407515918807747936*rho 16130 + 5424942042915892947550969390265810103699073522148989479940117501340863462094*seg15AccX112 rho + 3211543191507721442380920952251537121684563966279963155303907443022683903872*seg15AccY112 rho := by
  rw [add_assoc, seg15AccWeighted112]
  unfold Seg15.relationRow813 at r813
  simp only [Seg15.relationLc519, Seg15.relationLc519Part0, Seg15.relationLc519Part1, Seg15.relationLc519Part2, Seg15.relationLc519Part3, Seg15.relationLc519Part4, Seg15.relationLc519Part5, Seg15.relationLc519Part6, Seg15.relationLc519Part7] at r813
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r813 ⊢
  exact r813

theorem seg15_prefix_113_addY (rho : Nat -> Seg15.F)
    (r814 : Seg15.relationRow814 rho) :
    rho 16943*(1 + (-1)*rho 16941) = 5424942042915892947550969390265810103699073522148989479940117501340863462094 + 701540351068285311102719158292584549968653608918762726070947020463010759916*rho 16130 + 3211543191507721442380920952251537121684563966279963155303907443022683903872*seg15AccX112 rho + 5424942042915892947550969390265810103699073522148989479940117501340863462094*seg15AccY112 rho := by
  rw [add_assoc, seg15AccWeighted112]
  unfold Seg15.relationRow814 at r814
  simp only [Seg15.relationLc520, Seg15.relationLc520Part0, Seg15.relationLc520Part1, Seg15.relationLc520Part2, Seg15.relationLc520Part3, Seg15.relationLc520Part4, Seg15.relationLc520Part5, Seg15.relationLc520Part6, Seg15.relationLc520Part7] at r814
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r814 ⊢
  exact r814

theorem seg15_prefix_113_selX (rho : Nat -> Seg15.F)
    (r815 : Seg15.relationRow815 rho) :
    (1*rho 16243)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX112 rho + rho 16942) = rho 16944 := by
  rw [seg15AccX112_sum]
  unfold Seg15.relationRow815 at r815
  simp only [Seg15.relationLc521, Seg15.relationLc521Part0, Seg15.relationLc521Part1, Seg15.relationLc521Part2, Seg15.relationLc521Part3] at r815
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r815 ⊢
  exact r815

theorem seg15_prefix_113_selY (rho : Nat -> Seg15.F)
    (r816 : Seg15.relationRow816 rho) :
    (1*rho 16243)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY112 rho + rho 16943) = rho 16945 := by
  rw [seg15AccY112_sum]
  unfold Seg15.relationRow816 at r816
  simp only [Seg15.relationLc522, Seg15.relationLc522Part0, Seg15.relationLc522Part1, Seg15.relationLc522Part2, Seg15.relationLc522Part3] at r816
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r816 ⊢
  exact r816

theorem seg15_prefix_114_v2 (rho : Nat -> Seg15.F)
    (r817 : Seg15.relationRow817 rho) :
    (6205455160059383968858176403410616736538441215431948543782337451811884962308*rho 16130 + 7232751867622564713554023932001496092539510221064441963614171743180987607316*seg15AccX113 rho)*(1947902921501713494103716120380880084569071691708274654879772882964119421042 + 6679184061030008664832695535977507076813478068613182374938323825246753435358*rho 16130 + 1947902921501713494103716120380880084569071691708274654879772882964119421042*seg15AccY113 rho) = rho 16946 := by
  rw [seg15AccX113_sum, seg15AccY113_sum]
  unfold Seg15.relationRow817 at r817
  simp only [Seg15.relationLc523, Seg15.relationLc523Part0, Seg15.relationLc523Part1, Seg15.relationLc523Part2, Seg15.relationLc523Part3] at r817
  simp only [Seg15.relationLc524, Seg15.relationLc524Part0, Seg15.relationLc524Part1, Seg15.relationLc524Part2, Seg15.relationLc524Part3] at r817
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r817 ⊢
  exact r817

theorem seg15_prefix_114_addX (rho : Nat -> Seg15.F)
    (r818 : Seg15.relationRow818 rho) :
    rho 16947*(1 + rho 16946) = 1947902921501713494103716120380880084569071691708274654879772882964119421042 + 4400311061237393344667788891276305040114969158891141946255315496025702771970*rho 16130 + 6861946999326330217087113678815596386656403998242018230955536932328534677330*seg15AccX113 rho + 1947902921501713494103716120380880084569071691708274654879772882964119421042*seg15AccY113 rho := by
  rw [add_assoc, seg15AccWeighted113]
  unfold Seg15.relationRow818 at r818
  simp only [Seg15.relationLc525, Seg15.relationLc525Part0, Seg15.relationLc525Part1, Seg15.relationLc525Part2, Seg15.relationLc525Part3, Seg15.relationLc525Part4, Seg15.relationLc525Part5, Seg15.relationLc525Part6, Seg15.relationLc525Part7] at r818
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r818 ⊢
  exact r818

theorem seg15_prefix_114_addY (rho : Nat -> Seg15.F)
    (r819 : Seg15.relationRow819 rho) :
    rho 16948*(1 + (-1)*rho 16946) = 6861946999326330217087113678815596386656403998242018230955536932328534677330 + 2087357790150026556797310710018782693490980500605381290006250342379967365568*rho 16130 + 1947902921501713494103716120380880084569071691708274654879772882964119421042*seg15AccX113 rho + 6861946999326330217087113678815596386656403998242018230955536932328534677330*seg15AccY113 rho := by
  rw [add_assoc, seg15AccWeighted113]
  unfold Seg15.relationRow819 at r819
  simp only [Seg15.relationLc526, Seg15.relationLc526Part0, Seg15.relationLc526Part1, Seg15.relationLc526Part2, Seg15.relationLc526Part3, Seg15.relationLc526Part4, Seg15.relationLc526Part5, Seg15.relationLc526Part6, Seg15.relationLc526Part7] at r819
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r819 ⊢
  exact r819

theorem seg15_prefix_114_selX (rho : Nat -> Seg15.F)
    (r820 : Seg15.relationRow820 rho) :
    (1*rho 16244)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX113 rho + rho 16947) = rho 16949 := by
  rw [seg15AccX113_sum]
  unfold Seg15.relationRow820 at r820
  simp only [Seg15.relationLc527, Seg15.relationLc527Part0, Seg15.relationLc527Part1, Seg15.relationLc527Part2, Seg15.relationLc527Part3] at r820
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r820 ⊢
  exact r820

theorem seg15_prefix_114_selY (rho : Nat -> Seg15.F)
    (r821 : Seg15.relationRow821 rho) :
    (1*rho 16244)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY113 rho + rho 16948) = rho 16950 := by
  rw [seg15AccY113_sum]
  unfold Seg15.relationRow821 at r821
  simp only [Seg15.relationLc528, Seg15.relationLc528Part0, Seg15.relationLc528Part1, Seg15.relationLc528Part2, Seg15.relationLc528Part3] at r821
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r821 ⊢
  exact r821

theorem seg15_prefix_115_v2 (rho : Nat -> Seg15.F)
    (r822 : Seg15.relationRow822 rho) :
    (8069732616500346997440461803908541944572596023366705295276766397849410487234*rho 16130 + 947717101564819091542378284888608902327013081715595233096761950147907007800*seg15AccX114 rho)*(7656315330328664586430890033205107891880486608577188553281730603396254529588 + 6309456410749148524989712616328028351341432761943017574693998999570185170928*rho 16130 + 7656315330328664586430890033205107891880486608577188553281730603396254529588*seg15AccY114 rho) = rho 16951 := by
  rw [seg15AccX114_sum, seg15AccY114_sum]
  unfold Seg15.relationRow822 at r822
  simp only [Seg15.relationLc529, Seg15.relationLc529Part0, Seg15.relationLc529Part1, Seg15.relationLc529Part2, Seg15.relationLc529Part3] at r822
  simp only [Seg15.relationLc530, Seg15.relationLc530Part0, Seg15.relationLc530Part1, Seg15.relationLc530Part2, Seg15.relationLc530Part3] at r822
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r822 ⊢
  exact r822

theorem seg15_prefix_115_addX (rho : Nat -> Seg15.F)
    (r823 : Seg15.relationRow823 rho) :
    rho 16952*(1 + rho 16951) = 7656315330328664586430890033205107891880486608577188553281730603396254529588 + 3477740263346345723536264080703870906498470388615359840092525991327085681388*rho 16130 + 4816536018327258212536334904933960040537239843612104459041874878019147310783*seg15AccX114 rho + 7656315330328664586430890033205107891880486608577188553281730603396254529588*seg15AccY114 rho := by
  rw [add_assoc, seg15AccWeighted114]
  unfold Seg15.relationRow823 at r823
  simp only [Seg15.relationLc531, Seg15.relationLc531Part0, Seg15.relationLc531Part1, Seg15.relationLc531Part2, Seg15.relationLc531Part3, Seg15.relationLc531Part4, Seg15.relationLc531Part5, Seg15.relationLc531Part6, Seg15.relationLc531Part7] at r823
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r823 ⊢
  exact r823

theorem seg15_prefix_115_addY (rho : Nat -> Seg15.F)
    (r824 : Seg15.relationRow824 rho) :
    rho 16953*(1 + (-1)*rho 16951) = 4816536018327258212536334904933960040537239843612104459041874878019147310783 + 7299614783841155772686659764745278288658731154961458264984903098491417870829*rho 16130 + 7656315330328664586430890033205107891880486608577188553281730603396254529588*seg15AccX114 rho + 4816536018327258212536334904933960040537239843612104459041874878019147310783*seg15AccY114 rho := by
  rw [add_assoc, seg15AccWeighted114]
  unfold Seg15.relationRow824 at r824
  simp only [Seg15.relationLc532, Seg15.relationLc532Part0, Seg15.relationLc532Part1, Seg15.relationLc532Part2, Seg15.relationLc532Part3, Seg15.relationLc532Part4, Seg15.relationLc532Part5, Seg15.relationLc532Part6, Seg15.relationLc532Part7] at r824
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r824 ⊢
  exact r824

theorem seg15_prefix_115_selX (rho : Nat -> Seg15.F)
    (r825 : Seg15.relationRow825 rho) :
    (1*rho 16245)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX114 rho + rho 16952) = rho 16954 := by
  rw [seg15AccX114_sum]
  unfold Seg15.relationRow825 at r825
  simp only [Seg15.relationLc533, Seg15.relationLc533Part0, Seg15.relationLc533Part1, Seg15.relationLc533Part2, Seg15.relationLc533Part3] at r825
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r825 ⊢
  exact r825

theorem seg15_prefix_115_selY (rho : Nat -> Seg15.F)
    (r826 : Seg15.relationRow826 rho) :
    (1*rho 16245)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY114 rho + rho 16953) = rho 16955 := by
  rw [seg15AccY114_sum]
  unfold Seg15.relationRow826 at r826
  simp only [Seg15.relationLc534, Seg15.relationLc534Part0, Seg15.relationLc534Part1, Seg15.relationLc534Part2, Seg15.relationLc534Part3] at r826
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r826 ⊢
  exact r826

theorem seg15_prefix_116_v2 (rho : Nat -> Seg15.F)
    (r827 : Seg15.relationRow827 rho) :
    (4354532474989950694177441537286028288137849845366388990794655904030294839452*rho 16130 + 1854067315940902596236180059194743311052989737966486961600317653694884857500*seg15AccX115 rho)*(1761474383487328414379451883122601276536990799918597689697615342065633936486 + 3780104624363262583803818749820133136665135515081578486963505739174187955054*rho 16130 + 1761474383487328414379451883122601276536990799918597689697615342065633936486*seg15AccY115 rho) = rho 16956 := by
  rw [seg15AccX115_sum, seg15AccY115_sum]
  unfold Seg15.relationRow827 at r827
  simp only [Seg15.relationLc535, Seg15.relationLc535Part0, Seg15.relationLc535Part1, Seg15.relationLc535Part2, Seg15.relationLc535Part3] at r827
  simp only [Seg15.relationLc536, Seg15.relationLc536Part0, Seg15.relationLc536Part1, Seg15.relationLc536Part2, Seg15.relationLc536Part3] at r827
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r827 ⊢
  exact r827

theorem seg15_prefix_116_addX (rho : Nat -> Seg15.F)
    (r828 : Seg15.relationRow828 rho) :
    rho 16957*(1 + rho 16956) = 1761474383487328414379451883122601276536990799918597689697615342065633936486 + 2604744192706740240899291157072782901173207090634542908489510827212188949825*rho 16130 + 3044645121629737270639922720421151577616487045918815622503498692865856850769*seg15AccX115 rho + 1761474383487328414379451883122601276536990799918597689697615342065633936486*seg15AccY115 rho := by
  rw [add_assoc, seg15AccWeighted115]
  unfold Seg15.relationRow828 at r828
  simp only [Seg15.relationLc537, Seg15.relationLc537Part0, Seg15.relationLc537Part1, Seg15.relationLc537Part2, Seg15.relationLc537Part3, Seg15.relationLc537Part4, Seg15.relationLc537Part5, Seg15.relationLc537Part6, Seg15.relationLc537Part7] at r828
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r828 ⊢
  exact r828

theorem seg15_prefix_116_addY (rho : Nat -> Seg15.F)
    (r829 : Seg15.relationRow829 rho) :
    rho 16958*(1 + (-1)*rho 16956) = 3044645121629737270639922720421151577616487045918815622503498692865856850769 + 7841490394353810698294471924772146887196817649440922315850551546178009358557*rho 16130 + 1761474383487328414379451883122601276536990799918597689697615342065633936486*seg15AccX115 rho + 3044645121629737270639922720421151577616487045918815622503498692865856850769*seg15AccY115 rho := by
  rw [add_assoc, seg15AccWeighted115]
  unfold Seg15.relationRow829 at r829
  simp only [Seg15.relationLc538, Seg15.relationLc538Part0, Seg15.relationLc538Part1, Seg15.relationLc538Part2, Seg15.relationLc538Part3, Seg15.relationLc538Part4, Seg15.relationLc538Part5, Seg15.relationLc538Part6, Seg15.relationLc538Part7] at r829
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r829 ⊢
  exact r829

theorem seg15_prefix_116_selX (rho : Nat -> Seg15.F)
    (r830 : Seg15.relationRow830 rho) :
    (1*rho 16246)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX115 rho + rho 16957) = rho 16959 := by
  rw [seg15AccX115_sum]
  unfold Seg15.relationRow830 at r830
  simp only [Seg15.relationLc539, Seg15.relationLc539Part0, Seg15.relationLc539Part1, Seg15.relationLc539Part2, Seg15.relationLc539Part3] at r830
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r830 ⊢
  exact r830

theorem seg15_prefix_116_selY (rho : Nat -> Seg15.F)
    (r831 : Seg15.relationRow831 rho) :
    (1*rho 16246)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY115 rho + rho 16958) = rho 16960 := by
  rw [seg15AccY115_sum]
  unfold Seg15.relationRow831 at r831
  simp only [Seg15.relationLc540, Seg15.relationLc540Part0, Seg15.relationLc540Part1, Seg15.relationLc540Part2, Seg15.relationLc540Part3] at r831
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r831 ⊢
  exact r831

theorem seg15_prefix_117_v2 (rho : Nat -> Seg15.F)
    (r832 : Seg15.relationRow832 rho) :
    (7963949792456045923152496392139227737431459647154118764599999983306311745035*rho 16130 + 5058688986614166632160103004447210200422193522182557622358194344375224847289*seg15AccX116 rho)*(1000807978500512596306657126135250154376733979117759404414376430836879304434 + 7165195893732640723561096527477694394750848606553482293832288734522661702959*rho 16130 + 1000807978500512596306657126135250154376733979117759404414376430836879304434*seg15AccY116 rho) = rho 16961 := by
  rw [seg15AccX116_sum, seg15AccY116_sum]
  unfold Seg15.relationRow832 at r832
  simp only [Seg15.relationLc541, Seg15.relationLc541Part0, Seg15.relationLc541Part1, Seg15.relationLc541Part2, Seg15.relationLc541Part3] at r832
  simp only [Seg15.relationLc542, Seg15.relationLc542Part0, Seg15.relationLc542Part1, Seg15.relationLc542Part2, Seg15.relationLc542Part3] at r832
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r832 ⊢
  exact r832

theorem seg15_prefix_117_addX (rho : Nat -> Seg15.F)
    (r833 : Seg15.relationRow833 rho) :
    rho 16962*(1 + rho 16961) = 1000807978500512596306657126135250154376733979117759404414376430836879304434 + 1219531990061301360145556317833539548332284447149081861167086220716325870806*rho 16130 + 2827676106474245834342178787193840037544341748216796123027103349313762318940*seg15AccX116 rho + 1000807978500512596306657126135250154376733979117759404414376430836879304434*seg15AccY116 rho := by
  rw [add_assoc, seg15AccWeighted116]
  unfold Seg15.relationRow833 at r833
  simp only [Seg15.relationLc543, Seg15.relationLc543Part0, Seg15.relationLc543Part1, Seg15.relationLc543Part2, Seg15.relationLc543Part3, Seg15.relationLc543Part4, Seg15.relationLc543Part5, Seg15.relationLc543Part6, Seg15.relationLc543Part7] at r833
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r833 ⊢
  exact r833

theorem seg15_prefix_117_addY (rho : Nat -> Seg15.F)
    (r834 : Seg15.relationRow834 rho) :
    rho 16963*(1 + (-1)*rho 16961) = 2827676106474245834342178787193840037544341748216796123027103349313762318940 + 7015591765500128281549976814712607452749588499518551798977318918702616301457*rho 16130 + 1000807978500512596306657126135250154376733979117759404414376430836879304434*seg15AccX116 rho + 2827676106474245834342178787193840037544341748216796123027103349313762318940*seg15AccY116 rho := by
  rw [add_assoc, seg15AccWeighted116]
  unfold Seg15.relationRow834 at r834
  simp only [Seg15.relationLc544, Seg15.relationLc544Part0, Seg15.relationLc544Part1, Seg15.relationLc544Part2, Seg15.relationLc544Part3, Seg15.relationLc544Part4, Seg15.relationLc544Part5, Seg15.relationLc544Part6, Seg15.relationLc544Part7] at r834
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r834 ⊢
  exact r834

theorem seg15_prefix_117_selX (rho : Nat -> Seg15.F)
    (r835 : Seg15.relationRow835 rho) :
    (1*rho 16247)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX116 rho + rho 16962) = rho 16964 := by
  rw [seg15AccX116_sum]
  unfold Seg15.relationRow835 at r835
  simp only [Seg15.relationLc545, Seg15.relationLc545Part0, Seg15.relationLc545Part1, Seg15.relationLc545Part2, Seg15.relationLc545Part3] at r835
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r835 ⊢
  exact r835

theorem seg15_prefix_117_selY (rho : Nat -> Seg15.F)
    (r836 : Seg15.relationRow836 rho) :
    (1*rho 16247)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY116 rho + rho 16963) = rho 16965 := by
  rw [seg15AccY116_sum]
  unfold Seg15.relationRow836 at r836
  simp only [Seg15.relationLc546, Seg15.relationLc546Part0, Seg15.relationLc546Part1, Seg15.relationLc546Part2, Seg15.relationLc546Part3] at r836
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r836 ⊢
  exact r836

theorem seg15_prefix_118_v2 (rho : Nat -> Seg15.F)
    (r837 : Seg15.relationRow837 rho) :
    (1872614935516469004704786918895811090880792337026629918254087619510321198958*rho 16130 + 2126598159510820021254829562976983677454766925005966503301667636085195673024*seg15AccX117 rho)*(2220347505511572727384220613898333383183238585915327966518800422393436414609 + 3238821507913782672875285228055567261226513652148746145790112441631656539344*rho 16130 + 2220347505511572727384220613898333383183238585915327966518800422393436414609*seg15AccY117 rho) = rho 16966 := by
  rw [seg15AccX117_sum, seg15AccY117_sum]
  unfold Seg15.relationRow837 at r837
  simp only [Seg15.relationLc547, Seg15.relationLc547Part0, Seg15.relationLc547Part1, Seg15.relationLc547Part2, Seg15.relationLc547Part3] at r837
  simp only [Seg15.relationLc548, Seg15.relationLc548Part0, Seg15.relationLc548Part1, Seg15.relationLc548Part2, Seg15.relationLc548Part3] at r837
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r837 ⊢
  exact r837

theorem seg15_prefix_118_addX (rho : Nat -> Seg15.F)
    (r838 : Seg15.relationRow838 rho) :
    rho 16967*(1 + rho 16966) = 2220347505511572727384220613898333383183238585915327966518800422393436414609 + 2990663785052608062231974856445947324052871067411346261391574973919925622073*rho 16130 + 4671573049140787090016895498929805110098173636533414969540905916078807028835*seg15AccX117 rho + 2220347505511572727384220613898333383183238585915327966518800422393436414609*seg15AccY117 rho := by
  rw [add_assoc, seg15AccWeighted117]
  unfold Seg15.relationRow838 at r838
  simp only [Seg15.relationLc549, Seg15.relationLc549Part0, Seg15.relationLc549Part1, Seg15.relationLc549Part2, Seg15.relationLc549Part3, Seg15.relationLc549Part4, Seg15.relationLc549Part5, Seg15.relationLc549Part6, Seg15.relationLc549Part7] at r838
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r838 ⊢
  exact r838

theorem seg15_prefix_118_addY (rho : Nat -> Seg15.F)
    (r839 : Seg15.relationRow839 rho) :
    rho 16968*(1 + (-1)*rho 16966) = 4671573049140787090016895498929805110098173636533414969540905916078807028835 + 7172988848799631013344220002171542030874312246551264557875723659804867424013*rho 16130 + 2220347505511572727384220613898333383183238585915327966518800422393436414609*seg15AccX117 rho + 4671573049140787090016895498929805110098173636533414969540905916078807028835*seg15AccY117 rho := by
  rw [add_assoc, seg15AccWeighted117]
  unfold Seg15.relationRow839 at r839
  simp only [Seg15.relationLc550, Seg15.relationLc550Part0, Seg15.relationLc550Part1, Seg15.relationLc550Part2, Seg15.relationLc550Part3, Seg15.relationLc550Part4, Seg15.relationLc550Part5, Seg15.relationLc550Part6, Seg15.relationLc550Part7] at r839
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r839 ⊢
  exact r839

theorem seg15_prefix_118_selX (rho : Nat -> Seg15.F)
    (r840 : Seg15.relationRow840 rho) :
    (1*rho 16248)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX117 rho + rho 16967) = rho 16969 := by
  rw [seg15AccX117_sum]
  unfold Seg15.relationRow840 at r840
  simp only [Seg15.relationLc551, Seg15.relationLc551Part0, Seg15.relationLc551Part1, Seg15.relationLc551Part2, Seg15.relationLc551Part3] at r840
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r840 ⊢
  exact r840

theorem seg15_prefix_118_selY (rho : Nat -> Seg15.F)
    (r841 : Seg15.relationRow841 rho) :
    (1*rho 16248)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY117 rho + rho 16968) = rho 16970 := by
  rw [seg15AccY117_sum]
  unfold Seg15.relationRow841 at r841
  simp only [Seg15.relationLc552, Seg15.relationLc552Part0, Seg15.relationLc552Part1, Seg15.relationLc552Part2, Seg15.relationLc552Part3] at r841
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r841 ⊢
  exact r841

theorem seg15_prefix_119_v2 (rho : Nat -> Seg15.F)
    (r842 : Seg15.relationRow842 rho) :
    (1691399493890240984781845757328749935483621953555455768353456418081471202157*rho 16130 + 3367912820253366001216961945321133635042119018370843707781355082706130612868*seg15AccX118 rho)*(2442799860589911281946982784576947894968376621422175574069845981874629279962 + 7148355880814354094015135364292496029766550086632406855091613901944786716636*rho 16130 + 2442799860589911281946982784576947894968376621422175574069845981874629279962*seg15AccY118 rho) = rho 16971 := by
  rw [seg15AccX118_sum, seg15AccY118_sum]
  unfold Seg15.relationRow842 at r842
  simp only [Seg15.relationLc553, Seg15.relationLc553Part0, Seg15.relationLc553Part1, Seg15.relationLc553Part2, Seg15.relationLc553Part3] at r842
  simp only [Seg15.relationLc554, Seg15.relationLc554Part0, Seg15.relationLc554Part1, Seg15.relationLc554Part2, Seg15.relationLc554Part3] at r842
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r842 ⊢
  exact r842

theorem seg15_prefix_119_addX (rho : Nat -> Seg15.F)
    (r843 : Seg15.relationRow843 rho) :
    rho 16972*(1 + rho 16971) = 2442799860589911281946982784576947894968376621422175574069845981874629279962 + 2581471041664381557690144267234661444419732512422481387008920088455556254739*rho 16130 + 5843195289349734376921966595166750540950238904167614777918708797732569162598*seg15AccX118 rho + 2442799860589911281946982784576947894968376621422175574069845981874629279962*seg15AccY118 rho := by
  rw [add_assoc, seg15AccWeighted118]
  unfold Seg15.relationRow843 at r843
  simp only [Seg15.relationLc555, Seg15.relationLc555Part0, Seg15.relationLc555Part1, Seg15.relationLc555Part2, Seg15.relationLc555Part3, Seg15.relationLc555Part4, Seg15.relationLc555Part5, Seg15.relationLc555Part6, Seg15.relationLc555Part7] at r843
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r843 ⊢
  exact r843

theorem seg15_prefix_119_addY (rho : Nat -> Seg15.F)
    (r844 : Seg15.relationRow844 rho) :
    rho 16973*(1 + (-1)*rho 16971) = 5843195289349734376921966595166750540950238904167614777918708797732569162598 + 6619964280680378555219129946295155890115709779695071405095337864393796333509*rho 16130 + 2442799860589911281946982784576947894968376621422175574069845981874629279962*seg15AccX118 rho + 5843195289349734376921966595166750540950238904167614777918708797732569162598*seg15AccY118 rho := by
  rw [add_assoc, seg15AccWeighted118]
  unfold Seg15.relationRow844 at r844
  simp only [Seg15.relationLc556, Seg15.relationLc556Part0, Seg15.relationLc556Part1, Seg15.relationLc556Part2, Seg15.relationLc556Part3, Seg15.relationLc556Part4, Seg15.relationLc556Part5, Seg15.relationLc556Part6, Seg15.relationLc556Part7] at r844
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r844 ⊢
  exact r844

theorem seg15_prefix_119_selX (rho : Nat -> Seg15.F)
    (r845 : Seg15.relationRow845 rho) :
    (1*rho 16249)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX118 rho + rho 16972) = rho 16974 := by
  rw [seg15AccX118_sum]
  unfold Seg15.relationRow845 at r845
  simp only [Seg15.relationLc557, Seg15.relationLc557Part0, Seg15.relationLc557Part1, Seg15.relationLc557Part2, Seg15.relationLc557Part3] at r845
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r845 ⊢
  exact r845

theorem seg15_prefix_119_selY (rho : Nat -> Seg15.F)
    (r846 : Seg15.relationRow846 rho) :
    (1*rho 16249)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY118 rho + rho 16973) = rho 16975 := by
  rw [seg15AccY118_sum]
  unfold Seg15.relationRow846 at r846
  simp only [Seg15.relationLc558, Seg15.relationLc558Part0, Seg15.relationLc558Part1, Seg15.relationLc558Part2, Seg15.relationLc558Part3] at r846
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r846 ⊢
  exact r846

theorem seg15_prefix_120_v2 (rho : Nat -> Seg15.F)
    (r847 : Seg15.relationRow847 rho) :
    (7127797571030210124345768641519536854686265690026118826828166574414757839431*rho 16130 + 2017692046407117271774974818426083152699470227008509506383363299947661421324*seg15AccX119 rho)*(8235182039777681632574425548791168984093363629789555229274299810296150947985 + 2430083545376283142446969529024895585487534495302192570610260792855878618882*rho 16130 + 8235182039777681632574425548791168984093363629789555229274299810296150947985*seg15AccY119 rho) = rho 16976 := by
  rw [seg15AccX119_sum, seg15AccY119_sum]
  unfold Seg15.relationRow847 at r847
  simp only [Seg15.relationLc559, Seg15.relationLc559Part0, Seg15.relationLc559Part1, Seg15.relationLc559Part2, Seg15.relationLc559Part3] at r847
  simp only [Seg15.relationLc560, Seg15.relationLc560Part0, Seg15.relationLc560Part1, Seg15.relationLc560Part2, Seg15.relationLc560Part3] at r847
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r847 ⊢
  exact r847

theorem seg15_prefix_120_addX (rho : Nat -> Seg15.F)
    (r848 : Seg15.relationRow848 rho) :
    rho 16977*(1 + rho 16976) = 8235182039777681632574425548791168984093363629789555229274299810296150947985 + 2024335906235100794940851464668528072503027697141826069434585215898074252427*rho 16130 + 5292083344493317553914200789120123689853451476886346023100887221235221234997*seg15AccX119 rho + 8235182039777681632574425548791168984093363629789555229274299810296150947985*seg15AccY119 rho := by
  rw [add_assoc, seg15AccWeighted119]
  unfold Seg15.relationRow848 at r848
  simp only [Seg15.relationLc561, Seg15.relationLc561Part0, Seg15.relationLc561Part1, Seg15.relationLc561Part2, Seg15.relationLc561Part3, Seg15.relationLc561Part4, Seg15.relationLc561Part5, Seg15.relationLc561Part6, Seg15.relationLc561Part7] at r848
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r848 ⊢
  exact r848

theorem seg15_prefix_120_addY (rho : Nat -> Seg15.F)
    (r849 : Seg15.relationRow849 rho) :
    rho 16978*(1 + (-1)*rho 16976) = 5292083344493317553914200789120123689853451476886346023100887221235221234997 + 768630642295931472468064850845617638711953339610270448700590788007616351667*rho 16130 + 8235182039777681632574425548791168984093363629789555229274299810296150947985*seg15AccX119 rho + 5292083344493317553914200789120123689853451476886346023100887221235221234997*seg15AccY119 rho := by
  rw [add_assoc, seg15AccWeighted119]
  unfold Seg15.relationRow849 at r849
  simp only [Seg15.relationLc562, Seg15.relationLc562Part0, Seg15.relationLc562Part1, Seg15.relationLc562Part2, Seg15.relationLc562Part3, Seg15.relationLc562Part4, Seg15.relationLc562Part5, Seg15.relationLc562Part6, Seg15.relationLc562Part7] at r849
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r849 ⊢
  exact r849

theorem seg15_prefix_120_selX (rho : Nat -> Seg15.F)
    (r850 : Seg15.relationRow850 rho) :
    (1*rho 16250)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX119 rho + rho 16977) = rho 16979 := by
  rw [seg15AccX119_sum]
  unfold Seg15.relationRow850 at r850
  simp only [Seg15.relationLc563, Seg15.relationLc563Part0, Seg15.relationLc563Part1, Seg15.relationLc563Part2, Seg15.relationLc563Part3] at r850
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r850 ⊢
  exact r850

theorem seg15_prefix_120_selY (rho : Nat -> Seg15.F)
    (r851 : Seg15.relationRow851 rho) :
    (1*rho 16250)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY119 rho + rho 16978) = rho 16980 := by
  rw [seg15AccY119_sum]
  unfold Seg15.relationRow851 at r851
  simp only [Seg15.relationLc564, Seg15.relationLc564Part0, Seg15.relationLc564Part1, Seg15.relationLc564Part2, Seg15.relationLc564Part3] at r851
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r851 ⊢
  exact r851


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

