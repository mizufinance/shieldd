import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window66 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc66 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[116]! (scalarBits rho)[115]!
        (base rho) (twice rho) (triple rho) (acc66 rho)
        (acc67 rho) ∧
      EdwardsBridge.onCurve (acc67 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4188 at r4188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4189 at r4189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4190 at r4190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4191 at r4191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4192 at r4192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4193 at r4193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4194 at r4194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4195 at r4195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4196 at r4196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4197 at r4197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4198 at r4198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4199 at r4199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4200 at r4200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4201 at r4201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4202 at r4202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4203 at r4203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4204 at r4204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4205 at r4205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4206 at r4206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4207 at r4207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4208 at r4208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4209 at r4209
  have hshift1 : EdwardsBridge.doubleSpec (acc66 rho) (shiftOnce66 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3680) (rho 3681) (rho 3682) (rho 3683) (rho 3684) (rho 3685) (rho 3686)
      (by simpa [acc66] using hacc)
      (by linear_combination r4188)
      (by linear_combination r4189)
      (by linear_combination r4190)
      (by linear_combination r4191)
      (by linear_combination r4192)
    simpa [acc66, shiftOnce66] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce66 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc66 rho) (shiftOnce66 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc66 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce66 rho) (shifted66 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3685) (rho 3686) (rho 3687) (rho 3688) (rho 3689) (rho 3690) (rho 3691)
      (by simpa [shiftOnce66] using hshift1On)
      (by linear_combination r4193)
      (by linear_combination r4194)
      (by linear_combination r4195)
      (by linear_combination r4196)
      (by linear_combination r4197)
    simpa [shiftOnce66, shifted66] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted66 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce66 rho) (shifted66 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce66 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1099) (rho 1098)
      (base rho) (twice rho) (triple rho) (digit66 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1099) (rho 1098)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3693 + rho 3694, (1 : F) + rho 3696 + rho 3697⟩ := by
      constructor
      · refine ⟨(rho 3692 + (rho 2216) - (0)), rho 3693, ?_, ?_, ?_⟩
        · linear_combination r4198
        · linear_combination r4199
        · linear_combination r4200
      · refine ⟨(rho 3695 + (rho 2217) - ((1 : F))), rho 3696, ?_, ?_, ?_⟩
        · linear_combination r4201
        · linear_combination r4202
        · linear_combination r4203
    simpa [base, twice, triple, digit66] using hraw
  have hhigh : rho 1099 =
      Bool.toZMod bits[116]! := by
    simpa only using rho_bit_of_map rho bits hbits 116 (by decide +kernel)
  have hlow : rho 1098 =
      Bool.toZMod bits[115]! := by
    simpa only using rho_bit_of_map rho bits hbits 115 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[116]! bits[115]! (base rho) (twice rho) (triple rho)
    (digit66 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit66 rho) := by
    rw [hdigit]
    cases bits[116]! <;> cases bits[115]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted66 rho) (digit66 rho) (acc67 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3690) (rho 3691) (rho 3693 + rho 3694) ((1 : F) + rho 3696 + rho 3697)
      (rho 3698) (rho 3699) (rho 3700) (rho 3701) (rho 3702) (rho 3703)
      (by simpa [shifted66] using hshift2On)
      (by simpa [digit66] using hdigitOn)
      (by linear_combination r4204)
      (by linear_combination r4205)
      (by linear_combination r4206)
      (by linear_combination r4207)
      (by linear_combination r4208)
      (by linear_combination r4209)
    simpa [shifted66, digit66, acc67] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc67 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted66 rho) (digit66 rho) (acc67 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted66 rho) (digit66 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1099) (rho 1098)
      (base rho) (twice rho) (triple rho) (acc66 rho)
      (acc67 rho) :=
    ⟨shiftOnce66 rho, shifted66 rho, digit66 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window67 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc67 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[114]! (scalarBits rho)[113]!
        (base rho) (twice rho) (triple rho) (acc67 rho)
        (acc68 rho) ∧
      EdwardsBridge.onCurve (acc68 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4210 at r4210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4211 at r4211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4212 at r4212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4213 at r4213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4214 at r4214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4215 at r4215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4216 at r4216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4217 at r4217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4218 at r4218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4219 at r4219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4220 at r4220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4221 at r4221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4222 at r4222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4223 at r4223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4224 at r4224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4225 at r4225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4226 at r4226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4227 at r4227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4228 at r4228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4229 at r4229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4230 at r4230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4231 at r4231
  have hshift1 : EdwardsBridge.doubleSpec (acc67 rho) (shiftOnce67 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3702) (rho 3703) (rho 3704) (rho 3705) (rho 3706) (rho 3707) (rho 3708)
      (by simpa [acc67] using hacc)
      (by linear_combination r4210)
      (by linear_combination r4211)
      (by linear_combination r4212)
      (by linear_combination r4213)
      (by linear_combination r4214)
    simpa [acc67, shiftOnce67] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce67 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc67 rho) (shiftOnce67 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc67 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce67 rho) (shifted67 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3707) (rho 3708) (rho 3709) (rho 3710) (rho 3711) (rho 3712) (rho 3713)
      (by simpa [shiftOnce67] using hshift1On)
      (by linear_combination r4215)
      (by linear_combination r4216)
      (by linear_combination r4217)
      (by linear_combination r4218)
      (by linear_combination r4219)
    simpa [shiftOnce67, shifted67] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted67 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce67 rho) (shifted67 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce67 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1097) (rho 1096)
      (base rho) (twice rho) (triple rho) (digit67 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1097) (rho 1096)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3715 + rho 3716, (1 : F) + rho 3718 + rho 3719⟩ := by
      constructor
      · refine ⟨(rho 3714 + (rho 2216) - (0)), rho 3715, ?_, ?_, ?_⟩
        · linear_combination r4220
        · linear_combination r4221
        · linear_combination r4222
      · refine ⟨(rho 3717 + (rho 2217) - ((1 : F))), rho 3718, ?_, ?_, ?_⟩
        · linear_combination r4223
        · linear_combination r4224
        · linear_combination r4225
    simpa [base, twice, triple, digit67] using hraw
  have hhigh : rho 1097 =
      Bool.toZMod bits[114]! := by
    simpa only using rho_bit_of_map rho bits hbits 114 (by decide +kernel)
  have hlow : rho 1096 =
      Bool.toZMod bits[113]! := by
    simpa only using rho_bit_of_map rho bits hbits 113 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[114]! bits[113]! (base rho) (twice rho) (triple rho)
    (digit67 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit67 rho) := by
    rw [hdigit]
    cases bits[114]! <;> cases bits[113]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted67 rho) (digit67 rho) (acc68 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3712) (rho 3713) (rho 3715 + rho 3716) ((1 : F) + rho 3718 + rho 3719)
      (rho 3720) (rho 3721) (rho 3722) (rho 3723) (rho 3724) (rho 3725)
      (by simpa [shifted67] using hshift2On)
      (by simpa [digit67] using hdigitOn)
      (by linear_combination r4226)
      (by linear_combination r4227)
      (by linear_combination r4228)
      (by linear_combination r4229)
      (by linear_combination r4230)
      (by linear_combination r4231)
    simpa [shifted67, digit67, acc68] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc68 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted67 rho) (digit67 rho) (acc68 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted67 rho) (digit67 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1097) (rho 1096)
      (base rho) (twice rho) (triple rho) (acc67 rho)
      (acc68 rho) :=
    ⟨shiftOnce67 rho, shifted67 rho, digit67 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window68 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc68 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[112]! (scalarBits rho)[111]!
        (base rho) (twice rho) (triple rho) (acc68 rho)
        (acc69 rho) ∧
      EdwardsBridge.onCurve (acc69 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4232, r4233, r4234, r4235, r4236, r4237, r4238, r4239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4232 at r4232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4233 at r4233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4234 at r4234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4235 at r4235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4236 at r4236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4237 at r4237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4238 at r4238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4239 at r4239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4240 at r4240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4241 at r4241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4242 at r4242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4243 at r4243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4244 at r4244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4245 at r4245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4246 at r4246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4247 at r4247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4248 at r4248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4249 at r4249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4250 at r4250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4251 at r4251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4252 at r4252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4253 at r4253
  have hshift1 : EdwardsBridge.doubleSpec (acc68 rho) (shiftOnce68 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3724) (rho 3725) (rho 3726) (rho 3727) (rho 3728) (rho 3729) (rho 3730)
      (by simpa [acc68] using hacc)
      (by linear_combination r4232)
      (by linear_combination r4233)
      (by linear_combination r4234)
      (by linear_combination r4235)
      (by linear_combination r4236)
    simpa [acc68, shiftOnce68] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce68 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc68 rho) (shiftOnce68 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc68 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce68 rho) (shifted68 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3729) (rho 3730) (rho 3731) (rho 3732) (rho 3733) (rho 3734) (rho 3735)
      (by simpa [shiftOnce68] using hshift1On)
      (by linear_combination r4237)
      (by linear_combination r4238)
      (by linear_combination r4239)
      (by linear_combination r4240)
      (by linear_combination r4241)
    simpa [shiftOnce68, shifted68] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted68 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce68 rho) (shifted68 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce68 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1095) (rho 1094)
      (base rho) (twice rho) (triple rho) (digit68 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1095) (rho 1094)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3737 + rho 3738, (1 : F) + rho 3740 + rho 3741⟩ := by
      constructor
      · refine ⟨(rho 3736 + (rho 2216) - (0)), rho 3737, ?_, ?_, ?_⟩
        · linear_combination r4242
        · linear_combination r4243
        · linear_combination r4244
      · refine ⟨(rho 3739 + (rho 2217) - ((1 : F))), rho 3740, ?_, ?_, ?_⟩
        · linear_combination r4245
        · linear_combination r4246
        · linear_combination r4247
    simpa [base, twice, triple, digit68] using hraw
  have hhigh : rho 1095 =
      Bool.toZMod bits[112]! := by
    simpa only using rho_bit_of_map rho bits hbits 112 (by decide +kernel)
  have hlow : rho 1094 =
      Bool.toZMod bits[111]! := by
    simpa only using rho_bit_of_map rho bits hbits 111 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[112]! bits[111]! (base rho) (twice rho) (triple rho)
    (digit68 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit68 rho) := by
    rw [hdigit]
    cases bits[112]! <;> cases bits[111]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted68 rho) (digit68 rho) (acc69 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3734) (rho 3735) (rho 3737 + rho 3738) ((1 : F) + rho 3740 + rho 3741)
      (rho 3742) (rho 3743) (rho 3744) (rho 3745) (rho 3746) (rho 3747)
      (by simpa [shifted68] using hshift2On)
      (by simpa [digit68] using hdigitOn)
      (by linear_combination r4248)
      (by linear_combination r4249)
      (by linear_combination r4250)
      (by linear_combination r4251)
      (by linear_combination r4252)
      (by linear_combination r4253)
    simpa [shifted68, digit68, acc69] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc69 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted68 rho) (digit68 rho) (acc69 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted68 rho) (digit68 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1095) (rho 1094)
      (base rho) (twice rho) (triple rho) (acc68 rho)
      (acc69 rho) :=
    ⟨shiftOnce68 rho, shifted68 rho, digit68 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window69 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc69 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[110]! (scalarBits rho)[109]!
        (base rho) (twice rho) (triple rho) (acc69 rho)
        (acc70 rho) ∧
      EdwardsBridge.onCurve (acc70 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4254 at r4254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4255 at r4255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4256 at r4256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4257 at r4257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4258 at r4258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4259 at r4259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4260 at r4260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4261 at r4261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4262 at r4262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4263 at r4263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4264 at r4264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4265 at r4265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4266 at r4266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4267 at r4267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4268 at r4268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4269 at r4269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4270 at r4270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4271 at r4271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4272 at r4272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4273 at r4273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4274 at r4274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4275 at r4275
  have hshift1 : EdwardsBridge.doubleSpec (acc69 rho) (shiftOnce69 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3746) (rho 3747) (rho 3748) (rho 3749) (rho 3750) (rho 3751) (rho 3752)
      (by simpa [acc69] using hacc)
      (by linear_combination r4254)
      (by linear_combination r4255)
      (by linear_combination r4256)
      (by linear_combination r4257)
      (by linear_combination r4258)
    simpa [acc69, shiftOnce69] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce69 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc69 rho) (shiftOnce69 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc69 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce69 rho) (shifted69 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3751) (rho 3752) (rho 3753) (rho 3754) (rho 3755) (rho 3756) (rho 3757)
      (by simpa [shiftOnce69] using hshift1On)
      (by linear_combination r4259)
      (by linear_combination r4260)
      (by linear_combination r4261)
      (by linear_combination r4262)
      (by linear_combination r4263)
    simpa [shiftOnce69, shifted69] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted69 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce69 rho) (shifted69 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce69 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1093) (rho 1092)
      (base rho) (twice rho) (triple rho) (digit69 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1093) (rho 1092)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3759 + rho 3760, (1 : F) + rho 3762 + rho 3763⟩ := by
      constructor
      · refine ⟨(rho 3758 + (rho 2216) - (0)), rho 3759, ?_, ?_, ?_⟩
        · linear_combination r4264
        · linear_combination r4265
        · linear_combination r4266
      · refine ⟨(rho 3761 + (rho 2217) - ((1 : F))), rho 3762, ?_, ?_, ?_⟩
        · linear_combination r4267
        · linear_combination r4268
        · linear_combination r4269
    simpa [base, twice, triple, digit69] using hraw
  have hhigh : rho 1093 =
      Bool.toZMod bits[110]! := by
    simpa only using rho_bit_of_map rho bits hbits 110 (by decide +kernel)
  have hlow : rho 1092 =
      Bool.toZMod bits[109]! := by
    simpa only using rho_bit_of_map rho bits hbits 109 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[110]! bits[109]! (base rho) (twice rho) (triple rho)
    (digit69 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit69 rho) := by
    rw [hdigit]
    cases bits[110]! <;> cases bits[109]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted69 rho) (digit69 rho) (acc70 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3756) (rho 3757) (rho 3759 + rho 3760) ((1 : F) + rho 3762 + rho 3763)
      (rho 3764) (rho 3765) (rho 3766) (rho 3767) (rho 3768) (rho 3769)
      (by simpa [shifted69] using hshift2On)
      (by simpa [digit69] using hdigitOn)
      (by linear_combination r4270)
      (by linear_combination r4271)
      (by linear_combination r4272)
      (by linear_combination r4273)
      (by linear_combination r4274)
      (by linear_combination r4275)
    simpa [shifted69, digit69, acc70] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc70 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted69 rho) (digit69 rho) (acc70 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted69 rho) (digit69 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1093) (rho 1092)
      (base rho) (twice rho) (triple rho) (acc69 rho)
      (acc70 rho) :=
    ⟨shiftOnce69 rho, shifted69 rho, digit69 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window70 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc70 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[108]! (scalarBits rho)[107]!
        (base rho) (twice rho) (triple rho) (acc70 rho)
        (acc71 rho) ∧
      EdwardsBridge.onCurve (acc71 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4276 at r4276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4277 at r4277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4278 at r4278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4279 at r4279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4280 at r4280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4281 at r4281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4282 at r4282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4283 at r4283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4284 at r4284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4285 at r4285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4286 at r4286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4287 at r4287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4288 at r4288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4289 at r4289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4290 at r4290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4291 at r4291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4292 at r4292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4293 at r4293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4294 at r4294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4295 at r4295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4296 at r4296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4297 at r4297
  have hshift1 : EdwardsBridge.doubleSpec (acc70 rho) (shiftOnce70 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3768) (rho 3769) (rho 3770) (rho 3771) (rho 3772) (rho 3773) (rho 3774)
      (by simpa [acc70] using hacc)
      (by linear_combination r4276)
      (by linear_combination r4277)
      (by linear_combination r4278)
      (by linear_combination r4279)
      (by linear_combination r4280)
    simpa [acc70, shiftOnce70] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce70 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc70 rho) (shiftOnce70 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc70 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce70 rho) (shifted70 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3773) (rho 3774) (rho 3775) (rho 3776) (rho 3777) (rho 3778) (rho 3779)
      (by simpa [shiftOnce70] using hshift1On)
      (by linear_combination r4281)
      (by linear_combination r4282)
      (by linear_combination r4283)
      (by linear_combination r4284)
      (by linear_combination r4285)
    simpa [shiftOnce70, shifted70] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted70 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce70 rho) (shifted70 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce70 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1091) (rho 1090)
      (base rho) (twice rho) (triple rho) (digit70 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1091) (rho 1090)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3781 + rho 3782, (1 : F) + rho 3784 + rho 3785⟩ := by
      constructor
      · refine ⟨(rho 3780 + (rho 2216) - (0)), rho 3781, ?_, ?_, ?_⟩
        · linear_combination r4286
        · linear_combination r4287
        · linear_combination r4288
      · refine ⟨(rho 3783 + (rho 2217) - ((1 : F))), rho 3784, ?_, ?_, ?_⟩
        · linear_combination r4289
        · linear_combination r4290
        · linear_combination r4291
    simpa [base, twice, triple, digit70] using hraw
  have hhigh : rho 1091 =
      Bool.toZMod bits[108]! := by
    simpa only using rho_bit_of_map rho bits hbits 108 (by decide +kernel)
  have hlow : rho 1090 =
      Bool.toZMod bits[107]! := by
    simpa only using rho_bit_of_map rho bits hbits 107 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[108]! bits[107]! (base rho) (twice rho) (triple rho)
    (digit70 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit70 rho) := by
    rw [hdigit]
    cases bits[108]! <;> cases bits[107]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted70 rho) (digit70 rho) (acc71 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3778) (rho 3779) (rho 3781 + rho 3782) ((1 : F) + rho 3784 + rho 3785)
      (rho 3786) (rho 3787) (rho 3788) (rho 3789) (rho 3790) (rho 3791)
      (by simpa [shifted70] using hshift2On)
      (by simpa [digit70] using hdigitOn)
      (by linear_combination r4292)
      (by linear_combination r4293)
      (by linear_combination r4294)
      (by linear_combination r4295)
      (by linear_combination r4296)
      (by linear_combination r4297)
    simpa [shifted70, digit70, acc71] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc71 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted70 rho) (digit70 rho) (acc71 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted70 rho) (digit70 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1091) (rho 1090)
      (base rho) (twice rho) (triple rho) (acc70 rho)
      (acc71 rho) :=
    ⟨shiftOnce70 rho, shifted70 rho, digit70 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window71 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc71 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[106]! (scalarBits rho)[105]!
        (base rho) (twice rho) (triple rho) (acc71 rho)
        (acc72 rho) ∧
      EdwardsBridge.onCurve (acc72 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4298 at r4298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4299 at r4299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4300 at r4300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4301 at r4301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4302 at r4302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4303 at r4303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4304 at r4304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4305 at r4305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4306 at r4306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4307 at r4307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4308 at r4308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4309 at r4309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4310 at r4310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4311 at r4311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4312 at r4312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4313 at r4313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4314 at r4314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4315 at r4315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4316 at r4316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4317 at r4317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4318 at r4318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4319 at r4319
  have hshift1 : EdwardsBridge.doubleSpec (acc71 rho) (shiftOnce71 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3790) (rho 3791) (rho 3792) (rho 3793) (rho 3794) (rho 3795) (rho 3796)
      (by simpa [acc71] using hacc)
      (by linear_combination r4298)
      (by linear_combination r4299)
      (by linear_combination r4300)
      (by linear_combination r4301)
      (by linear_combination r4302)
    simpa [acc71, shiftOnce71] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce71 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc71 rho) (shiftOnce71 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc71 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce71 rho) (shifted71 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3795) (rho 3796) (rho 3797) (rho 3798) (rho 3799) (rho 3800) (rho 3801)
      (by simpa [shiftOnce71] using hshift1On)
      (by linear_combination r4303)
      (by linear_combination r4304)
      (by linear_combination r4305)
      (by linear_combination r4306)
      (by linear_combination r4307)
    simpa [shiftOnce71, shifted71] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted71 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce71 rho) (shifted71 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce71 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1089) (rho 1088)
      (base rho) (twice rho) (triple rho) (digit71 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1089) (rho 1088)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3803 + rho 3804, (1 : F) + rho 3806 + rho 3807⟩ := by
      constructor
      · refine ⟨(rho 3802 + (rho 2216) - (0)), rho 3803, ?_, ?_, ?_⟩
        · linear_combination r4308
        · linear_combination r4309
        · linear_combination r4310
      · refine ⟨(rho 3805 + (rho 2217) - ((1 : F))), rho 3806, ?_, ?_, ?_⟩
        · linear_combination r4311
        · linear_combination r4312
        · linear_combination r4313
    simpa [base, twice, triple, digit71] using hraw
  have hhigh : rho 1089 =
      Bool.toZMod bits[106]! := by
    simpa only using rho_bit_of_map rho bits hbits 106 (by decide +kernel)
  have hlow : rho 1088 =
      Bool.toZMod bits[105]! := by
    simpa only using rho_bit_of_map rho bits hbits 105 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[106]! bits[105]! (base rho) (twice rho) (triple rho)
    (digit71 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit71 rho) := by
    rw [hdigit]
    cases bits[106]! <;> cases bits[105]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted71 rho) (digit71 rho) (acc72 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3800) (rho 3801) (rho 3803 + rho 3804) ((1 : F) + rho 3806 + rho 3807)
      (rho 3808) (rho 3809) (rho 3810) (rho 3811) (rho 3812) (rho 3813)
      (by simpa [shifted71] using hshift2On)
      (by simpa [digit71] using hdigitOn)
      (by linear_combination r4314)
      (by linear_combination r4315)
      (by linear_combination r4316)
      (by linear_combination r4317)
      (by linear_combination r4318)
      (by linear_combination r4319)
    simpa [shifted71, digit71, acc72] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc72 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted71 rho) (digit71 rho) (acc72 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted71 rho) (digit71 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1089) (rho 1088)
      (base rho) (twice rho) (triple rho) (acc71 rho)
      (acc72 rho) :=
    ⟨shiftOnce71 rho, shifted71 rho, digit71 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
