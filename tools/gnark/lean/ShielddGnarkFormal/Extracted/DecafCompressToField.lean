import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Extracted.DecafCompressToField

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
local instance (priority := 2000) : CommRing F := ZMod.commRing _
local instance (priority := 3000) : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) : Ring F := (ZMod.commRing _).toRing
abbrev Gates := GatesGnark9 Order

def reducedStepOne (PrefixEqual: F) (Bit: F) (k: F -> Prop): Prop :=
    ∃gate_0, gate_0 = Gates.mul PrefixEqual Bit ∧
    k gate_0

def reducedStepZero (PrefixEqual: F) (Bit: F) (k: F -> Prop): Prop :=
    ∃gate_0, gate_0 = Gates.mul PrefixEqual Bit ∧
    Gates.eq gate_0 (0:F) ∧
    ∃gate_2, gate_2 = Gates.sub (1:F) Bit ∧
    ∃gate_3, gate_3 = Gates.mul PrefixEqual gate_2 ∧
    k gate_3

def canonicalFqBitsGadget (In: F) (k: List.Vector F 253 -> Prop): Prop :=
    ∃gate_0, Gates.to_binary In 253 gate_0 ∧
    reducedStepOne (1:F) gate_0[252] fun gate_1 =>
    reducedStepZero gate_1 gate_0[251] fun gate_2 =>
    reducedStepZero gate_2 gate_0[250] fun gate_3 =>
    reducedStepOne gate_3 gate_0[249] fun gate_4 =>
    reducedStepZero gate_4 gate_0[248] fun gate_5 =>
    reducedStepOne gate_5 gate_0[247] fun gate_6 =>
    reducedStepZero gate_6 gate_0[246] fun gate_7 =>
    reducedStepOne gate_7 gate_0[245] fun gate_8 =>
    reducedStepZero gate_8 gate_0[244] fun gate_9 =>
    reducedStepOne gate_9 gate_0[243] fun gate_10 =>
    reducedStepZero gate_10 gate_0[242] fun gate_11 =>
    reducedStepOne gate_11 gate_0[241] fun gate_12 =>
    reducedStepOne gate_12 gate_0[240] fun gate_13 =>
    reducedStepZero gate_13 gate_0[239] fun gate_14 =>
    reducedStepOne gate_14 gate_0[238] fun gate_15 =>
    reducedStepOne gate_15 gate_0[237] fun gate_16 =>
    reducedStepZero gate_16 gate_0[236] fun gate_17 =>
    reducedStepZero gate_17 gate_0[235] fun gate_18 =>
    reducedStepOne gate_18 gate_0[234] fun gate_19 =>
    reducedStepZero gate_19 gate_0[233] fun gate_20 =>
    reducedStepOne gate_20 gate_0[232] fun gate_21 =>
    reducedStepZero gate_21 gate_0[231] fun gate_22 =>
    reducedStepOne gate_22 gate_0[230] fun gate_23 =>
    reducedStepZero gate_23 gate_0[229] fun gate_24 =>
    reducedStepOne gate_24 gate_0[228] fun gate_25 =>
    reducedStepOne gate_25 gate_0[227] fun gate_26 =>
    reducedStepOne gate_26 gate_0[226] fun gate_27 =>
    reducedStepOne gate_27 gate_0[225] fun gate_28 =>
    reducedStepZero gate_28 gate_0[224] fun gate_29 =>
    reducedStepOne gate_29 gate_0[223] fun gate_30 =>
    reducedStepZero gate_30 gate_0[222] fun gate_31 =>
    reducedStepZero gate_31 gate_0[221] fun gate_32 =>
    reducedStepOne gate_32 gate_0[220] fun gate_33 =>
    reducedStepOne gate_33 gate_0[219] fun gate_34 =>
    reducedStepZero gate_34 gate_0[218] fun gate_35 =>
    reducedStepOne gate_35 gate_0[217] fun gate_36 =>
    reducedStepZero gate_36 gate_0[216] fun gate_37 =>
    reducedStepZero gate_37 gate_0[215] fun gate_38 =>
    reducedStepZero gate_38 gate_0[214] fun gate_39 =>
    reducedStepOne gate_39 gate_0[213] fun gate_40 =>
    reducedStepZero gate_40 gate_0[212] fun gate_41 =>
    reducedStepOne gate_41 gate_0[211] fun gate_42 =>
    reducedStepOne gate_42 gate_0[210] fun gate_43 =>
    reducedStepZero gate_43 gate_0[209] fun gate_44 =>
    reducedStepZero gate_44 gate_0[208] fun gate_45 =>
    reducedStepOne gate_45 gate_0[207] fun gate_46 =>
    reducedStepZero gate_46 gate_0[206] fun gate_47 =>
    reducedStepOne gate_47 gate_0[205] fun gate_48 =>
    reducedStepZero gate_48 gate_0[204] fun gate_49 =>
    reducedStepZero gate_49 gate_0[203] fun gate_50 =>
    reducedStepOne gate_50 gate_0[202] fun gate_51 =>
    reducedStepZero gate_51 gate_0[201] fun gate_52 =>
    reducedStepOne gate_52 gate_0[200] fun gate_53 =>
    reducedStepZero gate_53 gate_0[199] fun gate_54 =>
    reducedStepOne gate_54 gate_0[198] fun gate_55 =>
    reducedStepZero gate_55 gate_0[197] fun gate_56 =>
    reducedStepOne gate_56 gate_0[196] fun gate_57 =>
    reducedStepZero gate_57 gate_0[195] fun gate_58 =>
    reducedStepOne gate_58 gate_0[194] fun gate_59 =>
    reducedStepOne gate_59 gate_0[193] fun gate_60 =>
    reducedStepZero gate_60 gate_0[192] fun gate_61 =>
    reducedStepZero gate_61 gate_0[191] fun gate_62 =>
    reducedStepOne gate_62 gate_0[190] fun gate_63 =>
    reducedStepOne gate_63 gate_0[189] fun gate_64 =>
    reducedStepZero gate_64 gate_0[188] fun gate_65 =>
    reducedStepZero gate_65 gate_0[187] fun gate_66 =>
    reducedStepZero gate_66 gate_0[186] fun gate_67 =>
    reducedStepZero gate_67 gate_0[185] fun gate_68 =>
    reducedStepZero gate_68 gate_0[184] fun gate_69 =>
    reducedStepOne gate_69 gate_0[183] fun gate_70 =>
    reducedStepZero gate_70 gate_0[182] fun gate_71 =>
    reducedStepOne gate_71 gate_0[181] fun gate_72 =>
    reducedStepOne gate_72 gate_0[180] fun gate_73 =>
    reducedStepZero gate_73 gate_0[179] fun gate_74 =>
    reducedStepOne gate_74 gate_0[178] fun gate_75 =>
    reducedStepZero gate_75 gate_0[177] fun gate_76 =>
    reducedStepZero gate_76 gate_0[176] fun gate_77 =>
    reducedStepZero gate_77 gate_0[175] fun gate_78 =>
    reducedStepOne gate_78 gate_0[174] fun gate_79 =>
    reducedStepZero gate_79 gate_0[173] fun gate_80 =>
    reducedStepZero gate_80 gate_0[172] fun gate_81 =>
    reducedStepOne gate_81 gate_0[171] fun gate_82 =>
    reducedStepOne gate_82 gate_0[170] fun gate_83 =>
    reducedStepZero gate_83 gate_0[169] fun gate_84 =>
    reducedStepOne gate_84 gate_0[168] fun gate_85 =>
    reducedStepZero gate_85 gate_0[167] fun gate_86 =>
    reducedStepZero gate_86 gate_0[166] fun gate_87 =>
    reducedStepZero gate_87 gate_0[165] fun gate_88 =>
    reducedStepOne gate_88 gate_0[164] fun gate_89 =>
    reducedStepOne gate_89 gate_0[163] fun gate_90 =>
    reducedStepOne gate_90 gate_0[162] fun gate_91 =>
    reducedStepOne gate_91 gate_0[161] fun gate_92 =>
    reducedStepZero gate_92 gate_0[160] fun gate_93 =>
    reducedStepZero gate_93 gate_0[159] fun gate_94 =>
    reducedStepOne gate_94 gate_0[158] fun gate_95 =>
    reducedStepZero gate_95 gate_0[157] fun gate_96 =>
    reducedStepOne gate_96 gate_0[156] fun gate_97 =>
    reducedStepOne gate_97 gate_0[155] fun gate_98 =>
    reducedStepOne gate_98 gate_0[154] fun gate_99 =>
    reducedStepZero gate_99 gate_0[153] fun gate_100 =>
    reducedStepZero gate_100 gate_0[152] fun gate_101 =>
    reducedStepZero gate_101 gate_0[151] fun gate_102 =>
    reducedStepZero gate_102 gate_0[150] fun gate_103 =>
    reducedStepOne gate_103 gate_0[149] fun gate_104 =>
    reducedStepOne gate_104 gate_0[148] fun gate_105 =>
    reducedStepZero gate_105 gate_0[147] fun gate_106 =>
    reducedStepOne gate_106 gate_0[146] fun gate_107 =>
    reducedStepOne gate_107 gate_0[145] fun gate_108 =>
    reducedStepOne gate_108 gate_0[144] fun gate_109 =>
    reducedStepOne gate_109 gate_0[143] fun gate_110 =>
    reducedStepZero gate_110 gate_0[142] fun gate_111 =>
    reducedStepOne gate_111 gate_0[141] fun gate_112 =>
    reducedStepOne gate_112 gate_0[140] fun gate_113 =>
    reducedStepZero gate_113 gate_0[139] fun gate_114 =>
    reducedStepZero gate_114 gate_0[138] fun gate_115 =>
    reducedStepZero gate_115 gate_0[137] fun gate_116 =>
    reducedStepZero gate_116 gate_0[136] fun gate_117 =>
    reducedStepZero gate_117 gate_0[135] fun gate_118 =>
    reducedStepZero gate_118 gate_0[134] fun gate_119 =>
    reducedStepZero gate_119 gate_0[133] fun gate_120 =>
    reducedStepZero gate_120 gate_0[132] fun gate_121 =>
    reducedStepZero gate_121 gate_0[131] fun gate_122 =>
    reducedStepZero gate_122 gate_0[130] fun gate_123 =>
    reducedStepZero gate_123 gate_0[129] fun gate_124 =>
    reducedStepOne gate_124 gate_0[128] fun gate_125 =>
    reducedStepZero gate_125 gate_0[127] fun gate_126 =>
    reducedStepOne gate_126 gate_0[126] fun gate_127 =>
    reducedStepZero gate_127 gate_0[125] fun gate_128 =>
    reducedStepOne gate_128 gate_0[124] fun gate_129 =>
    reducedStepOne gate_129 gate_0[123] fun gate_130 =>
    reducedStepZero gate_130 gate_0[122] fun gate_131 =>
    reducedStepZero gate_131 gate_0[121] fun gate_132 =>
    reducedStepOne gate_132 gate_0[120] fun gate_133 =>
    reducedStepOne gate_133 gate_0[119] fun gate_134 =>
    reducedStepZero gate_134 gate_0[118] fun gate_135 =>
    reducedStepOne gate_135 gate_0[117] fun gate_136 =>
    reducedStepZero gate_136 gate_0[116] fun gate_137 =>
    reducedStepOne gate_137 gate_0[115] fun gate_138 =>
    reducedStepZero gate_138 gate_0[114] fun gate_139 =>
    reducedStepOne gate_139 gate_0[113] fun gate_140 =>
    reducedStepZero gate_140 gate_0[112] fun gate_141 =>
    reducedStepZero gate_141 gate_0[111] fun gate_142 =>
    reducedStepOne gate_142 gate_0[110] fun gate_143 =>
    reducedStepOne gate_143 gate_0[109] fun gate_144 =>
    reducedStepOne gate_144 gate_0[108] fun gate_145 =>
    reducedStepZero gate_145 gate_0[107] fun gate_146 =>
    reducedStepOne gate_146 gate_0[106] fun gate_147 =>
    reducedStepOne gate_147 gate_0[105] fun gate_148 =>
    reducedStepZero gate_148 gate_0[104] fun gate_149 =>
    reducedStepOne gate_149 gate_0[103] fun gate_150 =>
    reducedStepOne gate_150 gate_0[102] fun gate_151 =>
    reducedStepOne gate_151 gate_0[101] fun gate_152 =>
    reducedStepOne gate_152 gate_0[100] fun gate_153 =>
    reducedStepOne gate_153 gate_0[99] fun gate_154 =>
    reducedStepOne gate_154 gate_0[98] fun gate_155 =>
    reducedStepOne gate_155 gate_0[97] fun gate_156 =>
    reducedStepZero gate_156 gate_0[96] fun gate_157 =>
    reducedStepOne gate_157 gate_0[95] fun gate_158 =>
    reducedStepOne gate_158 gate_0[94] fun gate_159 =>
    reducedStepZero gate_159 gate_0[93] fun gate_160 =>
    reducedStepOne gate_160 gate_0[92] fun gate_161 =>
    reducedStepZero gate_161 gate_0[91] fun gate_162 =>
    reducedStepZero gate_162 gate_0[90] fun gate_163 =>
    reducedStepZero gate_163 gate_0[89] fun gate_164 =>
    reducedStepZero gate_164 gate_0[88] fun gate_165 =>
    reducedStepZero gate_165 gate_0[87] fun gate_166 =>
    reducedStepZero gate_166 gate_0[86] fun gate_167 =>
    reducedStepZero gate_167 gate_0[85] fun gate_168 =>
    reducedStepZero gate_168 gate_0[84] fun gate_169 =>
    reducedStepZero gate_169 gate_0[83] fun gate_170 =>
    reducedStepZero gate_170 gate_0[82] fun gate_171 =>
    reducedStepZero gate_171 gate_0[81] fun gate_172 =>
    reducedStepZero gate_172 gate_0[80] fun gate_173 =>
    reducedStepZero gate_173 gate_0[79] fun gate_174 =>
    reducedStepZero gate_174 gate_0[78] fun gate_175 =>
    reducedStepZero gate_175 gate_0[77] fun gate_176 =>
    reducedStepZero gate_176 gate_0[76] fun gate_177 =>
    reducedStepZero gate_177 gate_0[75] fun gate_178 =>
    reducedStepZero gate_178 gate_0[74] fun gate_179 =>
    reducedStepZero gate_179 gate_0[73] fun gate_180 =>
    reducedStepZero gate_180 gate_0[72] fun gate_181 =>
    reducedStepZero gate_181 gate_0[71] fun gate_182 =>
    reducedStepZero gate_182 gate_0[70] fun gate_183 =>
    reducedStepZero gate_183 gate_0[69] fun gate_184 =>
    reducedStepZero gate_184 gate_0[68] fun gate_185 =>
    reducedStepZero gate_185 gate_0[67] fun gate_186 =>
    reducedStepZero gate_186 gate_0[66] fun gate_187 =>
    reducedStepZero gate_187 gate_0[65] fun gate_188 =>
    reducedStepOne gate_188 gate_0[64] fun gate_189 =>
    reducedStepZero gate_189 gate_0[63] fun gate_190 =>
    reducedStepZero gate_190 gate_0[62] fun gate_191 =>
    reducedStepZero gate_191 gate_0[61] fun gate_192 =>
    reducedStepZero gate_192 gate_0[60] fun gate_193 =>
    reducedStepOne gate_193 gate_0[59] fun gate_194 =>
    reducedStepZero gate_194 gate_0[58] fun gate_195 =>
    reducedStepOne gate_195 gate_0[57] fun gate_196 =>
    reducedStepZero gate_196 gate_0[56] fun gate_197 =>
    reducedStepZero gate_197 gate_0[55] fun gate_198 =>
    reducedStepZero gate_198 gate_0[54] fun gate_199 =>
    reducedStepZero gate_199 gate_0[53] fun gate_200 =>
    reducedStepOne gate_200 gate_0[52] fun gate_201 =>
    reducedStepZero gate_201 gate_0[51] fun gate_202 =>
    reducedStepZero gate_202 gate_0[50] fun gate_203 =>
    reducedStepZero gate_203 gate_0[49] fun gate_204 =>
    reducedStepOne gate_204 gate_0[48] fun gate_205 =>
    reducedStepOne gate_205 gate_0[47] fun gate_206 =>
    reducedStepZero gate_206 gate_0[46] fun gate_207 =>
    reducedStepZero gate_207 gate_0[45] fun gate_208 =>
    reducedStepZero gate_208 gate_0[44] fun gate_209 =>
    reducedStepZero gate_209 gate_0[43] fun gate_210 =>
    reducedStepZero gate_210 gate_0[42] fun gate_211 =>
    reducedStepZero gate_211 gate_0[41] fun gate_212 =>
    reducedStepZero gate_212 gate_0[40] fun gate_213 =>
    reducedStepZero gate_213 gate_0[39] fun gate_214 =>
    reducedStepZero gate_214 gate_0[38] fun gate_215 =>
    reducedStepZero gate_215 gate_0[37] fun gate_216 =>
    reducedStepZero gate_216 gate_0[36] fun gate_217 =>
    reducedStepZero gate_217 gate_0[35] fun gate_218 =>
    reducedStepZero gate_218 gate_0[34] fun gate_219 =>
    reducedStepZero gate_219 gate_0[33] fun gate_220 =>
    reducedStepZero gate_220 gate_0[32] fun gate_221 =>
    reducedStepZero gate_221 gate_0[31] fun gate_222 =>
    reducedStepZero gate_222 gate_0[30] fun gate_223 =>
    reducedStepZero gate_223 gate_0[29] fun gate_224 =>
    reducedStepZero gate_224 gate_0[28] fun gate_225 =>
    reducedStepZero gate_225 gate_0[27] fun gate_226 =>
    reducedStepZero gate_226 gate_0[26] fun gate_227 =>
    reducedStepZero gate_227 gate_0[25] fun gate_228 =>
    reducedStepZero gate_228 gate_0[24] fun gate_229 =>
    reducedStepZero gate_229 gate_0[23] fun gate_230 =>
    reducedStepZero gate_230 gate_0[22] fun gate_231 =>
    reducedStepZero gate_231 gate_0[21] fun gate_232 =>
    reducedStepZero gate_232 gate_0[20] fun gate_233 =>
    reducedStepZero gate_233 gate_0[19] fun gate_234 =>
    reducedStepZero gate_234 gate_0[18] fun gate_235 =>
    reducedStepZero gate_235 gate_0[17] fun gate_236 =>
    reducedStepZero gate_236 gate_0[16] fun gate_237 =>
    reducedStepZero gate_237 gate_0[15] fun gate_238 =>
    reducedStepZero gate_238 gate_0[14] fun gate_239 =>
    reducedStepZero gate_239 gate_0[13] fun gate_240 =>
    reducedStepZero gate_240 gate_0[12] fun gate_241 =>
    reducedStepZero gate_241 gate_0[11] fun gate_242 =>
    reducedStepZero gate_242 gate_0[10] fun gate_243 =>
    reducedStepZero gate_243 gate_0[9] fun gate_244 =>
    reducedStepZero gate_244 gate_0[8] fun gate_245 =>
    reducedStepZero gate_245 gate_0[7] fun gate_246 =>
    reducedStepZero gate_246 gate_0[6] fun gate_247 =>
    reducedStepZero gate_247 gate_0[5] fun gate_248 =>
    reducedStepZero gate_248 gate_0[4] fun gate_249 =>
    reducedStepZero gate_249 gate_0[3] fun gate_250 =>
    reducedStepZero gate_250 gate_0[2] fun gate_251 =>
    reducedStepZero gate_251 gate_0[1] fun gate_252 =>
    reducedStepZero gate_252 gate_0[0] fun _ =>
    k gate_0

