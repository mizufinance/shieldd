import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.Decaf377CircuitDefs
import ShielddGnarkFormal.Extracted.DecafDtk
import ShielddGnarkFormal.CanonicalFqBitsBridge
import ShielddGnarkFormal.Poseidon2Bridge
import ShielddGnarkFormal.IvkModRBridge
import ProvenZk.Lemmas
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

/-!
Bridge for the extracted DecafDtk circuit. The circuit asserts `ak` on-curve,
compresses it, derives the IVK via Poseidon2 and the mod-r decomposition, then
runs a 251-bit ladder over `div_gen` pinned to the outputs. This file proves
the output relation (`dtk` over the witnessed reduced IVK) and the implied
`ak` on-curve fact; the IVK-provenance semantics remain a tracked open item.
-/

namespace Shieldd.GnarkFormal.DtkBridge

open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

abbrev F := EdwardsBridge.F

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafDtk.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafCompressToField.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.Poseidon2.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.IvkModR.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.CanonicalFqBits.Order) := ‹_›

/-- Verbatim prefix of `DecafDtk.circuit` (gates 0-573: ak on-curve check,
compress, Poseidon2 IVK, IvkModR decomposition, `< r` ladder) with the
trailing scalar-mul ladder abstracted to `k`. -/
def dtkCircuitK (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F) (k : Prop) : Prop :=
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
    Extracted.DecafDtk.ltConstStepZero (1:F) gate_62[252] fun gate_63 =>
    Extracted.DecafDtk.ltConstStepZero gate_63 gate_62[251] fun gate_64 =>
    Extracted.DecafDtk.ltConstStepOne gate_64 (0:F) gate_62[250] fun gate_65 =>
    Extracted.DecafDtk.ltConstStepZero gate_65[0] gate_62[249] fun gate_66 =>
    Extracted.DecafDtk.ltConstStepZero gate_66 gate_62[248] fun gate_67 =>
    Extracted.DecafDtk.ltConstStepOne gate_67 gate_65[1] gate_62[247] fun gate_68 =>
    Extracted.DecafDtk.ltConstStepZero gate_68[0] gate_62[246] fun gate_69 =>
    Extracted.DecafDtk.ltConstStepOne gate_69 gate_68[1] gate_62[245] fun gate_70 =>
    Extracted.DecafDtk.ltConstStepZero gate_70[0] gate_62[244] fun gate_71 =>
    Extracted.DecafDtk.ltConstStepOne gate_71 gate_70[1] gate_62[243] fun gate_72 =>
    Extracted.DecafDtk.ltConstStepZero gate_72[0] gate_62[242] fun gate_73 =>
    Extracted.DecafDtk.ltConstStepOne gate_73 gate_72[1] gate_62[241] fun gate_74 =>
    Extracted.DecafDtk.ltConstStepZero gate_74[0] gate_62[240] fun gate_75 =>
    Extracted.DecafDtk.ltConstStepOne gate_75 gate_74[1] gate_62[239] fun gate_76 =>
    Extracted.DecafDtk.ltConstStepOne gate_76[0] gate_76[1] gate_62[238] fun gate_77 =>
    Extracted.DecafDtk.ltConstStepZero gate_77[0] gate_62[237] fun gate_78 =>
    Extracted.DecafDtk.ltConstStepOne gate_78 gate_77[1] gate_62[236] fun gate_79 =>
    Extracted.DecafDtk.ltConstStepOne gate_79[0] gate_79[1] gate_62[235] fun gate_80 =>
    Extracted.DecafDtk.ltConstStepZero gate_80[0] gate_62[234] fun gate_81 =>
    Extracted.DecafDtk.ltConstStepZero gate_81 gate_62[233] fun gate_82 =>
    Extracted.DecafDtk.ltConstStepOne gate_82 gate_80[1] gate_62[232] fun gate_83 =>
    Extracted.DecafDtk.ltConstStepZero gate_83[0] gate_62[231] fun gate_84 =>
    Extracted.DecafDtk.ltConstStepOne gate_84 gate_83[1] gate_62[230] fun gate_85 =>
    Extracted.DecafDtk.ltConstStepZero gate_85[0] gate_62[229] fun gate_86 =>
    Extracted.DecafDtk.ltConstStepOne gate_86 gate_85[1] gate_62[228] fun gate_87 =>
    Extracted.DecafDtk.ltConstStepZero gate_87[0] gate_62[227] fun gate_88 =>
    Extracted.DecafDtk.ltConstStepOne gate_88 gate_87[1] gate_62[226] fun gate_89 =>
    Extracted.DecafDtk.ltConstStepOne gate_89[0] gate_89[1] gate_62[225] fun gate_90 =>
    Extracted.DecafDtk.ltConstStepOne gate_90[0] gate_90[1] gate_62[224] fun gate_91 =>
    Extracted.DecafDtk.ltConstStepOne gate_91[0] gate_91[1] gate_62[223] fun gate_92 =>
    Extracted.DecafDtk.ltConstStepZero gate_92[0] gate_62[222] fun gate_93 =>
    Extracted.DecafDtk.ltConstStepOne gate_93 gate_92[1] gate_62[221] fun gate_94 =>
    Extracted.DecafDtk.ltConstStepZero gate_94[0] gate_62[220] fun gate_95 =>
    Extracted.DecafDtk.ltConstStepZero gate_95 gate_62[219] fun gate_96 =>
    Extracted.DecafDtk.ltConstStepOne gate_96 gate_94[1] gate_62[218] fun gate_97 =>
    Extracted.DecafDtk.ltConstStepOne gate_97[0] gate_97[1] gate_62[217] fun gate_98 =>
    Extracted.DecafDtk.ltConstStepZero gate_98[0] gate_62[216] fun gate_99 =>
    Extracted.DecafDtk.ltConstStepOne gate_99 gate_98[1] gate_62[215] fun gate_100 =>
    Extracted.DecafDtk.ltConstStepZero gate_100[0] gate_62[214] fun gate_101 =>
    Extracted.DecafDtk.ltConstStepZero gate_101 gate_62[213] fun gate_102 =>
    Extracted.DecafDtk.ltConstStepZero gate_102 gate_62[212] fun gate_103 =>
    Extracted.DecafDtk.ltConstStepOne gate_103 gate_100[1] gate_62[211] fun gate_104 =>
    Extracted.DecafDtk.ltConstStepZero gate_104[0] gate_62[210] fun gate_105 =>
    Extracted.DecafDtk.ltConstStepOne gate_105 gate_104[1] gate_62[209] fun gate_106 =>
    Extracted.DecafDtk.ltConstStepOne gate_106[0] gate_106[1] gate_62[208] fun gate_107 =>
    Extracted.DecafDtk.ltConstStepZero gate_107[0] gate_62[207] fun gate_108 =>
    Extracted.DecafDtk.ltConstStepZero gate_108 gate_62[206] fun gate_109 =>
    Extracted.DecafDtk.ltConstStepOne gate_109 gate_107[1] gate_62[205] fun gate_110 =>
    Extracted.DecafDtk.ltConstStepZero gate_110[0] gate_62[204] fun gate_111 =>
    Extracted.DecafDtk.ltConstStepOne gate_111 gate_110[1] gate_62[203] fun gate_112 =>
    Extracted.DecafDtk.ltConstStepZero gate_112[0] gate_62[202] fun gate_113 =>
    Extracted.DecafDtk.ltConstStepZero gate_113 gate_62[201] fun gate_114 =>
    Extracted.DecafDtk.ltConstStepOne gate_114 gate_112[1] gate_62[200] fun gate_115 =>
    Extracted.DecafDtk.ltConstStepZero gate_115[0] gate_62[199] fun gate_116 =>
    Extracted.DecafDtk.ltConstStepOne gate_116 gate_115[1] gate_62[198] fun gate_117 =>
    Extracted.DecafDtk.ltConstStepZero gate_117[0] gate_62[197] fun gate_118 =>
    Extracted.DecafDtk.ltConstStepOne gate_118 gate_117[1] gate_62[196] fun gate_119 =>
    Extracted.DecafDtk.ltConstStepZero gate_119[0] gate_62[195] fun gate_120 =>
    Extracted.DecafDtk.ltConstStepOne gate_120 gate_119[1] gate_62[194] fun gate_121 =>
    Extracted.DecafDtk.ltConstStepZero gate_121[0] gate_62[193] fun gate_122 =>
    Extracted.DecafDtk.ltConstStepOne gate_122 gate_121[1] gate_62[192] fun gate_123 =>
    Extracted.DecafDtk.ltConstStepOne gate_123[0] gate_123[1] gate_62[191] fun gate_124 =>
    Extracted.DecafDtk.ltConstStepZero gate_124[0] gate_62[190] fun gate_125 =>
    Extracted.DecafDtk.ltConstStepZero gate_125 gate_62[189] fun gate_126 =>
    Extracted.DecafDtk.ltConstStepOne gate_126 gate_124[1] gate_62[188] fun gate_127 =>
    Extracted.DecafDtk.ltConstStepOne gate_127[0] gate_127[1] gate_62[187] fun gate_128 =>
    Extracted.DecafDtk.ltConstStepZero gate_128[0] gate_62[186] fun gate_129 =>
    Extracted.DecafDtk.ltConstStepZero gate_129 gate_62[185] fun gate_130 =>
    Extracted.DecafDtk.ltConstStepZero gate_130 gate_62[184] fun gate_131 =>
    Extracted.DecafDtk.ltConstStepZero gate_131 gate_62[183] fun gate_132 =>
    Extracted.DecafDtk.ltConstStepZero gate_132 gate_62[182] fun gate_133 =>
    Extracted.DecafDtk.ltConstStepOne gate_133 gate_128[1] gate_62[181] fun gate_134 =>
    Extracted.DecafDtk.ltConstStepZero gate_134[0] gate_62[180] fun gate_135 =>
    Extracted.DecafDtk.ltConstStepOne gate_135 gate_134[1] gate_62[179] fun gate_136 =>
    Extracted.DecafDtk.ltConstStepOne gate_136[0] gate_136[1] gate_62[178] fun gate_137 =>
    Extracted.DecafDtk.ltConstStepZero gate_137[0] gate_62[177] fun gate_138 =>
    Extracted.DecafDtk.ltConstStepOne gate_138 gate_137[1] gate_62[176] fun gate_139 =>
    Extracted.DecafDtk.ltConstStepZero gate_139[0] gate_62[175] fun gate_140 =>
    Extracted.DecafDtk.ltConstStepZero gate_140 gate_62[174] fun gate_141 =>
    Extracted.DecafDtk.ltConstStepZero gate_141 gate_62[173] fun gate_142 =>
    Extracted.DecafDtk.ltConstStepOne gate_142 gate_139[1] gate_62[172] fun gate_143 =>
    Extracted.DecafDtk.ltConstStepZero gate_143[0] gate_62[171] fun gate_144 =>
    Extracted.DecafDtk.ltConstStepZero gate_144 gate_62[170] fun gate_145 =>
    Extracted.DecafDtk.ltConstStepOne gate_145 gate_143[1] gate_62[169] fun gate_146 =>
    Extracted.DecafDtk.ltConstStepOne gate_146[0] gate_146[1] gate_62[168] fun gate_147 =>
    Extracted.DecafDtk.ltConstStepZero gate_147[0] gate_62[167] fun gate_148 =>
    Extracted.DecafDtk.ltConstStepOne gate_148 gate_147[1] gate_62[166] fun gate_149 =>
    Extracted.DecafDtk.ltConstStepZero gate_149[0] gate_62[165] fun gate_150 =>
    Extracted.DecafDtk.ltConstStepZero gate_150 gate_62[164] fun gate_151 =>
    Extracted.DecafDtk.ltConstStepZero gate_151 gate_62[163] fun gate_152 =>
    Extracted.DecafDtk.ltConstStepOne gate_152 gate_149[1] gate_62[162] fun gate_153 =>
    Extracted.DecafDtk.ltConstStepOne gate_153[0] gate_153[1] gate_62[161] fun gate_154 =>
    Extracted.DecafDtk.ltConstStepOne gate_154[0] gate_154[1] gate_62[160] fun gate_155 =>
    Extracted.DecafDtk.ltConstStepOne gate_155[0] gate_155[1] gate_62[159] fun gate_156 =>
    Extracted.DecafDtk.ltConstStepZero gate_156[0] gate_62[158] fun gate_157 =>
    Extracted.DecafDtk.ltConstStepZero gate_157 gate_62[157] fun gate_158 =>
    Extracted.DecafDtk.ltConstStepOne gate_158 gate_156[1] gate_62[156] fun gate_159 =>
    Extracted.DecafDtk.ltConstStepZero gate_159[0] gate_62[155] fun gate_160 =>
    Extracted.DecafDtk.ltConstStepOne gate_160 gate_159[1] gate_62[154] fun gate_161 =>
    Extracted.DecafDtk.ltConstStepOne gate_161[0] gate_161[1] gate_62[153] fun gate_162 =>
    Extracted.DecafDtk.ltConstStepOne gate_162[0] gate_162[1] gate_62[152] fun gate_163 =>
    Extracted.DecafDtk.ltConstStepZero gate_163[0] gate_62[151] fun gate_164 =>
    Extracted.DecafDtk.ltConstStepZero gate_164 gate_62[150] fun gate_165 =>
    Extracted.DecafDtk.ltConstStepZero gate_165 gate_62[149] fun gate_166 =>
    Extracted.DecafDtk.ltConstStepZero gate_166 gate_62[148] fun gate_167 =>
    Extracted.DecafDtk.ltConstStepOne gate_167 gate_163[1] gate_62[147] fun gate_168 =>
    Extracted.DecafDtk.ltConstStepOne gate_168[0] gate_168[1] gate_62[146] fun gate_169 =>
    Extracted.DecafDtk.ltConstStepZero gate_169[0] gate_62[145] fun gate_170 =>
    Extracted.DecafDtk.ltConstStepOne gate_170 gate_169[1] gate_62[144] fun gate_171 =>
    Extracted.DecafDtk.ltConstStepOne gate_171[0] gate_171[1] gate_62[143] fun gate_172 =>
    Extracted.DecafDtk.ltConstStepOne gate_172[0] gate_172[1] gate_62[142] fun gate_173 =>
    Extracted.DecafDtk.ltConstStepOne gate_173[0] gate_173[1] gate_62[141] fun gate_174 =>
    Extracted.DecafDtk.ltConstStepZero gate_174[0] gate_62[140] fun gate_175 =>
    Extracted.DecafDtk.ltConstStepOne gate_175 gate_174[1] gate_62[139] fun gate_176 =>
    Extracted.DecafDtk.ltConstStepOne gate_176[0] gate_176[1] gate_62[138] fun gate_177 =>
    Extracted.DecafDtk.ltConstStepZero gate_177[0] gate_62[137] fun gate_178 =>
    Extracted.DecafDtk.ltConstStepZero gate_178 gate_62[136] fun gate_179 =>
    Extracted.DecafDtk.ltConstStepZero gate_179 gate_62[135] fun gate_180 =>
    Extracted.DecafDtk.ltConstStepZero gate_180 gate_62[134] fun gate_181 =>
    Extracted.DecafDtk.ltConstStepZero gate_181 gate_62[133] fun gate_182 =>
    Extracted.DecafDtk.ltConstStepZero gate_182 gate_62[132] fun gate_183 =>
    Extracted.DecafDtk.ltConstStepZero gate_183 gate_62[131] fun gate_184 =>
    Extracted.DecafDtk.ltConstStepZero gate_184 gate_62[130] fun gate_185 =>
    Extracted.DecafDtk.ltConstStepZero gate_185 gate_62[129] fun gate_186 =>
    Extracted.DecafDtk.ltConstStepZero gate_186 gate_62[128] fun gate_187 =>
    Extracted.DecafDtk.ltConstStepZero gate_187 gate_62[127] fun gate_188 =>
    Extracted.DecafDtk.ltConstStepOne gate_188 gate_177[1] gate_62[126] fun gate_189 =>
    Extracted.DecafDtk.ltConstStepZero gate_189[0] gate_62[125] fun gate_190 =>
    Extracted.DecafDtk.ltConstStepOne gate_190 gate_189[1] gate_62[124] fun gate_191 =>
    Extracted.DecafDtk.ltConstStepZero gate_191[0] gate_62[123] fun gate_192 =>
    Extracted.DecafDtk.ltConstStepZero gate_192 gate_62[122] fun gate_193 =>
    Extracted.DecafDtk.ltConstStepOne gate_193 gate_191[1] gate_62[121] fun gate_194 =>
    Extracted.DecafDtk.ltConstStepZero gate_194[0] gate_62[120] fun gate_195 =>
    Extracted.DecafDtk.ltConstStepOne gate_195 gate_194[1] gate_62[119] fun gate_196 =>
    Extracted.DecafDtk.ltConstStepZero gate_196[0] gate_62[118] fun gate_197 =>
    Extracted.DecafDtk.ltConstStepZero gate_197 gate_62[117] fun gate_198 =>
    Extracted.DecafDtk.ltConstStepOne gate_198 gate_196[1] gate_62[116] fun gate_199 =>
    Extracted.DecafDtk.ltConstStepZero gate_199[0] gate_62[115] fun gate_200 =>
    Extracted.DecafDtk.ltConstStepZero gate_200 gate_62[114] fun gate_201 =>
    Extracted.DecafDtk.ltConstStepOne gate_201 gate_199[1] gate_62[113] fun gate_202 =>
    Extracted.DecafDtk.ltConstStepOne gate_202[0] gate_202[1] gate_62[112] fun gate_203 =>
    Extracted.DecafDtk.ltConstStepOne gate_203[0] gate_203[1] gate_62[111] fun gate_204 =>
    Extracted.DecafDtk.ltConstStepZero gate_204[0] gate_62[110] fun gate_205 =>
    Extracted.DecafDtk.ltConstStepOne gate_205 gate_204[1] gate_62[109] fun gate_206 =>
    Extracted.DecafDtk.ltConstStepZero gate_206[0] gate_62[108] fun gate_207 =>
    Extracted.DecafDtk.ltConstStepZero gate_207 gate_62[107] fun gate_208 =>
    Extracted.DecafDtk.ltConstStepZero gate_208 gate_62[106] fun gate_209 =>
    Extracted.DecafDtk.ltConstStepOne gate_209 gate_206[1] gate_62[105] fun gate_210 =>
    Extracted.DecafDtk.ltConstStepOne gate_210[0] gate_210[1] gate_62[104] fun gate_211 =>
    Extracted.DecafDtk.ltConstStepOne gate_211[0] gate_211[1] gate_62[103] fun gate_212 =>
    Extracted.DecafDtk.ltConstStepZero gate_212[0] gate_62[102] fun gate_213 =>
    Extracted.DecafDtk.ltConstStepOne gate_213 gate_212[1] gate_62[101] fun gate_214 =>
    Extracted.DecafDtk.ltConstStepZero gate_214[0] gate_62[100] fun gate_215 =>
    Extracted.DecafDtk.ltConstStepOne gate_215 gate_214[1] gate_62[99] fun gate_216 =>
    Extracted.DecafDtk.ltConstStepOne gate_216[0] gate_216[1] gate_62[98] fun gate_217 =>
    Extracted.DecafDtk.ltConstStepOne gate_217[0] gate_217[1] gate_62[97] fun gate_218 =>
    Extracted.DecafDtk.ltConstStepOne gate_218[0] gate_218[1] gate_62[96] fun gate_219 =>
    Extracted.DecafDtk.ltConstStepOne gate_219[0] gate_219[1] gate_62[95] fun gate_220 =>
    Extracted.DecafDtk.ltConstStepOne gate_220[0] gate_220[1] gate_62[94] fun gate_221 =>
    Extracted.DecafDtk.ltConstStepZero gate_221[0] gate_62[93] fun gate_222 =>
    Extracted.DecafDtk.ltConstStepZero gate_222 gate_62[92] fun gate_223 =>
    Extracted.DecafDtk.ltConstStepZero gate_223 gate_62[91] fun gate_224 =>
    Extracted.DecafDtk.ltConstStepOne gate_224 gate_221[1] gate_62[90] fun gate_225 =>
    Extracted.DecafDtk.ltConstStepZero gate_225[0] gate_62[89] fun gate_226 =>
    Extracted.DecafDtk.ltConstStepZero gate_226 gate_62[88] fun gate_227 =>
    Extracted.DecafDtk.ltConstStepZero gate_227 gate_62[87] fun gate_228 =>
    Extracted.DecafDtk.ltConstStepZero gate_228 gate_62[86] fun gate_229 =>
    Extracted.DecafDtk.ltConstStepOne gate_229 gate_225[1] gate_62[85] fun gate_230 =>
    Extracted.DecafDtk.ltConstStepOne gate_230[0] gate_230[1] gate_62[84] fun gate_231 =>
    Extracted.DecafDtk.ltConstStepOne gate_231[0] gate_231[1] gate_62[83] fun gate_232 =>
    Extracted.DecafDtk.ltConstStepOne gate_232[0] gate_232[1] gate_62[82] fun gate_233 =>
    Extracted.DecafDtk.ltConstStepZero gate_233[0] gate_62[81] fun gate_234 =>
    Extracted.DecafDtk.ltConstStepZero gate_234 gate_62[80] fun gate_235 =>
    Extracted.DecafDtk.ltConstStepOne gate_235 gate_233[1] gate_62[79] fun gate_236 =>
    Extracted.DecafDtk.ltConstStepZero gate_236[0] gate_62[78] fun gate_237 =>
    Extracted.DecafDtk.ltConstStepZero gate_237 gate_62[77] fun gate_238 =>
    Extracted.DecafDtk.ltConstStepZero gate_238 gate_62[76] fun gate_239 =>
    Extracted.DecafDtk.ltConstStepOne gate_239 gate_236[1] gate_62[75] fun gate_240 =>
    Extracted.DecafDtk.ltConstStepZero gate_240[0] gate_62[74] fun gate_241 =>
    Extracted.DecafDtk.ltConstStepOne gate_241 gate_240[1] gate_62[73] fun gate_242 =>
    Extracted.DecafDtk.ltConstStepZero gate_242[0] gate_62[72] fun gate_243 =>
    Extracted.DecafDtk.ltConstStepOne gate_243 gate_242[1] gate_62[71] fun gate_244 =>
    Extracted.DecafDtk.ltConstStepOne gate_244[0] gate_244[1] gate_62[70] fun gate_245 =>
    Extracted.DecafDtk.ltConstStepOne gate_245[0] gate_245[1] gate_62[69] fun gate_246 =>
    Extracted.DecafDtk.ltConstStepOne gate_246[0] gate_246[1] gate_62[68] fun gate_247 =>
    Extracted.DecafDtk.ltConstStepOne gate_247[0] gate_247[1] gate_62[67] fun gate_248 =>
    Extracted.DecafDtk.ltConstStepOne gate_248[0] gate_248[1] gate_62[66] fun gate_249 =>
    Extracted.DecafDtk.ltConstStepOne gate_249[0] gate_249[1] gate_62[65] fun gate_250 =>
    Extracted.DecafDtk.ltConstStepZero gate_250[0] gate_62[64] fun gate_251 =>
    Extracted.DecafDtk.ltConstStepOne gate_251 gate_250[1] gate_62[63] fun gate_252 =>
    Extracted.DecafDtk.ltConstStepZero gate_252[0] gate_62[62] fun gate_253 =>
    Extracted.DecafDtk.ltConstStepOne gate_253 gate_252[1] gate_62[61] fun gate_254 =>
    Extracted.DecafDtk.ltConstStepOne gate_254[0] gate_254[1] gate_62[60] fun gate_255 =>
    Extracted.DecafDtk.ltConstStepOne gate_255[0] gate_255[1] gate_62[59] fun gate_256 =>
    Extracted.DecafDtk.ltConstStepZero gate_256[0] gate_62[58] fun gate_257 =>
    Extracted.DecafDtk.ltConstStepZero gate_257 gate_62[57] fun gate_258 =>
    Extracted.DecafDtk.ltConstStepOne gate_258 gate_256[1] gate_62[56] fun gate_259 =>
    Extracted.DecafDtk.ltConstStepZero gate_259[0] gate_62[55] fun gate_260 =>
    Extracted.DecafDtk.ltConstStepOne gate_260 gate_259[1] gate_62[54] fun gate_261 =>
    Extracted.DecafDtk.ltConstStepZero gate_261[0] gate_62[53] fun gate_262 =>
    Extracted.DecafDtk.ltConstStepOne gate_262 gate_261[1] gate_62[52] fun gate_263 =>
    Extracted.DecafDtk.ltConstStepOne gate_263[0] gate_263[1] gate_62[51] fun gate_264 =>
    Extracted.DecafDtk.ltConstStepZero gate_264[0] gate_62[50] fun gate_265 =>
    Extracted.DecafDtk.ltConstStepOne gate_265 gate_264[1] gate_62[49] fun gate_266 =>
    Extracted.DecafDtk.ltConstStepZero gate_266[0] gate_62[48] fun gate_267 =>
    Extracted.DecafDtk.ltConstStepOne gate_267 gate_266[1] gate_62[47] fun gate_268 =>
    Extracted.DecafDtk.ltConstStepOne gate_268[0] gate_268[1] gate_62[46] fun gate_269 =>
    Extracted.DecafDtk.ltConstStepOne gate_269[0] gate_269[1] gate_62[45] fun gate_270 =>
    Extracted.DecafDtk.ltConstStepZero gate_270[0] gate_62[44] fun gate_271 =>
    Extracted.DecafDtk.ltConstStepOne gate_271 gate_270[1] gate_62[43] fun gate_272 =>
    Extracted.DecafDtk.ltConstStepOne gate_272[0] gate_272[1] gate_62[42] fun gate_273 =>
    Extracted.DecafDtk.ltConstStepOne gate_273[0] gate_273[1] gate_62[41] fun gate_274 =>
    Extracted.DecafDtk.ltConstStepZero gate_274[0] gate_62[40] fun gate_275 =>
    Extracted.DecafDtk.ltConstStepOne gate_275 gate_274[1] gate_62[39] fun gate_276 =>
    Extracted.DecafDtk.ltConstStepZero gate_276[0] gate_62[38] fun gate_277 =>
    Extracted.DecafDtk.ltConstStepZero gate_277 gate_62[37] fun gate_278 =>
    Extracted.DecafDtk.ltConstStepOne gate_278 gate_276[1] gate_62[36] fun gate_279 =>
    Extracted.DecafDtk.ltConstStepOne gate_279[0] gate_279[1] gate_62[35] fun gate_280 =>
    Extracted.DecafDtk.ltConstStepZero gate_280[0] gate_62[34] fun gate_281 =>
    Extracted.DecafDtk.ltConstStepOne gate_281 gate_280[1] gate_62[33] fun gate_282 =>
    Extracted.DecafDtk.ltConstStepZero gate_282[0] gate_62[32] fun gate_283 =>
    Extracted.DecafDtk.ltConstStepOne gate_283 gate_282[1] gate_62[31] fun gate_284 =>
    Extracted.DecafDtk.ltConstStepOne gate_284[0] gate_284[1] gate_62[30] fun gate_285 =>
    Extracted.DecafDtk.ltConstStepZero gate_285[0] gate_62[29] fun gate_286 =>
    Extracted.DecafDtk.ltConstStepZero gate_286 gate_62[28] fun gate_287 =>
    Extracted.DecafDtk.ltConstStepZero gate_287 gate_62[27] fun gate_288 =>
    Extracted.DecafDtk.ltConstStepZero gate_288 gate_62[26] fun gate_289 =>
    Extracted.DecafDtk.ltConstStepOne gate_289 gate_285[1] gate_62[25] fun gate_290 =>
    Extracted.DecafDtk.ltConstStepOne gate_290[0] gate_290[1] gate_62[24] fun gate_291 =>
    Extracted.DecafDtk.ltConstStepZero gate_291[0] gate_62[23] fun gate_292 =>
    Extracted.DecafDtk.ltConstStepZero gate_292 gate_62[22] fun gate_293 =>
    Extracted.DecafDtk.ltConstStepOne gate_293 gate_291[1] gate_62[21] fun gate_294 =>
    Extracted.DecafDtk.ltConstStepOne gate_294[0] gate_294[1] gate_62[20] fun gate_295 =>
    Extracted.DecafDtk.ltConstStepOne gate_295[0] gate_295[1] gate_62[19] fun gate_296 =>
    Extracted.DecafDtk.ltConstStepOne gate_296[0] gate_296[1] gate_62[18] fun gate_297 =>
    Extracted.DecafDtk.ltConstStepOne gate_297[0] gate_297[1] gate_62[17] fun gate_298 =>
    Extracted.DecafDtk.ltConstStepOne gate_298[0] gate_298[1] gate_62[16] fun gate_299 =>
    Extracted.DecafDtk.ltConstStepOne gate_299[0] gate_299[1] gate_62[15] fun gate_300 =>
    Extracted.DecafDtk.ltConstStepOne gate_300[0] gate_300[1] gate_62[14] fun gate_301 =>
    Extracted.DecafDtk.ltConstStepZero gate_301[0] gate_62[13] fun gate_302 =>
    Extracted.DecafDtk.ltConstStepOne gate_302 gate_301[1] gate_62[12] fun gate_303 =>
    Extracted.DecafDtk.ltConstStepOne gate_303[0] gate_303[1] gate_62[11] fun gate_304 =>
    Extracted.DecafDtk.ltConstStepZero gate_304[0] gate_62[10] fun gate_305 =>
    Extracted.DecafDtk.ltConstStepZero gate_305 gate_62[9] fun gate_306 =>
    Extracted.DecafDtk.ltConstStepOne gate_306 gate_304[1] gate_62[8] fun gate_307 =>
    Extracted.DecafDtk.ltConstStepOne gate_307[0] gate_307[1] gate_62[7] fun gate_308 =>
    Extracted.DecafDtk.ltConstStepOne gate_308[0] gate_308[1] gate_62[6] fun gate_309 =>
    Extracted.DecafDtk.ltConstStepOne gate_309[0] gate_309[1] gate_62[5] fun gate_310 =>
    Extracted.DecafDtk.ltConstStepOne gate_310[0] gate_310[1] gate_62[4] fun gate_311 =>
    Extracted.DecafDtk.ltConstStepOne gate_311[0] gate_311[1] gate_62[3] fun gate_312 =>
    Extracted.DecafDtk.ltConstStepOne gate_312[0] gate_312[1] gate_62[2] fun gate_313 =>
    Extracted.DecafDtk.ltConstStepOne gate_313[0] gate_313[1] gate_62[1] fun gate_314 =>
    Extracted.DecafDtk.ltConstStepOne gate_314[0] gate_314[1] gate_62[0] fun gate_315 =>
    Extracted.DecafDtk.Gates.eq gate_315[1] (1:F) ∧
    Extracted.DecafDtk.ltConstStepZero (1:F) gate_62[252] fun gate_317 =>
    Extracted.DecafDtk.ltConstStepZero gate_317 gate_62[251] fun gate_318 =>
    Extracted.DecafDtk.ltConstStepZero gate_318 gate_62[250] fun gate_319 =>
    Extracted.DecafDtk.ltConstStepZero gate_319 gate_62[249] fun gate_320 =>
    Extracted.DecafDtk.ltConstStepZero gate_320 gate_62[248] fun gate_321 =>
    Extracted.DecafDtk.ltConstStepZero gate_321 gate_62[247] fun gate_322 =>
    Extracted.DecafDtk.ltConstStepZero gate_322 gate_62[246] fun gate_323 =>
    Extracted.DecafDtk.ltConstStepZero gate_323 gate_62[245] fun gate_324 =>
    Extracted.DecafDtk.ltConstStepZero gate_324 gate_62[244] fun gate_325 =>
    Extracted.DecafDtk.ltConstStepZero gate_325 gate_62[243] fun gate_326 =>
    Extracted.DecafDtk.ltConstStepZero gate_326 gate_62[242] fun gate_327 =>
    Extracted.DecafDtk.ltConstStepZero gate_327 gate_62[241] fun gate_328 =>
    Extracted.DecafDtk.ltConstStepZero gate_328 gate_62[240] fun gate_329 =>
    Extracted.DecafDtk.ltConstStepZero gate_329 gate_62[239] fun gate_330 =>
    Extracted.DecafDtk.ltConstStepZero gate_330 gate_62[238] fun gate_331 =>
    Extracted.DecafDtk.ltConstStepZero gate_331 gate_62[237] fun gate_332 =>
    Extracted.DecafDtk.ltConstStepZero gate_332 gate_62[236] fun gate_333 =>
    Extracted.DecafDtk.ltConstStepZero gate_333 gate_62[235] fun gate_334 =>
    Extracted.DecafDtk.ltConstStepZero gate_334 gate_62[234] fun gate_335 =>
    Extracted.DecafDtk.ltConstStepZero gate_335 gate_62[233] fun gate_336 =>
    Extracted.DecafDtk.ltConstStepZero gate_336 gate_62[232] fun gate_337 =>
    Extracted.DecafDtk.ltConstStepZero gate_337 gate_62[231] fun gate_338 =>
    Extracted.DecafDtk.ltConstStepZero gate_338 gate_62[230] fun gate_339 =>
    Extracted.DecafDtk.ltConstStepZero gate_339 gate_62[229] fun gate_340 =>
    Extracted.DecafDtk.ltConstStepZero gate_340 gate_62[228] fun gate_341 =>
    Extracted.DecafDtk.ltConstStepZero gate_341 gate_62[227] fun gate_342 =>
    Extracted.DecafDtk.ltConstStepZero gate_342 gate_62[226] fun gate_343 =>
    Extracted.DecafDtk.ltConstStepZero gate_343 gate_62[225] fun gate_344 =>
    Extracted.DecafDtk.ltConstStepZero gate_344 gate_62[224] fun gate_345 =>
    Extracted.DecafDtk.ltConstStepZero gate_345 gate_62[223] fun gate_346 =>
    Extracted.DecafDtk.ltConstStepZero gate_346 gate_62[222] fun gate_347 =>
    Extracted.DecafDtk.ltConstStepZero gate_347 gate_62[221] fun gate_348 =>
    Extracted.DecafDtk.ltConstStepZero gate_348 gate_62[220] fun gate_349 =>
    Extracted.DecafDtk.ltConstStepZero gate_349 gate_62[219] fun gate_350 =>
    Extracted.DecafDtk.ltConstStepZero gate_350 gate_62[218] fun gate_351 =>
    Extracted.DecafDtk.ltConstStepZero gate_351 gate_62[217] fun gate_352 =>
    Extracted.DecafDtk.ltConstStepZero gate_352 gate_62[216] fun gate_353 =>
    Extracted.DecafDtk.ltConstStepZero gate_353 gate_62[215] fun gate_354 =>
    Extracted.DecafDtk.ltConstStepZero gate_354 gate_62[214] fun gate_355 =>
    Extracted.DecafDtk.ltConstStepZero gate_355 gate_62[213] fun gate_356 =>
    Extracted.DecafDtk.ltConstStepZero gate_356 gate_62[212] fun gate_357 =>
    Extracted.DecafDtk.ltConstStepZero gate_357 gate_62[211] fun gate_358 =>
    Extracted.DecafDtk.ltConstStepZero gate_358 gate_62[210] fun gate_359 =>
    Extracted.DecafDtk.ltConstStepZero gate_359 gate_62[209] fun gate_360 =>
    Extracted.DecafDtk.ltConstStepZero gate_360 gate_62[208] fun gate_361 =>
    Extracted.DecafDtk.ltConstStepZero gate_361 gate_62[207] fun gate_362 =>
    Extracted.DecafDtk.ltConstStepZero gate_362 gate_62[206] fun gate_363 =>
    Extracted.DecafDtk.ltConstStepZero gate_363 gate_62[205] fun gate_364 =>
    Extracted.DecafDtk.ltConstStepZero gate_364 gate_62[204] fun gate_365 =>
    Extracted.DecafDtk.ltConstStepZero gate_365 gate_62[203] fun gate_366 =>
    Extracted.DecafDtk.ltConstStepZero gate_366 gate_62[202] fun gate_367 =>
    Extracted.DecafDtk.ltConstStepZero gate_367 gate_62[201] fun gate_368 =>
    Extracted.DecafDtk.ltConstStepZero gate_368 gate_62[200] fun gate_369 =>
    Extracted.DecafDtk.ltConstStepZero gate_369 gate_62[199] fun gate_370 =>
    Extracted.DecafDtk.ltConstStepZero gate_370 gate_62[198] fun gate_371 =>
    Extracted.DecafDtk.ltConstStepZero gate_371 gate_62[197] fun gate_372 =>
    Extracted.DecafDtk.ltConstStepZero gate_372 gate_62[196] fun gate_373 =>
    Extracted.DecafDtk.ltConstStepZero gate_373 gate_62[195] fun gate_374 =>
    Extracted.DecafDtk.ltConstStepZero gate_374 gate_62[194] fun gate_375 =>
    Extracted.DecafDtk.ltConstStepZero gate_375 gate_62[193] fun gate_376 =>
    Extracted.DecafDtk.ltConstStepZero gate_376 gate_62[192] fun gate_377 =>
    Extracted.DecafDtk.ltConstStepZero gate_377 gate_62[191] fun gate_378 =>
    Extracted.DecafDtk.ltConstStepZero gate_378 gate_62[190] fun gate_379 =>
    Extracted.DecafDtk.ltConstStepZero gate_379 gate_62[189] fun gate_380 =>
    Extracted.DecafDtk.ltConstStepZero gate_380 gate_62[188] fun gate_381 =>
    Extracted.DecafDtk.ltConstStepZero gate_381 gate_62[187] fun gate_382 =>
    Extracted.DecafDtk.ltConstStepZero gate_382 gate_62[186] fun gate_383 =>
    Extracted.DecafDtk.ltConstStepZero gate_383 gate_62[185] fun gate_384 =>
    Extracted.DecafDtk.ltConstStepZero gate_384 gate_62[184] fun gate_385 =>
    Extracted.DecafDtk.ltConstStepZero gate_385 gate_62[183] fun gate_386 =>
    Extracted.DecafDtk.ltConstStepZero gate_386 gate_62[182] fun gate_387 =>
    Extracted.DecafDtk.ltConstStepZero gate_387 gate_62[181] fun gate_388 =>
    Extracted.DecafDtk.ltConstStepZero gate_388 gate_62[180] fun gate_389 =>
    Extracted.DecafDtk.ltConstStepZero gate_389 gate_62[179] fun gate_390 =>
    Extracted.DecafDtk.ltConstStepZero gate_390 gate_62[178] fun gate_391 =>
    Extracted.DecafDtk.ltConstStepZero gate_391 gate_62[177] fun gate_392 =>
    Extracted.DecafDtk.ltConstStepZero gate_392 gate_62[176] fun gate_393 =>
    Extracted.DecafDtk.ltConstStepZero gate_393 gate_62[175] fun gate_394 =>
    Extracted.DecafDtk.ltConstStepZero gate_394 gate_62[174] fun gate_395 =>
    Extracted.DecafDtk.ltConstStepZero gate_395 gate_62[173] fun gate_396 =>
    Extracted.DecafDtk.ltConstStepZero gate_396 gate_62[172] fun gate_397 =>
    Extracted.DecafDtk.ltConstStepZero gate_397 gate_62[171] fun gate_398 =>
    Extracted.DecafDtk.ltConstStepZero gate_398 gate_62[170] fun gate_399 =>
    Extracted.DecafDtk.ltConstStepZero gate_399 gate_62[169] fun gate_400 =>
    Extracted.DecafDtk.ltConstStepZero gate_400 gate_62[168] fun gate_401 =>
    Extracted.DecafDtk.ltConstStepZero gate_401 gate_62[167] fun gate_402 =>
    Extracted.DecafDtk.ltConstStepZero gate_402 gate_62[166] fun gate_403 =>
    Extracted.DecafDtk.ltConstStepZero gate_403 gate_62[165] fun gate_404 =>
    Extracted.DecafDtk.ltConstStepZero gate_404 gate_62[164] fun gate_405 =>
    Extracted.DecafDtk.ltConstStepZero gate_405 gate_62[163] fun gate_406 =>
    Extracted.DecafDtk.ltConstStepZero gate_406 gate_62[162] fun gate_407 =>
    Extracted.DecafDtk.ltConstStepZero gate_407 gate_62[161] fun gate_408 =>
    Extracted.DecafDtk.ltConstStepZero gate_408 gate_62[160] fun gate_409 =>
    Extracted.DecafDtk.ltConstStepZero gate_409 gate_62[159] fun gate_410 =>
    Extracted.DecafDtk.ltConstStepZero gate_410 gate_62[158] fun gate_411 =>
    Extracted.DecafDtk.ltConstStepZero gate_411 gate_62[157] fun gate_412 =>
    Extracted.DecafDtk.ltConstStepZero gate_412 gate_62[156] fun gate_413 =>
    Extracted.DecafDtk.ltConstStepZero gate_413 gate_62[155] fun gate_414 =>
    Extracted.DecafDtk.ltConstStepZero gate_414 gate_62[154] fun gate_415 =>
    Extracted.DecafDtk.ltConstStepZero gate_415 gate_62[153] fun gate_416 =>
    Extracted.DecafDtk.ltConstStepZero gate_416 gate_62[152] fun gate_417 =>
    Extracted.DecafDtk.ltConstStepZero gate_417 gate_62[151] fun gate_418 =>
    Extracted.DecafDtk.ltConstStepZero gate_418 gate_62[150] fun gate_419 =>
    Extracted.DecafDtk.ltConstStepZero gate_419 gate_62[149] fun gate_420 =>
    Extracted.DecafDtk.ltConstStepZero gate_420 gate_62[148] fun gate_421 =>
    Extracted.DecafDtk.ltConstStepZero gate_421 gate_62[147] fun gate_422 =>
    Extracted.DecafDtk.ltConstStepZero gate_422 gate_62[146] fun gate_423 =>
    Extracted.DecafDtk.ltConstStepZero gate_423 gate_62[145] fun gate_424 =>
    Extracted.DecafDtk.ltConstStepZero gate_424 gate_62[144] fun gate_425 =>
    Extracted.DecafDtk.ltConstStepZero gate_425 gate_62[143] fun gate_426 =>
    Extracted.DecafDtk.ltConstStepZero gate_426 gate_62[142] fun gate_427 =>
    Extracted.DecafDtk.ltConstStepZero gate_427 gate_62[141] fun gate_428 =>
    Extracted.DecafDtk.ltConstStepZero gate_428 gate_62[140] fun gate_429 =>
    Extracted.DecafDtk.ltConstStepZero gate_429 gate_62[139] fun gate_430 =>
    Extracted.DecafDtk.ltConstStepZero gate_430 gate_62[138] fun gate_431 =>
    Extracted.DecafDtk.ltConstStepZero gate_431 gate_62[137] fun gate_432 =>
    Extracted.DecafDtk.ltConstStepZero gate_432 gate_62[136] fun gate_433 =>
    Extracted.DecafDtk.ltConstStepZero gate_433 gate_62[135] fun gate_434 =>
    Extracted.DecafDtk.ltConstStepZero gate_434 gate_62[134] fun gate_435 =>
    Extracted.DecafDtk.ltConstStepZero gate_435 gate_62[133] fun gate_436 =>
    Extracted.DecafDtk.ltConstStepZero gate_436 gate_62[132] fun gate_437 =>
    Extracted.DecafDtk.ltConstStepZero gate_437 gate_62[131] fun gate_438 =>
    Extracted.DecafDtk.ltConstStepZero gate_438 gate_62[130] fun gate_439 =>
    Extracted.DecafDtk.ltConstStepZero gate_439 gate_62[129] fun gate_440 =>
    Extracted.DecafDtk.ltConstStepZero gate_440 gate_62[128] fun gate_441 =>
    Extracted.DecafDtk.ltConstStepZero gate_441 gate_62[127] fun gate_442 =>
    Extracted.DecafDtk.ltConstStepZero gate_442 gate_62[126] fun gate_443 =>
    Extracted.DecafDtk.ltConstStepZero gate_443 gate_62[125] fun gate_444 =>
    Extracted.DecafDtk.ltConstStepZero gate_444 gate_62[124] fun gate_445 =>
    Extracted.DecafDtk.ltConstStepOne gate_445 (0:F) gate_62[123] fun gate_446 =>
    Extracted.DecafDtk.ltConstStepOne gate_446[0] gate_446[1] gate_62[122] fun gate_447 =>
    Extracted.DecafDtk.ltConstStepOne gate_447[0] gate_447[1] gate_62[121] fun gate_448 =>
    Extracted.DecafDtk.ltConstStepOne gate_448[0] gate_448[1] gate_62[120] fun gate_449 =>
    Extracted.DecafDtk.ltConstStepZero gate_449[0] gate_62[119] fun gate_450 =>
    Extracted.DecafDtk.ltConstStepOne gate_450 gate_449[1] gate_62[118] fun gate_451 =>
    Extracted.DecafDtk.ltConstStepZero gate_451[0] gate_62[117] fun gate_452 =>
    Extracted.DecafDtk.ltConstStepOne gate_452 gate_451[1] gate_62[116] fun gate_453 =>
    Extracted.DecafDtk.ltConstStepOne gate_453[0] gate_453[1] gate_62[115] fun gate_454 =>
    Extracted.DecafDtk.ltConstStepZero gate_454[0] gate_62[114] fun gate_455 =>
    Extracted.DecafDtk.ltConstStepOne gate_455 gate_454[1] gate_62[113] fun gate_456 =>
    Extracted.DecafDtk.ltConstStepOne gate_456[0] gate_456[1] gate_62[112] fun gate_457 =>
    Extracted.DecafDtk.ltConstStepOne gate_457[0] gate_457[1] gate_62[111] fun gate_458 =>
    Extracted.DecafDtk.ltConstStepOne gate_458[0] gate_458[1] gate_62[110] fun gate_459 =>
    Extracted.DecafDtk.ltConstStepOne gate_459[0] gate_459[1] gate_62[109] fun gate_460 =>
    Extracted.DecafDtk.ltConstStepZero gate_460[0] gate_62[108] fun gate_461 =>
    Extracted.DecafDtk.ltConstStepOne gate_461 gate_460[1] gate_62[107] fun gate_462 =>
    Extracted.DecafDtk.ltConstStepZero gate_462[0] gate_62[106] fun gate_463 =>
    Extracted.DecafDtk.ltConstStepZero gate_463 gate_62[105] fun gate_464 =>
    Extracted.DecafDtk.ltConstStepZero gate_464 gate_62[104] fun gate_465 =>
    Extracted.DecafDtk.ltConstStepZero gate_465 gate_62[103] fun gate_466 =>
    Extracted.DecafDtk.ltConstStepZero gate_466 gate_62[102] fun gate_467 =>
    Extracted.DecafDtk.ltConstStepOne gate_467 gate_462[1] gate_62[101] fun gate_468 =>
    Extracted.DecafDtk.ltConstStepOne gate_468[0] gate_468[1] gate_62[100] fun gate_469 =>
    Extracted.DecafDtk.ltConstStepOne gate_469[0] gate_469[1] gate_62[99] fun gate_470 =>
    Extracted.DecafDtk.ltConstStepOne gate_470[0] gate_470[1] gate_62[98] fun gate_471 =>
    Extracted.DecafDtk.ltConstStepOne gate_471[0] gate_471[1] gate_62[97] fun gate_472 =>
    Extracted.DecafDtk.ltConstStepOne gate_472[0] gate_472[1] gate_62[96] fun gate_473 =>
    Extracted.DecafDtk.ltConstStepOne gate_473[0] gate_473[1] gate_62[95] fun gate_474 =>
    Extracted.DecafDtk.ltConstStepZero gate_474[0] gate_62[94] fun gate_475 =>
    Extracted.DecafDtk.ltConstStepOne gate_475 gate_474[1] gate_62[93] fun gate_476 =>
    Extracted.DecafDtk.ltConstStepOne gate_476[0] gate_476[1] gate_62[92] fun gate_477 =>
    Extracted.DecafDtk.ltConstStepOne gate_477[0] gate_477[1] gate_62[91] fun gate_478 =>
    Extracted.DecafDtk.ltConstStepOne gate_478[0] gate_478[1] gate_62[90] fun gate_479 =>
    Extracted.DecafDtk.ltConstStepOne gate_479[0] gate_479[1] gate_62[89] fun gate_480 =>
    Extracted.DecafDtk.ltConstStepOne gate_480[0] gate_480[1] gate_62[88] fun gate_481 =>
    Extracted.DecafDtk.ltConstStepZero gate_481[0] gate_62[87] fun gate_482 =>
    Extracted.DecafDtk.ltConstStepZero gate_482 gate_62[86] fun gate_483 =>
    Extracted.DecafDtk.ltConstStepZero gate_483 gate_62[85] fun gate_484 =>
    Extracted.DecafDtk.ltConstStepZero gate_484 gate_62[84] fun gate_485 =>
    Extracted.DecafDtk.ltConstStepOne gate_485 gate_481[1] gate_62[83] fun gate_486 =>
    Extracted.DecafDtk.ltConstStepOne gate_486[0] gate_486[1] gate_62[82] fun gate_487 =>
    Extracted.DecafDtk.ltConstStepZero gate_487[0] gate_62[81] fun gate_488 =>
    Extracted.DecafDtk.ltConstStepOne gate_488 gate_487[1] gate_62[80] fun gate_489 =>
    Extracted.DecafDtk.ltConstStepOne gate_489[0] gate_489[1] gate_62[79] fun gate_490 =>
    Extracted.DecafDtk.ltConstStepOne gate_490[0] gate_490[1] gate_62[78] fun gate_491 =>
    Extracted.DecafDtk.ltConstStepZero gate_491[0] gate_62[77] fun gate_492 =>
    Extracted.DecafDtk.ltConstStepOne gate_492 gate_491[1] gate_62[76] fun gate_493 =>
    Extracted.DecafDtk.ltConstStepZero gate_493[0] gate_62[75] fun gate_494 =>
    Extracted.DecafDtk.ltConstStepOne gate_494 gate_493[1] gate_62[74] fun gate_495 =>
    Extracted.DecafDtk.ltConstStepZero gate_495[0] gate_62[73] fun gate_496 =>
    Extracted.DecafDtk.ltConstStepZero gate_496 gate_62[72] fun gate_497 =>
    Extracted.DecafDtk.ltConstStepZero gate_497 gate_62[71] fun gate_498 =>
    Extracted.DecafDtk.ltConstStepZero gate_498 gate_62[70] fun gate_499 =>
    Extracted.DecafDtk.ltConstStepZero gate_499 gate_62[69] fun gate_500 =>
    Extracted.DecafDtk.ltConstStepZero gate_500 gate_62[68] fun gate_501 =>
    Extracted.DecafDtk.ltConstStepZero gate_501 gate_62[67] fun gate_502 =>
    Extracted.DecafDtk.ltConstStepOne gate_502 gate_495[1] gate_62[66] fun gate_503 =>
    Extracted.DecafDtk.ltConstStepOne gate_503[0] gate_503[1] gate_62[65] fun gate_504 =>
    Extracted.DecafDtk.ltConstStepZero gate_504[0] gate_62[64] fun gate_505 =>
    Extracted.DecafDtk.ltConstStepZero gate_505 gate_62[63] fun gate_506 =>
    Extracted.DecafDtk.ltConstStepZero gate_506 gate_62[62] fun gate_507 =>
    Extracted.DecafDtk.ltConstStepOne gate_507 gate_504[1] gate_62[61] fun gate_508 =>
    Extracted.DecafDtk.ltConstStepZero gate_508[0] gate_62[60] fun gate_509 =>
    Extracted.DecafDtk.ltConstStepZero gate_509 gate_62[59] fun gate_510 =>
    Extracted.DecafDtk.ltConstStepOne gate_510 gate_508[1] gate_62[58] fun gate_511 =>
    Extracted.DecafDtk.ltConstStepZero gate_511[0] gate_62[57] fun gate_512 =>
    Extracted.DecafDtk.ltConstStepZero gate_512 gate_62[56] fun gate_513 =>
    Extracted.DecafDtk.ltConstStepOne gate_513 gate_511[1] gate_62[55] fun gate_514 =>
    Extracted.DecafDtk.ltConstStepZero gate_514[0] gate_62[54] fun gate_515 =>
    Extracted.DecafDtk.ltConstStepOne gate_515 gate_514[1] gate_62[53] fun gate_516 =>
    Extracted.DecafDtk.ltConstStepZero gate_516[0] gate_62[52] fun gate_517 =>
    Extracted.DecafDtk.ltConstStepZero gate_517 gate_62[51] fun gate_518 =>
    Extracted.DecafDtk.ltConstStepOne gate_518 gate_516[1] gate_62[50] fun gate_519 =>
    Extracted.DecafDtk.ltConstStepZero gate_519[0] gate_62[49] fun gate_520 =>
    Extracted.DecafDtk.ltConstStepOne gate_520 gate_519[1] gate_62[48] fun gate_521 =>
    Extracted.DecafDtk.ltConstStepOne gate_521[0] gate_521[1] gate_62[47] fun gate_522 =>
    Extracted.DecafDtk.ltConstStepOne gate_522[0] gate_522[1] gate_62[46] fun gate_523 =>
    Extracted.DecafDtk.ltConstStepZero gate_523[0] gate_62[45] fun gate_524 =>
    Extracted.DecafDtk.ltConstStepZero gate_524 gate_62[44] fun gate_525 =>
    Extracted.DecafDtk.ltConstStepZero gate_525 gate_62[43] fun gate_526 =>
    Extracted.DecafDtk.ltConstStepOne gate_526 gate_523[1] gate_62[42] fun gate_527 =>
    Extracted.DecafDtk.ltConstStepZero gate_527[0] gate_62[41] fun gate_528 =>
    Extracted.DecafDtk.ltConstStepOne gate_528 gate_527[1] gate_62[40] fun gate_529 =>
    Extracted.DecafDtk.ltConstStepOne gate_529[0] gate_529[1] gate_62[39] fun gate_530 =>
    Extracted.DecafDtk.ltConstStepZero gate_530[0] gate_62[38] fun gate_531 =>
    Extracted.DecafDtk.ltConstStepZero gate_531 gate_62[37] fun gate_532 =>
    Extracted.DecafDtk.ltConstStepOne gate_532 gate_530[1] gate_62[36] fun gate_533 =>
    Extracted.DecafDtk.ltConstStepZero gate_533[0] gate_62[35] fun gate_534 =>
    Extracted.DecafDtk.ltConstStepOne gate_534 gate_533[1] gate_62[34] fun gate_535 =>
    Extracted.DecafDtk.ltConstStepZero gate_535[0] gate_62[33] fun gate_536 =>
    Extracted.DecafDtk.ltConstStepZero gate_536 gate_62[32] fun gate_537 =>
    Extracted.DecafDtk.ltConstStepOne gate_537 gate_535[1] gate_62[31] fun gate_538 =>
    Extracted.DecafDtk.ltConstStepOne gate_538[0] gate_538[1] gate_62[30] fun gate_539 =>
    Extracted.DecafDtk.ltConstStepOne gate_539[0] gate_539[1] gate_62[29] fun gate_540 =>
    Extracted.DecafDtk.ltConstStepOne gate_540[0] gate_540[1] gate_62[28] fun gate_541 =>
    Extracted.DecafDtk.ltConstStepZero gate_541[0] gate_62[27] fun gate_542 =>
    Extracted.DecafDtk.ltConstStepZero gate_542 gate_62[26] fun gate_543 =>
    Extracted.DecafDtk.ltConstStepOne gate_543 gate_541[1] gate_62[25] fun gate_544 =>
    Extracted.DecafDtk.ltConstStepOne gate_544[0] gate_544[1] gate_62[24] fun gate_545 =>
    Extracted.DecafDtk.ltConstStepZero gate_545[0] gate_62[23] fun gate_546 =>
    Extracted.DecafDtk.ltConstStepZero gate_546 gate_62[22] fun gate_547 =>
    Extracted.DecafDtk.ltConstStepZero gate_547 gate_62[21] fun gate_548 =>
    Extracted.DecafDtk.ltConstStepZero gate_548 gate_62[20] fun gate_549 =>
    Extracted.DecafDtk.ltConstStepZero gate_549 gate_62[19] fun gate_550 =>
    Extracted.DecafDtk.ltConstStepZero gate_550 gate_62[18] fun gate_551 =>
    Extracted.DecafDtk.ltConstStepZero gate_551 gate_62[17] fun gate_552 =>
    Extracted.DecafDtk.ltConstStepZero gate_552 gate_62[16] fun gate_553 =>
    Extracted.DecafDtk.ltConstStepOne gate_553 gate_545[1] gate_62[15] fun gate_554 =>
    Extracted.DecafDtk.ltConstStepZero gate_554[0] gate_62[14] fun gate_555 =>
    Extracted.DecafDtk.ltConstStepZero gate_555 gate_62[13] fun gate_556 =>
    Extracted.DecafDtk.ltConstStepOne gate_556 gate_554[1] gate_62[12] fun gate_557 =>
    Extracted.DecafDtk.ltConstStepOne gate_557[0] gate_557[1] gate_62[11] fun gate_558 =>
    Extracted.DecafDtk.ltConstStepZero gate_558[0] gate_62[10] fun gate_559 =>
    Extracted.DecafDtk.ltConstStepZero gate_559 gate_62[9] fun gate_560 =>
    Extracted.DecafDtk.ltConstStepZero gate_560 gate_62[8] fun gate_561 =>
    Extracted.DecafDtk.ltConstStepZero gate_561 gate_62[7] fun gate_562 =>
    Extracted.DecafDtk.ltConstStepZero gate_562 gate_62[6] fun gate_563 =>
    Extracted.DecafDtk.ltConstStepZero gate_563 gate_62[5] fun gate_564 =>
    Extracted.DecafDtk.ltConstStepZero gate_564 gate_62[4] fun gate_565 =>
    Extracted.DecafDtk.ltConstStepZero gate_565 gate_62[3] fun gate_566 =>
    Extracted.DecafDtk.ltConstStepOne gate_566 gate_558[1] gate_62[2] fun gate_567 =>
    Extracted.DecafDtk.ltConstStepZero gate_567[0] gate_62[1] fun gate_568 =>
    Extracted.DecafDtk.ltConstStepOne gate_568 gate_567[1] gate_62[0] fun gate_569 =>
    ∃gate_570, gate_570 = Extracted.DecafDtk.Gates.sub IvkQuotient (4:F) ∧
    ∃gate_571, Extracted.DecafDtk.Gates.is_zero gate_570 gate_571 ∧
    ∃gate_572, gate_572 = Extracted.DecafDtk.Gates.sub (1:F) gate_569[1] ∧
    ∃gate_573, gate_573 = Extracted.DecafDtk.Gates.mul gate_571 gate_572 ∧
    Extracted.DecafDtk.Gates.eq gate_573 (0:F) ∧
    k

