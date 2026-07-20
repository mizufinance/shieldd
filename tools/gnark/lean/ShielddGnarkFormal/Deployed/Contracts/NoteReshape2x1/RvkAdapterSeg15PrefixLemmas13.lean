import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_prefix_131_v2 (rho : Nat -> Seg15.F)
    (r902 : Seg15.relationRow902 rho) :
    (1866814805241085772673212667356012663695540847735184269804539503998595498710*rho 16130 + 6371667047184326709503565647805713250184644331668065658039380068871320237271*seg15AccX130 rho)*(8315752288495446815440754243444095724373121572389092645274803238693531434469 + 8035055261435057508313430386696100386377823167575762190338896894009796030450*rho 16130 + 8315752288495446815440754243444095724373121572389092645274803238693531434469*seg15AccY130 rho) = rho 17031 := by
  rw [seg15AccX130_sum, seg15AccY130_sum]
  unfold Seg15.relationRow902 at r902
  simp only [Seg15.relationLc625, Seg15.relationLc625Part0, Seg15.relationLc625Part1, Seg15.relationLc625Part2, Seg15.relationLc625Part3, Seg15.relationLc625Part4] at r902
  simp only [Seg15.relationLc626, Seg15.relationLc626Part0, Seg15.relationLc626Part1, Seg15.relationLc626Part2, Seg15.relationLc626Part3, Seg15.relationLc626Part4] at r902
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r902 ⊢
  exact r902

theorem seg15_prefix_131_addX (rho : Nat -> Seg15.F)
    (r903 : Seg15.relationRow903 rho) :
    rho 17032*(1 + rho 17031) = 8315752288495446815440754243444095724373121572389092645274803238693531434469 + 6923162192429016348737674308255948282166001785734126235605888494158379187802*rho 16130 + 155848084497101853705127089467325644646097023424409657793603846456249198406*seg15AccX130 rho + 8315752288495446815440754243444095724373121572389092645274803238693531434469*seg15AccY130 rho := by
  rw [add_assoc, seg15AccWeighted130]
  unfold Seg15.relationRow903 at r903
  simp only [Seg15.relationLc627, Seg15.relationLc627Part0, Seg15.relationLc627Part1, Seg15.relationLc627Part2, Seg15.relationLc627Part3, Seg15.relationLc627Part4, Seg15.relationLc627Part5, Seg15.relationLc627Part6, Seg15.relationLc627Part7, Seg15.relationLc627Part8] at r903
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r903 ⊢
  exact r903

theorem seg15_prefix_131_addY (rho : Nat -> Seg15.F)
    (r904 : Seg15.relationRow904 rho) :
    rho 17033*(1 + (-1)*rho 17031) = 155848084497101853705127089467325644646097023424409657793603846456249198406 + 2967446225558022814703410539096345214748111516817570520702980260485598143356*rho 16130 + 8315752288495446815440754243444095724373121572389092645274803238693531434469*seg15AccX130 rho + 155848084497101853705127089467325644646097023424409657793603846456249198406*seg15AccY130 rho := by
  rw [add_assoc, seg15AccWeighted130]
  unfold Seg15.relationRow904 at r904
  simp only [Seg15.relationLc628, Seg15.relationLc628Part0, Seg15.relationLc628Part1, Seg15.relationLc628Part2, Seg15.relationLc628Part3, Seg15.relationLc628Part4, Seg15.relationLc628Part5, Seg15.relationLc628Part6, Seg15.relationLc628Part7, Seg15.relationLc628Part8] at r904
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r904 ⊢
  exact r904

theorem seg15_prefix_131_selX (rho : Nat -> Seg15.F)
    (r905 : Seg15.relationRow905 rho) :
    (1*rho 16261)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX130 rho + rho 17032) = rho 17034 := by
  rw [seg15AccX130_sum]
  unfold Seg15.relationRow905 at r905
  simp only [Seg15.relationLc629, Seg15.relationLc629Part0, Seg15.relationLc629Part1, Seg15.relationLc629Part2, Seg15.relationLc629Part3, Seg15.relationLc629Part4] at r905
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r905 ⊢
  exact r905

theorem seg15_prefix_131_selY (rho : Nat -> Seg15.F)
    (r906 : Seg15.relationRow906 rho) :
    (1*rho 16261)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY130 rho + rho 17033) = rho 17035 := by
  rw [seg15AccY130_sum]
  unfold Seg15.relationRow906 at r906
  simp only [Seg15.relationLc630, Seg15.relationLc630Part0, Seg15.relationLc630Part1, Seg15.relationLc630Part2, Seg15.relationLc630Part3, Seg15.relationLc630Part4] at r906
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r906 ⊢
  exact r906

theorem seg15_prefix_132_v2 (rho : Nat -> Seg15.F)
    (r907 : Seg15.relationRow907 rho) :
    (1533107064713739853198800681749478654974420030752112990442623442158134514998*rho 16130 + 7685641275510751267434062841131440909524057548538908820526924562368135360637*seg15AccX131 rho)*(708319964070499435326649883584500753584183235012429328809859440041531789954 + 404578301454555449838109131566136413595117364922563879558071765960199684880*rho 16130 + 708319964070499435326649883584500753584183235012429328809859440041531789954*seg15AccY131 rho) = rho 17036 := by
  rw [seg15AccX131_sum, seg15AccY131_sum]
  unfold Seg15.relationRow907 at r907
  simp only [Seg15.relationLc631, Seg15.relationLc631Part0, Seg15.relationLc631Part1, Seg15.relationLc631Part2, Seg15.relationLc631Part3, Seg15.relationLc631Part4] at r907
  simp only [Seg15.relationLc632, Seg15.relationLc632Part0, Seg15.relationLc632Part1, Seg15.relationLc632Part2, Seg15.relationLc632Part3, Seg15.relationLc632Part4] at r907
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r907 ⊢
  exact r907

