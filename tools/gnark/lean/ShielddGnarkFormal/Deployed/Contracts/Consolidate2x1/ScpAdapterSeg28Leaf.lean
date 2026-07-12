import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

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
      (by unfold Seg28.relationRow0 at r0; linear_combination r0), (by unfold Seg28.relationRow1 at r1; linear_combination r1), (by unfold Seg28.relationRow2 at r2; linear_combination r2), (by unfold Seg28.relationRow3 at r3; linear_combination r3), (by unfold Seg28.relationRow4 at r4; linear_combination r4), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg1
    refine ⟨rho 19404, rho 19405, rho 19406, rho 19407, rho 19408,
      (by unfold Seg28.relationRow5 at r5; linear_combination r5), (by unfold Seg28.relationRow6 at r6; linear_combination r6), (by unfold Seg28.relationRow7 at r7; linear_combination r7), (by unfold Seg28.relationRow8 at r8; linear_combination r8), (by unfold Seg28.relationRow9 at r9; linear_combination r9), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg2
    refine ⟨rho 19409, rho 19410, rho 19411, rho 19412, rho 19413,
      (by unfold Seg28.relationRow10 at r10; linear_combination r10), (by unfold Seg28.relationRow11 at r11; linear_combination r11), (by unfold Seg28.relationRow12 at r12; linear_combination r12), (by unfold Seg28.relationRow13 at r13; linear_combination r13), (by unfold Seg28.relationRow14 at r14; linear_combination r14), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg3
    refine ⟨rho 19414, rho 19415, rho 19416, rho 19417, rho 19418,
      (by unfold Seg28.relationRow15 at r15; linear_combination r15), (by unfold Seg28.relationRow16 at r16; linear_combination r16), (by unfold Seg28.relationRow17 at r17; linear_combination r17), (by unfold Seg28.relationRow18 at r18; linear_combination r18), (by unfold Seg28.relationRow19 at r19; linear_combination r19), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg4
    refine ⟨rho 19419, rho 19420, rho 19421, rho 19422, rho 19423,
      (by unfold Seg28.relationRow20 at r20; linear_combination r20), (by unfold Seg28.relationRow21 at r21; linear_combination r21), (by unfold Seg28.relationRow22 at r22; linear_combination r22), (by unfold Seg28.relationRow23 at r23; linear_combination r23), (by unfold Seg28.relationRow24 at r24; linear_combination r24), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg5
    refine ⟨rho 19424, rho 19425, rho 19426, rho 19427, rho 19428,
      (by unfold Seg28.relationRow25 at r25; linear_combination r25), (by unfold Seg28.relationRow26 at r26; linear_combination r26), (by unfold Seg28.relationRow27 at r27; linear_combination r27), (by unfold Seg28.relationRow28 at r28; linear_combination r28), (by unfold Seg28.relationRow29 at r29; linear_combination r29), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg6
    refine ⟨rho 19429, rho 19430, rho 19431, rho 19432, rho 19433,
      (by unfold Seg28.relationRow30 at r30; linear_combination r30), (by unfold Seg28.relationRow31 at r31; linear_combination r31), (by unfold Seg28.relationRow32 at r32; linear_combination r32), (by unfold Seg28.relationRow33 at r33; linear_combination r33), (by unfold Seg28.relationRow34 at r34; linear_combination r34), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg7
    refine ⟨rho 19434, rho 19435, rho 19436, rho 19437, rho 19438,
      (by unfold Seg28.relationRow35 at r35; linear_combination r35), (by unfold Seg28.relationRow36 at r36; linear_combination r36), (by unfold Seg28.relationRow37 at r37; linear_combination r37), (by unfold Seg28.relationRow38 at r38; linear_combination r38), (by unfold Seg28.relationRow39 at r39; linear_combination r39), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg8
    refine ⟨rho 19439, rho 19440, rho 19441, rho 19442, rho 19443,
      (by unfold Seg28.relationRow40 at r40; linear_combination r40), (by unfold Seg28.relationRow41 at r41; linear_combination r41), (by unfold Seg28.relationRow42 at r42; linear_combination r42), (by unfold Seg28.relationRow43 at r43; linear_combination r43), (by unfold Seg28.relationRow44 at r44; linear_combination r44), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg9
    refine ⟨rho 19444, rho 19445, rho 19446, rho 19447, rho 19448,
      (by unfold Seg28.relationRow45 at r45; linear_combination r45), (by unfold Seg28.relationRow46 at r46; linear_combination r46), (by unfold Seg28.relationRow47 at r47; linear_combination r47), (by unfold Seg28.relationRow48 at r48; linear_combination r48), (by unfold Seg28.relationRow49 at r49; linear_combination r49), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg10
    refine ⟨rho 19449, rho 19450, rho 19451, rho 19452, rho 19453,
      (by unfold Seg28.relationRow50 at r50; linear_combination r50), (by unfold Seg28.relationRow51 at r51; linear_combination r51), (by unfold Seg28.relationRow52 at r52; linear_combination r52), (by unfold Seg28.relationRow53 at r53; linear_combination r53), (by unfold Seg28.relationRow54 at r54; linear_combination r54), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg11
    refine ⟨rho 19454, rho 19455, rho 19456, rho 19457, rho 19458,
      (by unfold Seg28.relationRow55 at r55; linear_combination r55), (by unfold Seg28.relationRow56 at r56; linear_combination r56), (by unfold Seg28.relationRow57 at r57; linear_combination r57), (by unfold Seg28.relationRow58 at r58; linear_combination r58), (by unfold Seg28.relationRow59 at r59; linear_combination r59), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg12
    refine ⟨rho 19459, rho 19460, rho 19461, rho 19462, rho 19463,
      (by unfold Seg28.relationRow60 at r60; linear_combination r60), (by unfold Seg28.relationRow61 at r61; linear_combination r61), (by unfold Seg28.relationRow62 at r62; linear_combination r62), (by unfold Seg28.relationRow63 at r63; linear_combination r63), (by unfold Seg28.relationRow64 at r64; linear_combination r64), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg13
    refine ⟨rho 19464, rho 19465, rho 19466, rho 19467, rho 19468,
      (by unfold Seg28.relationRow65 at r65; linear_combination r65), (by unfold Seg28.relationRow66 at r66; linear_combination r66), (by unfold Seg28.relationRow67 at r67; linear_combination r67), (by unfold Seg28.relationRow68 at r68; linear_combination r68), (by unfold Seg28.relationRow69 at r69; linear_combination r69), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg14
    refine ⟨rho 19469, rho 19470, rho 19471, rho 19472, rho 19473,
      (by unfold Seg28.relationRow70 at r70; linear_combination r70), (by unfold Seg28.relationRow71 at r71; linear_combination r71), (by unfold Seg28.relationRow72 at r72; linear_combination r72), (by unfold Seg28.relationRow73 at r73; linear_combination r73), (by unfold Seg28.relationRow74 at r74; linear_combination r74), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg15
    refine ⟨rho 19474, rho 19475, rho 19476, rho 19477, rho 19478,
      (by unfold Seg28.relationRow75 at r75; linear_combination r75), (by unfold Seg28.relationRow76 at r76; linear_combination r76), (by unfold Seg28.relationRow77 at r77; linear_combination r77), (by unfold Seg28.relationRow78 at r78; linear_combination r78), (by unfold Seg28.relationRow79 at r79; linear_combination r79), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg16
    refine ⟨rho 19479, rho 19480, rho 19481, rho 19482, rho 19483,
      (by unfold Seg28.relationRow80 at r80; linear_combination r80), (by unfold Seg28.relationRow81 at r81; linear_combination r81), (by unfold Seg28.relationRow82 at r82; linear_combination r82), (by unfold Seg28.relationRow83 at r83; linear_combination r83), (by unfold Seg28.relationRow84 at r84; linear_combination r84), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg17
    refine ⟨rho 19484, rho 19485, rho 19486, rho 19487, rho 19488,
      (by unfold Seg28.relationRow85 at r85; linear_combination r85), (by unfold Seg28.relationRow86 at r86; linear_combination r86), (by unfold Seg28.relationRow87 at r87; linear_combination r87), (by unfold Seg28.relationRow88 at r88; linear_combination r88), (by unfold Seg28.relationRow89 at r89; linear_combination r89), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg18
    refine ⟨rho 19489, rho 19490, rho 19491, rho 19492, rho 19493,
      (by unfold Seg28.relationRow90 at r90; linear_combination r90), (by unfold Seg28.relationRow91 at r91; linear_combination r91), (by unfold Seg28.relationRow92 at r92; linear_combination r92), (by unfold Seg28.relationRow93 at r93; linear_combination r93), (by unfold Seg28.relationRow94 at r94; linear_combination r94), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg19
    refine ⟨rho 19494, rho 19495, rho 19496, rho 19497, rho 19498,
      (by unfold Seg28.relationRow95 at r95; linear_combination r95), (by unfold Seg28.relationRow96 at r96; linear_combination r96), (by unfold Seg28.relationRow97 at r97; linear_combination r97), (by unfold Seg28.relationRow98 at r98; linear_combination r98), (by unfold Seg28.relationRow99 at r99; linear_combination r99), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg20
    refine ⟨rho 19499, rho 19500, rho 19501, rho 19502, rho 19503,
      (by unfold Seg28.relationRow100 at r100; linear_combination r100), (by unfold Seg28.relationRow101 at r101; linear_combination r101), (by unfold Seg28.relationRow102 at r102; linear_combination r102), (by unfold Seg28.relationRow103 at r103; linear_combination r103), (by unfold Seg28.relationRow104 at r104; linear_combination r104), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg21
    refine ⟨rho 19504, rho 19505, rho 19506, rho 19507, rho 19508,
      (by unfold Seg28.relationRow105 at r105; linear_combination r105), (by unfold Seg28.relationRow106 at r106; linear_combination r106), (by unfold Seg28.relationRow107 at r107; linear_combination r107), (by unfold Seg28.relationRow108 at r108; linear_combination r108), (by unfold Seg28.relationRow109 at r109; linear_combination r109), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg22
    refine ⟨rho 19509, rho 19510, rho 19511, rho 19512, rho 19513,
      (by unfold Seg28.relationRow110 at r110; linear_combination r110), (by unfold Seg28.relationRow111 at r111; linear_combination r111), (by unfold Seg28.relationRow112 at r112; linear_combination r112), (by unfold Seg28.relationRow113 at r113; linear_combination r113), (by unfold Seg28.relationRow114 at r114; linear_combination r114), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg23
    refine ⟨rho 19514, rho 19515, rho 19516, rho 19517, rho 19518,
      (by unfold Seg28.relationRow115 at r115; linear_combination r115), (by unfold Seg28.relationRow116 at r116; linear_combination r116), (by unfold Seg28.relationRow117 at r117; linear_combination r117), (by unfold Seg28.relationRow118 at r118; linear_combination r118), (by unfold Seg28.relationRow119 at r119; linear_combination r119), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg24
    refine ⟨rho 19519, rho 19520, rho 19521, rho 19522, rho 19523,
      (by unfold Seg28.relationRow120 at r120; linear_combination r120), (by unfold Seg28.relationRow121 at r121; linear_combination r121), (by unfold Seg28.relationRow122 at r122; linear_combination r122), (by unfold Seg28.relationRow123 at r123; linear_combination r123), (by unfold Seg28.relationRow124 at r124; linear_combination r124), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg25
    refine ⟨rho 19524, rho 19525, rho 19526, rho 19527, rho 19528,
      (by unfold Seg28.relationRow125 at r125; linear_combination r125), (by unfold Seg28.relationRow126 at r126; linear_combination r126), (by unfold Seg28.relationRow127 at r127; linear_combination r127), (by unfold Seg28.relationRow128 at r128; linear_combination r128), (by unfold Seg28.relationRow129 at r129; linear_combination r129), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg26
    refine ⟨rho 19529, rho 19530, rho 19531, rho 19532, rho 19533,
      (by unfold Seg28.relationRow130 at r130; linear_combination r130), (by unfold Seg28.relationRow131 at r131; linear_combination r131), (by unfold Seg28.relationRow132 at r132; linear_combination r132), (by unfold Seg28.relationRow133 at r133; linear_combination r133), (by unfold Seg28.relationRow134 at r134; linear_combination r134), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg27
    refine ⟨rho 19534, rho 19535, rho 19536, rho 19537, rho 19538,
      (by unfold Seg28.relationRow135 at r135; linear_combination r135), (by unfold Seg28.relationRow136 at r136; linear_combination r136), (by unfold Seg28.relationRow137 at r137; linear_combination r137), (by unfold Seg28.relationRow138 at r138; linear_combination r138), (by unfold Seg28.relationRow139 at r139; linear_combination r139), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg28
    refine ⟨rho 19539, rho 19540, rho 19541, rho 19542, rho 19543,
      (by unfold Seg28.relationRow140 at r140; linear_combination r140), (by unfold Seg28.relationRow141 at r141; linear_combination r141), (by unfold Seg28.relationRow142 at r142; linear_combination r142), (by unfold Seg28.relationRow143 at r143; linear_combination r143), (by unfold Seg28.relationRow144 at r144; linear_combination r144), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg29
    refine ⟨rho 19544, rho 19545, rho 19546, rho 19547, rho 19548,
      (by unfold Seg28.relationRow145 at r145; linear_combination r145), (by unfold Seg28.relationRow146 at r146; linear_combination r146), (by unfold Seg28.relationRow147 at r147; linear_combination r147), (by unfold Seg28.relationRow148 at r148; linear_combination r148), (by unfold Seg28.relationRow149 at r149; linear_combination r149), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg30
    refine ⟨rho 19549, rho 19550, rho 19551, rho 19552, rho 19553,
      (by unfold Seg28.relationRow150 at r150; linear_combination r150), (by unfold Seg28.relationRow151 at r151; linear_combination r151), (by unfold Seg28.relationRow152 at r152; linear_combination r152), (by unfold Seg28.relationRow153 at r153; linear_combination r153), (by unfold Seg28.relationRow154 at r154; linear_combination r154), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg31
    refine ⟨rho 19554, rho 19555, rho 19556, rho 19557, rho 19558,
      (by unfold Seg28.relationRow155 at r155; linear_combination r155), (by unfold Seg28.relationRow156 at r156; linear_combination r156), (by unfold Seg28.relationRow157 at r157; linear_combination r157), (by unfold Seg28.relationRow158 at r158; linear_combination r158), (by unfold Seg28.relationRow159 at r159; linear_combination r159), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg32
    refine ⟨rho 19559, rho 19560, rho 19561, rho 19562, rho 19563,
      (by unfold Seg28.relationRow160 at r160; linear_combination r160), (by unfold Seg28.relationRow161 at r161; linear_combination r161), (by unfold Seg28.relationRow162 at r162; linear_combination r162), (by unfold Seg28.relationRow163 at r163; linear_combination r163), (by unfold Seg28.relationRow164 at r164; linear_combination r164), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg33
    refine ⟨rho 19564, rho 19565, rho 19566, rho 19567, rho 19568,
      (by unfold Seg28.relationRow165 at r165; linear_combination r165), (by unfold Seg28.relationRow166 at r166; linear_combination r166), (by unfold Seg28.relationRow167 at r167; linear_combination r167), (by unfold Seg28.relationRow168 at r168; linear_combination r168), (by unfold Seg28.relationRow169 at r169; linear_combination r169), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg34
    refine ⟨rho 19569, rho 19570, rho 19571, rho 19572, rho 19573,
      (by unfold Seg28.relationRow170 at r170; linear_combination r170), (by unfold Seg28.relationRow171 at r171; linear_combination r171), (by unfold Seg28.relationRow172 at r172; linear_combination r172), (by unfold Seg28.relationRow173 at r173; linear_combination r173), (by unfold Seg28.relationRow174 at r174; linear_combination r174), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg35
    refine ⟨rho 19574, rho 19575, rho 19576, rho 19577, rho 19578,
      (by unfold Seg28.relationRow175 at r175; linear_combination r175), (by unfold Seg28.relationRow176 at r176; linear_combination r176), (by unfold Seg28.relationRow177 at r177; linear_combination r177), (by unfold Seg28.relationRow178 at r178; linear_combination r178), (by unfold Seg28.relationRow179 at r179; linear_combination r179), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg36
    refine ⟨rho 19579, rho 19580, rho 19581, rho 19582, rho 19583,
      (by unfold Seg28.relationRow180 at r180; linear_combination r180), (by unfold Seg28.relationRow181 at r181; linear_combination r181), (by unfold Seg28.relationRow182 at r182; linear_combination r182), (by unfold Seg28.relationRow183 at r183; linear_combination r183), (by unfold Seg28.relationRow184 at r184; linear_combination r184), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg37
    refine ⟨rho 19584, rho 19585, rho 19586, rho 19587, rho 19588,
      (by unfold Seg28.relationRow185 at r185; linear_combination r185), (by unfold Seg28.relationRow186 at r186; linear_combination r186), (by unfold Seg28.relationRow187 at r187; linear_combination r187), (by unfold Seg28.relationRow188 at r188; linear_combination r188), (by unfold Seg28.relationRow189 at r189; linear_combination r189), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg38
    refine ⟨rho 19589, rho 19590, rho 19591, rho 19592, rho 19593,
      (by unfold Seg28.relationRow190 at r190; linear_combination r190), (by unfold Seg28.relationRow191 at r191; linear_combination r191), (by unfold Seg28.relationRow192 at r192; linear_combination r192), (by unfold Seg28.relationRow193 at r193; linear_combination r193), (by unfold Seg28.relationRow194 at r194; linear_combination r194), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg39
    refine ⟨rho 19594, rho 19595, rho 19596, rho 19597, rho 19598,
      (by unfold Seg28.relationRow195 at r195; linear_combination r195), (by unfold Seg28.relationRow196 at r196; linear_combination r196), (by unfold Seg28.relationRow197 at r197; linear_combination r197), (by unfold Seg28.relationRow198 at r198; linear_combination r198), (by unfold Seg28.relationRow199 at r199; linear_combination r199), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg40
    refine ⟨rho 19599, rho 19600, rho 19601, rho 19602, rho 19603,
      (by unfold Seg28.relationRow200 at r200; linear_combination r200), (by unfold Seg28.relationRow201 at r201; linear_combination r201), (by unfold Seg28.relationRow202 at r202; linear_combination r202), (by unfold Seg28.relationRow203 at r203; linear_combination r203), (by unfold Seg28.relationRow204 at r204; linear_combination r204), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg41
    refine ⟨rho 19604, rho 19605, rho 19606, rho 19607, rho 19608,
      (by unfold Seg28.relationRow205 at r205; linear_combination r205), (by unfold Seg28.relationRow206 at r206; linear_combination r206), (by unfold Seg28.relationRow207 at r207; linear_combination r207), (by unfold Seg28.relationRow208 at r208; linear_combination r208), (by unfold Seg28.relationRow209 at r209; linear_combination r209), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg42
    refine ⟨rho 19609, rho 19610, rho 19611, rho 19612, rho 19613,
      (by unfold Seg28.relationRow210 at r210; linear_combination r210), (by unfold Seg28.relationRow211 at r211; linear_combination r211), (by unfold Seg28.relationRow212 at r212; linear_combination r212), (by unfold Seg28.relationRow213 at r213; linear_combination r213), (by unfold Seg28.relationRow214 at r214; linear_combination r214), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg43
    refine ⟨rho 19614, rho 19615, rho 19616, rho 19617, rho 19618,
      (by unfold Seg28.relationRow215 at r215; linear_combination r215), (by unfold Seg28.relationRow216 at r216; linear_combination r216), (by unfold Seg28.relationRow217 at r217; linear_combination r217), (by unfold Seg28.relationRow218 at r218; linear_combination r218), (by unfold Seg28.relationRow219 at r219; linear_combination r219), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg44
    refine ⟨rho 19619, rho 19620, rho 19621, rho 19622, rho 19623,
      (by unfold Seg28.relationRow220 at r220; linear_combination r220), (by unfold Seg28.relationRow221 at r221; linear_combination r221), (by unfold Seg28.relationRow222 at r222; linear_combination r222), (by unfold Seg28.relationRow223 at r223; linear_combination r223), (by unfold Seg28.relationRow224 at r224; linear_combination r224), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg45
    refine ⟨rho 19624, rho 19625, rho 19626, rho 19627, rho 19628,
      (by unfold Seg28.relationRow225 at r225; linear_combination r225), (by unfold Seg28.relationRow226 at r226; linear_combination r226), (by unfold Seg28.relationRow227 at r227; linear_combination r227), (by unfold Seg28.relationRow228 at r228; linear_combination r228), (by unfold Seg28.relationRow229 at r229; linear_combination r229), ?_⟩
    exact ⟨rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.relation_sound_permSpec (rho 113) _ hrel
  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩
  simpa [seg28ScpLeafOut, Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,
    Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.tctLeafDomainLit, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.tctLeafDomainLit] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

