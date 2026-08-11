import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_leaf_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relation rho) :
    seg15ScpLeafOut rho = Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1 (545001158149490383238005163525397553024965043366546261617421270984613353336 : F) ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 1 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 2 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 3 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 4 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 5 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 7) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relation at h
  rcases h with ⟨
    p0, p1, p2, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationPart1 at p1
  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationPart2 at p2
  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.relation ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 1 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 2 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 3 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 4 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 5 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 7)
      (fun x y => x = rho 232 ∧ y = rho 237) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg0
    refine ⟨rho 8, rho 9, rho 10, rho 11, rho 12,
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow0 at r0; linear_combination r0), r1, r2, r3, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4 at r4; linear_combination r4), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg1
    refine ⟨rho 13, rho 14, rho 15, rho 16, rho 17,
      r5, r6, r7, r8, r9, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg2
    refine ⟨rho 18, rho 19, rho 20, rho 21, rho 22,
      r10, r11, r12, r13, r14, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg3
    refine ⟨rho 23, rho 24, rho 25, rho 26, rho 27,
      r15, r16, r17, r18, r19, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg4
    refine ⟨rho 28, rho 29, rho 30, rho 31, rho 32,
      r20, r21, r22, r23, r24, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg5
    refine ⟨rho 33, rho 34, rho 35, rho 36, rho 37,
      r25, r26, r27, r28, r29, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg6
    refine ⟨rho 38, rho 39, rho 40, rho 41, rho 42,
      r30, r31, r32, r33, r34, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg7
    refine ⟨rho 43, rho 44, rho 45, rho 46, rho 47,
      r35, r36, r37, r38, r39, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg8
    refine ⟨rho 48, rho 49, rho 50, rho 51, rho 52,
      r40, r41, r42, r43, r44, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg9
    refine ⟨rho 53, rho 54, rho 55, rho 56, rho 57,
      r45, r46, r47, r48, r49, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg10
    refine ⟨rho 58, rho 59, rho 60, rho 61, rho 62,
      r50, r51, r52, r53, r54, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg11
    refine ⟨rho 63, rho 64, rho 65, rho 66, rho 67,
      r55, r56, r57, r58, r59, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg12
    refine ⟨rho 68, rho 69, rho 70, rho 71, rho 72,
      r60, r61, r62, r63, r64, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg13
    refine ⟨rho 73, rho 74, rho 75, rho 76, rho 77,
      r65, r66, r67, r68, r69, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg14
    refine ⟨rho 78, rho 79, rho 80, rho 81, rho 82,
      r70, r71, r72, r73, r74, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg15
    refine ⟨rho 83, rho 84, rho 85, rho 86, rho 87,
      r75, r76, r77, r78, r79, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg16
    refine ⟨rho 88, rho 89, rho 90, rho 91, rho 92,
      r80, r81, r82, r83, r84, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg17
    refine ⟨rho 93, rho 94, rho 95, rho 96, rho 97,
      r85, r86, r87, r88, r89, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg18
    refine ⟨rho 98, rho 99, rho 100, rho 101, rho 102,
      r90, r91, r92, r93, r94, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg19
    refine ⟨rho 103, rho 104, rho 105, rho 106, rho 107,
      r95, r96, r97, r98, r99, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg20
    refine ⟨rho 108, rho 109, rho 110, rho 111, rho 112,
      r100, r101, r102, r103, r104, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg21
    refine ⟨rho 113, rho 114, rho 115, rho 116, rho 117,
      r105, r106, r107, r108, r109, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg22
    refine ⟨rho 118, rho 119, rho 120, rho 121, rho 122,
      r110, r111, r112, r113, r114, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg23
    refine ⟨rho 123, rho 124, rho 125, rho 126, rho 127,
      r115, r116, r117, r118, r119, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg24
    refine ⟨rho 128, rho 129, rho 130, rho 131, rho 132,
      r120, r121, r122, r123, r124, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg25
    refine ⟨rho 133, rho 134, rho 135, rho 136, rho 137,
      r125, r126, r127, r128, r129, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg26
    refine ⟨rho 138, rho 139, rho 140, rho 141, rho 142,
      r130, r131, r132, r133, r134, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg27
    refine ⟨rho 143, rho 144, rho 145, rho 146, rho 147,
      r135, r136, r137, r138, r139, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg28
    refine ⟨rho 148, rho 149, rho 150, rho 151, rho 152,
      r140, r141, r142, r143, r144, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg29
    refine ⟨rho 153, rho 154, rho 155, rho 156, rho 157,
      r145, r146, r147, r148, r149, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg30
    refine ⟨rho 158, rho 159, rho 160, rho 161, rho 162,
      r150, r151, r152, r153, r154, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg31
    refine ⟨rho 163, rho 164, rho 165, rho 166, rho 167,
      r155, r156, r157, r158, r159, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg32
    refine ⟨rho 168, rho 169, rho 170, rho 171, rho 172,
      r160, r161, r162, r163, r164, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg33
    refine ⟨rho 173, rho 174, rho 175, rho 176, rho 177,
      r165, r166, r167, r168, r169, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg34
    refine ⟨rho 178, rho 179, rho 180, rho 181, rho 182,
      r170, r171, r172, r173, r174, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg35
    refine ⟨rho 183, rho 184, rho 185, rho 186, rho 187,
      r175, r176, r177, r178, r179, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg36
    refine ⟨rho 188, rho 189, rho 190, rho 191, rho 192,
      r180, r181, r182, r183, r184, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg37
    refine ⟨rho 193, rho 194, rho 195, rho 196, rho 197,
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow185 at r185; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc0Part1] at r185; linear_combination r185), r186, r187, r188, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow189 at r189; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc0Part1] at r189; linear_combination r189), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg38
    refine ⟨rho 198, rho 199, rho 200, rho 201, rho 202,
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow190 at r190; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc1Part1] at r190; linear_combination r190), r191, r192, r193, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow194 at r194; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc1Part1] at r194; linear_combination r194), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg39
    refine ⟨rho 203, rho 204, rho 205, rho 206, rho 207,
      (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow195 at r195; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc2Part1] at r195; linear_combination r195), r196, r197, r198, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow199 at r199; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc2Part1] at r199; linear_combination r199), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg40
    refine ⟨rho 208, rho 209, rho 210, rho 211, rho 212,
      r200, r201, r202, r203, r204, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg41
    refine ⟨rho 213, rho 214, rho 215, rho 216, rho 217,
      r205, r206, r207, r208, r209, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg42
    refine ⟨rho 218, rho 219, rho 220, rho 221, rho 222,
      r210, r211, r212, r213, r214, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg43
    refine ⟨rho 223, rho 224, rho 225, rho 226, rho 227,
      r215, r216, r217, r218, r219, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg44
    refine ⟨rho 228, rho 229, rho 230, rho 231, rho 232,
      r220, r221, r222, r223, r224, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg45
    refine ⟨rho 233, rho 234, rho 235, rho 236, rho 237,
      r225, r226, r227, r228, r229, ?_⟩
    exact ⟨rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.relation_sound_permSpec ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 1 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 2 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 3 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 4 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 5 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 7) _ hrel
  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩
  simpa [seg15ScpLeafOut, Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,
    Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.tctLeafDomainLit, Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.tctLeafDomainLit] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
