import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_prefix_81_v2 (rho : Nat -> Seg30.F)
    (r652 : Seg30.relationRow652 rho) :
    (3095872043888969263896429164308195273262937578393571560685502100763634414657*rho 28317 + 4171148466704651220389908484425727516067988246936310646425350299083169892930*seg30AccX80 rho)*(6075948261272125007466137503166569148380577991267134072933922076103126899382 + 2753830212946274734080901510274114235564601986241285087182291927643562326665*rho 28317 + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg30AccY80 rho) = rho 28968 := by
  rw [seg30AccX80_sum, seg30AccY80_sum]
  unfold Seg30.relationRow652 at r652
  simp only [Seg30.relationLc325, Seg30.relationLc325Part0, Seg30.relationLc325Part1, Seg30.relationLc325Part2] at r652
  simp only [Seg30.relationLc326, Seg30.relationLc326Part0, Seg30.relationLc326Part1, Seg30.relationLc326Part2] at r652
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r652 ⊢
  exact r652

theorem seg30_prefix_81_addX (rho : Nat -> Seg30.F)
    (r653 : Seg30.relationRow653 rho) :
    rho 28969*(1 + rho 28968) = 6075948261272125007466137503166569148380577991267134072933922076103126899382 + 6643053041644967957978290427523183888135650947769817479177854734423396780793*rho 28317 + 1575108610855636279401681015894881305753293384289531362387938360139220314953*seg30AccX80 rho + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg30AccY80 rho := by
  rw [add_assoc, seg30AccWeighted80]
  unfold Seg30.relationRow653 at r653
  simp only [Seg30.relationLc327, Seg30.relationLc327Part0, Seg30.relationLc327Part1, Seg30.relationLc327Part2, Seg30.relationLc327Part3, Seg30.relationLc327Part4, Seg30.relationLc327Part5] at r653
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r653 ⊢
  exact r653

theorem seg30_prefix_81_addY (rho : Nat -> Seg30.F)
    (r654 : Seg30.relationRow654 rho) :
    rho 28970*(1 + (-1)*rho 28968) = 1575108610855636279401681015894881305753293384289531362387938360139220314953 + 1944190991534382356061877854857180638324709297848421504967051709312870947874*rho 28317 + 6075948261272125007466137503166569148380577991267134072933922076103126899382*seg30AccX80 rho + 1575108610855636279401681015894881305753293384289531362387938360139220314953*seg30AccY80 rho := by
  rw [add_assoc, seg30AccWeighted80]
  unfold Seg30.relationRow654 at r654
  simp only [Seg30.relationLc328, Seg30.relationLc328Part0, Seg30.relationLc328Part1, Seg30.relationLc328Part2, Seg30.relationLc328Part3, Seg30.relationLc328Part4, Seg30.relationLc328Part5] at r654
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r654 ⊢
  exact r654

theorem seg30_prefix_81_selX (rho : Nat -> Seg30.F)
    (r655 : Seg30.relationRow655 rho) :
    (1*rho 28398)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX80 rho + rho 28969) = rho 28971 := by
  rw [seg30AccX80_sum]
  unfold Seg30.relationRow655 at r655
  simp only [Seg30.relationLc329, Seg30.relationLc329Part0, Seg30.relationLc329Part1, Seg30.relationLc329Part2] at r655
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r655 ⊢
  exact r655

theorem seg30_prefix_81_selY (rho : Nat -> Seg30.F)
    (r656 : Seg30.relationRow656 rho) :
    (1*rho 28398)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY80 rho + rho 28970) = rho 28972 := by
  rw [seg30AccY80_sum]
  unfold Seg30.relationRow656 at r656
  simp only [Seg30.relationLc330, Seg30.relationLc330Part0, Seg30.relationLc330Part1, Seg30.relationLc330Part2] at r656
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r656 ⊢
  exact r656

theorem seg30_prefix_82_v2 (rho : Nat -> Seg30.F)
    (r657 : Seg30.relationRow657 rho) :
    (3909475824386380137549903929611434474143820228075144355006436974185598099324*rho 28317 + 3606477877692461662957109389413456453654481356050762715016429689958378271754*seg30AccX81 rho)*(3020852559585742680112147288882682147588299607034066156569757547087536577105 + 795231880928258437557794133498488588455906730014666906275286167459374319483*rho 28317 + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg30AccY81 rho) = rho 28973 := by
  rw [seg30AccX81_sum, seg30AccY81_sum]
  unfold Seg30.relationRow657 at r657
  simp only [Seg30.relationLc331, Seg30.relationLc331Part0, Seg30.relationLc331Part1, Seg30.relationLc331Part2] at r657
  simp only [Seg30.relationLc332, Seg30.relationLc332Part0, Seg30.relationLc332Part1, Seg30.relationLc332Part2] at r657
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r657 ⊢
  exact r657

