import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Base
import ShielddGnarkFormal.Deployed.NetBalancePoseidon.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg48PoseidonOut (rho : Nat -> Seg48.F) : Seg48.F :=
  5629641166285580282832549959187697687583932890102709218623488970611606159361 * rho 33158 +
    6333346312071277818186618704086159898531924501365547870951425091938056929281 * rho 33163

theorem seg48_poseidon_eq (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    seg48PoseidonOut rho =
      Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (6888358618106443442961843809729175081075858965522240584763322653509542282215 : Seg48.F) (rho 16) := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart0 at p0

  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩

  unfold Seg48.relationPart1 at p1

  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩

  unfold Seg48.relationPart2 at p2

  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, _, _, _, _, _, _, _, _, _, _⟩

  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.relation (rho 16)
      (fun x y => x = rho 33158 ∧ y = rho 33163) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg0
    refine ⟨rho 32934, rho 32935, rho 32936, rho 32937, rho 32938, 
(by simpa [Seg48.relationRow0] using r0), (by simpa [Seg48.relationRow1] using r1), (by simpa [Seg48.relationRow2] using r2), (by simpa [Seg48.relationRow3] using r3), (by simpa [Seg48.relationRow4] using r4), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg1
    refine ⟨rho 32939, rho 32940, rho 32941, rho 32942, rho 32943, 
(by simpa [Seg48.relationRow5] using r5), (by simpa [Seg48.relationRow6] using r6), (by simpa [Seg48.relationRow7] using r7), (by simpa [Seg48.relationRow8] using r8), (by simpa [Seg48.relationRow9] using r9), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg2
    refine ⟨rho 32944, rho 32945, rho 32946, rho 32947, rho 32948, 
(by simpa [Seg48.relationRow10] using r10), (by simpa [Seg48.relationRow11] using r11), (by simpa [Seg48.relationRow12] using r12), (by simpa [Seg48.relationRow13] using r13), (by simpa [Seg48.relationRow14] using r14), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg3
    refine ⟨rho 32949, rho 32950, rho 32951, rho 32952, rho 32953, 
(by simpa [Seg48.relationRow15] using r15), (by simpa [Seg48.relationRow16] using r16), (by simpa [Seg48.relationRow17] using r17), (by simpa [Seg48.relationRow18] using r18), (by simpa [Seg48.relationRow19] using r19), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg4
    refine ⟨rho 32954, rho 32955, rho 32956, rho 32957, rho 32958, 
(by simpa [Seg48.relationRow20] using r20), (by simpa [Seg48.relationRow21] using r21), (by simpa [Seg48.relationRow22] using r22), (by simpa [Seg48.relationRow23] using r23), (by simpa [Seg48.relationRow24] using r24), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg5
    refine ⟨rho 32959, rho 32960, rho 32961, rho 32962, rho 32963, 
(by simpa [Seg48.relationRow25] using r25), (by simpa [Seg48.relationRow26] using r26), (by simpa [Seg48.relationRow27] using r27), (by simpa [Seg48.relationRow28] using r28), (by simpa [Seg48.relationRow29] using r29), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg6
    refine ⟨rho 32964, rho 32965, rho 32966, rho 32967, rho 32968, 
(by simpa [Seg48.relationRow30] using r30), (by simpa [Seg48.relationRow31] using r31), (by simpa [Seg48.relationRow32] using r32), (by simpa [Seg48.relationRow33] using r33), (by simpa [Seg48.relationRow34] using r34), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg7
    refine ⟨rho 32969, rho 32970, rho 32971, rho 32972, rho 32973, 
(by simpa [Seg48.relationRow35] using r35), (by simpa [Seg48.relationRow36] using r36), (by simpa [Seg48.relationRow37] using r37), (by simpa [Seg48.relationRow38] using r38), (by simpa [Seg48.relationRow39] using r39), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg8
    refine ⟨rho 32974, rho 32975, rho 32976, rho 32977, rho 32978, 
(by simpa [Seg48.relationRow40] using r40), (by simpa [Seg48.relationRow41] using r41), (by simpa [Seg48.relationRow42] using r42), (by simpa [Seg48.relationRow43] using r43), (by simpa [Seg48.relationRow44] using r44), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg9
    refine ⟨rho 32979, rho 32980, rho 32981, rho 32982, rho 32983, 
(by simpa [Seg48.relationRow45] using r45), (by simpa [Seg48.relationRow46] using r46), (by simpa [Seg48.relationRow47] using r47), (by simpa [Seg48.relationRow48] using r48), (by simpa [Seg48.relationRow49] using r49), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg10
    refine ⟨rho 32984, rho 32985, rho 32986, rho 32987, rho 32988, 
(by simpa [Seg48.relationRow50] using r50), (by simpa [Seg48.relationRow51] using r51), (by simpa [Seg48.relationRow52] using r52), (by simpa [Seg48.relationRow53] using r53), (by simpa [Seg48.relationRow54] using r54), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg11
    refine ⟨rho 32989, rho 32990, rho 32991, rho 32992, rho 32993, 
(by simpa [Seg48.relationRow55] using r55), (by simpa [Seg48.relationRow56] using r56), (by simpa [Seg48.relationRow57] using r57), (by simpa [Seg48.relationRow58] using r58), (by simpa [Seg48.relationRow59] using r59), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg12
    refine ⟨rho 32994, rho 32995, rho 32996, rho 32997, rho 32998, 
(by simpa [Seg48.relationRow60] using r60), (by simpa [Seg48.relationRow61] using r61), (by simpa [Seg48.relationRow62] using r62), (by simpa [Seg48.relationRow63] using r63), (by simpa [Seg48.relationRow64] using r64), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg13
    refine ⟨rho 32999, rho 33000, rho 33001, rho 33002, rho 33003, 
(by simpa [Seg48.relationRow65] using r65), (by simpa [Seg48.relationRow66] using r66), (by simpa [Seg48.relationRow67] using r67), (by simpa [Seg48.relationRow68] using r68), (by simpa [Seg48.relationRow69] using r69), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg14
    refine ⟨rho 33004, rho 33005, rho 33006, rho 33007, rho 33008, 
(by simpa [Seg48.relationRow70] using r70), (by simpa [Seg48.relationRow71] using r71), (by simpa [Seg48.relationRow72] using r72), (by simpa [Seg48.relationRow73] using r73), (by simpa [Seg48.relationRow74] using r74), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg15
    refine ⟨rho 33009, rho 33010, rho 33011, rho 33012, rho 33013, 
(by simpa [Seg48.relationRow75] using r75), (by simpa [Seg48.relationRow76] using r76), (by simpa [Seg48.relationRow77] using r77), (by simpa [Seg48.relationRow78] using r78), (by simpa [Seg48.relationRow79] using r79), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg16
    refine ⟨rho 33014, rho 33015, rho 33016, rho 33017, rho 33018, 
(by simpa [Seg48.relationRow80] using r80), (by simpa [Seg48.relationRow81] using r81), (by simpa [Seg48.relationRow82] using r82), (by simpa [Seg48.relationRow83] using r83), (by simpa [Seg48.relationRow84] using r84), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg17
    refine ⟨rho 33019, rho 33020, rho 33021, rho 33022, rho 33023, 
(by simpa [Seg48.relationRow85] using r85), (by simpa [Seg48.relationRow86] using r86), (by simpa [Seg48.relationRow87] using r87), (by simpa [Seg48.relationRow88] using r88), (by simpa [Seg48.relationRow89] using r89), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg18
    refine ⟨rho 33024, rho 33025, rho 33026, rho 33027, rho 33028, 
(by simpa [Seg48.relationRow90] using r90), (by simpa [Seg48.relationRow91] using r91), (by simpa [Seg48.relationRow92] using r92), (by simpa [Seg48.relationRow93] using r93), (by simpa [Seg48.relationRow94] using r94), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg19
    refine ⟨rho 33029, rho 33030, rho 33031, rho 33032, rho 33033, 
(by simpa [Seg48.relationRow95] using r95), (by simpa [Seg48.relationRow96] using r96), (by simpa [Seg48.relationRow97] using r97), (by simpa [Seg48.relationRow98] using r98), (by simpa [Seg48.relationRow99] using r99), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg20
    refine ⟨rho 33034, rho 33035, rho 33036, rho 33037, rho 33038, 
(by simpa [Seg48.relationRow100] using r100), (by simpa [Seg48.relationRow101] using r101), (by simpa [Seg48.relationRow102] using r102), (by simpa [Seg48.relationRow103] using r103), (by simpa [Seg48.relationRow104] using r104), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg21
    refine ⟨rho 33039, rho 33040, rho 33041, rho 33042, rho 33043, 
(by simpa [Seg48.relationRow105] using r105), (by simpa [Seg48.relationRow106] using r106), (by simpa [Seg48.relationRow107] using r107), (by simpa [Seg48.relationRow108] using r108), (by simpa [Seg48.relationRow109] using r109), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg22
    refine ⟨rho 33044, rho 33045, rho 33046, rho 33047, rho 33048, 
(by simpa [Seg48.relationRow110] using r110), (by simpa [Seg48.relationRow111] using r111), (by simpa [Seg48.relationRow112] using r112), (by simpa [Seg48.relationRow113] using r113), (by simpa [Seg48.relationRow114] using r114), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg23
    refine ⟨rho 33049, rho 33050, rho 33051, rho 33052, rho 33053, 
(by simpa [Seg48.relationRow115] using r115), (by simpa [Seg48.relationRow116] using r116), (by simpa [Seg48.relationRow117] using r117), (by simpa [Seg48.relationRow118] using r118), (by simpa [Seg48.relationRow119] using r119), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg24
    refine ⟨rho 33054, rho 33055, rho 33056, rho 33057, rho 33058, 
(by simpa [Seg48.relationRow120] using r120), (by simpa [Seg48.relationRow121] using r121), (by simpa [Seg48.relationRow122] using r122), (by simpa [Seg48.relationRow123] using r123), (by simpa [Seg48.relationRow124] using r124), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg25
    refine ⟨rho 33059, rho 33060, rho 33061, rho 33062, rho 33063, 
(by simpa [Seg48.relationRow125] using r125), (by simpa [Seg48.relationRow126] using r126), (by simpa [Seg48.relationRow127] using r127), (by simpa [Seg48.relationRow128] using r128), (by simpa [Seg48.relationRow129] using r129), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg26
    refine ⟨rho 33064, rho 33065, rho 33066, rho 33067, rho 33068, 
(by simpa [Seg48.relationRow130] using r130), (by simpa [Seg48.relationRow131] using r131), (by simpa [Seg48.relationRow132] using r132), (by simpa [Seg48.relationRow133] using r133), (by simpa [Seg48.relationRow134] using r134), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg27
    refine ⟨rho 33069, rho 33070, rho 33071, rho 33072, rho 33073, 
(by simpa [Seg48.relationRow135] using r135), (by simpa [Seg48.relationRow136] using r136), (by simpa [Seg48.relationRow137] using r137), (by simpa [Seg48.relationRow138] using r138), (by simpa [Seg48.relationRow139] using r139), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg28
    refine ⟨rho 33074, rho 33075, rho 33076, rho 33077, rho 33078, 
(by simpa [Seg48.relationRow140] using r140), (by simpa [Seg48.relationRow141] using r141), (by simpa [Seg48.relationRow142] using r142), (by simpa [Seg48.relationRow143] using r143), (by simpa [Seg48.relationRow144] using r144), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg29
    refine ⟨rho 33079, rho 33080, rho 33081, rho 33082, rho 33083, 
(by simpa [Seg48.relationRow145] using r145), (by simpa [Seg48.relationRow146] using r146), (by simpa [Seg48.relationRow147] using r147), (by simpa [Seg48.relationRow148] using r148), (by simpa [Seg48.relationRow149] using r149), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg30
    refine ⟨rho 33084, rho 33085, rho 33086, rho 33087, rho 33088, 
(by simpa [Seg48.relationRow150] using r150), (by simpa [Seg48.relationRow151] using r151), (by simpa [Seg48.relationRow152] using r152), (by simpa [Seg48.relationRow153] using r153), (by simpa [Seg48.relationRow154] using r154), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg31
    refine ⟨rho 33089, rho 33090, rho 33091, rho 33092, rho 33093, 
(by simpa [Seg48.relationRow155] using r155), (by simpa [Seg48.relationRow156] using r156), (by simpa [Seg48.relationRow157] using r157), (by simpa [Seg48.relationRow158] using r158), (by simpa [Seg48.relationRow159] using r159), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg32
    refine ⟨rho 33094, rho 33095, rho 33096, rho 33097, rho 33098, 
(by simpa [Seg48.relationRow160] using r160), (by simpa [Seg48.relationRow161] using r161), (by simpa [Seg48.relationRow162] using r162), (by simpa [Seg48.relationRow163] using r163), (by simpa [Seg48.relationRow164] using r164), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg33
    refine ⟨rho 33099, rho 33100, rho 33101, rho 33102, rho 33103, 
(by simpa [Seg48.relationRow165] using r165), (by simpa [Seg48.relationRow166] using r166), (by simpa [Seg48.relationRow167] using r167), (by simpa [Seg48.relationRow168] using r168), (by simpa [Seg48.relationRow169] using r169), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg34
    refine ⟨rho 33104, rho 33105, rho 33106, rho 33107, rho 33108, 
(by simpa [Seg48.relationRow170] using r170), (by simpa [Seg48.relationRow171] using r171), (by simpa [Seg48.relationRow172] using r172), (by simpa [Seg48.relationRow173] using r173), (by simpa [Seg48.relationRow174] using r174), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg35
    refine ⟨rho 33109, rho 33110, rho 33111, rho 33112, rho 33113, 
(by simpa [Seg48.relationRow175] using r175), (by simpa [Seg48.relationRow176] using r176), (by simpa [Seg48.relationRow177] using r177), (by simpa [Seg48.relationRow178] using r178), (by simpa [Seg48.relationRow179] using r179), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg36
    refine ⟨rho 33114, rho 33115, rho 33116, rho 33117, rho 33118, 
(by simpa [Seg48.relationRow180] using r180), (by simpa [Seg48.relationRow181] using r181), (by simpa [Seg48.relationRow182] using r182), (by simpa [Seg48.relationRow183] using r183), (by simpa [Seg48.relationRow184] using r184), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg37
    refine ⟨rho 33119, rho 33120, rho 33121, rho 33122, rho 33123, 
(by simpa [Seg48.relationRow185] using r185), (by simpa [Seg48.relationRow186] using r186), (by simpa [Seg48.relationRow187] using r187), (by simpa [Seg48.relationRow188] using r188), (by simpa [Seg48.relationRow189] using r189), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg38
    refine ⟨rho 33124, rho 33125, rho 33126, rho 33127, rho 33128, 
(by simpa [Seg48.relationRow190] using r190), (by simpa [Seg48.relationRow191] using r191), (by simpa [Seg48.relationRow192] using r192), (by simpa [Seg48.relationRow193] using r193), (by simpa [Seg48.relationRow194] using r194), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg39
    refine ⟨rho 33129, rho 33130, rho 33131, rho 33132, rho 33133, 
(by simpa [Seg48.relationRow195] using r195), (by simpa [Seg48.relationRow196] using r196), (by simpa [Seg48.relationRow197] using r197), (by simpa [Seg48.relationRow198] using r198), (by simpa [Seg48.relationRow199] using r199), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg40
    refine ⟨rho 33134, rho 33135, rho 33136, rho 33137, rho 33138, 
(by simpa [Seg48.relationRow200] using r200), (by simpa [Seg48.relationRow201] using r201), (by simpa [Seg48.relationRow202] using r202), (by simpa [Seg48.relationRow203] using r203), (by simpa [Seg48.relationRow204] using r204), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg41
    refine ⟨rho 33139, rho 33140, rho 33141, rho 33142, rho 33143, 
(by simpa [Seg48.relationRow205] using r205), (by simpa [Seg48.relationRow206] using r206), (by simpa [Seg48.relationRow207] using r207), (by simpa [Seg48.relationRow208] using r208), (by simpa [Seg48.relationRow209] using r209), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg42
    refine ⟨rho 33144, rho 33145, rho 33146, rho 33147, rho 33148, 
(by simpa [Seg48.relationRow210] using r210), (by simpa [Seg48.relationRow211] using r211), (by simpa [Seg48.relationRow212] using r212), (by simpa [Seg48.relationRow213] using r213), (by simpa [Seg48.relationRow214] using r214), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg43
    refine ⟨rho 33149, rho 33150, rho 33151, rho 33152, rho 33153, 
(by simpa [Seg48.relationRow215] using r215), (by simpa [Seg48.relationRow216] using r216), (by simpa [Seg48.relationRow217] using r217), (by simpa [Seg48.relationRow218] using r218), (by simpa [Seg48.relationRow219] using r219), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg44
    refine ⟨rho 33154, rho 33155, rho 33156, rho 33157, rho 33158, 
(by simpa [Seg48.relationRow220] using r220), (by simpa [Seg48.relationRow221] using r221), (by simpa [Seg48.relationRow222] using r222), (by simpa [Seg48.relationRow223] using r223), (by simpa [Seg48.relationRow224] using r224), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.seg45
    refine ⟨rho 33159, rho 33160, rho 33161, rho 33162, rho 33163, 
(by simpa [Seg48.relationRow225] using r225), (by simpa [Seg48.relationRow226] using r226), (by simpa [Seg48.relationRow227] using r227), (by simpa [Seg48.relationRow228] using r228), (by simpa [Seg48.relationRow229] using r229), ?_⟩
    exact ⟨rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.relation_sound_permSpec (rho 16) _ hrel
  rcases hs with ⟨x, y, ⟨rfl, rfl⟩, hs⟩
  simpa [seg48PoseidonOut,
    Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2,
    Shieldd.GnarkFormal.Deployed.NetBalancePoseidon.netBalanceDomainLit] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
