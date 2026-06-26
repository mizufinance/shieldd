import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg24
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.DecafCompressToField

instance seg24FactPrime : Fact (Nat.Prime Seg24.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def seg24Rho (rho : Nat → Seg24.F) : Nat → Seg24.F
| 0 => 1
| 17 => rho 107
| 18 => rho 108
| i => if 210 ≤ i ∧ i ≤ 912 then rho (i + 18700) else rho i

theorem seg24_hrec1 (rho : Nat → Seg24.F)
    (h : Seg24.relationRow281 rho) :
    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => seg24Rho rho (231 + i.val))) = seg24Rho rho 230 := by
  have hrec := recover_ofFn_eq_recBits (seg24Rho rho) 231 253
  have hacc : powSumAcc (seg24Rho rho) 0 1 231 253 = seg24Rho rho 230 := by
    unfold Seg24.relationRow281 at h
    simpa [powSumAcc, seg24Rho] using h
  rw [hrec]
  rw [powSumAcc_eq] at hacc
  simpa [seg24Rho] using hacc

theorem seg24_hrec2 (rho : Nat → Seg24.F)
    (h : Seg24.relationRow791 rho) :
    recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => seg24Rho rho (573 + i.val))) = seg24Rho rho 572 := by
  have hrec := recover_ofFn_eq_recBits (seg24Rho rho) 573 253
  have hacc : powSumAcc (seg24Rho rho) 0 1 573 253 = seg24Rho rho 572 := by
    unfold Seg24.relationRow791 at h
    simpa [powSumAcc, seg24Rho] using h
  rw [hrec]
  rw [powSumAcc_eq] at hacc
  simpa [seg24Rho] using hacc