theorem seg15_prefix_132_addX (rho : Nat -> Seg15.F)
    (r908 : Seg15.relationRow908 rho) :
    rho 17037*(1 + rho 17036) = 708319964070499435326649883584500753584183235012429328809859440041531789954 + 8343606595212015146865537674042581838210320453922329978308983926916042244758*rho 16130 + 7795711684436215655105315455863648848191172262150966190368738099854387651045*seg15AccX131 rho + 708319964070499435326649883584500753584183235012429328809859440041531789954*seg15AccY131 rho := by
  rw [add_assoc, seg15AccWeighted131]
  unfold Seg15.relationRow908 at r908
  simp only [Seg15.relationLc633, Seg15.relationLc633Part0, Seg15.relationLc633Part1, Seg15.relationLc633Part2, Seg15.relationLc633Part3, Seg15.relationLc633Part4, Seg15.relationLc633Part5, Seg15.relationLc633Part6, Seg15.relationLc633Part7, Seg15.relationLc633Part8] at r908
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r908 ⊢
  exact r908

theorem seg15_prefix_132_addY (rho : Nat -> Seg15.F)
    (r909 : Seg15.relationRow909 rho) :
    rho 17038*(1 + (-1)*rho 17036) = 7795711684436215655105315455863648848191172262150966190368738099854387651045 + 2357664860580816865395151332838189685037838907976348089818391478630425954683*rho 16130 + 708319964070499435326649883584500753584183235012429328809859440041531789954*seg15AccX131 rho + 7795711684436215655105315455863648848191172262150966190368738099854387651045*seg15AccY131 rho := by
  rw [add_assoc, seg15AccWeighted131]
  unfold Seg15.relationRow909 at r909
  simp only [Seg15.relationLc634, Seg15.relationLc634Part0, Seg15.relationLc634Part1, Seg15.relationLc634Part2, Seg15.relationLc634Part3, Seg15.relationLc634Part4, Seg15.relationLc634Part5, Seg15.relationLc634Part6, Seg15.relationLc634Part7, Seg15.relationLc634Part8] at r909
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r909 ⊢
  exact r909

theorem seg15_prefix_132_selX (rho : Nat -> Seg15.F)
    (r910 : Seg15.relationRow910 rho) :
    (1*rho 16262)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX131 rho + rho 17037) = rho 17039 := by
  rw [seg15AccX131_sum]
  unfold Seg15.relationRow910 at r910
  simp only [Seg15.relationLc635, Seg15.relationLc635Part0, Seg15.relationLc635Part1, Seg15.relationLc635Part2, Seg15.relationLc635Part3, Seg15.relationLc635Part4] at r910
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r910 ⊢
  exact r910

theorem seg15_prefix_132_selY (rho : Nat -> Seg15.F)
    (r911 : Seg15.relationRow911 rho) :
    (1*rho 16262)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY131 rho + rho 17038) = rho 17040 := by
  rw [seg15AccY131_sum]
  unfold Seg15.relationRow911 at r911
  simp only [Seg15.relationLc636, Seg15.relationLc636Part0, Seg15.relationLc636Part1, Seg15.relationLc636Part2, Seg15.relationLc636Part3, Seg15.relationLc636Part4] at r911
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r911 ⊢
  exact r911

theorem seg15_prefix_133_v2 (rho : Nat -> Seg15.F)
    (r912 : Seg15.relationRow912 rho) :
    (191995865608900380973939639003477078910801454989591405516300774439642051799*rho 16130 + 3994026013218413113555076699488428925687662647002644743993134519597452118002*seg15AccX132 rho)*(6090960902211025318954194945509402949573732143831061940818648841608928736503 + 5369222675224696627787843547543016413626997945559590293458623514399306051644*rho 16130 + 6090960902211025318954194945509402949573732143831061940818648841608928736503*seg15AccY132 rho) = rho 17041 := by
  rw [seg15AccX132_sum, seg15AccY132_sum]
  unfold Seg15.relationRow912 at r912
  simp only [Seg15.relationLc637, Seg15.relationLc637Part0, Seg15.relationLc637Part1, Seg15.relationLc637Part2, Seg15.relationLc637Part3, Seg15.relationLc637Part4] at r912
  simp only [Seg15.relationLc638, Seg15.relationLc638Part0, Seg15.relationLc638Part1, Seg15.relationLc638Part2, Seg15.relationLc638Part3, Seg15.relationLc638Part4] at r912
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r912 ⊢
  exact r912

theorem seg15_prefix_133_addX (rho : Nat -> Seg15.F)
    (r913 : Seg15.relationRow913 rho) :
    rho 17042*(1 + rho 17041) = 6090960902211025318954194945509402949573732143831061940818648841608928736503 + 6657898233765606149787076330203491894607865338793954085608129944042591487344*rho 16130 + 1259186300316446575314639622360537692169759140505240439362743525217620526212*seg15AccX132 rho + 6090960902211025318954194945509402949573732143831061940818648841608928736503*seg15AccY132 rho := by
  rw [add_assoc, seg15AccWeighted132]
  unfold Seg15.relationRow913 at r913
  simp only [Seg15.relationLc639, Seg15.relationLc639Part0, Seg15.relationLc639Part1, Seg15.relationLc639Part2, Seg15.relationLc639Part3, Seg15.relationLc639Part4, Seg15.relationLc639Part5, Seg15.relationLc639Part6, Seg15.relationLc639Part7, Seg15.relationLc639Part8] at r913
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r913 ⊢
  exact r913

