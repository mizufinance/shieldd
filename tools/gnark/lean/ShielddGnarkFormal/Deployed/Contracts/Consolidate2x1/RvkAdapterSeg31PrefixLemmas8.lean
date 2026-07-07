import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_prefix_81_v2 (rho : Nat -> Seg31.F)
    (r652 : Seg31.relationRow652 rho) :
    (3095872043888969263896429164308195273262937578393571560685502100763634414657*rho 29271 + 4171148466704651220389908484425727516067988246936310646425350299083169892930*seg31AccX80 rho)*(6075948261272125007466137503166569148380577991267134072933922076103126899382 + 2753830212946274734080901510274114235564601986241285087182291927643562326665*rho 29271 + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg31AccY80 rho) = rho 29922 := by
  rw [seg31AccX80_sum, seg31AccY80_sum]
  unfold Seg31.relationRow652 at r652
  simp only [Seg31.relationLc325, Seg31.relationLc325Part0, Seg31.relationLc325Part1, Seg31.relationLc325Part2] at r652
  simp only [Seg31.relationLc326, Seg31.relationLc326Part0, Seg31.relationLc326Part1, Seg31.relationLc326Part2] at r652
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r652 ⊢
  exact r652

theorem seg31_prefix_81_addX (rho : Nat -> Seg31.F)
    (r653 : Seg31.relationRow653 rho) :
    rho 29923*(1 + rho 29922) = 6075948261272125007466137503166569148380577991267134072933922076103126899382 + 6643053041644967957978290427523183888135650947769817479177854734423396780793*rho 29271 + 1575108610855636279401681015894881305753293384289531362387938360139220314953*seg31AccX80 rho + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg31AccY80 rho := by
  rw [add_assoc, seg31AccWeighted80]
  unfold Seg31.relationRow653 at r653
  simp only [Seg31.relationLc327, Seg31.relationLc327Part0, Seg31.relationLc327Part1, Seg31.relationLc327Part2, Seg31.relationLc327Part3, Seg31.relationLc327Part4, Seg31.relationLc327Part5] at r653
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r653 ⊢
  exact r653

theorem seg31_prefix_81_addY (rho : Nat -> Seg31.F)
    (r654 : Seg31.relationRow654 rho) :
    rho 29924*(1 + (-1)*rho 29922) = 1575108610855636279401681015894881305753293384289531362387938360139220314953 + 1944190991534382356061877854857180638324709297848421504967051709312870947874*rho 29271 + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg31AccX80 rho + 1575108610855636279401681015894881305753293384289531362387938360139220314953*seg31AccY80 rho := by
  rw [add_assoc, seg31AccWeighted80]
  unfold Seg31.relationRow654 at r654
  simp only [Seg31.relationLc328, Seg31.relationLc328Part0, Seg31.relationLc328Part1, Seg31.relationLc328Part2, Seg31.relationLc328Part3, Seg31.relationLc328Part4, Seg31.relationLc328Part5] at r654
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r654 ⊢
  exact r654

theorem seg31_prefix_81_selX (rho : Nat -> Seg31.F)
    (r655 : Seg31.relationRow655 rho) :
    (1*rho 29352)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX80 rho + rho 29923) = rho 29925 := by
  rw [seg31AccX80_sum]
  unfold Seg31.relationRow655 at r655
  simp only [Seg31.relationLc329, Seg31.relationLc329Part0, Seg31.relationLc329Part1, Seg31.relationLc329Part2] at r655
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r655 ⊢
  exact r655

theorem seg31_prefix_81_selY (rho : Nat -> Seg31.F)
    (r656 : Seg31.relationRow656 rho) :
    (1*rho 29352)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY80 rho + rho 29924) = rho 29926 := by
  rw [seg31AccY80_sum]
  unfold Seg31.relationRow656 at r656
  simp only [Seg31.relationLc330, Seg31.relationLc330Part0, Seg31.relationLc330Part1, Seg31.relationLc330Part2] at r656
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r656 ⊢
  exact r656

theorem seg31_prefix_82_v2 (rho : Nat -> Seg31.F)
    (r657 : Seg31.relationRow657 rho) :
    (3909475824386380137549903929611434474143820228075144355006436974185598099324*rho 29271 + 3606477877692461662957109389413456453654481356050762715016429689958378271754*seg31AccX81 rho)*(3020852559585742680112147288882682147588299607034066156569757547087536577105 + 795231880928258437557794133498488588455906730014666906275286167459374319483*rho 29271 + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg31AccY81 rho) = rho 29927 := by
  rw [seg31AccX81_sum, seg31AccY81_sum]
  unfold Seg31.relationRow657 at r657
  simp only [Seg31.relationLc331, Seg31.relationLc331Part0, Seg31.relationLc331Part1, Seg31.relationLc331Part2] at r657
  simp only [Seg31.relationLc332, Seg31.relationLc332Part0, Seg31.relationLc332Part1, Seg31.relationLc332Part2] at r657
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r657 ⊢
  exact r657

