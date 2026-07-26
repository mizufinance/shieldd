import ShielddGnarkFormal.DtkBridge.CoreCircuit
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

namespace Shieldd.GnarkFormal.DtkBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

def dtkSeg0 (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F)
    (k : List.Vector F 253 → Prop) : Prop :=
    ∃gate_0, gate_0 = Extracted.DecafDtk.Gates.mul AkX AkX ∧
    ∃gate_1, gate_1 = Extracted.DecafDtk.Gates.mul AkY AkY ∧
    ∃gate_2, gate_2 = Extracted.DecafDtk.Gates.sub gate_1 gate_0 ∧
    ∃gate_3, gate_3 = Extracted.DecafDtk.Gates.mul (3021:F) gate_0 ∧
    ∃gate_4, gate_4 = Extracted.DecafDtk.Gates.mul gate_3 gate_1 ∧
    ∃gate_5, gate_5 = Extracted.DecafDtk.Gates.add (1:F) gate_4 ∧
    Extracted.DecafDtk.Gates.eq gate_2 gate_5 ∧
    ∃gate_d0, gate_d0 = Extracted.DecafDtk.Gates.mul DivGenX DivGenX ∧
    ∃gate_d1, gate_d1 = Extracted.DecafDtk.Gates.mul DivGenY DivGenY ∧
    ∃gate_d2, gate_d2 = Extracted.DecafDtk.Gates.sub gate_d1 gate_d0 ∧
    ∃gate_d3, gate_d3 = Extracted.DecafDtk.Gates.mul (3021:F) gate_d0 ∧
    ∃gate_d4, gate_d4 = Extracted.DecafDtk.Gates.mul gate_d3 gate_d1 ∧
    ∃gate_d5, gate_d5 = Extracted.DecafDtk.Gates.add (1:F) gate_d4 ∧
    Extracted.DecafDtk.Gates.eq gate_d2 gate_d5 ∧
    ∃gate_e0, gate_e0 = Extracted.DecafDtk.Gates.mul AkX AkX ∧
    ∃gate_e1, gate_e1 = Extracted.DecafDtk.Gates.mul AkY AkY ∧
    ∃gate_e2, gate_e2 = Extracted.DecafDtk.Gates.sub gate_e1 gate_e0 ∧
    ∃gate_e3, gate_e3 = Extracted.DecafDtk.Gates.mul (3021:F) gate_e0 ∧
    ∃gate_e4, gate_e4 = Extracted.DecafDtk.Gates.mul gate_e3 gate_e1 ∧
    ∃gate_e5, gate_e5 = Extracted.DecafDtk.Gates.add (1:F) gate_e4 ∧
    Extracted.DecafDtk.Gates.eq gate_e2 gate_e5 ∧
    ∃gate_7, gate_7 = Extracted.DecafDtk.Gates.mul AkX AkY ∧
    ∃gate_8, gate_8 = Extracted.DecafDtk.Gates.add AkX gate_7 ∧
    ∃gate_9, gate_9 = Extracted.DecafDtk.Gates.sub AkX gate_7 ∧
    ∃gate_10, gate_10 = Extracted.DecafDtk.Gates.mul gate_8 gate_9 ∧
    ∃gate_11, gate_11 = Extracted.DecafDtk.Gates.mul gate_10 8444461749428370424248824938781546531375899335154063827935233455917409236019 ∧
    ∃gate_12, gate_12 = Extracted.DecafDtk.Gates.mul gate_11 gate_e0 ∧
    Extracted.DecafDtk.Gates.is_bool WasSquare ∧
    ∃gate_14, Extracted.DecafDtk.Gates.is_zero gate_12 gate_14 ∧
    ∃gate_15, Extracted.DecafDtk.Gates.select gate_14 (1:F) gate_12 gate_15 ∧
    ∃gate_16, Extracted.DecafDtk.Gates.inv gate_15 gate_16 ∧
    ∃gate_17, gate_17 = Extracted.DecafDtk.Gates.mul SqrtRatio SqrtRatio ∧
    ∃gate_18, gate_18 = Extracted.DecafDtk.Gates.mul WasSquare gate_14 ∧
    Extracted.DecafDtk.Gates.eq gate_18 (0:F) ∧
    ∃gate_20, gate_20 = Extracted.DecafDtk.Gates.sub (1:F) WasSquare ∧
    ∃gate_21, gate_21 = Extracted.DecafDtk.Gates.sub (1:F) gate_14 ∧
    ∃gate_22, Extracted.DecafDtk.Gates.and gate_20 gate_14 gate_22 ∧
    ∃gate_23, Extracted.DecafDtk.Gates.and gate_20 gate_21 gate_23 ∧
    ∃gate_24, gate_24 = Extracted.DecafDtk.Gates.sub gate_17 gate_16 ∧
    ∃gate_25, gate_25 = Extracted.DecafDtk.Gates.mul WasSquare gate_24 ∧
    Extracted.DecafDtk.Gates.eq gate_25 (0:F) ∧
    ∃gate_27, gate_27 = Extracted.DecafDtk.Gates.mul gate_22 gate_17 ∧
    Extracted.DecafDtk.Gates.eq gate_27 (0:F) ∧
    ∃gate_29, gate_29 = Extracted.DecafDtk.Gates.mul 2841681278031794617739547238867782961338435681360110683443920362658525667816 gate_16 ∧
    ∃gate_30, gate_30 = Extracted.DecafDtk.Gates.sub gate_17 gate_29 ∧
    ∃gate_31, gate_31 = Extracted.DecafDtk.Gates.mul gate_23 gate_30 ∧
    Extracted.DecafDtk.Gates.eq gate_31 (0:F) ∧
    ∃gate_33, gate_33 = Extracted.DecafDtk.Gates.add WasSquare gate_22 ∧
    ∃gate_34, gate_34 = Extracted.DecafDtk.Gates.add gate_33 gate_23 ∧
    Extracted.DecafDtk.Gates.eq gate_34 (1:F) ∧
    ∃gate_36, gate_36 = Extracted.DecafDtk.Gates.mul SqrtRatio gate_10 ∧
    Extracted.DecafDtk.canonicalFqBitsGadget gate_36 fun gate_37 =>
    ∃gate_38, gate_38 = Extracted.DecafDtk.Gates.sub (1:F) gate_37[0] ∧
    ∃gate_39, gate_39 = Extracted.DecafDtk.Gates.neg gate_36 ∧
    ∃gate_40, Extracted.DecafDtk.Gates.select gate_38 gate_36 gate_39 gate_40 ∧
    ∃gate_41, gate_41 = Extracted.DecafDtk.Gates.sub gate_40 gate_7 ∧
    ∃gate_42, gate_42 = Extracted.DecafDtk.Gates.mul 8444461749428370424248824938781546531375899335154063827935233455917409236019 SqrtRatio ∧
    ∃gate_43, gate_43 = Extracted.DecafDtk.Gates.mul gate_42 gate_41 ∧
    ∃gate_44, gate_44 = Extracted.DecafDtk.Gates.mul gate_43 AkX ∧
    Extracted.DecafDtk.canonicalFqBitsGadget gate_44 fun gate_45 =>
    ∃gate_46, gate_46 = Extracted.DecafDtk.Gates.sub (1:F) gate_45[0] ∧
    ∃gate_47, gate_47 = Extracted.DecafDtk.Gates.neg gate_44 ∧
    ∃gate_48, Extracted.DecafDtk.Gates.select gate_46 gate_44 gate_47 gate_48 ∧
    Extracted.DecafDtk.poseidonPerm2 (9361307723838134966014044876631201920149619:F) Nk gate_48 fun gate_49 =>
    ∃gate_50, gate_50 = Extracted.DecafDtk.Gates.mul (2111115437357092606062206234695386632838870926408408195193685246394721360383:F) IvkQuotient ∧
    ∃gate_51, gate_51 = Extracted.DecafDtk.Gates.add gate_50 IvkReduced ∧
    Extracted.DecafDtk.Gates.eq gate_49 gate_51 ∧
    ∃gate_53, gate_53 = Extracted.DecafDtk.Gates.sub IvkQuotient (1:F) ∧
    ∃gate_54, gate_54 = Extracted.DecafDtk.Gates.mul IvkQuotient gate_53 ∧
    ∃gate_55, gate_55 = Extracted.DecafDtk.Gates.sub IvkQuotient (2:F) ∧
    ∃gate_56, gate_56 = Extracted.DecafDtk.Gates.mul gate_54 gate_55 ∧
    ∃gate_57, gate_57 = Extracted.DecafDtk.Gates.sub IvkQuotient (3:F) ∧
    ∃gate_58, gate_58 = Extracted.DecafDtk.Gates.mul gate_56 gate_57 ∧
    ∃gate_59, gate_59 = Extracted.DecafDtk.Gates.sub IvkQuotient (4:F) ∧
    ∃gate_60, gate_60 = Extracted.DecafDtk.Gates.mul gate_58 gate_59 ∧
    Extracted.DecafDtk.Gates.eq gate_60 (0:F) ∧
    ∃gate_62, Extracted.DecafDtk.Gates.to_binary IvkReduced 253 gate_62 ∧
    k gate_62

