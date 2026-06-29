import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_prefix_131_v2 (rho : Nat -> Seg31.F)
    (r902 : Seg31.relationRow902 rho) :
    (1866814805241085772673212667356012663695540847735184269804539503998595498710*rho 29271 + 6371667047184326709503565647805713250184644331668065658039380068871320237271*seg31AccX130 rho)*(8315752288495446815440754243444095724373121572389092645274803238693531434469 + 8035055261435057508313430386696100386377823167575762190338896894009796030450*rho 29271 + 8315752288495446815440754243444095724373121572389092645274803238693531434469*seg31AccY130 rho) = rho 30172 := by
  rw [seg31AccX130_sum, seg31AccY130_sum]
  unfold Seg31.relationRow902 at r902
  simp only [Seg31.relationLc625, Seg31.relationLc625Part0, Seg31.relationLc625Part1, Seg31.relationLc625Part2, Seg31.relationLc625Part3, Seg31.relationLc625Part4] at r902
  simp only [Seg31.relationLc626, Seg31.relationLc626Part0, Seg31.relationLc626Part1, Seg31.relationLc626Part2, Seg31.relationLc626Part3, Seg31.relationLc626Part4] at r902
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r902 ⊢
  exact r902

theorem seg31_prefix_131_addX (rho : Nat -> Seg31.F)
    (r903 : Seg31.relationRow903 rho) :
    rho 30173*(1 + rho 30172) = 8315752288495446815440754243444095724373121572389092645274803238693531434469 + 6923162192429016348737674308255948282166001785734126235605888494158379187802*rho 29271 + 155848084497101853705127089467325644646097023424409657793603846456249198406*seg31AccX130 rho + 8315752288495446815440754243444095724373121572389092645274803238693531434469*seg31AccY130 rho := by
  rw [add_assoc, seg31AccWeighted130]
  unfold Seg31.relationRow903 at r903
  simp only [Seg31.relationLc627, Seg31.relationLc627Part0, Seg31.relationLc627Part1, Seg31.relationLc627Part2, Seg31.relationLc627Part3, Seg31.relationLc627Part4, Seg31.relationLc627Part5, Seg31.relationLc627Part6, Seg31.relationLc627Part7, Seg31.relationLc627Part8] at r903
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r903 ⊢
  exact r903

theorem seg31_prefix_131_addY (rho : Nat -> Seg31.F)
    (r904 : Seg31.relationRow904 rho) :
    rho 30174*(1 + (-1)*rho 30172) = 155848084497101853705127089467325644646097023424409657793603846456249198406 + 2967446225558022814703410539096345214748111516817570520702980260485598143356*rho 29271 + 8315752288495446815440754243444095724373121572389092645274803238693531434469*seg31AccX130 rho + 155848084497101853705127089467325644646097023424409657793603846456249198406*seg31AccY130 rho := by
  rw [add_assoc, seg31AccWeighted130]
  unfold Seg31.relationRow904 at r904
  simp only [Seg31.relationLc628, Seg31.relationLc628Part0, Seg31.relationLc628Part1, Seg31.relationLc628Part2, Seg31.relationLc628Part3, Seg31.relationLc628Part4, Seg31.relationLc628Part5, Seg31.relationLc628Part6, Seg31.relationLc628Part7, Seg31.relationLc628Part8] at r904
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r904 ⊢
  exact r904

theorem seg31_prefix_131_selX (rho : Nat -> Seg31.F)
    (r905 : Seg31.relationRow905 rho) :
    (1*rho 29402)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX130 rho + rho 30173) = rho 30175 := by
  rw [seg31AccX130_sum]
  unfold Seg31.relationRow905 at r905
  simp only [Seg31.relationLc629, Seg31.relationLc629Part0, Seg31.relationLc629Part1, Seg31.relationLc629Part2, Seg31.relationLc629Part3, Seg31.relationLc629Part4] at r905
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r905 ⊢
  exact r905

theorem seg31_prefix_131_selY (rho : Nat -> Seg31.F)
    (r906 : Seg31.relationRow906 rho) :
    (1*rho 29402)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY130 rho + rho 30174) = rho 30176 := by
  rw [seg31AccY130_sum]
  unfold Seg31.relationRow906 at r906
  simp only [Seg31.relationLc630, Seg31.relationLc630Part0, Seg31.relationLc630Part1, Seg31.relationLc630Part2, Seg31.relationLc630Part3, Seg31.relationLc630Part4] at r906
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r906 ⊢
  exact r906

theorem seg31_prefix_132_v2 (rho : Nat -> Seg31.F)
    (r907 : Seg31.relationRow907 rho) :
    (1533107064713739853198800681749478654974420030752112990442623442158134514998*rho 29271 + 7685641275510751267434062841131440909524057548538908820526924562368135360637*seg31AccX131 rho)*(708319964070499435326649883584500753584183235012429328809859440041531789954 + 404578301454555449838109131566136413595117364922563879558071765960199684880*rho 29271 + 708319964070499435326649883584500753584183235012429328809859440041531789954*seg31AccY131 rho) = rho 30177 := by
  rw [seg31AccX131_sum, seg31AccY131_sum]
  unfold Seg31.relationRow907 at r907
  simp only [Seg31.relationLc631, Seg31.relationLc631Part0, Seg31.relationLc631Part1, Seg31.relationLc631Part2, Seg31.relationLc631Part3, Seg31.relationLc631Part4] at r907
  simp only [Seg31.relationLc632, Seg31.relationLc632Part0, Seg31.relationLc632Part1, Seg31.relationLc632Part2, Seg31.relationLc632Part3, Seg31.relationLc632Part4] at r907
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r907 ⊢
  exact r907

