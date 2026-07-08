import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg33
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.DecafCompressToField

instance seg33FactPrime : Fact (Nat.Prime Seg33.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg33Rho (rho : Nat → Seg33.F) : Nat → Seg33.F
| 0 => 1
| 17 => rho 102
| 18 => rho 103
| i => if 210 ≤ i ∧ i ≤ 912 then rho (i + 30874) else rho i

theorem seg33_hrec1 (rho : Nat → Seg33.F)
    (h : Seg33.relationRow281 rho) :
    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => seg33Rho rho (231 + i.val))) = seg33Rho rho 230 := by
  have hrec := recover_ofFn_eq_recBits (seg33Rho rho) 231 253
  have hacc : powSumAcc (seg33Rho rho) 0 1 231 253 = seg33Rho rho 230 := by
    unfold Seg33.relationRow281 at h
    simpa [powSumAcc, seg33Rho] using h
  rw [hrec]
  rw [powSumAcc_eq] at hacc
  simpa [seg33Rho] using hacc

theorem seg33_hrec2 (rho : Nat → Seg33.F)
    (h : Seg33.relationRow791 rho) :
    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => seg33Rho rho (573 + i.val))) = seg33Rho rho 572 := by
  have hrec := recover_ofFn_eq_recBits (seg33Rho rho) 573 253
  have hacc : powSumAcc (seg33Rho rho) 0 1 573 253 = seg33Rho rho 572 := by
    unfold Seg33.relationRow791 at h
    simpa [powSumAcc, seg33Rho] using h
  rw [hrec]
  rw [powSumAcc_eq] at hacc
  simpa [seg33Rho] using hacc