theorem seg30_prefix_82_addX (rho : Nat -> Seg30.F)
    (r658 : Seg30.relationRow658 rho) :
    rho 28974*(1 + rho 28973) = 3020852559585742680112147288882682147588299607034066156569757547087536577105 + 7728755420950352125831423975308434577296149752659537292781206527488954098007*rho 28317 + 143751746805209981231263548913363895913215937586530293922447314115109648945*seg30AccX81 rho + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg30AccY81 rho := by
  rw [add_assoc, seg30AccWeighted81]
  unfold Seg30.relationRow658 at r658
  simp only [Seg30.relationLc333, Seg30.relationLc333Part0, Seg30.relationLc333Part1, Seg30.relationLc333Part2, Seg30.relationLc333Part3, Seg30.relationLc333Part4, Seg30.relationLc333Part5] at r658
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r658 ⊢
  exact r658

theorem seg30_prefix_82_addY (rho : Nat -> Seg30.F)
    (r659 : Seg30.relationRow659 rho) :
    rho 28975*(1 + (-1)*rho 28973) = 143751746805209981231263548913363895913215937586530293922447314115109648945 + 3014817936280911672026913628016558529560374790681053700727771705456056218127*rho 28317 + 3020852559585742680112147288882682147588299607034066156569757547087536577105*seg30AccX81 rho + 143751746805209981231263548913363895913215937586530293922447314115109648945*seg30AccY81 rho := by
  rw [add_assoc, seg30AccWeighted81]
  unfold Seg30.relationRow659 at r659
  simp only [Seg30.relationLc334, Seg30.relationLc334Part0, Seg30.relationLc334Part1, Seg30.relationLc334Part2, Seg30.relationLc334Part3, Seg30.relationLc334Part4, Seg30.relationLc334Part5] at r659
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r659 ⊢
  exact r659

theorem seg30_prefix_82_selX (rho : Nat -> Seg30.F)
    (r660 : Seg30.relationRow660 rho) :
    (1*rho 28399)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX81 rho + rho 28974) = rho 28976 := by
  rw [seg30AccX81_sum]
  unfold Seg30.relationRow660 at r660
  simp only [Seg30.relationLc335, Seg30.relationLc335Part0, Seg30.relationLc335Part1, Seg30.relationLc335Part2] at r660
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r660 ⊢
  exact r660

theorem seg30_prefix_82_selY (rho : Nat -> Seg30.F)
    (r661 : Seg30.relationRow661 rho) :
    (1*rho 28399)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY81 rho + rho 28975) = rho 28977 := by
  rw [seg30AccY81_sum]
  unfold Seg30.relationRow661 at r661
  simp only [Seg30.relationLc336, Seg30.relationLc336Part0, Seg30.relationLc336Part1, Seg30.relationLc336Part2] at r661
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r661 ⊢
  exact r661

theorem seg30_prefix_83_v2 (rho : Nat -> Seg30.F)
    (r662 : Seg30.relationRow662 rho) :
    (7621915444124325191480647678072558098704848408090815923787421731984216850880*rho 28317 + 3766554936473951255540249522715488611853256733758667611827960753981783105824*seg30AccX82 rho)*(7790468062680097700391950100917682264194835765581192357593202771658598783151 + 8201295156430902398006891467380246727186705512452201264592190614802423168295*rho 28317 + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg30AccY82 rho) = rho 28978 := by
  rw [seg30AccX82_sum, seg30AccY82_sum]
  unfold Seg30.relationRow662 at r662
  simp only [Seg30.relationLc337, Seg30.relationLc337Part0, Seg30.relationLc337Part1, Seg30.relationLc337Part2] at r662
  simp only [Seg30.relationLc338, Seg30.relationLc338Part0, Seg30.relationLc338Part1, Seg30.relationLc338Part2] at r662
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r662 ⊢
  exact r662

theorem seg30_prefix_83_addX (rho : Nat -> Seg30.F)
    (r663 : Seg30.relationRow663 rho) :
    rho 28979*(1 + rho 28978) = 7790468062680097700391950100917682264194835765581192357593202771658598783151 + 2126936358743662087803162646051875459026328052598893106363984685827758001521*rho 28317 + 1751075673644036357774016769678902223519750493392983324693573023554544841690*seg30AccX82 rho + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg30AccY82 rho := by
  rw [add_assoc, seg30AccWeighted82]
  unfold Seg30.relationRow663 at r663
  simp only [Seg30.relationLc339, Seg30.relationLc339Part0, Seg30.relationLc339Part1, Seg30.relationLc339Part2, Seg30.relationLc339Part3, Seg30.relationLc339Part4, Seg30.relationLc339Part5] at r663
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r663 ⊢
  exact r663

