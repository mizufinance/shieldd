import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg8
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.DecafCompressToField

instance seg8FactPrime : Fact (Nat.Prime Seg8.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg8Rho (rho : Nat → Seg8.F) : Nat → Seg8.F
| 0 => 1
| 17 => rho 17
| 18 => rho 18
| i => if 210 ≤ i ∧ i ≤ 912 then rho (i + 5816) else rho i

theorem seg8_hrec1 (rho : Nat → Seg8.F)
    (h : Seg8.relationRow281 rho) :
    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => seg8Rho rho (231 + i.val))) = seg8Rho rho 230 := by
  have hrec := recover_ofFn_eq_recBits (seg8Rho rho) 231 253
  have hacc : powSumAcc (seg8Rho rho) 0 1 231 253 = seg8Rho rho 230 := by
    unfold Seg8.relationRow281 at h
    simpa [powSumAcc, seg8Rho] using h
  rw [hrec]
  rw [powSumAcc_eq] at hacc
  simpa [seg8Rho] using hacc

theorem seg8_hrec2 (rho : Nat → Seg8.F)
    (h : Seg8.relationRow791 rho) :
    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => seg8Rho rho (573 + i.val))) = seg8Rho rho 572 := by
  have hrec := recover_ofFn_eq_recBits (seg8Rho rho) 573 253
  have hacc : powSumAcc (seg8Rho rho) 0 1 573 253 = seg8Rho rho 572 := by
    unfold Seg8.relationRow791 at h
    simpa [powSumAcc, seg8Rho] using h
  rw [hrec]
  rw [powSumAcc_eq] at hacc
  simpa [seg8Rho] using hacc