theorem seg31_prefix_132_addX (rho : Nat -> Seg31.F)
    (r908 : Seg31.relationRow908 rho) :
    rho 30178*(1 + rho 30177) = 708319964070499435326649883584500753584183235012429328809859440041531789954 + 8343606595212015146865537674042581838210320453922329978308983926916042244758*rho 29271 + 7795711684436215655105315455863648848191172262150966190368738099854387651045*seg31AccX131 rho + 708319964070499435326649883584500753584183235012429328809859440041531789954*seg31AccY131 rho := by
  rw [add_assoc, seg31AccWeighted131]
  unfold Seg31.relationRow908 at r908
  simp only [Seg31.relationLc633, Seg31.relationLc633Part0, Seg31.relationLc633Part1, Seg31.relationLc633Part2, Seg31.relationLc633Part3, Seg31.relationLc633Part4, Seg31.relationLc633Part5, Seg31.relationLc633Part6, Seg31.relationLc633Part7, Seg31.relationLc633Part8] at r908
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r908 ⊢
  exact r908

theorem seg31_prefix_132_addY (rho : Nat -> Seg31.F)
    (r909 : Seg31.relationRow909 rho) :
    rho 30179*(1 + (-1)*rho 30177) = 7795711684436215655105315455863648848191172262150966190368738099854387651045 + 2357664860580816865395151332838189685037838907976348089818391478630425954683*rho 29271 + 708319964070499435326649883584500753584183235012429328809859440041531789954*seg31AccX131 rho + 7795711684436215655105315455863648848191172262150966190368738099854387651045*seg31AccY131 rho := by
  rw [add_assoc, seg31AccWeighted131]
  unfold Seg31.relationRow909 at r909
  simp only [Seg31.relationLc634, Seg31.relationLc634Part0, Seg31.relationLc634Part1, Seg31.relationLc634Part2, Seg31.relationLc634Part3, Seg31.relationLc634Part4, Seg31.relationLc634Part5, Seg31.relationLc634Part6, Seg31.relationLc634Part7, Seg31.relationLc634Part8] at r909
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r909 ⊢
  exact r909

theorem seg31_prefix_132_selX (rho : Nat -> Seg31.F)
    (r910 : Seg31.relationRow910 rho) :
    (1*rho 29403)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX131 rho + rho 30178) = rho 30180 := by
  rw [seg31AccX131_sum]
  unfold Seg31.relationRow910 at r910
  simp only [Seg31.relationLc635, Seg31.relationLc635Part0, Seg31.relationLc635Part1, Seg31.relationLc635Part2, Seg31.relationLc635Part3, Seg31.relationLc635Part4] at r910
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r910 ⊢
  exact r910

theorem seg31_prefix_132_selY (rho : Nat -> Seg31.F)
    (r911 : Seg31.relationRow911 rho) :
    (1*rho 29403)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY131 rho + rho 30179) = rho 30181 := by
  rw [seg31AccY131_sum]
  unfold Seg31.relationRow911 at r911
  simp only [Seg31.relationLc636, Seg31.relationLc636Part0, Seg31.relationLc636Part1, Seg31.relationLc636Part2, Seg31.relationLc636Part3, Seg31.relationLc636Part4] at r911
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r911 ⊢
  exact r911

theorem seg31_prefix_133_v2 (rho : Nat -> Seg31.F)
    (r912 : Seg31.relationRow912 rho) :
    (191995865608900380973939639003477078910801454989591405516300774439642051799*rho 29271 + 3994026013218413113555076699488428925687662647002644743993134519597452118002*seg31AccX132 rho)*(6090960902211025318954194945509402949573732143831061940818648841608928736503 + 5369222675224696627787843547543016413626997945559590293458623514399306051644*rho 29271 + 6090960902211025318954194945509402949573732143831061940818648841608928736503*seg31AccY132 rho) = rho 30182 := by
  rw [seg31AccX132_sum, seg31AccY132_sum]
  unfold Seg31.relationRow912 at r912
  simp only [Seg31.relationLc637, Seg31.relationLc637Part0, Seg31.relationLc637Part1, Seg31.relationLc637Part2, Seg31.relationLc637Part3, Seg31.relationLc637Part4] at r912
  simp only [Seg31.relationLc638, Seg31.relationLc638Part0, Seg31.relationLc638Part1, Seg31.relationLc638Part2, Seg31.relationLc638Part3, Seg31.relationLc638Part4] at r912
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r912 ⊢
  exact r912

theorem seg31_prefix_133_addX (rho : Nat -> Seg31.F)
    (r913 : Seg31.relationRow913 rho) :
    rho 30183*(1 + rho 30182) = 6090960902211025318954194945509402949573732143831061940818648841608928736503 + 6657898233765606149787076330203491894607865338793954085608129944042591487344*rho 29271 + 1259186300316446575314639622360537692169759140505240439362743525217620526212*seg31AccX132 rho + 6090960902211025318954194945509402949573732143831061940818648841608928736503*seg31AccY132 rho := by
  rw [add_assoc, seg31AccWeighted132]
  unfold Seg31.relationRow913 at r913
  simp only [Seg31.relationLc639, Seg31.relationLc639Part0, Seg31.relationLc639Part1, Seg31.relationLc639Part2, Seg31.relationLc639Part3, Seg31.relationLc639Part4, Seg31.relationLc639Part5, Seg31.relationLc639Part6, Seg31.relationLc639Part7, Seg31.relationLc639Part8] at r913
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r913 ⊢
  exact r913