theorem seg30_prefix_83_addY (rho : Nat -> Seg30.F)
    (r664 : Seg30.relationRow664 rho) :
    rho 28980*(1 + (-1)*rho 28978) = 1751075673644036357774016769678902223519750493392983324693573023554544841690 + 4445652771961411157792133795511392792424747091865093974256457248476981814276*rho 28317 + 7790468062680097700391950100917682264194835765581192357593202771658598783151*seg30AccX82 rho + 1751075673644036357774016769678902223519750493392983324693573023554544841690*seg30AccY82 rho := by
  rw [add_assoc, seg30AccWeighted82]
  unfold Seg30.relationRow664 at r664
  simp only [Seg30.relationLc340, Seg30.relationLc340Part0, Seg30.relationLc340Part1, Seg30.relationLc340Part2, Seg30.relationLc340Part3, Seg30.relationLc340Part4, Seg30.relationLc340Part5] at r664
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r664 ⊢
  exact r664

theorem seg30_prefix_83_selX (rho : Nat -> Seg30.F)
    (r665 : Seg30.relationRow665 rho) :
    (1*rho 28400)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX82 rho + rho 28979) = rho 28981 := by
  rw [seg30AccX82_sum]
  unfold Seg30.relationRow665 at r665
  simp only [Seg30.relationLc341, Seg30.relationLc341Part0, Seg30.relationLc341Part1, Seg30.relationLc341Part2] at r665
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r665 ⊢
  exact r665

theorem seg30_prefix_83_selY (rho : Nat -> Seg30.F)
    (r666 : Seg30.relationRow666 rho) :
    (1*rho 28400)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY82 rho + rho 28980) = rho 28982 := by
  rw [seg30AccY82_sum]
  unfold Seg30.relationRow666 at r666
  simp only [Seg30.relationLc342, Seg30.relationLc342Part0, Seg30.relationLc342Part1, Seg30.relationLc342Part2] at r666
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r666 ⊢
  exact r666

theorem seg30_prefix_84_v2 (rho : Nat -> Seg30.F)
    (r667 : Seg30.relationRow667 rho) :
    (1114119046654488412156978360057755686609664720675475355766786494969526974976*rho 28317 + 4057618003226322301380722646054133515350344497494379614603511631974896775073*seg30AccX83 rho)*(3788660986400498545861198287602112464652304302550183813246345683684554891399 + 8415988326101532143562530920364287788294739843006614146358467532537182975184*rho 28317 + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg30AccY83 rho) = rho 28983 := by
  rw [seg30AccX83_sum, seg30AccY83_sum]
  unfold Seg30.relationRow667 at r667
  simp only [Seg30.relationLc343, Seg30.relationLc343Part0, Seg30.relationLc343Part1, Seg30.relationLc343Part2] at r667
  simp only [Seg30.relationLc344, Seg30.relationLc344Part0, Seg30.relationLc344Part1, Seg30.relationLc344Part2] at r667
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r667 ⊢
  exact r667

theorem seg30_prefix_84_addX (rho : Nat -> Seg30.F)
    (r668 : Seg30.relationRow668 rho) :
    rho 28984*(1 + rho 28983) = 3788660986400498545861198287602112464652304302550183813246345683684554891399 + 5422640290818139149203598602894913879186173632073371218730904392916999006949*rho 28317 + 702951842803623733461713267884879944684111578159935253368535951362874748684*seg30AccX83 rho + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg30AccY83 rho := by
  rw [add_assoc, seg30AccWeighted83]
  unfold Seg30.relationRow668 at r668
  simp only [Seg30.relationLc345, Seg30.relationLc345Part0, Seg30.relationLc345Part1, Seg30.relationLc345Part2, Seg30.relationLc345Part3, Seg30.relationLc345Part4, Seg30.relationLc345Part5] at r668
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r668 ⊢
  exact r668

theorem seg30_prefix_84_addY (rho : Nat -> Seg30.F)
    (r669 : Seg30.relationRow669 rho) :
    rho 28985*(1 + (-1)*rho 28983) = 702951842803623733461713267884879944684111578159935253368535951362874748684 + 5025556459589336422978363340047262187464658303343479376519996551711562936563*rho 28317 + 3788660986400498545861198287602112464652304302550183813246345683684554891399*seg30AccX83 rho + 702951842803623733461713267884879944684111578159935253368535951362874748684*seg30AccY83 rho := by
  rw [add_assoc, seg30AccWeighted83]
  unfold Seg30.relationRow669 at r669
  simp only [Seg30.relationLc346, Seg30.relationLc346Part0, Seg30.relationLc346Part1, Seg30.relationLc346Part2, Seg30.relationLc346Part3, Seg30.relationLc346Part4, Seg30.relationLc346Part5] at r669
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r669 ⊢
  exact r669

