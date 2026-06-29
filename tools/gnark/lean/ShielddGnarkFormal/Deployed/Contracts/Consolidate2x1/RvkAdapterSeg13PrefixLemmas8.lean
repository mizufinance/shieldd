import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_prefix_81_v2 (rho : Nat -> Seg13.F)
    (r652 : Seg13.relationRow652 rho) :
    (3095872043888969263896429164308195273262937578393571560685502100763634414657*rho 10571 + 4171148466704651220389908484425727516067988246936310646425350299083169892930*seg13AccX80 rho)*(6075948261272125007466137503166569148380577991267134072933922076103126899382 + 2753830212946274734080901510274114235564601986241285087182291927643562326665*rho 10571 + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg13AccY80 rho) = rho 11222 := by
  rw [seg13AccX80_sum, seg13AccY80_sum]
  unfold Seg13.relationRow652 at r652
  simp only [Seg13.relationLc325, Seg13.relationLc325Part0, Seg13.relationLc325Part1, Seg13.relationLc325Part2] at r652
  simp only [Seg13.relationLc326, Seg13.relationLc326Part0, Seg13.relationLc326Part1, Seg13.relationLc326Part2] at r652
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r652 ⊢
  exact r652

theorem seg13_prefix_81_addX (rho : Nat -> Seg13.F)
    (r653 : Seg13.relationRow653 rho) :
    rho 11223*(1 + rho 11222) = 6075948261272125007466137503166569148380577991267134072933922076103126899382 + 6643053041644967957978290427523183888135650947769817479177854734423396780793*rho 10571 + 1575108610855636279401681015894881305753293384289531362387938360139220314953*seg13AccX80 rho + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg13AccY80 rho := by
  rw [add_assoc, seg13AccWeighted80]
  unfold Seg13.relationRow653 at r653
  simp only [Seg13.relationLc327, Seg13.relationLc327Part0, Seg13.relationLc327Part1, Seg13.relationLc327Part2, Seg13.relationLc327Part3, Seg13.relationLc327Part4, Seg13.relationLc327Part5] at r653
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r653 ⊢
  exact r653

theorem seg13_prefix_81_addY (rho : Nat -> Seg13.F)
    (r654 : Seg13.relationRow654 rho) :
    rho 11224*(1 + (-1)*rho 11222) = 1575108610855636279401681015894881305753293384289531362387938360139220314953 + 1944190991534382356061877854857180638324709297848421504967051709312870947874*rho 10571 + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg13AccX80 rho + 1575108610855636279401681015894881305753293384289531362387938360139220314953*seg13AccY80 rho := by
  rw [add_assoc, seg13AccWeighted80]
  unfold Seg13.relationRow654 at r654
  simp only [Seg13.relationLc328, Seg13.relationLc328Part0, Seg13.relationLc328Part1, Seg13.relationLc328Part2, Seg13.relationLc328Part3, Seg13.relationLc328Part4, Seg13.relationLc328Part5] at r654
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r654 ⊢
  exact r654

theorem seg13_prefix_81_selX (rho : Nat -> Seg13.F)
    (r655 : Seg13.relationRow655 rho) :
    (1*rho 10652)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX80 rho + rho 11223) = rho 11225 := by
  rw [seg13AccX80_sum]
  unfold Seg13.relationRow655 at r655
  simp only [Seg13.relationLc329, Seg13.relationLc329Part0, Seg13.relationLc329Part1, Seg13.relationLc329Part2] at r655
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r655 ⊢
  exact r655

theorem seg13_prefix_81_selY (rho : Nat -> Seg13.F)
    (r656 : Seg13.relationRow656 rho) :
    (1*rho 10652)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY80 rho + rho 11224) = rho 11226 := by
  rw [seg13AccY80_sum]
  unfold Seg13.relationRow656 at r656
  simp only [Seg13.relationLc330, Seg13.relationLc330Part0, Seg13.relationLc330Part1, Seg13.relationLc330Part2] at r656
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r656 ⊢
  exact r656

theorem seg13_prefix_82_v2 (rho : Nat -> Seg13.F)
    (r657 : Seg13.relationRow657 rho) :
    (3909475824386380137549903929611434474143820228075144355006436974185598099324*rho 10571 + 3606477877692461662957109389413456453654481356050762715016429689958378271754*seg13AccX81 rho)*(3020852559585742680112147288882682147588299607034066156569757547087536577105 + 795231880928258437557794133498488588455906730014666906275286167459374319483*rho 10571 + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg13AccY81 rho) = rho 11227 := by
  rw [seg13AccX81_sum, seg13AccY81_sum]
  unfold Seg13.relationRow657 at r657
  simp only [Seg13.relationLc331, Seg13.relationLc331Part0, Seg13.relationLc331Part1, Seg13.relationLc331Part2] at r657
  simp only [Seg13.relationLc332, Seg13.relationLc332Part0, Seg13.relationLc332Part1, Seg13.relationLc332Part2] at r657
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r657 ⊢
  exact r657