@[simp] theorem dtkStep_uncps
    (bit ax ay cx cy : F) (k : List.Vector F 4 → Prop) :
    Extracted.DecafDtk.scalarMulStep bit ax ay cx cy k ↔
      ∃ acc' cur',
        StepRel bit ⟨ax, ay⟩ ⟨cx, cy⟩ acc' cur' ∧
        k vec![acc'.x, acc'.y, cur'.x, cur'.y] := by
  simp only [Extracted.DecafDtk.scalarMulStep, StepRel, EdwardsBridge.addSpec, EdwardsBridge.doubleSpec, EdwardsBridge.a, EdwardsBridge.d,
    Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    exists_eq_left]
  constructor
  · rintro ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩
    exact ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
  · rintro ⟨⟨accX, accY⟩, ⟨curX, curY⟩,
      ⟨⟨sumX, sumY⟩, ⟨hsumX, hsumY⟩, hselX, hselY, ⟨hcurX, hcurY⟩⟩, hk⟩
    exact ⟨sumX, hsumX, sumY, hsumY, accX, hselX, accY, hselY, curX, hcurX,
      curY, hcurY, hk⟩

def dtkLadderK {n : ℕ} (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
  | 0, _, acc, cur => k vec![acc.x, acc.y, cur.x, cur.y]
  | fuel + 1, bitIndex, acc, cur =>
      Extracted.DecafDtk.scalarMulStep bits[bitIndex]! acc.x acc.y cur.x cur.y
        (fun state =>
          dtkLadderK bits k fuel (bitIndex + 1)
            ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)

theorem dtk_circuit_eq
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F) :
    Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
        IvkReduced IvkQuotient OutX OutY ↔
      dtkCircuitK Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
        (∃ bits, GatesDef.to_binary IvkReduced 251 bits ∧
          dtkLadderK bits (finalKWithOutputCurve OutX OutY) 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩) := by
  unfold Extracted.DecafDtk.circuit dtkCircuitK dtkLadderK finalKWithOutputCurve outputCurveGates
  simp (config := { maxSteps := 1000000 }) only [Extracted.DecafDtk.Gates,
    GatesGnark9, GatesGnark8, GatesDef.eq]
  rfl