theorem seg15_prefix_133_addY (rho : Nat -> Seg15.F)
    (r914 : Seg15.relationRow914 rho) :
    rho 17043*(1 + (-1)*rho 17041) = 1259186300316446575314639622360537692169759140505240439362743525217620526212 + 3112293859876606234205874932513227378808768907034857639058815376386098008592*rho 16130 + 6090960902211025318954194945509402949573732143831061940818648841608928736503*seg15AccX132 rho + 1259186300316446575314639622360537692169759140505240439362743525217620526212*seg15AccY132 rho := by
  rw [add_assoc, seg15AccWeighted132]
  unfold Seg15.relationRow914 at r914
  simp only [Seg15.relationLc640, Seg15.relationLc640Part0, Seg15.relationLc640Part1, Seg15.relationLc640Part2, Seg15.relationLc640Part3, Seg15.relationLc640Part4, Seg15.relationLc640Part5, Seg15.relationLc640Part6, Seg15.relationLc640Part7, Seg15.relationLc640Part8] at r914
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r914 ⊢
  exact r914

theorem seg15_prefix_133_selX (rho : Nat -> Seg15.F)
    (r915 : Seg15.relationRow915 rho) :
    (1*rho 16263)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX132 rho + rho 17042) = rho 17044 := by
  rw [seg15AccX132_sum]
  unfold Seg15.relationRow915 at r915
  simp only [Seg15.relationLc641, Seg15.relationLc641Part0, Seg15.relationLc641Part1, Seg15.relationLc641Part2, Seg15.relationLc641Part3, Seg15.relationLc641Part4] at r915
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r915 ⊢
  exact r915

theorem seg15_prefix_133_selY (rho : Nat -> Seg15.F)
    (r916 : Seg15.relationRow916 rho) :
    (1*rho 16263)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY132 rho + rho 17043) = rho 17045 := by
  rw [seg15AccY132_sum]
  unfold Seg15.relationRow916 at r916
  simp only [Seg15.relationLc642, Seg15.relationLc642Part0, Seg15.relationLc642Part1, Seg15.relationLc642Part2, Seg15.relationLc642Part3, Seg15.relationLc642Part4] at r916
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r916 ⊢
  exact r916

theorem seg15_prefix_134_v2 (rho : Nat -> Seg15.F)
    (r917 : Seg15.relationRow917 rho) :
    (8334226194666000076422094566176775911994127709825910102492242190812320025554*rho 16130 + 8350735386965930517301024222238984186980631401436540132621059471273859939706*seg15AccX133 rho)*(4776301977164444395672264858506678016854284792231206224229539531243060966607 + 380793711990470464493962683016616774893169390026769268098521793754562433091*rho 16130 + 4776301977164444395672264858506678016854284792231206224229539531243060966607*seg15AccY133 rho) = rho 17046 := by
  rw [seg15AccX133_sum, seg15AccY133_sum]
  unfold Seg15.relationRow917 at r917
  simp only [Seg15.relationLc643, Seg15.relationLc643Part0, Seg15.relationLc643Part1, Seg15.relationLc643Part2, Seg15.relationLc643Part3, Seg15.relationLc643Part4] at r917
  simp only [Seg15.relationLc644, Seg15.relationLc644Part0, Seg15.relationLc644Part1, Seg15.relationLc644Part2, Seg15.relationLc644Part3, Seg15.relationLc644Part4] at r917
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r917 ⊢
  exact r917

theorem seg15_prefix_134_addX (rho : Nat -> Seg15.F)
    (r918 : Seg15.relationRow918 rho) :
    rho 17047*(1 + rho 17046) = 4776301977164444395672264858506678016854284792231206224229539531243060966607 + 36941004034677040948635904518525085393461548302413755168539434819459346161*rho 16130 + 2409477756254482908240827307683929343827087043683907810653709720296644559667*seg15AccX133 rho + 4776301977164444395672264858506678016854284792231206224229539531243060966607*seg15AccY133 rho := by
  rw [add_assoc, seg15AccWeighted133]
  unfold Seg15.relationRow918 at r918
  simp only [Seg15.relationLc645, Seg15.relationLc645Part0, Seg15.relationLc645Part1, Seg15.relationLc645Part2, Seg15.relationLc645Part3, Seg15.relationLc645Part4, Seg15.relationLc645Part5, Seg15.relationLc645Part6, Seg15.relationLc645Part7, Seg15.relationLc645Part8] at r918
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r918 ⊢
  exact r918

theorem seg15_prefix_134_addY (rho : Nat -> Seg15.F)
    (r919 : Seg15.relationRow919 rho) :
    rho 17048*(1 + (-1)*rho 17046) = 2409477756254482908240827307683929343827087043683907810653709720296644559667 + 6036862831985683245651487661710623165633320395046026221911072481686485751233*rho 16130 + 4776301977164444395672264858506678016854284792231206224229539531243060966607*seg15AccX133 rho + 2409477756254482908240827307683929343827087043683907810653709720296644559667*seg15AccY133 rho := by
  rw [add_assoc, seg15AccWeighted133]
  unfold Seg15.relationRow919 at r919
  simp only [Seg15.relationLc646, Seg15.relationLc646Part0, Seg15.relationLc646Part1, Seg15.relationLc646Part2, Seg15.relationLc646Part3, Seg15.relationLc646Part4, Seg15.relationLc646Part5, Seg15.relationLc646Part6, Seg15.relationLc646Part7, Seg15.relationLc646Part8] at r919
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r919 ⊢
  exact r919