theorem seg31_prefix_133_addY (rho : Nat -> Seg31.F)
    (r914 : Seg31.relationRow914 rho) :
    rho 30184*(1 + (-1)*rho 30182) = 1259186300316446575314639622360537692169759140505240439362743525217620526212 + 3112293859876606234205874932513227378808768907034857639058815376386098008592*rho 29271 + 6090960902211025318954194945509402949573732143831061940818648841608928736503*seg31AccX132 rho + 1259186300316446575314639622360537692169759140505240439362743525217620526212*seg31AccY132 rho := by
  rw [add_assoc, seg31AccWeighted132]
  unfold Seg31.relationRow914 at r914
  simp only [Seg31.relationLc640, Seg31.relationLc640Part0, Seg31.relationLc640Part1, Seg31.relationLc640Part2, Seg31.relationLc640Part3, Seg31.relationLc640Part4, Seg31.relationLc640Part5, Seg31.relationLc640Part6, Seg31.relationLc640Part7, Seg31.relationLc640Part8] at r914
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r914 ⊢
  exact r914

theorem seg31_prefix_133_selX (rho : Nat -> Seg31.F)
    (r915 : Seg31.relationRow915 rho) :
    (1*rho 29404)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX132 rho + rho 30183) = rho 30185 := by
  rw [seg31AccX132_sum]
  unfold Seg31.relationRow915 at r915
  simp only [Seg31.relationLc641, Seg31.relationLc641Part0, Seg31.relationLc641Part1, Seg31.relationLc641Part2, Seg31.relationLc641Part3, Seg31.relationLc641Part4] at r915
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r915 ⊢
  exact r915

theorem seg31_prefix_133_selY (rho : Nat -> Seg31.F)
    (r916 : Seg31.relationRow916 rho) :
    (1*rho 29404)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY132 rho + rho 30184) = rho 30186 := by
  rw [seg31AccY132_sum]
  unfold Seg31.relationRow916 at r916
  simp only [Seg31.relationLc642, Seg31.relationLc642Part0, Seg31.relationLc642Part1, Seg31.relationLc642Part2, Seg31.relationLc642Part3, Seg31.relationLc642Part4] at r916
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r916 ⊢
  exact r916

theorem seg31_prefix_134_v2 (rho : Nat -> Seg31.F)
    (r917 : Seg31.relationRow917 rho) :
    (8334226194666000076422094566176775911994127709825910102492242190812320025554*rho 29271 + 8350735386965930517301024222238984186980631401436540132621059471273859939706*seg31AccX133 rho)*(4776301977164444395672264858506678016854284792231206224229539531243060966607 + 380793711990470464493962683016616774893169390026769268098521793754562433091*rho 29271 + 4776301977164444395672264858506678016854284792231206224229539531243060966607*seg31AccY133 rho) = rho 30187 := by
  rw [seg31AccX133_sum, seg31AccY133_sum]
  unfold Seg31.relationRow917 at r917
  simp only [Seg31.relationLc643, Seg31.relationLc643Part0, Seg31.relationLc643Part1, Seg31.relationLc643Part2, Seg31.relationLc643Part3, Seg31.relationLc643Part4] at r917
  simp only [Seg31.relationLc644, Seg31.relationLc644Part0, Seg31.relationLc644Part1, Seg31.relationLc644Part2, Seg31.relationLc644Part3, Seg31.relationLc644Part4] at r917
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r917 ⊢
  exact r917

theorem seg31_prefix_134_addX (rho : Nat -> Seg31.F)
    (r918 : Seg31.relationRow918 rho) :
    rho 30188*(1 + rho 30187) = 4776301977164444395672264858506678016854284792231206224229539531243060966607 + 36941004034677040948635904518525085393461548302413755168539434819459346161*rho 29271 + 2409477756254482908240827307683929343827087043683907810653709720296644559667*seg31AccX133 rho + 4776301977164444395672264858506678016854284792231206224229539531243060966607*seg31AccY133 rho := by
  rw [add_assoc, seg31AccWeighted133]
  unfold Seg31.relationRow918 at r918
  simp only [Seg31.relationLc645, Seg31.relationLc645Part0, Seg31.relationLc645Part1, Seg31.relationLc645Part2, Seg31.relationLc645Part3, Seg31.relationLc645Part4, Seg31.relationLc645Part5, Seg31.relationLc645Part6, Seg31.relationLc645Part7, Seg31.relationLc645Part8] at r918
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r918 ⊢
  exact r918

theorem seg31_prefix_134_addY (rho : Nat -> Seg31.F)
    (r919 : Seg31.relationRow919 rho) :
    rho 30189*(1 + (-1)*rho 30187) = 2409477756254482908240827307683929343827087043683907810653709720296644559667 + 6036862831985683245651487661710623165633320395046026221911072481686485751233*rho 29271 + 4776301977164444395672264858506678016854284792231206224229539531243060966607*seg31AccX133 rho + 2409477756254482908240827307683929343827087043683907810653709720296644559667*seg31AccY133 rho := by
  rw [add_assoc, seg31AccWeighted133]
  unfold Seg31.relationRow919 at r919
  simp only [Seg31.relationLc646, Seg31.relationLc646Part0, Seg31.relationLc646Part1, Seg31.relationLc646Part2, Seg31.relationLc646Part3, Seg31.relationLc646Part4, Seg31.relationLc646Part5, Seg31.relationLc646Part6, Seg31.relationLc646Part7, Seg31.relationLc646Part8] at r919
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r919 ⊢
  exact r919

