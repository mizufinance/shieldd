import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window120 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc120 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[8]! (scalarBits rho)[7]!
        (base rho) (twice rho) (triple rho) (acc120 rho)
        (acc121 rho) ∧
      EdwardsBridge.onCurve (acc121 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5376, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5376 at r5376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5377 at r5377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5378 at r5378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5379 at r5379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5380 at r5380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5381 at r5381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5382 at r5382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5383 at r5383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5384 at r5384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5385 at r5385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5386 at r5386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5387 at r5387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5388 at r5388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5389 at r5389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5390 at r5390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5391 at r5391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5392 at r5392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5393 at r5393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5394 at r5394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5395 at r5395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5396 at r5396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5397 at r5397
  have hshift1 : EdwardsBridge.doubleSpec (acc120 rho) (shiftOnce120 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4868) (rho 4869) (rho 4870) (rho 4871) (rho 4872) (rho 4873) (rho 4874)
      (by simpa [acc120] using hacc)
      (by linear_combination r5376)
      (by linear_combination r5377)
      (by linear_combination r5378)
      (by linear_combination r5379)
      (by linear_combination r5380)
    simpa [acc120, shiftOnce120] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce120 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc120 rho) (shiftOnce120 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc120 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce120 rho) (shifted120 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4873) (rho 4874) (rho 4875) (rho 4876) (rho 4877) (rho 4878) (rho 4879)
      (by simpa [shiftOnce120] using hshift1On)
      (by linear_combination r5381)
      (by linear_combination r5382)
      (by linear_combination r5383)
      (by linear_combination r5384)
      (by linear_combination r5385)
    simpa [shiftOnce120, shifted120] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted120 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce120 rho) (shifted120 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce120 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 991) (rho 990)
      (base rho) (twice rho) (triple rho) (digit120 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 991) (rho 990)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4881 + rho 4882, (1 : F) + rho 4884 + rho 4885⟩ := by
      constructor
      · refine ⟨(rho 4880 + (rho 2216) - (0)), rho 4881, ?_, ?_, ?_⟩
        · linear_combination r5386
        · linear_combination r5387
        · linear_combination r5388
      · refine ⟨(rho 4883 + (rho 2217) - ((1 : F))), rho 4884, ?_, ?_, ?_⟩
        · linear_combination r5389
        · linear_combination r5390
        · linear_combination r5391
    simpa [base, twice, triple, digit120] using hraw
  have hhigh : rho 991 =
      Bool.toZMod bits[8]! := by
    simpa only using rho_bit_of_map rho bits hbits 8 (by decide +kernel)
  have hlow : rho 990 =
      Bool.toZMod bits[7]! := by
    simpa only using rho_bit_of_map rho bits hbits 7 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[8]! bits[7]! (base rho) (twice rho) (triple rho)
    (digit120 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit120 rho) := by
    rw [hdigit]
    cases bits[8]! <;> cases bits[7]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted120 rho) (digit120 rho) (acc121 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4878) (rho 4879) (rho 4881 + rho 4882) ((1 : F) + rho 4884 + rho 4885)
      (rho 4886) (rho 4887) (rho 4888) (rho 4889) (rho 4890) (rho 4891)
      (by simpa [shifted120] using hshift2On)
      (by simpa [digit120] using hdigitOn)
      (by linear_combination r5392)
      (by linear_combination r5393)
      (by linear_combination r5394)
      (by linear_combination r5395)
      (by linear_combination r5396)
      (by linear_combination r5397)
    simpa [shifted120, digit120, acc121] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc121 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted120 rho) (digit120 rho) (acc121 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted120 rho) (digit120 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 991) (rho 990)
      (base rho) (twice rho) (triple rho) (acc120 rho)
      (acc121 rho) :=
    ⟨shiftOnce120 rho, shifted120 rho, digit120 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window121 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc121 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[6]! (scalarBits rho)[5]!
        (base rho) (twice rho) (triple rho) (acc121 rho)
        (acc122 rho) ∧
      EdwardsBridge.onCurve (acc122 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5398, r5399, r5400, r5401, r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, r5419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5398 at r5398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5399 at r5399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5400 at r5400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5401 at r5401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5402 at r5402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5403 at r5403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5404 at r5404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5405 at r5405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5406 at r5406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5407 at r5407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5408 at r5408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5409 at r5409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5410 at r5410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5411 at r5411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5412 at r5412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5413 at r5413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5414 at r5414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5415 at r5415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5416 at r5416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5417 at r5417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5418 at r5418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5419 at r5419
  have hshift1 : EdwardsBridge.doubleSpec (acc121 rho) (shiftOnce121 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4890) (rho 4891) (rho 4892) (rho 4893) (rho 4894) (rho 4895) (rho 4896)
      (by simpa [acc121] using hacc)
      (by linear_combination r5398)
      (by linear_combination r5399)
      (by linear_combination r5400)
      (by linear_combination r5401)
      (by linear_combination r5402)
    simpa [acc121, shiftOnce121] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce121 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc121 rho) (shiftOnce121 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc121 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce121 rho) (shifted121 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4895) (rho 4896) (rho 4897) (rho 4898) (rho 4899) (rho 4900) (rho 4901)
      (by simpa [shiftOnce121] using hshift1On)
      (by linear_combination r5403)
      (by linear_combination r5404)
      (by linear_combination r5405)
      (by linear_combination r5406)
      (by linear_combination r5407)
    simpa [shiftOnce121, shifted121] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted121 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce121 rho) (shifted121 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce121 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 989) (rho 988)
      (base rho) (twice rho) (triple rho) (digit121 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 989) (rho 988)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4903 + rho 4904, (1 : F) + rho 4906 + rho 4907⟩ := by
      constructor
      · refine ⟨(rho 4902 + (rho 2216) - (0)), rho 4903, ?_, ?_, ?_⟩
        · linear_combination r5408
        · linear_combination r5409
        · linear_combination r5410
      · refine ⟨(rho 4905 + (rho 2217) - ((1 : F))), rho 4906, ?_, ?_, ?_⟩
        · linear_combination r5411
        · linear_combination r5412
        · linear_combination r5413
    simpa [base, twice, triple, digit121] using hraw
  have hhigh : rho 989 =
      Bool.toZMod bits[6]! := by
    simpa only using rho_bit_of_map rho bits hbits 6 (by decide +kernel)
  have hlow : rho 988 =
      Bool.toZMod bits[5]! := by
    simpa only using rho_bit_of_map rho bits hbits 5 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[6]! bits[5]! (base rho) (twice rho) (triple rho)
    (digit121 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit121 rho) := by
    rw [hdigit]
    cases bits[6]! <;> cases bits[5]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted121 rho) (digit121 rho) (acc122 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4900) (rho 4901) (rho 4903 + rho 4904) ((1 : F) + rho 4906 + rho 4907)
      (rho 4908) (rho 4909) (rho 4910) (rho 4911) (rho 4912) (rho 4913)
      (by simpa [shifted121] using hshift2On)
      (by simpa [digit121] using hdigitOn)
      (by linear_combination r5414)
      (by linear_combination r5415)
      (by linear_combination r5416)
      (by linear_combination r5417)
      (by linear_combination r5418)
      (by linear_combination r5419)
    simpa [shifted121, digit121, acc122] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc122 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted121 rho) (digit121 rho) (acc122 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted121 rho) (digit121 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 989) (rho 988)
      (base rho) (twice rho) (triple rho) (acc121 rho)
      (acc122 rho) :=
    ⟨shiftOnce121 rho, shifted121 rho, digit121 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window122 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc122 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[4]! (scalarBits rho)[3]!
        (base rho) (twice rho) (triple rho) (acc122 rho)
        (acc123 rho) ∧
      EdwardsBridge.onCurve (acc123 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, p68
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5420 at r5420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5421 at r5421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5422 at r5422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5423 at r5423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5424 at r5424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5425 at r5425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5426 at r5426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5427 at r5427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5428 at r5428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5429 at r5429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5430 at r5430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5431 at r5431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5432 at r5432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5433 at r5433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5434 at r5434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5435 at r5435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5436 at r5436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5437 at r5437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5438 at r5438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5439 at r5439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5440 at r5440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5441 at r5441
  have hshift1 : EdwardsBridge.doubleSpec (acc122 rho) (shiftOnce122 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4912) (rho 4913) (rho 4914) (rho 4915) (rho 4916) (rho 4917) (rho 4918)
      (by simpa [acc122] using hacc)
      (by linear_combination r5420)
      (by linear_combination r5421)
      (by linear_combination r5422)
      (by linear_combination r5423)
      (by linear_combination r5424)
    simpa [acc122, shiftOnce122] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce122 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc122 rho) (shiftOnce122 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc122 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce122 rho) (shifted122 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4917) (rho 4918) (rho 4919) (rho 4920) (rho 4921) (rho 4922) (rho 4923)
      (by simpa [shiftOnce122] using hshift1On)
      (by linear_combination r5425)
      (by linear_combination r5426)
      (by linear_combination r5427)
      (by linear_combination r5428)
      (by linear_combination r5429)
    simpa [shiftOnce122, shifted122] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted122 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce122 rho) (shifted122 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce122 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 987) (rho 986)
      (base rho) (twice rho) (triple rho) (digit122 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 987) (rho 986)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4925 + rho 4926, (1 : F) + rho 4928 + rho 4929⟩ := by
      constructor
      · refine ⟨(rho 4924 + (rho 2216) - (0)), rho 4925, ?_, ?_, ?_⟩
        · linear_combination r5430
        · linear_combination r5431
        · linear_combination r5432
      · refine ⟨(rho 4927 + (rho 2217) - ((1 : F))), rho 4928, ?_, ?_, ?_⟩
        · linear_combination r5433
        · linear_combination r5434
        · linear_combination r5435
    simpa [base, twice, triple, digit122] using hraw
  have hhigh : rho 987 =
      Bool.toZMod bits[4]! := by
    simpa only using rho_bit_of_map rho bits hbits 4 (by decide +kernel)
  have hlow : rho 986 =
      Bool.toZMod bits[3]! := by
    simpa only using rho_bit_of_map rho bits hbits 3 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[4]! bits[3]! (base rho) (twice rho) (triple rho)
    (digit122 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit122 rho) := by
    rw [hdigit]
    cases bits[4]! <;> cases bits[3]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted122 rho) (digit122 rho) (acc123 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4922) (rho 4923) (rho 4925 + rho 4926) ((1 : F) + rho 4928 + rho 4929)
      (rho 4930) (rho 4931) (rho 4932) (rho 4933) (rho 4934) (rho 4935)
      (by simpa [shifted122] using hshift2On)
      (by simpa [digit122] using hdigitOn)
      (by linear_combination r5436)
      (by linear_combination r5437)
      (by linear_combination r5438)
      (by linear_combination r5439)
      (by linear_combination r5440)
      (by linear_combination r5441)
    simpa [shifted122, digit122, acc123] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc123 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted122 rho) (digit122 rho) (acc123 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted122 rho) (digit122 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 987) (rho 986)
      (base rho) (twice rho) (triple rho) (acc122 rho)
      (acc123 rho) :=
    ⟨shiftOnce122 rho, shifted122 rho, digit122 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window123 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc123 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[2]! (scalarBits rho)[1]!
        (base rho) (twice rho) (triple rho) (acc123 rho)
        (acc124 rho) ∧
      EdwardsBridge.onCurve (acc124 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart68 at p68
  rcases p68 with ⟨_, _, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5442 at r5442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5443 at r5443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5444 at r5444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5445 at r5445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5446 at r5446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5447 at r5447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5448 at r5448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5449 at r5449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5450 at r5450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5451 at r5451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5452 at r5452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5453 at r5453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5454 at r5454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5455 at r5455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5456 at r5456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5457 at r5457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5458 at r5458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5459 at r5459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5460 at r5460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5461 at r5461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5462 at r5462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5463 at r5463
  have hshift1 : EdwardsBridge.doubleSpec (acc123 rho) (shiftOnce123 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4934) (rho 4935) (rho 4936) (rho 4937) (rho 4938) (rho 4939) (rho 4940)
      (by simpa [acc123] using hacc)
      (by linear_combination r5442)
      (by linear_combination r5443)
      (by linear_combination r5444)
      (by linear_combination r5445)
      (by linear_combination r5446)
    simpa [acc123, shiftOnce123] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce123 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc123 rho) (shiftOnce123 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc123 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce123 rho) (shifted123 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4939) (rho 4940) (rho 4941) (rho 4942) (rho 4943) (rho 4944) (rho 4945)
      (by simpa [shiftOnce123] using hshift1On)
      (by linear_combination r5447)
      (by linear_combination r5448)
      (by linear_combination r5449)
      (by linear_combination r5450)
      (by linear_combination r5451)
    simpa [shiftOnce123, shifted123] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted123 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce123 rho) (shifted123 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce123 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 985) (rho 984)
      (base rho) (twice rho) (triple rho) (digit123 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 985) (rho 984)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4947 + rho 4948, (1 : F) + rho 4950 + rho 4951⟩ := by
      constructor
      · refine ⟨(rho 4946 + (rho 2216) - (0)), rho 4947, ?_, ?_, ?_⟩
        · linear_combination r5452
        · linear_combination r5453
        · linear_combination r5454
      · refine ⟨(rho 4949 + (rho 2217) - ((1 : F))), rho 4950, ?_, ?_, ?_⟩
        · linear_combination r5455
        · linear_combination r5456
        · linear_combination r5457
    simpa [base, twice, triple, digit123] using hraw
  have hhigh : rho 985 =
      Bool.toZMod bits[2]! := by
    simpa only using rho_bit_of_map rho bits hbits 2 (by decide +kernel)
  have hlow : rho 984 =
      Bool.toZMod bits[1]! := by
    simpa only using rho_bit_of_map rho bits hbits 1 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[2]! bits[1]! (base rho) (twice rho) (triple rho)
    (digit123 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit123 rho) := by
    rw [hdigit]
    cases bits[2]! <;> cases bits[1]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted123 rho) (digit123 rho) (acc124 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4944) (rho 4945) (rho 4947 + rho 4948) ((1 : F) + rho 4950 + rho 4951)
      (rho 4952) (rho 4953) (rho 4954) (rho 4955) (rho 4956) (rho 4957)
      (by simpa [shifted123] using hshift2On)
      (by simpa [digit123] using hdigitOn)
      (by linear_combination r5458)
      (by linear_combination r5459)
      (by linear_combination r5460)
      (by linear_combination r5461)
      (by linear_combination r5462)
      (by linear_combination r5463)
    simpa [shifted123, digit123, acc124] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc124 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted123 rho) (digit123 rho) (acc124 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted123 rho) (digit123 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 985) (rho 984)
      (base rho) (twice rho) (triple rho) (acc123 rho)
      (acc124 rho) :=
    ⟨shiftOnce123 rho, shifted123 rho, digit123 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