theorem seg13_prefix_82_addX (rho : Nat -> Seg13.F)
    (r658 : Seg13.relationRow658 rho) :
    rho 11228*(1 + rho 11227) = 3020852559585742680112147288882682147588299607034066156569757547087536577105 + 7728755420950352125831423975308434577296149752659537292781206527488954098007*rho 10571 + 143751746805209981231263548913363895913215937586530293922447314115109648945*seg13AccX81 rho + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg13AccY81 rho := by
  rw [add_assoc, seg13AccWeighted81]
  unfold Seg13.relationRow658 at r658
  simp only [Seg13.relationLc333, Seg13.relationLc333Part0, Seg13.relationLc333Part1, Seg13.relationLc333Part2, Seg13.relationLc333Part3, Seg13.relationLc333Part4, Seg13.relationLc333Part5] at r658
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r658 ⊢
  exact r658

theorem seg13_prefix_82_addY (rho : Nat -> Seg13.F)
    (r659 : Seg13.relationRow659 rho) :
    rho 11229*(1 + (-1)*rho 11227) = 143751746805209981231263548913363895913215937586530293922447314115109648945 + 3014817936280911672026913628016558529560374790681053700727771705456056218127*rho 10571 + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg13AccX81 rho + 143751746805209981231263548913363895913215937586530293922447314115109648945*seg13AccY81 rho := by
  rw [add_assoc, seg13AccWeighted81]
  unfold Seg13.relationRow659 at r659
  simp only [Seg13.relationLc334, Seg13.relationLc334Part0, Seg13.relationLc334Part1, Seg13.relationLc334Part2, Seg13.relationLc334Part3, Seg13.relationLc334Part4, Seg13.relationLc334Part5] at r659
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r659 ⊢
  exact r659

theorem seg13_prefix_82_selX (rho : Nat -> Seg13.F)
    (r660 : Seg13.relationRow660 rho) :
    (1*rho 10653)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX81 rho + rho 11228) = rho 11230 := by
  rw [seg13AccX81_sum]
  unfold Seg13.relationRow660 at r660
  simp only [Seg13.relationLc335, Seg13.relationLc335Part0, Seg13.relationLc335Part1, Seg13.relationLc335Part2] at r660
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r660 ⊢
  exact r660

theorem seg13_prefix_82_selY (rho : Nat -> Seg13.F)
    (r661 : Seg13.relationRow661 rho) :
    (1*rho 10653)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY81 rho + rho 11229) = rho 11231 := by
  rw [seg13AccY81_sum]
  unfold Seg13.relationRow661 at r661
  simp only [Seg13.relationLc336, Seg13.relationLc336Part0, Seg13.relationLc336Part1, Seg13.relationLc336Part2] at r661
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r661 ⊢
  exact r661

theorem seg13_prefix_83_v2 (rho : Nat -> Seg13.F)
    (r662 : Seg13.relationRow662 rho) :
    (7621915444124325191480647678072558098704848408090815923787421731984216850880*rho 10571 + 3766554936473951255540249522715488611853256733758667611827960753981783105824*seg13AccX82 rho)*(7790468062680097700391950100917682264194835765581192357593202771658598783151 + 8201295156430902398006891467380246727186705512452201264592190614802423168295*rho 10571 + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg13AccY82 rho) = rho 11232 := by
  rw [seg13AccX82_sum, seg13AccY82_sum]
  unfold Seg13.relationRow662 at r662
  simp only [Seg13.relationLc337, Seg13.relationLc337Part0, Seg13.relationLc337Part1, Seg13.relationLc337Part2] at r662
  simp only [Seg13.relationLc338, Seg13.relationLc338Part0, Seg13.relationLc338Part1, Seg13.relationLc338Part2] at r662
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r662 ⊢
  exact r662

theorem seg13_prefix_83_addX (rho : Nat -> Seg13.F)
    (r663 : Seg13.relationRow663 rho) :
    rho 11233*(1 + rho 11232) = 7790468062680097700391950100917682264194835765581192357593202771658598783151 + 2126936358743662087803162646051875459026328052598893106363984685827758001521*rho 10571 + 1751075673644036357774016769678902223519750493392983324693573023554544841690*seg13AccX82 rho + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg13AccY82 rho := by
  rw [add_assoc, seg13AccWeighted82]
  unfold Seg13.relationRow663 at r663
  simp only [Seg13.relationLc339, Seg13.relationLc339Part0, Seg13.relationLc339Part1, Seg13.relationLc339Part2, Seg13.relationLc339Part3, Seg13.relationLc339Part4, Seg13.relationLc339Part5] at r663
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r663 ⊢
  exact r663