theorem seg31_prefix_134_selX (rho : Nat -> Seg31.F)
    (r920 : Seg31.relationRow920 rho) :
    (1*rho 29405)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX133 rho + rho 30188) = rho 30190 := by
  rw [seg31AccX133_sum]
  unfold Seg31.relationRow920 at r920
  simp only [Seg31.relationLc647, Seg31.relationLc647Part0, Seg31.relationLc647Part1, Seg31.relationLc647Part2, Seg31.relationLc647Part3, Seg31.relationLc647Part4] at r920
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r920 ⊢
  exact r920

theorem seg31_prefix_134_selY (rho : Nat -> Seg31.F)
    (r921 : Seg31.relationRow921 rho) :
    (1*rho 29405)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY133 rho + rho 30189) = rho 30191 := by
  rw [seg31AccY133_sum]
  unfold Seg31.relationRow921 at r921
  simp only [Seg31.relationLc648, Seg31.relationLc648Part0, Seg31.relationLc648Part1, Seg31.relationLc648Part2, Seg31.relationLc648Part3, Seg31.relationLc648Part4] at r921
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r921 ⊢
  exact r921

theorem seg31_prefix_135_v2 (rho : Nat -> Seg31.F)
    (r922 : Seg31.relationRow922 rho) :
    (4659002157157882760089661487130649427326522575034374982504730073283696606459*rho 29271 + 1182996801743943238222365565355394233708584573345921108487852703254453477350*seg31AccX134 rho)*(1148300579578564163727623149367671871394774284025648335239073682646191848622 + 7378894693786544031947238095630110179035204260913025452629774386744340172769*rho 29271 + 1148300579578564163727623149367671871394774284025648335239073682646191848622*seg31AccY134 rho) = rho 30192 := by
  rw [seg31AccX134_sum, seg31AccY134_sum]
  unfold Seg31.relationRow922 at r922
  simp only [Seg31.relationLc649, Seg31.relationLc649Part0, Seg31.relationLc649Part1, Seg31.relationLc649Part2, Seg31.relationLc649Part3, Seg31.relationLc649Part4] at r922
  simp only [Seg31.relationLc650, Seg31.relationLc650Part0, Seg31.relationLc650Part1, Seg31.relationLc650Part2, Seg31.relationLc650Part3, Seg31.relationLc650Part4] at r922
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r922 ⊢
  exact r922

theorem seg31_prefix_135_addX (rho : Nat -> Seg31.F)
    (r923 : Seg31.relationRow923 rho) :
    rho 30193*(1 + rho 30192) = 1148300579578564163727623149367671871394774284025648335239073682646191848622 + 6402098066794563970468588950616402586663725199433751051837047812928448237298*rho 29271 + 3318357859441648340556629449817626986751705096127513963875408793405236418477*seg31AccX134 rho + 1148300579578564163727623149367671871394774284025648335239073682646191848622*seg31AccY134 rho := by
  rw [add_assoc, seg31AccWeighted134]
  unfold Seg31.relationRow923 at r923
  simp only [Seg31.relationLc651, Seg31.relationLc651Part0, Seg31.relationLc651Part1, Seg31.relationLc651Part2, Seg31.relationLc651Part3, Seg31.relationLc651Part4, Seg31.relationLc651Part5, Seg31.relationLc651Part6, Seg31.relationLc651Part7, Seg31.relationLc651Part8] at r923
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r923 ⊢
  exact r923

theorem seg31_prefix_135_addY (rho : Nat -> Seg31.F)
    (r924 : Seg31.relationRow924 rho) :
    rho 30194*(1 + (-1)*rho 30192) = 3318357859441648340556629449817626986751705096127513963875408793405236418477 + 4369131667080006902416927500337444541983085711333428144390077593133915563395*rho 29271 + 1148300579578564163727623149367671871394774284025648335239073682646191848622*seg31AccX134 rho + 3318357859441648340556629449817626986751705096127513963875408793405236418477*seg31AccY134 rho := by
  rw [add_assoc, seg31AccWeighted134]
  unfold Seg31.relationRow924 at r924
  simp only [Seg31.relationLc652, Seg31.relationLc652Part0, Seg31.relationLc652Part1, Seg31.relationLc652Part2, Seg31.relationLc652Part3, Seg31.relationLc652Part4, Seg31.relationLc652Part5, Seg31.relationLc652Part6, Seg31.relationLc652Part7, Seg31.relationLc652Part8] at r924
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r924 ⊢
  exact r924

theorem seg31_prefix_135_selX (rho : Nat -> Seg31.F)
    (r925 : Seg31.relationRow925 rho) :
    (1*rho 29406)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX134 rho + rho 30193) = rho 30195 := by
  rw [seg31AccX134_sum]
  unfold Seg31.relationRow925 at r925
  simp only [Seg31.relationLc653, Seg31.relationLc653Part0, Seg31.relationLc653Part1, Seg31.relationLc653Part2, Seg31.relationLc653Part3, Seg31.relationLc653Part4] at r925
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r925 ⊢
  exact r925

theorem seg31_prefix_135_selY (rho : Nat -> Seg31.F)
    (r926 : Seg31.relationRow926 rho) :
    (1*rho 29406)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY134 rho + rho 30194) = rho 30196 := by
  rw [seg31AccY134_sum]
  unfold Seg31.relationRow926 at r926
  simp only [Seg31.relationLc654, Seg31.relationLc654Part0, Seg31.relationLc654Part1, Seg31.relationLc654Part2, Seg31.relationLc654Part3, Seg31.relationLc654Part4] at r926
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r926 ⊢
  exact r926