/-! ### Pass-through lemmas: every prefix gadget reaches its continuation
(reusing sibling-namespace bridges via defeq casts) -/

theorem canonical_pass {In : F} {k : List.Vector F 253 → Prop}
    (h : Extracted.DecafDtk.canonicalFqBitsGadget In k) : ∃ v, k v := by
  have h' : Extracted.CanonicalFqBits.canonicalFqBitsGadget In k := h
  obtain ⟨x, -, -, hk⟩ :=
    Extracted.CanonicalFqBits.canonicalFqBitsGadget_canonical In k h'
  exact ⟨_, hk⟩

theorem canonical_value {In : F} {k : List.Vector F 253 → Prop}
    (h : Extracted.DecafDtk.canonicalFqBitsGadget In k) :
    ∃ (x : List.Vector Bool 253),
      GatesDef.to_binary In 253 (x.map toZMod) ∧
      (Fin.ofBitsLE x).val < Order ∧
      k (x.map toZMod) := by
  have h' : Extracted.CanonicalFqBits.canonicalFqBitsGadget In k := h
  exact Extracted.CanonicalFqBits.canonicalFqBitsGadget_canonical In k h'

theorem perm2_pass {d i0 i1 : F} {k : F → Prop}
    (h : Extracted.DecafDtk.poseidonPerm2 d i0 i1 k) : ∃ x, k x := by
  have h' : Extracted.Poseidon2.poseidonPerm2 d i0 i1 k := h
  exact ⟨_, (Poseidon2Bridge.perm2_uncps d i0 i1 k).mp h'⟩

