import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_prefix_101_v2 (rho : Nat -> Seg15.F)
    (r752 : Seg15.relationRow752 rho) :
    (5035170457329007498215706764068854229628709390625754048523837162638594296483*rho 16387 + 3924064994534324793975474756801986090331673654531897950005235266878248442401*seg15AccX100 rho)*(3238251901170893923875304170690789248297548994624633727240622402921508296098 + 8155230957829955237422040779833784152504074606101570959547316848164455429470*rho 16387 + 3238251901170893923875304170690789248297548994624633727240622402921508296098*seg15AccY100 rho) = rho 17138 := by
  rw [seg15AccX100_sum, seg15AccY100_sum]
  unfold Seg15.relationRow752 at r752
  simp only [Seg15.relationLc445, Seg15.relationLc445Part0, Seg15.relationLc445Part1, Seg15.relationLc445Part2, Seg15.relationLc445Part3] at r752
  simp only [Seg15.relationLc446, Seg15.relationLc446Part0, Seg15.relationLc446Part1, Seg15.relationLc446Part2, Seg15.relationLc446Part3] at r752
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r752 ⊢
  exact r752

theorem seg15_prefix_101_addX (rho : Nat -> Seg15.F)
    (r753 : Seg15.relationRow753 rho) :
    rho 17139*(1 + rho 17138) = 3238251901170893923875304170690789248297548994624633727240622402921508296098 + 1912300677205774330347012906125109509384534584471795111298793940730872627179*rho 16387 + 831489309690420503408102112404806787788471955046437886410714853252018799218*seg15AccX100 rho + 3238251901170893923875304170690789248297548994624633727240622402921508296098*seg15AccY100 rho := by
  rw [add_assoc, seg15AccWeighted100]
  unfold Seg15.relationRow753 at r753
  simp only [Seg15.relationLc447, Seg15.relationLc447Part0, Seg15.relationLc447Part1, Seg15.relationLc447Part2, Seg15.relationLc447Part3, Seg15.relationLc447Part4, Seg15.relationLc447Part5, Seg15.relationLc447Part6] at r753
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r753 ⊢
  exact r753

theorem seg15_prefix_101_addY (rho : Nat -> Seg15.F)
    (r754 : Seg15.relationRow754 rho) :
    rho 17140*(1 + (-1)*rho 17138) = 831489309690420503408102112404806787788471955046437886410714853252018799218 + 262055187765897102645017672611434223937468532503246140749754098589294437485*rho 16387 + 3238251901170893923875304170690789248297548994624633727240622402921508296098*seg15AccX100 rho + 831489309690420503408102112404806787788471955046437886410714853252018799218*seg15AccY100 rho := by
  rw [add_assoc, seg15AccWeighted100]
  unfold Seg15.relationRow754 at r754
  simp only [Seg15.relationLc448, Seg15.relationLc448Part0, Seg15.relationLc448Part1, Seg15.relationLc448Part2, Seg15.relationLc448Part3, Seg15.relationLc448Part4, Seg15.relationLc448Part5, Seg15.relationLc448Part6] at r754
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r754 ⊢
  exact r754

theorem seg15_prefix_101_selX (rho : Nat -> Seg15.F)
    (r755 : Seg15.relationRow755 rho) :
    (1*rho 16488)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX100 rho + rho 17139) = rho 17141 := by
  rw [seg15AccX100_sum]
  unfold Seg15.relationRow755 at r755
  simp only [Seg15.relationLc449, Seg15.relationLc449Part0, Seg15.relationLc449Part1, Seg15.relationLc449Part2, Seg15.relationLc449Part3] at r755
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r755 ⊢
  exact r755

theorem seg15_prefix_101_selY (rho : Nat -> Seg15.F)
    (r756 : Seg15.relationRow756 rho) :
    (1*rho 16488)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY100 rho + rho 17140) = rho 17142 := by
  rw [seg15AccY100_sum]
  unfold Seg15.relationRow756 at r756
  simp only [Seg15.relationLc450, Seg15.relationLc450Part0, Seg15.relationLc450Part1, Seg15.relationLc450Part2, Seg15.relationLc450Part3] at r756
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r756 ⊢
  exact r756

theorem seg15_prefix_102_v2 (rho : Nat -> Seg15.F)
    (r757 : Seg15.relationRow757 rho) :
    (232394475062317995667702307533282018411905725724657218403247192666026112748*rho 16387 + 1196062191799215498120628398783088685347096038747678159521022542856874490815*seg15AccX101 rho)*(4024969340262992984114155915781887050592952034844952353735168789887307924959 + 4433698353190224045945534049411289318335858580384154444661941282941348013884*rho 16387 + 4024969340262992984114155915781887050592952034844952353735168789887307924959*seg15AccY101 rho) = rho 17143 := by
  rw [seg15AccX101_sum, seg15AccY101_sum]
  unfold Seg15.relationRow757 at r757
  simp only [Seg15.relationLc451, Seg15.relationLc451Part0, Seg15.relationLc451Part1, Seg15.relationLc451Part2, Seg15.relationLc451Part3] at r757
  simp only [Seg15.relationLc452, Seg15.relationLc452Part0, Seg15.relationLc452Part1, Seg15.relationLc452Part2, Seg15.relationLc452Part3] at r757
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r757 ⊢
  exact r757