theorem seg31_prefix_82_addX (rho : Nat -> Seg31.F)
    (r658 : Seg31.relationRow658 rho) :
    rho 29928*(1 + rho 29927) = 3020852559585742680112147288882682147588299607034066156569757547087536577105 + 7728755420950352125831423975308434577296149752659537292781206527488954098007*rho 29271 + 143751746805209981231263548913363895913215937586530293922447314115109648945*seg31AccX81 rho + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg31AccY81 rho := by
  rw [add_assoc, seg31AccWeighted81]
  unfold Seg31.relationRow658 at r658
  simp only [Seg31.relationLc333, Seg31.relationLc333Part0, Seg31.relationLc333Part1, Seg31.relationLc333Part2, Seg31.relationLc333Part3, Seg31.relationLc333Part4, Seg31.relationLc333Part5] at r658
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r658 ⊢
  exact r658

theorem seg31_prefix_82_addY (rho : Nat -> Seg31.F)
    (r659 : Seg31.relationRow659 rho) :
    rho 29929*(1 + (-1)*rho 29927) = 143751746805209981231263548913363895913215937586530293922447314115109648945 + 3014817936280911672026913628016558529560374790681053700727771705456056218127*rho 29271 + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg31AccX81 rho + 143751746805209981231263548913363895913215937586530293922447314115109648945*seg31AccY81 rho := by
  rw [add_assoc, seg31AccWeighted81]
  unfold Seg31.relationRow659 at r659
  simp only [Seg31.relationLc334, Seg31.relationLc334Part0, Seg31.relationLc334Part1, Seg31.relationLc334Part2, Seg31.relationLc334Part3, Seg31.relationLc334Part4, Seg31.relationLc334Part5] at r659
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r659 ⊢
  exact r659

theorem seg31_prefix_82_selX (rho : Nat -> Seg31.F)
    (r660 : Seg31.relationRow660 rho) :
    (1*rho 29353)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX81 rho + rho 29928) = rho 29930 := by
  rw [seg31AccX81_sum]
  unfold Seg31.relationRow660 at r660
  simp only [Seg31.relationLc335, Seg31.relationLc335Part0, Seg31.relationLc335Part1, Seg31.relationLc335Part2] at r660
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r660 ⊢
  exact r660

theorem seg31_prefix_82_selY (rho : Nat -> Seg31.F)
    (r661 : Seg31.relationRow661 rho) :
    (1*rho 29353)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY81 rho + rho 29929) = rho 29931 := by
  rw [seg31AccY81_sum]
  unfold Seg31.relationRow661 at r661
  simp only [Seg31.relationLc336, Seg31.relationLc336Part0, Seg31.relationLc336Part1, Seg31.relationLc336Part2] at r661
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r661 ⊢
  exact r661

theorem seg31_prefix_83_v2 (rho : Nat -> Seg31.F)
    (r662 : Seg31.relationRow662 rho) :
    (7621915444124325191480647678072558098704848408090815923787421731984216850880*rho 29271 + 3766554936473951255540249522715488611853256733758667611827960753981783105824*seg31AccX82 rho)*(7790468062680097700391950100917682264194835765581192357593202771658598783151 + 8201295156430902398006891467380246727186705512452201264592190614802423168295*rho 29271 + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg31AccY82 rho) = rho 29932 := by
  rw [seg31AccX82_sum, seg31AccY82_sum]
  unfold Seg31.relationRow662 at r662
  simp only [Seg31.relationLc337, Seg31.relationLc337Part0, Seg31.relationLc337Part1, Seg31.relationLc337Part2] at r662
  simp only [Seg31.relationLc338, Seg31.relationLc338Part0, Seg31.relationLc338Part1, Seg31.relationLc338Part2] at r662
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r662 ⊢
  exact r662

theorem seg31_prefix_83_addX (rho : Nat -> Seg31.F)
    (r663 : Seg31.relationRow663 rho) :
    rho 29933*(1 + rho 29932) = 7790468062680097700391950100917682264194835765581192357593202771658598783151 + 2126936358743662087803162646051875459026328052598893106363984685827758001521*rho 29271 + 1751075673644036357774016769678902223519750493392983324693573023554544841690*seg31AccX82 rho + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg31AccY82 rho := by
  rw [add_assoc, seg31AccWeighted82]
  unfold Seg31.relationRow663 at r663
  simp only [Seg31.relationLc339, Seg31.relationLc339Part0, Seg31.relationLc339Part1, Seg31.relationLc339Part2, Seg31.relationLc339Part3, Seg31.relationLc339Part4, Seg31.relationLc339Part5] at r663
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r663 ⊢
  exact r663