theorem seg15_prefix_134_selX (rho : Nat -> Seg15.F)
    (r920 : Seg15.relationRow920 rho) :
    (1*rho 16264)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX133 rho + rho 17047) = rho 17049 := by
  rw [seg15AccX133_sum]
  unfold Seg15.relationRow920 at r920
  simp only [Seg15.relationLc647, Seg15.relationLc647Part0, Seg15.relationLc647Part1, Seg15.relationLc647Part2, Seg15.relationLc647Part3, Seg15.relationLc647Part4] at r920
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r920 ⊢
  exact r920

theorem seg15_prefix_134_selY (rho : Nat -> Seg15.F)
    (r921 : Seg15.relationRow921 rho) :
    (1*rho 16264)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY133 rho + rho 17048) = rho 17050 := by
  rw [seg15AccY133_sum]
  unfold Seg15.relationRow921 at r921
  simp only [Seg15.relationLc648, Seg15.relationLc648Part0, Seg15.relationLc648Part1, Seg15.relationLc648Part2, Seg15.relationLc648Part3, Seg15.relationLc648Part4] at r921
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r921 ⊢
  exact r921

theorem seg15_prefix_135_v2 (rho : Nat -> Seg15.F)
    (r922 : Seg15.relationRow922 rho) :
    (4659002157157882760089661487130649427326522575034374982504730073283696606459*rho 16130 + 1182996801743943238222365565355394233708584573345921108487852703254453477350*seg15AccX134 rho)*(1148300579578564163727623149367671871394774284025648335239073682646191848622 + 7378894693786544031947238095630110179035204260913025452629774386744340172769*rho 16130 + 1148300579578564163727623149367671871394774284025648335239073682646191848622*seg15AccY134 rho) = rho 17051 := by
  rw [seg15AccX134_sum, seg15AccY134_sum]
  unfold Seg15.relationRow922 at r922
  simp only [Seg15.relationLc649, Seg15.relationLc649Part0, Seg15.relationLc649Part1, Seg15.relationLc649Part2, Seg15.relationLc649Part3, Seg15.relationLc649Part4] at r922
  simp only [Seg15.relationLc650, Seg15.relationLc650Part0, Seg15.relationLc650Part1, Seg15.relationLc650Part2, Seg15.relationLc650Part3, Seg15.relationLc650Part4] at r922
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r922 ⊢
  exact r922

theorem seg15_prefix_135_addX (rho : Nat -> Seg15.F)
    (r923 : Seg15.relationRow923 rho) :
    rho 17052*(1 + rho 17051) = 1148300579578564163727623149367671871394774284025648335239073682646191848622 + 6402098066794563970468588950616402586663725199433751051837047812928448237298*rho 16130 + 3318357859441648340556629449817626986751705096127513963875408793405236418477*seg15AccX134 rho + 1148300579578564163727623149367671871394774284025648335239073682646191848622*seg15AccY134 rho := by
  rw [add_assoc, seg15AccWeighted134]
  unfold Seg15.relationRow923 at r923
  simp only [Seg15.relationLc651, Seg15.relationLc651Part0, Seg15.relationLc651Part1, Seg15.relationLc651Part2, Seg15.relationLc651Part3, Seg15.relationLc651Part4, Seg15.relationLc651Part5, Seg15.relationLc651Part6, Seg15.relationLc651Part7, Seg15.relationLc651Part8] at r923
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r923 ⊢
  exact r923

theorem seg15_prefix_135_addY (rho : Nat -> Seg15.F)
    (r924 : Seg15.relationRow924 rho) :
    rho 17053*(1 + (-1)*rho 17051) = 3318357859441648340556629449817626986751705096127513963875408793405236418477 + 4369131667080006902416927500337444541983085711333428144390077593133915563395*rho 16130 + 1148300579578564163727623149367671871394774284025648335239073682646191848622*seg15AccX134 rho + 3318357859441648340556629449817626986751705096127513963875408793405236418477*seg15AccY134 rho := by
  rw [add_assoc, seg15AccWeighted134]
  unfold Seg15.relationRow924 at r924
  simp only [Seg15.relationLc652, Seg15.relationLc652Part0, Seg15.relationLc652Part1, Seg15.relationLc652Part2, Seg15.relationLc652Part3, Seg15.relationLc652Part4, Seg15.relationLc652Part5, Seg15.relationLc652Part6, Seg15.relationLc652Part7, Seg15.relationLc652Part8] at r924
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r924 ⊢
  exact r924

theorem seg15_prefix_135_selX (rho : Nat -> Seg15.F)
    (r925 : Seg15.relationRow925 rho) :
    (1*rho 16265)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX134 rho + rho 17052) = rho 17054 := by
  rw [seg15AccX134_sum]
  unfold Seg15.relationRow925 at r925
  simp only [Seg15.relationLc653, Seg15.relationLc653Part0, Seg15.relationLc653Part1, Seg15.relationLc653Part2, Seg15.relationLc653Part3, Seg15.relationLc653Part4] at r925
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r925 ⊢
  exact r925

theorem seg15_prefix_135_selY (rho : Nat -> Seg15.F)
    (r926 : Seg15.relationRow926 rho) :
    (1*rho 16265)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY134 rho + rho 17053) = rho 17055 := by
  rw [seg15AccY134_sum]
  unfold Seg15.relationRow926 at r926
  simp only [Seg15.relationLc654, Seg15.relationLc654Part0, Seg15.relationLc654Part1, Seg15.relationLc654Part2, Seg15.relationLc654Part3, Seg15.relationLc654Part4] at r926
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r926 ⊢
  exact r926