theorem seg31_prefix_136_v2 (rho : Nat -> Seg31.F)
    (r927 : Seg31.relationRow927 rho) :
    (4769292595969500774517643306856801806102352804507087964477536699275377005469*rho 29271 + 8137632229673021427629908971617522457232664963056919591413255887339944990409*seg31AccX135 rho)*(5459638828393090938740191583842805453476194653234771289309407188511644865526 + 3829596561026703133464657413286632844617675577922328941474428319150653561380*rho 29271 + 5459638828393090938740191583842805453476194653234771289309407188511644865526*seg31AccY135 rho) = rho 30197 := by
  rw [seg31AccX135_sum, seg31AccY135_sum]
  unfold Seg31.relationRow927 at r927
  simp only [Seg31.relationLc655, Seg31.relationLc655Part0, Seg31.relationLc655Part1, Seg31.relationLc655Part2, Seg31.relationLc655Part3, Seg31.relationLc655Part4] at r927
  simp only [Seg31.relationLc656, Seg31.relationLc656Part0, Seg31.relationLc656Part1, Seg31.relationLc656Part2, Seg31.relationLc656Part3, Seg31.relationLc656Part4] at r927
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r927 ⊢
  exact r927

theorem seg31_prefix_136_addX (rho : Nat -> Seg31.F)
    (r928 : Seg31.relationRow928 rho) :
    rho 30198*(1 + rho 30197) = 5459638828393090938740191583842805453476194653234771289309407188511644865526 + 2931103548540782651560121171320131295032459678182143087574836251588213840107*rho 29271 + 8287825970716770261139075480807719775390730981251142702943212584980649099473*seg31AccX135 rho + 5459638828393090938740191583842805453476194653234771289309407188511644865526*seg31AccY135 rho := by
  rw [add_assoc, seg31AccWeighted135]
  unfold Seg31.relationRow928 at r928
  simp only [Seg31.relationLc657, Seg31.relationLc657Part0, Seg31.relationLc657Part1, Seg31.relationLc657Part2, Seg31.relationLc657Part3, Seg31.relationLc657Part4, Seg31.relationLc657Part5, Seg31.relationLc657Part6, Seg31.relationLc657Part7, Seg31.relationLc657Part8] at r928
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r928 ⊢
  exact r928

theorem seg31_prefix_136_addY (rho : Nat -> Seg31.F)
    (r929 : Seg31.relationRow929 rho) :
    rho 30199*(1 + (-1)*rho 30197) = 8287825970716770261139075480807719775390730981251142702943212584980649099473 + 1955362291839259112086866644480913850363730902054284254394140156483786318216*rho 29271 + 5459638828393090938740191583842805453476194653234771289309407188511644865526*seg31AccX135 rho + 8287825970716770261139075480807719775390730981251142702943212584980649099473*seg31AccY135 rho := by
  rw [add_assoc, seg31AccWeighted135]
  unfold Seg31.relationRow929 at r929
  simp only [Seg31.relationLc658, Seg31.relationLc658Part0, Seg31.relationLc658Part1, Seg31.relationLc658Part2, Seg31.relationLc658Part3, Seg31.relationLc658Part4, Seg31.relationLc658Part5, Seg31.relationLc658Part6, Seg31.relationLc658Part7, Seg31.relationLc658Part8] at r929
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r929 ⊢
  exact r929

theorem seg31_prefix_136_selX (rho : Nat -> Seg31.F)
    (r930 : Seg31.relationRow930 rho) :
    (1*rho 29407)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX135 rho + rho 30198) = rho 30200 := by
  rw [seg31AccX135_sum]
  unfold Seg31.relationRow930 at r930
  simp only [Seg31.relationLc659, Seg31.relationLc659Part0, Seg31.relationLc659Part1, Seg31.relationLc659Part2, Seg31.relationLc659Part3, Seg31.relationLc659Part4] at r930
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r930 ⊢
  exact r930

theorem seg31_prefix_136_selY (rho : Nat -> Seg31.F)
    (r931 : Seg31.relationRow931 rho) :
    (1*rho 29407)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY135 rho + rho 30199) = rho 30201 := by
  rw [seg31AccY135_sum]
  unfold Seg31.relationRow931 at r931
  simp only [Seg31.relationLc660, Seg31.relationLc660Part0, Seg31.relationLc660Part1, Seg31.relationLc660Part2, Seg31.relationLc660Part3, Seg31.relationLc660Part4] at r931
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r931 ⊢
  exact r931

theorem seg31_prefix_137_v2 (rho : Nat -> Seg31.F)
    (r932 : Seg31.relationRow932 rho) :
    (6476161284874086005951938699175597436841750270565852906553533635919583577062*rho 29271 + 5111288782486129139466231775079191268673243399580435556710682586267248156842*seg31AccX136 rho)*(7345501110400130993507053772883707881971492479226325888287407262581860246816 + 2725145222668639968132482018961228677834756799767864225079778248528929615320*rho 29271 + 7345501110400130993507053772883707881971492479226325888287407262581860246816*seg31AccY136 rho) = rho 30202 := by
  rw [seg31AccX136_sum, seg31AccY136_sum]
  unfold Seg31.relationRow932 at r932
  simp only [Seg31.relationLc661, Seg31.relationLc661Part0, Seg31.relationLc661Part1, Seg31.relationLc661Part2, Seg31.relationLc661Part3, Seg31.relationLc661Part4] at r932
  simp only [Seg31.relationLc662, Seg31.relationLc662Part0, Seg31.relationLc662Part1, Seg31.relationLc662Part2, Seg31.relationLc662Part3, Seg31.relationLc662Part4] at r932
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r932 ⊢
  exact r932

