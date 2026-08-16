import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window6 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc6 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[114]! (scalarBits rho)[113]!
        (base rho) (twice rho) (triple rho) (acc6 rho)
        (acc7 rho) ∧
      EdwardsBridge.onCurve (acc7 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3117, r3118, r3119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart39 at p39
  rcases p39 with ⟨r3120, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, r3134, r3135, r3136, r3137, r3138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3117 at r3117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3118 at r3118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3119 at r3119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3120 at r3120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3121 at r3121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3122 at r3122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3123 at r3123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3124 at r3124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3125 at r3125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3126 at r3126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3127 at r3127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3128 at r3128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3129 at r3129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3130 at r3130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3131 at r3131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3132 at r3132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3133 at r3133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3134 at r3134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3135 at r3135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3136 at r3136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3137 at r3137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3138 at r3138
  have hshift1 : EdwardsBridge.doubleSpec (acc6 rho) (shiftOnce6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2941) (rho 2942) (rho 2943) (rho 2944) (rho 2945) (rho 2946) (rho 2947)
      (by simpa [acc6] using hacc)
      (by linear_combination r3117)
      (by linear_combination r3118)
      (by linear_combination r3119)
      (by linear_combination r3120)
      (by linear_combination r3121)
    simpa [acc6, shiftOnce6] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc6 rho) (shiftOnce6 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc6 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce6 rho) (shifted6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2946) (rho 2947) (rho 2948) (rho 2949) (rho 2950) (rho 2951) (rho 2952)
      (by simpa [shiftOnce6] using hshift1On)
      (by linear_combination r3122)
      (by linear_combination r3123)
      (by linear_combination r3124)
      (by linear_combination r3125)
      (by linear_combination r3126)
    simpa [shiftOnce6, shifted6] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce6 rho) (shifted6 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce6 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2779) (rho 2778)
      (base rho) (twice rho) (triple rho) (digit6 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2779) (rho 2778)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 2954 + rho 2955, (1 : F) + rho 2957 + rho 2958⟩ := by
      constructor
      · refine ⟨(rho 2953 + (rho 2797) - (0)), rho 2954, ?_, ?_, ?_⟩
        · linear_combination r3127
        · linear_combination r3128
        · linear_combination r3129
      · refine ⟨(rho 2956 + (rho 2798) - ((1 : F))), rho 2957, ?_, ?_, ?_⟩
        · linear_combination r3130
        · linear_combination r3131
        · linear_combination r3132
    simpa [base, twice, triple, digit6] using hraw
  have hhigh : rho 2779 =
      Bool.toZMod bits[114]! := by
    simpa only using rho_bit_of_map rho bits hbits 114 (by decide +kernel)
  have hlow : rho 2778 =
      Bool.toZMod bits[113]! := by
    simpa only using rho_bit_of_map rho bits hbits 113 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[114]! bits[113]! (base rho) (twice rho) (triple rho)
    (digit6 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit6 rho) := by
    rw [hdigit]
    cases bits[114]! <;> cases bits[113]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted6 rho) (digit6 rho) (acc7 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2951) (rho 2952) (rho 2954 + rho 2955) ((1 : F) + rho 2957 + rho 2958)
      (rho 2959) (rho 2960) (rho 2961) (rho 2962) (rho 2963) (rho 2964)
      (by simpa [shifted6] using hshift2On)
      (by simpa [digit6] using hdigitOn)
      (by linear_combination r3133)
      (by linear_combination r3134)
      (by linear_combination r3135)
      (by linear_combination r3136)
      (by linear_combination r3137)
      (by linear_combination r3138)
    simpa [shifted6, digit6, acc7] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc7 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted6 rho) (digit6 rho) (acc7 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted6 rho) (digit6 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2779) (rho 2778)
      (base rho) (twice rho) (triple rho) (acc6 rho)
      (acc7 rho) :=
    ⟨shiftOnce6 rho, shifted6 rho, digit6 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window7 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc7 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[112]! (scalarBits rho)[111]!
        (base rho) (twice rho) (triple rho) (acc7 rho)
        (acc8 rho) ∧
      EdwardsBridge.onCurve (acc8 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, r3160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3139 at r3139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3140 at r3140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3141 at r3141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3142 at r3142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3143 at r3143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3144 at r3144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3145 at r3145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3146 at r3146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3147 at r3147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3148 at r3148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3149 at r3149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3150 at r3150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3151 at r3151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3152 at r3152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3153 at r3153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3154 at r3154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3155 at r3155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3156 at r3156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3157 at r3157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3158 at r3158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3159 at r3159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3160 at r3160
  have hshift1 : EdwardsBridge.doubleSpec (acc7 rho) (shiftOnce7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2963) (rho 2964) (rho 2965) (rho 2966) (rho 2967) (rho 2968) (rho 2969)
      (by simpa [acc7] using hacc)
      (by linear_combination r3139)
      (by linear_combination r3140)
      (by linear_combination r3141)
      (by linear_combination r3142)
      (by linear_combination r3143)
    simpa [acc7, shiftOnce7] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc7 rho) (shiftOnce7 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc7 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce7 rho) (shifted7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2968) (rho 2969) (rho 2970) (rho 2971) (rho 2972) (rho 2973) (rho 2974)
      (by simpa [shiftOnce7] using hshift1On)
      (by linear_combination r3144)
      (by linear_combination r3145)
      (by linear_combination r3146)
      (by linear_combination r3147)
      (by linear_combination r3148)
    simpa [shiftOnce7, shifted7] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce7 rho) (shifted7 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce7 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2777) (rho 2776)
      (base rho) (twice rho) (triple rho) (digit7 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2777) (rho 2776)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 2976 + rho 2977, (1 : F) + rho 2979 + rho 2980⟩ := by
      constructor
      · refine ⟨(rho 2975 + (rho 2797) - (0)), rho 2976, ?_, ?_, ?_⟩
        · linear_combination r3149
        · linear_combination r3150
        · linear_combination r3151
      · refine ⟨(rho 2978 + (rho 2798) - ((1 : F))), rho 2979, ?_, ?_, ?_⟩
        · linear_combination r3152
        · linear_combination r3153
        · linear_combination r3154
    simpa [base, twice, triple, digit7] using hraw
  have hhigh : rho 2777 =
      Bool.toZMod bits[112]! := by
    simpa only using rho_bit_of_map rho bits hbits 112 (by decide +kernel)
  have hlow : rho 2776 =
      Bool.toZMod bits[111]! := by
    simpa only using rho_bit_of_map rho bits hbits 111 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[112]! bits[111]! (base rho) (twice rho) (triple rho)
    (digit7 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit7 rho) := by
    rw [hdigit]
    cases bits[112]! <;> cases bits[111]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted7 rho) (digit7 rho) (acc8 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2973) (rho 2974) (rho 2976 + rho 2977) ((1 : F) + rho 2979 + rho 2980)
      (rho 2981) (rho 2982) (rho 2983) (rho 2984) (rho 2985) (rho 2986)
      (by simpa [shifted7] using hshift2On)
      (by simpa [digit7] using hdigitOn)
      (by linear_combination r3155)
      (by linear_combination r3156)
      (by linear_combination r3157)
      (by linear_combination r3158)
      (by linear_combination r3159)
      (by linear_combination r3160)
    simpa [shifted7, digit7, acc8] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc8 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted7 rho) (digit7 rho) (acc8 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted7 rho) (digit7 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2777) (rho 2776)
      (base rho) (twice rho) (triple rho) (acc7 rho)
      (acc8 rho) :=
    ⟨shiftOnce7 rho, shifted7 rho, digit7 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window8 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc8 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[110]! (scalarBits rho)[109]!
        (base rho) (twice rho) (triple rho) (acc8 rho)
        (acc9 rho) ∧
      EdwardsBridge.onCurve (acc9 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3161 at r3161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3162 at r3162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3163 at r3163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3164 at r3164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3165 at r3165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3166 at r3166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3167 at r3167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3168 at r3168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3169 at r3169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3170 at r3170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3171 at r3171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3172 at r3172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3173 at r3173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3174 at r3174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3175 at r3175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3176 at r3176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3177 at r3177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3178 at r3178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3179 at r3179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3180 at r3180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3181 at r3181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3182 at r3182
  have hshift1 : EdwardsBridge.doubleSpec (acc8 rho) (shiftOnce8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2985) (rho 2986) (rho 2987) (rho 2988) (rho 2989) (rho 2990) (rho 2991)
      (by simpa [acc8] using hacc)
      (by linear_combination r3161)
      (by linear_combination r3162)
      (by linear_combination r3163)
      (by linear_combination r3164)
      (by linear_combination r3165)
    simpa [acc8, shiftOnce8] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc8 rho) (shiftOnce8 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc8 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce8 rho) (shifted8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2990) (rho 2991) (rho 2992) (rho 2993) (rho 2994) (rho 2995) (rho 2996)
      (by simpa [shiftOnce8] using hshift1On)
      (by linear_combination r3166)
      (by linear_combination r3167)
      (by linear_combination r3168)
      (by linear_combination r3169)
      (by linear_combination r3170)
    simpa [shiftOnce8, shifted8] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce8 rho) (shifted8 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce8 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2775) (rho 2774)
      (base rho) (twice rho) (triple rho) (digit8 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2775) (rho 2774)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 2998 + rho 2999, (1 : F) + rho 3001 + rho 3002⟩ := by
      constructor
      · refine ⟨(rho 2997 + (rho 2797) - (0)), rho 2998, ?_, ?_, ?_⟩
        · linear_combination r3171
        · linear_combination r3172
        · linear_combination r3173
      · refine ⟨(rho 3000 + (rho 2798) - ((1 : F))), rho 3001, ?_, ?_, ?_⟩
        · linear_combination r3174
        · linear_combination r3175
        · linear_combination r3176
    simpa [base, twice, triple, digit8] using hraw
  have hhigh : rho 2775 =
      Bool.toZMod bits[110]! := by
    simpa only using rho_bit_of_map rho bits hbits 110 (by decide +kernel)
  have hlow : rho 2774 =
      Bool.toZMod bits[109]! := by
    simpa only using rho_bit_of_map rho bits hbits 109 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[110]! bits[109]! (base rho) (twice rho) (triple rho)
    (digit8 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit8 rho) := by
    rw [hdigit]
    cases bits[110]! <;> cases bits[109]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted8 rho) (digit8 rho) (acc9 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2995) (rho 2996) (rho 2998 + rho 2999) ((1 : F) + rho 3001 + rho 3002)
      (rho 3003) (rho 3004) (rho 3005) (rho 3006) (rho 3007) (rho 3008)
      (by simpa [shifted8] using hshift2On)
      (by simpa [digit8] using hdigitOn)
      (by linear_combination r3177)
      (by linear_combination r3178)
      (by linear_combination r3179)
      (by linear_combination r3180)
      (by linear_combination r3181)
      (by linear_combination r3182)
    simpa [shifted8, digit8, acc9] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc9 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted8 rho) (digit8 rho) (acc9 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted8 rho) (digit8 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2775) (rho 2774)
      (base rho) (twice rho) (triple rho) (acc8 rho)
      (acc9 rho) :=
    ⟨shiftOnce8 rho, shifted8 rho, digit8 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window9 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc9 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[108]! (scalarBits rho)[107]!
        (base rho) (twice rho) (triple rho) (acc9 rho)
        (acc10 rho) ∧
      EdwardsBridge.onCurve (acc10 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, r3199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3183 at r3183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3184 at r3184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3185 at r3185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3186 at r3186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3187 at r3187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3188 at r3188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3189 at r3189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3190 at r3190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3191 at r3191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3192 at r3192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3193 at r3193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3194 at r3194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3195 at r3195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3196 at r3196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3197 at r3197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3198 at r3198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3199 at r3199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3200 at r3200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3201 at r3201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3202 at r3202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3203 at r3203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3204 at r3204
  have hshift1 : EdwardsBridge.doubleSpec (acc9 rho) (shiftOnce9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3007) (rho 3008) (rho 3009) (rho 3010) (rho 3011) (rho 3012) (rho 3013)
      (by simpa [acc9] using hacc)
      (by linear_combination r3183)
      (by linear_combination r3184)
      (by linear_combination r3185)
      (by linear_combination r3186)
      (by linear_combination r3187)
    simpa [acc9, shiftOnce9] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc9 rho) (shiftOnce9 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc9 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce9 rho) (shifted9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3012) (rho 3013) (rho 3014) (rho 3015) (rho 3016) (rho 3017) (rho 3018)
      (by simpa [shiftOnce9] using hshift1On)
      (by linear_combination r3188)
      (by linear_combination r3189)
      (by linear_combination r3190)
      (by linear_combination r3191)
      (by linear_combination r3192)
    simpa [shiftOnce9, shifted9] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce9 rho) (shifted9 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce9 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2773) (rho 2772)
      (base rho) (twice rho) (triple rho) (digit9 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2773) (rho 2772)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3020 + rho 3021, (1 : F) + rho 3023 + rho 3024⟩ := by
      constructor
      · refine ⟨(rho 3019 + (rho 2797) - (0)), rho 3020, ?_, ?_, ?_⟩
        · linear_combination r3193
        · linear_combination r3194
        · linear_combination r3195
      · refine ⟨(rho 3022 + (rho 2798) - ((1 : F))), rho 3023, ?_, ?_, ?_⟩
        · linear_combination r3196
        · linear_combination r3197
        · linear_combination r3198
    simpa [base, twice, triple, digit9] using hraw
  have hhigh : rho 2773 =
      Bool.toZMod bits[108]! := by
    simpa only using rho_bit_of_map rho bits hbits 108 (by decide +kernel)
  have hlow : rho 2772 =
      Bool.toZMod bits[107]! := by
    simpa only using rho_bit_of_map rho bits hbits 107 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[108]! bits[107]! (base rho) (twice rho) (triple rho)
    (digit9 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit9 rho) := by
    rw [hdigit]
    cases bits[108]! <;> cases bits[107]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted9 rho) (digit9 rho) (acc10 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3017) (rho 3018) (rho 3020 + rho 3021) ((1 : F) + rho 3023 + rho 3024)
      (rho 3025) (rho 3026) (rho 3027) (rho 3028) (rho 3029) (rho 3030)
      (by simpa [shifted9] using hshift2On)
      (by simpa [digit9] using hdigitOn)
      (by linear_combination r3199)
      (by linear_combination r3200)
      (by linear_combination r3201)
      (by linear_combination r3202)
      (by linear_combination r3203)
      (by linear_combination r3204)
    simpa [shifted9, digit9, acc10] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc10 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted9 rho) (digit9 rho) (acc10 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted9 rho) (digit9 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2773) (rho 2772)
      (base rho) (twice rho) (triple rho) (acc9 rho)
      (acc10 rho) :=
    ⟨shiftOnce9 rho, shifted9 rho, digit9 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window10 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc10 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[106]! (scalarBits rho)[105]!
        (base rho) (twice rho) (triple rho) (acc10 rho)
        (acc11 rho) ∧
      EdwardsBridge.onCurve (acc11 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, r3205, r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3205 at r3205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3206 at r3206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3207 at r3207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3208 at r3208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3209 at r3209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3210 at r3210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3211 at r3211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3212 at r3212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3213 at r3213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3214 at r3214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3215 at r3215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3216 at r3216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3217 at r3217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3218 at r3218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3219 at r3219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3220 at r3220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3221 at r3221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3222 at r3222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3223 at r3223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3224 at r3224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3225 at r3225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3226 at r3226
  have hshift1 : EdwardsBridge.doubleSpec (acc10 rho) (shiftOnce10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3029) (rho 3030) (rho 3031) (rho 3032) (rho 3033) (rho 3034) (rho 3035)
      (by simpa [acc10] using hacc)
      (by linear_combination r3205)
      (by linear_combination r3206)
      (by linear_combination r3207)
      (by linear_combination r3208)
      (by linear_combination r3209)
    simpa [acc10, shiftOnce10] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc10 rho) (shiftOnce10 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc10 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce10 rho) (shifted10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3034) (rho 3035) (rho 3036) (rho 3037) (rho 3038) (rho 3039) (rho 3040)
      (by simpa [shiftOnce10] using hshift1On)
      (by linear_combination r3210)
      (by linear_combination r3211)
      (by linear_combination r3212)
      (by linear_combination r3213)
      (by linear_combination r3214)
    simpa [shiftOnce10, shifted10] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce10 rho) (shifted10 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce10 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2771) (rho 2770)
      (base rho) (twice rho) (triple rho) (digit10 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2771) (rho 2770)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3042 + rho 3043, (1 : F) + rho 3045 + rho 3046⟩ := by
      constructor
      · refine ⟨(rho 3041 + (rho 2797) - (0)), rho 3042, ?_, ?_, ?_⟩
        · linear_combination r3215
        · linear_combination r3216
        · linear_combination r3217
      · refine ⟨(rho 3044 + (rho 2798) - ((1 : F))), rho 3045, ?_, ?_, ?_⟩
        · linear_combination r3218
        · linear_combination r3219
        · linear_combination r3220
    simpa [base, twice, triple, digit10] using hraw
  have hhigh : rho 2771 =
      Bool.toZMod bits[106]! := by
    simpa only using rho_bit_of_map rho bits hbits 106 (by decide +kernel)
  have hlow : rho 2770 =
      Bool.toZMod bits[105]! := by
    simpa only using rho_bit_of_map rho bits hbits 105 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[106]! bits[105]! (base rho) (twice rho) (triple rho)
    (digit10 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit10 rho) := by
    rw [hdigit]
    cases bits[106]! <;> cases bits[105]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted10 rho) (digit10 rho) (acc11 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3039) (rho 3040) (rho 3042 + rho 3043) ((1 : F) + rho 3045 + rho 3046)
      (rho 3047) (rho 3048) (rho 3049) (rho 3050) (rho 3051) (rho 3052)
      (by simpa [shifted10] using hshift2On)
      (by simpa [digit10] using hdigitOn)
      (by linear_combination r3221)
      (by linear_combination r3222)
      (by linear_combination r3223)
      (by linear_combination r3224)
      (by linear_combination r3225)
      (by linear_combination r3226)
    simpa [shifted10, digit10, acc11] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc11 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted10 rho) (digit10 rho) (acc11 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted10 rho) (digit10 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2771) (rho 2770)
      (base rho) (twice rho) (triple rho) (acc10 rho)
      (acc11 rho) :=
    ⟨shiftOnce10 rho, shifted10 rho, digit10 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window11 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc11 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[104]! (scalarBits rho)[103]!
        (base rho) (twice rho) (triple rho) (acc11 rho)
        (acc12 rho) ∧
      EdwardsBridge.onCurve (acc12 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3227 at r3227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3228 at r3228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3229 at r3229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3230 at r3230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3231 at r3231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3232 at r3232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3233 at r3233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3234 at r3234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3235 at r3235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3236 at r3236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3237 at r3237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3238 at r3238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3239 at r3239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3240 at r3240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3241 at r3241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3242 at r3242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3243 at r3243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3244 at r3244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3245 at r3245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3246 at r3246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3247 at r3247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3248 at r3248
  have hshift1 : EdwardsBridge.doubleSpec (acc11 rho) (shiftOnce11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3051) (rho 3052) (rho 3053) (rho 3054) (rho 3055) (rho 3056) (rho 3057)
      (by simpa [acc11] using hacc)
      (by linear_combination r3227)
      (by linear_combination r3228)
      (by linear_combination r3229)
      (by linear_combination r3230)
      (by linear_combination r3231)
    simpa [acc11, shiftOnce11] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc11 rho) (shiftOnce11 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc11 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce11 rho) (shifted11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3056) (rho 3057) (rho 3058) (rho 3059) (rho 3060) (rho 3061) (rho 3062)
      (by simpa [shiftOnce11] using hshift1On)
      (by linear_combination r3232)
      (by linear_combination r3233)
      (by linear_combination r3234)
      (by linear_combination r3235)
      (by linear_combination r3236)
    simpa [shiftOnce11, shifted11] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce11 rho) (shifted11 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce11 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2769) (rho 2768)
      (base rho) (twice rho) (triple rho) (digit11 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2769) (rho 2768)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3064 + rho 3065, (1 : F) + rho 3067 + rho 3068⟩ := by
      constructor
      · refine ⟨(rho 3063 + (rho 2797) - (0)), rho 3064, ?_, ?_, ?_⟩
        · linear_combination r3237
        · linear_combination r3238
        · linear_combination r3239
      · refine ⟨(rho 3066 + (rho 2798) - ((1 : F))), rho 3067, ?_, ?_, ?_⟩
        · linear_combination r3240
        · linear_combination r3241
        · linear_combination r3242
    simpa [base, twice, triple, digit11] using hraw
  have hhigh : rho 2769 =
      Bool.toZMod bits[104]! := by
    simpa only using rho_bit_of_map rho bits hbits 104 (by decide +kernel)
  have hlow : rho 2768 =
      Bool.toZMod bits[103]! := by
    simpa only using rho_bit_of_map rho bits hbits 103 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[104]! bits[103]! (base rho) (twice rho) (triple rho)
    (digit11 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit11 rho) := by
    rw [hdigit]
    cases bits[104]! <;> cases bits[103]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted11 rho) (digit11 rho) (acc12 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3061) (rho 3062) (rho 3064 + rho 3065) ((1 : F) + rho 3067 + rho 3068)
      (rho 3069) (rho 3070) (rho 3071) (rho 3072) (rho 3073) (rho 3074)
      (by simpa [shifted11] using hshift2On)
      (by simpa [digit11] using hdigitOn)
      (by linear_combination r3243)
      (by linear_combination r3244)
      (by linear_combination r3245)
      (by linear_combination r3246)
      (by linear_combination r3247)
      (by linear_combination r3248)
    simpa [shifted11, digit11, acc12] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc12 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted11 rho) (digit11 rho) (acc12 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted11 rho) (digit11 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2769) (rho 2768)
      (base rho) (twice rho) (triple rho) (acc11 rho)
      (acc12 rho) :=
    ⟨shiftOnce11 rho, shifted11 rho, digit11 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