theorem seg15_prefix_136_v2 (rho : Nat -> Seg15.F)
    (r927 : Seg15.relationRow927 rho) :
    (4769292595969500774517643306856801806102352804507087964477536699275377005469*rho 16130 + 8137632229673021427629908971617522457232664963056919591413255887339944990409*seg15AccX135 rho)*(5459638828393090938740191583842805453476194653234771289309407188511644865526 + 3829596561026703133464657413286632844617675577922328941474428319150653561380*rho 16130 + 5459638828393090938740191583842805453476194653234771289309407188511644865526*seg15AccY135 rho) = rho 17056 := by
  rw [seg15AccX135_sum, seg15AccY135_sum]
  unfold Seg15.relationRow927 at r927
  simp only [Seg15.relationLc655, Seg15.relationLc655Part0, Seg15.relationLc655Part1, Seg15.relationLc655Part2, Seg15.relationLc655Part3, Seg15.relationLc655Part4] at r927
  simp only [Seg15.relationLc656, Seg15.relationLc656Part0, Seg15.relationLc656Part1, Seg15.relationLc656Part2, Seg15.relationLc656Part3, Seg15.relationLc656Part4] at r927
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r927 ⊢
  exact r927

theorem seg15_prefix_136_addX (rho : Nat -> Seg15.F)
    (r928 : Seg15.relationRow928 rho) :
    rho 17057*(1 + rho 17056) = 5459638828393090938740191583842805453476194653234771289309407188511644865526 + 2931103548540782651560121171320131295032459678182143087574836251588213840107*rho 16130 + 8287825970716770261139075480807719775390730981251142702943212584980649099473*seg15AccX135 rho + 5459638828393090938740191583842805453476194653234771289309407188511644865526*seg15AccY135 rho := by
  rw [add_assoc, seg15AccWeighted135]
  unfold Seg15.relationRow928 at r928
  simp only [Seg15.relationLc657, Seg15.relationLc657Part0, Seg15.relationLc657Part1, Seg15.relationLc657Part2, Seg15.relationLc657Part3, Seg15.relationLc657Part4, Seg15.relationLc657Part5, Seg15.relationLc657Part6, Seg15.relationLc657Part7, Seg15.relationLc657Part8] at r928
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r928 ⊢
  exact r928

theorem seg15_prefix_136_addY (rho : Nat -> Seg15.F)
    (r929 : Seg15.relationRow929 rho) :
    rho 17058*(1 + (-1)*rho 17056) = 8287825970716770261139075480807719775390730981251142702943212584980649099473 + 1955362291839259112086866644480913850363730902054284254394140156483786318216*rho 16130 + 5459638828393090938740191583842805453476194653234771289309407188511644865526*seg15AccX135 rho + 8287825970716770261139075480807719775390730981251142702943212584980649099473*seg15AccY135 rho := by
  rw [add_assoc, seg15AccWeighted135]
  unfold Seg15.relationRow929 at r929
  simp only [Seg15.relationLc658, Seg15.relationLc658Part0, Seg15.relationLc658Part1, Seg15.relationLc658Part2, Seg15.relationLc658Part3, Seg15.relationLc658Part4, Seg15.relationLc658Part5, Seg15.relationLc658Part6, Seg15.relationLc658Part7, Seg15.relationLc658Part8] at r929
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r929 ⊢
  exact r929

theorem seg15_prefix_136_selX (rho : Nat -> Seg15.F)
    (r930 : Seg15.relationRow930 rho) :
    (1*rho 16266)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX135 rho + rho 17057) = rho 17059 := by
  rw [seg15AccX135_sum]
  unfold Seg15.relationRow930 at r930
  simp only [Seg15.relationLc659, Seg15.relationLc659Part0, Seg15.relationLc659Part1, Seg15.relationLc659Part2, Seg15.relationLc659Part3, Seg15.relationLc659Part4] at r930
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r930 ⊢
  exact r930

theorem seg15_prefix_136_selY (rho : Nat -> Seg15.F)
    (r931 : Seg15.relationRow931 rho) :
    (1*rho 16266)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY135 rho + rho 17058) = rho 17060 := by
  rw [seg15AccY135_sum]
  unfold Seg15.relationRow931 at r931
  simp only [Seg15.relationLc660, Seg15.relationLc660Part0, Seg15.relationLc660Part1, Seg15.relationLc660Part2, Seg15.relationLc660Part3, Seg15.relationLc660Part4] at r931
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r931 ⊢
  exact r931

theorem seg15_prefix_137_v2 (rho : Nat -> Seg15.F)
    (r932 : Seg15.relationRow932 rho) :
    (6476161284874086005951938699175597436841750270565852906553533635919583577062*rho 16130 + 5111288782486129139466231775079191268673243399580435556710682586267248156842*seg15AccX136 rho)*(7345501110400130993507053772883707881971492479226325888287407262581860246816 + 2725145222668639968132482018961228677834756799767864225079778248528929615320*rho 16130 + 7345501110400130993507053772883707881971492479226325888287407262581860246816*seg15AccY136 rho) = rho 17061 := by
  rw [seg15AccX136_sum, seg15AccY136_sum]
  unfold Seg15.relationRow932 at r932
  simp only [Seg15.relationLc661, Seg15.relationLc661Part0, Seg15.relationLc661Part1, Seg15.relationLc661Part2, Seg15.relationLc661Part3, Seg15.relationLc661Part4] at r932
  simp only [Seg15.relationLc662, Seg15.relationLc662Part0, Seg15.relationLc662Part1, Seg15.relationLc662Part2, Seg15.relationLc662Part3, Seg15.relationLc662Part4] at r932
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r932 ⊢
  exact r932