theorem seg24_sound (rho : Nat → Seg24.F) (h : Seg24.relation rho) : Seg24.spec rho := by
  unfold Seg24.relation at h
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
  unfold Seg24.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4⟩
  unfold Seg24.relationPart1 at p1
  rcases p1 with ⟨r5, r6, r7, r8, r9⟩
  unfold Seg24.relationPart2 at p2
  rcases p2 with ⟨r10, r11, r12, r13, r14⟩
  unfold Seg24.relationPart3 at p3
  rcases p3 with ⟨r15, r16, r17, r18, r19⟩
  unfold Seg24.relationPart4 at p4
  rcases p4 with ⟨r20, r21, r22, r23, r24⟩
  unfold Seg24.relationPart5 at p5
  rcases p5 with ⟨r25, r26, r27, r28, r29⟩
  unfold Seg24.relationPart6 at p6
  rcases p6 with ⟨r30, r31, r32, r33, r34⟩
  unfold Seg24.relationPart7 at p7
  rcases p7 with ⟨r35, r36, r37, r38, r39⟩
  unfold Seg24.relationPart8 at p8
  rcases p8 with ⟨r40, r41, r42, r43, r44⟩
  unfold Seg24.relationPart9 at p9
  rcases p9 with ⟨r45, r46, r47, r48, r49⟩
  unfold Seg24.relationPart10 at p10
  rcases p10 with ⟨r50, r51, r52, r53, r54⟩
  unfold Seg24.relationPart11 at p11
  rcases p11 with ⟨r55, r56, r57, r58, r59⟩
  unfold Seg24.relationPart12 at p12
  rcases p12 with ⟨r60, r61, r62, r63, r64⟩
  unfold Seg24.relationPart13 at p13
  rcases p13 with ⟨r65, r66, r67, r68, r69⟩
  unfold Seg24.relationPart14 at p14
  rcases p14 with ⟨r70, r71, r72, r73, r74⟩
  unfold Seg24.relationPart15 at p15
  rcases p15 with ⟨r75, r76, r77, r78, r79⟩
  unfold Seg24.relationPart16 at p16
  rcases p16 with ⟨r80, r81, r82, r83, r84⟩
  unfold Seg24.relationPart17 at p17
  rcases p17 with ⟨r85, r86, r87, r88, r89⟩
  unfold Seg24.relationPart18 at p18
  rcases p18 with ⟨r90, r91, r92, r93, r94⟩
  unfold Seg24.relationPart19 at p19
  rcases p19 with ⟨r95, r96, r97, r98, r99⟩
  unfold Seg24.relationPart20 at p20
  rcases p20 with ⟨r100, r101, r102, r103, r104⟩
  unfold Seg24.relationPart21 at p21
  rcases p21 with ⟨r105, r106, r107, r108, r109⟩
  unfold Seg24.relationPart22 at p22
  rcases p22 with ⟨r110, r111, r112, r113, r114⟩
  unfold Seg24.relationPart23 at p23
  rcases p23 with ⟨r115, r116, r117, r118, r119⟩
  unfold Seg24.relationPart24 at p24
  rcases p24 with ⟨r120, r121, r122, r123, r124⟩
  unfold Seg24.relationPart25 at p25
  rcases p25 with ⟨r125, r126, r127, r128, r129⟩
  unfold Seg24.relationPart26 at p26
  rcases p26 with ⟨r130, r131, r132, r133, r134⟩
  unfold Seg24.relationPart27 at p27
  rcases p27 with ⟨r135, r136, r137, r138, r139⟩
  unfold Seg24.relationPart28 at p28
  rcases p28 with ⟨r140, r141, r142, r143, r144⟩
  unfold Seg24.relationPart29 at p29
  rcases p29 with ⟨r145, r146, r147, r148, r149⟩
  unfold Seg24.relationPart30 at p30
  rcases p30 with ⟨r150, r151, r152, r153, r154⟩
  unfold Seg24.relationPart31 at p31
  rcases p31 with ⟨r155, r156, r157, r158, r159⟩
  unfold Seg24.relationPart32 at p32
  rcases p32 with ⟨r160, r161, r162, r163, r164⟩
  unfold Seg24.relationPart33 at p33
  rcases p33 with ⟨r165, r166, r167, r168, r169⟩
  unfold Seg24.relationPart34 at p34
  rcases p34 with ⟨r170, r171, r172, r173, r174⟩
  unfold Seg24.relationPart35 at p35
  rcases p35 with ⟨r175, r176, r177, r178, r179⟩
  unfold Seg24.relationPart36 at p36
  rcases p36 with ⟨r180, r181, r182, r183, r184⟩
  unfold Seg24.relationPart37 at p37
  rcases p37 with ⟨r185, r186, r187, r188, r189⟩
  unfold Seg24.relationPart38 at p38
  rcases p38 with ⟨r190, r191, r192, r193, r194⟩
  unfold Seg24.relationPart39 at p39
  rcases p39 with ⟨r195, r196, r197, r198, r199⟩
  unfold Seg24.relationPart40 at p40
  rcases p40 with ⟨r200, r201, r202, r203, r204⟩
  unfold Seg24.relationPart41 at p41
  rcases p41 with ⟨r205, r206, r207, r208, r209⟩
  unfold Seg24.relationPart42 at p42
  rcases p42 with ⟨r210, r211, r212, r213, r214⟩
  unfold Seg24.relationPart43 at p43
  rcases p43 with ⟨r215, r216, r217, r218, r219⟩
  unfold Seg24.relationPart44 at p44
  rcases p44 with ⟨r220, r221, r222, r223, r224⟩
  unfold Seg24.relationPart45 at p45
  rcases p45 with ⟨r225, r226, r227, r228, r229⟩
  unfold Seg24.relationPart46 at p46
  rcases p46 with ⟨r230, r231, r232, r233, r234⟩
  unfold Seg24.relationPart47 at p47
  rcases p47 with ⟨r235, r236, r237, r238, r239⟩
  unfold Seg24.relationPart48 at p48
  rcases p48 with ⟨r240, r241, r242, r243, r244⟩
  unfold Seg24.relationPart49 at p49
  rcases p49 with ⟨r245, r246, r247, r248, r249⟩
  unfold Seg24.relationPart50 at p50
  rcases p50 with ⟨r250, r251, r252, r253, r254⟩
  unfold Seg24.relationPart51 at p51
  rcases p51 with ⟨r255, r256, r257, r258, r259⟩
  unfold Seg24.relationPart52 at p52
  rcases p52 with ⟨r260, r261, r262, r263, r264⟩
  unfold Seg24.relationPart53 at p53
  rcases p53 with ⟨r265, r266, r267, r268, r269⟩
  unfold Seg24.relationPart54 at p54
  rcases p54 with ⟨r270, r271, r272, r273, r274⟩
  unfold Seg24.relationPart55 at p55
  rcases p55 with ⟨r275, r276, r277, r278, r279⟩
  unfold Seg24.relationPart56 at p56
  rcases p56 with ⟨r280, r281, r282, r283, r284⟩
  unfold Seg24.relationPart57 at p57
  rcases p57 with ⟨r285, r286, r287, r288, r289⟩
  unfold Seg24.relationPart58 at p58
  rcases p58 with ⟨r290, r291, r292, r293, r294⟩
  unfold Seg24.relationPart59 at p59
  rcases p59 with ⟨r295, r296, r297, r298, r299⟩
  unfold Seg24.relationPart60 at p60
  rcases p60 with ⟨r300, r301, r302, r303, r304⟩
  unfold Seg24.relationPart61 at p61
  rcases p61 with ⟨r305, r306, r307, r308, r309⟩
  unfold Seg24.relationPart62 at p62
  rcases p62 with ⟨r310, r311, r312, r313, r314⟩
  unfold Seg24.relationPart63 at p63
  rcases p63 with ⟨r315, r316, r317, r318, r319⟩
  unfold Seg24.relationPart64 at p64
  rcases p64 with ⟨r320, r321, r322, r323, r324⟩
  unfold Seg24.relationPart65 at p65
  rcases p65 with ⟨r325, r326, r327, r328, r329⟩
  unfold Seg24.relationPart66 at p66
  rcases p66 with ⟨r330, r331, r332, r333, r334⟩
  unfold Seg24.relationPart67 at p67
  rcases p67 with ⟨r335, r336, r337, r338, r339⟩
  unfold Seg24.relationPart68 at p68
  rcases p68 with ⟨r340, r341, r342, r343, r344⟩
  unfold Seg24.relationPart69 at p69
  rcases p69 with ⟨r345, r346, r347, r348, r349⟩
  unfold Seg24.relationPart70 at p70
  rcases p70 with ⟨r350, r351, r352, r353, r354⟩
  unfold Seg24.relationPart71 at p71
  rcases p71 with ⟨r355, r356, r357, r358, r359⟩
  unfold Seg24.relationPart72 at p72
  rcases p72 with ⟨r360, r361, r362, r363, r364⟩
  unfold Seg24.relationPart73 at p73
  rcases p73 with ⟨r365, r366, r367, r368, r369⟩
  unfold Seg24.relationPart74 at p74
  rcases p74 with ⟨r370, r371, r372, r373, r374⟩
  unfold Seg24.relationPart75 at p75
  rcases p75 with ⟨r375, r376, r377, r378, r379⟩
  unfold Seg24.relationPart76 at p76
  rcases p76 with ⟨r380, r381, r382, r383, r384⟩
  unfold Seg24.relationPart77 at p77
  rcases p77 with ⟨r385, r386, r387, r388, r389⟩
  unfold Seg24.relationPart78 at p78
  rcases p78 with ⟨r390, r391, r392, r393, r394⟩
  unfold Seg24.relationPart79 at p79
  rcases p79 with ⟨r395, r396, r397, r398, r399⟩
  unfold Seg24.relationPart80 at p80
  rcases p80 with ⟨r400, r401, r402, r403, r404⟩
  unfold Seg24.relationPart81 at p81
  rcases p81 with ⟨r405, r406, r407, r408, r409⟩
  unfold Seg24.relationPart82 at p82
  rcases p82 with ⟨r410, r411, r412, r413, r414⟩
  unfold Seg24.relationPart83 at p83
  rcases p83 with ⟨r415, r416, r417, r418, r419⟩
  unfold Seg24.relationPart84 at p84
  rcases p84 with ⟨r420, r421, r422, r423, r424⟩
  unfold Seg24.relationPart85 at p85
  rcases p85 with ⟨r425, r426, r427, r428, r429⟩
  unfold Seg24.relationPart86 at p86
  rcases p86 with ⟨r430, r431, r432, r433, r434⟩
  unfold Seg24.relationPart87 at p87
  rcases p87 with ⟨r435, r436, r437, r438, r439⟩
  unfold Seg24.relationPart88 at p88
  rcases p88 with ⟨r440, r441, r442, r443, r444⟩
  unfold Seg24.relationPart89 at p89
  rcases p89 with ⟨r445, r446, r447, r448, r449⟩
  unfold Seg24.relationPart90 at p90
  rcases p90 with ⟨r450, r451, r452, r453, r454⟩
  unfold Seg24.relationPart91 at p91
  rcases p91 with ⟨r455, r456, r457, r458, r459⟩
  unfold Seg24.relationPart92 at p92
  rcases p92 with ⟨r460, r461, r462, r463, r464⟩
  unfold Seg24.relationPart93 at p93
  rcases p93 with ⟨r465, r466, r467, r468, r469⟩
  unfold Seg24.relationPart94 at p94
  rcases p94 with ⟨r470, r471, r472, r473, r474⟩
  unfold Seg24.relationPart95 at p95
  rcases p95 with ⟨r475, r476, r477, r478, r479⟩
  unfold Seg24.relationPart96 at p96
  rcases p96 with ⟨r480, r481, r482, r483, r484⟩
  unfold Seg24.relationPart97 at p97
  rcases p97 with ⟨r485, r486, r487, r488, r489⟩
  unfold Seg24.relationPart98 at p98
  rcases p98 with ⟨r490, r491, r492, r493, r494⟩
  unfold Seg24.relationPart99 at p99
  rcases p99 with ⟨r495, r496, r497, r498, r499⟩
  unfold Seg24.relationPart100 at p100
  rcases p100 with ⟨r500, r501, r502, r503, r504⟩
  unfold Seg24.relationPart101 at p101
  rcases p101 with ⟨r505, r506, r507, r508, r509⟩
  unfold Seg24.relationPart102 at p102
  rcases p102 with ⟨r510, r511, r512, r513, r514⟩
  unfold Seg24.relationPart103 at p103
  rcases p103 with ⟨r515, r516, r517, r518, r519⟩
  unfold Seg24.relationPart104 at p104
  rcases p104 with ⟨r520, r521, r522, r523, r524⟩
  unfold Seg24.relationPart105 at p105
  rcases p105 with ⟨r525, r526, r527, r528, r529⟩
  unfold Seg24.relationPart106 at p106
  rcases p106 with ⟨r530, r531, r532, r533, r534⟩
  unfold Seg24.relationPart107 at p107
  rcases p107 with ⟨r535, r536, r537, r538, r539⟩
  unfold Seg24.relationPart108 at p108
  rcases p108 with ⟨r540, r541, r542, r543, r544⟩
  unfold Seg24.relationPart109 at p109
  rcases p109 with ⟨r545, r546, r547, r548, r549⟩
  unfold Seg24.relationPart110 at p110
  rcases p110 with ⟨r550, r551, r552, r553, r554⟩
  unfold Seg24.relationPart111 at p111
  rcases p111 with ⟨r555, r556, r557, r558, r559⟩
  unfold Seg24.relationPart112 at p112
  rcases p112 with ⟨r560, r561, r562, r563, r564⟩
  unfold Seg24.relationPart113 at p113
  rcases p113 with ⟨r565, r566, r567, r568, r569⟩
  unfold Seg24.relationPart114 at p114
  rcases p114 with ⟨r570, r571, r572, r573, r574⟩
  unfold Seg24.relationPart115 at p115
  rcases p115 with ⟨r575, r576, r577, r578, r579⟩
  unfold Seg24.relationPart116 at p116
  rcases p116 with ⟨r580, r581, r582, r583, r584⟩
  unfold Seg24.relationPart117 at p117
  rcases p117 with ⟨r585, r586, r587, r588, r589⟩
  unfold Seg24.relationPart118 at p118
  rcases p118 with ⟨r590, r591, r592, r593, r594⟩
  unfold Seg24.relationPart119 at p119
  rcases p119 with ⟨r595, r596, r597, r598, r599⟩
  unfold Seg24.relationPart120 at p120
  rcases p120 with ⟨r600, r601, r602, r603, r604⟩
  unfold Seg24.relationPart121 at p121
  rcases p121 with ⟨r605, r606, r607, r608, r609⟩
  unfold Seg24.relationPart122 at p122
  rcases p122 with ⟨r610, r611, r612, r613, r614⟩
  unfold Seg24.relationPart123 at p123
  rcases p123 with ⟨r615, r616, r617, r618, r619⟩
  unfold Seg24.relationPart124 at p124
  rcases p124 with ⟨r620, r621, r622, r623, r624⟩
  unfold Seg24.relationPart125 at p125
  rcases p125 with ⟨r625, r626, r627, r628, r629⟩
  unfold Seg24.relationPart126 at p126
  rcases p126 with ⟨r630, r631, r632, r633, r634⟩
  unfold Seg24.relationPart127 at p127
  rcases p127 with ⟨r635, r636, r637, r638, r639⟩
  unfold Seg24.relationPart128 at p128
  rcases p128 with ⟨r640, r641, r642, r643, r644⟩
  unfold Seg24.relationPart129 at p129
  rcases p129 with ⟨r645, r646, r647, r648, r649⟩
  unfold Seg24.relationPart130 at p130
  rcases p130 with ⟨r650, r651, r652, r653, r654⟩
  unfold Seg24.relationPart131 at p131
  rcases p131 with ⟨r655, r656, r657, r658, r659⟩
  unfold Seg24.relationPart132 at p132
  rcases p132 with ⟨r660, r661, r662, r663, r664⟩
  unfold Seg24.relationPart133 at p133
  rcases p133 with ⟨r665, r666, r667, r668, r669⟩
  unfold Seg24.relationPart134 at p134
  rcases p134 with ⟨r670, r671, r672, r673, r674⟩
  unfold Seg24.relationPart135 at p135
  rcases p135 with ⟨r675, r676, r677, r678, r679⟩
  unfold Seg24.relationPart136 at p136
  rcases p136 with ⟨r680, r681, r682, r683, r684⟩
  unfold Seg24.relationPart137 at p137
  rcases p137 with ⟨r685, r686, r687, r688, r689⟩
  unfold Seg24.relationPart138 at p138
  rcases p138 with ⟨r690, r691, r692, r693, r694⟩
  unfold Seg24.relationPart139 at p139
  rcases p139 with ⟨r695, r696, r697, r698, r699⟩
  unfold Seg24.relationPart140 at p140
  rcases p140 with ⟨r700, r701, r702, r703, r704⟩
  unfold Seg24.relationPart141 at p141
  rcases p141 with ⟨r705, r706, r707, r708, r709⟩
  unfold Seg24.relationPart142 at p142
  rcases p142 with ⟨r710, r711, r712, r713, r714⟩
  unfold Seg24.relationPart143 at p143
  rcases p143 with ⟨r715, r716, r717, r718, r719⟩
  unfold Seg24.relationPart144 at p144
  rcases p144 with ⟨r720, r721, r722, r723, r724⟩
  unfold Seg24.relationPart145 at p145
  rcases p145 with ⟨r725, r726, r727, r728, r729⟩
  unfold Seg24.relationPart146 at p146
  rcases p146 with ⟨r730, r731, r732, r733, r734⟩
  unfold Seg24.relationPart147 at p147
  rcases p147 with ⟨r735, r736, r737, r738, r739⟩
  unfold Seg24.relationPart148 at p148
  rcases p148 with ⟨r740, r741, r742, r743, r744⟩
  unfold Seg24.relationPart149 at p149
  rcases p149 with ⟨r745, r746, r747, r748, r749⟩
  unfold Seg24.relationPart150 at p150
  rcases p150 with ⟨r750, r751, r752, r753, r754⟩
  unfold Seg24.relationPart151 at p151
  rcases p151 with ⟨r755, r756, r757, r758, r759⟩
  unfold Seg24.relationPart152 at p152
  rcases p152 with ⟨r760, r761, r762, r763, r764⟩
  unfold Seg24.relationPart153 at p153
  rcases p153 with ⟨r765, r766, r767, r768, r769⟩
  unfold Seg24.relationPart154 at p154
  rcases p154 with ⟨r770, r771, r772, r773, r774⟩
  unfold Seg24.relationPart155 at p155
  rcases p155 with ⟨r775, r776, r777, r778, r779⟩
  unfold Seg24.relationPart156 at p156
  rcases p156 with ⟨r780, r781, r782, r783, r784⟩
  unfold Seg24.relationPart157 at p157
  rcases p157 with ⟨r785, r786, r787, r788, r789⟩
  unfold Seg24.relationPart158 at p158
  rcases p158 with ⟨r790, r791, r792, r793, r794⟩
  unfold Seg24.relationPart159 at p159
  rcases p159 with ⟨r795, r796, r797, r798, r799⟩
  unfold Seg24.relationPart160 at p160
  rcases p160 with ⟨r800, r801, r802, r803, r804⟩
  unfold Seg24.relationPart161 at p161
  rcases p161 with ⟨r805, r806, r807, r808, r809⟩
  unfold Seg24.relationPart162 at p162
  rcases p162 with ⟨r810, r811, r812, r813, r814⟩
  unfold Seg24.relationPart163 at p163
  rcases p163 with ⟨r815, r816, r817, r818, r819⟩
  unfold Seg24.relationPart164 at p164
  rcases p164 with ⟨r820, r821, r822, r823, r824⟩
  unfold Seg24.relationPart165 at p165
  rcases p165 with ⟨r825, r826, r827, r828, r829⟩
  unfold Seg24.relationPart166 at p166
  rcases p166 with ⟨r830, r831, r832, r833, r834⟩
  unfold Seg24.relationPart167 at p167
  rcases p167 with ⟨r835, r836, r837, r838, r839⟩
  unfold Seg24.relationPart168 at p168
  rcases p168 with ⟨r840, r841, r842, r843, r844⟩
  unfold Seg24.relationPart169 at p169
  rcases p169 with ⟨r845, r846, r847, r848, r849⟩
  unfold Seg24.relationPart170 at p170
  rcases p170 with ⟨r850, r851, r852, r853, r854⟩
  unfold Seg24.relationPart171 at p171
  rcases p171 with ⟨r855, r856, r857, r858, r859⟩
  unfold Seg24.relationPart172 at p172
  rcases p172 with ⟨r860, r861, r862, r863, r864⟩
  unfold Seg24.relationPart173 at p173
  rcases p173 with ⟨r865, r866, r867, r868, r869⟩
  unfold Seg24.relationPart174 at p174
  rcases p174 with ⟨r870, r871, r872, r873, r874⟩
  unfold Seg24.relationPart175 at p175
  rcases p175 with ⟨r875, r876, r877, r878, r879⟩
  unfold Seg24.relationPart176 at p176
  rcases p176 with ⟨r880, r881, r882, r883, r884⟩
  unfold Seg24.relationPart177 at p177
  rcases p177 with ⟨r885, r886, r887, r888, r889⟩
  unfold Seg24.relationPart178 at p178
  rcases p178 with ⟨r890, r891, r892, r893, r894⟩
  unfold Seg24.relationPart179 at p179
  rcases p179 with ⟨r895, r896, r897, r898, r899⟩
  unfold Seg24.relationPart180 at p180
  rcases p180 with ⟨r900, r901, r902, r903, r904⟩
  unfold Seg24.relationPart181 at p181
  rcases p181 with ⟨r905, r906, r907, r908, r909⟩
  unfold Seg24.relationPart182 at p182
  rcases p182 with ⟨r910, r911, r912, r913, r914⟩
  unfold Seg24.relationPart183 at p183
  rcases p183 with ⟨r915, r916, r917, r918, r919⟩
  unfold Seg24.relationPart184 at p184
  rcases p184 with ⟨r920, r921, r922, r923, r924⟩
  unfold Seg24.relationPart185 at p185
  rcases p185 with ⟨r925, r926, r927, r928, r929⟩
  unfold Seg24.relationPart186 at p186
  rcases p186 with ⟨r930, r931, r932, r933, r934⟩
  unfold Seg24.relationPart187 at p187
  rcases p187 with ⟨r935, r936, r937, r938, r939⟩
  unfold Seg24.relationPart188 at p188
  rcases p188 with ⟨r940, r941, r942, r943, r944⟩
  unfold Seg24.relationPart189 at p189
  rcases p189 with ⟨r945, r946, r947, r948, r949⟩
  unfold Seg24.relationPart190 at p190
  rcases p190 with ⟨r950, r951, r952, r953, r954⟩
  unfold Seg24.relationPart191 at p191
  rcases p191 with ⟨r955, r956, r957, r958, r959⟩
  unfold Seg24.relationPart192 at p192
  rcases p192 with ⟨r960, r961, r962, r963, r964⟩
  unfold Seg24.relationPart193 at p193
  rcases p193 with ⟨r965, r966, r967, r968, r969⟩
  unfold Seg24.relationPart194 at p194
  rcases p194 with ⟨r970, r971, r972, r973, r974⟩
  unfold Seg24.relationPart195 at p195
  rcases p195 with ⟨r975, r976, r977, r978, r979⟩
  unfold Seg24.relationPart196 at p196
  rcases p196 with ⟨r980, r981, r982, r983, r984⟩
  unfold Seg24.relationPart197 at p197
  rcases p197 with ⟨r985, r986, r987, r988, r989⟩
  unfold Seg24.relationPart198 at p198
  rcases p198 with ⟨r990, r991, r992, r993, r994⟩
  unfold Seg24.relationPart199 at p199
  rcases p199 with ⟨r995, r996, r997, r998, r999⟩
  unfold Seg24.relationPart200 at p200
  rcases p200 with ⟨r1000, r1001, r1002, r1003, r1004⟩
  unfold Seg24.relationPart201 at p201
  rcases p201 with ⟨r1005, r1006, r1007, r1008, r1009⟩
  unfold Seg24.relationPart202 at p202
  rcases p202 with ⟨r1010, r1011, r1012, r1013, r1014⟩
  unfold Seg24.relationPart203 at p203
  rcases p203 with ⟨r1015, r1016, r1017, r1018, r1019⟩
  unfold Seg24.relationPart204 at p204
  rcases p204 with ⟨r1020, r1021, r1022, r1023, r1024⟩
  unfold Seg24.relationPart205 at p205
  rcases p205 with ⟨r1025, r1026, r1027, r1028, r1029⟩
  unfold Seg24.relationPart206 at p206
  rcases p206 with ⟨r1030, r1031, r1032, r1033, r1034⟩
  unfold Seg24.relationPart207 at p207
  rcases p207 with ⟨r1035, r1036, r1037, r1038, r1039⟩
  unfold Seg24.relationPart208 at p208
  rcases p208 with ⟨r1040, r1041, r1042, r1043, r1044⟩
  unfold Seg24.relationPart209 at p209
  have r1045 := p209
  change Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (seg24Rho rho 17) (seg24Rho rho 18) (seg24Rho rho 912 - seg24Rho rho 572)
  refine Shieldd.GnarkFormal.Extracted.DecafCompressToField.inst_compress_deployed_sound
    (seg24Rho rho)
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
  · unfold Seg24.relationRow0 at r0
    simpa [seg24Rho, mul_eq_zero] using r0
  · unfold Seg24.relationRow1 at r1
    simpa [seg24Rho, mul_eq_zero] using r1
  · unfold Seg24.relationRow2 at r2
    simpa [seg24Rho, mul_eq_zero] using r2
  · unfold Seg24.relationRow3 at r3
    simpa [seg24Rho, mul_eq_zero] using r3
  · unfold Seg24.relationRow4 at r4
    simpa [seg24Rho, mul_eq_zero] using r4
  · unfold Seg24.relationRow5 at r5
    simpa [seg24Rho, mul_eq_zero] using r5
  · unfold Seg24.relationRow6 at r6
    simpa [seg24Rho, mul_eq_zero] using r6
  · unfold Seg24.relationRow7 at r7
    simpa [seg24Rho, mul_eq_zero] using r7
  · unfold Seg24.relationRow8 at r8
    simpa [seg24Rho, mul_eq_zero] using r8
  · unfold Seg24.relationRow9 at r9
    simpa [seg24Rho, mul_eq_zero] using r9
  · unfold Seg24.relationRow10 at r10
    simpa [seg24Rho, mul_eq_zero] using r10
  · unfold Seg24.relationRow11 at r11
    simpa [seg24Rho, mul_eq_zero] using r11
  · unfold Seg24.relationRow12 at r12
    simpa [seg24Rho, mul_eq_zero] using r12
  · unfold Seg24.relationRow13 at r13
    simpa [seg24Rho, mul_eq_zero] using r13
  · unfold Seg24.relationRow14 at r14
    simpa [seg24Rho, mul_eq_zero] using r14
  · unfold Seg24.relationRow15 at r15
    simpa [seg24Rho, mul_eq_zero] using r15
  · unfold Seg24.relationRow16 at r16
    simpa [seg24Rho, mul_eq_zero] using r16
  · unfold Seg24.relationRow17 at r17
    simpa [seg24Rho, mul_eq_zero] using r17
  · unfold Seg24.relationRow18 at r18
    simpa [seg24Rho, mul_eq_zero] using r18
  · unfold Seg24.relationRow19 at r19
    simpa [seg24Rho, mul_eq_zero] using r19
  · unfold Seg24.relationRow20 at r20
    simpa [seg24Rho, mul_eq_zero] using r20
  · unfold Seg24.relationRow21 at r21
    simpa [seg24Rho, mul_eq_zero] using r21
  · unfold Seg24.relationRow22 at r22
    simpa [seg24Rho, mul_eq_zero] using r22
  · unfold Seg24.relationRow23 at r23
    simpa [seg24Rho, mul_eq_zero] using r23
  · unfold Seg24.relationRow24 at r24
    simpa [seg24Rho, mul_eq_zero] using r24
  · unfold Seg24.relationRow25 at r25
    simpa [seg24Rho, mul_eq_zero] using r25
  · unfold Seg24.relationRow26 at r26
    simpa [seg24Rho, mul_eq_zero] using r26
  · unfold Seg24.relationRow27 at r27
    simpa [seg24Rho, mul_eq_zero] using r27
  · unfold Seg24.relationRow28 at r28
    simpa [seg24Rho, mul_eq_zero] using r28
  · unfold Seg24.relationRow29 at r29
    simpa [seg24Rho, mul_eq_zero] using r29
  · unfold Seg24.relationRow30 at r30
    simpa [seg24Rho, mul_eq_zero] using r30
  · unfold Seg24.relationRow31 at r31
    simpa [seg24Rho, mul_eq_zero] using r31
  · unfold Seg24.relationRow32 at r32
    simpa [seg24Rho, mul_eq_zero] using r32
  · unfold Seg24.relationRow33 at r33
    simpa [seg24Rho, mul_eq_zero] using r33
  · unfold Seg24.relationRow34 at r34
    simpa [seg24Rho, mul_eq_zero] using r34
  · unfold Seg24.relationRow35 at r35
    simpa [seg24Rho, mul_eq_zero] using r35
  · unfold Seg24.relationRow36 at r36
    simpa [seg24Rho, mul_eq_zero] using r36
  · unfold Seg24.relationRow37 at r37
    simpa [seg24Rho, mul_eq_zero] using r37
  · unfold Seg24.relationRow38 at r38
    simpa [seg24Rho, mul_eq_zero] using r38
  · unfold Seg24.relationRow39 at r39
    simpa [seg24Rho, mul_eq_zero] using r39
  · unfold Seg24.relationRow40 at r40
    simpa [seg24Rho, mul_eq_zero] using r40
  · unfold Seg24.relationRow41 at r41
    simpa [seg24Rho, mul_eq_zero] using r41
  · unfold Seg24.relationRow42 at r42
    simpa [seg24Rho, mul_eq_zero] using r42
  · unfold Seg24.relationRow43 at r43
    simpa [seg24Rho, mul_eq_zero] using r43
  · unfold Seg24.relationRow44 at r44
    simpa [seg24Rho, mul_eq_zero] using r44
  · unfold Seg24.relationRow45 at r45
    simpa [seg24Rho, mul_eq_zero] using r45
  · unfold Seg24.relationRow46 at r46
    simpa [seg24Rho, mul_eq_zero] using r46
  · unfold Seg24.relationRow47 at r47
    simpa [seg24Rho, mul_eq_zero] using r47
  · unfold Seg24.relationRow48 at r48
    simpa [seg24Rho, mul_eq_zero] using r48
  · unfold Seg24.relationRow49 at r49
    simpa [seg24Rho, mul_eq_zero] using r49
  · unfold Seg24.relationRow50 at r50
    simpa [seg24Rho, mul_eq_zero] using r50
  · unfold Seg24.relationRow51 at r51
    simpa [seg24Rho, mul_eq_zero] using r51
  · unfold Seg24.relationRow52 at r52
    simpa [seg24Rho, mul_eq_zero] using r52
  · unfold Seg24.relationRow53 at r53
    simpa [seg24Rho, mul_eq_zero] using r53
  · unfold Seg24.relationRow54 at r54
    simpa [seg24Rho, mul_eq_zero] using r54
  · unfold Seg24.relationRow55 at r55
    simpa [seg24Rho, mul_eq_zero] using r55
  · unfold Seg24.relationRow56 at r56
    simpa [seg24Rho, mul_eq_zero] using r56
  · unfold Seg24.relationRow57 at r57
    simpa [seg24Rho, mul_eq_zero] using r57
  · unfold Seg24.relationRow58 at r58
    simpa [seg24Rho, mul_eq_zero] using r58
  · unfold Seg24.relationRow59 at r59
    simpa [seg24Rho, mul_eq_zero] using r59
  · unfold Seg24.relationRow60 at r60
    simpa [seg24Rho, mul_eq_zero] using r60
  · unfold Seg24.relationRow61 at r61
    simpa [seg24Rho, mul_eq_zero] using r61
  · unfold Seg24.relationRow62 at r62
    simpa [seg24Rho, mul_eq_zero] using r62
  · unfold Seg24.relationRow63 at r63
    simpa [seg24Rho, mul_eq_zero] using r63
  · unfold Seg24.relationRow64 at r64
    simpa [seg24Rho, mul_eq_zero] using r64
  · unfold Seg24.relationRow65 at r65
    simpa [seg24Rho, mul_eq_zero] using r65
  · unfold Seg24.relationRow66 at r66
    simpa [seg24Rho, mul_eq_zero] using r66
  · unfold Seg24.relationRow67 at r67
    simpa [seg24Rho, mul_eq_zero] using r67
  · unfold Seg24.relationRow68 at r68
    simpa [seg24Rho, mul_eq_zero] using r68
  · unfold Seg24.relationRow69 at r69
    simpa [seg24Rho, mul_eq_zero] using r69
  · unfold Seg24.relationRow70 at r70
    simpa [seg24Rho, mul_eq_zero] using r70
  · unfold Seg24.relationRow71 at r71
    simpa [seg24Rho, mul_eq_zero] using r71
  · unfold Seg24.relationRow72 at r72
    simpa [seg24Rho, mul_eq_zero] using r72
  · unfold Seg24.relationRow73 at r73
    simpa [seg24Rho, mul_eq_zero] using r73
  · unfold Seg24.relationRow74 at r74
    simpa [seg24Rho, mul_eq_zero] using r74
  · unfold Seg24.relationRow75 at r75
    simpa [seg24Rho, mul_eq_zero] using r75
  · unfold Seg24.relationRow76 at r76
    simpa [seg24Rho, mul_eq_zero] using r76
  · unfold Seg24.relationRow77 at r77
    simpa [seg24Rho, mul_eq_zero] using r77
  · unfold Seg24.relationRow78 at r78
    simpa [seg24Rho, mul_eq_zero] using r78
  · unfold Seg24.relationRow79 at r79
    simpa [seg24Rho, mul_eq_zero] using r79
  · unfold Seg24.relationRow80 at r80
    simpa [seg24Rho, mul_eq_zero] using r80
  · unfold Seg24.relationRow81 at r81
    simpa [seg24Rho, mul_eq_zero] using r81
  · unfold Seg24.relationRow82 at r82
    simpa [seg24Rho, mul_eq_zero] using r82
  · unfold Seg24.relationRow83 at r83
    simpa [seg24Rho, mul_eq_zero] using r83
  · unfold Seg24.relationRow84 at r84
    simpa [seg24Rho, mul_eq_zero] using r84
  · unfold Seg24.relationRow85 at r85
    simpa [seg24Rho, mul_eq_zero] using r85
  · unfold Seg24.relationRow86 at r86
    simpa [seg24Rho, mul_eq_zero] using r86
  · unfold Seg24.relationRow87 at r87
    simpa [seg24Rho, mul_eq_zero] using r87
  · unfold Seg24.relationRow88 at r88
    simpa [seg24Rho, mul_eq_zero] using r88
  · unfold Seg24.relationRow89 at r89
    simpa [seg24Rho, mul_eq_zero] using r89
  · unfold Seg24.relationRow90 at r90
    simpa [seg24Rho, mul_eq_zero] using r90
  · unfold Seg24.relationRow91 at r91
    simpa [seg24Rho, mul_eq_zero] using r91
  · unfold Seg24.relationRow92 at r92
    simpa [seg24Rho, mul_eq_zero] using r92
  · unfold Seg24.relationRow93 at r93
    simpa [seg24Rho, mul_eq_zero] using r93
  · unfold Seg24.relationRow94 at r94
    simpa [seg24Rho, mul_eq_zero] using r94
  · unfold Seg24.relationRow95 at r95
    simpa [seg24Rho, mul_eq_zero] using r95
  · unfold Seg24.relationRow96 at r96
    simpa [seg24Rho, mul_eq_zero] using r96
  · unfold Seg24.relationRow97 at r97
    simpa [seg24Rho, mul_eq_zero] using r97
  · unfold Seg24.relationRow98 at r98
    simpa [seg24Rho, mul_eq_zero] using r98
  · unfold Seg24.relationRow99 at r99
    simpa [seg24Rho, mul_eq_zero] using r99
  · unfold Seg24.relationRow100 at r100
    simpa [seg24Rho, mul_eq_zero] using r100
  · unfold Seg24.relationRow101 at r101
    simpa [seg24Rho, mul_eq_zero] using r101
  · unfold Seg24.relationRow102 at r102
    simpa [seg24Rho, mul_eq_zero] using r102
  · unfold Seg24.relationRow103 at r103
    simpa [seg24Rho, mul_eq_zero] using r103
  · unfold Seg24.relationRow104 at r104
    simpa [seg24Rho, mul_eq_zero] using r104
  · unfold Seg24.relationRow105 at r105
    simpa [seg24Rho, mul_eq_zero] using r105
  · unfold Seg24.relationRow106 at r106
    simpa [seg24Rho, mul_eq_zero] using r106
  · unfold Seg24.relationRow107 at r107
    simpa [seg24Rho, mul_eq_zero] using r107
  · unfold Seg24.relationRow108 at r108
    simpa [seg24Rho, mul_eq_zero] using r108
  · unfold Seg24.relationRow109 at r109
    simpa [seg24Rho, mul_eq_zero] using r109
  · unfold Seg24.relationRow110 at r110
    simpa [seg24Rho, mul_eq_zero] using r110
  · unfold Seg24.relationRow111 at r111
    simpa [seg24Rho, mul_eq_zero] using r111
  · unfold Seg24.relationRow112 at r112
    simpa [seg24Rho, mul_eq_zero] using r112
  · unfold Seg24.relationRow113 at r113
    simpa [seg24Rho, mul_eq_zero] using r113
  · unfold Seg24.relationRow114 at r114
    simpa [seg24Rho, mul_eq_zero] using r114
  · unfold Seg24.relationRow115 at r115
    simpa [seg24Rho, mul_eq_zero] using r115
  · unfold Seg24.relationRow116 at r116
    simpa [seg24Rho, mul_eq_zero] using r116
  · unfold Seg24.relationRow117 at r117
    simpa [seg24Rho, mul_eq_zero] using r117
  · unfold Seg24.relationRow118 at r118
    simpa [seg24Rho, mul_eq_zero] using r118
  · unfold Seg24.relationRow119 at r119
    simpa [seg24Rho, mul_eq_zero] using r119
  · unfold Seg24.relationRow120 at r120
    simpa [seg24Rho, mul_eq_zero] using r120
  · unfold Seg24.relationRow121 at r121
    simpa [seg24Rho, mul_eq_zero] using r121
  · unfold Seg24.relationRow122 at r122
    simpa [seg24Rho, mul_eq_zero] using r122
  · unfold Seg24.relationRow123 at r123
    simpa [seg24Rho, mul_eq_zero] using r123
  · unfold Seg24.relationRow124 at r124
    simpa [seg24Rho, mul_eq_zero] using r124
  · unfold Seg24.relationRow125 at r125
    simpa [seg24Rho, mul_eq_zero] using r125
  · unfold Seg24.relationRow126 at r126
    simpa [seg24Rho, mul_eq_zero] using r126
  · unfold Seg24.relationRow127 at r127
    simpa [seg24Rho, mul_eq_zero] using r127
  · unfold Seg24.relationRow128 at r128
    simpa [seg24Rho, mul_eq_zero] using r128
  · unfold Seg24.relationRow129 at r129
    simpa [seg24Rho, mul_eq_zero] using r129
  · unfold Seg24.relationRow130 at r130
    simpa [seg24Rho, mul_eq_zero] using r130
  · unfold Seg24.relationRow131 at r131
    simpa [seg24Rho, mul_eq_zero] using r131
  · unfold Seg24.relationRow132 at r132
    simpa [seg24Rho, mul_eq_zero] using r132
  · unfold Seg24.relationRow133 at r133
    simpa [seg24Rho, mul_eq_zero] using r133
  · unfold Seg24.relationRow134 at r134
    simpa [seg24Rho, mul_eq_zero] using r134
  · unfold Seg24.relationRow135 at r135
    simpa [seg24Rho, mul_eq_zero] using r135
  · unfold Seg24.relationRow136 at r136
    simpa [seg24Rho, mul_eq_zero] using r136
  · unfold Seg24.relationRow137 at r137
    simpa [seg24Rho, mul_eq_zero] using r137
  · unfold Seg24.relationRow138 at r138
    simpa [seg24Rho, mul_eq_zero] using r138
  · unfold Seg24.relationRow139 at r139
    simpa [seg24Rho, mul_eq_zero] using r139
  · unfold Seg24.relationRow140 at r140
    simpa [seg24Rho, mul_eq_zero] using r140
  · unfold Seg24.relationRow141 at r141
    simpa [seg24Rho, mul_eq_zero] using r141
  · unfold Seg24.relationRow142 at r142
    simpa [seg24Rho, mul_eq_zero] using r142
  · unfold Seg24.relationRow143 at r143
    simpa [seg24Rho, mul_eq_zero] using r143
  · unfold Seg24.relationRow144 at r144
    simpa [seg24Rho, mul_eq_zero] using r144
  · unfold Seg24.relationRow145 at r145
    simpa [seg24Rho, mul_eq_zero] using r145
  · unfold Seg24.relationRow146 at r146
    simpa [seg24Rho, mul_eq_zero] using r146
  · unfold Seg24.relationRow147 at r147
    simpa [seg24Rho, mul_eq_zero] using r147
  · unfold Seg24.relationRow148 at r148
    simpa [seg24Rho, mul_eq_zero] using r148
  · unfold Seg24.relationRow149 at r149
    simpa [seg24Rho, mul_eq_zero] using r149
  · unfold Seg24.relationRow150 at r150
    simpa [seg24Rho, mul_eq_zero] using r150
  · unfold Seg24.relationRow151 at r151
    simpa [seg24Rho, mul_eq_zero] using r151
  · unfold Seg24.relationRow152 at r152
    simpa [seg24Rho, mul_eq_zero] using r152
  · unfold Seg24.relationRow153 at r153
    simpa [seg24Rho, mul_eq_zero] using r153
  · unfold Seg24.relationRow154 at r154
    simpa [seg24Rho, mul_eq_zero] using r154
  · unfold Seg24.relationRow155 at r155
    simpa [seg24Rho, mul_eq_zero] using r155
  · unfold Seg24.relationRow156 at r156
    simpa [seg24Rho, mul_eq_zero] using r156
  · unfold Seg24.relationRow157 at r157
    simpa [seg24Rho, mul_eq_zero] using r157
  · unfold Seg24.relationRow158 at r158
    simpa [seg24Rho, mul_eq_zero] using r158
  · unfold Seg24.relationRow159 at r159
    simpa [seg24Rho, mul_eq_zero] using r159
  · unfold Seg24.relationRow160 at r160
    simpa [seg24Rho, mul_eq_zero] using r160
  · unfold Seg24.relationRow161 at r161
    simpa [seg24Rho, mul_eq_zero] using r161
  · unfold Seg24.relationRow162 at r162
    simpa [seg24Rho, mul_eq_zero] using r162
  · unfold Seg24.relationRow163 at r163
    simpa [seg24Rho, mul_eq_zero] using r163
  · unfold Seg24.relationRow164 at r164
    simpa [seg24Rho, mul_eq_zero] using r164
  · unfold Seg24.relationRow165 at r165
    simpa [seg24Rho, mul_eq_zero] using r165
  · unfold Seg24.relationRow166 at r166
    simpa [seg24Rho, mul_eq_zero] using r166
  · unfold Seg24.relationRow167 at r167
    simpa [seg24Rho, mul_eq_zero] using r167
  · unfold Seg24.relationRow168 at r168
    simpa [seg24Rho, mul_eq_zero] using r168
  · unfold Seg24.relationRow169 at r169
    simpa [seg24Rho, mul_eq_zero] using r169
  · unfold Seg24.relationRow170 at r170
    simpa [seg24Rho, mul_eq_zero] using r170
  · unfold Seg24.relationRow171 at r171
    simpa [seg24Rho, mul_eq_zero] using r171
  · unfold Seg24.relationRow172 at r172
    simpa [seg24Rho, mul_eq_zero] using r172
  · unfold Seg24.relationRow173 at r173
    simpa [seg24Rho, mul_eq_zero] using r173
  · unfold Seg24.relationRow174 at r174
    simpa [seg24Rho, mul_eq_zero] using r174
  · unfold Seg24.relationRow175 at r175
    simpa [seg24Rho, mul_eq_zero] using r175
  · unfold Seg24.relationRow176 at r176
    simpa [seg24Rho, mul_eq_zero] using r176
  · unfold Seg24.relationRow177 at r177
    simpa [seg24Rho, mul_eq_zero] using r177
  · unfold Seg24.relationRow178 at r178
    simpa [seg24Rho, mul_eq_zero] using r178
  · unfold Seg24.relationRow179 at r179
    simpa [seg24Rho, mul_eq_zero] using r179
  · unfold Seg24.relationRow180 at r180
    simpa [seg24Rho, mul_eq_zero] using r180
  · unfold Seg24.relationRow181 at r181
    simpa [seg24Rho, mul_eq_zero] using r181
  · unfold Seg24.relationRow182 at r182
    simpa [seg24Rho, mul_eq_zero] using r182
  · unfold Seg24.relationRow183 at r183
    simpa [seg24Rho, mul_eq_zero] using r183
  · unfold Seg24.relationRow184 at r184
    simpa [seg24Rho, mul_eq_zero] using r184
  · unfold Seg24.relationRow185 at r185
    simpa [seg24Rho, mul_eq_zero] using r185
  · unfold Seg24.relationRow186 at r186
    simpa [seg24Rho, mul_eq_zero] using r186
  · unfold Seg24.relationRow187 at r187
    simpa [seg24Rho, mul_eq_zero] using r187
  · unfold Seg24.relationRow188 at r188
    simpa [seg24Rho, mul_eq_zero] using r188
  · unfold Seg24.relationRow189 at r189
    simpa [seg24Rho, mul_eq_zero] using r189
  · unfold Seg24.relationRow190 at r190
    simpa [seg24Rho, mul_eq_zero] using r190
  · unfold Seg24.relationRow191 at r191
    simpa [seg24Rho, mul_eq_zero] using r191
  · unfold Seg24.relationRow192 at r192
    simpa [seg24Rho, mul_eq_zero] using r192
  · unfold Seg24.relationRow193 at r193
    simpa [seg24Rho, mul_eq_zero] using r193
  · unfold Seg24.relationRow194 at r194
    simpa [seg24Rho, mul_eq_zero] using r194
  · unfold Seg24.relationRow195 at r195
    simpa [seg24Rho, mul_eq_zero] using r195
  · unfold Seg24.relationRow196 at r196
    simpa [seg24Rho, mul_eq_zero] using r196
  · unfold Seg24.relationRow197 at r197
    simpa [seg24Rho, mul_eq_zero] using r197
  · unfold Seg24.relationRow198 at r198
    simpa [seg24Rho, mul_eq_zero] using r198
  · unfold Seg24.relationRow199 at r199
    simpa [seg24Rho, mul_eq_zero] using r199
  · unfold Seg24.relationRow200 at r200
    simpa [seg24Rho, mul_eq_zero] using r200
  · unfold Seg24.relationRow201 at r201
    simpa [seg24Rho, mul_eq_zero] using r201
  · unfold Seg24.relationRow202 at r202
    simpa [seg24Rho, mul_eq_zero] using r202
  · unfold Seg24.relationRow203 at r203
    simpa [seg24Rho, mul_eq_zero] using r203
  · unfold Seg24.relationRow204 at r204
    simpa [seg24Rho, mul_eq_zero] using r204
  · unfold Seg24.relationRow205 at r205
    simpa [seg24Rho, mul_eq_zero] using r205
  · unfold Seg24.relationRow206 at r206
    simpa [seg24Rho, mul_eq_zero] using r206
  · unfold Seg24.relationRow207 at r207
    simpa [seg24Rho, mul_eq_zero] using r207
  · unfold Seg24.relationRow208 at r208
    simpa [seg24Rho, mul_eq_zero] using r208
  · unfold Seg24.relationRow209 at r209
    simpa [seg24Rho, mul_eq_zero] using r209
  · unfold Seg24.relationRow210 at r210
    simpa [seg24Rho, mul_eq_zero] using r210
  · unfold Seg24.relationRow211 at r211
    simpa [seg24Rho, mul_eq_zero] using r211
  · unfold Seg24.relationRow212 at r212
    simpa [seg24Rho, mul_eq_zero] using r212
  · unfold Seg24.relationRow213 at r213
    simpa [seg24Rho, mul_eq_zero] using r213
  · unfold Seg24.relationRow214 at r214
    simpa [seg24Rho, mul_eq_zero] using r214
  · unfold Seg24.relationRow215 at r215
    simpa [seg24Rho, mul_eq_zero] using r215
  · unfold Seg24.relationRow216 at r216
    simpa [seg24Rho, mul_eq_zero] using r216
  · unfold Seg24.relationRow217 at r217
    simpa [seg24Rho, mul_eq_zero] using r217
  · unfold Seg24.relationRow218 at r218
    simpa [seg24Rho, mul_eq_zero] using r218
  · unfold Seg24.relationRow219 at r219
    simpa [seg24Rho, mul_eq_zero] using r219
  · unfold Seg24.relationRow220 at r220
    simpa [seg24Rho, mul_eq_zero] using r220
  · unfold Seg24.relationRow221 at r221
    simpa [seg24Rho, mul_eq_zero] using r221
  · unfold Seg24.relationRow222 at r222
    simpa [seg24Rho, mul_eq_zero] using r222
  · unfold Seg24.relationRow223 at r223
    simpa [seg24Rho, mul_eq_zero] using r223
  · unfold Seg24.relationRow224 at r224
    simpa [seg24Rho, mul_eq_zero] using r224
  · unfold Seg24.relationRow225 at r225
    simpa [seg24Rho, mul_eq_zero] using r225
  · unfold Seg24.relationRow226 at r226
    simpa [seg24Rho, mul_eq_zero] using r226
  · unfold Seg24.relationRow227 at r227
    simpa [seg24Rho, mul_eq_zero] using r227
  · unfold Seg24.relationRow228 at r228
    simpa [seg24Rho, mul_eq_zero] using r228
  · unfold Seg24.relationRow229 at r229
    simpa [seg24Rho, mul_eq_zero] using r229
  · unfold Seg24.relationRow230 at r230
    simpa [seg24Rho, mul_eq_zero] using r230
  · unfold Seg24.relationRow231 at r231
    simpa [seg24Rho, mul_eq_zero] using r231
  · unfold Seg24.relationRow232 at r232
    simpa [seg24Rho, mul_eq_zero] using r232
  · unfold Seg24.relationRow233 at r233
    simpa [seg24Rho, mul_eq_zero] using r233
  · unfold Seg24.relationRow234 at r234
    simpa [seg24Rho, mul_eq_zero] using r234
  · unfold Seg24.relationRow235 at r235
    simpa [seg24Rho, mul_eq_zero] using r235
  · unfold Seg24.relationRow236 at r236
    simpa [seg24Rho, mul_eq_zero] using r236
  · unfold Seg24.relationRow237 at r237
    simpa [seg24Rho, mul_eq_zero] using r237
  · unfold Seg24.relationRow238 at r238
    simpa [seg24Rho, mul_eq_zero] using r238
  · unfold Seg24.relationRow239 at r239
    simpa [seg24Rho, mul_eq_zero] using r239
  · unfold Seg24.relationRow240 at r240
    simpa [seg24Rho, mul_eq_zero] using r240
  · unfold Seg24.relationRow241 at r241
    simpa [seg24Rho, mul_eq_zero] using r241
  · unfold Seg24.relationRow242 at r242
    simpa [seg24Rho, mul_eq_zero] using r242
  · unfold Seg24.relationRow243 at r243
    simpa [seg24Rho, mul_eq_zero] using r243
  · unfold Seg24.relationRow244 at r244
    simpa [seg24Rho, mul_eq_zero] using r244
  · unfold Seg24.relationRow245 at r245
    simpa [seg24Rho, mul_eq_zero] using r245
  · unfold Seg24.relationRow246 at r246
    simpa [seg24Rho, mul_eq_zero] using r246
  · unfold Seg24.relationRow247 at r247
    simpa [seg24Rho, mul_eq_zero] using r247
  · unfold Seg24.relationRow248 at r248
    simpa [seg24Rho, mul_eq_zero] using r248
  · unfold Seg24.relationRow249 at r249
    simpa [seg24Rho, mul_eq_zero] using r249
  · unfold Seg24.relationRow250 at r250
    simpa [seg24Rho, mul_eq_zero] using r250
  · unfold Seg24.relationRow251 at r251
    simpa [seg24Rho, mul_eq_zero] using r251
  · unfold Seg24.relationRow252 at r252
    simpa [seg24Rho, mul_eq_zero] using r252
  · unfold Seg24.relationRow253 at r253
    simpa [seg24Rho, mul_eq_zero] using r253
  · unfold Seg24.relationRow254 at r254
    simpa [seg24Rho, mul_eq_zero] using r254
  · unfold Seg24.relationRow255 at r255
    simpa [seg24Rho, mul_eq_zero] using r255
  · unfold Seg24.relationRow256 at r256
    simpa [seg24Rho, mul_eq_zero] using r256
  · unfold Seg24.relationRow257 at r257
    simpa [seg24Rho, mul_eq_zero] using r257
  · unfold Seg24.relationRow258 at r258
    simpa [seg24Rho, mul_eq_zero] using r258
  · unfold Seg24.relationRow259 at r259
    simpa [seg24Rho, mul_eq_zero] using r259
  · unfold Seg24.relationRow260 at r260
    simpa [seg24Rho, mul_eq_zero] using r260
  · unfold Seg24.relationRow261 at r261
    simpa [seg24Rho, mul_eq_zero] using r261
  · unfold Seg24.relationRow262 at r262
    simpa [seg24Rho, mul_eq_zero] using r262
  · unfold Seg24.relationRow263 at r263
    simpa [seg24Rho, mul_eq_zero] using r263
  · unfold Seg24.relationRow264 at r264
    simpa [seg24Rho, mul_eq_zero] using r264
  · unfold Seg24.relationRow265 at r265
    simpa [seg24Rho, mul_eq_zero] using r265
  · unfold Seg24.relationRow266 at r266
    simpa [seg24Rho, mul_eq_zero] using r266
  · unfold Seg24.relationRow267 at r267
    simpa [seg24Rho, mul_eq_zero] using r267
  · unfold Seg24.relationRow268 at r268
    simpa [seg24Rho, mul_eq_zero] using r268
  · unfold Seg24.relationRow269 at r269
    simpa [seg24Rho, mul_eq_zero] using r269
  · unfold Seg24.relationRow270 at r270
    simpa [seg24Rho, mul_eq_zero] using r270
  · unfold Seg24.relationRow271 at r271
    simpa [seg24Rho, mul_eq_zero] using r271
  · unfold Seg24.relationRow272 at r272
    simpa [seg24Rho, mul_eq_zero] using r272
  · unfold Seg24.relationRow273 at r273
    simpa [seg24Rho, mul_eq_zero] using r273
  · unfold Seg24.relationRow274 at r274
    simpa [seg24Rho, mul_eq_zero] using r274
  · unfold Seg24.relationRow275 at r275
    simpa [seg24Rho, mul_eq_zero] using r275
  · unfold Seg24.relationRow276 at r276
    simpa [seg24Rho, mul_eq_zero] using r276
  · unfold Seg24.relationRow277 at r277
    simpa [seg24Rho, mul_eq_zero] using r277
  · unfold Seg24.relationRow278 at r278
    simpa [seg24Rho, mul_eq_zero] using r278
  · unfold Seg24.relationRow279 at r279
    simpa [seg24Rho, mul_eq_zero] using r279
  · unfold Seg24.relationRow280 at r280
    simpa [seg24Rho, mul_eq_zero] using r280
  · unfold Seg24.relationRow282 at r282
    simpa [seg24Rho, mul_eq_zero] using r282
  · unfold Seg24.relationRow283 at r283
    simpa [seg24Rho, mul_eq_zero] using r283
  · unfold Seg24.relationRow284 at r284
    simpa [seg24Rho, mul_eq_zero] using r284
  · unfold Seg24.relationRow285 at r285
    simpa [seg24Rho, mul_eq_zero] using r285
  · unfold Seg24.relationRow286 at r286
    simpa [seg24Rho, mul_eq_zero] using r286
  · unfold Seg24.relationRow287 at r287
    simpa [seg24Rho, mul_eq_zero] using r287
  · unfold Seg24.relationRow288 at r288
    simpa [seg24Rho, mul_eq_zero] using r288
  · unfold Seg24.relationRow289 at r289
    simpa [seg24Rho, mul_eq_zero] using r289
  · unfold Seg24.relationRow290 at r290
    simpa [seg24Rho, mul_eq_zero] using r290
  · unfold Seg24.relationRow291 at r291
    simpa [seg24Rho, mul_eq_zero] using r291
  · unfold Seg24.relationRow292 at r292
    simpa [seg24Rho, mul_eq_zero] using r292
  · unfold Seg24.relationRow293 at r293
    simpa [seg24Rho, mul_eq_zero] using r293
  · unfold Seg24.relationRow294 at r294
    simpa [seg24Rho, mul_eq_zero] using r294
  · unfold Seg24.relationRow295 at r295
    simpa [seg24Rho, mul_eq_zero] using r295
  · unfold Seg24.relationRow296 at r296
    simpa [seg24Rho, mul_eq_zero] using r296
  · unfold Seg24.relationRow297 at r297
    simpa [seg24Rho, mul_eq_zero] using r297
  · unfold Seg24.relationRow298 at r298
    simpa [seg24Rho, mul_eq_zero] using r298
  · unfold Seg24.relationRow299 at r299
    simpa [seg24Rho, mul_eq_zero] using r299
  · unfold Seg24.relationRow300 at r300
    simpa [seg24Rho, mul_eq_zero] using r300
  · unfold Seg24.relationRow301 at r301
    simpa [seg24Rho, mul_eq_zero] using r301
  · unfold Seg24.relationRow302 at r302
    simpa [seg24Rho, mul_eq_zero] using r302
  · unfold Seg24.relationRow303 at r303
    simpa [seg24Rho, mul_eq_zero] using r303
  · unfold Seg24.relationRow304 at r304
    simpa [seg24Rho, mul_eq_zero] using r304
  · unfold Seg24.relationRow305 at r305
    simpa [seg24Rho, mul_eq_zero] using r305
  · unfold Seg24.relationRow306 at r306
    simpa [seg24Rho, mul_eq_zero] using r306
  · unfold Seg24.relationRow307 at r307
    simpa [seg24Rho, mul_eq_zero] using r307
  · unfold Seg24.relationRow308 at r308
    simpa [seg24Rho, mul_eq_zero] using r308
  · unfold Seg24.relationRow309 at r309
    simpa [seg24Rho, mul_eq_zero] using r309
  · unfold Seg24.relationRow310 at r310
    simpa [seg24Rho, mul_eq_zero] using r310
  · unfold Seg24.relationRow311 at r311
    simpa [seg24Rho, mul_eq_zero] using r311
  · unfold Seg24.relationRow312 at r312
    simpa [seg24Rho, mul_eq_zero] using r312
  · unfold Seg24.relationRow313 at r313
    simpa [seg24Rho, mul_eq_zero] using r313
  · unfold Seg24.relationRow314 at r314
    simpa [seg24Rho, mul_eq_zero] using r314
  · unfold Seg24.relationRow315 at r315
    simpa [seg24Rho, mul_eq_zero] using r315
  · unfold Seg24.relationRow316 at r316
    simpa [seg24Rho, mul_eq_zero] using r316
  · unfold Seg24.relationRow317 at r317
    simpa [seg24Rho, mul_eq_zero] using r317
  · unfold Seg24.relationRow318 at r318
    simpa [seg24Rho, mul_eq_zero] using r318
  · unfold Seg24.relationRow319 at r319
    simpa [seg24Rho, mul_eq_zero] using r319
  · unfold Seg24.relationRow320 at r320
    simpa [seg24Rho, mul_eq_zero] using r320
  · unfold Seg24.relationRow321 at r321
    simpa [seg24Rho, mul_eq_zero] using r321
  · unfold Seg24.relationRow322 at r322
    simpa [seg24Rho, mul_eq_zero] using r322
  · unfold Seg24.relationRow323 at r323
    simpa [seg24Rho, mul_eq_zero] using r323
  · unfold Seg24.relationRow324 at r324
    simpa [seg24Rho, mul_eq_zero] using r324
  · unfold Seg24.relationRow325 at r325
    simpa [seg24Rho, mul_eq_zero] using r325
  · unfold Seg24.relationRow326 at r326
    simpa [seg24Rho, mul_eq_zero] using r326
  · unfold Seg24.relationRow327 at r327
    simpa [seg24Rho, mul_eq_zero] using r327
  · unfold Seg24.relationRow328 at r328
    simpa [seg24Rho, mul_eq_zero] using r328
  · unfold Seg24.relationRow329 at r329
    simpa [seg24Rho, mul_eq_zero] using r329
  · unfold Seg24.relationRow330 at r330
    simpa [seg24Rho, mul_eq_zero] using r330
  · unfold Seg24.relationRow331 at r331
    simpa [seg24Rho, mul_eq_zero] using r331
  · unfold Seg24.relationRow332 at r332
    simpa [seg24Rho, mul_eq_zero] using r332
  · unfold Seg24.relationRow333 at r333
    simpa [seg24Rho, mul_eq_zero] using r333
  · unfold Seg24.relationRow334 at r334
    simpa [seg24Rho, mul_eq_zero] using r334
  · unfold Seg24.relationRow335 at r335
    simpa [seg24Rho, mul_eq_zero] using r335
  · unfold Seg24.relationRow336 at r336
    simpa [seg24Rho, mul_eq_zero] using r336
  · unfold Seg24.relationRow337 at r337
    simpa [seg24Rho, mul_eq_zero] using r337
  · unfold Seg24.relationRow338 at r338
    simpa [seg24Rho, mul_eq_zero] using r338
  · unfold Seg24.relationRow339 at r339
    simpa [seg24Rho, mul_eq_zero] using r339
  · unfold Seg24.relationRow340 at r340
    simpa [seg24Rho, mul_eq_zero] using r340
  · unfold Seg24.relationRow341 at r341
    simpa [seg24Rho, mul_eq_zero] using r341
  · unfold Seg24.relationRow342 at r342
    simpa [seg24Rho, mul_eq_zero] using r342
  · unfold Seg24.relationRow343 at r343
    simpa [seg24Rho, mul_eq_zero] using r343
  · unfold Seg24.relationRow344 at r344
    simpa [seg24Rho, mul_eq_zero] using r344
  · unfold Seg24.relationRow345 at r345
    simpa [seg24Rho, mul_eq_zero] using r345
  · unfold Seg24.relationRow346 at r346
    simpa [seg24Rho, mul_eq_zero] using r346
  · unfold Seg24.relationRow347 at r347
    simpa [seg24Rho, mul_eq_zero] using r347
  · unfold Seg24.relationRow348 at r348
    simpa [seg24Rho, mul_eq_zero] using r348
  · unfold Seg24.relationRow349 at r349
    simpa [seg24Rho, mul_eq_zero] using r349
  · unfold Seg24.relationRow350 at r350
    simpa [seg24Rho, mul_eq_zero] using r350
  · unfold Seg24.relationRow351 at r351
    simpa [seg24Rho, mul_eq_zero] using r351
  · unfold Seg24.relationRow352 at r352
    simpa [seg24Rho, mul_eq_zero] using r352
  · unfold Seg24.relationRow353 at r353
    simpa [seg24Rho, mul_eq_zero] using r353
  · unfold Seg24.relationRow354 at r354
    simpa [seg24Rho, mul_eq_zero] using r354
  · unfold Seg24.relationRow355 at r355
    simpa [seg24Rho, mul_eq_zero] using r355
  · unfold Seg24.relationRow356 at r356
    simpa [seg24Rho, mul_eq_zero] using r356
  · unfold Seg24.relationRow357 at r357
    simpa [seg24Rho, mul_eq_zero] using r357
  · unfold Seg24.relationRow358 at r358
    simpa [seg24Rho, mul_eq_zero] using r358
  · unfold Seg24.relationRow359 at r359
    simpa [seg24Rho, mul_eq_zero] using r359
  · unfold Seg24.relationRow360 at r360
    simpa [seg24Rho, mul_eq_zero] using r360
  · unfold Seg24.relationRow361 at r361
    simpa [seg24Rho, mul_eq_zero] using r361
  · unfold Seg24.relationRow362 at r362
    simpa [seg24Rho, mul_eq_zero] using r362
  · unfold Seg24.relationRow363 at r363
    simpa [seg24Rho, mul_eq_zero] using r363
  · unfold Seg24.relationRow364 at r364
    simpa [seg24Rho, mul_eq_zero] using r364
  · unfold Seg24.relationRow365 at r365
    simpa [seg24Rho, mul_eq_zero] using r365
  · unfold Seg24.relationRow366 at r366
    simpa [seg24Rho, mul_eq_zero] using r366
  · unfold Seg24.relationRow367 at r367
    simpa [seg24Rho, mul_eq_zero] using r367
  · unfold Seg24.relationRow368 at r368
    simpa [seg24Rho, mul_eq_zero] using r368
  · unfold Seg24.relationRow369 at r369
    simpa [seg24Rho, mul_eq_zero] using r369
  · unfold Seg24.relationRow370 at r370
    simpa [seg24Rho, mul_eq_zero] using r370
  · unfold Seg24.relationRow371 at r371
    simpa [seg24Rho, mul_eq_zero] using r371
  · unfold Seg24.relationRow372 at r372
    simpa [seg24Rho, mul_eq_zero] using r372
  · unfold Seg24.relationRow373 at r373
    simpa [seg24Rho, mul_eq_zero] using r373
  · unfold Seg24.relationRow374 at r374
    simpa [seg24Rho, mul_eq_zero] using r374
  · unfold Seg24.relationRow375 at r375
    simpa [seg24Rho, mul_eq_zero] using r375
  · unfold Seg24.relationRow376 at r376
    simpa [seg24Rho, mul_eq_zero] using r376
  · unfold Seg24.relationRow377 at r377
    simpa [seg24Rho, mul_eq_zero] using r377
  · unfold Seg24.relationRow378 at r378
    simpa [seg24Rho, mul_eq_zero] using r378
  · unfold Seg24.relationRow379 at r379
    simpa [seg24Rho, mul_eq_zero] using r379
  · unfold Seg24.relationRow380 at r380
    simpa [seg24Rho, mul_eq_zero] using r380
  · unfold Seg24.relationRow381 at r381
    simpa [seg24Rho, mul_eq_zero] using r381
  · unfold Seg24.relationRow382 at r382
    simpa [seg24Rho, mul_eq_zero] using r382
  · unfold Seg24.relationRow383 at r383
    simpa [seg24Rho, mul_eq_zero] using r383
  · unfold Seg24.relationRow384 at r384
    simpa [seg24Rho, mul_eq_zero] using r384
  · unfold Seg24.relationRow385 at r385
    simpa [seg24Rho, mul_eq_zero] using r385
  · unfold Seg24.relationRow386 at r386
    simpa [seg24Rho, mul_eq_zero] using r386
  · unfold Seg24.relationRow387 at r387
    simpa [seg24Rho, mul_eq_zero] using r387
  · unfold Seg24.relationRow388 at r388
    simpa [seg24Rho, mul_eq_zero] using r388
  · unfold Seg24.relationRow389 at r389
    simpa [seg24Rho, mul_eq_zero] using r389
  · unfold Seg24.relationRow390 at r390
    simpa [seg24Rho, mul_eq_zero] using r390
  · unfold Seg24.relationRow391 at r391
    simpa [seg24Rho, mul_eq_zero] using r391
  · unfold Seg24.relationRow392 at r392
    simpa [seg24Rho, mul_eq_zero] using r392
  · unfold Seg24.relationRow393 at r393
    simpa [seg24Rho, mul_eq_zero] using r393
  · unfold Seg24.relationRow394 at r394
    simpa [seg24Rho, mul_eq_zero] using r394
  · unfold Seg24.relationRow395 at r395
    simpa [seg24Rho, mul_eq_zero] using r395
  · unfold Seg24.relationRow396 at r396
    simpa [seg24Rho, mul_eq_zero] using r396
  · unfold Seg24.relationRow397 at r397
    simpa [seg24Rho, mul_eq_zero] using r397
  · unfold Seg24.relationRow398 at r398
    simpa [seg24Rho, mul_eq_zero] using r398
  · unfold Seg24.relationRow399 at r399
    simpa [seg24Rho, mul_eq_zero] using r399
  · unfold Seg24.relationRow400 at r400
    simpa [seg24Rho, mul_eq_zero] using r400
  · unfold Seg24.relationRow401 at r401
    simpa [seg24Rho, mul_eq_zero] using r401
  · unfold Seg24.relationRow402 at r402
    simpa [seg24Rho, mul_eq_zero] using r402
  · unfold Seg24.relationRow403 at r403
    simpa [seg24Rho, mul_eq_zero] using r403
  · unfold Seg24.relationRow404 at r404
    simpa [seg24Rho, mul_eq_zero] using r404
  · unfold Seg24.relationRow405 at r405
    simpa [seg24Rho, mul_eq_zero] using r405
  · unfold Seg24.relationRow406 at r406
    simpa [seg24Rho, mul_eq_zero] using r406
  · unfold Seg24.relationRow407 at r407
    simpa [seg24Rho, mul_eq_zero] using r407
  · unfold Seg24.relationRow408 at r408
    simpa [seg24Rho, mul_eq_zero] using r408
  · unfold Seg24.relationRow409 at r409
    simpa [seg24Rho, mul_eq_zero] using r409
  · unfold Seg24.relationRow410 at r410
    simpa [seg24Rho, mul_eq_zero] using r410
  · unfold Seg24.relationRow411 at r411
    simpa [seg24Rho, mul_eq_zero] using r411
  · unfold Seg24.relationRow412 at r412
    simpa [seg24Rho, mul_eq_zero] using r412
  · unfold Seg24.relationRow413 at r413
    simpa [seg24Rho, mul_eq_zero] using r413
  · unfold Seg24.relationRow414 at r414
    simpa [seg24Rho, mul_eq_zero] using r414
  · unfold Seg24.relationRow415 at r415
    simpa [seg24Rho, mul_eq_zero] using r415
  · unfold Seg24.relationRow416 at r416
    simpa [seg24Rho, mul_eq_zero] using r416
  · unfold Seg24.relationRow417 at r417
    simpa [seg24Rho, mul_eq_zero] using r417
  · unfold Seg24.relationRow418 at r418
    simpa [seg24Rho, mul_eq_zero] using r418
  · unfold Seg24.relationRow419 at r419
    simpa [seg24Rho, mul_eq_zero] using r419
  · unfold Seg24.relationRow420 at r420
    simpa [seg24Rho, mul_eq_zero] using r420
  · unfold Seg24.relationRow421 at r421
    simpa [seg24Rho, mul_eq_zero] using r421
  · unfold Seg24.relationRow422 at r422
    simpa [seg24Rho, mul_eq_zero] using r422
  · unfold Seg24.relationRow423 at r423
    simpa [seg24Rho, mul_eq_zero] using r423
  · unfold Seg24.relationRow424 at r424
    simpa [seg24Rho, mul_eq_zero] using r424
  · unfold Seg24.relationRow425 at r425
    simpa [seg24Rho, mul_eq_zero] using r425
  · unfold Seg24.relationRow426 at r426
    simpa [seg24Rho, mul_eq_zero] using r426
  · unfold Seg24.relationRow427 at r427
    simpa [seg24Rho, mul_eq_zero] using r427
  · unfold Seg24.relationRow428 at r428
    simpa [seg24Rho, mul_eq_zero] using r428
  · unfold Seg24.relationRow429 at r429
    simpa [seg24Rho, mul_eq_zero] using r429
  · unfold Seg24.relationRow430 at r430
    simpa [seg24Rho, mul_eq_zero] using r430
  · unfold Seg24.relationRow431 at r431
    simpa [seg24Rho, mul_eq_zero] using r431
  · unfold Seg24.relationRow432 at r432
    simpa [seg24Rho, mul_eq_zero] using r432
  · unfold Seg24.relationRow433 at r433
    simpa [seg24Rho, mul_eq_zero] using r433
  · unfold Seg24.relationRow434 at r434
    simpa [seg24Rho, mul_eq_zero] using r434
  · unfold Seg24.relationRow435 at r435
    simpa [seg24Rho, mul_eq_zero] using r435
  · unfold Seg24.relationRow436 at r436
    simpa [seg24Rho, mul_eq_zero] using r436
  · unfold Seg24.relationRow437 at r437
    simpa [seg24Rho, mul_eq_zero] using r437
  · unfold Seg24.relationRow438 at r438
    simpa [seg24Rho, mul_eq_zero] using r438
  · unfold Seg24.relationRow439 at r439
    simpa [seg24Rho, mul_eq_zero] using r439
  · unfold Seg24.relationRow440 at r440
    simpa [seg24Rho, mul_eq_zero] using r440
  · unfold Seg24.relationRow441 at r441
    simpa [seg24Rho, mul_eq_zero] using r441
  · unfold Seg24.relationRow442 at r442
    simpa [seg24Rho, mul_eq_zero] using r442
  · unfold Seg24.relationRow443 at r443
    simpa [seg24Rho, mul_eq_zero] using r443
  · unfold Seg24.relationRow444 at r444
    simpa [seg24Rho, mul_eq_zero] using r444
  · unfold Seg24.relationRow445 at r445
    simpa [seg24Rho, mul_eq_zero] using r445
  · unfold Seg24.relationRow446 at r446
    simpa [seg24Rho, mul_eq_zero] using r446
  · unfold Seg24.relationRow447 at r447
    simpa [seg24Rho, mul_eq_zero] using r447
  · unfold Seg24.relationRow448 at r448
    simpa [seg24Rho, mul_eq_zero] using r448
  · unfold Seg24.relationRow449 at r449
    simpa [seg24Rho, mul_eq_zero] using r449
  · unfold Seg24.relationRow450 at r450
    simpa [seg24Rho, mul_eq_zero] using r450
  · unfold Seg24.relationRow451 at r451
    simpa [seg24Rho, mul_eq_zero] using r451
  · unfold Seg24.relationRow452 at r452
    simpa [seg24Rho, mul_eq_zero] using r452
  · unfold Seg24.relationRow453 at r453
    simpa [seg24Rho, mul_eq_zero] using r453
  · unfold Seg24.relationRow454 at r454
    simpa [seg24Rho, mul_eq_zero] using r454
  · unfold Seg24.relationRow455 at r455
    simpa [seg24Rho, mul_eq_zero] using r455
  · unfold Seg24.relationRow456 at r456
    simpa [seg24Rho, mul_eq_zero] using r456
  · unfold Seg24.relationRow457 at r457
    simpa [seg24Rho, mul_eq_zero] using r457
  · unfold Seg24.relationRow458 at r458
    simpa [seg24Rho, mul_eq_zero] using r458
  · unfold Seg24.relationRow459 at r459
    simpa [seg24Rho, mul_eq_zero] using r459
  · unfold Seg24.relationRow460 at r460
    simpa [seg24Rho, mul_eq_zero] using r460
  · unfold Seg24.relationRow461 at r461
    simpa [seg24Rho, mul_eq_zero] using r461
  · unfold Seg24.relationRow462 at r462
    simpa [seg24Rho, mul_eq_zero] using r462
  · unfold Seg24.relationRow463 at r463
    simpa [seg24Rho, mul_eq_zero] using r463
  · unfold Seg24.relationRow464 at r464
    simpa [seg24Rho, mul_eq_zero] using r464
  · unfold Seg24.relationRow465 at r465
    simpa [seg24Rho, mul_eq_zero] using r465
  · unfold Seg24.relationRow466 at r466
    simpa [seg24Rho, mul_eq_zero] using r466
  · unfold Seg24.relationRow467 at r467
    simpa [seg24Rho, mul_eq_zero] using r467
  · unfold Seg24.relationRow468 at r468
    simpa [seg24Rho, mul_eq_zero] using r468
  · unfold Seg24.relationRow469 at r469
    simpa [seg24Rho, mul_eq_zero] using r469
  · unfold Seg24.relationRow470 at r470
    simpa [seg24Rho, mul_eq_zero] using r470
  · unfold Seg24.relationRow471 at r471
    simpa [seg24Rho, mul_eq_zero] using r471
  · unfold Seg24.relationRow472 at r472
    simpa [seg24Rho, mul_eq_zero] using r472
  · unfold Seg24.relationRow473 at r473
    simpa [seg24Rho, mul_eq_zero] using r473
  · unfold Seg24.relationRow474 at r474
    simpa [seg24Rho, mul_eq_zero] using r474
  · unfold Seg24.relationRow475 at r475
    simpa [seg24Rho, mul_eq_zero] using r475
  · unfold Seg24.relationRow476 at r476
    simpa [seg24Rho, mul_eq_zero] using r476
  · unfold Seg24.relationRow477 at r477
    simpa [seg24Rho, mul_eq_zero] using r477
  · unfold Seg24.relationRow478 at r478
    simpa [seg24Rho, mul_eq_zero] using r478
  · unfold Seg24.relationRow479 at r479
    simpa [seg24Rho, mul_eq_zero] using r479
  · unfold Seg24.relationRow480 at r480
    simpa [seg24Rho, mul_eq_zero] using r480
  · unfold Seg24.relationRow481 at r481
    simpa [seg24Rho, mul_eq_zero] using r481
  · unfold Seg24.relationRow482 at r482
    simpa [seg24Rho, mul_eq_zero] using r482
  · unfold Seg24.relationRow483 at r483
    simpa [seg24Rho, mul_eq_zero] using r483
  · unfold Seg24.relationRow484 at r484
    simpa [seg24Rho, mul_eq_zero] using r484
  · unfold Seg24.relationRow485 at r485
    simpa [seg24Rho, mul_eq_zero] using r485
  · unfold Seg24.relationRow486 at r486
    simpa [seg24Rho, mul_eq_zero] using r486
  · unfold Seg24.relationRow487 at r487
    simpa [seg24Rho, mul_eq_zero] using r487
  · unfold Seg24.relationRow488 at r488
    simpa [seg24Rho, mul_eq_zero] using r488
  · unfold Seg24.relationRow489 at r489
    simpa [seg24Rho, mul_eq_zero] using r489
  · unfold Seg24.relationRow490 at r490
    simpa [seg24Rho, mul_eq_zero] using r490
  · unfold Seg24.relationRow491 at r491
    simpa [seg24Rho, mul_eq_zero] using r491
  · unfold Seg24.relationRow492 at r492
    simpa [seg24Rho, mul_eq_zero] using r492
  · unfold Seg24.relationRow493 at r493
    simpa [seg24Rho, mul_eq_zero] using r493
  · unfold Seg24.relationRow494 at r494
    simpa [seg24Rho, mul_eq_zero] using r494
  · unfold Seg24.relationRow495 at r495
    simpa [seg24Rho, mul_eq_zero] using r495
  · unfold Seg24.relationRow496 at r496
    simpa [seg24Rho, mul_eq_zero] using r496
  · unfold Seg24.relationRow497 at r497
    simpa [seg24Rho, mul_eq_zero] using r497
  · unfold Seg24.relationRow498 at r498
    simpa [seg24Rho, mul_eq_zero] using r498
  · unfold Seg24.relationRow499 at r499
    simpa [seg24Rho, mul_eq_zero] using r499
  · unfold Seg24.relationRow500 at r500
    simpa [seg24Rho, mul_eq_zero] using r500
  · unfold Seg24.relationRow501 at r501
    simpa [seg24Rho, mul_eq_zero] using r501
  · unfold Seg24.relationRow502 at r502
    simpa [seg24Rho, mul_eq_zero] using r502
  · unfold Seg24.relationRow503 at r503
    simpa [seg24Rho, mul_eq_zero] using r503
  · unfold Seg24.relationRow504 at r504
    simpa [seg24Rho, mul_eq_zero] using r504
  · unfold Seg24.relationRow505 at r505
    simpa [seg24Rho, mul_eq_zero] using r505
  · unfold Seg24.relationRow506 at r506
    simpa [seg24Rho, mul_eq_zero] using r506
  · unfold Seg24.relationRow507 at r507
    simpa [seg24Rho, mul_eq_zero] using r507
  · unfold Seg24.relationRow508 at r508
    simpa [seg24Rho, mul_eq_zero] using r508
  · unfold Seg24.relationRow509 at r509
    simpa [seg24Rho, mul_eq_zero] using r509
  · unfold Seg24.relationRow510 at r510
    simpa [seg24Rho, mul_eq_zero] using r510
  · unfold Seg24.relationRow511 at r511
    simpa [seg24Rho, mul_eq_zero] using r511
  · unfold Seg24.relationRow512 at r512
    simpa [seg24Rho, mul_eq_zero] using r512
  · unfold Seg24.relationRow513 at r513
    simpa [seg24Rho, mul_eq_zero] using r513
  · unfold Seg24.relationRow514 at r514
    simpa [seg24Rho, mul_eq_zero] using r514
  · unfold Seg24.relationRow515 at r515
    simpa [seg24Rho, mul_eq_zero] using r515
  · unfold Seg24.relationRow516 at r516
    simpa [seg24Rho, mul_eq_zero] using r516
  · unfold Seg24.relationRow517 at r517
    simpa [seg24Rho, mul_eq_zero] using r517
  · unfold Seg24.relationRow518 at r518
    simpa [seg24Rho, mul_eq_zero] using r518
  · unfold Seg24.relationRow519 at r519
    simpa [seg24Rho, mul_eq_zero] using r519
  · unfold Seg24.relationRow520 at r520
    simpa [seg24Rho, mul_eq_zero] using r520
  · unfold Seg24.relationRow521 at r521
    simpa [seg24Rho, mul_eq_zero] using r521
  · unfold Seg24.relationRow522 at r522
    simpa [seg24Rho, mul_eq_zero] using r522
  · unfold Seg24.relationRow523 at r523
    simpa [seg24Rho, mul_eq_zero] using r523
  · unfold Seg24.relationRow524 at r524
    simpa [seg24Rho, mul_eq_zero] using r524
  · unfold Seg24.relationRow525 at r525
    simpa [seg24Rho, mul_eq_zero] using r525
  · unfold Seg24.relationRow526 at r526
    simpa [seg24Rho, mul_eq_zero] using r526
  · unfold Seg24.relationRow527 at r527
    simpa [seg24Rho, mul_eq_zero] using r527
  · unfold Seg24.relationRow528 at r528
    simpa [seg24Rho, mul_eq_zero] using r528
  · unfold Seg24.relationRow529 at r529
    simpa [seg24Rho, mul_eq_zero] using r529
  · unfold Seg24.relationRow530 at r530
    simpa [seg24Rho, mul_eq_zero] using r530
  · unfold Seg24.relationRow531 at r531
    simpa [seg24Rho, mul_eq_zero] using r531
  · unfold Seg24.relationRow532 at r532
    simpa [seg24Rho, mul_eq_zero] using r532
  · unfold Seg24.relationRow533 at r533
    simpa [seg24Rho, mul_eq_zero] using r533
  · unfold Seg24.relationRow534 at r534
    simpa [seg24Rho, mul_eq_zero] using r534
  · unfold Seg24.relationRow535 at r535
    simpa [seg24Rho, mul_eq_zero] using r535
  · unfold Seg24.relationRow536 at r536
    simpa [seg24Rho, mul_eq_zero] using r536
  · unfold Seg24.relationRow537 at r537
    simpa [seg24Rho, mul_eq_zero] using r537
  · unfold Seg24.relationRow538 at r538
    simpa [seg24Rho, mul_eq_zero] using r538
  · unfold Seg24.relationRow539 at r539
    simpa [seg24Rho, mul_eq_zero] using r539
  · unfold Seg24.relationRow540 at r540
    simpa [seg24Rho, mul_eq_zero] using r540
  · unfold Seg24.relationRow541 at r541
    simpa [seg24Rho, mul_eq_zero] using r541
  · unfold Seg24.relationRow542 at r542
    simpa [seg24Rho, mul_eq_zero] using r542
  · unfold Seg24.relationRow543 at r543
    simpa [seg24Rho, mul_eq_zero] using r543
  · unfold Seg24.relationRow544 at r544
    simpa [seg24Rho, mul_eq_zero] using r544
  · unfold Seg24.relationRow545 at r545
    simpa [seg24Rho, mul_eq_zero] using r545
  · unfold Seg24.relationRow546 at r546
    simpa [seg24Rho, mul_eq_zero] using r546
  · unfold Seg24.relationRow547 at r547
    simpa [seg24Rho, mul_eq_zero] using r547
  · unfold Seg24.relationRow548 at r548
    simpa [seg24Rho, mul_eq_zero] using r548
  · unfold Seg24.relationRow549 at r549
    simpa [seg24Rho, mul_eq_zero] using r549
  · unfold Seg24.relationRow550 at r550
    simpa [seg24Rho, mul_eq_zero] using r550
  · unfold Seg24.relationRow551 at r551
    simpa [seg24Rho, mul_eq_zero] using r551
  · unfold Seg24.relationRow552 at r552
    simpa [seg24Rho, mul_eq_zero] using r552
  · unfold Seg24.relationRow553 at r553
    simpa [seg24Rho, mul_eq_zero] using r553
  · unfold Seg24.relationRow554 at r554
    simpa [seg24Rho, mul_eq_zero] using r554
  · unfold Seg24.relationRow555 at r555
    simpa [seg24Rho, mul_eq_zero] using r555
  · unfold Seg24.relationRow556 at r556
    simpa [seg24Rho, mul_eq_zero] using r556
  · unfold Seg24.relationRow557 at r557
    simpa [seg24Rho, mul_eq_zero] using r557
  · unfold Seg24.relationRow558 at r558
    simpa [seg24Rho, mul_eq_zero] using r558
  · unfold Seg24.relationRow559 at r559
    simpa [seg24Rho, mul_eq_zero] using r559
  · unfold Seg24.relationRow560 at r560
    simpa [seg24Rho, mul_eq_zero] using r560
  · unfold Seg24.relationRow561 at r561
    simpa [seg24Rho, mul_eq_zero] using r561
  · unfold Seg24.relationRow562 at r562
    simpa [seg24Rho, mul_eq_zero] using r562
  · unfold Seg24.relationRow563 at r563
    simpa [seg24Rho, mul_eq_zero] using r563
  · unfold Seg24.relationRow564 at r564
    simpa [seg24Rho, mul_eq_zero] using r564
  · unfold Seg24.relationRow565 at r565
    simpa [seg24Rho, mul_eq_zero] using r565
  · unfold Seg24.relationRow566 at r566
    simpa [seg24Rho, mul_eq_zero] using r566
  · unfold Seg24.relationRow567 at r567
    simpa [seg24Rho, mul_eq_zero] using r567
  · unfold Seg24.relationRow568 at r568
    simpa [seg24Rho, mul_eq_zero] using r568
  · unfold Seg24.relationRow569 at r569
    simpa [seg24Rho, mul_eq_zero] using r569
  · unfold Seg24.relationRow570 at r570
    simpa [seg24Rho, mul_eq_zero] using r570
  · unfold Seg24.relationRow571 at r571
    simpa [seg24Rho, mul_eq_zero] using r571
  · unfold Seg24.relationRow572 at r572
    simpa [seg24Rho, mul_eq_zero] using r572
  · unfold Seg24.relationRow573 at r573
    simpa [seg24Rho, mul_eq_zero] using r573
  · unfold Seg24.relationRow574 at r574
    simpa [seg24Rho, mul_eq_zero] using r574
  · unfold Seg24.relationRow575 at r575
    simpa [seg24Rho, mul_eq_zero] using r575
  · unfold Seg24.relationRow576 at r576
    simpa [seg24Rho, mul_eq_zero] using r576
  · unfold Seg24.relationRow577 at r577
    simpa [seg24Rho, mul_eq_zero] using r577
  · unfold Seg24.relationRow578 at r578
    simpa [seg24Rho, mul_eq_zero] using r578
  · unfold Seg24.relationRow579 at r579
    simpa [seg24Rho, mul_eq_zero] using r579
  · unfold Seg24.relationRow580 at r580
    simpa [seg24Rho, mul_eq_zero] using r580
  · unfold Seg24.relationRow581 at r581
    simpa [seg24Rho, mul_eq_zero] using r581
  · unfold Seg24.relationRow582 at r582
    simpa [seg24Rho, mul_eq_zero] using r582
  · unfold Seg24.relationRow583 at r583
    simpa [seg24Rho, mul_eq_zero] using r583
  · unfold Seg24.relationRow584 at r584
    simpa [seg24Rho, mul_eq_zero] using r584
  · unfold Seg24.relationRow585 at r585
    simpa [seg24Rho, mul_eq_zero] using r585
  · unfold Seg24.relationRow586 at r586
    simpa [seg24Rho, mul_eq_zero] using r586
  · unfold Seg24.relationRow587 at r587
    simpa [seg24Rho, mul_eq_zero] using r587
  · unfold Seg24.relationRow588 at r588
    simpa [seg24Rho, mul_eq_zero] using r588
  · unfold Seg24.relationRow589 at r589
    simpa [seg24Rho, mul_eq_zero] using r589
  · unfold Seg24.relationRow590 at r590
    simpa [seg24Rho, mul_eq_zero] using r590
  · unfold Seg24.relationRow591 at r591
    simpa [seg24Rho, mul_eq_zero] using r591
  · unfold Seg24.relationRow592 at r592
    simpa [seg24Rho, mul_eq_zero] using r592
  · unfold Seg24.relationRow593 at r593
    simpa [seg24Rho, mul_eq_zero] using r593
  · unfold Seg24.relationRow594 at r594
    simpa [seg24Rho, mul_eq_zero] using r594
  · unfold Seg24.relationRow595 at r595
    simpa [seg24Rho, mul_eq_zero] using r595
  · unfold Seg24.relationRow596 at r596
    simpa [seg24Rho, mul_eq_zero] using r596
  · unfold Seg24.relationRow597 at r597
    simpa [seg24Rho, mul_eq_zero] using r597
  · unfold Seg24.relationRow598 at r598
    simpa [seg24Rho, mul_eq_zero] using r598
  · unfold Seg24.relationRow599 at r599
    simpa [seg24Rho, mul_eq_zero] using r599
  · unfold Seg24.relationRow600 at r600
    simpa [seg24Rho, mul_eq_zero] using r600
  · unfold Seg24.relationRow601 at r601
    simpa [seg24Rho, mul_eq_zero] using r601
  · unfold Seg24.relationRow602 at r602
    simpa [seg24Rho, mul_eq_zero] using r602
  · unfold Seg24.relationRow603 at r603
    simpa [seg24Rho, mul_eq_zero] using r603
  · unfold Seg24.relationRow604 at r604
    simpa [seg24Rho, mul_eq_zero] using r604
  · unfold Seg24.relationRow605 at r605
    simpa [seg24Rho, mul_eq_zero] using r605
  · unfold Seg24.relationRow606 at r606
    simpa [seg24Rho, mul_eq_zero] using r606
  · unfold Seg24.relationRow607 at r607
    simpa [seg24Rho, mul_eq_zero] using r607
  · unfold Seg24.relationRow608 at r608
    simpa [seg24Rho, mul_eq_zero] using r608
  · unfold Seg24.relationRow609 at r609
    simpa [seg24Rho, mul_eq_zero] using r609
  · unfold Seg24.relationRow610 at r610
    simpa [seg24Rho, mul_eq_zero] using r610
  · unfold Seg24.relationRow611 at r611
    simpa [seg24Rho, mul_eq_zero] using r611
  · unfold Seg24.relationRow612 at r612
    simpa [seg24Rho, mul_eq_zero] using r612
  · unfold Seg24.relationRow613 at r613
    simpa [seg24Rho, mul_eq_zero] using r613
  · unfold Seg24.relationRow614 at r614
    simpa [seg24Rho, mul_eq_zero] using r614
  · unfold Seg24.relationRow615 at r615
    simpa [seg24Rho, mul_eq_zero] using r615
  · unfold Seg24.relationRow616 at r616
    simpa [seg24Rho, mul_eq_zero] using r616
  · unfold Seg24.relationRow617 at r617
    simpa [seg24Rho, mul_eq_zero] using r617
  · unfold Seg24.relationRow618 at r618
    simpa [seg24Rho, mul_eq_zero] using r618
  · unfold Seg24.relationRow619 at r619
    simpa [seg24Rho, mul_eq_zero] using r619
  · unfold Seg24.relationRow620 at r620
    simpa [seg24Rho, mul_eq_zero] using r620
  · unfold Seg24.relationRow621 at r621
    simpa [seg24Rho, mul_eq_zero] using r621
  · unfold Seg24.relationRow622 at r622
    simpa [seg24Rho, mul_eq_zero] using r622
  · unfold Seg24.relationRow623 at r623
    simpa [seg24Rho, mul_eq_zero] using r623
  · unfold Seg24.relationRow624 at r624
    simpa [seg24Rho, mul_eq_zero] using r624
  · unfold Seg24.relationRow625 at r625
    simpa [seg24Rho, mul_eq_zero] using r625
  · unfold Seg24.relationRow626 at r626
    simpa [seg24Rho, mul_eq_zero] using r626
  · unfold Seg24.relationRow627 at r627
    simpa [seg24Rho, mul_eq_zero] using r627
  · unfold Seg24.relationRow628 at r628
    simpa [seg24Rho, mul_eq_zero] using r628
  · unfold Seg24.relationRow629 at r629
    simpa [seg24Rho, mul_eq_zero] using r629
  · unfold Seg24.relationRow630 at r630
    simpa [seg24Rho, mul_eq_zero] using r630
  · unfold Seg24.relationRow631 at r631
    simpa [seg24Rho, mul_eq_zero] using r631
  · unfold Seg24.relationRow632 at r632
    simpa [seg24Rho, mul_eq_zero] using r632
  · unfold Seg24.relationRow633 at r633
    simpa [seg24Rho, mul_eq_zero] using r633
  · unfold Seg24.relationRow634 at r634
    simpa [seg24Rho, mul_eq_zero] using r634
  · unfold Seg24.relationRow635 at r635
    simpa [seg24Rho, mul_eq_zero] using r635
  · unfold Seg24.relationRow636 at r636
    simpa [seg24Rho, mul_eq_zero] using r636
  · unfold Seg24.relationRow637 at r637
    simpa [seg24Rho, mul_eq_zero] using r637
  · unfold Seg24.relationRow638 at r638
    simpa [seg24Rho, mul_eq_zero] using r638
  · unfold Seg24.relationRow639 at r639
    simpa [seg24Rho, mul_eq_zero] using r639
  · unfold Seg24.relationRow640 at r640
    simpa [seg24Rho, mul_eq_zero] using r640
  · unfold Seg24.relationRow641 at r641
    simpa [seg24Rho, mul_eq_zero] using r641
  · unfold Seg24.relationRow642 at r642
    simpa [seg24Rho, mul_eq_zero] using r642
  · unfold Seg24.relationRow643 at r643
    simpa [seg24Rho, mul_eq_zero] using r643
  · unfold Seg24.relationRow644 at r644
    simpa [seg24Rho, mul_eq_zero] using r644
  · unfold Seg24.relationRow645 at r645
    simpa [seg24Rho, mul_eq_zero] using r645
  · unfold Seg24.relationRow646 at r646
    simpa [seg24Rho, mul_eq_zero] using r646
  · unfold Seg24.relationRow647 at r647
    simpa [seg24Rho, mul_eq_zero] using r647
  · unfold Seg24.relationRow648 at r648
    simpa [seg24Rho, mul_eq_zero] using r648
  · unfold Seg24.relationRow649 at r649
    simpa [seg24Rho, mul_eq_zero] using r649
  · unfold Seg24.relationRow650 at r650
    simpa [seg24Rho, mul_eq_zero] using r650
  · unfold Seg24.relationRow651 at r651
    simpa [seg24Rho, mul_eq_zero] using r651
  · unfold Seg24.relationRow652 at r652
    simpa [seg24Rho, mul_eq_zero] using r652
  · unfold Seg24.relationRow653 at r653
    simpa [seg24Rho, mul_eq_zero] using r653
  · unfold Seg24.relationRow654 at r654
    simpa [seg24Rho, mul_eq_zero] using r654
  · unfold Seg24.relationRow655 at r655
    simpa [seg24Rho, mul_eq_zero] using r655
  · unfold Seg24.relationRow656 at r656
    simpa [seg24Rho, mul_eq_zero] using r656
  · unfold Seg24.relationRow657 at r657
    simpa [seg24Rho, mul_eq_zero] using r657
  · unfold Seg24.relationRow658 at r658
    simpa [seg24Rho, mul_eq_zero] using r658
  · unfold Seg24.relationRow659 at r659
    simpa [seg24Rho, mul_eq_zero] using r659
  · unfold Seg24.relationRow660 at r660
    simpa [seg24Rho, mul_eq_zero] using r660
  · unfold Seg24.relationRow661 at r661
    simpa [seg24Rho, mul_eq_zero] using r661
  · unfold Seg24.relationRow662 at r662
    simpa [seg24Rho, mul_eq_zero] using r662
  · unfold Seg24.relationRow663 at r663
    simpa [seg24Rho, mul_eq_zero] using r663
  · unfold Seg24.relationRow664 at r664
    simpa [seg24Rho, mul_eq_zero] using r664
  · unfold Seg24.relationRow665 at r665
    simpa [seg24Rho, mul_eq_zero] using r665
  · unfold Seg24.relationRow666 at r666
    simpa [seg24Rho, mul_eq_zero] using r666
  · unfold Seg24.relationRow667 at r667
    simpa [seg24Rho, mul_eq_zero] using r667
  · unfold Seg24.relationRow668 at r668
    simpa [seg24Rho, mul_eq_zero] using r668
  · unfold Seg24.relationRow669 at r669
    simpa [seg24Rho, mul_eq_zero] using r669
  · unfold Seg24.relationRow670 at r670
    simpa [seg24Rho, mul_eq_zero] using r670
  · unfold Seg24.relationRow671 at r671
    simpa [seg24Rho, mul_eq_zero] using r671
  · unfold Seg24.relationRow672 at r672
    simpa [seg24Rho, mul_eq_zero] using r672
  · unfold Seg24.relationRow673 at r673
    simpa [seg24Rho, mul_eq_zero] using r673
  · unfold Seg24.relationRow674 at r674
    simpa [seg24Rho, mul_eq_zero] using r674
  · unfold Seg24.relationRow675 at r675
    simpa [seg24Rho, mul_eq_zero] using r675
  · unfold Seg24.relationRow676 at r676
    simpa [seg24Rho, mul_eq_zero] using r676
  · unfold Seg24.relationRow677 at r677
    simpa [seg24Rho, mul_eq_zero] using r677
  · unfold Seg24.relationRow678 at r678
    simpa [seg24Rho, mul_eq_zero] using r678
  · unfold Seg24.relationRow679 at r679
    simpa [seg24Rho, mul_eq_zero] using r679
  · unfold Seg24.relationRow680 at r680
    simpa [seg24Rho, mul_eq_zero] using r680
  · unfold Seg24.relationRow681 at r681
    simpa [seg24Rho, mul_eq_zero] using r681
  · unfold Seg24.relationRow682 at r682
    simpa [seg24Rho, mul_eq_zero] using r682
  · unfold Seg24.relationRow683 at r683
    simpa [seg24Rho, mul_eq_zero] using r683
  · unfold Seg24.relationRow684 at r684
    simpa [seg24Rho, mul_eq_zero] using r684
  · unfold Seg24.relationRow685 at r685
    simpa [seg24Rho, mul_eq_zero] using r685
  · unfold Seg24.relationRow686 at r686
    simpa [seg24Rho, mul_eq_zero] using r686
  · unfold Seg24.relationRow687 at r687
    simpa [seg24Rho, mul_eq_zero] using r687
  · unfold Seg24.relationRow688 at r688
    simpa [seg24Rho, mul_eq_zero] using r688
  · unfold Seg24.relationRow689 at r689
    simpa [seg24Rho, mul_eq_zero] using r689
  · unfold Seg24.relationRow690 at r690
    simpa [seg24Rho, mul_eq_zero] using r690
  · unfold Seg24.relationRow691 at r691
    simpa [seg24Rho, mul_eq_zero] using r691
  · unfold Seg24.relationRow692 at r692
    simpa [seg24Rho, mul_eq_zero] using r692
  · unfold Seg24.relationRow693 at r693
    simpa [seg24Rho, mul_eq_zero] using r693
  · unfold Seg24.relationRow694 at r694
    simpa [seg24Rho, mul_eq_zero] using r694
  · unfold Seg24.relationRow695 at r695
    simpa [seg24Rho, mul_eq_zero] using r695
  · unfold Seg24.relationRow696 at r696
    simpa [seg24Rho, mul_eq_zero] using r696
  · unfold Seg24.relationRow697 at r697
    simpa [seg24Rho, mul_eq_zero] using r697
  · unfold Seg24.relationRow698 at r698
    simpa [seg24Rho, mul_eq_zero] using r698
  · unfold Seg24.relationRow699 at r699
    simpa [seg24Rho, mul_eq_zero] using r699
  · unfold Seg24.relationRow700 at r700
    simpa [seg24Rho, mul_eq_zero] using r700
  · unfold Seg24.relationRow701 at r701
    simpa [seg24Rho, mul_eq_zero] using r701
  · unfold Seg24.relationRow702 at r702
    simpa [seg24Rho, mul_eq_zero] using r702
  · unfold Seg24.relationRow703 at r703
    simpa [seg24Rho, mul_eq_zero] using r703
  · unfold Seg24.relationRow704 at r704
    simpa [seg24Rho, mul_eq_zero] using r704
  · unfold Seg24.relationRow705 at r705
    simpa [seg24Rho, mul_eq_zero] using r705
  · unfold Seg24.relationRow706 at r706
    simpa [seg24Rho, mul_eq_zero] using r706
  · unfold Seg24.relationRow707 at r707
    simpa [seg24Rho, mul_eq_zero] using r707
  · unfold Seg24.relationRow708 at r708
    simpa [seg24Rho, mul_eq_zero] using r708
  · unfold Seg24.relationRow709 at r709
    simpa [seg24Rho, mul_eq_zero] using r709
  · unfold Seg24.relationRow710 at r710
    simpa [seg24Rho, mul_eq_zero] using r710
  · unfold Seg24.relationRow711 at r711
    simpa [seg24Rho, mul_eq_zero] using r711
  · unfold Seg24.relationRow712 at r712
    simpa [seg24Rho, mul_eq_zero] using r712
  · unfold Seg24.relationRow713 at r713
    simpa [seg24Rho, mul_eq_zero] using r713
  · unfold Seg24.relationRow714 at r714
    simpa [seg24Rho, mul_eq_zero] using r714
  · unfold Seg24.relationRow715 at r715
    simpa [seg24Rho, mul_eq_zero] using r715
  · unfold Seg24.relationRow716 at r716
    simpa [seg24Rho, mul_eq_zero] using r716
  · unfold Seg24.relationRow717 at r717
    simpa [seg24Rho, mul_eq_zero] using r717
  · unfold Seg24.relationRow718 at r718
    simpa [seg24Rho, mul_eq_zero] using r718
  · unfold Seg24.relationRow719 at r719
    simpa [seg24Rho, mul_eq_zero] using r719
  · unfold Seg24.relationRow720 at r720
    simpa [seg24Rho, mul_eq_zero] using r720
  · unfold Seg24.relationRow721 at r721
    simpa [seg24Rho, mul_eq_zero] using r721
  · unfold Seg24.relationRow722 at r722
    simpa [seg24Rho, mul_eq_zero] using r722
  · unfold Seg24.relationRow723 at r723
    simpa [seg24Rho, mul_eq_zero] using r723
  · unfold Seg24.relationRow724 at r724
    simpa [seg24Rho, mul_eq_zero] using r724
  · unfold Seg24.relationRow725 at r725
    simpa [seg24Rho, mul_eq_zero] using r725
  · unfold Seg24.relationRow726 at r726
    simpa [seg24Rho, mul_eq_zero] using r726
  · unfold Seg24.relationRow727 at r727
    simpa [seg24Rho, mul_eq_zero] using r727
  · unfold Seg24.relationRow728 at r728
    simpa [seg24Rho, mul_eq_zero] using r728
  · unfold Seg24.relationRow729 at r729
    simpa [seg24Rho, mul_eq_zero] using r729
  · unfold Seg24.relationRow730 at r730
    simpa [seg24Rho, mul_eq_zero] using r730
  · unfold Seg24.relationRow731 at r731
    simpa [seg24Rho, mul_eq_zero] using r731
  · unfold Seg24.relationRow732 at r732
    simpa [seg24Rho, mul_eq_zero] using r732
  · unfold Seg24.relationRow733 at r733
    simpa [seg24Rho, mul_eq_zero] using r733
  · unfold Seg24.relationRow734 at r734
    simpa [seg24Rho, mul_eq_zero] using r734
  · unfold Seg24.relationRow735 at r735
    simpa [seg24Rho, mul_eq_zero] using r735
  · unfold Seg24.relationRow736 at r736
    simpa [seg24Rho, mul_eq_zero] using r736
  · unfold Seg24.relationRow737 at r737
    simpa [seg24Rho, mul_eq_zero] using r737
  · unfold Seg24.relationRow738 at r738
    simpa [seg24Rho, mul_eq_zero] using r738
  · unfold Seg24.relationRow739 at r739
    simpa [seg24Rho, mul_eq_zero] using r739
  · unfold Seg24.relationRow740 at r740
    simpa [seg24Rho, mul_eq_zero] using r740
  · unfold Seg24.relationRow741 at r741
    simpa [seg24Rho, mul_eq_zero] using r741
  · unfold Seg24.relationRow742 at r742
    simpa [seg24Rho, mul_eq_zero] using r742
  · unfold Seg24.relationRow743 at r743
    simpa [seg24Rho, mul_eq_zero] using r743
  · unfold Seg24.relationRow744 at r744
    simpa [seg24Rho, mul_eq_zero] using r744
  · unfold Seg24.relationRow745 at r745
    simpa [seg24Rho, mul_eq_zero] using r745
  · unfold Seg24.relationRow746 at r746
    simpa [seg24Rho, mul_eq_zero] using r746
  · unfold Seg24.relationRow747 at r747
    simpa [seg24Rho, mul_eq_zero] using r747
  · unfold Seg24.relationRow748 at r748
    simpa [seg24Rho, mul_eq_zero] using r748
  · unfold Seg24.relationRow749 at r749
    simpa [seg24Rho, mul_eq_zero] using r749
  · unfold Seg24.relationRow750 at r750
    simpa [seg24Rho, mul_eq_zero] using r750
  · unfold Seg24.relationRow751 at r751
    simpa [seg24Rho, mul_eq_zero] using r751
  · unfold Seg24.relationRow752 at r752
    simpa [seg24Rho, mul_eq_zero] using r752
  · unfold Seg24.relationRow753 at r753
    simpa [seg24Rho, mul_eq_zero] using r753
  · unfold Seg24.relationRow754 at r754
    simpa [seg24Rho, mul_eq_zero] using r754
  · unfold Seg24.relationRow755 at r755
    simpa [seg24Rho, mul_eq_zero] using r755
  · unfold Seg24.relationRow756 at r756
    simpa [seg24Rho, mul_eq_zero] using r756
  · unfold Seg24.relationRow757 at r757
    simpa [seg24Rho, mul_eq_zero] using r757
  · unfold Seg24.relationRow758 at r758
    simpa [seg24Rho, mul_eq_zero] using r758
  · unfold Seg24.relationRow759 at r759
    simpa [seg24Rho, mul_eq_zero] using r759
  · unfold Seg24.relationRow760 at r760
    simpa [seg24Rho, mul_eq_zero] using r760
  · unfold Seg24.relationRow761 at r761
    simpa [seg24Rho, mul_eq_zero] using r761
  · unfold Seg24.relationRow762 at r762
    simpa [seg24Rho, mul_eq_zero] using r762
  · unfold Seg24.relationRow763 at r763
    simpa [seg24Rho, mul_eq_zero] using r763
  · unfold Seg24.relationRow764 at r764
    simpa [seg24Rho, mul_eq_zero] using r764
  · unfold Seg24.relationRow765 at r765
    simpa [seg24Rho, mul_eq_zero] using r765
  · unfold Seg24.relationRow766 at r766
    simpa [seg24Rho, mul_eq_zero] using r766
  · unfold Seg24.relationRow767 at r767
    simpa [seg24Rho, mul_eq_zero] using r767
  · unfold Seg24.relationRow768 at r768
    simpa [seg24Rho, mul_eq_zero] using r768
  · unfold Seg24.relationRow769 at r769
    simpa [seg24Rho, mul_eq_zero] using r769
  · unfold Seg24.relationRow770 at r770
    simpa [seg24Rho, mul_eq_zero] using r770
  · unfold Seg24.relationRow771 at r771
    simpa [seg24Rho, mul_eq_zero] using r771
  · unfold Seg24.relationRow772 at r772
    simpa [seg24Rho, mul_eq_zero] using r772
  · unfold Seg24.relationRow773 at r773
    simpa [seg24Rho, mul_eq_zero] using r773
  · unfold Seg24.relationRow774 at r774
    simpa [seg24Rho, mul_eq_zero] using r774
  · unfold Seg24.relationRow775 at r775
    simpa [seg24Rho, mul_eq_zero] using r775
  · unfold Seg24.relationRow776 at r776
    simpa [seg24Rho, mul_eq_zero] using r776
  · unfold Seg24.relationRow777 at r777
    simpa [seg24Rho, mul_eq_zero] using r777
  · unfold Seg24.relationRow778 at r778
    simpa [seg24Rho, mul_eq_zero] using r778
  · unfold Seg24.relationRow779 at r779
    simpa [seg24Rho, mul_eq_zero] using r779
  · unfold Seg24.relationRow780 at r780
    simpa [seg24Rho, mul_eq_zero] using r780
  · unfold Seg24.relationRow781 at r781
    simpa [seg24Rho, mul_eq_zero] using r781
  · unfold Seg24.relationRow782 at r782
    simpa [seg24Rho, mul_eq_zero] using r782
  · unfold Seg24.relationRow783 at r783
    simpa [seg24Rho, mul_eq_zero] using r783
  · unfold Seg24.relationRow784 at r784
    simpa [seg24Rho, mul_eq_zero] using r784
  · unfold Seg24.relationRow785 at r785
    simpa [seg24Rho, mul_eq_zero] using r785
  · unfold Seg24.relationRow786 at r786
    simpa [seg24Rho, mul_eq_zero] using r786
  · unfold Seg24.relationRow787 at r787
    simpa [seg24Rho, mul_eq_zero] using r787
  · unfold Seg24.relationRow788 at r788
    simpa [seg24Rho, mul_eq_zero] using r788
  · unfold Seg24.relationRow789 at r789
    simpa [seg24Rho, mul_eq_zero] using r789
  · unfold Seg24.relationRow790 at r790
    simpa [seg24Rho, mul_eq_zero] using r790
  · unfold Seg24.relationRow792 at r792
    simpa [seg24Rho, mul_eq_zero] using r792
  · unfold Seg24.relationRow793 at r793
    simpa [seg24Rho, mul_eq_zero] using r793
  · unfold Seg24.relationRow794 at r794
    simpa [seg24Rho, mul_eq_zero] using r794
  · unfold Seg24.relationRow795 at r795
    simpa [seg24Rho, mul_eq_zero] using r795
  · unfold Seg24.relationRow796 at r796
    simpa [seg24Rho, mul_eq_zero] using r796
  · unfold Seg24.relationRow797 at r797
    simpa [seg24Rho, mul_eq_zero] using r797
  · unfold Seg24.relationRow798 at r798
    simpa [seg24Rho, mul_eq_zero] using r798
  · unfold Seg24.relationRow799 at r799
    simpa [seg24Rho, mul_eq_zero] using r799
  · unfold Seg24.relationRow800 at r800
    simpa [seg24Rho, mul_eq_zero] using r800
  · unfold Seg24.relationRow801 at r801
    simpa [seg24Rho, mul_eq_zero] using r801
  · unfold Seg24.relationRow802 at r802
    simpa [seg24Rho, mul_eq_zero] using r802
  · unfold Seg24.relationRow803 at r803
    simpa [seg24Rho, mul_eq_zero] using r803
  · unfold Seg24.relationRow804 at r804
    simpa [seg24Rho, mul_eq_zero] using r804
  · unfold Seg24.relationRow805 at r805
    simpa [seg24Rho, mul_eq_zero] using r805
  · unfold Seg24.relationRow806 at r806
    simpa [seg24Rho, mul_eq_zero] using r806
  · unfold Seg24.relationRow807 at r807
    simpa [seg24Rho, mul_eq_zero] using r807
  · unfold Seg24.relationRow808 at r808
    simpa [seg24Rho, mul_eq_zero] using r808
  · unfold Seg24.relationRow809 at r809
    simpa [seg24Rho, mul_eq_zero] using r809
  · unfold Seg24.relationRow810 at r810
    simpa [seg24Rho, mul_eq_zero] using r810
  · unfold Seg24.relationRow811 at r811
    simpa [seg24Rho, mul_eq_zero] using r811
  · unfold Seg24.relationRow812 at r812
    simpa [seg24Rho, mul_eq_zero] using r812
  · unfold Seg24.relationRow813 at r813
    simpa [seg24Rho, mul_eq_zero] using r813
  · unfold Seg24.relationRow814 at r814
    simpa [seg24Rho, mul_eq_zero] using r814
  · unfold Seg24.relationRow815 at r815
    simpa [seg24Rho, mul_eq_zero] using r815
  · unfold Seg24.relationRow816 at r816
    simpa [seg24Rho, mul_eq_zero] using r816
  · unfold Seg24.relationRow817 at r817
    simpa [seg24Rho, mul_eq_zero] using r817
  · unfold Seg24.relationRow818 at r818
    simpa [seg24Rho, mul_eq_zero] using r818
  · unfold Seg24.relationRow819 at r819
    simpa [seg24Rho, mul_eq_zero] using r819
  · unfold Seg24.relationRow820 at r820
    simpa [seg24Rho, mul_eq_zero] using r820
  · unfold Seg24.relationRow821 at r821
    simpa [seg24Rho, mul_eq_zero] using r821
  · unfold Seg24.relationRow822 at r822
    simpa [seg24Rho, mul_eq_zero] using r822
  · unfold Seg24.relationRow823 at r823
    simpa [seg24Rho, mul_eq_zero] using r823
  · unfold Seg24.relationRow824 at r824
    simpa [seg24Rho, mul_eq_zero] using r824
  · unfold Seg24.relationRow825 at r825
    simpa [seg24Rho, mul_eq_zero] using r825
  · unfold Seg24.relationRow826 at r826
    simpa [seg24Rho, mul_eq_zero] using r826
  · unfold Seg24.relationRow827 at r827
    simpa [seg24Rho, mul_eq_zero] using r827
  · unfold Seg24.relationRow828 at r828
    simpa [seg24Rho, mul_eq_zero] using r828
  · unfold Seg24.relationRow829 at r829
    simpa [seg24Rho, mul_eq_zero] using r829
  · unfold Seg24.relationRow830 at r830
    simpa [seg24Rho, mul_eq_zero] using r830
  · unfold Seg24.relationRow831 at r831
    simpa [seg24Rho, mul_eq_zero] using r831
  · unfold Seg24.relationRow832 at r832
    simpa [seg24Rho, mul_eq_zero] using r832
  · unfold Seg24.relationRow833 at r833
    simpa [seg24Rho, mul_eq_zero] using r833
  · unfold Seg24.relationRow834 at r834
    simpa [seg24Rho, mul_eq_zero] using r834
  · unfold Seg24.relationRow835 at r835
    simpa [seg24Rho, mul_eq_zero] using r835
  · unfold Seg24.relationRow836 at r836
    simpa [seg24Rho, mul_eq_zero] using r836
  · unfold Seg24.relationRow837 at r837
    simpa [seg24Rho, mul_eq_zero] using r837
  · unfold Seg24.relationRow838 at r838
    simpa [seg24Rho, mul_eq_zero] using r838
  · unfold Seg24.relationRow839 at r839
    simpa [seg24Rho, mul_eq_zero] using r839
  · unfold Seg24.relationRow840 at r840
    simpa [seg24Rho, mul_eq_zero] using r840
  · unfold Seg24.relationRow841 at r841
    simpa [seg24Rho, mul_eq_zero] using r841
  · unfold Seg24.relationRow842 at r842
    simpa [seg24Rho, mul_eq_zero] using r842
  · unfold Seg24.relationRow843 at r843
    simpa [seg24Rho, mul_eq_zero] using r843
  · unfold Seg24.relationRow844 at r844
    simpa [seg24Rho, mul_eq_zero] using r844
  · unfold Seg24.relationRow845 at r845
    simpa [seg24Rho, mul_eq_zero] using r845
  · unfold Seg24.relationRow846 at r846
    simpa [seg24Rho, mul_eq_zero] using r846
  · unfold Seg24.relationRow847 at r847
    simpa [seg24Rho, mul_eq_zero] using r847
  · unfold Seg24.relationRow848 at r848
    simpa [seg24Rho, mul_eq_zero] using r848
  · unfold Seg24.relationRow849 at r849
    simpa [seg24Rho, mul_eq_zero] using r849
  · unfold Seg24.relationRow850 at r850
    simpa [seg24Rho, mul_eq_zero] using r850
  · unfold Seg24.relationRow851 at r851
    simpa [seg24Rho, mul_eq_zero] using r851
  · unfold Seg24.relationRow852 at r852
    simpa [seg24Rho, mul_eq_zero] using r852
  · unfold Seg24.relationRow853 at r853
    simpa [seg24Rho, mul_eq_zero] using r853
  · unfold Seg24.relationRow854 at r854
    simpa [seg24Rho, mul_eq_zero] using r854
  · unfold Seg24.relationRow855 at r855
    simpa [seg24Rho, mul_eq_zero] using r855
  · unfold Seg24.relationRow856 at r856
    simpa [seg24Rho, mul_eq_zero] using r856
  · unfold Seg24.relationRow857 at r857
    simpa [seg24Rho, mul_eq_zero] using r857
  · unfold Seg24.relationRow858 at r858
    simpa [seg24Rho, mul_eq_zero] using r858
  · unfold Seg24.relationRow859 at r859
    simpa [seg24Rho, mul_eq_zero] using r859
  · unfold Seg24.relationRow860 at r860
    simpa [seg24Rho, mul_eq_zero] using r860
  · unfold Seg24.relationRow861 at r861
    simpa [seg24Rho, mul_eq_zero] using r861
  · unfold Seg24.relationRow862 at r862
    simpa [seg24Rho, mul_eq_zero] using r862
  · unfold Seg24.relationRow863 at r863
    simpa [seg24Rho, mul_eq_zero] using r863
  · unfold Seg24.relationRow864 at r864
    simpa [seg24Rho, mul_eq_zero] using r864
  · unfold Seg24.relationRow865 at r865
    simpa [seg24Rho, mul_eq_zero] using r865
  · unfold Seg24.relationRow866 at r866
    simpa [seg24Rho, mul_eq_zero] using r866
  · unfold Seg24.relationRow867 at r867
    simpa [seg24Rho, mul_eq_zero] using r867
  · unfold Seg24.relationRow868 at r868
    simpa [seg24Rho, mul_eq_zero] using r868
  · unfold Seg24.relationRow869 at r869
    simpa [seg24Rho, mul_eq_zero] using r869
  · unfold Seg24.relationRow870 at r870
    simpa [seg24Rho, mul_eq_zero] using r870
  · unfold Seg24.relationRow871 at r871
    simpa [seg24Rho, mul_eq_zero] using r871
  · unfold Seg24.relationRow872 at r872
    simpa [seg24Rho, mul_eq_zero] using r872
  · unfold Seg24.relationRow873 at r873
    simpa [seg24Rho, mul_eq_zero] using r873
  · unfold Seg24.relationRow874 at r874
    simpa [seg24Rho, mul_eq_zero] using r874
  · unfold Seg24.relationRow875 at r875
    simpa [seg24Rho, mul_eq_zero] using r875
  · unfold Seg24.relationRow876 at r876
    simpa [seg24Rho, mul_eq_zero] using r876
  · unfold Seg24.relationRow877 at r877
    simpa [seg24Rho, mul_eq_zero] using r877
  · unfold Seg24.relationRow878 at r878
    simpa [seg24Rho, mul_eq_zero] using r878
  · unfold Seg24.relationRow879 at r879
    simpa [seg24Rho, mul_eq_zero] using r879
  · unfold Seg24.relationRow880 at r880
    simpa [seg24Rho, mul_eq_zero] using r880
  · unfold Seg24.relationRow881 at r881
    simpa [seg24Rho, mul_eq_zero] using r881
  · unfold Seg24.relationRow882 at r882
    simpa [seg24Rho, mul_eq_zero] using r882
  · unfold Seg24.relationRow883 at r883
    simpa [seg24Rho, mul_eq_zero] using r883
  · unfold Seg24.relationRow884 at r884
    simpa [seg24Rho, mul_eq_zero] using r884
  · unfold Seg24.relationRow885 at r885
    simpa [seg24Rho, mul_eq_zero] using r885
  · unfold Seg24.relationRow886 at r886
    simpa [seg24Rho, mul_eq_zero] using r886
  · unfold Seg24.relationRow887 at r887
    simpa [seg24Rho, mul_eq_zero] using r887
  · unfold Seg24.relationRow888 at r888
    simpa [seg24Rho, mul_eq_zero] using r888
  · unfold Seg24.relationRow889 at r889
    simpa [seg24Rho, mul_eq_zero] using r889
  · unfold Seg24.relationRow890 at r890
    simpa [seg24Rho, mul_eq_zero] using r890
  · unfold Seg24.relationRow891 at r891
    simpa [seg24Rho, mul_eq_zero] using r891
  · unfold Seg24.relationRow892 at r892
    simpa [seg24Rho, mul_eq_zero] using r892
  · unfold Seg24.relationRow893 at r893
    simpa [seg24Rho, mul_eq_zero] using r893
  · unfold Seg24.relationRow894 at r894
    simpa [seg24Rho, mul_eq_zero] using r894
  · unfold Seg24.relationRow895 at r895
    simpa [seg24Rho, mul_eq_zero] using r895
  · unfold Seg24.relationRow896 at r896
    simpa [seg24Rho, mul_eq_zero] using r896
  · unfold Seg24.relationRow897 at r897
    simpa [seg24Rho, mul_eq_zero] using r897
  · unfold Seg24.relationRow898 at r898
    simpa [seg24Rho, mul_eq_zero] using r898
  · unfold Seg24.relationRow899 at r899
    simpa [seg24Rho, mul_eq_zero] using r899
  · unfold Seg24.relationRow900 at r900
    simpa [seg24Rho, mul_eq_zero] using r900
  · unfold Seg24.relationRow901 at r901
    simpa [seg24Rho, mul_eq_zero] using r901
  · unfold Seg24.relationRow902 at r902
    simpa [seg24Rho, mul_eq_zero] using r902
  · unfold Seg24.relationRow903 at r903
    simpa [seg24Rho, mul_eq_zero] using r903
  · unfold Seg24.relationRow904 at r904
    simpa [seg24Rho, mul_eq_zero] using r904
  · unfold Seg24.relationRow905 at r905
    simpa [seg24Rho, mul_eq_zero] using r905
  · unfold Seg24.relationRow906 at r906
    simpa [seg24Rho, mul_eq_zero] using r906
  · unfold Seg24.relationRow907 at r907
    simpa [seg24Rho, mul_eq_zero] using r907
  · unfold Seg24.relationRow908 at r908
    simpa [seg24Rho, mul_eq_zero] using r908
  · unfold Seg24.relationRow909 at r909
    simpa [seg24Rho, mul_eq_zero] using r909
  · unfold Seg24.relationRow910 at r910
    simpa [seg24Rho, mul_eq_zero] using r910
  · unfold Seg24.relationRow911 at r911
    simpa [seg24Rho, mul_eq_zero] using r911
  · unfold Seg24.relationRow912 at r912
    simpa [seg24Rho, mul_eq_zero] using r912
  · unfold Seg24.relationRow913 at r913
    simpa [seg24Rho, mul_eq_zero] using r913
  · unfold Seg24.relationRow914 at r914
    simpa [seg24Rho, mul_eq_zero] using r914
  · unfold Seg24.relationRow915 at r915
    simpa [seg24Rho, mul_eq_zero] using r915
  · unfold Seg24.relationRow916 at r916
    simpa [seg24Rho, mul_eq_zero] using r916
  · unfold Seg24.relationRow917 at r917
    simpa [seg24Rho, mul_eq_zero] using r917
  · unfold Seg24.relationRow918 at r918
    simpa [seg24Rho, mul_eq_zero] using r918
  · unfold Seg24.relationRow919 at r919
    simpa [seg24Rho, mul_eq_zero] using r919
  · unfold Seg24.relationRow920 at r920
    simpa [seg24Rho, mul_eq_zero] using r920
  · unfold Seg24.relationRow921 at r921
    simpa [seg24Rho, mul_eq_zero] using r921
  · unfold Seg24.relationRow922 at r922
    simpa [seg24Rho, mul_eq_zero] using r922
  · unfold Seg24.relationRow923 at r923
    simpa [seg24Rho, mul_eq_zero] using r923
  · unfold Seg24.relationRow924 at r924
    simpa [seg24Rho, mul_eq_zero] using r924
  · unfold Seg24.relationRow925 at r925
    simpa [seg24Rho, mul_eq_zero] using r925
  · unfold Seg24.relationRow926 at r926
    simpa [seg24Rho, mul_eq_zero] using r926
  · unfold Seg24.relationRow927 at r927
    simpa [seg24Rho, mul_eq_zero] using r927
  · unfold Seg24.relationRow928 at r928
    simpa [seg24Rho, mul_eq_zero] using r928
  · unfold Seg24.relationRow929 at r929
    simpa [seg24Rho, mul_eq_zero] using r929
  · unfold Seg24.relationRow930 at r930
    simpa [seg24Rho, mul_eq_zero] using r930
  · unfold Seg24.relationRow931 at r931
    simpa [seg24Rho, mul_eq_zero] using r931
  · unfold Seg24.relationRow932 at r932
    simpa [seg24Rho, mul_eq_zero] using r932
  · unfold Seg24.relationRow933 at r933
    simpa [seg24Rho, mul_eq_zero] using r933
  · unfold Seg24.relationRow934 at r934
    simpa [seg24Rho, mul_eq_zero] using r934
  · unfold Seg24.relationRow935 at r935
    simpa [seg24Rho, mul_eq_zero] using r935
  · unfold Seg24.relationRow936 at r936
    simpa [seg24Rho, mul_eq_zero] using r936
  · unfold Seg24.relationRow937 at r937
    simpa [seg24Rho, mul_eq_zero] using r937
  · unfold Seg24.relationRow938 at r938
    simpa [seg24Rho, mul_eq_zero] using r938
  · unfold Seg24.relationRow939 at r939
    simpa [seg24Rho, mul_eq_zero] using r939
  · unfold Seg24.relationRow940 at r940
    simpa [seg24Rho, mul_eq_zero] using r940
  · unfold Seg24.relationRow941 at r941
    simpa [seg24Rho, mul_eq_zero] using r941
  · unfold Seg24.relationRow942 at r942
    simpa [seg24Rho, mul_eq_zero] using r942
  · unfold Seg24.relationRow943 at r943
    simpa [seg24Rho, mul_eq_zero] using r943
  · unfold Seg24.relationRow944 at r944
    simpa [seg24Rho, mul_eq_zero] using r944
  · unfold Seg24.relationRow945 at r945
    simpa [seg24Rho, mul_eq_zero] using r945
  · unfold Seg24.relationRow946 at r946
    simpa [seg24Rho, mul_eq_zero] using r946
  · unfold Seg24.relationRow947 at r947
    simpa [seg24Rho, mul_eq_zero] using r947
  · unfold Seg24.relationRow948 at r948
    simpa [seg24Rho, mul_eq_zero] using r948
  · unfold Seg24.relationRow949 at r949
    simpa [seg24Rho, mul_eq_zero] using r949
  · unfold Seg24.relationRow950 at r950
    simpa [seg24Rho, mul_eq_zero] using r950
  · unfold Seg24.relationRow951 at r951
    simpa [seg24Rho, mul_eq_zero] using r951
  · unfold Seg24.relationRow952 at r952
    simpa [seg24Rho, mul_eq_zero] using r952
  · unfold Seg24.relationRow953 at r953
    simpa [seg24Rho, mul_eq_zero] using r953
  · unfold Seg24.relationRow954 at r954
    simpa [seg24Rho, mul_eq_zero] using r954
  · unfold Seg24.relationRow955 at r955
    simpa [seg24Rho, mul_eq_zero] using r955
  · unfold Seg24.relationRow956 at r956
    simpa [seg24Rho, mul_eq_zero] using r956
  · unfold Seg24.relationRow957 at r957
    simpa [seg24Rho, mul_eq_zero] using r957
  · unfold Seg24.relationRow958 at r958
    simpa [seg24Rho, mul_eq_zero] using r958
  · unfold Seg24.relationRow959 at r959
    simpa [seg24Rho, mul_eq_zero] using r959
  · unfold Seg24.relationRow960 at r960
    simpa [seg24Rho, mul_eq_zero] using r960
  · unfold Seg24.relationRow961 at r961
    simpa [seg24Rho, mul_eq_zero] using r961
  · unfold Seg24.relationRow962 at r962
    simpa [seg24Rho, mul_eq_zero] using r962
  · unfold Seg24.relationRow963 at r963
    simpa [seg24Rho, mul_eq_zero] using r963
  · unfold Seg24.relationRow964 at r964
    simpa [seg24Rho, mul_eq_zero] using r964
  · unfold Seg24.relationRow965 at r965
    simpa [seg24Rho, mul_eq_zero] using r965
  · unfold Seg24.relationRow966 at r966
    simpa [seg24Rho, mul_eq_zero] using r966
  · unfold Seg24.relationRow967 at r967
    simpa [seg24Rho, mul_eq_zero] using r967
  · unfold Seg24.relationRow968 at r968
    simpa [seg24Rho, mul_eq_zero] using r968
  · unfold Seg24.relationRow969 at r969
    simpa [seg24Rho, mul_eq_zero] using r969
  · unfold Seg24.relationRow970 at r970
    simpa [seg24Rho, mul_eq_zero] using r970
  · unfold Seg24.relationRow971 at r971
    simpa [seg24Rho, mul_eq_zero] using r971
  · unfold Seg24.relationRow972 at r972
    simpa [seg24Rho, mul_eq_zero] using r972
  · unfold Seg24.relationRow973 at r973
    simpa [seg24Rho, mul_eq_zero] using r973
  · unfold Seg24.relationRow974 at r974
    simpa [seg24Rho, mul_eq_zero] using r974
  · unfold Seg24.relationRow975 at r975
    simpa [seg24Rho, mul_eq_zero] using r975
  · unfold Seg24.relationRow976 at r976
    simpa [seg24Rho, mul_eq_zero] using r976
  · unfold Seg24.relationRow977 at r977
    simpa [seg24Rho, mul_eq_zero] using r977
  · unfold Seg24.relationRow978 at r978
    simpa [seg24Rho, mul_eq_zero] using r978
  · unfold Seg24.relationRow979 at r979
    simpa [seg24Rho, mul_eq_zero] using r979
  · unfold Seg24.relationRow980 at r980
    simpa [seg24Rho, mul_eq_zero] using r980
  · unfold Seg24.relationRow981 at r981
    simpa [seg24Rho, mul_eq_zero] using r981
  · unfold Seg24.relationRow982 at r982
    simpa [seg24Rho, mul_eq_zero] using r982
  · unfold Seg24.relationRow983 at r983
    simpa [seg24Rho, mul_eq_zero] using r983
  · unfold Seg24.relationRow984 at r984
    simpa [seg24Rho, mul_eq_zero] using r984
  · unfold Seg24.relationRow985 at r985
    simpa [seg24Rho, mul_eq_zero] using r985
  · unfold Seg24.relationRow986 at r986
    simpa [seg24Rho, mul_eq_zero] using r986
  · unfold Seg24.relationRow987 at r987
    simpa [seg24Rho, mul_eq_zero] using r987
  · unfold Seg24.relationRow988 at r988
    simpa [seg24Rho, mul_eq_zero] using r988
  · unfold Seg24.relationRow989 at r989
    simpa [seg24Rho, mul_eq_zero] using r989
  · unfold Seg24.relationRow990 at r990
    simpa [seg24Rho, mul_eq_zero] using r990
  · unfold Seg24.relationRow991 at r991
    simpa [seg24Rho, mul_eq_zero] using r991
  · unfold Seg24.relationRow992 at r992
    simpa [seg24Rho, mul_eq_zero] using r992
  · unfold Seg24.relationRow993 at r993
    simpa [seg24Rho, mul_eq_zero] using r993
  · unfold Seg24.relationRow994 at r994
    simpa [seg24Rho, mul_eq_zero] using r994
  · unfold Seg24.relationRow995 at r995
    simpa [seg24Rho, mul_eq_zero] using r995
  · unfold Seg24.relationRow996 at r996
    simpa [seg24Rho, mul_eq_zero] using r996
  · unfold Seg24.relationRow997 at r997
    simpa [seg24Rho, mul_eq_zero] using r997
  · unfold Seg24.relationRow998 at r998
    simpa [seg24Rho, mul_eq_zero] using r998
  · unfold Seg24.relationRow999 at r999
    simpa [seg24Rho, mul_eq_zero] using r999
  · unfold Seg24.relationRow1000 at r1000
    simpa [seg24Rho, mul_eq_zero] using r1000
  · unfold Seg24.relationRow1001 at r1001
    simpa [seg24Rho, mul_eq_zero] using r1001
  · unfold Seg24.relationRow1002 at r1002
    simpa [seg24Rho, mul_eq_zero] using r1002
  · unfold Seg24.relationRow1003 at r1003
    simpa [seg24Rho, mul_eq_zero] using r1003
  · unfold Seg24.relationRow1004 at r1004
    simpa [seg24Rho, mul_eq_zero] using r1004
  · unfold Seg24.relationRow1005 at r1005
    simpa [seg24Rho, mul_eq_zero] using r1005
  · unfold Seg24.relationRow1006 at r1006
    simpa [seg24Rho, mul_eq_zero] using r1006
  · unfold Seg24.relationRow1007 at r1007
    simpa [seg24Rho, mul_eq_zero] using r1007
  · unfold Seg24.relationRow1008 at r1008
    simpa [seg24Rho, mul_eq_zero] using r1008
  · unfold Seg24.relationRow1009 at r1009
    simpa [seg24Rho, mul_eq_zero] using r1009
  · unfold Seg24.relationRow1010 at r1010
    simpa [seg24Rho, mul_eq_zero] using r1010
  · unfold Seg24.relationRow1011 at r1011
    simpa [seg24Rho, mul_eq_zero] using r1011
  · unfold Seg24.relationRow1012 at r1012
    simpa [seg24Rho, mul_eq_zero] using r1012
  · unfold Seg24.relationRow1013 at r1013
    simpa [seg24Rho, mul_eq_zero] using r1013
  · unfold Seg24.relationRow1014 at r1014
    simpa [seg24Rho, mul_eq_zero] using r1014
  · unfold Seg24.relationRow1015 at r1015
    simpa [seg24Rho, mul_eq_zero] using r1015
  · unfold Seg24.relationRow1016 at r1016
    simpa [seg24Rho, mul_eq_zero] using r1016
  · unfold Seg24.relationRow1017 at r1017
    simpa [seg24Rho, mul_eq_zero] using r1017
  · unfold Seg24.relationRow1018 at r1018
    simpa [seg24Rho, mul_eq_zero] using r1018
  · unfold Seg24.relationRow1019 at r1019
    simpa [seg24Rho, mul_eq_zero] using r1019
  · unfold Seg24.relationRow1020 at r1020
    simpa [seg24Rho, mul_eq_zero] using r1020
  · unfold Seg24.relationRow1021 at r1021
    simpa [seg24Rho, mul_eq_zero] using r1021
  · unfold Seg24.relationRow1022 at r1022
    simpa [seg24Rho, mul_eq_zero] using r1022
  · unfold Seg24.relationRow1023 at r1023
    simpa [seg24Rho, mul_eq_zero] using r1023
  · unfold Seg24.relationRow1024 at r1024
    simpa [seg24Rho, mul_eq_zero] using r1024
  · unfold Seg24.relationRow1025 at r1025
    simpa [seg24Rho, mul_eq_zero] using r1025
  · unfold Seg24.relationRow1026 at r1026
    simpa [seg24Rho, mul_eq_zero] using r1026
  · unfold Seg24.relationRow1027 at r1027
    simpa [seg24Rho, mul_eq_zero] using r1027
  · unfold Seg24.relationRow1028 at r1028
    simpa [seg24Rho, mul_eq_zero] using r1028
  · unfold Seg24.relationRow1029 at r1029
    simpa [seg24Rho, mul_eq_zero] using r1029
  · unfold Seg24.relationRow1030 at r1030
    simpa [seg24Rho, mul_eq_zero] using r1030
  · unfold Seg24.relationRow1031 at r1031
    simpa [seg24Rho, mul_eq_zero] using r1031
  · unfold Seg24.relationRow1032 at r1032
    simpa [seg24Rho, mul_eq_zero] using r1032
  · unfold Seg24.relationRow1033 at r1033
    simpa [seg24Rho, mul_eq_zero] using r1033
  · unfold Seg24.relationRow1034 at r1034
    simpa [seg24Rho, mul_eq_zero] using r1034
  · unfold Seg24.relationRow1035 at r1035
    simpa [seg24Rho, mul_eq_zero] using r1035
  · unfold Seg24.relationRow1036 at r1036
    simpa [seg24Rho, mul_eq_zero] using r1036
  · unfold Seg24.relationRow1037 at r1037
    simpa [seg24Rho, mul_eq_zero] using r1037
  · unfold Seg24.relationRow1038 at r1038
    simpa [seg24Rho, mul_eq_zero] using r1038
  · unfold Seg24.relationRow1039 at r1039
    simpa [seg24Rho, mul_eq_zero] using r1039
  · unfold Seg24.relationRow1040 at r1040
    simpa [seg24Rho, mul_eq_zero] using r1040
  · unfold Seg24.relationRow1041 at r1041
    simpa [seg24Rho, mul_eq_zero] using r1041
  · unfold Seg24.relationRow1042 at r1042
    simpa [seg24Rho, mul_eq_zero] using r1042
  · unfold Seg24.relationRow1043 at r1043
    simpa [seg24Rho, mul_eq_zero] using r1043
  · unfold Seg24.relationRow1044 at r1044
    simpa [seg24Rho, mul_eq_zero] using r1044
  · unfold Seg24.relationRow1045 at r1045
    simpa [seg24Rho, mul_eq_zero] using r1045
  · exact seg24_hrec1 rho r281
  · exact seg24_hrec2 rho r791
  · rfl

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