def dtkSeg1 (bits : List.Vector F 253) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepZero (1:F) bits[252] fun gate_63 =>
    Extracted.DecafDtk.ltConstStepZero gate_63 bits[251] fun gate_64 =>
    Extracted.DecafDtk.ltConstStepOne gate_64 (0:F) bits[250] fun gate_65 =>
    Extracted.DecafDtk.ltConstStepZero gate_65[0] bits[249] fun gate_66 =>
    Extracted.DecafDtk.ltConstStepZero gate_66 bits[248] fun gate_67 =>
    Extracted.DecafDtk.ltConstStepOne gate_67 gate_65[1] bits[247] fun gate_68 =>
    Extracted.DecafDtk.ltConstStepZero gate_68[0] bits[246] fun gate_69 =>
    Extracted.DecafDtk.ltConstStepOne gate_69 gate_68[1] bits[245] fun gate_70 =>
    Extracted.DecafDtk.ltConstStepZero gate_70[0] bits[244] fun gate_71 =>
    Extracted.DecafDtk.ltConstStepOne gate_71 gate_70[1] bits[243] fun gate_72 =>
    Extracted.DecafDtk.ltConstStepZero gate_72[0] bits[242] fun gate_73 =>
    Extracted.DecafDtk.ltConstStepOne gate_73 gate_72[1] bits[241] fun gate_74 =>
    Extracted.DecafDtk.ltConstStepZero gate_74[0] bits[240] fun gate_75 =>
    Extracted.DecafDtk.ltConstStepOne gate_75 gate_74[1] bits[239] fun gate_76 =>
    Extracted.DecafDtk.ltConstStepOne gate_76[0] gate_76[1] bits[238] fun gate_77 =>
    Extracted.DecafDtk.ltConstStepZero gate_77[0] bits[237] fun gate_78 =>
    Extracted.DecafDtk.ltConstStepOne gate_78 gate_77[1] bits[236] fun gate_79 =>
    Extracted.DecafDtk.ltConstStepOne gate_79[0] gate_79[1] bits[235] fun gate_80 =>
    Extracted.DecafDtk.ltConstStepZero gate_80[0] bits[234] fun gate_81 =>
    Extracted.DecafDtk.ltConstStepZero gate_81 bits[233] fun gate_82 =>
    Extracted.DecafDtk.ltConstStepOne gate_82 gate_80[1] bits[232] fun gate_83 =>
    Extracted.DecafDtk.ltConstStepZero gate_83[0] bits[231] fun gate_84 =>
    Extracted.DecafDtk.ltConstStepOne gate_84 gate_83[1] bits[230] fun gate_85 =>
    Extracted.DecafDtk.ltConstStepZero gate_85[0] bits[229] fun gate_86 =>
    Extracted.DecafDtk.ltConstStepOne gate_86 gate_85[1] bits[228] fun gate_87 =>
    Extracted.DecafDtk.ltConstStepZero gate_87[0] bits[227] fun gate_88 =>
    Extracted.DecafDtk.ltConstStepOne gate_88 gate_87[1] bits[226] fun gate_89 =>
    Extracted.DecafDtk.ltConstStepOne gate_89[0] gate_89[1] bits[225] fun gate_90 =>
    Extracted.DecafDtk.ltConstStepOne gate_90[0] gate_90[1] bits[224] fun gate_91 =>
    Extracted.DecafDtk.ltConstStepOne gate_91[0] gate_91[1] bits[223] fun gate_92 =>
    Extracted.DecafDtk.ltConstStepZero gate_92[0] bits[222] fun gate_93 =>
    Extracted.DecafDtk.ltConstStepOne gate_93 gate_92[1] bits[221] fun gate_94 =>
    Extracted.DecafDtk.ltConstStepZero gate_94[0] bits[220] fun gate_95 =>
    Extracted.DecafDtk.ltConstStepZero gate_95 bits[219] fun gate_96 =>
    Extracted.DecafDtk.ltConstStepOne gate_96 gate_94[1] bits[218] fun gate_97 =>
    Extracted.DecafDtk.ltConstStepOne gate_97[0] gate_97[1] bits[217] fun gate_98 =>
    Extracted.DecafDtk.ltConstStepZero gate_98[0] bits[216] fun gate_99 =>
    Extracted.DecafDtk.ltConstStepOne gate_99 gate_98[1] bits[215] fun gate_100 =>
    k gate_100

def dtkSeg2 (bits : List.Vector F 253) (gate_100 : List.Vector F 2) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepZero gate_100[0] bits[214] fun gate_101 =>
    Extracted.DecafDtk.ltConstStepZero gate_101 bits[213] fun gate_102 =>
    Extracted.DecafDtk.ltConstStepZero gate_102 bits[212] fun gate_103 =>
    Extracted.DecafDtk.ltConstStepOne gate_103 gate_100[1] bits[211] fun gate_104 =>
    Extracted.DecafDtk.ltConstStepZero gate_104[0] bits[210] fun gate_105 =>
    Extracted.DecafDtk.ltConstStepOne gate_105 gate_104[1] bits[209] fun gate_106 =>
    Extracted.DecafDtk.ltConstStepOne gate_106[0] gate_106[1] bits[208] fun gate_107 =>
    Extracted.DecafDtk.ltConstStepZero gate_107[0] bits[207] fun gate_108 =>
    Extracted.DecafDtk.ltConstStepZero gate_108 bits[206] fun gate_109 =>
    Extracted.DecafDtk.ltConstStepOne gate_109 gate_107[1] bits[205] fun gate_110 =>
    Extracted.DecafDtk.ltConstStepZero gate_110[0] bits[204] fun gate_111 =>
    Extracted.DecafDtk.ltConstStepOne gate_111 gate_110[1] bits[203] fun gate_112 =>
    Extracted.DecafDtk.ltConstStepZero gate_112[0] bits[202] fun gate_113 =>
    Extracted.DecafDtk.ltConstStepZero gate_113 bits[201] fun gate_114 =>
    Extracted.DecafDtk.ltConstStepOne gate_114 gate_112[1] bits[200] fun gate_115 =>
    Extracted.DecafDtk.ltConstStepZero gate_115[0] bits[199] fun gate_116 =>
    Extracted.DecafDtk.ltConstStepOne gate_116 gate_115[1] bits[198] fun gate_117 =>
    Extracted.DecafDtk.ltConstStepZero gate_117[0] bits[197] fun gate_118 =>
    Extracted.DecafDtk.ltConstStepOne gate_118 gate_117[1] bits[196] fun gate_119 =>
    Extracted.DecafDtk.ltConstStepZero gate_119[0] bits[195] fun gate_120 =>
    Extracted.DecafDtk.ltConstStepOne gate_120 gate_119[1] bits[194] fun gate_121 =>
    Extracted.DecafDtk.ltConstStepZero gate_121[0] bits[193] fun gate_122 =>
    Extracted.DecafDtk.ltConstStepOne gate_122 gate_121[1] bits[192] fun gate_123 =>
    Extracted.DecafDtk.ltConstStepOne gate_123[0] gate_123[1] bits[191] fun gate_124 =>
    Extracted.DecafDtk.ltConstStepZero gate_124[0] bits[190] fun gate_125 =>
    Extracted.DecafDtk.ltConstStepZero gate_125 bits[189] fun gate_126 =>
    Extracted.DecafDtk.ltConstStepOne gate_126 gate_124[1] bits[188] fun gate_127 =>
    Extracted.DecafDtk.ltConstStepOne gate_127[0] gate_127[1] bits[187] fun gate_128 =>
    Extracted.DecafDtk.ltConstStepZero gate_128[0] bits[186] fun gate_129 =>
    Extracted.DecafDtk.ltConstStepZero gate_129 bits[185] fun gate_130 =>
    Extracted.DecafDtk.ltConstStepZero gate_130 bits[184] fun gate_131 =>
    Extracted.DecafDtk.ltConstStepZero gate_131 bits[183] fun gate_132 =>
    Extracted.DecafDtk.ltConstStepZero gate_132 bits[182] fun gate_133 =>
    Extracted.DecafDtk.ltConstStepOne gate_133 gate_128[1] bits[181] fun gate_134 =>
    Extracted.DecafDtk.ltConstStepZero gate_134[0] bits[180] fun gate_135 =>
    Extracted.DecafDtk.ltConstStepOne gate_135 gate_134[1] bits[179] fun gate_136 =>
    Extracted.DecafDtk.ltConstStepOne gate_136[0] gate_136[1] bits[178] fun gate_137 =>
    Extracted.DecafDtk.ltConstStepZero gate_137[0] bits[177] fun gate_138 =>
    Extracted.DecafDtk.ltConstStepOne gate_138 gate_137[1] bits[176] fun gate_139 =>
    k gate_139

