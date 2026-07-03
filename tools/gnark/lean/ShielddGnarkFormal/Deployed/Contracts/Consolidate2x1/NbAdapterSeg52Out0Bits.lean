import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0Bits_toBinary (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    GatesDef.to_binary (rho 193) 128 (seg52Out0Bits rho) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p62, p63, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4996, r4997, r4998, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩

  unfold Seg52.relationPart63 at p63

  rcases p63 with ⟨r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow4996 at r4996

  unfold Seg52.relationRow4997 at r4997

  unfold Seg52.relationRow4998 at r4998

  unfold Seg52.relationRow4999 at r4999

  unfold Seg52.relationRow5000 at r5000

  unfold Seg52.relationRow5001 at r5001

  unfold Seg52.relationRow5002 at r5002

  unfold Seg52.relationRow5003 at r5003

  unfold Seg52.relationRow5004 at r5004

  unfold Seg52.relationRow5005 at r5005

  unfold Seg52.relationRow5006 at r5006

  unfold Seg52.relationRow5007 at r5007

  unfold Seg52.relationRow5008 at r5008

  unfold Seg52.relationRow5009 at r5009

  unfold Seg52.relationRow5010 at r5010

  unfold Seg52.relationRow5011 at r5011

  unfold Seg52.relationRow5012 at r5012

  unfold Seg52.relationRow5013 at r5013

  unfold Seg52.relationRow5014 at r5014

  unfold Seg52.relationRow5015 at r5015

  unfold Seg52.relationRow5016 at r5016

  unfold Seg52.relationRow5017 at r5017

  unfold Seg52.relationRow5018 at r5018

  unfold Seg52.relationRow5019 at r5019

  unfold Seg52.relationRow5020 at r5020

  unfold Seg52.relationRow5021 at r5021

  unfold Seg52.relationRow5022 at r5022

  unfold Seg52.relationRow5023 at r5023

  unfold Seg52.relationRow5024 at r5024

  unfold Seg52.relationRow5025 at r5025

  unfold Seg52.relationRow5026 at r5026

  unfold Seg52.relationRow5027 at r5027

  unfold Seg52.relationRow5028 at r5028

  unfold Seg52.relationRow5029 at r5029

  unfold Seg52.relationRow5030 at r5030

  unfold Seg52.relationRow5031 at r5031

  unfold Seg52.relationRow5032 at r5032

  unfold Seg52.relationRow5033 at r5033

  unfold Seg52.relationRow5034 at r5034

  unfold Seg52.relationRow5035 at r5035

  unfold Seg52.relationRow5036 at r5036

  unfold Seg52.relationRow5037 at r5037

  unfold Seg52.relationRow5038 at r5038

  unfold Seg52.relationRow5039 at r5039

  unfold Seg52.relationRow5040 at r5040

  unfold Seg52.relationRow5041 at r5041

  unfold Seg52.relationRow5042 at r5042

  unfold Seg52.relationRow5043 at r5043

  unfold Seg52.relationRow5044 at r5044

  unfold Seg52.relationRow5045 at r5045

  unfold Seg52.relationRow5046 at r5046

  unfold Seg52.relationRow5047 at r5047

  unfold Seg52.relationRow5048 at r5048

  unfold Seg52.relationRow5049 at r5049

  unfold Seg52.relationRow5050 at r5050

  unfold Seg52.relationRow5051 at r5051

  unfold Seg52.relationRow5052 at r5052

  unfold Seg52.relationRow5053 at r5053

  unfold Seg52.relationRow5054 at r5054

  unfold Seg52.relationRow5055 at r5055

  unfold Seg52.relationRow5056 at r5056

  unfold Seg52.relationRow5057 at r5057

  unfold Seg52.relationRow5058 at r5058

  unfold Seg52.relationRow5059 at r5059

  unfold Seg52.relationRow5060 at r5060

  unfold Seg52.relationRow5061 at r5061

  unfold Seg52.relationRow5062 at r5062

  unfold Seg52.relationRow5063 at r5063

  unfold Seg52.relationRow5064 at r5064

  unfold Seg52.relationRow5065 at r5065

  unfold Seg52.relationRow5066 at r5066

  unfold Seg52.relationRow5067 at r5067

  unfold Seg52.relationRow5068 at r5068

  unfold Seg52.relationRow5069 at r5069

  unfold Seg52.relationRow5070 at r5070

  unfold Seg52.relationRow5071 at r5071

  unfold Seg52.relationRow5072 at r5072

  unfold Seg52.relationRow5073 at r5073

  unfold Seg52.relationRow5074 at r5074

  unfold Seg52.relationRow5075 at r5075

  unfold Seg52.relationRow5076 at r5076

  unfold Seg52.relationRow5077 at r5077

  unfold Seg52.relationRow5078 at r5078

  unfold Seg52.relationRow5079 at r5079

  unfold Seg52.relationRow5080 at r5080

  unfold Seg52.relationRow5081 at r5081

  unfold Seg52.relationRow5082 at r5082

  unfold Seg52.relationRow5083 at r5083

  unfold Seg52.relationRow5084 at r5084

  unfold Seg52.relationRow5085 at r5085

  unfold Seg52.relationRow5086 at r5086

  unfold Seg52.relationRow5087 at r5087

  unfold Seg52.relationRow5088 at r5088

  unfold Seg52.relationRow5089 at r5089

  unfold Seg52.relationRow5090 at r5090

  unfold Seg52.relationRow5091 at r5091

  unfold Seg52.relationRow5092 at r5092

  unfold Seg52.relationRow5093 at r5093

  unfold Seg52.relationRow5094 at r5094

  unfold Seg52.relationRow5095 at r5095

  unfold Seg52.relationRow5096 at r5096

  unfold Seg52.relationRow5097 at r5097

  unfold Seg52.relationRow5098 at r5098

  unfold Seg52.relationRow5099 at r5099

  unfold Seg52.relationRow5100 at r5100

  unfold Seg52.relationRow5101 at r5101

  unfold Seg52.relationRow5102 at r5102

  unfold Seg52.relationRow5103 at r5103

  unfold Seg52.relationRow5104 at r5104

  unfold Seg52.relationRow5105 at r5105

  unfold Seg52.relationRow5106 at r5106

  unfold Seg52.relationRow5107 at r5107

  unfold Seg52.relationRow5108 at r5108

  unfold Seg52.relationRow5109 at r5109

  unfold Seg52.relationRow5110 at r5110

  unfold Seg52.relationRow5111 at r5111

  unfold Seg52.relationRow5112 at r5112

  unfold Seg52.relationRow5113 at r5113

  unfold Seg52.relationRow5114 at r5114

  unfold Seg52.relationRow5115 at r5115

  unfold Seg52.relationRow5116 at r5116

  unfold Seg52.relationRow5117 at r5117

  unfold Seg52.relationRow5118 at r5118

  unfold Seg52.relationRow5119 at r5119

  unfold Seg52.relationRow5120 at r5120

  unfold Seg52.relationRow5121 at r5121

  unfold Seg52.relationRow5122 at r5122

  unfold Seg52.relationRow5123 at r5123

  have hrecover := recover_ofFn_eq_recBits rho 49386 128

  have hacc : powSumAcc rho 0 1 49386 128 = rho 193 := by

    unfold Seg52.relationRow5124 at r5124

    simp only [powSumAcc]

    linear_combination r5124

  have hrec : recover_binary_zmod' (seg52Out0Bits rho) = rho 193 := by

    simp only [seg52Out0Bits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 193) (seg52Out0Bits rho)
  · intro i hi
    have key := seg52Out0Bits_get rho i hi
    have hgoal : rho (49386 + i) * (1 - rho (49386 + i)) = 0 := by
      interval_cases i
      · linear_combination r4996
      · linear_combination r4997
      · linear_combination r4998
      · linear_combination r4999
      · linear_combination r5000
      · linear_combination r5001
      · linear_combination r5002
      · linear_combination r5003
      · linear_combination r5004
      · linear_combination r5005
      · linear_combination r5006
      · linear_combination r5007
      · linear_combination r5008
      · linear_combination r5009
      · linear_combination r5010
      · linear_combination r5011
      · linear_combination r5012
      · linear_combination r5013
      · linear_combination r5014
      · linear_combination r5015
      · linear_combination r5016
      · linear_combination r5017
      · linear_combination r5018
      · linear_combination r5019
      · linear_combination r5020
      · linear_combination r5021
      · linear_combination r5022
      · linear_combination r5023
      · linear_combination r5024
      · linear_combination r5025
      · linear_combination r5026
      · linear_combination r5027
      · linear_combination r5028
      · linear_combination r5029
      · linear_combination r5030
      · linear_combination r5031
      · linear_combination r5032
      · linear_combination r5033
      · linear_combination r5034
      · linear_combination r5035
      · linear_combination r5036
      · linear_combination r5037
      · linear_combination r5038
      · linear_combination r5039
      · linear_combination r5040
      · linear_combination r5041
      · linear_combination r5042
      · linear_combination r5043
      · linear_combination r5044
      · linear_combination r5045
      · linear_combination r5046
      · linear_combination r5047
      · linear_combination r5048
      · linear_combination r5049
      · linear_combination r5050
      · linear_combination r5051
      · linear_combination r5052
      · linear_combination r5053
      · linear_combination r5054
      · linear_combination r5055
      · linear_combination r5056
      · linear_combination r5057
      · linear_combination r5058
      · linear_combination r5059
      · linear_combination r5060
      · linear_combination r5061
      · linear_combination r5062
      · linear_combination r5063
      · linear_combination r5064
      · linear_combination r5065
      · linear_combination r5066
      · linear_combination r5067
      · linear_combination r5068
      · linear_combination r5069
      · linear_combination r5070
      · linear_combination r5071
      · linear_combination r5072
      · linear_combination r5073
      · linear_combination r5074
      · linear_combination r5075
      · linear_combination r5076
      · linear_combination r5077
      · linear_combination r5078
      · linear_combination r5079
      · linear_combination r5080
      · linear_combination r5081
      · linear_combination r5082
      · linear_combination r5083
      · linear_combination r5084
      · linear_combination r5085
      · linear_combination r5086
      · linear_combination r5087
      · linear_combination r5088
      · linear_combination r5089
      · linear_combination r5090
      · linear_combination r5091
      · linear_combination r5092
      · linear_combination r5093
      · linear_combination r5094
      · linear_combination r5095
      · linear_combination r5096
      · linear_combination r5097
      · linear_combination r5098
      · linear_combination r5099
      · linear_combination r5100
      · linear_combination r5101
      · linear_combination r5102
      · linear_combination r5103
      · linear_combination r5104
      · linear_combination r5105
      · linear_combination r5106
      · linear_combination r5107
      · linear_combination r5108
      · linear_combination r5109
      · linear_combination r5110
      · linear_combination r5111
      · linear_combination r5112
      · linear_combination r5113
      · linear_combination r5114
      · linear_combination r5115
      · linear_combination r5116
      · linear_combination r5117
      · linear_combination r5118
      · linear_combination r5119
      · linear_combination r5120
      · linear_combination r5121
      · linear_combination r5122
      · linear_combination r5123
    have key' : (seg52Out0Bits rho)[i] = rho (49386 + i) := by
      rw [← getElem!_pos (seg52Out0Bits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