theorem seg31_prefix_83_addY (rho : Nat -> Seg31.F)
    (r664 : Seg31.relationRow664 rho) :
    rho 29934*(1 + (-1)*rho 29932) = 1751075673644036357774016769678902223519750493392983324693573023554544841690 + 4445652771961411157792133795511392792424747091865093974256457248476981814276*rho 29271 + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg31AccX82 rho + 1751075673644036357774016769678902223519750493392983324693573023554544841690*seg31AccY82 rho := by
  rw [add_assoc, seg31AccWeighted82]
  unfold Seg31.relationRow664 at r664
  simp only [Seg31.relationLc340, Seg31.relationLc340Part0, Seg31.relationLc340Part1, Seg31.relationLc340Part2, Seg31.relationLc340Part3, Seg31.relationLc340Part4, Seg31.relationLc340Part5] at r664
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r664 ⊢
  exact r664

theorem seg31_prefix_83_selX (rho : Nat -> Seg31.F)
    (r665 : Seg31.relationRow665 rho) :
    (1*rho 29354)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX82 rho + rho 29933) = rho 29935 := by
  rw [seg31AccX82_sum]
  unfold Seg31.relationRow665 at r665
  simp only [Seg31.relationLc341, Seg31.relationLc341Part0, Seg31.relationLc341Part1, Seg31.relationLc341Part2] at r665
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r665 ⊢
  exact r665

theorem seg31_prefix_83_selY (rho : Nat -> Seg31.F)
    (r666 : Seg31.relationRow666 rho) :
    (1*rho 29354)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY82 rho + rho 29934) = rho 29936 := by
  rw [seg31AccY82_sum]
  unfold Seg31.relationRow666 at r666
  simp only [Seg31.relationLc342, Seg31.relationLc342Part0, Seg31.relationLc342Part1, Seg31.relationLc342Part2] at r666
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r666 ⊢
  exact r666

theorem seg31_prefix_84_v2 (rho : Nat -> Seg31.F)
    (r667 : Seg31.relationRow667 rho) :
    (1114119046654488412156978360057755686609664720675475355766786494969526974976*rho 29271 + 4057618003226322301380722646054133515350344497494379614603511631974896775073*seg31AccX83 rho)*(3788660986400498545861198287602112464652304302550183813246345683684554891399 + 8415988326101532143562530920364287788294739843006614146358467532537182975184*rho 29271 + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg31AccY83 rho) = rho 29937 := by
  rw [seg31AccX83_sum, seg31AccY83_sum]
  unfold Seg31.relationRow667 at r667
  simp only [Seg31.relationLc343, Seg31.relationLc343Part0, Seg31.relationLc343Part1, Seg31.relationLc343Part2] at r667
  simp only [Seg31.relationLc344, Seg31.relationLc344Part0, Seg31.relationLc344Part1, Seg31.relationLc344Part2] at r667
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r667 ⊢
  exact r667

theorem seg31_prefix_84_addX (rho : Nat -> Seg31.F)
    (r668 : Seg31.relationRow668 rho) :
    rho 29938*(1 + rho 29937) = 3788660986400498545861198287602112464652304302550183813246345683684554891399 + 5422640290818139149203598602894913879186173632073371218730904392916999006949*rho 29271 + 702951842803623733461713267884879944684111578159935253368535951362874748684*seg31AccX83 rho + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg31AccY83 rho := by
  rw [add_assoc, seg31AccWeighted83]
  unfold Seg31.relationRow668 at r668
  simp only [Seg31.relationLc345, Seg31.relationLc345Part0, Seg31.relationLc345Part1, Seg31.relationLc345Part2, Seg31.relationLc345Part3, Seg31.relationLc345Part4, Seg31.relationLc345Part5] at r668
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r668 ⊢
  exact r668

theorem seg31_prefix_84_addY (rho : Nat -> Seg31.F)
    (r669 : Seg31.relationRow669 rho) :
    rho 29939*(1 + (-1)*rho 29937) = 702951842803623733461713267884879944684111578159935253368535951362874748684 + 5025556459589336422978363340047262187464658303343479376519996551711562936563*rho 29271 + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg31AccX83 rho + 702951842803623733461713267884879944684111578159935253368535951362874748684*seg31AccY83 rho := by
  rw [add_assoc, seg31AccWeighted83]
  unfold Seg31.relationRow669 at r669
  simp only [Seg31.relationLc346, Seg31.relationLc346Part0, Seg31.relationLc346Part1, Seg31.relationLc346Part2, Seg31.relationLc346Part3, Seg31.relationLc346Part4, Seg31.relationLc346Part5] at r669
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r669 ⊢
  exact r669