theorem seg13_prefix_83_addY (rho : Nat -> Seg13.F)
    (r664 : Seg13.relationRow664 rho) :
    rho 11234*(1 + (-1)*rho 11232) = 1751075673644036357774016769678902223519750493392983324693573023554544841690 + 4445652771961411157792133795511392792424747091865093974256457248476981814276*rho 10571 + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg13AccX82 rho + 1751075673644036357774016769678902223519750493392983324693573023554544841690*seg13AccY82 rho := by
  rw [add_assoc, seg13AccWeighted82]
  unfold Seg13.relationRow664 at r664
  simp only [Seg13.relationLc340, Seg13.relationLc340Part0, Seg13.relationLc340Part1, Seg13.relationLc340Part2, Seg13.relationLc340Part3, Seg13.relationLc340Part4, Seg13.relationLc340Part5] at r664
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r664 ⊢
  exact r664

theorem seg13_prefix_83_selX (rho : Nat -> Seg13.F)
    (r665 : Seg13.relationRow665 rho) :
    (1*rho 10654)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX82 rho + rho 11233) = rho 11235 := by
  rw [seg13AccX82_sum]
  unfold Seg13.relationRow665 at r665
  simp only [Seg13.relationLc341, Seg13.relationLc341Part0, Seg13.relationLc341Part1, Seg13.relationLc341Part2] at r665
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r665 ⊢
  exact r665

theorem seg13_prefix_83_selY (rho : Nat -> Seg13.F)
    (r666 : Seg13.relationRow666 rho) :
    (1*rho 10654)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY82 rho + rho 11234) = rho 11236 := by
  rw [seg13AccY82_sum]
  unfold Seg13.relationRow666 at r666
  simp only [Seg13.relationLc342, Seg13.relationLc342Part0, Seg13.relationLc342Part1, Seg13.relationLc342Part2] at r666
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r666 ⊢
  exact r666

theorem seg13_prefix_84_v2 (rho : Nat -> Seg13.F)
    (r667 : Seg13.relationRow667 rho) :
    (1114119046654488412156978360057755686609664720675475355766786494969526974976*rho 10571 + 4057618003226322301380722646054133515350344497494379614603511631974896775073*seg13AccX83 rho)*(3788660986400498545861198287602112464652304302550183813246345683684554891399 + 8415988326101532143562530920364287788294739843006614146358467532537182975184*rho 10571 + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg13AccY83 rho) = rho 11237 := by
  rw [seg13AccX83_sum, seg13AccY83_sum]
  unfold Seg13.relationRow667 at r667
  simp only [Seg13.relationLc343, Seg13.relationLc343Part0, Seg13.relationLc343Part1, Seg13.relationLc343Part2] at r667
  simp only [Seg13.relationLc344, Seg13.relationLc344Part0, Seg13.relationLc344Part1, Seg13.relationLc344Part2] at r667
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r667 ⊢
  exact r667

theorem seg13_prefix_84_addX (rho : Nat -> Seg13.F)
    (r668 : Seg13.relationRow668 rho) :
    rho 11238*(1 + rho 11237) = 3788660986400498545861198287602112464652304302550183813246345683684554891399 + 5422640290818139149203598602894913879186173632073371218730904392916999006949*rho 10571 + 702951842803623733461713267884879944684111578159935253368535951362874748684*seg13AccX83 rho + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg13AccY83 rho := by
  rw [add_assoc, seg13AccWeighted83]
  unfold Seg13.relationRow668 at r668
  simp only [Seg13.relationLc345, Seg13.relationLc345Part0, Seg13.relationLc345Part1, Seg13.relationLc345Part2, Seg13.relationLc345Part3, Seg13.relationLc345Part4, Seg13.relationLc345Part5] at r668
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r668 ⊢
  exact r668

theorem seg13_prefix_84_addY (rho : Nat -> Seg13.F)
    (r669 : Seg13.relationRow669 rho) :
    rho 11239*(1 + (-1)*rho 11237) = 702951842803623733461713267884879944684111578159935253368535951362874748684 + 5025556459589336422978363340047262187464658303343479376519996551711562936563*rho 10571 + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg13AccX83 rho + 702951842803623733461713267884879944684111578159935253368535951362874748684*seg13AccY83 rho := by
  rw [add_assoc, seg13AccWeighted83]
  unfold Seg13.relationRow669 at r669
  simp only [Seg13.relationLc346, Seg13.relationLc346Part0, Seg13.relationLc346Part1, Seg13.relationLc346Part2, Seg13.relationLc346Part3, Seg13.relationLc346Part4, Seg13.relationLc346Part5] at r669
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r669 ⊢
  exact r669