theorem seg30_prefix_84_selX (rho : Nat -> Seg30.F)
    (r670 : Seg30.relationRow670 rho) :
    (1*rho 28401)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX83 rho + rho 28984) = rho 28986 := by
  rw [seg30AccX83_sum]
  unfold Seg30.relationRow670 at r670
  simp only [Seg30.relationLc347, Seg30.relationLc347Part0, Seg30.relationLc347Part1, Seg30.relationLc347Part2] at r670
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r670 ⊢
  exact r670

theorem seg30_prefix_84_selY (rho : Nat -> Seg30.F)
    (r671 : Seg30.relationRow671 rho) :
    (1*rho 28401)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY83 rho + rho 28985) = rho 28987 := by
  rw [seg30AccY83_sum]
  unfold Seg30.relationRow671 at r671
  simp only [Seg30.relationLc348, Seg30.relationLc348Part0, Seg30.relationLc348Part1, Seg30.relationLc348Part2] at r671
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r671 ⊢
  exact r671

theorem seg30_prefix_85_v2 (rho : Nat -> Seg30.F)
    (r672 : Seg30.relationRow672 rho) :
    (2752875008010564020883566174142247157044480591208246799816422655462893432145*rho 28317 + 5521699295475871864753056508204148223678162633978526892347350614954837511571*seg30AccX84 rho)*(1642915093056168336194297989174839011735959045657272474044918542645742295404 + 999253345431023173700117287462072931709406681660084743379432615777357612207*rho 28317 + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg30AccY84 rho) = rho 28988 := by
  rw [seg30AccX84_sum, seg30AccY84_sum]
  unfold Seg30.relationRow672 at r672
  simp only [Seg30.relationLc349, Seg30.relationLc349Part0, Seg30.relationLc349Part1, Seg30.relationLc349Part2] at r672
  simp only [Seg30.relationLc350, Seg30.relationLc350Part0, Seg30.relationLc350Part1, Seg30.relationLc350Part2] at r672
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r672 ⊢
  exact r672

theorem seg30_prefix_85_addX (rho : Nat -> Seg30.F)
    (r673 : Seg30.relationRow673 rho) :
    rho 28989*(1 + rho 28988) = 1642915093056168336194297989174839011735959045657272474044918542645742295404 + 8396406163701621884916030678455159449146571236909625006708278741898816645618*rho 28317 + 3068221197755179817035986102069367988461780778979803557145745929081877779788*seg30AccX84 rho + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg30AccY84 rho := by
  rw [add_assoc, seg30AccWeighted84]
  unfold Seg30.relationRow673 at r673
  simp only [Seg30.relationLc351, Seg30.relationLc351Part0, Seg30.relationLc351Part1, Seg30.relationLc351Part2, Seg30.relationLc351Part3, Seg30.relationLc351Part4, Seg30.relationLc351Part5] at r673
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r673 ⊢
  exact r673

theorem seg30_prefix_85_addY (rho : Nat -> Seg30.F)
    (r674 : Seg30.relationRow674 rho) :
    rho 28990*(1 + (-1)*rho 28988) = 3068221197755179817035986102069367988461780778979803557145745929081877779788 + 7059873362166045987362961083589418026509864897316794138950051358551377495103*rho 28317 + 1642915093056168336194297989174839011735959045657272474044918542645742295404*seg30AccX84 rho + 3068221197755179817035986102069367988461780778979803557145745929081877779788*seg30AccY84 rho := by
  rw [add_assoc, seg30AccWeighted84]
  unfold Seg30.relationRow674 at r674
  simp only [Seg30.relationLc352, Seg30.relationLc352Part0, Seg30.relationLc352Part1, Seg30.relationLc352Part2, Seg30.relationLc352Part3, Seg30.relationLc352Part4, Seg30.relationLc352Part5] at r674
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r674 ⊢
  exact r674

theorem seg30_prefix_85_selX (rho : Nat -> Seg30.F)
    (r675 : Seg30.relationRow675 rho) :
    (1*rho 28402)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX84 rho + rho 28989) = rho 28991 := by
  rw [seg30AccX84_sum]
  unfold Seg30.relationRow675 at r675
  simp only [Seg30.relationLc353, Seg30.relationLc353Part0, Seg30.relationLc353Part1, Seg30.relationLc353Part2] at r675
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r675 ⊢
  exact r675

theorem seg30_prefix_85_selY (rho : Nat -> Seg30.F)
    (r676 : Seg30.relationRow676 rho) :
    (1*rho 28402)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY84 rho + rho 28990) = rho 28992 := by
  rw [seg30AccY84_sum]
  unfold Seg30.relationRow676 at r676
  simp only [Seg30.relationLc354, Seg30.relationLc354Part0, Seg30.relationLc354Part1, Seg30.relationLc354Part2] at r676
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r676 ⊢
  exact r676

