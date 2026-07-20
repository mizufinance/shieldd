import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30RvkBits_toBinary (rho : Nat -> Seg30.F) (h : Seg30.relation rho) :
    GatesDef.to_binary (rho 184) 251 (seg30RvkBits rho) := by
  unfold Seg30.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7, p8, p9,
    p10, p11, p12, p13, p14, p15, p16, p17, p18, p19,
    p20, p21, p22
  ⟩
  unfold Seg30.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩
  unfold Seg30.relationPart1 at p1
  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩
  unfold Seg30.relationPart2 at p2
  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩
  unfold Seg30.relationPart3 at p3
  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg30.relationRow0 at r0
  unfold Seg30.relationRow1 at r1
  unfold Seg30.relationRow2 at r2
  unfold Seg30.relationRow3 at r3
  unfold Seg30.relationRow4 at r4
  unfold Seg30.relationRow5 at r5
  unfold Seg30.relationRow6 at r6
  unfold Seg30.relationRow7 at r7
  unfold Seg30.relationRow8 at r8
  unfold Seg30.relationRow9 at r9
  unfold Seg30.relationRow10 at r10
  unfold Seg30.relationRow11 at r11
  unfold Seg30.relationRow12 at r12
  unfold Seg30.relationRow13 at r13
  unfold Seg30.relationRow14 at r14
  unfold Seg30.relationRow15 at r15
  unfold Seg30.relationRow16 at r16
  unfold Seg30.relationRow17 at r17
  unfold Seg30.relationRow18 at r18
  unfold Seg30.relationRow19 at r19
  unfold Seg30.relationRow20 at r20
  unfold Seg30.relationRow21 at r21
  unfold Seg30.relationRow22 at r22
  unfold Seg30.relationRow23 at r23
  unfold Seg30.relationRow24 at r24
  unfold Seg30.relationRow25 at r25
  unfold Seg30.relationRow26 at r26
  unfold Seg30.relationRow27 at r27
  unfold Seg30.relationRow28 at r28
  unfold Seg30.relationRow29 at r29
  unfold Seg30.relationRow30 at r30
  unfold Seg30.relationRow31 at r31
  unfold Seg30.relationRow32 at r32
  unfold Seg30.relationRow33 at r33
  unfold Seg30.relationRow34 at r34
  unfold Seg30.relationRow35 at r35
  unfold Seg30.relationRow36 at r36
  unfold Seg30.relationRow37 at r37
  unfold Seg30.relationRow38 at r38
  unfold Seg30.relationRow39 at r39
  unfold Seg30.relationRow40 at r40
  unfold Seg30.relationRow41 at r41
  unfold Seg30.relationRow42 at r42
  unfold Seg30.relationRow43 at r43
  unfold Seg30.relationRow44 at r44
  unfold Seg30.relationRow45 at r45
  unfold Seg30.relationRow46 at r46
  unfold Seg30.relationRow47 at r47
  unfold Seg30.relationRow48 at r48
  unfold Seg30.relationRow49 at r49
  unfold Seg30.relationRow50 at r50
  unfold Seg30.relationRow51 at r51
  unfold Seg30.relationRow52 at r52
  unfold Seg30.relationRow53 at r53
  unfold Seg30.relationRow54 at r54
  unfold Seg30.relationRow55 at r55
  unfold Seg30.relationRow56 at r56
  unfold Seg30.relationRow57 at r57
  unfold Seg30.relationRow58 at r58
  unfold Seg30.relationRow59 at r59
  unfold Seg30.relationRow60 at r60
  unfold Seg30.relationRow61 at r61
  unfold Seg30.relationRow62 at r62
  unfold Seg30.relationRow63 at r63
  unfold Seg30.relationRow64 at r64
  unfold Seg30.relationRow65 at r65
  unfold Seg30.relationRow66 at r66
  unfold Seg30.relationRow67 at r67
  unfold Seg30.relationRow68 at r68
  unfold Seg30.relationRow69 at r69
  unfold Seg30.relationRow70 at r70
  unfold Seg30.relationRow71 at r71
  unfold Seg30.relationRow72 at r72
  unfold Seg30.relationRow73 at r73
  unfold Seg30.relationRow74 at r74
  unfold Seg30.relationRow75 at r75
  unfold Seg30.relationRow76 at r76
  unfold Seg30.relationRow77 at r77
  unfold Seg30.relationRow78 at r78
  unfold Seg30.relationRow79 at r79
  unfold Seg30.relationRow80 at r80
  unfold Seg30.relationRow81 at r81
  unfold Seg30.relationRow82 at r82
  unfold Seg30.relationRow83 at r83
  unfold Seg30.relationRow84 at r84
  unfold Seg30.relationRow85 at r85
  unfold Seg30.relationRow86 at r86
  unfold Seg30.relationRow87 at r87
  unfold Seg30.relationRow88 at r88
  unfold Seg30.relationRow89 at r89
  unfold Seg30.relationRow90 at r90
  unfold Seg30.relationRow91 at r91
  unfold Seg30.relationRow92 at r92
  unfold Seg30.relationRow93 at r93
  unfold Seg30.relationRow94 at r94
  unfold Seg30.relationRow95 at r95
  unfold Seg30.relationRow96 at r96
  unfold Seg30.relationRow97 at r97
  unfold Seg30.relationRow98 at r98
  unfold Seg30.relationRow99 at r99
  unfold Seg30.relationRow100 at r100
  unfold Seg30.relationRow101 at r101
  unfold Seg30.relationRow102 at r102
  unfold Seg30.relationRow103 at r103
  unfold Seg30.relationRow104 at r104
  unfold Seg30.relationRow105 at r105
  unfold Seg30.relationRow106 at r106
  unfold Seg30.relationRow107 at r107
  unfold Seg30.relationRow108 at r108
  unfold Seg30.relationRow109 at r109
  unfold Seg30.relationRow110 at r110
  unfold Seg30.relationRow111 at r111
  unfold Seg30.relationRow112 at r112
  unfold Seg30.relationRow113 at r113
  unfold Seg30.relationRow114 at r114
  unfold Seg30.relationRow115 at r115
  unfold Seg30.relationRow116 at r116
  unfold Seg30.relationRow117 at r117
  unfold Seg30.relationRow118 at r118
  unfold Seg30.relationRow119 at r119
  unfold Seg30.relationRow120 at r120
  unfold Seg30.relationRow121 at r121
  unfold Seg30.relationRow122 at r122
  unfold Seg30.relationRow123 at r123
  unfold Seg30.relationRow124 at r124
  unfold Seg30.relationRow125 at r125
  unfold Seg30.relationRow126 at r126
  unfold Seg30.relationRow127 at r127
  unfold Seg30.relationRow128 at r128
  unfold Seg30.relationRow129 at r129
  unfold Seg30.relationRow130 at r130
  unfold Seg30.relationRow131 at r131
  unfold Seg30.relationRow132 at r132
  unfold Seg30.relationRow133 at r133
  unfold Seg30.relationRow134 at r134
  unfold Seg30.relationRow135 at r135
  unfold Seg30.relationRow136 at r136
  unfold Seg30.relationRow137 at r137
  unfold Seg30.relationRow138 at r138
  unfold Seg30.relationRow139 at r139
  unfold Seg30.relationRow140 at r140
  unfold Seg30.relationRow141 at r141
  unfold Seg30.relationRow142 at r142
  unfold Seg30.relationRow143 at r143
  unfold Seg30.relationRow144 at r144
  unfold Seg30.relationRow145 at r145
  unfold Seg30.relationRow146 at r146
  unfold Seg30.relationRow147 at r147
  unfold Seg30.relationRow148 at r148
  unfold Seg30.relationRow149 at r149
  unfold Seg30.relationRow150 at r150
  unfold Seg30.relationRow151 at r151
  unfold Seg30.relationRow152 at r152
  unfold Seg30.relationRow153 at r153
  unfold Seg30.relationRow154 at r154
  unfold Seg30.relationRow155 at r155
  unfold Seg30.relationRow156 at r156
  unfold Seg30.relationRow157 at r157
  unfold Seg30.relationRow158 at r158
  unfold Seg30.relationRow159 at r159
  unfold Seg30.relationRow160 at r160
  unfold Seg30.relationRow161 at r161
  unfold Seg30.relationRow162 at r162
  unfold Seg30.relationRow163 at r163
  unfold Seg30.relationRow164 at r164
  unfold Seg30.relationRow165 at r165
  unfold Seg30.relationRow166 at r166
  unfold Seg30.relationRow167 at r167
  unfold Seg30.relationRow168 at r168
  unfold Seg30.relationRow169 at r169
  unfold Seg30.relationRow170 at r170
  unfold Seg30.relationRow171 at r171
  unfold Seg30.relationRow172 at r172
  unfold Seg30.relationRow173 at r173
  unfold Seg30.relationRow174 at r174
  unfold Seg30.relationRow175 at r175
  unfold Seg30.relationRow176 at r176
  unfold Seg30.relationRow177 at r177
  unfold Seg30.relationRow178 at r178
  unfold Seg30.relationRow179 at r179
  unfold Seg30.relationRow180 at r180
  unfold Seg30.relationRow181 at r181
  unfold Seg30.relationRow182 at r182
  unfold Seg30.relationRow183 at r183
  unfold Seg30.relationRow184 at r184
  unfold Seg30.relationRow185 at r185
  unfold Seg30.relationRow186 at r186
  unfold Seg30.relationRow187 at r187
  unfold Seg30.relationRow188 at r188
  unfold Seg30.relationRow189 at r189
  unfold Seg30.relationRow190 at r190
  unfold Seg30.relationRow191 at r191
  unfold Seg30.relationRow192 at r192
  unfold Seg30.relationRow193 at r193
  unfold Seg30.relationRow194 at r194
  unfold Seg30.relationRow195 at r195
  unfold Seg30.relationRow196 at r196
  unfold Seg30.relationRow197 at r197
  unfold Seg30.relationRow198 at r198
  unfold Seg30.relationRow199 at r199
  unfold Seg30.relationRow200 at r200
  unfold Seg30.relationRow201 at r201
  unfold Seg30.relationRow202 at r202
  unfold Seg30.relationRow203 at r203
  unfold Seg30.relationRow204 at r204
  unfold Seg30.relationRow205 at r205
  unfold Seg30.relationRow206 at r206
  unfold Seg30.relationRow207 at r207
  unfold Seg30.relationRow208 at r208
  unfold Seg30.relationRow209 at r209
  unfold Seg30.relationRow210 at r210
  unfold Seg30.relationRow211 at r211
  unfold Seg30.relationRow212 at r212
  unfold Seg30.relationRow213 at r213
  unfold Seg30.relationRow214 at r214
  unfold Seg30.relationRow215 at r215
  unfold Seg30.relationRow216 at r216
  unfold Seg30.relationRow217 at r217
  unfold Seg30.relationRow218 at r218
  unfold Seg30.relationRow219 at r219
  unfold Seg30.relationRow220 at r220
  unfold Seg30.relationRow221 at r221
  unfold Seg30.relationRow222 at r222
  unfold Seg30.relationRow223 at r223
  unfold Seg30.relationRow224 at r224
  unfold Seg30.relationRow225 at r225
  unfold Seg30.relationRow226 at r226
  unfold Seg30.relationRow227 at r227
  unfold Seg30.relationRow228 at r228
  unfold Seg30.relationRow229 at r229
  unfold Seg30.relationRow230 at r230
  unfold Seg30.relationRow231 at r231
  unfold Seg30.relationRow232 at r232
  unfold Seg30.relationRow233 at r233
  unfold Seg30.relationRow234 at r234
  unfold Seg30.relationRow235 at r235
  unfold Seg30.relationRow236 at r236
  unfold Seg30.relationRow237 at r237
  unfold Seg30.relationRow238 at r238
  unfold Seg30.relationRow239 at r239
  unfold Seg30.relationRow240 at r240
  unfold Seg30.relationRow241 at r241
  unfold Seg30.relationRow242 at r242
  unfold Seg30.relationRow243 at r243
  unfold Seg30.relationRow244 at r244
  unfold Seg30.relationRow245 at r245
  unfold Seg30.relationRow246 at r246
  unfold Seg30.relationRow247 at r247
  unfold Seg30.relationRow248 at r248
  unfold Seg30.relationRow249 at r249
  unfold Seg30.relationRow250 at r250
  have hrecover := recover_ofFn_eq_recBits rho 28311 251
  have hacc : powSumAcc rho 0 1 28311 251 = rho 184 := by
    unfold Seg30.relationRow251 Seg30.relationLc0 Seg30.relationLc0Part0 Seg30.relationLc0Part1 Seg30.relationLc0Part2 Seg30.relationLc0Part3 Seg30.relationLc0Part4 Seg30.relationLc0Part5 Seg30.relationLc0Part6 Seg30.relationLc0Part7 at r251
    simp only [powSumAcc]
    linear_combination r251
  have hrec : recover_binary_zmod' (seg30RvkBits rho) = rho 184 := by
    simp only [seg30RvkBits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 184) (seg30RvkBits rho)
  · intro i hi
    have key := seg30RvkBits_get rho i hi
    have hgoal : rho (28311 + i) * (1 - rho (28311 + i)) = 0 := by
      interval_cases i
      · linear_combination r0
      · linear_combination r1
      · linear_combination r2
      · linear_combination r3
      · linear_combination r4
      · linear_combination r5
      · linear_combination r6
      · linear_combination r7
      · linear_combination r8
      · linear_combination r9
      · linear_combination r10
      · linear_combination r11
      · linear_combination r12
      · linear_combination r13
      · linear_combination r14
      · linear_combination r15
      · linear_combination r16
      · linear_combination r17
      · linear_combination r18
      · linear_combination r19
      · linear_combination r20
      · linear_combination r21
      · linear_combination r22
      · linear_combination r23
      · linear_combination r24
      · linear_combination r25
      · linear_combination r26
      · linear_combination r27
      · linear_combination r28
      · linear_combination r29
      · linear_combination r30
      · linear_combination r31
      · linear_combination r32
      · linear_combination r33
      · linear_combination r34
      · linear_combination r35
      · linear_combination r36
      · linear_combination r37
      · linear_combination r38
      · linear_combination r39
      · linear_combination r40
      · linear_combination r41
      · linear_combination r42
      · linear_combination r43
      · linear_combination r44
      · linear_combination r45
      · linear_combination r46
      · linear_combination r47
      · linear_combination r48
      · linear_combination r49
      · linear_combination r50
      · linear_combination r51
      · linear_combination r52
      · linear_combination r53
      · linear_combination r54
      · linear_combination r55
      · linear_combination r56
      · linear_combination r57
      · linear_combination r58
      · linear_combination r59
      · linear_combination r60
      · linear_combination r61
      · linear_combination r62
      · linear_combination r63
      · linear_combination r64
      · linear_combination r65
      · linear_combination r66
      · linear_combination r67
      · linear_combination r68
      · linear_combination r69
      · linear_combination r70
      · linear_combination r71
      · linear_combination r72
      · linear_combination r73
      · linear_combination r74
      · linear_combination r75
      · linear_combination r76
      · linear_combination r77
      · linear_combination r78
      · linear_combination r79
      · linear_combination r80
      · linear_combination r81
      · linear_combination r82
      · linear_combination r83
      · linear_combination r84
      · linear_combination r85
      · linear_combination r86
      · linear_combination r87
      · linear_combination r88
      · linear_combination r89
      · linear_combination r90
      · linear_combination r91
      · linear_combination r92
      · linear_combination r93
      · linear_combination r94
      · linear_combination r95
      · linear_combination r96
      · linear_combination r97
      · linear_combination r98
      · linear_combination r99
      · linear_combination r100
      · linear_combination r101
      · linear_combination r102
      · linear_combination r103
      · linear_combination r104
      · linear_combination r105
      · linear_combination r106
      · linear_combination r107
      · linear_combination r108
      · linear_combination r109
      · linear_combination r110
      · linear_combination r111
      · linear_combination r112
      · linear_combination r113
      · linear_combination r114
      · linear_combination r115
      · linear_combination r116
      · linear_combination r117
      · linear_combination r118
      · linear_combination r119
      · linear_combination r120
      · linear_combination r121
      · linear_combination r122
      · linear_combination r123
      · linear_combination r124
      · linear_combination r125
      · linear_combination r126
      · linear_combination r127
      · linear_combination r128
      · linear_combination r129
      · linear_combination r130
      · linear_combination r131
      · linear_combination r132
      · linear_combination r133
      · linear_combination r134
      · linear_combination r135
      · linear_combination r136
      · linear_combination r137
      · linear_combination r138
      · linear_combination r139
      · linear_combination r140
      · linear_combination r141
      · linear_combination r142
      · linear_combination r143
      · linear_combination r144
      · linear_combination r145
      · linear_combination r146
      · linear_combination r147
      · linear_combination r148
      · linear_combination r149
      · linear_combination r150
      · linear_combination r151
      · linear_combination r152
      · linear_combination r153
      · linear_combination r154
      · linear_combination r155
      · linear_combination r156
      · linear_combination r157
      · linear_combination r158
      · linear_combination r159
      · linear_combination r160
      · linear_combination r161
      · linear_combination r162
      · linear_combination r163
      · linear_combination r164
      · linear_combination r165
      · linear_combination r166
      · linear_combination r167
      · linear_combination r168
      · linear_combination r169
      · linear_combination r170
      · linear_combination r171
      · linear_combination r172
      · linear_combination r173
      · linear_combination r174
      · linear_combination r175
      · linear_combination r176
      · linear_combination r177
      · linear_combination r178
      · linear_combination r179
      · linear_combination r180
      · linear_combination r181
      · linear_combination r182
      · linear_combination r183
      · linear_combination r184
      · linear_combination r185
      · linear_combination r186
      · linear_combination r187
      · linear_combination r188
      · linear_combination r189
      · linear_combination r190
      · linear_combination r191
      · linear_combination r192
      · linear_combination r193
      · linear_combination r194
      · linear_combination r195
      · linear_combination r196
      · linear_combination r197
      · linear_combination r198
      · linear_combination r199
      · linear_combination r200
      · linear_combination r201
      · linear_combination r202
      · linear_combination r203
      · linear_combination r204
      · linear_combination r205
      · linear_combination r206
      · linear_combination r207
      · linear_combination r208
      · linear_combination r209
      · linear_combination r210
      · linear_combination r211
      · linear_combination r212
      · linear_combination r213
      · linear_combination r214
      · linear_combination r215
      · linear_combination r216
      · linear_combination r217
      · linear_combination r218
      · linear_combination r219
      · linear_combination r220
      · linear_combination r221
      · linear_combination r222
      · linear_combination r223
      · linear_combination r224
      · linear_combination r225
      · linear_combination r226
      · linear_combination r227
      · linear_combination r228
      · linear_combination r229
      · linear_combination r230
      · linear_combination r231
      · linear_combination r232
      · linear_combination r233
      · linear_combination r234
      · linear_combination r235
      · linear_combination r236
      · linear_combination r237
      · linear_combination r238
      · linear_combination r239
      · linear_combination r240
      · linear_combination r241
      · linear_combination r242
      · linear_combination r243
      · linear_combination r244
      · linear_combination r245
      · linear_combination r246
      · linear_combination r247
      · linear_combination r248
      · linear_combination r249
      · linear_combination r250
    have key' : (seg30RvkBits rho)[i] = rho (28311 + i) := by
      rw [← getElem!_pos (seg30RvkBits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