theorem perm2_value {d i0 i1 : F} {k : F → Prop}
    (h : Extracted.DecafDtk.poseidonPerm2 d i0 i1 k) :
    k (Poseidon2Bridge.permSpec2 d i0 i1) := by
  have h' : Extracted.Poseidon2.poseidonPerm2 d i0 i1 k := h
  exact (Poseidon2Bridge.perm2_uncps d i0 i1 k).mp h'

private theorem dtk_is_zero_cases (a out : F) (h : Extracted.DecafDtk.Gates.is_zero a out) :
    (a ≠ 0 ∧ out = 0) ∨ (a = 0 ∧ out = 1) := h

private theorem dtk_is_bool_cases (x : F) (h : Extracted.DecafDtk.Gates.is_bool x) :
    x = 0 ∨ x = 1 := by
  rw [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8] at h
  dsimp [GatesDef.is_bool] at h
  rcases mul_eq_zero.mp h with h1 | h0
  · right; linear_combination -h1
  · left; exact h0

private theorem sqrt_zeta_case_mul (s inv den zeta : F)
    (hs : s * s = zeta * inv) (hinv : inv * den = 1) :
    s * s * den = zeta := by
  rw [hs]
  calc
    (zeta * inv) * den = zeta * (inv * den) := by ring
    _ = zeta := by rw [hinv, mul_one]