theorem seg15_prefix_137_addX (rho : Nat -> Seg15.F)
    (r933 : Seg15.relationRow933 rho) :
    rho 17062*(1 + rho 17061) = 7345501110400130993507053772883707881971492479226325888287407262581860246816 + 2853075358388319132348684952077529634918092523154987272138248635537272216887*rho 16130 + 24053949943036442414252509528411639695359297610331991453224942149489083770*seg15AccX136 rho + 7345501110400130993507053772883707881971492479226325888287407262581860246816*seg15AccY136 rho := by
  rw [add_assoc, seg15AccWeighted136]
  unfold Seg15.relationRow933 at r933
  simp only [Seg15.relationLc663, Seg15.relationLc663Part0, Seg15.relationLc663Part1, Seg15.relationLc663Part2, Seg15.relationLc663Part3, Seg15.relationLc663Part4, Seg15.relationLc663Part5, Seg15.relationLc663Part6, Seg15.relationLc663Part7, Seg15.relationLc663Part8] at r933
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r933 ⊢
  exact r933

theorem seg15_prefix_137_addY (rho : Nat -> Seg15.F)
    (r934 : Seg15.relationRow934 rho) :
    rho 17063*(1 + (-1)*rho 17061) = 24053949943036442414252509528411639695359297610331991453224942149489083770 + 6471862708434684048315744250881982886539723994818043094341387796529886078606*rho 16130 + 7345501110400130993507053772883707881971492479226325888287407262581860246816*seg15AccX136 rho + 24053949943036442414252509528411639695359297610331991453224942149489083770*seg15AccY136 rho := by
  rw [add_assoc, seg15AccWeighted136]
  unfold Seg15.relationRow934 at r934
  simp only [Seg15.relationLc664, Seg15.relationLc664Part0, Seg15.relationLc664Part1, Seg15.relationLc664Part2, Seg15.relationLc664Part3, Seg15.relationLc664Part4, Seg15.relationLc664Part5, Seg15.relationLc664Part6, Seg15.relationLc664Part7, Seg15.relationLc664Part8] at r934
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r934 ⊢
  exact r934

theorem seg15_prefix_137_selX (rho : Nat -> Seg15.F)
    (r935 : Seg15.relationRow935 rho) :
    (1*rho 16267)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX136 rho + rho 17062) = rho 17064 := by
  rw [seg15AccX136_sum]
  unfold Seg15.relationRow935 at r935
  simp only [Seg15.relationLc665, Seg15.relationLc665Part0, Seg15.relationLc665Part1, Seg15.relationLc665Part2, Seg15.relationLc665Part3, Seg15.relationLc665Part4] at r935
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r935 ⊢
  exact r935

theorem seg15_prefix_137_selY (rho : Nat -> Seg15.F)
    (r936 : Seg15.relationRow936 rho) :
    (1*rho 16267)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY136 rho + rho 17063) = rho 17065 := by
  rw [seg15AccY136_sum]
  unfold Seg15.relationRow936 at r936
  simp only [Seg15.relationLc666, Seg15.relationLc666Part0, Seg15.relationLc666Part1, Seg15.relationLc666Part2, Seg15.relationLc666Part3, Seg15.relationLc666Part4] at r936
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r936 ⊢
  exact r936

theorem seg15_prefix_138_v2 (rho : Nat -> Seg15.F)
    (r937 : Seg15.relationRow937 rho) :
    (7126231453609229208688124226293001670761804314979031296887827715456390188658*rho 16130 + 4662752930448595384754707496749798730457005433492061601753208012070424433443*seg15AccX137 rho)*(4006348523090618789946607227419394772771515300930797206678446529115938155598 + 7954648395084117914549174521325405444860329886984909639008384565435189389663*rho 16130 + 4006348523090618789946607227419394772771515300930797206678446529115938155598*seg15AccY137 rho) = rho 17066 := by
  rw [seg15AccX137_sum, seg15AccY137_sum]
  unfold Seg15.relationRow937 at r937
  simp only [Seg15.relationLc667, Seg15.relationLc667Part0, Seg15.relationLc667Part1, Seg15.relationLc667Part2, Seg15.relationLc667Part3, Seg15.relationLc667Part4] at r937
  simp only [Seg15.relationLc668, Seg15.relationLc668Part0, Seg15.relationLc668Part1, Seg15.relationLc668Part2, Seg15.relationLc668Part3, Seg15.relationLc668Part4] at r937
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r937 ⊢
  exact r937

theorem seg15_prefix_138_addX (rho : Nat -> Seg15.F)
    (r938 : Seg15.relationRow938 rho) :
    rho 17067*(1 + rho 17066) = 4006348523090618789946607227419394772771515300930797206678446529115938155598 + 6190406887574974955622802711632044171719381003998352436771317463010711981889*rho 16130 + 5891143217138704097741485883319916696570498809865311005316547533806703638230*seg15AccX137 rho + 4006348523090618789946607227419394772771515300930797206678446529115938155598*seg15AccY137 rho := by
  rw [add_assoc, seg15AccWeighted137]
  unfold Seg15.relationRow938 at r938
  simp only [Seg15.relationLc669, Seg15.relationLc669Part0, Seg15.relationLc669Part1, Seg15.relationLc669Part2, Seg15.relationLc669Part3, Seg15.relationLc669Part4, Seg15.relationLc669Part5, Seg15.relationLc669Part6, Seg15.relationLc669Part7, Seg15.relationLc669Part8] at r938
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r938 ⊢
  exact r938