theorem seg30_prefix_86_v2 (rho : Nat -> Seg30.F)
    (r677 : Seg30.relationRow677 rho) :
    (5477888473051844104213404977281314913536255982406650950202859066687533352604*rho 28317 + 5875314823000567718468398952994848754922664908524519324365751156649417451005*seg30AccX85 rho)*(3280123669103700524397665050532530893628565732090995651830310775226771444999 + 483659877864017298282645335160677740150049015512611850596575714024882099756*rho 28317 + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg30AccY85 rho) = rho 28993 := by
  rw [seg30AccX85_sum, seg30AccY85_sum]
  unfold Seg30.relationRow677 at r677
  simp only [Seg30.relationLc355, Seg30.relationLc355Part0, Seg30.relationLc355Part1, Seg30.relationLc355Part2] at r677
  simp only [Seg30.relationLc356, Seg30.relationLc356Part0, Seg30.relationLc356Part1, Seg30.relationLc356Part2] at r677
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r677 ⊢
  exact r677

theorem seg30_prefix_86_addX (rho : Nat -> Seg30.F)
    (r678 : Seg30.relationRow678 rho) :
    rho 28994*(1 + rho 28993) = 3280123669103700524397665050532530893628565732090995651830310775226771444999 + 3697219771464232280595162137423927749903258082733540678550162638856325578409*rho 28317 + 5818867995823713810188769644673086123981519093467107363541074668295524013206*seg30AccX85 rho + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg30AccY85 rho := by
  rw [add_assoc, seg30AccWeighted85]
  unfold Seg30.relationRow678 at r678
  simp only [Seg30.relationLc357, Seg30.relationLc357Part0, Seg30.relationLc357Part1, Seg30.relationLc357Part2, Seg30.relationLc357Part3, Seg30.relationLc357Part4, Seg30.relationLc357Part5] at r678
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r678 ⊢
  exact r678

theorem seg30_prefix_86_addY (rho : Nat -> Seg30.F)
    (r679 : Seg30.relationRow679 rho) :
    rho 28995*(1 + (-1)*rho 28993) = 5818867995823713810188769644673086123981519093467107363541074668295524013206 + 3869906991999287255572332967163802692740859564722218277265168257637774615890*rho 28317 + 3280123669103700524397665050532530893628565732090995651830310775226771444999*seg30AccX85 rho + 5818867995823713810188769644673086123981519093467107363541074668295524013206*seg30AccY85 rho := by
  rw [add_assoc, seg30AccWeighted85]
  unfold Seg30.relationRow679 at r679
  simp only [Seg30.relationLc358, Seg30.relationLc358Part0, Seg30.relationLc358Part1, Seg30.relationLc358Part2, Seg30.relationLc358Part3, Seg30.relationLc358Part4, Seg30.relationLc358Part5] at r679
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r679 ⊢
  exact r679

theorem seg30_prefix_86_selX (rho : Nat -> Seg30.F)
    (r680 : Seg30.relationRow680 rho) :
    (1*rho 28403)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX85 rho + rho 28994) = rho 28996 := by
  rw [seg30AccX85_sum]
  unfold Seg30.relationRow680 at r680
  simp only [Seg30.relationLc359, Seg30.relationLc359Part0, Seg30.relationLc359Part1, Seg30.relationLc359Part2] at r680
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r680 ⊢
  exact r680

theorem seg30_prefix_86_selY (rho : Nat -> Seg30.F)
    (r681 : Seg30.relationRow681 rho) :
    (1*rho 28403)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY85 rho + rho 28995) = rho 28997 := by
  rw [seg30AccY85_sum]
  unfold Seg30.relationRow681 at r681
  simp only [Seg30.relationLc360, Seg30.relationLc360Part0, Seg30.relationLc360Part1, Seg30.relationLc360Part2] at r681
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r681 ⊢
  exact r681

theorem seg30_prefix_87_v2 (rho : Nat -> Seg30.F)
    (r682 : Seg30.relationRow682 rho) :
    (108787566386572987969553219646625715175982685210276690626178449889909211465*rho 28317 + 3266100972727780920478745108358337853971524136114438455381086990522349021937*seg30AccX86 rho)*(7031709787004940692472394662518287848099489276902889178969033723389135507548 + 8364191030312960177030230610335616396614882005722442462220723820210297943600*rho 28317 + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg30AccY86 rho) = rho 28998 := by
  rw [seg30AccX86_sum, seg30AccY86_sum]
  unfold Seg30.relationRow682 at r682
  simp only [Seg30.relationLc361, Seg30.relationLc361Part0, Seg30.relationLc361Part1, Seg30.relationLc361Part2] at r682
  simp only [Seg30.relationLc362, Seg30.relationLc362Part0, Seg30.relationLc362Part1, Seg30.relationLc362Part2] at r682
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r682 ⊢
  exact r682

