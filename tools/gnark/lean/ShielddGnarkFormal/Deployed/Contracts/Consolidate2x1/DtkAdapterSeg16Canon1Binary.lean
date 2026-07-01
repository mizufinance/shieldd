import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1Rec

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_binary (rho : Nat -> Seg16.F) (h : Seg16.relation rho) : is_vector_binary (seg16Canon1Bits rho) := by
  unfold Seg16.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart0 at p0
  rcases p0 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩
  unfold Seg16.relationPart1 at p1
  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, r129, r130, r131, r132, r133, r134, r135, r136, r137, r138, r139, r140, r141, r142, r143, r144, r145, r146, r147, r148, r149, r150, r151, r152, r153, r154, r155, r156, r157, r158, r159⟩
  unfold Seg16.relationPart2 at p2
  rcases p2 with ⟨r160, r161, r162, r163, r164, r165, r166, r167, r168, r169, r170, r171, r172, r173, r174, r175, r176, r177, r178, r179, r180, r181, r182, r183, r184, r185, r186, r187, r188, r189, r190, r191, r192, r193, r194, r195, r196, r197, r198, r199, r200, r201, r202, r203, r204, r205, r206, r207, r208, r209, r210, r211, r212, r213, r214, r215, r216, r217, r218, r219, r220, r221, r222, r223, r224, r225, r226, r227, r228, r229, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩
  unfold Seg16.relationPart3 at p3
  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, r252, r253, r254, r255, r256, r257, r258, r259, r260, r261, r262, r263, r264, r265, r266, r267, r268, r269, r270, r271, r272, r273, r274, r275, r276, r277, r278, r279, r280, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow28 at r28
  unfold Seg16.relationRow29 at r29
  unfold Seg16.relationRow30 at r30
  unfold Seg16.relationRow31 at r31
  unfold Seg16.relationRow32 at r32
  unfold Seg16.relationRow33 at r33
  unfold Seg16.relationRow34 at r34
  unfold Seg16.relationRow35 at r35
  unfold Seg16.relationRow36 at r36
  unfold Seg16.relationRow37 at r37
  unfold Seg16.relationRow38 at r38
  unfold Seg16.relationRow39 at r39
  unfold Seg16.relationRow40 at r40
  unfold Seg16.relationRow41 at r41
  unfold Seg16.relationRow42 at r42
  unfold Seg16.relationRow43 at r43
  unfold Seg16.relationRow44 at r44
  unfold Seg16.relationRow45 at r45
  unfold Seg16.relationRow46 at r46
  unfold Seg16.relationRow47 at r47
  unfold Seg16.relationRow48 at r48
  unfold Seg16.relationRow49 at r49
  unfold Seg16.relationRow50 at r50
  unfold Seg16.relationRow51 at r51
  unfold Seg16.relationRow52 at r52
  unfold Seg16.relationRow53 at r53
  unfold Seg16.relationRow54 at r54
  unfold Seg16.relationRow55 at r55
  unfold Seg16.relationRow56 at r56
  unfold Seg16.relationRow57 at r57
  unfold Seg16.relationRow58 at r58
  unfold Seg16.relationRow59 at r59
  unfold Seg16.relationRow60 at r60
  unfold Seg16.relationRow61 at r61
  unfold Seg16.relationRow62 at r62
  unfold Seg16.relationRow63 at r63
  unfold Seg16.relationRow64 at r64
  unfold Seg16.relationRow65 at r65
  unfold Seg16.relationRow66 at r66
  unfold Seg16.relationRow67 at r67
  unfold Seg16.relationRow68 at r68
  unfold Seg16.relationRow69 at r69
  unfold Seg16.relationRow70 at r70
  unfold Seg16.relationRow71 at r71
  unfold Seg16.relationRow72 at r72
  unfold Seg16.relationRow73 at r73
  unfold Seg16.relationRow74 at r74
  unfold Seg16.relationRow75 at r75
  unfold Seg16.relationRow76 at r76
  unfold Seg16.relationRow77 at r77
  unfold Seg16.relationRow78 at r78
  unfold Seg16.relationRow79 at r79
  unfold Seg16.relationRow80 at r80
  unfold Seg16.relationRow81 at r81
  unfold Seg16.relationRow82 at r82
  unfold Seg16.relationRow83 at r83
  unfold Seg16.relationRow84 at r84
  unfold Seg16.relationRow85 at r85
  unfold Seg16.relationRow86 at r86
  unfold Seg16.relationRow87 at r87
  unfold Seg16.relationRow88 at r88
  unfold Seg16.relationRow89 at r89
  unfold Seg16.relationRow90 at r90
  unfold Seg16.relationRow91 at r91
  unfold Seg16.relationRow92 at r92
  unfold Seg16.relationRow93 at r93
  unfold Seg16.relationRow94 at r94
  unfold Seg16.relationRow95 at r95
  unfold Seg16.relationRow96 at r96
  unfold Seg16.relationRow97 at r97
  unfold Seg16.relationRow98 at r98
  unfold Seg16.relationRow99 at r99
  unfold Seg16.relationRow100 at r100
  unfold Seg16.relationRow101 at r101
  unfold Seg16.relationRow102 at r102
  unfold Seg16.relationRow103 at r103
  unfold Seg16.relationRow104 at r104
  unfold Seg16.relationRow105 at r105
  unfold Seg16.relationRow106 at r106
  unfold Seg16.relationRow107 at r107
  unfold Seg16.relationRow108 at r108
  unfold Seg16.relationRow109 at r109
  unfold Seg16.relationRow110 at r110
  unfold Seg16.relationRow111 at r111
  unfold Seg16.relationRow112 at r112
  unfold Seg16.relationRow113 at r113
  unfold Seg16.relationRow114 at r114
  unfold Seg16.relationRow115 at r115
  unfold Seg16.relationRow116 at r116
  unfold Seg16.relationRow117 at r117
  unfold Seg16.relationRow118 at r118
  unfold Seg16.relationRow119 at r119
  unfold Seg16.relationRow120 at r120
  unfold Seg16.relationRow121 at r121
  unfold Seg16.relationRow122 at r122
  unfold Seg16.relationRow123 at r123
  unfold Seg16.relationRow124 at r124
  unfold Seg16.relationRow125 at r125
  unfold Seg16.relationRow126 at r126
  unfold Seg16.relationRow127 at r127
  unfold Seg16.relationRow128 at r128
  unfold Seg16.relationRow129 at r129
  unfold Seg16.relationRow130 at r130
  unfold Seg16.relationRow131 at r131
  unfold Seg16.relationRow132 at r132
  unfold Seg16.relationRow133 at r133
  unfold Seg16.relationRow134 at r134
  unfold Seg16.relationRow135 at r135
  unfold Seg16.relationRow136 at r136
  unfold Seg16.relationRow137 at r137
  unfold Seg16.relationRow138 at r138
  unfold Seg16.relationRow139 at r139
  unfold Seg16.relationRow140 at r140
  unfold Seg16.relationRow141 at r141
  unfold Seg16.relationRow142 at r142
  unfold Seg16.relationRow143 at r143
  unfold Seg16.relationRow144 at r144
  unfold Seg16.relationRow145 at r145
  unfold Seg16.relationRow146 at r146
  unfold Seg16.relationRow147 at r147
  unfold Seg16.relationRow148 at r148
  unfold Seg16.relationRow149 at r149
  unfold Seg16.relationRow150 at r150
  unfold Seg16.relationRow151 at r151
  unfold Seg16.relationRow152 at r152
  unfold Seg16.relationRow153 at r153
  unfold Seg16.relationRow154 at r154
  unfold Seg16.relationRow155 at r155
  unfold Seg16.relationRow156 at r156
  unfold Seg16.relationRow157 at r157
  unfold Seg16.relationRow158 at r158
  unfold Seg16.relationRow159 at r159
  unfold Seg16.relationRow160 at r160
  unfold Seg16.relationRow161 at r161
  unfold Seg16.relationRow162 at r162
  unfold Seg16.relationRow163 at r163
  unfold Seg16.relationRow164 at r164
  unfold Seg16.relationRow165 at r165
  unfold Seg16.relationRow166 at r166
  unfold Seg16.relationRow167 at r167
  unfold Seg16.relationRow168 at r168
  unfold Seg16.relationRow169 at r169
  unfold Seg16.relationRow170 at r170
  unfold Seg16.relationRow171 at r171
  unfold Seg16.relationRow172 at r172
  unfold Seg16.relationRow173 at r173
  unfold Seg16.relationRow174 at r174
  unfold Seg16.relationRow175 at r175
  unfold Seg16.relationRow176 at r176
  unfold Seg16.relationRow177 at r177
  unfold Seg16.relationRow178 at r178
  unfold Seg16.relationRow179 at r179
  unfold Seg16.relationRow180 at r180
  unfold Seg16.relationRow181 at r181
  unfold Seg16.relationRow182 at r182
  unfold Seg16.relationRow183 at r183
  unfold Seg16.relationRow184 at r184
  unfold Seg16.relationRow185 at r185
  unfold Seg16.relationRow186 at r186
  unfold Seg16.relationRow187 at r187
  unfold Seg16.relationRow188 at r188
  unfold Seg16.relationRow189 at r189
  unfold Seg16.relationRow190 at r190
  unfold Seg16.relationRow191 at r191
  unfold Seg16.relationRow192 at r192
  unfold Seg16.relationRow193 at r193
  unfold Seg16.relationRow194 at r194
  unfold Seg16.relationRow195 at r195
  unfold Seg16.relationRow196 at r196
  unfold Seg16.relationRow197 at r197
  unfold Seg16.relationRow198 at r198
  unfold Seg16.relationRow199 at r199
  unfold Seg16.relationRow200 at r200
  unfold Seg16.relationRow201 at r201
  unfold Seg16.relationRow202 at r202
  unfold Seg16.relationRow203 at r203
  unfold Seg16.relationRow204 at r204
  unfold Seg16.relationRow205 at r205
  unfold Seg16.relationRow206 at r206
  unfold Seg16.relationRow207 at r207
  unfold Seg16.relationRow208 at r208
  unfold Seg16.relationRow209 at r209
  unfold Seg16.relationRow210 at r210
  unfold Seg16.relationRow211 at r211
  unfold Seg16.relationRow212 at r212
  unfold Seg16.relationRow213 at r213
  unfold Seg16.relationRow214 at r214
  unfold Seg16.relationRow215 at r215
  unfold Seg16.relationRow216 at r216
  unfold Seg16.relationRow217 at r217
  unfold Seg16.relationRow218 at r218
  unfold Seg16.relationRow219 at r219
  unfold Seg16.relationRow220 at r220
  unfold Seg16.relationRow221 at r221
  unfold Seg16.relationRow222 at r222
  unfold Seg16.relationRow223 at r223
  unfold Seg16.relationRow224 at r224
  unfold Seg16.relationRow225 at r225
  unfold Seg16.relationRow226 at r226
  unfold Seg16.relationRow227 at r227
  unfold Seg16.relationRow228 at r228
  unfold Seg16.relationRow229 at r229
  unfold Seg16.relationRow230 at r230
  unfold Seg16.relationRow231 at r231
  unfold Seg16.relationRow232 at r232
  unfold Seg16.relationRow233 at r233
  unfold Seg16.relationRow234 at r234
  unfold Seg16.relationRow235 at r235
  unfold Seg16.relationRow236 at r236
  unfold Seg16.relationRow237 at r237
  unfold Seg16.relationRow238 at r238
  unfold Seg16.relationRow239 at r239
  unfold Seg16.relationRow240 at r240
  unfold Seg16.relationRow241 at r241
  unfold Seg16.relationRow242 at r242
  unfold Seg16.relationRow243 at r243
  unfold Seg16.relationRow244 at r244
  unfold Seg16.relationRow245 at r245
  unfold Seg16.relationRow246 at r246
  unfold Seg16.relationRow247 at r247
  unfold Seg16.relationRow248 at r248
  unfold Seg16.relationRow249 at r249
  unfold Seg16.relationRow250 at r250
  unfold Seg16.relationRow251 at r251
  unfold Seg16.relationRow252 at r252
  unfold Seg16.relationRow253 at r253
  unfold Seg16.relationRow254 at r254
  unfold Seg16.relationRow255 at r255
  unfold Seg16.relationRow256 at r256
  unfold Seg16.relationRow257 at r257
  unfold Seg16.relationRow258 at r258
  unfold Seg16.relationRow259 at r259
  unfold Seg16.relationRow260 at r260
  unfold Seg16.relationRow261 at r261
  unfold Seg16.relationRow262 at r262
  unfold Seg16.relationRow263 at r263
  unfold Seg16.relationRow264 at r264
  unfold Seg16.relationRow265 at r265
  unfold Seg16.relationRow266 at r266
  unfold Seg16.relationRow267 at r267
  unfold Seg16.relationRow268 at r268
  unfold Seg16.relationRow269 at r269
  unfold Seg16.relationRow270 at r270
  unfold Seg16.relationRow271 at r271
  unfold Seg16.relationRow272 at r272
  unfold Seg16.relationRow273 at r273
  unfold Seg16.relationRow274 at r274
  unfold Seg16.relationRow275 at r275
  unfold Seg16.relationRow276 at r276
  unfold Seg16.relationRow277 at r277
  unfold Seg16.relationRow278 at r278
  unfold Seg16.relationRow279 at r279
  unfold Seg16.relationRow280 at r280
  apply Shieldd.GnarkFormal.Extracted.CanonicalFqBits.isVectorBinary_of_booleanity
  intro i hi
  have key := seg16Canon1Bits_get rho i hi
  have hgoal : rho (13108 + i) * (1 - rho (13108 + i)) = 0 := by
    interval_cases i
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
    · linear_combination r251
    · linear_combination r252
    · linear_combination r253
    · linear_combination r254
    · linear_combination r255
    · linear_combination r256
    · linear_combination r257
    · linear_combination r258
    · linear_combination r259
    · linear_combination r260
    · linear_combination r261
    · linear_combination r262
    · linear_combination r263
    · linear_combination r264
    · linear_combination r265
    · linear_combination r266
    · linear_combination r267
    · linear_combination r268
    · linear_combination r269
    · linear_combination r270
    · linear_combination r271
    · linear_combination r272
    · linear_combination r273
    · linear_combination r274
    · linear_combination r275
    · linear_combination r276
    · linear_combination r277
    · linear_combination r278
    · linear_combination r279
    · linear_combination r280
  exact key ▸ hgoal

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