theorem seg31_prefix_84_selX (rho : Nat -> Seg31.F)
    (r670 : Seg31.relationRow670 rho) :
    (1*rho 29355)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX83 rho + rho 29938) = rho 29940 := by
  rw [seg31AccX83_sum]
  unfold Seg31.relationRow670 at r670
  simp only [Seg31.relationLc347, Seg31.relationLc347Part0, Seg31.relationLc347Part1, Seg31.relationLc347Part2] at r670
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r670 ⊢
  exact r670

theorem seg31_prefix_84_selY (rho : Nat -> Seg31.F)
    (r671 : Seg31.relationRow671 rho) :
    (1*rho 29355)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY83 rho + rho 29939) = rho 29941 := by
  rw [seg31AccY83_sum]
  unfold Seg31.relationRow671 at r671
  simp only [Seg31.relationLc348, Seg31.relationLc348Part0, Seg31.relationLc348Part1, Seg31.relationLc348Part2] at r671
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r671 ⊢
  exact r671

theorem seg31_prefix_85_v2 (rho : Nat -> Seg31.F)
    (r672 : Seg31.relationRow672 rho) :
    (2752875008010564020883566174142247157044480591208246799816422655462893432145*rho 29271 + 5521699295475871864753056508204148223678162633978526892347350614954837511571*seg31AccX84 rho)*(1642915093056168336194297989174839011735959045657272474044918542645742295404 + 999253345431023173700117287462072931709406681660084743379432615777357612207*rho 29271 + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg31AccY84 rho) = rho 29942 := by
  rw [seg31AccX84_sum, seg31AccY84_sum]
  unfold Seg31.relationRow672 at r672
  simp only [Seg31.relationLc349, Seg31.relationLc349Part0, Seg31.relationLc349Part1, Seg31.relationLc349Part2] at r672
  simp only [Seg31.relationLc350, Seg31.relationLc350Part0, Seg31.relationLc350Part1, Seg31.relationLc350Part2] at r672
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r672 ⊢
  exact r672

theorem seg31_prefix_85_addX (rho : Nat -> Seg31.F)
    (r673 : Seg31.relationRow673 rho) :
    rho 29943*(1 + rho 29942) = 1642915093056168336194297989174839011735959045657272474044918542645742295404 + 8396406163701621884916030678455159449146571236909625006708278741898816645618*rho 29271 + 3068221197755179817035986102069367988461780778979803557145745929081877779788*seg31AccX84 rho + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg31AccY84 rho := by
  rw [add_assoc, seg31AccWeighted84]
  unfold Seg31.relationRow673 at r673
  simp only [Seg31.relationLc351, Seg31.relationLc351Part0, Seg31.relationLc351Part1, Seg31.relationLc351Part2, Seg31.relationLc351Part3, Seg31.relationLc351Part4, Seg31.relationLc351Part5] at r673
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r673 ⊢
  exact r673

theorem seg31_prefix_85_addY (rho : Nat -> Seg31.F)
    (r674 : Seg31.relationRow674 rho) :
    rho 29944*(1 + (-1)*rho 29942) = 3068221197755179817035986102069367988461780778979803557145745929081877779788 + 7059873362166045987362961083589418026509864897316794138950051358551377495103*rho 29271 + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg31AccX84 rho + 3068221197755179817035986102069367988461780778979803557145745929081877779788*seg31AccY84 rho := by
  rw [add_assoc, seg31AccWeighted84]
  unfold Seg31.relationRow674 at r674
  simp only [Seg31.relationLc352, Seg31.relationLc352Part0, Seg31.relationLc352Part1, Seg31.relationLc352Part2, Seg31.relationLc352Part3, Seg31.relationLc352Part4, Seg31.relationLc352Part5] at r674
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r674 ⊢
  exact r674

theorem seg31_prefix_85_selX (rho : Nat -> Seg31.F)
    (r675 : Seg31.relationRow675 rho) :
    (1*rho 29356)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX84 rho + rho 29943) = rho 29945 := by
  rw [seg31AccX84_sum]
  unfold Seg31.relationRow675 at r675
  simp only [Seg31.relationLc353, Seg31.relationLc353Part0, Seg31.relationLc353Part1, Seg31.relationLc353Part2] at r675
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r675 ⊢
  exact r675

theorem seg31_prefix_85_selY (rho : Nat -> Seg31.F)
    (r676 : Seg31.relationRow676 rho) :
    (1*rho 29356)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY84 rho + rho 29944) = rho 29946 := by
  rw [seg31AccY84_sum]
  unfold Seg31.relationRow676 at r676
  simp only [Seg31.relationLc354, Seg31.relationLc354Part0, Seg31.relationLc354Part1, Seg31.relationLc354Part2] at r676
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r676 ⊢
  exact r676