theorem seg15_prefix_138_addY (rho : Nat -> Seg15.F)
    (r939 : Seg15.relationRow939 rho) :
    rho 17068*(1 + (-1)*rho 17066) = 5891143217138704097741485883319916696570498809865311005316547533806703638230 + 1456669994443089960625881403451915523345137050588486885534892853786125388712*rho 16130 + 4006348523090618789946607227419394772771515300930797206678446529115938155598*seg15AccX137 rho + 5891143217138704097741485883319916696570498809865311005316547533806703638230*seg15AccY137 rho := by
  rw [add_assoc, seg15AccWeighted137]
  unfold Seg15.relationRow939 at r939
  simp only [Seg15.relationLc670, Seg15.relationLc670Part0, Seg15.relationLc670Part1, Seg15.relationLc670Part2, Seg15.relationLc670Part3, Seg15.relationLc670Part4, Seg15.relationLc670Part5, Seg15.relationLc670Part6, Seg15.relationLc670Part7, Seg15.relationLc670Part8] at r939
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r939 ⊢
  exact r939

theorem seg15_prefix_138_selX (rho : Nat -> Seg15.F)
    (r940 : Seg15.relationRow940 rho) :
    (1*rho 16268)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX137 rho + rho 17067) = rho 17069 := by
  rw [seg15AccX137_sum]
  unfold Seg15.relationRow940 at r940
  simp only [Seg15.relationLc671, Seg15.relationLc671Part0, Seg15.relationLc671Part1, Seg15.relationLc671Part2, Seg15.relationLc671Part3, Seg15.relationLc671Part4] at r940
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r940 ⊢
  exact r940

theorem seg15_prefix_138_selY (rho : Nat -> Seg15.F)
    (r941 : Seg15.relationRow941 rho) :
    (1*rho 16268)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY137 rho + rho 17068) = rho 17070 := by
  rw [seg15AccY137_sum]
  unfold Seg15.relationRow941 at r941
  simp only [Seg15.relationLc672, Seg15.relationLc672Part0, Seg15.relationLc672Part1, Seg15.relationLc672Part2, Seg15.relationLc672Part3, Seg15.relationLc672Part4] at r941
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r941 ⊢
  exact r941

theorem seg15_prefix_139_v2 (rho : Nat -> Seg15.F)
    (r942 : Seg15.relationRow942 rho) :
    (182472210883555855290507371466880334694398402478770867741041033474438456424*rho 16130 + 3503746544360184031918039694239931947828755957816871622237267658653103197351*seg15AccX138 rho)*(5577439207462902357524894594384787989834969029770294569303945878927567553590 + 7270055234765096745190223231333018492000124493956213669318371438125775854168*rho 16130 + 5577439207462902357524894594384787989834969029770294569303945878927567553590*seg15AccY138 rho) = rho 17071 := by
  rw [seg15AccX138_sum, seg15AccY138_sum]
  unfold Seg15.relationRow942 at r942
  simp only [Seg15.relationLc673, Seg15.relationLc673Part0, Seg15.relationLc673Part1, Seg15.relationLc673Part2, Seg15.relationLc673Part3, Seg15.relationLc673Part4] at r942
  simp only [Seg15.relationLc674, Seg15.relationLc674Part0, Seg15.relationLc674Part1, Seg15.relationLc674Part2, Seg15.relationLc674Part3, Seg15.relationLc674Part4] at r942
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r942 ⊢
  exact r942

theorem seg15_prefix_139_addX (rho : Nat -> Seg15.F)
    (r943 : Seg15.relationRow943 rho) :
    rho 17072*(1 + rho 17071) = 5577439207462902357524894594384787989834969029770294569303945878927567553590 + 3935377844875271402497883726336355753967435480902152306902286541774900387859*rho 16130 + 7324724769959182620180019655512046290682782195981947732807861278438353296751*seg15AccX138 rho + 5577439207462902357524894594384787989834969029770294569303945878927567553590*seg15AccY138 rho := by
  rw [add_assoc, seg15AccWeighted138]
  unfold Seg15.relationRow943 at r943
  simp only [Seg15.relationLc675, Seg15.relationLc675Part0, Seg15.relationLc675Part1, Seg15.relationLc675Part2, Seg15.relationLc675Part3, Seg15.relationLc675Part4, Seg15.relationLc675Part5, Seg15.relationLc675Part6, Seg15.relationLc675Part7, Seg15.relationLc675Part8] at r943
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r943 ⊢
  exact r943

theorem seg15_prefix_139_addY (rho : Nat -> Seg15.F)
    (r944 : Seg15.relationRow944 rho) :
    rho 17073*(1 + (-1)*rho 17071) = 7324724769959182620180019655512046290682782195981947732807861278438353296751 + 1323841985273903031499736341692708274137761588453447002420953300902859246398*rho 16130 + 5577439207462902357524894594384787989834969029770294569303945878927567553590*seg15AccX138 rho + 7324724769959182620180019655512046290682782195981947732807861278438353296751*seg15AccY138 rho := by
  rw [add_assoc, seg15AccWeighted138]
  unfold Seg15.relationRow944 at r944
  simp only [Seg15.relationLc676, Seg15.relationLc676Part0, Seg15.relationLc676Part1, Seg15.relationLc676Part2, Seg15.relationLc676Part3, Seg15.relationLc676Part4, Seg15.relationLc676Part5, Seg15.relationLc676Part6, Seg15.relationLc676Part7, Seg15.relationLc676Part8] at r944
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r944 ⊢
  exact r944