@[simp] theorem dtk_ltConstStepZero_uncps (pe bit : F) (k : F → Prop) :
    Extracted.DecafDtk.ltConstStepZero pe bit k ↔ k (pe * (1 - bit)) :=
  Extracted.IvkModR.ltConstStepZero_uncps pe bit k

@[simp] theorem dtk_ltConstStepOne_uncps (pe il bit : F) (k : List.Vector F 2 → Prop) :
    Extracted.DecafDtk.ltConstStepOne pe il bit k ↔
      k vec![pe * bit, il + pe * (1 - bit) - il * (pe * (1 - bit))] :=
  Extracted.IvkModR.ltConstStepOne_uncps pe il bit k

/-! ### Segment decomposition of `dtkCircuitK` (≤60 gates per lemma).
Each segment ends in an opaque continuation over the live cross-boundary
variables, so pass lemmas elaborate over small terms. -/

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

def dtkTailK (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop) : Prop :=
  dtkSeg1 bits (fun gate_100 =>
  dtkSeg2 bits gate_100 (fun gate_139 =>
  dtkSeg3 bits gate_139 (fun gate_177 =>
  dtkSeg4 bits gate_177 (fun gate_216 =>
  dtkSeg5 bits gate_216 (fun gate_254 =>
  dtkSeg6 bits gate_254 (fun gate_294 =>
  dtkSeg7 bits gate_294 (fun gate_332 =>
  dtkSeg8 bits gate_332 (fun gate_370 =>
  dtkSeg9 bits gate_370 (fun gate_408 =>
  dtkSeg10 bits gate_408 (fun gate_446 =>
  dtkSeg11 bits gate_446 (fun gate_486 =>
  dtkSeg12 bits gate_486 (fun gate_527 =>
  dtkSeg13 bits gate_527 (fun gate_569 =>
  dtkSeg14 gate_569 IvkQuotient k)))))))))))))