theorem seg31_prefix_86_v2 (rho : Nat -> Seg31.F)
    (r677 : Seg31.relationRow677 rho) :
    (5477888473051844104213404977281314913536255982406650950202859066687533352604*rho 29271 + 5875314823000567718468398952994848754922664908524519324365751156649417451005*seg31AccX85 rho)*(3280123669103700524397665050532530893628565732090995651830310775226771444999 + 483659877864017298282645335160677740150049015512611850596575714024882099756*rho 29271 + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg31AccY85 rho) = rho 29947 := by
  rw [seg31AccX85_sum, seg31AccY85_sum]
  unfold Seg31.relationRow677 at r677
  simp only [Seg31.relationLc355, Seg31.relationLc355Part0, Seg31.relationLc355Part1, Seg31.relationLc355Part2] at r677
  simp only [Seg31.relationLc356, Seg31.relationLc356Part0, Seg31.relationLc356Part1, Seg31.relationLc356Part2] at r677
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r677 ⊢
  exact r677

theorem seg31_prefix_86_addX (rho : Nat -> Seg31.F)
    (r678 : Seg31.relationRow678 rho) :
    rho 29948*(1 + rho 29947) = 3280123669103700524397665050532530893628565732090995651830310775226771444999 + 3697219771464232280595162137423927749903258082733540678550162638856325578409*rho 29271 + 5818867995823713810188769644673086123981519093467107363541074668295524013206*seg31AccX85 rho + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg31AccY85 rho := by
  rw [add_assoc, seg31AccWeighted85]
  unfold Seg31.relationRow678 at r678
  simp only [Seg31.relationLc357, Seg31.relationLc357Part0, Seg31.relationLc357Part1, Seg31.relationLc357Part2, Seg31.relationLc357Part3, Seg31.relationLc357Part4, Seg31.relationLc357Part5] at r678
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r678 ⊢
  exact r678

theorem seg31_prefix_86_addY (rho : Nat -> Seg31.F)
    (r679 : Seg31.relationRow679 rho) :
    rho 29949*(1 + (-1)*rho 29947) = 5818867995823713810188769644673086123981519093467107363541074668295524013206 + 3869906991999287255572332967163802692740859564722218277265168257637774615890*rho 29271 + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg31AccX85 rho + 5818867995823713810188769644673086123981519093467107363541074668295524013206*seg31AccY85 rho := by
  rw [add_assoc, seg31AccWeighted85]
  unfold Seg31.relationRow679 at r679
  simp only [Seg31.relationLc358, Seg31.relationLc358Part0, Seg31.relationLc358Part1, Seg31.relationLc358Part2, Seg31.relationLc358Part3, Seg31.relationLc358Part4, Seg31.relationLc358Part5] at r679
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r679 ⊢
  exact r679

theorem seg31_prefix_86_selX (rho : Nat -> Seg31.F)
    (r680 : Seg31.relationRow680 rho) :
    (1*rho 29357)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX85 rho + rho 29948) = rho 29950 := by
  rw [seg31AccX85_sum]
  unfold Seg31.relationRow680 at r680
  simp only [Seg31.relationLc359, Seg31.relationLc359Part0, Seg31.relationLc359Part1, Seg31.relationLc359Part2] at r680
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r680 ⊢
  exact r680

theorem seg31_prefix_86_selY (rho : Nat -> Seg31.F)
    (r681 : Seg31.relationRow681 rho) :
    (1*rho 29357)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY85 rho + rho 29949) = rho 29951 := by
  rw [seg31AccY85_sum]
  unfold Seg31.relationRow681 at r681
  simp only [Seg31.relationLc360, Seg31.relationLc360Part0, Seg31.relationLc360Part1, Seg31.relationLc360Part2] at r681
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r681 ⊢
  exact r681

theorem seg31_prefix_87_v2 (rho : Nat -> Seg31.F)
    (r682 : Seg31.relationRow682 rho) :
    (108787566386572987969553219646625715175982685210276690626178449889909211465*rho 29271 + 3266100972727780920478745108358337853971524136114438455381086990522349021937*seg31AccX86 rho)*(7031709787004940692472394662518287848099489276902889178969033723389135507548 + 8364191030312960177030230610335616396614882005722442462220723820210297943600*rho 29271 + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg31AccY86 rho) = rho 29952 := by
  rw [seg31AccX86_sum, seg31AccY86_sum]
  unfold Seg31.relationRow682 at r682
  simp only [Seg31.relationLc361, Seg31.relationLc361Part0, Seg31.relationLc361Part1, Seg31.relationLc361Part2] at r682
  simp only [Seg31.relationLc362, Seg31.relationLc362Part0, Seg31.relationLc362Part1, Seg31.relationLc362Part2] at r682
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r682 ⊢
  exact r682