theorem seg13_prefix_84_selX (rho : Nat -> Seg13.F)
    (r670 : Seg13.relationRow670 rho) :
    (1*rho 10655)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX83 rho + rho 11238) = rho 11240 := by
  rw [seg13AccX83_sum]
  unfold Seg13.relationRow670 at r670
  simp only [Seg13.relationLc347, Seg13.relationLc347Part0, Seg13.relationLc347Part1, Seg13.relationLc347Part2] at r670
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r670 ⊢
  exact r670

theorem seg13_prefix_84_selY (rho : Nat -> Seg13.F)
    (r671 : Seg13.relationRow671 rho) :
    (1*rho 10655)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY83 rho + rho 11239) = rho 11241 := by
  rw [seg13AccY83_sum]
  unfold Seg13.relationRow671 at r671
  simp only [Seg13.relationLc348, Seg13.relationLc348Part0, Seg13.relationLc348Part1, Seg13.relationLc348Part2] at r671
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r671 ⊢
  exact r671

theorem seg13_prefix_85_v2 (rho : Nat -> Seg13.F)
    (r672 : Seg13.relationRow672 rho) :
    (2752875008010564020883566174142247157044480591208246799816422655462893432145*rho 10571 + 5521699295475871864753056508204148223678162633978526892347350614954837511571*seg13AccX84 rho)*(1642915093056168336194297989174839011735959045657272474044918542645742295404 + 999253345431023173700117287462072931709406681660084743379432615777357612207*rho 10571 + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg13AccY84 rho) = rho 11242 := by
  rw [seg13AccX84_sum, seg13AccY84_sum]
  unfold Seg13.relationRow672 at r672
  simp only [Seg13.relationLc349, Seg13.relationLc349Part0, Seg13.relationLc349Part1, Seg13.relationLc349Part2] at r672
  simp only [Seg13.relationLc350, Seg13.relationLc350Part0, Seg13.relationLc350Part1, Seg13.relationLc350Part2] at r672
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r672 ⊢
  exact r672

theorem seg13_prefix_85_addX (rho : Nat -> Seg13.F)
    (r673 : Seg13.relationRow673 rho) :
    rho 11243*(1 + rho 11242) = 1642915093056168336194297989174839011735959045657272474044918542645742295404 + 8396406163701621884916030678455159449146571236909625006708278741898816645618*rho 10571 + 3068221197755179817035986102069367988461780778979803557145745929081877779788*seg13AccX84 rho + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg13AccY84 rho := by
  rw [add_assoc, seg13AccWeighted84]
  unfold Seg13.relationRow673 at r673
  simp only [Seg13.relationLc351, Seg13.relationLc351Part0, Seg13.relationLc351Part1, Seg13.relationLc351Part2, Seg13.relationLc351Part3, Seg13.relationLc351Part4, Seg13.relationLc351Part5] at r673
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r673 ⊢
  exact r673

theorem seg13_prefix_85_addY (rho : Nat -> Seg13.F)
    (r674 : Seg13.relationRow674 rho) :
    rho 11244*(1 + (-1)*rho 11242) = 3068221197755179817035986102069367988461780778979803557145745929081877779788 + 7059873362166045987362961083589418026509864897316794138950051358551377495103*rho 10571 + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg13AccX84 rho + 3068221197755179817035986102069367988461780778979803557145745929081877779788*seg13AccY84 rho := by
  rw [add_assoc, seg13AccWeighted84]
  unfold Seg13.relationRow674 at r674
  simp only [Seg13.relationLc352, Seg13.relationLc352Part0, Seg13.relationLc352Part1, Seg13.relationLc352Part2, Seg13.relationLc352Part3, Seg13.relationLc352Part4, Seg13.relationLc352Part5] at r674
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r674 ⊢
  exact r674

theorem seg13_prefix_85_selX (rho : Nat -> Seg13.F)
    (r675 : Seg13.relationRow675 rho) :
    (1*rho 10656)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX84 rho + rho 11243) = rho 11245 := by
  rw [seg13AccX84_sum]
  unfold Seg13.relationRow675 at r675
  simp only [Seg13.relationLc353, Seg13.relationLc353Part0, Seg13.relationLc353Part1, Seg13.relationLc353Part2] at r675
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r675 ⊢
  exact r675

theorem seg13_prefix_85_selY (rho : Nat -> Seg13.F)
    (r676 : Seg13.relationRow676 rho) :
    (1*rho 10656)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY84 rho + rho 11244) = rho 11246 := by
  rw [seg13AccY84_sum]
  unfold Seg13.relationRow676 at r676
  simp only [Seg13.relationLc354, Seg13.relationLc354Part0, Seg13.relationLc354Part1, Seg13.relationLc354Part2] at r676
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r676 ⊢
  exact r676