theorem seg30_prefix_87_addX (rho : Nat -> Seg30.F)
    (r683 : Seg30.relationRow683 rho) :
    rho 28999*(1 + rho 28998) = 7031709787004940692472394662518287848099489276902889178969033723389135507548 + 8255212142308551082837004983260861782576985914565276552720939667171274755546*rho 28317 + 3595777527552999717479135258649926242040178109614114704131112648560182267603*seg30AccX86 rho + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg30AccY86 rho := by
  rw [add_assoc, seg30AccWeighted86]
  unfold Seg30.relationRow683 at r683
  simp only [Seg30.relationLc363, Seg30.relationLc363Part0, Seg30.relationLc363Part1, Seg30.relationLc363Part2, Seg30.relationLc363Part3, Seg30.relationLc363Part4, Seg30.relationLc363Part5] at r683
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r683 ⊢
  exact r683

theorem seg30_prefix_87_addY (rho : Nat -> Seg30.F)
    (r684 : Seg30.relationRow684 rho) :
    rho 29000*(1 + (-1)*rho 28998) = 3595777527552999717479135258649926242040178109614114704131112648560182267603 + 4736156545623580777384540766592061019307340316099661050493041670764466775994*rho 28317 + 7031709787004940692472394662518287848099489276902889178969033723389135507548*seg30AccX86 rho + 3595777527552999717479135258649926242040178109614114704131112648560182267603*seg30AccY86 rho := by
  rw [add_assoc, seg30AccWeighted86]
  unfold Seg30.relationRow684 at r684
  simp only [Seg30.relationLc364, Seg30.relationLc364Part0, Seg30.relationLc364Part1, Seg30.relationLc364Part2, Seg30.relationLc364Part3, Seg30.relationLc364Part4, Seg30.relationLc364Part5] at r684
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r684 ⊢
  exact r684

theorem seg30_prefix_87_selX (rho : Nat -> Seg30.F)
    (r685 : Seg30.relationRow685 rho) :
    (1*rho 28404)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX86 rho + rho 28999) = rho 29001 := by
  rw [seg30AccX86_sum]
  unfold Seg30.relationRow685 at r685
  simp only [Seg30.relationLc365, Seg30.relationLc365Part0, Seg30.relationLc365Part1, Seg30.relationLc365Part2] at r685
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r685 ⊢
  exact r685

theorem seg30_prefix_87_selY (rho : Nat -> Seg30.F)
    (r686 : Seg30.relationRow686 rho) :
    (1*rho 28404)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY86 rho + rho 29000) = rho 29002 := by
  rw [seg30AccY86_sum]
  unfold Seg30.relationRow686 at r686
  simp only [Seg30.relationLc366, Seg30.relationLc366Part0, Seg30.relationLc366Part1, Seg30.relationLc366Part2] at r686
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r686 ⊢
  exact r686

theorem seg30_prefix_88_v2 (rho : Nat -> Seg30.F)
    (r687 : Seg30.relationRow687 rho) :
    (529502284087046459666488542980438945459686277092178839399050484959576701564*rho 28317 + 26200193764347171125407596709908285096460117738061776850047079451019047352*seg30AccX87 rho)*(7936452357988611095616823186838963009242803597836007912202524795707885778990 + 1570170090437106096843875560441493473645609531430524209506513015550493859267*rho 28317 + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg30AccY87 rho) = rho 29003 := by
  rw [seg30AccX87_sum, seg30AccY87_sum]
  unfold Seg30.relationRow687 at r687
  simp only [Seg30.relationLc367, Seg30.relationLc367Part0, Seg30.relationLc367Part1, Seg30.relationLc367Part2] at r687
  simp only [Seg30.relationLc368, Seg30.relationLc368Part0, Seg30.relationLc368Part1, Seg30.relationLc368Part2] at r687
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r687 ⊢
  exact r687

theorem seg30_prefix_88_addX (rho : Nat -> Seg30.F)
    (r688 : Seg30.relationRow688 rho) :
    rho 29004*(1 + rho 29003) = 7936452357988611095616823186838963009242803597836007912202524795707885778990 + 7904390489804459432761619287625195850025367088443500314419004926041658676337*rho 28317 + 1447950144454703815601462007906504803554390041617856049204667652182942404790*seg30AccX87 rho + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg30AccY87 rho := by
  rw [add_assoc, seg30AccWeighted87]
  unfold Seg30.relationRow688 at r688
  simp only [Seg30.relationLc369, Seg30.relationLc369Part0, Seg30.relationLc369Part1, Seg30.relationLc369Part2, Seg30.relationLc369Part3, Seg30.relationLc369Part4, Seg30.relationLc369Part5] at r688
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r688 ⊢
  exact r688

