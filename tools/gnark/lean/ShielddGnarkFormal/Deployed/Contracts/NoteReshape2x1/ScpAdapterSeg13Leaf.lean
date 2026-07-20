import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_leaf_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpLeafOut rho = Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1 (545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) (rho 23) := by
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩
  unfold Seg13.relationPart1 at p1
  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩
  unfold Seg13.relationPart2 at p2
  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.relation (rho 23)
      (fun x y => x = rho 7436 ∧ y = rho 7441) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg0
    refine ⟨rho 7212, rho 7213, rho 7214, rho 7215, rho 7216,
      r0, r1, r2, r3, r4, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg1
    refine ⟨rho 7217, rho 7218, rho 7219, rho 7220, rho 7221,
      r5, r6, r7, r8, r9, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg2
    refine ⟨rho 7222, rho 7223, rho 7224, rho 7225, rho 7226,
      r10, r11, r12, r13, r14, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg3
    refine ⟨rho 7227, rho 7228, rho 7229, rho 7230, rho 7231,
      r15, r16, r17, r18, r19, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg4
    refine ⟨rho 7232, rho 7233, rho 7234, rho 7235, rho 7236,
      r20, r21, r22, r23, r24, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg5
    refine ⟨rho 7237, rho 7238, rho 7239, rho 7240, rho 7241,
      r25, r26, r27, r28, r29, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg6
    refine ⟨rho 7242, rho 7243, rho 7244, rho 7245, rho 7246,
      r30, r31, r32, r33, r34, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg7
    refine ⟨rho 7247, rho 7248, rho 7249, rho 7250, rho 7251,
      r35, r36, r37, r38, r39, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg8
    refine ⟨rho 7252, rho 7253, rho 7254, rho 7255, rho 7256,
      r40, r41, r42, r43, r44, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg9
    refine ⟨rho 7257, rho 7258, rho 7259, rho 7260, rho 7261,
      r45, r46, r47, r48, r49, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg10
    refine ⟨rho 7262, rho 7263, rho 7264, rho 7265, rho 7266,
      r50, r51, r52, r53, r54, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg11
    refine ⟨rho 7267, rho 7268, rho 7269, rho 7270, rho 7271,
      r55, r56, r57, r58, r59, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg12
    refine ⟨rho 7272, rho 7273, rho 7274, rho 7275, rho 7276,
      r60, r61, r62, r63, r64, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg13
    refine ⟨rho 7277, rho 7278, rho 7279, rho 7280, rho 7281,
      r65, r66, r67, r68, r69, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg14
    refine ⟨rho 7282, rho 7283, rho 7284, rho 7285, rho 7286,
      r70, r71, r72, r73, r74, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg15
    refine ⟨rho 7287, rho 7288, rho 7289, rho 7290, rho 7291,
      r75, r76, r77, r78, r79, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg16
    refine ⟨rho 7292, rho 7293, rho 7294, rho 7295, rho 7296,
      r80, r81, r82, r83, r84, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg17
    refine ⟨rho 7297, rho 7298, rho 7299, rho 7300, rho 7301,
      r85, r86, r87, r88, r89, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg18
    refine ⟨rho 7302, rho 7303, rho 7304, rho 7305, rho 7306,
      r90, r91, r92, r93, r94, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg19
    refine ⟨rho 7307, rho 7308, rho 7309, rho 7310, rho 7311,
      r95, r96, r97, r98, r99, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg20
    refine ⟨rho 7312, rho 7313, rho 7314, rho 7315, rho 7316,
      r100, r101, r102, r103, r104, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg21
    refine ⟨rho 7317, rho 7318, rho 7319, rho 7320, rho 7321,
      r105, r106, r107, r108, r109, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg22
    refine ⟨rho 7322, rho 7323, rho 7324, rho 7325, rho 7326,
      r110, r111, r112, r113, r114, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg23
    refine ⟨rho 7327, rho 7328, rho 7329, rho 7330, rho 7331,
      r115, r116, r117, r118, r119, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg24
    refine ⟨rho 7332, rho 7333, rho 7334, rho 7335, rho 7336,
      r120, r121, r122, r123, r124, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg25
    refine ⟨rho 7337, rho 7338, rho 7339, rho 7340, rho 7341,
      r125, r126, r127, r128, r129, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg26
    refine ⟨rho 7342, rho 7343, rho 7344, rho 7345, rho 7346,
      r130, r131, r132, r133, r134, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg27
    refine ⟨rho 7347, rho 7348, rho 7349, rho 7350, rho 7351,
      r135, r136, r137, r138, r139, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg28
    refine ⟨rho 7352, rho 7353, rho 7354, rho 7355, rho 7356,
      r140, r141, r142, r143, r144, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg29
    refine ⟨rho 7357, rho 7358, rho 7359, rho 7360, rho 7361,
      r145, r146, r147, r148, r149, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg30
    refine ⟨rho 7362, rho 7363, rho 7364, rho 7365, rho 7366,
      r150, r151, r152, r153, r154, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg31
    refine ⟨rho 7367, rho 7368, rho 7369, rho 7370, rho 7371,
      r155, r156, r157, r158, r159, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg32
    refine ⟨rho 7372, rho 7373, rho 7374, rho 7375, rho 7376,
      r160, r161, r162, r163, r164, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg33
    refine ⟨rho 7377, rho 7378, rho 7379, rho 7380, rho 7381,
      r165, r166, r167, r168, r169, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg34
    refine ⟨rho 7382, rho 7383, rho 7384, rho 7385, rho 7386,
      r170, r171, r172, r173, r174, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg35
    refine ⟨rho 7387, rho 7388, rho 7389, rho 7390, rho 7391,
      r175, r176, r177, r178, r179, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg36
    refine ⟨rho 7392, rho 7393, rho 7394, rho 7395, rho 7396,
      r180, r181, r182, r183, r184, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg37
    refine ⟨rho 7397, rho 7398, rho 7399, rho 7400, rho 7401,
      r185, r186, r187, r188, r189, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg38
    refine ⟨rho 7402, rho 7403, rho 7404, rho 7405, rho 7406,
      r190, r191, r192, r193, r194, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg39
    refine ⟨rho 7407, rho 7408, rho 7409, rho 7410, rho 7411,
      r195, r196, r197, r198, r199, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg40
    refine ⟨rho 7412, rho 7413, rho 7414, rho 7415, rho 7416,
      r200, r201, r202, r203, r204, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg41
    refine ⟨rho 7417, rho 7418, rho 7419, rho 7420, rho 7421,
      r205, r206, r207, r208, r209, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg42
    refine ⟨rho 7422, rho 7423, rho 7424, rho 7425, rho 7426,
      r210, r211, r212, r213, r214, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg43
    refine ⟨rho 7427, rho 7428, rho 7429, rho 7430, rho 7431,
      r215, r216, r217, r218, r219, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg44
    refine ⟨rho 7432, rho 7433, rho 7434, rho 7435, rho 7436,
      r220, r221, r222, r223, r224, ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.seg45
    refine ⟨rho 7437, rho 7438, rho 7439, rho 7440, rho 7441,
      r225, r226, r227, r228, r229, ?_⟩
    exact ⟨rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.relation_sound_permSpec (rho 23) _ hrel
  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩
  simpa [seg13ScpLeafOut, Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,
    Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.tctLeafDomainLit, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.tctLeafDomainLit] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