theorem seg13_prefix_86_v2 (rho : Nat -> Seg13.F)
    (r677 : Seg13.relationRow677 rho) :
    (5477888473051844104213404977281314913536255982406650950202859066687533352604*rho 10571 + 5875314823000567718468398952994848754922664908524519324365751156649417451005*seg13AccX85 rho)*(3280123669103700524397665050532530893628565732090995651830310775226771444999 + 483659877864017298282645335160677740150049015512611850596575714024882099756*rho 10571 + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg13AccY85 rho) = rho 11247 := by
  rw [seg13AccX85_sum, seg13AccY85_sum]
  unfold Seg13.relationRow677 at r677
  simp only [Seg13.relationLc355, Seg13.relationLc355Part0, Seg13.relationLc355Part1, Seg13.relationLc355Part2] at r677
  simp only [Seg13.relationLc356, Seg13.relationLc356Part0, Seg13.relationLc356Part1, Seg13.relationLc356Part2] at r677
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r677 ⊢
  exact r677

theorem seg13_prefix_86_addX (rho : Nat -> Seg13.F)
    (r678 : Seg13.relationRow678 rho) :
    rho 11248*(1 + rho 11247) = 3280123669103700524397665050532530893628565732090995651830310775226771444999 + 3697219771464232280595162137423927749903258082733540678550162638856325578409*rho 10571 + 5818867995823713810188769644673086123981519093467107363541074668295524013206*seg13AccX85 rho + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg13AccY85 rho := by
  rw [add_assoc, seg13AccWeighted85]
  unfold Seg13.relationRow678 at r678
  simp only [Seg13.relationLc357, Seg13.relationLc357Part0, Seg13.relationLc357Part1, Seg13.relationLc357Part2, Seg13.relationLc357Part3, Seg13.relationLc357Part4, Seg13.relationLc357Part5] at r678
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r678 ⊢
  exact r678

theorem seg13_prefix_86_addY (rho : Nat -> Seg13.F)
    (r679 : Seg13.relationRow679 rho) :
    rho 11249*(1 + (-1)*rho 11247) = 5818867995823713810188769644673086123981519093467107363541074668295524013206 + 3869906991999287255572332967163802692740859564722218277265168257637774615890*rho 10571 + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg13AccX85 rho + 5818867995823713810188769644673086123981519093467107363541074668295524013206*seg13AccY85 rho := by
  rw [add_assoc, seg13AccWeighted85]
  unfold Seg13.relationRow679 at r679
  simp only [Seg13.relationLc358, Seg13.relationLc358Part0, Seg13.relationLc358Part1, Seg13.relationLc358Part2, Seg13.relationLc358Part3, Seg13.relationLc358Part4, Seg13.relationLc358Part5] at r679
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r679 ⊢
  exact r679

theorem seg13_prefix_86_selX (rho : Nat -> Seg13.F)
    (r680 : Seg13.relationRow680 rho) :
    (1*rho 10657)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX85 rho + rho 11248) = rho 11250 := by
  rw [seg13AccX85_sum]
  unfold Seg13.relationRow680 at r680
  simp only [Seg13.relationLc359, Seg13.relationLc359Part0, Seg13.relationLc359Part1, Seg13.relationLc359Part2] at r680
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r680 ⊢
  exact r680

theorem seg13_prefix_86_selY (rho : Nat -> Seg13.F)
    (r681 : Seg13.relationRow681 rho) :
    (1*rho 10657)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY85 rho + rho 11249) = rho 11251 := by
  rw [seg13AccY85_sum]
  unfold Seg13.relationRow681 at r681
  simp only [Seg13.relationLc360, Seg13.relationLc360Part0, Seg13.relationLc360Part1, Seg13.relationLc360Part2] at r681
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r681 ⊢
  exact r681

theorem seg13_prefix_87_v2 (rho : Nat -> Seg13.F)
    (r682 : Seg13.relationRow682 rho) :
    (108787566386572987969553219646625715175982685210276690626178449889909211465*rho 10571 + 3266100972727780920478745108358337853971524136114438455381086990522349021937*seg13AccX86 rho)*(7031709787004940692472394662518287848099489276902889178969033723389135507548 + 8364191030312960177030230610335616396614882005722442462220723820210297943600*rho 10571 + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg13AccY86 rho) = rho 11252 := by
  rw [seg13AccX86_sum, seg13AccY86_sum]
  unfold Seg13.relationRow682 at r682
  simp only [Seg13.relationLc361, Seg13.relationLc361Part0, Seg13.relationLc361Part1, Seg13.relationLc361Part2] at r682
  simp only [Seg13.relationLc362, Seg13.relationLc362Part0, Seg13.relationLc362Part1, Seg13.relationLc362Part2] at r682
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r682 ⊢
  exact r682

