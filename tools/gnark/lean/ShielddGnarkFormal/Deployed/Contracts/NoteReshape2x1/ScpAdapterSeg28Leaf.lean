import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_leaf_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpLeafOut rho = Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1 (545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) (rho 113) := by
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩
  unfold Seg28.relationPart1 at p1
  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩
  unfold Seg28.relationPart2 at p2
  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.relation (rho 113)
      (fun x y => x = rho 19623 ∧ y = rho 19628) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg0
    refine ⟨rho 19399, rho 19400, rho 19401, rho 19402, rho 19403,
      r0, r1, r2, r3, r4, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg1
    refine ⟨rho 19404, rho 19405, rho 19406, rho 19407, rho 19408,
      r5, r6, r7, r8, r9, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg2
    refine ⟨rho 19409, rho 19410, rho 19411, rho 19412, rho 19413,
      r10, r11, r12, r13, r14, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg3
    refine ⟨rho 19414, rho 19415, rho 19416, rho 19417, rho 19418,
      r15, r16, r17, r18, r19, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg4
    refine ⟨rho 19419, rho 19420, rho 19421, rho 19422, rho 19423,
      r20, r21, r22, r23, r24, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg5
    refine ⟨rho 19424, rho 19425, rho 19426, rho 19427, rho 19428,
      r25, r26, r27, r28, r29, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg6
    refine ⟨rho 19429, rho 19430, rho 19431, rho 19432, rho 19433,
      r30, r31, r32, r33, r34, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg7
    refine ⟨rho 19434, rho 19435, rho 19436, rho 19437, rho 19438,
      r35, r36, r37, r38, r39, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg8
    refine ⟨rho 19439, rho 19440, rho 19441, rho 19442, rho 19443,
      r40, r41, r42, r43, r44, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg9
    refine ⟨rho 19444, rho 19445, rho 19446, rho 19447, rho 19448,
      r45, r46, r47, r48, r49, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg10
    refine ⟨rho 19449, rho 19450, rho 19451, rho 19452, rho 19453,
      r50, r51, r52, r53, r54, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg11
    refine ⟨rho 19454, rho 19455, rho 19456, rho 19457, rho 19458,
      r55, r56, r57, r58, r59, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg12
    refine ⟨rho 19459, rho 19460, rho 19461, rho 19462, rho 19463,
      r60, r61, r62, r63, r64, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg13
    refine ⟨rho 19464, rho 19465, rho 19466, rho 19467, rho 19468,
      r65, r66, r67, r68, r69, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg14
    refine ⟨rho 19469, rho 19470, rho 19471, rho 19472, rho 19473,
      r70, r71, r72, r73, r74, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg15
    refine ⟨rho 19474, rho 19475, rho 19476, rho 19477, rho 19478,
      r75, r76, r77, r78, r79, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg16
    refine ⟨rho 19479, rho 19480, rho 19481, rho 19482, rho 19483,
      r80, r81, r82, r83, r84, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg17
    refine ⟨rho 19484, rho 19485, rho 19486, rho 19487, rho 19488,
      r85, r86, r87, r88, r89, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg18
    refine ⟨rho 19489, rho 19490, rho 19491, rho 19492, rho 19493,
      r90, r91, r92, r93, r94, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg19
    refine ⟨rho 19494, rho 19495, rho 19496, rho 19497, rho 19498,
      r95, r96, r97, r98, r99, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg20
    refine ⟨rho 19499, rho 19500, rho 19501, rho 19502, rho 19503,
      r100, r101, r102, r103, r104, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg21
    refine ⟨rho 19504, rho 19505, rho 19506, rho 19507, rho 19508,
      r105, r106, r107, r108, r109, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg22
    refine ⟨rho 19509, rho 19510, rho 19511, rho 19512, rho 19513,
      r110, r111, r112, r113, r114, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg23
    refine ⟨rho 19514, rho 19515, rho 19516, rho 19517, rho 19518,
      r115, r116, r117, r118, r119, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg24
    refine ⟨rho 19519, rho 19520, rho 19521, rho 19522, rho 19523,
      r120, r121, r122, r123, r124, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg25
    refine ⟨rho 19524, rho 19525, rho 19526, rho 19527, rho 19528,
      r125, r126, r127, r128, r129, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg26
    refine ⟨rho 19529, rho 19530, rho 19531, rho 19532, rho 19533,
      r130, r131, r132, r133, r134, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg27
    refine ⟨rho 19534, rho 19535, rho 19536, rho 19537, rho 19538,
      r135, r136, r137, r138, r139, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg28
    refine ⟨rho 19539, rho 19540, rho 19541, rho 19542, rho 19543,
      r140, r141, r142, r143, r144, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg29
    refine ⟨rho 19544, rho 19545, rho 19546, rho 19547, rho 19548,
      r145, r146, r147, r148, r149, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg30
    refine ⟨rho 19549, rho 19550, rho 19551, rho 19552, rho 19553,
      r150, r151, r152, r153, r154, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg31
    refine ⟨rho 19554, rho 19555, rho 19556, rho 19557, rho 19558,
      r155, r156, r157, r158, r159, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg32
    refine ⟨rho 19559, rho 19560, rho 19561, rho 19562, rho 19563,
      r160, r161, r162, r163, r164, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg33
    refine ⟨rho 19564, rho 19565, rho 19566, rho 19567, rho 19568,
      r165, r166, r167, r168, r169, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg34
    refine ⟨rho 19569, rho 19570, rho 19571, rho 19572, rho 19573,
      r170, r171, r172, r173, r174, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg35
    refine ⟨rho 19574, rho 19575, rho 19576, rho 19577, rho 19578,
      r175, r176, r177, r178, r179, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg36
    refine ⟨rho 19579, rho 19580, rho 19581, rho 19582, rho 19583,
      r180, r181, r182, r183, r184, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg37
    refine ⟨rho 19584, rho 19585, rho 19586, rho 19587, rho 19588,
      r185, r186, r187, r188, r189, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg38
    refine ⟨rho 19589, rho 19590, rho 19591, rho 19592, rho 19593,
      r190, r191, r192, r193, r194, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg39
    refine ⟨rho 19594, rho 19595, rho 19596, rho 19597, rho 19598,
      r195, r196, r197, r198, r199, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg40
    refine ⟨rho 19599, rho 19600, rho 19601, rho 19602, rho 19603,
      r200, r201, r202, r203, r204, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg41
    refine ⟨rho 19604, rho 19605, rho 19606, rho 19607, rho 19608,
      r205, r206, r207, r208, r209, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg42
    refine ⟨rho 19609, rho 19610, rho 19611, rho 19612, rho 19613,
      r210, r211, r212, r213, r214, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg43
    refine ⟨rho 19614, rho 19615, rho 19616, rho 19617, rho 19618,
      r215, r216, r217, r218, r219, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg44
    refine ⟨rho 19619, rho 19620, rho 19621, rho 19622, rho 19623,
      r220, r221, r222, r223, r224, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg45
    refine ⟨rho 19624, rho 19625, rho 19626, rho 19627, rho 19628,
      r225, r226, r227, r228, r229, ?_⟩
    exact ⟨rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.relation_sound_permSpec (rho 113) _ hrel
  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩
  simpa [seg28ScpLeafOut, Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,
    Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.tctLeafDomainLit, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.tctLeafDomainLit] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