private def ivkGuard (IvkQuotient il : F) : Prop :=
    ∃gate_570, gate_570 = Extracted.IvkModR.Gates.sub IvkQuotient (4:F) ∧
    ∃gate_571, Extracted.IvkModR.Gates.is_zero gate_570 gate_571 ∧
    ∃gate_572, gate_572 = Extracted.IvkModR.Gates.sub (1:F) il ∧
    ∃gate_573, gate_573 = Extracted.IvkModR.Gates.mul gate_571 gate_572 ∧
    Extracted.IvkModR.Gates.eq gate_573 (0:F) ∧
    True

private theorem dtkSeg14_guard (gate_569 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg14 gate_569 IvkQuotient k) :
    ivkGuard IvkQuotient gate_569[1] := by
  unfold dtkSeg14 at h
  unfold ivkGuard
  simp only [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates, GatesGnark9, GatesGnark8,
    GatesDef.sub, GatesDef.mul, GatesDef.eq, GatesDef.is_zero] at h ⊢
  obtain ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, -⟩ := h
  exact ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, trivial⟩

private theorem dtkSeg13_ltcQ
    (bits : List.Vector F 253) (gate_527 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      42 gate_527[0] gate_527[1] := by
  change dtkSeg13 bits gate_527 (fun gate_569 => ivkGuard IvkQuotient gate_569[1])
  unfold dtkSeg13 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg14_guard _ _ _ h

private theorem dtkSeg12_ltcQ
    (bits : List.Vector F 253) (gate_486 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      83 gate_486[0] gate_486[1] := by
  change dtkSeg12 bits gate_486 (fun gate_527 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      42 gate_527[0] gate_527[1])
  unfold dtkSeg12 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg13_ltcQ _ _ _ _ h

private theorem dtkSeg11_ltcQ
    (bits : List.Vector F 253) (gate_446 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      123 gate_446[0] gate_446[1] := by
  change dtkSeg11 bits gate_446 (fun gate_486 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      83 gate_486[0] gate_486[1])
  unfold dtkSeg11 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg12_ltcQ _ _ _ _ h

private theorem dtkSeg10_ltcQ
    (bits : List.Vector F 253) (gate_408 : F) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      161 gate_408 (0:F) := by
  change dtkSeg10 bits gate_408 (fun gate_446 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      123 gate_446[0] gate_446[1])
  unfold dtkSeg10 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg11_ltcQ _ _ _ _ h

private theorem dtkSeg9_ltcQ
    (bits : List.Vector F 253) (gate_370 : F) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      199 gate_370 (0:F) := by
  change dtkSeg9 bits gate_370 (fun gate_408 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      161 gate_408 (0:F))
  unfold dtkSeg9 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg10_ltcQ _ _ _ _ h

private theorem dtkSeg8_ltcQ
    (bits : List.Vector F 253) (gate_332 : F) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      237 gate_332 (0:F) := by
  change dtkSeg8 bits gate_332 (fun gate_370 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      199 gate_370 (0:F))
  unfold dtkSeg8 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg9_ltcQ _ _ _ _ h

private theorem dtkSeg7_ltcRQ
    (bits : List.Vector F 253) (gate_294 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      21 gate_294[0] gate_294[1] := by
  change dtkSeg7 bits gate_294 (fun gate_332 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
      237 gate_332 (0:F))
  unfold dtkSeg7 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps, Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
    GatesGnark9, GatesGnark8, GatesDef.eq] at h ⊢
  exact ⟨h.1, dtkSeg8_ltcQ _ _ _ _ h.2⟩

private theorem dtkSeg6_ltcR
    (bits : List.Vector F 253) (gate_254 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      61 gate_254[0] gate_254[1] := by
  change dtkSeg6 bits gate_254 (fun gate_294 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      21 gate_294[0] gate_294[1])
  unfold dtkSeg6 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg7_ltcRQ _ _ _ _ h

private theorem dtkSeg5_ltcR
    (bits : List.Vector F 253) (gate_216 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      99 gate_216[0] gate_216[1] := by
  change dtkSeg5 bits gate_216 (fun gate_254 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      61 gate_254[0] gate_254[1])
  unfold dtkSeg5 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg6_ltcR _ _ _ _ h

private theorem dtkSeg4_ltcR
    (bits : List.Vector F 253) (gate_177 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      138 gate_177[0] gate_177[1] := by
  change dtkSeg4 bits gate_177 (fun gate_216 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      99 gate_216[0] gate_216[1])
  unfold dtkSeg4 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg5_ltcR _ _ _ _ h

private theorem dtkSeg3_ltcR
    (bits : List.Vector F 253) (gate_139 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg3 bits gate_139 (fun gate_177 =>
      dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k)))))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      176 gate_139[0] gate_139[1] := by
  change dtkSeg3 bits gate_139 (fun gate_177 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      138 gate_177[0] gate_177[1])
  unfold dtkSeg3 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg4_ltcR _ _ _ _ h

private theorem dtkSeg2_ltcR
    (bits : List.Vector F 253) (gate_100 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg2 bits gate_100 (fun gate_139 =>
      dtkSeg3 bits gate_139 (fun gate_177 =>
      dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 => dtkSeg14 gate_569 IvkQuotient k))))))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      215 gate_100[0] gate_100[1] := by
  change dtkSeg2 bits gate_100 (fun gate_139 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      176 gate_139[0] gate_139[1])
  unfold dtkSeg2 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg3_ltcR _ _ _ _ h

private theorem dtkSeg1_ltcR
    (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg1 bits (fun gate_100 =>
      dtkSeg2 bits gate_100 (fun gate_139 =>
      dtkSeg3 bits gate_139 (fun gate_177 =>
      dtkSeg4 bits gate_177 (fun gate_216 =>
      dtkSeg5 bits gate_216 (fun gate_254 =>
      dtkSeg6 bits gate_254 (fun gate_294 =>
      dtkSeg7 bits gate_294 (fun gate_332 =>
      dtkSeg8 bits gate_332 (fun gate_370 =>
      dtkSeg9 bits gate_370 (fun gate_408 =>
      dtkSeg10 bits gate_408 (fun gate_446 =>
      dtkSeg11 bits gate_446 (fun gate_486 =>
      dtkSeg12 bits gate_486 (fun gate_527 =>
      dtkSeg13 bits gate_527 (fun gate_569 =>
      dtkSeg14 gate_569 IvkQuotient k)))))))))))))) :
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      253 (1:F) (0:F) := by
  change dtkSeg1 bits (fun gate_100 =>
    Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      215 gate_100[0] gate_100[1])
  unfold dtkSeg1 at h ⊢
  simp (config := { maxSteps := 200000 }) only [dtk_ltConstStepZero_uncps,
    dtk_ltConstStepOne_uncps] at h ⊢
  exact dtkSeg2_ltcR _ _ _ _ h

theorem dtkSeg1_pass (bits : List.Vector F 253) (k : List.Vector F 2 → Prop)
    (h : dtkSeg1 bits k) : ∃ v, k v := by
  unfold dtkSeg1 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg2_pass (bits : List.Vector F 253) (gate_100 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg2 bits gate_100 k) : ∃ v, k v := by
  unfold dtkSeg2 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg3_pass (bits : List.Vector F 253) (gate_139 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg3 bits gate_139 k) : ∃ v, k v := by
  unfold dtkSeg3 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg4_pass (bits : List.Vector F 253) (gate_177 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg4 bits gate_177 k) : ∃ v, k v := by
  unfold dtkSeg4 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg5_pass (bits : List.Vector F 253) (gate_216 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg5 bits gate_216 k) : ∃ v, k v := by
  unfold dtkSeg5 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg6_pass (bits : List.Vector F 253) (gate_254 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg6 bits gate_254 k) : ∃ v, k v := by
  unfold dtkSeg6 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg7_pass (bits : List.Vector F 253) (gate_294 : List.Vector F 2) (k : F → Prop)
    (h : dtkSeg7 bits gate_294 k) : ∃ v, k v := by
  unfold dtkSeg7 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg8_pass (bits : List.Vector F 253) (gate_332 : F) (k : F → Prop)
    (h : dtkSeg8 bits gate_332 k) : ∃ v, k v := by
  unfold dtkSeg8 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg9_pass (bits : List.Vector F 253) (gate_370 : F) (k : F → Prop)
    (h : dtkSeg9 bits gate_370 k) : ∃ v, k v := by
  unfold dtkSeg9 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg10_pass (bits : List.Vector F 253) (gate_408 : F) (k : List.Vector F 2 → Prop)
    (h : dtkSeg10 bits gate_408 k) : ∃ v, k v := by
  unfold dtkSeg10 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg11_pass (bits : List.Vector F 253) (gate_446 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg11 bits gate_446 k) : ∃ v, k v := by
  unfold dtkSeg11 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg12_pass (bits : List.Vector F 253) (gate_486 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg12 bits gate_486 k) : ∃ v, k v := by
  unfold dtkSeg12 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg13_pass (bits : List.Vector F 253) (gate_527 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg13 bits gate_527 k) : ∃ v, k v := by
  unfold dtkSeg13 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg14_pass (gate_569 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg14 gate_569 IvkQuotient k) : k := by
  unfold dtkSeg14 at h
  repeat obtain ⟨_, h⟩ := h
  exact h

theorem dtkTailK_laddersTail (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop)
    (h : dtkTailK bits IvkQuotient k) :
    Extracted.IvkModR.laddersTail IvkQuotient bits ∧ k := by
  unfold dtkTailK at h
  constructor
  · change Extracted.IvkModR.ltcRec bits Extracted.IvkModR.rBit
      (fun il1 =>
        Extracted.IvkModR.Gates.eq il1 (1:F) ∧
        Extracted.IvkModR.ltcRec bits Extracted.IvkModR.q4Bit (ivkGuard IvkQuotient)
          253 (1:F) (0:F))
      253 (1:F) (0:F)
    exact dtkSeg1_ltcR bits IvkQuotient k h
  · obtain ⟨gate_100, h1⟩ := dtkSeg1_pass bits _ h
    obtain ⟨gate_139, h2⟩ := dtkSeg2_pass bits gate_100 _ h1
    obtain ⟨gate_177, h3⟩ := dtkSeg3_pass bits gate_139 _ h2
    obtain ⟨gate_216, h4⟩ := dtkSeg4_pass bits gate_177 _ h3
    obtain ⟨gate_254, h5⟩ := dtkSeg5_pass bits gate_216 _ h4
    obtain ⟨gate_294, h6⟩ := dtkSeg6_pass bits gate_254 _ h5
    obtain ⟨gate_332, h7⟩ := dtkSeg7_pass bits gate_294 _ h6
    obtain ⟨gate_370, h8⟩ := dtkSeg8_pass bits gate_332 _ h7
    obtain ⟨gate_408, h9⟩ := dtkSeg9_pass bits gate_370 _ h8
    obtain ⟨gate_446, h10⟩ := dtkSeg10_pass bits gate_408 _ h9
    obtain ⟨gate_486, h11⟩ := dtkSeg11_pass bits gate_446 _ h10
    obtain ⟨gate_527, h12⟩ := dtkSeg12_pass bits gate_486 _ h11
    obtain ⟨gate_569, h13⟩ := dtkSeg13_pass bits gate_527 _ h12
    exact dtkSeg14_pass gate_569 IvkQuotient k h13