theorem seg15_prefix_139_selX (rho : Nat -> Seg15.F)
    (r945 : Seg15.relationRow945 rho) :
    (1*rho 16269)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX138 rho + rho 17072) = rho 17074 := by
  rw [seg15AccX138_sum]
  unfold Seg15.relationRow945 at r945
  simp only [Seg15.relationLc677, Seg15.relationLc677Part0, Seg15.relationLc677Part1, Seg15.relationLc677Part2, Seg15.relationLc677Part3, Seg15.relationLc677Part4] at r945
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r945 ⊢
  exact r945

theorem seg15_prefix_139_selY (rho : Nat -> Seg15.F)
    (r946 : Seg15.relationRow946 rho) :
    (1*rho 16269)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY138 rho + rho 17073) = rho 17075 := by
  rw [seg15AccY138_sum]
  unfold Seg15.relationRow946 at r946
  simp only [Seg15.relationLc678, Seg15.relationLc678Part0, Seg15.relationLc678Part1, Seg15.relationLc678Part2, Seg15.relationLc678Part3, Seg15.relationLc678Part4] at r946
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r946 ⊢
  exact r946

theorem seg15_prefix_140_v2 (rho : Nat -> Seg15.F)
    (r947 : Seg15.relationRow947 rho) :
    (2090884111564989602241473477281820540087453634304452393418639830145704249314*rho 16130 + 7600509590891047986640744943418231369735462568340088378292668398646431841528*seg15AccX139 rho)*(2885118417480949184486992007724055222686903680798514200711411467093900691442 + 5713273981878165677335400987173347988429349823527630223344297681551752627180*rho 16130 + 2885118417480949184486992007724055222686903680798514200711411467093900691442*seg15AccY139 rho) = rho 17076 := by
  rw [seg15AccX139_sum, seg15AccY139_sum]
  unfold Seg15.relationRow947 at r947
  simp only [Seg15.relationLc679, Seg15.relationLc679Part0, Seg15.relationLc679Part1, Seg15.relationLc679Part2, Seg15.relationLc679Part3, Seg15.relationLc679Part4] at r947
  simp only [Seg15.relationLc680, Seg15.relationLc680Part0, Seg15.relationLc680Part1, Seg15.relationLc680Part2, Seg15.relationLc680Part3, Seg15.relationLc680Part4] at r947
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r947 ⊢
  exact r947

theorem seg15_prefix_140_addX (rho : Nat -> Seg15.F)
    (r948 : Seg15.relationRow948 rho) :
    rho 17077*(1 + rho 17076) = 2885118417480949184486992007724055222686903680798514200711411467093900691442 + 2530172012832369939626969960428925718089375679500429214531052972362814057495*rho 16130 + 6727896550385816050555880022393849449142717399188685090496678041488226766294*seg15AccX139 rho + 2885118417480949184486992007724055222686903680798514200711411467093900691442*seg15AccY139 rho := by
  rw [add_assoc, seg15AccWeighted139]
  unfold Seg15.relationRow948 at r948
  simp only [Seg15.relationLc681, Seg15.relationLc681Part0, Seg15.relationLc681Part1, Seg15.relationLc681Part2, Seg15.relationLc681Part3, Seg15.relationLc681Part4, Seg15.relationLc681Part5, Seg15.relationLc681Part6, Seg15.relationLc681Part7, Seg15.relationLc681Part8] at r948
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r948 ⊢
  exact r948

theorem seg15_prefix_140_addY (rho : Nat -> Seg15.F)
    (r949 : Seg15.relationRow949 rho) :
    rho 17078*(1 + (-1)*rho 17076) = 6727896550385816050555880022393849449142717399188685090496678041488226766294 + 4704853232277291898484785826968556517875025073063416699200724012164660423043*rho 16130 + 2885118417480949184486992007724055222686903680798514200711411467093900691442*seg15AccX139 rho + 6727896550385816050555880022393849449142717399188685090496678041488226766294*seg15AccY139 rho := by
  rw [add_assoc, seg15AccWeighted139]
  unfold Seg15.relationRow949 at r949
  simp only [Seg15.relationLc682, Seg15.relationLc682Part0, Seg15.relationLc682Part1, Seg15.relationLc682Part2, Seg15.relationLc682Part3, Seg15.relationLc682Part4, Seg15.relationLc682Part5, Seg15.relationLc682Part6, Seg15.relationLc682Part7, Seg15.relationLc682Part8] at r949
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r949 ⊢
  exact r949

theorem seg15_prefix_140_selX (rho : Nat -> Seg15.F)
    (r950 : Seg15.relationRow950 rho) :
    (1*rho 16270)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX139 rho + rho 17077) = rho 17079 := by
  rw [seg15AccX139_sum]
  unfold Seg15.relationRow950 at r950
  simp only [Seg15.relationLc683, Seg15.relationLc683Part0, Seg15.relationLc683Part1, Seg15.relationLc683Part2, Seg15.relationLc683Part3, Seg15.relationLc683Part4] at r950
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r950 ⊢
  exact r950

theorem seg15_prefix_140_selY (rho : Nat -> Seg15.F)
    (r951 : Seg15.relationRow951 rho) :
    (1*rho 16270)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY139 rho + rho 17078) = rho 17080 := by
  rw [seg15AccY139_sum]
  unfold Seg15.relationRow951 at r951
  simp only [Seg15.relationLc684, Seg15.relationLc684Part0, Seg15.relationLc684Part1, Seg15.relationLc684Part2, Seg15.relationLc684Part3, Seg15.relationLc684Part4] at r951
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r951 ⊢
  exact r951


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