theorem seg31_prefix_87_addX (rho : Nat -> Seg31.F)
    (r683 : Seg31.relationRow683 rho) :
    rho 29953*(1 + rho 29952) = 7031709787004940692472394662518287848099489276902889178969033723389135507548 + 8255212142308551082837004983260861782576985914565276552720939667171274755546*rho 29271 + 3595777527552999717479135258649926242040178109614114704131112648560182267603*seg31AccX86 rho + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg31AccY86 rho := by
  rw [add_assoc, seg31AccWeighted86]
  unfold Seg31.relationRow683 at r683
  simp only [Seg31.relationLc363, Seg31.relationLc363Part0, Seg31.relationLc363Part1, Seg31.relationLc363Part2, Seg31.relationLc363Part3, Seg31.relationLc363Part4, Seg31.relationLc363Part5] at r683
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r683 ⊢
  exact r683

theorem seg31_prefix_87_addY (rho : Nat -> Seg31.F)
    (r684 : Seg31.relationRow684 rho) :
    rho 29954*(1 + (-1)*rho 29952) = 3595777527552999717479135258649926242040178109614114704131112648560182267603 + 4736156545623580777384540766592061019307340316099661050493041670764466775994*rho 29271 + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg31AccX86 rho + 3595777527552999717479135258649926242040178109614114704131112648560182267603*seg31AccY86 rho := by
  rw [add_assoc, seg31AccWeighted86]
  unfold Seg31.relationRow684 at r684
  simp only [Seg31.relationLc364, Seg31.relationLc364Part0, Seg31.relationLc364Part1, Seg31.relationLc364Part2, Seg31.relationLc364Part3, Seg31.relationLc364Part4, Seg31.relationLc364Part5] at r684
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r684 ⊢
  exact r684

theorem seg31_prefix_87_selX (rho : Nat -> Seg31.F)
    (r685 : Seg31.relationRow685 rho) :
    (1*rho 29358)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX86 rho + rho 29953) = rho 29955 := by
  rw [seg31AccX86_sum]
  unfold Seg31.relationRow685 at r685
  simp only [Seg31.relationLc365, Seg31.relationLc365Part0, Seg31.relationLc365Part1, Seg31.relationLc365Part2] at r685
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r685 ⊢
  exact r685

theorem seg31_prefix_87_selY (rho : Nat -> Seg31.F)
    (r686 : Seg31.relationRow686 rho) :
    (1*rho 29358)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY86 rho + rho 29954) = rho 29956 := by
  rw [seg31AccY86_sum]
  unfold Seg31.relationRow686 at r686
  simp only [Seg31.relationLc366, Seg31.relationLc366Part0, Seg31.relationLc366Part1, Seg31.relationLc366Part2] at r686
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r686 ⊢
  exact r686

theorem seg31_prefix_88_v2 (rho : Nat -> Seg31.F)
    (r687 : Seg31.relationRow687 rho) :
    (529502284087046459666488542980438945459686277092178839399050484959576701564*rho 29271 + 26200193764347171125407596709908285096460117738061776850047079451019047352*seg31AccX87 rho)*(7936452357988611095616823186838963009242803597836007912202524795707885778990 + 1570170090437106096843875560441493473645609531430524209506513015550493859267*rho 29271 + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg31AccY87 rho) = rho 29957 := by
  rw [seg31AccX87_sum, seg31AccY87_sum]
  unfold Seg31.relationRow687 at r687
  simp only [Seg31.relationLc367, Seg31.relationLc367Part0, Seg31.relationLc367Part1, Seg31.relationLc367Part2] at r687
  simp only [Seg31.relationLc368, Seg31.relationLc368Part0, Seg31.relationLc368Part1, Seg31.relationLc368Part2] at r687
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r687 ⊢
  exact r687

theorem seg31_prefix_88_addX (rho : Nat -> Seg31.F)
    (r688 : Seg31.relationRow688 rho) :
    rho 29958*(1 + rho 29957) = 7936452357988611095616823186838963009242803597836007912202524795707885778990 + 7904390489804459432761619287625195850025367088443500314419004926041658676337*rho 29271 + 1447950144454703815601462007906504803554390041617856049204667652182942404790*seg31AccX87 rho + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg31AccY87 rho := by
  rw [add_assoc, seg31AccWeighted87]
  unfold Seg31.relationRow688 at r688
  simp only [Seg31.relationLc369, Seg31.relationLc369Part0, Seg31.relationLc369Part1, Seg31.relationLc369Part2, Seg31.relationLc369Part3, Seg31.relationLc369Part4, Seg31.relationLc369Part5] at r688
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r688 ⊢
  exact r688