theorem seg13_prefix_87_addX (rho : Nat -> Seg13.F)
    (r683 : Seg13.relationRow683 rho) :
    rho 11253*(1 + rho 11252) = 7031709787004940692472394662518287848099489276902889178969033723389135507548 + 8255212142308551082837004983260861782576985914565276552720939667171274755546*rho 10571 + 3595777527552999717479135258649926242040178109614114704131112648560182267603*seg13AccX86 rho + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg13AccY86 rho := by
  rw [add_assoc, seg13AccWeighted86]
  unfold Seg13.relationRow683 at r683
  simp only [Seg13.relationLc363, Seg13.relationLc363Part0, Seg13.relationLc363Part1, Seg13.relationLc363Part2, Seg13.relationLc363Part3, Seg13.relationLc363Part4, Seg13.relationLc363Part5] at r683
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r683 ⊢
  exact r683

theorem seg13_prefix_87_addY (rho : Nat -> Seg13.F)
    (r684 : Seg13.relationRow684 rho) :
    rho 11254*(1 + (-1)*rho 11252) = 3595777527552999717479135258649926242040178109614114704131112648560182267603 + 4736156545623580777384540766592061019307340316099661050493041670764466775994*rho 10571 + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg13AccX86 rho + 3595777527552999717479135258649926242040178109614114704131112648560182267603*seg13AccY86 rho := by
  rw [add_assoc, seg13AccWeighted86]
  unfold Seg13.relationRow684 at r684
  simp only [Seg13.relationLc364, Seg13.relationLc364Part0, Seg13.relationLc364Part1, Seg13.relationLc364Part2, Seg13.relationLc364Part3, Seg13.relationLc364Part4, Seg13.relationLc364Part5] at r684
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r684 ⊢
  exact r684

theorem seg13_prefix_87_selX (rho : Nat -> Seg13.F)
    (r685 : Seg13.relationRow685 rho) :
    (1*rho 10658)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX86 rho + rho 11253) = rho 11255 := by
  rw [seg13AccX86_sum]
  unfold Seg13.relationRow685 at r685
  simp only [Seg13.relationLc365, Seg13.relationLc365Part0, Seg13.relationLc365Part1, Seg13.relationLc365Part2] at r685
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r685 ⊢
  exact r685

theorem seg13_prefix_87_selY (rho : Nat -> Seg13.F)
    (r686 : Seg13.relationRow686 rho) :
    (1*rho 10658)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY86 rho + rho 11254) = rho 11256 := by
  rw [seg13AccY86_sum]
  unfold Seg13.relationRow686 at r686
  simp only [Seg13.relationLc366, Seg13.relationLc366Part0, Seg13.relationLc366Part1, Seg13.relationLc366Part2] at r686
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r686 ⊢
  exact r686

theorem seg13_prefix_88_v2 (rho : Nat -> Seg13.F)
    (r687 : Seg13.relationRow687 rho) :
    (529502284087046459666488542980438945459686277092178839399050484959576701564*rho 10571 + 26200193764347171125407596709908285096460117738061776850047079451019047352*seg13AccX87 rho)*(7936452357988611095616823186838963009242803597836007912202524795707885778990 + 1570170090437106096843875560441493473645609531430524209506513015550493859267*rho 10571 + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg13AccY87 rho) = rho 11257 := by
  rw [seg13AccX87_sum, seg13AccY87_sum]
  unfold Seg13.relationRow687 at r687
  simp only [Seg13.relationLc367, Seg13.relationLc367Part0, Seg13.relationLc367Part1, Seg13.relationLc367Part2] at r687
  simp only [Seg13.relationLc368, Seg13.relationLc368Part0, Seg13.relationLc368Part1, Seg13.relationLc368Part2] at r687
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r687 ⊢
  exact r687

theorem seg13_prefix_88_addX (rho : Nat -> Seg13.F)
    (r688 : Seg13.relationRow688 rho) :
    rho 11258*(1 + rho 11257) = 7936452357988611095616823186838963009242803597836007912202524795707885778990 + 7904390489804459432761619287625195850025367088443500314419004926041658676337*rho 10571 + 1447950144454703815601462007906504803554390041617856049204667652182942404790*seg13AccX87 rho + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg13AccY87 rho := by
  rw [add_assoc, seg13AccWeighted87]
  unfold Seg13.relationRow688 at r688
  simp only [Seg13.relationLc369, Seg13.relationLc369Part0, Seg13.relationLc369Part1, Seg13.relationLc369Part2, Seg13.relationLc369Part3, Seg13.relationLc369Part4, Seg13.relationLc369Part5] at r688
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r688 ⊢
  exact r688

