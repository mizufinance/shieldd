import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Extracted.ImtGap

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order
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

def lexLessStep (PrefixEqual: F) (IsLess: F) (ABit: F) (BBit: F) (k: List.Vector F 2 -> Prop): Prop :=
    ∃gate_0, gate_0 = Gates.sub (1:F) ABit ∧
    ∃gate_1, gate_1 = Gates.mul PrefixEqual gate_0 ∧
    ∃gate_2, gate_2 = Gates.mul gate_1 BBit ∧
    ∃gate_3, gate_3 = Gates.add IsLess gate_2 ∧
    ∃gate_4, gate_4 = Gates.mul ABit BBit ∧
    ∃gate_5, gate_5 = Gates.mul (2:F) gate_4 ∧
    ∃gate_6, gate_6 = Gates.add (1:F) gate_5 ∧
    ∃gate_7, gate_7 = Gates.sub gate_6 ABit ∧
    ∃gate_8, gate_8 = Gates.sub gate_7 BBit ∧
    ∃gate_9, gate_9 = Gates.mul PrefixEqual gate_8 ∧
    k vec![gate_9, gate_3]

def lexLess253Gadget_253_253 (ABits: List.Vector F 253) (BBits: List.Vector F 253) (k: F -> Prop): Prop :=
    lexLessStep (1:F) (0:F) ABits[252] BBits[252] fun gate_0 =>
    lexLessStep gate_0[0] gate_0[1] ABits[251] BBits[251] fun gate_1 =>
    lexLessStep gate_1[0] gate_1[1] ABits[250] BBits[250] fun gate_2 =>
    lexLessStep gate_2[0] gate_2[1] ABits[249] BBits[249] fun gate_3 =>
    lexLessStep gate_3[0] gate_3[1] ABits[248] BBits[248] fun gate_4 =>
    lexLessStep gate_4[0] gate_4[1] ABits[247] BBits[247] fun gate_5 =>
    lexLessStep gate_5[0] gate_5[1] ABits[246] BBits[246] fun gate_6 =>
    lexLessStep gate_6[0] gate_6[1] ABits[245] BBits[245] fun gate_7 =>
    lexLessStep gate_7[0] gate_7[1] ABits[244] BBits[244] fun gate_8 =>
    lexLessStep gate_8[0] gate_8[1] ABits[243] BBits[243] fun gate_9 =>
    lexLessStep gate_9[0] gate_9[1] ABits[242] BBits[242] fun gate_10 =>
    lexLessStep gate_10[0] gate_10[1] ABits[241] BBits[241] fun gate_11 =>
    lexLessStep gate_11[0] gate_11[1] ABits[240] BBits[240] fun gate_12 =>
    lexLessStep gate_12[0] gate_12[1] ABits[239] BBits[239] fun gate_13 =>
    lexLessStep gate_13[0] gate_13[1] ABits[238] BBits[238] fun gate_14 =>
    lexLessStep gate_14[0] gate_14[1] ABits[237] BBits[237] fun gate_15 =>
    lexLessStep gate_15[0] gate_15[1] ABits[236] BBits[236] fun gate_16 =>
    lexLessStep gate_16[0] gate_16[1] ABits[235] BBits[235] fun gate_17 =>
    lexLessStep gate_17[0] gate_17[1] ABits[234] BBits[234] fun gate_18 =>
    lexLessStep gate_18[0] gate_18[1] ABits[233] BBits[233] fun gate_19 =>
    lexLessStep gate_19[0] gate_19[1] ABits[232] BBits[232] fun gate_20 =>
    lexLessStep gate_20[0] gate_20[1] ABits[231] BBits[231] fun gate_21 =>
    lexLessStep gate_21[0] gate_21[1] ABits[230] BBits[230] fun gate_22 =>
    lexLessStep gate_22[0] gate_22[1] ABits[229] BBits[229] fun gate_23 =>
    lexLessStep gate_23[0] gate_23[1] ABits[228] BBits[228] fun gate_24 =>
    lexLessStep gate_24[0] gate_24[1] ABits[227] BBits[227] fun gate_25 =>
    lexLessStep gate_25[0] gate_25[1] ABits[226] BBits[226] fun gate_26 =>
    lexLessStep gate_26[0] gate_26[1] ABits[225] BBits[225] fun gate_27 =>
    lexLessStep gate_27[0] gate_27[1] ABits[224] BBits[224] fun gate_28 =>
    lexLessStep gate_28[0] gate_28[1] ABits[223] BBits[223] fun gate_29 =>
    lexLessStep gate_29[0] gate_29[1] ABits[222] BBits[222] fun gate_30 =>
    lexLessStep gate_30[0] gate_30[1] ABits[221] BBits[221] fun gate_31 =>
    lexLessStep gate_31[0] gate_31[1] ABits[220] BBits[220] fun gate_32 =>
    lexLessStep gate_32[0] gate_32[1] ABits[219] BBits[219] fun gate_33 =>
    lexLessStep gate_33[0] gate_33[1] ABits[218] BBits[218] fun gate_34 =>
    lexLessStep gate_34[0] gate_34[1] ABits[217] BBits[217] fun gate_35 =>
    lexLessStep gate_35[0] gate_35[1] ABits[216] BBits[216] fun gate_36 =>
    lexLessStep gate_36[0] gate_36[1] ABits[215] BBits[215] fun gate_37 =>
    lexLessStep gate_37[0] gate_37[1] ABits[214] BBits[214] fun gate_38 =>
    lexLessStep gate_38[0] gate_38[1] ABits[213] BBits[213] fun gate_39 =>
    lexLessStep gate_39[0] gate_39[1] ABits[212] BBits[212] fun gate_40 =>
    lexLessStep gate_40[0] gate_40[1] ABits[211] BBits[211] fun gate_41 =>
    lexLessStep gate_41[0] gate_41[1] ABits[210] BBits[210] fun gate_42 =>
    lexLessStep gate_42[0] gate_42[1] ABits[209] BBits[209] fun gate_43 =>
    lexLessStep gate_43[0] gate_43[1] ABits[208] BBits[208] fun gate_44 =>
    lexLessStep gate_44[0] gate_44[1] ABits[207] BBits[207] fun gate_45 =>
    lexLessStep gate_45[0] gate_45[1] ABits[206] BBits[206] fun gate_46 =>
    lexLessStep gate_46[0] gate_46[1] ABits[205] BBits[205] fun gate_47 =>
    lexLessStep gate_47[0] gate_47[1] ABits[204] BBits[204] fun gate_48 =>
    lexLessStep gate_48[0] gate_48[1] ABits[203] BBits[203] fun gate_49 =>
    lexLessStep gate_49[0] gate_49[1] ABits[202] BBits[202] fun gate_50 =>
    lexLessStep gate_50[0] gate_50[1] ABits[201] BBits[201] fun gate_51 =>
    lexLessStep gate_51[0] gate_51[1] ABits[200] BBits[200] fun gate_52 =>
    lexLessStep gate_52[0] gate_52[1] ABits[199] BBits[199] fun gate_53 =>
    lexLessStep gate_53[0] gate_53[1] ABits[198] BBits[198] fun gate_54 =>
    lexLessStep gate_54[0] gate_54[1] ABits[197] BBits[197] fun gate_55 =>
    lexLessStep gate_55[0] gate_55[1] ABits[196] BBits[196] fun gate_56 =>
    lexLessStep gate_56[0] gate_56[1] ABits[195] BBits[195] fun gate_57 =>
    lexLessStep gate_57[0] gate_57[1] ABits[194] BBits[194] fun gate_58 =>
    lexLessStep gate_58[0] gate_58[1] ABits[193] BBits[193] fun gate_59 =>
    lexLessStep gate_59[0] gate_59[1] ABits[192] BBits[192] fun gate_60 =>
    lexLessStep gate_60[0] gate_60[1] ABits[191] BBits[191] fun gate_61 =>
    lexLessStep gate_61[0] gate_61[1] ABits[190] BBits[190] fun gate_62 =>
    lexLessStep gate_62[0] gate_62[1] ABits[189] BBits[189] fun gate_63 =>
    lexLessStep gate_63[0] gate_63[1] ABits[188] BBits[188] fun gate_64 =>
    lexLessStep gate_64[0] gate_64[1] ABits[187] BBits[187] fun gate_65 =>
    lexLessStep gate_65[0] gate_65[1] ABits[186] BBits[186] fun gate_66 =>
    lexLessStep gate_66[0] gate_66[1] ABits[185] BBits[185] fun gate_67 =>
    lexLessStep gate_67[0] gate_67[1] ABits[184] BBits[184] fun gate_68 =>
    lexLessStep gate_68[0] gate_68[1] ABits[183] BBits[183] fun gate_69 =>
    lexLessStep gate_69[0] gate_69[1] ABits[182] BBits[182] fun gate_70 =>
    lexLessStep gate_70[0] gate_70[1] ABits[181] BBits[181] fun gate_71 =>
    lexLessStep gate_71[0] gate_71[1] ABits[180] BBits[180] fun gate_72 =>
    lexLessStep gate_72[0] gate_72[1] ABits[179] BBits[179] fun gate_73 =>
    lexLessStep gate_73[0] gate_73[1] ABits[178] BBits[178] fun gate_74 =>
    lexLessStep gate_74[0] gate_74[1] ABits[177] BBits[177] fun gate_75 =>
    lexLessStep gate_75[0] gate_75[1] ABits[176] BBits[176] fun gate_76 =>
    lexLessStep gate_76[0] gate_76[1] ABits[175] BBits[175] fun gate_77 =>
    lexLessStep gate_77[0] gate_77[1] ABits[174] BBits[174] fun gate_78 =>
    lexLessStep gate_78[0] gate_78[1] ABits[173] BBits[173] fun gate_79 =>
    lexLessStep gate_79[0] gate_79[1] ABits[172] BBits[172] fun gate_80 =>
    lexLessStep gate_80[0] gate_80[1] ABits[171] BBits[171] fun gate_81 =>
    lexLessStep gate_81[0] gate_81[1] ABits[170] BBits[170] fun gate_82 =>
    lexLessStep gate_82[0] gate_82[1] ABits[169] BBits[169] fun gate_83 =>
    lexLessStep gate_83[0] gate_83[1] ABits[168] BBits[168] fun gate_84 =>
    lexLessStep gate_84[0] gate_84[1] ABits[167] BBits[167] fun gate_85 =>
    lexLessStep gate_85[0] gate_85[1] ABits[166] BBits[166] fun gate_86 =>
    lexLessStep gate_86[0] gate_86[1] ABits[165] BBits[165] fun gate_87 =>
    lexLessStep gate_87[0] gate_87[1] ABits[164] BBits[164] fun gate_88 =>
    lexLessStep gate_88[0] gate_88[1] ABits[163] BBits[163] fun gate_89 =>
    lexLessStep gate_89[0] gate_89[1] ABits[162] BBits[162] fun gate_90 =>
    lexLessStep gate_90[0] gate_90[1] ABits[161] BBits[161] fun gate_91 =>
    lexLessStep gate_91[0] gate_91[1] ABits[160] BBits[160] fun gate_92 =>
    lexLessStep gate_92[0] gate_92[1] ABits[159] BBits[159] fun gate_93 =>
    lexLessStep gate_93[0] gate_93[1] ABits[158] BBits[158] fun gate_94 =>
    lexLessStep gate_94[0] gate_94[1] ABits[157] BBits[157] fun gate_95 =>
    lexLessStep gate_95[0] gate_95[1] ABits[156] BBits[156] fun gate_96 =>
    lexLessStep gate_96[0] gate_96[1] ABits[155] BBits[155] fun gate_97 =>
    lexLessStep gate_97[0] gate_97[1] ABits[154] BBits[154] fun gate_98 =>
    lexLessStep gate_98[0] gate_98[1] ABits[153] BBits[153] fun gate_99 =>
    lexLessStep gate_99[0] gate_99[1] ABits[152] BBits[152] fun gate_100 =>
    lexLessStep gate_100[0] gate_100[1] ABits[151] BBits[151] fun gate_101 =>
    lexLessStep gate_101[0] gate_101[1] ABits[150] BBits[150] fun gate_102 =>
    lexLessStep gate_102[0] gate_102[1] ABits[149] BBits[149] fun gate_103 =>
    lexLessStep gate_103[0] gate_103[1] ABits[148] BBits[148] fun gate_104 =>
    lexLessStep gate_104[0] gate_104[1] ABits[147] BBits[147] fun gate_105 =>
    lexLessStep gate_105[0] gate_105[1] ABits[146] BBits[146] fun gate_106 =>
    lexLessStep gate_106[0] gate_106[1] ABits[145] BBits[145] fun gate_107 =>
    lexLessStep gate_107[0] gate_107[1] ABits[144] BBits[144] fun gate_108 =>
    lexLessStep gate_108[0] gate_108[1] ABits[143] BBits[143] fun gate_109 =>
    lexLessStep gate_109[0] gate_109[1] ABits[142] BBits[142] fun gate_110 =>
    lexLessStep gate_110[0] gate_110[1] ABits[141] BBits[141] fun gate_111 =>
    lexLessStep gate_111[0] gate_111[1] ABits[140] BBits[140] fun gate_112 =>
    lexLessStep gate_112[0] gate_112[1] ABits[139] BBits[139] fun gate_113 =>
    lexLessStep gate_113[0] gate_113[1] ABits[138] BBits[138] fun gate_114 =>
    lexLessStep gate_114[0] gate_114[1] ABits[137] BBits[137] fun gate_115 =>
    lexLessStep gate_115[0] gate_115[1] ABits[136] BBits[136] fun gate_116 =>
    lexLessStep gate_116[0] gate_116[1] ABits[135] BBits[135] fun gate_117 =>
    lexLessStep gate_117[0] gate_117[1] ABits[134] BBits[134] fun gate_118 =>
    lexLessStep gate_118[0] gate_118[1] ABits[133] BBits[133] fun gate_119 =>
    lexLessStep gate_119[0] gate_119[1] ABits[132] BBits[132] fun gate_120 =>
    lexLessStep gate_120[0] gate_120[1] ABits[131] BBits[131] fun gate_121 =>
    lexLessStep gate_121[0] gate_121[1] ABits[130] BBits[130] fun gate_122 =>
    lexLessStep gate_122[0] gate_122[1] ABits[129] BBits[129] fun gate_123 =>
    lexLessStep gate_123[0] gate_123[1] ABits[128] BBits[128] fun gate_124 =>
    lexLessStep gate_124[0] gate_124[1] ABits[127] BBits[127] fun gate_125 =>
    lexLessStep gate_125[0] gate_125[1] ABits[126] BBits[126] fun gate_126 =>
    lexLessStep gate_126[0] gate_126[1] ABits[125] BBits[125] fun gate_127 =>
    lexLessStep gate_127[0] gate_127[1] ABits[124] BBits[124] fun gate_128 =>
    lexLessStep gate_128[0] gate_128[1] ABits[123] BBits[123] fun gate_129 =>
    lexLessStep gate_129[0] gate_129[1] ABits[122] BBits[122] fun gate_130 =>
    lexLessStep gate_130[0] gate_130[1] ABits[121] BBits[121] fun gate_131 =>
    lexLessStep gate_131[0] gate_131[1] ABits[120] BBits[120] fun gate_132 =>
    lexLessStep gate_132[0] gate_132[1] ABits[119] BBits[119] fun gate_133 =>
    lexLessStep gate_133[0] gate_133[1] ABits[118] BBits[118] fun gate_134 =>
    lexLessStep gate_134[0] gate_134[1] ABits[117] BBits[117] fun gate_135 =>
    lexLessStep gate_135[0] gate_135[1] ABits[116] BBits[116] fun gate_136 =>
    lexLessStep gate_136[0] gate_136[1] ABits[115] BBits[115] fun gate_137 =>
    lexLessStep gate_137[0] gate_137[1] ABits[114] BBits[114] fun gate_138 =>
    lexLessStep gate_138[0] gate_138[1] ABits[113] BBits[113] fun gate_139 =>
    lexLessStep gate_139[0] gate_139[1] ABits[112] BBits[112] fun gate_140 =>
    lexLessStep gate_140[0] gate_140[1] ABits[111] BBits[111] fun gate_141 =>
    lexLessStep gate_141[0] gate_141[1] ABits[110] BBits[110] fun gate_142 =>
    lexLessStep gate_142[0] gate_142[1] ABits[109] BBits[109] fun gate_143 =>
    lexLessStep gate_143[0] gate_143[1] ABits[108] BBits[108] fun gate_144 =>
    lexLessStep gate_144[0] gate_144[1] ABits[107] BBits[107] fun gate_145 =>
    lexLessStep gate_145[0] gate_145[1] ABits[106] BBits[106] fun gate_146 =>
    lexLessStep gate_146[0] gate_146[1] ABits[105] BBits[105] fun gate_147 =>
    lexLessStep gate_147[0] gate_147[1] ABits[104] BBits[104] fun gate_148 =>
    lexLessStep gate_148[0] gate_148[1] ABits[103] BBits[103] fun gate_149 =>
    lexLessStep gate_149[0] gate_149[1] ABits[102] BBits[102] fun gate_150 =>
    lexLessStep gate_150[0] gate_150[1] ABits[101] BBits[101] fun gate_151 =>
    lexLessStep gate_151[0] gate_151[1] ABits[100] BBits[100] fun gate_152 =>
    lexLessStep gate_152[0] gate_152[1] ABits[99] BBits[99] fun gate_153 =>
    lexLessStep gate_153[0] gate_153[1] ABits[98] BBits[98] fun gate_154 =>
    lexLessStep gate_154[0] gate_154[1] ABits[97] BBits[97] fun gate_155 =>
    lexLessStep gate_155[0] gate_155[1] ABits[96] BBits[96] fun gate_156 =>
    lexLessStep gate_156[0] gate_156[1] ABits[95] BBits[95] fun gate_157 =>
    lexLessStep gate_157[0] gate_157[1] ABits[94] BBits[94] fun gate_158 =>
    lexLessStep gate_158[0] gate_158[1] ABits[93] BBits[93] fun gate_159 =>
    lexLessStep gate_159[0] gate_159[1] ABits[92] BBits[92] fun gate_160 =>
    lexLessStep gate_160[0] gate_160[1] ABits[91] BBits[91] fun gate_161 =>
    lexLessStep gate_161[0] gate_161[1] ABits[90] BBits[90] fun gate_162 =>
    lexLessStep gate_162[0] gate_162[1] ABits[89] BBits[89] fun gate_163 =>
    lexLessStep gate_163[0] gate_163[1] ABits[88] BBits[88] fun gate_164 =>
    lexLessStep gate_164[0] gate_164[1] ABits[87] BBits[87] fun gate_165 =>
    lexLessStep gate_165[0] gate_165[1] ABits[86] BBits[86] fun gate_166 =>
    lexLessStep gate_166[0] gate_166[1] ABits[85] BBits[85] fun gate_167 =>
    lexLessStep gate_167[0] gate_167[1] ABits[84] BBits[84] fun gate_168 =>
    lexLessStep gate_168[0] gate_168[1] ABits[83] BBits[83] fun gate_169 =>
    lexLessStep gate_169[0] gate_169[1] ABits[82] BBits[82] fun gate_170 =>
    lexLessStep gate_170[0] gate_170[1] ABits[81] BBits[81] fun gate_171 =>
    lexLessStep gate_171[0] gate_171[1] ABits[80] BBits[80] fun gate_172 =>
    lexLessStep gate_172[0] gate_172[1] ABits[79] BBits[79] fun gate_173 =>
    lexLessStep gate_173[0] gate_173[1] ABits[78] BBits[78] fun gate_174 =>
    lexLessStep gate_174[0] gate_174[1] ABits[77] BBits[77] fun gate_175 =>
    lexLessStep gate_175[0] gate_175[1] ABits[76] BBits[76] fun gate_176 =>
    lexLessStep gate_176[0] gate_176[1] ABits[75] BBits[75] fun gate_177 =>
    lexLessStep gate_177[0] gate_177[1] ABits[74] BBits[74] fun gate_178 =>
    lexLessStep gate_178[0] gate_178[1] ABits[73] BBits[73] fun gate_179 =>
    lexLessStep gate_179[0] gate_179[1] ABits[72] BBits[72] fun gate_180 =>
    lexLessStep gate_180[0] gate_180[1] ABits[71] BBits[71] fun gate_181 =>
    lexLessStep gate_181[0] gate_181[1] ABits[70] BBits[70] fun gate_182 =>
    lexLessStep gate_182[0] gate_182[1] ABits[69] BBits[69] fun gate_183 =>
    lexLessStep gate_183[0] gate_183[1] ABits[68] BBits[68] fun gate_184 =>
    lexLessStep gate_184[0] gate_184[1] ABits[67] BBits[67] fun gate_185 =>
    lexLessStep gate_185[0] gate_185[1] ABits[66] BBits[66] fun gate_186 =>
    lexLessStep gate_186[0] gate_186[1] ABits[65] BBits[65] fun gate_187 =>
    lexLessStep gate_187[0] gate_187[1] ABits[64] BBits[64] fun gate_188 =>
    lexLessStep gate_188[0] gate_188[1] ABits[63] BBits[63] fun gate_189 =>
    lexLessStep gate_189[0] gate_189[1] ABits[62] BBits[62] fun gate_190 =>
    lexLessStep gate_190[0] gate_190[1] ABits[61] BBits[61] fun gate_191 =>
    lexLessStep gate_191[0] gate_191[1] ABits[60] BBits[60] fun gate_192 =>
    lexLessStep gate_192[0] gate_192[1] ABits[59] BBits[59] fun gate_193 =>
    lexLessStep gate_193[0] gate_193[1] ABits[58] BBits[58] fun gate_194 =>
    lexLessStep gate_194[0] gate_194[1] ABits[57] BBits[57] fun gate_195 =>
    lexLessStep gate_195[0] gate_195[1] ABits[56] BBits[56] fun gate_196 =>
    lexLessStep gate_196[0] gate_196[1] ABits[55] BBits[55] fun gate_197 =>
    lexLessStep gate_197[0] gate_197[1] ABits[54] BBits[54] fun gate_198 =>
    lexLessStep gate_198[0] gate_198[1] ABits[53] BBits[53] fun gate_199 =>
    lexLessStep gate_199[0] gate_199[1] ABits[52] BBits[52] fun gate_200 =>
    lexLessStep gate_200[0] gate_200[1] ABits[51] BBits[51] fun gate_201 =>
    lexLessStep gate_201[0] gate_201[1] ABits[50] BBits[50] fun gate_202 =>
    lexLessStep gate_202[0] gate_202[1] ABits[49] BBits[49] fun gate_203 =>
    lexLessStep gate_203[0] gate_203[1] ABits[48] BBits[48] fun gate_204 =>
    lexLessStep gate_204[0] gate_204[1] ABits[47] BBits[47] fun gate_205 =>
    lexLessStep gate_205[0] gate_205[1] ABits[46] BBits[46] fun gate_206 =>
    lexLessStep gate_206[0] gate_206[1] ABits[45] BBits[45] fun gate_207 =>
    lexLessStep gate_207[0] gate_207[1] ABits[44] BBits[44] fun gate_208 =>
    lexLessStep gate_208[0] gate_208[1] ABits[43] BBits[43] fun gate_209 =>
    lexLessStep gate_209[0] gate_209[1] ABits[42] BBits[42] fun gate_210 =>
    lexLessStep gate_210[0] gate_210[1] ABits[41] BBits[41] fun gate_211 =>
    lexLessStep gate_211[0] gate_211[1] ABits[40] BBits[40] fun gate_212 =>
    lexLessStep gate_212[0] gate_212[1] ABits[39] BBits[39] fun gate_213 =>
    lexLessStep gate_213[0] gate_213[1] ABits[38] BBits[38] fun gate_214 =>
    lexLessStep gate_214[0] gate_214[1] ABits[37] BBits[37] fun gate_215 =>
    lexLessStep gate_215[0] gate_215[1] ABits[36] BBits[36] fun gate_216 =>
    lexLessStep gate_216[0] gate_216[1] ABits[35] BBits[35] fun gate_217 =>
    lexLessStep gate_217[0] gate_217[1] ABits[34] BBits[34] fun gate_218 =>
    lexLessStep gate_218[0] gate_218[1] ABits[33] BBits[33] fun gate_219 =>
    lexLessStep gate_219[0] gate_219[1] ABits[32] BBits[32] fun gate_220 =>
    lexLessStep gate_220[0] gate_220[1] ABits[31] BBits[31] fun gate_221 =>
    lexLessStep gate_221[0] gate_221[1] ABits[30] BBits[30] fun gate_222 =>
    lexLessStep gate_222[0] gate_222[1] ABits[29] BBits[29] fun gate_223 =>
    lexLessStep gate_223[0] gate_223[1] ABits[28] BBits[28] fun gate_224 =>
    lexLessStep gate_224[0] gate_224[1] ABits[27] BBits[27] fun gate_225 =>
    lexLessStep gate_225[0] gate_225[1] ABits[26] BBits[26] fun gate_226 =>
    lexLessStep gate_226[0] gate_226[1] ABits[25] BBits[25] fun gate_227 =>
    lexLessStep gate_227[0] gate_227[1] ABits[24] BBits[24] fun gate_228 =>
    lexLessStep gate_228[0] gate_228[1] ABits[23] BBits[23] fun gate_229 =>
    lexLessStep gate_229[0] gate_229[1] ABits[22] BBits[22] fun gate_230 =>
    lexLessStep gate_230[0] gate_230[1] ABits[21] BBits[21] fun gate_231 =>
    lexLessStep gate_231[0] gate_231[1] ABits[20] BBits[20] fun gate_232 =>
    lexLessStep gate_232[0] gate_232[1] ABits[19] BBits[19] fun gate_233 =>
    lexLessStep gate_233[0] gate_233[1] ABits[18] BBits[18] fun gate_234 =>
    lexLessStep gate_234[0] gate_234[1] ABits[17] BBits[17] fun gate_235 =>
    lexLessStep gate_235[0] gate_235[1] ABits[16] BBits[16] fun gate_236 =>
    lexLessStep gate_236[0] gate_236[1] ABits[15] BBits[15] fun gate_237 =>
    lexLessStep gate_237[0] gate_237[1] ABits[14] BBits[14] fun gate_238 =>
    lexLessStep gate_238[0] gate_238[1] ABits[13] BBits[13] fun gate_239 =>
    lexLessStep gate_239[0] gate_239[1] ABits[12] BBits[12] fun gate_240 =>
    lexLessStep gate_240[0] gate_240[1] ABits[11] BBits[11] fun gate_241 =>
    lexLessStep gate_241[0] gate_241[1] ABits[10] BBits[10] fun gate_242 =>
    lexLessStep gate_242[0] gate_242[1] ABits[9] BBits[9] fun gate_243 =>
    lexLessStep gate_243[0] gate_243[1] ABits[8] BBits[8] fun gate_244 =>
    lexLessStep gate_244[0] gate_244[1] ABits[7] BBits[7] fun gate_245 =>
    lexLessStep gate_245[0] gate_245[1] ABits[6] BBits[6] fun gate_246 =>
    lexLessStep gate_246[0] gate_246[1] ABits[5] BBits[5] fun gate_247 =>
    lexLessStep gate_247[0] gate_247[1] ABits[4] BBits[4] fun gate_248 =>
    lexLessStep gate_248[0] gate_248[1] ABits[3] BBits[3] fun gate_249 =>
    lexLessStep gate_249[0] gate_249[1] ABits[2] BBits[2] fun gate_250 =>
    lexLessStep gate_250[0] gate_250[1] ABits[1] BBits[1] fun gate_251 =>
    lexLessStep gate_251[0] gate_251[1] ABits[0] BBits[0] fun gate_252 =>
    k gate_252[1]

def circuit (NoteAssetID: F) (IsRegulated: F) (LeafValue: F) (NextValue: F): Prop :=
    Gates.is_bool IsRegulated ∧
    ∃gate_1, Gates.to_binary LeafValue 253 gate_1 ∧
    ∃gate_2, Gates.to_binary NoteAssetID 253 gate_2 ∧
    ∃gate_3, Gates.to_binary NextValue 253 gate_3 ∧
    ∃gate_4, gate_4 = Gates.sub NoteAssetID LeafValue ∧
    ∃gate_5, Gates.is_zero gate_4 gate_5 ∧
    lexLess253Gadget_253_253 gate_1 gate_2 fun gate_6 =>
    lexLess253Gadget_253_253 gate_2 gate_3 fun gate_7 =>
    ∃gate_8, gate_8 = Gates.mul gate_6 gate_7 ∧
    ∃gate_9, Gates.select IsRegulated gate_5 gate_8 gate_9 ∧
    Gates.eq gate_9 (1:F) ∧
    True

end Shieldd.GnarkFormal.Extracted.ImtGap