theorem seg31_prefix_88_addY (rho : Nat -> Seg31.F)
    (r689 : Seg31.relationRow689 rho) :
    rho 29959*(1 + (-1)*rho 29957) = 1447950144454703815601462007906504803554390041617856049204667652182942404790 + 1144087987983058011604391365965542383344283330920575228737270886315331523144*rho 29271 + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg31AccX87 rho + 1447950144454703815601462007906504803554390041617856049204667652182942404790*seg31AccY87 rho := by
  rw [add_assoc, seg31AccWeighted87]
  unfold Seg31.relationRow689 at r689
  simp only [Seg31.relationLc370, Seg31.relationLc370Part0, Seg31.relationLc370Part1, Seg31.relationLc370Part2, Seg31.relationLc370Part3, Seg31.relationLc370Part4, Seg31.relationLc370Part5] at r689
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r689 ⊢
  exact r689

theorem seg31_prefix_88_selX (rho : Nat -> Seg31.F)
    (r690 : Seg31.relationRow690 rho) :
    (1*rho 29359)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX87 rho + rho 29958) = rho 29960 := by
  rw [seg31AccX87_sum]
  unfold Seg31.relationRow690 at r690
  simp only [Seg31.relationLc371, Seg31.relationLc371Part0, Seg31.relationLc371Part1, Seg31.relationLc371Part2] at r690
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r690 ⊢
  exact r690

theorem seg31_prefix_88_selY (rho : Nat -> Seg31.F)
    (r691 : Seg31.relationRow691 rho) :
    (1*rho 29359)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY87 rho + rho 29959) = rho 29961 := by
  rw [seg31AccY87_sum]
  unfold Seg31.relationRow691 at r691
  simp only [Seg31.relationLc372, Seg31.relationLc372Part0, Seg31.relationLc372Part1, Seg31.relationLc372Part2] at r691
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r691 ⊢
  exact r691

theorem seg31_prefix_89_v2 (rho : Nat -> Seg31.F)
    (r692 : Seg31.relationRow692 rho) :
    (7582837550068422223735267140763712102417066333942182552409190141783131332570*rho 29271 + 7087097300354708100130994740412149671502360901401685447105460186367585798810*seg31AccX88 rho)*(7317303818992294454761804521879536957884097368722720344564353606843686818560 + 7824856292175594371432062421309296506730692337607393469994065188588716269062*rho 29271 + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg31AccY88 rho) = rho 29962 := by
  rw [seg31AccX88_sum, seg31AccY88_sum]
  unfold Seg31.relationRow692 at r692
  simp only [Seg31.relationLc373, Seg31.relationLc373Part0, Seg31.relationLc373Part1, Seg31.relationLc373Part2] at r692
  simp only [Seg31.relationLc374, Seg31.relationLc374Part0, Seg31.relationLc374Part1, Seg31.relationLc374Part2] at r692
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r692 ⊢
  exact r692

theorem seg31_prefix_89_addX (rho : Nat -> Seg31.F)
    (r693 : Seg31.relationRow693 rho) :
    rho 29963*(1 + rho 29962) = 7317303818992294454761804521879536957884097368722720344564353606843686818560 + 8419960141374165358576877434272703185563564805461284139995613908481557675884*rho 29271 + 2934567187173358253272806473195052784205501742296595379328422825370317735039*seg31AccX88 rho + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg31AccY88 rho := by
  rw [add_assoc, seg31AccWeighted88]
  unfold Seg31.relationRow693 at r693
  simp only [Seg31.relationLc375, Seg31.relationLc375Part0, Seg31.relationLc375Part1, Seg31.relationLc375Part2, Seg31.relationLc375Part3, Seg31.relationLc375Part4, Seg31.relationLc375Part5] at r693
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r693 ⊢
  exact r693

theorem seg31_prefix_89_addY (rho : Nat -> Seg31.F)
    (r694 : Seg31.relationRow694 rho) :
    rho 29964*(1 + (-1)*rho 29962) = 2934567187173358253272806473195052784205501742296595379328422825370317735039 + 8183137533133929953836593527067042140091951128981924624733209100941525274475*rho 29271 + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg31AccX88 rho + 2934567187173358253272806473195052784205501742296595379328422825370317735039*seg31AccY88 rho := by
  rw [add_assoc, seg31AccWeighted88]
  unfold Seg31.relationRow694 at r694
  simp only [Seg31.relationLc376, Seg31.relationLc376Part0, Seg31.relationLc376Part1, Seg31.relationLc376Part2, Seg31.relationLc376Part3, Seg31.relationLc376Part4, Seg31.relationLc376Part5] at r694
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r694 ⊢
  exact r694