theorem seg15_prefix_102_addX (rho : Nat -> Seg15.F)
    (r758 : Seg15.relationRow758 rho) :
    rho 17144*(1 + rho 17143) = 4024969340262992984114155915781887050592952034844952353735168789887307924959 + 5140974492574679535958980064578209064928547900979885264154168132176624598985*rho 16387 + 7242898528619896386867535930083340003800166260649760693922446510038021917526*seg15AccX101 rho + 4024969340262992984114155915781887050592952034844952353735168789887307924959*seg15AccY101 rho := by
  rw [add_assoc, seg15AccWeighted101]
  unfold Seg15.relationRow758 at r758
  simp only [Seg15.relationLc453, Seg15.relationLc453Part0, Seg15.relationLc453Part1, Seg15.relationLc453Part2, Seg15.relationLc453Part3, Seg15.relationLc453Part4, Seg15.relationLc453Part5, Seg15.relationLc453Part6] at r758
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r758 ⊢
  exact r758

theorem seg15_prefix_102_addY (rho : Nat -> Seg15.F)
    (r759 : Seg15.relationRow759 rho) :
    rho 17145*(1 + (-1)*rho 17143) = 7242898528619896386867535930083340003800166260649760693922446510038021917526 + 133351693975587787306538269865475091956848856903036364800291141558716137471*rho 16387 + 4024969340262992984114155915781887050592952034844952353735168789887307924959*seg15AccX101 rho + 7242898528619896386867535930083340003800166260649760693922446510038021917526*seg15AccY101 rho := by
  rw [add_assoc, seg15AccWeighted101]
  unfold Seg15.relationRow759 at r759
  simp only [Seg15.relationLc454, Seg15.relationLc454Part0, Seg15.relationLc454Part1, Seg15.relationLc454Part2, Seg15.relationLc454Part3, Seg15.relationLc454Part4, Seg15.relationLc454Part5, Seg15.relationLc454Part6] at r759
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r759 ⊢
  exact r759

theorem seg15_prefix_102_selX (rho : Nat -> Seg15.F)
    (r760 : Seg15.relationRow760 rho) :
    (1*rho 16489)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX101 rho + rho 17144) = rho 17146 := by
  rw [seg15AccX101_sum]
  unfold Seg15.relationRow760 at r760
  simp only [Seg15.relationLc455, Seg15.relationLc455Part0, Seg15.relationLc455Part1, Seg15.relationLc455Part2, Seg15.relationLc455Part3] at r760
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r760 ⊢
  exact r760

theorem seg15_prefix_102_selY (rho : Nat -> Seg15.F)
    (r761 : Seg15.relationRow761 rho) :
    (1*rho 16489)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY101 rho + rho 17145) = rho 17147 := by
  rw [seg15AccY101_sum]
  unfold Seg15.relationRow761 at r761
  simp only [Seg15.relationLc456, Seg15.relationLc456Part0, Seg15.relationLc456Part1, Seg15.relationLc456Part2, Seg15.relationLc456Part3] at r761
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r761 ⊢
  exact r761

theorem seg15_prefix_103_v2 (rho : Nat -> Seg15.F)
    (r762 : Seg15.relationRow762 rho) :
    (2388117029334704014295999076648404180615248067725950633314437733657386231537*rho 16387 + 6957933836512070640691601954586154943368265695190068047948916244564022113965*seg15AccX102 rho)*(8369486889684447585888627798949610355657427187681987352515502147529450461315 + 6332646434650531287581198517323463195769672261257243905099669120949071975567*rho 16387 + 8369486889684447585888627798949610355657427187681987352515502147529450461315*seg15AccY102 rho) = rho 17148 := by
  rw [seg15AccX102_sum, seg15AccY102_sum]
  unfold Seg15.relationRow762 at r762
  simp only [Seg15.relationLc457, Seg15.relationLc457Part0, Seg15.relationLc457Part1, Seg15.relationLc457Part2, Seg15.relationLc457Part3] at r762
  simp only [Seg15.relationLc458, Seg15.relationLc458Part0, Seg15.relationLc458Part1, Seg15.relationLc458Part2, Seg15.relationLc458Part3] at r762
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r762 ⊢
  exact r762

theorem seg15_prefix_103_addX (rho : Nat -> Seg15.F)
    (r763 : Seg15.relationRow763 rho) :
    rho 17149*(1 + rho 17148) = 8369486889684447585888627798949610355657427187681987352515502147529450461315 + 4896676483582392362043429560204275339779405127791019854478882772518786982970*rho 16387 + 8293025979027162776882723062026035474016645380258902145549106701918437545551*seg15AccX102 rho + 8369486889684447585888627798949610355657427187681987352515502147529450461315*seg15AccY102 rho := by
  rw [add_assoc, seg15AccWeighted102]
  unfold Seg15.relationRow763 at r763
  simp only [Seg15.relationLc459, Seg15.relationLc459Part0, Seg15.relationLc459Part1, Seg15.relationLc459Part2, Seg15.relationLc459Part3, Seg15.relationLc459Part4, Seg15.relationLc459Part5, Seg15.relationLc459Part6] at r763
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r763 ⊢
  exact r763

