import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Extracted.ScalarMulLE128

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order

def scalarMulStep (Bit: F) (AccX: F) (AccY: F) (CurX: F) (CurY: F) (k: List.Vector F 4 -> Prop): Prop :=
    ∃gate_0, gate_0 = Gates.mul AccX (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_1, gate_1 = Gates.sub AccY gate_0 ∧
    ∃gate_2, gate_2 = Gates.add CurX CurY ∧
    ∃gate_3, gate_3 = Gates.mul gate_1 gate_2 ∧
    ∃gate_4, gate_4 = Gates.mul CurY AccX ∧
    ∃gate_5, gate_5 = Gates.mul CurX AccY ∧
    ∃gate_6, gate_6 = Gates.mul (3021:F) gate_4 ∧
    ∃gate_7, gate_7 = Gates.mul gate_6 gate_5 ∧
    ∃gate_8, gate_8 = Gates.add gate_4 gate_5 ∧
    ∃gate_9, gate_9 = Gates.add (1:F) gate_7 ∧
    ∃gate_10, gate_10 = Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_4 ∧
    ∃gate_11, gate_11 = Gates.sub gate_10 gate_5 ∧
    ∃gate_12, gate_12 = Gates.add gate_11 gate_3 ∧
    ∃gate_13, gate_13 = Gates.sub (1:F) gate_7 ∧
    ∃gate_14, Gates.div_unchecked gate_8 gate_9 gate_14 ∧
    ∃gate_15, Gates.div_unchecked gate_12 gate_13 gate_15 ∧
    ∃gate_16, Gates.select Bit gate_14 AccX gate_16 ∧
    ∃gate_17, Gates.select Bit gate_15 AccY gate_17 ∧
    ∃gate_18, gate_18 = Gates.mul CurX CurY ∧
    ∃gate_19, gate_19 = Gates.mul CurX CurX ∧
    ∃gate_20, gate_20 = Gates.mul CurY CurY ∧
    ∃gate_21, gate_21 = Gates.mul (2:F) gate_18 ∧
    ∃gate_22, gate_22 = Gates.mul gate_19 (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_23, gate_23 = Gates.sub gate_20 gate_22 ∧
    ∃gate_24, gate_24 = Gates.add gate_20 gate_22 ∧
    ∃gate_25, gate_25 = Gates.sub (2:F) gate_24 ∧
    ∃gate_26, Gates.div_unchecked gate_21 gate_24 gate_26 ∧
    ∃gate_27, Gates.div_unchecked gate_23 gate_25 gate_27 ∧
    k vec![gate_16, gate_17, gate_26, gate_27]

def circuit (BaseX: F) (BaseY: F) (Scalar: F) (OutX: F) (OutY: F): Prop :=
    ∃gate_0, Gates.to_binary Scalar 128 gate_0 ∧
    scalarMulStep gate_0[0] (0:F) (1:F) BaseX BaseY fun gate_1 =>
    scalarMulStep gate_0[1] gate_1[0] gate_1[1] gate_1[2] gate_1[3] fun gate_2 =>
    scalarMulStep gate_0[2] gate_2[0] gate_2[1] gate_2[2] gate_2[3] fun gate_3 =>
    scalarMulStep gate_0[3] gate_3[0] gate_3[1] gate_3[2] gate_3[3] fun gate_4 =>
    scalarMulStep gate_0[4] gate_4[0] gate_4[1] gate_4[2] gate_4[3] fun gate_5 =>
    scalarMulStep gate_0[5] gate_5[0] gate_5[1] gate_5[2] gate_5[3] fun gate_6 =>
    scalarMulStep gate_0[6] gate_6[0] gate_6[1] gate_6[2] gate_6[3] fun gate_7 =>
    scalarMulStep gate_0[7] gate_7[0] gate_7[1] gate_7[2] gate_7[3] fun gate_8 =>
    scalarMulStep gate_0[8] gate_8[0] gate_8[1] gate_8[2] gate_8[3] fun gate_9 =>
    scalarMulStep gate_0[9] gate_9[0] gate_9[1] gate_9[2] gate_9[3] fun gate_10 =>
    scalarMulStep gate_0[10] gate_10[0] gate_10[1] gate_10[2] gate_10[3] fun gate_11 =>
    scalarMulStep gate_0[11] gate_11[0] gate_11[1] gate_11[2] gate_11[3] fun gate_12 =>
    scalarMulStep gate_0[12] gate_12[0] gate_12[1] gate_12[2] gate_12[3] fun gate_13 =>
    scalarMulStep gate_0[13] gate_13[0] gate_13[1] gate_13[2] gate_13[3] fun gate_14 =>
    scalarMulStep gate_0[14] gate_14[0] gate_14[1] gate_14[2] gate_14[3] fun gate_15 =>
    scalarMulStep gate_0[15] gate_15[0] gate_15[1] gate_15[2] gate_15[3] fun gate_16 =>
    scalarMulStep gate_0[16] gate_16[0] gate_16[1] gate_16[2] gate_16[3] fun gate_17 =>
    scalarMulStep gate_0[17] gate_17[0] gate_17[1] gate_17[2] gate_17[3] fun gate_18 =>
    scalarMulStep gate_0[18] gate_18[0] gate_18[1] gate_18[2] gate_18[3] fun gate_19 =>
    scalarMulStep gate_0[19] gate_19[0] gate_19[1] gate_19[2] gate_19[3] fun gate_20 =>
    scalarMulStep gate_0[20] gate_20[0] gate_20[1] gate_20[2] gate_20[3] fun gate_21 =>
    scalarMulStep gate_0[21] gate_21[0] gate_21[1] gate_21[2] gate_21[3] fun gate_22 =>
    scalarMulStep gate_0[22] gate_22[0] gate_22[1] gate_22[2] gate_22[3] fun gate_23 =>
    scalarMulStep gate_0[23] gate_23[0] gate_23[1] gate_23[2] gate_23[3] fun gate_24 =>
    scalarMulStep gate_0[24] gate_24[0] gate_24[1] gate_24[2] gate_24[3] fun gate_25 =>
    scalarMulStep gate_0[25] gate_25[0] gate_25[1] gate_25[2] gate_25[3] fun gate_26 =>
    scalarMulStep gate_0[26] gate_26[0] gate_26[1] gate_26[2] gate_26[3] fun gate_27 =>
    scalarMulStep gate_0[27] gate_27[0] gate_27[1] gate_27[2] gate_27[3] fun gate_28 =>
    scalarMulStep gate_0[28] gate_28[0] gate_28[1] gate_28[2] gate_28[3] fun gate_29 =>
    scalarMulStep gate_0[29] gate_29[0] gate_29[1] gate_29[2] gate_29[3] fun gate_30 =>
    scalarMulStep gate_0[30] gate_30[0] gate_30[1] gate_30[2] gate_30[3] fun gate_31 =>
    scalarMulStep gate_0[31] gate_31[0] gate_31[1] gate_31[2] gate_31[3] fun gate_32 =>
    scalarMulStep gate_0[32] gate_32[0] gate_32[1] gate_32[2] gate_32[3] fun gate_33 =>
    scalarMulStep gate_0[33] gate_33[0] gate_33[1] gate_33[2] gate_33[3] fun gate_34 =>
    scalarMulStep gate_0[34] gate_34[0] gate_34[1] gate_34[2] gate_34[3] fun gate_35 =>
    scalarMulStep gate_0[35] gate_35[0] gate_35[1] gate_35[2] gate_35[3] fun gate_36 =>
    scalarMulStep gate_0[36] gate_36[0] gate_36[1] gate_36[2] gate_36[3] fun gate_37 =>
    scalarMulStep gate_0[37] gate_37[0] gate_37[1] gate_37[2] gate_37[3] fun gate_38 =>
    scalarMulStep gate_0[38] gate_38[0] gate_38[1] gate_38[2] gate_38[3] fun gate_39 =>
    scalarMulStep gate_0[39] gate_39[0] gate_39[1] gate_39[2] gate_39[3] fun gate_40 =>
    scalarMulStep gate_0[40] gate_40[0] gate_40[1] gate_40[2] gate_40[3] fun gate_41 =>
    scalarMulStep gate_0[41] gate_41[0] gate_41[1] gate_41[2] gate_41[3] fun gate_42 =>
    scalarMulStep gate_0[42] gate_42[0] gate_42[1] gate_42[2] gate_42[3] fun gate_43 =>
    scalarMulStep gate_0[43] gate_43[0] gate_43[1] gate_43[2] gate_43[3] fun gate_44 =>
    scalarMulStep gate_0[44] gate_44[0] gate_44[1] gate_44[2] gate_44[3] fun gate_45 =>
    scalarMulStep gate_0[45] gate_45[0] gate_45[1] gate_45[2] gate_45[3] fun gate_46 =>
    scalarMulStep gate_0[46] gate_46[0] gate_46[1] gate_46[2] gate_46[3] fun gate_47 =>
    scalarMulStep gate_0[47] gate_47[0] gate_47[1] gate_47[2] gate_47[3] fun gate_48 =>
    scalarMulStep gate_0[48] gate_48[0] gate_48[1] gate_48[2] gate_48[3] fun gate_49 =>
    scalarMulStep gate_0[49] gate_49[0] gate_49[1] gate_49[2] gate_49[3] fun gate_50 =>
    scalarMulStep gate_0[50] gate_50[0] gate_50[1] gate_50[2] gate_50[3] fun gate_51 =>
    scalarMulStep gate_0[51] gate_51[0] gate_51[1] gate_51[2] gate_51[3] fun gate_52 =>
    scalarMulStep gate_0[52] gate_52[0] gate_52[1] gate_52[2] gate_52[3] fun gate_53 =>
    scalarMulStep gate_0[53] gate_53[0] gate_53[1] gate_53[2] gate_53[3] fun gate_54 =>
    scalarMulStep gate_0[54] gate_54[0] gate_54[1] gate_54[2] gate_54[3] fun gate_55 =>
    scalarMulStep gate_0[55] gate_55[0] gate_55[1] gate_55[2] gate_55[3] fun gate_56 =>
    scalarMulStep gate_0[56] gate_56[0] gate_56[1] gate_56[2] gate_56[3] fun gate_57 =>
    scalarMulStep gate_0[57] gate_57[0] gate_57[1] gate_57[2] gate_57[3] fun gate_58 =>
    scalarMulStep gate_0[58] gate_58[0] gate_58[1] gate_58[2] gate_58[3] fun gate_59 =>
    scalarMulStep gate_0[59] gate_59[0] gate_59[1] gate_59[2] gate_59[3] fun gate_60 =>
    scalarMulStep gate_0[60] gate_60[0] gate_60[1] gate_60[2] gate_60[3] fun gate_61 =>
    scalarMulStep gate_0[61] gate_61[0] gate_61[1] gate_61[2] gate_61[3] fun gate_62 =>
    scalarMulStep gate_0[62] gate_62[0] gate_62[1] gate_62[2] gate_62[3] fun gate_63 =>
    scalarMulStep gate_0[63] gate_63[0] gate_63[1] gate_63[2] gate_63[3] fun gate_64 =>
    scalarMulStep gate_0[64] gate_64[0] gate_64[1] gate_64[2] gate_64[3] fun gate_65 =>
    scalarMulStep gate_0[65] gate_65[0] gate_65[1] gate_65[2] gate_65[3] fun gate_66 =>
    scalarMulStep gate_0[66] gate_66[0] gate_66[1] gate_66[2] gate_66[3] fun gate_67 =>
    scalarMulStep gate_0[67] gate_67[0] gate_67[1] gate_67[2] gate_67[3] fun gate_68 =>
    scalarMulStep gate_0[68] gate_68[0] gate_68[1] gate_68[2] gate_68[3] fun gate_69 =>
    scalarMulStep gate_0[69] gate_69[0] gate_69[1] gate_69[2] gate_69[3] fun gate_70 =>
    scalarMulStep gate_0[70] gate_70[0] gate_70[1] gate_70[2] gate_70[3] fun gate_71 =>
    scalarMulStep gate_0[71] gate_71[0] gate_71[1] gate_71[2] gate_71[3] fun gate_72 =>
    scalarMulStep gate_0[72] gate_72[0] gate_72[1] gate_72[2] gate_72[3] fun gate_73 =>
    scalarMulStep gate_0[73] gate_73[0] gate_73[1] gate_73[2] gate_73[3] fun gate_74 =>
    scalarMulStep gate_0[74] gate_74[0] gate_74[1] gate_74[2] gate_74[3] fun gate_75 =>
    scalarMulStep gate_0[75] gate_75[0] gate_75[1] gate_75[2] gate_75[3] fun gate_76 =>
    scalarMulStep gate_0[76] gate_76[0] gate_76[1] gate_76[2] gate_76[3] fun gate_77 =>
    scalarMulStep gate_0[77] gate_77[0] gate_77[1] gate_77[2] gate_77[3] fun gate_78 =>
    scalarMulStep gate_0[78] gate_78[0] gate_78[1] gate_78[2] gate_78[3] fun gate_79 =>
    scalarMulStep gate_0[79] gate_79[0] gate_79[1] gate_79[2] gate_79[3] fun gate_80 =>
    scalarMulStep gate_0[80] gate_80[0] gate_80[1] gate_80[2] gate_80[3] fun gate_81 =>
    scalarMulStep gate_0[81] gate_81[0] gate_81[1] gate_81[2] gate_81[3] fun gate_82 =>
    scalarMulStep gate_0[82] gate_82[0] gate_82[1] gate_82[2] gate_82[3] fun gate_83 =>
    scalarMulStep gate_0[83] gate_83[0] gate_83[1] gate_83[2] gate_83[3] fun gate_84 =>
    scalarMulStep gate_0[84] gate_84[0] gate_84[1] gate_84[2] gate_84[3] fun gate_85 =>
    scalarMulStep gate_0[85] gate_85[0] gate_85[1] gate_85[2] gate_85[3] fun gate_86 =>
    scalarMulStep gate_0[86] gate_86[0] gate_86[1] gate_86[2] gate_86[3] fun gate_87 =>
    scalarMulStep gate_0[87] gate_87[0] gate_87[1] gate_87[2] gate_87[3] fun gate_88 =>
    scalarMulStep gate_0[88] gate_88[0] gate_88[1] gate_88[2] gate_88[3] fun gate_89 =>
    scalarMulStep gate_0[89] gate_89[0] gate_89[1] gate_89[2] gate_89[3] fun gate_90 =>
    scalarMulStep gate_0[90] gate_90[0] gate_90[1] gate_90[2] gate_90[3] fun gate_91 =>
    scalarMulStep gate_0[91] gate_91[0] gate_91[1] gate_91[2] gate_91[3] fun gate_92 =>
    scalarMulStep gate_0[92] gate_92[0] gate_92[1] gate_92[2] gate_92[3] fun gate_93 =>
    scalarMulStep gate_0[93] gate_93[0] gate_93[1] gate_93[2] gate_93[3] fun gate_94 =>
    scalarMulStep gate_0[94] gate_94[0] gate_94[1] gate_94[2] gate_94[3] fun gate_95 =>
    scalarMulStep gate_0[95] gate_95[0] gate_95[1] gate_95[2] gate_95[3] fun gate_96 =>
    scalarMulStep gate_0[96] gate_96[0] gate_96[1] gate_96[2] gate_96[3] fun gate_97 =>
    scalarMulStep gate_0[97] gate_97[0] gate_97[1] gate_97[2] gate_97[3] fun gate_98 =>
    scalarMulStep gate_0[98] gate_98[0] gate_98[1] gate_98[2] gate_98[3] fun gate_99 =>
    scalarMulStep gate_0[99] gate_99[0] gate_99[1] gate_99[2] gate_99[3] fun gate_100 =>
    scalarMulStep gate_0[100] gate_100[0] gate_100[1] gate_100[2] gate_100[3] fun gate_101 =>
    scalarMulStep gate_0[101] gate_101[0] gate_101[1] gate_101[2] gate_101[3] fun gate_102 =>
    scalarMulStep gate_0[102] gate_102[0] gate_102[1] gate_102[2] gate_102[3] fun gate_103 =>
    scalarMulStep gate_0[103] gate_103[0] gate_103[1] gate_103[2] gate_103[3] fun gate_104 =>
    scalarMulStep gate_0[104] gate_104[0] gate_104[1] gate_104[2] gate_104[3] fun gate_105 =>
    scalarMulStep gate_0[105] gate_105[0] gate_105[1] gate_105[2] gate_105[3] fun gate_106 =>
    scalarMulStep gate_0[106] gate_106[0] gate_106[1] gate_106[2] gate_106[3] fun gate_107 =>
    scalarMulStep gate_0[107] gate_107[0] gate_107[1] gate_107[2] gate_107[3] fun gate_108 =>
    scalarMulStep gate_0[108] gate_108[0] gate_108[1] gate_108[2] gate_108[3] fun gate_109 =>
    scalarMulStep gate_0[109] gate_109[0] gate_109[1] gate_109[2] gate_109[3] fun gate_110 =>
    scalarMulStep gate_0[110] gate_110[0] gate_110[1] gate_110[2] gate_110[3] fun gate_111 =>
    scalarMulStep gate_0[111] gate_111[0] gate_111[1] gate_111[2] gate_111[3] fun gate_112 =>
    scalarMulStep gate_0[112] gate_112[0] gate_112[1] gate_112[2] gate_112[3] fun gate_113 =>
    scalarMulStep gate_0[113] gate_113[0] gate_113[1] gate_113[2] gate_113[3] fun gate_114 =>
    scalarMulStep gate_0[114] gate_114[0] gate_114[1] gate_114[2] gate_114[3] fun gate_115 =>
    scalarMulStep gate_0[115] gate_115[0] gate_115[1] gate_115[2] gate_115[3] fun gate_116 =>
    scalarMulStep gate_0[116] gate_116[0] gate_116[1] gate_116[2] gate_116[3] fun gate_117 =>
    scalarMulStep gate_0[117] gate_117[0] gate_117[1] gate_117[2] gate_117[3] fun gate_118 =>
    scalarMulStep gate_0[118] gate_118[0] gate_118[1] gate_118[2] gate_118[3] fun gate_119 =>
    scalarMulStep gate_0[119] gate_119[0] gate_119[1] gate_119[2] gate_119[3] fun gate_120 =>
    scalarMulStep gate_0[120] gate_120[0] gate_120[1] gate_120[2] gate_120[3] fun gate_121 =>
    scalarMulStep gate_0[121] gate_121[0] gate_121[1] gate_121[2] gate_121[3] fun gate_122 =>
    scalarMulStep gate_0[122] gate_122[0] gate_122[1] gate_122[2] gate_122[3] fun gate_123 =>
    scalarMulStep gate_0[123] gate_123[0] gate_123[1] gate_123[2] gate_123[3] fun gate_124 =>
    scalarMulStep gate_0[124] gate_124[0] gate_124[1] gate_124[2] gate_124[3] fun gate_125 =>
    scalarMulStep gate_0[125] gate_125[0] gate_125[1] gate_125[2] gate_125[3] fun gate_126 =>
    scalarMulStep gate_0[126] gate_126[0] gate_126[1] gate_126[2] gate_126[3] fun gate_127 =>
    scalarMulStep gate_0[127] gate_127[0] gate_127[1] gate_127[2] gate_127[3] fun gate_128 =>
    Gates.eq gate_128[0] OutX ∧
    Gates.eq gate_128[1] OutY ∧
    True

end Shieldd.GnarkFormal.Extracted.ScalarMulLE128