theorem seg31_prefix_137_addX (rho : Nat -> Seg31.F)
    (r933 : Seg31.relationRow933 rho) :
    rho 30203*(1 + rho 30202) = 7345501110400130993507053772883707881971492479226325888287407262581860246816 + 2853075358388319132348684952077529634918092523154987272138248635537272216887*rho 29271 + 24053949943036442414252509528411639695359297610331991453224942149489083770*seg31AccX136 rho + 7345501110400130993507053772883707881971492479226325888287407262581860246816*seg31AccY136 rho := by
  rw [add_assoc, seg31AccWeighted136]
  unfold Seg31.relationRow933 at r933
  simp only [Seg31.relationLc663, Seg31.relationLc663Part0, Seg31.relationLc663Part1, Seg31.relationLc663Part2, Seg31.relationLc663Part3, Seg31.relationLc663Part4, Seg31.relationLc663Part5, Seg31.relationLc663Part6, Seg31.relationLc663Part7, Seg31.relationLc663Part8] at r933
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r933 ⊢
  exact r933

theorem seg31_prefix_137_addY (rho : Nat -> Seg31.F)
    (r934 : Seg31.relationRow934 rho) :
    rho 30204*(1 + (-1)*rho 30202) = 24053949943036442414252509528411639695359297610331991453224942149489083770 + 6471862708434684048315744250881982886539723994818043094341387796529886078606*rho 29271 + 7345501110400130993507053772883707881971492479226325888287407262581860246816*seg31AccX136 rho + 24053949943036442414252509528411639695359297610331991453224942149489083770*seg31AccY136 rho := by
  rw [add_assoc, seg31AccWeighted136]
  unfold Seg31.relationRow934 at r934
  simp only [Seg31.relationLc664, Seg31.relationLc664Part0, Seg31.relationLc664Part1, Seg31.relationLc664Part2, Seg31.relationLc664Part3, Seg31.relationLc664Part4, Seg31.relationLc664Part5, Seg31.relationLc664Part6, Seg31.relationLc664Part7, Seg31.relationLc664Part8] at r934
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r934 ⊢
  exact r934

theorem seg31_prefix_137_selX (rho : Nat -> Seg31.F)
    (r935 : Seg31.relationRow935 rho) :
    (1*rho 29408)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX136 rho + rho 30203) = rho 30205 := by
  rw [seg31AccX136_sum]
  unfold Seg31.relationRow935 at r935
  simp only [Seg31.relationLc665, Seg31.relationLc665Part0, Seg31.relationLc665Part1, Seg31.relationLc665Part2, Seg31.relationLc665Part3, Seg31.relationLc665Part4] at r935
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r935 ⊢
  exact r935

theorem seg31_prefix_137_selY (rho : Nat -> Seg31.F)
    (r936 : Seg31.relationRow936 rho) :
    (1*rho 29408)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY136 rho + rho 30204) = rho 30206 := by
  rw [seg31AccY136_sum]
  unfold Seg31.relationRow936 at r936
  simp only [Seg31.relationLc666, Seg31.relationLc666Part0, Seg31.relationLc666Part1, Seg31.relationLc666Part2, Seg31.relationLc666Part3, Seg31.relationLc666Part4] at r936
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r936 ⊢
  exact r936

theorem seg31_prefix_138_v2 (rho : Nat -> Seg31.F)
    (r937 : Seg31.relationRow937 rho) :
    (7126231453609229208688124226293001670761804314979031296887827715456390188658*rho 29271 + 4662752930448595384754707496749798730457005433492061601753208012070424433443*seg31AccX137 rho)*(4006348523090618789946607227419394772771515300930797206678446529115938155598 + 7954648395084117914549174521325405444860329886984909639008384565435189389663*rho 29271 + 4006348523090618789946607227419394772771515300930797206678446529115938155598*seg31AccY137 rho) = rho 30207 := by
  rw [seg31AccX137_sum, seg31AccY137_sum]
  unfold Seg31.relationRow937 at r937
  simp only [Seg31.relationLc667, Seg31.relationLc667Part0, Seg31.relationLc667Part1, Seg31.relationLc667Part2, Seg31.relationLc667Part3, Seg31.relationLc667Part4] at r937
  simp only [Seg31.relationLc668, Seg31.relationLc668Part0, Seg31.relationLc668Part1, Seg31.relationLc668Part2, Seg31.relationLc668Part3, Seg31.relationLc668Part4] at r937
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r937 ⊢
  exact r937

theorem seg31_prefix_138_addX (rho : Nat -> Seg31.F)
    (r938 : Seg31.relationRow938 rho) :
    rho 30208*(1 + rho 30207) = 4006348523090618789946607227419394772771515300930797206678446529115938155598 + 6190406887574974955622802711632044171719381003998352436771317463010711981889*rho 29271 + 5891143217138704097741485883319916696570498809865311005316547533806703638230*seg31AccX137 rho + 4006348523090618789946607227419394772771515300930797206678446529115938155598*seg31AccY137 rho := by
  rw [add_assoc, seg31AccWeighted137]
  unfold Seg31.relationRow938 at r938
  simp only [Seg31.relationLc669, Seg31.relationLc669Part0, Seg31.relationLc669Part1, Seg31.relationLc669Part2, Seg31.relationLc669Part3, Seg31.relationLc669Part4, Seg31.relationLc669Part5, Seg31.relationLc669Part6, Seg31.relationLc669Part7, Seg31.relationLc669Part8] at r938
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r938 ⊢
  exact r938