theorem seg15_prefix_103_addY (rho : Nat -> Seg15.F)
    (r764 : Seg15.relationRow764 rho) :
    rho 17150*(1 + (-1)*rho 17148) = 8293025979027162776882723062026035474016645380258902145549106701918437545551 + 4768414250969583693261357891166172345692760929377044798652568803671131166891*rho 16387 + 8369486889684447585888627798949610355657427187681987352515502147529450461315*seg15AccX102 rho + 8293025979027162776882723062026035474016645380258902145549106701918437545551*seg15AccY102 rho := by
  rw [add_assoc, seg15AccWeighted102]
  unfold Seg15.relationRow764 at r764
  simp only [Seg15.relationLc460, Seg15.relationLc460Part0, Seg15.relationLc460Part1, Seg15.relationLc460Part2, Seg15.relationLc460Part3, Seg15.relationLc460Part4, Seg15.relationLc460Part5, Seg15.relationLc460Part6] at r764
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r764 ⊢
  exact r764

theorem seg15_prefix_103_selX (rho : Nat -> Seg15.F)
    (r765 : Seg15.relationRow765 rho) :
    (1*rho 16490)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX102 rho + rho 17149) = rho 17151 := by
  rw [seg15AccX102_sum]
  unfold Seg15.relationRow765 at r765
  simp only [Seg15.relationLc461, Seg15.relationLc461Part0, Seg15.relationLc461Part1, Seg15.relationLc461Part2, Seg15.relationLc461Part3] at r765
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r765 ⊢
  exact r765

theorem seg15_prefix_103_selY (rho : Nat -> Seg15.F)
    (r766 : Seg15.relationRow766 rho) :
    (1*rho 16490)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY102 rho + rho 17150) = rho 17152 := by
  rw [seg15AccY102_sum]
  unfold Seg15.relationRow766 at r766
  simp only [Seg15.relationLc462, Seg15.relationLc462Part0, Seg15.relationLc462Part1, Seg15.relationLc462Part2, Seg15.relationLc462Part3] at r766
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r766 ⊢
  exact r766

theorem seg15_prefix_104_v2 (rho : Nat -> Seg15.F)
    (r767 : Seg15.relationRow767 rho) :
    (6051673965157560092114760277064480394647900116693339783892646729960468842230*rho 16387 + 6782707603869949925200121812141714622311528380453455977187924778481262425243*seg15AccX103 rho)*(4145120736921974848653672641363906012150585655549977251064616194653256647480 + 2675555371787428154002211846582178465521211181571418107241108938057384245176*rho 16387 + 4145120736921974848653672641363906012150585655549977251064616194653256647480*seg15AccY103 rho) = rho 17153 := by
  rw [seg15AccX103_sum, seg15AccY103_sum]
  unfold Seg15.relationRow767 at r767
  simp only [Seg15.relationLc463, Seg15.relationLc463Part0, Seg15.relationLc463Part1, Seg15.relationLc463Part2, Seg15.relationLc463Part3] at r767
  simp only [Seg15.relationLc464, Seg15.relationLc464Part0, Seg15.relationLc464Part1, Seg15.relationLc464Part2, Seg15.relationLc464Part3] at r767
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r767 ⊢
  exact r767

theorem seg15_prefix_104_addX (rho : Nat -> Seg15.F)
    (r768 : Seg15.relationRow768 rho) :
    rho 17154*(1 + rho 17153) = 4145120736921974848653672641363906012150585655549977251064616194653256647480 + 477693828313422869728226256862214003489372427301456209590948036674716055079*rho 16387 + 737396937339798534095544879414660196085459468231040133308227184271684836906*seg15AccX103 rho + 4145120736921974848653672641363906012150585655549977251064616194653256647480*seg15AccY103 rho := by
  rw [add_assoc, seg15AccWeighted103]
  unfold Seg15.relationRow768 at r768
  simp only [Seg15.relationLc465, Seg15.relationLc465Part0, Seg15.relationLc465Part1, Seg15.relationLc465Part2, Seg15.relationLc465Part3, Seg15.relationLc465Part4, Seg15.relationLc465Part5, Seg15.relationLc465Part6] at r768
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r768 ⊢
  exact r768

theorem seg15_prefix_104_addY (rho : Nat -> Seg15.F)
    (r769 : Seg15.relationRow769 rho) :
    rho 17155*(1 + (-1)*rho 17153) = 737396937339798534095544879414660196085459468231040133308227184271684836906 + 3067103044818000616202305504759861198041621034645928761154638115016820716409*rho 16387 + 4145120736921974848653672641363906012150585655549977251064616194653256647480*seg15AccX103 rho + 737396937339798534095544879414660196085459468231040133308227184271684836906*seg15AccY103 rho := by
  rw [add_assoc, seg15AccWeighted103]
  unfold Seg15.relationRow769 at r769
  simp only [Seg15.relationLc466, Seg15.relationLc466Part0, Seg15.relationLc466Part1, Seg15.relationLc466Part2, Seg15.relationLc466Part3, Seg15.relationLc466Part4, Seg15.relationLc466Part5, Seg15.relationLc466Part6] at r769
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r769 ⊢
  exact r769

