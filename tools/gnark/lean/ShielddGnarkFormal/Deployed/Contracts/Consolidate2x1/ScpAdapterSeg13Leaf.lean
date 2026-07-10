import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

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
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.relation (rho 23)
      (fun x y => x = rho 7693 ∧ y = rho 7698) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg0
    refine ⟨rho 7469, rho 7470, rho 7471, rho 7472, rho 7473,
      (by unfold Seg13.relationRow0 at r0; linear_combination r0), (by unfold Seg13.relationRow1 at r1; linear_combination r1), (by unfold Seg13.relationRow2 at r2; linear_combination r2), (by unfold Seg13.relationRow3 at r3; linear_combination r3), (by unfold Seg13.relationRow4 at r4; linear_combination r4), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg1
    refine ⟨rho 7474, rho 7475, rho 7476, rho 7477, rho 7478,
      (by unfold Seg13.relationRow5 at r5; linear_combination r5), (by unfold Seg13.relationRow6 at r6; linear_combination r6), (by unfold Seg13.relationRow7 at r7; linear_combination r7), (by unfold Seg13.relationRow8 at r8; linear_combination r8), (by unfold Seg13.relationRow9 at r9; linear_combination r9), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg2
    refine ⟨rho 7479, rho 7480, rho 7481, rho 7482, rho 7483,
      (by unfold Seg13.relationRow10 at r10; linear_combination r10), (by unfold Seg13.relationRow11 at r11; linear_combination r11), (by unfold Seg13.relationRow12 at r12; linear_combination r12), (by unfold Seg13.relationRow13 at r13; linear_combination r13), (by unfold Seg13.relationRow14 at r14; linear_combination r14), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg3
    refine ⟨rho 7484, rho 7485, rho 7486, rho 7487, rho 7488,
      (by unfold Seg13.relationRow15 at r15; linear_combination r15), (by unfold Seg13.relationRow16 at r16; linear_combination r16), (by unfold Seg13.relationRow17 at r17; linear_combination r17), (by unfold Seg13.relationRow18 at r18; linear_combination r18), (by unfold Seg13.relationRow19 at r19; linear_combination r19), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg4
    refine ⟨rho 7489, rho 7490, rho 7491, rho 7492, rho 7493,
      (by unfold Seg13.relationRow20 at r20; linear_combination r20), (by unfold Seg13.relationRow21 at r21; linear_combination r21), (by unfold Seg13.relationRow22 at r22; linear_combination r22), (by unfold Seg13.relationRow23 at r23; linear_combination r23), (by unfold Seg13.relationRow24 at r24; linear_combination r24), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg5
    refine ⟨rho 7494, rho 7495, rho 7496, rho 7497, rho 7498,
      (by unfold Seg13.relationRow25 at r25; linear_combination r25), (by unfold Seg13.relationRow26 at r26; linear_combination r26), (by unfold Seg13.relationRow27 at r27; linear_combination r27), (by unfold Seg13.relationRow28 at r28; linear_combination r28), (by unfold Seg13.relationRow29 at r29; linear_combination r29), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg6
    refine ⟨rho 7499, rho 7500, rho 7501, rho 7502, rho 7503,
      (by unfold Seg13.relationRow30 at r30; linear_combination r30), (by unfold Seg13.relationRow31 at r31; linear_combination r31), (by unfold Seg13.relationRow32 at r32; linear_combination r32), (by unfold Seg13.relationRow33 at r33; linear_combination r33), (by unfold Seg13.relationRow34 at r34; linear_combination r34), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg7
    refine ⟨rho 7504, rho 7505, rho 7506, rho 7507, rho 7508,
      (by unfold Seg13.relationRow35 at r35; linear_combination r35), (by unfold Seg13.relationRow36 at r36; linear_combination r36), (by unfold Seg13.relationRow37 at r37; linear_combination r37), (by unfold Seg13.relationRow38 at r38; linear_combination r38), (by unfold Seg13.relationRow39 at r39; linear_combination r39), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg8
    refine ⟨rho 7509, rho 7510, rho 7511, rho 7512, rho 7513,
      (by unfold Seg13.relationRow40 at r40; linear_combination r40), (by unfold Seg13.relationRow41 at r41; linear_combination r41), (by unfold Seg13.relationRow42 at r42; linear_combination r42), (by unfold Seg13.relationRow43 at r43; linear_combination r43), (by unfold Seg13.relationRow44 at r44; linear_combination r44), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg9
    refine ⟨rho 7514, rho 7515, rho 7516, rho 7517, rho 7518,
      (by unfold Seg13.relationRow45 at r45; linear_combination r45), (by unfold Seg13.relationRow46 at r46; linear_combination r46), (by unfold Seg13.relationRow47 at r47; linear_combination r47), (by unfold Seg13.relationRow48 at r48; linear_combination r48), (by unfold Seg13.relationRow49 at r49; linear_combination r49), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg10
    refine ⟨rho 7519, rho 7520, rho 7521, rho 7522, rho 7523,
      (by unfold Seg13.relationRow50 at r50; linear_combination r50), (by unfold Seg13.relationRow51 at r51; linear_combination r51), (by unfold Seg13.relationRow52 at r52; linear_combination r52), (by unfold Seg13.relationRow53 at r53; linear_combination r53), (by unfold Seg13.relationRow54 at r54; linear_combination r54), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg11
    refine ⟨rho 7524, rho 7525, rho 7526, rho 7527, rho 7528,
      (by unfold Seg13.relationRow55 at r55; linear_combination r55), (by unfold Seg13.relationRow56 at r56; linear_combination r56), (by unfold Seg13.relationRow57 at r57; linear_combination r57), (by unfold Seg13.relationRow58 at r58; linear_combination r58), (by unfold Seg13.relationRow59 at r59; linear_combination r59), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg12
    refine ⟨rho 7529, rho 7530, rho 7531, rho 7532, rho 7533,
      (by unfold Seg13.relationRow60 at r60; linear_combination r60), (by unfold Seg13.relationRow61 at r61; linear_combination r61), (by unfold Seg13.relationRow62 at r62; linear_combination r62), (by unfold Seg13.relationRow63 at r63; linear_combination r63), (by unfold Seg13.relationRow64 at r64; linear_combination r64), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg13
    refine ⟨rho 7534, rho 7535, rho 7536, rho 7537, rho 7538,
      (by unfold Seg13.relationRow65 at r65; linear_combination r65), (by unfold Seg13.relationRow66 at r66; linear_combination r66), (by unfold Seg13.relationRow67 at r67; linear_combination r67), (by unfold Seg13.relationRow68 at r68; linear_combination r68), (by unfold Seg13.relationRow69 at r69; linear_combination r69), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg14
    refine ⟨rho 7539, rho 7540, rho 7541, rho 7542, rho 7543,
      (by unfold Seg13.relationRow70 at r70; linear_combination r70), (by unfold Seg13.relationRow71 at r71; linear_combination r71), (by unfold Seg13.relationRow72 at r72; linear_combination r72), (by unfold Seg13.relationRow73 at r73; linear_combination r73), (by unfold Seg13.relationRow74 at r74; linear_combination r74), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg15
    refine ⟨rho 7544, rho 7545, rho 7546, rho 7547, rho 7548,
      (by unfold Seg13.relationRow75 at r75; linear_combination r75), (by unfold Seg13.relationRow76 at r76; linear_combination r76), (by unfold Seg13.relationRow77 at r77; linear_combination r77), (by unfold Seg13.relationRow78 at r78; linear_combination r78), (by unfold Seg13.relationRow79 at r79; linear_combination r79), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg16
    refine ⟨rho 7549, rho 7550, rho 7551, rho 7552, rho 7553,
      (by unfold Seg13.relationRow80 at r80; linear_combination r80), (by unfold Seg13.relationRow81 at r81; linear_combination r81), (by unfold Seg13.relationRow82 at r82; linear_combination r82), (by unfold Seg13.relationRow83 at r83; linear_combination r83), (by unfold Seg13.relationRow84 at r84; linear_combination r84), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg17
    refine ⟨rho 7554, rho 7555, rho 7556, rho 7557, rho 7558,
      (by unfold Seg13.relationRow85 at r85; linear_combination r85), (by unfold Seg13.relationRow86 at r86; linear_combination r86), (by unfold Seg13.relationRow87 at r87; linear_combination r87), (by unfold Seg13.relationRow88 at r88; linear_combination r88), (by unfold Seg13.relationRow89 at r89; linear_combination r89), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg18
    refine ⟨rho 7559, rho 7560, rho 7561, rho 7562, rho 7563,
      (by unfold Seg13.relationRow90 at r90; linear_combination r90), (by unfold Seg13.relationRow91 at r91; linear_combination r91), (by unfold Seg13.relationRow92 at r92; linear_combination r92), (by unfold Seg13.relationRow93 at r93; linear_combination r93), (by unfold Seg13.relationRow94 at r94; linear_combination r94), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg19
    refine ⟨rho 7564, rho 7565, rho 7566, rho 7567, rho 7568,
      (by unfold Seg13.relationRow95 at r95; linear_combination r95), (by unfold Seg13.relationRow96 at r96; linear_combination r96), (by unfold Seg13.relationRow97 at r97; linear_combination r97), (by unfold Seg13.relationRow98 at r98; linear_combination r98), (by unfold Seg13.relationRow99 at r99; linear_combination r99), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg20
    refine ⟨rho 7569, rho 7570, rho 7571, rho 7572, rho 7573,
      (by unfold Seg13.relationRow100 at r100; linear_combination r100), (by unfold Seg13.relationRow101 at r101; linear_combination r101), (by unfold Seg13.relationRow102 at r102; linear_combination r102), (by unfold Seg13.relationRow103 at r103; linear_combination r103), (by unfold Seg13.relationRow104 at r104; linear_combination r104), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg21
    refine ⟨rho 7574, rho 7575, rho 7576, rho 7577, rho 7578,
      (by unfold Seg13.relationRow105 at r105; linear_combination r105), (by unfold Seg13.relationRow106 at r106; linear_combination r106), (by unfold Seg13.relationRow107 at r107; linear_combination r107), (by unfold Seg13.relationRow108 at r108; linear_combination r108), (by unfold Seg13.relationRow109 at r109; linear_combination r109), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg22
    refine ⟨rho 7579, rho 7580, rho 7581, rho 7582, rho 7583,
      (by unfold Seg13.relationRow110 at r110; linear_combination r110), (by unfold Seg13.relationRow111 at r111; linear_combination r111), (by unfold Seg13.relationRow112 at r112; linear_combination r112), (by unfold Seg13.relationRow113 at r113; linear_combination r113), (by unfold Seg13.relationRow114 at r114; linear_combination r114), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg23
    refine ⟨rho 7584, rho 7585, rho 7586, rho 7587, rho 7588,
      (by unfold Seg13.relationRow115 at r115; linear_combination r115), (by unfold Seg13.relationRow116 at r116; linear_combination r116), (by unfold Seg13.relationRow117 at r117; linear_combination r117), (by unfold Seg13.relationRow118 at r118; linear_combination r118), (by unfold Seg13.relationRow119 at r119; linear_combination r119), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg24
    refine ⟨rho 7589, rho 7590, rho 7591, rho 7592, rho 7593,
      (by unfold Seg13.relationRow120 at r120; linear_combination r120), (by unfold Seg13.relationRow121 at r121; linear_combination r121), (by unfold Seg13.relationRow122 at r122; linear_combination r122), (by unfold Seg13.relationRow123 at r123; linear_combination r123), (by unfold Seg13.relationRow124 at r124; linear_combination r124), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg25
    refine ⟨rho 7594, rho 7595, rho 7596, rho 7597, rho 7598,
      (by unfold Seg13.relationRow125 at r125; linear_combination r125), (by unfold Seg13.relationRow126 at r126; linear_combination r126), (by unfold Seg13.relationRow127 at r127; linear_combination r127), (by unfold Seg13.relationRow128 at r128; linear_combination r128), (by unfold Seg13.relationRow129 at r129; linear_combination r129), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg26
    refine ⟨rho 7599, rho 7600, rho 7601, rho 7602, rho 7603,
      (by unfold Seg13.relationRow130 at r130; linear_combination r130), (by unfold Seg13.relationRow131 at r131; linear_combination r131), (by unfold Seg13.relationRow132 at r132; linear_combination r132), (by unfold Seg13.relationRow133 at r133; linear_combination r133), (by unfold Seg13.relationRow134 at r134; linear_combination r134), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg27
    refine ⟨rho 7604, rho 7605, rho 7606, rho 7607, rho 7608,
      (by unfold Seg13.relationRow135 at r135; linear_combination r135), (by unfold Seg13.relationRow136 at r136; linear_combination r136), (by unfold Seg13.relationRow137 at r137; linear_combination r137), (by unfold Seg13.relationRow138 at r138; linear_combination r138), (by unfold Seg13.relationRow139 at r139; linear_combination r139), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg28
    refine ⟨rho 7609, rho 7610, rho 7611, rho 7612, rho 7613,
      (by unfold Seg13.relationRow140 at r140; linear_combination r140), (by unfold Seg13.relationRow141 at r141; linear_combination r141), (by unfold Seg13.relationRow142 at r142; linear_combination r142), (by unfold Seg13.relationRow143 at r143; linear_combination r143), (by unfold Seg13.relationRow144 at r144; linear_combination r144), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg29
    refine ⟨rho 7614, rho 7615, rho 7616, rho 7617, rho 7618,
      (by unfold Seg13.relationRow145 at r145; linear_combination r145), (by unfold Seg13.relationRow146 at r146; linear_combination r146), (by unfold Seg13.relationRow147 at r147; linear_combination r147), (by unfold Seg13.relationRow148 at r148; linear_combination r148), (by unfold Seg13.relationRow149 at r149; linear_combination r149), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg30
    refine ⟨rho 7619, rho 7620, rho 7621, rho 7622, rho 7623,
      (by unfold Seg13.relationRow150 at r150; linear_combination r150), (by unfold Seg13.relationRow151 at r151; linear_combination r151), (by unfold Seg13.relationRow152 at r152; linear_combination r152), (by unfold Seg13.relationRow153 at r153; linear_combination r153), (by unfold Seg13.relationRow154 at r154; linear_combination r154), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg31
    refine ⟨rho 7624, rho 7625, rho 7626, rho 7627, rho 7628,
      (by unfold Seg13.relationRow155 at r155; linear_combination r155), (by unfold Seg13.relationRow156 at r156; linear_combination r156), (by unfold Seg13.relationRow157 at r157; linear_combination r157), (by unfold Seg13.relationRow158 at r158; linear_combination r158), (by unfold Seg13.relationRow159 at r159; linear_combination r159), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg32
    refine ⟨rho 7629, rho 7630, rho 7631, rho 7632, rho 7633,
      (by unfold Seg13.relationRow160 at r160; linear_combination r160), (by unfold Seg13.relationRow161 at r161; linear_combination r161), (by unfold Seg13.relationRow162 at r162; linear_combination r162), (by unfold Seg13.relationRow163 at r163; linear_combination r163), (by unfold Seg13.relationRow164 at r164; linear_combination r164), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg33
    refine ⟨rho 7634, rho 7635, rho 7636, rho 7637, rho 7638,
      (by unfold Seg13.relationRow165 at r165; linear_combination r165), (by unfold Seg13.relationRow166 at r166; linear_combination r166), (by unfold Seg13.relationRow167 at r167; linear_combination r167), (by unfold Seg13.relationRow168 at r168; linear_combination r168), (by unfold Seg13.relationRow169 at r169; linear_combination r169), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg34
    refine ⟨rho 7639, rho 7640, rho 7641, rho 7642, rho 7643,
      (by unfold Seg13.relationRow170 at r170; linear_combination r170), (by unfold Seg13.relationRow171 at r171; linear_combination r171), (by unfold Seg13.relationRow172 at r172; linear_combination r172), (by unfold Seg13.relationRow173 at r173; linear_combination r173), (by unfold Seg13.relationRow174 at r174; linear_combination r174), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg35
    refine ⟨rho 7644, rho 7645, rho 7646, rho 7647, rho 7648,
      (by unfold Seg13.relationRow175 at r175; linear_combination r175), (by unfold Seg13.relationRow176 at r176; linear_combination r176), (by unfold Seg13.relationRow177 at r177; linear_combination r177), (by unfold Seg13.relationRow178 at r178; linear_combination r178), (by unfold Seg13.relationRow179 at r179; linear_combination r179), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg36
    refine ⟨rho 7649, rho 7650, rho 7651, rho 7652, rho 7653,
      (by unfold Seg13.relationRow180 at r180; linear_combination r180), (by unfold Seg13.relationRow181 at r181; linear_combination r181), (by unfold Seg13.relationRow182 at r182; linear_combination r182), (by unfold Seg13.relationRow183 at r183; linear_combination r183), (by unfold Seg13.relationRow184 at r184; linear_combination r184), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg37
    refine ⟨rho 7654, rho 7655, rho 7656, rho 7657, rho 7658,
      (by unfold Seg13.relationRow185 at r185; linear_combination r185), (by unfold Seg13.relationRow186 at r186; linear_combination r186), (by unfold Seg13.relationRow187 at r187; linear_combination r187), (by unfold Seg13.relationRow188 at r188; linear_combination r188), (by unfold Seg13.relationRow189 at r189; linear_combination r189), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg38
    refine ⟨rho 7659, rho 7660, rho 7661, rho 7662, rho 7663,
      (by unfold Seg13.relationRow190 at r190; linear_combination r190), (by unfold Seg13.relationRow191 at r191; linear_combination r191), (by unfold Seg13.relationRow192 at r192; linear_combination r192), (by unfold Seg13.relationRow193 at r193; linear_combination r193), (by unfold Seg13.relationRow194 at r194; linear_combination r194), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg39
    refine ⟨rho 7664, rho 7665, rho 7666, rho 7667, rho 7668,
      (by unfold Seg13.relationRow195 at r195; linear_combination r195), (by unfold Seg13.relationRow196 at r196; linear_combination r196), (by unfold Seg13.relationRow197 at r197; linear_combination r197), (by unfold Seg13.relationRow198 at r198; linear_combination r198), (by unfold Seg13.relationRow199 at r199; linear_combination r199), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg40
    refine ⟨rho 7669, rho 7670, rho 7671, rho 7672, rho 7673,
      (by unfold Seg13.relationRow200 at r200; linear_combination r200), (by unfold Seg13.relationRow201 at r201; linear_combination r201), (by unfold Seg13.relationRow202 at r202; linear_combination r202), (by unfold Seg13.relationRow203 at r203; linear_combination r203), (by unfold Seg13.relationRow204 at r204; linear_combination r204), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg41
    refine ⟨rho 7674, rho 7675, rho 7676, rho 7677, rho 7678,
      (by unfold Seg13.relationRow205 at r205; linear_combination r205), (by unfold Seg13.relationRow206 at r206; linear_combination r206), (by unfold Seg13.relationRow207 at r207; linear_combination r207), (by unfold Seg13.relationRow208 at r208; linear_combination r208), (by unfold Seg13.relationRow209 at r209; linear_combination r209), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg42
    refine ⟨rho 7679, rho 7680, rho 7681, rho 7682, rho 7683,
      (by unfold Seg13.relationRow210 at r210; linear_combination r210), (by unfold Seg13.relationRow211 at r211; linear_combination r211), (by unfold Seg13.relationRow212 at r212; linear_combination r212), (by unfold Seg13.relationRow213 at r213; linear_combination r213), (by unfold Seg13.relationRow214 at r214; linear_combination r214), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg43
    refine ⟨rho 7684, rho 7685, rho 7686, rho 7687, rho 7688,
      (by unfold Seg13.relationRow215 at r215; linear_combination r215), (by unfold Seg13.relationRow216 at r216; linear_combination r216), (by unfold Seg13.relationRow217 at r217; linear_combination r217), (by unfold Seg13.relationRow218 at r218; linear_combination r218), (by unfold Seg13.relationRow219 at r219; linear_combination r219), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg44
    refine ⟨rho 7689, rho 7690, rho 7691, rho 7692, rho 7693,
      (by unfold Seg13.relationRow220 at r220; linear_combination r220), (by unfold Seg13.relationRow221 at r221; linear_combination r221), (by unfold Seg13.relationRow222 at r222; linear_combination r222), (by unfold Seg13.relationRow223 at r223; linear_combination r223), (by unfold Seg13.relationRow224 at r224; linear_combination r224), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg45
    refine ⟨rho 7694, rho 7695, rho 7696, rho 7697, rho 7698,
      (by unfold Seg13.relationRow225 at r225; linear_combination r225), (by unfold Seg13.relationRow226 at r226; linear_combination r226), (by unfold Seg13.relationRow227 at r227; linear_combination r227), (by unfold Seg13.relationRow228 at r228; linear_combination r228), (by unfold Seg13.relationRow229 at r229; linear_combination r229), ?_⟩
    exact ⟨rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.relation_sound_permSpec (rho 23) _ hrel
  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩
  simpa [seg13ScpLeafOut, Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,
    Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.tctLeafDomainLit, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.tctLeafDomainLit] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