theorem dtkSeg0_pass
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F)
    (k : List.Vector F 253 → Prop)
    (h : dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient k) :
    EdwardsBridge.onCurve ⟨AkX, AkY⟩ ∧ ∃ v, k v := by
  unfold dtkSeg0 at h
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurve, h⟩ := h
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg0 hg1 hg2 hg3 hg4 hg5 hcurve
  subst hg0 hg1 hg2 hg3 hg4 hg5
  constructor
  · show -(AkX * AkX) + AkY * AkY = 1 + EdwardsBridge.d * (AkX * AkX) * (AkY * AkY)
    simp only [EdwardsBridge.d]
    linear_combination hcurve
  · iterate 80 obtain ⟨_, h⟩ := h
    obtain ⟨_, h⟩ := canonical_pass h
    iterate 14 obtain ⟨_, h⟩ := h
    obtain ⟨_, h⟩ := canonical_pass h
    iterate 6 obtain ⟨_, h⟩ := h
    obtain ⟨_, h⟩ := perm2_pass h
    repeat obtain ⟨_, h⟩ := h
    exact ⟨_, h⟩

theorem dtkSeg0_provenance
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F) (k : Prop)
    (h : dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
      (fun bits => dtkTailK bits IvkQuotient k)) :
    EdwardsBridge.onCurve ⟨AkX, AkY⟩ ∧
    Decaf377Assumptions.DiversifiedTransmissionKeyIvkProvenance
      Nk ⟨AkX, AkY⟩ IvkReduced IvkQuotient ∧
    k := by
  unfold dtkSeg0 at h
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurve,
    gd0, hgd0, gd1, hgd1, gd2, hgd2, gd3, hgd3, gd4, hgd4, gd5, hgd5, hcurved,
    ge0, hge0, ge1, hge1, ge2, hge2, ge3, hge3, ge4, hge4, ge5, hge5, hcurvee,
    g7, hg7, g8, hg8, g9, hg9, g10, hg10, g11, hg11, g12, hg12,
    hwsb, g14, hg14, g15, hg15, g16, hg16, g17, hg17, g18, hg18, h18z,
    g20, hg20, g21, hg21, g22, hg22, g23, hg23, g24, hg24, g25, hg25, h25z,
    g27, hg27, h27z, g29, hg29, g30, hg30, g31, hg31, h31z,
    g33, hg33, g34, hg34, h34, g36, hg36, habs1⟩ := h
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg0 hg1 hg2 hg3 hg4 hg5 hcurve hge0
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg7 hg8 hg9 hg10 hg11 hg12 hg17
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg18 h18z hg20 hg21 hg24 hg25 h25z
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg27 h27z hg29 hg30 hg31 h31z hg33
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg34 h34 hg36
  subst hg0 hg1 hg2 hg3 hg4 hg5 hge0 hg7 hg8 hg9 hg10 hg11 hg12 hg17 hg18
  subst hg20 hg21 hg24 hg25 hg27 hg29 hg30 hg31 hg33 hg34 hg36
  have honc : EdwardsBridge.onCurve ⟨AkX, AkY⟩ := by
    show -(AkX * AkX) + AkY * AkY = 1 + EdwardsBridge.d * (AkX * AkX) * (AkY * AkY)
    simp only [EdwardsBridge.d]
    linear_combination hcurve
  obtain ⟨x1, hbin1, hlt1, hk1⟩ := canonical_value habs1
  obtain ⟨g38, hg38, g39, hg39, g40, hsel1, g41, hg41, g42, hg42, g43, hg43,
    g44, hg44, habs2⟩ := hk1
  obtain ⟨x2, hbin2, hlt2, hk2⟩ := canonical_value habs2
  obtain ⟨g46, hg46, g47, hg47, g48, hsel2, hposeidon⟩ := hk2
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq] at hg38 hg39 hg41
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq] at hg42 hg43 hg44 hg46 hg47
  subst hg38 hg39 hg46 hg47
  have hrel : Extracted.DecafCompressToField.Relation AkX AkY g48 := by
    refine ⟨?_, SqrtRatio, ?_, ?_⟩
    · exact hcurve
    · unfold Extracted.DecafCompressToField.SqrtCase
        Extracted.DecafCompressToField.den Extracted.DecafCompressToField.u1
        Extracted.DecafCompressToField.aMinusD Extracted.DecafCompressToField.zeta
        Extracted.DecafCompressToField.zetaNat
      simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.select,
        GatesDef.inv, GatesDef.and] at hg15 hg16 hg22 hg23
      obtain ⟨-, h15⟩ := hg15
      obtain ⟨-, hinv⟩ := hg16
      obtain ⟨-, -, h22⟩ := hg22
      obtain ⟨-, -, h23⟩ := hg23
      change F at g16
      rcases dtk_is_zero_cases _ _ hg14 with ⟨hdne, h14⟩ | ⟨hdz, h14⟩
      · subst h14
        rw [h15] at hinv
        simp only [zero_mul, sub_zero] at hinv
        rcases dtk_is_bool_cases _ hwsb with hb | hb
        · right; right
          refine ⟨hdne, ?_⟩
          have h23' : g23 = 1 := by rw [h23, hb]; ring
          rw [h23', one_mul, sub_eq_zero] at h31z
          exact sqrt_zeta_case_mul SqrtRatio g16
            ((AkX + AkX * AkY) * (AkX - AkX * AkY) *
              8444461749428370424248824938781546531375899335154063827935233455917409236019 *
              (AkX * AkX))
            2841681278031794617739547238867782961338435681360110683443920362658525667816 h31z hinv
        · left
          refine ⟨hdne, ?_⟩
          rw [hb, one_mul, sub_eq_zero] at h25z
          rw [h25z]
          exact hinv
      · right; left
        subst h14
        refine ⟨hdz, ?_⟩
        rcases dtk_is_bool_cases _ hwsb with hb | hb
        · have h22' : g22 = 1 := by rw [h22, hb]; ring
          rw [h22', one_mul] at h27z
          exact mul_self_eq_zero.mp h27z
        · exfalso
          rw [hb, one_mul] at h18z
          exact one_ne_zero h18z
    · have hsel1D : Extracted.DecafDtk.Gates.select
          (Extracted.DecafDtk.Gates.sub 1 (toZMod x1.head))
          (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY)))
          (Extracted.DecafDtk.Gates.neg
            (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY)))) g40 := by
        simpa [List.Vector.getElem_def', List.Vector.get_zero, List.Vector.head_map,
          Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.sub,
          GatesDef.neg] using hsel1
      have hsel1' : Extracted.DecafCompressToField.Gates.select
          (Extracted.DecafCompressToField.Gates.sub 1 (toZMod x1.head))
          (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY)))
          (Extracted.DecafCompressToField.Gates.neg
            (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY)))) g40 := by
        simpa [Extracted.DecafDtk.Gates, Extracted.DecafCompressToField.Gates,
          GatesGnark9, GatesGnark8] using hsel1D
      have h40 : g40 =
          Extracted.DecafCompressToField.absF
            (SqrtRatio * ((AkX + AkX * AkY) * (AkX - AkX * AkY))) :=
        Extracted.DecafCompressToField.abs_select_eq _ _ x1 hbin1 hlt1 hsel1'
      have hsel2D : Extracted.DecafDtk.Gates.select
          (Extracted.DecafDtk.Gates.sub 1 (toZMod x2.head)) g44
          (Extracted.DecafDtk.Gates.neg g44) g48 := by
        simpa [List.Vector.getElem_def', List.Vector.get_zero, List.Vector.head_map,
          Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.sub,
          GatesDef.neg] using hsel2
      have hsel2' : Extracted.DecafCompressToField.Gates.select
          (Extracted.DecafCompressToField.Gates.sub 1 (toZMod x2.head)) g44
          (Extracted.DecafCompressToField.Gates.neg g44) g48 := by
        simpa [Extracted.DecafDtk.Gates, Extracted.DecafCompressToField.Gates,
          GatesGnark9, GatesGnark8] using hsel2D
      have h48 : g48 = Extracted.DecafCompressToField.absF g44 :=
        Extracted.DecafCompressToField.abs_select_eq _ _ x2 hbin2 hlt2 hsel2'
      rw [h48, hg44, hg43, hg42, hg41, h40]
      simp only [Extracted.DecafCompressToField.outOf, Extracted.DecafCompressToField.u1,
        Extracted.DecafCompressToField.aMinusD]
  have hpose := perm2_value hposeidon
  obtain ⟨g50, hg50, g51, hg51, hval, g53, hg53, g54, hg54, g55, hg55,
    g56, hg56, g57, hg57, g58, hg58, g59, hg59, g60, hg60, hvanish,
    bits, hbin, htail⟩ := hpose
  have htail' := dtkTailK_laddersTail bits IvkQuotient k htail
  let ivkModQ := Poseidon2Bridge.permSpec2
    (9361307723838134966014044876631201920149619:F) Nk g48
  have hmodCircuit : Extracted.IvkModR.circuit ivkModQ IvkQuotient IvkReduced := by
    rw [Extracted.IvkModR.circuit_eq_recursive]
    refine ⟨g50, ?_, g51, ?_, ?_, g53, ?_, g54, ?_, g55, ?_, g56, ?_,
      g57, ?_, g58, ?_, g59, ?_, g60, ?_, ?_, bits, ?_, htail'.1⟩
    · simpa [ivkModQ, Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg50
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg51
    · simpa [ivkModQ, Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hval
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg53
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg54
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg55
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg56
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg57
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg58
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg59
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hg60
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hvanish
    · simpa [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates,
        GatesGnark9, GatesGnark8] using hbin
  have hmod := Extracted.IvkModR.circuit_sound ivkModQ IvkQuotient IvkReduced hmodCircuit
  refine ⟨honc, ?_, htail'.2⟩
  refine ⟨g48, hrel, ?_, ?_⟩
  · simpa [ivkModQ, Decaf377Assumptions.dtkIvkModQ, Poseidon377.ivkDomain] using hmod.1
  · simpa [ivkModQ, Decaf377Assumptions.dtkIvkModQ, Poseidon377.ivkDomain] using hmod.2

/-- The prefix always passes through to its continuation and forces the
curve equation on `ak`. Proven segmentwise to keep elaboration linear. -/
theorem dtkCircuitK_semantic
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F) (k : Prop)
    (h : dtkCircuitK Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient k) :
    EdwardsBridge.onCurve ⟨AkX, AkY⟩ ∧ k := by
  have h0 : dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient (fun gate_62 =>
      dtkSeg1 gate_62 (fun gate_100 =>
      dtkSeg2 gate_62 gate_100 (fun gate_139 =>
      dtkSeg3 gate_62 gate_139 (fun gate_177 =>
      dtkSeg4 gate_62 gate_177 (fun gate_216 =>
      dtkSeg5 gate_62 gate_216 (fun gate_254 =>
      dtkSeg6 gate_62 gate_254 (fun gate_294 =>
      dtkSeg7 gate_62 gate_294 (fun gate_332 =>
      dtkSeg8 gate_62 gate_332 (fun gate_370 =>
      dtkSeg9 gate_62 gate_370 (fun gate_408 =>
      dtkSeg10 gate_62 gate_408 (fun gate_446 =>
      dtkSeg11 gate_62 gate_446 (fun gate_486 =>
      dtkSeg12 gate_62 gate_486 (fun gate_527 =>
      dtkSeg13 gate_62 gate_527 (fun gate_569 =>
      dtkSeg14 gate_569 IvkQuotient k)))))))))))))) := h
  obtain ⟨honc, gate_62, h⟩ := dtkSeg0_pass _ _ _ _ _ _ _ _ _ _ h0
  obtain ⟨gate_100, h⟩ := dtkSeg1_pass _ _ h
  obtain ⟨gate_139, h⟩ := dtkSeg2_pass _ _ _ h
  obtain ⟨gate_177, h⟩ := dtkSeg3_pass _ _ _ h
  obtain ⟨gate_216, h⟩ := dtkSeg4_pass _ _ _ h
  obtain ⟨gate_254, h⟩ := dtkSeg5_pass _ _ _ h
  obtain ⟨gate_294, h⟩ := dtkSeg6_pass _ _ _ h
  obtain ⟨gate_332, h⟩ := dtkSeg7_pass _ _ _ h
  obtain ⟨gate_370, h⟩ := dtkSeg8_pass _ _ _ h
  obtain ⟨gate_408, h⟩ := dtkSeg9_pass _ _ _ h
  obtain ⟨gate_446, h⟩ := dtkSeg10_pass _ _ _ h
  obtain ⟨gate_486, h⟩ := dtkSeg11_pass _ _ _ h
  obtain ⟨gate_527, h⟩ := dtkSeg12_pass _ _ _ h
  obtain ⟨gate_569, h⟩ := dtkSeg13_pass _ _ _ h
  exact ⟨honc, dtkSeg14_pass _ _ _ h⟩

theorem dtkLadderK_mono {n : ℕ} {bits : List.Vector F n}
    {k1 k2 : List.Vector F 4 → Prop} (hk : ∀ s, k1 s → k2 s) :
    ∀ fuel bitIndex acc cur,
      dtkLadderK bits k1 fuel bitIndex acc cur →
      dtkLadderK bits k2 fuel bitIndex acc cur := by
  intro fuel
  induction fuel with
  | zero => intro bitIndex acc cur h; exact hk _ h
  | succ fuel ih =>
    intro bitIndex acc cur h
    rw [dtkLadderK, dtkStep_uncps] at h
    rw [dtkLadderK, dtkStep_uncps]
    obtain ⟨acc', cur', hrel, htail⟩ := h
    refine ⟨acc', cur', hrel, ?_⟩
    have htail1 : dtkLadderK bits k1 fuel (bitIndex + 1) acc' cur' := by simpa using htail
    have htail2 := ih (bitIndex + 1) acc' cur' htail1
    simpa using htail2

theorem dtkLadderK_final_semantic {n : ℕ} (bits : List.Vector Bool n)
    (outX outY : F) :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      EdwardsBridge.onCurve acc →
      EdwardsBridge.onCurve cur →
      dtkLadderK (bits.map toZMod) (finalK outX outY) fuel bitIndex acc cur →
        EdwardsBridge.onCurve (scalarMulFromBits bits fuel bitIndex acc cur) ∧
        finalK outX outY vec![
          (scalarMulFromBits bits fuel bitIndex acc cur).x,
          (scalarMulFromBits bits fuel bitIndex acc cur).y,
          cur.x,
          cur.y] := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur _ hacc _ h
    have hk : finalK outX outY vec![acc.x, acc.y, cur.x, cur.y] := by
      simpa [dtkLadderK] using h
    exact ⟨hacc, hk⟩
  | succ fuel ih =>
    intro bitIndex acc cur hbound hacc hcur h
    rw [dtkLadderK] at h
    have hlt : bitIndex < n := by omega
    have hbit :
        ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
      rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
        getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
    rw [hbit] at h
    have hstep := (dtkStep_uncps (toZMod bits[bitIndex]!) acc.x acc.y cur.x cur.y
      (fun state =>
        dtkLadderK (bits.map toZMod) (finalK outX outY) fuel (bitIndex + 1)
          ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)).mp h
    rcases hstep with ⟨acc', cur', hrel, htail⟩
    have htail' :
        dtkLadderK (bits.map toZMod) (finalK outX outY) fuel (bitIndex + 1)
          acc' cur' := by
      simpa using htail
    have hsem := stepRel_semantic bits[bitIndex]! acc cur acc' cur' hrel hacc hcur
    rcases hsem with ⟨hacc', hcur', haccOn, hcurOn⟩
    have htailSem := ih (bitIndex + 1) acc' cur' (by omega) haccOn hcurOn htail'
    simpa [scalarMulFromBits, finalK, hacc', hcur'] using htailSem

theorem point_eq_of_finalK {p : EdwardsBridge.Point} {outX outY z w : F}
    (h : finalK outX outY vec![p.x, p.y, z, w]) :
    p = ⟨outX, outY⟩ := by
  change p.x = outX ∧ p.y = outY ∧ True at h
  rcases h with ⟨hx, hy, -⟩
  cases p
  simp only at hx hy ⊢
  cases hx
  cases hy
  rfl

/-! ### Final theorems -/

theorem dtk_circuit_ak_onCurve
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (h : Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY) :
    EdwardsBridge.onCurve ⟨AkX, AkY⟩ := by
  rw [dtk_circuit_eq] at h
  exact (dtkCircuitK_semantic _ _ _ _ _ _ _ _ _ _ h).1

theorem dtk_circuit_ivk_provenance
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (h : Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY) :
    Decaf377Assumptions.DiversifiedTransmissionKeyIvkProvenance
      Nk ⟨AkX, AkY⟩ IvkReduced IvkQuotient := by
  rw [dtk_circuit_eq] at h
  exact (dtkSeg0_provenance Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
    (∃ bits, GatesDef.to_binary IvkReduced 251 bits ∧
      dtkLadderK bits (finalKWithOutputCurve OutX OutY) 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩) h).2.1

theorem dtk_circuit_sound
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (hdiv : EdwardsBridge.onCurve ⟨DivGenX, DivGenY⟩)
    (h : Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY) :
    Decaf377Assumptions.Point.mk OutX OutY =
      Decaf377Assumptions.dtk Nk ⟨AkX, AkY⟩ ⟨DivGenX, DivGenY⟩ IvkReduced IvkQuotient := by
  rw [dtk_circuit_eq] at h
  obtain ⟨-, bits, hbin, hladder⟩ := dtkCircuitK_semantic _ _ _ _ _ _ _ _ _ _ h
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Order) pow251_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨IvkReduced.val, hscalarLt⟩ : Fin (2 ^ 251))
  have hladderF := dtkLadderK_mono (finalKWithOutputCurve_implies_finalK OutX OutY)
    251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩ hladder
  have hsem := dtkLadderK_final_semantic bitsBool OutX OutY 251 0 ⟨0, 1⟩
    ⟨DivGenX, DivGenY⟩ (by omega) EdwardsBridge.identity_onCurve hdiv hladderF
  rcases hsem with ⟨-, hfinal⟩
  have hpoint : scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩ =
      ⟨OutX, OutY⟩ := point_eq_of_finalK hfinal
  have hmodel := scalarMulFromBits_toA bitsBool IvkReduced 251 0 ⟨0, 1⟩
    ⟨DivGenX, DivGenY⟩ (by omega)
    (by
      intro i _ hi
      exact toBitsLE_get!_eq_testBit IvkReduced.val hscalarLt i hi)
  rw [hpoint] at hmodel
  simpa [toA, Decaf377Assumptions.dtk, Decaf377Assumptions.scalarMulLE,
    Decaf377Assumptions.identity] using hmodel