theorem seg15_prefix_104_selX (rho : Nat -> Seg15.F)
    (r770 : Seg15.relationRow770 rho) :
    (1*rho 16491)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX103 rho + rho 17154) = rho 17156 := by
  rw [seg15AccX103_sum]
  unfold Seg15.relationRow770 at r770
  simp only [Seg15.relationLc467, Seg15.relationLc467Part0, Seg15.relationLc467Part1, Seg15.relationLc467Part2, Seg15.relationLc467Part3] at r770
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r770 ⊢
  exact r770

theorem seg15_prefix_104_selY (rho : Nat -> Seg15.F)
    (r771 : Seg15.relationRow771 rho) :
    (1*rho 16491)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY103 rho + rho 17155) = rho 17157 := by
  rw [seg15AccY103_sum]
  unfold Seg15.relationRow771 at r771
  simp only [Seg15.relationLc468, Seg15.relationLc468Part0, Seg15.relationLc468Part1, Seg15.relationLc468Part2, Seg15.relationLc468Part3] at r771
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r771 ⊢
  exact r771

theorem seg15_prefix_105_v2 (rho : Nat -> Seg15.F)
    (r772 : Seg15.relationRow772 rho) :
    (448133618054658546229980299568494592297006321682566444874660444562964050464*rho 16387 + 6679935628338152398468277509230599074206436943528958451241257955450738290339*seg15AccX104 rho)*(3165553600781925786182099034285695654121495178855359865308824420665789475418 + 1243508143831080745464502130485139434226495716753233102066310961361171472701*rho 16387 + 3165553600781925786182099034285695654121495178855359865308824420665789475418*seg15AccY104 rho) = rho 17158 := by
  rw [seg15AccX104_sum, seg15AccY104_sum]
  unfold Seg15.relationRow772 at r772
  simp only [Seg15.relationLc469, Seg15.relationLc469Part0, Seg15.relationLc469Part1, Seg15.relationLc469Part2, Seg15.relationLc469Part3] at r772
  simp only [Seg15.relationLc470, Seg15.relationLc470Part0, Seg15.relationLc470Part1, Seg15.relationLc470Part2, Seg15.relationLc470Part3] at r772
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r772 ⊢
  exact r772

theorem seg15_prefix_105_addX (rho : Nat -> Seg15.F)
    (r773 : Seg15.relationRow773 rho) :
    rho 17159*(1 + rho 17158) = 3165553600781925786182099034285695654121495178855359865308824420665789475418 + 7345695542910917652012471286943161470832217416509275439976767530282809120128*rho 16387 + 8167147535818804422916016525551184381735587022485451638480654810556174487100*seg15AccX104 rho + 3165553600781925786182099034285695654121495178855359865308824420665789475418*seg15AccY104 rho := by
  rw [add_assoc, seg15AccWeighted104]
  unfold Seg15.relationRow773 at r773
  simp only [Seg15.relationLc471, Seg15.relationLc471Part0, Seg15.relationLc471Part1, Seg15.relationLc471Part2, Seg15.relationLc471Part3, Seg15.relationLc471Part4, Seg15.relationLc471Part5, Seg15.relationLc471Part6] at r773
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r773 ⊢
  exact r773

theorem seg15_prefix_105_addY (rho : Nat -> Seg15.F)
    (r774 : Seg15.relationRow774 rho) :
    rho 17160*(1 + (-1)*rho 17158) = 8167147535818804422916016525551184381735587022485451638480654810556174487100 + 3796930954529644023654080320640847780983417184699651433626814643213042677538*rho 16387 + 3165553600781925786182099034285695654121495178855359865308824420665789475418*seg15AccX104 rho + 8167147535818804422916016525551184381735587022485451638480654810556174487100*seg15AccY104 rho := by
  rw [add_assoc, seg15AccWeighted104]
  unfold Seg15.relationRow774 at r774
  simp only [Seg15.relationLc472, Seg15.relationLc472Part0, Seg15.relationLc472Part1, Seg15.relationLc472Part2, Seg15.relationLc472Part3, Seg15.relationLc472Part4, Seg15.relationLc472Part5, Seg15.relationLc472Part6] at r774
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r774 ⊢
  exact r774

theorem seg15_prefix_105_selX (rho : Nat -> Seg15.F)
    (r775 : Seg15.relationRow775 rho) :
    (1*rho 16492)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX104 rho + rho 17159) = rho 17161 := by
  rw [seg15AccX104_sum]
  unfold Seg15.relationRow775 at r775
  simp only [Seg15.relationLc473, Seg15.relationLc473Part0, Seg15.relationLc473Part1, Seg15.relationLc473Part2, Seg15.relationLc473Part3] at r775
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r775 ⊢
  exact r775

theorem seg15_prefix_105_selY (rho : Nat -> Seg15.F)
    (r776 : Seg15.relationRow776 rho) :
    (1*rho 16492)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY104 rho + rho 17160) = rho 17162 := by
  rw [seg15AccY104_sum]
  unfold Seg15.relationRow776 at r776
  simp only [Seg15.relationLc474, Seg15.relationLc474Part0, Seg15.relationLc474Part1, Seg15.relationLc474Part2, Seg15.relationLc474Part3] at r776
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r776 ⊢
  exact r776