theorem seg13_prefix_88_addY (rho : Nat -> Seg13.F)
    (r689 : Seg13.relationRow689 rho) :
    rho 11259*(1 + (-1)*rho 11257) = 1447950144454703815601462007906504803554390041617856049204667652182942404790 + 1144087987983058011604391365965542383344283330920575228737270886315331523144*rho 10571 + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg13AccX87 rho + 1447950144454703815601462007906504803554390041617856049204667652182942404790*seg13AccY87 rho := by
  rw [add_assoc, seg13AccWeighted87]
  unfold Seg13.relationRow689 at r689
  simp only [Seg13.relationLc370, Seg13.relationLc370Part0, Seg13.relationLc370Part1, Seg13.relationLc370Part2, Seg13.relationLc370Part3, Seg13.relationLc370Part4, Seg13.relationLc370Part5] at r689
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r689 ⊢
  exact r689

theorem seg13_prefix_88_selX (rho : Nat -> Seg13.F)
    (r690 : Seg13.relationRow690 rho) :
    (1*rho 10659)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX87 rho + rho 11258) = rho 11260 := by
  rw [seg13AccX87_sum]
  unfold Seg13.relationRow690 at r690
  simp only [Seg13.relationLc371, Seg13.relationLc371Part0, Seg13.relationLc371Part1, Seg13.relationLc371Part2] at r690
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r690 ⊢
  exact r690

theorem seg13_prefix_88_selY (rho : Nat -> Seg13.F)
    (r691 : Seg13.relationRow691 rho) :
    (1*rho 10659)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY87 rho + rho 11259) = rho 11261 := by
  rw [seg13AccY87_sum]
  unfold Seg13.relationRow691 at r691
  simp only [Seg13.relationLc372, Seg13.relationLc372Part0, Seg13.relationLc372Part1, Seg13.relationLc372Part2] at r691
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r691 ⊢
  exact r691

theorem seg13_prefix_89_v2 (rho : Nat -> Seg13.F)
    (r692 : Seg13.relationRow692 rho) :
    (7582837550068422223735267140763712102417066333942182552409190141783131332570*rho 10571 + 7087097300354708100130994740412149671502360901401685447105460186367585798810*seg13AccX88 rho)*(7317303818992294454761804521879536957884097368722720344564353606843686818560 + 7824856292175594371432062421309296506730692337607393469994065188588716269062*rho 10571 + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg13AccY88 rho) = rho 11262 := by
  rw [seg13AccX88_sum, seg13AccY88_sum]
  unfold Seg13.relationRow692 at r692
  simp only [Seg13.relationLc373, Seg13.relationLc373Part0, Seg13.relationLc373Part1, Seg13.relationLc373Part2] at r692
  simp only [Seg13.relationLc374, Seg13.relationLc374Part0, Seg13.relationLc374Part1, Seg13.relationLc374Part2] at r692
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r692 ⊢
  exact r692

theorem seg13_prefix_89_addX (rho : Nat -> Seg13.F)
    (r693 : Seg13.relationRow693 rho) :
    rho 11263*(1 + rho 11262) = 7317303818992294454761804521879536957884097368722720344564353606843686818560 + 8419960141374165358576877434272703185563564805461284139995613908481557675884*rho 10571 + 2934567187173358253272806473195052784205501742296595379328422825370317735039*seg13AccX88 rho + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg13AccY88 rho := by
  rw [add_assoc, seg13AccWeighted88]
  unfold Seg13.relationRow693 at r693
  simp only [Seg13.relationLc375, Seg13.relationLc375Part0, Seg13.relationLc375Part1, Seg13.relationLc375Part2, Seg13.relationLc375Part3, Seg13.relationLc375Part4, Seg13.relationLc375Part5] at r693
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r693 ⊢
  exact r693

theorem seg13_prefix_89_addY (rho : Nat -> Seg13.F)
    (r694 : Seg13.relationRow694 rho) :
    rho 11264*(1 + (-1)*rho 11262) = 2934567187173358253272806473195052784205501742296595379328422825370317735039 + 8183137533133929953836593527067042140091951128981924624733209100941525274475*rho 10571 + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg13AccX88 rho + 2934567187173358253272806473195052784205501742296595379328422825370317735039*seg13AccY88 rho := by
  rw [add_assoc, seg13AccWeighted88]
  unfold Seg13.relationRow694 at r694
  simp only [Seg13.relationLc376, Seg13.relationLc376Part0, Seg13.relationLc376Part1, Seg13.relationLc376Part2, Seg13.relationLc376Part3, Seg13.relationLc376Part4, Seg13.relationLc376Part5] at r694
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r694 ⊢
  exact r694