def dtkSeg3 (bits : List.Vector F 253) (gate_139 : List.Vector F 2) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepZero gate_139[0] bits[175] fun gate_140 =>
    Extracted.DecafDtk.ltConstStepZero gate_140 bits[174] fun gate_141 =>
    Extracted.DecafDtk.ltConstStepZero gate_141 bits[173] fun gate_142 =>
    Extracted.DecafDtk.ltConstStepOne gate_142 gate_139[1] bits[172] fun gate_143 =>
    Extracted.DecafDtk.ltConstStepZero gate_143[0] bits[171] fun gate_144 =>
    Extracted.DecafDtk.ltConstStepZero gate_144 bits[170] fun gate_145 =>
    Extracted.DecafDtk.ltConstStepOne gate_145 gate_143[1] bits[169] fun gate_146 =>
    Extracted.DecafDtk.ltConstStepOne gate_146[0] gate_146[1] bits[168] fun gate_147 =>
    Extracted.DecafDtk.ltConstStepZero gate_147[0] bits[167] fun gate_148 =>
    Extracted.DecafDtk.ltConstStepOne gate_148 gate_147[1] bits[166] fun gate_149 =>
    Extracted.DecafDtk.ltConstStepZero gate_149[0] bits[165] fun gate_150 =>
    Extracted.DecafDtk.ltConstStepZero gate_150 bits[164] fun gate_151 =>
    Extracted.DecafDtk.ltConstStepZero gate_151 bits[163] fun gate_152 =>
    Extracted.DecafDtk.ltConstStepOne gate_152 gate_149[1] bits[162] fun gate_153 =>
    Extracted.DecafDtk.ltConstStepOne gate_153[0] gate_153[1] bits[161] fun gate_154 =>
    Extracted.DecafDtk.ltConstStepOne gate_154[0] gate_154[1] bits[160] fun gate_155 =>
    Extracted.DecafDtk.ltConstStepOne gate_155[0] gate_155[1] bits[159] fun gate_156 =>
    Extracted.DecafDtk.ltConstStepZero gate_156[0] bits[158] fun gate_157 =>
    Extracted.DecafDtk.ltConstStepZero gate_157 bits[157] fun gate_158 =>
    Extracted.DecafDtk.ltConstStepOne gate_158 gate_156[1] bits[156] fun gate_159 =>
    Extracted.DecafDtk.ltConstStepZero gate_159[0] bits[155] fun gate_160 =>
    Extracted.DecafDtk.ltConstStepOne gate_160 gate_159[1] bits[154] fun gate_161 =>
    Extracted.DecafDtk.ltConstStepOne gate_161[0] gate_161[1] bits[153] fun gate_162 =>
    Extracted.DecafDtk.ltConstStepOne gate_162[0] gate_162[1] bits[152] fun gate_163 =>
    Extracted.DecafDtk.ltConstStepZero gate_163[0] bits[151] fun gate_164 =>
    Extracted.DecafDtk.ltConstStepZero gate_164 bits[150] fun gate_165 =>
    Extracted.DecafDtk.ltConstStepZero gate_165 bits[149] fun gate_166 =>
    Extracted.DecafDtk.ltConstStepZero gate_166 bits[148] fun gate_167 =>
    Extracted.DecafDtk.ltConstStepOne gate_167 gate_163[1] bits[147] fun gate_168 =>
    Extracted.DecafDtk.ltConstStepOne gate_168[0] gate_168[1] bits[146] fun gate_169 =>
    Extracted.DecafDtk.ltConstStepZero gate_169[0] bits[145] fun gate_170 =>
    Extracted.DecafDtk.ltConstStepOne gate_170 gate_169[1] bits[144] fun gate_171 =>
    Extracted.DecafDtk.ltConstStepOne gate_171[0] gate_171[1] bits[143] fun gate_172 =>
    Extracted.DecafDtk.ltConstStepOne gate_172[0] gate_172[1] bits[142] fun gate_173 =>
    Extracted.DecafDtk.ltConstStepOne gate_173[0] gate_173[1] bits[141] fun gate_174 =>
    Extracted.DecafDtk.ltConstStepZero gate_174[0] bits[140] fun gate_175 =>
    Extracted.DecafDtk.ltConstStepOne gate_175 gate_174[1] bits[139] fun gate_176 =>
    Extracted.DecafDtk.ltConstStepOne gate_176[0] gate_176[1] bits[138] fun gate_177 =>
    k gate_177

def dtkSeg4 (bits : List.Vector F 253) (gate_177 : List.Vector F 2) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepZero gate_177[0] bits[137] fun gate_178 =>
    Extracted.DecafDtk.ltConstStepZero gate_178 bits[136] fun gate_179 =>
    Extracted.DecafDtk.ltConstStepZero gate_179 bits[135] fun gate_180 =>
    Extracted.DecafDtk.ltConstStepZero gate_180 bits[134] fun gate_181 =>
    Extracted.DecafDtk.ltConstStepZero gate_181 bits[133] fun gate_182 =>
    Extracted.DecafDtk.ltConstStepZero gate_182 bits[132] fun gate_183 =>
    Extracted.DecafDtk.ltConstStepZero gate_183 bits[131] fun gate_184 =>
    Extracted.DecafDtk.ltConstStepZero gate_184 bits[130] fun gate_185 =>
    Extracted.DecafDtk.ltConstStepZero gate_185 bits[129] fun gate_186 =>
    Extracted.DecafDtk.ltConstStepZero gate_186 bits[128] fun gate_187 =>
    Extracted.DecafDtk.ltConstStepZero gate_187 bits[127] fun gate_188 =>
    Extracted.DecafDtk.ltConstStepOne gate_188 gate_177[1] bits[126] fun gate_189 =>
    Extracted.DecafDtk.ltConstStepZero gate_189[0] bits[125] fun gate_190 =>
    Extracted.DecafDtk.ltConstStepOne gate_190 gate_189[1] bits[124] fun gate_191 =>
    Extracted.DecafDtk.ltConstStepZero gate_191[0] bits[123] fun gate_192 =>
    Extracted.DecafDtk.ltConstStepZero gate_192 bits[122] fun gate_193 =>
    Extracted.DecafDtk.ltConstStepOne gate_193 gate_191[1] bits[121] fun gate_194 =>
    Extracted.DecafDtk.ltConstStepZero gate_194[0] bits[120] fun gate_195 =>
    Extracted.DecafDtk.ltConstStepOne gate_195 gate_194[1] bits[119] fun gate_196 =>
    Extracted.DecafDtk.ltConstStepZero gate_196[0] bits[118] fun gate_197 =>
    Extracted.DecafDtk.ltConstStepZero gate_197 bits[117] fun gate_198 =>
    Extracted.DecafDtk.ltConstStepOne gate_198 gate_196[1] bits[116] fun gate_199 =>
    Extracted.DecafDtk.ltConstStepZero gate_199[0] bits[115] fun gate_200 =>
    Extracted.DecafDtk.ltConstStepZero gate_200 bits[114] fun gate_201 =>
    Extracted.DecafDtk.ltConstStepOne gate_201 gate_199[1] bits[113] fun gate_202 =>
    Extracted.DecafDtk.ltConstStepOne gate_202[0] gate_202[1] bits[112] fun gate_203 =>
    Extracted.DecafDtk.ltConstStepOne gate_203[0] gate_203[1] bits[111] fun gate_204 =>
    Extracted.DecafDtk.ltConstStepZero gate_204[0] bits[110] fun gate_205 =>
    Extracted.DecafDtk.ltConstStepOne gate_205 gate_204[1] bits[109] fun gate_206 =>
    Extracted.DecafDtk.ltConstStepZero gate_206[0] bits[108] fun gate_207 =>
    Extracted.DecafDtk.ltConstStepZero gate_207 bits[107] fun gate_208 =>
    Extracted.DecafDtk.ltConstStepZero gate_208 bits[106] fun gate_209 =>
    Extracted.DecafDtk.ltConstStepOne gate_209 gate_206[1] bits[105] fun gate_210 =>
    Extracted.DecafDtk.ltConstStepOne gate_210[0] gate_210[1] bits[104] fun gate_211 =>
    Extracted.DecafDtk.ltConstStepOne gate_211[0] gate_211[1] bits[103] fun gate_212 =>
    Extracted.DecafDtk.ltConstStepZero gate_212[0] bits[102] fun gate_213 =>
    Extracted.DecafDtk.ltConstStepOne gate_213 gate_212[1] bits[101] fun gate_214 =>
    Extracted.DecafDtk.ltConstStepZero gate_214[0] bits[100] fun gate_215 =>
    Extracted.DecafDtk.ltConstStepOne gate_215 gate_214[1] bits[99] fun gate_216 =>
    k gate_216