theorem seg15_prefix_106_v2 (rho : Nat -> Seg15.F)
    (r777 : Seg15.relationRow777 rho) :
    (6171900443306265436139038268085329064215901428278366185893286814715436360930*rho 16387 + 8420431283516515239166733457192509618731498049875930476294212808737930130122*seg15AccX105 rho)*(7673403784918232616123976075905393119368464308773381374899074385988453339251 + 7097193599401662905777697165846591568654430638302399028548073549995408685798*rho 16387 + 7673403784918232616123976075905393119368464308773381374899074385988453339251*seg15AccY105 rho) = rho 17163 := by
  rw [seg15AccX105_sum, seg15AccY105_sum]
  unfold Seg15.relationRow777 at r777
  simp only [Seg15.relationLc475, Seg15.relationLc475Part0, Seg15.relationLc475Part1, Seg15.relationLc475Part2, Seg15.relationLc475Part3] at r777
  simp only [Seg15.relationLc476, Seg15.relationLc476Part0, Seg15.relationLc476Part1, Seg15.relationLc476Part2, Seg15.relationLc476Part3] at r777
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r777 ⊢
  exact r777

theorem seg15_prefix_106_addX (rho : Nat -> Seg15.F)
    (r778 : Seg15.relationRow778 rho) :
    rho 17164*(1 + rho 17163) = 7673403784918232616123976075905393119368464308773381374899074385988453339251 + 4231306193089116798580360075836071405752260225710611169800752716179934854982*rho 16387 + 2839969912927279872840689853134876610051396664426100865882342327231018969797*seg15AccX105 rho + 7673403784918232616123976075905393119368464308773381374899074385988453339251*seg15AccY105 rho := by
  rw [add_assoc, seg15AccWeighted105]
  unfold Seg15.relationRow778 at r778
  simp only [Seg15.relationLc477, Seg15.relationLc477Part0, Seg15.relationLc477Part1, Seg15.relationLc477Part2, Seg15.relationLc477Part3, Seg15.relationLc477Part4, Seg15.relationLc477Part5, Seg15.relationLc477Part6] at r778
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r778 ⊢
  exact r778

theorem seg15_prefix_106_addY (rho : Nat -> Seg15.F)
    (r779 : Seg15.relationRow779 rho) :
    rho 17165*(1 + (-1)*rho 17163) = 2839969912927279872840689853134876610051396664426100865882342327231018969797 + 1655897341974058602991122781470433356950214897226624602461013101212155498886*rho 16387 + 7673403784918232616123976075905393119368464308773381374899074385988453339251*seg15AccX105 rho + 2839969912927279872840689853134876610051396664426100865882342327231018969797*seg15AccY105 rho := by
  rw [add_assoc, seg15AccWeighted105]
  unfold Seg15.relationRow779 at r779
  simp only [Seg15.relationLc478, Seg15.relationLc478Part0, Seg15.relationLc478Part1, Seg15.relationLc478Part2, Seg15.relationLc478Part3, Seg15.relationLc478Part4, Seg15.relationLc478Part5, Seg15.relationLc478Part6] at r779
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r779 ⊢
  exact r779

theorem seg15_prefix_106_selX (rho : Nat -> Seg15.F)
    (r780 : Seg15.relationRow780 rho) :
    (1*rho 16493)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX105 rho + rho 17164) = rho 17166 := by
  rw [seg15AccX105_sum]
  unfold Seg15.relationRow780 at r780
  simp only [Seg15.relationLc479, Seg15.relationLc479Part0, Seg15.relationLc479Part1, Seg15.relationLc479Part2, Seg15.relationLc479Part3] at r780
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r780 ⊢
  exact r780

theorem seg15_prefix_106_selY (rho : Nat -> Seg15.F)
    (r781 : Seg15.relationRow781 rho) :
    (1*rho 16493)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY105 rho + rho 17165) = rho 17167 := by
  rw [seg15AccY105_sum]
  unfold Seg15.relationRow781 at r781
  simp only [Seg15.relationLc480, Seg15.relationLc480Part0, Seg15.relationLc480Part1, Seg15.relationLc480Part2, Seg15.relationLc480Part3] at r781
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r781 ⊢
  exact r781

theorem seg15_prefix_107_v2 (rho : Nat -> Seg15.F)
    (r782 : Seg15.relationRow782 rho) :
    (7513835879182803745630240013231637882820161472951662458538143120260969668224*rho 16387 + 4192118223431191948576229703026611961899211540869084381246995287642068887532*seg15AccX106 rho)*(1260524991046773370299244198533464015894934729825781128565583702027868659052 + 2214913009684229514296527901173036753304215905453315312871645431738308265406*rho 16387 + 1260524991046773370299244198533464015894934729825781128565583702027868659052*seg15AccY106 rho) = rho 17168 := by
  rw [seg15AccX106_sum, seg15AccY106_sum]
  unfold Seg15.relationRow782 at r782
  simp only [Seg15.relationLc481, Seg15.relationLc481Part0, Seg15.relationLc481Part1, Seg15.relationLc481Part2, Seg15.relationLc481Part3] at r782
  simp only [Seg15.relationLc482, Seg15.relationLc482Part0, Seg15.relationLc482Part1, Seg15.relationLc482Part2, Seg15.relationLc482Part3] at r782
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r782 ⊢
  exact r782

