import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base
import ShielddGnarkFormal.Deployed.NetBalancePoseidon.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg52PoseidonOut (rho : Nat -> Seg52.F) : Seg52.F :=
  5629641166285580282832549959187697687583932890102709218623488970611606159361 * rho 44790 +
    6333346312071277818186618704086159898531924501365547870951425091938056929281 * rho 44795

theorem seg52_poseidon_eq (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    seg52PoseidonOut rho =
      Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (6888358618106443442961843809729175081075858965522240584763322653509542282215 : Seg52.F) (rho 16) := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart0 at p0

  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩

  unfold Seg52.relationPart1 at p1

  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩

  unfold Seg52.relationPart2 at p2

  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, _, _, _, _, _, _, _, _, _, _⟩

  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.relation (rho 16)
      (fun x y => x = rho 44790 ∧ y = rho 44795) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg0
    refine ⟨rho 44566, rho 44567, rho 44568, rho 44569, rho 44570, 
(by simpa [Seg52.relationRow0] using r0), (by simpa [Seg52.relationRow1] using r1), (by simpa [Seg52.relationRow2] using r2), (by simpa [Seg52.relationRow3] using r3), (by simpa [Seg52.relationRow4] using r4), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg1
    refine ⟨rho 44571, rho 44572, rho 44573, rho 44574, rho 44575, 
(by simpa [Seg52.relationRow5] using r5), (by simpa [Seg52.relationRow6] using r6), (by simpa [Seg52.relationRow7] using r7), (by simpa [Seg52.relationRow8] using r8), (by simpa [Seg52.relationRow9] using r9), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg2
    refine ⟨rho 44576, rho 44577, rho 44578, rho 44579, rho 44580, 
(by simpa [Seg52.relationRow10] using r10), (by simpa [Seg52.relationRow11] using r11), (by simpa [Seg52.relationRow12] using r12), (by simpa [Seg52.relationRow13] using r13), (by simpa [Seg52.relationRow14] using r14), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg3
    refine ⟨rho 44581, rho 44582, rho 44583, rho 44584, rho 44585, 
(by simpa [Seg52.relationRow15] using r15), (by simpa [Seg52.relationRow16] using r16), (by simpa [Seg52.relationRow17] using r17), (by simpa [Seg52.relationRow18] using r18), (by simpa [Seg52.relationRow19] using r19), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg4
    refine ⟨rho 44586, rho 44587, rho 44588, rho 44589, rho 44590, 
(by simpa [Seg52.relationRow20] using r20), (by simpa [Seg52.relationRow21] using r21), (by simpa [Seg52.relationRow22] using r22), (by simpa [Seg52.relationRow23] using r23), (by simpa [Seg52.relationRow24] using r24), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg5
    refine ⟨rho 44591, rho 44592, rho 44593, rho 44594, rho 44595, 
(by simpa [Seg52.relationRow25] using r25), (by simpa [Seg52.relationRow26] using r26), (by simpa [Seg52.relationRow27] using r27), (by simpa [Seg52.relationRow28] using r28), (by simpa [Seg52.relationRow29] using r29), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg6
    refine ⟨rho 44596, rho 44597, rho 44598, rho 44599, rho 44600, 
(by simpa [Seg52.relationRow30] using r30), (by simpa [Seg52.relationRow31] using r31), (by simpa [Seg52.relationRow32] using r32), (by simpa [Seg52.relationRow33] using r33), (by simpa [Seg52.relationRow34] using r34), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg7
    refine ⟨rho 44601, rho 44602, rho 44603, rho 44604, rho 44605, 
(by simpa [Seg52.relationRow35] using r35), (by simpa [Seg52.relationRow36] using r36), (by simpa [Seg52.relationRow37] using r37), (by simpa [Seg52.relationRow38] using r38), (by simpa [Seg52.relationRow39] using r39), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg8
    refine ⟨rho 44606, rho 44607, rho 44608, rho 44609, rho 44610, 
(by simpa [Seg52.relationRow40] using r40), (by simpa [Seg52.relationRow41] using r41), (by simpa [Seg52.relationRow42] using r42), (by simpa [Seg52.relationRow43] using r43), (by simpa [Seg52.relationRow44] using r44), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg9
    refine ⟨rho 44611, rho 44612, rho 44613, rho 44614, rho 44615, 
(by simpa [Seg52.relationRow45] using r45), (by simpa [Seg52.relationRow46] using r46), (by simpa [Seg52.relationRow47] using r47), (by simpa [Seg52.relationRow48] using r48), (by simpa [Seg52.relationRow49] using r49), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg10
    refine ⟨rho 44616, rho 44617, rho 44618, rho 44619, rho 44620, 
(by simpa [Seg52.relationRow50] using r50), (by simpa [Seg52.relationRow51] using r51), (by simpa [Seg52.relationRow52] using r52), (by simpa [Seg52.relationRow53] using r53), (by simpa [Seg52.relationRow54] using r54), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg11
    refine ⟨rho 44621, rho 44622, rho 44623, rho 44624, rho 44625, 
(by simpa [Seg52.relationRow55] using r55), (by simpa [Seg52.relationRow56] using r56), (by simpa [Seg52.relationRow57] using r57), (by simpa [Seg52.relationRow58] using r58), (by simpa [Seg52.relationRow59] using r59), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg12
    refine ⟨rho 44626, rho 44627, rho 44628, rho 44629, rho 44630, 
(by simpa [Seg52.relationRow60] using r60), (by simpa [Seg52.relationRow61] using r61), (by simpa [Seg52.relationRow62] using r62), (by simpa [Seg52.relationRow63] using r63), (by simpa [Seg52.relationRow64] using r64), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg13
    refine ⟨rho 44631, rho 44632, rho 44633, rho 44634, rho 44635, 
(by simpa [Seg52.relationRow65] using r65), (by simpa [Seg52.relationRow66] using r66), (by simpa [Seg52.relationRow67] using r67), (by simpa [Seg52.relationRow68] using r68), (by simpa [Seg52.relationRow69] using r69), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg14
    refine ⟨rho 44636, rho 44637, rho 44638, rho 44639, rho 44640, 
(by simpa [Seg52.relationRow70] using r70), (by simpa [Seg52.relationRow71] using r71), (by simpa [Seg52.relationRow72] using r72), (by simpa [Seg52.relationRow73] using r73), (by simpa [Seg52.relationRow74] using r74), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg15
    refine ⟨rho 44641, rho 44642, rho 44643, rho 44644, rho 44645, 
(by simpa [Seg52.relationRow75] using r75), (by simpa [Seg52.relationRow76] using r76), (by simpa [Seg52.relationRow77] using r77), (by simpa [Seg52.relationRow78] using r78), (by simpa [Seg52.relationRow79] using r79), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg16
    refine ⟨rho 44646, rho 44647, rho 44648, rho 44649, rho 44650, 
(by simpa [Seg52.relationRow80] using r80), (by simpa [Seg52.relationRow81] using r81), (by simpa [Seg52.relationRow82] using r82), (by simpa [Seg52.relationRow83] using r83), (by simpa [Seg52.relationRow84] using r84), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg17
    refine ⟨rho 44651, rho 44652, rho 44653, rho 44654, rho 44655, 
(by simpa [Seg52.relationRow85] using r85), (by simpa [Seg52.relationRow86] using r86), (by simpa [Seg52.relationRow87] using r87), (by simpa [Seg52.relationRow88] using r88), (by simpa [Seg52.relationRow89] using r89), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg18
    refine ⟨rho 44656, rho 44657, rho 44658, rho 44659, rho 44660, 
(by simpa [Seg52.relationRow90] using r90), (by simpa [Seg52.relationRow91] using r91), (by simpa [Seg52.relationRow92] using r92), (by simpa [Seg52.relationRow93] using r93), (by simpa [Seg52.relationRow94] using r94), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg19
    refine ⟨rho 44661, rho 44662, rho 44663, rho 44664, rho 44665, 
(by simpa [Seg52.relationRow95] using r95), (by simpa [Seg52.relationRow96] using r96), (by simpa [Seg52.relationRow97] using r97), (by simpa [Seg52.relationRow98] using r98), (by simpa [Seg52.relationRow99] using r99), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg20
    refine ⟨rho 44666, rho 44667, rho 44668, rho 44669, rho 44670, 
(by simpa [Seg52.relationRow100] using r100), (by simpa [Seg52.relationRow101] using r101), (by simpa [Seg52.relationRow102] using r102), (by simpa [Seg52.relationRow103] using r103), (by simpa [Seg52.relationRow104] using r104), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg21
    refine ⟨rho 44671, rho 44672, rho 44673, rho 44674, rho 44675, 
(by simpa [Seg52.relationRow105] using r105), (by simpa [Seg52.relationRow106] using r106), (by simpa [Seg52.relationRow107] using r107), (by simpa [Seg52.relationRow108] using r108), (by simpa [Seg52.relationRow109] using r109), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg22
    refine ⟨rho 44676, rho 44677, rho 44678, rho 44679, rho 44680, 
(by simpa [Seg52.relationRow110] using r110), (by simpa [Seg52.relationRow111] using r111), (by simpa [Seg52.relationRow112] using r112), (by simpa [Seg52.relationRow113] using r113), (by simpa [Seg52.relationRow114] using r114), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg23
    refine ⟨rho 44681, rho 44682, rho 44683, rho 44684, rho 44685, 
(by simpa [Seg52.relationRow115] using r115), (by simpa [Seg52.relationRow116] using r116), (by simpa [Seg52.relationRow117] using r117), (by simpa [Seg52.relationRow118] using r118), (by simpa [Seg52.relationRow119] using r119), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg24
    refine ⟨rho 44686, rho 44687, rho 44688, rho 44689, rho 44690, 
(by simpa [Seg52.relationRow120] using r120), (by simpa [Seg52.relationRow121] using r121), (by simpa [Seg52.relationRow122] using r122), (by simpa [Seg52.relationRow123] using r123), (by simpa [Seg52.relationRow124] using r124), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg25
    refine ⟨rho 44691, rho 44692, rho 44693, rho 44694, rho 44695, 
(by simpa [Seg52.relationRow125] using r125), (by simpa [Seg52.relationRow126] using r126), (by simpa [Seg52.relationRow127] using r127), (by simpa [Seg52.relationRow128] using r128), (by simpa [Seg52.relationRow129] using r129), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg26
    refine ⟨rho 44696, rho 44697, rho 44698, rho 44699, rho 44700, 
(by simpa [Seg52.relationRow130] using r130), (by simpa [Seg52.relationRow131] using r131), (by simpa [Seg52.relationRow132] using r132), (by simpa [Seg52.relationRow133] using r133), (by simpa [Seg52.relationRow134] using r134), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg27
    refine ⟨rho 44701, rho 44702, rho 44703, rho 44704, rho 44705, 
(by simpa [Seg52.relationRow135] using r135), (by simpa [Seg52.relationRow136] using r136), (by simpa [Seg52.relationRow137] using r137), (by simpa [Seg52.relationRow138] using r138), (by simpa [Seg52.relationRow139] using r139), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg28
    refine ⟨rho 44706, rho 44707, rho 44708, rho 44709, rho 44710, 
(by simpa [Seg52.relationRow140] using r140), (by simpa [Seg52.relationRow141] using r141), (by simpa [Seg52.relationRow142] using r142), (by simpa [Seg52.relationRow143] using r143), (by simpa [Seg52.relationRow144] using r144), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg29
    refine ⟨rho 44711, rho 44712, rho 44713, rho 44714, rho 44715, 
(by simpa [Seg52.relationRow145] using r145), (by simpa [Seg52.relationRow146] using r146), (by simpa [Seg52.relationRow147] using r147), (by simpa [Seg52.relationRow148] using r148), (by simpa [Seg52.relationRow149] using r149), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg30
    refine ⟨rho 44716, rho 44717, rho 44718, rho 44719, rho 44720, 
(by simpa [Seg52.relationRow150] using r150), (by simpa [Seg52.relationRow151] using r151), (by simpa [Seg52.relationRow152] using r152), (by simpa [Seg52.relationRow153] using r153), (by simpa [Seg52.relationRow154] using r154), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg31
    refine ⟨rho 44721, rho 44722, rho 44723, rho 44724, rho 44725, 
(by simpa [Seg52.relationRow155] using r155), (by simpa [Seg52.relationRow156] using r156), (by simpa [Seg52.relationRow157] using r157), (by simpa [Seg52.relationRow158] using r158), (by simpa [Seg52.relationRow159] using r159), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg32
    refine ⟨rho 44726, rho 44727, rho 44728, rho 44729, rho 44730, 
(by simpa [Seg52.relationRow160] using r160), (by simpa [Seg52.relationRow161] using r161), (by simpa [Seg52.relationRow162] using r162), (by simpa [Seg52.relationRow163] using r163), (by simpa [Seg52.relationRow164] using r164), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg33
    refine ⟨rho 44731, rho 44732, rho 44733, rho 44734, rho 44735, 
(by simpa [Seg52.relationRow165] using r165), (by simpa [Seg52.relationRow166] using r166), (by simpa [Seg52.relationRow167] using r167), (by simpa [Seg52.relationRow168] using r168), (by simpa [Seg52.relationRow169] using r169), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg34
    refine ⟨rho 44736, rho 44737, rho 44738, rho 44739, rho 44740, 
(by simpa [Seg52.relationRow170] using r170), (by simpa [Seg52.relationRow171] using r171), (by simpa [Seg52.relationRow172] using r172), (by simpa [Seg52.relationRow173] using r173), (by simpa [Seg52.relationRow174] using r174), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg35
    refine ⟨rho 44741, rho 44742, rho 44743, rho 44744, rho 44745, 
(by simpa [Seg52.relationRow175] using r175), (by simpa [Seg52.relationRow176] using r176), (by simpa [Seg52.relationRow177] using r177), (by simpa [Seg52.relationRow178] using r178), (by simpa [Seg52.relationRow179] using r179), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg36
    refine ⟨rho 44746, rho 44747, rho 44748, rho 44749, rho 44750, 
(by simpa [Seg52.relationRow180] using r180), (by simpa [Seg52.relationRow181] using r181), (by simpa [Seg52.relationRow182] using r182), (by simpa [Seg52.relationRow183] using r183), (by simpa [Seg52.relationRow184] using r184), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg37
    refine ⟨rho 44751, rho 44752, rho 44753, rho 44754, rho 44755, 
(by simpa [Seg52.relationRow185] using r185), (by simpa [Seg52.relationRow186] using r186), (by simpa [Seg52.relationRow187] using r187), (by simpa [Seg52.relationRow188] using r188), (by simpa [Seg52.relationRow189] using r189), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg38
    refine ⟨rho 44756, rho 44757, rho 44758, rho 44759, rho 44760, 
(by simpa [Seg52.relationRow190] using r190), (by simpa [Seg52.relationRow191] using r191), (by simpa [Seg52.relationRow192] using r192), (by simpa [Seg52.relationRow193] using r193), (by simpa [Seg52.relationRow194] using r194), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg39
    refine ⟨rho 44761, rho 44762, rho 44763, rho 44764, rho 44765, 
(by simpa [Seg52.relationRow195] using r195), (by simpa [Seg52.relationRow196] using r196), (by simpa [Seg52.relationRow197] using r197), (by simpa [Seg52.relationRow198] using r198), (by simpa [Seg52.relationRow199] using r199), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg40
    refine ⟨rho 44766, rho 44767, rho 44768, rho 44769, rho 44770, 
(by simpa [Seg52.relationRow200] using r200), (by simpa [Seg52.relationRow201] using r201), (by simpa [Seg52.relationRow202] using r202), (by simpa [Seg52.relationRow203] using r203), (by simpa [Seg52.relationRow204] using r204), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg41
    refine ⟨rho 44771, rho 44772, rho 44773, rho 44774, rho 44775, 
(by simpa [Seg52.relationRow205] using r205), (by simpa [Seg52.relationRow206] using r206), (by simpa [Seg52.relationRow207] using r207), (by simpa [Seg52.relationRow208] using r208), (by simpa [Seg52.relationRow209] using r209), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg42
    refine ⟨rho 44776, rho 44777, rho 44778, rho 44779, rho 44780, 
(by simpa [Seg52.relationRow210] using r210), (by simpa [Seg52.relationRow211] using r211), (by simpa [Seg52.relationRow212] using r212), (by simpa [Seg52.relationRow213] using r213), (by simpa [Seg52.relationRow214] using r214), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg43
    refine ⟨rho 44781, rho 44782, rho 44783, rho 44784, rho 44785, 
(by simpa [Seg52.relationRow215] using r215), (by simpa [Seg52.relationRow216] using r216), (by simpa [Seg52.relationRow217] using r217), (by simpa [Seg52.relationRow218] using r218), (by simpa [Seg52.relationRow219] using r219), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg44
    refine ⟨rho 44786, rho 44787, rho 44788, rho 44789, rho 44790, 
(by simpa [Seg52.relationRow220] using r220), (by simpa [Seg52.relationRow221] using r221), (by simpa [Seg52.relationRow222] using r222), (by simpa [Seg52.relationRow223] using r223), (by simpa [Seg52.relationRow224] using r224), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.seg45
    refine ⟨rho 44791, rho 44792, rho 44793, rho 44794, rho 44795, 
(by simpa [Seg52.relationRow225] using r225), (by simpa [Seg52.relationRow226] using r226), (by simpa [Seg52.relationRow227] using r227), (by simpa [Seg52.relationRow228] using r228), (by simpa [Seg52.relationRow229] using r229), ?_⟩
    exact ⟨rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.relation_sound_permSpec (rho 16) _ hrel
  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩
  simpa [seg52PoseidonOut,
    Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,
    Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.netBalanceDomainLit] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