theorem seg31_prefix_138_addY (rho : Nat -> Seg31.F)
    (r939 : Seg31.relationRow939 rho) :
    rho 30209*(1 + (-1)*rho 30207) = 5891143217138704097741485883319916696570498809865311005316547533806703638230 + 1456669994443089960625881403451915523345137050588486885534892853786125388712*rho 29271 + 4006348523090618789946607227419394772771515300930797206678446529115938155598*seg31AccX137 rho + 5891143217138704097741485883319916696570498809865311005316547533806703638230*seg31AccY137 rho := by
  rw [add_assoc, seg31AccWeighted137]
  unfold Seg31.relationRow939 at r939
  simp only [Seg31.relationLc670, Seg31.relationLc670Part0, Seg31.relationLc670Part1, Seg31.relationLc670Part2, Seg31.relationLc670Part3, Seg31.relationLc670Part4, Seg31.relationLc670Part5, Seg31.relationLc670Part6, Seg31.relationLc670Part7, Seg31.relationLc670Part8] at r939
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r939 ⊢
  exact r939

theorem seg31_prefix_138_selX (rho : Nat -> Seg31.F)
    (r940 : Seg31.relationRow940 rho) :
    (1*rho 29409)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX137 rho + rho 30208) = rho 30210 := by
  rw [seg31AccX137_sum]
  unfold Seg31.relationRow940 at r940
  simp only [Seg31.relationLc671, Seg31.relationLc671Part0, Seg31.relationLc671Part1, Seg31.relationLc671Part2, Seg31.relationLc671Part3, Seg31.relationLc671Part4] at r940
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r940 ⊢
  exact r940

theorem seg31_prefix_138_selY (rho : Nat -> Seg31.F)
    (r941 : Seg31.relationRow941 rho) :
    (1*rho 29409)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY137 rho + rho 30209) = rho 30211 := by
  rw [seg31AccY137_sum]
  unfold Seg31.relationRow941 at r941
  simp only [Seg31.relationLc672, Seg31.relationLc672Part0, Seg31.relationLc672Part1, Seg31.relationLc672Part2, Seg31.relationLc672Part3, Seg31.relationLc672Part4] at r941
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r941 ⊢
  exact r941

theorem seg31_prefix_139_v2 (rho : Nat -> Seg31.F)
    (r942 : Seg31.relationRow942 rho) :
    (182472210883555855290507371466880334694398402478770867741041033474438456424*rho 29271 + 3503746544360184031918039694239931947828755957816871622237267658653103197351*seg31AccX138 rho)*(5577439207462902357524894594384787989834969029770294569303945878927567553590 + 7270055234765096745190223231333018492000124493956213669318371438125775854168*rho 29271 + 5577439207462902357524894594384787989834969029770294569303945878927567553590*seg31AccY138 rho) = rho 30212 := by
  rw [seg31AccX138_sum, seg31AccY138_sum]
  unfold Seg31.relationRow942 at r942
  simp only [Seg31.relationLc673, Seg31.relationLc673Part0, Seg31.relationLc673Part1, Seg31.relationLc673Part2, Seg31.relationLc673Part3, Seg31.relationLc673Part4] at r942
  simp only [Seg31.relationLc674, Seg31.relationLc674Part0, Seg31.relationLc674Part1, Seg31.relationLc674Part2, Seg31.relationLc674Part3, Seg31.relationLc674Part4] at r942
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r942 ⊢
  exact r942

theorem seg31_prefix_139_addX (rho : Nat -> Seg31.F)
    (r943 : Seg31.relationRow943 rho) :
    rho 30213*(1 + rho 30212) = 5577439207462902357524894594384787989834969029770294569303945878927567553590 + 3935377844875271402497883726336355753967435480902152306902286541774900387859*rho 29271 + 7324724769959182620180019655512046290682782195981947732807861278438353296751*seg31AccX138 rho + 5577439207462902357524894594384787989834969029770294569303945878927567553590*seg31AccY138 rho := by
  rw [add_assoc, seg31AccWeighted138]
  unfold Seg31.relationRow943 at r943
  simp only [Seg31.relationLc675, Seg31.relationLc675Part0, Seg31.relationLc675Part1, Seg31.relationLc675Part2, Seg31.relationLc675Part3, Seg31.relationLc675Part4, Seg31.relationLc675Part5, Seg31.relationLc675Part6, Seg31.relationLc675Part7, Seg31.relationLc675Part8] at r943
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r943 ⊢
  exact r943

theorem seg31_prefix_139_addY (rho : Nat -> Seg31.F)
    (r944 : Seg31.relationRow944 rho) :
    rho 30214*(1 + (-1)*rho 30212) = 7324724769959182620180019655512046290682782195981947732807861278438353296751 + 1323841985273903031499736341692708274137761588453447002420953300902859246398*rho 29271 + 5577439207462902357524894594384787989834969029770294569303945878927567553590*seg31AccX138 rho + 7324724769959182620180019655512046290682782195981947732807861278438353296751*seg31AccY138 rho := by
  rw [add_assoc, seg31AccWeighted138]
  unfold Seg31.relationRow944 at r944
  simp only [Seg31.relationLc676, Seg31.relationLc676Part0, Seg31.relationLc676Part1, Seg31.relationLc676Part2, Seg31.relationLc676Part3, Seg31.relationLc676Part4, Seg31.relationLc676Part5, Seg31.relationLc676Part6, Seg31.relationLc676Part7, Seg31.relationLc676Part8] at r944
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r944 ⊢
  exact r944