theorem seg15_prefix_107_addX (rho : Nat -> Seg15.F)
    (r783 : Seg15.relationRow783 rho) :
    rho 17169*(1 + rho 17168) = 1260524991046773370299244198533464015894934729825781128565583702027868659052 + 6119574525103358251799669196953331554920758650686027913419849353479772769666*rho 16387 + 7847665093965199262765649729514342179918586112319869662163339061915858921839*seg15AccX106 rho + 1260524991046773370299244198533464015894934729825781128565583702027868659052*seg15AccY106 rho := by
  rw [add_assoc, seg15AccWeighted106]
  unfold Seg15.relationRow783 at r783
  simp only [Seg15.relationLc483, Seg15.relationLc483Part0, Seg15.relationLc483Part1, Seg15.relationLc483Part2, Seg15.relationLc483Part3, Seg15.relationLc483Part4, Seg15.relationLc483Part5, Seg15.relationLc483Part6] at r783
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r783 ⊢
  exact r783

theorem seg15_prefix_107_addY (rho : Nat -> Seg15.F)
    (r784 : Seg15.relationRow784 rho) :
    rho 17170*(1 + (-1)*rho 17168) = 7847665093965199262765649729514342179918586112319869662163339061915858921839 + 5781387667770032033402740426547068681911852292873038357115912333087689425709*rho 16387 + 1260524991046773370299244198533464015894934729825781128565583702027868659052*seg15AccX106 rho + 7847665093965199262765649729514342179918586112319869662163339061915858921839*seg15AccY106 rho := by
  rw [add_assoc, seg15AccWeighted106]
  unfold Seg15.relationRow784 at r784
  simp only [Seg15.relationLc484, Seg15.relationLc484Part0, Seg15.relationLc484Part1, Seg15.relationLc484Part2, Seg15.relationLc484Part3, Seg15.relationLc484Part4, Seg15.relationLc484Part5, Seg15.relationLc484Part6] at r784
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r784 ⊢
  exact r784

theorem seg15_prefix_107_selX (rho : Nat -> Seg15.F)
    (r785 : Seg15.relationRow785 rho) :
    (1*rho 16494)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX106 rho + rho 17169) = rho 17171 := by
  rw [seg15AccX106_sum]
  unfold Seg15.relationRow785 at r785
  simp only [Seg15.relationLc485, Seg15.relationLc485Part0, Seg15.relationLc485Part1, Seg15.relationLc485Part2, Seg15.relationLc485Part3] at r785
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r785 ⊢
  exact r785

theorem seg15_prefix_107_selY (rho : Nat -> Seg15.F)
    (r786 : Seg15.relationRow786 rho) :
    (1*rho 16494)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY106 rho + rho 17170) = rho 17172 := by
  rw [seg15AccY106_sum]
  unfold Seg15.relationRow786 at r786
  simp only [Seg15.relationLc486, Seg15.relationLc486Part0, Seg15.relationLc486Part1, Seg15.relationLc486Part2, Seg15.relationLc486Part3] at r786
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r786 ⊢
  exact r786

theorem seg15_prefix_108_v2 (rho : Nat -> Seg15.F)
    (r787 : Seg15.relationRow787 rho) :
    (2237627806897634859307700086481705695837285251959374786449150540179810463872*rho 16387 + 8078264009197303589973580787041376885392487990718089434226936659876814776586*seg15AccX107 rho)*(6962626945289492114397012865766748935061305438121947559619745232591740444316 + 18814393029343576151900933502353303155794589744080597726630900043602610997*rho 16387 + 6962626945289492114397012865766748935061305438121947559619745232591740444316*seg15AccY107 rho) = rho 17173 := by
  rw [seg15AccX107_sum, seg15AccY107_sum]
  unfold Seg15.relationRow787 at r787
  simp only [Seg15.relationLc487, Seg15.relationLc487Part0, Seg15.relationLc487Part1, Seg15.relationLc487Part2, Seg15.relationLc487Part3] at r787
  simp only [Seg15.relationLc488, Seg15.relationLc488Part0, Seg15.relationLc488Part1, Seg15.relationLc488Part2, Seg15.relationLc488Part3] at r787
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r787 ⊢
  exact r787

theorem seg15_prefix_108_addX (rho : Nat -> Seg15.F)
    (r788 : Seg15.relationRow788 rho) :
    rho 17174*(1 + rho 17173) = 6962626945289492114397012865766748935061305438121947559619745232591740444316 + 869312241302472422173400596354412836831435332259404920294906345637469615013*rho 16387 + 5095626471852925593039170016301562117528063911499974307822648888891557910728*seg15AccX107 rho + 6962626945289492114397012865766748935061305438121947559619745232591740444316*seg15AccY107 rho := by
  rw [add_assoc, seg15AccWeighted107]
  unfold Seg15.relationRow788 at r788
  simp only [Seg15.relationLc489, Seg15.relationLc489Part0, Seg15.relationLc489Part1, Seg15.relationLc489Part2, Seg15.relationLc489Part3, Seg15.relationLc489Part4, Seg15.relationLc489Part5, Seg15.relationLc489Part6] at r788
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r788 ⊢
  exact r788