theorem seg33_sound (rho : Nat → Seg33.F) (h : Seg33.relation rho) : Seg33.spec rho := by
  unfold Seg33.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61, p62, p63,
    p64, p65, p66, p67, p68, p69, p70, p71,
    p72, p73, p74, p75, p76, p77, p78, p79,
    p80, p81, p82, p83, p84, p85, p86, p87,
    p88, p89, p90, p91, p92, p93, p94, p95,
    p96, p97, p98, p99, p100, p101, p102, p103,
    p104, p105, p106, p107, p108, p109, p110, p111,
    p112, p113, p114, p115, p116, p117, p118, p119,
    p120, p121, p122, p123, p124, p125, p126, p127,
    p128, p129, p130, p131, p132, p133, p134, p135,
    p136, p137, p138, p139, p140, p141, p142, p143,
    p144, p145, p146, p147, p148, p149, p150, p151,
    p152, p153, p154, p155, p156, p157, p158, p159,
    p160, p161, p162, p163, p164, p165, p166, p167,
    p168, p169, p170, p171, p172, p173, p174, p175,
    p176, p177, p178, p179, p180, p181, p182, p183,
    p184, p185, p186, p187, p188, p189, p190, p191,
    p192, p193, p194, p195, p196, p197, p198, p199,
    p200, p201, p202, p203, p204, p205, p206, p207,
    p208, p209
  ⟩
  unfold Seg33.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4⟩
  unfold Seg33.relationPart1 at p1
  rcases p1 with ⟨r5, r6, r7, r8, r9⟩
  unfold Seg33.relationPart2 at p2
  rcases p2 with ⟨r10, r11, r12, r13, r14⟩
  unfold Seg33.relationPart3 at p3
  rcases p3 with ⟨r15, r16, r17, r18, r19⟩
  unfold Seg33.relationPart4 at p4
  rcases p4 with ⟨r20, r21, r22, r23, r24⟩
  unfold Seg33.relationPart5 at p5
  rcases p5 with ⟨r25, r26, r27, r28, r29⟩
  unfold Seg33.relationPart6 at p6
  rcases p6 with ⟨r30, r31, r32, r33, r34⟩
  unfold Seg33.relationPart7 at p7
  rcases p7 with ⟨r35, r36, r37, r38, r39⟩
  unfold Seg33.relationPart8 at p8
  rcases p8 with ⟨r40, r41, r42, r43, r44⟩
  unfold Seg33.relationPart9 at p9
  rcases p9 with ⟨r45, r46, r47, r48, r49⟩
  unfold Seg33.relationPart10 at p10
  rcases p10 with ⟨r50, r51, r52, r53, r54⟩
  unfold Seg33.relationPart11 at p11
  rcases p11 with ⟨r55, r56, r57, r58, r59⟩
  unfold Seg33.relationPart12 at p12
  rcases p12 with ⟨r60, r61, r62, r63, r64⟩
  unfold Seg33.relationPart13 at p13
  rcases p13 with ⟨r65, r66, r67, r68, r69⟩
  unfold Seg33.relationPart14 at p14
  rcases p14 with ⟨r70, r71, r72, r73, r74⟩
  unfold Seg33.relationPart15 at p15
  rcases p15 with ⟨r75, r76, r77, r78, r79⟩
  unfold Seg33.relationPart16 at p16
  rcases p16 with ⟨r80, r81, r82, r83, r84⟩
  unfold Seg33.relationPart17 at p17
  rcases p17 with ⟨r85, r86, r87, r88, r89⟩
  unfold Seg33.relationPart18 at p18
  rcases p18 with ⟨r90, r91, r92, r93, r94⟩
  unfold Seg33.relationPart19 at p19
  rcases p19 with ⟨r95, r96, r97, r98, r99⟩
  unfold Seg33.relationPart20 at p20
  rcases p20 with ⟨r100, r101, r102, r103, r104⟩
  unfold Seg33.relationPart21 at p21
  rcases p21 with ⟨r105, r106, r107, r108, r109⟩
  unfold Seg33.relationPart22 at p22
  rcases p22 with ⟨r110, r111, r112, r113, r114⟩
  unfold Seg33.relationPart23 at p23
  rcases p23 with ⟨r115, r116, r117, r118, r119⟩
  unfold Seg33.relationPart24 at p24
  rcases p24 with ⟨r120, r121, r122, r123, r124⟩
  unfold Seg33.relationPart25 at p25
  rcases p25 with ⟨r125, r126, r127, r128, r129⟩
  unfold Seg33.relationPart26 at p26
  rcases p26 with ⟨r130, r131, r132, r133, r134⟩
  unfold Seg33.relationPart27 at p27
  rcases p27 with ⟨r135, r136, r137, r138, r139⟩
  unfold Seg33.relationPart28 at p28
  rcases p28 with ⟨r140, r141, r142, r143, r144⟩
  unfold Seg33.relationPart29 at p29
  rcases p29 with ⟨r145, r146, r147, r148, r149⟩
  unfold Seg33.relationPart30 at p30
  rcases p30 with ⟨r150, r151, r152, r153, r154⟩
  unfold Seg33.relationPart31 at p31
  rcases p31 with ⟨r155, r156, r157, r158, r159⟩
  unfold Seg33.relationPart32 at p32
  rcases p32 with ⟨r160, r161, r162, r163, r164⟩
  unfold Seg33.relationPart33 at p33
  rcases p33 with ⟨r165, r166, r167, r168, r169⟩
  unfold Seg33.relationPart34 at p34
  rcases p34 with ⟨r170, r171, r172, r173, r174⟩
  unfold Seg33.relationPart35 at p35
  rcases p35 with ⟨r175, r176, r177, r178, r179⟩
  unfold Seg33.relationPart36 at p36
  rcases p36 with ⟨r180, r181, r182, r183, r184⟩
  unfold Seg33.relationPart37 at p37
  rcases p37 with ⟨r185, r186, r187, r188, r189⟩
  unfold Seg33.relationPart38 at p38
  rcases p38 with ⟨r190, r191, r192, r193, r194⟩
  unfold Seg33.relationPart39 at p39
  rcases p39 with ⟨r195, r196, r197, r198, r199⟩
  unfold Seg33.relationPart40 at p40
  rcases p40 with ⟨r200, r201, r202, r203, r204⟩
  unfold Seg33.relationPart41 at p41
  rcases p41 with ⟨r205, r206, r207, r208, r209⟩
  unfold Seg33.relationPart42 at p42
  rcases p42 with ⟨r210, r211, r212, r213, r214⟩
  unfold Seg33.relationPart43 at p43
  rcases p43 with ⟨r215, r216, r217, r218, r219⟩
  unfold Seg33.relationPart44 at p44
  rcases p44 with ⟨r220, r221, r222, r223, r224⟩
  unfold Seg33.relationPart45 at p45
  rcases p45 with ⟨r225, r226, r227, r228, r229⟩
  unfold Seg33.relationPart46 at p46
  rcases p46 with ⟨r230, r231, r232, r233, r234⟩
  unfold Seg33.relationPart47 at p47
  rcases p47 with ⟨r235, r236, r237, r238, r239⟩
  unfold Seg33.relationPart48 at p48
  rcases p48 with ⟨r240, r241, r242, r243, r244⟩
  unfold Seg33.relationPart49 at p49
  rcases p49 with ⟨r245, r246, r247, r248, r249⟩
  unfold Seg33.relationPart50 at p50
  rcases p50 with ⟨r250, r251, r252, r253, r254⟩
  unfold Seg33.relationPart51 at p51
  rcases p51 with ⟨r255, r256, r257, r258, r259⟩
  unfold Seg33.relationPart52 at p52
  rcases p52 with ⟨r260, r261, r262, r263, r264⟩
  unfold Seg33.relationPart53 at p53
  rcases p53 with ⟨r265, r266, r267, r268, r269⟩
  unfold Seg33.relationPart54 at p54
  rcases p54 with ⟨r270, r271, r272, r273, r274⟩
  unfold Seg33.relationPart55 at p55
  rcases p55 with ⟨r275, r276, r277, r278, r279⟩
  unfold Seg33.relationPart56 at p56
  rcases p56 with ⟨r280, r281, r282, r283, r284⟩
  unfold Seg33.relationPart57 at p57
  rcases p57 with ⟨r285, r286, r287, r288, r289⟩
  unfold Seg33.relationPart58 at p58
  rcases p58 with ⟨r290, r291, r292, r293, r294⟩
  unfold Seg33.relationPart59 at p59
  rcases p59 with ⟨r295, r296, r297, r298, r299⟩
  unfold Seg33.relationPart60 at p60
  rcases p60 with ⟨r300, r301, r302, r303, r304⟩
  unfold Seg33.relationPart61 at p61
  rcases p61 with ⟨r305, r306, r307, r308, r309⟩
  unfold Seg33.relationPart62 at p62
  rcases p62 with ⟨r310, r311, r312, r313, r314⟩
  unfold Seg33.relationPart63 at p63
  rcases p63 with ⟨r315, r316, r317, r318, r319⟩
  unfold Seg33.relationPart64 at p64
  rcases p64 with ⟨r320, r321, r322, r323, r324⟩
  unfold Seg33.relationPart65 at p65
  rcases p65 with ⟨r325, r326, r327, r328, r329⟩
  unfold Seg33.relationPart66 at p66
  rcases p66 with ⟨r330, r331, r332, r333, r334⟩
  unfold Seg33.relationPart67 at p67
  rcases p67 with ⟨r335, r336, r337, r338, r339⟩
  unfold Seg33.relationPart68 at p68
  rcases p68 with ⟨r340, r341, r342, r343, r344⟩
  unfold Seg33.relationPart69 at p69
  rcases p69 with ⟨r345, r346, r347, r348, r349⟩
  unfold Seg33.relationPart70 at p70
  rcases p70 with ⟨r350, r351, r352, r353, r354⟩
  unfold Seg33.relationPart71 at p71
  rcases p71 with ⟨r355, r356, r357, r358, r359⟩
  unfold Seg33.relationPart72 at p72
  rcases p72 with ⟨r360, r361, r362, r363, r364⟩
  unfold Seg33.relationPart73 at p73
  rcases p73 with ⟨r365, r366, r367, r368, r369⟩
  unfold Seg33.relationPart74 at p74
  rcases p74 with ⟨r370, r371, r372, r373, r374⟩
  unfold Seg33.relationPart75 at p75
  rcases p75 with ⟨r375, r376, r377, r378, r379⟩
  unfold Seg33.relationPart76 at p76
  rcases p76 with ⟨r380, r381, r382, r383, r384⟩
  unfold Seg33.relationPart77 at p77
  rcases p77 with ⟨r385, r386, r387, r388, r389⟩
  unfold Seg33.relationPart78 at p78
  rcases p78 with ⟨r390, r391, r392, r393, r394⟩
  unfold Seg33.relationPart79 at p79
  rcases p79 with ⟨r395, r396, r397, r398, r399⟩
  unfold Seg33.relationPart80 at p80
  rcases p80 with ⟨r400, r401, r402, r403, r404⟩
  unfold Seg33.relationPart81 at p81
  rcases p81 with ⟨r405, r406, r407, r408, r409⟩
  unfold Seg33.relationPart82 at p82
  rcases p82 with ⟨r410, r411, r412, r413, r414⟩
  unfold Seg33.relationPart83 at p83
  rcases p83 with ⟨r415, r416, r417, r418, r419⟩
  unfold Seg33.relationPart84 at p84
  rcases p84 with ⟨r420, r421, r422, r423, r424⟩
  unfold Seg33.relationPart85 at p85
  rcases p85 with ⟨r425, r426, r427, r428, r429⟩
  unfold Seg33.relationPart86 at p86
  rcases p86 with ⟨r430, r431, r432, r433, r434⟩
  unfold Seg33.relationPart87 at p87
  rcases p87 with ⟨r435, r436, r437, r438, r439⟩
  unfold Seg33.relationPart88 at p88
  rcases p88 with ⟨r440, r441, r442, r443, r444⟩
  unfold Seg33.relationPart89 at p89
  rcases p89 with ⟨r445, r446, r447, r448, r449⟩
  unfold Seg33.relationPart90 at p90
  rcases p90 with ⟨r450, r451, r452, r453, r454⟩
  unfold Seg33.relationPart91 at p91
  rcases p91 with ⟨r455, r456, r457, r458, r459⟩
  unfold Seg33.relationPart92 at p92
  rcases p92 with ⟨r460, r461, r462, r463, r464⟩
  unfold Seg33.relationPart93 at p93
  rcases p93 with ⟨r465, r466, r467, r468, r469⟩
  unfold Seg33.relationPart94 at p94
  rcases p94 with ⟨r470, r471, r472, r473, r474⟩
  unfold Seg33.relationPart95 at p95
  rcases p95 with ⟨r475, r476, r477, r478, r479⟩
  unfold Seg33.relationPart96 at p96
  rcases p96 with ⟨r480, r481, r482, r483, r484⟩
  unfold Seg33.relationPart97 at p97
  rcases p97 with ⟨r485, r486, r487, r488, r489⟩
  unfold Seg33.relationPart98 at p98
  rcases p98 with ⟨r490, r491, r492, r493, r494⟩
  unfold Seg33.relationPart99 at p99
  rcases p99 with ⟨r495, r496, r497, r498, r499⟩
  unfold Seg33.relationPart100 at p100
  rcases p100 with ⟨r500, r501, r502, r503, r504⟩
  unfold Seg33.relationPart101 at p101
  rcases p101 with ⟨r505, r506, r507, r508, r509⟩
  unfold Seg33.relationPart102 at p102
  rcases p102 with ⟨r510, r511, r512, r513, r514⟩
  unfold Seg33.relationPart103 at p103
  rcases p103 with ⟨r515, r516, r517, r518, r519⟩
  unfold Seg33.relationPart104 at p104
  rcases p104 with ⟨r520, r521, r522, r523, r524⟩
  unfold Seg33.relationPart105 at p105
  rcases p105 with ⟨r525, r526, r527, r528, r529⟩
  unfold Seg33.relationPart106 at p106
  rcases p106 with ⟨r530, r531, r532, r533, r534⟩
  unfold Seg33.relationPart107 at p107
  rcases p107 with ⟨r535, r536, r537, r538, r539⟩
  unfold Seg33.relationPart108 at p108
  rcases p108 with ⟨r540, r541, r542, r543, r544⟩
  unfold Seg33.relationPart109 at p109
  rcases p109 with ⟨r545, r546, r547, r548, r549⟩
  unfold Seg33.relationPart110 at p110
  rcases p110 with ⟨r550, r551, r552, r553, r554⟩
  unfold Seg33.relationPart111 at p111
  rcases p111 with ⟨r555, r556, r557, r558, r559⟩
  unfold Seg33.relationPart112 at p112
  rcases p112 with ⟨r560, r561, r562, r563, r564⟩
  unfold Seg33.relationPart113 at p113
  rcases p113 with ⟨r565, r566, r567, r568, r569⟩
  unfold Seg33.relationPart114 at p114
  rcases p114 with ⟨r570, r571, r572, r573, r574⟩
  unfold Seg33.relationPart115 at p115
  rcases p115 with ⟨r575, r576, r577, r578, r579⟩
  unfold Seg33.relationPart116 at p116
  rcases p116 with ⟨r580, r581, r582, r583, r584⟩
  unfold Seg33.relationPart117 at p117
  rcases p117 with ⟨r585, r586, r587, r588, r589⟩
  unfold Seg33.relationPart118 at p118
  rcases p118 with ⟨r590, r591, r592, r593, r594⟩
  unfold Seg33.relationPart119 at p119
  rcases p119 with ⟨r595, r596, r597, r598, r599⟩
  unfold Seg33.relationPart120 at p120
  rcases p120 with ⟨r600, r601, r602, r603, r604⟩
  unfold Seg33.relationPart121 at p121
  rcases p121 with ⟨r605, r606, r607, r608, r609⟩
  unfold Seg33.relationPart122 at p122
  rcases p122 with ⟨r610, r611, r612, r613, r614⟩
  unfold Seg33.relationPart123 at p123
  rcases p123 with ⟨r615, r616, r617, r618, r619⟩
  unfold Seg33.relationPart124 at p124
  rcases p124 with ⟨r620, r621, r622, r623, r624⟩
  unfold Seg33.relationPart125 at p125
  rcases p125 with ⟨r625, r626, r627, r628, r629⟩
  unfold Seg33.relationPart126 at p126
  rcases p126 with ⟨r630, r631, r632, r633, r634⟩
  unfold Seg33.relationPart127 at p127
  rcases p127 with ⟨r635, r636, r637, r638, r639⟩
  unfold Seg33.relationPart128 at p128
  rcases p128 with ⟨r640, r641, r642, r643, r644⟩
  unfold Seg33.relationPart129 at p129
  rcases p129 with ⟨r645, r646, r647, r648, r649⟩
  unfold Seg33.relationPart130 at p130
  rcases p130 with ⟨r650, r651, r652, r653, r654⟩
  unfold Seg33.relationPart131 at p131
  rcases p131 with ⟨r655, r656, r657, r658, r659⟩
  unfold Seg33.relationPart132 at p132
  rcases p132 with ⟨r660, r661, r662, r663, r664⟩
  unfold Seg33.relationPart133 at p133
  rcases p133 with ⟨r665, r666, r667, r668, r669⟩
  unfold Seg33.relationPart134 at p134
  rcases p134 with ⟨r670, r671, r672, r673, r674⟩
  unfold Seg33.relationPart135 at p135
  rcases p135 with ⟨r675, r676, r677, r678, r679⟩
  unfold Seg33.relationPart136 at p136
  rcases p136 with ⟨r680, r681, r682, r683, r684⟩
  unfold Seg33.relationPart137 at p137
  rcases p137 with ⟨r685, r686, r687, r688, r689⟩
  unfold Seg33.relationPart138 at p138
  rcases p138 with ⟨r690, r691, r692, r693, r694⟩
  unfold Seg33.relationPart139 at p139
  rcases p139 with ⟨r695, r696, r697, r698, r699⟩
  unfold Seg33.relationPart140 at p140
  rcases p140 with ⟨r700, r701, r702, r703, r704⟩
  unfold Seg33.relationPart141 at p141
  rcases p141 with ⟨r705, r706, r707, r708, r709⟩
  unfold Seg33.relationPart142 at p142
  rcases p142 with ⟨r710, r711, r712, r713, r714⟩
  unfold Seg33.relationPart143 at p143
  rcases p143 with ⟨r715, r716, r717, r718, r719⟩
  unfold Seg33.relationPart144 at p144
  rcases p144 with ⟨r720, r721, r722, r723, r724⟩
  unfold Seg33.relationPart145 at p145
  rcases p145 with ⟨r725, r726, r727, r728, r729⟩
  unfold Seg33.relationPart146 at p146
  rcases p146 with ⟨r730, r731, r732, r733, r734⟩
  unfold Seg33.relationPart147 at p147
  rcases p147 with ⟨r735, r736, r737, r738, r739⟩
  unfold Seg33.relationPart148 at p148
  rcases p148 with ⟨r740, r741, r742, r743, r744⟩
  unfold Seg33.relationPart149 at p149
  rcases p149 with ⟨r745, r746, r747, r748, r749⟩
  unfold Seg33.relationPart150 at p150
  rcases p150 with ⟨r750, r751, r752, r753, r754⟩
  unfold Seg33.relationPart151 at p151
  rcases p151 with ⟨r755, r756, r757, r758, r759⟩
  unfold Seg33.relationPart152 at p152
  rcases p152 with ⟨r760, r761, r762, r763, r764⟩
  unfold Seg33.relationPart153 at p153
  rcases p153 with ⟨r765, r766, r767, r768, r769⟩
  unfold Seg33.relationPart154 at p154
  rcases p154 with ⟨r770, r771, r772, r773, r774⟩
  unfold Seg33.relationPart155 at p155
  rcases p155 with ⟨r775, r776, r777, r778, r779⟩
  unfold Seg33.relationPart156 at p156
  rcases p156 with ⟨r780, r781, r782, r783, r784⟩
  unfold Seg33.relationPart157 at p157
  rcases p157 with ⟨r785, r786, r787, r788, r789⟩
  unfold Seg33.relationPart158 at p158
  rcases p158 with ⟨r790, r791, r792, r793, r794⟩
  unfold Seg33.relationPart159 at p159
  rcases p159 with ⟨r795, r796, r797, r798, r799⟩
  unfold Seg33.relationPart160 at p160
  rcases p160 with ⟨r800, r801, r802, r803, r804⟩
  unfold Seg33.relationPart161 at p161
  rcases p161 with ⟨r805, r806, r807, r808, r809⟩
  unfold Seg33.relationPart162 at p162
  rcases p162 with ⟨r810, r811, r812, r813, r814⟩
  unfold Seg33.relationPart163 at p163
  rcases p163 with ⟨r815, r816, r817, r818, r819⟩
  unfold Seg33.relationPart164 at p164
  rcases p164 with ⟨r820, r821, r822, r823, r824⟩
  unfold Seg33.relationPart165 at p165
  rcases p165 with ⟨r825, r826, r827, r828, r829⟩
  unfold Seg33.relationPart166 at p166
  rcases p166 with ⟨r830, r831, r832, r833, r834⟩
  unfold Seg33.relationPart167 at p167
  rcases p167 with ⟨r835, r836, r837, r838, r839⟩
  unfold Seg33.relationPart168 at p168
  rcases p168 with ⟨r840, r841, r842, r843, r844⟩
  unfold Seg33.relationPart169 at p169
  rcases p169 with ⟨r845, r846, r847, r848, r849⟩
  unfold Seg33.relationPart170 at p170
  rcases p170 with ⟨r850, r851, r852, r853, r854⟩
  unfold Seg33.relationPart171 at p171
  rcases p171 with ⟨r855, r856, r857, r858, r859⟩
  unfold Seg33.relationPart172 at p172
  rcases p172 with ⟨r860, r861, r862, r863, r864⟩
  unfold Seg33.relationPart173 at p173
  rcases p173 with ⟨r865, r866, r867, r868, r869⟩
  unfold Seg33.relationPart174 at p174
  rcases p174 with ⟨r870, r871, r872, r873, r874⟩
  unfold Seg33.relationPart175 at p175
  rcases p175 with ⟨r875, r876, r877, r878, r879⟩
  unfold Seg33.relationPart176 at p176
  rcases p176 with ⟨r880, r881, r882, r883, r884⟩
  unfold Seg33.relationPart177 at p177
  rcases p177 with ⟨r885, r886, r887, r888, r889⟩
  unfold Seg33.relationPart178 at p178
  rcases p178 with ⟨r890, r891, r892, r893, r894⟩
  unfold Seg33.relationPart179 at p179
  rcases p179 with ⟨r895, r896, r897, r898, r899⟩
  unfold Seg33.relationPart180 at p180
  rcases p180 with ⟨r900, r901, r902, r903, r904⟩
  unfold Seg33.relationPart181 at p181
  rcases p181 with ⟨r905, r906, r907, r908, r909⟩
  unfold Seg33.relationPart182 at p182
  rcases p182 with ⟨r910, r911, r912, r913, r914⟩
  unfold Seg33.relationPart183 at p183
  rcases p183 with ⟨r915, r916, r917, r918, r919⟩
  unfold Seg33.relationPart184 at p184
  rcases p184 with ⟨r920, r921, r922, r923, r924⟩
  unfold Seg33.relationPart185 at p185
  rcases p185 with ⟨r925, r926, r927, r928, r929⟩
  unfold Seg33.relationPart186 at p186
  rcases p186 with ⟨r930, r931, r932, r933, r934⟩
  unfold Seg33.relationPart187 at p187
  rcases p187 with ⟨r935, r936, r937, r938, r939⟩
  unfold Seg33.relationPart188 at p188
  rcases p188 with ⟨r940, r941, r942, r943, r944⟩
  unfold Seg33.relationPart189 at p189
  rcases p189 with ⟨r945, r946, r947, r948, r949⟩
  unfold Seg33.relationPart190 at p190
  rcases p190 with ⟨r950, r951, r952, r953, r954⟩
  unfold Seg33.relationPart191 at p191
  rcases p191 with ⟨r955, r956, r957, r958, r959⟩
  unfold Seg33.relationPart192 at p192
  rcases p192 with ⟨r960, r961, r962, r963, r964⟩
  unfold Seg33.relationPart193 at p193
  rcases p193 with ⟨r965, r966, r967, r968, r969⟩
  unfold Seg33.relationPart194 at p194
  rcases p194 with ⟨r970, r971, r972, r973, r974⟩
  unfold Seg33.relationPart195 at p195
  rcases p195 with ⟨r975, r976, r977, r978, r979⟩
  unfold Seg33.relationPart196 at p196
  rcases p196 with ⟨r980, r981, r982, r983, r984⟩
  unfold Seg33.relationPart197 at p197
  rcases p197 with ⟨r985, r986, r987, r988, r989⟩
  unfold Seg33.relationPart198 at p198
  rcases p198 with ⟨r990, r991, r992, r993, r994⟩
  unfold Seg33.relationPart199 at p199
  rcases p199 with ⟨r995, r996, r997, r998, r999⟩
  unfold Seg33.relationPart200 at p200
  rcases p200 with ⟨r1000, r1001, r1002, r1003, r1004⟩
  unfold Seg33.relationPart201 at p201
  rcases p201 with ⟨r1005, r1006, r1007, r1008, r1009⟩
  unfold Seg33.relationPart202 at p202
  rcases p202 with ⟨r1010, r1011, r1012, r1013, r1014⟩
  unfold Seg33.relationPart203 at p203
  rcases p203 with ⟨r1015, r1016, r1017, r1018, r1019⟩
  unfold Seg33.relationPart204 at p204
  rcases p204 with ⟨r1020, r1021, r1022, r1023, r1024⟩
  unfold Seg33.relationPart205 at p205
  rcases p205 with ⟨r1025, r1026, r1027, r1028, r1029⟩
  unfold Seg33.relationPart206 at p206
  rcases p206 with ⟨r1030, r1031, r1032, r1033, r1034⟩
  unfold Seg33.relationPart207 at p207
  rcases p207 with ⟨r1035, r1036, r1037, r1038, r1039⟩
  unfold Seg33.relationPart208 at p208
  rcases p208 with ⟨r1040, r1041, r1042, r1043, r1044⟩
  unfold Seg33.relationPart209 at p209
  have r1045 := p209
  change Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (seg33Rho rho 17) (seg33Rho rho 18) (seg33Rho rho 912 - seg33Rho rho 572)
  refine Shieldd.GnarkFormal.Extracted.DecafCompressToField.inst_compress_deployed_sound
    (seg33Rho rho)
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · unfold Seg33.relationRow0 at r0
    simpa [seg33Rho, mul_eq_zero] using r0
  · unfold Seg33.relationRow1 at r1
    simpa [seg33Rho, mul_eq_zero] using r1
  · unfold Seg33.relationRow2 at r2
    simpa [seg33Rho, mul_eq_zero] using r2
  · unfold Seg33.relationRow3 at r3
    simpa [seg33Rho, mul_eq_zero] using r3
  · unfold Seg33.relationRow4 at r4
    simpa [seg33Rho, mul_eq_zero] using r4
  · unfold Seg33.relationRow5 at r5
    simpa [seg33Rho, mul_eq_zero] using r5
  · unfold Seg33.relationRow6 at r6
    simpa [seg33Rho, mul_eq_zero] using r6
  · unfold Seg33.relationRow7 at r7
    simpa [seg33Rho, mul_eq_zero] using r7
  · unfold Seg33.relationRow8 at r8
    simpa [seg33Rho, mul_eq_zero] using r8
  · unfold Seg33.relationRow9 at r9
    simpa [seg33Rho, mul_eq_zero] using r9
  · unfold Seg33.relationRow10 at r10
    simpa [seg33Rho, mul_eq_zero] using r10
  · unfold Seg33.relationRow11 at r11
    simpa [seg33Rho, mul_eq_zero] using r11
  · unfold Seg33.relationRow12 at r12
    simpa [seg33Rho, mul_eq_zero] using r12
  · unfold Seg33.relationRow13 at r13
    simpa [seg33Rho, mul_eq_zero] using r13
  · unfold Seg33.relationRow14 at r14
    simpa [seg33Rho, mul_eq_zero] using r14
  · unfold Seg33.relationRow15 at r15
    simpa [seg33Rho, mul_eq_zero] using r15
  · unfold Seg33.relationRow16 at r16
    simpa [seg33Rho, mul_eq_zero] using r16
  · unfold Seg33.relationRow17 at r17
    simpa [seg33Rho, mul_eq_zero] using r17
  · unfold Seg33.relationRow18 at r18
    simpa [seg33Rho, mul_eq_zero] using r18
  · unfold Seg33.relationRow19 at r19
    simpa [seg33Rho, mul_eq_zero] using r19
  · unfold Seg33.relationRow20 at r20
    simpa [seg33Rho, mul_eq_zero] using r20
  · unfold Seg33.relationRow21 at r21
    simpa [seg33Rho, mul_eq_zero] using r21
  · unfold Seg33.relationRow22 at r22
    simpa [seg33Rho, mul_eq_zero] using r22
  · unfold Seg33.relationRow23 at r23
    simpa [seg33Rho, mul_eq_zero] using r23
  · unfold Seg33.relationRow24 at r24
    simpa [seg33Rho, mul_eq_zero] using r24
  · unfold Seg33.relationRow25 at r25
    simpa [seg33Rho, mul_eq_zero] using r25
  · unfold Seg33.relationRow26 at r26
    simpa [seg33Rho, mul_eq_zero] using r26
  · unfold Seg33.relationRow27 at r27
    simpa [seg33Rho, mul_eq_zero] using r27
  · unfold Seg33.relationRow28 at r28
    simpa [seg33Rho, mul_eq_zero] using r28
  · unfold Seg33.relationRow29 at r29
    simpa [seg33Rho, mul_eq_zero] using r29
  · unfold Seg33.relationRow30 at r30
    simpa [seg33Rho, mul_eq_zero] using r30
  · unfold Seg33.relationRow31 at r31
    simpa [seg33Rho, mul_eq_zero] using r31
  · unfold Seg33.relationRow32 at r32
    simpa [seg33Rho, mul_eq_zero] using r32
  · unfold Seg33.relationRow33 at r33
    simpa [seg33Rho, mul_eq_zero] using r33
  · unfold Seg33.relationRow34 at r34
    simpa [seg33Rho, mul_eq_zero] using r34
  · unfold Seg33.relationRow35 at r35
    simpa [seg33Rho, mul_eq_zero] using r35
  · unfold Seg33.relationRow36 at r36
    simpa [seg33Rho, mul_eq_zero] using r36
  · unfold Seg33.relationRow37 at r37
    simpa [seg33Rho, mul_eq_zero] using r37
  · unfold Seg33.relationRow38 at r38
    simpa [seg33Rho, mul_eq_zero] using r38
  · unfold Seg33.relationRow39 at r39
    simpa [seg33Rho, mul_eq_zero] using r39
  · unfold Seg33.relationRow40 at r40
    simpa [seg33Rho, mul_eq_zero] using r40
  · unfold Seg33.relationRow41 at r41
    simpa [seg33Rho, mul_eq_zero] using r41
  · unfold Seg33.relationRow42 at r42
    simpa [seg33Rho, mul_eq_zero] using r42
  · unfold Seg33.relationRow43 at r43
    simpa [seg33Rho, mul_eq_zero] using r43
  · unfold Seg33.relationRow44 at r44
    simpa [seg33Rho, mul_eq_zero] using r44
  · unfold Seg33.relationRow45 at r45
    simpa [seg33Rho, mul_eq_zero] using r45
  · unfold Seg33.relationRow46 at r46
    simpa [seg33Rho, mul_eq_zero] using r46
  · unfold Seg33.relationRow47 at r47
    simpa [seg33Rho, mul_eq_zero] using r47
  · unfold Seg33.relationRow48 at r48
    simpa [seg33Rho, mul_eq_zero] using r48
  · unfold Seg33.relationRow49 at r49
    simpa [seg33Rho, mul_eq_zero] using r49
  · unfold Seg33.relationRow50 at r50
    simpa [seg33Rho, mul_eq_zero] using r50
  · unfold Seg33.relationRow51 at r51
    simpa [seg33Rho, mul_eq_zero] using r51
  · unfold Seg33.relationRow52 at r52
    simpa [seg33Rho, mul_eq_zero] using r52
  · unfold Seg33.relationRow53 at r53
    simpa [seg33Rho, mul_eq_zero] using r53
  · unfold Seg33.relationRow54 at r54
    simpa [seg33Rho, mul_eq_zero] using r54
  · unfold Seg33.relationRow55 at r55
    simpa [seg33Rho, mul_eq_zero] using r55
  · unfold Seg33.relationRow56 at r56
    simpa [seg33Rho, mul_eq_zero] using r56
  · unfold Seg33.relationRow57 at r57
    simpa [seg33Rho, mul_eq_zero] using r57
  · unfold Seg33.relationRow58 at r58
    simpa [seg33Rho, mul_eq_zero] using r58
  · unfold Seg33.relationRow59 at r59
    simpa [seg33Rho, mul_eq_zero] using r59
  · unfold Seg33.relationRow60 at r60
    simpa [seg33Rho, mul_eq_zero] using r60
  · unfold Seg33.relationRow61 at r61
    simpa [seg33Rho, mul_eq_zero] using r61
  · unfold Seg33.relationRow62 at r62
    simpa [seg33Rho, mul_eq_zero] using r62
  · unfold Seg33.relationRow63 at r63
    simpa [seg33Rho, mul_eq_zero] using r63
  · unfold Seg33.relationRow64 at r64
    simpa [seg33Rho, mul_eq_zero] using r64
  · unfold Seg33.relationRow65 at r65
    simpa [seg33Rho, mul_eq_zero] using r65
  · unfold Seg33.relationRow66 at r66
    simpa [seg33Rho, mul_eq_zero] using r66
  · unfold Seg33.relationRow67 at r67
    simpa [seg33Rho, mul_eq_zero] using r67
  · unfold Seg33.relationRow68 at r68
    simpa [seg33Rho, mul_eq_zero] using r68
  · unfold Seg33.relationRow69 at r69
    simpa [seg33Rho, mul_eq_zero] using r69
  · unfold Seg33.relationRow70 at r70
    simpa [seg33Rho, mul_eq_zero] using r70
  · unfold Seg33.relationRow71 at r71
    simpa [seg33Rho, mul_eq_zero] using r71
  · unfold Seg33.relationRow72 at r72
    simpa [seg33Rho, mul_eq_zero] using r72
  · unfold Seg33.relationRow73 at r73
    simpa [seg33Rho, mul_eq_zero] using r73
  · unfold Seg33.relationRow74 at r74
    simpa [seg33Rho, mul_eq_zero] using r74
  · unfold Seg33.relationRow75 at r75
    simpa [seg33Rho, mul_eq_zero] using r75
  · unfold Seg33.relationRow76 at r76
    simpa [seg33Rho, mul_eq_zero] using r76
  · unfold Seg33.relationRow77 at r77
    simpa [seg33Rho, mul_eq_zero] using r77
  · unfold Seg33.relationRow78 at r78
    simpa [seg33Rho, mul_eq_zero] using r78
  · unfold Seg33.relationRow79 at r79
    simpa [seg33Rho, mul_eq_zero] using r79
  · unfold Seg33.relationRow80 at r80
    simpa [seg33Rho, mul_eq_zero] using r80
  · unfold Seg33.relationRow81 at r81
    simpa [seg33Rho, mul_eq_zero] using r81
  · unfold Seg33.relationRow82 at r82
    simpa [seg33Rho, mul_eq_zero] using r82
  · unfold Seg33.relationRow83 at r83
    simpa [seg33Rho, mul_eq_zero] using r83
  · unfold Seg33.relationRow84 at r84
    simpa [seg33Rho, mul_eq_zero] using r84
  · unfold Seg33.relationRow85 at r85
    simpa [seg33Rho, mul_eq_zero] using r85
  · unfold Seg33.relationRow86 at r86
    simpa [seg33Rho, mul_eq_zero] using r86
  · unfold Seg33.relationRow87 at r87
    simpa [seg33Rho, mul_eq_zero] using r87
  · unfold Seg33.relationRow88 at r88
    simpa [seg33Rho, mul_eq_zero] using r88
  · unfold Seg33.relationRow89 at r89
    simpa [seg33Rho, mul_eq_zero] using r89
  · unfold Seg33.relationRow90 at r90
    simpa [seg33Rho, mul_eq_zero] using r90
  · unfold Seg33.relationRow91 at r91
    simpa [seg33Rho, mul_eq_zero] using r91
  · unfold Seg33.relationRow92 at r92
    simpa [seg33Rho, mul_eq_zero] using r92
  · unfold Seg33.relationRow93 at r93
    simpa [seg33Rho, mul_eq_zero] using r93
  · unfold Seg33.relationRow94 at r94
    simpa [seg33Rho, mul_eq_zero] using r94
  · unfold Seg33.relationRow95 at r95
    simpa [seg33Rho, mul_eq_zero] using r95
  · unfold Seg33.relationRow96 at r96
    simpa [seg33Rho, mul_eq_zero] using r96
  · unfold Seg33.relationRow97 at r97
    simpa [seg33Rho, mul_eq_zero] using r97
  · unfold Seg33.relationRow98 at r98
    simpa [seg33Rho, mul_eq_zero] using r98
  · unfold Seg33.relationRow99 at r99
    simpa [seg33Rho, mul_eq_zero] using r99
  · unfold Seg33.relationRow100 at r100
    simpa [seg33Rho, mul_eq_zero] using r100
  · unfold Seg33.relationRow101 at r101
    simpa [seg33Rho, mul_eq_zero] using r101
  · unfold Seg33.relationRow102 at r102
    simpa [seg33Rho, mul_eq_zero] using r102
  · unfold Seg33.relationRow103 at r103
    simpa [seg33Rho, mul_eq_zero] using r103
  · unfold Seg33.relationRow104 at r104
    simpa [seg33Rho, mul_eq_zero] using r104
  · unfold Seg33.relationRow105 at r105
    simpa [seg33Rho, mul_eq_zero] using r105
  · unfold Seg33.relationRow106 at r106
    simpa [seg33Rho, mul_eq_zero] using r106
  · unfold Seg33.relationRow107 at r107
    simpa [seg33Rho, mul_eq_zero] using r107
  · unfold Seg33.relationRow108 at r108
    simpa [seg33Rho, mul_eq_zero] using r108
  · unfold Seg33.relationRow109 at r109
    simpa [seg33Rho, mul_eq_zero] using r109
  · unfold Seg33.relationRow110 at r110
    simpa [seg33Rho, mul_eq_zero] using r110
  · unfold Seg33.relationRow111 at r111
    simpa [seg33Rho, mul_eq_zero] using r111
  · unfold Seg33.relationRow112 at r112
    simpa [seg33Rho, mul_eq_zero] using r112
  · unfold Seg33.relationRow113 at r113
    simpa [seg33Rho, mul_eq_zero] using r113
  · unfold Seg33.relationRow114 at r114
    simpa [seg33Rho, mul_eq_zero] using r114
  · unfold Seg33.relationRow115 at r115
    simpa [seg33Rho, mul_eq_zero] using r115
  · unfold Seg33.relationRow116 at r116
    simpa [seg33Rho, mul_eq_zero] using r116
  · unfold Seg33.relationRow117 at r117
    simpa [seg33Rho, mul_eq_zero] using r117
  · unfold Seg33.relationRow118 at r118
    simpa [seg33Rho, mul_eq_zero] using r118
  · unfold Seg33.relationRow119 at r119
    simpa [seg33Rho, mul_eq_zero] using r119
  · unfold Seg33.relationRow120 at r120
    simpa [seg33Rho, mul_eq_zero] using r120
  · unfold Seg33.relationRow121 at r121
    simpa [seg33Rho, mul_eq_zero] using r121
  · unfold Seg33.relationRow122 at r122
    simpa [seg33Rho, mul_eq_zero] using r122
  · unfold Seg33.relationRow123 at r123
    simpa [seg33Rho, mul_eq_zero] using r123
  · unfold Seg33.relationRow124 at r124
    simpa [seg33Rho, mul_eq_zero] using r124
  · unfold Seg33.relationRow125 at r125
    simpa [seg33Rho, mul_eq_zero] using r125
  · unfold Seg33.relationRow126 at r126
    simpa [seg33Rho, mul_eq_zero] using r126
  · unfold Seg33.relationRow127 at r127
    simpa [seg33Rho, mul_eq_zero] using r127
  · unfold Seg33.relationRow128 at r128
    simpa [seg33Rho, mul_eq_zero] using r128
  · unfold Seg33.relationRow129 at r129
    simpa [seg33Rho, mul_eq_zero] using r129
  · unfold Seg33.relationRow130 at r130
    simpa [seg33Rho, mul_eq_zero] using r130
  · unfold Seg33.relationRow131 at r131
    simpa [seg33Rho, mul_eq_zero] using r131
  · unfold Seg33.relationRow132 at r132
    simpa [seg33Rho, mul_eq_zero] using r132
  · unfold Seg33.relationRow133 at r133
    simpa [seg33Rho, mul_eq_zero] using r133
  · unfold Seg33.relationRow134 at r134
    simpa [seg33Rho, mul_eq_zero] using r134
  · unfold Seg33.relationRow135 at r135
    simpa [seg33Rho, mul_eq_zero] using r135
  · unfold Seg33.relationRow136 at r136
    simpa [seg33Rho, mul_eq_zero] using r136
  · unfold Seg33.relationRow137 at r137
    simpa [seg33Rho, mul_eq_zero] using r137
  · unfold Seg33.relationRow138 at r138
    simpa [seg33Rho, mul_eq_zero] using r138
  · unfold Seg33.relationRow139 at r139
    simpa [seg33Rho, mul_eq_zero] using r139
  · unfold Seg33.relationRow140 at r140
    simpa [seg33Rho, mul_eq_zero] using r140
  · unfold Seg33.relationRow141 at r141
    simpa [seg33Rho, mul_eq_zero] using r141
  · unfold Seg33.relationRow142 at r142
    simpa [seg33Rho, mul_eq_zero] using r142
  · unfold Seg33.relationRow143 at r143
    simpa [seg33Rho, mul_eq_zero] using r143
  · unfold Seg33.relationRow144 at r144
    simpa [seg33Rho, mul_eq_zero] using r144
  · unfold Seg33.relationRow145 at r145
    simpa [seg33Rho, mul_eq_zero] using r145
  · unfold Seg33.relationRow146 at r146
    simpa [seg33Rho, mul_eq_zero] using r146
  · unfold Seg33.relationRow147 at r147
    simpa [seg33Rho, mul_eq_zero] using r147
  · unfold Seg33.relationRow148 at r148
    simpa [seg33Rho, mul_eq_zero] using r148
  · unfold Seg33.relationRow149 at r149
    simpa [seg33Rho, mul_eq_zero] using r149
  · unfold Seg33.relationRow150 at r150
    simpa [seg33Rho, mul_eq_zero] using r150
  · unfold Seg33.relationRow151 at r151
    simpa [seg33Rho, mul_eq_zero] using r151
  · unfold Seg33.relationRow152 at r152
    simpa [seg33Rho, mul_eq_zero] using r152
  · unfold Seg33.relationRow153 at r153
    simpa [seg33Rho, mul_eq_zero] using r153
  · unfold Seg33.relationRow154 at r154
    simpa [seg33Rho, mul_eq_zero] using r154
  · unfold Seg33.relationRow155 at r155
    simpa [seg33Rho, mul_eq_zero] using r155
  · unfold Seg33.relationRow156 at r156
    simpa [seg33Rho, mul_eq_zero] using r156
  · unfold Seg33.relationRow157 at r157
    simpa [seg33Rho, mul_eq_zero] using r157
  · unfold Seg33.relationRow158 at r158
    simpa [seg33Rho, mul_eq_zero] using r158
  · unfold Seg33.relationRow159 at r159
    simpa [seg33Rho, mul_eq_zero] using r159
  · unfold Seg33.relationRow160 at r160
    simpa [seg33Rho, mul_eq_zero] using r160
  · unfold Seg33.relationRow161 at r161
    simpa [seg33Rho, mul_eq_zero] using r161
  · unfold Seg33.relationRow162 at r162
    simpa [seg33Rho, mul_eq_zero] using r162
  · unfold Seg33.relationRow163 at r163
    simpa [seg33Rho, mul_eq_zero] using r163
  · unfold Seg33.relationRow164 at r164
    simpa [seg33Rho, mul_eq_zero] using r164
  · unfold Seg33.relationRow165 at r165
    simpa [seg33Rho, mul_eq_zero] using r165
  · unfold Seg33.relationRow166 at r166
    simpa [seg33Rho, mul_eq_zero] using r166
  · unfold Seg33.relationRow167 at r167
    simpa [seg33Rho, mul_eq_zero] using r167
  · unfold Seg33.relationRow168 at r168
    simpa [seg33Rho, mul_eq_zero] using r168
  · unfold Seg33.relationRow169 at r169
    simpa [seg33Rho, mul_eq_zero] using r169
  · unfold Seg33.relationRow170 at r170
    simpa [seg33Rho, mul_eq_zero] using r170
  · unfold Seg33.relationRow171 at r171
    simpa [seg33Rho, mul_eq_zero] using r171
  · unfold Seg33.relationRow172 at r172
    simpa [seg33Rho, mul_eq_zero] using r172
  · unfold Seg33.relationRow173 at r173
    simpa [seg33Rho, mul_eq_zero] using r173
  · unfold Seg33.relationRow174 at r174
    simpa [seg33Rho, mul_eq_zero] using r174
  · unfold Seg33.relationRow175 at r175
    simpa [seg33Rho, mul_eq_zero] using r175
  · unfold Seg33.relationRow176 at r176
    simpa [seg33Rho, mul_eq_zero] using r176
  · unfold Seg33.relationRow177 at r177
    simpa [seg33Rho, mul_eq_zero] using r177
  · unfold Seg33.relationRow178 at r178
    simpa [seg33Rho, mul_eq_zero] using r178
  · unfold Seg33.relationRow179 at r179
    simpa [seg33Rho, mul_eq_zero] using r179
  · unfold Seg33.relationRow180 at r180
    simpa [seg33Rho, mul_eq_zero] using r180
  · unfold Seg33.relationRow181 at r181
    simpa [seg33Rho, mul_eq_zero] using r181
  · unfold Seg33.relationRow182 at r182
    simpa [seg33Rho, mul_eq_zero] using r182
  · unfold Seg33.relationRow183 at r183
    simpa [seg33Rho, mul_eq_zero] using r183
  · unfold Seg33.relationRow184 at r184
    simpa [seg33Rho, mul_eq_zero] using r184
  · unfold Seg33.relationRow185 at r185
    simpa [seg33Rho, mul_eq_zero] using r185
  · unfold Seg33.relationRow186 at r186
    simpa [seg33Rho, mul_eq_zero] using r186
  · unfold Seg33.relationRow187 at r187
    simpa [seg33Rho, mul_eq_zero] using r187
  · unfold Seg33.relationRow188 at r188
    simpa [seg33Rho, mul_eq_zero] using r188
  · unfold Seg33.relationRow189 at r189
    simpa [seg33Rho, mul_eq_zero] using r189
  · unfold Seg33.relationRow190 at r190
    simpa [seg33Rho, mul_eq_zero] using r190
  · unfold Seg33.relationRow191 at r191
    simpa [seg33Rho, mul_eq_zero] using r191
  · unfold Seg33.relationRow192 at r192
    simpa [seg33Rho, mul_eq_zero] using r192
  · unfold Seg33.relationRow193 at r193
    simpa [seg33Rho, mul_eq_zero] using r193
  · unfold Seg33.relationRow194 at r194
    simpa [seg33Rho, mul_eq_zero] using r194
  · unfold Seg33.relationRow195 at r195
    simpa [seg33Rho, mul_eq_zero] using r195
  · unfold Seg33.relationRow196 at r196
    simpa [seg33Rho, mul_eq_zero] using r196
  · unfold Seg33.relationRow197 at r197
    simpa [seg33Rho, mul_eq_zero] using r197
  · unfold Seg33.relationRow198 at r198
    simpa [seg33Rho, mul_eq_zero] using r198
  · unfold Seg33.relationRow199 at r199
    simpa [seg33Rho, mul_eq_zero] using r199
  · unfold Seg33.relationRow200 at r200
    simpa [seg33Rho, mul_eq_zero] using r200
  · unfold Seg33.relationRow201 at r201
    simpa [seg33Rho, mul_eq_zero] using r201
  · unfold Seg33.relationRow202 at r202
    simpa [seg33Rho, mul_eq_zero] using r202
  · unfold Seg33.relationRow203 at r203
    simpa [seg33Rho, mul_eq_zero] using r203
  · unfold Seg33.relationRow204 at r204
    simpa [seg33Rho, mul_eq_zero] using r204
  · unfold Seg33.relationRow205 at r205
    simpa [seg33Rho, mul_eq_zero] using r205
  · unfold Seg33.relationRow206 at r206
    simpa [seg33Rho, mul_eq_zero] using r206
  · unfold Seg33.relationRow207 at r207
    simpa [seg33Rho, mul_eq_zero] using r207
  · unfold Seg33.relationRow208 at r208
    simpa [seg33Rho, mul_eq_zero] using r208
  · unfold Seg33.relationRow209 at r209
    simpa [seg33Rho, mul_eq_zero] using r209
  · unfold Seg33.relationRow210 at r210
    simpa [seg33Rho, mul_eq_zero] using r210
  · unfold Seg33.relationRow211 at r211
    simpa [seg33Rho, mul_eq_zero] using r211
  · unfold Seg33.relationRow212 at r212
    simpa [seg33Rho, mul_eq_zero] using r212
  · unfold Seg33.relationRow213 at r213
    simpa [seg33Rho, mul_eq_zero] using r213
  · unfold Seg33.relationRow214 at r214
    simpa [seg33Rho, mul_eq_zero] using r214
  · unfold Seg33.relationRow215 at r215
    simpa [seg33Rho, mul_eq_zero] using r215
  · unfold Seg33.relationRow216 at r216
    simpa [seg33Rho, mul_eq_zero] using r216
  · unfold Seg33.relationRow217 at r217
    simpa [seg33Rho, mul_eq_zero] using r217
  · unfold Seg33.relationRow218 at r218
    simpa [seg33Rho, mul_eq_zero] using r218
  · unfold Seg33.relationRow219 at r219
    simpa [seg33Rho, mul_eq_zero] using r219
  · unfold Seg33.relationRow220 at r220
    simpa [seg33Rho, mul_eq_zero] using r220
  · unfold Seg33.relationRow221 at r221
    simpa [seg33Rho, mul_eq_zero] using r221
  · unfold Seg33.relationRow222 at r222
    simpa [seg33Rho, mul_eq_zero] using r222
  · unfold Seg33.relationRow223 at r223
    simpa [seg33Rho, mul_eq_zero] using r223
  · unfold Seg33.relationRow224 at r224
    simpa [seg33Rho, mul_eq_zero] using r224
  · unfold Seg33.relationRow225 at r225
    simpa [seg33Rho, mul_eq_zero] using r225
  · unfold Seg33.relationRow226 at r226
    simpa [seg33Rho, mul_eq_zero] using r226
  · unfold Seg33.relationRow227 at r227
    simpa [seg33Rho, mul_eq_zero] using r227
  · unfold Seg33.relationRow228 at r228
    simpa [seg33Rho, mul_eq_zero] using r228
  · unfold Seg33.relationRow229 at r229
    simpa [seg33Rho, mul_eq_zero] using r229
  · unfold Seg33.relationRow230 at r230
    simpa [seg33Rho, mul_eq_zero] using r230
  · unfold Seg33.relationRow231 at r231
    simpa [seg33Rho, mul_eq_zero] using r231
  · unfold Seg33.relationRow232 at r232
    simpa [seg33Rho, mul_eq_zero] using r232
  · unfold Seg33.relationRow233 at r233
    simpa [seg33Rho, mul_eq_zero] using r233
  · unfold Seg33.relationRow234 at r234
    simpa [seg33Rho, mul_eq_zero] using r234
  · unfold Seg33.relationRow235 at r235
    simpa [seg33Rho, mul_eq_zero] using r235
  · unfold Seg33.relationRow236 at r236
    simpa [seg33Rho, mul_eq_zero] using r236
  · unfold Seg33.relationRow237 at r237
    simpa [seg33Rho, mul_eq_zero] using r237
  · unfold Seg33.relationRow238 at r238
    simpa [seg33Rho, mul_eq_zero] using r238
  · unfold Seg33.relationRow239 at r239
    simpa [seg33Rho, mul_eq_zero] using r239
  · unfold Seg33.relationRow240 at r240
    simpa [seg33Rho, mul_eq_zero] using r240
  · unfold Seg33.relationRow241 at r241
    simpa [seg33Rho, mul_eq_zero] using r241
  · unfold Seg33.relationRow242 at r242
    simpa [seg33Rho, mul_eq_zero] using r242
  · unfold Seg33.relationRow243 at r243
    simpa [seg33Rho, mul_eq_zero] using r243
  · unfold Seg33.relationRow244 at r244
    simpa [seg33Rho, mul_eq_zero] using r244
  · unfold Seg33.relationRow245 at r245
    simpa [seg33Rho, mul_eq_zero] using r245
  · unfold Seg33.relationRow246 at r246
    simpa [seg33Rho, mul_eq_zero] using r246
  · unfold Seg33.relationRow247 at r247
    simpa [seg33Rho, mul_eq_zero] using r247
  · unfold Seg33.relationRow248 at r248
    simpa [seg33Rho, mul_eq_zero] using r248
  · unfold Seg33.relationRow249 at r249
    simpa [seg33Rho, mul_eq_zero] using r249
  · unfold Seg33.relationRow250 at r250
    simpa [seg33Rho, mul_eq_zero] using r250
  · unfold Seg33.relationRow251 at r251
    simpa [seg33Rho, mul_eq_zero] using r251
  · unfold Seg33.relationRow252 at r252
    simpa [seg33Rho, mul_eq_zero] using r252
  · unfold Seg33.relationRow253 at r253
    simpa [seg33Rho, mul_eq_zero] using r253
  · unfold Seg33.relationRow254 at r254
    simpa [seg33Rho, mul_eq_zero] using r254
  · unfold Seg33.relationRow255 at r255
    simpa [seg33Rho, mul_eq_zero] using r255
  · unfold Seg33.relationRow256 at r256
    simpa [seg33Rho, mul_eq_zero] using r256
  · unfold Seg33.relationRow257 at r257
    simpa [seg33Rho, mul_eq_zero] using r257
  · unfold Seg33.relationRow258 at r258
    simpa [seg33Rho, mul_eq_zero] using r258
  · unfold Seg33.relationRow259 at r259
    simpa [seg33Rho, mul_eq_zero] using r259
  · unfold Seg33.relationRow260 at r260
    simpa [seg33Rho, mul_eq_zero] using r260
  · unfold Seg33.relationRow261 at r261
    simpa [seg33Rho, mul_eq_zero] using r261
  · unfold Seg33.relationRow262 at r262
    simpa [seg33Rho, mul_eq_zero] using r262
  · unfold Seg33.relationRow263 at r263
    simpa [seg33Rho, mul_eq_zero] using r263
  · unfold Seg33.relationRow264 at r264
    simpa [seg33Rho, mul_eq_zero] using r264
  · unfold Seg33.relationRow265 at r265
    simpa [seg33Rho, mul_eq_zero] using r265
  · unfold Seg33.relationRow266 at r266
    simpa [seg33Rho, mul_eq_zero] using r266
  · unfold Seg33.relationRow267 at r267
    simpa [seg33Rho, mul_eq_zero] using r267
  · unfold Seg33.relationRow268 at r268
    simpa [seg33Rho, mul_eq_zero] using r268
  · unfold Seg33.relationRow269 at r269
    simpa [seg33Rho, mul_eq_zero] using r269
  · unfold Seg33.relationRow270 at r270
    simpa [seg33Rho, mul_eq_zero] using r270
  · unfold Seg33.relationRow271 at r271
    simpa [seg33Rho, mul_eq_zero] using r271
  · unfold Seg33.relationRow272 at r272
    simpa [seg33Rho, mul_eq_zero] using r272
  · unfold Seg33.relationRow273 at r273
    simpa [seg33Rho, mul_eq_zero] using r273
  · unfold Seg33.relationRow274 at r274
    simpa [seg33Rho, mul_eq_zero] using r274
  · unfold Seg33.relationRow275 at r275
    simpa [seg33Rho, mul_eq_zero] using r275
  · unfold Seg33.relationRow276 at r276
    simpa [seg33Rho, mul_eq_zero] using r276
  · unfold Seg33.relationRow277 at r277
    simpa [seg33Rho, mul_eq_zero] using r277
  · unfold Seg33.relationRow278 at r278
    simpa [seg33Rho, mul_eq_zero] using r278
  · unfold Seg33.relationRow279 at r279
    simpa [seg33Rho, mul_eq_zero] using r279
  · unfold Seg33.relationRow280 at r280
    simpa [seg33Rho, mul_eq_zero] using r280
  · unfold Seg33.relationRow282 at r282
    simpa [seg33Rho, mul_eq_zero] using r282
  · unfold Seg33.relationRow283 at r283
    simpa [seg33Rho, mul_eq_zero] using r283
  · unfold Seg33.relationRow284 at r284
    simpa [seg33Rho, mul_eq_zero] using r284
  · unfold Seg33.relationRow285 at r285
    simpa [seg33Rho, mul_eq_zero] using r285
  · unfold Seg33.relationRow286 at r286
    simpa [seg33Rho, mul_eq_zero] using r286
  · unfold Seg33.relationRow287 at r287
    simpa [seg33Rho, mul_eq_zero] using r287
  · unfold Seg33.relationRow288 at r288
    simpa [seg33Rho, mul_eq_zero] using r288
  · unfold Seg33.relationRow289 at r289
    simpa [seg33Rho, mul_eq_zero] using r289
  · unfold Seg33.relationRow290 at r290
    simpa [seg33Rho, mul_eq_zero] using r290
  · unfold Seg33.relationRow291 at r291
    simpa [seg33Rho, mul_eq_zero] using r291
  · unfold Seg33.relationRow292 at r292
    simpa [seg33Rho, mul_eq_zero] using r292
  · unfold Seg33.relationRow293 at r293
    simpa [seg33Rho, mul_eq_zero] using r293
  · unfold Seg33.relationRow294 at r294
    simpa [seg33Rho, mul_eq_zero] using r294
  · unfold Seg33.relationRow295 at r295
    simpa [seg33Rho, mul_eq_zero] using r295
  · unfold Seg33.relationRow296 at r296
    simpa [seg33Rho, mul_eq_zero] using r296
  · unfold Seg33.relationRow297 at r297
    simpa [seg33Rho, mul_eq_zero] using r297
  · unfold Seg33.relationRow298 at r298
    simpa [seg33Rho, mul_eq_zero] using r298
  · unfold Seg33.relationRow299 at r299
    simpa [seg33Rho, mul_eq_zero] using r299
  · unfold Seg33.relationRow300 at r300
    simpa [seg33Rho, mul_eq_zero] using r300
  · unfold Seg33.relationRow301 at r301
    simpa [seg33Rho, mul_eq_zero] using r301
  · unfold Seg33.relationRow302 at r302
    simpa [seg33Rho, mul_eq_zero] using r302
  · unfold Seg33.relationRow303 at r303
    simpa [seg33Rho, mul_eq_zero] using r303
  · unfold Seg33.relationRow304 at r304
    simpa [seg33Rho, mul_eq_zero] using r304
  · unfold Seg33.relationRow305 at r305
    simpa [seg33Rho, mul_eq_zero] using r305
  · unfold Seg33.relationRow306 at r306
    simpa [seg33Rho, mul_eq_zero] using r306
  · unfold Seg33.relationRow307 at r307
    simpa [seg33Rho, mul_eq_zero] using r307
  · unfold Seg33.relationRow308 at r308
    simpa [seg33Rho, mul_eq_zero] using r308
  · unfold Seg33.relationRow309 at r309
    simpa [seg33Rho, mul_eq_zero] using r309
  · unfold Seg33.relationRow310 at r310
    simpa [seg33Rho, mul_eq_zero] using r310
  · unfold Seg33.relationRow311 at r311
    simpa [seg33Rho, mul_eq_zero] using r311
  · unfold Seg33.relationRow312 at r312
    simpa [seg33Rho, mul_eq_zero] using r312
  · unfold Seg33.relationRow313 at r313
    simpa [seg33Rho, mul_eq_zero] using r313
  · unfold Seg33.relationRow314 at r314
    simpa [seg33Rho, mul_eq_zero] using r314
  · unfold Seg33.relationRow315 at r315
    simpa [seg33Rho, mul_eq_zero] using r315
  · unfold Seg33.relationRow316 at r316
    simpa [seg33Rho, mul_eq_zero] using r316
  · unfold Seg33.relationRow317 at r317
    simpa [seg33Rho, mul_eq_zero] using r317
  · unfold Seg33.relationRow318 at r318
    simpa [seg33Rho, mul_eq_zero] using r318
  · unfold Seg33.relationRow319 at r319
    simpa [seg33Rho, mul_eq_zero] using r319
  · unfold Seg33.relationRow320 at r320
    simpa [seg33Rho, mul_eq_zero] using r320
  · unfold Seg33.relationRow321 at r321
    simpa [seg33Rho, mul_eq_zero] using r321
  · unfold Seg33.relationRow322 at r322
    simpa [seg33Rho, mul_eq_zero] using r322
  · unfold Seg33.relationRow323 at r323
    simpa [seg33Rho, mul_eq_zero] using r323
  · unfold Seg33.relationRow324 at r324
    simpa [seg33Rho, mul_eq_zero] using r324
  · unfold Seg33.relationRow325 at r325
    simpa [seg33Rho, mul_eq_zero] using r325
  · unfold Seg33.relationRow326 at r326
    simpa [seg33Rho, mul_eq_zero] using r326
  · unfold Seg33.relationRow327 at r327
    simpa [seg33Rho, mul_eq_zero] using r327
  · unfold Seg33.relationRow328 at r328
    simpa [seg33Rho, mul_eq_zero] using r328
  · unfold Seg33.relationRow329 at r329
    simpa [seg33Rho, mul_eq_zero] using r329
  · unfold Seg33.relationRow330 at r330
    simpa [seg33Rho, mul_eq_zero] using r330
  · unfold Seg33.relationRow331 at r331
    simpa [seg33Rho, mul_eq_zero] using r331
  · unfold Seg33.relationRow332 at r332
    simpa [seg33Rho, mul_eq_zero] using r332
  · unfold Seg33.relationRow333 at r333
    simpa [seg33Rho, mul_eq_zero] using r333
  · unfold Seg33.relationRow334 at r334
    simpa [seg33Rho, mul_eq_zero] using r334
  · unfold Seg33.relationRow335 at r335
    simpa [seg33Rho, mul_eq_zero] using r335
  · unfold Seg33.relationRow336 at r336
    simpa [seg33Rho, mul_eq_zero] using r336
  · unfold Seg33.relationRow337 at r337
    simpa [seg33Rho, mul_eq_zero] using r337
  · unfold Seg33.relationRow338 at r338
    simpa [seg33Rho, mul_eq_zero] using r338
  · unfold Seg33.relationRow339 at r339
    simpa [seg33Rho, mul_eq_zero] using r339
  · unfold Seg33.relationRow340 at r340
    simpa [seg33Rho, mul_eq_zero] using r340
  · unfold Seg33.relationRow341 at r341
    simpa [seg33Rho, mul_eq_zero] using r341
  · unfold Seg33.relationRow342 at r342
    simpa [seg33Rho, mul_eq_zero] using r342
  · unfold Seg33.relationRow343 at r343
    simpa [seg33Rho, mul_eq_zero] using r343
  · unfold Seg33.relationRow344 at r344
    simpa [seg33Rho, mul_eq_zero] using r344
  · unfold Seg33.relationRow345 at r345
    simpa [seg33Rho, mul_eq_zero] using r345
  · unfold Seg33.relationRow346 at r346
    simpa [seg33Rho, mul_eq_zero] using r346
  · unfold Seg33.relationRow347 at r347
    simpa [seg33Rho, mul_eq_zero] using r347
  · unfold Seg33.relationRow348 at r348
    simpa [seg33Rho, mul_eq_zero] using r348
  · unfold Seg33.relationRow349 at r349
    simpa [seg33Rho, mul_eq_zero] using r349
  · unfold Seg33.relationRow350 at r350
    simpa [seg33Rho, mul_eq_zero] using r350
  · unfold Seg33.relationRow351 at r351
    simpa [seg33Rho, mul_eq_zero] using r351
  · unfold Seg33.relationRow352 at r352
    simpa [seg33Rho, mul_eq_zero] using r352
  · unfold Seg33.relationRow353 at r353
    simpa [seg33Rho, mul_eq_zero] using r353
  · unfold Seg33.relationRow354 at r354
    simpa [seg33Rho, mul_eq_zero] using r354
  · unfold Seg33.relationRow355 at r355
    simpa [seg33Rho, mul_eq_zero] using r355
  · unfold Seg33.relationRow356 at r356
    simpa [seg33Rho, mul_eq_zero] using r356
  · unfold Seg33.relationRow357 at r357
    simpa [seg33Rho, mul_eq_zero] using r357
  · unfold Seg33.relationRow358 at r358
    simpa [seg33Rho, mul_eq_zero] using r358
  · unfold Seg33.relationRow359 at r359
    simpa [seg33Rho, mul_eq_zero] using r359
  · unfold Seg33.relationRow360 at r360
    simpa [seg33Rho, mul_eq_zero] using r360
  · unfold Seg33.relationRow361 at r361
    simpa [seg33Rho, mul_eq_zero] using r361
  · unfold Seg33.relationRow362 at r362
    simpa [seg33Rho, mul_eq_zero] using r362
  · unfold Seg33.relationRow363 at r363
    simpa [seg33Rho, mul_eq_zero] using r363
  · unfold Seg33.relationRow364 at r364
    simpa [seg33Rho, mul_eq_zero] using r364
  · unfold Seg33.relationRow365 at r365
    simpa [seg33Rho, mul_eq_zero] using r365
  · unfold Seg33.relationRow366 at r366
    simpa [seg33Rho, mul_eq_zero] using r366
  · unfold Seg33.relationRow367 at r367
    simpa [seg33Rho, mul_eq_zero] using r367
  · unfold Seg33.relationRow368 at r368
    simpa [seg33Rho, mul_eq_zero] using r368
  · unfold Seg33.relationRow369 at r369
    simpa [seg33Rho, mul_eq_zero] using r369
  · unfold Seg33.relationRow370 at r370
    simpa [seg33Rho, mul_eq_zero] using r370
  · unfold Seg33.relationRow371 at r371
    simpa [seg33Rho, mul_eq_zero] using r371
  · unfold Seg33.relationRow372 at r372
    simpa [seg33Rho, mul_eq_zero] using r372
  · unfold Seg33.relationRow373 at r373
    simpa [seg33Rho, mul_eq_zero] using r373
  · unfold Seg33.relationRow374 at r374
    simpa [seg33Rho, mul_eq_zero] using r374
  · unfold Seg33.relationRow375 at r375
    simpa [seg33Rho, mul_eq_zero] using r375
  · unfold Seg33.relationRow376 at r376
    simpa [seg33Rho, mul_eq_zero] using r376
  · unfold Seg33.relationRow377 at r377
    simpa [seg33Rho, mul_eq_zero] using r377
  · unfold Seg33.relationRow378 at r378
    simpa [seg33Rho, mul_eq_zero] using r378
  · unfold Seg33.relationRow379 at r379
    simpa [seg33Rho, mul_eq_zero] using r379
  · unfold Seg33.relationRow380 at r380
    simpa [seg33Rho, mul_eq_zero] using r380
  · unfold Seg33.relationRow381 at r381
    simpa [seg33Rho, mul_eq_zero] using r381
  · unfold Seg33.relationRow382 at r382
    simpa [seg33Rho, mul_eq_zero] using r382
  · unfold Seg33.relationRow383 at r383
    simpa [seg33Rho, mul_eq_zero] using r383
  · unfold Seg33.relationRow384 at r384
    simpa [seg33Rho, mul_eq_zero] using r384
  · unfold Seg33.relationRow385 at r385
    simpa [seg33Rho, mul_eq_zero] using r385
  · unfold Seg33.relationRow386 at r386
    simpa [seg33Rho, mul_eq_zero] using r386
  · unfold Seg33.relationRow387 at r387
    simpa [seg33Rho, mul_eq_zero] using r387
  · unfold Seg33.relationRow388 at r388
    simpa [seg33Rho, mul_eq_zero] using r388
  · unfold Seg33.relationRow389 at r389
    simpa [seg33Rho, mul_eq_zero] using r389
  · unfold Seg33.relationRow390 at r390
    simpa [seg33Rho, mul_eq_zero] using r390
  · unfold Seg33.relationRow391 at r391
    simpa [seg33Rho, mul_eq_zero] using r391
  · unfold Seg33.relationRow392 at r392
    simpa [seg33Rho, mul_eq_zero] using r392
  · unfold Seg33.relationRow393 at r393
    simpa [seg33Rho, mul_eq_zero] using r393
  · unfold Seg33.relationRow394 at r394
    simpa [seg33Rho, mul_eq_zero] using r394
  · unfold Seg33.relationRow395 at r395
    simpa [seg33Rho, mul_eq_zero] using r395
  · unfold Seg33.relationRow396 at r396
    simpa [seg33Rho, mul_eq_zero] using r396
  · unfold Seg33.relationRow397 at r397
    simpa [seg33Rho, mul_eq_zero] using r397
  · unfold Seg33.relationRow398 at r398
    simpa [seg33Rho, mul_eq_zero] using r398
  · unfold Seg33.relationRow399 at r399
    simpa [seg33Rho, mul_eq_zero] using r399
  · unfold Seg33.relationRow400 at r400
    simpa [seg33Rho, mul_eq_zero] using r400
  · unfold Seg33.relationRow401 at r401
    simpa [seg33Rho, mul_eq_zero] using r401
  · unfold Seg33.relationRow402 at r402
    simpa [seg33Rho, mul_eq_zero] using r402
  · unfold Seg33.relationRow403 at r403
    simpa [seg33Rho, mul_eq_zero] using r403
  · unfold Seg33.relationRow404 at r404
    simpa [seg33Rho, mul_eq_zero] using r404
  · unfold Seg33.relationRow405 at r405
    simpa [seg33Rho, mul_eq_zero] using r405
  · unfold Seg33.relationRow406 at r406
    simpa [seg33Rho, mul_eq_zero] using r406
  · unfold Seg33.relationRow407 at r407
    simpa [seg33Rho, mul_eq_zero] using r407
  · unfold Seg33.relationRow408 at r408
    simpa [seg33Rho, mul_eq_zero] using r408
  · unfold Seg33.relationRow409 at r409
    simpa [seg33Rho, mul_eq_zero] using r409
  · unfold Seg33.relationRow410 at r410
    simpa [seg33Rho, mul_eq_zero] using r410
  · unfold Seg33.relationRow411 at r411
    simpa [seg33Rho, mul_eq_zero] using r411
  · unfold Seg33.relationRow412 at r412
    simpa [seg33Rho, mul_eq_zero] using r412
  · unfold Seg33.relationRow413 at r413
    simpa [seg33Rho, mul_eq_zero] using r413
  · unfold Seg33.relationRow414 at r414
    simpa [seg33Rho, mul_eq_zero] using r414
  · unfold Seg33.relationRow415 at r415
    simpa [seg33Rho, mul_eq_zero] using r415
  · unfold Seg33.relationRow416 at r416
    simpa [seg33Rho, mul_eq_zero] using r416
  · unfold Seg33.relationRow417 at r417
    simpa [seg33Rho, mul_eq_zero] using r417
  · unfold Seg33.relationRow418 at r418
    simpa [seg33Rho, mul_eq_zero] using r418
  · unfold Seg33.relationRow419 at r419
    simpa [seg33Rho, mul_eq_zero] using r419
  · unfold Seg33.relationRow420 at r420
    simpa [seg33Rho, mul_eq_zero] using r420
  · unfold Seg33.relationRow421 at r421
    simpa [seg33Rho, mul_eq_zero] using r421
  · unfold Seg33.relationRow422 at r422
    simpa [seg33Rho, mul_eq_zero] using r422
  · unfold Seg33.relationRow423 at r423
    simpa [seg33Rho, mul_eq_zero] using r423
  · unfold Seg33.relationRow424 at r424
    simpa [seg33Rho, mul_eq_zero] using r424
  · unfold Seg33.relationRow425 at r425
    simpa [seg33Rho, mul_eq_zero] using r425
  · unfold Seg33.relationRow426 at r426
    simpa [seg33Rho, mul_eq_zero] using r426
  · unfold Seg33.relationRow427 at r427
    simpa [seg33Rho, mul_eq_zero] using r427
  · unfold Seg33.relationRow428 at r428
    simpa [seg33Rho, mul_eq_zero] using r428
  · unfold Seg33.relationRow429 at r429
    simpa [seg33Rho, mul_eq_zero] using r429
  · unfold Seg33.relationRow430 at r430
    simpa [seg33Rho, mul_eq_zero] using r430
  · unfold Seg33.relationRow431 at r431
    simpa [seg33Rho, mul_eq_zero] using r431
  · unfold Seg33.relationRow432 at r432
    simpa [seg33Rho, mul_eq_zero] using r432
  · unfold Seg33.relationRow433 at r433
    simpa [seg33Rho, mul_eq_zero] using r433
  · unfold Seg33.relationRow434 at r434
    simpa [seg33Rho, mul_eq_zero] using r434
  · unfold Seg33.relationRow435 at r435
    simpa [seg33Rho, mul_eq_zero] using r435
  · unfold Seg33.relationRow436 at r436
    simpa [seg33Rho, mul_eq_zero] using r436
  · unfold Seg33.relationRow437 at r437
    simpa [seg33Rho, mul_eq_zero] using r437
  · unfold Seg33.relationRow438 at r438
    simpa [seg33Rho, mul_eq_zero] using r438
  · unfold Seg33.relationRow439 at r439
    simpa [seg33Rho, mul_eq_zero] using r439
  · unfold Seg33.relationRow440 at r440
    simpa [seg33Rho, mul_eq_zero] using r440
  · unfold Seg33.relationRow441 at r441
    simpa [seg33Rho, mul_eq_zero] using r441
  · unfold Seg33.relationRow442 at r442
    simpa [seg33Rho, mul_eq_zero] using r442
  · unfold Seg33.relationRow443 at r443
    simpa [seg33Rho, mul_eq_zero] using r443
  · unfold Seg33.relationRow444 at r444
    simpa [seg33Rho, mul_eq_zero] using r444
  · unfold Seg33.relationRow445 at r445
    simpa [seg33Rho, mul_eq_zero] using r445
  · unfold Seg33.relationRow446 at r446
    simpa [seg33Rho, mul_eq_zero] using r446
  · unfold Seg33.relationRow447 at r447
    simpa [seg33Rho, mul_eq_zero] using r447
  · unfold Seg33.relationRow448 at r448
    simpa [seg33Rho, mul_eq_zero] using r448
  · unfold Seg33.relationRow449 at r449
    simpa [seg33Rho, mul_eq_zero] using r449
  · unfold Seg33.relationRow450 at r450
    simpa [seg33Rho, mul_eq_zero] using r450
  · unfold Seg33.relationRow451 at r451
    simpa [seg33Rho, mul_eq_zero] using r451
  · unfold Seg33.relationRow452 at r452
    simpa [seg33Rho, mul_eq_zero] using r452
  · unfold Seg33.relationRow453 at r453
    simpa [seg33Rho, mul_eq_zero] using r453
  · unfold Seg33.relationRow454 at r454
    simpa [seg33Rho, mul_eq_zero] using r454
  · unfold Seg33.relationRow455 at r455
    simpa [seg33Rho, mul_eq_zero] using r455
  · unfold Seg33.relationRow456 at r456
    simpa [seg33Rho, mul_eq_zero] using r456
  · unfold Seg33.relationRow457 at r457
    simpa [seg33Rho, mul_eq_zero] using r457
  · unfold Seg33.relationRow458 at r458
    simpa [seg33Rho, mul_eq_zero] using r458
  · unfold Seg33.relationRow459 at r459
    simpa [seg33Rho, mul_eq_zero] using r459
  · unfold Seg33.relationRow460 at r460
    simpa [seg33Rho, mul_eq_zero] using r460
  · unfold Seg33.relationRow461 at r461
    simpa [seg33Rho, mul_eq_zero] using r461
  · unfold Seg33.relationRow462 at r462
    simpa [seg33Rho, mul_eq_zero] using r462
  · unfold Seg33.relationRow463 at r463
    simpa [seg33Rho, mul_eq_zero] using r463
  · unfold Seg33.relationRow464 at r464
    simpa [seg33Rho, mul_eq_zero] using r464
  · unfold Seg33.relationRow465 at r465
    simpa [seg33Rho, mul_eq_zero] using r465
  · unfold Seg33.relationRow466 at r466
    simpa [seg33Rho, mul_eq_zero] using r466
  · unfold Seg33.relationRow467 at r467
    simpa [seg33Rho, mul_eq_zero] using r467
  · unfold Seg33.relationRow468 at r468
    simpa [seg33Rho, mul_eq_zero] using r468
  · unfold Seg33.relationRow469 at r469
    simpa [seg33Rho, mul_eq_zero] using r469
  · unfold Seg33.relationRow470 at r470
    simpa [seg33Rho, mul_eq_zero] using r470
  · unfold Seg33.relationRow471 at r471
    simpa [seg33Rho, mul_eq_zero] using r471
  · unfold Seg33.relationRow472 at r472
    simpa [seg33Rho, mul_eq_zero] using r472
  · unfold Seg33.relationRow473 at r473
    simpa [seg33Rho, mul_eq_zero] using r473
  · unfold Seg33.relationRow474 at r474
    simpa [seg33Rho, mul_eq_zero] using r474
  · unfold Seg33.relationRow475 at r475
    simpa [seg33Rho, mul_eq_zero] using r475
  · unfold Seg33.relationRow476 at r476
    simpa [seg33Rho, mul_eq_zero] using r476
  · unfold Seg33.relationRow477 at r477
    simpa [seg33Rho, mul_eq_zero] using r477
  · unfold Seg33.relationRow478 at r478
    simpa [seg33Rho, mul_eq_zero] using r478
  · unfold Seg33.relationRow479 at r479
    simpa [seg33Rho, mul_eq_zero] using r479
  · unfold Seg33.relationRow480 at r480
    simpa [seg33Rho, mul_eq_zero] using r480
  · unfold Seg33.relationRow481 at r481
    simpa [seg33Rho, mul_eq_zero] using r481
  · unfold Seg33.relationRow482 at r482
    simpa [seg33Rho, mul_eq_zero] using r482
  · unfold Seg33.relationRow483 at r483
    simpa [seg33Rho, mul_eq_zero] using r483
  · unfold Seg33.relationRow484 at r484
    simpa [seg33Rho, mul_eq_zero] using r484
  · unfold Seg33.relationRow485 at r485
    simpa [seg33Rho, mul_eq_zero] using r485
  · unfold Seg33.relationRow486 at r486
    simpa [seg33Rho, mul_eq_zero] using r486
  · unfold Seg33.relationRow487 at r487
    simpa [seg33Rho, mul_eq_zero] using r487
  · unfold Seg33.relationRow488 at r488
    simpa [seg33Rho, mul_eq_zero] using r488
  · unfold Seg33.relationRow489 at r489
    simpa [seg33Rho, mul_eq_zero] using r489
  · unfold Seg33.relationRow490 at r490
    simpa [seg33Rho, mul_eq_zero] using r490
  · unfold Seg33.relationRow491 at r491
    simpa [seg33Rho, mul_eq_zero] using r491
  · unfold Seg33.relationRow492 at r492
    simpa [seg33Rho, mul_eq_zero] using r492
  · unfold Seg33.relationRow493 at r493
    simpa [seg33Rho, mul_eq_zero] using r493
  · unfold Seg33.relationRow494 at r494
    simpa [seg33Rho, mul_eq_zero] using r494
  · unfold Seg33.relationRow495 at r495
    simpa [seg33Rho, mul_eq_zero] using r495
  · unfold Seg33.relationRow496 at r496
    simpa [seg33Rho, mul_eq_zero] using r496
  · unfold Seg33.relationRow497 at r497
    simpa [seg33Rho, mul_eq_zero] using r497
  · unfold Seg33.relationRow498 at r498
    simpa [seg33Rho, mul_eq_zero] using r498
  · unfold Seg33.relationRow499 at r499
    simpa [seg33Rho, mul_eq_zero] using r499
  · unfold Seg33.relationRow500 at r500
    simpa [seg33Rho, mul_eq_zero] using r500
  · unfold Seg33.relationRow501 at r501
    simpa [seg33Rho, mul_eq_zero] using r501
  · unfold Seg33.relationRow502 at r502
    simpa [seg33Rho, mul_eq_zero] using r502
  · unfold Seg33.relationRow503 at r503
    simpa [seg33Rho, mul_eq_zero] using r503
  · unfold Seg33.relationRow504 at r504
    simpa [seg33Rho, mul_eq_zero] using r504
  · unfold Seg33.relationRow505 at r505
    simpa [seg33Rho, mul_eq_zero] using r505
  · unfold Seg33.relationRow506 at r506
    simpa [seg33Rho, mul_eq_zero] using r506
  · unfold Seg33.relationRow507 at r507
    simpa [seg33Rho, mul_eq_zero] using r507
  · unfold Seg33.relationRow508 at r508
    simpa [seg33Rho, mul_eq_zero] using r508
  · unfold Seg33.relationRow509 at r509
    simpa [seg33Rho, mul_eq_zero] using r509
  · unfold Seg33.relationRow510 at r510
    simpa [seg33Rho, mul_eq_zero] using r510
  · unfold Seg33.relationRow511 at r511
    simpa [seg33Rho, mul_eq_zero] using r511
  · unfold Seg33.relationRow512 at r512
    simpa [seg33Rho, mul_eq_zero] using r512
  · unfold Seg33.relationRow513 at r513
    simpa [seg33Rho, mul_eq_zero] using r513
  · unfold Seg33.relationRow514 at r514
    simpa [seg33Rho, mul_eq_zero] using r514
  · unfold Seg33.relationRow515 at r515
    simpa [seg33Rho, mul_eq_zero] using r515
  · unfold Seg33.relationRow516 at r516
    simpa [seg33Rho, mul_eq_zero] using r516
  · unfold Seg33.relationRow517 at r517
    simpa [seg33Rho, mul_eq_zero] using r517
  · unfold Seg33.relationRow518 at r518
    simpa [seg33Rho, mul_eq_zero] using r518
  · unfold Seg33.relationRow519 at r519
    simpa [seg33Rho, mul_eq_zero] using r519
  · unfold Seg33.relationRow520 at r520
    simpa [seg33Rho, mul_eq_zero] using r520
  · unfold Seg33.relationRow521 at r521
    simpa [seg33Rho, mul_eq_zero] using r521
  · unfold Seg33.relationRow522 at r522
    simpa [seg33Rho, mul_eq_zero] using r522
  · unfold Seg33.relationRow523 at r523
    simpa [seg33Rho, mul_eq_zero] using r523
  · unfold Seg33.relationRow524 at r524
    simpa [seg33Rho, mul_eq_zero] using r524
  · unfold Seg33.relationRow525 at r525
    simpa [seg33Rho, mul_eq_zero] using r525
  · unfold Seg33.relationRow526 at r526
    simpa [seg33Rho, mul_eq_zero] using r526
  · unfold Seg33.relationRow527 at r527
    simpa [seg33Rho, mul_eq_zero] using r527
  · unfold Seg33.relationRow528 at r528
    simpa [seg33Rho, mul_eq_zero] using r528
  · unfold Seg33.relationRow529 at r529
    simpa [seg33Rho, mul_eq_zero] using r529
  · unfold Seg33.relationRow530 at r530
    simpa [seg33Rho, mul_eq_zero] using r530
  · unfold Seg33.relationRow531 at r531
    simpa [seg33Rho, mul_eq_zero] using r531
  · unfold Seg33.relationRow532 at r532
    simpa [seg33Rho, mul_eq_zero] using r532
  · unfold Seg33.relationRow533 at r533
    simpa [seg33Rho, mul_eq_zero] using r533
  · unfold Seg33.relationRow534 at r534
    simpa [seg33Rho, mul_eq_zero] using r534
  · unfold Seg33.relationRow535 at r535
    simpa [seg33Rho, mul_eq_zero] using r535
  · unfold Seg33.relationRow536 at r536
    simpa [seg33Rho, mul_eq_zero] using r536
  · unfold Seg33.relationRow537 at r537
    simpa [seg33Rho, mul_eq_zero] using r537
  · unfold Seg33.relationRow538 at r538
    simpa [seg33Rho, mul_eq_zero] using r538
  · unfold Seg33.relationRow539 at r539
    simpa [seg33Rho, mul_eq_zero] using r539
  · unfold Seg33.relationRow540 at r540
    simpa [seg33Rho, mul_eq_zero] using r540
  · unfold Seg33.relationRow541 at r541
    simpa [seg33Rho, mul_eq_zero] using r541
  · unfold Seg33.relationRow542 at r542
    simpa [seg33Rho, mul_eq_zero] using r542
  · unfold Seg33.relationRow543 at r543
    simpa [seg33Rho, mul_eq_zero] using r543
  · unfold Seg33.relationRow544 at r544
    simpa [seg33Rho, mul_eq_zero] using r544
  · unfold Seg33.relationRow545 at r545
    simpa [seg33Rho, mul_eq_zero] using r545
  · unfold Seg33.relationRow546 at r546
    simpa [seg33Rho, mul_eq_zero] using r546
  · unfold Seg33.relationRow547 at r547
    simpa [seg33Rho, mul_eq_zero] using r547
  · unfold Seg33.relationRow548 at r548
    simpa [seg33Rho, mul_eq_zero] using r548
  · unfold Seg33.relationRow549 at r549
    simpa [seg33Rho, mul_eq_zero] using r549
  · unfold Seg33.relationRow550 at r550
    simpa [seg33Rho, mul_eq_zero] using r550
  · unfold Seg33.relationRow551 at r551
    simpa [seg33Rho, mul_eq_zero] using r551
  · unfold Seg33.relationRow552 at r552
    simpa [seg33Rho, mul_eq_zero] using r552
  · unfold Seg33.relationRow553 at r553
    simpa [seg33Rho, mul_eq_zero] using r553
  · unfold Seg33.relationRow554 at r554
    simpa [seg33Rho, mul_eq_zero] using r554
  · unfold Seg33.relationRow555 at r555
    simpa [seg33Rho, mul_eq_zero] using r555
  · unfold Seg33.relationRow556 at r556
    simpa [seg33Rho, mul_eq_zero] using r556
  · unfold Seg33.relationRow557 at r557
    simpa [seg33Rho, mul_eq_zero] using r557
  · unfold Seg33.relationRow558 at r558
    simpa [seg33Rho, mul_eq_zero] using r558
  · unfold Seg33.relationRow559 at r559
    simpa [seg33Rho, mul_eq_zero] using r559
  · unfold Seg33.relationRow560 at r560
    simpa [seg33Rho, mul_eq_zero] using r560
  · unfold Seg33.relationRow561 at r561
    simpa [seg33Rho, mul_eq_zero] using r561
  · unfold Seg33.relationRow562 at r562
    simpa [seg33Rho, mul_eq_zero] using r562
  · unfold Seg33.relationRow563 at r563
    simpa [seg33Rho, mul_eq_zero] using r563
  · unfold Seg33.relationRow564 at r564
    simpa [seg33Rho, mul_eq_zero] using r564
  · unfold Seg33.relationRow565 at r565
    simpa [seg33Rho, mul_eq_zero] using r565
  · unfold Seg33.relationRow566 at r566
    simpa [seg33Rho, mul_eq_zero] using r566
  · unfold Seg33.relationRow567 at r567
    simpa [seg33Rho, mul_eq_zero] using r567
  · unfold Seg33.relationRow568 at r568
    simpa [seg33Rho, mul_eq_zero] using r568
  · unfold Seg33.relationRow569 at r569
    simpa [seg33Rho, mul_eq_zero] using r569
  · unfold Seg33.relationRow570 at r570
    simpa [seg33Rho, mul_eq_zero] using r570
  · unfold Seg33.relationRow571 at r571
    simpa [seg33Rho, mul_eq_zero] using r571
  · unfold Seg33.relationRow572 at r572
    simpa [seg33Rho, mul_eq_zero] using r572
  · unfold Seg33.relationRow573 at r573
    simpa [seg33Rho, mul_eq_zero] using r573
  · unfold Seg33.relationRow574 at r574
    simpa [seg33Rho, mul_eq_zero] using r574
  · unfold Seg33.relationRow575 at r575
    simpa [seg33Rho, mul_eq_zero] using r575
  · unfold Seg33.relationRow576 at r576
    simpa [seg33Rho, mul_eq_zero] using r576
  · unfold Seg33.relationRow577 at r577
    simpa [seg33Rho, mul_eq_zero] using r577
  · unfold Seg33.relationRow578 at r578
    simpa [seg33Rho, mul_eq_zero] using r578
  · unfold Seg33.relationRow579 at r579
    simpa [seg33Rho, mul_eq_zero] using r579
  · unfold Seg33.relationRow580 at r580
    simpa [seg33Rho, mul_eq_zero] using r580
  · unfold Seg33.relationRow581 at r581
    simpa [seg33Rho, mul_eq_zero] using r581
  · unfold Seg33.relationRow582 at r582
    simpa [seg33Rho, mul_eq_zero] using r582
  · unfold Seg33.relationRow583 at r583
    simpa [seg33Rho, mul_eq_zero] using r583
  · unfold Seg33.relationRow584 at r584
    simpa [seg33Rho, mul_eq_zero] using r584
  · unfold Seg33.relationRow585 at r585
    simpa [seg33Rho, mul_eq_zero] using r585
  · unfold Seg33.relationRow586 at r586
    simpa [seg33Rho, mul_eq_zero] using r586
  · unfold Seg33.relationRow587 at r587
    simpa [seg33Rho, mul_eq_zero] using r587
  · unfold Seg33.relationRow588 at r588
    simpa [seg33Rho, mul_eq_zero] using r588
  · unfold Seg33.relationRow589 at r589
    simpa [seg33Rho, mul_eq_zero] using r589
  · unfold Seg33.relationRow590 at r590
    simpa [seg33Rho, mul_eq_zero] using r590
  · unfold Seg33.relationRow591 at r591
    simpa [seg33Rho, mul_eq_zero] using r591
  · unfold Seg33.relationRow592 at r592
    simpa [seg33Rho, mul_eq_zero] using r592
  · unfold Seg33.relationRow593 at r593
    simpa [seg33Rho, mul_eq_zero] using r593
  · unfold Seg33.relationRow594 at r594
    simpa [seg33Rho, mul_eq_zero] using r594
  · unfold Seg33.relationRow595 at r595
    simpa [seg33Rho, mul_eq_zero] using r595
  · unfold Seg33.relationRow596 at r596
    simpa [seg33Rho, mul_eq_zero] using r596
  · unfold Seg33.relationRow597 at r597
    simpa [seg33Rho, mul_eq_zero] using r597
  · unfold Seg33.relationRow598 at r598
    simpa [seg33Rho, mul_eq_zero] using r598
  · unfold Seg33.relationRow599 at r599
    simpa [seg33Rho, mul_eq_zero] using r599
  · unfold Seg33.relationRow600 at r600
    simpa [seg33Rho, mul_eq_zero] using r600
  · unfold Seg33.relationRow601 at r601
    simpa [seg33Rho, mul_eq_zero] using r601
  · unfold Seg33.relationRow602 at r602
    simpa [seg33Rho, mul_eq_zero] using r602
  · unfold Seg33.relationRow603 at r603
    simpa [seg33Rho, mul_eq_zero] using r603
  · unfold Seg33.relationRow604 at r604
    simpa [seg33Rho, mul_eq_zero] using r604
  · unfold Seg33.relationRow605 at r605
    simpa [seg33Rho, mul_eq_zero] using r605
  · unfold Seg33.relationRow606 at r606
    simpa [seg33Rho, mul_eq_zero] using r606
  · unfold Seg33.relationRow607 at r607
    simpa [seg33Rho, mul_eq_zero] using r607
  · unfold Seg33.relationRow608 at r608
    simpa [seg33Rho, mul_eq_zero] using r608
  · unfold Seg33.relationRow609 at r609
    simpa [seg33Rho, mul_eq_zero] using r609
  · unfold Seg33.relationRow610 at r610
    simpa [seg33Rho, mul_eq_zero] using r610
  · unfold Seg33.relationRow611 at r611
    simpa [seg33Rho, mul_eq_zero] using r611
  · unfold Seg33.relationRow612 at r612
    simpa [seg33Rho, mul_eq_zero] using r612
  · unfold Seg33.relationRow613 at r613
    simpa [seg33Rho, mul_eq_zero] using r613
  · unfold Seg33.relationRow614 at r614
    simpa [seg33Rho, mul_eq_zero] using r614
  · unfold Seg33.relationRow615 at r615
    simpa [seg33Rho, mul_eq_zero] using r615
  · unfold Seg33.relationRow616 at r616
    simpa [seg33Rho, mul_eq_zero] using r616
  · unfold Seg33.relationRow617 at r617
    simpa [seg33Rho, mul_eq_zero] using r617
  · unfold Seg33.relationRow618 at r618
    simpa [seg33Rho, mul_eq_zero] using r618
  · unfold Seg33.relationRow619 at r619
    simpa [seg33Rho, mul_eq_zero] using r619
  · unfold Seg33.relationRow620 at r620
    simpa [seg33Rho, mul_eq_zero] using r620
  · unfold Seg33.relationRow621 at r621
    simpa [seg33Rho, mul_eq_zero] using r621
  · unfold Seg33.relationRow622 at r622
    simpa [seg33Rho, mul_eq_zero] using r622
  · unfold Seg33.relationRow623 at r623
    simpa [seg33Rho, mul_eq_zero] using r623
  · unfold Seg33.relationRow624 at r624
    simpa [seg33Rho, mul_eq_zero] using r624
  · unfold Seg33.relationRow625 at r625
    simpa [seg33Rho, mul_eq_zero] using r625
  · unfold Seg33.relationRow626 at r626
    simpa [seg33Rho, mul_eq_zero] using r626
  · unfold Seg33.relationRow627 at r627
    simpa [seg33Rho, mul_eq_zero] using r627
  · unfold Seg33.relationRow628 at r628
    simpa [seg33Rho, mul_eq_zero] using r628
  · unfold Seg33.relationRow629 at r629
    simpa [seg33Rho, mul_eq_zero] using r629
  · unfold Seg33.relationRow630 at r630
    simpa [seg33Rho, mul_eq_zero] using r630
  · unfold Seg33.relationRow631 at r631
    simpa [seg33Rho, mul_eq_zero] using r631
  · unfold Seg33.relationRow632 at r632
    simpa [seg33Rho, mul_eq_zero] using r632
  · unfold Seg33.relationRow633 at r633
    simpa [seg33Rho, mul_eq_zero] using r633
  · unfold Seg33.relationRow634 at r634
    simpa [seg33Rho, mul_eq_zero] using r634
  · unfold Seg33.relationRow635 at r635
    simpa [seg33Rho, mul_eq_zero] using r635
  · unfold Seg33.relationRow636 at r636
    simpa [seg33Rho, mul_eq_zero] using r636
  · unfold Seg33.relationRow637 at r637
    simpa [seg33Rho, mul_eq_zero] using r637
  · unfold Seg33.relationRow638 at r638
    simpa [seg33Rho, mul_eq_zero] using r638
  · unfold Seg33.relationRow639 at r639
    simpa [seg33Rho, mul_eq_zero] using r639
  · unfold Seg33.relationRow640 at r640
    simpa [seg33Rho, mul_eq_zero] using r640
  · unfold Seg33.relationRow641 at r641
    simpa [seg33Rho, mul_eq_zero] using r641
  · unfold Seg33.relationRow642 at r642
    simpa [seg33Rho, mul_eq_zero] using r642
  · unfold Seg33.relationRow643 at r643
    simpa [seg33Rho, mul_eq_zero] using r643
  · unfold Seg33.relationRow644 at r644
    simpa [seg33Rho, mul_eq_zero] using r644
  · unfold Seg33.relationRow645 at r645
    simpa [seg33Rho, mul_eq_zero] using r645
  · unfold Seg33.relationRow646 at r646
    simpa [seg33Rho, mul_eq_zero] using r646
  · unfold Seg33.relationRow647 at r647
    simpa [seg33Rho, mul_eq_zero] using r647
  · unfold Seg33.relationRow648 at r648
    simpa [seg33Rho, mul_eq_zero] using r648
  · unfold Seg33.relationRow649 at r649
    simpa [seg33Rho, mul_eq_zero] using r649
  · unfold Seg33.relationRow650 at r650
    simpa [seg33Rho, mul_eq_zero] using r650
  · unfold Seg33.relationRow651 at r651
    simpa [seg33Rho, mul_eq_zero] using r651
  · unfold Seg33.relationRow652 at r652
    simpa [seg33Rho, mul_eq_zero] using r652
  · unfold Seg33.relationRow653 at r653
    simpa [seg33Rho, mul_eq_zero] using r653
  · unfold Seg33.relationRow654 at r654
    simpa [seg33Rho, mul_eq_zero] using r654
  · unfold Seg33.relationRow655 at r655
    simpa [seg33Rho, mul_eq_zero] using r655
  · unfold Seg33.relationRow656 at r656
    simpa [seg33Rho, mul_eq_zero] using r656
  · unfold Seg33.relationRow657 at r657
    simpa [seg33Rho, mul_eq_zero] using r657
  · unfold Seg33.relationRow658 at r658
    simpa [seg33Rho, mul_eq_zero] using r658
  · unfold Seg33.relationRow659 at r659
    simpa [seg33Rho, mul_eq_zero] using r659
  · unfold Seg33.relationRow660 at r660
    simpa [seg33Rho, mul_eq_zero] using r660
  · unfold Seg33.relationRow661 at r661
    simpa [seg33Rho, mul_eq_zero] using r661
  · unfold Seg33.relationRow662 at r662
    simpa [seg33Rho, mul_eq_zero] using r662
  · unfold Seg33.relationRow663 at r663
    simpa [seg33Rho, mul_eq_zero] using r663
  · unfold Seg33.relationRow664 at r664
    simpa [seg33Rho, mul_eq_zero] using r664
  · unfold Seg33.relationRow665 at r665
    simpa [seg33Rho, mul_eq_zero] using r665
  · unfold Seg33.relationRow666 at r666
    simpa [seg33Rho, mul_eq_zero] using r666
  · unfold Seg33.relationRow667 at r667
    simpa [seg33Rho, mul_eq_zero] using r667
  · unfold Seg33.relationRow668 at r668
    simpa [seg33Rho, mul_eq_zero] using r668
  · unfold Seg33.relationRow669 at r669
    simpa [seg33Rho, mul_eq_zero] using r669
  · unfold Seg33.relationRow670 at r670
    simpa [seg33Rho, mul_eq_zero] using r670
  · unfold Seg33.relationRow671 at r671
    simpa [seg33Rho, mul_eq_zero] using r671
  · unfold Seg33.relationRow672 at r672
    simpa [seg33Rho, mul_eq_zero] using r672
  · unfold Seg33.relationRow673 at r673
    simpa [seg33Rho, mul_eq_zero] using r673
  · unfold Seg33.relationRow674 at r674
    simpa [seg33Rho, mul_eq_zero] using r674
  · unfold Seg33.relationRow675 at r675
    simpa [seg33Rho, mul_eq_zero] using r675
  · unfold Seg33.relationRow676 at r676
    simpa [seg33Rho, mul_eq_zero] using r676
  · unfold Seg33.relationRow677 at r677
    simpa [seg33Rho, mul_eq_zero] using r677
  · unfold Seg33.relationRow678 at r678
    simpa [seg33Rho, mul_eq_zero] using r678
  · unfold Seg33.relationRow679 at r679
    simpa [seg33Rho, mul_eq_zero] using r679
  · unfold Seg33.relationRow680 at r680
    simpa [seg33Rho, mul_eq_zero] using r680
  · unfold Seg33.relationRow681 at r681
    simpa [seg33Rho, mul_eq_zero] using r681
  · unfold Seg33.relationRow682 at r682
    simpa [seg33Rho, mul_eq_zero] using r682
  · unfold Seg33.relationRow683 at r683
    simpa [seg33Rho, mul_eq_zero] using r683
  · unfold Seg33.relationRow684 at r684
    simpa [seg33Rho, mul_eq_zero] using r684
  · unfold Seg33.relationRow685 at r685
    simpa [seg33Rho, mul_eq_zero] using r685
  · unfold Seg33.relationRow686 at r686
    simpa [seg33Rho, mul_eq_zero] using r686
  · unfold Seg33.relationRow687 at r687
    simpa [seg33Rho, mul_eq_zero] using r687
  · unfold Seg33.relationRow688 at r688
    simpa [seg33Rho, mul_eq_zero] using r688
  · unfold Seg33.relationRow689 at r689
    simpa [seg33Rho, mul_eq_zero] using r689
  · unfold Seg33.relationRow690 at r690
    simpa [seg33Rho, mul_eq_zero] using r690
  · unfold Seg33.relationRow691 at r691
    simpa [seg33Rho, mul_eq_zero] using r691
  · unfold Seg33.relationRow692 at r692
    simpa [seg33Rho, mul_eq_zero] using r692
  · unfold Seg33.relationRow693 at r693
    simpa [seg33Rho, mul_eq_zero] using r693
  · unfold Seg33.relationRow694 at r694
    simpa [seg33Rho, mul_eq_zero] using r694
  · unfold Seg33.relationRow695 at r695
    simpa [seg33Rho, mul_eq_zero] using r695
  · unfold Seg33.relationRow696 at r696
    simpa [seg33Rho, mul_eq_zero] using r696
  · unfold Seg33.relationRow697 at r697
    simpa [seg33Rho, mul_eq_zero] using r697
  · unfold Seg33.relationRow698 at r698
    simpa [seg33Rho, mul_eq_zero] using r698
  · unfold Seg33.relationRow699 at r699
    simpa [seg33Rho, mul_eq_zero] using r699
  · unfold Seg33.relationRow700 at r700
    simpa [seg33Rho, mul_eq_zero] using r700
  · unfold Seg33.relationRow701 at r701
    simpa [seg33Rho, mul_eq_zero] using r701
  · unfold Seg33.relationRow702 at r702
    simpa [seg33Rho, mul_eq_zero] using r702
  · unfold Seg33.relationRow703 at r703
    simpa [seg33Rho, mul_eq_zero] using r703
  · unfold Seg33.relationRow704 at r704
    simpa [seg33Rho, mul_eq_zero] using r704
  · unfold Seg33.relationRow705 at r705
    simpa [seg33Rho, mul_eq_zero] using r705
  · unfold Seg33.relationRow706 at r706
    simpa [seg33Rho, mul_eq_zero] using r706
  · unfold Seg33.relationRow707 at r707
    simpa [seg33Rho, mul_eq_zero] using r707
  · unfold Seg33.relationRow708 at r708
    simpa [seg33Rho, mul_eq_zero] using r708
  · unfold Seg33.relationRow709 at r709
    simpa [seg33Rho, mul_eq_zero] using r709
  · unfold Seg33.relationRow710 at r710
    simpa [seg33Rho, mul_eq_zero] using r710
  · unfold Seg33.relationRow711 at r711
    simpa [seg33Rho, mul_eq_zero] using r711
  · unfold Seg33.relationRow712 at r712
    simpa [seg33Rho, mul_eq_zero] using r712
  · unfold Seg33.relationRow713 at r713
    simpa [seg33Rho, mul_eq_zero] using r713
  · unfold Seg33.relationRow714 at r714
    simpa [seg33Rho, mul_eq_zero] using r714
  · unfold Seg33.relationRow715 at r715
    simpa [seg33Rho, mul_eq_zero] using r715
  · unfold Seg33.relationRow716 at r716
    simpa [seg33Rho, mul_eq_zero] using r716
  · unfold Seg33.relationRow717 at r717
    simpa [seg33Rho, mul_eq_zero] using r717
  · unfold Seg33.relationRow718 at r718
    simpa [seg33Rho, mul_eq_zero] using r718
  · unfold Seg33.relationRow719 at r719
    simpa [seg33Rho, mul_eq_zero] using r719
  · unfold Seg33.relationRow720 at r720
    simpa [seg33Rho, mul_eq_zero] using r720
  · unfold Seg33.relationRow721 at r721
    simpa [seg33Rho, mul_eq_zero] using r721
  · unfold Seg33.relationRow722 at r722
    simpa [seg33Rho, mul_eq_zero] using r722
  · unfold Seg33.relationRow723 at r723
    simpa [seg33Rho, mul_eq_zero] using r723
  · unfold Seg33.relationRow724 at r724
    simpa [seg33Rho, mul_eq_zero] using r724
  · unfold Seg33.relationRow725 at r725
    simpa [seg33Rho, mul_eq_zero] using r725
  · unfold Seg33.relationRow726 at r726
    simpa [seg33Rho, mul_eq_zero] using r726
  · unfold Seg33.relationRow727 at r727
    simpa [seg33Rho, mul_eq_zero] using r727
  · unfold Seg33.relationRow728 at r728
    simpa [seg33Rho, mul_eq_zero] using r728
  · unfold Seg33.relationRow729 at r729
    simpa [seg33Rho, mul_eq_zero] using r729
  · unfold Seg33.relationRow730 at r730
    simpa [seg33Rho, mul_eq_zero] using r730
  · unfold Seg33.relationRow731 at r731
    simpa [seg33Rho, mul_eq_zero] using r731
  · unfold Seg33.relationRow732 at r732
    simpa [seg33Rho, mul_eq_zero] using r732
  · unfold Seg33.relationRow733 at r733
    simpa [seg33Rho, mul_eq_zero] using r733
  · unfold Seg33.relationRow734 at r734
    simpa [seg33Rho, mul_eq_zero] using r734
  · unfold Seg33.relationRow735 at r735
    simpa [seg33Rho, mul_eq_zero] using r735
  · unfold Seg33.relationRow736 at r736
    simpa [seg33Rho, mul_eq_zero] using r736
  · unfold Seg33.relationRow737 at r737
    simpa [seg33Rho, mul_eq_zero] using r737
  · unfold Seg33.relationRow738 at r738
    simpa [seg33Rho, mul_eq_zero] using r738
  · unfold Seg33.relationRow739 at r739
    simpa [seg33Rho, mul_eq_zero] using r739
  · unfold Seg33.relationRow740 at r740
    simpa [seg33Rho, mul_eq_zero] using r740
  · unfold Seg33.relationRow741 at r741
    simpa [seg33Rho, mul_eq_zero] using r741
  · unfold Seg33.relationRow742 at r742
    simpa [seg33Rho, mul_eq_zero] using r742
  · unfold Seg33.relationRow743 at r743
    simpa [seg33Rho, mul_eq_zero] using r743
  · unfold Seg33.relationRow744 at r744
    simpa [seg33Rho, mul_eq_zero] using r744
  · unfold Seg33.relationRow745 at r745
    simpa [seg33Rho, mul_eq_zero] using r745
  · unfold Seg33.relationRow746 at r746
    simpa [seg33Rho, mul_eq_zero] using r746
  · unfold Seg33.relationRow747 at r747
    simpa [seg33Rho, mul_eq_zero] using r747
  · unfold Seg33.relationRow748 at r748
    simpa [seg33Rho, mul_eq_zero] using r748
  · unfold Seg33.relationRow749 at r749
    simpa [seg33Rho, mul_eq_zero] using r749
  · unfold Seg33.relationRow750 at r750
    simpa [seg33Rho, mul_eq_zero] using r750
  · unfold Seg33.relationRow751 at r751
    simpa [seg33Rho, mul_eq_zero] using r751
  · unfold Seg33.relationRow752 at r752
    simpa [seg33Rho, mul_eq_zero] using r752
  · unfold Seg33.relationRow753 at r753
    simpa [seg33Rho, mul_eq_zero] using r753
  · unfold Seg33.relationRow754 at r754
    simpa [seg33Rho, mul_eq_zero] using r754
  · unfold Seg33.relationRow755 at r755
    simpa [seg33Rho, mul_eq_zero] using r755
  · unfold Seg33.relationRow756 at r756
    simpa [seg33Rho, mul_eq_zero] using r756
  · unfold Seg33.relationRow757 at r757
    simpa [seg33Rho, mul_eq_zero] using r757
  · unfold Seg33.relationRow758 at r758
    simpa [seg33Rho, mul_eq_zero] using r758
  · unfold Seg33.relationRow759 at r759
    simpa [seg33Rho, mul_eq_zero] using r759
  · unfold Seg33.relationRow760 at r760
    simpa [seg33Rho, mul_eq_zero] using r760
  · unfold Seg33.relationRow761 at r761
    simpa [seg33Rho, mul_eq_zero] using r761
  · unfold Seg33.relationRow762 at r762
    simpa [seg33Rho, mul_eq_zero] using r762
  · unfold Seg33.relationRow763 at r763
    simpa [seg33Rho, mul_eq_zero] using r763
  · unfold Seg33.relationRow764 at r764
    simpa [seg33Rho, mul_eq_zero] using r764
  · unfold Seg33.relationRow765 at r765
    simpa [seg33Rho, mul_eq_zero] using r765
  · unfold Seg33.relationRow766 at r766
    simpa [seg33Rho, mul_eq_zero] using r766
  · unfold Seg33.relationRow767 at r767
    simpa [seg33Rho, mul_eq_zero] using r767
  · unfold Seg33.relationRow768 at r768
    simpa [seg33Rho, mul_eq_zero] using r768
  · unfold Seg33.relationRow769 at r769
    simpa [seg33Rho, mul_eq_zero] using r769
  · unfold Seg33.relationRow770 at r770
    simpa [seg33Rho, mul_eq_zero] using r770
  · unfold Seg33.relationRow771 at r771
    simpa [seg33Rho, mul_eq_zero] using r771
  · unfold Seg33.relationRow772 at r772
    simpa [seg33Rho, mul_eq_zero] using r772
  · unfold Seg33.relationRow773 at r773
    simpa [seg33Rho, mul_eq_zero] using r773
  · unfold Seg33.relationRow774 at r774
    simpa [seg33Rho, mul_eq_zero] using r774
  · unfold Seg33.relationRow775 at r775
    simpa [seg33Rho, mul_eq_zero] using r775
  · unfold Seg33.relationRow776 at r776
    simpa [seg33Rho, mul_eq_zero] using r776
  · unfold Seg33.relationRow777 at r777
    simpa [seg33Rho, mul_eq_zero] using r777
  · unfold Seg33.relationRow778 at r778
    simpa [seg33Rho, mul_eq_zero] using r778
  · unfold Seg33.relationRow779 at r779
    simpa [seg33Rho, mul_eq_zero] using r779
  · unfold Seg33.relationRow780 at r780
    simpa [seg33Rho, mul_eq_zero] using r780
  · unfold Seg33.relationRow781 at r781
    simpa [seg33Rho, mul_eq_zero] using r781
  · unfold Seg33.relationRow782 at r782
    simpa [seg33Rho, mul_eq_zero] using r782
  · unfold Seg33.relationRow783 at r783
    simpa [seg33Rho, mul_eq_zero] using r783
  · unfold Seg33.relationRow784 at r784
    simpa [seg33Rho, mul_eq_zero] using r784
  · unfold Seg33.relationRow785 at r785
    simpa [seg33Rho, mul_eq_zero] using r785
  · unfold Seg33.relationRow786 at r786
    simpa [seg33Rho, mul_eq_zero] using r786
  · unfold Seg33.relationRow787 at r787
    simpa [seg33Rho, mul_eq_zero] using r787
  · unfold Seg33.relationRow788 at r788
    simpa [seg33Rho, mul_eq_zero] using r788
  · unfold Seg33.relationRow789 at r789
    simpa [seg33Rho, mul_eq_zero] using r789
  · unfold Seg33.relationRow790 at r790
    simpa [seg33Rho, mul_eq_zero] using r790
  · unfold Seg33.relationRow792 at r792
    simpa [seg33Rho, mul_eq_zero] using r792
  · unfold Seg33.relationRow793 at r793
    simpa [seg33Rho, mul_eq_zero] using r793
  · unfold Seg33.relationRow794 at r794
    simpa [seg33Rho, mul_eq_zero] using r794
  · unfold Seg33.relationRow795 at r795
    simpa [seg33Rho, mul_eq_zero] using r795
  · unfold Seg33.relationRow796 at r796
    simpa [seg33Rho, mul_eq_zero] using r796
  · unfold Seg33.relationRow797 at r797
    simpa [seg33Rho, mul_eq_zero] using r797
  · unfold Seg33.relationRow798 at r798
    simpa [seg33Rho, mul_eq_zero] using r798
  · unfold Seg33.relationRow799 at r799
    simpa [seg33Rho, mul_eq_zero] using r799
  · unfold Seg33.relationRow800 at r800
    simpa [seg33Rho, mul_eq_zero] using r800
  · unfold Seg33.relationRow801 at r801
    simpa [seg33Rho, mul_eq_zero] using r801
  · unfold Seg33.relationRow802 at r802
    simpa [seg33Rho, mul_eq_zero] using r802
  · unfold Seg33.relationRow803 at r803
    simpa [seg33Rho, mul_eq_zero] using r803
  · unfold Seg33.relationRow804 at r804
    simpa [seg33Rho, mul_eq_zero] using r804
  · unfold Seg33.relationRow805 at r805
    simpa [seg33Rho, mul_eq_zero] using r805
  · unfold Seg33.relationRow806 at r806
    simpa [seg33Rho, mul_eq_zero] using r806
  · unfold Seg33.relationRow807 at r807
    simpa [seg33Rho, mul_eq_zero] using r807
  · unfold Seg33.relationRow808 at r808
    simpa [seg33Rho, mul_eq_zero] using r808
  · unfold Seg33.relationRow809 at r809
    simpa [seg33Rho, mul_eq_zero] using r809
  · unfold Seg33.relationRow810 at r810
    simpa [seg33Rho, mul_eq_zero] using r810
  · unfold Seg33.relationRow811 at r811
    simpa [seg33Rho, mul_eq_zero] using r811
  · unfold Seg33.relationRow812 at r812
    simpa [seg33Rho, mul_eq_zero] using r812
  · unfold Seg33.relationRow813 at r813
    simpa [seg33Rho, mul_eq_zero] using r813
  · unfold Seg33.relationRow814 at r814
    simpa [seg33Rho, mul_eq_zero] using r814
  · unfold Seg33.relationRow815 at r815
    simpa [seg33Rho, mul_eq_zero] using r815
  · unfold Seg33.relationRow816 at r816
    simpa [seg33Rho, mul_eq_zero] using r816
  · unfold Seg33.relationRow817 at r817
    simpa [seg33Rho, mul_eq_zero] using r817
  · unfold Seg33.relationRow818 at r818
    simpa [seg33Rho, mul_eq_zero] using r818
  · unfold Seg33.relationRow819 at r819
    simpa [seg33Rho, mul_eq_zero] using r819
  · unfold Seg33.relationRow820 at r820
    simpa [seg33Rho, mul_eq_zero] using r820
  · unfold Seg33.relationRow821 at r821
    simpa [seg33Rho, mul_eq_zero] using r821
  · unfold Seg33.relationRow822 at r822
    simpa [seg33Rho, mul_eq_zero] using r822
  · unfold Seg33.relationRow823 at r823
    simpa [seg33Rho, mul_eq_zero] using r823
  · unfold Seg33.relationRow824 at r824
    simpa [seg33Rho, mul_eq_zero] using r824
  · unfold Seg33.relationRow825 at r825
    simpa [seg33Rho, mul_eq_zero] using r825
  · unfold Seg33.relationRow826 at r826
    simpa [seg33Rho, mul_eq_zero] using r826
  · unfold Seg33.relationRow827 at r827
    simpa [seg33Rho, mul_eq_zero] using r827
  · unfold Seg33.relationRow828 at r828
    simpa [seg33Rho, mul_eq_zero] using r828
  · unfold Seg33.relationRow829 at r829
    simpa [seg33Rho, mul_eq_zero] using r829
  · unfold Seg33.relationRow830 at r830
    simpa [seg33Rho, mul_eq_zero] using r830
  · unfold Seg33.relationRow831 at r831
    simpa [seg33Rho, mul_eq_zero] using r831
  · unfold Seg33.relationRow832 at r832
    simpa [seg33Rho, mul_eq_zero] using r832
  · unfold Seg33.relationRow833 at r833
    simpa [seg33Rho, mul_eq_zero] using r833
  · unfold Seg33.relationRow834 at r834
    simpa [seg33Rho, mul_eq_zero] using r834
  · unfold Seg33.relationRow835 at r835
    simpa [seg33Rho, mul_eq_zero] using r835
  · unfold Seg33.relationRow836 at r836
    simpa [seg33Rho, mul_eq_zero] using r836
  · unfold Seg33.relationRow837 at r837
    simpa [seg33Rho, mul_eq_zero] using r837
  · unfold Seg33.relationRow838 at r838
    simpa [seg33Rho, mul_eq_zero] using r838
  · unfold Seg33.relationRow839 at r839
    simpa [seg33Rho, mul_eq_zero] using r839
  · unfold Seg33.relationRow840 at r840
    simpa [seg33Rho, mul_eq_zero] using r840
  · unfold Seg33.relationRow841 at r841
    simpa [seg33Rho, mul_eq_zero] using r841
  · unfold Seg33.relationRow842 at r842
    simpa [seg33Rho, mul_eq_zero] using r842
  · unfold Seg33.relationRow843 at r843
    simpa [seg33Rho, mul_eq_zero] using r843
  · unfold Seg33.relationRow844 at r844
    simpa [seg33Rho, mul_eq_zero] using r844
  · unfold Seg33.relationRow845 at r845
    simpa [seg33Rho, mul_eq_zero] using r845
  · unfold Seg33.relationRow846 at r846
    simpa [seg33Rho, mul_eq_zero] using r846
  · unfold Seg33.relationRow847 at r847
    simpa [seg33Rho, mul_eq_zero] using r847
  · unfold Seg33.relationRow848 at r848
    simpa [seg33Rho, mul_eq_zero] using r848
  · unfold Seg33.relationRow849 at r849
    simpa [seg33Rho, mul_eq_zero] using r849
  · unfold Seg33.relationRow850 at r850
    simpa [seg33Rho, mul_eq_zero] using r850
  · unfold Seg33.relationRow851 at r851
    simpa [seg33Rho, mul_eq_zero] using r851
  · unfold Seg33.relationRow852 at r852
    simpa [seg33Rho, mul_eq_zero] using r852
  · unfold Seg33.relationRow853 at r853
    simpa [seg33Rho, mul_eq_zero] using r853
  · unfold Seg33.relationRow854 at r854
    simpa [seg33Rho, mul_eq_zero] using r854
  · unfold Seg33.relationRow855 at r855
    simpa [seg33Rho, mul_eq_zero] using r855
  · unfold Seg33.relationRow856 at r856
    simpa [seg33Rho, mul_eq_zero] using r856
  · unfold Seg33.relationRow857 at r857
    simpa [seg33Rho, mul_eq_zero] using r857
  · unfold Seg33.relationRow858 at r858
    simpa [seg33Rho, mul_eq_zero] using r858
  · unfold Seg33.relationRow859 at r859
    simpa [seg33Rho, mul_eq_zero] using r859
  · unfold Seg33.relationRow860 at r860
    simpa [seg33Rho, mul_eq_zero] using r860
  · unfold Seg33.relationRow861 at r861
    simpa [seg33Rho, mul_eq_zero] using r861
  · unfold Seg33.relationRow862 at r862
    simpa [seg33Rho, mul_eq_zero] using r862
  · unfold Seg33.relationRow863 at r863
    simpa [seg33Rho, mul_eq_zero] using r863
  · unfold Seg33.relationRow864 at r864
    simpa [seg33Rho, mul_eq_zero] using r864
  · unfold Seg33.relationRow865 at r865
    simpa [seg33Rho, mul_eq_zero] using r865
  · unfold Seg33.relationRow866 at r866
    simpa [seg33Rho, mul_eq_zero] using r866
  · unfold Seg33.relationRow867 at r867
    simpa [seg33Rho, mul_eq_zero] using r867
  · unfold Seg33.relationRow868 at r868
    simpa [seg33Rho, mul_eq_zero] using r868
  · unfold Seg33.relationRow869 at r869
    simpa [seg33Rho, mul_eq_zero] using r869
  · unfold Seg33.relationRow870 at r870
    simpa [seg33Rho, mul_eq_zero] using r870
  · unfold Seg33.relationRow871 at r871
    simpa [seg33Rho, mul_eq_zero] using r871
  · unfold Seg33.relationRow872 at r872
    simpa [seg33Rho, mul_eq_zero] using r872
  · unfold Seg33.relationRow873 at r873
    simpa [seg33Rho, mul_eq_zero] using r873
  · unfold Seg33.relationRow874 at r874
    simpa [seg33Rho, mul_eq_zero] using r874
  · unfold Seg33.relationRow875 at r875
    simpa [seg33Rho, mul_eq_zero] using r875
  · unfold Seg33.relationRow876 at r876
    simpa [seg33Rho, mul_eq_zero] using r876
  · unfold Seg33.relationRow877 at r877
    simpa [seg33Rho, mul_eq_zero] using r877
  · unfold Seg33.relationRow878 at r878
    simpa [seg33Rho, mul_eq_zero] using r878
  · unfold Seg33.relationRow879 at r879
    simpa [seg33Rho, mul_eq_zero] using r879
  · unfold Seg33.relationRow880 at r880
    simpa [seg33Rho, mul_eq_zero] using r880
  · unfold Seg33.relationRow881 at r881
    simpa [seg33Rho, mul_eq_zero] using r881
  · unfold Seg33.relationRow882 at r882
    simpa [seg33Rho, mul_eq_zero] using r882
  · unfold Seg33.relationRow883 at r883
    simpa [seg33Rho, mul_eq_zero] using r883
  · unfold Seg33.relationRow884 at r884
    simpa [seg33Rho, mul_eq_zero] using r884
  · unfold Seg33.relationRow885 at r885
    simpa [seg33Rho, mul_eq_zero] using r885
  · unfold Seg33.relationRow886 at r886
    simpa [seg33Rho, mul_eq_zero] using r886
  · unfold Seg33.relationRow887 at r887
    simpa [seg33Rho, mul_eq_zero] using r887
  · unfold Seg33.relationRow888 at r888
    simpa [seg33Rho, mul_eq_zero] using r888
  · unfold Seg33.relationRow889 at r889
    simpa [seg33Rho, mul_eq_zero] using r889
  · unfold Seg33.relationRow890 at r890
    simpa [seg33Rho, mul_eq_zero] using r890
  · unfold Seg33.relationRow891 at r891
    simpa [seg33Rho, mul_eq_zero] using r891
  · unfold Seg33.relationRow892 at r892
    simpa [seg33Rho, mul_eq_zero] using r892
  · unfold Seg33.relationRow893 at r893
    simpa [seg33Rho, mul_eq_zero] using r893
  · unfold Seg33.relationRow894 at r894
    simpa [seg33Rho, mul_eq_zero] using r894
  · unfold Seg33.relationRow895 at r895
    simpa [seg33Rho, mul_eq_zero] using r895
  · unfold Seg33.relationRow896 at r896
    simpa [seg33Rho, mul_eq_zero] using r896
  · unfold Seg33.relationRow897 at r897
    simpa [seg33Rho, mul_eq_zero] using r897
  · unfold Seg33.relationRow898 at r898
    simpa [seg33Rho, mul_eq_zero] using r898
  · unfold Seg33.relationRow899 at r899
    simpa [seg33Rho, mul_eq_zero] using r899
  · unfold Seg33.relationRow900 at r900
    simpa [seg33Rho, mul_eq_zero] using r900
  · unfold Seg33.relationRow901 at r901
    simpa [seg33Rho, mul_eq_zero] using r901
  · unfold Seg33.relationRow902 at r902
    simpa [seg33Rho, mul_eq_zero] using r902
  · unfold Seg33.relationRow903 at r903
    simpa [seg33Rho, mul_eq_zero] using r903
  · unfold Seg33.relationRow904 at r904
    simpa [seg33Rho, mul_eq_zero] using r904
  · unfold Seg33.relationRow905 at r905
    simpa [seg33Rho, mul_eq_zero] using r905
  · unfold Seg33.relationRow906 at r906
    simpa [seg33Rho, mul_eq_zero] using r906
  · unfold Seg33.relationRow907 at r907
    simpa [seg33Rho, mul_eq_zero] using r907
  · unfold Seg33.relationRow908 at r908
    simpa [seg33Rho, mul_eq_zero] using r908
  · unfold Seg33.relationRow909 at r909
    simpa [seg33Rho, mul_eq_zero] using r909
  · unfold Seg33.relationRow910 at r910
    simpa [seg33Rho, mul_eq_zero] using r910
  · unfold Seg33.relationRow911 at r911
    simpa [seg33Rho, mul_eq_zero] using r911
  · unfold Seg33.relationRow912 at r912
    simpa [seg33Rho, mul_eq_zero] using r912
  · unfold Seg33.relationRow913 at r913
    simpa [seg33Rho, mul_eq_zero] using r913
  · unfold Seg33.relationRow914 at r914
    simpa [seg33Rho, mul_eq_zero] using r914
  · unfold Seg33.relationRow915 at r915
    simpa [seg33Rho, mul_eq_zero] using r915
  · unfold Seg33.relationRow916 at r916
    simpa [seg33Rho, mul_eq_zero] using r916
  · unfold Seg33.relationRow917 at r917
    simpa [seg33Rho, mul_eq_zero] using r917
  · unfold Seg33.relationRow918 at r918
    simpa [seg33Rho, mul_eq_zero] using r918
  · unfold Seg33.relationRow919 at r919
    simpa [seg33Rho, mul_eq_zero] using r919
  · unfold Seg33.relationRow920 at r920
    simpa [seg33Rho, mul_eq_zero] using r920
  · unfold Seg33.relationRow921 at r921
    simpa [seg33Rho, mul_eq_zero] using r921
  · unfold Seg33.relationRow922 at r922
    simpa [seg33Rho, mul_eq_zero] using r922
  · unfold Seg33.relationRow923 at r923
    simpa [seg33Rho, mul_eq_zero] using r923
  · unfold Seg33.relationRow924 at r924
    simpa [seg33Rho, mul_eq_zero] using r924
  · unfold Seg33.relationRow925 at r925
    simpa [seg33Rho, mul_eq_zero] using r925
  · unfold Seg33.relationRow926 at r926
    simpa [seg33Rho, mul_eq_zero] using r926
  · unfold Seg33.relationRow927 at r927
    simpa [seg33Rho, mul_eq_zero] using r927
  · unfold Seg33.relationRow928 at r928
    simpa [seg33Rho, mul_eq_zero] using r928
  · unfold Seg33.relationRow929 at r929
    simpa [seg33Rho, mul_eq_zero] using r929
  · unfold Seg33.relationRow930 at r930
    simpa [seg33Rho, mul_eq_zero] using r930
  · unfold Seg33.relationRow931 at r931
    simpa [seg33Rho, mul_eq_zero] using r931
  · unfold Seg33.relationRow932 at r932
    simpa [seg33Rho, mul_eq_zero] using r932
  · unfold Seg33.relationRow933 at r933
    simpa [seg33Rho, mul_eq_zero] using r933
  · unfold Seg33.relationRow934 at r934
    simpa [seg33Rho, mul_eq_zero] using r934
  · unfold Seg33.relationRow935 at r935
    simpa [seg33Rho, mul_eq_zero] using r935
  · unfold Seg33.relationRow936 at r936
    simpa [seg33Rho, mul_eq_zero] using r936
  · unfold Seg33.relationRow937 at r937
    simpa [seg33Rho, mul_eq_zero] using r937
  · unfold Seg33.relationRow938 at r938
    simpa [seg33Rho, mul_eq_zero] using r938
  · unfold Seg33.relationRow939 at r939
    simpa [seg33Rho, mul_eq_zero] using r939
  · unfold Seg33.relationRow940 at r940
    simpa [seg33Rho, mul_eq_zero] using r940
  · unfold Seg33.relationRow941 at r941
    simpa [seg33Rho, mul_eq_zero] using r941
  · unfold Seg33.relationRow942 at r942
    simpa [seg33Rho, mul_eq_zero] using r942
  · unfold Seg33.relationRow943 at r943
    simpa [seg33Rho, mul_eq_zero] using r943
  · unfold Seg33.relationRow944 at r944
    simpa [seg33Rho, mul_eq_zero] using r944
  · unfold Seg33.relationRow945 at r945
    simpa [seg33Rho, mul_eq_zero] using r945
  · unfold Seg33.relationRow946 at r946
    simpa [seg33Rho, mul_eq_zero] using r946
  · unfold Seg33.relationRow947 at r947
    simpa [seg33Rho, mul_eq_zero] using r947
  · unfold Seg33.relationRow948 at r948
    simpa [seg33Rho, mul_eq_zero] using r948
  · unfold Seg33.relationRow949 at r949
    simpa [seg33Rho, mul_eq_zero] using r949
  · unfold Seg33.relationRow950 at r950
    simpa [seg33Rho, mul_eq_zero] using r950
  · unfold Seg33.relationRow951 at r951
    simpa [seg33Rho, mul_eq_zero] using r951
  · unfold Seg33.relationRow952 at r952
    simpa [seg33Rho, mul_eq_zero] using r952
  · unfold Seg33.relationRow953 at r953
    simpa [seg33Rho, mul_eq_zero] using r953
  · unfold Seg33.relationRow954 at r954
    simpa [seg33Rho, mul_eq_zero] using r954
  · unfold Seg33.relationRow955 at r955
    simpa [seg33Rho, mul_eq_zero] using r955
  · unfold Seg33.relationRow956 at r956
    simpa [seg33Rho, mul_eq_zero] using r956
  · unfold Seg33.relationRow957 at r957
    simpa [seg33Rho, mul_eq_zero] using r957
  · unfold Seg33.relationRow958 at r958
    simpa [seg33Rho, mul_eq_zero] using r958
  · unfold Seg33.relationRow959 at r959
    simpa [seg33Rho, mul_eq_zero] using r959
  · unfold Seg33.relationRow960 at r960
    simpa [seg33Rho, mul_eq_zero] using r960
  · unfold Seg33.relationRow961 at r961
    simpa [seg33Rho, mul_eq_zero] using r961
  · unfold Seg33.relationRow962 at r962
    simpa [seg33Rho, mul_eq_zero] using r962
  · unfold Seg33.relationRow963 at r963
    simpa [seg33Rho, mul_eq_zero] using r963
  · unfold Seg33.relationRow964 at r964
    simpa [seg33Rho, mul_eq_zero] using r964
  · unfold Seg33.relationRow965 at r965
    simpa [seg33Rho, mul_eq_zero] using r965
  · unfold Seg33.relationRow966 at r966
    simpa [seg33Rho, mul_eq_zero] using r966
  · unfold Seg33.relationRow967 at r967
    simpa [seg33Rho, mul_eq_zero] using r967
  · unfold Seg33.relationRow968 at r968
    simpa [seg33Rho, mul_eq_zero] using r968
  · unfold Seg33.relationRow969 at r969
    simpa [seg33Rho, mul_eq_zero] using r969
  · unfold Seg33.relationRow970 at r970
    simpa [seg33Rho, mul_eq_zero] using r970
  · unfold Seg33.relationRow971 at r971
    simpa [seg33Rho, mul_eq_zero] using r971
  · unfold Seg33.relationRow972 at r972
    simpa [seg33Rho, mul_eq_zero] using r972
  · unfold Seg33.relationRow973 at r973
    simpa [seg33Rho, mul_eq_zero] using r973
  · unfold Seg33.relationRow974 at r974
    simpa [seg33Rho, mul_eq_zero] using r974
  · unfold Seg33.relationRow975 at r975
    simpa [seg33Rho, mul_eq_zero] using r975
  · unfold Seg33.relationRow976 at r976
    simpa [seg33Rho, mul_eq_zero] using r976
  · unfold Seg33.relationRow977 at r977
    simpa [seg33Rho, mul_eq_zero] using r977
  · unfold Seg33.relationRow978 at r978
    simpa [seg33Rho, mul_eq_zero] using r978
  · unfold Seg33.relationRow979 at r979
    simpa [seg33Rho, mul_eq_zero] using r979
  · unfold Seg33.relationRow980 at r980
    simpa [seg33Rho, mul_eq_zero] using r980
  · unfold Seg33.relationRow981 at r981
    simpa [seg33Rho, mul_eq_zero] using r981
  · unfold Seg33.relationRow982 at r982
    simpa [seg33Rho, mul_eq_zero] using r982
  · unfold Seg33.relationRow983 at r983
    simpa [seg33Rho, mul_eq_zero] using r983
  · unfold Seg33.relationRow984 at r984
    simpa [seg33Rho, mul_eq_zero] using r984
  · unfold Seg33.relationRow985 at r985
    simpa [seg33Rho, mul_eq_zero] using r985
  · unfold Seg33.relationRow986 at r986
    simpa [seg33Rho, mul_eq_zero] using r986
  · unfold Seg33.relationRow987 at r987
    simpa [seg33Rho, mul_eq_zero] using r987
  · unfold Seg33.relationRow988 at r988
    simpa [seg33Rho, mul_eq_zero] using r988
  · unfold Seg33.relationRow989 at r989
    simpa [seg33Rho, mul_eq_zero] using r989
  · unfold Seg33.relationRow990 at r990
    simpa [seg33Rho, mul_eq_zero] using r990
  · unfold Seg33.relationRow991 at r991
    simpa [seg33Rho, mul_eq_zero] using r991
  · unfold Seg33.relationRow992 at r992
    simpa [seg33Rho, mul_eq_zero] using r992
  · unfold Seg33.relationRow993 at r993
    simpa [seg33Rho, mul_eq_zero] using r993
  · unfold Seg33.relationRow994 at r994
    simpa [seg33Rho, mul_eq_zero] using r994
  · unfold Seg33.relationRow995 at r995
    simpa [seg33Rho, mul_eq_zero] using r995
  · unfold Seg33.relationRow996 at r996
    simpa [seg33Rho, mul_eq_zero] using r996
  · unfold Seg33.relationRow997 at r997
    simpa [seg33Rho, mul_eq_zero] using r997
  · unfold Seg33.relationRow998 at r998
    simpa [seg33Rho, mul_eq_zero] using r998
  · unfold Seg33.relationRow999 at r999
    simpa [seg33Rho, mul_eq_zero] using r999
  · unfold Seg33.relationRow1000 at r1000
    simpa [seg33Rho, mul_eq_zero] using r1000
  · unfold Seg33.relationRow1001 at r1001
    simpa [seg33Rho, mul_eq_zero] using r1001
  · unfold Seg33.relationRow1002 at r1002
    simpa [seg33Rho, mul_eq_zero] using r1002
  · unfold Seg33.relationRow1003 at r1003
    simpa [seg33Rho, mul_eq_zero] using r1003
  · unfold Seg33.relationRow1004 at r1004
    simpa [seg33Rho, mul_eq_zero] using r1004
  · unfold Seg33.relationRow1005 at r1005
    simpa [seg33Rho, mul_eq_zero] using r1005
  · unfold Seg33.relationRow1006 at r1006
    simpa [seg33Rho, mul_eq_zero] using r1006
  · unfold Seg33.relationRow1007 at r1007
    simpa [seg33Rho, mul_eq_zero] using r1007
  · unfold Seg33.relationRow1008 at r1008
    simpa [seg33Rho, mul_eq_zero] using r1008
  · unfold Seg33.relationRow1009 at r1009
    simpa [seg33Rho, mul_eq_zero] using r1009
  · unfold Seg33.relationRow1010 at r1010
    simpa [seg33Rho, mul_eq_zero] using r1010
  · unfold Seg33.relationRow1011 at r1011
    simpa [seg33Rho, mul_eq_zero] using r1011
  · unfold Seg33.relationRow1012 at r1012
    simpa [seg33Rho, mul_eq_zero] using r1012
  · unfold Seg33.relationRow1013 at r1013
    simpa [seg33Rho, mul_eq_zero] using r1013
  · unfold Seg33.relationRow1014 at r1014
    simpa [seg33Rho, mul_eq_zero] using r1014
  · unfold Seg33.relationRow1015 at r1015
    simpa [seg33Rho, mul_eq_zero] using r1015
  · unfold Seg33.relationRow1016 at r1016
    simpa [seg33Rho, mul_eq_zero] using r1016
  · unfold Seg33.relationRow1017 at r1017
    simpa [seg33Rho, mul_eq_zero] using r1017
  · unfold Seg33.relationRow1018 at r1018
    simpa [seg33Rho, mul_eq_zero] using r1018
  · unfold Seg33.relationRow1019 at r1019
    simpa [seg33Rho, mul_eq_zero] using r1019
  · unfold Seg33.relationRow1020 at r1020
    simpa [seg33Rho, mul_eq_zero] using r1020
  · unfold Seg33.relationRow1021 at r1021
    simpa [seg33Rho, mul_eq_zero] using r1021
  · unfold Seg33.relationRow1022 at r1022
    simpa [seg33Rho, mul_eq_zero] using r1022
  · unfold Seg33.relationRow1023 at r1023
    simpa [seg33Rho, mul_eq_zero] using r1023
  · unfold Seg33.relationRow1024 at r1024
    simpa [seg33Rho, mul_eq_zero] using r1024
  · unfold Seg33.relationRow1025 at r1025
    simpa [seg33Rho, mul_eq_zero] using r1025
  · unfold Seg33.relationRow1026 at r1026
    simpa [seg33Rho, mul_eq_zero] using r1026
  · unfold Seg33.relationRow1027 at r1027
    simpa [seg33Rho, mul_eq_zero] using r1027
  · unfold Seg33.relationRow1028 at r1028
    simpa [seg33Rho, mul_eq_zero] using r1028
  · unfold Seg33.relationRow1029 at r1029
    simpa [seg33Rho, mul_eq_zero] using r1029
  · unfold Seg33.relationRow1030 at r1030
    simpa [seg33Rho, mul_eq_zero] using r1030
  · unfold Seg33.relationRow1031 at r1031
    simpa [seg33Rho, mul_eq_zero] using r1031
  · unfold Seg33.relationRow1032 at r1032
    simpa [seg33Rho, mul_eq_zero] using r1032
  · unfold Seg33.relationRow1033 at r1033
    simpa [seg33Rho, mul_eq_zero] using r1033
  · unfold Seg33.relationRow1034 at r1034
    simpa [seg33Rho, mul_eq_zero] using r1034
  · unfold Seg33.relationRow1035 at r1035
    simpa [seg33Rho, mul_eq_zero] using r1035
  · unfold Seg33.relationRow1036 at r1036
    simpa [seg33Rho, mul_eq_zero] using r1036
  · unfold Seg33.relationRow1037 at r1037
    simpa [seg33Rho, mul_eq_zero] using r1037
  · unfold Seg33.relationRow1038 at r1038
    simpa [seg33Rho, mul_eq_zero] using r1038
  · unfold Seg33.relationRow1039 at r1039
    simpa [seg33Rho, mul_eq_zero] using r1039
  · unfold Seg33.relationRow1040 at r1040
    simpa [seg33Rho, mul_eq_zero] using r1040
  · unfold Seg33.relationRow1041 at r1041
    simpa [seg33Rho, mul_eq_zero] using r1041
  · unfold Seg33.relationRow1042 at r1042
    simpa [seg33Rho, mul_eq_zero] using r1042
  · unfold Seg33.relationRow1043 at r1043
    simpa [seg33Rho, mul_eq_zero] using r1043
  · unfold Seg33.relationRow1044 at r1044
    simpa [seg33Rho, mul_eq_zero] using r1044
  · unfold Seg33.relationRow1045 at r1045
    simpa [seg33Rho, mul_eq_zero] using r1045
  · exact seg33_hrec1 rho r281
  · exact seg33_hrec2 rho r791
  · rfl

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