def dtkSeg5 (bits : List.Vector F 253) (gate_216 : List.Vector F 2) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepOne gate_216[0] gate_216[1] bits[98] fun gate_217 =>
    Extracted.DecafDtk.ltConstStepOne gate_217[0] gate_217[1] bits[97] fun gate_218 =>
    Extracted.DecafDtk.ltConstStepOne gate_218[0] gate_218[1] bits[96] fun gate_219 =>
    Extracted.DecafDtk.ltConstStepOne gate_219[0] gate_219[1] bits[95] fun gate_220 =>
    Extracted.DecafDtk.ltConstStepOne gate_220[0] gate_220[1] bits[94] fun gate_221 =>
    Extracted.DecafDtk.ltConstStepZero gate_221[0] bits[93] fun gate_222 =>
    Extracted.DecafDtk.ltConstStepZero gate_222 bits[92] fun gate_223 =>
    Extracted.DecafDtk.ltConstStepZero gate_223 bits[91] fun gate_224 =>
    Extracted.DecafDtk.ltConstStepOne gate_224 gate_221[1] bits[90] fun gate_225 =>
    Extracted.DecafDtk.ltConstStepZero gate_225[0] bits[89] fun gate_226 =>
    Extracted.DecafDtk.ltConstStepZero gate_226 bits[88] fun gate_227 =>
    Extracted.DecafDtk.ltConstStepZero gate_227 bits[87] fun gate_228 =>
    Extracted.DecafDtk.ltConstStepZero gate_228 bits[86] fun gate_229 =>
    Extracted.DecafDtk.ltConstStepOne gate_229 gate_225[1] bits[85] fun gate_230 =>
    Extracted.DecafDtk.ltConstStepOne gate_230[0] gate_230[1] bits[84] fun gate_231 =>
    Extracted.DecafDtk.ltConstStepOne gate_231[0] gate_231[1] bits[83] fun gate_232 =>
    Extracted.DecafDtk.ltConstStepOne gate_232[0] gate_232[1] bits[82] fun gate_233 =>
    Extracted.DecafDtk.ltConstStepZero gate_233[0] bits[81] fun gate_234 =>
    Extracted.DecafDtk.ltConstStepZero gate_234 bits[80] fun gate_235 =>
    Extracted.DecafDtk.ltConstStepOne gate_235 gate_233[1] bits[79] fun gate_236 =>
    Extracted.DecafDtk.ltConstStepZero gate_236[0] bits[78] fun gate_237 =>
    Extracted.DecafDtk.ltConstStepZero gate_237 bits[77] fun gate_238 =>
    Extracted.DecafDtk.ltConstStepZero gate_238 bits[76] fun gate_239 =>
    Extracted.DecafDtk.ltConstStepOne gate_239 gate_236[1] bits[75] fun gate_240 =>
    Extracted.DecafDtk.ltConstStepZero gate_240[0] bits[74] fun gate_241 =>
    Extracted.DecafDtk.ltConstStepOne gate_241 gate_240[1] bits[73] fun gate_242 =>
    Extracted.DecafDtk.ltConstStepZero gate_242[0] bits[72] fun gate_243 =>
    Extracted.DecafDtk.ltConstStepOne gate_243 gate_242[1] bits[71] fun gate_244 =>
    Extracted.DecafDtk.ltConstStepOne gate_244[0] gate_244[1] bits[70] fun gate_245 =>
    Extracted.DecafDtk.ltConstStepOne gate_245[0] gate_245[1] bits[69] fun gate_246 =>
    Extracted.DecafDtk.ltConstStepOne gate_246[0] gate_246[1] bits[68] fun gate_247 =>
    Extracted.DecafDtk.ltConstStepOne gate_247[0] gate_247[1] bits[67] fun gate_248 =>
    Extracted.DecafDtk.ltConstStepOne gate_248[0] gate_248[1] bits[66] fun gate_249 =>
    Extracted.DecafDtk.ltConstStepOne gate_249[0] gate_249[1] bits[65] fun gate_250 =>
    Extracted.DecafDtk.ltConstStepZero gate_250[0] bits[64] fun gate_251 =>
    Extracted.DecafDtk.ltConstStepOne gate_251 gate_250[1] bits[63] fun gate_252 =>
    Extracted.DecafDtk.ltConstStepZero gate_252[0] bits[62] fun gate_253 =>
    Extracted.DecafDtk.ltConstStepOne gate_253 gate_252[1] bits[61] fun gate_254 =>
    k gate_254