theorem seg15_prefix_108_addY (rho : Nat -> Seg15.F)
    (r789 : Seg15.relationRow789 rho) :
    rho 17175*(1 + (-1)*rho 17173) = 5095626471852925593039170016301562117528063911499974307822648888891557910728 + 4952435177904146458220233564938569113666684850685530035021249355113584218572*rho 16387 + 6962626945289492114397012865766748935061305438121947559619745232591740444316*seg15AccX107 rho + 5095626471852925593039170016301562117528063911499974307822648888891557910728*seg15AccY107 rho := by
  rw [add_assoc, seg15AccWeighted107]
  unfold Seg15.relationRow789 at r789
  simp only [Seg15.relationLc490, Seg15.relationLc490Part0, Seg15.relationLc490Part1, Seg15.relationLc490Part2, Seg15.relationLc490Part3, Seg15.relationLc490Part4, Seg15.relationLc490Part5, Seg15.relationLc490Part6] at r789
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r789 ⊢
  exact r789

theorem seg15_prefix_108_selX (rho : Nat -> Seg15.F)
    (r790 : Seg15.relationRow790 rho) :
    (1*rho 16495)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX107 rho + rho 17174) = rho 17176 := by
  rw [seg15AccX107_sum]
  unfold Seg15.relationRow790 at r790
  simp only [Seg15.relationLc491, Seg15.relationLc491Part0, Seg15.relationLc491Part1, Seg15.relationLc491Part2, Seg15.relationLc491Part3] at r790
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r790 ⊢
  exact r790

theorem seg15_prefix_108_selY (rho : Nat -> Seg15.F)
    (r791 : Seg15.relationRow791 rho) :
    (1*rho 16495)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY107 rho + rho 17175) = rho 17177 := by
  rw [seg15AccY107_sum]
  unfold Seg15.relationRow791 at r791
  simp only [Seg15.relationLc492, Seg15.relationLc492Part0, Seg15.relationLc492Part1, Seg15.relationLc492Part2, Seg15.relationLc492Part3] at r791
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r791 ⊢
  exact r791

theorem seg15_prefix_109_v2 (rho : Nat -> Seg15.F)
    (r792 : Seg15.relationRow792 rho) :
    (6557751697947992234906904655494192058588742758853648003926269888731369902088*rho 16387 + 3734468812329077059924950204727031629122473060052984382313629408831163347172*seg15AccX108 rho)*(7237458763619685728655092675529746625581707090275300020477957794743309966828 + 2218295594801486147569305803986860457559073079568149607218132593548481807376*rho 16387 + 7237458763619685728655092675529746625581707090275300020477957794743309966828*seg15AccY108 rho) = rho 17178 := by
  rw [seg15AccX108_sum, seg15AccY108_sum]
  unfold Seg15.relationRow792 at r792
  simp only [Seg15.relationLc493, Seg15.relationLc493Part0, Seg15.relationLc493Part1, Seg15.relationLc493Part2, Seg15.relationLc493Part3] at r792
  simp only [Seg15.relationLc494, Seg15.relationLc494Part0, Seg15.relationLc494Part1, Seg15.relationLc494Part2, Seg15.relationLc494Part3] at r792
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r792 ⊢
  exact r792

theorem seg15_prefix_109_addX (rho : Nat -> Seg15.F)
    (r793 : Seg15.relationRow793 rho) :
    rho 17179*(1 + rho 17178) = 7237458763619685728655092675529746625581707090275300020477957794743309966828 + 5393079387353339316638264165513689158376760761845116205268584841928154384739*rho 16387 + 2804875737665999540741971653029665078649172296001184708308954910855343472395*seg15AccX108 rho + 7237458763619685728655092675529746625581707090275300020477957794743309966828*seg15AccY108 rho := by
  rw [add_assoc, seg15AccWeighted108]
  unfold Seg15.relationRow793 at r793
  simp only [Seg15.relationLc495, Seg15.relationLc495Part0, Seg15.relationLc495Part1, Seg15.relationLc495Part2, Seg15.relationLc495Part3, Seg15.relationLc495Part4, Seg15.relationLc495Part5, Seg15.relationLc495Part6] at r793
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r793 ⊢
  exact r793

theorem seg15_prefix_109_addY (rho : Nat -> Seg15.F)
    (r794 : Seg15.relationRow794 rho) :
    rho 17180*(1 + (-1)*rho 17178) = 2804875737665999540741971653029665078649172296001184708308954910855343472395 + 4610710194873497428010206747833905789852935740684970065079125792390369064319*rho 16387 + 7237458763619685728655092675529746625581707090275300020477957794743309966828*seg15AccX108 rho + 2804875737665999540741971653029665078649172296001184708308954910855343472395*seg15AccY108 rho := by
  rw [add_assoc, seg15AccWeighted108]
  unfold Seg15.relationRow794 at r794
  simp only [Seg15.relationLc496, Seg15.relationLc496Part0, Seg15.relationLc496Part1, Seg15.relationLc496Part2, Seg15.relationLc496Part3, Seg15.relationLc496Part4, Seg15.relationLc496Part5, Seg15.relationLc496Part6] at r794
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r794 ⊢
  exact r794

