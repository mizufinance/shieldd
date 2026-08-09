import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window54 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc54 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[18]! (scalarBits rho)[17]!
        (base rho) (twice rho) (triple rho) (acc54 rho)
        (acc55 rho) ∧
      EdwardsBridge.onCurve (acc55 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4173 at r4173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4174 at r4174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4175 at r4175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4176 at r4176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4177 at r4177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4178 at r4178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4179 at r4179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4180 at r4180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4181 at r4181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4182 at r4182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4183 at r4183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4184 at r4184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4185 at r4185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4186 at r4186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4187 at r4187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4188 at r4188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4189 at r4189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4190 at r4190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4191 at r4191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4192 at r4192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4193 at r4193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4194 at r4194
  have hshift1 : EdwardsBridge.doubleSpec (acc54 rho) (shiftOnce54 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3997) (rho 3998) (rho 3999) (rho 4000) (rho 4001) (rho 4002) (rho 4003)
      (by simpa [acc54] using hacc)
      (by linear_combination r4173)
      (by linear_combination r4174)
      (by linear_combination r4175)
      (by linear_combination r4176)
      (by linear_combination r4177)
    simpa [acc54, shiftOnce54] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce54 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc54 rho) (shiftOnce54 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc54 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce54 rho) (shifted54 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4002) (rho 4003) (rho 4004) (rho 4005) (rho 4006) (rho 4007) (rho 4008)
      (by simpa [shiftOnce54] using hshift1On)
      (by linear_combination r4178)
      (by linear_combination r4179)
      (by linear_combination r4180)
      (by linear_combination r4181)
      (by linear_combination r4182)
    simpa [shiftOnce54, shifted54] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted54 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce54 rho) (shifted54 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce54 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2683) (rho 2682)
      (base rho) (twice rho) (triple rho) (digit54 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2683) (rho 2682)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4010 + rho 4011, (1 : F) + rho 4013 + rho 4014⟩ := by
      constructor
      · refine ⟨(rho 4009 + (rho 2797) - (0)), rho 4010, ?_, ?_, ?_⟩
        · linear_combination r4183
        · linear_combination r4184
        · linear_combination r4185
      · refine ⟨(rho 4012 + (rho 2798) - ((1 : F))), rho 4013, ?_, ?_, ?_⟩
        · linear_combination r4186
        · linear_combination r4187
        · linear_combination r4188
    simpa [base, twice, triple, digit54] using hraw
  have hhigh : rho 2683 =
      Bool.toZMod bits[18]! := by
    simpa only using rho_bit_of_map rho bits hbits 18 (by decide +kernel)
  have hlow : rho 2682 =
      Bool.toZMod bits[17]! := by
    simpa only using rho_bit_of_map rho bits hbits 17 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[18]! bits[17]! (base rho) (twice rho) (triple rho)
    (digit54 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit54 rho) := by
    rw [hdigit]
    cases bits[18]! <;> cases bits[17]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted54 rho) (digit54 rho) (acc55 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4007) (rho 4008) (rho 4010 + rho 4011) ((1 : F) + rho 4013 + rho 4014)
      (rho 4015) (rho 4016) (rho 4017) (rho 4018) (rho 4019) (rho 4020)
      (by simpa [shifted54] using hshift2On)
      (by simpa [digit54] using hdigitOn)
      (by linear_combination r4189)
      (by linear_combination r4190)
      (by linear_combination r4191)
      (by linear_combination r4192)
      (by linear_combination r4193)
      (by linear_combination r4194)
    simpa [shifted54, digit54, acc55] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc55 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted54 rho) (digit54 rho) (acc55 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted54 rho) (digit54 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2683) (rho 2682)
      (base rho) (twice rho) (triple rho) (acc54 rho)
      (acc55 rho) :=
    ⟨shiftOnce54 rho, shifted54 rho, digit54 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window55 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc55 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[16]! (scalarBits rho)[15]!
        (base rho) (twice rho) (triple rho) (acc55 rho)
        (acc56 rho) ∧
      EdwardsBridge.onCurve (acc56 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4195 at r4195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4196 at r4196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4197 at r4197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4198 at r4198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4199 at r4199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4200 at r4200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4201 at r4201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4202 at r4202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4203 at r4203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4204 at r4204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4205 at r4205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4206 at r4206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4207 at r4207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4208 at r4208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4209 at r4209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4210 at r4210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4211 at r4211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4212 at r4212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4213 at r4213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4214 at r4214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4215 at r4215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4216 at r4216
  have hshift1 : EdwardsBridge.doubleSpec (acc55 rho) (shiftOnce55 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4019) (rho 4020) (rho 4021) (rho 4022) (rho 4023) (rho 4024) (rho 4025)
      (by simpa [acc55] using hacc)
      (by linear_combination r4195)
      (by linear_combination r4196)
      (by linear_combination r4197)
      (by linear_combination r4198)
      (by linear_combination r4199)
    simpa [acc55, shiftOnce55] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce55 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc55 rho) (shiftOnce55 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc55 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce55 rho) (shifted55 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4024) (rho 4025) (rho 4026) (rho 4027) (rho 4028) (rho 4029) (rho 4030)
      (by simpa [shiftOnce55] using hshift1On)
      (by linear_combination r4200)
      (by linear_combination r4201)
      (by linear_combination r4202)
      (by linear_combination r4203)
      (by linear_combination r4204)
    simpa [shiftOnce55, shifted55] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted55 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce55 rho) (shifted55 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce55 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2681) (rho 2680)
      (base rho) (twice rho) (triple rho) (digit55 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2681) (rho 2680)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4032 + rho 4033, (1 : F) + rho 4035 + rho 4036⟩ := by
      constructor
      · refine ⟨(rho 4031 + (rho 2797) - (0)), rho 4032, ?_, ?_, ?_⟩
        · linear_combination r4205
        · linear_combination r4206
        · linear_combination r4207
      · refine ⟨(rho 4034 + (rho 2798) - ((1 : F))), rho 4035, ?_, ?_, ?_⟩
        · linear_combination r4208
        · linear_combination r4209
        · linear_combination r4210
    simpa [base, twice, triple, digit55] using hraw
  have hhigh : rho 2681 =
      Bool.toZMod bits[16]! := by
    simpa only using rho_bit_of_map rho bits hbits 16 (by decide +kernel)
  have hlow : rho 2680 =
      Bool.toZMod bits[15]! := by
    simpa only using rho_bit_of_map rho bits hbits 15 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[16]! bits[15]! (base rho) (twice rho) (triple rho)
    (digit55 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit55 rho) := by
    rw [hdigit]
    cases bits[16]! <;> cases bits[15]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted55 rho) (digit55 rho) (acc56 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4029) (rho 4030) (rho 4032 + rho 4033) ((1 : F) + rho 4035 + rho 4036)
      (rho 4037) (rho 4038) (rho 4039) (rho 4040) (rho 4041) (rho 4042)
      (by simpa [shifted55] using hshift2On)
      (by simpa [digit55] using hdigitOn)
      (by linear_combination r4211)
      (by linear_combination r4212)
      (by linear_combination r4213)
      (by linear_combination r4214)
      (by linear_combination r4215)
      (by linear_combination r4216)
    simpa [shifted55, digit55, acc56] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc56 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted55 rho) (digit55 rho) (acc56 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted55 rho) (digit55 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2681) (rho 2680)
      (base rho) (twice rho) (triple rho) (acc55 rho)
      (acc56 rho) :=
    ⟨shiftOnce55 rho, shifted55 rho, digit55 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window56 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc56 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[14]! (scalarBits rho)[13]!
        (base rho) (twice rho) (triple rho) (acc56 rho)
        (acc57 rho) ∧
      EdwardsBridge.onCurve (acc57 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4217 at r4217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4218 at r4218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4219 at r4219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4220 at r4220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4221 at r4221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4222 at r4222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4223 at r4223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4224 at r4224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4225 at r4225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4226 at r4226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4227 at r4227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4228 at r4228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4229 at r4229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4230 at r4230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4231 at r4231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4232 at r4232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4233 at r4233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4234 at r4234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4235 at r4235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4236 at r4236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4237 at r4237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4238 at r4238
  have hshift1 : EdwardsBridge.doubleSpec (acc56 rho) (shiftOnce56 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4041) (rho 4042) (rho 4043) (rho 4044) (rho 4045) (rho 4046) (rho 4047)
      (by simpa [acc56] using hacc)
      (by linear_combination r4217)
      (by linear_combination r4218)
      (by linear_combination r4219)
      (by linear_combination r4220)
      (by linear_combination r4221)
    simpa [acc56, shiftOnce56] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce56 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc56 rho) (shiftOnce56 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc56 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce56 rho) (shifted56 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4046) (rho 4047) (rho 4048) (rho 4049) (rho 4050) (rho 4051) (rho 4052)
      (by simpa [shiftOnce56] using hshift1On)
      (by linear_combination r4222)
      (by linear_combination r4223)
      (by linear_combination r4224)
      (by linear_combination r4225)
      (by linear_combination r4226)
    simpa [shiftOnce56, shifted56] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted56 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce56 rho) (shifted56 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce56 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2679) (rho 2678)
      (base rho) (twice rho) (triple rho) (digit56 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2679) (rho 2678)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4054 + rho 4055, (1 : F) + rho 4057 + rho 4058⟩ := by
      constructor
      · refine ⟨(rho 4053 + (rho 2797) - (0)), rho 4054, ?_, ?_, ?_⟩
        · linear_combination r4227
        · linear_combination r4228
        · linear_combination r4229
      · refine ⟨(rho 4056 + (rho 2798) - ((1 : F))), rho 4057, ?_, ?_, ?_⟩
        · linear_combination r4230
        · linear_combination r4231
        · linear_combination r4232
    simpa [base, twice, triple, digit56] using hraw
  have hhigh : rho 2679 =
      Bool.toZMod bits[14]! := by
    simpa only using rho_bit_of_map rho bits hbits 14 (by decide +kernel)
  have hlow : rho 2678 =
      Bool.toZMod bits[13]! := by
    simpa only using rho_bit_of_map rho bits hbits 13 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[14]! bits[13]! (base rho) (twice rho) (triple rho)
    (digit56 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit56 rho) := by
    rw [hdigit]
    cases bits[14]! <;> cases bits[13]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted56 rho) (digit56 rho) (acc57 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4051) (rho 4052) (rho 4054 + rho 4055) ((1 : F) + rho 4057 + rho 4058)
      (rho 4059) (rho 4060) (rho 4061) (rho 4062) (rho 4063) (rho 4064)
      (by simpa [shifted56] using hshift2On)
      (by simpa [digit56] using hdigitOn)
      (by linear_combination r4233)
      (by linear_combination r4234)
      (by linear_combination r4235)
      (by linear_combination r4236)
      (by linear_combination r4237)
      (by linear_combination r4238)
    simpa [shifted56, digit56, acc57] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc57 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted56 rho) (digit56 rho) (acc57 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted56 rho) (digit56 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2679) (rho 2678)
      (base rho) (twice rho) (triple rho) (acc56 rho)
      (acc57 rho) :=
    ⟨shiftOnce56 rho, shifted56 rho, digit56 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window57 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc57 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[12]! (scalarBits rho)[11]!
        (base rho) (twice rho) (triple rho) (acc57 rho)
        (acc58 rho) ∧
      EdwardsBridge.onCurve (acc58 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4239 at r4239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4240 at r4240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4241 at r4241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4242 at r4242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4243 at r4243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4244 at r4244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4245 at r4245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4246 at r4246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4247 at r4247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4248 at r4248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4249 at r4249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4250 at r4250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4251 at r4251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4252 at r4252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4253 at r4253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4254 at r4254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4255 at r4255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4256 at r4256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4257 at r4257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4258 at r4258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4259 at r4259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4260 at r4260
  have hshift1 : EdwardsBridge.doubleSpec (acc57 rho) (shiftOnce57 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4063) (rho 4064) (rho 4065) (rho 4066) (rho 4067) (rho 4068) (rho 4069)
      (by simpa [acc57] using hacc)
      (by linear_combination r4239)
      (by linear_combination r4240)
      (by linear_combination r4241)
      (by linear_combination r4242)
      (by linear_combination r4243)
    simpa [acc57, shiftOnce57] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce57 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc57 rho) (shiftOnce57 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc57 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce57 rho) (shifted57 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4068) (rho 4069) (rho 4070) (rho 4071) (rho 4072) (rho 4073) (rho 4074)
      (by simpa [shiftOnce57] using hshift1On)
      (by linear_combination r4244)
      (by linear_combination r4245)
      (by linear_combination r4246)
      (by linear_combination r4247)
      (by linear_combination r4248)
    simpa [shiftOnce57, shifted57] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted57 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce57 rho) (shifted57 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce57 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2677) (rho 2676)
      (base rho) (twice rho) (triple rho) (digit57 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2677) (rho 2676)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4076 + rho 4077, (1 : F) + rho 4079 + rho 4080⟩ := by
      constructor
      · refine ⟨(rho 4075 + (rho 2797) - (0)), rho 4076, ?_, ?_, ?_⟩
        · linear_combination r4249
        · linear_combination r4250
        · linear_combination r4251
      · refine ⟨(rho 4078 + (rho 2798) - ((1 : F))), rho 4079, ?_, ?_, ?_⟩
        · linear_combination r4252
        · linear_combination r4253
        · linear_combination r4254
    simpa [base, twice, triple, digit57] using hraw
  have hhigh : rho 2677 =
      Bool.toZMod bits[12]! := by
    simpa only using rho_bit_of_map rho bits hbits 12 (by decide +kernel)
  have hlow : rho 2676 =
      Bool.toZMod bits[11]! := by
    simpa only using rho_bit_of_map rho bits hbits 11 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[12]! bits[11]! (base rho) (twice rho) (triple rho)
    (digit57 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit57 rho) := by
    rw [hdigit]
    cases bits[12]! <;> cases bits[11]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted57 rho) (digit57 rho) (acc58 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4073) (rho 4074) (rho 4076 + rho 4077) ((1 : F) + rho 4079 + rho 4080)
      (rho 4081) (rho 4082) (rho 4083) (rho 4084) (rho 4085) (rho 4086)
      (by simpa [shifted57] using hshift2On)
      (by simpa [digit57] using hdigitOn)
      (by linear_combination r4255)
      (by linear_combination r4256)
      (by linear_combination r4257)
      (by linear_combination r4258)
      (by linear_combination r4259)
      (by linear_combination r4260)
    simpa [shifted57, digit57, acc58] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc58 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted57 rho) (digit57 rho) (acc58 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted57 rho) (digit57 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2677) (rho 2676)
      (base rho) (twice rho) (triple rho) (acc57 rho)
      (acc58 rho) :=
    ⟨shiftOnce57 rho, shifted57 rho, digit57 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window58 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc58 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[10]! (scalarBits rho)[9]!
        (base rho) (twice rho) (triple rho) (acc58 rho)
        (acc59 rho) ∧
      EdwardsBridge.onCurve (acc59 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4261 at r4261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4262 at r4262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4263 at r4263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4264 at r4264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4265 at r4265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4266 at r4266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4267 at r4267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4268 at r4268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4269 at r4269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4270 at r4270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4271 at r4271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4272 at r4272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4273 at r4273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4274 at r4274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4275 at r4275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4276 at r4276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4277 at r4277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4278 at r4278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4279 at r4279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4280 at r4280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4281 at r4281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4282 at r4282
  have hshift1 : EdwardsBridge.doubleSpec (acc58 rho) (shiftOnce58 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4085) (rho 4086) (rho 4087) (rho 4088) (rho 4089) (rho 4090) (rho 4091)
      (by simpa [acc58] using hacc)
      (by linear_combination r4261)
      (by linear_combination r4262)
      (by linear_combination r4263)
      (by linear_combination r4264)
      (by linear_combination r4265)
    simpa [acc58, shiftOnce58] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce58 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc58 rho) (shiftOnce58 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc58 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce58 rho) (shifted58 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4090) (rho 4091) (rho 4092) (rho 4093) (rho 4094) (rho 4095) (rho 4096)
      (by simpa [shiftOnce58] using hshift1On)
      (by linear_combination r4266)
      (by linear_combination r4267)
      (by linear_combination r4268)
      (by linear_combination r4269)
      (by linear_combination r4270)
    simpa [shiftOnce58, shifted58] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted58 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce58 rho) (shifted58 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce58 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2675) (rho 2674)
      (base rho) (twice rho) (triple rho) (digit58 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2675) (rho 2674)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4098 + rho 4099, (1 : F) + rho 4101 + rho 4102⟩ := by
      constructor
      · refine ⟨(rho 4097 + (rho 2797) - (0)), rho 4098, ?_, ?_, ?_⟩
        · linear_combination r4271
        · linear_combination r4272
        · linear_combination r4273
      · refine ⟨(rho 4100 + (rho 2798) - ((1 : F))), rho 4101, ?_, ?_, ?_⟩
        · linear_combination r4274
        · linear_combination r4275
        · linear_combination r4276
    simpa [base, twice, triple, digit58] using hraw
  have hhigh : rho 2675 =
      Bool.toZMod bits[10]! := by
    simpa only using rho_bit_of_map rho bits hbits 10 (by decide +kernel)
  have hlow : rho 2674 =
      Bool.toZMod bits[9]! := by
    simpa only using rho_bit_of_map rho bits hbits 9 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[10]! bits[9]! (base rho) (twice rho) (triple rho)
    (digit58 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit58 rho) := by
    rw [hdigit]
    cases bits[10]! <;> cases bits[9]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted58 rho) (digit58 rho) (acc59 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4095) (rho 4096) (rho 4098 + rho 4099) ((1 : F) + rho 4101 + rho 4102)
      (rho 4103) (rho 4104) (rho 4105) (rho 4106) (rho 4107) (rho 4108)
      (by simpa [shifted58] using hshift2On)
      (by simpa [digit58] using hdigitOn)
      (by linear_combination r4277)
      (by linear_combination r4278)
      (by linear_combination r4279)
      (by linear_combination r4280)
      (by linear_combination r4281)
      (by linear_combination r4282)
    simpa [shifted58, digit58, acc59] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc59 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted58 rho) (digit58 rho) (acc59 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted58 rho) (digit58 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2675) (rho 2674)
      (base rho) (twice rho) (triple rho) (acc58 rho)
      (acc59 rho) :=
    ⟨shiftOnce58 rho, shifted58 rho, digit58 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window59 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc59 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[8]! (scalarBits rho)[7]!
        (base rho) (twice rho) (triple rho) (acc59 rho)
        (acc60 rho) ∧
      EdwardsBridge.onCurve (acc60 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, r4304, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4283 at r4283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4284 at r4284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4285 at r4285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4286 at r4286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4287 at r4287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4288 at r4288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4289 at r4289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4290 at r4290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4291 at r4291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4292 at r4292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4293 at r4293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4294 at r4294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4295 at r4295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4296 at r4296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4297 at r4297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4298 at r4298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4299 at r4299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4300 at r4300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4301 at r4301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4302 at r4302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4303 at r4303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4304 at r4304
  have hshift1 : EdwardsBridge.doubleSpec (acc59 rho) (shiftOnce59 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4107) (rho 4108) (rho 4109) (rho 4110) (rho 4111) (rho 4112) (rho 4113)
      (by simpa [acc59] using hacc)
      (by linear_combination r4283)
      (by linear_combination r4284)
      (by linear_combination r4285)
      (by linear_combination r4286)
      (by linear_combination r4287)
    simpa [acc59, shiftOnce59] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce59 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc59 rho) (shiftOnce59 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc59 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce59 rho) (shifted59 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4112) (rho 4113) (rho 4114) (rho 4115) (rho 4116) (rho 4117) (rho 4118)
      (by simpa [shiftOnce59] using hshift1On)
      (by linear_combination r4288)
      (by linear_combination r4289)
      (by linear_combination r4290)
      (by linear_combination r4291)
      (by linear_combination r4292)
    simpa [shiftOnce59, shifted59] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted59 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce59 rho) (shifted59 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce59 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2673) (rho 2672)
      (base rho) (twice rho) (triple rho) (digit59 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2673) (rho 2672)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4120 + rho 4121, (1 : F) + rho 4123 + rho 4124⟩ := by
      constructor
      · refine ⟨(rho 4119 + (rho 2797) - (0)), rho 4120, ?_, ?_, ?_⟩
        · linear_combination r4293
        · linear_combination r4294
        · linear_combination r4295
      · refine ⟨(rho 4122 + (rho 2798) - ((1 : F))), rho 4123, ?_, ?_, ?_⟩
        · linear_combination r4296
        · linear_combination r4297
        · linear_combination r4298
    simpa [base, twice, triple, digit59] using hraw
  have hhigh : rho 2673 =
      Bool.toZMod bits[8]! := by
    simpa only using rho_bit_of_map rho bits hbits 8 (by decide +kernel)
  have hlow : rho 2672 =
      Bool.toZMod bits[7]! := by
    simpa only using rho_bit_of_map rho bits hbits 7 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[8]! bits[7]! (base rho) (twice rho) (triple rho)
    (digit59 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit59 rho) := by
    rw [hdigit]
    cases bits[8]! <;> cases bits[7]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted59 rho) (digit59 rho) (acc60 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4117) (rho 4118) (rho 4120 + rho 4121) ((1 : F) + rho 4123 + rho 4124)
      (rho 4125) (rho 4126) (rho 4127) (rho 4128) (rho 4129) (rho 4130)
      (by simpa [shifted59] using hshift2On)
      (by simpa [digit59] using hdigitOn)
      (by linear_combination r4299)
      (by linear_combination r4300)
      (by linear_combination r4301)
      (by linear_combination r4302)
      (by linear_combination r4303)
      (by linear_combination r4304)
    simpa [shifted59, digit59, acc60] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc60 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted59 rho) (digit59 rho) (acc60 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted59 rho) (digit59 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2673) (rho 2672)
      (base rho) (twice rho) (triple rho) (acc59 rho)
      (acc60 rho) :=
    ⟨shiftOnce59 rho, shifted59 rho, digit59 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