theorem seg8_sound (rho : Nat → Seg8.F) (h : Seg8.relation rho) : Seg8.spec rho := by
  unfold Seg8.relation at h
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
  unfold Seg8.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4⟩
  unfold Seg8.relationPart1 at p1
  rcases p1 with ⟨r5, r6, r7, r8, r9⟩
  unfold Seg8.relationPart2 at p2
  rcases p2 with ⟨r10, r11, r12, r13, r14⟩
  unfold Seg8.relationPart3 at p3
  rcases p3 with ⟨r15, r16, r17, r18, r19⟩
  unfold Seg8.relationPart4 at p4
  rcases p4 with ⟨r20, r21, r22, r23, r24⟩
  unfold Seg8.relationPart5 at p5
  rcases p5 with ⟨r25, r26, r27, r28, r29⟩
  unfold Seg8.relationPart6 at p6
  rcases p6 with ⟨r30, r31, r32, r33, r34⟩
  unfold Seg8.relationPart7 at p7
  rcases p7 with ⟨r35, r36, r37, r38, r39⟩
  unfold Seg8.relationPart8 at p8
  rcases p8 with ⟨r40, r41, r42, r43, r44⟩
  unfold Seg8.relationPart9 at p9
  rcases p9 with ⟨r45, r46, r47, r48, r49⟩
  unfold Seg8.relationPart10 at p10
  rcases p10 with ⟨r50, r51, r52, r53, r54⟩
  unfold Seg8.relationPart11 at p11
  rcases p11 with ⟨r55, r56, r57, r58, r59⟩
  unfold Seg8.relationPart12 at p12
  rcases p12 with ⟨r60, r61, r62, r63, r64⟩
  unfold Seg8.relationPart13 at p13
  rcases p13 with ⟨r65, r66, r67, r68, r69⟩
  unfold Seg8.relationPart14 at p14
  rcases p14 with ⟨r70, r71, r72, r73, r74⟩
  unfold Seg8.relationPart15 at p15
  rcases p15 with ⟨r75, r76, r77, r78, r79⟩
  unfold Seg8.relationPart16 at p16
  rcases p16 with ⟨r80, r81, r82, r83, r84⟩
  unfold Seg8.relationPart17 at p17
  rcases p17 with ⟨r85, r86, r87, r88, r89⟩
  unfold Seg8.relationPart18 at p18
  rcases p18 with ⟨r90, r91, r92, r93, r94⟩
  unfold Seg8.relationPart19 at p19
  rcases p19 with ⟨r95, r96, r97, r98, r99⟩
  unfold Seg8.relationPart20 at p20
  rcases p20 with ⟨r100, r101, r102, r103, r104⟩
  unfold Seg8.relationPart21 at p21
  rcases p21 with ⟨r105, r106, r107, r108, r109⟩
  unfold Seg8.relationPart22 at p22
  rcases p22 with ⟨r110, r111, r112, r113, r114⟩
  unfold Seg8.relationPart23 at p23
  rcases p23 with ⟨r115, r116, r117, r118, r119⟩
  unfold Seg8.relationPart24 at p24
  rcases p24 with ⟨r120, r121, r122, r123, r124⟩
  unfold Seg8.relationPart25 at p25
  rcases p25 with ⟨r125, r126, r127, r128, r129⟩
  unfold Seg8.relationPart26 at p26
  rcases p26 with ⟨r130, r131, r132, r133, r134⟩
  unfold Seg8.relationPart27 at p27
  rcases p27 with ⟨r135, r136, r137, r138, r139⟩
  unfold Seg8.relationPart28 at p28
  rcases p28 with ⟨r140, r141, r142, r143, r144⟩
  unfold Seg8.relationPart29 at p29
  rcases p29 with ⟨r145, r146, r147, r148, r149⟩
  unfold Seg8.relationPart30 at p30
  rcases p30 with ⟨r150, r151, r152, r153, r154⟩
  unfold Seg8.relationPart31 at p31
  rcases p31 with ⟨r155, r156, r157, r158, r159⟩
  unfold Seg8.relationPart32 at p32
  rcases p32 with ⟨r160, r161, r162, r163, r164⟩
  unfold Seg8.relationPart33 at p33
  rcases p33 with ⟨r165, r166, r167, r168, r169⟩
  unfold Seg8.relationPart34 at p34
  rcases p34 with ⟨r170, r171, r172, r173, r174⟩
  unfold Seg8.relationPart35 at p35
  rcases p35 with ⟨r175, r176, r177, r178, r179⟩
  unfold Seg8.relationPart36 at p36
  rcases p36 with ⟨r180, r181, r182, r183, r184⟩
  unfold Seg8.relationPart37 at p37
  rcases p37 with ⟨r185, r186, r187, r188, r189⟩
  unfold Seg8.relationPart38 at p38
  rcases p38 with ⟨r190, r191, r192, r193, r194⟩
  unfold Seg8.relationPart39 at p39
  rcases p39 with ⟨r195, r196, r197, r198, r199⟩
  unfold Seg8.relationPart40 at p40
  rcases p40 with ⟨r200, r201, r202, r203, r204⟩
  unfold Seg8.relationPart41 at p41
  rcases p41 with ⟨r205, r206, r207, r208, r209⟩
  unfold Seg8.relationPart42 at p42
  rcases p42 with ⟨r210, r211, r212, r213, r214⟩
  unfold Seg8.relationPart43 at p43
  rcases p43 with ⟨r215, r216, r217, r218, r219⟩
  unfold Seg8.relationPart44 at p44
  rcases p44 with ⟨r220, r221, r222, r223, r224⟩
  unfold Seg8.relationPart45 at p45
  rcases p45 with ⟨r225, r226, r227, r228, r229⟩
  unfold Seg8.relationPart46 at p46
  rcases p46 with ⟨r230, r231, r232, r233, r234⟩
  unfold Seg8.relationPart47 at p47
  rcases p47 with ⟨r235, r236, r237, r238, r239⟩
  unfold Seg8.relationPart48 at p48
  rcases p48 with ⟨r240, r241, r242, r243, r244⟩
  unfold Seg8.relationPart49 at p49
  rcases p49 with ⟨r245, r246, r247, r248, r249⟩
  unfold Seg8.relationPart50 at p50
  rcases p50 with ⟨r250, r251, r252, r253, r254⟩
  unfold Seg8.relationPart51 at p51
  rcases p51 with ⟨r255, r256, r257, r258, r259⟩
  unfold Seg8.relationPart52 at p52
  rcases p52 with ⟨r260, r261, r262, r263, r264⟩
  unfold Seg8.relationPart53 at p53
  rcases p53 with ⟨r265, r266, r267, r268, r269⟩
  unfold Seg8.relationPart54 at p54
  rcases p54 with ⟨r270, r271, r272, r273, r274⟩
  unfold Seg8.relationPart55 at p55
  rcases p55 with ⟨r275, r276, r277, r278, r279⟩
  unfold Seg8.relationPart56 at p56
  rcases p56 with ⟨r280, r281, r282, r283, r284⟩
  unfold Seg8.relationPart57 at p57
  rcases p57 with ⟨r285, r286, r287, r288, r289⟩
  unfold Seg8.relationPart58 at p58
  rcases p58 with ⟨r290, r291, r292, r293, r294⟩
  unfold Seg8.relationPart59 at p59
  rcases p59 with ⟨r295, r296, r297, r298, r299⟩
  unfold Seg8.relationPart60 at p60
  rcases p60 with ⟨r300, r301, r302, r303, r304⟩
  unfold Seg8.relationPart61 at p61
  rcases p61 with ⟨r305, r306, r307, r308, r309⟩
  unfold Seg8.relationPart62 at p62
  rcases p62 with ⟨r310, r311, r312, r313, r314⟩
  unfold Seg8.relationPart63 at p63
  rcases p63 with ⟨r315, r316, r317, r318, r319⟩
  unfold Seg8.relationPart64 at p64
  rcases p64 with ⟨r320, r321, r322, r323, r324⟩
  unfold Seg8.relationPart65 at p65
  rcases p65 with ⟨r325, r326, r327, r328, r329⟩
  unfold Seg8.relationPart66 at p66
  rcases p66 with ⟨r330, r331, r332, r333, r334⟩
  unfold Seg8.relationPart67 at p67
  rcases p67 with ⟨r335, r336, r337, r338, r339⟩
  unfold Seg8.relationPart68 at p68
  rcases p68 with ⟨r340, r341, r342, r343, r344⟩
  unfold Seg8.relationPart69 at p69
  rcases p69 with ⟨r345, r346, r347, r348, r349⟩
  unfold Seg8.relationPart70 at p70
  rcases p70 with ⟨r350, r351, r352, r353, r354⟩
  unfold Seg8.relationPart71 at p71
  rcases p71 with ⟨r355, r356, r357, r358, r359⟩
  unfold Seg8.relationPart72 at p72
  rcases p72 with ⟨r360, r361, r362, r363, r364⟩
  unfold Seg8.relationPart73 at p73
  rcases p73 with ⟨r365, r366, r367, r368, r369⟩
  unfold Seg8.relationPart74 at p74
  rcases p74 with ⟨r370, r371, r372, r373, r374⟩
  unfold Seg8.relationPart75 at p75
  rcases p75 with ⟨r375, r376, r377, r378, r379⟩
  unfold Seg8.relationPart76 at p76
  rcases p76 with ⟨r380, r381, r382, r383, r384⟩
  unfold Seg8.relationPart77 at p77
  rcases p77 with ⟨r385, r386, r387, r388, r389⟩
  unfold Seg8.relationPart78 at p78
  rcases p78 with ⟨r390, r391, r392, r393, r394⟩
  unfold Seg8.relationPart79 at p79
  rcases p79 with ⟨r395, r396, r397, r398, r399⟩
  unfold Seg8.relationPart80 at p80
  rcases p80 with ⟨r400, r401, r402, r403, r404⟩
  unfold Seg8.relationPart81 at p81
  rcases p81 with ⟨r405, r406, r407, r408, r409⟩
  unfold Seg8.relationPart82 at p82
  rcases p82 with ⟨r410, r411, r412, r413, r414⟩
  unfold Seg8.relationPart83 at p83
  rcases p83 with ⟨r415, r416, r417, r418, r419⟩
  unfold Seg8.relationPart84 at p84
  rcases p84 with ⟨r420, r421, r422, r423, r424⟩
  unfold Seg8.relationPart85 at p85
  rcases p85 with ⟨r425, r426, r427, r428, r429⟩
  unfold Seg8.relationPart86 at p86
  rcases p86 with ⟨r430, r431, r432, r433, r434⟩
  unfold Seg8.relationPart87 at p87
  rcases p87 with ⟨r435, r436, r437, r438, r439⟩
  unfold Seg8.relationPart88 at p88
  rcases p88 with ⟨r440, r441, r442, r443, r444⟩
  unfold Seg8.relationPart89 at p89
  rcases p89 with ⟨r445, r446, r447, r448, r449⟩
  unfold Seg8.relationPart90 at p90
  rcases p90 with ⟨r450, r451, r452, r453, r454⟩
  unfold Seg8.relationPart91 at p91
  rcases p91 with ⟨r455, r456, r457, r458, r459⟩
  unfold Seg8.relationPart92 at p92
  rcases p92 with ⟨r460, r461, r462, r463, r464⟩
  unfold Seg8.relationPart93 at p93
  rcases p93 with ⟨r465, r466, r467, r468, r469⟩
  unfold Seg8.relationPart94 at p94
  rcases p94 with ⟨r470, r471, r472, r473, r474⟩
  unfold Seg8.relationPart95 at p95
  rcases p95 with ⟨r475, r476, r477, r478, r479⟩
  unfold Seg8.relationPart96 at p96
  rcases p96 with ⟨r480, r481, r482, r483, r484⟩
  unfold Seg8.relationPart97 at p97
  rcases p97 with ⟨r485, r486, r487, r488, r489⟩
  unfold Seg8.relationPart98 at p98
  rcases p98 with ⟨r490, r491, r492, r493, r494⟩
  unfold Seg8.relationPart99 at p99
  rcases p99 with ⟨r495, r496, r497, r498, r499⟩
  unfold Seg8.relationPart100 at p100
  rcases p100 with ⟨r500, r501, r502, r503, r504⟩
  unfold Seg8.relationPart101 at p101
  rcases p101 with ⟨r505, r506, r507, r508, r509⟩
  unfold Seg8.relationPart102 at p102
  rcases p102 with ⟨r510, r511, r512, r513, r514⟩
  unfold Seg8.relationPart103 at p103
  rcases p103 with ⟨r515, r516, r517, r518, r519⟩
  unfold Seg8.relationPart104 at p104
  rcases p104 with ⟨r520, r521, r522, r523, r524⟩
  unfold Seg8.relationPart105 at p105
  rcases p105 with ⟨r525, r526, r527, r528, r529⟩
  unfold Seg8.relationPart106 at p106
  rcases p106 with ⟨r530, r531, r532, r533, r534⟩
  unfold Seg8.relationPart107 at p107
  rcases p107 with ⟨r535, r536, r537, r538, r539⟩
  unfold Seg8.relationPart108 at p108
  rcases p108 with ⟨r540, r541, r542, r543, r544⟩
  unfold Seg8.relationPart109 at p109
  rcases p109 with ⟨r545, r546, r547, r548, r549⟩
  unfold Seg8.relationPart110 at p110
  rcases p110 with ⟨r550, r551, r552, r553, r554⟩
  unfold Seg8.relationPart111 at p111
  rcases p111 with ⟨r555, r556, r557, r558, r559⟩
  unfold Seg8.relationPart112 at p112
  rcases p112 with ⟨r560, r561, r562, r563, r564⟩
  unfold Seg8.relationPart113 at p113
  rcases p113 with ⟨r565, r566, r567, r568, r569⟩
  unfold Seg8.relationPart114 at p114
  rcases p114 with ⟨r570, r571, r572, r573, r574⟩
  unfold Seg8.relationPart115 at p115
  rcases p115 with ⟨r575, r576, r577, r578, r579⟩
  unfold Seg8.relationPart116 at p116
  rcases p116 with ⟨r580, r581, r582, r583, r584⟩
  unfold Seg8.relationPart117 at p117
  rcases p117 with ⟨r585, r586, r587, r588, r589⟩
  unfold Seg8.relationPart118 at p118
  rcases p118 with ⟨r590, r591, r592, r593, r594⟩
  unfold Seg8.relationPart119 at p119
  rcases p119 with ⟨r595, r596, r597, r598, r599⟩
  unfold Seg8.relationPart120 at p120
  rcases p120 with ⟨r600, r601, r602, r603, r604⟩
  unfold Seg8.relationPart121 at p121
  rcases p121 with ⟨r605, r606, r607, r608, r609⟩
  unfold Seg8.relationPart122 at p122
  rcases p122 with ⟨r610, r611, r612, r613, r614⟩
  unfold Seg8.relationPart123 at p123
  rcases p123 with ⟨r615, r616, r617, r618, r619⟩
  unfold Seg8.relationPart124 at p124
  rcases p124 with ⟨r620, r621, r622, r623, r624⟩
  unfold Seg8.relationPart125 at p125
  rcases p125 with ⟨r625, r626, r627, r628, r629⟩
  unfold Seg8.relationPart126 at p126
  rcases p126 with ⟨r630, r631, r632, r633, r634⟩
  unfold Seg8.relationPart127 at p127
  rcases p127 with ⟨r635, r636, r637, r638, r639⟩
  unfold Seg8.relationPart128 at p128
  rcases p128 with ⟨r640, r641, r642, r643, r644⟩
  unfold Seg8.relationPart129 at p129
  rcases p129 with ⟨r645, r646, r647, r648, r649⟩
  unfold Seg8.relationPart130 at p130
  rcases p130 with ⟨r650, r651, r652, r653, r654⟩
  unfold Seg8.relationPart131 at p131
  rcases p131 with ⟨r655, r656, r657, r658, r659⟩
  unfold Seg8.relationPart132 at p132
  rcases p132 with ⟨r660, r661, r662, r663, r664⟩
  unfold Seg8.relationPart133 at p133
  rcases p133 with ⟨r665, r666, r667, r668, r669⟩
  unfold Seg8.relationPart134 at p134
  rcases p134 with ⟨r670, r671, r672, r673, r674⟩
  unfold Seg8.relationPart135 at p135
  rcases p135 with ⟨r675, r676, r677, r678, r679⟩
  unfold Seg8.relationPart136 at p136
  rcases p136 with ⟨r680, r681, r682, r683, r684⟩
  unfold Seg8.relationPart137 at p137
  rcases p137 with ⟨r685, r686, r687, r688, r689⟩
  unfold Seg8.relationPart138 at p138
  rcases p138 with ⟨r690, r691, r692, r693, r694⟩
  unfold Seg8.relationPart139 at p139
  rcases p139 with ⟨r695, r696, r697, r698, r699⟩
  unfold Seg8.relationPart140 at p140
  rcases p140 with ⟨r700, r701, r702, r703, r704⟩
  unfold Seg8.relationPart141 at p141
  rcases p141 with ⟨r705, r706, r707, r708, r709⟩
  unfold Seg8.relationPart142 at p142
  rcases p142 with ⟨r710, r711, r712, r713, r714⟩
  unfold Seg8.relationPart143 at p143
  rcases p143 with ⟨r715, r716, r717, r718, r719⟩
  unfold Seg8.relationPart144 at p144
  rcases p144 with ⟨r720, r721, r722, r723, r724⟩
  unfold Seg8.relationPart145 at p145
  rcases p145 with ⟨r725, r726, r727, r728, r729⟩
  unfold Seg8.relationPart146 at p146
  rcases p146 with ⟨r730, r731, r732, r733, r734⟩
  unfold Seg8.relationPart147 at p147
  rcases p147 with ⟨r735, r736, r737, r738, r739⟩
  unfold Seg8.relationPart148 at p148
  rcases p148 with ⟨r740, r741, r742, r743, r744⟩
  unfold Seg8.relationPart149 at p149
  rcases p149 with ⟨r745, r746, r747, r748, r749⟩
  unfold Seg8.relationPart150 at p150
  rcases p150 with ⟨r750, r751, r752, r753, r754⟩
  unfold Seg8.relationPart151 at p151
  rcases p151 with ⟨r755, r756, r757, r758, r759⟩
  unfold Seg8.relationPart152 at p152
  rcases p152 with ⟨r760, r761, r762, r763, r764⟩
  unfold Seg8.relationPart153 at p153
  rcases p153 with ⟨r765, r766, r767, r768, r769⟩
  unfold Seg8.relationPart154 at p154
  rcases p154 with ⟨r770, r771, r772, r773, r774⟩
  unfold Seg8.relationPart155 at p155
  rcases p155 with ⟨r775, r776, r777, r778, r779⟩
  unfold Seg8.relationPart156 at p156
  rcases p156 with ⟨r780, r781, r782, r783, r784⟩
  unfold Seg8.relationPart157 at p157
  rcases p157 with ⟨r785, r786, r787, r788, r789⟩
  unfold Seg8.relationPart158 at p158
  rcases p158 with ⟨r790, r791, r792, r793, r794⟩
  unfold Seg8.relationPart159 at p159
  rcases p159 with ⟨r795, r796, r797, r798, r799⟩
  unfold Seg8.relationPart160 at p160
  rcases p160 with ⟨r800, r801, r802, r803, r804⟩
  unfold Seg8.relationPart161 at p161
  rcases p161 with ⟨r805, r806, r807, r808, r809⟩
  unfold Seg8.relationPart162 at p162
  rcases p162 with ⟨r810, r811, r812, r813, r814⟩
  unfold Seg8.relationPart163 at p163
  rcases p163 with ⟨r815, r816, r817, r818, r819⟩
  unfold Seg8.relationPart164 at p164
  rcases p164 with ⟨r820, r821, r822, r823, r824⟩
  unfold Seg8.relationPart165 at p165
  rcases p165 with ⟨r825, r826, r827, r828, r829⟩
  unfold Seg8.relationPart166 at p166
  rcases p166 with ⟨r830, r831, r832, r833, r834⟩
  unfold Seg8.relationPart167 at p167
  rcases p167 with ⟨r835, r836, r837, r838, r839⟩
  unfold Seg8.relationPart168 at p168
  rcases p168 with ⟨r840, r841, r842, r843, r844⟩
  unfold Seg8.relationPart169 at p169
  rcases p169 with ⟨r845, r846, r847, r848, r849⟩
  unfold Seg8.relationPart170 at p170
  rcases p170 with ⟨r850, r851, r852, r853, r854⟩
  unfold Seg8.relationPart171 at p171
  rcases p171 with ⟨r855, r856, r857, r858, r859⟩
  unfold Seg8.relationPart172 at p172
  rcases p172 with ⟨r860, r861, r862, r863, r864⟩
  unfold Seg8.relationPart173 at p173
  rcases p173 with ⟨r865, r866, r867, r868, r869⟩
  unfold Seg8.relationPart174 at p174
  rcases p174 with ⟨r870, r871, r872, r873, r874⟩
  unfold Seg8.relationPart175 at p175
  rcases p175 with ⟨r875, r876, r877, r878, r879⟩
  unfold Seg8.relationPart176 at p176
  rcases p176 with ⟨r880, r881, r882, r883, r884⟩
  unfold Seg8.relationPart177 at p177
  rcases p177 with ⟨r885, r886, r887, r888, r889⟩
  unfold Seg8.relationPart178 at p178
  rcases p178 with ⟨r890, r891, r892, r893, r894⟩
  unfold Seg8.relationPart179 at p179
  rcases p179 with ⟨r895, r896, r897, r898, r899⟩
  unfold Seg8.relationPart180 at p180
  rcases p180 with ⟨r900, r901, r902, r903, r904⟩
  unfold Seg8.relationPart181 at p181
  rcases p181 with ⟨r905, r906, r907, r908, r909⟩
  unfold Seg8.relationPart182 at p182
  rcases p182 with ⟨r910, r911, r912, r913, r914⟩
  unfold Seg8.relationPart183 at p183
  rcases p183 with ⟨r915, r916, r917, r918, r919⟩
  unfold Seg8.relationPart184 at p184
  rcases p184 with ⟨r920, r921, r922, r923, r924⟩
  unfold Seg8.relationPart185 at p185
  rcases p185 with ⟨r925, r926, r927, r928, r929⟩
  unfold Seg8.relationPart186 at p186
  rcases p186 with ⟨r930, r931, r932, r933, r934⟩
  unfold Seg8.relationPart187 at p187
  rcases p187 with ⟨r935, r936, r937, r938, r939⟩
  unfold Seg8.relationPart188 at p188
  rcases p188 with ⟨r940, r941, r942, r943, r944⟩
  unfold Seg8.relationPart189 at p189
  rcases p189 with ⟨r945, r946, r947, r948, r949⟩
  unfold Seg8.relationPart190 at p190
  rcases p190 with ⟨r950, r951, r952, r953, r954⟩
  unfold Seg8.relationPart191 at p191
  rcases p191 with ⟨r955, r956, r957, r958, r959⟩
  unfold Seg8.relationPart192 at p192
  rcases p192 with ⟨r960, r961, r962, r963, r964⟩
  unfold Seg8.relationPart193 at p193
  rcases p193 with ⟨r965, r966, r967, r968, r969⟩
  unfold Seg8.relationPart194 at p194
  rcases p194 with ⟨r970, r971, r972, r973, r974⟩
  unfold Seg8.relationPart195 at p195
  rcases p195 with ⟨r975, r976, r977, r978, r979⟩
  unfold Seg8.relationPart196 at p196
  rcases p196 with ⟨r980, r981, r982, r983, r984⟩
  unfold Seg8.relationPart197 at p197
  rcases p197 with ⟨r985, r986, r987, r988, r989⟩
  unfold Seg8.relationPart198 at p198
  rcases p198 with ⟨r990, r991, r992, r993, r994⟩
  unfold Seg8.relationPart199 at p199
  rcases p199 with ⟨r995, r996, r997, r998, r999⟩
  unfold Seg8.relationPart200 at p200
  rcases p200 with ⟨r1000, r1001, r1002, r1003, r1004⟩
  unfold Seg8.relationPart201 at p201
  rcases p201 with ⟨r1005, r1006, r1007, r1008, r1009⟩
  unfold Seg8.relationPart202 at p202
  rcases p202 with ⟨r1010, r1011, r1012, r1013, r1014⟩
  unfold Seg8.relationPart203 at p203
  rcases p203 with ⟨r1015, r1016, r1017, r1018, r1019⟩
  unfold Seg8.relationPart204 at p204
  rcases p204 with ⟨r1020, r1021, r1022, r1023, r1024⟩
  unfold Seg8.relationPart205 at p205
  rcases p205 with ⟨r1025, r1026, r1027, r1028, r1029⟩
  unfold Seg8.relationPart206 at p206
  rcases p206 with ⟨r1030, r1031, r1032, r1033, r1034⟩
  unfold Seg8.relationPart207 at p207
  rcases p207 with ⟨r1035, r1036, r1037, r1038, r1039⟩
  unfold Seg8.relationPart208 at p208
  rcases p208 with ⟨r1040, r1041, r1042, r1043, r1044⟩
  unfold Seg8.relationPart209 at p209
  have r1045 := p209
  change Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (seg8Rho rho 17) (seg8Rho rho 18) (seg8Rho rho 912 - seg8Rho rho 572)
  refine Shieldd.GnarkFormal.Extracted.DecafCompressToField.inst_compress_deployed_sound
    (seg8Rho rho)
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
  · unfold Seg8.relationRow0 at r0
    simpa [seg8Rho, mul_eq_zero] using r0
  · unfold Seg8.relationRow1 at r1
    simpa [seg8Rho, mul_eq_zero] using r1
  · unfold Seg8.relationRow2 at r2
    simpa [seg8Rho, mul_eq_zero] using r2
  · unfold Seg8.relationRow3 at r3
    simpa [seg8Rho, mul_eq_zero] using r3
  · unfold Seg8.relationRow4 at r4
    simpa [seg8Rho, mul_eq_zero] using r4
  · unfold Seg8.relationRow5 at r5
    simpa [seg8Rho, mul_eq_zero] using r5
  · unfold Seg8.relationRow6 at r6
    simpa [seg8Rho, mul_eq_zero] using r6
  · unfold Seg8.relationRow7 at r7
    simpa [seg8Rho, mul_eq_zero] using r7
  · unfold Seg8.relationRow8 at r8
    simpa [seg8Rho, mul_eq_zero] using r8
  · unfold Seg8.relationRow9 at r9
    simpa [seg8Rho, mul_eq_zero] using r9
  · unfold Seg8.relationRow10 at r10
    simpa [seg8Rho, mul_eq_zero] using r10
  · unfold Seg8.relationRow11 at r11
    simpa [seg8Rho, mul_eq_zero] using r11
  · unfold Seg8.relationRow12 at r12
    simpa [seg8Rho, mul_eq_zero] using r12
  · unfold Seg8.relationRow13 at r13
    simpa [seg8Rho, mul_eq_zero] using r13
  · unfold Seg8.relationRow14 at r14
    simpa [seg8Rho, mul_eq_zero] using r14
  · unfold Seg8.relationRow15 at r15
    simpa [seg8Rho, mul_eq_zero] using r15
  · unfold Seg8.relationRow16 at r16
    simpa [seg8Rho, mul_eq_zero] using r16
  · unfold Seg8.relationRow17 at r17
    simpa [seg8Rho, mul_eq_zero] using r17
  · unfold Seg8.relationRow18 at r18
    simpa [seg8Rho, mul_eq_zero] using r18
  · unfold Seg8.relationRow19 at r19
    simpa [seg8Rho, mul_eq_zero] using r19
  · unfold Seg8.relationRow20 at r20
    simpa [seg8Rho, mul_eq_zero] using r20
  · unfold Seg8.relationRow21 at r21
    simpa [seg8Rho, mul_eq_zero] using r21
  · unfold Seg8.relationRow22 at r22
    simpa [seg8Rho, mul_eq_zero] using r22
  · unfold Seg8.relationRow23 at r23
    simpa [seg8Rho, mul_eq_zero] using r23
  · unfold Seg8.relationRow24 at r24
    simpa [seg8Rho, mul_eq_zero] using r24
  · unfold Seg8.relationRow25 at r25
    simpa [seg8Rho, mul_eq_zero] using r25
  · unfold Seg8.relationRow26 at r26
    simpa [seg8Rho, mul_eq_zero] using r26
  · unfold Seg8.relationRow27 at r27
    simpa [seg8Rho, mul_eq_zero] using r27
  · unfold Seg8.relationRow28 at r28
    simpa [seg8Rho, mul_eq_zero] using r28
  · unfold Seg8.relationRow29 at r29
    simpa [seg8Rho, mul_eq_zero] using r29
  · unfold Seg8.relationRow30 at r30
    simpa [seg8Rho, mul_eq_zero] using r30
  · unfold Seg8.relationRow31 at r31
    simpa [seg8Rho, mul_eq_zero] using r31
  · unfold Seg8.relationRow32 at r32
    simpa [seg8Rho, mul_eq_zero] using r32
  · unfold Seg8.relationRow33 at r33
    simpa [seg8Rho, mul_eq_zero] using r33
  · unfold Seg8.relationRow34 at r34
    simpa [seg8Rho, mul_eq_zero] using r34
  · unfold Seg8.relationRow35 at r35
    simpa [seg8Rho, mul_eq_zero] using r35
  · unfold Seg8.relationRow36 at r36
    simpa [seg8Rho, mul_eq_zero] using r36
  · unfold Seg8.relationRow37 at r37
    simpa [seg8Rho, mul_eq_zero] using r37
  · unfold Seg8.relationRow38 at r38
    simpa [seg8Rho, mul_eq_zero] using r38
  · unfold Seg8.relationRow39 at r39
    simpa [seg8Rho, mul_eq_zero] using r39
  · unfold Seg8.relationRow40 at r40
    simpa [seg8Rho, mul_eq_zero] using r40
  · unfold Seg8.relationRow41 at r41
    simpa [seg8Rho, mul_eq_zero] using r41
  · unfold Seg8.relationRow42 at r42
    simpa [seg8Rho, mul_eq_zero] using r42
  · unfold Seg8.relationRow43 at r43
    simpa [seg8Rho, mul_eq_zero] using r43
  · unfold Seg8.relationRow44 at r44
    simpa [seg8Rho, mul_eq_zero] using r44
  · unfold Seg8.relationRow45 at r45
    simpa [seg8Rho, mul_eq_zero] using r45
  · unfold Seg8.relationRow46 at r46
    simpa [seg8Rho, mul_eq_zero] using r46
  · unfold Seg8.relationRow47 at r47
    simpa [seg8Rho, mul_eq_zero] using r47
  · unfold Seg8.relationRow48 at r48
    simpa [seg8Rho, mul_eq_zero] using r48
  · unfold Seg8.relationRow49 at r49
    simpa [seg8Rho, mul_eq_zero] using r49
  · unfold Seg8.relationRow50 at r50
    simpa [seg8Rho, mul_eq_zero] using r50
  · unfold Seg8.relationRow51 at r51
    simpa [seg8Rho, mul_eq_zero] using r51
  · unfold Seg8.relationRow52 at r52
    simpa [seg8Rho, mul_eq_zero] using r52
  · unfold Seg8.relationRow53 at r53
    simpa [seg8Rho, mul_eq_zero] using r53
  · unfold Seg8.relationRow54 at r54
    simpa [seg8Rho, mul_eq_zero] using r54
  · unfold Seg8.relationRow55 at r55
    simpa [seg8Rho, mul_eq_zero] using r55
  · unfold Seg8.relationRow56 at r56
    simpa [seg8Rho, mul_eq_zero] using r56
  · unfold Seg8.relationRow57 at r57
    simpa [seg8Rho, mul_eq_zero] using r57
  · unfold Seg8.relationRow58 at r58
    simpa [seg8Rho, mul_eq_zero] using r58
  · unfold Seg8.relationRow59 at r59
    simpa [seg8Rho, mul_eq_zero] using r59
  · unfold Seg8.relationRow60 at r60
    simpa [seg8Rho, mul_eq_zero] using r60
  · unfold Seg8.relationRow61 at r61
    simpa [seg8Rho, mul_eq_zero] using r61
  · unfold Seg8.relationRow62 at r62
    simpa [seg8Rho, mul_eq_zero] using r62
  · unfold Seg8.relationRow63 at r63
    simpa [seg8Rho, mul_eq_zero] using r63
  · unfold Seg8.relationRow64 at r64
    simpa [seg8Rho, mul_eq_zero] using r64
  · unfold Seg8.relationRow65 at r65
    simpa [seg8Rho, mul_eq_zero] using r65
  · unfold Seg8.relationRow66 at r66
    simpa [seg8Rho, mul_eq_zero] using r66
  · unfold Seg8.relationRow67 at r67
    simpa [seg8Rho, mul_eq_zero] using r67
  · unfold Seg8.relationRow68 at r68
    simpa [seg8Rho, mul_eq_zero] using r68
  · unfold Seg8.relationRow69 at r69
    simpa [seg8Rho, mul_eq_zero] using r69
  · unfold Seg8.relationRow70 at r70
    simpa [seg8Rho, mul_eq_zero] using r70
  · unfold Seg8.relationRow71 at r71
    simpa [seg8Rho, mul_eq_zero] using r71
  · unfold Seg8.relationRow72 at r72
    simpa [seg8Rho, mul_eq_zero] using r72
  · unfold Seg8.relationRow73 at r73
    simpa [seg8Rho, mul_eq_zero] using r73
  · unfold Seg8.relationRow74 at r74
    simpa [seg8Rho, mul_eq_zero] using r74
  · unfold Seg8.relationRow75 at r75
    simpa [seg8Rho, mul_eq_zero] using r75
  · unfold Seg8.relationRow76 at r76
    simpa [seg8Rho, mul_eq_zero] using r76
  · unfold Seg8.relationRow77 at r77
    simpa [seg8Rho, mul_eq_zero] using r77
  · unfold Seg8.relationRow78 at r78
    simpa [seg8Rho, mul_eq_zero] using r78
  · unfold Seg8.relationRow79 at r79
    simpa [seg8Rho, mul_eq_zero] using r79
  · unfold Seg8.relationRow80 at r80
    simpa [seg8Rho, mul_eq_zero] using r80
  · unfold Seg8.relationRow81 at r81
    simpa [seg8Rho, mul_eq_zero] using r81
  · unfold Seg8.relationRow82 at r82
    simpa [seg8Rho, mul_eq_zero] using r82
  · unfold Seg8.relationRow83 at r83
    simpa [seg8Rho, mul_eq_zero] using r83
  · unfold Seg8.relationRow84 at r84
    simpa [seg8Rho, mul_eq_zero] using r84
  · unfold Seg8.relationRow85 at r85
    simpa [seg8Rho, mul_eq_zero] using r85
  · unfold Seg8.relationRow86 at r86
    simpa [seg8Rho, mul_eq_zero] using r86
  · unfold Seg8.relationRow87 at r87
    simpa [seg8Rho, mul_eq_zero] using r87
  · unfold Seg8.relationRow88 at r88
    simpa [seg8Rho, mul_eq_zero] using r88
  · unfold Seg8.relationRow89 at r89
    simpa [seg8Rho, mul_eq_zero] using r89
  · unfold Seg8.relationRow90 at r90
    simpa [seg8Rho, mul_eq_zero] using r90
  · unfold Seg8.relationRow91 at r91
    simpa [seg8Rho, mul_eq_zero] using r91
  · unfold Seg8.relationRow92 at r92
    simpa [seg8Rho, mul_eq_zero] using r92
  · unfold Seg8.relationRow93 at r93
    simpa [seg8Rho, mul_eq_zero] using r93
  · unfold Seg8.relationRow94 at r94
    simpa [seg8Rho, mul_eq_zero] using r94
  · unfold Seg8.relationRow95 at r95
    simpa [seg8Rho, mul_eq_zero] using r95
  · unfold Seg8.relationRow96 at r96
    simpa [seg8Rho, mul_eq_zero] using r96
  · unfold Seg8.relationRow97 at r97
    simpa [seg8Rho, mul_eq_zero] using r97
  · unfold Seg8.relationRow98 at r98
    simpa [seg8Rho, mul_eq_zero] using r98
  · unfold Seg8.relationRow99 at r99
    simpa [seg8Rho, mul_eq_zero] using r99
  · unfold Seg8.relationRow100 at r100
    simpa [seg8Rho, mul_eq_zero] using r100
  · unfold Seg8.relationRow101 at r101
    simpa [seg8Rho, mul_eq_zero] using r101
  · unfold Seg8.relationRow102 at r102
    simpa [seg8Rho, mul_eq_zero] using r102
  · unfold Seg8.relationRow103 at r103
    simpa [seg8Rho, mul_eq_zero] using r103
  · unfold Seg8.relationRow104 at r104
    simpa [seg8Rho, mul_eq_zero] using r104
  · unfold Seg8.relationRow105 at r105
    simpa [seg8Rho, mul_eq_zero] using r105
  · unfold Seg8.relationRow106 at r106
    simpa [seg8Rho, mul_eq_zero] using r106
  · unfold Seg8.relationRow107 at r107
    simpa [seg8Rho, mul_eq_zero] using r107
  · unfold Seg8.relationRow108 at r108
    simpa [seg8Rho, mul_eq_zero] using r108
  · unfold Seg8.relationRow109 at r109
    simpa [seg8Rho, mul_eq_zero] using r109
  · unfold Seg8.relationRow110 at r110
    simpa [seg8Rho, mul_eq_zero] using r110
  · unfold Seg8.relationRow111 at r111
    simpa [seg8Rho, mul_eq_zero] using r111
  · unfold Seg8.relationRow112 at r112
    simpa [seg8Rho, mul_eq_zero] using r112
  · unfold Seg8.relationRow113 at r113
    simpa [seg8Rho, mul_eq_zero] using r113
  · unfold Seg8.relationRow114 at r114
    simpa [seg8Rho, mul_eq_zero] using r114
  · unfold Seg8.relationRow115 at r115
    simpa [seg8Rho, mul_eq_zero] using r115
  · unfold Seg8.relationRow116 at r116
    simpa [seg8Rho, mul_eq_zero] using r116
  · unfold Seg8.relationRow117 at r117
    simpa [seg8Rho, mul_eq_zero] using r117
  · unfold Seg8.relationRow118 at r118
    simpa [seg8Rho, mul_eq_zero] using r118
  · unfold Seg8.relationRow119 at r119
    simpa [seg8Rho, mul_eq_zero] using r119
  · unfold Seg8.relationRow120 at r120
    simpa [seg8Rho, mul_eq_zero] using r120
  · unfold Seg8.relationRow121 at r121
    simpa [seg8Rho, mul_eq_zero] using r121
  · unfold Seg8.relationRow122 at r122
    simpa [seg8Rho, mul_eq_zero] using r122
  · unfold Seg8.relationRow123 at r123
    simpa [seg8Rho, mul_eq_zero] using r123
  · unfold Seg8.relationRow124 at r124
    simpa [seg8Rho, mul_eq_zero] using r124
  · unfold Seg8.relationRow125 at r125
    simpa [seg8Rho, mul_eq_zero] using r125
  · unfold Seg8.relationRow126 at r126
    simpa [seg8Rho, mul_eq_zero] using r126
  · unfold Seg8.relationRow127 at r127
    simpa [seg8Rho, mul_eq_zero] using r127
  · unfold Seg8.relationRow128 at r128
    simpa [seg8Rho, mul_eq_zero] using r128
  · unfold Seg8.relationRow129 at r129
    simpa [seg8Rho, mul_eq_zero] using r129
  · unfold Seg8.relationRow130 at r130
    simpa [seg8Rho, mul_eq_zero] using r130
  · unfold Seg8.relationRow131 at r131
    simpa [seg8Rho, mul_eq_zero] using r131
  · unfold Seg8.relationRow132 at r132
    simpa [seg8Rho, mul_eq_zero] using r132
  · unfold Seg8.relationRow133 at r133
    simpa [seg8Rho, mul_eq_zero] using r133
  · unfold Seg8.relationRow134 at r134
    simpa [seg8Rho, mul_eq_zero] using r134
  · unfold Seg8.relationRow135 at r135
    simpa [seg8Rho, mul_eq_zero] using r135
  · unfold Seg8.relationRow136 at r136
    simpa [seg8Rho, mul_eq_zero] using r136
  · unfold Seg8.relationRow137 at r137
    simpa [seg8Rho, mul_eq_zero] using r137
  · unfold Seg8.relationRow138 at r138
    simpa [seg8Rho, mul_eq_zero] using r138
  · unfold Seg8.relationRow139 at r139
    simpa [seg8Rho, mul_eq_zero] using r139
  · unfold Seg8.relationRow140 at r140
    simpa [seg8Rho, mul_eq_zero] using r140
  · unfold Seg8.relationRow141 at r141
    simpa [seg8Rho, mul_eq_zero] using r141
  · unfold Seg8.relationRow142 at r142
    simpa [seg8Rho, mul_eq_zero] using r142
  · unfold Seg8.relationRow143 at r143
    simpa [seg8Rho, mul_eq_zero] using r143
  · unfold Seg8.relationRow144 at r144
    simpa [seg8Rho, mul_eq_zero] using r144
  · unfold Seg8.relationRow145 at r145
    simpa [seg8Rho, mul_eq_zero] using r145
  · unfold Seg8.relationRow146 at r146
    simpa [seg8Rho, mul_eq_zero] using r146
  · unfold Seg8.relationRow147 at r147
    simpa [seg8Rho, mul_eq_zero] using r147
  · unfold Seg8.relationRow148 at r148
    simpa [seg8Rho, mul_eq_zero] using r148
  · unfold Seg8.relationRow149 at r149
    simpa [seg8Rho, mul_eq_zero] using r149
  · unfold Seg8.relationRow150 at r150
    simpa [seg8Rho, mul_eq_zero] using r150
  · unfold Seg8.relationRow151 at r151
    simpa [seg8Rho, mul_eq_zero] using r151
  · unfold Seg8.relationRow152 at r152
    simpa [seg8Rho, mul_eq_zero] using r152
  · unfold Seg8.relationRow153 at r153
    simpa [seg8Rho, mul_eq_zero] using r153
  · unfold Seg8.relationRow154 at r154
    simpa [seg8Rho, mul_eq_zero] using r154
  · unfold Seg8.relationRow155 at r155
    simpa [seg8Rho, mul_eq_zero] using r155
  · unfold Seg8.relationRow156 at r156
    simpa [seg8Rho, mul_eq_zero] using r156
  · unfold Seg8.relationRow157 at r157
    simpa [seg8Rho, mul_eq_zero] using r157
  · unfold Seg8.relationRow158 at r158
    simpa [seg8Rho, mul_eq_zero] using r158
  · unfold Seg8.relationRow159 at r159
    simpa [seg8Rho, mul_eq_zero] using r159
  · unfold Seg8.relationRow160 at r160
    simpa [seg8Rho, mul_eq_zero] using r160
  · unfold Seg8.relationRow161 at r161
    simpa [seg8Rho, mul_eq_zero] using r161
  · unfold Seg8.relationRow162 at r162
    simpa [seg8Rho, mul_eq_zero] using r162
  · unfold Seg8.relationRow163 at r163
    simpa [seg8Rho, mul_eq_zero] using r163
  · unfold Seg8.relationRow164 at r164
    simpa [seg8Rho, mul_eq_zero] using r164
  · unfold Seg8.relationRow165 at r165
    simpa [seg8Rho, mul_eq_zero] using r165
  · unfold Seg8.relationRow166 at r166
    simpa [seg8Rho, mul_eq_zero] using r166
  · unfold Seg8.relationRow167 at r167
    simpa [seg8Rho, mul_eq_zero] using r167
  · unfold Seg8.relationRow168 at r168
    simpa [seg8Rho, mul_eq_zero] using r168
  · unfold Seg8.relationRow169 at r169
    simpa [seg8Rho, mul_eq_zero] using r169
  · unfold Seg8.relationRow170 at r170
    simpa [seg8Rho, mul_eq_zero] using r170
  · unfold Seg8.relationRow171 at r171
    simpa [seg8Rho, mul_eq_zero] using r171
  · unfold Seg8.relationRow172 at r172
    simpa [seg8Rho, mul_eq_zero] using r172
  · unfold Seg8.relationRow173 at r173
    simpa [seg8Rho, mul_eq_zero] using r173
  · unfold Seg8.relationRow174 at r174
    simpa [seg8Rho, mul_eq_zero] using r174
  · unfold Seg8.relationRow175 at r175
    simpa [seg8Rho, mul_eq_zero] using r175
  · unfold Seg8.relationRow176 at r176
    simpa [seg8Rho, mul_eq_zero] using r176
  · unfold Seg8.relationRow177 at r177
    simpa [seg8Rho, mul_eq_zero] using r177
  · unfold Seg8.relationRow178 at r178
    simpa [seg8Rho, mul_eq_zero] using r178
  · unfold Seg8.relationRow179 at r179
    simpa [seg8Rho, mul_eq_zero] using r179
  · unfold Seg8.relationRow180 at r180
    simpa [seg8Rho, mul_eq_zero] using r180
  · unfold Seg8.relationRow181 at r181
    simpa [seg8Rho, mul_eq_zero] using r181
  · unfold Seg8.relationRow182 at r182
    simpa [seg8Rho, mul_eq_zero] using r182
  · unfold Seg8.relationRow183 at r183
    simpa [seg8Rho, mul_eq_zero] using r183
  · unfold Seg8.relationRow184 at r184
    simpa [seg8Rho, mul_eq_zero] using r184
  · unfold Seg8.relationRow185 at r185
    simpa [seg8Rho, mul_eq_zero] using r185
  · unfold Seg8.relationRow186 at r186
    simpa [seg8Rho, mul_eq_zero] using r186
  · unfold Seg8.relationRow187 at r187
    simpa [seg8Rho, mul_eq_zero] using r187
  · unfold Seg8.relationRow188 at r188
    simpa [seg8Rho, mul_eq_zero] using r188
  · unfold Seg8.relationRow189 at r189
    simpa [seg8Rho, mul_eq_zero] using r189
  · unfold Seg8.relationRow190 at r190
    simpa [seg8Rho, mul_eq_zero] using r190
  · unfold Seg8.relationRow191 at r191
    simpa [seg8Rho, mul_eq_zero] using r191
  · unfold Seg8.relationRow192 at r192
    simpa [seg8Rho, mul_eq_zero] using r192
  · unfold Seg8.relationRow193 at r193
    simpa [seg8Rho, mul_eq_zero] using r193
  · unfold Seg8.relationRow194 at r194
    simpa [seg8Rho, mul_eq_zero] using r194
  · unfold Seg8.relationRow195 at r195
    simpa [seg8Rho, mul_eq_zero] using r195
  · unfold Seg8.relationRow196 at r196
    simpa [seg8Rho, mul_eq_zero] using r196
  · unfold Seg8.relationRow197 at r197
    simpa [seg8Rho, mul_eq_zero] using r197
  · unfold Seg8.relationRow198 at r198
    simpa [seg8Rho, mul_eq_zero] using r198
  · unfold Seg8.relationRow199 at r199
    simpa [seg8Rho, mul_eq_zero] using r199
  · unfold Seg8.relationRow200 at r200
    simpa [seg8Rho, mul_eq_zero] using r200
  · unfold Seg8.relationRow201 at r201
    simpa [seg8Rho, mul_eq_zero] using r201
  · unfold Seg8.relationRow202 at r202
    simpa [seg8Rho, mul_eq_zero] using r202
  · unfold Seg8.relationRow203 at r203
    simpa [seg8Rho, mul_eq_zero] using r203
  · unfold Seg8.relationRow204 at r204
    simpa [seg8Rho, mul_eq_zero] using r204
  · unfold Seg8.relationRow205 at r205
    simpa [seg8Rho, mul_eq_zero] using r205
  · unfold Seg8.relationRow206 at r206
    simpa [seg8Rho, mul_eq_zero] using r206
  · unfold Seg8.relationRow207 at r207
    simpa [seg8Rho, mul_eq_zero] using r207
  · unfold Seg8.relationRow208 at r208
    simpa [seg8Rho, mul_eq_zero] using r208
  · unfold Seg8.relationRow209 at r209
    simpa [seg8Rho, mul_eq_zero] using r209
  · unfold Seg8.relationRow210 at r210
    simpa [seg8Rho, mul_eq_zero] using r210
  · unfold Seg8.relationRow211 at r211
    simpa [seg8Rho, mul_eq_zero] using r211
  · unfold Seg8.relationRow212 at r212
    simpa [seg8Rho, mul_eq_zero] using r212
  · unfold Seg8.relationRow213 at r213
    simpa [seg8Rho, mul_eq_zero] using r213
  · unfold Seg8.relationRow214 at r214
    simpa [seg8Rho, mul_eq_zero] using r214
  · unfold Seg8.relationRow215 at r215
    simpa [seg8Rho, mul_eq_zero] using r215
  · unfold Seg8.relationRow216 at r216
    simpa [seg8Rho, mul_eq_zero] using r216
  · unfold Seg8.relationRow217 at r217
    simpa [seg8Rho, mul_eq_zero] using r217
  · unfold Seg8.relationRow218 at r218
    simpa [seg8Rho, mul_eq_zero] using r218
  · unfold Seg8.relationRow219 at r219
    simpa [seg8Rho, mul_eq_zero] using r219
  · unfold Seg8.relationRow220 at r220
    simpa [seg8Rho, mul_eq_zero] using r220
  · unfold Seg8.relationRow221 at r221
    simpa [seg8Rho, mul_eq_zero] using r221
  · unfold Seg8.relationRow222 at r222
    simpa [seg8Rho, mul_eq_zero] using r222
  · unfold Seg8.relationRow223 at r223
    simpa [seg8Rho, mul_eq_zero] using r223
  · unfold Seg8.relationRow224 at r224
    simpa [seg8Rho, mul_eq_zero] using r224
  · unfold Seg8.relationRow225 at r225
    simpa [seg8Rho, mul_eq_zero] using r225
  · unfold Seg8.relationRow226 at r226
    simpa [seg8Rho, mul_eq_zero] using r226
  · unfold Seg8.relationRow227 at r227
    simpa [seg8Rho, mul_eq_zero] using r227
  · unfold Seg8.relationRow228 at r228
    simpa [seg8Rho, mul_eq_zero] using r228
  · unfold Seg8.relationRow229 at r229
    simpa [seg8Rho, mul_eq_zero] using r229
  · unfold Seg8.relationRow230 at r230
    simpa [seg8Rho, mul_eq_zero] using r230
  · unfold Seg8.relationRow231 at r231
    simpa [seg8Rho, mul_eq_zero] using r231
  · unfold Seg8.relationRow232 at r232
    simpa [seg8Rho, mul_eq_zero] using r232
  · unfold Seg8.relationRow233 at r233
    simpa [seg8Rho, mul_eq_zero] using r233
  · unfold Seg8.relationRow234 at r234
    simpa [seg8Rho, mul_eq_zero] using r234
  · unfold Seg8.relationRow235 at r235
    simpa [seg8Rho, mul_eq_zero] using r235
  · unfold Seg8.relationRow236 at r236
    simpa [seg8Rho, mul_eq_zero] using r236
  · unfold Seg8.relationRow237 at r237
    simpa [seg8Rho, mul_eq_zero] using r237
  · unfold Seg8.relationRow238 at r238
    simpa [seg8Rho, mul_eq_zero] using r238
  · unfold Seg8.relationRow239 at r239
    simpa [seg8Rho, mul_eq_zero] using r239
  · unfold Seg8.relationRow240 at r240
    simpa [seg8Rho, mul_eq_zero] using r240
  · unfold Seg8.relationRow241 at r241
    simpa [seg8Rho, mul_eq_zero] using r241
  · unfold Seg8.relationRow242 at r242
    simpa [seg8Rho, mul_eq_zero] using r242
  · unfold Seg8.relationRow243 at r243
    simpa [seg8Rho, mul_eq_zero] using r243
  · unfold Seg8.relationRow244 at r244
    simpa [seg8Rho, mul_eq_zero] using r244
  · unfold Seg8.relationRow245 at r245
    simpa [seg8Rho, mul_eq_zero] using r245
  · unfold Seg8.relationRow246 at r246
    simpa [seg8Rho, mul_eq_zero] using r246
  · unfold Seg8.relationRow247 at r247
    simpa [seg8Rho, mul_eq_zero] using r247
  · unfold Seg8.relationRow248 at r248
    simpa [seg8Rho, mul_eq_zero] using r248
  · unfold Seg8.relationRow249 at r249
    simpa [seg8Rho, mul_eq_zero] using r249
  · unfold Seg8.relationRow250 at r250
    simpa [seg8Rho, mul_eq_zero] using r250
  · unfold Seg8.relationRow251 at r251
    simpa [seg8Rho, mul_eq_zero] using r251
  · unfold Seg8.relationRow252 at r252
    simpa [seg8Rho, mul_eq_zero] using r252
  · unfold Seg8.relationRow253 at r253
    simpa [seg8Rho, mul_eq_zero] using r253
  · unfold Seg8.relationRow254 at r254
    simpa [seg8Rho, mul_eq_zero] using r254
  · unfold Seg8.relationRow255 at r255
    simpa [seg8Rho, mul_eq_zero] using r255
  · unfold Seg8.relationRow256 at r256
    simpa [seg8Rho, mul_eq_zero] using r256
  · unfold Seg8.relationRow257 at r257
    simpa [seg8Rho, mul_eq_zero] using r257
  · unfold Seg8.relationRow258 at r258
    simpa [seg8Rho, mul_eq_zero] using r258
  · unfold Seg8.relationRow259 at r259
    simpa [seg8Rho, mul_eq_zero] using r259
  · unfold Seg8.relationRow260 at r260
    simpa [seg8Rho, mul_eq_zero] using r260
  · unfold Seg8.relationRow261 at r261
    simpa [seg8Rho, mul_eq_zero] using r261
  · unfold Seg8.relationRow262 at r262
    simpa [seg8Rho, mul_eq_zero] using r262
  · unfold Seg8.relationRow263 at r263
    simpa [seg8Rho, mul_eq_zero] using r263
  · unfold Seg8.relationRow264 at r264
    simpa [seg8Rho, mul_eq_zero] using r264
  · unfold Seg8.relationRow265 at r265
    simpa [seg8Rho, mul_eq_zero] using r265
  · unfold Seg8.relationRow266 at r266
    simpa [seg8Rho, mul_eq_zero] using r266
  · unfold Seg8.relationRow267 at r267
    simpa [seg8Rho, mul_eq_zero] using r267
  · unfold Seg8.relationRow268 at r268
    simpa [seg8Rho, mul_eq_zero] using r268
  · unfold Seg8.relationRow269 at r269
    simpa [seg8Rho, mul_eq_zero] using r269
  · unfold Seg8.relationRow270 at r270
    simpa [seg8Rho, mul_eq_zero] using r270
  · unfold Seg8.relationRow271 at r271
    simpa [seg8Rho, mul_eq_zero] using r271
  · unfold Seg8.relationRow272 at r272
    simpa [seg8Rho, mul_eq_zero] using r272
  · unfold Seg8.relationRow273 at r273
    simpa [seg8Rho, mul_eq_zero] using r273
  · unfold Seg8.relationRow274 at r274
    simpa [seg8Rho, mul_eq_zero] using r274
  · unfold Seg8.relationRow275 at r275
    simpa [seg8Rho, mul_eq_zero] using r275
  · unfold Seg8.relationRow276 at r276
    simpa [seg8Rho, mul_eq_zero] using r276
  · unfold Seg8.relationRow277 at r277
    simpa [seg8Rho, mul_eq_zero] using r277
  · unfold Seg8.relationRow278 at r278
    simpa [seg8Rho, mul_eq_zero] using r278
  · unfold Seg8.relationRow279 at r279
    simpa [seg8Rho, mul_eq_zero] using r279
  · unfold Seg8.relationRow280 at r280
    simpa [seg8Rho, mul_eq_zero] using r280
  · unfold Seg8.relationRow282 at r282
    simpa [seg8Rho, mul_eq_zero] using r282
  · unfold Seg8.relationRow283 at r283
    simpa [seg8Rho, mul_eq_zero] using r283
  · unfold Seg8.relationRow284 at r284
    simpa [seg8Rho, mul_eq_zero] using r284
  · unfold Seg8.relationRow285 at r285
    simpa [seg8Rho, mul_eq_zero] using r285
  · unfold Seg8.relationRow286 at r286
    simpa [seg8Rho, mul_eq_zero] using r286
  · unfold Seg8.relationRow287 at r287
    simpa [seg8Rho, mul_eq_zero] using r287
  · unfold Seg8.relationRow288 at r288
    simpa [seg8Rho, mul_eq_zero] using r288
  · unfold Seg8.relationRow289 at r289
    simpa [seg8Rho, mul_eq_zero] using r289
  · unfold Seg8.relationRow290 at r290
    simpa [seg8Rho, mul_eq_zero] using r290
  · unfold Seg8.relationRow291 at r291
    simpa [seg8Rho, mul_eq_zero] using r291
  · unfold Seg8.relationRow292 at r292
    simpa [seg8Rho, mul_eq_zero] using r292
  · unfold Seg8.relationRow293 at r293
    simpa [seg8Rho, mul_eq_zero] using r293
  · unfold Seg8.relationRow294 at r294
    simpa [seg8Rho, mul_eq_zero] using r294
  · unfold Seg8.relationRow295 at r295
    simpa [seg8Rho, mul_eq_zero] using r295
  · unfold Seg8.relationRow296 at r296
    simpa [seg8Rho, mul_eq_zero] using r296
  · unfold Seg8.relationRow297 at r297
    simpa [seg8Rho, mul_eq_zero] using r297
  · unfold Seg8.relationRow298 at r298
    simpa [seg8Rho, mul_eq_zero] using r298
  · unfold Seg8.relationRow299 at r299
    simpa [seg8Rho, mul_eq_zero] using r299
  · unfold Seg8.relationRow300 at r300
    simpa [seg8Rho, mul_eq_zero] using r300
  · unfold Seg8.relationRow301 at r301
    simpa [seg8Rho, mul_eq_zero] using r301
  · unfold Seg8.relationRow302 at r302
    simpa [seg8Rho, mul_eq_zero] using r302
  · unfold Seg8.relationRow303 at r303
    simpa [seg8Rho, mul_eq_zero] using r303
  · unfold Seg8.relationRow304 at r304
    simpa [seg8Rho, mul_eq_zero] using r304
  · unfold Seg8.relationRow305 at r305
    simpa [seg8Rho, mul_eq_zero] using r305
  · unfold Seg8.relationRow306 at r306
    simpa [seg8Rho, mul_eq_zero] using r306
  · unfold Seg8.relationRow307 at r307
    simpa [seg8Rho, mul_eq_zero] using r307
  · unfold Seg8.relationRow308 at r308
    simpa [seg8Rho, mul_eq_zero] using r308
  · unfold Seg8.relationRow309 at r309
    simpa [seg8Rho, mul_eq_zero] using r309
  · unfold Seg8.relationRow310 at r310
    simpa [seg8Rho, mul_eq_zero] using r310
  · unfold Seg8.relationRow311 at r311
    simpa [seg8Rho, mul_eq_zero] using r311
  · unfold Seg8.relationRow312 at r312
    simpa [seg8Rho, mul_eq_zero] using r312
  · unfold Seg8.relationRow313 at r313
    simpa [seg8Rho, mul_eq_zero] using r313
  · unfold Seg8.relationRow314 at r314
    simpa [seg8Rho, mul_eq_zero] using r314
  · unfold Seg8.relationRow315 at r315
    simpa [seg8Rho, mul_eq_zero] using r315
  · unfold Seg8.relationRow316 at r316
    simpa [seg8Rho, mul_eq_zero] using r316
  · unfold Seg8.relationRow317 at r317
    simpa [seg8Rho, mul_eq_zero] using r317
  · unfold Seg8.relationRow318 at r318
    simpa [seg8Rho, mul_eq_zero] using r318
  · unfold Seg8.relationRow319 at r319
    simpa [seg8Rho, mul_eq_zero] using r319
  · unfold Seg8.relationRow320 at r320
    simpa [seg8Rho, mul_eq_zero] using r320
  · unfold Seg8.relationRow321 at r321
    simpa [seg8Rho, mul_eq_zero] using r321
  · unfold Seg8.relationRow322 at r322
    simpa [seg8Rho, mul_eq_zero] using r322
  · unfold Seg8.relationRow323 at r323
    simpa [seg8Rho, mul_eq_zero] using r323
  · unfold Seg8.relationRow324 at r324
    simpa [seg8Rho, mul_eq_zero] using r324
  · unfold Seg8.relationRow325 at r325
    simpa [seg8Rho, mul_eq_zero] using r325
  · unfold Seg8.relationRow326 at r326
    simpa [seg8Rho, mul_eq_zero] using r326
  · unfold Seg8.relationRow327 at r327
    simpa [seg8Rho, mul_eq_zero] using r327
  · unfold Seg8.relationRow328 at r328
    simpa [seg8Rho, mul_eq_zero] using r328
  · unfold Seg8.relationRow329 at r329
    simpa [seg8Rho, mul_eq_zero] using r329
  · unfold Seg8.relationRow330 at r330
    simpa [seg8Rho, mul_eq_zero] using r330
  · unfold Seg8.relationRow331 at r331
    simpa [seg8Rho, mul_eq_zero] using r331
  · unfold Seg8.relationRow332 at r332
    simpa [seg8Rho, mul_eq_zero] using r332
  · unfold Seg8.relationRow333 at r333
    simpa [seg8Rho, mul_eq_zero] using r333
  · unfold Seg8.relationRow334 at r334
    simpa [seg8Rho, mul_eq_zero] using r334
  · unfold Seg8.relationRow335 at r335
    simpa [seg8Rho, mul_eq_zero] using r335
  · unfold Seg8.relationRow336 at r336
    simpa [seg8Rho, mul_eq_zero] using r336
  · unfold Seg8.relationRow337 at r337
    simpa [seg8Rho, mul_eq_zero] using r337
  · unfold Seg8.relationRow338 at r338
    simpa [seg8Rho, mul_eq_zero] using r338
  · unfold Seg8.relationRow339 at r339
    simpa [seg8Rho, mul_eq_zero] using r339
  · unfold Seg8.relationRow340 at r340
    simpa [seg8Rho, mul_eq_zero] using r340
  · unfold Seg8.relationRow341 at r341
    simpa [seg8Rho, mul_eq_zero] using r341
  · unfold Seg8.relationRow342 at r342
    simpa [seg8Rho, mul_eq_zero] using r342
  · unfold Seg8.relationRow343 at r343
    simpa [seg8Rho, mul_eq_zero] using r343
  · unfold Seg8.relationRow344 at r344
    simpa [seg8Rho, mul_eq_zero] using r344
  · unfold Seg8.relationRow345 at r345
    simpa [seg8Rho, mul_eq_zero] using r345
  · unfold Seg8.relationRow346 at r346
    simpa [seg8Rho, mul_eq_zero] using r346
  · unfold Seg8.relationRow347 at r347
    simpa [seg8Rho, mul_eq_zero] using r347
  · unfold Seg8.relationRow348 at r348
    simpa [seg8Rho, mul_eq_zero] using r348
  · unfold Seg8.relationRow349 at r349
    simpa [seg8Rho, mul_eq_zero] using r349
  · unfold Seg8.relationRow350 at r350
    simpa [seg8Rho, mul_eq_zero] using r350
  · unfold Seg8.relationRow351 at r351
    simpa [seg8Rho, mul_eq_zero] using r351
  · unfold Seg8.relationRow352 at r352
    simpa [seg8Rho, mul_eq_zero] using r352
  · unfold Seg8.relationRow353 at r353
    simpa [seg8Rho, mul_eq_zero] using r353
  · unfold Seg8.relationRow354 at r354
    simpa [seg8Rho, mul_eq_zero] using r354
  · unfold Seg8.relationRow355 at r355
    simpa [seg8Rho, mul_eq_zero] using r355
  · unfold Seg8.relationRow356 at r356
    simpa [seg8Rho, mul_eq_zero] using r356
  · unfold Seg8.relationRow357 at r357
    simpa [seg8Rho, mul_eq_zero] using r357
  · unfold Seg8.relationRow358 at r358
    simpa [seg8Rho, mul_eq_zero] using r358
  · unfold Seg8.relationRow359 at r359
    simpa [seg8Rho, mul_eq_zero] using r359
  · unfold Seg8.relationRow360 at r360
    simpa [seg8Rho, mul_eq_zero] using r360
  · unfold Seg8.relationRow361 at r361
    simpa [seg8Rho, mul_eq_zero] using r361
  · unfold Seg8.relationRow362 at r362
    simpa [seg8Rho, mul_eq_zero] using r362
  · unfold Seg8.relationRow363 at r363
    simpa [seg8Rho, mul_eq_zero] using r363
  · unfold Seg8.relationRow364 at r364
    simpa [seg8Rho, mul_eq_zero] using r364
  · unfold Seg8.relationRow365 at r365
    simpa [seg8Rho, mul_eq_zero] using r365
  · unfold Seg8.relationRow366 at r366
    simpa [seg8Rho, mul_eq_zero] using r366
  · unfold Seg8.relationRow367 at r367
    simpa [seg8Rho, mul_eq_zero] using r367
  · unfold Seg8.relationRow368 at r368
    simpa [seg8Rho, mul_eq_zero] using r368
  · unfold Seg8.relationRow369 at r369
    simpa [seg8Rho, mul_eq_zero] using r369
  · unfold Seg8.relationRow370 at r370
    simpa [seg8Rho, mul_eq_zero] using r370
  · unfold Seg8.relationRow371 at r371
    simpa [seg8Rho, mul_eq_zero] using r371
  · unfold Seg8.relationRow372 at r372
    simpa [seg8Rho, mul_eq_zero] using r372
  · unfold Seg8.relationRow373 at r373
    simpa [seg8Rho, mul_eq_zero] using r373
  · unfold Seg8.relationRow374 at r374
    simpa [seg8Rho, mul_eq_zero] using r374
  · unfold Seg8.relationRow375 at r375
    simpa [seg8Rho, mul_eq_zero] using r375
  · unfold Seg8.relationRow376 at r376
    simpa [seg8Rho, mul_eq_zero] using r376
  · unfold Seg8.relationRow377 at r377
    simpa [seg8Rho, mul_eq_zero] using r377
  · unfold Seg8.relationRow378 at r378
    simpa [seg8Rho, mul_eq_zero] using r378
  · unfold Seg8.relationRow379 at r379
    simpa [seg8Rho, mul_eq_zero] using r379
  · unfold Seg8.relationRow380 at r380
    simpa [seg8Rho, mul_eq_zero] using r380
  · unfold Seg8.relationRow381 at r381
    simpa [seg8Rho, mul_eq_zero] using r381
  · unfold Seg8.relationRow382 at r382
    simpa [seg8Rho, mul_eq_zero] using r382
  · unfold Seg8.relationRow383 at r383
    simpa [seg8Rho, mul_eq_zero] using r383
  · unfold Seg8.relationRow384 at r384
    simpa [seg8Rho, mul_eq_zero] using r384
  · unfold Seg8.relationRow385 at r385
    simpa [seg8Rho, mul_eq_zero] using r385
  · unfold Seg8.relationRow386 at r386
    simpa [seg8Rho, mul_eq_zero] using r386
  · unfold Seg8.relationRow387 at r387
    simpa [seg8Rho, mul_eq_zero] using r387
  · unfold Seg8.relationRow388 at r388
    simpa [seg8Rho, mul_eq_zero] using r388
  · unfold Seg8.relationRow389 at r389
    simpa [seg8Rho, mul_eq_zero] using r389
  · unfold Seg8.relationRow390 at r390
    simpa [seg8Rho, mul_eq_zero] using r390
  · unfold Seg8.relationRow391 at r391
    simpa [seg8Rho, mul_eq_zero] using r391
  · unfold Seg8.relationRow392 at r392
    simpa [seg8Rho, mul_eq_zero] using r392
  · unfold Seg8.relationRow393 at r393
    simpa [seg8Rho, mul_eq_zero] using r393
  · unfold Seg8.relationRow394 at r394
    simpa [seg8Rho, mul_eq_zero] using r394
  · unfold Seg8.relationRow395 at r395
    simpa [seg8Rho, mul_eq_zero] using r395
  · unfold Seg8.relationRow396 at r396
    simpa [seg8Rho, mul_eq_zero] using r396
  · unfold Seg8.relationRow397 at r397
    simpa [seg8Rho, mul_eq_zero] using r397
  · unfold Seg8.relationRow398 at r398
    simpa [seg8Rho, mul_eq_zero] using r398
  · unfold Seg8.relationRow399 at r399
    simpa [seg8Rho, mul_eq_zero] using r399
  · unfold Seg8.relationRow400 at r400
    simpa [seg8Rho, mul_eq_zero] using r400
  · unfold Seg8.relationRow401 at r401
    simpa [seg8Rho, mul_eq_zero] using r401
  · unfold Seg8.relationRow402 at r402
    simpa [seg8Rho, mul_eq_zero] using r402
  · unfold Seg8.relationRow403 at r403
    simpa [seg8Rho, mul_eq_zero] using r403
  · unfold Seg8.relationRow404 at r404
    simpa [seg8Rho, mul_eq_zero] using r404
  · unfold Seg8.relationRow405 at r405
    simpa [seg8Rho, mul_eq_zero] using r405
  · unfold Seg8.relationRow406 at r406
    simpa [seg8Rho, mul_eq_zero] using r406
  · unfold Seg8.relationRow407 at r407
    simpa [seg8Rho, mul_eq_zero] using r407
  · unfold Seg8.relationRow408 at r408
    simpa [seg8Rho, mul_eq_zero] using r408
  · unfold Seg8.relationRow409 at r409
    simpa [seg8Rho, mul_eq_zero] using r409
  · unfold Seg8.relationRow410 at r410
    simpa [seg8Rho, mul_eq_zero] using r410
  · unfold Seg8.relationRow411 at r411
    simpa [seg8Rho, mul_eq_zero] using r411
  · unfold Seg8.relationRow412 at r412
    simpa [seg8Rho, mul_eq_zero] using r412
  · unfold Seg8.relationRow413 at r413
    simpa [seg8Rho, mul_eq_zero] using r413
  · unfold Seg8.relationRow414 at r414
    simpa [seg8Rho, mul_eq_zero] using r414
  · unfold Seg8.relationRow415 at r415
    simpa [seg8Rho, mul_eq_zero] using r415
  · unfold Seg8.relationRow416 at r416
    simpa [seg8Rho, mul_eq_zero] using r416
  · unfold Seg8.relationRow417 at r417
    simpa [seg8Rho, mul_eq_zero] using r417
  · unfold Seg8.relationRow418 at r418
    simpa [seg8Rho, mul_eq_zero] using r418
  · unfold Seg8.relationRow419 at r419
    simpa [seg8Rho, mul_eq_zero] using r419
  · unfold Seg8.relationRow420 at r420
    simpa [seg8Rho, mul_eq_zero] using r420
  · unfold Seg8.relationRow421 at r421
    simpa [seg8Rho, mul_eq_zero] using r421
  · unfold Seg8.relationRow422 at r422
    simpa [seg8Rho, mul_eq_zero] using r422
  · unfold Seg8.relationRow423 at r423
    simpa [seg8Rho, mul_eq_zero] using r423
  · unfold Seg8.relationRow424 at r424
    simpa [seg8Rho, mul_eq_zero] using r424
  · unfold Seg8.relationRow425 at r425
    simpa [seg8Rho, mul_eq_zero] using r425
  · unfold Seg8.relationRow426 at r426
    simpa [seg8Rho, mul_eq_zero] using r426
  · unfold Seg8.relationRow427 at r427
    simpa [seg8Rho, mul_eq_zero] using r427
  · unfold Seg8.relationRow428 at r428
    simpa [seg8Rho, mul_eq_zero] using r428
  · unfold Seg8.relationRow429 at r429
    simpa [seg8Rho, mul_eq_zero] using r429
  · unfold Seg8.relationRow430 at r430
    simpa [seg8Rho, mul_eq_zero] using r430
  · unfold Seg8.relationRow431 at r431
    simpa [seg8Rho, mul_eq_zero] using r431
  · unfold Seg8.relationRow432 at r432
    simpa [seg8Rho, mul_eq_zero] using r432
  · unfold Seg8.relationRow433 at r433
    simpa [seg8Rho, mul_eq_zero] using r433
  · unfold Seg8.relationRow434 at r434
    simpa [seg8Rho, mul_eq_zero] using r434
  · unfold Seg8.relationRow435 at r435
    simpa [seg8Rho, mul_eq_zero] using r435
  · unfold Seg8.relationRow436 at r436
    simpa [seg8Rho, mul_eq_zero] using r436
  · unfold Seg8.relationRow437 at r437
    simpa [seg8Rho, mul_eq_zero] using r437
  · unfold Seg8.relationRow438 at r438
    simpa [seg8Rho, mul_eq_zero] using r438
  · unfold Seg8.relationRow439 at r439
    simpa [seg8Rho, mul_eq_zero] using r439
  · unfold Seg8.relationRow440 at r440
    simpa [seg8Rho, mul_eq_zero] using r440
  · unfold Seg8.relationRow441 at r441
    simpa [seg8Rho, mul_eq_zero] using r441
  · unfold Seg8.relationRow442 at r442
    simpa [seg8Rho, mul_eq_zero] using r442
  · unfold Seg8.relationRow443 at r443
    simpa [seg8Rho, mul_eq_zero] using r443
  · unfold Seg8.relationRow444 at r444
    simpa [seg8Rho, mul_eq_zero] using r444
  · unfold Seg8.relationRow445 at r445
    simpa [seg8Rho, mul_eq_zero] using r445
  · unfold Seg8.relationRow446 at r446
    simpa [seg8Rho, mul_eq_zero] using r446
  · unfold Seg8.relationRow447 at r447
    simpa [seg8Rho, mul_eq_zero] using r447
  · unfold Seg8.relationRow448 at r448
    simpa [seg8Rho, mul_eq_zero] using r448
  · unfold Seg8.relationRow449 at r449
    simpa [seg8Rho, mul_eq_zero] using r449
  · unfold Seg8.relationRow450 at r450
    simpa [seg8Rho, mul_eq_zero] using r450
  · unfold Seg8.relationRow451 at r451
    simpa [seg8Rho, mul_eq_zero] using r451
  · unfold Seg8.relationRow452 at r452
    simpa [seg8Rho, mul_eq_zero] using r452
  · unfold Seg8.relationRow453 at r453
    simpa [seg8Rho, mul_eq_zero] using r453
  · unfold Seg8.relationRow454 at r454
    simpa [seg8Rho, mul_eq_zero] using r454
  · unfold Seg8.relationRow455 at r455
    simpa [seg8Rho, mul_eq_zero] using r455
  · unfold Seg8.relationRow456 at r456
    simpa [seg8Rho, mul_eq_zero] using r456
  · unfold Seg8.relationRow457 at r457
    simpa [seg8Rho, mul_eq_zero] using r457
  · unfold Seg8.relationRow458 at r458
    simpa [seg8Rho, mul_eq_zero] using r458
  · unfold Seg8.relationRow459 at r459
    simpa [seg8Rho, mul_eq_zero] using r459
  · unfold Seg8.relationRow460 at r460
    simpa [seg8Rho, mul_eq_zero] using r460
  · unfold Seg8.relationRow461 at r461
    simpa [seg8Rho, mul_eq_zero] using r461
  · unfold Seg8.relationRow462 at r462
    simpa [seg8Rho, mul_eq_zero] using r462
  · unfold Seg8.relationRow463 at r463
    simpa [seg8Rho, mul_eq_zero] using r463
  · unfold Seg8.relationRow464 at r464
    simpa [seg8Rho, mul_eq_zero] using r464
  · unfold Seg8.relationRow465 at r465
    simpa [seg8Rho, mul_eq_zero] using r465
  · unfold Seg8.relationRow466 at r466
    simpa [seg8Rho, mul_eq_zero] using r466
  · unfold Seg8.relationRow467 at r467
    simpa [seg8Rho, mul_eq_zero] using r467
  · unfold Seg8.relationRow468 at r468
    simpa [seg8Rho, mul_eq_zero] using r468
  · unfold Seg8.relationRow469 at r469
    simpa [seg8Rho, mul_eq_zero] using r469
  · unfold Seg8.relationRow470 at r470
    simpa [seg8Rho, mul_eq_zero] using r470
  · unfold Seg8.relationRow471 at r471
    simpa [seg8Rho, mul_eq_zero] using r471
  · unfold Seg8.relationRow472 at r472
    simpa [seg8Rho, mul_eq_zero] using r472
  · unfold Seg8.relationRow473 at r473
    simpa [seg8Rho, mul_eq_zero] using r473
  · unfold Seg8.relationRow474 at r474
    simpa [seg8Rho, mul_eq_zero] using r474
  · unfold Seg8.relationRow475 at r475
    simpa [seg8Rho, mul_eq_zero] using r475
  · unfold Seg8.relationRow476 at r476
    simpa [seg8Rho, mul_eq_zero] using r476
  · unfold Seg8.relationRow477 at r477
    simpa [seg8Rho, mul_eq_zero] using r477
  · unfold Seg8.relationRow478 at r478
    simpa [seg8Rho, mul_eq_zero] using r478
  · unfold Seg8.relationRow479 at r479
    simpa [seg8Rho, mul_eq_zero] using r479
  · unfold Seg8.relationRow480 at r480
    simpa [seg8Rho, mul_eq_zero] using r480
  · unfold Seg8.relationRow481 at r481
    simpa [seg8Rho, mul_eq_zero] using r481
  · unfold Seg8.relationRow482 at r482
    simpa [seg8Rho, mul_eq_zero] using r482
  · unfold Seg8.relationRow483 at r483
    simpa [seg8Rho, mul_eq_zero] using r483
  · unfold Seg8.relationRow484 at r484
    simpa [seg8Rho, mul_eq_zero] using r484
  · unfold Seg8.relationRow485 at r485
    simpa [seg8Rho, mul_eq_zero] using r485
  · unfold Seg8.relationRow486 at r486
    simpa [seg8Rho, mul_eq_zero] using r486
  · unfold Seg8.relationRow487 at r487
    simpa [seg8Rho, mul_eq_zero] using r487
  · unfold Seg8.relationRow488 at r488
    simpa [seg8Rho, mul_eq_zero] using r488
  · unfold Seg8.relationRow489 at r489
    simpa [seg8Rho, mul_eq_zero] using r489
  · unfold Seg8.relationRow490 at r490
    simpa [seg8Rho, mul_eq_zero] using r490
  · unfold Seg8.relationRow491 at r491
    simpa [seg8Rho, mul_eq_zero] using r491
  · unfold Seg8.relationRow492 at r492
    simpa [seg8Rho, mul_eq_zero] using r492
  · unfold Seg8.relationRow493 at r493
    simpa [seg8Rho, mul_eq_zero] using r493
  · unfold Seg8.relationRow494 at r494
    simpa [seg8Rho, mul_eq_zero] using r494
  · unfold Seg8.relationRow495 at r495
    simpa [seg8Rho, mul_eq_zero] using r495
  · unfold Seg8.relationRow496 at r496
    simpa [seg8Rho, mul_eq_zero] using r496
  · unfold Seg8.relationRow497 at r497
    simpa [seg8Rho, mul_eq_zero] using r497
  · unfold Seg8.relationRow498 at r498
    simpa [seg8Rho, mul_eq_zero] using r498
  · unfold Seg8.relationRow499 at r499
    simpa [seg8Rho, mul_eq_zero] using r499
  · unfold Seg8.relationRow500 at r500
    simpa [seg8Rho, mul_eq_zero] using r500
  · unfold Seg8.relationRow501 at r501
    simpa [seg8Rho, mul_eq_zero] using r501
  · unfold Seg8.relationRow502 at r502
    simpa [seg8Rho, mul_eq_zero] using r502
  · unfold Seg8.relationRow503 at r503
    simpa [seg8Rho, mul_eq_zero] using r503
  · unfold Seg8.relationRow504 at r504
    simpa [seg8Rho, mul_eq_zero] using r504
  · unfold Seg8.relationRow505 at r505
    simpa [seg8Rho, mul_eq_zero] using r505
  · unfold Seg8.relationRow506 at r506
    simpa [seg8Rho, mul_eq_zero] using r506
  · unfold Seg8.relationRow507 at r507
    simpa [seg8Rho, mul_eq_zero] using r507
  · unfold Seg8.relationRow508 at r508
    simpa [seg8Rho, mul_eq_zero] using r508
  · unfold Seg8.relationRow509 at r509
    simpa [seg8Rho, mul_eq_zero] using r509
  · unfold Seg8.relationRow510 at r510
    simpa [seg8Rho, mul_eq_zero] using r510
  · unfold Seg8.relationRow511 at r511
    simpa [seg8Rho, mul_eq_zero] using r511
  · unfold Seg8.relationRow512 at r512
    simpa [seg8Rho, mul_eq_zero] using r512
  · unfold Seg8.relationRow513 at r513
    simpa [seg8Rho, mul_eq_zero] using r513
  · unfold Seg8.relationRow514 at r514
    simpa [seg8Rho, mul_eq_zero] using r514
  · unfold Seg8.relationRow515 at r515
    simpa [seg8Rho, mul_eq_zero] using r515
  · unfold Seg8.relationRow516 at r516
    simpa [seg8Rho, mul_eq_zero] using r516
  · unfold Seg8.relationRow517 at r517
    simpa [seg8Rho, mul_eq_zero] using r517
  · unfold Seg8.relationRow518 at r518
    simpa [seg8Rho, mul_eq_zero] using r518
  · unfold Seg8.relationRow519 at r519
    simpa [seg8Rho, mul_eq_zero] using r519
  · unfold Seg8.relationRow520 at r520
    simpa [seg8Rho, mul_eq_zero] using r520
  · unfold Seg8.relationRow521 at r521
    simpa [seg8Rho, mul_eq_zero] using r521
  · unfold Seg8.relationRow522 at r522
    simpa [seg8Rho, mul_eq_zero] using r522
  · unfold Seg8.relationRow523 at r523
    simpa [seg8Rho, mul_eq_zero] using r523
  · unfold Seg8.relationRow524 at r524
    simpa [seg8Rho, mul_eq_zero] using r524
  · unfold Seg8.relationRow525 at r525
    simpa [seg8Rho, mul_eq_zero] using r525
  · unfold Seg8.relationRow526 at r526
    simpa [seg8Rho, mul_eq_zero] using r526
  · unfold Seg8.relationRow527 at r527
    simpa [seg8Rho, mul_eq_zero] using r527
  · unfold Seg8.relationRow528 at r528
    simpa [seg8Rho, mul_eq_zero] using r528
  · unfold Seg8.relationRow529 at r529
    simpa [seg8Rho, mul_eq_zero] using r529
  · unfold Seg8.relationRow530 at r530
    simpa [seg8Rho, mul_eq_zero] using r530
  · unfold Seg8.relationRow531 at r531
    simpa [seg8Rho, mul_eq_zero] using r531
  · unfold Seg8.relationRow532 at r532
    simpa [seg8Rho, mul_eq_zero] using r532
  · unfold Seg8.relationRow533 at r533
    simpa [seg8Rho, mul_eq_zero] using r533
  · unfold Seg8.relationRow534 at r534
    simpa [seg8Rho, mul_eq_zero] using r534
  · unfold Seg8.relationRow535 at r535
    simpa [seg8Rho, mul_eq_zero] using r535
  · unfold Seg8.relationRow536 at r536
    simpa [seg8Rho, mul_eq_zero] using r536
  · unfold Seg8.relationRow537 at r537
    simpa [seg8Rho, mul_eq_zero] using r537
  · unfold Seg8.relationRow538 at r538
    simpa [seg8Rho, mul_eq_zero] using r538
  · unfold Seg8.relationRow539 at r539
    simpa [seg8Rho, mul_eq_zero] using r539
  · unfold Seg8.relationRow540 at r540
    simpa [seg8Rho, mul_eq_zero] using r540
  · unfold Seg8.relationRow541 at r541
    simpa [seg8Rho, mul_eq_zero] using r541
  · unfold Seg8.relationRow542 at r542
    simpa [seg8Rho, mul_eq_zero] using r542
  · unfold Seg8.relationRow543 at r543
    simpa [seg8Rho, mul_eq_zero] using r543
  · unfold Seg8.relationRow544 at r544
    simpa [seg8Rho, mul_eq_zero] using r544
  · unfold Seg8.relationRow545 at r545
    simpa [seg8Rho, mul_eq_zero] using r545
  · unfold Seg8.relationRow546 at r546
    simpa [seg8Rho, mul_eq_zero] using r546
  · unfold Seg8.relationRow547 at r547
    simpa [seg8Rho, mul_eq_zero] using r547
  · unfold Seg8.relationRow548 at r548
    simpa [seg8Rho, mul_eq_zero] using r548
  · unfold Seg8.relationRow549 at r549
    simpa [seg8Rho, mul_eq_zero] using r549
  · unfold Seg8.relationRow550 at r550
    simpa [seg8Rho, mul_eq_zero] using r550
  · unfold Seg8.relationRow551 at r551
    simpa [seg8Rho, mul_eq_zero] using r551
  · unfold Seg8.relationRow552 at r552
    simpa [seg8Rho, mul_eq_zero] using r552
  · unfold Seg8.relationRow553 at r553
    simpa [seg8Rho, mul_eq_zero] using r553
  · unfold Seg8.relationRow554 at r554
    simpa [seg8Rho, mul_eq_zero] using r554
  · unfold Seg8.relationRow555 at r555
    simpa [seg8Rho, mul_eq_zero] using r555
  · unfold Seg8.relationRow556 at r556
    simpa [seg8Rho, mul_eq_zero] using r556
  · unfold Seg8.relationRow557 at r557
    simpa [seg8Rho, mul_eq_zero] using r557
  · unfold Seg8.relationRow558 at r558
    simpa [seg8Rho, mul_eq_zero] using r558
  · unfold Seg8.relationRow559 at r559
    simpa [seg8Rho, mul_eq_zero] using r559
  · unfold Seg8.relationRow560 at r560
    simpa [seg8Rho, mul_eq_zero] using r560
  · unfold Seg8.relationRow561 at r561
    simpa [seg8Rho, mul_eq_zero] using r561
  · unfold Seg8.relationRow562 at r562
    simpa [seg8Rho, mul_eq_zero] using r562
  · unfold Seg8.relationRow563 at r563
    simpa [seg8Rho, mul_eq_zero] using r563
  · unfold Seg8.relationRow564 at r564
    simpa [seg8Rho, mul_eq_zero] using r564
  · unfold Seg8.relationRow565 at r565
    simpa [seg8Rho, mul_eq_zero] using r565
  · unfold Seg8.relationRow566 at r566
    simpa [seg8Rho, mul_eq_zero] using r566
  · unfold Seg8.relationRow567 at r567
    simpa [seg8Rho, mul_eq_zero] using r567
  · unfold Seg8.relationRow568 at r568
    simpa [seg8Rho, mul_eq_zero] using r568
  · unfold Seg8.relationRow569 at r569
    simpa [seg8Rho, mul_eq_zero] using r569
  · unfold Seg8.relationRow570 at r570
    simpa [seg8Rho, mul_eq_zero] using r570
  · unfold Seg8.relationRow571 at r571
    simpa [seg8Rho, mul_eq_zero] using r571
  · unfold Seg8.relationRow572 at r572
    simpa [seg8Rho, mul_eq_zero] using r572
  · unfold Seg8.relationRow573 at r573
    simpa [seg8Rho, mul_eq_zero] using r573
  · unfold Seg8.relationRow574 at r574
    simpa [seg8Rho, mul_eq_zero] using r574
  · unfold Seg8.relationRow575 at r575
    simpa [seg8Rho, mul_eq_zero] using r575
  · unfold Seg8.relationRow576 at r576
    simpa [seg8Rho, mul_eq_zero] using r576
  · unfold Seg8.relationRow577 at r577
    simpa [seg8Rho, mul_eq_zero] using r577
  · unfold Seg8.relationRow578 at r578
    simpa [seg8Rho, mul_eq_zero] using r578
  · unfold Seg8.relationRow579 at r579
    simpa [seg8Rho, mul_eq_zero] using r579
  · unfold Seg8.relationRow580 at r580
    simpa [seg8Rho, mul_eq_zero] using r580
  · unfold Seg8.relationRow581 at r581
    simpa [seg8Rho, mul_eq_zero] using r581
  · unfold Seg8.relationRow582 at r582
    simpa [seg8Rho, mul_eq_zero] using r582
  · unfold Seg8.relationRow583 at r583
    simpa [seg8Rho, mul_eq_zero] using r583
  · unfold Seg8.relationRow584 at r584
    simpa [seg8Rho, mul_eq_zero] using r584
  · unfold Seg8.relationRow585 at r585
    simpa [seg8Rho, mul_eq_zero] using r585
  · unfold Seg8.relationRow586 at r586
    simpa [seg8Rho, mul_eq_zero] using r586
  · unfold Seg8.relationRow587 at r587
    simpa [seg8Rho, mul_eq_zero] using r587
  · unfold Seg8.relationRow588 at r588
    simpa [seg8Rho, mul_eq_zero] using r588
  · unfold Seg8.relationRow589 at r589
    simpa [seg8Rho, mul_eq_zero] using r589
  · unfold Seg8.relationRow590 at r590
    simpa [seg8Rho, mul_eq_zero] using r590
  · unfold Seg8.relationRow591 at r591
    simpa [seg8Rho, mul_eq_zero] using r591
  · unfold Seg8.relationRow592 at r592
    simpa [seg8Rho, mul_eq_zero] using r592
  · unfold Seg8.relationRow593 at r593
    simpa [seg8Rho, mul_eq_zero] using r593
  · unfold Seg8.relationRow594 at r594
    simpa [seg8Rho, mul_eq_zero] using r594
  · unfold Seg8.relationRow595 at r595
    simpa [seg8Rho, mul_eq_zero] using r595
  · unfold Seg8.relationRow596 at r596
    simpa [seg8Rho, mul_eq_zero] using r596
  · unfold Seg8.relationRow597 at r597
    simpa [seg8Rho, mul_eq_zero] using r597
  · unfold Seg8.relationRow598 at r598
    simpa [seg8Rho, mul_eq_zero] using r598
  · unfold Seg8.relationRow599 at r599
    simpa [seg8Rho, mul_eq_zero] using r599
  · unfold Seg8.relationRow600 at r600
    simpa [seg8Rho, mul_eq_zero] using r600
  · unfold Seg8.relationRow601 at r601
    simpa [seg8Rho, mul_eq_zero] using r601
  · unfold Seg8.relationRow602 at r602
    simpa [seg8Rho, mul_eq_zero] using r602
  · unfold Seg8.relationRow603 at r603
    simpa [seg8Rho, mul_eq_zero] using r603
  · unfold Seg8.relationRow604 at r604
    simpa [seg8Rho, mul_eq_zero] using r604
  · unfold Seg8.relationRow605 at r605
    simpa [seg8Rho, mul_eq_zero] using r605
  · unfold Seg8.relationRow606 at r606
    simpa [seg8Rho, mul_eq_zero] using r606
  · unfold Seg8.relationRow607 at r607
    simpa [seg8Rho, mul_eq_zero] using r607
  · unfold Seg8.relationRow608 at r608
    simpa [seg8Rho, mul_eq_zero] using r608
  · unfold Seg8.relationRow609 at r609
    simpa [seg8Rho, mul_eq_zero] using r609
  · unfold Seg8.relationRow610 at r610
    simpa [seg8Rho, mul_eq_zero] using r610
  · unfold Seg8.relationRow611 at r611
    simpa [seg8Rho, mul_eq_zero] using r611
  · unfold Seg8.relationRow612 at r612
    simpa [seg8Rho, mul_eq_zero] using r612
  · unfold Seg8.relationRow613 at r613
    simpa [seg8Rho, mul_eq_zero] using r613
  · unfold Seg8.relationRow614 at r614
    simpa [seg8Rho, mul_eq_zero] using r614
  · unfold Seg8.relationRow615 at r615
    simpa [seg8Rho, mul_eq_zero] using r615
  · unfold Seg8.relationRow616 at r616
    simpa [seg8Rho, mul_eq_zero] using r616
  · unfold Seg8.relationRow617 at r617
    simpa [seg8Rho, mul_eq_zero] using r617
  · unfold Seg8.relationRow618 at r618
    simpa [seg8Rho, mul_eq_zero] using r618
  · unfold Seg8.relationRow619 at r619
    simpa [seg8Rho, mul_eq_zero] using r619
  · unfold Seg8.relationRow620 at r620
    simpa [seg8Rho, mul_eq_zero] using r620
  · unfold Seg8.relationRow621 at r621
    simpa [seg8Rho, mul_eq_zero] using r621
  · unfold Seg8.relationRow622 at r622
    simpa [seg8Rho, mul_eq_zero] using r622
  · unfold Seg8.relationRow623 at r623
    simpa [seg8Rho, mul_eq_zero] using r623
  · unfold Seg8.relationRow624 at r624
    simpa [seg8Rho, mul_eq_zero] using r624
  · unfold Seg8.relationRow625 at r625
    simpa [seg8Rho, mul_eq_zero] using r625
  · unfold Seg8.relationRow626 at r626
    simpa [seg8Rho, mul_eq_zero] using r626
  · unfold Seg8.relationRow627 at r627
    simpa [seg8Rho, mul_eq_zero] using r627
  · unfold Seg8.relationRow628 at r628
    simpa [seg8Rho, mul_eq_zero] using r628
  · unfold Seg8.relationRow629 at r629
    simpa [seg8Rho, mul_eq_zero] using r629
  · unfold Seg8.relationRow630 at r630
    simpa [seg8Rho, mul_eq_zero] using r630
  · unfold Seg8.relationRow631 at r631
    simpa [seg8Rho, mul_eq_zero] using r631
  · unfold Seg8.relationRow632 at r632
    simpa [seg8Rho, mul_eq_zero] using r632
  · unfold Seg8.relationRow633 at r633
    simpa [seg8Rho, mul_eq_zero] using r633
  · unfold Seg8.relationRow634 at r634
    simpa [seg8Rho, mul_eq_zero] using r634
  · unfold Seg8.relationRow635 at r635
    simpa [seg8Rho, mul_eq_zero] using r635
  · unfold Seg8.relationRow636 at r636
    simpa [seg8Rho, mul_eq_zero] using r636
  · unfold Seg8.relationRow637 at r637
    simpa [seg8Rho, mul_eq_zero] using r637
  · unfold Seg8.relationRow638 at r638
    simpa [seg8Rho, mul_eq_zero] using r638
  · unfold Seg8.relationRow639 at r639
    simpa [seg8Rho, mul_eq_zero] using r639
  · unfold Seg8.relationRow640 at r640
    simpa [seg8Rho, mul_eq_zero] using r640
  · unfold Seg8.relationRow641 at r641
    simpa [seg8Rho, mul_eq_zero] using r641
  · unfold Seg8.relationRow642 at r642
    simpa [seg8Rho, mul_eq_zero] using r642
  · unfold Seg8.relationRow643 at r643
    simpa [seg8Rho, mul_eq_zero] using r643
  · unfold Seg8.relationRow644 at r644
    simpa [seg8Rho, mul_eq_zero] using r644
  · unfold Seg8.relationRow645 at r645
    simpa [seg8Rho, mul_eq_zero] using r645
  · unfold Seg8.relationRow646 at r646
    simpa [seg8Rho, mul_eq_zero] using r646
  · unfold Seg8.relationRow647 at r647
    simpa [seg8Rho, mul_eq_zero] using r647
  · unfold Seg8.relationRow648 at r648
    simpa [seg8Rho, mul_eq_zero] using r648
  · unfold Seg8.relationRow649 at r649
    simpa [seg8Rho, mul_eq_zero] using r649
  · unfold Seg8.relationRow650 at r650
    simpa [seg8Rho, mul_eq_zero] using r650
  · unfold Seg8.relationRow651 at r651
    simpa [seg8Rho, mul_eq_zero] using r651
  · unfold Seg8.relationRow652 at r652
    simpa [seg8Rho, mul_eq_zero] using r652
  · unfold Seg8.relationRow653 at r653
    simpa [seg8Rho, mul_eq_zero] using r653
  · unfold Seg8.relationRow654 at r654
    simpa [seg8Rho, mul_eq_zero] using r654
  · unfold Seg8.relationRow655 at r655
    simpa [seg8Rho, mul_eq_zero] using r655
  · unfold Seg8.relationRow656 at r656
    simpa [seg8Rho, mul_eq_zero] using r656
  · unfold Seg8.relationRow657 at r657
    simpa [seg8Rho, mul_eq_zero] using r657
  · unfold Seg8.relationRow658 at r658
    simpa [seg8Rho, mul_eq_zero] using r658
  · unfold Seg8.relationRow659 at r659
    simpa [seg8Rho, mul_eq_zero] using r659
  · unfold Seg8.relationRow660 at r660
    simpa [seg8Rho, mul_eq_zero] using r660
  · unfold Seg8.relationRow661 at r661
    simpa [seg8Rho, mul_eq_zero] using r661
  · unfold Seg8.relationRow662 at r662
    simpa [seg8Rho, mul_eq_zero] using r662
  · unfold Seg8.relationRow663 at r663
    simpa [seg8Rho, mul_eq_zero] using r663
  · unfold Seg8.relationRow664 at r664
    simpa [seg8Rho, mul_eq_zero] using r664
  · unfold Seg8.relationRow665 at r665
    simpa [seg8Rho, mul_eq_zero] using r665
  · unfold Seg8.relationRow666 at r666
    simpa [seg8Rho, mul_eq_zero] using r666
  · unfold Seg8.relationRow667 at r667
    simpa [seg8Rho, mul_eq_zero] using r667
  · unfold Seg8.relationRow668 at r668
    simpa [seg8Rho, mul_eq_zero] using r668
  · unfold Seg8.relationRow669 at r669
    simpa [seg8Rho, mul_eq_zero] using r669
  · unfold Seg8.relationRow670 at r670
    simpa [seg8Rho, mul_eq_zero] using r670
  · unfold Seg8.relationRow671 at r671
    simpa [seg8Rho, mul_eq_zero] using r671
  · unfold Seg8.relationRow672 at r672
    simpa [seg8Rho, mul_eq_zero] using r672
  · unfold Seg8.relationRow673 at r673
    simpa [seg8Rho, mul_eq_zero] using r673
  · unfold Seg8.relationRow674 at r674
    simpa [seg8Rho, mul_eq_zero] using r674
  · unfold Seg8.relationRow675 at r675
    simpa [seg8Rho, mul_eq_zero] using r675
  · unfold Seg8.relationRow676 at r676
    simpa [seg8Rho, mul_eq_zero] using r676
  · unfold Seg8.relationRow677 at r677
    simpa [seg8Rho, mul_eq_zero] using r677
  · unfold Seg8.relationRow678 at r678
    simpa [seg8Rho, mul_eq_zero] using r678
  · unfold Seg8.relationRow679 at r679
    simpa [seg8Rho, mul_eq_zero] using r679
  · unfold Seg8.relationRow680 at r680
    simpa [seg8Rho, mul_eq_zero] using r680
  · unfold Seg8.relationRow681 at r681
    simpa [seg8Rho, mul_eq_zero] using r681
  · unfold Seg8.relationRow682 at r682
    simpa [seg8Rho, mul_eq_zero] using r682
  · unfold Seg8.relationRow683 at r683
    simpa [seg8Rho, mul_eq_zero] using r683
  · unfold Seg8.relationRow684 at r684
    simpa [seg8Rho, mul_eq_zero] using r684
  · unfold Seg8.relationRow685 at r685
    simpa [seg8Rho, mul_eq_zero] using r685
  · unfold Seg8.relationRow686 at r686
    simpa [seg8Rho, mul_eq_zero] using r686
  · unfold Seg8.relationRow687 at r687
    simpa [seg8Rho, mul_eq_zero] using r687
  · unfold Seg8.relationRow688 at r688
    simpa [seg8Rho, mul_eq_zero] using r688
  · unfold Seg8.relationRow689 at r689
    simpa [seg8Rho, mul_eq_zero] using r689
  · unfold Seg8.relationRow690 at r690
    simpa [seg8Rho, mul_eq_zero] using r690
  · unfold Seg8.relationRow691 at r691
    simpa [seg8Rho, mul_eq_zero] using r691
  · unfold Seg8.relationRow692 at r692
    simpa [seg8Rho, mul_eq_zero] using r692
  · unfold Seg8.relationRow693 at r693
    simpa [seg8Rho, mul_eq_zero] using r693
  · unfold Seg8.relationRow694 at r694
    simpa [seg8Rho, mul_eq_zero] using r694
  · unfold Seg8.relationRow695 at r695
    simpa [seg8Rho, mul_eq_zero] using r695
  · unfold Seg8.relationRow696 at r696
    simpa [seg8Rho, mul_eq_zero] using r696
  · unfold Seg8.relationRow697 at r697
    simpa [seg8Rho, mul_eq_zero] using r697
  · unfold Seg8.relationRow698 at r698
    simpa [seg8Rho, mul_eq_zero] using r698
  · unfold Seg8.relationRow699 at r699
    simpa [seg8Rho, mul_eq_zero] using r699
  · unfold Seg8.relationRow700 at r700
    simpa [seg8Rho, mul_eq_zero] using r700
  · unfold Seg8.relationRow701 at r701
    simpa [seg8Rho, mul_eq_zero] using r701
  · unfold Seg8.relationRow702 at r702
    simpa [seg8Rho, mul_eq_zero] using r702
  · unfold Seg8.relationRow703 at r703
    simpa [seg8Rho, mul_eq_zero] using r703
  · unfold Seg8.relationRow704 at r704
    simpa [seg8Rho, mul_eq_zero] using r704
  · unfold Seg8.relationRow705 at r705
    simpa [seg8Rho, mul_eq_zero] using r705
  · unfold Seg8.relationRow706 at r706
    simpa [seg8Rho, mul_eq_zero] using r706
  · unfold Seg8.relationRow707 at r707
    simpa [seg8Rho, mul_eq_zero] using r707
  · unfold Seg8.relationRow708 at r708
    simpa [seg8Rho, mul_eq_zero] using r708
  · unfold Seg8.relationRow709 at r709
    simpa [seg8Rho, mul_eq_zero] using r709
  · unfold Seg8.relationRow710 at r710
    simpa [seg8Rho, mul_eq_zero] using r710
  · unfold Seg8.relationRow711 at r711
    simpa [seg8Rho, mul_eq_zero] using r711
  · unfold Seg8.relationRow712 at r712
    simpa [seg8Rho, mul_eq_zero] using r712
  · unfold Seg8.relationRow713 at r713
    simpa [seg8Rho, mul_eq_zero] using r713
  · unfold Seg8.relationRow714 at r714
    simpa [seg8Rho, mul_eq_zero] using r714
  · unfold Seg8.relationRow715 at r715
    simpa [seg8Rho, mul_eq_zero] using r715
  · unfold Seg8.relationRow716 at r716
    simpa [seg8Rho, mul_eq_zero] using r716
  · unfold Seg8.relationRow717 at r717
    simpa [seg8Rho, mul_eq_zero] using r717
  · unfold Seg8.relationRow718 at r718
    simpa [seg8Rho, mul_eq_zero] using r718
  · unfold Seg8.relationRow719 at r719
    simpa [seg8Rho, mul_eq_zero] using r719
  · unfold Seg8.relationRow720 at r720
    simpa [seg8Rho, mul_eq_zero] using r720
  · unfold Seg8.relationRow721 at r721
    simpa [seg8Rho, mul_eq_zero] using r721
  · unfold Seg8.relationRow722 at r722
    simpa [seg8Rho, mul_eq_zero] using r722
  · unfold Seg8.relationRow723 at r723
    simpa [seg8Rho, mul_eq_zero] using r723
  · unfold Seg8.relationRow724 at r724
    simpa [seg8Rho, mul_eq_zero] using r724
  · unfold Seg8.relationRow725 at r725
    simpa [seg8Rho, mul_eq_zero] using r725
  · unfold Seg8.relationRow726 at r726
    simpa [seg8Rho, mul_eq_zero] using r726
  · unfold Seg8.relationRow727 at r727
    simpa [seg8Rho, mul_eq_zero] using r727
  · unfold Seg8.relationRow728 at r728
    simpa [seg8Rho, mul_eq_zero] using r728
  · unfold Seg8.relationRow729 at r729
    simpa [seg8Rho, mul_eq_zero] using r729
  · unfold Seg8.relationRow730 at r730
    simpa [seg8Rho, mul_eq_zero] using r730
  · unfold Seg8.relationRow731 at r731
    simpa [seg8Rho, mul_eq_zero] using r731
  · unfold Seg8.relationRow732 at r732
    simpa [seg8Rho, mul_eq_zero] using r732
  · unfold Seg8.relationRow733 at r733
    simpa [seg8Rho, mul_eq_zero] using r733
  · unfold Seg8.relationRow734 at r734
    simpa [seg8Rho, mul_eq_zero] using r734
  · unfold Seg8.relationRow735 at r735
    simpa [seg8Rho, mul_eq_zero] using r735
  · unfold Seg8.relationRow736 at r736
    simpa [seg8Rho, mul_eq_zero] using r736
  · unfold Seg8.relationRow737 at r737
    simpa [seg8Rho, mul_eq_zero] using r737
  · unfold Seg8.relationRow738 at r738
    simpa [seg8Rho, mul_eq_zero] using r738
  · unfold Seg8.relationRow739 at r739
    simpa [seg8Rho, mul_eq_zero] using r739
  · unfold Seg8.relationRow740 at r740
    simpa [seg8Rho, mul_eq_zero] using r740
  · unfold Seg8.relationRow741 at r741
    simpa [seg8Rho, mul_eq_zero] using r741
  · unfold Seg8.relationRow742 at r742
    simpa [seg8Rho, mul_eq_zero] using r742
  · unfold Seg8.relationRow743 at r743
    simpa [seg8Rho, mul_eq_zero] using r743
  · unfold Seg8.relationRow744 at r744
    simpa [seg8Rho, mul_eq_zero] using r744
  · unfold Seg8.relationRow745 at r745
    simpa [seg8Rho, mul_eq_zero] using r745
  · unfold Seg8.relationRow746 at r746
    simpa [seg8Rho, mul_eq_zero] using r746
  · unfold Seg8.relationRow747 at r747
    simpa [seg8Rho, mul_eq_zero] using r747
  · unfold Seg8.relationRow748 at r748
    simpa [seg8Rho, mul_eq_zero] using r748
  · unfold Seg8.relationRow749 at r749
    simpa [seg8Rho, mul_eq_zero] using r749
  · unfold Seg8.relationRow750 at r750
    simpa [seg8Rho, mul_eq_zero] using r750
  · unfold Seg8.relationRow751 at r751
    simpa [seg8Rho, mul_eq_zero] using r751
  · unfold Seg8.relationRow752 at r752
    simpa [seg8Rho, mul_eq_zero] using r752
  · unfold Seg8.relationRow753 at r753
    simpa [seg8Rho, mul_eq_zero] using r753
  · unfold Seg8.relationRow754 at r754
    simpa [seg8Rho, mul_eq_zero] using r754
  · unfold Seg8.relationRow755 at r755
    simpa [seg8Rho, mul_eq_zero] using r755
  · unfold Seg8.relationRow756 at r756
    simpa [seg8Rho, mul_eq_zero] using r756
  · unfold Seg8.relationRow757 at r757
    simpa [seg8Rho, mul_eq_zero] using r757
  · unfold Seg8.relationRow758 at r758
    simpa [seg8Rho, mul_eq_zero] using r758
  · unfold Seg8.relationRow759 at r759
    simpa [seg8Rho, mul_eq_zero] using r759
  · unfold Seg8.relationRow760 at r760
    simpa [seg8Rho, mul_eq_zero] using r760
  · unfold Seg8.relationRow761 at r761
    simpa [seg8Rho, mul_eq_zero] using r761
  · unfold Seg8.relationRow762 at r762
    simpa [seg8Rho, mul_eq_zero] using r762
  · unfold Seg8.relationRow763 at r763
    simpa [seg8Rho, mul_eq_zero] using r763
  · unfold Seg8.relationRow764 at r764
    simpa [seg8Rho, mul_eq_zero] using r764
  · unfold Seg8.relationRow765 at r765
    simpa [seg8Rho, mul_eq_zero] using r765
  · unfold Seg8.relationRow766 at r766
    simpa [seg8Rho, mul_eq_zero] using r766
  · unfold Seg8.relationRow767 at r767
    simpa [seg8Rho, mul_eq_zero] using r767
  · unfold Seg8.relationRow768 at r768
    simpa [seg8Rho, mul_eq_zero] using r768
  · unfold Seg8.relationRow769 at r769
    simpa [seg8Rho, mul_eq_zero] using r769
  · unfold Seg8.relationRow770 at r770
    simpa [seg8Rho, mul_eq_zero] using r770
  · unfold Seg8.relationRow771 at r771
    simpa [seg8Rho, mul_eq_zero] using r771
  · unfold Seg8.relationRow772 at r772
    simpa [seg8Rho, mul_eq_zero] using r772
  · unfold Seg8.relationRow773 at r773
    simpa [seg8Rho, mul_eq_zero] using r773
  · unfold Seg8.relationRow774 at r774
    simpa [seg8Rho, mul_eq_zero] using r774
  · unfold Seg8.relationRow775 at r775
    simpa [seg8Rho, mul_eq_zero] using r775
  · unfold Seg8.relationRow776 at r776
    simpa [seg8Rho, mul_eq_zero] using r776
  · unfold Seg8.relationRow777 at r777
    simpa [seg8Rho, mul_eq_zero] using r777
  · unfold Seg8.relationRow778 at r778
    simpa [seg8Rho, mul_eq_zero] using r778
  · unfold Seg8.relationRow779 at r779
    simpa [seg8Rho, mul_eq_zero] using r779
  · unfold Seg8.relationRow780 at r780
    simpa [seg8Rho, mul_eq_zero] using r780
  · unfold Seg8.relationRow781 at r781
    simpa [seg8Rho, mul_eq_zero] using r781
  · unfold Seg8.relationRow782 at r782
    simpa [seg8Rho, mul_eq_zero] using r782
  · unfold Seg8.relationRow783 at r783
    simpa [seg8Rho, mul_eq_zero] using r783
  · unfold Seg8.relationRow784 at r784
    simpa [seg8Rho, mul_eq_zero] using r784
  · unfold Seg8.relationRow785 at r785
    simpa [seg8Rho, mul_eq_zero] using r785
  · unfold Seg8.relationRow786 at r786
    simpa [seg8Rho, mul_eq_zero] using r786
  · unfold Seg8.relationRow787 at r787
    simpa [seg8Rho, mul_eq_zero] using r787
  · unfold Seg8.relationRow788 at r788
    simpa [seg8Rho, mul_eq_zero] using r788
  · unfold Seg8.relationRow789 at r789
    simpa [seg8Rho, mul_eq_zero] using r789
  · unfold Seg8.relationRow790 at r790
    simpa [seg8Rho, mul_eq_zero] using r790
  · unfold Seg8.relationRow792 at r792
    simpa [seg8Rho, mul_eq_zero] using r792
  · unfold Seg8.relationRow793 at r793
    simpa [seg8Rho, mul_eq_zero] using r793
  · unfold Seg8.relationRow794 at r794
    simpa [seg8Rho, mul_eq_zero] using r794
  · unfold Seg8.relationRow795 at r795
    simpa [seg8Rho, mul_eq_zero] using r795
  · unfold Seg8.relationRow796 at r796
    simpa [seg8Rho, mul_eq_zero] using r796
  · unfold Seg8.relationRow797 at r797
    simpa [seg8Rho, mul_eq_zero] using r797
  · unfold Seg8.relationRow798 at r798
    simpa [seg8Rho, mul_eq_zero] using r798
  · unfold Seg8.relationRow799 at r799
    simpa [seg8Rho, mul_eq_zero] using r799
  · unfold Seg8.relationRow800 at r800
    simpa [seg8Rho, mul_eq_zero] using r800
  · unfold Seg8.relationRow801 at r801
    simpa [seg8Rho, mul_eq_zero] using r801
  · unfold Seg8.relationRow802 at r802
    simpa [seg8Rho, mul_eq_zero] using r802
  · unfold Seg8.relationRow803 at r803
    simpa [seg8Rho, mul_eq_zero] using r803
  · unfold Seg8.relationRow804 at r804
    simpa [seg8Rho, mul_eq_zero] using r804
  · unfold Seg8.relationRow805 at r805
    simpa [seg8Rho, mul_eq_zero] using r805
  · unfold Seg8.relationRow806 at r806
    simpa [seg8Rho, mul_eq_zero] using r806
  · unfold Seg8.relationRow807 at r807
    simpa [seg8Rho, mul_eq_zero] using r807
  · unfold Seg8.relationRow808 at r808
    simpa [seg8Rho, mul_eq_zero] using r808
  · unfold Seg8.relationRow809 at r809
    simpa [seg8Rho, mul_eq_zero] using r809
  · unfold Seg8.relationRow810 at r810
    simpa [seg8Rho, mul_eq_zero] using r810
  · unfold Seg8.relationRow811 at r811
    simpa [seg8Rho, mul_eq_zero] using r811
  · unfold Seg8.relationRow812 at r812
    simpa [seg8Rho, mul_eq_zero] using r812
  · unfold Seg8.relationRow813 at r813
    simpa [seg8Rho, mul_eq_zero] using r813
  · unfold Seg8.relationRow814 at r814
    simpa [seg8Rho, mul_eq_zero] using r814
  · unfold Seg8.relationRow815 at r815
    simpa [seg8Rho, mul_eq_zero] using r815
  · unfold Seg8.relationRow816 at r816
    simpa [seg8Rho, mul_eq_zero] using r816
  · unfold Seg8.relationRow817 at r817
    simpa [seg8Rho, mul_eq_zero] using r817
  · unfold Seg8.relationRow818 at r818
    simpa [seg8Rho, mul_eq_zero] using r818
  · unfold Seg8.relationRow819 at r819
    simpa [seg8Rho, mul_eq_zero] using r819
  · unfold Seg8.relationRow820 at r820
    simpa [seg8Rho, mul_eq_zero] using r820
  · unfold Seg8.relationRow821 at r821
    simpa [seg8Rho, mul_eq_zero] using r821
  · unfold Seg8.relationRow822 at r822
    simpa [seg8Rho, mul_eq_zero] using r822
  · unfold Seg8.relationRow823 at r823
    simpa [seg8Rho, mul_eq_zero] using r823
  · unfold Seg8.relationRow824 at r824
    simpa [seg8Rho, mul_eq_zero] using r824
  · unfold Seg8.relationRow825 at r825
    simpa [seg8Rho, mul_eq_zero] using r825
  · unfold Seg8.relationRow826 at r826
    simpa [seg8Rho, mul_eq_zero] using r826
  · unfold Seg8.relationRow827 at r827
    simpa [seg8Rho, mul_eq_zero] using r827
  · unfold Seg8.relationRow828 at r828
    simpa [seg8Rho, mul_eq_zero] using r828
  · unfold Seg8.relationRow829 at r829
    simpa [seg8Rho, mul_eq_zero] using r829
  · unfold Seg8.relationRow830 at r830
    simpa [seg8Rho, mul_eq_zero] using r830
  · unfold Seg8.relationRow831 at r831
    simpa [seg8Rho, mul_eq_zero] using r831
  · unfold Seg8.relationRow832 at r832
    simpa [seg8Rho, mul_eq_zero] using r832
  · unfold Seg8.relationRow833 at r833
    simpa [seg8Rho, mul_eq_zero] using r833
  · unfold Seg8.relationRow834 at r834
    simpa [seg8Rho, mul_eq_zero] using r834
  · unfold Seg8.relationRow835 at r835
    simpa [seg8Rho, mul_eq_zero] using r835
  · unfold Seg8.relationRow836 at r836
    simpa [seg8Rho, mul_eq_zero] using r836
  · unfold Seg8.relationRow837 at r837
    simpa [seg8Rho, mul_eq_zero] using r837
  · unfold Seg8.relationRow838 at r838
    simpa [seg8Rho, mul_eq_zero] using r838
  · unfold Seg8.relationRow839 at r839
    simpa [seg8Rho, mul_eq_zero] using r839
  · unfold Seg8.relationRow840 at r840
    simpa [seg8Rho, mul_eq_zero] using r840
  · unfold Seg8.relationRow841 at r841
    simpa [seg8Rho, mul_eq_zero] using r841
  · unfold Seg8.relationRow842 at r842
    simpa [seg8Rho, mul_eq_zero] using r842
  · unfold Seg8.relationRow843 at r843
    simpa [seg8Rho, mul_eq_zero] using r843
  · unfold Seg8.relationRow844 at r844
    simpa [seg8Rho, mul_eq_zero] using r844
  · unfold Seg8.relationRow845 at r845
    simpa [seg8Rho, mul_eq_zero] using r845
  · unfold Seg8.relationRow846 at r846
    simpa [seg8Rho, mul_eq_zero] using r846
  · unfold Seg8.relationRow847 at r847
    simpa [seg8Rho, mul_eq_zero] using r847
  · unfold Seg8.relationRow848 at r848
    simpa [seg8Rho, mul_eq_zero] using r848
  · unfold Seg8.relationRow849 at r849
    simpa [seg8Rho, mul_eq_zero] using r849
  · unfold Seg8.relationRow850 at r850
    simpa [seg8Rho, mul_eq_zero] using r850
  · unfold Seg8.relationRow851 at r851
    simpa [seg8Rho, mul_eq_zero] using r851
  · unfold Seg8.relationRow852 at r852
    simpa [seg8Rho, mul_eq_zero] using r852
  · unfold Seg8.relationRow853 at r853
    simpa [seg8Rho, mul_eq_zero] using r853
  · unfold Seg8.relationRow854 at r854
    simpa [seg8Rho, mul_eq_zero] using r854
  · unfold Seg8.relationRow855 at r855
    simpa [seg8Rho, mul_eq_zero] using r855
  · unfold Seg8.relationRow856 at r856
    simpa [seg8Rho, mul_eq_zero] using r856
  · unfold Seg8.relationRow857 at r857
    simpa [seg8Rho, mul_eq_zero] using r857
  · unfold Seg8.relationRow858 at r858
    simpa [seg8Rho, mul_eq_zero] using r858
  · unfold Seg8.relationRow859 at r859
    simpa [seg8Rho, mul_eq_zero] using r859
  · unfold Seg8.relationRow860 at r860
    simpa [seg8Rho, mul_eq_zero] using r860
  · unfold Seg8.relationRow861 at r861
    simpa [seg8Rho, mul_eq_zero] using r861
  · unfold Seg8.relationRow862 at r862
    simpa [seg8Rho, mul_eq_zero] using r862
  · unfold Seg8.relationRow863 at r863
    simpa [seg8Rho, mul_eq_zero] using r863
  · unfold Seg8.relationRow864 at r864
    simpa [seg8Rho, mul_eq_zero] using r864
  · unfold Seg8.relationRow865 at r865
    simpa [seg8Rho, mul_eq_zero] using r865
  · unfold Seg8.relationRow866 at r866
    simpa [seg8Rho, mul_eq_zero] using r866
  · unfold Seg8.relationRow867 at r867
    simpa [seg8Rho, mul_eq_zero] using r867
  · unfold Seg8.relationRow868 at r868
    simpa [seg8Rho, mul_eq_zero] using r868
  · unfold Seg8.relationRow869 at r869
    simpa [seg8Rho, mul_eq_zero] using r869
  · unfold Seg8.relationRow870 at r870
    simpa [seg8Rho, mul_eq_zero] using r870
  · unfold Seg8.relationRow871 at r871
    simpa [seg8Rho, mul_eq_zero] using r871
  · unfold Seg8.relationRow872 at r872
    simpa [seg8Rho, mul_eq_zero] using r872
  · unfold Seg8.relationRow873 at r873
    simpa [seg8Rho, mul_eq_zero] using r873
  · unfold Seg8.relationRow874 at r874
    simpa [seg8Rho, mul_eq_zero] using r874
  · unfold Seg8.relationRow875 at r875
    simpa [seg8Rho, mul_eq_zero] using r875
  · unfold Seg8.relationRow876 at r876
    simpa [seg8Rho, mul_eq_zero] using r876
  · unfold Seg8.relationRow877 at r877
    simpa [seg8Rho, mul_eq_zero] using r877
  · unfold Seg8.relationRow878 at r878
    simpa [seg8Rho, mul_eq_zero] using r878
  · unfold Seg8.relationRow879 at r879
    simpa [seg8Rho, mul_eq_zero] using r879
  · unfold Seg8.relationRow880 at r880
    simpa [seg8Rho, mul_eq_zero] using r880
  · unfold Seg8.relationRow881 at r881
    simpa [seg8Rho, mul_eq_zero] using r881
  · unfold Seg8.relationRow882 at r882
    simpa [seg8Rho, mul_eq_zero] using r882
  · unfold Seg8.relationRow883 at r883
    simpa [seg8Rho, mul_eq_zero] using r883
  · unfold Seg8.relationRow884 at r884
    simpa [seg8Rho, mul_eq_zero] using r884
  · unfold Seg8.relationRow885 at r885
    simpa [seg8Rho, mul_eq_zero] using r885
  · unfold Seg8.relationRow886 at r886
    simpa [seg8Rho, mul_eq_zero] using r886
  · unfold Seg8.relationRow887 at r887
    simpa [seg8Rho, mul_eq_zero] using r887
  · unfold Seg8.relationRow888 at r888
    simpa [seg8Rho, mul_eq_zero] using r888
  · unfold Seg8.relationRow889 at r889
    simpa [seg8Rho, mul_eq_zero] using r889
  · unfold Seg8.relationRow890 at r890
    simpa [seg8Rho, mul_eq_zero] using r890
  · unfold Seg8.relationRow891 at r891
    simpa [seg8Rho, mul_eq_zero] using r891
  · unfold Seg8.relationRow892 at r892
    simpa [seg8Rho, mul_eq_zero] using r892
  · unfold Seg8.relationRow893 at r893
    simpa [seg8Rho, mul_eq_zero] using r893
  · unfold Seg8.relationRow894 at r894
    simpa [seg8Rho, mul_eq_zero] using r894
  · unfold Seg8.relationRow895 at r895
    simpa [seg8Rho, mul_eq_zero] using r895
  · unfold Seg8.relationRow896 at r896
    simpa [seg8Rho, mul_eq_zero] using r896
  · unfold Seg8.relationRow897 at r897
    simpa [seg8Rho, mul_eq_zero] using r897
  · unfold Seg8.relationRow898 at r898
    simpa [seg8Rho, mul_eq_zero] using r898
  · unfold Seg8.relationRow899 at r899
    simpa [seg8Rho, mul_eq_zero] using r899
  · unfold Seg8.relationRow900 at r900
    simpa [seg8Rho, mul_eq_zero] using r900
  · unfold Seg8.relationRow901 at r901
    simpa [seg8Rho, mul_eq_zero] using r901
  · unfold Seg8.relationRow902 at r902
    simpa [seg8Rho, mul_eq_zero] using r902
  · unfold Seg8.relationRow903 at r903
    simpa [seg8Rho, mul_eq_zero] using r903
  · unfold Seg8.relationRow904 at r904
    simpa [seg8Rho, mul_eq_zero] using r904
  · unfold Seg8.relationRow905 at r905
    simpa [seg8Rho, mul_eq_zero] using r905
  · unfold Seg8.relationRow906 at r906
    simpa [seg8Rho, mul_eq_zero] using r906
  · unfold Seg8.relationRow907 at r907
    simpa [seg8Rho, mul_eq_zero] using r907
  · unfold Seg8.relationRow908 at r908
    simpa [seg8Rho, mul_eq_zero] using r908
  · unfold Seg8.relationRow909 at r909
    simpa [seg8Rho, mul_eq_zero] using r909
  · unfold Seg8.relationRow910 at r910
    simpa [seg8Rho, mul_eq_zero] using r910
  · unfold Seg8.relationRow911 at r911
    simpa [seg8Rho, mul_eq_zero] using r911
  · unfold Seg8.relationRow912 at r912
    simpa [seg8Rho, mul_eq_zero] using r912
  · unfold Seg8.relationRow913 at r913
    simpa [seg8Rho, mul_eq_zero] using r913
  · unfold Seg8.relationRow914 at r914
    simpa [seg8Rho, mul_eq_zero] using r914
  · unfold Seg8.relationRow915 at r915
    simpa [seg8Rho, mul_eq_zero] using r915
  · unfold Seg8.relationRow916 at r916
    simpa [seg8Rho, mul_eq_zero] using r916
  · unfold Seg8.relationRow917 at r917
    simpa [seg8Rho, mul_eq_zero] using r917
  · unfold Seg8.relationRow918 at r918
    simpa [seg8Rho, mul_eq_zero] using r918
  · unfold Seg8.relationRow919 at r919
    simpa [seg8Rho, mul_eq_zero] using r919
  · unfold Seg8.relationRow920 at r920
    simpa [seg8Rho, mul_eq_zero] using r920
  · unfold Seg8.relationRow921 at r921
    simpa [seg8Rho, mul_eq_zero] using r921
  · unfold Seg8.relationRow922 at r922
    simpa [seg8Rho, mul_eq_zero] using r922
  · unfold Seg8.relationRow923 at r923
    simpa [seg8Rho, mul_eq_zero] using r923
  · unfold Seg8.relationRow924 at r924
    simpa [seg8Rho, mul_eq_zero] using r924
  · unfold Seg8.relationRow925 at r925
    simpa [seg8Rho, mul_eq_zero] using r925
  · unfold Seg8.relationRow926 at r926
    simpa [seg8Rho, mul_eq_zero] using r926
  · unfold Seg8.relationRow927 at r927
    simpa [seg8Rho, mul_eq_zero] using r927
  · unfold Seg8.relationRow928 at r928
    simpa [seg8Rho, mul_eq_zero] using r928
  · unfold Seg8.relationRow929 at r929
    simpa [seg8Rho, mul_eq_zero] using r929
  · unfold Seg8.relationRow930 at r930
    simpa [seg8Rho, mul_eq_zero] using r930
  · unfold Seg8.relationRow931 at r931
    simpa [seg8Rho, mul_eq_zero] using r931
  · unfold Seg8.relationRow932 at r932
    simpa [seg8Rho, mul_eq_zero] using r932
  · unfold Seg8.relationRow933 at r933
    simpa [seg8Rho, mul_eq_zero] using r933
  · unfold Seg8.relationRow934 at r934
    simpa [seg8Rho, mul_eq_zero] using r934
  · unfold Seg8.relationRow935 at r935
    simpa [seg8Rho, mul_eq_zero] using r935
  · unfold Seg8.relationRow936 at r936
    simpa [seg8Rho, mul_eq_zero] using r936
  · unfold Seg8.relationRow937 at r937
    simpa [seg8Rho, mul_eq_zero] using r937
  · unfold Seg8.relationRow938 at r938
    simpa [seg8Rho, mul_eq_zero] using r938
  · unfold Seg8.relationRow939 at r939
    simpa [seg8Rho, mul_eq_zero] using r939
  · unfold Seg8.relationRow940 at r940
    simpa [seg8Rho, mul_eq_zero] using r940
  · unfold Seg8.relationRow941 at r941
    simpa [seg8Rho, mul_eq_zero] using r941
  · unfold Seg8.relationRow942 at r942
    simpa [seg8Rho, mul_eq_zero] using r942
  · unfold Seg8.relationRow943 at r943
    simpa [seg8Rho, mul_eq_zero] using r943
  · unfold Seg8.relationRow944 at r944
    simpa [seg8Rho, mul_eq_zero] using r944
  · unfold Seg8.relationRow945 at r945
    simpa [seg8Rho, mul_eq_zero] using r945
  · unfold Seg8.relationRow946 at r946
    simpa [seg8Rho, mul_eq_zero] using r946
  · unfold Seg8.relationRow947 at r947
    simpa [seg8Rho, mul_eq_zero] using r947
  · unfold Seg8.relationRow948 at r948
    simpa [seg8Rho, mul_eq_zero] using r948
  · unfold Seg8.relationRow949 at r949
    simpa [seg8Rho, mul_eq_zero] using r949
  · unfold Seg8.relationRow950 at r950
    simpa [seg8Rho, mul_eq_zero] using r950
  · unfold Seg8.relationRow951 at r951
    simpa [seg8Rho, mul_eq_zero] using r951
  · unfold Seg8.relationRow952 at r952
    simpa [seg8Rho, mul_eq_zero] using r952
  · unfold Seg8.relationRow953 at r953
    simpa [seg8Rho, mul_eq_zero] using r953
  · unfold Seg8.relationRow954 at r954
    simpa [seg8Rho, mul_eq_zero] using r954
  · unfold Seg8.relationRow955 at r955
    simpa [seg8Rho, mul_eq_zero] using r955
  · unfold Seg8.relationRow956 at r956
    simpa [seg8Rho, mul_eq_zero] using r956
  · unfold Seg8.relationRow957 at r957
    simpa [seg8Rho, mul_eq_zero] using r957
  · unfold Seg8.relationRow958 at r958
    simpa [seg8Rho, mul_eq_zero] using r958
  · unfold Seg8.relationRow959 at r959
    simpa [seg8Rho, mul_eq_zero] using r959
  · unfold Seg8.relationRow960 at r960
    simpa [seg8Rho, mul_eq_zero] using r960
  · unfold Seg8.relationRow961 at r961
    simpa [seg8Rho, mul_eq_zero] using r961
  · unfold Seg8.relationRow962 at r962
    simpa [seg8Rho, mul_eq_zero] using r962
  · unfold Seg8.relationRow963 at r963
    simpa [seg8Rho, mul_eq_zero] using r963
  · unfold Seg8.relationRow964 at r964
    simpa [seg8Rho, mul_eq_zero] using r964
  · unfold Seg8.relationRow965 at r965
    simpa [seg8Rho, mul_eq_zero] using r965
  · unfold Seg8.relationRow966 at r966
    simpa [seg8Rho, mul_eq_zero] using r966
  · unfold Seg8.relationRow967 at r967
    simpa [seg8Rho, mul_eq_zero] using r967
  · unfold Seg8.relationRow968 at r968
    simpa [seg8Rho, mul_eq_zero] using r968
  · unfold Seg8.relationRow969 at r969
    simpa [seg8Rho, mul_eq_zero] using r969
  · unfold Seg8.relationRow970 at r970
    simpa [seg8Rho, mul_eq_zero] using r970
  · unfold Seg8.relationRow971 at r971
    simpa [seg8Rho, mul_eq_zero] using r971
  · unfold Seg8.relationRow972 at r972
    simpa [seg8Rho, mul_eq_zero] using r972
  · unfold Seg8.relationRow973 at r973
    simpa [seg8Rho, mul_eq_zero] using r973
  · unfold Seg8.relationRow974 at r974
    simpa [seg8Rho, mul_eq_zero] using r974
  · unfold Seg8.relationRow975 at r975
    simpa [seg8Rho, mul_eq_zero] using r975
  · unfold Seg8.relationRow976 at r976
    simpa [seg8Rho, mul_eq_zero] using r976
  · unfold Seg8.relationRow977 at r977
    simpa [seg8Rho, mul_eq_zero] using r977
  · unfold Seg8.relationRow978 at r978
    simpa [seg8Rho, mul_eq_zero] using r978
  · unfold Seg8.relationRow979 at r979
    simpa [seg8Rho, mul_eq_zero] using r979
  · unfold Seg8.relationRow980 at r980
    simpa [seg8Rho, mul_eq_zero] using r980
  · unfold Seg8.relationRow981 at r981
    simpa [seg8Rho, mul_eq_zero] using r981
  · unfold Seg8.relationRow982 at r982
    simpa [seg8Rho, mul_eq_zero] using r982
  · unfold Seg8.relationRow983 at r983
    simpa [seg8Rho, mul_eq_zero] using r983
  · unfold Seg8.relationRow984 at r984
    simpa [seg8Rho, mul_eq_zero] using r984
  · unfold Seg8.relationRow985 at r985
    simpa [seg8Rho, mul_eq_zero] using r985
  · unfold Seg8.relationRow986 at r986
    simpa [seg8Rho, mul_eq_zero] using r986
  · unfold Seg8.relationRow987 at r987
    simpa [seg8Rho, mul_eq_zero] using r987
  · unfold Seg8.relationRow988 at r988
    simpa [seg8Rho, mul_eq_zero] using r988
  · unfold Seg8.relationRow989 at r989
    simpa [seg8Rho, mul_eq_zero] using r989
  · unfold Seg8.relationRow990 at r990
    simpa [seg8Rho, mul_eq_zero] using r990
  · unfold Seg8.relationRow991 at r991
    simpa [seg8Rho, mul_eq_zero] using r991
  · unfold Seg8.relationRow992 at r992
    simpa [seg8Rho, mul_eq_zero] using r992
  · unfold Seg8.relationRow993 at r993
    simpa [seg8Rho, mul_eq_zero] using r993
  · unfold Seg8.relationRow994 at r994
    simpa [seg8Rho, mul_eq_zero] using r994
  · unfold Seg8.relationRow995 at r995
    simpa [seg8Rho, mul_eq_zero] using r995
  · unfold Seg8.relationRow996 at r996
    simpa [seg8Rho, mul_eq_zero] using r996
  · unfold Seg8.relationRow997 at r997
    simpa [seg8Rho, mul_eq_zero] using r997
  · unfold Seg8.relationRow998 at r998
    simpa [seg8Rho, mul_eq_zero] using r998
  · unfold Seg8.relationRow999 at r999
    simpa [seg8Rho, mul_eq_zero] using r999
  · unfold Seg8.relationRow1000 at r1000
    simpa [seg8Rho, mul_eq_zero] using r1000
  · unfold Seg8.relationRow1001 at r1001
    simpa [seg8Rho, mul_eq_zero] using r1001
  · unfold Seg8.relationRow1002 at r1002
    simpa [seg8Rho, mul_eq_zero] using r1002
  · unfold Seg8.relationRow1003 at r1003
    simpa [seg8Rho, mul_eq_zero] using r1003
  · unfold Seg8.relationRow1004 at r1004
    simpa [seg8Rho, mul_eq_zero] using r1004
  · unfold Seg8.relationRow1005 at r1005
    simpa [seg8Rho, mul_eq_zero] using r1005
  · unfold Seg8.relationRow1006 at r1006
    simpa [seg8Rho, mul_eq_zero] using r1006
  · unfold Seg8.relationRow1007 at r1007
    simpa [seg8Rho, mul_eq_zero] using r1007
  · unfold Seg8.relationRow1008 at r1008
    simpa [seg8Rho, mul_eq_zero] using r1008
  · unfold Seg8.relationRow1009 at r1009
    simpa [seg8Rho, mul_eq_zero] using r1009
  · unfold Seg8.relationRow1010 at r1010
    simpa [seg8Rho, mul_eq_zero] using r1010
  · unfold Seg8.relationRow1011 at r1011
    simpa [seg8Rho, mul_eq_zero] using r1011
  · unfold Seg8.relationRow1012 at r1012
    simpa [seg8Rho, mul_eq_zero] using r1012
  · unfold Seg8.relationRow1013 at r1013
    simpa [seg8Rho, mul_eq_zero] using r1013
  · unfold Seg8.relationRow1014 at r1014
    simpa [seg8Rho, mul_eq_zero] using r1014
  · unfold Seg8.relationRow1015 at r1015
    simpa [seg8Rho, mul_eq_zero] using r1015
  · unfold Seg8.relationRow1016 at r1016
    simpa [seg8Rho, mul_eq_zero] using r1016
  · unfold Seg8.relationRow1017 at r1017
    simpa [seg8Rho, mul_eq_zero] using r1017
  · unfold Seg8.relationRow1018 at r1018
    simpa [seg8Rho, mul_eq_zero] using r1018
  · unfold Seg8.relationRow1019 at r1019
    simpa [seg8Rho, mul_eq_zero] using r1019
  · unfold Seg8.relationRow1020 at r1020
    simpa [seg8Rho, mul_eq_zero] using r1020
  · unfold Seg8.relationRow1021 at r1021
    simpa [seg8Rho, mul_eq_zero] using r1021
  · unfold Seg8.relationRow1022 at r1022
    simpa [seg8Rho, mul_eq_zero] using r1022
  · unfold Seg8.relationRow1023 at r1023
    simpa [seg8Rho, mul_eq_zero] using r1023
  · unfold Seg8.relationRow1024 at r1024
    simpa [seg8Rho, mul_eq_zero] using r1024
  · unfold Seg8.relationRow1025 at r1025
    simpa [seg8Rho, mul_eq_zero] using r1025
  · unfold Seg8.relationRow1026 at r1026
    simpa [seg8Rho, mul_eq_zero] using r1026
  · unfold Seg8.relationRow1027 at r1027
    simpa [seg8Rho, mul_eq_zero] using r1027
  · unfold Seg8.relationRow1028 at r1028
    simpa [seg8Rho, mul_eq_zero] using r1028
  · unfold Seg8.relationRow1029 at r1029
    simpa [seg8Rho, mul_eq_zero] using r1029
  · unfold Seg8.relationRow1030 at r1030
    simpa [seg8Rho, mul_eq_zero] using r1030
  · unfold Seg8.relationRow1031 at r1031
    simpa [seg8Rho, mul_eq_zero] using r1031
  · unfold Seg8.relationRow1032 at r1032
    simpa [seg8Rho, mul_eq_zero] using r1032
  · unfold Seg8.relationRow1033 at r1033
    simpa [seg8Rho, mul_eq_zero] using r1033
  · unfold Seg8.relationRow1034 at r1034
    simpa [seg8Rho, mul_eq_zero] using r1034
  · unfold Seg8.relationRow1035 at r1035
    simpa [seg8Rho, mul_eq_zero] using r1035
  · unfold Seg8.relationRow1036 at r1036
    simpa [seg8Rho, mul_eq_zero] using r1036
  · unfold Seg8.relationRow1037 at r1037
    simpa [seg8Rho, mul_eq_zero] using r1037
  · unfold Seg8.relationRow1038 at r1038
    simpa [seg8Rho, mul_eq_zero] using r1038
  · unfold Seg8.relationRow1039 at r1039
    simpa [seg8Rho, mul_eq_zero] using r1039
  · unfold Seg8.relationRow1040 at r1040
    simpa [seg8Rho, mul_eq_zero] using r1040
  · unfold Seg8.relationRow1041 at r1041
    simpa [seg8Rho, mul_eq_zero] using r1041
  · unfold Seg8.relationRow1042 at r1042
    simpa [seg8Rho, mul_eq_zero] using r1042
  · unfold Seg8.relationRow1043 at r1043
    simpa [seg8Rho, mul_eq_zero] using r1043
  · unfold Seg8.relationRow1044 at r1044
    simpa [seg8Rho, mul_eq_zero] using r1044
  · unfold Seg8.relationRow1045 at r1045
    simpa [seg8Rho, mul_eq_zero] using r1045
  · exact seg8_hrec1 rho r281
  · exact seg8_hrec2 rho r791
  · rfl

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
