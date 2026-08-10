import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window18 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc18 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[212]! (scalarBits rho)[211]!
        (base rho) (twice rho) (triple rho) (acc18 rho)
        (acc19 rho) ∧
      EdwardsBridge.onCurve (acc19 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3132, r3133, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3132 at r3132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3133 at r3133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3134 at r3134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3135 at r3135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3136 at r3136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3137 at r3137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3138 at r3138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3139 at r3139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3140 at r3140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3141 at r3141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3142 at r3142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3143 at r3143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3144 at r3144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3145 at r3145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3146 at r3146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3147 at r3147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3148 at r3148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3149 at r3149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3150 at r3150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3151 at r3151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3152 at r3152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3153 at r3153
  have hshift1 : EdwardsBridge.doubleSpec (acc18 rho) (shiftOnce18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2624) (rho 2625) (rho 2626) (rho 2627) (rho 2628) (rho 2629) (rho 2630)
      (by simpa [acc18] using hacc)
      (by linear_combination r3132)
      (by linear_combination r3133)
      (by linear_combination r3134)
      (by linear_combination r3135)
      (by linear_combination r3136)
    simpa [acc18, shiftOnce18] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc18 rho) (shiftOnce18 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc18 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce18 rho) (shifted18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2629) (rho 2630) (rho 2631) (rho 2632) (rho 2633) (rho 2634) (rho 2635)
      (by simpa [shiftOnce18] using hshift1On)
      (by linear_combination r3137)
      (by linear_combination r3138)
      (by linear_combination r3139)
      (by linear_combination r3140)
      (by linear_combination r3141)
    simpa [shiftOnce18, shifted18] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce18 rho) (shifted18 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce18 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1195) (rho 1194)
      (base rho) (twice rho) (triple rho) (digit18 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1195) (rho 1194)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2637 + rho 2638, (1 : F) + rho 2640 + rho 2641⟩ := by
      constructor
      · refine ⟨(rho 2636 + (rho 2216) - (0)), rho 2637, ?_, ?_, ?_⟩
        · linear_combination r3142
        · linear_combination r3143
        · linear_combination r3144
      · refine ⟨(rho 2639 + (rho 2217) - ((1 : F))), rho 2640, ?_, ?_, ?_⟩
        · linear_combination r3145
        · linear_combination r3146
        · linear_combination r3147
    simpa [base, twice, triple, digit18] using hraw
  have hhigh : rho 1195 =
      Bool.toZMod bits[212]! := by
    simpa only using rho_bit_of_map rho bits hbits 212 (by decide +kernel)
  have hlow : rho 1194 =
      Bool.toZMod bits[211]! := by
    simpa only using rho_bit_of_map rho bits hbits 211 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[212]! bits[211]! (base rho) (twice rho) (triple rho)
    (digit18 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit18 rho) := by
    rw [hdigit]
    cases bits[212]! <;> cases bits[211]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted18 rho) (digit18 rho) (acc19 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2634) (rho 2635) (rho 2637 + rho 2638) ((1 : F) + rho 2640 + rho 2641)
      (rho 2642) (rho 2643) (rho 2644) (rho 2645) (rho 2646) (rho 2647)
      (by simpa [shifted18] using hshift2On)
      (by simpa [digit18] using hdigitOn)
      (by linear_combination r3148)
      (by linear_combination r3149)
      (by linear_combination r3150)
      (by linear_combination r3151)
      (by linear_combination r3152)
      (by linear_combination r3153)
    simpa [shifted18, digit18, acc19] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc19 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted18 rho) (digit18 rho) (acc19 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted18 rho) (digit18 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1195) (rho 1194)
      (base rho) (twice rho) (triple rho) (acc18 rho)
      (acc19 rho) :=
    ⟨shiftOnce18 rho, shifted18 rho, digit18 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window19 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc19 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[210]! (scalarBits rho)[209]!
        (base rho) (twice rho) (triple rho) (acc19 rho)
        (acc20 rho) ∧
      EdwardsBridge.onCurve (acc20 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3154, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3154 at r3154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3155 at r3155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3156 at r3156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3157 at r3157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3158 at r3158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3159 at r3159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3160 at r3160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3161 at r3161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3162 at r3162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3163 at r3163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3164 at r3164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3165 at r3165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3166 at r3166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3167 at r3167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3168 at r3168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3169 at r3169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3170 at r3170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3171 at r3171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3172 at r3172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3173 at r3173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3174 at r3174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3175 at r3175
  have hshift1 : EdwardsBridge.doubleSpec (acc19 rho) (shiftOnce19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2646) (rho 2647) (rho 2648) (rho 2649) (rho 2650) (rho 2651) (rho 2652)
      (by simpa [acc19] using hacc)
      (by linear_combination r3154)
      (by linear_combination r3155)
      (by linear_combination r3156)
      (by linear_combination r3157)
      (by linear_combination r3158)
    simpa [acc19, shiftOnce19] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc19 rho) (shiftOnce19 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc19 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce19 rho) (shifted19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2651) (rho 2652) (rho 2653) (rho 2654) (rho 2655) (rho 2656) (rho 2657)
      (by simpa [shiftOnce19] using hshift1On)
      (by linear_combination r3159)
      (by linear_combination r3160)
      (by linear_combination r3161)
      (by linear_combination r3162)
      (by linear_combination r3163)
    simpa [shiftOnce19, shifted19] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce19 rho) (shifted19 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce19 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1193) (rho 1192)
      (base rho) (twice rho) (triple rho) (digit19 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1193) (rho 1192)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2659 + rho 2660, (1 : F) + rho 2662 + rho 2663⟩ := by
      constructor
      · refine ⟨(rho 2658 + (rho 2216) - (0)), rho 2659, ?_, ?_, ?_⟩
        · linear_combination r3164
        · linear_combination r3165
        · linear_combination r3166
      · refine ⟨(rho 2661 + (rho 2217) - ((1 : F))), rho 2662, ?_, ?_, ?_⟩
        · linear_combination r3167
        · linear_combination r3168
        · linear_combination r3169
    simpa [base, twice, triple, digit19] using hraw
  have hhigh : rho 1193 =
      Bool.toZMod bits[210]! := by
    simpa only using rho_bit_of_map rho bits hbits 210 (by decide +kernel)
  have hlow : rho 1192 =
      Bool.toZMod bits[209]! := by
    simpa only using rho_bit_of_map rho bits hbits 209 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[210]! bits[209]! (base rho) (twice rho) (triple rho)
    (digit19 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit19 rho) := by
    rw [hdigit]
    cases bits[210]! <;> cases bits[209]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted19 rho) (digit19 rho) (acc20 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2656) (rho 2657) (rho 2659 + rho 2660) ((1 : F) + rho 2662 + rho 2663)
      (rho 2664) (rho 2665) (rho 2666) (rho 2667) (rho 2668) (rho 2669)
      (by simpa [shifted19] using hshift2On)
      (by simpa [digit19] using hdigitOn)
      (by linear_combination r3170)
      (by linear_combination r3171)
      (by linear_combination r3172)
      (by linear_combination r3173)
      (by linear_combination r3174)
      (by linear_combination r3175)
    simpa [shifted19, digit19, acc20] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc20 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted19 rho) (digit19 rho) (acc20 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted19 rho) (digit19 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1193) (rho 1192)
      (base rho) (twice rho) (triple rho) (acc19 rho)
      (acc20 rho) :=
    ⟨shiftOnce19 rho, shifted19 rho, digit19 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window20 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc20 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[208]! (scalarBits rho)[207]!
        (base rho) (twice rho) (triple rho) (acc20 rho)
        (acc21 rho) ∧
      EdwardsBridge.onCurve (acc21 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3176 at r3176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3177 at r3177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3178 at r3178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3179 at r3179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3180 at r3180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3181 at r3181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3182 at r3182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3183 at r3183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3184 at r3184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3185 at r3185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3186 at r3186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3187 at r3187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3188 at r3188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3189 at r3189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3190 at r3190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3191 at r3191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3192 at r3192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3193 at r3193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3194 at r3194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3195 at r3195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3196 at r3196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3197 at r3197
  have hshift1 : EdwardsBridge.doubleSpec (acc20 rho) (shiftOnce20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2668) (rho 2669) (rho 2670) (rho 2671) (rho 2672) (rho 2673) (rho 2674)
      (by simpa [acc20] using hacc)
      (by linear_combination r3176)
      (by linear_combination r3177)
      (by linear_combination r3178)
      (by linear_combination r3179)
      (by linear_combination r3180)
    simpa [acc20, shiftOnce20] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc20 rho) (shiftOnce20 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc20 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce20 rho) (shifted20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2673) (rho 2674) (rho 2675) (rho 2676) (rho 2677) (rho 2678) (rho 2679)
      (by simpa [shiftOnce20] using hshift1On)
      (by linear_combination r3181)
      (by linear_combination r3182)
      (by linear_combination r3183)
      (by linear_combination r3184)
      (by linear_combination r3185)
    simpa [shiftOnce20, shifted20] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce20 rho) (shifted20 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce20 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1191) (rho 1190)
      (base rho) (twice rho) (triple rho) (digit20 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1191) (rho 1190)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2681 + rho 2682, (1 : F) + rho 2684 + rho 2685⟩ := by
      constructor
      · refine ⟨(rho 2680 + (rho 2216) - (0)), rho 2681, ?_, ?_, ?_⟩
        · linear_combination r3186
        · linear_combination r3187
        · linear_combination r3188
      · refine ⟨(rho 2683 + (rho 2217) - ((1 : F))), rho 2684, ?_, ?_, ?_⟩
        · linear_combination r3189
        · linear_combination r3190
        · linear_combination r3191
    simpa [base, twice, triple, digit20] using hraw
  have hhigh : rho 1191 =
      Bool.toZMod bits[208]! := by
    simpa only using rho_bit_of_map rho bits hbits 208 (by decide +kernel)
  have hlow : rho 1190 =
      Bool.toZMod bits[207]! := by
    simpa only using rho_bit_of_map rho bits hbits 207 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[208]! bits[207]! (base rho) (twice rho) (triple rho)
    (digit20 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit20 rho) := by
    rw [hdigit]
    cases bits[208]! <;> cases bits[207]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted20 rho) (digit20 rho) (acc21 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2678) (rho 2679) (rho 2681 + rho 2682) ((1 : F) + rho 2684 + rho 2685)
      (rho 2686) (rho 2687) (rho 2688) (rho 2689) (rho 2690) (rho 2691)
      (by simpa [shifted20] using hshift2On)
      (by simpa [digit20] using hdigitOn)
      (by linear_combination r3192)
      (by linear_combination r3193)
      (by linear_combination r3194)
      (by linear_combination r3195)
      (by linear_combination r3196)
      (by linear_combination r3197)
    simpa [shifted20, digit20, acc21] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc21 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted20 rho) (digit20 rho) (acc21 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted20 rho) (digit20 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1191) (rho 1190)
      (base rho) (twice rho) (triple rho) (acc20 rho)
      (acc21 rho) :=
    ⟨shiftOnce20 rho, shifted20 rho, digit20 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window21 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc21 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[206]! (scalarBits rho)[205]!
        (base rho) (twice rho) (triple rho) (acc21 rho)
        (acc22 rho) ∧
      EdwardsBridge.onCurve (acc22 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3198, r3199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3198 at r3198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3199 at r3199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3200 at r3200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3201 at r3201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3202 at r3202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3203 at r3203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3204 at r3204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3205 at r3205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3206 at r3206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3207 at r3207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3208 at r3208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3209 at r3209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3210 at r3210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3211 at r3211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3212 at r3212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3213 at r3213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3214 at r3214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3215 at r3215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3216 at r3216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3217 at r3217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3218 at r3218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3219 at r3219
  have hshift1 : EdwardsBridge.doubleSpec (acc21 rho) (shiftOnce21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2690) (rho 2691) (rho 2692) (rho 2693) (rho 2694) (rho 2695) (rho 2696)
      (by simpa [acc21] using hacc)
      (by linear_combination r3198)
      (by linear_combination r3199)
      (by linear_combination r3200)
      (by linear_combination r3201)
      (by linear_combination r3202)
    simpa [acc21, shiftOnce21] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc21 rho) (shiftOnce21 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc21 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce21 rho) (shifted21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2695) (rho 2696) (rho 2697) (rho 2698) (rho 2699) (rho 2700) (rho 2701)
      (by simpa [shiftOnce21] using hshift1On)
      (by linear_combination r3203)
      (by linear_combination r3204)
      (by linear_combination r3205)
      (by linear_combination r3206)
      (by linear_combination r3207)
    simpa [shiftOnce21, shifted21] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce21 rho) (shifted21 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce21 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1189) (rho 1188)
      (base rho) (twice rho) (triple rho) (digit21 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1189) (rho 1188)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2703 + rho 2704, (1 : F) + rho 2706 + rho 2707⟩ := by
      constructor
      · refine ⟨(rho 2702 + (rho 2216) - (0)), rho 2703, ?_, ?_, ?_⟩
        · linear_combination r3208
        · linear_combination r3209
        · linear_combination r3210
      · refine ⟨(rho 2705 + (rho 2217) - ((1 : F))), rho 2706, ?_, ?_, ?_⟩
        · linear_combination r3211
        · linear_combination r3212
        · linear_combination r3213
    simpa [base, twice, triple, digit21] using hraw
  have hhigh : rho 1189 =
      Bool.toZMod bits[206]! := by
    simpa only using rho_bit_of_map rho bits hbits 206 (by decide +kernel)
  have hlow : rho 1188 =
      Bool.toZMod bits[205]! := by
    simpa only using rho_bit_of_map rho bits hbits 205 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[206]! bits[205]! (base rho) (twice rho) (triple rho)
    (digit21 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit21 rho) := by
    rw [hdigit]
    cases bits[206]! <;> cases bits[205]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted21 rho) (digit21 rho) (acc22 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2700) (rho 2701) (rho 2703 + rho 2704) ((1 : F) + rho 2706 + rho 2707)
      (rho 2708) (rho 2709) (rho 2710) (rho 2711) (rho 2712) (rho 2713)
      (by simpa [shifted21] using hshift2On)
      (by simpa [digit21] using hdigitOn)
      (by linear_combination r3214)
      (by linear_combination r3215)
      (by linear_combination r3216)
      (by linear_combination r3217)
      (by linear_combination r3218)
      (by linear_combination r3219)
    simpa [shifted21, digit21, acc22] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc22 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted21 rho) (digit21 rho) (acc22 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted21 rho) (digit21 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1189) (rho 1188)
      (base rho) (twice rho) (triple rho) (acc21 rho)
      (acc22 rho) :=
    ⟨shiftOnce21 rho, shifted21 rho, digit21 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window22 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc22 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[204]! (scalarBits rho)[203]!
        (base rho) (twice rho) (triple rho) (acc22 rho)
        (acc23 rho) ∧
      EdwardsBridge.onCurve (acc23 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3220 at r3220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3221 at r3221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3222 at r3222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3223 at r3223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3224 at r3224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3225 at r3225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3226 at r3226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3227 at r3227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3228 at r3228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3229 at r3229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3230 at r3230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3231 at r3231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3232 at r3232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3233 at r3233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3234 at r3234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3235 at r3235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3236 at r3236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3237 at r3237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3238 at r3238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3239 at r3239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3240 at r3240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3241 at r3241
  have hshift1 : EdwardsBridge.doubleSpec (acc22 rho) (shiftOnce22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2712) (rho 2713) (rho 2714) (rho 2715) (rho 2716) (rho 2717) (rho 2718)
      (by simpa [acc22] using hacc)
      (by linear_combination r3220)
      (by linear_combination r3221)
      (by linear_combination r3222)
      (by linear_combination r3223)
      (by linear_combination r3224)
    simpa [acc22, shiftOnce22] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc22 rho) (shiftOnce22 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc22 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce22 rho) (shifted22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2717) (rho 2718) (rho 2719) (rho 2720) (rho 2721) (rho 2722) (rho 2723)
      (by simpa [shiftOnce22] using hshift1On)
      (by linear_combination r3225)
      (by linear_combination r3226)
      (by linear_combination r3227)
      (by linear_combination r3228)
      (by linear_combination r3229)
    simpa [shiftOnce22, shifted22] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce22 rho) (shifted22 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce22 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1187) (rho 1186)
      (base rho) (twice rho) (triple rho) (digit22 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1187) (rho 1186)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2725 + rho 2726, (1 : F) + rho 2728 + rho 2729⟩ := by
      constructor
      · refine ⟨(rho 2724 + (rho 2216) - (0)), rho 2725, ?_, ?_, ?_⟩
        · linear_combination r3230
        · linear_combination r3231
        · linear_combination r3232
      · refine ⟨(rho 2727 + (rho 2217) - ((1 : F))), rho 2728, ?_, ?_, ?_⟩
        · linear_combination r3233
        · linear_combination r3234
        · linear_combination r3235
    simpa [base, twice, triple, digit22] using hraw
  have hhigh : rho 1187 =
      Bool.toZMod bits[204]! := by
    simpa only using rho_bit_of_map rho bits hbits 204 (by decide +kernel)
  have hlow : rho 1186 =
      Bool.toZMod bits[203]! := by
    simpa only using rho_bit_of_map rho bits hbits 203 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[204]! bits[203]! (base rho) (twice rho) (triple rho)
    (digit22 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit22 rho) := by
    rw [hdigit]
    cases bits[204]! <;> cases bits[203]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted22 rho) (digit22 rho) (acc23 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2722) (rho 2723) (rho 2725 + rho 2726) ((1 : F) + rho 2728 + rho 2729)
      (rho 2730) (rho 2731) (rho 2732) (rho 2733) (rho 2734) (rho 2735)
      (by simpa [shifted22] using hshift2On)
      (by simpa [digit22] using hdigitOn)
      (by linear_combination r3236)
      (by linear_combination r3237)
      (by linear_combination r3238)
      (by linear_combination r3239)
      (by linear_combination r3240)
      (by linear_combination r3241)
    simpa [shifted22, digit22, acc23] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc23 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted22 rho) (digit22 rho) (acc23 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted22 rho) (digit22 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1187) (rho 1186)
      (base rho) (twice rho) (triple rho) (acc22 rho)
      (acc23 rho) :=
    ⟨shiftOnce22 rho, shifted22 rho, digit22 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window23 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc23 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[202]! (scalarBits rho)[201]!
        (base rho) (twice rho) (triple rho) (acc23 rho)
        (acc24 rho) ∧
      EdwardsBridge.onCurve (acc24 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3242 at r3242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3243 at r3243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3244 at r3244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3245 at r3245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3246 at r3246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3247 at r3247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3248 at r3248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3249 at r3249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3250 at r3250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3251 at r3251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3252 at r3252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3253 at r3253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3254 at r3254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3255 at r3255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3256 at r3256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3257 at r3257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3258 at r3258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3259 at r3259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3260 at r3260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3261 at r3261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3262 at r3262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3263 at r3263
  have hshift1 : EdwardsBridge.doubleSpec (acc23 rho) (shiftOnce23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2734) (rho 2735) (rho 2736) (rho 2737) (rho 2738) (rho 2739) (rho 2740)
      (by simpa [acc23] using hacc)
      (by linear_combination r3242)
      (by linear_combination r3243)
      (by linear_combination r3244)
      (by linear_combination r3245)
      (by linear_combination r3246)
    simpa [acc23, shiftOnce23] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc23 rho) (shiftOnce23 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc23 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce23 rho) (shifted23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2739) (rho 2740) (rho 2741) (rho 2742) (rho 2743) (rho 2744) (rho 2745)
      (by simpa [shiftOnce23] using hshift1On)
      (by linear_combination r3247)
      (by linear_combination r3248)
      (by linear_combination r3249)
      (by linear_combination r3250)
      (by linear_combination r3251)
    simpa [shiftOnce23, shifted23] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce23 rho) (shifted23 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce23 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1185) (rho 1184)
      (base rho) (twice rho) (triple rho) (digit23 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1185) (rho 1184)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2747 + rho 2748, (1 : F) + rho 2750 + rho 2751⟩ := by
      constructor
      · refine ⟨(rho 2746 + (rho 2216) - (0)), rho 2747, ?_, ?_, ?_⟩
        · linear_combination r3252
        · linear_combination r3253
        · linear_combination r3254
      · refine ⟨(rho 2749 + (rho 2217) - ((1 : F))), rho 2750, ?_, ?_, ?_⟩
        · linear_combination r3255
        · linear_combination r3256
        · linear_combination r3257
    simpa [base, twice, triple, digit23] using hraw
  have hhigh : rho 1185 =
      Bool.toZMod bits[202]! := by
    simpa only using rho_bit_of_map rho bits hbits 202 (by decide +kernel)
  have hlow : rho 1184 =
      Bool.toZMod bits[201]! := by
    simpa only using rho_bit_of_map rho bits hbits 201 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[202]! bits[201]! (base rho) (twice rho) (triple rho)
    (digit23 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit23 rho) := by
    rw [hdigit]
    cases bits[202]! <;> cases bits[201]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted23 rho) (digit23 rho) (acc24 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2744) (rho 2745) (rho 2747 + rho 2748) ((1 : F) + rho 2750 + rho 2751)
      (rho 2752) (rho 2753) (rho 2754) (rho 2755) (rho 2756) (rho 2757)
      (by simpa [shifted23] using hshift2On)
      (by simpa [digit23] using hdigitOn)
      (by linear_combination r3258)
      (by linear_combination r3259)
      (by linear_combination r3260)
      (by linear_combination r3261)
      (by linear_combination r3262)
      (by linear_combination r3263)
    simpa [shifted23, digit23, acc24] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc24 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted23 rho) (digit23 rho) (acc24 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted23 rho) (digit23 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1185) (rho 1184)
      (base rho) (twice rho) (triple rho) (acc23 rho)
      (acc24 rho) :=
    ⟨shiftOnce23 rho, shifted23 rho, digit23 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