def dtkSeg6 (bits : List.Vector F 253) (gate_254 : List.Vector F 2) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepOne gate_254[0] gate_254[1] bits[60] fun gate_255 =>
    Extracted.DecafDtk.ltConstStepOne gate_255[0] gate_255[1] bits[59] fun gate_256 =>
    Extracted.DecafDtk.ltConstStepZero gate_256[0] bits[58] fun gate_257 =>
    Extracted.DecafDtk.ltConstStepZero gate_257 bits[57] fun gate_258 =>
    Extracted.DecafDtk.ltConstStepOne gate_258 gate_256[1] bits[56] fun gate_259 =>
    Extracted.DecafDtk.ltConstStepZero gate_259[0] bits[55] fun gate_260 =>
    Extracted.DecafDtk.ltConstStepOne gate_260 gate_259[1] bits[54] fun gate_261 =>
    Extracted.DecafDtk.ltConstStepZero gate_261[0] bits[53] fun gate_262 =>
    Extracted.DecafDtk.ltConstStepOne gate_262 gate_261[1] bits[52] fun gate_263 =>
    Extracted.DecafDtk.ltConstStepOne gate_263[0] gate_263[1] bits[51] fun gate_264 =>
    Extracted.DecafDtk.ltConstStepZero gate_264[0] bits[50] fun gate_265 =>
    Extracted.DecafDtk.ltConstStepOne gate_265 gate_264[1] bits[49] fun gate_266 =>
    Extracted.DecafDtk.ltConstStepZero gate_266[0] bits[48] fun gate_267 =>
    Extracted.DecafDtk.ltConstStepOne gate_267 gate_266[1] bits[47] fun gate_268 =>
    Extracted.DecafDtk.ltConstStepOne gate_268[0] gate_268[1] bits[46] fun gate_269 =>
    Extracted.DecafDtk.ltConstStepOne gate_269[0] gate_269[1] bits[45] fun gate_270 =>
    Extracted.DecafDtk.ltConstStepZero gate_270[0] bits[44] fun gate_271 =>
    Extracted.DecafDtk.ltConstStepOne gate_271 gate_270[1] bits[43] fun gate_272 =>
    Extracted.DecafDtk.ltConstStepOne gate_272[0] gate_272[1] bits[42] fun gate_273 =>
    Extracted.DecafDtk.ltConstStepOne gate_273[0] gate_273[1] bits[41] fun gate_274 =>
    Extracted.DecafDtk.ltConstStepZero gate_274[0] bits[40] fun gate_275 =>
    Extracted.DecafDtk.ltConstStepOne gate_275 gate_274[1] bits[39] fun gate_276 =>
    Extracted.DecafDtk.ltConstStepZero gate_276[0] bits[38] fun gate_277 =>
    Extracted.DecafDtk.ltConstStepZero gate_277 bits[37] fun gate_278 =>
    Extracted.DecafDtk.ltConstStepOne gate_278 gate_276[1] bits[36] fun gate_279 =>
    Extracted.DecafDtk.ltConstStepOne gate_279[0] gate_279[1] bits[35] fun gate_280 =>
    Extracted.DecafDtk.ltConstStepZero gate_280[0] bits[34] fun gate_281 =>
    Extracted.DecafDtk.ltConstStepOne gate_281 gate_280[1] bits[33] fun gate_282 =>
    Extracted.DecafDtk.ltConstStepZero gate_282[0] bits[32] fun gate_283 =>
    Extracted.DecafDtk.ltConstStepOne gate_283 gate_282[1] bits[31] fun gate_284 =>
    Extracted.DecafDtk.ltConstStepOne gate_284[0] gate_284[1] bits[30] fun gate_285 =>
    Extracted.DecafDtk.ltConstStepZero gate_285[0] bits[29] fun gate_286 =>
    Extracted.DecafDtk.ltConstStepZero gate_286 bits[28] fun gate_287 =>
    Extracted.DecafDtk.ltConstStepZero gate_287 bits[27] fun gate_288 =>
    Extracted.DecafDtk.ltConstStepZero gate_288 bits[26] fun gate_289 =>
    Extracted.DecafDtk.ltConstStepOne gate_289 gate_285[1] bits[25] fun gate_290 =>
    Extracted.DecafDtk.ltConstStepOne gate_290[0] gate_290[1] bits[24] fun gate_291 =>
    Extracted.DecafDtk.ltConstStepZero gate_291[0] bits[23] fun gate_292 =>
    Extracted.DecafDtk.ltConstStepZero gate_292 bits[22] fun gate_293 =>
    Extracted.DecafDtk.ltConstStepOne gate_293 gate_291[1] bits[21] fun gate_294 =>
    k gate_294

