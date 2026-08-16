import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window78 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc78 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[92]! (scalarBits rho)[91]!
        (base rho) (twice rho) (triple rho) (acc78 rho)
        (acc79 rho) ∧
      EdwardsBridge.onCurve (acc79 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, p79,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6300, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, r6315, r6316, r6317, r6318, r6319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6300 at r6300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6301 at r6301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6302 at r6302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6303 at r6303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6304 at r6304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6305 at r6305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6306 at r6306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6307 at r6307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6308 at r6308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6309 at r6309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6310 at r6310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6311 at r6311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6312 at r6312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6313 at r6313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6314 at r6314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6315 at r6315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6316 at r6316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6317 at r6317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6318 at r6318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6319 at r6319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6320 at r6320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6321 at r6321
  have hshift1 : EdwardsBridge.doubleSpec (acc78 rho) (shiftOnce78 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6306) (rho 6307) (rho 6308) (rho 6309) (rho 6310) (rho 6311) (rho 6312)
      (by simpa [acc78] using hacc)
      (by linear_combination r6300)
      (by linear_combination r6301)
      (by linear_combination r6302)
      (by linear_combination r6303)
      (by linear_combination r6304)
    simpa [acc78, shiftOnce78] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce78 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc78 rho) (shiftOnce78 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc78 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce78 rho) (shifted78 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6311) (rho 6312) (rho 6313) (rho 6314) (rho 6315) (rho 6316) (rho 6317)
      (by simpa [shiftOnce78] using hshift1On)
      (by linear_combination r6305)
      (by linear_combination r6306)
      (by linear_combination r6307)
      (by linear_combination r6308)
      (by linear_combination r6309)
    simpa [shiftOnce78, shifted78] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted78 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce78 rho) (shifted78 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce78 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 94) (rho 93)
      (base rho) (twice rho) (triple rho) (digit78 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 94) (rho 93)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6319 + rho 6320, (1 : F) + rho 6322 + rho 6323⟩ := by
      constructor
      · refine ⟨(rho 6318 + (rho 4578) - (0)), rho 6319, ?_, ?_, ?_⟩
        · linear_combination r6310 - (rho 93) * order_cast_zero
        · linear_combination r6311
        · linear_combination r6312
      · refine ⟨(rho 6321 + (rho 4579) - ((1 : F))), rho 6322, ?_, ?_, ?_⟩
        · linear_combination r6313 - (rho 93) * order_cast_zero
        · linear_combination r6314
        · linear_combination r6315
    simpa [base, twice, triple, digit78] using hraw
  have hhigh : rho 94 =
      Bool.toZMod bits[92]! := by
    simpa only using rho_bit_of_map rho bits hbits 92 (by decide +kernel)
  have hlow : rho 93 =
      Bool.toZMod bits[91]! := by
    simpa only using rho_bit_of_map rho bits hbits 91 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[92]! bits[91]! (base rho) (twice rho) (triple rho)
    (digit78 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit78 rho) := by
    rw [hdigit]
    cases bits[92]! <;> cases bits[91]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted78 rho) (digit78 rho) (acc79 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6316) (rho 6317) (rho 6319 + rho 6320) ((1 : F) + rho 6322 + rho 6323)
      (rho 6324) (rho 6325) (rho 6326) (rho 6327) (rho 6328) (rho 6329)
      (by simpa [shifted78] using hshift2On)
      (by simpa [digit78] using hdigitOn)
      (by linear_combination r6316)
      (by linear_combination r6317)
      (by linear_combination r6318)
      (by linear_combination r6319)
      (by linear_combination r6320)
      (by linear_combination r6321)
    simpa [shifted78, digit78, acc79] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc79 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted78 rho) (digit78 rho) (acc79 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted78 rho) (digit78 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 94) (rho 93)
      (base rho) (twice rho) (triple rho) (acc78 rho)
      (acc79 rho) :=
    ⟨shiftOnce78 rho, shifted78 rho, digit78 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window79 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc79 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[90]! (scalarBits rho)[89]!
        (base rho) (twice rho) (triple rho) (acc79 rho)
        (acc80 rho) ∧
      EdwardsBridge.onCurve (acc80 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p79,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart79 at p79
  rcases p79 with ⟨_, _, r6322, r6323, r6324, r6325, r6326, r6327, r6328, r6329, r6330, r6331, r6332, r6333, r6334, r6335, r6336, r6337, r6338, r6339, r6340, r6341, r6342, r6343, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6322 at r6322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6323 at r6323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6324 at r6324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6325 at r6325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6326 at r6326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6327 at r6327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6328 at r6328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6329 at r6329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6330 at r6330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6331 at r6331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6332 at r6332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6333 at r6333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6334 at r6334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6335 at r6335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6336 at r6336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6337 at r6337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6338 at r6338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6339 at r6339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6340 at r6340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6341 at r6341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6342 at r6342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6343 at r6343
  have hshift1 : EdwardsBridge.doubleSpec (acc79 rho) (shiftOnce79 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6328) (rho 6329) (rho 6330) (rho 6331) (rho 6332) (rho 6333) (rho 6334)
      (by simpa [acc79] using hacc)
      (by linear_combination r6322)
      (by linear_combination r6323)
      (by linear_combination r6324)
      (by linear_combination r6325)
      (by linear_combination r6326)
    simpa [acc79, shiftOnce79] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce79 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc79 rho) (shiftOnce79 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc79 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce79 rho) (shifted79 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6333) (rho 6334) (rho 6335) (rho 6336) (rho 6337) (rho 6338) (rho 6339)
      (by simpa [shiftOnce79] using hshift1On)
      (by linear_combination r6327)
      (by linear_combination r6328)
      (by linear_combination r6329)
      (by linear_combination r6330)
      (by linear_combination r6331)
    simpa [shiftOnce79, shifted79] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted79 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce79 rho) (shifted79 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce79 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 92) (rho 91)
      (base rho) (twice rho) (triple rho) (digit79 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 92) (rho 91)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6341 + rho 6342, (1 : F) + rho 6344 + rho 6345⟩ := by
      constructor
      · refine ⟨(rho 6340 + (rho 4578) - (0)), rho 6341, ?_, ?_, ?_⟩
        · linear_combination r6332 - (rho 91) * order_cast_zero
        · linear_combination r6333
        · linear_combination r6334
      · refine ⟨(rho 6343 + (rho 4579) - ((1 : F))), rho 6344, ?_, ?_, ?_⟩
        · linear_combination r6335 - (rho 91) * order_cast_zero
        · linear_combination r6336
        · linear_combination r6337
    simpa [base, twice, triple, digit79] using hraw
  have hhigh : rho 92 =
      Bool.toZMod bits[90]! := by
    simpa only using rho_bit_of_map rho bits hbits 90 (by decide +kernel)
  have hlow : rho 91 =
      Bool.toZMod bits[89]! := by
    simpa only using rho_bit_of_map rho bits hbits 89 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[90]! bits[89]! (base rho) (twice rho) (triple rho)
    (digit79 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit79 rho) := by
    rw [hdigit]
    cases bits[90]! <;> cases bits[89]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted79 rho) (digit79 rho) (acc80 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6338) (rho 6339) (rho 6341 + rho 6342) ((1 : F) + rho 6344 + rho 6345)
      (rho 6346) (rho 6347) (rho 6348) (rho 6349) (rho 6350) (rho 6351)
      (by simpa [shifted79] using hshift2On)
      (by simpa [digit79] using hdigitOn)
      (by linear_combination r6338)
      (by linear_combination r6339)
      (by linear_combination r6340)
      (by linear_combination r6341)
      (by linear_combination r6342)
      (by linear_combination r6343)
    simpa [shifted79, digit79, acc80] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc80 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted79 rho) (digit79 rho) (acc80 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted79 rho) (digit79 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 92) (rho 91)
      (base rho) (twice rho) (triple rho) (acc79 rho)
      (acc80 rho) :=
    ⟨shiftOnce79 rho, shifted79 rho, digit79 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window80 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc80 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[88]! (scalarBits rho)[87]!
        (base rho) (twice rho) (triple rho) (acc80 rho)
        (acc81 rho) ∧
      EdwardsBridge.onCurve (acc81 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p79,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart79 at p79
  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6344, r6345, r6346, r6347, r6348, r6349, r6350, r6351, r6352, r6353, r6354, r6355, r6356, r6357, r6358, r6359, r6360, r6361, r6362, r6363, r6364, r6365, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6344 at r6344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6345 at r6345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6346 at r6346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6347 at r6347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6348 at r6348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6349 at r6349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6350 at r6350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6351 at r6351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6352 at r6352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6353 at r6353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6354 at r6354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6355 at r6355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6356 at r6356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6357 at r6357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6358 at r6358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6359 at r6359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6360 at r6360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6361 at r6361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6362 at r6362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6363 at r6363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6364 at r6364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6365 at r6365
  have hshift1 : EdwardsBridge.doubleSpec (acc80 rho) (shiftOnce80 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6350) (rho 6351) (rho 6352) (rho 6353) (rho 6354) (rho 6355) (rho 6356)
      (by simpa [acc80] using hacc)
      (by linear_combination r6344)
      (by linear_combination r6345)
      (by linear_combination r6346)
      (by linear_combination r6347)
      (by linear_combination r6348)
    simpa [acc80, shiftOnce80] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce80 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc80 rho) (shiftOnce80 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc80 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce80 rho) (shifted80 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6355) (rho 6356) (rho 6357) (rho 6358) (rho 6359) (rho 6360) (rho 6361)
      (by simpa [shiftOnce80] using hshift1On)
      (by linear_combination r6349)
      (by linear_combination r6350)
      (by linear_combination r6351)
      (by linear_combination r6352)
      (by linear_combination r6353)
    simpa [shiftOnce80, shifted80] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted80 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce80 rho) (shifted80 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce80 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 90) (rho 89)
      (base rho) (twice rho) (triple rho) (digit80 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 90) (rho 89)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6363 + rho 6364, (1 : F) + rho 6366 + rho 6367⟩ := by
      constructor
      · refine ⟨(rho 6362 + (rho 4578) - (0)), rho 6363, ?_, ?_, ?_⟩
        · linear_combination r6354 - (rho 89) * order_cast_zero
        · linear_combination r6355
        · linear_combination r6356
      · refine ⟨(rho 6365 + (rho 4579) - ((1 : F))), rho 6366, ?_, ?_, ?_⟩
        · linear_combination r6357 - (rho 89) * order_cast_zero
        · linear_combination r6358
        · linear_combination r6359
    simpa [base, twice, triple, digit80] using hraw
  have hhigh : rho 90 =
      Bool.toZMod bits[88]! := by
    simpa only using rho_bit_of_map rho bits hbits 88 (by decide +kernel)
  have hlow : rho 89 =
      Bool.toZMod bits[87]! := by
    simpa only using rho_bit_of_map rho bits hbits 87 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[88]! bits[87]! (base rho) (twice rho) (triple rho)
    (digit80 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit80 rho) := by
    rw [hdigit]
    cases bits[88]! <;> cases bits[87]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted80 rho) (digit80 rho) (acc81 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6360) (rho 6361) (rho 6363 + rho 6364) ((1 : F) + rho 6366 + rho 6367)
      (rho 6368) (rho 6369) (rho 6370) (rho 6371) (rho 6372) (rho 6373)
      (by simpa [shifted80] using hshift2On)
      (by simpa [digit80] using hdigitOn)
      (by linear_combination r6360)
      (by linear_combination r6361)
      (by linear_combination r6362)
      (by linear_combination r6363)
      (by linear_combination r6364)
      (by linear_combination r6365)
    simpa [shifted80, digit80, acc81] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc81 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted80 rho) (digit80 rho) (acc81 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted80 rho) (digit80 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 90) (rho 89)
      (base rho) (twice rho) (triple rho) (acc80 rho)
      (acc81 rho) :=
    ⟨shiftOnce80 rho, shifted80 rho, digit80 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window81 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc81 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[86]! (scalarBits rho)[85]!
        (base rho) (twice rho) (triple rho) (acc81 rho)
        (acc82 rho) ∧
      EdwardsBridge.onCurve (acc82 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p79,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart79 at p79
  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6366, r6367, r6368, r6369, r6370, r6371, r6372, r6373, r6374, r6375, r6376, r6377, r6378, r6379, r6380, r6381, r6382, r6383, r6384, r6385, r6386, r6387, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6366 at r6366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6367 at r6367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6368 at r6368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6369 at r6369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6370 at r6370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6371 at r6371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6372 at r6372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6373 at r6373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6374 at r6374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6375 at r6375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6376 at r6376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6377 at r6377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6378 at r6378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6379 at r6379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6380 at r6380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6381 at r6381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6382 at r6382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6383 at r6383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6384 at r6384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6385 at r6385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6386 at r6386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6387 at r6387
  have hshift1 : EdwardsBridge.doubleSpec (acc81 rho) (shiftOnce81 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6372) (rho 6373) (rho 6374) (rho 6375) (rho 6376) (rho 6377) (rho 6378)
      (by simpa [acc81] using hacc)
      (by linear_combination r6366)
      (by linear_combination r6367)
      (by linear_combination r6368)
      (by linear_combination r6369)
      (by linear_combination r6370)
    simpa [acc81, shiftOnce81] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce81 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc81 rho) (shiftOnce81 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc81 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce81 rho) (shifted81 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6377) (rho 6378) (rho 6379) (rho 6380) (rho 6381) (rho 6382) (rho 6383)
      (by simpa [shiftOnce81] using hshift1On)
      (by linear_combination r6371)
      (by linear_combination r6372)
      (by linear_combination r6373)
      (by linear_combination r6374)
      (by linear_combination r6375)
    simpa [shiftOnce81, shifted81] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted81 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce81 rho) (shifted81 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce81 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 88) (rho 87)
      (base rho) (twice rho) (triple rho) (digit81 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 88) (rho 87)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6385 + rho 6386, (1 : F) + rho 6388 + rho 6389⟩ := by
      constructor
      · refine ⟨(rho 6384 + (rho 4578) - (0)), rho 6385, ?_, ?_, ?_⟩
        · linear_combination r6376 - (rho 87) * order_cast_zero
        · linear_combination r6377
        · linear_combination r6378
      · refine ⟨(rho 6387 + (rho 4579) - ((1 : F))), rho 6388, ?_, ?_, ?_⟩
        · linear_combination r6379 - (rho 87) * order_cast_zero
        · linear_combination r6380
        · linear_combination r6381
    simpa [base, twice, triple, digit81] using hraw
  have hhigh : rho 88 =
      Bool.toZMod bits[86]! := by
    simpa only using rho_bit_of_map rho bits hbits 86 (by decide +kernel)
  have hlow : rho 87 =
      Bool.toZMod bits[85]! := by
    simpa only using rho_bit_of_map rho bits hbits 85 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[86]! bits[85]! (base rho) (twice rho) (triple rho)
    (digit81 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit81 rho) := by
    rw [hdigit]
    cases bits[86]! <;> cases bits[85]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted81 rho) (digit81 rho) (acc82 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6382) (rho 6383) (rho 6385 + rho 6386) ((1 : F) + rho 6388 + rho 6389)
      (rho 6390) (rho 6391) (rho 6392) (rho 6393) (rho 6394) (rho 6395)
      (by simpa [shifted81] using hshift2On)
      (by simpa [digit81] using hdigitOn)
      (by linear_combination r6382)
      (by linear_combination r6383)
      (by linear_combination r6384)
      (by linear_combination r6385)
      (by linear_combination r6386)
      (by linear_combination r6387)
    simpa [shifted81, digit81, acc82] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc82 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted81 rho) (digit81 rho) (acc82 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted81 rho) (digit81 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 88) (rho 87)
      (base rho) (twice rho) (triple rho) (acc81 rho)
      (acc82 rho) :=
    ⟨shiftOnce81 rho, shifted81 rho, digit81 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window82 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc82 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[84]! (scalarBits rho)[83]!
        (base rho) (twice rho) (triple rho) (acc82 rho)
        (acc83 rho) ∧
      EdwardsBridge.onCurve (acc83 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p79,
    p80, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart79 at p79
  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6388, r6389, r6390, r6391, r6392, r6393, r6394, r6395, r6396, r6397, r6398, r6399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart80 at p80
  rcases p80 with ⟨r6400, r6401, r6402, r6403, r6404, r6405, r6406, r6407, r6408, r6409, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6388 at r6388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6389 at r6389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6390 at r6390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6391 at r6391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6392 at r6392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6393 at r6393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6394 at r6394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6395 at r6395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6396 at r6396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6397 at r6397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6398 at r6398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6399 at r6399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6400 at r6400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6401 at r6401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6402 at r6402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6403 at r6403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6404 at r6404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6405 at r6405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6406 at r6406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6407 at r6407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6408 at r6408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6409 at r6409
  have hshift1 : EdwardsBridge.doubleSpec (acc82 rho) (shiftOnce82 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6394) (rho 6395) (rho 6396) (rho 6397) (rho 6398) (rho 6399) (rho 6400)
      (by simpa [acc82] using hacc)
      (by linear_combination r6388)
      (by linear_combination r6389)
      (by linear_combination r6390)
      (by linear_combination r6391)
      (by linear_combination r6392)
    simpa [acc82, shiftOnce82] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce82 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc82 rho) (shiftOnce82 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc82 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce82 rho) (shifted82 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6399) (rho 6400) (rho 6401) (rho 6402) (rho 6403) (rho 6404) (rho 6405)
      (by simpa [shiftOnce82] using hshift1On)
      (by linear_combination r6393)
      (by linear_combination r6394)
      (by linear_combination r6395)
      (by linear_combination r6396)
      (by linear_combination r6397)
    simpa [shiftOnce82, shifted82] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted82 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce82 rho) (shifted82 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce82 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 86) (rho 85)
      (base rho) (twice rho) (triple rho) (digit82 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 86) (rho 85)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6407 + rho 6408, (1 : F) + rho 6410 + rho 6411⟩ := by
      constructor
      · refine ⟨(rho 6406 + (rho 4578) - (0)), rho 6407, ?_, ?_, ?_⟩
        · linear_combination r6398 - (rho 85) * order_cast_zero
        · linear_combination r6399
        · linear_combination r6400
      · refine ⟨(rho 6409 + (rho 4579) - ((1 : F))), rho 6410, ?_, ?_, ?_⟩
        · linear_combination r6401 - (rho 85) * order_cast_zero
        · linear_combination r6402
        · linear_combination r6403
    simpa [base, twice, triple, digit82] using hraw
  have hhigh : rho 86 =
      Bool.toZMod bits[84]! := by
    simpa only using rho_bit_of_map rho bits hbits 84 (by decide +kernel)
  have hlow : rho 85 =
      Bool.toZMod bits[83]! := by
    simpa only using rho_bit_of_map rho bits hbits 83 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[84]! bits[83]! (base rho) (twice rho) (triple rho)
    (digit82 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit82 rho) := by
    rw [hdigit]
    cases bits[84]! <;> cases bits[83]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted82 rho) (digit82 rho) (acc83 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6404) (rho 6405) (rho 6407 + rho 6408) ((1 : F) + rho 6410 + rho 6411)
      (rho 6412) (rho 6413) (rho 6414) (rho 6415) (rho 6416) (rho 6417)
      (by simpa [shifted82] using hshift2On)
      (by simpa [digit82] using hdigitOn)
      (by linear_combination r6404)
      (by linear_combination r6405)
      (by linear_combination r6406)
      (by linear_combination r6407)
      (by linear_combination r6408)
      (by linear_combination r6409)
    simpa [shifted82, digit82, acc83] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc83 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted82 rho) (digit82 rho) (acc83 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted82 rho) (digit82 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 86) (rho 85)
      (base rho) (twice rho) (triple rho) (acc82 rho)
      (acc83 rho) :=
    ⟨shiftOnce82 rho, shifted82 rho, digit82 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window83 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc83 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[82]! (scalarBits rho)[81]!
        (base rho) (twice rho) (triple rho) (acc83 rho)
        (acc84 rho) ∧
      EdwardsBridge.onCurve (acc84 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p80, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart80 at p80
  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, r6410, r6411, r6412, r6413, r6414, r6415, r6416, r6417, r6418, r6419, r6420, r6421, r6422, r6423, r6424, r6425, r6426, r6427, r6428, r6429, r6430, r6431, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6410 at r6410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6411 at r6411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6412 at r6412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6413 at r6413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6414 at r6414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6415 at r6415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6416 at r6416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6417 at r6417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6418 at r6418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6419 at r6419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6420 at r6420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6421 at r6421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6422 at r6422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6423 at r6423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6424 at r6424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6425 at r6425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6426 at r6426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6427 at r6427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6428 at r6428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6429 at r6429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6430 at r6430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6431 at r6431
  have hshift1 : EdwardsBridge.doubleSpec (acc83 rho) (shiftOnce83 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6416) (rho 6417) (rho 6418) (rho 6419) (rho 6420) (rho 6421) (rho 6422)
      (by simpa [acc83] using hacc)
      (by linear_combination r6410)
      (by linear_combination r6411)
      (by linear_combination r6412)
      (by linear_combination r6413)
      (by linear_combination r6414)
    simpa [acc83, shiftOnce83] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce83 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc83 rho) (shiftOnce83 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc83 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce83 rho) (shifted83 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6421) (rho 6422) (rho 6423) (rho 6424) (rho 6425) (rho 6426) (rho 6427)
      (by simpa [shiftOnce83] using hshift1On)
      (by linear_combination r6415)
      (by linear_combination r6416)
      (by linear_combination r6417)
      (by linear_combination r6418)
      (by linear_combination r6419)
    simpa [shiftOnce83, shifted83] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted83 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce83 rho) (shifted83 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce83 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 84) (rho 83)
      (base rho) (twice rho) (triple rho) (digit83 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 84) (rho 83)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6429 + rho 6430, (1 : F) + rho 6432 + rho 6433⟩ := by
      constructor
      · refine ⟨(rho 6428 + (rho 4578) - (0)), rho 6429, ?_, ?_, ?_⟩
        · linear_combination r6420 - (rho 83) * order_cast_zero
        · linear_combination r6421
        · linear_combination r6422
      · refine ⟨(rho 6431 + (rho 4579) - ((1 : F))), rho 6432, ?_, ?_, ?_⟩
        · linear_combination r6423 - (rho 83) * order_cast_zero
        · linear_combination r6424
        · linear_combination r6425
    simpa [base, twice, triple, digit83] using hraw
  have hhigh : rho 84 =
      Bool.toZMod bits[82]! := by
    simpa only using rho_bit_of_map rho bits hbits 82 (by decide +kernel)
  have hlow : rho 83 =
      Bool.toZMod bits[81]! := by
    simpa only using rho_bit_of_map rho bits hbits 81 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[82]! bits[81]! (base rho) (twice rho) (triple rho)
    (digit83 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit83 rho) := by
    rw [hdigit]
    cases bits[82]! <;> cases bits[81]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted83 rho) (digit83 rho) (acc84 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6426) (rho 6427) (rho 6429 + rho 6430) ((1 : F) + rho 6432 + rho 6433)
      (rho 6434) (rho 6435) (rho 6436) (rho 6437) (rho 6438) (rho 6439)
      (by simpa [shifted83] using hshift2On)
      (by simpa [digit83] using hdigitOn)
      (by linear_combination r6426)
      (by linear_combination r6427)
      (by linear_combination r6428)
      (by linear_combination r6429)
      (by linear_combination r6430)
      (by linear_combination r6431)
    simpa [shifted83, digit83, acc84] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc84 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted83 rho) (digit83 rho) (acc84 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted83 rho) (digit83 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 84) (rho 83)
      (base rho) (twice rho) (triple rho) (acc83 rho)
      (acc84 rho) :=
    ⟨shiftOnce83 rho, shifted83 rho, digit83 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