theorem seg13_prefix_89_selX (rho : Nat -> Seg13.F)
    (r695 : Seg13.relationRow695 rho) :
    (1*rho 10660)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX88 rho + rho 11263) = rho 11265 := by
  rw [seg13AccX88_sum]
  unfold Seg13.relationRow695 at r695
  simp only [Seg13.relationLc377, Seg13.relationLc377Part0, Seg13.relationLc377Part1, Seg13.relationLc377Part2] at r695
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r695 ⊢
  exact r695

theorem seg13_prefix_89_selY (rho : Nat -> Seg13.F)
    (r696 : Seg13.relationRow696 rho) :
    (1*rho 10660)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY88 rho + rho 11264) = rho 11266 := by
  rw [seg13AccY88_sum]
  unfold Seg13.relationRow696 at r696
  simp only [Seg13.relationLc378, Seg13.relationLc378Part0, Seg13.relationLc378Part1, Seg13.relationLc378Part2] at r696
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r696 ⊢
  exact r696

theorem seg13_prefix_90_v2 (rho : Nat -> Seg13.F)
    (r697 : Seg13.relationRow697 rho) :
    (8106250636419396786282151843311679883550901458438273481039369926572772228425*rho 10571 + 5553937132187018911618187782803373191498878807145456404870079374753212848821*seg13AccX89 rho)*(3816215092977295608751587065614119319182446763153944430884870878015873366014 + 1113765216506362856953168545775460761137336684574255069943489410559258707144*rho 10571 + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg13AccY89 rho) = rho 11267 := by
  rw [seg13AccX89_sum, seg13AccY89_sum]
  unfold Seg13.relationRow697 at r697
  simp only [Seg13.relationLc379, Seg13.relationLc379Part0, Seg13.relationLc379Part1, Seg13.relationLc379Part2] at r697
  simp only [Seg13.relationLc380, Seg13.relationLc380Part0, Seg13.relationLc380Part1, Seg13.relationLc380Part2] at r697
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r697 ⊢
  exact r697

theorem seg13_prefix_90_addX (rho : Nat -> Seg13.F)
    (r698 : Seg13.relationRow698 rho) :
    rho 11268*(1 + rho 11267) = 3816215092977295608751587065614119319182446763153944430884870878015873366014 + 6301644328001247508978276924882736661695378448284690910493273399520982279024*rho 10571 + 683880372059817743273198104218967469992458893275318447673309183256736533325*seg13AccX89 rho + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg13AccY89 rho := by
  rw [add_assoc, seg13AccWeighted89]
  unfold Seg13.relationRow698 at r698
  simp only [Seg13.relationLc381, Seg13.relationLc381Part0, Seg13.relationLc381Part1, Seg13.relationLc381Part2, Seg13.relationLc381Part3, Seg13.relationLc381Part4, Seg13.relationLc381Part5] at r698
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r698 ⊢
  exact r698

theorem seg13_prefix_90_addY (rho : Nat -> Seg13.F)
    (r699 : Seg13.relationRow699 rho) :
    rho 11269*(1 + (-1)*rho 11267) = 683880372059817743273198104218967469992458893275318447673309183256736533325 + 4716674405789172745841800507991441449338750937613045759663632659674869388009*rho 10571 + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg13AccX89 rho + 683880372059817743273198104218967469992458893275318447673309183256736533325*seg13AccY89 rho := by
  rw [add_assoc, seg13AccWeighted89]
  unfold Seg13.relationRow699 at r699
  simp only [Seg13.relationLc382, Seg13.relationLc382Part0, Seg13.relationLc382Part1, Seg13.relationLc382Part2, Seg13.relationLc382Part3, Seg13.relationLc382Part4, Seg13.relationLc382Part5] at r699
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r699 ⊢
  exact r699

theorem seg13_prefix_90_selX (rho : Nat -> Seg13.F)
    (r700 : Seg13.relationRow700 rho) :
    (1*rho 10661)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX89 rho + rho 11268) = rho 11270 := by
  rw [seg13AccX89_sum]
  unfold Seg13.relationRow700 at r700
  simp only [Seg13.relationLc383, Seg13.relationLc383Part0, Seg13.relationLc383Part1, Seg13.relationLc383Part2] at r700
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r700 ⊢
  exact r700

theorem seg13_prefix_90_selY (rho : Nat -> Seg13.F)
    (r701 : Seg13.relationRow701 rho) :
    (1*rho 10661)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY89 rho + rho 11269) = rho 11271 := by
  rw [seg13AccY89_sum]
  unfold Seg13.relationRow701 at r701
  simp only [Seg13.relationLc384, Seg13.relationLc384Part0, Seg13.relationLc384Part1, Seg13.relationLc384Part2] at r701
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r701 ⊢
  exact r701


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