theorem seg31_prefix_139_selX (rho : Nat -> Seg31.F)
    (r945 : Seg31.relationRow945 rho) :
    (1*rho 29410)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX138 rho + rho 30213) = rho 30215 := by
  rw [seg31AccX138_sum]
  unfold Seg31.relationRow945 at r945
  simp only [Seg31.relationLc677, Seg31.relationLc677Part0, Seg31.relationLc677Part1, Seg31.relationLc677Part2, Seg31.relationLc677Part3, Seg31.relationLc677Part4] at r945
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r945 ⊢
  exact r945

theorem seg31_prefix_139_selY (rho : Nat -> Seg31.F)
    (r946 : Seg31.relationRow946 rho) :
    (1*rho 29410)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY138 rho + rho 30214) = rho 30216 := by
  rw [seg31AccY138_sum]
  unfold Seg31.relationRow946 at r946
  simp only [Seg31.relationLc678, Seg31.relationLc678Part0, Seg31.relationLc678Part1, Seg31.relationLc678Part2, Seg31.relationLc678Part3, Seg31.relationLc678Part4] at r946
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r946 ⊢
  exact r946

theorem seg31_prefix_140_v2 (rho : Nat -> Seg31.F)
    (r947 : Seg31.relationRow947 rho) :
    (2090884111564989602241473477281820540087453634304452393418639830145704249314*rho 29271 + 7600509590891047986640744943418231369735462568340088378292668398646431841528*seg31AccX139 rho)*(2885118417480949184486992007724055222686903680798514200711411467093900691442 + 5713273981878165677335400987173347988429349823527630223344297681551752627180*rho 29271 + 2885118417480949184486992007724055222686903680798514200711411467093900691442*seg31AccY139 rho) = rho 30217 := by
  rw [seg31AccX139_sum, seg31AccY139_sum]
  unfold Seg31.relationRow947 at r947
  simp only [Seg31.relationLc679, Seg31.relationLc679Part0, Seg31.relationLc679Part1, Seg31.relationLc679Part2, Seg31.relationLc679Part3, Seg31.relationLc679Part4] at r947
  simp only [Seg31.relationLc680, Seg31.relationLc680Part0, Seg31.relationLc680Part1, Seg31.relationLc680Part2, Seg31.relationLc680Part3, Seg31.relationLc680Part4] at r947
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r947 ⊢
  exact r947

theorem seg31_prefix_140_addX (rho : Nat -> Seg31.F)
    (r948 : Seg31.relationRow948 rho) :
    rho 30218*(1 + rho 30217) = 2885118417480949184486992007724055222686903680798514200711411467093900691442 + 2530172012832369939626969960428925718089375679500429214531052972362814057495*rho 29271 + 6727896550385816050555880022393849449142717399188685090496678041488226766294*seg31AccX139 rho + 2885118417480949184486992007724055222686903680798514200711411467093900691442*seg31AccY139 rho := by
  rw [add_assoc, seg31AccWeighted139]
  unfold Seg31.relationRow948 at r948
  simp only [Seg31.relationLc681, Seg31.relationLc681Part0, Seg31.relationLc681Part1, Seg31.relationLc681Part2, Seg31.relationLc681Part3, Seg31.relationLc681Part4, Seg31.relationLc681Part5, Seg31.relationLc681Part6, Seg31.relationLc681Part7, Seg31.relationLc681Part8] at r948
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r948 ⊢
  exact r948

theorem seg31_prefix_140_addY (rho : Nat -> Seg31.F)
    (r949 : Seg31.relationRow949 rho) :
    rho 30219*(1 + (-1)*rho 30217) = 6727896550385816050555880022393849449142717399188685090496678041488226766294 + 4704853232277291898484785826968556517875025073063416699200724012164660423043*rho 29271 + 2885118417480949184486992007724055222686903680798514200711411467093900691442*seg31AccX139 rho + 6727896550385816050555880022393849449142717399188685090496678041488226766294*seg31AccY139 rho := by
  rw [add_assoc, seg31AccWeighted139]
  unfold Seg31.relationRow949 at r949
  simp only [Seg31.relationLc682, Seg31.relationLc682Part0, Seg31.relationLc682Part1, Seg31.relationLc682Part2, Seg31.relationLc682Part3, Seg31.relationLc682Part4, Seg31.relationLc682Part5, Seg31.relationLc682Part6, Seg31.relationLc682Part7, Seg31.relationLc682Part8] at r949
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r949 ⊢
  exact r949

theorem seg31_prefix_140_selX (rho : Nat -> Seg31.F)
    (r950 : Seg31.relationRow950 rho) :
    (1*rho 29411)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX139 rho + rho 30218) = rho 30220 := by
  rw [seg31AccX139_sum]
  unfold Seg31.relationRow950 at r950
  simp only [Seg31.relationLc683, Seg31.relationLc683Part0, Seg31.relationLc683Part1, Seg31.relationLc683Part2, Seg31.relationLc683Part3, Seg31.relationLc683Part4] at r950
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r950 ⊢
  exact r950

theorem seg31_prefix_140_selY (rho : Nat -> Seg31.F)
    (r951 : Seg31.relationRow951 rho) :
    (1*rho 29411)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY139 rho + rho 30219) = rho 30221 := by
  rw [seg31AccY139_sum]
  unfold Seg31.relationRow951 at r951
  simp only [Seg31.relationLc684, Seg31.relationLc684Part0, Seg31.relationLc684Part1, Seg31.relationLc684Part2, Seg31.relationLc684Part3, Seg31.relationLc684Part4] at r951
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r951 ⊢
  exact r951


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