theorem seg30_prefix_88_addY (rho : Nat -> Seg30.F)
    (r689 : Seg30.relationRow689 rho) :
    rho 29005*(1 + (-1)*rho 29003) = 1447950144454703815601462007906504803554390041617856049204667652182942404790 + 1144087987983058011604391365965542383344283330920575228737270886315331523144*rho 28317 + 7936452357988611095616823186838963009242803597836007912202524795707885778990*seg30AccX87 rho + 1447950144454703815601462007906504803554390041617856049204667652182942404790*seg30AccY87 rho := by
  rw [add_assoc, seg30AccWeighted87]
  unfold Seg30.relationRow689 at r689
  simp only [Seg30.relationLc370, Seg30.relationLc370Part0, Seg30.relationLc370Part1, Seg30.relationLc370Part2, Seg30.relationLc370Part3, Seg30.relationLc370Part4, Seg30.relationLc370Part5] at r689
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r689 ⊢
  exact r689

theorem seg30_prefix_88_selX (rho : Nat -> Seg30.F)
    (r690 : Seg30.relationRow690 rho) :
    (1*rho 28405)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX87 rho + rho 29004) = rho 29006 := by
  rw [seg30AccX87_sum]
  unfold Seg30.relationRow690 at r690
  simp only [Seg30.relationLc371, Seg30.relationLc371Part0, Seg30.relationLc371Part1, Seg30.relationLc371Part2] at r690
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r690 ⊢
  exact r690

theorem seg30_prefix_88_selY (rho : Nat -> Seg30.F)
    (r691 : Seg30.relationRow691 rho) :
    (1*rho 28405)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY87 rho + rho 29005) = rho 29007 := by
  rw [seg30AccY87_sum]
  unfold Seg30.relationRow691 at r691
  simp only [Seg30.relationLc372, Seg30.relationLc372Part0, Seg30.relationLc372Part1, Seg30.relationLc372Part2] at r691
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r691 ⊢
  exact r691

theorem seg30_prefix_89_v2 (rho : Nat -> Seg30.F)
    (r692 : Seg30.relationRow692 rho) :
    (7582837550068422223735267140763712102417066333942182552409190141783131332570*rho 28317 + 7087097300354708100130994740412149671502360901401685447105460186367585798810*seg30AccX88 rho)*(7317303818992294454761804521879536957884097368722720344564353606843686818560 + 7824856292175594371432062421309296506730692337607393469994065188588716269062*rho 28317 + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg30AccY88 rho) = rho 29008 := by
  rw [seg30AccX88_sum, seg30AccY88_sum]
  unfold Seg30.relationRow692 at r692
  simp only [Seg30.relationLc373, Seg30.relationLc373Part0, Seg30.relationLc373Part1, Seg30.relationLc373Part2] at r692
  simp only [Seg30.relationLc374, Seg30.relationLc374Part0, Seg30.relationLc374Part1, Seg30.relationLc374Part2] at r692
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r692 ⊢
  exact r692

theorem seg30_prefix_89_addX (rho : Nat -> Seg30.F)
    (r693 : Seg30.relationRow693 rho) :
    rho 29009*(1 + rho 29008) = 7317303818992294454761804521879536957884097368722720344564353606843686818560 + 8419960141374165358576877434272703185563564805461284139995613908481557675884*rho 28317 + 2934567187173358253272806473195052784205501742296595379328422825370317735039*seg30AccX88 rho + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg30AccY88 rho := by
  rw [add_assoc, seg30AccWeighted88]
  unfold Seg30.relationRow693 at r693
  simp only [Seg30.relationLc375, Seg30.relationLc375Part0, Seg30.relationLc375Part1, Seg30.relationLc375Part2, Seg30.relationLc375Part3, Seg30.relationLc375Part4, Seg30.relationLc375Part5] at r693
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r693 ⊢
  exact r693

theorem seg30_prefix_89_addY (rho : Nat -> Seg30.F)
    (r694 : Seg30.relationRow694 rho) :
    rho 29010*(1 + (-1)*rho 29008) = 2934567187173358253272806473195052784205501742296595379328422825370317735039 + 8183137533133929953836593527067042140091951128981924624733209100941525274475*rho 28317 + 7317303818992294454761804521879536957884097368722720344564353606843686818560*seg30AccX88 rho + 2934567187173358253272806473195052784205501742296595379328422825370317735039*seg30AccY88 rho := by
  rw [add_assoc, seg30AccWeighted88]
  unfold Seg30.relationRow694 at r694
  simp only [Seg30.relationLc376, Seg30.relationLc376Part0, Seg30.relationLc376Part1, Seg30.relationLc376Part2, Seg30.relationLc376Part3, Seg30.relationLc376Part4, Seg30.relationLc376Part5] at r694
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r694 ⊢
  exact r694