theorem seg15_prefix_109_selX (rho : Nat -> Seg15.F)
    (r795 : Seg15.relationRow795 rho) :
    (1*rho 16496)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX108 rho + rho 17179) = rho 17181 := by
  rw [seg15AccX108_sum]
  unfold Seg15.relationRow795 at r795
  simp only [Seg15.relationLc497, Seg15.relationLc497Part0, Seg15.relationLc497Part1, Seg15.relationLc497Part2, Seg15.relationLc497Part3] at r795
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r795 ⊢
  exact r795

theorem seg15_prefix_109_selY (rho : Nat -> Seg15.F)
    (r796 : Seg15.relationRow796 rho) :
    (1*rho 16496)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY108 rho + rho 17180) = rho 17182 := by
  rw [seg15AccY108_sum]
  unfold Seg15.relationRow796 at r796
  simp only [Seg15.relationLc498, Seg15.relationLc498Part0, Seg15.relationLc498Part1, Seg15.relationLc498Part2, Seg15.relationLc498Part3] at r796
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r796 ⊢
  exact r796

theorem seg15_prefix_110_v2 (rho : Nat -> Seg15.F)
    (r797 : Seg15.relationRow797 rho) :
    (7763900067584871699239273873026970932379347276428893124063049670480466451269*rho 16387 + 568596184901683623662901086713254788204948897441843689512915291178609917092*seg15AccX109 rho)*(5473866297145646085425721623875244674025755294626119106491049022693373548436 + 2671857680381596165133534350268632670833089194821162061937485372477153821385*rho 16387 + 5473866297145646085425721623875244674025755294626119106491049022693373548436*seg15AccY109 rho) = rho 17183 := by
  rw [seg15AccX109_sum, seg15AccY109_sum]
  unfold Seg15.relationRow797 at r797
  simp only [Seg15.relationLc499, Seg15.relationLc499Part0, Seg15.relationLc499Part1, Seg15.relationLc499Part2, Seg15.relationLc499Part3] at r797
  simp only [Seg15.relationLc500, Seg15.relationLc500Part0, Seg15.relationLc500Part1, Seg15.relationLc500Part2, Seg15.relationLc500Part3] at r797
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r797 ⊢
  exact r797

theorem seg15_prefix_110_addX (rho : Nat -> Seg15.F)
    (r798 : Seg15.relationRow798 rho) :
    rho 17184*(1 + rho 17183) = 5473866297145646085425721623875244674025755294626119106491049022693373548436 + 1701679332571768943703758843872422402052409412842616772630170512169713255766*rho 16387 + 5403413822519014138926395732456617907956907766881909044385408535445061459445*seg15AccX109 rho + 5473866297145646085425721623875244674025755294626119106491049022693373548436*seg15AccY109 rho := by
  rw [add_assoc, seg15AccWeighted109]
  unfold Seg15.relationRow798 at r798
  simp only [Seg15.relationLc501, Seg15.relationLc501Part0, Seg15.relationLc501Part1, Seg15.relationLc501Part2, Seg15.relationLc501Part3, Seg15.relationLc501Part4, Seg15.relationLc501Part5, Seg15.relationLc501Part6] at r798
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r798 ⊢
  exact r798

theorem seg15_prefix_110_addY (rho : Nat -> Seg15.F)
    (r799 : Seg15.relationRow799 rho) :
    rho 17185*(1 + (-1)*rho 17183) = 5403413822519014138926395732456617907956907766881909044385408535445061459445 + 7327999024681437242838383046063829421577254374760206324494471040672979390485*rho 16387 + 5473866297145646085425721623875244674025755294626119106491049022693373548436*seg15AccX109 rho + 5403413822519014138926395732456617907956907766881909044385408535445061459445*seg15AccY109 rho := by
  rw [add_assoc, seg15AccWeighted109]
  unfold Seg15.relationRow799 at r799
  simp only [Seg15.relationLc502, Seg15.relationLc502Part0, Seg15.relationLc502Part1, Seg15.relationLc502Part2, Seg15.relationLc502Part3, Seg15.relationLc502Part4, Seg15.relationLc502Part5, Seg15.relationLc502Part6] at r799
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r799 ⊢
  exact r799

theorem seg15_prefix_110_selX (rho : Nat -> Seg15.F)
    (r800 : Seg15.relationRow800 rho) :
    (1*rho 16497)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16387 + (-1)*seg15AccX109 rho + rho 17184) = rho 17186 := by
  rw [seg15AccX109_sum]
  unfold Seg15.relationRow800 at r800
  simp only [Seg15.relationLc503, Seg15.relationLc503Part0, Seg15.relationLc503Part1, Seg15.relationLc503Part2, Seg15.relationLc503Part3] at r800
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r800 ⊢
  exact r800

theorem seg15_prefix_110_selY (rho : Nat -> Seg15.F)
    (r801 : Seg15.relationRow801 rho) :
    (1*rho 16497)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16387 + (-1)*seg15AccY109 rho + rho 17185) = rho 17187 := by
  rw [seg15AccY109_sum]
  unfold Seg15.relationRow801 at r801
  simp only [Seg15.relationLc504, Seg15.relationLc504Part0, Seg15.relationLc504Part1, Seg15.relationLc504Part2, Seg15.relationLc504Part3] at r801
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r801 ⊢
  exact r801


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