theorem seg31_prefix_89_selX (rho : Nat -> Seg31.F)
    (r695 : Seg31.relationRow695 rho) :
    (1*rho 29360)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX88 rho + rho 29963) = rho 29965 := by
  rw [seg31AccX88_sum]
  unfold Seg31.relationRow695 at r695
  simp only [Seg31.relationLc377, Seg31.relationLc377Part0, Seg31.relationLc377Part1, Seg31.relationLc377Part2] at r695
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r695 ⊢
  exact r695

theorem seg31_prefix_89_selY (rho : Nat -> Seg31.F)
    (r696 : Seg31.relationRow696 rho) :
    (1*rho 29360)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY88 rho + rho 29964) = rho 29966 := by
  rw [seg31AccY88_sum]
  unfold Seg31.relationRow696 at r696
  simp only [Seg31.relationLc378, Seg31.relationLc378Part0, Seg31.relationLc378Part1, Seg31.relationLc378Part2] at r696
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r696 ⊢
  exact r696

theorem seg31_prefix_90_v2 (rho : Nat -> Seg31.F)
    (r697 : Seg31.relationRow697 rho) :
    (8106250636419396786282151843311679883550901458438273481039369926572772228425*rho 29271 + 5553937132187018911618187782803373191498878807145456404870079374753212848821*seg31AccX89 rho)*(3816215092977295608751587065614119319182446763153944430884870878015873366014 + 1113765216506362856953168545775460761137336684574255069943489410559258707144*rho 29271 + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg31AccY89 rho) = rho 29967 := by
  rw [seg31AccX89_sum, seg31AccY89_sum]
  unfold Seg31.relationRow697 at r697
  simp only [Seg31.relationLc379, Seg31.relationLc379Part0, Seg31.relationLc379Part1, Seg31.relationLc379Part2] at r697
  simp only [Seg31.relationLc380, Seg31.relationLc380Part0, Seg31.relationLc380Part1, Seg31.relationLc380Part2] at r697
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r697 ⊢
  exact r697

theorem seg31_prefix_90_addX (rho : Nat -> Seg31.F)
    (r698 : Seg31.relationRow698 rho) :
    rho 29968*(1 + rho 29967) = 3816215092977295608751587065614119319182446763153944430884870878015873366014 + 6301644328001247508978276924882736661695378448284690910493273399520982279024*rho 29271 + 683880372059817743273198104218967469992458893275318447673309183256736533325*seg31AccX89 rho + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg31AccY89 rho := by
  rw [add_assoc, seg31AccWeighted89]
  unfold Seg31.relationRow698 at r698
  simp only [Seg31.relationLc381, Seg31.relationLc381Part0, Seg31.relationLc381Part1, Seg31.relationLc381Part2, Seg31.relationLc381Part3, Seg31.relationLc381Part4, Seg31.relationLc381Part5] at r698
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r698 ⊢
  exact r698

theorem seg31_prefix_90_addY (rho : Nat -> Seg31.F)
    (r699 : Seg31.relationRow699 rho) :
    rho 29969*(1 + (-1)*rho 29967) = 683880372059817743273198104218967469992458893275318447673309183256736533325 + 4716674405789172745841800507991441449338750937613045759663632659674869388009*rho 29271 + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg31AccX89 rho + 683880372059817743273198104218967469992458893275318447673309183256736533325*seg31AccY89 rho := by
  rw [add_assoc, seg31AccWeighted89]
  unfold Seg31.relationRow699 at r699
  simp only [Seg31.relationLc382, Seg31.relationLc382Part0, Seg31.relationLc382Part1, Seg31.relationLc382Part2, Seg31.relationLc382Part3, Seg31.relationLc382Part4, Seg31.relationLc382Part5] at r699
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r699 ⊢
  exact r699

theorem seg31_prefix_90_selX (rho : Nat -> Seg31.F)
    (r700 : Seg31.relationRow700 rho) :
    (1*rho 29361)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX89 rho + rho 29968) = rho 29970 := by
  rw [seg31AccX89_sum]
  unfold Seg31.relationRow700 at r700
  simp only [Seg31.relationLc383, Seg31.relationLc383Part0, Seg31.relationLc383Part1, Seg31.relationLc383Part2] at r700
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r700 ⊢
  exact r700

theorem seg31_prefix_90_selY (rho : Nat -> Seg31.F)
    (r701 : Seg31.relationRow701 rho) :
    (1*rho 29361)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY89 rho + rho 29969) = rho 29971 := by
  rw [seg31AccY89_sum]
  unfold Seg31.relationRow701 at r701
  simp only [Seg31.relationLc384, Seg31.relationLc384Part0, Seg31.relationLc384Part1, Seg31.relationLc384Part2] at r701
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r701 ⊢
  exact r701


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