theorem seg30_prefix_89_selX (rho : Nat -> Seg30.F)
    (r695 : Seg30.relationRow695 rho) :
    (1*rho 28406)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX88 rho + rho 29009) = rho 29011 := by
  rw [seg30AccX88_sum]
  unfold Seg30.relationRow695 at r695
  simp only [Seg30.relationLc377, Seg30.relationLc377Part0, Seg30.relationLc377Part1, Seg30.relationLc377Part2] at r695
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r695 ⊢
  exact r695

theorem seg30_prefix_89_selY (rho : Nat -> Seg30.F)
    (r696 : Seg30.relationRow696 rho) :
    (1*rho 28406)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY88 rho + rho 29010) = rho 29012 := by
  rw [seg30AccY88_sum]
  unfold Seg30.relationRow696 at r696
  simp only [Seg30.relationLc378, Seg30.relationLc378Part0, Seg30.relationLc378Part1, Seg30.relationLc378Part2] at r696
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r696 ⊢
  exact r696

theorem seg30_prefix_90_v2 (rho : Nat -> Seg30.F)
    (r697 : Seg30.relationRow697 rho) :
    (8106250636419396786282151843311679883550901458438273481039369926572772228425*rho 28317 + 5553937132187018911618187782803373191498878807145456404870079374753212848821*seg30AccX89 rho)*(3816215092977295608751587065614119319182446763153944430884870878015873366014 + 1113765216506362856953168545775460761137336684574255069943489410559258707144*rho 28317 + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg30AccY89 rho) = rho 29013 := by
  rw [seg30AccX89_sum, seg30AccY89_sum]
  unfold Seg30.relationRow697 at r697
  simp only [Seg30.relationLc379, Seg30.relationLc379Part0, Seg30.relationLc379Part1, Seg30.relationLc379Part2] at r697
  simp only [Seg30.relationLc380, Seg30.relationLc380Part0, Seg30.relationLc380Part1, Seg30.relationLc380Part2] at r697
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r697 ⊢
  exact r697

theorem seg30_prefix_90_addX (rho : Nat -> Seg30.F)
    (r698 : Seg30.relationRow698 rho) :
    rho 29014*(1 + rho 29013) = 3816215092977295608751587065614119319182446763153944430884870878015873366014 + 6301644328001247508978276924882736661695378448284690910493273399520982279024*rho 28317 + 683880372059817743273198104218967469992458893275318447673309183256736533325*seg30AccX89 rho + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg30AccY89 rho := by
  rw [add_assoc, seg30AccWeighted89]
  unfold Seg30.relationRow698 at r698
  simp only [Seg30.relationLc381, Seg30.relationLc381Part0, Seg30.relationLc381Part1, Seg30.relationLc381Part2, Seg30.relationLc381Part3, Seg30.relationLc381Part4, Seg30.relationLc381Part5] at r698
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r698 ⊢
  exact r698

theorem seg30_prefix_90_addY (rho : Nat -> Seg30.F)
    (r699 : Seg30.relationRow699 rho) :
    rho 29015*(1 + (-1)*rho 29013) = 683880372059817743273198104218967469992458893275318447673309183256736533325 + 4716674405789172745841800507991441449338750937613045759663632659674869388009*rho 28317 + 3816215092977295608751587065614119319182446763153944430884870878015873366014*seg30AccX89 rho + 683880372059817743273198104218967469992458893275318447673309183256736533325*seg30AccY89 rho := by
  rw [add_assoc, seg30AccWeighted89]
  unfold Seg30.relationRow699 at r699
  simp only [Seg30.relationLc382, Seg30.relationLc382Part0, Seg30.relationLc382Part1, Seg30.relationLc382Part2, Seg30.relationLc382Part3, Seg30.relationLc382Part4, Seg30.relationLc382Part5] at r699
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r699 ⊢
  exact r699

theorem seg30_prefix_90_selX (rho : Nat -> Seg30.F)
    (r700 : Seg30.relationRow700 rho) :
    (1*rho 28407)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX89 rho + rho 29014) = rho 29016 := by
  rw [seg30AccX89_sum]
  unfold Seg30.relationRow700 at r700
  simp only [Seg30.relationLc383, Seg30.relationLc383Part0, Seg30.relationLc383Part1, Seg30.relationLc383Part2] at r700
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r700 ⊢
  exact r700

theorem seg30_prefix_90_selY (rho : Nat -> Seg30.F)
    (r701 : Seg30.relationRow701 rho) :
    (1*rho 28407)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY89 rho + rho 29015) = rho 29017 := by
  rw [seg30AccY89_sum]
  unfold Seg30.relationRow701 at r701
  simp only [Seg30.relationLc384, Seg30.relationLc384Part0, Seg30.relationLc384Part1, Seg30.relationLc384Part2] at r701
  simp only [mul_add, neg_mul, one_mul, mul_one, zero_mul, mul_zero,
    add_zero, zero_add, sub_eq_add_neg, ← add_assoc] at r701 ⊢
  exact r701


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

