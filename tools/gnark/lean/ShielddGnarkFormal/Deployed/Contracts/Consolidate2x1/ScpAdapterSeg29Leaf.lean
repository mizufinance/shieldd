import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_leaf_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpLeafOut rho = Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1 (545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) (rho 113) := by
  unfold Seg29.relation at h
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
  unfold Seg29.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩
  unfold Seg29.relationPart1 at p1
  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩
  unfold Seg29.relationPart2 at p2
  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.relation (rho 113)
      (fun x y => x = rho 20577 ∧ y = rho 20582) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg0
    refine ⟨rho 20353, rho 20354, rho 20355, rho 20356, rho 20357,
      (by unfold Seg29.relationRow0 at r0; linear_combination r0), (by unfold Seg29.relationRow1 at r1; linear_combination r1), (by unfold Seg29.relationRow2 at r2; linear_combination r2), (by unfold Seg29.relationRow3 at r3; linear_combination r3), (by unfold Seg29.relationRow4 at r4; linear_combination r4), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg1
    refine ⟨rho 20358, rho 20359, rho 20360, rho 20361, rho 20362,
      (by unfold Seg29.relationRow5 at r5; linear_combination r5), (by unfold Seg29.relationRow6 at r6; linear_combination r6), (by unfold Seg29.relationRow7 at r7; linear_combination r7), (by unfold Seg29.relationRow8 at r8; linear_combination r8), (by unfold Seg29.relationRow9 at r9; linear_combination r9), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg2
    refine ⟨rho 20363, rho 20364, rho 20365, rho 20366, rho 20367,
      (by unfold Seg29.relationRow10 at r10; linear_combination r10), (by unfold Seg29.relationRow11 at r11; linear_combination r11), (by unfold Seg29.relationRow12 at r12; linear_combination r12), (by unfold Seg29.relationRow13 at r13; linear_combination r13), (by unfold Seg29.relationRow14 at r14; linear_combination r14), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg3
    refine ⟨rho 20368, rho 20369, rho 20370, rho 20371, rho 20372,
      (by unfold Seg29.relationRow15 at r15; linear_combination r15), (by unfold Seg29.relationRow16 at r16; linear_combination r16), (by unfold Seg29.relationRow17 at r17; linear_combination r17), (by unfold Seg29.relationRow18 at r18; linear_combination r18), (by unfold Seg29.relationRow19 at r19; linear_combination r19), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg4
    refine ⟨rho 20373, rho 20374, rho 20375, rho 20376, rho 20377,
      (by unfold Seg29.relationRow20 at r20; linear_combination r20), (by unfold Seg29.relationRow21 at r21; linear_combination r21), (by unfold Seg29.relationRow22 at r22; linear_combination r22), (by unfold Seg29.relationRow23 at r23; linear_combination r23), (by unfold Seg29.relationRow24 at r24; linear_combination r24), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg5
    refine ⟨rho 20378, rho 20379, rho 20380, rho 20381, rho 20382,
      (by unfold Seg29.relationRow25 at r25; linear_combination r25), (by unfold Seg29.relationRow26 at r26; linear_combination r26), (by unfold Seg29.relationRow27 at r27; linear_combination r27), (by unfold Seg29.relationRow28 at r28; linear_combination r28), (by unfold Seg29.relationRow29 at r29; linear_combination r29), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg6
    refine ⟨rho 20383, rho 20384, rho 20385, rho 20386, rho 20387,
      (by unfold Seg29.relationRow30 at r30; linear_combination r30), (by unfold Seg29.relationRow31 at r31; linear_combination r31), (by unfold Seg29.relationRow32 at r32; linear_combination r32), (by unfold Seg29.relationRow33 at r33; linear_combination r33), (by unfold Seg29.relationRow34 at r34; linear_combination r34), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg7
    refine ⟨rho 20388, rho 20389, rho 20390, rho 20391, rho 20392,
      (by unfold Seg29.relationRow35 at r35; linear_combination r35), (by unfold Seg29.relationRow36 at r36; linear_combination r36), (by unfold Seg29.relationRow37 at r37; linear_combination r37), (by unfold Seg29.relationRow38 at r38; linear_combination r38), (by unfold Seg29.relationRow39 at r39; linear_combination r39), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg8
    refine ⟨rho 20393, rho 20394, rho 20395, rho 20396, rho 20397,
      (by unfold Seg29.relationRow40 at r40; linear_combination r40), (by unfold Seg29.relationRow41 at r41; linear_combination r41), (by unfold Seg29.relationRow42 at r42; linear_combination r42), (by unfold Seg29.relationRow43 at r43; linear_combination r43), (by unfold Seg29.relationRow44 at r44; linear_combination r44), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg9
    refine ⟨rho 20398, rho 20399, rho 20400, rho 20401, rho 20402,
      (by unfold Seg29.relationRow45 at r45; linear_combination r45), (by unfold Seg29.relationRow46 at r46; linear_combination r46), (by unfold Seg29.relationRow47 at r47; linear_combination r47), (by unfold Seg29.relationRow48 at r48; linear_combination r48), (by unfold Seg29.relationRow49 at r49; linear_combination r49), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg10
    refine ⟨rho 20403, rho 20404, rho 20405, rho 20406, rho 20407,
      (by unfold Seg29.relationRow50 at r50; linear_combination r50), (by unfold Seg29.relationRow51 at r51; linear_combination r51), (by unfold Seg29.relationRow52 at r52; linear_combination r52), (by unfold Seg29.relationRow53 at r53; linear_combination r53), (by unfold Seg29.relationRow54 at r54; linear_combination r54), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg11
    refine ⟨rho 20408, rho 20409, rho 20410, rho 20411, rho 20412,
      (by unfold Seg29.relationRow55 at r55; linear_combination r55), (by unfold Seg29.relationRow56 at r56; linear_combination r56), (by unfold Seg29.relationRow57 at r57; linear_combination r57), (by unfold Seg29.relationRow58 at r58; linear_combination r58), (by unfold Seg29.relationRow59 at r59; linear_combination r59), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg12
    refine ⟨rho 20413, rho 20414, rho 20415, rho 20416, rho 20417,
      (by unfold Seg29.relationRow60 at r60; linear_combination r60), (by unfold Seg29.relationRow61 at r61; linear_combination r61), (by unfold Seg29.relationRow62 at r62; linear_combination r62), (by unfold Seg29.relationRow63 at r63; linear_combination r63), (by unfold Seg29.relationRow64 at r64; linear_combination r64), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg13
    refine ⟨rho 20418, rho 20419, rho 20420, rho 20421, rho 20422,
      (by unfold Seg29.relationRow65 at r65; linear_combination r65), (by unfold Seg29.relationRow66 at r66; linear_combination r66), (by unfold Seg29.relationRow67 at r67; linear_combination r67), (by unfold Seg29.relationRow68 at r68; linear_combination r68), (by unfold Seg29.relationRow69 at r69; linear_combination r69), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg14
    refine ⟨rho 20423, rho 20424, rho 20425, rho 20426, rho 20427,
      (by unfold Seg29.relationRow70 at r70; linear_combination r70), (by unfold Seg29.relationRow71 at r71; linear_combination r71), (by unfold Seg29.relationRow72 at r72; linear_combination r72), (by unfold Seg29.relationRow73 at r73; linear_combination r73), (by unfold Seg29.relationRow74 at r74; linear_combination r74), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg15
    refine ⟨rho 20428, rho 20429, rho 20430, rho 20431, rho 20432,
      (by unfold Seg29.relationRow75 at r75; linear_combination r75), (by unfold Seg29.relationRow76 at r76; linear_combination r76), (by unfold Seg29.relationRow77 at r77; linear_combination r77), (by unfold Seg29.relationRow78 at r78; linear_combination r78), (by unfold Seg29.relationRow79 at r79; linear_combination r79), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg16
    refine ⟨rho 20433, rho 20434, rho 20435, rho 20436, rho 20437,
      (by unfold Seg29.relationRow80 at r80; linear_combination r80), (by unfold Seg29.relationRow81 at r81; linear_combination r81), (by unfold Seg29.relationRow82 at r82; linear_combination r82), (by unfold Seg29.relationRow83 at r83; linear_combination r83), (by unfold Seg29.relationRow84 at r84; linear_combination r84), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg17
    refine ⟨rho 20438, rho 20439, rho 20440, rho 20441, rho 20442,
      (by unfold Seg29.relationRow85 at r85; linear_combination r85), (by unfold Seg29.relationRow86 at r86; linear_combination r86), (by unfold Seg29.relationRow87 at r87; linear_combination r87), (by unfold Seg29.relationRow88 at r88; linear_combination r88), (by unfold Seg29.relationRow89 at r89; linear_combination r89), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg18
    refine ⟨rho 20443, rho 20444, rho 20445, rho 20446, rho 20447,
      (by unfold Seg29.relationRow90 at r90; linear_combination r90), (by unfold Seg29.relationRow91 at r91; linear_combination r91), (by unfold Seg29.relationRow92 at r92; linear_combination r92), (by unfold Seg29.relationRow93 at r93; linear_combination r93), (by unfold Seg29.relationRow94 at r94; linear_combination r94), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg19
    refine ⟨rho 20448, rho 20449, rho 20450, rho 20451, rho 20452,
      (by unfold Seg29.relationRow95 at r95; linear_combination r95), (by unfold Seg29.relationRow96 at r96; linear_combination r96), (by unfold Seg29.relationRow97 at r97; linear_combination r97), (by unfold Seg29.relationRow98 at r98; linear_combination r98), (by unfold Seg29.relationRow99 at r99; linear_combination r99), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg20
    refine ⟨rho 20453, rho 20454, rho 20455, rho 20456, rho 20457,
      (by unfold Seg29.relationRow100 at r100; linear_combination r100), (by unfold Seg29.relationRow101 at r101; linear_combination r101), (by unfold Seg29.relationRow102 at r102; linear_combination r102), (by unfold Seg29.relationRow103 at r103; linear_combination r103), (by unfold Seg29.relationRow104 at r104; linear_combination r104), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg21
    refine ⟨rho 20458, rho 20459, rho 20460, rho 20461, rho 20462,
      (by unfold Seg29.relationRow105 at r105; linear_combination r105), (by unfold Seg29.relationRow106 at r106; linear_combination r106), (by unfold Seg29.relationRow107 at r107; linear_combination r107), (by unfold Seg29.relationRow108 at r108; linear_combination r108), (by unfold Seg29.relationRow109 at r109; linear_combination r109), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg22
    refine ⟨rho 20463, rho 20464, rho 20465, rho 20466, rho 20467,
      (by unfold Seg29.relationRow110 at r110; linear_combination r110), (by unfold Seg29.relationRow111 at r111; linear_combination r111), (by unfold Seg29.relationRow112 at r112; linear_combination r112), (by unfold Seg29.relationRow113 at r113; linear_combination r113), (by unfold Seg29.relationRow114 at r114; linear_combination r114), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg23
    refine ⟨rho 20468, rho 20469, rho 20470, rho 20471, rho 20472,
      (by unfold Seg29.relationRow115 at r115; linear_combination r115), (by unfold Seg29.relationRow116 at r116; linear_combination r116), (by unfold Seg29.relationRow117 at r117; linear_combination r117), (by unfold Seg29.relationRow118 at r118; linear_combination r118), (by unfold Seg29.relationRow119 at r119; linear_combination r119), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg24
    refine ⟨rho 20473, rho 20474, rho 20475, rho 20476, rho 20477,
      (by unfold Seg29.relationRow120 at r120; linear_combination r120), (by unfold Seg29.relationRow121 at r121; linear_combination r121), (by unfold Seg29.relationRow122 at r122; linear_combination r122), (by unfold Seg29.relationRow123 at r123; linear_combination r123), (by unfold Seg29.relationRow124 at r124; linear_combination r124), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg25
    refine ⟨rho 20478, rho 20479, rho 20480, rho 20481, rho 20482,
      (by unfold Seg29.relationRow125 at r125; linear_combination r125), (by unfold Seg29.relationRow126 at r126; linear_combination r126), (by unfold Seg29.relationRow127 at r127; linear_combination r127), (by unfold Seg29.relationRow128 at r128; linear_combination r128), (by unfold Seg29.relationRow129 at r129; linear_combination r129), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg26
    refine ⟨rho 20483, rho 20484, rho 20485, rho 20486, rho 20487,
      (by unfold Seg29.relationRow130 at r130; linear_combination r130), (by unfold Seg29.relationRow131 at r131; linear_combination r131), (by unfold Seg29.relationRow132 at r132; linear_combination r132), (by unfold Seg29.relationRow133 at r133; linear_combination r133), (by unfold Seg29.relationRow134 at r134; linear_combination r134), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg27
    refine ⟨rho 20488, rho 20489, rho 20490, rho 20491, rho 20492,
      (by unfold Seg29.relationRow135 at r135; linear_combination r135), (by unfold Seg29.relationRow136 at r136; linear_combination r136), (by unfold Seg29.relationRow137 at r137; linear_combination r137), (by unfold Seg29.relationRow138 at r138; linear_combination r138), (by unfold Seg29.relationRow139 at r139; linear_combination r139), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg28
    refine ⟨rho 20493, rho 20494, rho 20495, rho 20496, rho 20497,
      (by unfold Seg29.relationRow140 at r140; linear_combination r140), (by unfold Seg29.relationRow141 at r141; linear_combination r141), (by unfold Seg29.relationRow142 at r142; linear_combination r142), (by unfold Seg29.relationRow143 at r143; linear_combination r143), (by unfold Seg29.relationRow144 at r144; linear_combination r144), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg29
    refine ⟨rho 20498, rho 20499, rho 20500, rho 20501, rho 20502,
      (by unfold Seg29.relationRow145 at r145; linear_combination r145), (by unfold Seg29.relationRow146 at r146; linear_combination r146), (by unfold Seg29.relationRow147 at r147; linear_combination r147), (by unfold Seg29.relationRow148 at r148; linear_combination r148), (by unfold Seg29.relationRow149 at r149; linear_combination r149), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg30
    refine ⟨rho 20503, rho 20504, rho 20505, rho 20506, rho 20507,
      (by unfold Seg29.relationRow150 at r150; linear_combination r150), (by unfold Seg29.relationRow151 at r151; linear_combination r151), (by unfold Seg29.relationRow152 at r152; linear_combination r152), (by unfold Seg29.relationRow153 at r153; linear_combination r153), (by unfold Seg29.relationRow154 at r154; linear_combination r154), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg31
    refine ⟨rho 20508, rho 20509, rho 20510, rho 20511, rho 20512,
      (by unfold Seg29.relationRow155 at r155; linear_combination r155), (by unfold Seg29.relationRow156 at r156; linear_combination r156), (by unfold Seg29.relationRow157 at r157; linear_combination r157), (by unfold Seg29.relationRow158 at r158; linear_combination r158), (by unfold Seg29.relationRow159 at r159; linear_combination r159), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg32
    refine ⟨rho 20513, rho 20514, rho 20515, rho 20516, rho 20517,
      (by unfold Seg29.relationRow160 at r160; linear_combination r160), (by unfold Seg29.relationRow161 at r161; linear_combination r161), (by unfold Seg29.relationRow162 at r162; linear_combination r162), (by unfold Seg29.relationRow163 at r163; linear_combination r163), (by unfold Seg29.relationRow164 at r164; linear_combination r164), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg33
    refine ⟨rho 20518, rho 20519, rho 20520, rho 20521, rho 20522,
      (by unfold Seg29.relationRow165 at r165; linear_combination r165), (by unfold Seg29.relationRow166 at r166; linear_combination r166), (by unfold Seg29.relationRow167 at r167; linear_combination r167), (by unfold Seg29.relationRow168 at r168; linear_combination r168), (by unfold Seg29.relationRow169 at r169; linear_combination r169), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg34
    refine ⟨rho 20523, rho 20524, rho 20525, rho 20526, rho 20527,
      (by unfold Seg29.relationRow170 at r170; linear_combination r170), (by unfold Seg29.relationRow171 at r171; linear_combination r171), (by unfold Seg29.relationRow172 at r172; linear_combination r172), (by unfold Seg29.relationRow173 at r173; linear_combination r173), (by unfold Seg29.relationRow174 at r174; linear_combination r174), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg35
    refine ⟨rho 20528, rho 20529, rho 20530, rho 20531, rho 20532,
      (by unfold Seg29.relationRow175 at r175; linear_combination r175), (by unfold Seg29.relationRow176 at r176; linear_combination r176), (by unfold Seg29.relationRow177 at r177; linear_combination r177), (by unfold Seg29.relationRow178 at r178; linear_combination r178), (by unfold Seg29.relationRow179 at r179; linear_combination r179), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg36
    refine ⟨rho 20533, rho 20534, rho 20535, rho 20536, rho 20537,
      (by unfold Seg29.relationRow180 at r180; linear_combination r180), (by unfold Seg29.relationRow181 at r181; linear_combination r181), (by unfold Seg29.relationRow182 at r182; linear_combination r182), (by unfold Seg29.relationRow183 at r183; linear_combination r183), (by unfold Seg29.relationRow184 at r184; linear_combination r184), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg37
    refine ⟨rho 20538, rho 20539, rho 20540, rho 20541, rho 20542,
      (by unfold Seg29.relationRow185 at r185; linear_combination r185), (by unfold Seg29.relationRow186 at r186; linear_combination r186), (by unfold Seg29.relationRow187 at r187; linear_combination r187), (by unfold Seg29.relationRow188 at r188; linear_combination r188), (by unfold Seg29.relationRow189 at r189; linear_combination r189), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg38
    refine ⟨rho 20543, rho 20544, rho 20545, rho 20546, rho 20547,
      (by unfold Seg29.relationRow190 at r190; linear_combination r190), (by unfold Seg29.relationRow191 at r191; linear_combination r191), (by unfold Seg29.relationRow192 at r192; linear_combination r192), (by unfold Seg29.relationRow193 at r193; linear_combination r193), (by unfold Seg29.relationRow194 at r194; linear_combination r194), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg39
    refine ⟨rho 20548, rho 20549, rho 20550, rho 20551, rho 20552,
      (by unfold Seg29.relationRow195 at r195; linear_combination r195), (by unfold Seg29.relationRow196 at r196; linear_combination r196), (by unfold Seg29.relationRow197 at r197; linear_combination r197), (by unfold Seg29.relationRow198 at r198; linear_combination r198), (by unfold Seg29.relationRow199 at r199; linear_combination r199), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg40
    refine ⟨rho 20553, rho 20554, rho 20555, rho 20556, rho 20557,
      (by unfold Seg29.relationRow200 at r200; linear_combination r200), (by unfold Seg29.relationRow201 at r201; linear_combination r201), (by unfold Seg29.relationRow202 at r202; linear_combination r202), (by unfold Seg29.relationRow203 at r203; linear_combination r203), (by unfold Seg29.relationRow204 at r204; linear_combination r204), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg41
    refine ⟨rho 20558, rho 20559, rho 20560, rho 20561, rho 20562,
      (by unfold Seg29.relationRow205 at r205; linear_combination r205), (by unfold Seg29.relationRow206 at r206; linear_combination r206), (by unfold Seg29.relationRow207 at r207; linear_combination r207), (by unfold Seg29.relationRow208 at r208; linear_combination r208), (by unfold Seg29.relationRow209 at r209; linear_combination r209), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg42
    refine ⟨rho 20563, rho 20564, rho 20565, rho 20566, rho 20567,
      (by unfold Seg29.relationRow210 at r210; linear_combination r210), (by unfold Seg29.relationRow211 at r211; linear_combination r211), (by unfold Seg29.relationRow212 at r212; linear_combination r212), (by unfold Seg29.relationRow213 at r213; linear_combination r213), (by unfold Seg29.relationRow214 at r214; linear_combination r214), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg43
    refine ⟨rho 20568, rho 20569, rho 20570, rho 20571, rho 20572,
      (by unfold Seg29.relationRow215 at r215; linear_combination r215), (by unfold Seg29.relationRow216 at r216; linear_combination r216), (by unfold Seg29.relationRow217 at r217; linear_combination r217), (by unfold Seg29.relationRow218 at r218; linear_combination r218), (by unfold Seg29.relationRow219 at r219; linear_combination r219), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg44
    refine ⟨rho 20573, rho 20574, rho 20575, rho 20576, rho 20577,
      (by unfold Seg29.relationRow220 at r220; linear_combination r220), (by unfold Seg29.relationRow221 at r221; linear_combination r221), (by unfold Seg29.relationRow222 at r222; linear_combination r222), (by unfold Seg29.relationRow223 at r223; linear_combination r223), (by unfold Seg29.relationRow224 at r224; linear_combination r224), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg45
    refine ⟨rho 20578, rho 20579, rho 20580, rho 20581, rho 20582,
      (by unfold Seg29.relationRow225 at r225; linear_combination r225), (by unfold Seg29.relationRow226 at r226; linear_combination r226), (by unfold Seg29.relationRow227 at r227; linear_combination r227), (by unfold Seg29.relationRow228 at r228; linear_combination r228), (by unfold Seg29.relationRow229 at r229; linear_combination r229), ?_⟩
    exact ⟨rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.relation_sound_permSpec (rho 113) _ hrel
  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩
  simpa [seg29ScpLeafOut, Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,
    Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf.tctLeafDomainLit, Shieldd.GnarkFormal.Deployed.StateCommitmentPath.tctLeafDomainLit] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