def circuit (X: F) (Y: F) (WasSquare: F) (SqrtRatio: F) (Out: F): Prop :=
    ∃gate_0, gate_0 = Gates.mul X X ∧
    ∃gate_1, gate_1 = Gates.mul Y Y ∧
    ∃gate_2, gate_2 = Gates.sub gate_1 gate_0 ∧
    ∃gate_3, gate_3 = Gates.mul (3021:F) gate_0 ∧
    ∃gate_4, gate_4 = Gates.mul gate_3 gate_1 ∧
    ∃gate_5, gate_5 = Gates.add (1:F) gate_4 ∧
    Gates.eq gate_2 gate_5 ∧
    ∃gate_7, gate_7 = Gates.mul X Y ∧
    ∃gate_8, gate_8 = Gates.add X gate_7 ∧
    ∃gate_9, gate_9 = Gates.sub X gate_7 ∧
    ∃gate_10, gate_10 = Gates.mul gate_8 gate_9 ∧
    ∃gate_11, gate_11 = Gates.mul gate_10 (8444461749428370424248824938781546531375899335154063827935233455917409236019:F) ∧
    ∃gate_12, gate_12 = Gates.mul gate_11 gate_0 ∧
    Gates.is_bool WasSquare ∧
    ∃gate_14, Gates.is_zero gate_12 gate_14 ∧
    ∃gate_15, Gates.select gate_14 (1:F) gate_12 gate_15 ∧
    ∃gate_16, Gates.inv gate_15 gate_16 ∧
    ∃gate_17, gate_17 = Gates.mul SqrtRatio SqrtRatio ∧
    ∃gate_18, gate_18 = Gates.mul WasSquare gate_14 ∧
    Gates.eq gate_18 (0:F) ∧
    ∃gate_20, gate_20 = Gates.sub (1:F) WasSquare ∧
    ∃gate_21, gate_21 = Gates.sub (1:F) gate_14 ∧
    ∃gate_22, Gates.and gate_20 gate_14 gate_22 ∧
    ∃gate_23, Gates.and gate_20 gate_21 gate_23 ∧
    ∃gate_24, gate_24 = Gates.sub gate_17 gate_16 ∧
    ∃gate_25, gate_25 = Gates.mul WasSquare gate_24 ∧
    Gates.eq gate_25 (0:F) ∧
    ∃gate_27, gate_27 = Gates.mul gate_22 gate_17 ∧
    Gates.eq gate_27 (0:F) ∧
    ∃gate_29, gate_29 = Gates.mul (2841681278031794617739547238867782961338435681360110683443920362658525667816:F) gate_16 ∧
    ∃gate_30, gate_30 = Gates.sub gate_17 gate_29 ∧
    ∃gate_31, gate_31 = Gates.mul gate_23 gate_30 ∧
    Gates.eq gate_31 (0:F) ∧
    ∃gate_33, gate_33 = Gates.add WasSquare gate_22 ∧
    ∃gate_34, gate_34 = Gates.add gate_33 gate_23 ∧
    Gates.eq gate_34 (1:F) ∧
    ∃gate_36, gate_36 = Gates.mul SqrtRatio gate_10 ∧
    canonicalFqBitsGadget gate_36 fun gate_37 =>
    ∃gate_38, gate_38 = Gates.sub (1:F) gate_37[0] ∧
    ∃gate_39, gate_39 = Gates.neg gate_36 ∧
    ∃gate_40, Gates.select gate_38 gate_36 gate_39 gate_40 ∧
    ∃gate_41, gate_41 = Gates.sub gate_40 gate_7 ∧
    ∃gate_42, gate_42 = Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409236019:F) SqrtRatio ∧
    ∃gate_43, gate_43 = Gates.mul gate_42 gate_41 ∧
    ∃gate_44, gate_44 = Gates.mul gate_43 X ∧
    canonicalFqBitsGadget gate_44 fun gate_45 =>
    ∃gate_46, gate_46 = Gates.sub (1:F) gate_45[0] ∧
    ∃gate_47, gate_47 = Gates.neg gate_44 ∧
    ∃gate_48, Gates.select gate_46 gate_44 gate_47 gate_48 ∧
    Gates.eq gate_48 Out ∧
    True

end Shieldd.GnarkFormal.Extracted.DecafCompressToField