def dtkSeg7 (bits : List.Vector F 253) (gate_294 : List.Vector F 2) (k : F → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepOne gate_294[0] gate_294[1] bits[20] fun gate_295 =>
    Extracted.DecafDtk.ltConstStepOne gate_295[0] gate_295[1] bits[19] fun gate_296 =>
    Extracted.DecafDtk.ltConstStepOne gate_296[0] gate_296[1] bits[18] fun gate_297 =>
    Extracted.DecafDtk.ltConstStepOne gate_297[0] gate_297[1] bits[17] fun gate_298 =>
    Extracted.DecafDtk.ltConstStepOne gate_298[0] gate_298[1] bits[16] fun gate_299 =>
    Extracted.DecafDtk.ltConstStepOne gate_299[0] gate_299[1] bits[15] fun gate_300 =>
    Extracted.DecafDtk.ltConstStepOne gate_300[0] gate_300[1] bits[14] fun gate_301 =>
    Extracted.DecafDtk.ltConstStepZero gate_301[0] bits[13] fun gate_302 =>
    Extracted.DecafDtk.ltConstStepOne gate_302 gate_301[1] bits[12] fun gate_303 =>
    Extracted.DecafDtk.ltConstStepOne gate_303[0] gate_303[1] bits[11] fun gate_304 =>
    Extracted.DecafDtk.ltConstStepZero gate_304[0] bits[10] fun gate_305 =>
    Extracted.DecafDtk.ltConstStepZero gate_305 bits[9] fun gate_306 =>
    Extracted.DecafDtk.ltConstStepOne gate_306 gate_304[1] bits[8] fun gate_307 =>
    Extracted.DecafDtk.ltConstStepOne gate_307[0] gate_307[1] bits[7] fun gate_308 =>
    Extracted.DecafDtk.ltConstStepOne gate_308[0] gate_308[1] bits[6] fun gate_309 =>
    Extracted.DecafDtk.ltConstStepOne gate_309[0] gate_309[1] bits[5] fun gate_310 =>
    Extracted.DecafDtk.ltConstStepOne gate_310[0] gate_310[1] bits[4] fun gate_311 =>
    Extracted.DecafDtk.ltConstStepOne gate_311[0] gate_311[1] bits[3] fun gate_312 =>
    Extracted.DecafDtk.ltConstStepOne gate_312[0] gate_312[1] bits[2] fun gate_313 =>
    Extracted.DecafDtk.ltConstStepOne gate_313[0] gate_313[1] bits[1] fun gate_314 =>
    Extracted.DecafDtk.ltConstStepOne gate_314[0] gate_314[1] bits[0] fun gate_315 =>
    Extracted.DecafDtk.Gates.eq gate_315[1] (1:F) ∧
    Extracted.DecafDtk.ltConstStepZero (1:F) bits[252] fun gate_317 =>
    Extracted.DecafDtk.ltConstStepZero gate_317 bits[251] fun gate_318 =>
    Extracted.DecafDtk.ltConstStepZero gate_318 bits[250] fun gate_319 =>
    Extracted.DecafDtk.ltConstStepZero gate_319 bits[249] fun gate_320 =>
    Extracted.DecafDtk.ltConstStepZero gate_320 bits[248] fun gate_321 =>
    Extracted.DecafDtk.ltConstStepZero gate_321 bits[247] fun gate_322 =>
    Extracted.DecafDtk.ltConstStepZero gate_322 bits[246] fun gate_323 =>
    Extracted.DecafDtk.ltConstStepZero gate_323 bits[245] fun gate_324 =>
    Extracted.DecafDtk.ltConstStepZero gate_324 bits[244] fun gate_325 =>
    Extracted.DecafDtk.ltConstStepZero gate_325 bits[243] fun gate_326 =>
    Extracted.DecafDtk.ltConstStepZero gate_326 bits[242] fun gate_327 =>
    Extracted.DecafDtk.ltConstStepZero gate_327 bits[241] fun gate_328 =>
    Extracted.DecafDtk.ltConstStepZero gate_328 bits[240] fun gate_329 =>
    Extracted.DecafDtk.ltConstStepZero gate_329 bits[239] fun gate_330 =>
    Extracted.DecafDtk.ltConstStepZero gate_330 bits[238] fun gate_331 =>
    Extracted.DecafDtk.ltConstStepZero gate_331 bits[237] fun gate_332 =>
    k gate_332

def dtkSeg8 (bits : List.Vector F 253) (gate_332 : F) (k : F → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepZero gate_332 bits[236] fun gate_333 =>
    Extracted.DecafDtk.ltConstStepZero gate_333 bits[235] fun gate_334 =>
    Extracted.DecafDtk.ltConstStepZero gate_334 bits[234] fun gate_335 =>
    Extracted.DecafDtk.ltConstStepZero gate_335 bits[233] fun gate_336 =>
    Extracted.DecafDtk.ltConstStepZero gate_336 bits[232] fun gate_337 =>
    Extracted.DecafDtk.ltConstStepZero gate_337 bits[231] fun gate_338 =>
    Extracted.DecafDtk.ltConstStepZero gate_338 bits[230] fun gate_339 =>
    Extracted.DecafDtk.ltConstStepZero gate_339 bits[229] fun gate_340 =>
    Extracted.DecafDtk.ltConstStepZero gate_340 bits[228] fun gate_341 =>
    Extracted.DecafDtk.ltConstStepZero gate_341 bits[227] fun gate_342 =>
    Extracted.DecafDtk.ltConstStepZero gate_342 bits[226] fun gate_343 =>
    Extracted.DecafDtk.ltConstStepZero gate_343 bits[225] fun gate_344 =>
    Extracted.DecafDtk.ltConstStepZero gate_344 bits[224] fun gate_345 =>
    Extracted.DecafDtk.ltConstStepZero gate_345 bits[223] fun gate_346 =>
    Extracted.DecafDtk.ltConstStepZero gate_346 bits[222] fun gate_347 =>
    Extracted.DecafDtk.ltConstStepZero gate_347 bits[221] fun gate_348 =>
    Extracted.DecafDtk.ltConstStepZero gate_348 bits[220] fun gate_349 =>
    Extracted.DecafDtk.ltConstStepZero gate_349 bits[219] fun gate_350 =>
    Extracted.DecafDtk.ltConstStepZero gate_350 bits[218] fun gate_351 =>
    Extracted.DecafDtk.ltConstStepZero gate_351 bits[217] fun gate_352 =>
    Extracted.DecafDtk.ltConstStepZero gate_352 bits[216] fun gate_353 =>
    Extracted.DecafDtk.ltConstStepZero gate_353 bits[215] fun gate_354 =>
    Extracted.DecafDtk.ltConstStepZero gate_354 bits[214] fun gate_355 =>
    Extracted.DecafDtk.ltConstStepZero gate_355 bits[213] fun gate_356 =>
    Extracted.DecafDtk.ltConstStepZero gate_356 bits[212] fun gate_357 =>
    Extracted.DecafDtk.ltConstStepZero gate_357 bits[211] fun gate_358 =>
    Extracted.DecafDtk.ltConstStepZero gate_358 bits[210] fun gate_359 =>
    Extracted.DecafDtk.ltConstStepZero gate_359 bits[209] fun gate_360 =>
    Extracted.DecafDtk.ltConstStepZero gate_360 bits[208] fun gate_361 =>
    Extracted.DecafDtk.ltConstStepZero gate_361 bits[207] fun gate_362 =>
    Extracted.DecafDtk.ltConstStepZero gate_362 bits[206] fun gate_363 =>
    Extracted.DecafDtk.ltConstStepZero gate_363 bits[205] fun gate_364 =>
    Extracted.DecafDtk.ltConstStepZero gate_364 bits[204] fun gate_365 =>
    Extracted.DecafDtk.ltConstStepZero gate_365 bits[203] fun gate_366 =>
    Extracted.DecafDtk.ltConstStepZero gate_366 bits[202] fun gate_367 =>
    Extracted.DecafDtk.ltConstStepZero gate_367 bits[201] fun gate_368 =>
    Extracted.DecafDtk.ltConstStepZero gate_368 bits[200] fun gate_369 =>
    Extracted.DecafDtk.ltConstStepZero gate_369 bits[199] fun gate_370 =>
    k gate_370

def dtkSeg9 (bits : List.Vector F 253) (gate_370 : F) (k : F → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepZero gate_370 bits[198] fun gate_371 =>
    Extracted.DecafDtk.ltConstStepZero gate_371 bits[197] fun gate_372 =>
    Extracted.DecafDtk.ltConstStepZero gate_372 bits[196] fun gate_373 =>
    Extracted.DecafDtk.ltConstStepZero gate_373 bits[195] fun gate_374 =>
    Extracted.DecafDtk.ltConstStepZero gate_374 bits[194] fun gate_375 =>
    Extracted.DecafDtk.ltConstStepZero gate_375 bits[193] fun gate_376 =>
    Extracted.DecafDtk.ltConstStepZero gate_376 bits[192] fun gate_377 =>
    Extracted.DecafDtk.ltConstStepZero gate_377 bits[191] fun gate_378 =>
    Extracted.DecafDtk.ltConstStepZero gate_378 bits[190] fun gate_379 =>
    Extracted.DecafDtk.ltConstStepZero gate_379 bits[189] fun gate_380 =>
    Extracted.DecafDtk.ltConstStepZero gate_380 bits[188] fun gate_381 =>
    Extracted.DecafDtk.ltConstStepZero gate_381 bits[187] fun gate_382 =>
    Extracted.DecafDtk.ltConstStepZero gate_382 bits[186] fun gate_383 =>
    Extracted.DecafDtk.ltConstStepZero gate_383 bits[185] fun gate_384 =>
    Extracted.DecafDtk.ltConstStepZero gate_384 bits[184] fun gate_385 =>
    Extracted.DecafDtk.ltConstStepZero gate_385 bits[183] fun gate_386 =>
    Extracted.DecafDtk.ltConstStepZero gate_386 bits[182] fun gate_387 =>
    Extracted.DecafDtk.ltConstStepZero gate_387 bits[181] fun gate_388 =>
    Extracted.DecafDtk.ltConstStepZero gate_388 bits[180] fun gate_389 =>
    Extracted.DecafDtk.ltConstStepZero gate_389 bits[179] fun gate_390 =>
    Extracted.DecafDtk.ltConstStepZero gate_390 bits[178] fun gate_391 =>
    Extracted.DecafDtk.ltConstStepZero gate_391 bits[177] fun gate_392 =>
    Extracted.DecafDtk.ltConstStepZero gate_392 bits[176] fun gate_393 =>
    Extracted.DecafDtk.ltConstStepZero gate_393 bits[175] fun gate_394 =>
    Extracted.DecafDtk.ltConstStepZero gate_394 bits[174] fun gate_395 =>
    Extracted.DecafDtk.ltConstStepZero gate_395 bits[173] fun gate_396 =>
    Extracted.DecafDtk.ltConstStepZero gate_396 bits[172] fun gate_397 =>
    Extracted.DecafDtk.ltConstStepZero gate_397 bits[171] fun gate_398 =>
    Extracted.DecafDtk.ltConstStepZero gate_398 bits[170] fun gate_399 =>
    Extracted.DecafDtk.ltConstStepZero gate_399 bits[169] fun gate_400 =>
    Extracted.DecafDtk.ltConstStepZero gate_400 bits[168] fun gate_401 =>
    Extracted.DecafDtk.ltConstStepZero gate_401 bits[167] fun gate_402 =>
    Extracted.DecafDtk.ltConstStepZero gate_402 bits[166] fun gate_403 =>
    Extracted.DecafDtk.ltConstStepZero gate_403 bits[165] fun gate_404 =>
    Extracted.DecafDtk.ltConstStepZero gate_404 bits[164] fun gate_405 =>
    Extracted.DecafDtk.ltConstStepZero gate_405 bits[163] fun gate_406 =>
    Extracted.DecafDtk.ltConstStepZero gate_406 bits[162] fun gate_407 =>
    Extracted.DecafDtk.ltConstStepZero gate_407 bits[161] fun gate_408 =>
    k gate_408

def dtkSeg10 (bits : List.Vector F 253) (gate_408 : F) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepZero gate_408 bits[160] fun gate_409 =>
    Extracted.DecafDtk.ltConstStepZero gate_409 bits[159] fun gate_410 =>
    Extracted.DecafDtk.ltConstStepZero gate_410 bits[158] fun gate_411 =>
    Extracted.DecafDtk.ltConstStepZero gate_411 bits[157] fun gate_412 =>
    Extracted.DecafDtk.ltConstStepZero gate_412 bits[156] fun gate_413 =>
    Extracted.DecafDtk.ltConstStepZero gate_413 bits[155] fun gate_414 =>
    Extracted.DecafDtk.ltConstStepZero gate_414 bits[154] fun gate_415 =>
    Extracted.DecafDtk.ltConstStepZero gate_415 bits[153] fun gate_416 =>
    Extracted.DecafDtk.ltConstStepZero gate_416 bits[152] fun gate_417 =>
    Extracted.DecafDtk.ltConstStepZero gate_417 bits[151] fun gate_418 =>
    Extracted.DecafDtk.ltConstStepZero gate_418 bits[150] fun gate_419 =>
    Extracted.DecafDtk.ltConstStepZero gate_419 bits[149] fun gate_420 =>
    Extracted.DecafDtk.ltConstStepZero gate_420 bits[148] fun gate_421 =>
    Extracted.DecafDtk.ltConstStepZero gate_421 bits[147] fun gate_422 =>
    Extracted.DecafDtk.ltConstStepZero gate_422 bits[146] fun gate_423 =>
    Extracted.DecafDtk.ltConstStepZero gate_423 bits[145] fun gate_424 =>
    Extracted.DecafDtk.ltConstStepZero gate_424 bits[144] fun gate_425 =>
    Extracted.DecafDtk.ltConstStepZero gate_425 bits[143] fun gate_426 =>
    Extracted.DecafDtk.ltConstStepZero gate_426 bits[142] fun gate_427 =>
    Extracted.DecafDtk.ltConstStepZero gate_427 bits[141] fun gate_428 =>
    Extracted.DecafDtk.ltConstStepZero gate_428 bits[140] fun gate_429 =>
    Extracted.DecafDtk.ltConstStepZero gate_429 bits[139] fun gate_430 =>
    Extracted.DecafDtk.ltConstStepZero gate_430 bits[138] fun gate_431 =>
    Extracted.DecafDtk.ltConstStepZero gate_431 bits[137] fun gate_432 =>
    Extracted.DecafDtk.ltConstStepZero gate_432 bits[136] fun gate_433 =>
    Extracted.DecafDtk.ltConstStepZero gate_433 bits[135] fun gate_434 =>
    Extracted.DecafDtk.ltConstStepZero gate_434 bits[134] fun gate_435 =>
    Extracted.DecafDtk.ltConstStepZero gate_435 bits[133] fun gate_436 =>
    Extracted.DecafDtk.ltConstStepZero gate_436 bits[132] fun gate_437 =>
    Extracted.DecafDtk.ltConstStepZero gate_437 bits[131] fun gate_438 =>
    Extracted.DecafDtk.ltConstStepZero gate_438 bits[130] fun gate_439 =>
    Extracted.DecafDtk.ltConstStepZero gate_439 bits[129] fun gate_440 =>
    Extracted.DecafDtk.ltConstStepZero gate_440 bits[128] fun gate_441 =>
    Extracted.DecafDtk.ltConstStepZero gate_441 bits[127] fun gate_442 =>
    Extracted.DecafDtk.ltConstStepZero gate_442 bits[126] fun gate_443 =>
    Extracted.DecafDtk.ltConstStepZero gate_443 bits[125] fun gate_444 =>
    Extracted.DecafDtk.ltConstStepZero gate_444 bits[124] fun gate_445 =>
    Extracted.DecafDtk.ltConstStepOne gate_445 (0:F) bits[123] fun gate_446 =>
    k gate_446

def dtkSeg11 (bits : List.Vector F 253) (gate_446 : List.Vector F 2) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepOne gate_446[0] gate_446[1] bits[122] fun gate_447 =>
    Extracted.DecafDtk.ltConstStepOne gate_447[0] gate_447[1] bits[121] fun gate_448 =>
    Extracted.DecafDtk.ltConstStepOne gate_448[0] gate_448[1] bits[120] fun gate_449 =>
    Extracted.DecafDtk.ltConstStepZero gate_449[0] bits[119] fun gate_450 =>
    Extracted.DecafDtk.ltConstStepOne gate_450 gate_449[1] bits[118] fun gate_451 =>
    Extracted.DecafDtk.ltConstStepZero gate_451[0] bits[117] fun gate_452 =>
    Extracted.DecafDtk.ltConstStepOne gate_452 gate_451[1] bits[116] fun gate_453 =>
    Extracted.DecafDtk.ltConstStepOne gate_453[0] gate_453[1] bits[115] fun gate_454 =>
    Extracted.DecafDtk.ltConstStepZero gate_454[0] bits[114] fun gate_455 =>
    Extracted.DecafDtk.ltConstStepOne gate_455 gate_454[1] bits[113] fun gate_456 =>
    Extracted.DecafDtk.ltConstStepOne gate_456[0] gate_456[1] bits[112] fun gate_457 =>
    Extracted.DecafDtk.ltConstStepOne gate_457[0] gate_457[1] bits[111] fun gate_458 =>
    Extracted.DecafDtk.ltConstStepOne gate_458[0] gate_458[1] bits[110] fun gate_459 =>
    Extracted.DecafDtk.ltConstStepOne gate_459[0] gate_459[1] bits[109] fun gate_460 =>
    Extracted.DecafDtk.ltConstStepZero gate_460[0] bits[108] fun gate_461 =>
    Extracted.DecafDtk.ltConstStepOne gate_461 gate_460[1] bits[107] fun gate_462 =>
    Extracted.DecafDtk.ltConstStepZero gate_462[0] bits[106] fun gate_463 =>
    Extracted.DecafDtk.ltConstStepZero gate_463 bits[105] fun gate_464 =>
    Extracted.DecafDtk.ltConstStepZero gate_464 bits[104] fun gate_465 =>
    Extracted.DecafDtk.ltConstStepZero gate_465 bits[103] fun gate_466 =>
    Extracted.DecafDtk.ltConstStepZero gate_466 bits[102] fun gate_467 =>
    Extracted.DecafDtk.ltConstStepOne gate_467 gate_462[1] bits[101] fun gate_468 =>
    Extracted.DecafDtk.ltConstStepOne gate_468[0] gate_468[1] bits[100] fun gate_469 =>
    Extracted.DecafDtk.ltConstStepOne gate_469[0] gate_469[1] bits[99] fun gate_470 =>
    Extracted.DecafDtk.ltConstStepOne gate_470[0] gate_470[1] bits[98] fun gate_471 =>
    Extracted.DecafDtk.ltConstStepOne gate_471[0] gate_471[1] bits[97] fun gate_472 =>
    Extracted.DecafDtk.ltConstStepOne gate_472[0] gate_472[1] bits[96] fun gate_473 =>
    Extracted.DecafDtk.ltConstStepOne gate_473[0] gate_473[1] bits[95] fun gate_474 =>
    Extracted.DecafDtk.ltConstStepZero gate_474[0] bits[94] fun gate_475 =>
    Extracted.DecafDtk.ltConstStepOne gate_475 gate_474[1] bits[93] fun gate_476 =>
    Extracted.DecafDtk.ltConstStepOne gate_476[0] gate_476[1] bits[92] fun gate_477 =>
    Extracted.DecafDtk.ltConstStepOne gate_477[0] gate_477[1] bits[91] fun gate_478 =>
    Extracted.DecafDtk.ltConstStepOne gate_478[0] gate_478[1] bits[90] fun gate_479 =>
    Extracted.DecafDtk.ltConstStepOne gate_479[0] gate_479[1] bits[89] fun gate_480 =>
    Extracted.DecafDtk.ltConstStepOne gate_480[0] gate_480[1] bits[88] fun gate_481 =>
    Extracted.DecafDtk.ltConstStepZero gate_481[0] bits[87] fun gate_482 =>
    Extracted.DecafDtk.ltConstStepZero gate_482 bits[86] fun gate_483 =>
    Extracted.DecafDtk.ltConstStepZero gate_483 bits[85] fun gate_484 =>
    Extracted.DecafDtk.ltConstStepZero gate_484 bits[84] fun gate_485 =>
    Extracted.DecafDtk.ltConstStepOne gate_485 gate_481[1] bits[83] fun gate_486 =>
    k gate_486

def dtkSeg12 (bits : List.Vector F 253) (gate_486 : List.Vector F 2) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepOne gate_486[0] gate_486[1] bits[82] fun gate_487 =>
    Extracted.DecafDtk.ltConstStepZero gate_487[0] bits[81] fun gate_488 =>
    Extracted.DecafDtk.ltConstStepOne gate_488 gate_487[1] bits[80] fun gate_489 =>
    Extracted.DecafDtk.ltConstStepOne gate_489[0] gate_489[1] bits[79] fun gate_490 =>
    Extracted.DecafDtk.ltConstStepOne gate_490[0] gate_490[1] bits[78] fun gate_491 =>
    Extracted.DecafDtk.ltConstStepZero gate_491[0] bits[77] fun gate_492 =>
    Extracted.DecafDtk.ltConstStepOne gate_492 gate_491[1] bits[76] fun gate_493 =>
    Extracted.DecafDtk.ltConstStepZero gate_493[0] bits[75] fun gate_494 =>
    Extracted.DecafDtk.ltConstStepOne gate_494 gate_493[1] bits[74] fun gate_495 =>
    Extracted.DecafDtk.ltConstStepZero gate_495[0] bits[73] fun gate_496 =>
    Extracted.DecafDtk.ltConstStepZero gate_496 bits[72] fun gate_497 =>
    Extracted.DecafDtk.ltConstStepZero gate_497 bits[71] fun gate_498 =>
    Extracted.DecafDtk.ltConstStepZero gate_498 bits[70] fun gate_499 =>
    Extracted.DecafDtk.ltConstStepZero gate_499 bits[69] fun gate_500 =>
    Extracted.DecafDtk.ltConstStepZero gate_500 bits[68] fun gate_501 =>
    Extracted.DecafDtk.ltConstStepZero gate_501 bits[67] fun gate_502 =>
    Extracted.DecafDtk.ltConstStepOne gate_502 gate_495[1] bits[66] fun gate_503 =>
    Extracted.DecafDtk.ltConstStepOne gate_503[0] gate_503[1] bits[65] fun gate_504 =>
    Extracted.DecafDtk.ltConstStepZero gate_504[0] bits[64] fun gate_505 =>
    Extracted.DecafDtk.ltConstStepZero gate_505 bits[63] fun gate_506 =>
    Extracted.DecafDtk.ltConstStepZero gate_506 bits[62] fun gate_507 =>
    Extracted.DecafDtk.ltConstStepOne gate_507 gate_504[1] bits[61] fun gate_508 =>
    Extracted.DecafDtk.ltConstStepZero gate_508[0] bits[60] fun gate_509 =>
    Extracted.DecafDtk.ltConstStepZero gate_509 bits[59] fun gate_510 =>
    Extracted.DecafDtk.ltConstStepOne gate_510 gate_508[1] bits[58] fun gate_511 =>
    Extracted.DecafDtk.ltConstStepZero gate_511[0] bits[57] fun gate_512 =>
    Extracted.DecafDtk.ltConstStepZero gate_512 bits[56] fun gate_513 =>
    Extracted.DecafDtk.ltConstStepOne gate_513 gate_511[1] bits[55] fun gate_514 =>
    Extracted.DecafDtk.ltConstStepZero gate_514[0] bits[54] fun gate_515 =>
    Extracted.DecafDtk.ltConstStepOne gate_515 gate_514[1] bits[53] fun gate_516 =>
    Extracted.DecafDtk.ltConstStepZero gate_516[0] bits[52] fun gate_517 =>
    Extracted.DecafDtk.ltConstStepZero gate_517 bits[51] fun gate_518 =>
    Extracted.DecafDtk.ltConstStepOne gate_518 gate_516[1] bits[50] fun gate_519 =>
    Extracted.DecafDtk.ltConstStepZero gate_519[0] bits[49] fun gate_520 =>
    Extracted.DecafDtk.ltConstStepOne gate_520 gate_519[1] bits[48] fun gate_521 =>
    Extracted.DecafDtk.ltConstStepOne gate_521[0] gate_521[1] bits[47] fun gate_522 =>
    Extracted.DecafDtk.ltConstStepOne gate_522[0] gate_522[1] bits[46] fun gate_523 =>
    Extracted.DecafDtk.ltConstStepZero gate_523[0] bits[45] fun gate_524 =>
    Extracted.DecafDtk.ltConstStepZero gate_524 bits[44] fun gate_525 =>
    Extracted.DecafDtk.ltConstStepZero gate_525 bits[43] fun gate_526 =>
    Extracted.DecafDtk.ltConstStepOne gate_526 gate_523[1] bits[42] fun gate_527 =>
    k gate_527

def dtkSeg13 (bits : List.Vector F 253) (gate_527 : List.Vector F 2) (k : List.Vector F 2 → Prop) : Prop :=
    Extracted.DecafDtk.ltConstStepZero gate_527[0] bits[41] fun gate_528 =>
    Extracted.DecafDtk.ltConstStepOne gate_528 gate_527[1] bits[40] fun gate_529 =>
    Extracted.DecafDtk.ltConstStepOne gate_529[0] gate_529[1] bits[39] fun gate_530 =>
    Extracted.DecafDtk.ltConstStepZero gate_530[0] bits[38] fun gate_531 =>
    Extracted.DecafDtk.ltConstStepZero gate_531 bits[37] fun gate_532 =>
    Extracted.DecafDtk.ltConstStepOne gate_532 gate_530[1] bits[36] fun gate_533 =>
    Extracted.DecafDtk.ltConstStepZero gate_533[0] bits[35] fun gate_534 =>
    Extracted.DecafDtk.ltConstStepOne gate_534 gate_533[1] bits[34] fun gate_535 =>
    Extracted.DecafDtk.ltConstStepZero gate_535[0] bits[33] fun gate_536 =>
    Extracted.DecafDtk.ltConstStepZero gate_536 bits[32] fun gate_537 =>
    Extracted.DecafDtk.ltConstStepOne gate_537 gate_535[1] bits[31] fun gate_538 =>
    Extracted.DecafDtk.ltConstStepOne gate_538[0] gate_538[1] bits[30] fun gate_539 =>
    Extracted.DecafDtk.ltConstStepOne gate_539[0] gate_539[1] bits[29] fun gate_540 =>
    Extracted.DecafDtk.ltConstStepOne gate_540[0] gate_540[1] bits[28] fun gate_541 =>
    Extracted.DecafDtk.ltConstStepZero gate_541[0] bits[27] fun gate_542 =>
    Extracted.DecafDtk.ltConstStepZero gate_542 bits[26] fun gate_543 =>
    Extracted.DecafDtk.ltConstStepOne gate_543 gate_541[1] bits[25] fun gate_544 =>
    Extracted.DecafDtk.ltConstStepOne gate_544[0] gate_544[1] bits[24] fun gate_545 =>
    Extracted.DecafDtk.ltConstStepZero gate_545[0] bits[23] fun gate_546 =>
    Extracted.DecafDtk.ltConstStepZero gate_546 bits[22] fun gate_547 =>
    Extracted.DecafDtk.ltConstStepZero gate_547 bits[21] fun gate_548 =>
    Extracted.DecafDtk.ltConstStepZero gate_548 bits[20] fun gate_549 =>
    Extracted.DecafDtk.ltConstStepZero gate_549 bits[19] fun gate_550 =>
    Extracted.DecafDtk.ltConstStepZero gate_550 bits[18] fun gate_551 =>
    Extracted.DecafDtk.ltConstStepZero gate_551 bits[17] fun gate_552 =>
    Extracted.DecafDtk.ltConstStepZero gate_552 bits[16] fun gate_553 =>
    Extracted.DecafDtk.ltConstStepOne gate_553 gate_545[1] bits[15] fun gate_554 =>
    Extracted.DecafDtk.ltConstStepZero gate_554[0] bits[14] fun gate_555 =>
    Extracted.DecafDtk.ltConstStepZero gate_555 bits[13] fun gate_556 =>
    Extracted.DecafDtk.ltConstStepOne gate_556 gate_554[1] bits[12] fun gate_557 =>
    Extracted.DecafDtk.ltConstStepOne gate_557[0] gate_557[1] bits[11] fun gate_558 =>
    Extracted.DecafDtk.ltConstStepZero gate_558[0] bits[10] fun gate_559 =>
    Extracted.DecafDtk.ltConstStepZero gate_559 bits[9] fun gate_560 =>
    Extracted.DecafDtk.ltConstStepZero gate_560 bits[8] fun gate_561 =>
    Extracted.DecafDtk.ltConstStepZero gate_561 bits[7] fun gate_562 =>
    Extracted.DecafDtk.ltConstStepZero gate_562 bits[6] fun gate_563 =>
    Extracted.DecafDtk.ltConstStepZero gate_563 bits[5] fun gate_564 =>
    Extracted.DecafDtk.ltConstStepZero gate_564 bits[4] fun gate_565 =>
    Extracted.DecafDtk.ltConstStepZero gate_565 bits[3] fun gate_566 =>
    Extracted.DecafDtk.ltConstStepOne gate_566 gate_558[1] bits[2] fun gate_567 =>
    Extracted.DecafDtk.ltConstStepZero gate_567[0] bits[1] fun gate_568 =>
    Extracted.DecafDtk.ltConstStepOne gate_568 gate_567[1] bits[0] fun gate_569 =>
    k gate_569

def dtkSeg14 (gate_569 : List.Vector F 2) (IvkQuotient : F) (k : Prop) : Prop :=
    ∃gate_570, gate_570 = Extracted.DecafDtk.Gates.sub IvkQuotient (4:F) ∧
    ∃gate_571, Extracted.DecafDtk.Gates.is_zero gate_570 gate_571 ∧
    ∃gate_572, gate_572 = Extracted.DecafDtk.Gates.sub (1:F) gate_569[1] ∧
    ∃gate_573, gate_573 = Extracted.DecafDtk.Gates.mul gate_571 gate_572 ∧
    Extracted.DecafDtk.Gates.eq gate_573 (0:F) ∧
    k


end Shieldd.GnarkFormal.DtkBridge