theorem dtk_circuit_onCurve
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient OutX OutY : F)
    (hdiv : EdwardsBridge.onCurve ⟨DivGenX, DivGenY⟩)
    (h : Extracted.DecafDtk.circuit Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio
      IvkReduced IvkQuotient OutX OutY) :
    EdwardsBridge.onCurve ⟨OutX, OutY⟩ := by
  rw [dtk_circuit_eq] at h
  obtain ⟨-, bits, hbin, hladder⟩ := dtkCircuitK_semantic _ _ _ _ _ _ _ _ _ _ h
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Order) pow251_lt_order] at hbin
  rcases hbin with ⟨hscalarLt, rfl⟩
  let bitsBool := Fin.toBitsLE (⟨IvkReduced.val, hscalarLt⟩ : Fin (2 ^ 251))
  have hladderF := dtkLadderK_mono (finalKWithOutputCurve_implies_finalK OutX OutY)
    251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩ hladder
  have hsem := dtkLadderK_final_semantic bitsBool OutX OutY 251 0 ⟨0, 1⟩
    ⟨DivGenX, DivGenY⟩ (by omega) EdwardsBridge.identity_onCurve hdiv hladderF
  rcases hsem with ⟨hon, hfinal⟩
  have hpoint : scalarMulFromBits bitsBool 251 0 ⟨0, 1⟩ ⟨DivGenX, DivGenY⟩ =
      ⟨OutX, OutY⟩ := point_eq_of_finalK hfinal
  rwa [hpoint] at hon

/-- The compress mirror's leading gates force the curve equation on its input. -/
theorem compress_circuit_onCurve (X Y WasSquare SqrtRatio Out : F)
    (h : Extracted.DecafCompressToField.circuit X Y WasSquare SqrtRatio Out) :
    EdwardsBridge.onCurve ⟨X, Y⟩ := by
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurve, -⟩ := h
  simp only [Extracted.DecafCompressToField.Gates, GatesGnark9, GatesGnark8,
    GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.eq] at hg0 hg1 hg2 hg3 hg4 hg5 hcurve
  subst hg0 hg1 hg2 hg3 hg4 hg5
  show -(X * X) + Y * Y = 1 + EdwardsBridge.d * (X * X) * (Y * Y)
  simp only [EdwardsBridge.d]
  linear_combination hcurve

/-- `Decaf377Assumptions` predicate-level wrapper: extracted DTK constraints
imply the `dtk` spec, given `divGen` on-curve (supplied by the div_gen
compress constraint at the compose level). -/
theorem decaf377_diversifiedTransmissionKey_sound
    (nk : F) (ak divGen : Decaf377Assumptions.Point) (ivkReduced ivkQuotientA : F)
    (out : Decaf377Assumptions.Point)
    (hdiv : EdwardsBridge.onCurve ⟨divGen.x, divGen.y⟩)
    (h : Decaf377Assumptions.DiversifiedTransmissionKeyCircuit
      nk ak divGen ivkReduced ivkQuotientA out) :
    Decaf377Assumptions.DiversifiedTransmissionKeySpec
      nk ak divGen ivkReduced ivkQuotientA out := by
  obtain ⟨ws, sr, h⟩ := h
  have hprov := dtk_circuit_ivk_provenance nk ak.x ak.y divGen.x divGen.y ws sr
    ivkReduced ivkQuotientA out.x out.y h
  have hsound := dtk_circuit_sound nk ak.x ak.y divGen.x divGen.y ws sr
    ivkReduced ivkQuotientA out.x out.y hdiv h
  refine ⟨?_, ?_⟩
  · cases ak
    simpa using hprov
  · show out = Decaf377Assumptions.dtk nk ak divGen ivkReduced ivkQuotientA
    cases ak; cases divGen; cases out; exact hsound

/-- The DTK output point is on-curve (last rung of the div-gen ladder),
given `divGen` on-curve. -/
theorem decaf377_diversifiedTransmissionKey_onCurve
    (nk : F) (ak divGen : Decaf377Assumptions.Point) (ivkReduced ivkQuotientA : F)
    (out : Decaf377Assumptions.Point)
    (hdiv : EdwardsBridge.onCurve ⟨divGen.x, divGen.y⟩)
    (h : Decaf377Assumptions.DiversifiedTransmissionKeyCircuit
      nk ak divGen ivkReduced ivkQuotientA out) :
    EdwardsBridge.onCurve ⟨out.x, out.y⟩ := by
  obtain ⟨ws, sr, h⟩ := h
  exact dtk_circuit_onCurve nk ak.x ak.y divGen.x divGen.y ws sr
    ivkReduced ivkQuotientA out.x out.y hdiv h

/-- The DTK constraint set asserts the shared `ak` is on-curve. -/
theorem decaf377_diversifiedTransmissionKey_ak_onCurve
    (nk : F) (ak divGen : Decaf377Assumptions.Point) (ivkReduced ivkQuotientA : F)
    (out : Decaf377Assumptions.Point)
    (h : Decaf377Assumptions.DiversifiedTransmissionKeyCircuit
      nk ak divGen ivkReduced ivkQuotientA out) :
    EdwardsBridge.onCurve ⟨ak.x, ak.y⟩ := by
  obtain ⟨ws, sr, h⟩ := h
  exact dtk_circuit_ak_onCurve nk ak.x ak.y divGen.x divGen.y ws sr
    ivkReduced ivkQuotientA out.x out.y h

/-- The compress constraint set asserts its input point is on-curve. -/
theorem decaf377_compressToField_onCurve
    (p : Decaf377Assumptions.Point) (out : F)
    (h : Decaf377Assumptions.CompressToFieldCircuit p out) :
    EdwardsBridge.onCurve ⟨p.x, p.y⟩ := by
  obtain ⟨ws, sr, h⟩ := h
  exact compress_circuit_onCurve p.x p.y ws sr out h

/-! ### Backward builders (deployed-slice mpr direction)

These reconstruct the extracted `dtkSeg*` continuation nest from the folded
`ltcRec` ladder results plus the carried tail `k`. They are the mpr companions of
the forward `dtkSeg*_pass`/`dtkSeg*_ltc*` lemmas and are instance-independent
(the segment structure is identical across all DTK deployments; only the `bits`
values differ). The deployed-slice generator feeds per-instance rematerialized
rows into these fixed builders. -/

/-- mpr of `dtkSeg14_guard`: the ivk-quotient guard plus the carried tail `k`
rebuild `dtkSeg14`. -/
theorem dtkSeg14_build (gate_569 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (hguard : ivkGuard IvkQuotient gate_569[1]) (hk : k) :
    dtkSeg14 gate_569 IvkQuotient k := by
  unfold dtkSeg14
  unfold ivkGuard at hguard
  simp only [Extracted.DecafDtk.Gates, Extracted.IvkModR.Gates, GatesGnark9, GatesGnark8,
    GatesDef.sub, GatesDef.mul, GatesDef.eq, GatesDef.is_zero] at hguard ⊢
  obtain ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, -⟩ := hguard
  exact ⟨g570, hg570, g571, hg571, g572, hg572, g573, hg573, heq, hk⟩

end Shieldd.GnarkFormal.DtkBridge
