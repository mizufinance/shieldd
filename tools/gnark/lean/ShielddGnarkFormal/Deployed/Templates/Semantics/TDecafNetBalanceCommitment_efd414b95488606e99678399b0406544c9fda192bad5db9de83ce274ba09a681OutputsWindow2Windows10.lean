import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window60 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc60 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[6]! (scalarBits rho)[5]!
        (base rho) (twice rho) (triple rho) (acc60 rho)
        (acc61 rho) ∧
      EdwardsBridge.onCurve (acc61 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4305 at r4305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4306 at r4306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4307 at r4307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4308 at r4308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4309 at r4309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4310 at r4310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4311 at r4311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4312 at r4312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4313 at r4313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4314 at r4314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4315 at r4315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4316 at r4316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4317 at r4317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4318 at r4318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4319 at r4319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4320 at r4320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4321 at r4321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4322 at r4322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4323 at r4323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4324 at r4324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4325 at r4325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4326 at r4326
  have hshift1 : EdwardsBridge.doubleSpec (acc60 rho) (shiftOnce60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4129) (rho 4130) (rho 4131) (rho 4132) (rho 4133) (rho 4134) (rho 4135)
      (by simpa [acc60] using hacc)
      (by linear_combination r4305)
      (by linear_combination r4306)
      (by linear_combination r4307)
      (by linear_combination r4308)
      (by linear_combination r4309)
    simpa [acc60, shiftOnce60] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc60 rho) (shiftOnce60 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc60 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce60 rho) (shifted60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4134) (rho 4135) (rho 4136) (rho 4137) (rho 4138) (rho 4139) (rho 4140)
      (by simpa [shiftOnce60] using hshift1On)
      (by linear_combination r4310)
      (by linear_combination r4311)
      (by linear_combination r4312)
      (by linear_combination r4313)
      (by linear_combination r4314)
    simpa [shiftOnce60, shifted60] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce60 rho) (shifted60 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce60 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2671) (rho 2670)
      (base rho) (twice rho) (triple rho) (digit60 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2671) (rho 2670)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4142 + rho 4143, (1 : F) + rho 4145 + rho 4146⟩ := by
      constructor
      · refine ⟨(rho 4141 + (rho 2797) - (0)), rho 4142, ?_, ?_, ?_⟩
        · linear_combination r4315
        · linear_combination r4316
        · linear_combination r4317
      · refine ⟨(rho 4144 + (rho 2798) - ((1 : F))), rho 4145, ?_, ?_, ?_⟩
        · linear_combination r4318
        · linear_combination r4319
        · linear_combination r4320
    simpa [base, twice, triple, digit60] using hraw
  have hhigh : rho 2671 =
      Bool.toZMod bits[6]! := by
    simpa only using rho_bit_of_map rho bits hbits 6 (by decide +kernel)
  have hlow : rho 2670 =
      Bool.toZMod bits[5]! := by
    simpa only using rho_bit_of_map rho bits hbits 5 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[6]! bits[5]! (base rho) (twice rho) (triple rho)
    (digit60 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit60 rho) := by
    rw [hdigit]
    cases bits[6]! <;> cases bits[5]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted60 rho) (digit60 rho) (acc61 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4139) (rho 4140) (rho 4142 + rho 4143) ((1 : F) + rho 4145 + rho 4146)
      (rho 4147) (rho 4148) (rho 4149) (rho 4150) (rho 4151) (rho 4152)
      (by simpa [shifted60] using hshift2On)
      (by simpa [digit60] using hdigitOn)
      (by linear_combination r4321)
      (by linear_combination r4322)
      (by linear_combination r4323)
      (by linear_combination r4324)
      (by linear_combination r4325)
      (by linear_combination r4326)
    simpa [shifted60, digit60, acc61] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc61 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted60 rho) (digit60 rho) (acc61 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted60 rho) (digit60 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2671) (rho 2670)
      (base rho) (twice rho) (triple rho) (acc60 rho)
      (acc61 rho) :=
    ⟨shiftOnce60 rho, shifted60 rho, digit60 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window61 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc61 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[4]! (scalarBits rho)[3]!
        (base rho) (twice rho) (triple rho) (acc61 rho)
        (acc62 rho) ∧
      EdwardsBridge.onCurve (acc62 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4327 at r4327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4328 at r4328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4329 at r4329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4330 at r4330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4331 at r4331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4332 at r4332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4333 at r4333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4334 at r4334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4335 at r4335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4336 at r4336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4337 at r4337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4338 at r4338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4339 at r4339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4340 at r4340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4341 at r4341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4342 at r4342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4343 at r4343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4344 at r4344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4345 at r4345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4346 at r4346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4347 at r4347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4348 at r4348
  have hshift1 : EdwardsBridge.doubleSpec (acc61 rho) (shiftOnce61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4151) (rho 4152) (rho 4153) (rho 4154) (rho 4155) (rho 4156) (rho 4157)
      (by simpa [acc61] using hacc)
      (by linear_combination r4327)
      (by linear_combination r4328)
      (by linear_combination r4329)
      (by linear_combination r4330)
      (by linear_combination r4331)
    simpa [acc61, shiftOnce61] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc61 rho) (shiftOnce61 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc61 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce61 rho) (shifted61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4156) (rho 4157) (rho 4158) (rho 4159) (rho 4160) (rho 4161) (rho 4162)
      (by simpa [shiftOnce61] using hshift1On)
      (by linear_combination r4332)
      (by linear_combination r4333)
      (by linear_combination r4334)
      (by linear_combination r4335)
      (by linear_combination r4336)
    simpa [shiftOnce61, shifted61] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce61 rho) (shifted61 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce61 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2669) (rho 2668)
      (base rho) (twice rho) (triple rho) (digit61 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2669) (rho 2668)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4164 + rho 4165, (1 : F) + rho 4167 + rho 4168⟩ := by
      constructor
      · refine ⟨(rho 4163 + (rho 2797) - (0)), rho 4164, ?_, ?_, ?_⟩
        · linear_combination r4337
        · linear_combination r4338
        · linear_combination r4339
      · refine ⟨(rho 4166 + (rho 2798) - ((1 : F))), rho 4167, ?_, ?_, ?_⟩
        · linear_combination r4340
        · linear_combination r4341
        · linear_combination r4342
    simpa [base, twice, triple, digit61] using hraw
  have hhigh : rho 2669 =
      Bool.toZMod bits[4]! := by
    simpa only using rho_bit_of_map rho bits hbits 4 (by decide +kernel)
  have hlow : rho 2668 =
      Bool.toZMod bits[3]! := by
    simpa only using rho_bit_of_map rho bits hbits 3 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[4]! bits[3]! (base rho) (twice rho) (triple rho)
    (digit61 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit61 rho) := by
    rw [hdigit]
    cases bits[4]! <;> cases bits[3]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted61 rho) (digit61 rho) (acc62 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4161) (rho 4162) (rho 4164 + rho 4165) ((1 : F) + rho 4167 + rho 4168)
      (rho 4169) (rho 4170) (rho 4171) (rho 4172) (rho 4173) (rho 4174)
      (by simpa [shifted61] using hshift2On)
      (by simpa [digit61] using hdigitOn)
      (by linear_combination r4343)
      (by linear_combination r4344)
      (by linear_combination r4345)
      (by linear_combination r4346)
      (by linear_combination r4347)
      (by linear_combination r4348)
    simpa [shifted61, digit61, acc62] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc62 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted61 rho) (digit61 rho) (acc62 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted61 rho) (digit61 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2669) (rho 2668)
      (base rho) (twice rho) (triple rho) (acc61 rho)
      (acc62 rho) :=
    ⟨shiftOnce61 rho, shifted61 rho, digit61 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window62 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc62 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[2]! (scalarBits rho)[1]!
        (base rho) (twice rho) (triple rho) (acc62 rho)
        (acc63 rho) ∧
      EdwardsBridge.onCurve (acc63 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4349, r4350, r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, r4369, r4370, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4349 at r4349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4350 at r4350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4351 at r4351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4352 at r4352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4353 at r4353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4354 at r4354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4355 at r4355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4356 at r4356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4357 at r4357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4358 at r4358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4359 at r4359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4360 at r4360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4361 at r4361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4362 at r4362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4363 at r4363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4364 at r4364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4365 at r4365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4366 at r4366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4367 at r4367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4368 at r4368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4369 at r4369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4370 at r4370
  have hshift1 : EdwardsBridge.doubleSpec (acc62 rho) (shiftOnce62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4173) (rho 4174) (rho 4175) (rho 4176) (rho 4177) (rho 4178) (rho 4179)
      (by simpa [acc62] using hacc)
      (by linear_combination r4349)
      (by linear_combination r4350)
      (by linear_combination r4351)
      (by linear_combination r4352)
      (by linear_combination r4353)
    simpa [acc62, shiftOnce62] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc62 rho) (shiftOnce62 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc62 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce62 rho) (shifted62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4178) (rho 4179) (rho 4180) (rho 4181) (rho 4182) (rho 4183) (rho 4184)
      (by simpa [shiftOnce62] using hshift1On)
      (by linear_combination r4354)
      (by linear_combination r4355)
      (by linear_combination r4356)
      (by linear_combination r4357)
      (by linear_combination r4358)
    simpa [shiftOnce62, shifted62] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce62 rho) (shifted62 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce62 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2667) (rho 2666)
      (base rho) (twice rho) (triple rho) (digit62 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2667) (rho 2666)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 4186 + rho 4187, (1 : F) + rho 4189 + rho 4190⟩ := by
      constructor
      · refine ⟨(rho 4185 + (rho 2797) - (0)), rho 4186, ?_, ?_, ?_⟩
        · linear_combination r4359
        · linear_combination r4360
        · linear_combination r4361
      · refine ⟨(rho 4188 + (rho 2798) - ((1 : F))), rho 4189, ?_, ?_, ?_⟩
        · linear_combination r4362
        · linear_combination r4363
        · linear_combination r4364
    simpa [base, twice, triple, digit62] using hraw
  have hhigh : rho 2667 =
      Bool.toZMod bits[2]! := by
    simpa only using rho_bit_of_map rho bits hbits 2 (by decide +kernel)
  have hlow : rho 2666 =
      Bool.toZMod bits[1]! := by
    simpa only using rho_bit_of_map rho bits hbits 1 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[2]! bits[1]! (base rho) (twice rho) (triple rho)
    (digit62 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit62 rho) := by
    rw [hdigit]
    cases bits[2]! <;> cases bits[1]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted62 rho) (digit62 rho) (acc63 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4183) (rho 4184) (rho 4186 + rho 4187) ((1 : F) + rho 4189 + rho 4190)
      (rho 4191) (rho 4192) (rho 4193) (rho 4194) (rho 4195) (rho 4196)
      (by simpa [shifted62] using hshift2On)
      (by simpa [digit62] using hdigitOn)
      (by linear_combination r4365)
      (by linear_combination r4366)
      (by linear_combination r4367)
      (by linear_combination r4368)
      (by linear_combination r4369)
      (by linear_combination r4370)
    simpa [shifted62, digit62, acc63] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc63 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted62 rho) (digit62 rho) (acc63 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted62 rho) (digit62 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2667) (rho 2666)
      (base rho) (twice rho) (triple rho) (acc62 rho)
      (acc63 rho) :=
    ⟨shiftOnce62 rho, shifted62 rho, digit62 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
